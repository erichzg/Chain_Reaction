class Ball {
  float x;
  float y;
  float rad;
  int r;
  int g;
  int b;
  float dx;
  float dy;
  int state;

  Ball() {
    x = random(575)+12.5;
    y = random(575)+12.5;
    rad = 25;
    r = int(random(256));
    g = int(random(256));
    b =int(random(256));
    dx = 5 - random(10);
    dy = 5 - random(10);
  }
  
  void move() {
    fill(r, g, b);
    stroke(r, g, b);
    ellipse(x, y, rad, rad);
    x = x + dx;
    y = y + dy;
    bounce();
  }
  
  void bounce() {
    if (x <= 12.5 || x >= 587.5) {
      dx *= -1;
    }
    if (y <= 12.5 || y >= 587.5) {
      dy *= -1;
    }
  }
}