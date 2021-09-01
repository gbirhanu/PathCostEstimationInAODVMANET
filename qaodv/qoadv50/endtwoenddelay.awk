BEGIN { 
 

   highest_packet_id = 0; 
} 
	 
{ 
                 action = $1 
		time = $2 
		node_id = $3 
		flow_id = $7 
		packet_id = $6 
		pkt_size = $8 
		flow_t = $45 
		level = $19 

   if ( packet_id > highest_packet_id ) highest_packet_id = packet_id; 

   # getting start time is not a problem, provided you're not starting 
   # traffic at 0.0. 
   # could test for sending node_1_address or flow_id here. 
   if ( start_time[packet_id] == 0 )  start_time[packet_id] = time; 
   
   # only useful for small unicast where packet_id doesn't wrap. 
   # checking receive means avoiding recording drops 
   if ( action != "d" ) { 
      if ( action == "r" ) { 
	 # could test for receiving node_2_address or flow_id here. 
         end_time[packet_id] = time; 
      } 
   } else { 
      end_time[packet_id] = -1; 
   } 
}							  
END { 
    
     for ( packet_id = 0; packet_id <= highest_packet_id; packet_id++ ) { 
       start = start_time[packet_id]; 
       end = end_time[packet_id]; 
       packet_duration = end - start; 

       if ( start < end ) printf("%f\n",packet_duration); 
   } 
   
}