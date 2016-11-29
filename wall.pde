class GameSpace{
  private int height, width;
  private int  x, y, endX, endY;
    GameSpace(){
      height = MAP_HEIGHT;
      width  = MAP_WIDTH;
      x = 0;
      y = 0;
      endX = x;
      endY = y;
    }
    void show(){
      fill(0, 0, 0);
      stroke(255, 0, 0);
      rect(0, 0, height, width);
    }
    //add lightning later?
    void lightning(){

    }
}
