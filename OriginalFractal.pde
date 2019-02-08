public void setup()
{
	size(1000,1000);
}
public void draw()
{
	background(200);
	fractal(700, 650, 800);
}
public void mouseDragged()//optional
{

}
public void fractal(int x, int y, int radius) 
{
	ellipse(x, y, radius, radius);
	if (radius <= 0){
		stroke(255);
		fill(0,0,255);
	}
	else
		{ 
		fill(0,0,255);
		fractal(x/3, y, radius/2);	
		fill(0,0,125);
		fractal(x/2, y/2, radius/2);
		fill(255);
		fractal(x-50, y+60, radius/5);
		fill(0,0,200);
		fractal(x+50, y-55, radius/8);
		fill(0,0,150);
		fractal(x+100, y-90, radius/9);
		fill(255);
		fractal(x/35, y+60, radius/10);
		fill(0,0,150);
		fractal(x/6, y-40, radius/12);
		fill(255);
		fractal(x+53, y, radius/15);
	}
}