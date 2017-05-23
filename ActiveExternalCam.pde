import codeanticode.gsvideo.*;
import processing.serial.*;
//...code blocks
void setup(){ //some code block

String[] devices = GSCapture.list() //I own this lib, so if you use Capture lib, shuffle with "no GS, only Capture" 
//println(devices) if you wanna get cam's id.

video = new GSCapture(this, 640, 480, devices[1]); //That's my phone cam Id 
video.start();

//some code block

} // setup

public void draw() {

if (video.available() == true) { video.read(); image(video,640,0); } }
