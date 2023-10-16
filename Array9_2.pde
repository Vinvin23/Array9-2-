float [] a, b, c, vx, vy;
void setup() {
  size(1000, 800);
  a = new float[8];
  b = new float[8];
  c = new float[8];
  vx = new float[8];
  vy = new float[8];
  for (int i=0; i<8; i++) {
    a[i] = random(width);
    b[i] = random(height);
    c[i] = random(5, 10);
    vx[i] = random(3, 5);
    vy[i] = random(3, 5);
  }
}// setup()
void draw() {
  background(0, 255, 255);
  for (int i=0; i<8; i++) {
    if (i != 3 && i != 7) {
      a[i] += vx[i];
      b[i] += vy[i];
      if (a[i]<0 || a[i]>width) vx[i] = -vx[i];
      if (b[i]<0 || b[i]>height) vy[i] = -vy[i];
    } else if (i == 3) {
      a[i] = mouseX;
      b[i] = mouseY;
    }
    if (i<5) spider(a[i], b[i], c[i]);
    else doraemon(a[i], b[i], c[i]);
  } // for
} // draw()
void keyPressed() {
 if(key == 'a') a[7] -= 10;
 else if(key == 'd') a[7] += 10;
 else if(key == 'w') b[7] -= 10;
 else if(key == 's') b[7] += 10;
 }
 void doraemon(float x, float y, float d)
{
  //BG

  // Doraemon's body
  fill(23, 118, 187);
  noStroke();
  ellipse(x, y, 20*d, 20*d);
 
  // Doraemon's face
  fill(255);
  ellipse(x, y, 16*d, 16*d);
 
  // Doraemon's eyes
  fill(0);
  ellipse(x -2*d, y -2*d, 4*d, 4*d);
  ellipse(x +2*d, y -2*d, 4*d, 4*d);
 
  // Doraemon's nose
  fill(236, 135, 192);
  ellipse(x, y +1.5*d, 2*d, 2*d);

  // Doraemon's bell
  fill(255, 255, 0);
  noStroke();
  ellipse(x, y +9*d, 6*d, 6*d);
  fill(0);
  ellipse(x, y +9*d, 4*d, 4*d);
  fill(255, 255, 0);
  ellipse(x, y +9*d, 2*d, 2*d);

}
void spider(float x, float y, float d)

{

// Draw Spiderman's head

fill(255, 0, 0); // Set the fill color to red

ellipse(x, y, 10*d, 10*d); // Draw a red circle for the head

// Draw Spiderman's eyes

fill(255); // Set the fill color to white

ellipse(x - 2*d, y - d, 2*d, 2*d); // Draw the left eye

ellipse(x + 2*d, y - d, 2*d, 2*d); // Draw the right eye

// Draw Spiderman's web

stroke(0); // Set the stroke color to black

strokeWeight(2); // Set the stroke weight to 2 pixels

line(x - 5*d, y, x + 5*d, y); // Draw the horizontal line of the web

line(x, y - 5*d, x, y + 5*d); // Draw the vertical line of the web

// Draw Spiderman's body

fill(0, 0, 255); // Set the fill color to blue

rect(x - 5*d, y + 5*d, 10*d, 10*d, d); // Draw a blue rectangle for the body

}
