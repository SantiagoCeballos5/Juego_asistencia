class object{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  public object(){
    imagen = loadImage("bloque.png");
  }
  
  public object(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen = loadImage("bloque.png");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.y,posicion.x,120,120);
  }
  
  public void mover(){
    if(this.posicion.y<=width){
      this.posicion.y+=this.velocidad.y;
    }else{
      this.posicion.y=0;
    }
  }
  
  public void rebotar(){
    if (posicion.y > width - imagen.width/2 || posicion.y < 0){
      velocidad.y *= -1;
    }
  }
}
