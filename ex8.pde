import ddf.minim.*;

boolean SoundNow = false;

AudioSnippet noise;
Minim minim;

void setup() 
{
  size(640, 360);
  background(102);
  
  minim = new Minim(this);
  noise = minim.loadSnippet("song.mp3");
}

void draw() 
{
    variableEllipse(mouseX, mouseY, pmouseX, pmouseY);
    text("if key pressed it will reset and set background blue", 10 ,300);
    text("The faster you move the mouse, the larger the circle is",10 ,250);
  if (mousePressed){
    background(13, 91, 255);   
    SoundNow = true;
    noise.play();
  }
}

void variableEllipse(int x, int y, int px, int py) 
{
  float speed = abs(x-px) + abs(y-py);
  stroke(speed);
  ellipse(x, y, speed, speed);
}
