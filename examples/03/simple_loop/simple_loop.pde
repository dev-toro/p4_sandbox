
void setup(){

  println("----------- A MANO (10) ----------");
  
  println(1); // n
  println(2); // n+1
  println(3); 
  println(4);
  println(5);
  println(6);
  println(7);
  println(8);
  println(9);
  println(10);
  // Patrón: n.... n+1
  
  println("----------- WHILE (5) -----------");
  
  int n = 1;
  while(n <= 10){
   println(n);
   n++;
  }
  
  println("----------- DO WHILE (5) ------------");
  
  int m = 1;
  do{
   println(m);
   m++;
  }while(m <= 10);
  
  println("---------- FOR (3) -------------");
  
  for(int i = 1; i <= 10; i++){
   println(i);
  }
  
}