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
set opt(nn)             50                         ;# number of mobilenodes 
set opt(rp)             MYAODV                     ;# routing protocol 
set val(energymodel)     EnergyModel                ;#energy model
set val(initialenergy)  100 
set opt(x)              1800   			   ;# X dimension of topography 
set opt(y)              840   			   ;# Y dimension of topography  

### Setting The Simulator Objects
                  
      set ns_ [new Simulator]
#create the nam and trace file:
      set tracefd [open aodv.tr w]
     
      $ns_ trace-all $tracefd
      #$ns_ use-newtrace
      set namtrace [open aodv.nam w]
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
      set n12 [$ns_ node]
      set n13 [$ns_ node]
      set n14 [$ns_ node]
      set n15 [$ns_ node]
      set n16 [$ns_ node]
      set n17 [$ns_ node]
      set n18 [$ns_ node]
      set n19 [$ns_ node]
      set n20 [$ns_ node]
      set n21 [$ns_ node]
      set n22 [$ns_ node]
       set n23 [$ns_ node]
      set n24 [$ns_ node]
      set n25 [$ns_ node]
      set n26 [$ns_ node]
      set n27 [$ns_ node]
      set n28 [$ns_ node]
      set n29 [$ns_ node]
      set n30 [$ns_ node]
      set n31 [$ns_ node]
      set n32 [$ns_ node]
      set n33 [$ns_ node]
      set n34 [$ns_ node]
      set n35 [$ns_ node]
      set n36 [$ns_ node]
      set n37 [$ns_ node]
      set n38 [$ns_ node]
      set n39 [$ns_ node]
      set n40 [$ns_ node]
      set n41 [$ns_ node]
      set n42 [$ns_ node]
      set n43 [$ns_ node]
      set n44 [$ns_ node]
      set n45 [$ns_ node]
      set n46 [$ns_ node]
      set n47 [$ns_ node]
      set n48 [$ns_ node]
      set n49 [$ns_ node]
      set n50 [$ns_ node]
      set n51 [$ns_ node]
      set n52 [$ns_ node]

      
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
      
      $n12 set X_ 519.0
      $n12 set Y_ 361.0
      $n12 set Z_ 0.0

      $n13 set X_ 569.0
      $n13 set Y_ 167.0
      $n13 set Z_ 0.0

      $n14 set X_ 349.0
      $n14 set Y_ 546.0
      $n14 set Z_ 0.0

      $n15 set X_ 466.0
      $n15 set Y_ 668.0
      $n15 set Z_ 0.0

      $n16 set X_ 489.0
      $n16 set Y_ 794.0
      $n16 set Z_ 0.0

      $n17 set X_ 606.0
      $n17 set Y_ 711.0
      $n17 set Z_ 0.0

      $n18 set X_ 630.0
      $n18 set Y_ 626.0
      $n18 set Z_ 0.0

      $n19 set X_ 666.0
      $n19 set Y_ 347.0
      $n19 set Z_ 0.0

      $n20 set X_ 741.0
      $n20 set Y_ 152.0
      $n20 set Z_ 0.0

      $n21 set X_ 1282.0
      $n21 set Y_ 264.0
      $n21 set Z_ 0.0
      
      $n22 set X_ 761.0
      $n22 set Y_ 441.0
      $n22 set Z_ 0.0

      $n23 set X_ 1236.0
      $n23 set Y_ 529.0
      $n23 set Z_ 0.0

      $n24 set X_ 797.0 
      $n24 set Y_ 647.0
      $n24 set Z_ 0.0

      $n25 set X_ 1051.0
      $n25 set Y_ 452.0
      $n25 set Z_ 0.0
      
      $n26 set X_ 47.0
      $n26 set Y_ 93.0
      $n26 set Z_ 0.0
      
      $n27 set X_ 830.0
      $n27 set Y_ 291.0
      $n27 set Z_ 0.0

      $n28 set X_ 895.0
      $n28 set Y_ 419.0
      $n28 set Z_ 0.0

      $n29 set X_ 863.0
      $n29 set Y_ 335.0
      $n29 set Z_ 0.0

      $n30 set X_ 1204.0
      $n30 set Y_ 647.0
      $n30 set Z_ 0.0

      $n31 set X_ 904.0
      $n31 set Y_ 777.0
      $n31 set Z_ 0.0
      
      $n32 set X_ 812.0
      $n32 set Y_ 194.0
      $n32 set Z_ 0.0
      
      $n33 set X_ 889.0
      $n33 set Y_ 361.0
      $n33 set Z_ 0.0

      $n34 set X_ 869.0
      $n34 set Y_ 167.0
      $n34 set Z_ 0.0

      $n35 set X_ 949.0
      $n35 set Y_ 546.0
      $n35 set Z_ 0.0

      $n36 set X_ 966.0
      $n36 set Y_ 668.0
      $n36 set Z_ 0.0

      $n37 set X_ 789.0
      $n37 set Y_ 894.0
      $n37 set Z_ 0.0

      $n38 set X_ 906.0
      $n38 set Y_ 711.0
      $n38 set Z_ 0.0

      $n39 set X_ 1030.0
      $n39 set Y_ 626.0
      $n39 set Z_ 0.0

      $n40 set X_ 1066.0
      $n40 set Y_ 347.0
      $n40 set Z_ 0.0

      $n41 set X_ 941.0
      $n41 set Y_ 152.0
      $n41 set Z_ 0.0

      $n42 set X_ 982.0
      $n42 set Y_ 264.0
      $n42 set Z_ 0.0
      
      $n43 set X_ 1001.0
      $n43 set Y_ 441.0
      $n43 set Z_ 0.0

      $n44 set X_ 1082.0
      $n44 set Y_ 264.0
      $n44 set Z_ 0.0
      
      $n45 set X_ 61.0
      $n45 set Y_ 41.0
      $n45 set Z_ 0.0  
      
      $n46 set X_ 930.0
      $n46 set Y_ 626.0
      $n46 set Z_ 0.0

      $n47 set X_ 966.0
      $n47 set Y_ 347.0
      $n47 set Z_ 0.0

      $n48 set X_ 741.0
      $n48 set Y_ 152.0
      $n48 set Z_ 0.0

      $n49 set X_ 882.0
      $n49 set Y_ 264.0
      $n49 set Z_ 0.0
      
      $n50 set X_ 21.0
      $n50 set Y_ 100.0
      $n50 set Z_ 0.0

      $n51 set X_ 1082.0
      $n51 set Y_ 64.0
      $n51 set Z_ 0.0
      
      $n52 set X_ 1100.0
      $n52 set Y_ 41.0
      $n52 set Z_ 0.0  
      
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
      $ns_ at 0.50 "$n12 setdest 598.0 728.0 25.0"
      $ns_ at 0.25 "$n13 setdest 551.0 624.0 25.0"
      $ns_ at 1.25 "$n14 setdest 397.0 647.0 25.0"
      $ns_ at 1.25 "$n15 setdest 748.0 688.0 25.0"
      $ns_ at 1.25 "$n16 setdest 842.0 623.0 25.0"
      $ns_ at 1.25 "$n17 setdest 678.0 548.0 25.0"
      $ns_ at 0.75 "$n18 setdest 741.0 809.0 20.0"
      $ns_ at 0.75 "$n19 setdest 437.0 799.0 20.0"
      $ns_ at 0.20 "$n20 setdest 159.0 722.0 20.0"
      $ns_ at 1.25 "$n21 setdest 700.0 350.0 20.0"
      $ns_ at 0.75 "$n22 setdest 839.0 444.0 20.0"
      $ns_ at 0.75 "$n23 setdest 1000.0 349.0 20.0"
      $ns_ at 0.75 "$n24 setdest 920.0 302.0 20.0"
      $ns_ at 0.20 "$n25 setdest 880.0 211.0 20.0"
      $ns_ at 1.25 "$n26 setdest 999.0 333.0 20.0"
      $ns_ at 0.75 "$n27 setdest 850.0 63.0 20.0"
      $ns_ at 0.75 "$n28 setdest 320.0 27.0 20.0"
      $ns_ at 1.50 "$n29 setdest 505.0 124.0 20.0"
      $ns_ at 1.25 "$n30 setdest 274.0 487.0 20.0"
      $ns_ at 1.25 "$n31 setdest 494.0 475.0 20.0"
      $ns_ at 1.25 "$n32 setdest 899.0 757.0 25.0"
      $ns_ at 0.50 "$n33 setdest 598.0 728.0 25.0"
      $ns_ at 0.25 "$n34 setdest 551.0 624.0 25.0"
      $ns_ at 1.25 "$n35 setdest 397.0 647.0 25.0"
      $ns_ at 1.25 "$n36 setdest 748.0 688.0 25.0"
      $ns_ at 1.25 "$n37 setdest 842.0 623.0 25.0"
      $ns_ at 1.25 "$n38 setdest 678.0 548.0 25.0"
      $ns_ at 0.75 "$n39 setdest 741.0 809.0 20.0"
      $ns_ at 0.75 "$n40 setdest 437.0 799.0 20.0"
      $ns_ at 0.20 "$n41 setdest 159.0 722.0 20.0"
      $ns_ at 1.25 "$n42 setdest 700.0 350.0 20.0"
      $ns_ at 0.75 "$n43 setdest 100.0 44.0 20.0"
      $ns_ at 0.25 "$n44 setdest 551.0 624.0 25.0"
      $ns_ at 1.25 "$n45 setdest 397.0 647.0 25.0"
      $ns_ at 1.25 "$n46 setdest 748.0 688.0 25.0"
      $ns_ at 1.25 "$n47 setdest 842.0 623.0 25.0"
      $ns_ at 1.25 "$n48 setdest 678.0 548.0 25.0"
      $ns_ at 0.75 "$n49 setdest 741.0 809.0 20.0"
      $ns_ at 0.75 "$n50 setdest 437.0 799.0 20.0"
      $ns_ at 0.20 "$n51 setdest 1020.0 722.0 20.0"
      $ns_ at 1.25 "$n52 setdest 1120.0 350.0 20.0"

    
     
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
      $ns_ initial_node_pos $n12 70
      $ns_ initial_node_pos $n13 70
      $ns_ initial_node_pos $n14 70
      $ns_ initial_node_pos $n15 70
      $ns_ initial_node_pos $n16 70
      $ns_ initial_node_pos $n17 70
      $ns_ initial_node_pos $n18 70
      $ns_ initial_node_pos $n19 70
      $ns_ initial_node_pos $n20 70
      $ns_ initial_node_pos $n21 70
      $ns_ initial_node_pos $n22 70
      $ns_ initial_node_pos $n23 70
      $ns_ initial_node_pos $n24 70
      $ns_ initial_node_pos $n25 70
      $ns_ initial_node_pos $n26 70
      $ns_ initial_node_pos $n27 70
      $ns_ initial_node_pos $n28 70
      $ns_ initial_node_pos $n29 70
      $ns_ initial_node_pos $n30 70
      $ns_ initial_node_pos $n31 70
      $ns_ initial_node_pos $n32 70
      $ns_ initial_node_pos $n33 70
      $ns_ initial_node_pos $n34 70
      $ns_ initial_node_pos $n35 70
      $ns_ initial_node_pos $n36 70
      $ns_ initial_node_pos $n37 70
      $ns_ initial_node_pos $n38 70
      $ns_ initial_node_pos $n39 70
      $ns_ initial_node_pos $n40 70
      $ns_ initial_node_pos $n41 70
      $ns_ initial_node_pos $n42 70
      $ns_ initial_node_pos $n43 70
      $ns_ initial_node_pos $n44 70
      $ns_ initial_node_pos $n45 70
      $ns_ initial_node_pos $n46 70
      $ns_ initial_node_pos $n47 70
      $ns_ initial_node_pos $n48 70
      $ns_ initial_node_pos $n49 70
      $ns_ initial_node_pos $n50 70
      $ns_ initial_node_pos $n51 70
      $ns_ initial_node_pos $n52 70
      
      
      
    
      ## SETTING ANIMATION RATE 
