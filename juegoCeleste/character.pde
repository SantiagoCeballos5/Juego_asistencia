class character{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  public character(){
    imagen = loadImage("madeline.png");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,80,80);
  }
  
  public void mover(int direccion){
    if(direccion==0){
      this.posicion.x-=this.velocidad.x;
    }
    if(direccion==1){
      this.posicion.x+=this.velocidad.x;
    }
    if(direccion==2){
    this.posicion.y-=this.velocidad.y;
    }
    
    if(direccion==3){
      this.posicion.y+=this.velocidad.y;
    }
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public PVector getVelocidad(){
    return this.velocidad;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad = velocidad;
  }
}
  
  
  
  
  
  
  
