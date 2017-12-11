//Ben Strong
//Computer Graphics Project 1


#include "colors.inc"      
#include "shapes.inc" 
#include "textures.inc"



camera {                                          //Camera
 location <0,4,-15>
 look_at <0,0,0>
}            
   
   
light_source {                                    //Light
 <4,6,0>
 White
}                
   
     
plane{                                            //plane
    <0,4,0>, 6   
    translate <0-5,5,0>
    pigment{
     brick                                        //Brick
     color Brass                                   //This is the mortar color
     color rgb<0.8,0.25,0.1>                       //color of the brick
     brick_size <1, 4, 8 >                         // size of the brick
     mortar .25                                    // size of the mortar
     scale<10,10,10>
    }                                 
}    
     
     


      
sky_sphere {                                      //Sky sphere
 pigment {                                        
   gradient y
   color_map {                                    //Color Map
   [0 color White]                                 //Goes from white to blue
   [1 color Blue]}
   }
 pigment {
   color_map {
   [0 rgbt <0,.5,.6,1>]                            //Goes from whatever to whatever
   [.5 rgbt <1,.8,.9,1>]
   [1 rgbt <1,.8,.9,1>]}   
   }     
   
   }
         

      
cylinder{  <0,1,-7>, <0,1,0>, .5                  //Cylinders
   pigment{ brick
              color White
              color rgb<0.8,0.25,0.1>
              brick_size <0.25, 0.0525, 0.125 >
              mortar 0.01 // size of the mortar
            }
     normal { wrinkles 0.75 scale 0.01}
     finish { diffuse 1 phong 1.5}                //Finish 1 of 2
     } 
   
cylinder {       
 <4,4,-2>, <4,3,-2>, 1    
    pigment {rgb <1,0,1>}  
    finish{ diffuse .3}
}

   
   
cone{                                             //Cones
 <6,0,0>, 1
 <10,1,0>, .01
    pigment { rgb<1.2,2.3,3.4> }
    finish {ambient .1}                           //Finish 2 of 2
}

cone{
 <-4,-6,0>, .5
 <-10,-6,0>, .01
    pigment { rgb<4.3,3.2,2.1> }

}
                        
                        
  
torus{                                            //Torus
 3,.3       
 pigment{MediumSpringGreen}
 rotate<-50,10,10>
 translate x*-1
 translate z*-1
 transmit 3                                       //Transmit
}
                        
                        
  
sphere {                                          //Spheres
 <3,-2,-5> , 2
    pigment{Clear}                                //Refraction (USED GLASS)
    interior { ior 1.5 }    
    texture {Glass}  
    finish{ ambient .1}                           
}     

sphere {       
 <4,2,0> , 1    
    pigment {rgb<.25,1.5,.25>}  
    finish{ ambient .1}
} 
                        
                        
                                                   //2 boxes, 1 of which is rectangular
box{
    <1,2,3>,<3,3,4>
    translate x*-7
    translate z*-8
    pigment{Apocalypse}   
}
 
           

box{
    <2,2,2>,<4,4,4>
    translate x*-10
    translate y*-3
    translate z*10
    texture{Rust}   
}
                      
                      
                      
text {
    ttf "cyrvetic.ttf" "ART IS SUBJECTIVE" 1, 0
    texture { Aluminum }
    translate -10*x
    translate -5*y
    translate 5*z
    rotate <50,-10,0>
  }