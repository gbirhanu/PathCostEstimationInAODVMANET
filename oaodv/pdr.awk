BEGIN {
sent=0;
received=0;
drop=0;
}
{
  if($1=="s" && $3 == "_19_")
   {
    sent++;
   }
  else if($1=="r" && $3 == "_19_")
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
