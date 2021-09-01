 	BEGIN {
 
 	     sends=0;
 
 	     recvs=0;
 
 	     routing_packets=0.0;
 
 	     droppedBytes=0;
 
 	     droppedPackets=0;
 
 	     highest_packet_id =0;
 
 	     sum=0;
 
 	     recvnum=0;
 
 	   }
 
	 
 
 	{
 
 	time = $3;
 
 	packet_id = $41;
 
 	 
 
 	# CALCULATE PACKET DELIVERY FRACTION
 
 	if (( $1 == "s") &&  ( $35 == "cbr" ) && ( $19=="AGT" )) {
 sends++; }
 
 	 
 
 	if (( $1 == "r") &&  ( $35 == "cbr" ) && ( $19=="AGT" ))   {
 recvs++; }
 	 
 
 	# DROPPED MYAODV PACKETS 
 
 	if (( $1 == "d" ) && ( $35 == "cbr" )  && ( $3 > 0 ))

 	     {
 
 	           droppedBytes=droppedBytes+$37;
 
 	           droppedPackets=droppedPackets+1;
 
 	     }
 
 	 
 
 	     #find the number of packets in the simulation

 	        if (packet_id > highest_packet_id)
 
 	           highest_packet_id = packet_id;
 
 	}
 
 	 
 
 	END {
 
 	 
 
 	for ( i in end_time )

 	{

 	start = start_time[i];
 
	end = end_time[i];
 
	packet_duration = end - start;
 
	if ( packet_duration > 0 )  
 
 	{    sum += packet_duration;
 
 	     recvnum++; 
 
	}
 
 	}
 
 	   PDF = (recvs/sends)*100;  #packet delivery ratio[fraction]

 	   printf("send = %.2f\n",sends);
 
	   printf("recv = %.2f\n",recvs);

 	   printf("PDF = %.2f\n",PDF);
 
 	   printf("No. of dropped data (packets) =%d\n",droppedPackets);
 
 	   printf("No. of dropped data (bytes)   = %d\n",droppedBytes);
 
 	}
 
