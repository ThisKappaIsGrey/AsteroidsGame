//your variable declarations here
Spaceship rustBucket = new Spaceship();
ArrayList<Asteriod> asteroids;
Star [] kappa;
Bullet hitler = new Bullet(bob);
HashMap<String, Boolean> keys = new HashMap<String, Boolean>();
public void setup()
{
  //your code here
  size(1000, 1000, P2D);
  background(0);
  kappa = new Star[10];
  asteroids = new ArrayList <Asteriod>();
  for(int i = 0; i < kappa.length; i++){
    kappa[i] = new Star();
  }
  for(int i=0; i < 100; i++){
    asteroids.add(new Asteriod());
  }
 //hash maps
keys.put("w", false);
keys.put("a", false);
keys.put("s", false);
keys.put("d", false);
keys.put("h", false);
keys.put(" ", false); 
}
//draw function.
public void draw()
{
  background(0);
  //
  for(int i = 0; i < kappa.length; i++){
    kappa[i].show();
  }
  rustBucket.show();
  rustBucket.move();
  for(int i=0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
  }
  whenKeyIsPressed();
}

public void keyPressed(){
  switch(key){
    case 'w':
    keys.put("w", true);
    break;
    case 's':
    keys.put("s", true);
    break;
    case 'd':
    keys.put("d", true);
    break;
    case 'a':
    keys.put("a", true);
    break;
    case 'h':
    keys.put("h", true);
    break;
    keys.put(" ", true);
    break;
  }
}

public void keyReleased(){
  switch (key) {
    case 'w':
    keys.put("w", false);
    break;
    case 's':
    keys.put("s", false);
    break;
    case 'd':
    keys.put("d", false);
    break;
    case 'a':
    keys.put("a", false);
    break;
    case 'h':
    keys.put("h", false);
    break;
    case ' ';
    keys.put(" ", false);
    break;
  }
}
public void whenKeyIsPressed(){
  if(keys.get("w") == true){
    bob.accelerate(.1);
  }
  if(keys.get("s") == true){
    bob.accelerate(-.1);
  }
  if(keys.get("d") == true){
    bob.rotate(5);
  }
  if(keys.get("a") == true){
    bob.rotate(-5);
  }
  if(keys.get("h") == true){
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)(Math.random() * 360));
    bob.setX((int)(Math.random() * 400));
    bob.setY((int)(Math.random() * 400));
  }
  /*if(keys.get(" ") == true){

  }*/
}
//keypressed, set hashmap to true, keyreleased, set it to false. 
// bob.accelerate(.1); bob.accelerate(-.1); code for accelration
//  bob.rotate(-5); bob.rotate(5); rotate code
/* hyperspace code
 bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)(Math.random() * 360));
    bob.setX((int)(Math.random() * 400));
    bob.setY((int)(Math.random() * 400));
    */

