//Ben Strong
//Computer Graphics Project 3


#include "colors.inc"      
#include "shapes.inc" 
#include "textures.inc"
#include "Bunny.inc"     

camera {                                          //Camera
 location <0,5,-20>
 look_at <0,0,-10>
}            

   
light_source {                                    //Light
 <0,10,0>
 White
} 
/*
#declare Rad_Quality = 2;  //Took this from a file in povray directory

global_settings {
  assumed_gamma 1.0

#switch (Rad_Quality)
 #case (1)
  radiosity {             // --- Settings 1 (fast) ---
    pretrace_start 0.08
    pretrace_end   0.02
    count 50
    error_bound 0.5
    recursion_limit 1
  }
 #break
 #case (2)
  radiosity {             // --- Settings 2 (medium quality) ---
    pretrace_start 0.08
    pretrace_end   0.01
    count 120
    error_bound 0.25
    recursion_limit 1
  }
 #break
 #case (3)
  radiosity {             // --- Settings 3 (high quality) ---
    pretrace_start 0.08
    pretrace_end   0.005
    count 400
    error_bound 0.1
    recursion_limit 1
  }
 #break
 #case (4)
  radiosity {             // --- Settings 4 (medium quality, recursion_limit 2) ---
    pretrace_start 0.08
    pretrace_end   0.005
    count 350
    error_bound 0.15
    recursion_limit 2
  }
 #break
 #end

}
*/

/*
Part2
object{bunny translate <9,-3,-4> rotate<0,90,0> } //Side
object{bunny translate <-5,3,0> rotate<0,180,0> } //Back
object{bunny translate <1,3,0> rotate<0,0,0> }    //Front
object{bunny translate <-5,2,0> rotate<75,0,0> }  //Bottom
object{bunny translate <3,0,-5> rotate<-90,0,0> }  //Top
*/ 
 
object{bunny translate x*30 rotate<0,90,0> scale .5 }                //Side
object{bunny translate x*20 translate y*10 rotate<0,180,0> scale .5} //Back
object{bunny translate x*10 translate y*-10 rotate<0,0,0> scale .75} //Front
object{bunny translate z*5 translate x*-20 rotate<75,0,0> scale .25} //Bottom
object{bunny translate z*0 translate x*20 rotate<-90,0,0> scale .5}  //Top      
 
object{bunny translate x*-10 translate y*-15 rotate<0,90,0> scale .5}//Side
object{bunny translate z*10 translate x*10 rotate<0,180,0> scale .5} //Back
object{bunny translate z*0 translate x*-10 rotate<0,0,0> scale .75}  //Front
object{bunny translate y*15 rotate<75,0,0> scale .25}  //Bottom
object{bunny translate z*-6 rotate<-90,0,0> scale .5}  //Top      

object{bunny translate x*-30 rotate<0,90,0> scale .5 }                //Side
object{bunny translate x*-10 translate y*10 rotate<0,180,0> scale .5} //Back
object{bunny translate z*0 translate x*-2 rotate<0,0,0> scale .75}    //Front
object{bunny translate z*-10 translate x*-10 rotate<75,0,0> scale .25}  //Bottom
object{bunny translate x*-15 translate y*-15 rotate<-90,0,0> scale .5}  //Top      
    
sky_sphere{pigment {
        granite  
        color_map {
            [0.72 rgb 0.00 ] // No Stars in this area
            [0.72 rgb 0.20 ] // Very Very Faint Stars
            [0.75 rgb 0.40 ] // Very Very Faint Stars
            [0.78 rgb 0.60 ] // Very Faint Stars
            [0.81 rgb 0.80 ] // Faint Stars
            [0.85 rgb 0.95 ] // Medium White Stars
            [0.91 rgb 1.00 ] // White Stars 
            [0.91 rgb 0.00 ] // No Stars in this area
        }
    scale .015
    }}
