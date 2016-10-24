//your variable declarations here
Spaceship bob = new Spaceship();
public void setup() 
{
  //your code here
  size(400, 400);
  background(0);
}
public void draw() 
{
  //your code here
  background(0);
  bob.show();
  bob.move();
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

