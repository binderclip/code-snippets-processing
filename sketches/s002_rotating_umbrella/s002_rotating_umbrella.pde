float theta = 0.0;

void setup() {
  size(600, 600, P3D);
}

void draw() {
  background(200);

  translate(200, 100, -800);
  //rotateY(PI);
  rotateY(PI / 180 * 45);
  rotateX(PI / 180 * 125);
  rotateZ(PI / 180 * theta);
  theta -= 3;
  drawUmbrella();
  //saveFrame(String.format("frames/%03d.png", int(-theta/3)));
  // https://www.technig.com/create-video-in-photoshop/
}

void drawUmbrella() { 
  float h1 = 40;
  float l1 = 330;
  float h2 = 180;
  float l2 = 485;
  float h3 = 585;
  float h5 = 10;
  float l5 = 96;
  float h6 = 52;
  float sin_pi_4 = sin(PI / 4);

  //  t1
  stroke(255);
  beginShape(TRIANGLES);
  fill(0);
  vertex(0, 0, 0);
  vertex(l1, 0, -h1);
  vertex(l1 * sin_pi_4, -l1 * sin_pi_4, -h1);
  endShape();
  beginShape();
  fill(0);
  vertex(l1, 0, -h1);
  vertex(l2, 0, -h2);
  vertex(l2 * sin_pi_4, -l2 * sin_pi_4, -h2);
  vertex(l1 * sin_pi_4, -l1 * sin_pi_4, -h1);
  endShape(CLOSE);
  beginShape(LINES);  
  fill(255);
  vertex(0, 0, -h6);
  vertex(l5, 0, -h5);  
  endShape();

  // t2
  beginShape(TRIANGLES);
  fill(0);
  vertex(0, 0, 0);
  vertex(l1 * sin_pi_4, -l1 * sin_pi_4, -h1);
  vertex(0, -l1, -h1);
  endShape();
  beginShape();
  fill(0);
  vertex(l1 * sin_pi_4, -l1 * sin_pi_4, -h1);
  vertex(l2 * sin_pi_4, -l2 * sin_pi_4, -h2);
  vertex(0, -l2, -h2);
  vertex(0, -l1, -h1);
  endShape();
  beginShape(LINES);  
  fill(255);
  vertex(0, 0, -h6);
  vertex(l5 * sin_pi_4, -l5 * sin_pi_4, -h5);
  endShape();

  // t3
  beginShape(TRIANGLES);
  fill(0);
  vertex(0, 0, 0);
  vertex(0, -l1, -h1);
  vertex(-l1 * sin_pi_4, -l1 * sin_pi_4, -h1);
  endShape();
  beginShape();
  fill(0);
  vertex(0, -l1, -h1);
  vertex(0, -l2, -h2);
  vertex(-l2 * sin_pi_4, -l2 * sin_pi_4, -h2);
  vertex(-l1 * sin_pi_4, -l1 * sin_pi_4, -h1);
  endShape();
  beginShape(LINES);  
  fill(255);
  vertex(0, 0, -h6);
  vertex(0, -l5, -h5);
  endShape();

  // t4
  beginShape(TRIANGLES);
  fill(0);
  vertex(0, 0, 0);
  vertex(-l1 * sin_pi_4, -l1 * sin_pi_4, -h1);
  vertex(-l1, 0, -h1);
  endShape();
  beginShape();
  fill(0);
  vertex(-l1 * sin_pi_4, -l1 * sin_pi_4, -h1);
  vertex(-l2 * sin_pi_4, -l2 * sin_pi_4, -h2);
  vertex(-l2, 0, -h2);
  vertex(-l1, 0, -h1);
  endShape();
  beginShape(LINES);  
  fill(255);
  vertex(0, 0, -h6);
  vertex(-l5 * sin_pi_4, -l5 * sin_pi_4, -h5);
  endShape();

  // t5
  beginShape(TRIANGLES);
  fill(0);
  vertex(0, 0, 0);
  vertex(-l1, 0, -h1);
  vertex(-l1 * sin_pi_4, l1 * sin_pi_4, -h1);
  endShape();
  beginShape();
  fill(0);
  vertex(-l1, 0, -h1);
  vertex(-l2, 0, -h2);
  vertex(-l2 * sin_pi_4, l2 * sin_pi_4, -h2);
  vertex(-l1 * sin_pi_4, l1 * sin_pi_4, -h1);
  endShape();
  beginShape(LINES);  
  fill(255);
  vertex(0, 0, -h6);
  vertex(-l5, 0, -h5);
  endShape();

  // t6
  beginShape(TRIANGLES);
  fill(0);
  vertex(0, 0, 0);
  vertex(-l1 * sin_pi_4, l1 * sin_pi_4, -h1);
  vertex(0, l1, -h1);
  endShape();
  beginShape();
  fill(0);
  vertex(-l1 * sin_pi_4, l1 * sin_pi_4, -h1);
  vertex(-l2 * sin_pi_4, l2 * sin_pi_4, -h2);
  vertex(0, l2, -h2);
  vertex(0, l1, -h1);
  endShape();
  beginShape(LINES);  
  fill(255);
  vertex(0, 0, -h6);
  vertex(-l5 * sin_pi_4, l5 * sin_pi_4, -h5);
  endShape();

  // t7
  beginShape(TRIANGLES);
  fill(0);
  vertex(0, 0, 0);
  vertex(0, l1, -h1);
  vertex(l1 * sin_pi_4, l1 * sin_pi_4, -h1);
  endShape();
  beginShape();
  fill(0);
  vertex(0, 0, 0);
  vertex(l1 * sin_pi_4, l1 * sin_pi_4, -h1);
  vertex(0, l1, -h1);
  vertex(0, l2, -h2);
  vertex(l2 * sin_pi_4, l2 * sin_pi_4, -h2);
  endShape();
  beginShape(LINES);  
  fill(255);
  vertex(0, 0, -h6);
  vertex(0, l5, -h5);
  endShape();


  // t8
  beginShape(TRIANGLES);
  fill(0);
  vertex(0, 0, 0);
  vertex(l1 * sin_pi_4, l1 * sin_pi_4, -h1);
  vertex(l1, 0, -h1);
  endShape();
  beginShape();
  fill(0);
  vertex(l1 * sin_pi_4, l1 * sin_pi_4, -h1);
  vertex(l2 * sin_pi_4, l2 * sin_pi_4, -h2);
  vertex(l2, 0, -h2);
  vertex(l1, 0, -h1);
  endShape();
  beginShape(LINES);  
  fill(255);
  vertex(0, 0, -h6);
  vertex(l5 * sin_pi_4, l5 * sin_pi_4, -h5);
  endShape();

  // line
  beginShape(LINES);  
  fill(255);
  vertex(0, 0, 0);
  vertex(0, 0, -h3);  
  endShape();
}