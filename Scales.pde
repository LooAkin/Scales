public void setup() {
  size(1000,1000);
  strokeWeight(0);
}

public void draw() {
  //create loop to draw multiple scale layers
  for(int u = 1000 ; u >= -30 ; u -=30 ) 
{
  //create nested loop to create each layer of scales
  for(int w = 1000 ; w >= 0 ; w -=25 )
  {
    //use randomly selected shade of purple
   if (Math.random() < 0.25) {
    fill(204, 153, 255);
  } else if (Math.random() < 0.5) {
     fill(64, 0, 128);
  } else if (Math.random() < 0.75) {
     fill(57, 0, 77);
  } else {
     fill(198, 26, 255);
  } 
  //adds slight variation to scale position
    float z = w + (float) Math.random();
    if (z >= w + 0.5){
      w = w + 1;
    }
    //draw scale
    scale(w, u);
  }
  }
}

  void scale(int x, int y){
    //creates scale shape
    beginShape();    
    curveVertex(x+25,y+25);
    curveVertex(x+25,y+25);
    curveVertex(x,y+75);
    curveVertex(x-25,y+25);
    curveVertex(x,y);
    curveVertex(x,y);
    endShape();
    fill(131, 0, 173);
    ellipse(x, y+35, 20, 35);
}
