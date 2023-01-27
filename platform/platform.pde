import fisica.*;
import fisica.FWorld;
//Emily Xu
//1-1
//new project

import fisica.*;
FWorld world;

color white = #FFFFFF;
color black = 000000;
color red = #ffadad;
color yellow = #fdffb6;
color green = #caffbf;
color cyan = #00FFFF;
color middleGreen = #00FF00;
color leftGreen = #009F00;
color rightGreen = #006F00;
color centerGreen = #004F00;
color treeTrunkBrown = #FF9500;



int c;
PImage map, ice, stone, treeTrunk;
int gridSize = 32;
float zoom = 1.5;
boolean upkey, downkey, leftkey, rightkey, wkey, akey, skey, dkey, ekey, qkey, spacekey;
//FPlayer player;





void setup () {
  size(600, 600);
  Fisica.init(this);
 loadWorld(map);
 //loadPlayer();
}


//void loadPlayer(){
//  player = new FPlayer();
//  world.add(player);
 
//}


void draw() {
background(white);
 drawWorld();
  //player.act();
}


void drawWorld(){
  pushMatrix();
  //translate(-player.getX()*zoom+width/2, -player.getY()*zoom+height/2);
  scale(zoom);
   //world.step();
  world.draw();
  popMatrix();
  
  
  
}


void loadWorld(PImage map){
 world = new FWorld(-2000, -2000, 2000, 2000);

  world.setGravity(0, 900);
  map = loadImage("pixilart-drawing.png");
  stone = loadImage("MicrosoftTeams-image (3).png");


  for (int y = 0; y < map.height; y++) {
    for (int x = 0; x < map.width; x++) {
      color c = map.get(x, y);
      if (c == black) {
        FBox b = new FBox( gridSize, gridSize);
        b.setPosition(x*gridSize, y*gridSize);
        b.setStatic(true);
        if(c == black) { //stone block
          b.attachImage(stone);
          b.setFriction(4);
          b.setName("stone");
        world.add(b);
        }
        
        if(c == cyan) { //ice block
          b.attachImage(ice);
          b.setFriction(0);
          b.setName("ice");
        world.add(b);
        }
        
        if(c == treeTrunkBrown) { //ice block
          b.attachImage(treeTrunk);
          b.setSensor(true);
          b.setName("tree trunk");
        world.add(b);
        }
      }
      
      
      
    }
  }
}
