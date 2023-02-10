class Grass {
  float x, y;
 
  Grass(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    fill(51, 153, 51);
    ellipse(x, y, 10, 10);
    text("GRASS",x-17,y+22);

  }
}
