class Star{
private int dX, dY;
 	public Star(){
		dX = (int)(Math.random() * 400);
		dY = (int)(Math.random() * 400);
	}
	public void show(){
		fill(255); 
		point(dX, dY);
}

}