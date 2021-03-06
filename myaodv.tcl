#
#simulation script written by Gemechu to simulate modified qos enabled aodv protocol
#

#setting Simulation Environment
set opt(chan)    Channel/WirelessChannel;    #channel type
set opt(prop)    Propagation/TwoRayGround;   #radio-propagation model
set opt(netif)   Phy/WirelessPhy;            #network interface type
set opt(mac)     Mac/802_11;                 #MAC type
set opt(ifq)     Queue/DropTail/PriQueue;    #interface queue type
set opt(ifqlen)  50;                         #max nbr of packets in ifq
set opt(ll)      LL;                         #link layer type
set opt(ant)     Antenna/OmniAntenna;        #antenna type
set opt(rp) AODV;                       #routing protocol
set opt(x)       1000;                        #x dimens_ion of the topography
set opt(y)       800;                        #y dimens_ion of the topography
set opt(stop)    600.0;                       #simulation time
set opt(start-src)     1
set opt(stop-src)     600
set opt(nn)   20
set val(energymodel)     EnergyModel                ;#energy model
set val(initialenergy)  100 

#creating simulator object
set ns [new Simulator]

#initilize trace and nam file
      set tracefd [open myaodv.tr w]
      $ns trace-all $tracefd
     $ns use-newtrace
      set namtrace [open myaodv.nam w]
      $ns namtrace-all-wireless $namtrace  $opt(x) $opt(y)
#set up topology
     
      set topo [new Topography]
      $topo load_flatgrid $opt(x) $opt(y)
      create-god $opt(nn)
      set chan_1_ [new $opt(chan)]
     
      # For model 'TwoRayGround'
      set dist(5m)  7.69113e-06
      set dist(9m)  2.37381e-06
      set dist(10m) 1.92278e-06
      set dist(11m) 1.58908e-06
      set dist(12m) 1.33527e-06
      set dist(13m) 1.13774e-06
      set dist(14m) 9.81011e-07
      set dist(15m) 8.54570e-07
      set dist(16m) 7.51087e-07
      set dist(20m) 4.80696e-07
      set dist(25m) 3.07645e-07
      set dist(30m) 2.13643e-07
      set dist(35m) 1.56962e-07
      set dist(40m) 1.56962e-10
      set dist(45m) 1.56962e-11
      set dist(50m) 1.20174e-13
 #setting phsical and mac layer variables

      Phy/WirelessPhy set freq_ 2.472e9  
      Phy/WirelessPhy set RXThresh_ 2.62861e-09; #100m radius
      Phy/WirelessPhy set CSThresh_ [expr 0.9*[Phy/WirelessPhy set RXThresh_]]
      Phy/WirelessPhy set bandwidth_ 11.0e6 
      Mac/802_11 set bandwidth_ 2Mb 
      Mac/802_11 set basicRate_ 2Mb 

#node configuration 
       $ns node-config -adhocRouting $opt(rp) \
                   -llType $opt(ll) \
                   -macType $opt(mac) \
                   -ifqType $opt(ifq) \
                   -ifqLen $opt(ifqlen) \
                   -antType $opt(ant) \
                   -propType $opt(prop) \
                   -phyType $opt(netif) \
                   -topoInstance $topo \
                   -agentTrace ON \
                   -routerTrace ON \
                   -macTrace off \
                   -movementTrace off \
                   -channel $chan_1_ \
                         -energyModel $val(energymodel) \
                         -initialEnergy $val(initialenergy)\
                         -rxPower 35.28e-3 \
                         -txPower 31.32e-3 \
                         -idlePower 712e-6 \
                         -sleepPower 144e-9 \
                         -propdelay 10ms	

###  Creating The WIRELESS NODES
                  
      set n0  [$ns node]
      set n1  [$ns node]
      set n2  [$ns node]
      set n3  [$ns node]
      set n4  [$ns node]
      set n5  [$ns node]
      set n6  [$ns node]
      set n7  [$ns node]
      set n8  [$ns node]
      set n9  [$ns node]
      set n10 [$ns node]
      set n11 [$ns node]
      set n12 [$ns node]
      set n13 [$ns node]
      set n14 [$ns node]
      set n15 [$ns node]
      set n16 [$ns node]
      set n17 [$ns node]
      set n18 [$ns node]
      set n19 [$ns node]
      set n20 [$ns node]
      set opt(seed) 0.1
      set a [ns-random $opt(seed)]
      set i 0
      while {$i < 5} {
      incr i
      }
