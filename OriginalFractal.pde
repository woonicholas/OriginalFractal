int min = 400;
public void setup() 
{
	size(400,400);
	rectMode(CENTER);
	frameRate(2);
}

void draw() 
{
	myFractal(200,200,min);
}
void mousePressed()
{
	min+=20;
	if(min>800)
		min =400;
}
public void myFractal(int x, int y, int mySize)
{
	//if(mySize<=50)
		strokeWeight(10);
		stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		rect(x,y,mySize,mySize);
	if(mySize>50)
	{
		myFractal(x-mySize/4,y,mySize/2);
		myFractal(x+mySize/4,y,mySize/2);
		myFractal(x,y+mySize/4,mySize/2);
		myFractal(x,y-mySize/4,mySize/2);
	}
}