#the following code written by Gemechu for throughput calculation 
BEGIN {
Print "Throughput Calculation"
}

{
if (( $1 == "r" && $7 == "cbr" && $3 == "_19_"))
{
pkts = pkts + $8;
attime = $2
}

}

END {
Throughput  = pkts * 8 / $2 /1000000
print "Throughput = " Throughput
print "time =" attime
}

