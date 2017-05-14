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
    b = int(random(256));
    dx = 5 - random(10);
    dy = 5 - random(10);
    state = 0;
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
    if (x <= 12.5) {
      dx *= -1;
      x = 12.5;
    }
    if ( x >= 587.5) {
      dx *= -1;
      x = 587.5;
    }
    if (y <= 12.5) {
      dy *= -1;
      y = 12.5;
    }
    if (y >= 587.5) {
      dy *= -1;
      y = 587.5;
    }
  }

  void bubble() {
    if (rad > 0) {
      fill(r, g, b);
      stroke(r, g, b);
      ellipse(x, y, rad, rad);
    }
    rad += state;
    if (rad >= 75) {
      state = -1;
    }
  }
}