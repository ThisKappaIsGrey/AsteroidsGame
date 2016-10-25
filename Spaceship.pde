class Spaceship extends Floater  
{ 
public Spaceship(){
      corners = 7;
      int [] xS = {-5, 2, 7, 15, 7, 2, -5};
      int[] yS = {-14, -9, -3, 0, 3, 9, 14};
      xCorners = xS;
      yCorners = yS;
      myColor = color(255, 255, 0);
      myCenterX = 200;
      myCenterY = 200;
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