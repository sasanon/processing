float rot;
ArrayList<PVector> vertex;

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

void setup(){
  size(400,400,P3D);
  fill(255);
  noStroke();
  vertex = new ArrayList<PVector>();
}

void draw(){
  background(100);

  lights();

  translate(width/2, height/2);
  rotateX(rot);
  rot+=PI/180;

  int face = 100;
  for(int i=0; i<face; i++){
    PVector v0 = new PVector(cos(i*2*PI/face)*100,-100,sin(i*2*PI/face)*100);
    PVector v1 = new PVector(cos(i*2*PI/face)*100, 100,sin(i*2*PI/face)*100);
    PVector v2 = new PVector(cos((i+1)*2*PI/face)*100,-100,sin((i+1)*2*PI/face)*100);
    PVector v3 = new PVector(cos((i+1)*2*PI/face)*100, 100,sin((i+1)*2*PI/face)*100);
    makeQuad(v0,  v1,  v2,  v3 );
    vertex.add(v0);
    vertex.add(v1);
  }
  for(int i=0; i<face; i++){
    PVector v0 = vertex.get((i*2  )%(face*2));
    PVector v1 = vertex.get((i*2+1)%(face*2));
    PVector v2 = vertex.get((i*2+2)%(face*2));
    PVector v3 = vertex.get((i*2+3)%(face*2));
    makeQuad(v0,  v1,  v2,  v3 );
  }

}