###  Setting The Initial Positions of Nodes
      
      $n0 set X_ 36.0
      $n0 set Y_ 529.0
      $n0 set Z_ 0.0

      $n1 set X_ 143.0
      $n1 set Y_ 666.0
      $n1 set Z_ 0.0

      $n2 set X_ 201.0
      $n2 set Y_ 552.0
      $n2 set Z_ 0.0
      
      $n3 set X_ 147.0
      $n3 set Y_ 403.0
      $n3 set Z_ 0.0
      
      $n4 set X_ 230.0
      $n4 set Y_ 300.0
      $n4 set Z_ 0.0

      $n5 set X_ 295.0
      $n5 set Y_ 419.0
      $n5 set Z_ 0.0

      $n6 set X_ 363.0
      $n6 set Y_ 335.0
      $n6 set Z_ 0.0

      $n7 set X_ 334.0
      $n7 set Y_ 647.0
      $n7 set Z_ 0.0

      $n8 set X_ 304.0
      $n8 set Y_ 777.0
      $n8 set Z_ 0.0
      
      $n9 set X_ 412.0
      $n9 set Y_ 250.0
      $n9 set Z_ 0.0
      
      $n10 set X_ 519.0
      $n10 set Y_ 361.0
      $n10 set Z_ 0.0

      $n11 set X_ 569.0
      $n11 set Y_ 167.0
      $n11 set Z_ 0.0

      $n12 set X_ 349.0
      $n12 set Y_ 546.0
      $n12 set Z_ 0.0

      $n13 set X_ 466.0
      $n13 set Y_ 668.0
      $n13 set Z_ 0.0

      $n14 set X_ 489.0
      $n14 set Y_ 794.0
      $n14 set Z_ 0.0

      $n15 set X_ 606.0
      $n15 set Y_ 711.0
      $n15 set Z_ 0.0

      $n16 set X_ 630.0
      $n16 set Y_ 626.0
      $n16 set Z_ 0.0

      $n17 set X_ 666.0
      $n17 set Y_ 347.0
      $n17 set Z_ 0.0

      $n18 set X_ 741.0
      $n18 set Y_ 152.0
      $n18 set Z_ 0.0

      $n19 set X_ 882.0
      $n19 set Y_ 264.0
      $n19 set Z_ 0.0
      
      $n20 set X_ 761.0
      $n20 set Y_ 441.0
      $n20 set Z_ 0.0

 ## Giving Mobility to Nodes
      
      $ns at 0.75 "$n0 setdest 379.0 349.0 20.0"
      $ns at 0.75 "$n1 setdest 556.0 302.0 20.0"
      $ns at 0.20 "$n2 setdest 309.0 211.0 20.0"
      $ns at 1.25 "$n3 setdest 179.0 333.0 20.0"
      $ns at 0.75 "$n4 setdest 139.0 63.0 20.0"
      $ns at 0.75 "$n5 setdest 320.0 27.0 20.0"
      $ns at 1.50 "$n6 setdest 505.0 124.0 20.0"
      $ns at 1.25 "$n7 setdest 274.0 487.0 20.0"
      $ns at 1.25 "$n8 setdest 494.0 475.0 20.0"
      $ns at 1.25 "$n9 setdest 899.0 757.0 25.0"
      $ns at 0.50 "$n10 setdest 598.0 728.0 25.0"
      $ns at 0.25 "$n11 setdest 551.0 624.0 25.0"
      $ns at 1.25 "$n12 setdest 397.0 647.0 25.0"
      $ns at 1.25 "$n13 setdest 748.0 688.0 25.0"
      $ns at 1.25 "$n14 setdest 842.0 623.0 25.0"
      $ns at 1.25 "$n15 setdest 678.0 548.0 25.0"
      #$ns at 0.75 "$n16 setdest 741.0 809.0 20.0"
      $ns at 0.75 "$n17 setdest 437.0 799.0 20.0"
      $ns at 0.20 "$n18 setdest 159.0 722.0 20.0"
      $ns at 1.25 "$n19 setdest 700.0 350.0 20.0"
      $ns at 0.75 "$n20 setdest 839.0 444.0 20.0"

