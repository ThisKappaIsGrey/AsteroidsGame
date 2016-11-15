class Spaceship extends Floater
{
public final int SPEED_LIMIT;
public Spaceship(){
      corners = 7;
      int [] xS = {-5, 2, 7, 15, 7, 2, -5};
      int[] yS = {-14, -9, -3, 0, 3, 9, 14};
      xCorners = xS;
      yCorners = yS;
      myColor = color(255, 255, 0);
      myCenterX = MAP_WIDTH/2;
      myCenterY = MAP_HEIGHT/2;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;
      SPEED_LIMIT = 10;
    }
public void move(){
  //Follow the SPeed LImit
    if(myDirectionX > SPEED_LIMIT) {
      myDirectionX = SPEED_LIMIT;
    }
    if(myDirectionX < -(SPEED_LIMIT)) {
      myDirectionX = -(SPEED_LIMIT);
    }
    if(myDirectionY > SPEED_LIMIT) {
      myDirectionY = SPEED_LIMIT;
    }
    if(myDirectionY < -(SPEED_LIMIT)) {
      myDirectionY = -(SPEED_LIMIT);
    }
    super.move();
}
public void pressTheBreak(){
  if(myDirectionX > 0){
    myDirectionX -= 0.25;
  }else if(myDirectionX < 0){
    myDirectionX += 0.25;
  }else{
    myDirectionX = 0;
  }
  if(myDirectionY > 0){
    myDirectionY -= 0.25;
  }else if(myDirectionY < 0){
    myDirectionY += 0.25;
  }else{
    myDirectionX = 0;
  }
}
public void setX(int x){myCenterX = x;}
public int getX(){return (int)myCenterX;}
public void setY(int y){myCenterY = y;}
public int getY(){return (int)myCenterY;}
public void setDirectionX(double x){myDirectionX = x;}
public double getDirectionX(){return myDirectionX;}
public void setDirectionY(double y){myDirectionY = y;}
public double getDirectionY() {return myDirectionY;}
public void setPointDirection(int degrees){myPointDirection = degrees;}
public double getPointDirection(){return myPointDirection;}
}
