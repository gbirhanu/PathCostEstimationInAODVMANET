#the following code written by Gemechu for through put calculation 
BEGIN {
Print "Throughput Calculation"
}

{
if (( $1 == "r" && $7 == "cbr" && $3 == "_2_" ))
{
pkts = pkts + $8;
}

}

END {
Throughput  = pkts * 8 / $2 /1000
print "Throughput = " Throughput
}
