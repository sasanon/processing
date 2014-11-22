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
//  backfaceCulling();

  translate(width/2, height/2);
  rotateZ(rot);
  rotateY(rot);
  rot+=PI/180;

  PVector v0 = new PVector(cos(0*2*PI/10)*100,-100,sin(0*2*PI/10)*100);
  PVector v1 = new PVector(cos(0*2*PI/10)*100, 100,sin(0*2*PI/10)*100);
  PVector v2 = new PVector(cos(1*2*PI/10)*100,-100,sin(1*2*PI/10)*100);
  PVector v3 = new PVector(cos(1*2*PI/10)*100, 100,sin(1*2*PI/10)*100);
  PVector v4 = new PVector(cos(2*2*PI/10)*100,-100,sin(2*2*PI/10)*100);
  PVector v5 = new PVector(cos(2*2*PI/10)*100, 100,sin(2*2*PI/10)*100);
  PVector v6 = new PVector(cos(3*2*PI/10)*100,-100,sin(3*2*PI/10)*100);
  PVector v7 = new PVector(cos(3*2*PI/10)*100, 100,sin(3*2*PI/10)*100);
  PVector v8 = new PVector(cos(4*2*PI/10)*100,-100,sin(4*2*PI/10)*100);
  PVector v9 = new PVector(cos(4*2*PI/10)*100, 100,sin(4*2*PI/10)*100);
  PVector v10 = new PVector(cos(5*2*PI/10)*100,-100,sin(5*2*PI/10)*100);
  PVector v11 = new PVector(cos(5*2*PI/10)*100, 100,sin(5*2*PI/10)*100);
  PVector v12 = new PVector(cos(6*2*PI/10)*100,-100,sin(6*2*PI/10)*100);
  PVector v13 = new PVector(cos(6*2*PI/10)*100, 100,sin(6*2*PI/10)*100);
  PVector v14 = new PVector(cos(7*2*PI/10)*100,-100,sin(7*2*PI/10)*100);
  PVector v15 = new PVector(cos(7*2*PI/10)*100, 100,sin(7*2*PI/10)*100);
  PVector v16 = new PVector(cos(8*2*PI/10)*100,-100,sin(8*2*PI/10)*100);
  PVector v17 = new PVector(cos(8*2*PI/10)*100, 100,sin(8*2*PI/10)*100);
  PVector v18 = new PVector(cos(9*2*PI/10)*100,-100,sin(9*2*PI/10)*100);
  PVector v19 = new PVector(cos(9*2*PI/10)*100, 100,sin(9*2*PI/10)*100);
  
  makeQuad(v0,  v1,  v2,  v3 );
  makeQuad(v2,  v3,  v4,  v5 );
  makeQuad(v4,  v5,  v6,  v7 );
  makeQuad(v6,  v7,  v8,  v9 );
  makeQuad(v8,  v9,  v10, v11);
  makeQuad(v10, v11, v12, v13);
  makeQuad(v12, v13, v14, v15);
  makeQuad(v14, v15, v16, v17);
  makeQuad(v16, v17, v18, v19);
  makeQuad(v18, v19, v0,  v1 );

}
