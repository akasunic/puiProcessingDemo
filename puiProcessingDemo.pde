// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 16-1: Display video

// Step 1. Import the video library
import processing.video.*;

// Step 2. Declare a Capture object
Capture video;

boolean pause = false;

void setup() {
  size(320,240);
  
  // Step 3. Initialize Capture object via Constructor
  // video is 320 x 240, @15 fps
  video = new Capture(this,320,240,15);
  video.start();
}

void draw() {
  
  // Check to see if a new frame is available
  if (video.available()) {
    // If so, Step 4. Read the image from the camera.
    video.read();
  }
  
 // Step 5. Display the video image.
 image(video,0,0);
 //Change tint when you scroll over image
 //tint(mouseX, mouseY, 255); 
 //Display a resized video when you scroll over image
 image(video, 0, 0, mouseX, mouseY);
}


void mousePressed() {
  saveFrame("test.png");
}

