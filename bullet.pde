class Bullet extends Floater{
public Bullet(Spaceship bob){
		myCenterX = bob;
		myCenterY = bob;
		myPointDirection = bob.getPointDirection();
		myDirectionX = 5 * Math.cos(dRadians) + bob.getDirectionX();
     	myDirectionY = 5 * Math.cos(dRadians) + bob.getDirectionY();
	}
	public void show() {
		fill(255, 0, 0);
		ellipse(myCenterX, myCenterY, 2, 2);
	}
}