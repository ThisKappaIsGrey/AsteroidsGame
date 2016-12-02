class Minimap{
public Minimap(){}
public void show(){
	fill(255);
	rect(rustBucket.getX() + 150, rustBucket.getY() - 250, 100, 100);
	//ship on map
	int bucketX = rustBucket.getX()/50 + rustBucket.getX() + 150;
	int bucketY = rustBucket.getY()/50 + rustBucket.getY() - 250;
	fill(0, 255, 0);
	ellipse(bucketX, bucketY, 5, 5);
	//asteroid on the map
	for(Asteriod a : asteroids){
		int aX = a.getX()/50 + rustBucket.getX() + 150;
		int aY = a.getY()/50 + rustBucket.getY() - 250;
		ellipse(aX, aY, 2, 2);
	}
}
}