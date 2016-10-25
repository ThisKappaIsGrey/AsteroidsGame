//your variable declarations here
Spaceship bob = new Spaceship();
Asteriod jim = new Asteriod();
public void setup()
{
  //your code here
  size(400, 400);
  background(0);
  /*for(int i = 0; i < 25; i++){
    fill(255);
    ellipse((int)(Math.random() * 400),(int)(Math.random() * 400), 10, 10);
  }*/
}
public void draw()
{
  //your code here
  bob.show();
  bob.move();
  jim.show();
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
