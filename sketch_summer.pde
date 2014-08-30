float w;
ArrayList<Ball> balls;

class Ball{
  float r, g, b;
  float x, y, rad;
  float core_x, core_y;

  Ball(float mouse_x, float mouse_y){
    core_x = mouse_x;
    core_y = mouse_y;
    rad  = random(PI);
    r = random(PI);
    g = random(PI);
    b = random(PI);
  }
  void update(){
    r += 0.04;
    g += 0.04;
    b += 0.04;
    fill(sin(r)*127+128, sin(g)*127+128, sin(b)*127+128, 255);

    rad += 10.0 / 300.0;
    x = (cos(w)/2+0.5)*300 * (cos(rad)) + mouseX;
    y = (sin(w)/2+0.5)*300 * (sin(rad)) + mouseY;
    ellipse(x, y, 20, 20);
  }
}


void setup() {
  size(1000, 1000);
  balls = new ArrayList<Ball>();
  w = random(0.08);
}

void draw() {
  noStroke();
  fill(0, 0, 0, 30);
  rect(0, 0, width, height);
 
  w += 0.004;
  
  int n = balls.size();
  for(int i = 0; i < n; i++){
    Ball b = balls.get(i);
    b.update();
  }
}

void mousePressed() {
    Ball b = new Ball(mouseX, mouseY);
    balls.add(b);
}

