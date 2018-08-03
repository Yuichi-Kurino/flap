class Bird{
  float xpos,ypos,xsize,ysize,speed,dir;
  Bird(float ypos){
    this.xsize = 50;
    this.ysize = 50;
    this.xpos = 50;
    this.ypos = ypos;
    this.speed = 2; 
    dir = -2.5;
  }
  
  void update(){
    dir += 0.1;
    speed += 0.98;
    
    if(speed*dir<=3){
      ypos += speed*dir;
    }else{
      ypos += 2*dir;
    }
    
  }
  
  void display(){
    rect(xpos,ypos,xsize,ysize);
  }
  
}