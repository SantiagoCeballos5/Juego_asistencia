class Escenario{
 private PVector posicion;
 private PImage imagen;
 
 public Escenario(){
  imagen = loadImage("fondo.PNG");
 }
 
 public void dibujar(){
   image(imagen,posicion.x,posicion.y,800,793);
 }
}
