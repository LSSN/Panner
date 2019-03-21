declare name "Pan";

import("stdfaust.lib");

// panning di ampiezza
pan = vslider("pan [style:knob]", 0.5,0,1,0.01); 
process = _<:          // separatore
          _ * (1-pan), // left  
          _ * (pan);   // right
			
