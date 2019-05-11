import("stdfaust.lib");

frq = vslider("frequency [style:knob]", 440,100,20000,1); 
pan = vslider("pan [style:knob]", 0.5,0,1,0.01); 
process = os.oscsin(frq) <: _ * (sqrt(1-pan)), _ * (sqrt(pan)); 	
