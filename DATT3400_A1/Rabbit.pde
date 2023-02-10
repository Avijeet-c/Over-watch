class Rabbit {
  float x, y;
  PVector velocity;

  Rabbit(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    fill(100, 100, 100);
    ellipse(x, y, 20, 20);
    text("RABBIT",x-20,y+25);
  }

  void move() {
    x += random(-random(10), random(10));
    y += random(-random(10), random(10));
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }

  void eat(ArrayList<Grass> grass) {
    for (int i = 0; i < grass.size(); i++) {
      Grass g = grass.get(i);
      float d = dist(x, y, g.x, g.y);
      if (d < 15) {
        grass.remove(i);
        break;
      }
    }
  }
}
