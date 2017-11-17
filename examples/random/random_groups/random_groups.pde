
String[] people = { 
  "ISABELLA BELTRAN", 
  "NATHALIA BERMUDEZ", 
  "ANDRES FELIPe BETANCOURT", 
  "LAURA V. CHILITO", 
  "DANIEL ESGUERRA", 
  "DANIELA GARCIA", 
  "NATHALIA GIRALDO", 
  "ANDREA GOMEZ", 
  "CLAUDIA P. HERNANDEZ", 
  "LUISA N. LENIS", 
  "LISSA J. MARMOLEJO", 
  "JUAN FELIPE MORA", 
  "SEBASTIAN OSSA", 
  "NATHALIA SALAZAR"
};

// Size of each group
int _size = 3;

void setup() {

  ArrayList<Integer> num = new ArrayList<Integer>();
  for (int i = 0; i < people.length; i++) {
    num.add(i);
  }

  ArrayList groups = new ArrayList(); 

  // Even number case
  for (int t = 0; t < int(people.length/_size); t++) {
    String group = "";
    for (int g = 0; g < _size; g++) {
      int index = int(random(0, num.size()));
      group += people[num.get(index)] + " // ";
      num.remove(index);
    }
    groups.add(group);
  }

  // Odd number case
  if (num.size() > 0) {
    String group = "";
    for (int g = 0; g < num.size(); g++) {
      group += people[num.get(g)] + " // ";
    }
    groups.add(group);
  }

  // Print Result
  println("Listado de grupos");
  println("======================");
  for (int g = 0; g < groups.size(); g++) {
    print("Grupo " + g + ": ");
    println(groups.get(g));
    println("--------------------");
  }
}


void draw() {
  
}