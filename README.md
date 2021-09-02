## Experimental setup
This repository contains an experimental code  for  *Routing Path Cost Estimation for Quality of Service
(QoS) provision in Mobile Adhoc Networking
(MANET)*
I have summerized steps to repeat the experiaments as follows. 
- Download [ns2](https://osdn.net/projects/sfnet_nsnam/downloads/allinone/ns-allinone-2.32/ns-allinone-2.32.tar.gz/) on linux based operating system 
- Clone AODV protocol in ns2, this will preserve the original protocol and helps you work on the clone. Cloning process is well explained in [this article](http://surajpatilworld.blogspot.com/2015/02/how-to-clone-protocol-in-ns2.html).
- Then your can play with the Cloned AODV.

## What have been done
- Here, we have done two basic things the first one is modifying the cloned AODV based on the approach we have explained in our methodology. 
- Then, we have evaluated our approach against AODV itself.
- AODV protocol containes diffrent files. main files are aodv.h and aodv.cc. 
## List of tools used
- AWK script may be utilized to get meaning full information from trace file. using AWK script you can calculate throughput, pdr, e2e delay and others.
- For plotting your result there are many options there like xgraph.



