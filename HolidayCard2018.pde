
Snowflake[] g_rgSnow;
PImage g_drR;
Snowpile g_snowpile;

void setup() {
  
  g_rgSnow = new Snowflake[80];
  g_snowpile = new Snowpile();
  for (int i = 0; i < g_rgSnow.length; i++)
    g_rgSnow[i] = new Snowflake();
  size(800,800);
  frameRate(60);
  g_drR = loadImage("https://raw.githubusercontent.com/GertonsonC/holidayCard/gh-pages/snowman/drR.png", "png");
}

void draw() {

  background(0);
  int alpha = (int) random(25,45);
  
  // Draw Dr. R snowman
  fill(255);
  noStroke();
  ellipse(150, 750, 100, 100);
  ellipse(150, 665, 70, 70);
  image(g_drR, 130, 590, 40, 40);
  strokeWeight(3);
  stroke(142, 87, 4);
  line(180, 665, 230, 640);
  line(120, 665, 70, 640);
  fill(100);
  stroke(100);
  line(110, 590, 190, 590);
  noStroke();
  ellipse(150, 645, 5, 5);
  ellipse(150, 665, 5, 5);
  ellipse(150, 685, 5, 5);
  rect(130, 540, 40, 50);
  fill(255,0,0);
  rect(130, 570, 40, 10);
  
  // Draw snow
  for (Snowflake s : g_rgSnow) {
    s.move();
    s.show();
    
  }
  
  g_snowpile.drawSnowpile();
  
  // Draw moon
  
  noStroke();
  alpha++;
  if (alpha > 45) {
    alpha = (int) random(25,45);
  }
  fill(254, 252, 215, alpha);
  ellipse(750,50,75,75);
  fill(254, 252, 215);
  ellipse(750,50,50,50);
  fill(204,202,165);
  ellipse(740,40,10,10);
  ellipse(765,55,10,10);
  ellipse(745,65,10,10);
  
  fill(255,0,0);
  PFont p = createFont("Futura",20);
  textFont(p);
  text("Merry Christmas!",400-50,400);
}
