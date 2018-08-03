class Obstical{
  float xpos,ypos,xsize,ysize;
  Obstical(float ypos){
    this.xpos = width+50;
    this.ypos = ypos;
    this.xsize = 25;
    this.ysize = height-ypos;
  }
  
  void update(){
    xpos-=5;
  }
  
  void display(){
    rect(xpos,ypos,xsize,ysize);
    rect(xpos,0,xsize,height-ysize-250);
  }
  
  float getxpos(){
    return xpos;
  }
  
  float getypos(){
    return ypos;
  }
  
  float getxsize(){
    return xsize;
  }
  
  float getysize(){
    return ysize;
  }
}