import processing.net.*; 

Client myClient; 
int dataIn; 
int timeOut;
String inString;
String clientID = "juniper";

void setup() { 
  size(400, 200); 
  // Connect to the local machine at port 5204.
  // This example will not run if you haven't
  // previously started a server on this port.
  myClient = new Client(this, "127.0.0.1", 5204);
} 

void draw() { 
  background(0); 
  if (myClient.available() > 0) {     

    try {
      inString = myClient.readString();
      inString = inString.substring(0, inString.indexOf("#"));  // Only up to the newline
      String[] data = split(inString, '/');
      // Print incomming message from server
      text("@" + data[0] + " says: " + "a: " + data[1] + " b: " + data[2] + " c: " + data[3], 20, height/2);
    }
    catch(Exception e) {
      println(e);
    }
  }
  
  // Send an update to the server periodically
  writeToServer();
  
}

void writeToServer() {
  if (timeOut < 500) {
    timeOut++;
  }else{
    println("sending...");
    // -------------------------
    // -------- Send Data ------
    // -------------------------
    myClient.write(clientID + "/" + int(random(100)) + "/" + int(random(100)) + "/" + int(random(100)) + "#");
    timeOut = 0;
  }
}