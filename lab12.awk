BEGIN{
	FS=" *\\| *";
	print "=============================";
	print "Basics \t Da \t HRA \t GP";
	print "=============================";
}
$4 == "basics" || $4 "marketing"{
	basics=$6;
	da=0.25*basics;
	hra=0.5*basics;
	gp=basics+da+hra;
	totalb += basics;
	totald += da;
	totalh += hra;
	totalg += gp;
	count++;
}
END{
	print "total: ", totalb, totald, totalh, totalg;
	print "avg: ", totalb/count, totald/count, totalh/count, totalg/count;
}
	 

	
