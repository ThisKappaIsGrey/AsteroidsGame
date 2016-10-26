class Star{
private int dX, dY;
 	public Star(){
		dX = (int)(Math.random() * 1000);
		dY = (int)(Math.random() * 1000);
	}
	public void show(){
		fill(255);
		point(dX, dY);
}

}
