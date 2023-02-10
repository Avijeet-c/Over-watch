class Fox {
  float x, y;

  Fox(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    fill(255, 102, 51);
    ellipse(x, y, 40, 40);
    text("FOX",x-30,y+30);
  }

  void move() {
    x += random(-random(5), random(5));
    y += random(-random(5), random(5));
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }

  void eat(ArrayList<Rabbit> rabbits) {
    for (int i = 0; i < rabbits.size(); i++) {
      Rabbit r = rabbits.get(i);
      float d = dist(x, y, r.x, r.y);
      if (d < 25) {
        rabbits.remove(i);
        break;
      }
    }
  }
}  
