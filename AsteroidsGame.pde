//TODO
//make a camera that follows the spaceship around
// make bullets destroy asteroids
public final int MAP_WIDTH = 1000;
public final int MAP_HEIGHT = 1000;
Spaceship rustBucket = new Spaceship();
ArrayList<Asteriod> asteroids = new ArrayList <Asteriod>();
Star [] stars = new Star[10];;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
HashMap<String, Boolean> keys = new HashMap<String, Boolean>();
public void setup()
{
  //your code here
  size(1000, 1000, P2D);
  background(0);
  //initializes the new stars
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  //initializes new Asteriods
  for(int i=0; i < 100; i++){
    asteroids.add(new Asteriod());
  }
 //hash maps for the keys
keys.put("w", false);
keys.put("a", false);
keys.put("s", false);
keys.put("d", false);
keys.put("f", false);
keys.put(" ", false);
keys.put("q", false);
}
//draw function.
public void draw()
{
  background(0);
  //shows the Spaceship, and move
  rustBucket.show();
  rustBucket.move();
  //shows the stars
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  //shows and move the asteroids
  for(int i=0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
  }
  //shows and move each Bullet
  for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).show();
    bullets.get(i).move();
  }
  whenKeyIsPressed();
}

public void checkForCollisoins(){
  //for(int i = 0; i )
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
    case 'f':
    keys.put("f", true);
    break;
    case'q':
    keys.put("q", true);
    break;
    case ' ':
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
    case 'f':
    keys.put("f", false);
    break;
    case'q':
    keys.put("q", false);
    break;
    case ' ':
    keys.put(" ", false);
    break;
  }
}
public void whenKeyIsPressed(){
  if(keys.get("w") == true){
    rustBucket.accelerate(.1);
  }
  if(keys.get("s") == true){
    rustBucket.accelerate(-.1);
  }
  if(keys.get("d") == true){
    rustBucket.rotate(5);
  }
  if(keys.get("a") == true){
    rustBucket.rotate(-5);
  }
  if(keys.get("f") == true){
    rustBucket.setDirectionX(0);
    rustBucket.setDirectionY(0);
    rustBucket.setPointDirection((int)(Math.random() * 360));
    rustBucket.setX((int)(Math.random() * 400));
    rustBucket.setY((int)(Math.random() * 400));
  }
  if(keys.get("q") == true){
    rustBucket.pressTheBreak();
  }
  if(keys.get(" ") == true){
    bullets.add(new Bullet(rustBucket));
  }
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
