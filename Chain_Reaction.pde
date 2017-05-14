Ball[] balls;
boolean reactionStarted;

void setup() {
  size(600, 600);
  reactionStarted = false;
  balls = new Ball[25];
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball();
  }
}

void draw() {
  background(0);
  for (Ball ball : balls) {
    if (ball.state == 0) {
      ball.move();
      for (Ball ball2: balls) {
        if (ball2.state-ball.state != 0 && Math.sqrt(Math.pow((ball2.x-ball.x),2) + Math.pow((ball2.y-ball.y),2)) <= ball2.rad/2+ball.rad/2) {
          ball.state = 1;
        }
      }
    }
    else {
      ball.bubble();
    }
  }
}
void mouseClicked() {
  if (!reactionStarted) {
    balls[0].x = mouseX;
    balls[0].y = mouseY;
    reactionStarted = true;
    balls[0].state = 1;
  }
}