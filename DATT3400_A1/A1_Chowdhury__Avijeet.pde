ArrayList<Grass> grass;
ArrayList<Rabbit> rabbits;
ArrayList<Fox> foxes;

void setup() {
  size(800, 600);
  grass = new ArrayList<Grass>();
  for (int i = 0; i < 50; i++) {
    grass.add(new Grass(random(width), random(height)));
  }
  rabbits = new ArrayList<Rabbit>();
  for (int i = 0; i < 20; i++) {
    rabbits.add(new Rabbit(random(width), random(height)));
  }
  foxes = new ArrayList<Fox>();
  for (int i = 0; i < 5; i++) {
    foxes.add(new Fox(random(width), random(height)));
  }
}

void draw() {
  background(250);

  for (Grass g : grass) {
    g.display();
  }
  for (Rabbit r : rabbits) {
    r.display();
    r.move();
    r.eat(grass);
  }
  for (Fox f : foxes) {
    f.display();
    f.move();
    f.eat(rabbits);
  }
  
}
