//Katerina Skroumpelou
//MRes ASAV

float wingcenterX, wingcenterY, ang, i, j, x;

void setup() {
  size(800, 300);
}

void draw() {
  background(150);
  x=80;
  i=1;
  while (x<=(2*width))
  {
    wingcenterX=x;
    wingcenterY=height/3;
    j=0;
    translate(wingcenterX, wingcenterY);
    //drawing the wings every PI/4
    while (j<=TWO_PI)
    {
      rotate(j);
      wing();
      j=j+PI/4;
    }
    //drawing the mills
    mill();
    x=x+200;
    //changing the i, which is multiplied with the frameCount to produce different speeds
    i=i+0.5;
  }
}


//funtions

void wing() {  
  ang=radians(frameCount*i);
  pushMatrix();
    rotate(ang);
    stroke(255);
    strokeWeight(2);
    line(0, 0, 1, 15);
    noStroke();
    rect(0, 15, 10, 50);
  popMatrix();
}

void mill() {
  stroke(0);
  strokeWeight(1);
  line(wingcenterX-15, wingcenterY, wingcenterX+15, wingcenterY);
  line(wingcenterX+15, wingcenterY, wingcenterX+25, wingcenterY+100);
  line(wingcenterX+25, wingcenterY+100, wingcenterX-25, wingcenterY+100);
  line(wingcenterX-25, wingcenterY+100, wingcenterX-15, wingcenterY);
}
