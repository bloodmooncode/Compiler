from glob import glob
import subprocess
from os import path
import re
import os
import time
import argparse

if __name__ == '__main__':
  parser = argparse.ArgumentParser(description='Automaticly test. Output in ./build.', formatter_class=argparse.RawDescriptionHelpFormatter)
  parser.add_argument("test_path", type=str, help="the path of the test cases with glob style.")
  parser.add_argument("-l", "--log", help="generate log file for every test case.", action="store_true")
  parser.add_argument("-a", "--all", help="output the results for all test cases.", action="store_true")
  parser.add_argument("-r", "--run", help="link the asm files and run the executable files.", action="store_true")
  parser.add_argument("-v", "--verbose", help="print compile time (and exec time when the option [-r] is specified) for only incorrect test cases (or every test case when the option [-a] is specified).", action="store_true")
  parser.add_argument("-L", "--linked_library_path", type=str, help="the path of the linked library.", default="lib")
  args = parser.parse_args()

  CompilerPath = './build/compiler'
  CompileArgs = '-S -O1'
  GccArgs = '-static'
  OutputFolder = './output'

  if not path.exists(OutputFolder):
    os.system(f"mkdir {OutputFolder}")
  else:
    os.system(f"rm -rf {OutputFolder}/*")

#   make_res = subprocess.call("./build.sh", shell=True)
#   if make_res != 0:
#     print("build compiler failed.")
#     exit()
#   print("build compiler successfully")

  files = glob(args.test_path, recursive=True)
  files.sort()
  bug_num = len(files)
  all_time_seconds=0
  all_time_useconds=0

  for file in files:
    filepath_noext, _ = path.splitext(file)
    _, filename = path.split(file)
    filename_noext, _=path.splitext(filename)
    asm_file = OutputFolder+"/"+filename_noext+".s"
    exec_file = OutputFolder+"/"+filename_noext+".o"
    log_file = OutputFolder+"/"+filename_noext+".log"
    stdin_file = filepath_noext+".in"
    stdout_file = filepath_noext+".out"

    print("{:10s}:{:35s}{:10s}:{}".format("Processing",filename,"full path",file))

    # Compile
    time_start = time.time()
    if subprocess.call(f"{CompilerPath} -S {file} -o {asm_file} -O2".split()) != 0:
      print("compile failed.")
      continue
    time_end = time.time()
    compile_time = (time_end - time_start) # s
    if args.all and args.verbose:
      print("{:10s}:{:.6f}s".format("compile tm",compile_time))

    if not args.run:
      bug_num-=1
      print("{:10s}:{}".format("status","OK!"))
    else:
      # GCC Link
      link_cmd = f"arm-linux-gnueabi-gcc {asm_file} -o {exec_file} -static"
      # time_start = time.time()
      if subprocess.call(link_cmd.split()) != 0:
        print("link failed.")
        continue
      time_end = time.time()
      # link_time = (time_end - time_start) # s
      # print("{:10s}:{:.6f}s".format("link time",link_time))

      # Exec
      exec_cmd = f"{exec_file}"
      if path.exists(stdin_file):
        stdin = open(stdin_file, 'r')
      else:
        stdin = None
      time_start = time.time()
      subp = subprocess.Popen(exec_cmd.split(), bufsize=0, stdin=stdin, stdout=subprocess.PIPE, stderr=subprocess.PIPE, encoding='utf-8')
      exec_out, exec_err = subp.communicate()
      ret_code = subp.returncode
      time_end = time.time()
      run_time = (time_end - time_start) # s
      exec_time = (re.search("[0-9]+H.*us",exec_err))
      
      if args.all and args.verbose:
        print("{:10s}:{:.6f}s".format("run time",run_time))
        if exec_time != None:
          exec_time=exec_time.group()
          detail_time =re.search(("-([0-9]+)S-([0-9]+)us"), exec_time)
          if detail_time != None:
            all_time_seconds+=int(detail_time.group(1))
            all_time_useconds+=int(detail_time.group(2))
          print("{:10s}:{}".format("exec time",exec_time))

      # Exec output
      exec_out_list = exec_out.split()
      exec_out_list.append(str(ret_code))
      # print(exec_out_list)

      # Status
      status=""
      if not path.exists(stdout_file):
        print("{:10s}:{}".format("exec out", exec_out_list))
        print("output file not exist.")
        continue
      else:
        # Standard output
        with open(stdout_file, "r") as f:
          stdout_list = f.read().split()
          # print(stdout_list)
          if exec_out_list == stdout_list:
            status="OK!"
            bug_num-=1
          else:
            status="ERROR!!!"
            print("{:10s}:{}".format("std out", stdout_list))
            print("{:10s}:{}".format("exec out", exec_out_list))
            # print("{:10s}:{}".format("exec err", exec_err))
      if (args.all and args.verbose) or status!="OK!":
        print("{:10s}:{}".format("status",status))
        print()
    
  print("{:10s}:{:3d}".format("bug num",bug_num))
  if args.all and args.verbose and args.run:
    all_time_seconds+=all_time_useconds//1000000
    all_time_useconds%=1000000
    print("{:10s}:{:3d}s {:6d}us".format("all time",all_time_seconds, all_time_useconds))
  print("finish.")
        