//your variable declarations here
Spaceship bob = new Spaceship();
Asteriod jim = new Asteriod();
Star [] kappa;
public void setup()
{
  //your code here
  size(400, 400);
  background(0);
  kappa = new Star[100];
  for(int i = 0; i < kappa.length; i++){
    kappa[i] = new Star();
  }
}
public void draw()
{
  //your code here
  background(0);
  for(int i = 0; i < kappa.length; i++){
    kappa[i].show();
  }
  bob.show();
  bob.move();
  jim.show();
  jim.move();
}
public void keyPressed(){
  switch(key){
    case 'w':
    bob.accelerate(.5);
    break;
    case 's':
    bob.accelerate(-.5);
    break;
    case 'd':
    bob.rotate(5);
    break;
    case 'a':
    bob.rotate(-5);
    break;
    case 'h':
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)(Math.random() * 360));
    bob.setX((int)(Math.random() * 400));
    bob.setY((int)(Math.random() * 400));
    break;
  }
}
