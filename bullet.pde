class Bullet extends Floater{
private double dRadians;
private int time;
public Bullet(Spaceship rustBucket){
  corners = 4;
    int[] xC = {2,2,-2,-2};
    int[] yC = {1,-1,-1,1};
    xCorners = xC;
    yCorners = yC;
		myCenterX = rustBucket.getX();
		myCenterY = rustBucket.getY();
		myPointDirection = rustBucket.getPointDirection();
		dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 20 * Math.cos(dRadians) + rustBucket.getDirectionX();
    myDirectionY = 20 * Math.sin(dRadians) + rustBucket.getDirectionY();
	}
	public void show() {
		fill(0, 255, 0);
		ellipse((float)myCenterX, (float)myCenterY, 2, 2);
	}
  public void move(){
    super.move();
    time++;
  }

  public int getTime(){return time;}
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
