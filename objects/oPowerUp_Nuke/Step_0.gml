if (mytime > 0) 
{
	mytime = mytime - delta_time/1000000;	
} else {
	mytime = 0;
	oCar._has_nuke = false
	instance_destroy()	
}
showTime = ceil(mytime);