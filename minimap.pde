class Minimap{
public Minimap(){}
public void show(){
	fill(255);
	rect(rustBucket.getX() + 150, rustBucket.getY() - 250, 100, 100);
	//ship on map
int bucketX = rustBucket.getX()/50 + 150;
int bucketY = rustBucket.getY()/50 - 250;
	fill(255, 255, 0);
	ellipse(bucketX, bucketY, 10, 10);
	
}
}