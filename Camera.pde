class Camera{
public Pvector pos;
	Camera(){
		pos = new Pvector(0, 0);
	}
	public void draw(MyShip ship) {
    pos.x += ship.getDirectionX();
    pos.y += ship.getDirectionY();
  }
}