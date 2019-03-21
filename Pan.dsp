import("stdfaust.lib");

// panning di ampiezza
pan = hslider("pan [style:knob]", 0.5,0,1,0.01); 
process = _<:                             // separatore
          _ * (1-pan), //  
          _ * (pan); // 
			
