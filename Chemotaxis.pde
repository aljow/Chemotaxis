Walker [] bob;
boolean click = false;
void setup() {
  size(400,400);
  frameRate(30);
  bob = new Walker[100];
  for(int i = 0; i < bob.length; i++) {
    bob[i] = new Walker();
  }
}

void draw() {
  background(0); 
  for(int i = 0; i <bob.length; i++) {
    bob[i].show();
    bob[i].walk();
  }
}

void mousePressed() {
  for (int i = 0; i < bob.length; i++) {
    bob[i].myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  if (click == false) {
    click = true;
  } else {
    click = false;
  }
}

class Walker {
  int myX, myY, myColor;
  Walker() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void walk() {
    if (click == false) {
      fill(myColor); 
      if (mouseX < myX) {
         myX = myX + (int)(Math.random()*7)-10;
      } 
      if (mouseX > myX) {
        myX = myX + (int)(Math.random()*7)+3;
      }
      if (mouseY < myY) {
        myY = myY + (int)(Math.random()*7)-10;
      }
      if (mouseY > myY) {
        myY = myY + (int)(Math.random()*7)+3;
      }
    } else {
      fill(255,0,0);
      if (myX > 400) {
        myX = 10;
      }
      if (myX < 0) {
        myX = 390;
      }
      if (myY > 400) {
        myY = 10;
      }
      if (myY < 0) {
        myY = 390;
      }
      myX = myX + (int)(Math.random()*11)-5;
      myY = myY + (int)(Math.random()*11)-5;
    }
  }
  void show() {
    ellipse(myX,myY,30,30);
  }
}
