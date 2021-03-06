#
#simulation script written by Gemechu to simulate modified qos enabled aodv protocol
#
#simulation environment 
set opt(chan)           Channel/WirelessChannel    ;# channel type 
set opt(prop)           Propagation/TwoRayGround   ;# radio-propagation model 
set opt(netif)          Phy/WirelessPhy            ;# network interface type 
set opt(mac)            Mac/802_11                 ;# MAC type 
set opt(ifq)            Queue/DropTail/PriQueue    ;# interface queue type 
set opt(ll)             LL                         ;# link layer type 
set opt(ant)            Antenna/OmniAntenna        ;# antenna model 
set opt(ifqlen)         50                         ;# max packet in ifq 
set opt(nn)             10                         ;# number of mobilenodes 
set opt(rp)             AODV                     ;# routing protocol 
set val(energymodel)     EnergyModel                ;#energy model
set val(initialenergy)  100 
set opt(x)              1800   			   ;# X dimension of topography 
set opt(y)              840   			   ;# Y dimension of topography  

### Setting The Simulator Objects
                  
      set ns_ [new Simulator]
#create the nam and trace file:
      set tracefd [open myaodv.tr w]
     
      $ns_ trace-all $tracefd
      #$ns_ use-newtrace
      set namtrace [open myaodv.nam w]
      $ns_ namtrace-all-wireless $namtrace  $opt(x) $opt(y)

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
      Phy/WirelessPhy set freq_ 2.472e9  
Phy/WirelessPhy set RXThresh_ 2.62861e-09; #100m radius
Phy/WirelessPhy set CSThresh_ [expr 0.9*[Phy/WirelessPhy set RXThresh_]]
#Phy/WirelessPhy set bandwidth_ 11.0e6 
      Mac/802_11 set bandwidth_ 2Mb 
      #Mac/802_11 set basicRate_ 2Mb 

#  Defining Node Configuration
                        
                  $ns_ node-config -adhocRouting $opt(rp) \
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
                  
      set n2 [$ns_ node]
      set n3 [$ns_ node]
      set n4 [$ns_ node]
      set n5 [$ns_ node]
      set n6 [$ns_ node]
      set n7 [$ns_ node]
      set n8 [$ns_ node]
      set n9 [$ns_ node]
      set n10 [$ns_ node]
      set n11 [$ns_ node]
      
      
      set opt(seed) 0.1
      set a [ns-random $opt(seed)]
      set i 0
      while {$i < 5} {
      incr i
      }
            

###  Setting The Initial Positions of Nodes
      
      $n2 set X_ 36.0
      $n2 set Y_ 529.0
      $n2 set Z_ 0.0

      $n3 set X_ 143.0
      $n3 set Y_ 666.0
      $n3 set Z_ 0.0

      $n4 set X_ 201.0
      $n4 set Y_ 552.0
      $n4 set Z_ 0.0
      
      $n5 set X_ 147.0
      $n5 set Y_ 403.0
      $n5 set Z_ 0.0
      
      $n6 set X_ 230.0
      $n6 set Y_ 291.0
      $n6 set Z_ 0.0

      $n7 set X_ 295.0
      $n7 set Y_ 419.0
      $n7 set Z_ 0.0

      $n8 set X_ 363.0
      $n8 set Y_ 335.0
      $n8 set Z_ 0.0

      $n9 set X_ 334.0
      $n9 set Y_ 647.0
      $n9 set Z_ 0.0

      $n10 set X_ 304.0
      $n10 set Y_ 777.0
      $n10 set Z_ 0.0
      
      $n11 set X_ 412.0
      $n11 set Y_ 194.0
      $n11 set Z_ 0.0
      

      ## Giving Mobility to Nodes
      
      $ns_ at 0.75 "$n2 setdest 379.0 349.0 20.0"
      $ns_ at 0.75 "$n3 setdest 556.0 302.0 20.0"
      $ns_ at 0.20 "$n4 setdest 309.0 211.0 20.0"
      $ns_ at 1.25 "$n5 setdest 179.0 333.0 20.0"
      $ns_ at 0.75 "$n6 setdest 139.0 63.0 20.0"
      $ns_ at 0.75 "$n7 setdest 320.0 27.0 20.0"
      $ns_ at 1.50 "$n8 setdest 505.0 124.0 20.0"
      $ns_ at 1.25 "$n9 setdest 274.0 487.0 20.0"
      $ns_ at 1.25 "$n10 setdest 494.0 475.0 20.0"
      $ns_ at 1.25 "$n11 setdest 899.0 757.0 25.0"

      ## Setting The Node Size
                              
      $ns_ initial_node_pos $n2 70
      $ns_ initial_node_pos $n3 70
      $ns_ initial_node_pos $n4 70
      $ns_ initial_node_pos $n5 70
      $ns_ initial_node_pos $n6 70
      $ns_ initial_node_pos $n7 70
      $ns_ initial_node_pos $n8 70
      $ns_ initial_node_pos $n9 70
      $ns_ initial_node_pos $n10 70
      $ns_ initial_node_pos $n11 70

      #### Setting The Labels For Nodes
      $ns_ at 0.0 "$n2 label Source"
      $ns_ at 0.0 "$n3 label A"
      $ns_ at 0.0 "$n4 label B"
      $ns_ at 0.0 "$n5 label C"
      $ns_ at 0.0 "$n6 label E"
      $ns_ at 0.0 "$n7 label F"
      $ns_ at 0.0 "$n8 label G"
      $ns_ at 0.0 "$n9 label H"
      $ns_ at 0.0 "$n10 label I"
      $ns_ at 0.0 "$n11 label Destination"

    
      ## SETTING ANIMATION RATE 
