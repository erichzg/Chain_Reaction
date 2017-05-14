Ball[] balls;


boolean reactionStarted;

void setup() {
    size(600,600);
    reactionStarted = false;
    balls = new Ball[25];
    for (int i = 0; i < balls.length; i++) {
        balls[i] = new Ball();
    }
}

void draw() {
  background(0);
  for (Ball ball: balls) {
    ball.move();
  }
}

void mouseClicked() {
  if (!reactionStarted) {
    balls[0].x = mouseX;
    balls[0].y = mouseY;
  }
  balls[0].state = 1;
  
  
}