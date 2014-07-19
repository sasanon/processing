int circle_x, circle_y, circle_r;
int dx, dy;
boolean isDrag;

void setup() {
  size(500, 500);
  circle_x = width/2;
  circle_y = height/2;
  circle_r = 50;
  isDrag = false;
}

void draw() {
//background(0);
  noStroke();
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);
  stroke(255);
  fill(255);

  if(isDrag){
    circle_x = mouseX - dx;
    circle_y = mouseY - dy;
  }

  ellipse(circle_x, circle_y, circle_r*2, circle_r*2);
}

void mousePressed() {
  if(sq(mouseX-circle_x) + sq(mouseY-circle_y) < sq(circle_r)){
    isDrag = true;
    dx = mouseX - circle_x;
    dy = mouseY - circle_y;
  }
}

void mouseReleased() {
    isDrag = false;
}

