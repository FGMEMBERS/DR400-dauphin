var gears = "fdm/jsbsim/gear/";
var contacts = "fdm/jsbsim/contact/";


var physics = func{

  if(getprop(gears~"unit[0]/compression-ft") > 0.39){
    setprop(gears~"unit[0]/z-position", 0);
    setprop(contacts~"unit[3]/dynamic_friction_coeff", 2);
    if(!getprop(gears~"unit[0]/broken"))
      screen.log.write("Front gear is broken !");
    setprop(gears~"unit[0]/broken", 1);
  }

  if(getprop(gears~"unit[1]/compression-ft") > 0.39){
    setprop(gears~"unit[1]/z-position", 0);
    setprop(contacts~"unit[4]/dynamic_friction_coeff", 2);
    if(!getprop(gears~"unit[1]/broken"))
      screen.log.write("Left gear is broken !");
    setprop(gears~"unit[1]/broken", 1);
  }

  if(getprop(gears~"unit[2]/compression-ft") > 0.39){
    setprop(gears~"unit[2]/z-position", 0);
    setprop(contacts~"unit[5]/dynamic_friction_coeff", 2);
    if(!getprop(gears~"unit[2]/broken"))
      screen.log.write("Right gear is broken !");
    setprop(gears~"unit[2]/broken", 1);
  }

}
