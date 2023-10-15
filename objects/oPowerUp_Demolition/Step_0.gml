/// @description Insert description here
// You can write your code in this editor
if (mytime > 0) 
{
	mytime = mytime - delta_time/1000000;	
} else {
	mytime = 0;
	instance_destroy()	
}
showTime = ceil(mytime);