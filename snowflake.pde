particle current;
ArrayList<particle> snowflake;

void setup(){
  //size(600, 600);
  fullScreen();
  current = new particle(width/2,random(10));
  snowflake = new ArrayList<particle>();
}

void draw(){
  translate(width/2, height/2);
  rotate(PI/6);
  background(0);
  current.update();
  
  while(!current.finished() && !current.intersects(snowflake)){
    current.update();
  }
    snowflake.add(current);
    current = new particle(width/2,0);
  
  for (int i = 0; i < 6 ; i++)
  {
    rotate(PI/3);
    current.show();
    for (particle p : snowflake){
     p.show(); 
    }
    
    pushMatrix();
    scale(1,-1);
    current.show();
    for (particle p : snowflake){
     p.show(); 
    }
    popMatrix();
  }
}
