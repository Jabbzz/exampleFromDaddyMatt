int i;
int k;
int r;
int p;

int R;
int G;
int B;

double yAxis;
int x;

void setup()
{
  size (500,500);
  noStroke();
  
  i = 0;
  k = -50;
  r = 450;
  p = 500;
  
  R = 255;
  G = 0;
  B = 0;
  
}

void draw() 
{
  x = i; //<>//
  yAxis = 300*cos((float) x / 25);
  x+= 3;
  
  frameRate (150);
  background (0);
  fill(R,G,B);
                //R //<>//
  if ( R >= 255)
  {
    if (B >= 0) B--; 
    if (G<=255) G++; //RG
  }
  
  if ( G >= 255)
  {
    if (R>= 0) R--; // G
  }
  
  if ( R <= 0)
  {
    if (B<= 255) B++; //GB
  }
  
  if ( B >= 255)
  {
    if (G>= 0) G--; // B
  }
  
  if (G <= 0)
  {
    if (R<= 255) R++; //BR
  }
  
  if ( R >= 255)
  {
    if (B >= 0) B--; // R
  }
  
  
  
  
  
    
  rect(i++, (int) yAxis, 50, 50);
  
  if (i>=450){
    
    fill ( R, G, B);
    
    rect ( k++, (int) yAxis, 50, 50);
  }
  if (i>=500)
  {
    i=0;
    k=-50;
  }
  
  
  fill (G, B, R);
  rect (r--, (int) yAxis, 50, 50);
  
  if (r<= 0) {
    
    fill (G, B, R);
    rect ( p--, (int) yAxis, 50, 50);
  }
  
  if (r<=-50)
  {
    r=450;
    p= 500;
  }
}
  
