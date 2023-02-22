#!/usr/bin/perl 

sub recursive_fibonacci {
        my $t1=$_[0];
      my $t2=$_[1];

        my $sum=$t1+$t2;
        $recur_fibo=$t1.",".$t2.",".$sum;
        push (@fiboosequence,$sum);
        $t1=$t2;
        $t2=$sum;
        recursive_fibonacci($t1,$t2);
}

$num=$ARGV[0];
$number=$num-2; 
