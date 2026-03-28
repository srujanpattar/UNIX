BEGIN{
	FS=",";
	print "=============================";
	print "ID \t Name \t Revenue";
	print "=============================";
}
$3 > 10 && $4 > 1000{
	print $1 "\t" $2 "\t" $4;
	total += $4;
}
END{
	print "Total: ", total;
	print "=============================";
}
