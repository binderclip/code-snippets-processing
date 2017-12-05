PGraphics pg;
PImage img;

void setup() {
  size(200, 200);
  pg = createGraphics(120, 120);
  img = loadImage("lollipop.png");
}

void draw() {
  pg.beginDraw();
  pg.background(0);
  pg.image(img, 0, 0);
  pg.endDraw();
  image(pg, 0, 0); 
}