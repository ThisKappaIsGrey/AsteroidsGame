class Camera{
public PVector pos;
	Camera(){
		pos = new PVector(0, 0);
	}
	public void draw(Spaceship ship) {
    pos.x += ship.getDirectionX();
    pos.y += ship.getDirectionY();
  }
}