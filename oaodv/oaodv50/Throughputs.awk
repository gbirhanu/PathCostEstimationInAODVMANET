#the following code written by Gemechu for throughput calculation 
BEGIN {
Print "Throughput Calculation"
}
{
if (( $1 == "r" && $7 == "cbr" && $4 == "RTR" && $3 == "_7_"))
{
pkts = pkts + $8;
attime = $2
}
}
END {
Throughput  = pkts * 8 / $2 /100.0
print "Throughput = " Throughput

}

