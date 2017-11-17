import processing.net.*; 

Client myClient; 
int dataIn; 
int timeOut;
String inString;

String id = "juniper";
int a, b, c;
String _id, _a, _b, _c;

void setup() { 
  size(400, 200); 
  // Connect to the local machine at port 5204.
  // This example will not run if you haven't
  // previously started a server on this port.
  myClient = new Client(this, "127.0.0.1", 5204);
} 

void draw() { 
  background(0); 

  receiveData();
  writeToServer();
  paintDataInCanvas();
  
}

void receiveData() {
  if (myClient.available() > 0) {     

    // -----------------------------------------
    // -------- Receive Data from Server -------
    // -----------------------------------------

    try {
      inString = myClient.readString();
      inString = inString.substring(0, inString.indexOf("#"));  // Only up to the newline
      String[] data = split(inString, '/');
      // Print incomming message from server
      _id = data[0];
      _a = data[1];
      _b = data[2];
      _c = data[3];
    }
    catch(Exception e) {
      println(e);
    }
  }
}

void writeToServer() {
  if (timeOut < 500) {
    timeOut++;
  } else {
    println("sending...");
    // -----------------------------------
    // -------- Send Data to Server ------
    // -----------------------------------
    a = int(random(100));
    b = int(random(100));
    c = int(random(100));
    myClient.write(id + "/" + a + "/" + b + "/" + c + "#");
    timeOut = 0;
  }
}

void paintDataInCanvas() {
  // Print broadcast message in the screen
  text("---> IN FROM @" + _id + " says: " + "a: " + _a + " b: " + _b + " c: " + _c, 20, height/2);
  if (a != 0) {
    text("<--- OUT: " + "a: " + a + " b: " + b + " c: " + c, 20, (height/2)+20);
  }
}