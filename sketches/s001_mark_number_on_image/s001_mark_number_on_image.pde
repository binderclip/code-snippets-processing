PImage img;
PGraphics pg;
PFont font;
int id = 0;

size(800, 800);

// load image to graphics
img = loadImage("template.png");
pg = createGraphics(img.width, img.height);

// set font
font = createFont("MonotypeGurmukhi", img.height / 3);

for (int i = 0; i < 400; i++){
  // draw text to graphics
  id = i;
  pg.beginDraw();
  pg.textFont(font);
  pg.background(255);
  pg.image(img, 0, 0);
  pg.fill(150);  // text color
  pg.text(String.format("%d", id), img.width / 20, img.height / 20 * 19);
  pg.endDraw();
  
  // display graphics
  image(pg, 0, 0);
  
  // save graphics
  pg.save(String.format("out/%d.png", id));
}