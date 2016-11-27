class GameSpace{
  private int height, width;
    GameSpace(){
      height = MAP_HEIGHT;
      width= MAP_WIDTH;
    }
    void show(){
      fill(0, 0, 0);
      stroke(255, 0, 0);
      rect(0, 0, height, width);
    }
}
