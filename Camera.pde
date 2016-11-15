class Camera{
public PVector pos;
	Camera(){
		pos = new PVector(MAP_WIDTH/2 - 250, MAP_HEIGHT/2 - 250);
	}
	public void draw(Spaceship ship) {
    pos.x += ship.getDirectionX();
    pos.y += ship.getDirectionY();
  }
}