class Asteriod extends Floater{
private int rotSpeed, s;
  Asteriod(){
    s = (int)(Math.random() * 3);
    corners = 4;
    int [] xS = {-5*s, 5*s, 5 * s, -5*s};
    int[] yS = {-5*s, -5*s, 5*s, 5*s};
    xCorners = xS;
    yCorners = yS;
    myColor = color(255, 0, 0);
    myCenterX = (int)(Math.random() * MAP_WIDTH);
    myCenterY = (int)(Math.random() * MAP_HEIGHT);
    myDirectionX = (Math.random() * 5) - 2;
    myDirectionY = (Math.random() * 5) - 2;
    myPointDirection = (int)(Math.random() * 11) - 6;
    rotSpeed = (int)(Math.random() * 3);
  }
  public void setX(int x){
    myCenterX = x;
  }
  public int getX(){
    return (int)myCenterX;
  }
  public void setY(int y){
    myCenterY = y;
  }
  public int getY(){
    return (int)myCenterY;
  }
  public void setDirectionX(double x){
    myDirectionX = x;
  }
  public double getDirectionX(){
    return myDirectionX;
  }
  public void setDirectionY(double y){
    myDirectionY = y;
  }
  public double getDirectionY() {
    return myDirectionY;
  }
  public void setPointDirection(int degrees){
    myPointDirection = degrees;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
  public void move(){
    rotate(rotSpeed);
    super.move();
  }
}