$ns_ at 0.0 "$ns_ set-animation-rate 12.5ms"

   #  COLORING THE NODES  

                  
####  Establishing Communication

       
      
      set udp2 [$ns_ create-connection UDP $n21 LossMonitor $n20 0]
      $udp2 set fid_ 1
      set cbr2 [$udp2 attach-app Traffic/CBR]
      $cbr2 set packetSize_ 1000    
      $cbr2 set interopt_ .07
      $ns_ at 2.4 "$cbr2 start"
      $ns_ at 4.1 "$cbr2 stop"
          
      set udp5 [$ns_ create-connection UDP $n15 LossMonitor $n16 0]
      $udp5 set fid_ 1
      set cbr5 [$udp5 attach-app Traffic/CBR]
      $cbr5 set packetSize_ 1000    
      $cbr5 set interopt_ 5
      $ns_ at 4.0 "$cbr5 start"
      $ns_ at 4.1 "$cbr5 stop"
      
      set udp6 [$ns_ create-connection UDP $n15 LossMonitor $n17 0]
      $udp6 set fid_ 1
      set cbr6 [$udp6 attach-app Traffic/CBR]
      $cbr6 set packetSize_ 1000    
      $cbr6 set interopt_ 5
      $ns_ at 4.0 "$cbr6 start"
      $ns_ at 4.1 "$cbr6 stop"
            
      set udp7 [$ns_ create-connection UDP $n14 LossMonitor $n4 0]
      $udp7 set fid_ 1
      set cbr7 [$udp7 attach-app Traffic/CBR]
      $cbr7 set packetSize_ 1000    
      $cbr7 set interopt_ 5
      $ns_ at 4.0 "$cbr7 start"
      $ns_ at 4.1 "$cbr7 stop"
      
      set udp8 [$ns_ create-connection UDP $n14 LossMonitor $n9 0]
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
      
      set udp11 [$ns_ create-connection UDP $n9 LossMonitor $n16 0]
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

      set udp13 [$ns_ create-connection UDP $n2 LossMonitor $n19 0]
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
                        exec nam aodv.nam &            
                        exit 0

                   }

      puts "Starting Simulation........"
      $ns_ at 25.0 "stop"

      $ns_ run

