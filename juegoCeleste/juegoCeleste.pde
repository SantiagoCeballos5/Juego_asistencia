private character madeline;
private object bloque;
private Escenario escenario;
private int numPiso= 8;
private float anchoPiso;
private float altoPiso;


public void setup(){
  size(800,793);
  madeline = new character();
  madeline.setPosicion(new PVector(width/2,height/2));
  madeline.setVelocidad(new PVector(15,15));
  escenario = new Escenario();
  escenario.posicion = new PVector(width/2, height/2);
  bloque = new object( new PVector(width/2,0), new PVector(0,10));
  anchoPiso = width / numPiso;
  altoPiso = 343;
}

public void draw(){
  escenario.dibujar();
  madeline.dibujar();
  bloque.dibujar();
  bloque.mover();
  bloque.rebotar();
  
  
  for( int i = 0; i < numPiso; i++){
    float x = i * anchoPiso;
    float y = height - altoPiso;
    fill (#10FF00);
    rect(x, y, anchoPiso, altoPiso);
  }
}

public void keyPressed(){
  if(key=='d'){
    madeline.mover(1);
  }
  if(key=='a'){
    madeline.mover(0);
  }
  if(key=='w'){
    madeline.mover(2);
  }
  if(key=='s'){
    madeline.mover(3);
  }
}
  
