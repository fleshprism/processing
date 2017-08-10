float x, y, u,u2,u3,u4,u5,u6,u7,u8, v,v2,v3,v4, d, r, sr, sr2, sr3, str, trancey;
int t, count, strokey, cr, cg, cb, ct, ct1, ct2, ct3, ct4, stroker, strokeg, strokeb;

void setup() {
  size(900,600);
  background(255);
  noFill();
  frameRate(144);
  stroke(255,0);
  strokeWeight(1);
  strokey=100; stroker=-12; strokeb=36; strokeg=72; trancey=60; 
  sr=sqrt(3); sr2=sr/2; sr3=sr/3;
  x=width/2; y=height/2; d=width/4; r=d/2; 
  u=d/4; u2=2*u; u3=3*u; u4=4*u; u5=5*u; u6=6*u; u7=7*u; u8=8*u;
  v=r*(sr/2); v2=2*v; v3=3*v; v4=4*v;
  cr=12; cb=72; cg=36; ct=3; ct1=2; ct2=3; ct3=4; ct4=5;
  t=2520; count=1; str=1; 
}

//7 loops - first 3 shrink, mid balanced, last 3 grow
//fun to be had altering values 0-144 str & 6-60etc trancey - plot to mousexy?

void draw() {

  float mx = map(mouseX, 0, width, 1, 72);
  float my = map(mouseY, 0, height, 0, 36); 

  //first loop -
  if (t>2340) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker-=1; strokeb-=1; strokeg-=1; 
  cr+=1; cg+=1; cb+=1; 
  d+=sr3;
  t--;
  count++;
  } 
  
  if (t<=2340 && t>=2160) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker+=1; strokeb+=1; strokeg+=1; 
  cr-=1; cg-=1; cb-=1; 
  d-=sr2;
  t--;
  }
  
  
  
  //second loop -
  if (t<=2160 && t>=1980) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker-=1; strokeb-=1; strokeg-=1; 
  cr+=1; cg+=1; cb+=1; 
  d+=sr2;
  t--;
  count++;
  }
  
  if (t<=1980 && t>=1800) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker+=1; strokeb+=1; strokeg+=1; 
  cr-=1; cg-=1; cb-=1; 
  d-=sr;
  t--;
  }
  
  
  
  //third loop -
  if (t<=1800 && t>=1620) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker+=1; strokeb+=1; strokeg+=1; 
  cr+=1; cg+=1; cb+=1; 
  d+=sr2;
  t--;
  count++;
  }
  
  if (t<=1620 && t>=1440) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker-=1; strokeb-=1; strokeg-=1; 
  cr-=1; cg-=1; cb-=1; 
  d-=sr;
  t--;
  }
  
  
  
  //fourth loop =
  if (t<=1440 && t>=1350) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker+=1; strokeb+=1; strokeg+=1; 
  cr+=1; cg+=1; cb+=1; 
  d+=sr*2;
  t--;
  count++;
  }
  
  if (t<=1350 && t>=1260) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker+=1; strokeb+=1; strokeg+=1; 
  cr+=1; cg+=1; cb+=1; 
  d+=sr*2;
  t--;
  count++;
  }
  
  if (t<=1260 && t>=1170) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker-=1; strokeb-=1; strokeg-=1; 
  cr-=1; cg-=1; cb-=1; 
  d-=sr*2;
  t--;
  }
  
  if (t<=1170 && t>=1080) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker-=1; strokeb-=1; strokeg-=1; 
  cr-=1; cg-=1; cb-=1; 
  d-=sr*2;
  t--;
  }
  
  
  
  //fifth loop +
  if (t<=1080 && t>=900) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker-=1; strokeb-=1; strokeg-=1; 
  cr+=1; cg+=1; cb+=1; 
  d+=sr;
  t--;
  count++;
  }
  
  if (t<=900 && t>=720) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker+=1; strokeb+=1; strokeg+=1; 
  cr-=1; cg-=1; cb-=1; 
  d-=sr2;
  t--;
  }
  
  
  
  //sixth loop +
  if (t<=720 && t>=540) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker-=1; strokeb-=1; strokeg-=1; 
  cr+=1; cg+=1; cb+=1; 
  d+=sr;
  t--;
  count++;
  }
  
  if (t<=540 && t>=360) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker+=1; strokeb+=1; strokeg+=1;
  cr-=1; cg-=1; cb-=1; 
  d-=sr2;
  t--;
  }
  
  
  
  //seventh loop +
  if (t<=360 && t>=180) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker+=1; strokeb+=1; strokeg+=1; 
  cr+=1; cg+=1; cb+=1; 
  d+=sr2;
  t--;
  count++;
  }
  
  if (t<=180 && t>=0) {
  //circle0,origin
  fill(cr, cg, cb, ct);
  ellipse(x,y,d,d);
  //circles1-6,first ring
  fill(cr, cg, cb, ct1);
  ellipse(x-u2,y,d,d);
  ellipse(x-u,y+v,d,d);
  ellipse(x+u,y-v,d,d);
  ellipse(x+u2,y,d,d);
  ellipse(x+u,y+v,d,d);
  ellipse(x-u,y-v,d,d);
  //circles7-18,second ring
  fill(cr, cg, cb, ct2);
  ellipse(x-u4,y,d,d);
  ellipse(x-u3,y-v,d,d);
  ellipse(x-u2,y-v2,d,d);
  ellipse(x,y-v2,d,d);
  ellipse(x+u2,y-v2,d,d);
  ellipse(x+u3,y-v,d,d);
  ellipse(x+u4,y,d,d);
  ellipse(x+u3,y+v,d,d);
  ellipse(x+u2,y+v2,d,d);
  ellipse(x,y+v2,d,d);
  ellipse(x-u2,y+v2,d,d);
  ellipse(x-u3,y+v,d,d);
  //circles19-36,third ring
  fill(cr, cg, cb, ct3);
  ellipse(x-u6,y,d,d);
  ellipse(x-u5,y-v,d,d);
  ellipse(x-u4,y-v2,d,d);
  ellipse(x-u3,y-v3,d,d);
  ellipse(x-u,y-v3,d,d);
  ellipse(x+u,y-v3,d,d);
  ellipse(x+u3,y-v3,d,d);
  ellipse(x+u4,y-v2,d,d);
  ellipse(x+u5,y-v,d,d);
  ellipse(x+u6,y,d,d);
  ellipse(x+u5,y+v,d,d);
  ellipse(x+u4,y+v2,d,d);
  ellipse(x+u3,y+v3,d,d);
  ellipse(x+u,y+v3,d,d);
  ellipse(x-u,y+v3,d,d);
  ellipse(x-u3,y+v3,d,d);
  ellipse(x-u4,y+v2,d,d);
  ellipse(x-u5,y+v,d,d);
  //circles37-60,fourth ring
  fill(cr, cg, cb, ct4);
  ellipse(x-u8,y,d,d);
  ellipse(x-u7,y-v,d,d);
  ellipse(x-u6,y-v2,d,d);
  ellipse(x-u5,y-v3,d,d);
  ellipse(x-u4,y-v4,d,d);
  ellipse(x-u2,y-v4,d,d);
  ellipse(x,y-v4,d,d);
  ellipse(x+u2,y-v4,d,d);
  ellipse(x+u4,y-v4,d,d);
  ellipse(x+u5,y-v3,d,d);
  ellipse(x+u6,y-v2,d,d);
  ellipse(x+u7,y-v,d,d);
  ellipse(x+u8,y,d,d);
  ellipse(x+u7,y+v,d,d);
  ellipse(x+u6,y+v2,d,d);
  ellipse(x+u5,y+v3,d,d);
  ellipse(x+u4,y+v4,d,d);
  ellipse(x+u2,y+v4,d,d);
  ellipse(x,y+v4,d,d);
  ellipse(x-u2,y+v4,d,d);
  ellipse(x-u4,y+v4,d,d);
  ellipse(x-u5,y+v3,d,d);
  ellipse(x-u6,y+v2,d,d);
  ellipse(x-u7,y+v,d,d);
  //animations
  str=mx; trancey=my;
  stroke(stroker, strokeb, strokeg, trancey);
  strokeWeight(str);
  stroker-=1; strokeb-=1; strokeg-=1; 
  cr-=1; cg-=1; cb-=1; 
  d-=sr3;
  t--;
  }



  if (t<=0) {
  t+=2520;
  }

}


void keyPressed() {
  if(keyCode==ENTER) {
    saveFrame("screen-####.png");
  }
}