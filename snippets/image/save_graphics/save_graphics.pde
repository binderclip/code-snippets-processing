PGraphics pg;
pg = createGraphics(100, 100);
pg.beginDraw();
pg.background(100);
pg.stroke(255);
pg.line(20, 20, mouseX, mouseY);
pg.endDraw();
pg.save("g.png");