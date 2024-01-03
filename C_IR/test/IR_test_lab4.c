int func1(){
	return 1&&0||1;
}
int func2(){
	int a=1,b=2;
	return a+b;
}
int func3(){
	return 0;
}
int main()
{
	int a=1,b=1000;
	if(a>b){
		a=1;
	}
	else if(a<b){
		a=2;
	}
	else{
		a=3;
	}
	return 1;
}
