import("stdfaust.lib");

// panning con 2 attenuatori di livello indipendenti
process = _<:                             // separatore
          hgroup("pan",
          vslider("left",  0,0,1,0.01)*_, // attenuatore sinistro 
          vslider("right", 0,0,1,0.01)*_); // attenuatore destro
			
