class Star{
private int dX, dY;
 	public Star(){
		dX = (int)(Math.random() * MAP_WIDTH);
		dY = (int)(Math.random() * MAP_HEIGHT);
	}
	public void show(){
		fill(255);
		point(dX, dY);
}

}
