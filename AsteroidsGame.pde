//TODO
/*variables */
public final int MAP_WIDTH = 5000;
public final int MAP_HEIGHT = 5000;
public Spaceship rustBucket = new Spaceship();
public ArrayList<Asteriod> asteroids = new ArrayList <Asteriod>();
public Star [] stars = new Star[5000];
public ArrayList<Bullet> bullets = new ArrayList<Bullet>();
public HashMap<String, Boolean> keys = new HashMap<String, Boolean>();
public Camera camera;
public void setup()
{
  //your code here
  size(400, 400, P2D);
  background(0);
  //initializes the new stars
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  //initializes new Asteriods
  for(int i=0; i < 1000; i++){
    asteroids.add(new Asteriod());
  }
  //initializes camera
  camera = new Camera();
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
  // camera
  translate(-camera.pos.x, -camera.pos.y);
  camera.draw(rustBucket);
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
  checkForCollisoins();
  whenKeyIsPressed();

}

public void checkForCollisoins(){
  for(int b = bullets.size()-1; b >=0; b--){
    if(bullets.get(b).getTime() > 200){
      bullets.remove(b);
    }
  }
  for(int b = bullets.size()-1; b >=0; b--){
    for(int a = asteroids.size()-1; a >=0; a--){
      if(dist(asteroids.get(a).getX(), asteroids.get(a).getY(),bullets.get(b).getX(), bullets.get(b).getY()) < 10){
        bullets.remove(b);
        asteroids.remove(a);
        break;
    }
  }
}
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
    rustBucket.setDirectionX(0);
    rustBucket.setDirectionY(0);
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
