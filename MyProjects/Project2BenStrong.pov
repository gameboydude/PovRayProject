//Ben Strong
//Computer Graphics Project 2


#include "colors.inc"      
#include "shapes.inc" 
#include "textures.inc"

camera {                                          //Camera
 location <0,0,-11>
 look_at <0,0,0>
}            
   
   
light_source {                                    //Light
 <0,-2,-7>
 White
} 




background{White}              
                                                  //BEAUTIFUL SCENERY EH
sky_sphere {                                      
 pigment {                                        
   gradient y
   color_map {                                     
   [0 rgbt <1,.9,.8,.7>]
   [.25 rgbt <.6,.5,.4,.3>] 
   [.5 rgbt <.2,.1,0,.1>]
   [.75 rgbt <.2,.3,.4,.5>]
   [1 rgbt <.6,.7,.8,.9>]
   }}
 pigment {
   gradient x
   color_map{
   [0 rgbt <0,.1,.2,.3>]
   [.25 rgbt <.4,.5,.6,.7>] 
   [.5 rgbt <.8,.9,1,.9>]
   [.75 rgbt <.8,.7,.6,.5>]
   [1 rgbt <.4,.3,.2,.1>]
   }}}
   
        
        
box{                                              //seperating the rows.
 <-7,-.1,0>,<7,.1,0>
    pigment{Pink} }
  
  
  
    
                                                  //Spheres
sphere {                                          //A
 <-6,3,0> , 1.25                                      
    pigment{
    gradient y
    color_map {                                     
     [.25 rgb <.1,.1,.2>]
     [.5 rgb <.2,.3,.4>] 
     [.75 rgb <.4,.5,.5>] 
     [1 rgb <.6,.8,.7>]
     } turbulence 10}                                     
    finish{ ambient .75}                        
}
text {
    ttf "cyrvetic.ttf" "A: Turbulence" 0, 0       //Turbulence 
    texture { Dark_Wood } 
    scale <.3,.3,.3>
    translate -6.5*x
    translate 4*y
    translate -1*z
    }
        
        
  
sphere {                                           //B
 <-3,3,1> , 1.25                                      
   pigment{
    gradient y
    color_map {                                     
     [.25 rgb <.1,.1,.2>]
     [.5 rgb <.2,.3,.4>] 
     [.75 rgb <.4,.5,.5>] 
     [1 rgb <.6,.8,.7>]
     }}                                            //Ambient. I'll admit, it looks funky. But I like it.    
    finish{ diffuse 0 reflection 0 ambient .5}                           
}  
text {
    ttf "cyrvetic.ttf" "B: Ambient" 0, 0
    texture { Dark_Wood } 
    scale <.3,.3,.3>
    translate -3.75*x
    translate 4*y
    translate -1*z}
    
  

sphere {                                          
 <0,3,2> , 1.25                                      //C
     pigment{
    gradient y
    color_map {                                     
     [.25 rgb <.1,.1,.2>]
     [.5 rgb <.2,.3,.4>] 
     [.75 rgb <.4,.5,.5>] 
     [1 rgb <.6,.8,.7>]
     }}                                                
    finish{ diffuse .7 ambient 0}                           
}
text {
    ttf "cyrvetic.ttf" "C Diffuse" 0, 0           //Diffuse
    texture { Dark_Wood }
    scale <.3,.3,.3>
    translate -.5*x
    translate 4*y
    translate -1*z}
    
  

sphere {                                          
 <3,3,1> , 1.25                                      //D
    pigment{
    gradient y
    color_map {                                     
     [.25 rgb <.1,.1,.2>]
     [.5 rgb <.2,.3,.4>] 
     [.75 rgb <.4,.5,.5>] 
     [1 rgb <.6,.8,.7>]
     }}                                                
    finish{ specular .5678904321}                           
}
text {
    ttf "cyrvetic.ttf" "D: Specular" 0, 0         //Specular
    texture { Dark_Wood }
    scale <.3,.3,.3>
    translate 2*x
    translate 4*y
    translate -1*z}
    
        
        
sphere {                                          
 <6,3,0> , 1.25                                      //E
   pigment{
    gradient y
    color_map {                                     
     [.25 rgb <.1,.1,.2>]
     [.5 rgb <.2,.3,.4>] 
     [.75 rgb <.4,.5,.5>] 
     [1 rgb <.6,.8,.7>]
     }}                                                
    finish{ phong .9}                         
}
text {
    ttf "cyrvetic.ttf" "E: Phong" 0, 0            //Phong
    texture { Dark_Wood }
    scale <.3,.3,.3>
    translate 5*x
    translate 4*y
    translate -1*z}
        
        

sphere {                                          //F
 <-6.5,-3,1> , 1.25
 texture { Aluminum }                                     
    finish{ reflection rgb<1,0,1>}                           
}
text {
    ttf "cyrvetic.ttf" "F: Reflection" 0, 0       //Reflection
    texture { Dark_Wood }
   scale <.3,.3,.3>
    translate -6.5*x
    translate -1*y
    translate -1*z}
        
        
  
sphere {                                          
 <-2,-3,1> , 1.25                                      //G1
    pigment{
    gradient y
    color_map {                                     
     [.25 rgb <.1,.1,.2> transmit.5]
     [.5 rgb <.2,.3,.4> transmit.5] 
     [.75 rgb <.4,.5,.5> transmit.5] 
     [1 rgb <.6,.8,.7> transmit .5]
     }}  
    finish{ ambient .1}                           
}
text {
    ttf "cyrvetic.ttf" "G1: Transmit" 0, 0         //Transmit
    texture { Dark_Wood }
    scale <.3,.3,.3>
    translate -2.5*x
    translate -1*y
    translate -1*z}
        
        
  
sphere {                                          
 <2,-3,1> , 1.25                                      //G2
    pigment{
    gradient y
    color_map {                                     
     [.25 rgb <.1,.1,.2> filter .25]
     [.5 rgb <.2,.3,.4> filter .5] 
     [.75 rgb <.4,.5,.5> filter.75] 
     [1 rgb <.6,.8,.7> filter 1]
     }}
    finish{ ambient .1}                           
}
text {
    ttf "cyrvetic.ttf" "G2: Filter" 0, 0           //Filter
    texture { Dark_Wood }
    scale <.3,.3,.3>
    translate 1*x
    translate -1*y
    translate -1*z}       
    
    

sphere {                                          
 <6,-3,1> , 1.25                                      //H
 /*   pigment{                                        //If you want to view the original image with the colors
    gradient y
    color_map {                                     
     [.25 rgb <.1,.1,.2>]
     [.5 rgb <.2,.3,.4>] 
     }}*/       
    texture {Glass}
    interior { ior  2.4}                              
}
text {
    ttf "cyrvetic.ttf" "G2: Filter" 0, 0           //Refraction
    texture { Glass }
    scale <.3,.3,.3>
    translate 3.75*x
    translate -1*y
    translate -1*z}
        
    
  

//Spheres behind G1,G2,H    

sphere {                                          
 <-2,-3,4> , .5                                      //G1
    pigment{Dark_Wood}                           
}        
  
sphere {                                          
 <2,-3,4> , .5                                      //G2
    pigment{Dark_Wood}                           
}

torus{                                            //Torus
 .5,.05       
 pigment{MediumSpringGreen}
 rotate<-50,10,10>
 translate x*7
 translate y*-3
 translate z*6
 transmit 3                                       //Transmit
}