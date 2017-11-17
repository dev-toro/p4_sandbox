
import processing.net.*;

Server myServer;
Client myClient;

int a, b, c;
String _id, _a, _b, _c;

void setup() {
  size(400, 200);
  // Starts a myServer on port 5204
  myServer = new Server(this, 5204); 
  // Initial Values
  a = int(random(100));
  b = int(random(100));
  c = int(random(100));
}

void draw() {
  background(0);

  // -----------------------------------------
  // -------- Broadcast Data to Clients ------
  // -----------------------------------------

  myServer.write("server/"+ a + "/" + b + "/" + c + "#");

  // ----------------------------------------
  // -------- Recive Data from Clients ------
  // ----------------------------------------

  myClient = myServer.available();
  String inString;
  
  if (myClient != null) {
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

  // Print broadcast message in the screen
  text("Broadcasting: " + "a: " + a + " b: " + b + " c: " + c, 20, height/2);
  text("Last Message from @" + _id + "a: " + _a + " b: " + _b + " c: " + _c, 20, (height/2)+20);
}

void keyPressed() {
  // Create a new set of Values
  a = int(random(100));
  b = int(random(100));
  c = int(random(100));
}

// ----------------------------------------------------
// -------- Tells when a new Client is connected ------
// ----------------------------------------------------

void serverEvent(Server someServer, Client someClient) {
  println("We have a new client: " + someClient.ip());
}