## Setting The Node Size
                              
      $ns initial_node_pos $n0 70
      $ns initial_node_pos $n1 70
      $ns initial_node_pos $n2 70
      $ns initial_node_pos $n3 70
      $ns initial_node_pos $n4 70
      $ns initial_node_pos $n5 70
      $ns initial_node_pos $n6 70
      $ns initial_node_pos $n7 70
      $ns initial_node_pos $n8 70
      $ns initial_node_pos $n9 70
      $ns initial_node_pos $n10 70
      $ns initial_node_pos $n11 70
      $ns initial_node_pos $n12 70
      $ns initial_node_pos $n13 70
      $ns initial_node_pos $n14 70
      $ns initial_node_pos $n15 70
      $ns initial_node_pos $n16 70
      $ns initial_node_pos $n17 70
      $ns initial_node_pos $n18 70
      $ns initial_node_pos $n19 70
      $ns initial_node_pos $n20 70

      $ns at 0.0 "$n0 label Source"
      $ns at 0.0 "$n1 label A"
      $ns at 0.0 "$n2 label B"
      $ns at 0.0 "$n3 label C"
      $ns at 0.0 "$n4 label E"
      $ns at 0.0 "$n5 label F"
      $ns at 0.0 "$n6 label G"
      $ns at 0.0 "$n7 label H"
      $ns at 0.0 "$n8 label I"
      $ns at 0.0 "$n9 label J"
      $ns at 0.0 "$n10 label K"
      $ns at 0.0 "$n11 label L"
      $ns at 0.0 "$n12 label M"
      $ns at 0.0 "$n13 label N"
      $ns at 0.0 "$n14 label O"
      $ns at 0.0 "$n15 label P"
      $ns at 0.0 "$n16 label Q"
      $ns at 0.0 "$n17 label R"
      $ns at 0.0 "$n18 label T"
      $ns at 0.0 "$n19 label Destination"
      $ns at 0.0 "$n20 label U"

      $n0 color green
      $ns at 0.0 "$n0 color green"
      
      $n1 color green
      $ns at 0.0 "$n1 color green"
      
      $n2 color green
      $ns at 0.0 "$n2 color green"
      
      $n3 color green
      $ns at 0.0 "$n3 color green"
      
      $n4 color green
      $ns at 0.0 "$n4 color green"
      
      $n5 color green
      $ns at 0.0 "$n5 color green"
      
      $n6 color green
      $ns at 0.0 "$n6 color green"

      $n7 color yellow
      $ns at 0.0 "$n7 color yellow"
      
      $n8 color yellow
      $ns at 0.0 "$n8 color yellow"

      $n9 color yellow
      $ns at 0.0 "$n9 color yellow"
      
      $n10 color pink
      $ns at 0.0 "$n10 color pink"
      
      $n11 color pink
      $ns at 0.0 "$n11 color pink"

      $n12 color pink
      $ns at 0.0 "$n12 color pink"

      $n13 color pink
      $ns at 0.0 "$n13 color pink"

      $n14 color pink
      $ns at 0.0 "$n14 color pink"

      $n15 color orange
      $ns at 0.0 "$n15 color orange"

      $n16 color orange
      $ns at 0.0 "$n16 color orange"

      $n17 color orange
      $ns at 0.0 "$n17 color orange"

      $n18 color orange
      $ns at 0.0 "$n18 color orange"

      $n19 color orange
      $ns at 0.0 "$n19 color orange"

      $n20 color orange
      $ns at 0.0 "$n20 color orange"
      ## SETTING ANIMATION RATE 
$ns at 0.0 "$ns set-animation-rate 12.5ms"

   #  COLORING THE NODES  
$n9 color blue
$ns at 4.71 "$n9 color blue"
$n5 color blue
$ns at 7.0 "$n5 color blue"
$n2 color blue
$ns at 7.29 "$n2 color blue"

$n16 color blue
$ns at 7.59 "$n16 color blue"

$n9 color maroon
$ns at 7.44 "$n9 color maroon"

$ns at 7.43 "$n9 label TTLover"
$ns at 7.55 "$n9 label \"\""

$n12 color blue
$ns at 7.85 "$n12 color blue"
                  
#some text missed

