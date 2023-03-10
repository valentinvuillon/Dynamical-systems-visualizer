import peasy.*;
PeasyCam cam;

fireflies_group fg;
lorenz_dynamical_system lds;
aizawa_dynamical_system ads;

void setup() {
  size(800, 600, P3D);
  cam=new PeasyCam(this, 1000);
    
  fg=new fireflies_group(1000,100);
  lds=new lorenz_dynamical_system();
  ads=new aizawa_dynamical_system();
  
}


float dt=0.005;
  
void draw(){

lds.update_fireflies_group(fg, dt, 1);

//for lorenz: fg.draw_fireflies(5);, translate(0,0,-150);
//for aizawa: fg.draw_fireflies(100); translate(0,0,-70);

background(255);
//draw_axis(100);
translate(0,0,-150);
fg.draw_fireflies(5);




}
