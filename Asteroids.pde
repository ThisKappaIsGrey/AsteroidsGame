class Asteriod extends Floater{
private int rotSpeed, s;
  Asteriod(){
    s = (int)(Math.random() * 5);
    corners = 4;
    int [] xS = {-5*s, 5*s, 5 * s, -5*s};
    int[] yS = {-5*s, -5*s, 5*s, 5*s};
    xCorners = xS;
    yCorners = yS;
    myColor = 255;
    myCenterX = 100;
    myCenterY = 100;
    myDirectionX = (int)(Math.random() * 11) - 6;
    myDirectionY = (int)(Math.random() * 11) - 6;
    myPointDirection = (int)(Math.random() * 11) - 6;
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
