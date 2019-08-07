int i = 50;
int j = 50;
int dir = 1;
int d = 500;
int s = 1;

void setup() {
  size(520, 520);
}

void draw_one_circle() {
  circle(i, j, 50);
    if (dir == 1) {
    if (i >= 450) {
      dir = 2;
      j += 70;
    } else {
      i += 70;
    }
  } else if (dir == 2) {
    if (j >= 450) {
      dir = 3;
      i -= 70;
    } else {
      j += 70;
    }
  } else if (dir == 3) {
    if (i <= 50) {
      dir = 4;
      j -= 70;
    } else {
      i -= 70;
    }
  } else {
    if (j <= 50) {
      dir = 1;
      i += 70;
    } else {
      j -= 70;
    }
  }
}

void draw_all_circles() {
  for (int x = 0; x < 24; x++) {
     draw_one_circle(); 
  }
}

void draw() {
  background(0);
  delay(d);
  if (d > 35.5) {
    d *= 0.9;
    draw_one_circle();
  } else {
    if (s == 1) {
      draw_all_circles();
      s = 2;
    } else {
      s = 1;
    }
    delay(450);
  }
}
