declare name "Pansqrt";

import("stdfaust.lib");

// panning di ampiezza quadratico
pan = vslider("pan [style:knob]", 0.5,0,1,0.01); 
process = _<:                   // separatore
          _ * ((1-pan) : sqrt), // left  
          _ * ((pan)   : sqrt); // right
			
