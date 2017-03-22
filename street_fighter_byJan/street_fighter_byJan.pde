PImage fons;
PImage RyuGuardia, RyuBloqueo, RyuP, RyuPatada, Ryu;
int TempsKen, TempsRyu;

PImage KenGuardia, KenBloqueo, KenP, KenPatada, Ken;

float KenX, KenY;
float RyuX, RyuY;
float barraAmpleTotalRyu, barraAmpleRyu, vidarestantRyu, vidatotalRyu;
float barraX, barraY;
float barraAmpleTotalKen, barraAmpleKen, vidarestantKen, vidatotalKen;
void setup() {
  TempsKen=0;
  TempsRyu=0;
  size(1000, 600);
  fons=loadImage("fons.jpg");
  RyuP=loadImage("RyuP.png");
  RyuGuardia=loadImage("RyuGuardia.png");
  RyuBloqueo=loadImage("RyuBloqueo.png");
  RyuPatada=loadImage("RyuPatada.png");
  KenBloqueo=loadImage("KenBloqueo.png");
  KenP=loadImage("KenP.png");
  KenPatada=loadImage("KenPatada.png");
  KenGuardia=loadImage("KenGuardia.png");
  KenGuardiaEsquerra=loadImage("KenGuardiaEsquerra.png");
  KenBloqueoEsquerra=loadImage("KenBloqueoEsquerra.png");
  KenPEsquerra=loadImage("KenPEsquerra.png");
  KenPatadaEsquerra=loadImage("KenPatadaEsquerra.png");
  Ken=KenGuardia;
  Ryu=RyuGuardia;
  vidatotalRyu = 450;
  vidarestantRyu = 450;
  vidatotalKen = 450;
  vidarestantKen = 450;
  KenX=870;
  RyuX=90;

  barraAmpleTotalKen=100;
  barraAmpleTotalRyu =90;
  vidatotalKen = 450;
  vidarestantKen = 450;

  barraX=200;
  barraY=40;
}



void draw() {
  TempsKen=TempsKen+1;
  if (TempsKen==15) {
    Ken=KenGuardia;
  }
  TempsRyu=TempsRyu+1;
  if (TempsRyu==15) {
    Ryu=RyuGuardia;
  }




  image(fons, 0, 0, 1000, 600);
  {
    image(Ryu, RyuX, 600-Ryu.height);
    image(Ken, KenX, 340+Ken.height);
    dibuixaBarres ();
  }
}
void keyPressed() {      

  { 
    if (key == 'd') {
      RyuX=RyuX+5;
    }
    if (key == 'a') {
      RyuX=RyuX-5;
    }
    if (key == 's') {
      Ryu=RyuBloqueo;
      TempsRyu=-10;
    }
    if (key=='q') {
      Ryu=RyuP;
      TempsRyu=+13;
    }
    if (key=='e') {
      Ryu=RyuPatada;
      TempsRyu=+10;
    }
    if (RyuX>=950) {
      RyuX=RyuX-5;
    }
    if (RyuX<=1) {
      RyuX=RyuX+5;
    }
    if (KenX>=930) {
      KenX=KenX-5;
    }
    if (KenX<=1) {
      KenX=KenX+5;
    }
    if (key==CODED) {



      if (keyCode==RIGHT) {
        KenX=KenX+5;
      }
      if (keyCode==LEFT) {
        KenX=KenX-5;
      }
      if (keyCode==DOWN) {
        Ken=KenBloqueo;
        TempsKen=-10;
      }
      if (keyCode==CONTROL) {
        Ken=KenPatada;
        TempsKen=-12;
      }
      if (keyCode==SHIFT) {
        Ken=KenP;
        TempsKen=-10;
      }
    }
  }
}