$ns_ at 0.0 "$ns_ set-animation-rate 12.5ms"

   #  COLORING THE NODES  

                  
####  Establishing Communication

       
      
      set udp2 [$ns_ create-connection UDP $n10 LossMonitor $n7 0]
      $udp2 set fid_ 1
      set cbr2 [$udp2 attach-app Traffic/CBR]
      $cbr2 set packetSize_ 1000    
      $cbr2 set interopt_ .07
      $ns_ at 2.4 "$cbr2 start"
      $ns_ at 4.1 "$cbr2 stop"
          
      set udp5 [$ns_ create-connection UDP $n2 LossMonitor $n5 0]
      $udp5 set fid_ 1
      set cbr5 [$udp5 attach-app Traffic/CBR]
      $cbr5 set packetSize_ 1000    
      $cbr5 set interopt_ 5
      $ns_ at 4.0 "$cbr5 start"
      $ns_ at 4.1 "$cbr5 stop"
      
      set udp6 [$ns_ create-connection UDP $n2 LossMonitor $n7 0]
      $udp6 set fid_ 1
      set cbr6 [$udp6 attach-app Traffic/CBR]
      $cbr6 set packetSize_ 1000    
      $cbr6 set interopt_ 5
      $ns_ at 4.0 "$cbr6 start"
      $ns_ at 4.1 "$cbr6 stop"
            
      set udp7 [$ns_ create-connection UDP $n4 LossMonitor $n8 0]
      $udp7 set fid_ 1
      set cbr7 [$udp7 attach-app Traffic/CBR]
      $cbr7 set packetSize_ 1000    
      $cbr7 set interopt_ 5
      $ns_ at 4.0 "$cbr7 start"
      $ns_ at 4.1 "$cbr7 stop"
      
      set udp8 [$ns_ create-connection UDP $n4 LossMonitor $n9 0]
      $udp8 set fid_ 1
      set cbr8 [$udp8 attach-app Traffic/CBR]
      $cbr8 set packetSize_ 1000    
      $cbr8 set interopt_ 5
      $ns_ at 4.0 "$cbr8 start"
      $ns_ at 4.1 "$cbr8 stop"
      
      set udp9 [$ns_ create-connection UDP $n4 LossMonitor $n3 0]
      $udp9 set fid_ 1
      set cbr9 [$udp9 attach-app Traffic/CBR]
      $cbr9 set packetSize_ 1000    
      $cbr9 set interopt_ 5
      $ns_ at 4.0 "$cbr9 start"
      $ns_ at 4.1 "$cbr9 stop"
      
      set udp10 [$ns_ create-connection UDP $n4 LossMonitor $n2 0]
      $udp10 set fid_ 1
      set cbr10 [$udp10 attach-app Traffic/CBR]
      $cbr10 set packetSize_ 1000   
      $cbr10 set interopt_ 5
      $ns_ at 4.0 "$cbr10 start"
      $ns_ at 4.1 "$cbr10 stop"
      
      set udp11 [$ns_ create-connection UDP $n4 LossMonitor $n6 0]
      $udp11 set fid_ 1
      set cbr11 [$udp11 attach-app Traffic/CBR]
      $cbr11 set packetSize_ 1000   
      $cbr11 set interopt_ 5
      $ns_ at 4.0 "$cbr11 start"
      $ns_ at 4.1 "$cbr11 stop"
      
      set udp12 [$ns_ create-connection UDP $n9 LossMonitor $n10 0]
      $udp12 set fid_ 1
      set cbr12 [$udp12 attach-app Traffic/CBR]
      $cbr12 set packetSize_ 1000   
      $cbr12 set interopt_ 5
      $ns_ at 4.0 "$cbr12 start"
      $ns_ at 4.1 "$cbr12 stop"

      set udp13 [$ns_ create-connection UDP $n2 LossMonitor $n11 0]
      $udp12 set fid_ 1
      set cbr12 [$udp12 attach-app Traffic/CBR]
      $cbr12 set packetSize_ 1000   
      $cbr12 set interopt_ 5
      $ns_ at 4.0 "$cbr12 start"
      $ns_ at 4.1 "$cbr12 stop"


      #ANNOTATIONS DETAILS 

      $ns_ at 0.0 "$ns_ trace-annotate \"MOBILE NODE MOVEMENTS\""
      $ns_ at 4.1 "$ns_ trace-annotate \"NODE18 CACHE THE DATA FRO SERVER\""
     # $ns_ at 4.59 "$ns_ trace-annotate \"PACKET LOSS AT NODE27\""     
      $ns_ at 4.71 "$ns_ trace-annotate \"NODE10 CACHE THE DATA\""      
            
      ### PROCEDURE TO STOP 

      proc stop {} {
            
                        global ns_ tracefd
                        $ns_ flush-trace
                        close $tracefd
                        exec nam myaodv.nam &            
                        exit 0

                   }

      puts "Starting Simulation........"
      $ns_ at 25.0 "stop"

      $ns_ run

