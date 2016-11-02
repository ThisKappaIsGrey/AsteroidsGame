//your variable declarations here
Spaceship bob = new Spaceship();
ArrayList<Asteriod> asteroids;
Star [] kappa;
Bullet hitler = new Bullet();
//HashMap<String, Boolean> keys = new HashMap<String, Boolean>();
public void setup()
{
  //your code here
  size(1000, 1000, P2D);
  background(0);
  kappa = new Star[1000];
  asteroids = new ArrayList <Asteriod>();
  for(int i = 0; i < kappa.length; i++){
    kappa[i] = new Star();
  }
  for(int i=0; i < 100; i++){
    asteroids.add(new Asteriod());
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
  for(int i=0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
  }
  hitler.show();
}
public void keyPressed(){
  switch(key){
    case 'w':
    bob.accelerate(.1);
    break;
    case 's':
    bob.accelerate(-.1);
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

//keypressed, set hashmap to true, keyreleased, set it to false. 
}
