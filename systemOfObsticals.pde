class SystemOfObstical{
  SystemOfObstical(){ 
  }
  ArrayList<Obstical> listOfObs = new ArrayList<Obstical>();
  int i = 250;
  
  void update(){
    if(i>=50){
      listOfObs.add(new Obstical(random(250,height)));
      i=0;
    }
    if(listOfObs.get(0).getxpos() <= -50){
      listOfObs.remove(0);
    }
    i++;
  }
  
  void display(){
    for(int i=listOfObs.size()-1; i>=0; i--){
      listOfObs.get(i).update();
      listOfObs.get(i).display();

    }
  }  
  void collision(float xpos, float ypos, float xsize, float ysize){
    for(int i=listOfObs.size()-1; i>=0; i--){
      println(height-listOfObs.get(i).getypos()-250);
      println(ypos);
      println(listOfObs.get(i).getypos());
        
      println();
      if(xpos<listOfObs.get(i).getxpos()+listOfObs.get(i).getxsize()&xpos+xsize>listOfObs.get(i).getxpos()){
        text("asdf",width/2,height/2);
        if(ypos<height-listOfObs.get(i).getypos()-250){
          println("top");
          stop();
          exit();
        }else if(ypos+ysize>listOfObs.get(i).getypos()){
          println("btoom");
          exit();
        }
      }
    }
  }
}