#!/usr/bin/perl
open(PS, "/bin/ps -ax|");
while(<PS>){
	chop;
	if (m/(\d.*)\s+pts\/\d+\s+.+\s+\d+:\d+\s+\/bin\/sh\s+\/usr\/local\/bin\/admin_task.sh/){
		print "Killing admin task: $1\n";
                system("/bin/kill $1");
        }
}
close(PS);
