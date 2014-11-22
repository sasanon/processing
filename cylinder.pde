float rot;

void makeQuad(PVector v1, PVector v2, PVector v3, PVector v4){
  beginShape(TRIANGLES);
  vertex(v1.x, v1.y, v1.z);
  vertex(v2.x, v2.y, v2.z);
  vertex(v3.x, v3.y, v3.z);
  vertex(v2.x, v2.y, v2.z);
  vertex(v3.x, v3.y, v3.z);
  vertex(v4.x, v4.y, v4.z);
  endShape();
}
void makeTriangle(PVector v1, PVector v2, PVector v3){
  beginShape(TRIANGLES);
  vertex(v1.x, v1.y, v1.z);
  vertex(v2.x, v2.y, v2.z);
  vertex(v3.x, v3.y, v3.z);
  endShape();
}

void setup(){
  size(400,400,P3D);
  fill(255);
  noStroke();
  colorMode(HSB,100,100,100);
}

void draw(){
  background(100);

  lights();
  translate(width/2, height/2);
  rotateX(rot);
  rot+=PI/180;

  int face = mouseX/10;
  for(int i=0; i<face; i++){
    PVector v0 = new PVector(cos(i*2*PI/face)*100,-100,sin(i*2*PI/face)*100);
    PVector v1 = new PVector(cos(i*2*PI/face)*100, 100,sin(i*2*PI/face)*100);
    PVector v2 = new PVector(cos((i+1)*2*PI/face)*100,-100,sin((i+1)*2*PI/face)*100);
    PVector v3 = new PVector(cos((i+1)*2*PI/face)*100, 100,sin((i+1)*2*PI/face)*100);
    fill(i*100/face,100,100);
    makeQuad(v0,  v1,  v2,  v3 );
    makeTriangle(v0, new PVector(0,-100,0), v2);
    makeTriangle(v1, new PVector(0, 100,0), v3);
  }

}
