BEGIN {
sent=0;
received=0;
drop;
}
{
  if($1=="s" && $7 == "cbr")
   {
    sent++;
   }
  else if($1=="r" && $7 == "cbr")
   {
     received++;
   }
 
}
END {
 printf("send = %.2f\n",sent);
 
	   printf("recv = %.2f\n",received);
           drop = sent - received;

 	   printf("PDR = %.2f\n",(drop/sent));
}
