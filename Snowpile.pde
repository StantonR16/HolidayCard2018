class Snowpile {

  private float y;
  private float x;
  
  private float l;
  private float w;
  
  private float yDelta;
  
  Snowpile(float x, float y, float l, float w) {
    this.x = x;
    this.y = y;
    this.l = l;
    this.w = w;
    yDelta = 0.01f;
  }
  
  Snowpile() {
    this(0,800,800,0);
  }
  
  float getX() {
    return x;
  }
  
  void setYDelta(float delta) {
    yDelta = delta;
  }
  
  float getYDelta() {
    return yDelta;
  }
  
  float getY() {
    return y;
  }
  
  void setY(float y) {
    this.y = y;
  }
  
  private static final int WIDTH_LIM = 500;
  void drawSnowpile() {
    if (w < WIDTH_LIM) {
      fill(255);
    rect(x,y-=yDelta,l,w+=yDelta);
    //ellipse(x,y-=yDelta,l,w+=yDelta);
    
    println("dw: " + yDelta);
    }
    
    
    
  }
}
