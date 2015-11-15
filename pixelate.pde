import processing.video.*;

Capture video;
int pixel = 5;

void setup() {
  size(320, 240);
  background(0);
  video = new Capture(this, width, height);
  video.start();
}

// New frame available from camera
void captureEvent(Capture video) {
  video.read();
}

void draw() {
  for (int x=0; x<video.width; x++){
    for (int y=0; y<video.height; y++){
      int loc = x + y*video.width;
      loadPixels();
    video.loadPixels();
    float r = red(video.pixels[loc]);
    float g = green(video.pixels[loc]);
    float b = blue(video.pixels[loc]);
    // Draw an ellipse at that location with that color
    fill(r, g, b, 100);
    rect(x, y, pixel, pixel); 
    y+=pixel;
    }
    x+=pixel;
  }
}

void mousePressed() {
  saveFrame("test.png");
}
  
