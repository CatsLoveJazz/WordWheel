PFont f;
String message = "this text is spinning";
float theta;
float r = 300;

void setup() {
	size(500, 500, P3D);
	f = createFont("Arial",12,true);
	textFont(f);
}

void draw() {
	background(0);
	translate(width/2,height/2);  // Translate to the center

	float x = map(mouseX,0,width,0,2*TWO_PI);
	float y = map(mouseY,0,height,0,2*TWO_PI);
	rotateX(y);
	rotateY(theta);

	// println("x: "+x+"  y: "+y);

	pushMatrix();
	rotateX(PI/2); 

	fill(128,100);
	ellipse(0, 0, r, r);
	popMatrix();

	rotateZ(radians(270));
	pushMatrix();
	fill(255);
	textAlign(LEFT);
	int deg = 10;
	for (int i=0;  i<360; i+=deg) {
		rotateX(radians(deg));
		text(str(i),0,0,r/2);
			}      
	popMatrix();

	theta -= 0.02;                // Increase rotation

}