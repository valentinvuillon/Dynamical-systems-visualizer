import peasy.*;
PeasyCam cam;

firefly firefly_1;
firefly firefly_2;
firefly firefly_3;
fireflies_group fg;
lorenz_dynamical_system lds;
aizawa_dynamical_system ads;

void setup() {
  size(800, 600, P3D);
  cam=new PeasyCam(this, 500);
  
  // for lorenz dynamical system
  //firefly_1=new firefly(20, 0, 0, 255, 0, 0);
  //firefly_2=new firefly(0, 10, 0, 0, 255, 0);
  //firefly_3=new firefly(1, 0, 5, 0, 0, 255);
  // for aizawa dynamical system
  firefly_1=new firefly(0.5, 0, 0, 255, 0, 0);
  firefly_2=new firefly(0, 0.5, 0, 0, 255, 0);
  firefly_3=new firefly(0.5, 0, 0.5, 0, 0, 255);
  
  fg= new fireflies_group();
  fg.add_firefly(firefly_1);
  fg.add_firefly(firefly_2);
  fg.add_firefly(firefly_3);
  lds=new lorenz_dynamical_system();
  ads=new aizawa_dynamical_system();
  
  
}


float dt=0.005;
  
void draw(){

ads.update_fireflies_group(fg, dt, 10);

//for lorenz: fg.draw_fireflies(5);, translate(0,0,-150);
//for aizawa: fg.draw_fireflies(100); translate(0,0,-70);

background(255);
//draw_axis(100);
translate(0,0,-70);
fg.draw_fireflies(100);




}
