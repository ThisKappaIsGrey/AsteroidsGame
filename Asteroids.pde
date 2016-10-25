class Asteriod extends Floater{
  Asteriod(){
    corners = 4;
    int [] xS = {-5, -5, 5, 5};
    int[] yS = {-5, 5, -5, 5};
    xCorners = xS;
    yCorners = yS;
    myColor = 255;
    myCenterX = 100;
    myCenterY = 100;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
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
}
