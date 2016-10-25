class Asteriod extends Floater{
private int rotSpeed;
  Asteriod(){
    corners = 4;
    int [] xS = {(int)(Math.random() * 10), (int)(Math.random() * 10), (int)(Math.random() * 10), (int)(Math.random() * 10)};
    int[] yS = {(int)(Math.random() * 10), (int)(Math.random() * 10), (int)(Math.random() * 10), (int)(Math.random() * 10)};
    xCorners = xS;
    yCorners = yS;
    myColor = 255;
    myCenterX = 100;
    myCenterY = 100;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    rotSpeed = (int)(Math.random() * 10);
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
