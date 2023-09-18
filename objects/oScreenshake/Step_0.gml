if (shake) 
{ 
   shake_time -= 1; 
   oGui.x_screenshake = choose(-shake_magnitude, shake_magnitude); 
   oGui.y_screenshake = choose(-shake_magnitude, shake_magnitude); 

   if (shake_time <= 0) 
   { 
      shake_magnitude -= shake_fade; 

      if (shake_magnitude <= 0) 
      { 
         shake = false; 
      } 
   } 
}