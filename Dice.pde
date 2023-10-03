int total=0;
int totalOne=0;
int totalTwo=0;
int totalThree=0;
int totalFour=0;
int totalFive=0;
int totalSix=0;
int highScore=0;
void setup(){
 size(600,600);
 background(0);
  noLoop();
}

void draw(){
  background(0);
  
  for(int y=0; y<500; y+=50){
    for(int x=0; x<600; x+=50){
  Dice bob=new Dice(x,y,50);
  bob.show();
    }
  }  
  fill(255);
  textSize(17);
  text("Your total is "+total,250,550);
  text("Your highscore is "+highScore,250,580);
  textSize(13);
  text("There are "+totalOne+" total ones",100,530);
  text("There are "+totalTwo+" total twos",100,540);
  text("There are "+totalThree+" total threes",100,550);
  text("There are "+totalFour+" total fours",100,560);
  text("There are "+totalFive+" total fives",100,570);
  text("There are "+totalSix+" total sixs",100,580);
}


void mousePressed()
{
  total=0;
totalOne=0;
totalTwo=0;
totalThree=0;
totalFour=0;
 totalFive=0;
totalSix=0;

  redraw();
  
}




class Dice{
  int mySide, myX, myY,myRoll;
  Dice(int x, int y, int side){
    myRoll=(int)(Math.random()*6+1);
    total=total+myRoll;
    if(total>highScore)
highScore=total;
    myX=x;
    myY=y;
    mySide=side;
  }
  void show(){
    if(myRoll==1){
       fill(255);
 rect(myX,myY,mySide,mySide); 
 fill(0);
  ellipse(myX+(mySide*.5),myY+(mySide*.5),(mySide/5),(mySide/5));
  totalOne++;
    }
    if(myRoll==2){
       fill(255,255,0);
  rect(myX,myY,mySide,mySide); 
 fill(0);
  ellipse(myX+(mySide*.3),myY+(mySide*.3),(mySide/5),(mySide/5));
  ellipse(myX+(mySide*.7),myY+(mySide*.7),(mySide/5),(mySide/5));
      totalTwo++;
    }
    if(myRoll==3){
      fill(255,0,0);
  rect(myX,myY,mySide,mySide);  
 fill(0);
   ellipse(myX+(mySide*.2),myY+(mySide*.2),(mySide/5),(mySide/5));
   ellipse(myX+(mySide*.8),myY+(mySide*.8),(mySide/5),(mySide/5));
     ellipse(myX+(mySide*.5),myY+(mySide*.5),(mySide/5),(mySide/5));
     totalThree++;
    }
    if(myRoll==4){
       fill(255,0,255);
  rect(myX,myY,mySide,mySide);  
 fill(0);
   ellipse(myX+(mySide*.2),myY+(mySide*.2),(mySide/5),(mySide/5));
   ellipse(myX+(mySide*.8),myY+(mySide*.8),(mySide/5),(mySide/5));
     ellipse(myX+(mySide*.2),myY+(mySide*.8),(mySide/5),(mySide/5));
      ellipse(myX+(mySide*.8),myY+(mySide*.2),(mySide/5),(mySide/5));
      totalFour++;
    }
    if(myRoll==5){
      fill(0,255,0);
  rect(myX,myY,mySide,mySide);  
 fill(0);
   ellipse(myX+(mySide*.2),myY+(mySide*.2),(mySide/5),(mySide/5));
   ellipse(myX+(mySide*.8),myY+(mySide*.8),(mySide/5),(mySide/5));
     ellipse(myX+(mySide*.2),myY+(mySide*.8),(mySide/5),(mySide/5));
      ellipse(myX+(mySide*.8),myY+(mySide*.2),(mySide/5),(mySide/5));
      ellipse(myX+(mySide*.5),myY+(mySide*.5),(mySide/5),(mySide/5));
      totalFive++;
    }
    if(myRoll==6){
      fill(0,0,255);
  rect(myX,myY,mySide,mySide);  
 fill(0);
   ellipse(myX+(mySide*.25),myY+(mySide*.25),(mySide/5),(mySide/5));
   ellipse(myX+(mySide*.75),myY+(mySide*.75),(mySide/5),(mySide/5));
     ellipse(myX+(mySide*.25),myY+(mySide*.75),(mySide/5),(mySide/5));
      ellipse(myX+(mySide*.75),myY+(mySide*.25),(mySide/5),(mySide/5));
      ellipse(myX+(mySide*.25),myY+(mySide*.5),(mySide/5),(mySide/5));
      ellipse(myX+(mySide*.75),myY+(mySide*.5),(mySide/5),(mySide/5));
      totalSix++;
    }
  }

  
}
