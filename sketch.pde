int big_x, big_y, big_r;
int small_x, small_y, small_r;
int dx, dy;
boolean isDrag;

void setup() {
  size(500, 500);
  small_x = width/2;
  small_y = height/2;
  small_r = 50;
  big_x = width/2;
  big_y = height/2;
  big_r = 200;
  isDrag = false;

  background(255);
}

void draw() {
  noStroke();
  fill(0, 0, 0, 10);
  ellipse(big_x, big_y, big_r*2, big_r*2);
  
  fill(255);
  if(isDrag){
    small_x = mouseX - dx;
    small_y = mouseY - dy;

    if(sq(small_x - big_x) + sq(small_y - big_y) > sq(big_r - small_r)){
      float scale = abs(big_r - small_r) / sqrt(sq(small_x - big_x) + sq(small_y - big_y));
      small_x = big_x + (int)((small_x - big_x) * scale);
      small_y = big_y + (int)((small_y - big_y) * scale);
    }
  }else{
      small_x = big_x + (int)((small_x - big_x) * 0.95);
      small_y = big_y + (int)((small_y - big_y) * 0.95);
  }
  
  ellipse(small_x, small_y, small_r*2, small_r*2);
}

void mousePressed() {
  if(sq(mouseX-small_x) + sq(mouseY-small_y) < sq(small_r)){
    isDrag = true;
    dx = mouseX - small_x;
    dy = mouseY - small_y;
  }
}

void mouseReleased() {
    isDrag = false;
}


