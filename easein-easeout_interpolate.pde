ArrayList<PVector> ary;
float t=0, v=0.01;
void setup() {
  size(400, 400);
  ary = new ArrayList<PVector>();
  PVector p = new PVector(  0,   0);
  PVector q = new PVector(150, 350);
  PVector r = new PVector(400, 400);
  PVector s = new PVector(350, 150);
  ary.add(p);
  ary.add(q);
  ary.add(r);
//  ary.add(s);
}
float f(float t){
//  return t;
  return -2*t*t*t + 3*t*t;
}

void draw(){
  background(0);
  PVector x;
  if(t>=1){
    x = ary.get(ary.size()-1);
  }else{
    float ft = constrain(f(t), 0, 0.999999);
    float te = ft*(ary.size()-1);
    int   te_int = (int)te;
    float te_dec = te - te_int;
    println(t, te, te_int, te_int+1);
    PVector p = ary.get( te_int   );
    PVector q = ary.get( te_int+1 );
    println(p.x, p.y, q.x, q.y);
    x = PVector.add( PVector.mult(p, 1-te_dec), PVector.mult(q, te_dec) );
  }
  ellipse(x.x, x.y, 10, 10);

  t += v;
 if(t <= 0 || 1 <= t){
    v *= -1;
  }
}
