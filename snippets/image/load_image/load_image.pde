PImage img;

void setup() {
  //fullScreen();
  size(500, 500);
  img = loadImage("lollipop.png");
}

void draw() {
  image(img, 0, 0);
}

// https://processing.org/reference/loadImage_.html