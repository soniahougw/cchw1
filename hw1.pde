///Title: Ocean Sunset with Kandinsky

///The interaction features include:
 //Moving the mouse to represent the sun, which also changes the background (sky) color.
 //"mouse located at:x,y" as readable
 //pressing the 'w' key to generate waves
 //Clicking Run to create falling snow in random positions each time.
float t = 0;

void setup() {
  size(1000, 700);
}
  
void draw(){   
  //Clicking Run to create falling snow in random positions each time.
  mousePressed();
  noStroke();
  fill(255,85);
  for (int i = 0; i < 4; i++) {
    float x = random(width);
    float y = random(height);
    circle(x,y,15);
  }  
  
  //move mouse(sun)
  fill(230,230-mouseY, 0); //sun color
  stroke(250,130,150); 
  strokeWeight(2);
  for (int r = 20; r > 0; r -= 5) {
    arc(mouseX,mouseY,r*5,r*5, PI, TWO_PI); //sun
    }
  
  //sky
  fill(180-mouseY,210-mouseY,230-mouseY,100); //sky color change
  noStroke();
  rect(0,0,1000,700); //sky canvas
  
  fill(105,140,180,50);
  rect(0,400, 1000,height-400);
  
  //ocean wave
 keyPressed();
  if (key == 'w' || key == 'W') {   // if press the key w or W
    // wave start 
    fill(105,140,180,10);
    stroke(255,100);
    beginShape();
     for (int x = 0; x < width; x++) {
      // use noise to create wave
      float y = noise(x*0.01, t)*400+250;
      vertex(x, y);
     }
    endShape();
    t += 0.01; // refresh the time to let the wave move
  }
 
  //text
  fill(255);
  textSize(40);
  text("Ocean Sunset with Kandinsky", 500, 650); 
  textSize(25);
  text("-by Sonia",890,680);
  
  //tl: yellow under red under black under purple circle
  noStroke();
  fill(210,180,30);
  circle(150,180,70);//yellow behind
  
  fill(255,0,0,100); //with transparency in opacity
  circle(100,100,200);//red circle
    
  fill(195,20,10);
  circle(150,180,50);//red at the right down corner
   
  fill(0);
  circle(100,100,150);//black
  
  fill(50,18,70);
  circle(100,100,50);//purple
  
  //purple under blue under yellow circle
  fill(50,18,70);
  circle(80,500,100);//purple
  
  fill(120,150,180);
  circle(80,500,80);//blue
  
  stroke(0);
  strokeWeight(1);
  fill(210,180,30);
  circle(80,500,60);//yellow
  
  //yellow under pink under blue circle
  noStroke();
  fill(210,180,30);
  circle(310,650,75);//yellow
  
  fill(255,225,240);
  circle(300,645,50);//pink
  
  fill(120,150,180);
  circle(298,643,43);//blue
  
  //lines crossing the circles
  stroke(4);
  line(250,650,380,540);
  stroke(0.5);
  line(270,670,370,580);
  
  //bottom lines crossing the pink triangle's left line
  line(385,580,450,580);
  line(385,590,455,590);
  
  //pink triangle
  noStroke();
  fill(250,240,240);
  triangle(500,20,450,310,550,310);

  //beige triangle 
  noStroke();
  fill(230,220,210);
  triangle(300,120,100,300,600,450);

  //beige triangle with lines on 2 sides
  stroke(0); 
  line(300,120,100,300);
  line(300,120,600,450);

  //four semicircles
  fill(255);
  stroke(50,18,70); //purple
  arc(410,500,80,80,0, PI, OPEN);
 
  stroke(210,180,30); //yellow upper semicircle
  arc(490,500,80,80, PI, TWO_PI, OPEN);
 
  stroke(255,0,0);//red
  arc(570,500,80,80,0, PI, OPEN);
 
  stroke(0); //black upper semicircle
  arc(650,500,80,80, PI, TWO_PI, OPEN);
  line(300,500,800,500);
 
  //pink triangle with lines on 2 sides
  line(500,20,400,600);
  line(500,20,600,600); 
 
   //lines around the beige triangle
  line(300,40,300,180);//straight line on the top of the triangle
  line(60,300,450,200);//tilt line 
  line(270,70,350,70);
  line(280,80,360,80);
 
  //lines around the pink triangle
  line(450,40,550,100);
  line(450,70,550,100);
 
  //arc between blue pink triangle
  noFill();
  arc(400,150,100,300,PI,PI+QUARTER_PI);
  arc(400,150,140,400,PI,PI+QUARTER_PI);
 
  //green triangle
  noStroke();
  fill(20,75,50);
  triangle(560,240,450,310,600,310);
  
  //gold triangle
  fill(100,80,20);
  triangle(540,252,450,310,550,310);
 
  //black thing
  fill(0);
  beginShape();
   vertex(100,300);
   quadraticVertex(417,272,450,305);
   quadraticVertex(468,400,497,361);
   quadraticVertex(539,409,542,512);
   quadraticVertex(536,433,500,386);
   quadraticVertex(443,340,411,293);
   quadraticVertex(381,271,346,269);
  endShape();
  
  //black lines
  stroke(1);
  strokeWeight(7);
  line(130,400,260,500);
  line(500,180,650,250);
  
  //cross on top middle
  strokeWeight(1);
  line(600,40,630,40);
  line(600,42,630,42);//upper horizontal lines 
  
  line(614,0,614,130);
  line(618,0,618,130);//vertical lines
  
  line(600,121,630,121);
  line(600,123,630,123);
  line(600,125,630,125);//lower horizontal lines 
  
  noFill();
  arc(620,70,30,30,QUARTER_PI,PI+QUARTER_PI+QUARTER_PI+QUARTER_PI); //C line

}

//every time I move the mouse I know where I am as printed  
void mousePressed() {
  println("Mouse located at: " + mouseX + ", " + mouseY);
  
}