## SETTING ANIMATION RATE 
$ns at 0.0 "$ns set-animation-rate 12.5ms"


####  Establishing Communication
      
      set udp2 [$ns create-connection UDP $n1 LossMonitor $n20 0]
      $udp2 set fid_ 1
      set cbr2 [$udp2 attach-app Traffic/CBR]
      $cbr2 set packetSize_ 1000    
      $cbr2 set interopt_ .07
      $ns at 2.4 "$cbr2 start"
      $ns at 4.1 "$cbr2 stop"
          
      set udp5 [$ns create-connection UDP $n15 LossMonitor $n16 0]
      $udp5 set fid_ 1
      set cbr5 [$udp5 attach-app Traffic/CBR]
      $cbr5 set packetSize_ 1000    
      $cbr5 set interopt_ 5
      $ns at 4.0 "$cbr5 start"
      $ns at 4.1 "$cbr5 stop"
      
      set udp6 [$ns create-connection UDP $n15 LossMonitor $n17 0]
      $udp6 set fid_ 1
      set cbr6 [$udp6 attach-app Traffic/CBR]
      $cbr6 set packetSize_ 1000    
      $cbr6 set interopt_ 5
      $ns at 4.0 "$cbr6 start"
      $ns at 4.1 "$cbr6 stop"
            
      set udp7 [$ns create-connection UDP $n14 LossMonitor $n4 0]
      $udp7 set fid_ 1
      set cbr7 [$udp7 attach-app Traffic/CBR]
      $cbr7 set packetSize_ 1000    
      $cbr7 set interopt_ 5
      $ns at 4.0 "$cbr7 start"
      $ns at 4.1 "$cbr7 stop"
      
      set udp8 [$ns create-connection UDP $n14 LossMonitor $n9 0]
      $udp8 set fid_ 1
      set cbr8 [$udp8 attach-app Traffic/CBR]
      $cbr8 set packetSize_ 1000    
      $cbr8 set interopt_ 5
      $ns at 4.0 "$cbr8 start"
      $ns at 4.1 "$cbr8 stop"
      
      set udp9 [$ns create-connection UDP $n4 LossMonitor $n3 0]
      $udp9 set fid_ 1
      set cbr9 [$udp9 attach-app Traffic/CBR]
      $cbr9 set packetSize_ 1000    
      $cbr9 set interopt_ 5
      $ns at 4.0 "$cbr9 start"
      $ns at 4.1 "$cbr9 stop"
      
      set udp10 [$ns create-connection UDP $n4 LossMonitor $n2 0]
      $udp10 set fid_ 1
      set cbr10 [$udp10 attach-app Traffic/CBR]
      $cbr10 set packetSize_ 1000   
      $cbr10 set interopt_ 5
      $ns at 4.0 "$cbr10 start"
      $ns at 4.1 "$cbr10 stop"
      
      set udp11 [$ns create-connection UDP $n9 LossMonitor $n16 0]
      $udp11 set fid_ 1
      set cbr11 [$udp11 attach-app Traffic/CBR]
      $cbr11 set packetSize_ 1000   
      $cbr11 set interopt_ 5
      $ns at 4.0 "$cbr11 start"
      $ns at 4.1 "$cbr11 stop"
      
      set udp12 [$ns create-connection UDP $n9 LossMonitor $n10 0]
      $udp12 set fid_ 1
      set cbr12 [$udp12 attach-app Traffic/CBR]
      $cbr12 set packetSize_ 1000   
      $cbr12 set interopt_ 5
      $ns at 4.0 "$cbr12 start"
      $ns at 4.1 "$cbr12 stop"

      set udp13 [$ns create-connection UDP $n2 LossMonitor $n19 0]
      $udp12 set fid_ 1
      set cbr12 [$udp12 attach-app Traffic/CBR]
      $cbr12 set packetSize_ 1000   
      $cbr12 set interopt_ 5
      $ns at 4.0 "$cbr12 start"
      $ns at 4.1 "$cbr12 stop"

### PROCEDURE TO STOP 

      proc stop {} {
            
                        global ns tracefd
                        $ns flush-trace
                        close $tracefd
                        exec nam myaodv.nam &            
                        exit 0

                   }

      puts "Starting Simulation........"
      $ns at 25.0 "stop"
      $ns run




