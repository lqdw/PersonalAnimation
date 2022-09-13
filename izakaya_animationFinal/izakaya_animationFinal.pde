/*
Linda Wang
Block 1-4A
Personal Animation Project

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int upperCloud;
int lowerCloud;
float angle;
int counter;
int timer;
PFont harukaze;//font
PFont normal;//a basic font

Minim minimTools;
AudioPlayer music;

void setup(){
 size(746,507);
 upperCloud=820; 
 lowerCloud=-250; 
 angle=0;
 counter=0;
 size(746,507);
 harukaze=createFont("Harukaze.ttf",50);
 normal=createFont("normal.otf",4);
 
 minimTools=new Minim(this);
 music=minimTools.loadFile("music.mp3");
 music.play();
}

void draw(){
  background(3,27,42);//sky color
    counter=counter+1;
    if(counter<10){//stars blinking in yellow 
      fill(250,189,6);//star color
      ellipse(200,100,5,5);//star
      ellipse(150,150,5,5);
      ellipse(400,320,5,5);
      ellipse(520,80,5,5);
      ellipse(50,100,5,5);
      ellipse(80,280,5,5);
      ellipse(215,110,5,5);
      ellipse(20,40,5,5);
      ellipse(600,20,5,5);
      ellipse(720,180,5,5);
    }
    if(counter>10){//stars blinking in white
      fill(255);//star color
      ellipse(200,100,5,5);//star
      ellipse(200,100,3,3);
      ellipse(150,150,2,2);
      ellipse(400,320,3,3);
      ellipse(520,80,3,3);
      ellipse(50,100,3,3);
      ellipse(80,280,3,3);
      ellipse(215,110,3,3);
      ellipse(20,40,3,3);
      ellipse(600,20,3,3); 
      ellipse(720,180,3,3);    
    }
    if (counter==50){
    counter=0;
    }

  fill(99,71,144);//lower cloud color
  stroke(99,71,144);  
  ellipse(lowerCloud,124,60,60);//lower cloud
  ellipse(lowerCloud+36,152,45,45);
  ellipse(lowerCloud+29,130,20,20);
  ellipse(lowerCloud+4,167,45,45);
  ellipse(lowerCloud-20,140,25,25);
  ellipse(lowerCloud-36,160,60,60);
  ellipse(lowerCloud-6,140,25,25);
  ellipse(lowerCloud+50,189,60,60);
  ellipse(lowerCloud+35,208,70,70);
  ellipse(lowerCloud-17,203,70,70);    
  ellipse(lowerCloud+86,209,50,50);
  ellipse(lowerCloud+114,206,18,18);
  ellipse(lowerCloud+127,221,40,40);
  ellipse(lowerCloud-65,196,50,50);
  ellipse(lowerCloud-60,170,25,25);
  ellipse(lowerCloud-40,140,50,50);
  ellipse(lowerCloud-70,200,60,60);
  ellipse(lowerCloud-90,190,40,40);
  ellipse(lowerCloud-95,210,50,50);
  ellipse(lowerCloud-125,220,40,40);
  
  lowerCloud=lowerCloud+2;//move lower cloud
  if (lowerCloud>=900){
    lowerCloud=-140;
  }  
  
  fill(254,221,145);//moon color
  stroke(254,221,145);  
  moon(350,450);//move moon
  ellipse(74,381,62,62);
  angle=angle+0.008;
  
  fill(173,70,173);//upper cloud color
  stroke(173,70,173);
  ellipse(upperCloud,50,50,50);//upper cloud
  ellipse(upperCloud-30,60,40,40);
  ellipse(upperCloud+40,55,35,35);
  ellipse(upperCloud+25,45,15,15);
  ellipse(upperCloud-50,65,30,30);
  ellipse(upperCloud+27,65,30,30);
  ellipse(upperCloud+60,60,25,25);
  ellipse(upperCloud+70,62,18,18);
  
  upperCloud=upperCloud+1;//move upper cloud
  if (upperCloud>=820){
    upperCloud=-250;
  }
  
  fill(77,25,22);//koinobori(fish)'s string & stick color 
  stroke(77,25,22);
  rect(365,61,3,109);//stick of koinobori
  line(355,72,365,72);//string of koinobori
  fill(211,75,84);//koinobori color
  stroke(211,75,84); 
  if(counter<15){ //move koinobori
  quad(342,60,344,74,357,78,356,66);//koinobori head
  quad(313,67,342,60,344,74,318,81);//koinobori body
  triangle(295,81,303,75,305,83);//koinobori upper tail(triangle)
  triangle(304,75,304,86,298,90);//koinobori lower tail(triangle)
  quad(303,75,313,67,318,81,304,86);//koinobori tail  
  fill(255);//koinobori eye color
  stroke(255);
  ellipse(351,69,5,5);//koinobori eye
  fill(0);//koinobori pupil color
  stroke(0);  
  ellipse(351,69,2,2);//koinobori pupil
  } 
  
  if(counter>15){ //move koinobori
    quad(356,66,344,72,346,82,357,78);//koinobori head
    quad(318,72,344,72,346,82,319,83);//koinobori body
    triangle(310,70,320,72,320,78);//koinobori upper tail(triangle)
    triangle(310,82,329,83,320,78);//koinobori lower tail(triangle)
    fill(255);//koinobori eye color
    stroke(255);
    ellipse(351,73,5,5);//koinobori eye
    fill(0);//koinobori pupil color
    stroke(0);  
    ellipse(351,73,2,2);//koinobori pupil
  } 
  if (counter==30){
    counter=0;
  }
  
  fill(222,196,190);//ground color
  stroke(222,196,190);
  rect(0,456,746,61);//ground
   
  fill(202,170,168);//fench color
  stroke(202,170,168);
  rect(0,350,746,112);//fence
  fill(142,85,79);
  stroke(142,85,79);  
  rect(0,347,746,3);//top layer of fence
  line(20,350,20,462);//wood on fence
  line(40,350,40,462);
  line(60,350,60,462);
  line(80,350,80,462);
  line(100,350,100,462);
  line(120,350,120,462);
  line(140,350,140,462);
  line(160,350,160,462);
  line(180,350,180,462);
  line(200,350,200,462);
  line(730,350,730,462);
  line(710,350,710,462);
  
  fill(108,68,52);//building 1st floor color
  stroke(108,68,52);
  rect(322,295,372,150);//building 1st floor

  fill(72,36,21);//door color
  stroke(72,36,21);
  rect(351,295,98,150);//door
  fill(53,25,14);//wood on the door color
  stroke(53,25,14);
  line(360,295,360,450);//wood on the door
  line(365,295,365,450);
  line(380,295,380,450);
  line(395,295,395,450);
  line(410,295,410,450);
  line(425,295,425,450);
  line(440,295,440,450);
  rect(357,315,86,8);//top wood on door
  rect(357,374,86,8);//bottom wood on door
  rect(351,295,6,150);//left wood of door
  rect(443,295,6,150);//right wood of door
  fill(23,17,13);//shadow color
  stroke(23,17,13);
  rect(357,322,86,3);//shadow under top wood on door  
  rect(357,382,86,3);//shadow under bottom wood on door  
  
  fill(170,35,34);//vending machine color
  stroke(170,35,34);
  rect(205,300,117,173,15,15,3,3);//vending machine
  fill(211,228,242,200);//vending machine display window color
  stroke(211,228,242);
  rect(212,305,103,67,12,12,3,3);//vending machine display window

  fill(255);//bottle cap color
  stroke(255);  
  rect(219,312,5,5);//bottle caps of bottles on the top row
  rect(231,312,5,5);  
  rect(243,314,5,5);  
  rect(255,314,5,5);  
  rect(267,314,5,5);  
  rect(279,313,5,5);  
  rect(291,313,5,5);  
  rect(303,313,5,5); 
  rect(291,349,5,5);//bottle caps of bottles on the bottom row  
  rect(303,349,5,5);  
  fill(4,71,135);//blue bottle cap color
  stroke(4,71,135);
  rect(219,348,5,5);  
  rect(231,348,5,5);  
  rect(243,348,5,5);  
  fill(139,68,87);//pink bottle cap color
  stroke(139,68,87);
  rect(255,349,5,5); 
  rect(267,349,5,5);  
  rect(279,349,5,5); 
  
  fill(93,48,57);//bottles color(coke bottle color)
  stroke(93,48,57);  
  rect(216,316,10,25,20);//1st row bottles(coke bottle)
  rect(228,316,10,25,20);
  fill(161,99,143);//purple bottle color
  stroke(161,99,143);
  rect(240,318,10,25,20);//purple bottle
  rect(252,318,10,25,20);
  rect(264,318,10,25,20);
  fill(229,115,71);//orange bottle color
  stroke(229,115,71);
  rect(276,316,10,25,20);//orange bottle
  rect(288,316,10,25,20);
  rect(300,316,10,25,20);  
 
  fill(111,156,198);//bottles color(blue bottle color)
  stroke(111,156,198);
  rect(228,352,10,20,20,20,0,0);//2nd row bottles(blue bottle)
  rect(216,352,10,20,20,20,0,0);   
  rect(240,352,10,20,20,20,0,0);
  fill(248,171,213);//pink bottle color
  stroke(248,171,213);
  rect(252,352,10,20,20,20,0,0);//pink bottle   
  rect(264,352,10,20,20,20,0,0);      
  rect(276,352,10,20,20,20,0,0);   
  fill(134,135,72);//green bottle color
  stroke(134,135,72);  
  rect(288,352,10,18,20,20,0,0);//green bottle  
  rect(300,352,10,18,20,20,0,0);    
  
  fill(254,54,52);//labels for 1st row bottles(red label color)
  stroke(254,54,52);
  rect(216,321,10,5);//red labels
  rect(228,321,10,5);
  fill(223,103,159);//purple label color
  stroke(223,103,159);
  rect(240,324,10,8);//purple labels
  rect(252,324,10,8);
  rect(264,324,10,8);
  fill(220,198,121);//yellow label color
  stroke(220,198,121);
  rect(276,322,10,10);//yellow labels
  rect(288,322,10,10);
  rect(300,322,10,10);  
  fill(6,80,163);//lables for 2nd row bottles(blue label color)
  stroke(6,80,163);
  rect(216,361,10,8);//blue labels
  rect(228,361,10,8);
  rect(240,361,10,8);
  fill(255);//white label color
  stroke(255);
  rect(252,359,10,5);//white labels
  rect(264,359,10,5);  
  rect(276,359,10,5);
  fill(164,182,162);//green label color
  stroke(164,182,162);
  rect(288,357,10,10);//green labels
  rect(300,357,10,10);  
  
  fill(40,53,72);//vending machine:window to take out items color
  stroke(40,53,72);
  rect(219,420,64,21,3);//vending machine:window to take out items
  fill(255);//vending machine:line inside display window color
  stroke(255);  
  rect(212,338,103,5);//vending machine:line inside display window
  fill(118,142,147);//vending machine:line inside window to take out items color
  stroke(118,142,147);  
  rect(219,425,64,6);//vending machine:line inside window to take out items
  
  fill(253,237,211);//building 2nd floor wall color
  stroke(253,237,211);
  rect(338,135,338,55);//2nd floor wall
  fill(116,65,57);//building roof color
  stroke(116,65,57);
  rect(333,111,348,7);//building roof
  fill(143,85,80);//building:wood under roof color
  stroke(143,85,80);
  quad(333,118,681,118,676,135,339,135);//building:wood under roof
  line(584,135,584,210);//building:wood on 2nd floor wall
  line(609,135,609,210);
  line(634,135,634,210);
  line(659,135,659,210);
  fill(116,65,57);//building 2nd floor window frame color
  stroke(116,65,57);  
  rect(363,135,196,55);//building 2nd floor window frame
  fill(190,213,221,200);//building 2nd floor window color
  stroke(190,213,221,200);
  rect(370,142,41,41);//building 2nd floor window 1
  rect(417,142,41,41);//building 2nd floor window 2
  rect(464,142,41,41);//building 2nd floor window 3
  rect(511,142,41,41);//building 2nd floor window 4
  
  fill(70,27,14);//shadow under lantern and menu color
  stroke(70,27,14);
  rect(610,320,38,61,23);//shadow under left lantern
  rect(679,338,15,55,0,0,0,100);//shadow under right lantern
  rect(468,300,19,45);//shadow under menu
  rect(493,300,19,48);
  rect(518,300,19,43);
  rect(543,300,19,44);
  rect(568,300,19,46);
  rect(593,300,19,42);
  rect(618,300,19,47);
  rect(643,300,19,48);
  rect(668,300,10,43);

  stroke(255,0,0);//OPEN sign frame
  rect(452,333,46,65,5);  
  ellipse(475,349,40,19);//OPEN sign cirle frame  
  textAlign(CENTER,CENTER);
  if (counter>10){ //blinking OPEN sign
    fill(255,0,0);
    textFont(normal);   
    textSize(12);//OPEN sign words    
    text("OPEN",475,347);//OPEN sign
    textAlign(CENTER,CENTER);
    fill(255,0,0);
    textSize(3);
    text("MON",460,361);//open timetable
    text("TUE",460,366);
    text("WED",460,371);
    text("THU",460,376);
    text("FRI",460,381);
    text("SAT",460,386);
    text("SUN",460,391);
    text("7:00 TO 10:00",485,361);
    text("7:00 TO 10:00",485,366);
    text("7:00 TO 10:00",485,371);
    text("7:00 TO 10:00",485,376);
    text("7:00 TO 10:00",485,381);
    text("7:00 TO 10:00",485,386);
    text("CLOSED",485,391);
  }

  fill(70,27,14);//shadow color
  stroke(70,27,14);
  rect(322,295,372,9);//shadow on top of door
  fill(239,182,123);//menu color
  stroke(239,182,123);
  rect(458,290,19,45);//menu 1
  rect(483,290,19,48);//menu 2
  rect(508,290,19,43);//menu 3
  rect(533,290,19,44);//menu 4
  rect(558,290,19,46);//menu 5
  rect(583,290,19,42);//menu 6
  rect(608,290,19,47);//menu 7
  rect(633,290,19,48);//menu 8
  rect(658,290,19,43);//menu 9
  rect(683,290,19,44);//menu 10
  
  fill(23,17,13);//shadow color
  stroke(23,17,13);  
  rect(351,290,98,15);//another shadow on top of the door 
  
  fill(99,36,16);//shadow color
  stroke(99,36,16);  
  rect(458,295,244,5);//shadow on top of menu
  
  stroke(70,27,14);//lantern string color
  line(618,290,618,310);//left lantern string  
  line(683,290,683,340);//right lantern string
  
  if(counter<20){ //turn lanterns on and off
    fill(240,199,64);  
    stroke(240,199,64); 
  } 
  if(counter>20){
    fill(98,36,13);  
    stroke(98,36,13);   
  }
  rect(600,305,38,61,23);//left lantern
  rect(665,320,38,61,28);//right lantern
 
  fill(235,144,91);//building:place for logo color
  stroke(235,144,91);
  rect(312,210,392,85);//building:place for logo
  fill(239,161,105);//building:line on top of the place for logo color
  stroke(239,161,105);
  quad(337,187,676,187,703,210,313,210);//line on top of the place for logo
  textAlign(CENTER,CENTER);//logo"HOKKAIDO RAMEN"
  textSize(20);
  fill(0);
  textFont(harukaze);
  text("HOKKAIDO RAMEN",508,249);
  
  fill(116,65,57);//building:bottom stair color
  stroke(116,65,57);
  rect(323,440,373,12);//building:bottom stair
   fill(72,36,20); //building:stair under door color
  stroke(72,36,20); 
  quad(323,452,695,452,704,468,323,468);//building:stair under door

}



void moon(int x,int y){//move the moon
  pushMatrix();
  translate(x,y);
  rotate(angle);
  ellipse(74,381,62,62);
  popMatrix();
}
