import ddf.minim.*;
 
Minim minim;
AudioPlayer _do, _re, _mi, _fa, _sol, _la, _si;
 
void setup(){
  size(800, 200);
   
  minim = new Minim(this);
  _do = minim.loadFile("sounds/do.wav");
  _re = minim.loadFile("sounds/re.wav");
  _mi = minim.loadFile("sounds/mi.wav");
  _fa = minim.loadFile("sounds/fa.wav");
  _sol = minim.loadFile("sounds/sol.wav");
  _la = minim.loadFile("sounds/la.wav");
  _si = minim.loadFile("sounds/si.wav");
}

void draw(){
  
  background(0); 

}

void keyPressed()
{ 
  switch( key )
  {
    case 'w': 
      _do.rewind();
      _do.play();
      break;
 
    case 'a':
      _re.rewind();
      _re.play();
      break;
 
    case 's':
      _mi.rewind();
      _mi.play();
      break;
 
    case 'd':
      _fa.rewind();
      _fa.play();
      break;
 
    case 'f':
      _sol.rewind();
      _sol.play();
      break;
    case 'g':
      _la.rewind();
      _la.play();
      break;
    default:
      _si.rewind();
      _si.play();
      break;      
  }
}