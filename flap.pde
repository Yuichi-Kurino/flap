Bird bird = new Bird(700);
SystemOfObstical obsticals = new SystemOfObstical();
void setup(){
  fullScreen();
  
}

void draw(){
  background(0);
  bird.update();
  bird.display();
  
  obsticals.update();
  obsticals.display();
  collision();
}

void mousePressed(){
  bird.xpos = 50;
  bird.speed = 2; 
  bird.dir = -2;
  
}


void collision(){
  if(bird.ypos+bird.ysize>height|bird.ypos<0){
    exit();
  }
  obsticals.collision(bird.xpos,bird.ypos,bird.xsize,bird.ysize);
}