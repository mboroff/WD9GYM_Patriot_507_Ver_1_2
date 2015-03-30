#ifdef WD9GYMTALKTOARDUINO  


void sendstringtoArduino(char* coDe, String buffer) {
//    if (millis() - startTime > TIMETOSEND) {  // wait 10 seconds before contacting arduino
        startTime = millis() - TIMETOSEND;    // because the Patriot will flood the line getting to start freq
        String stringToSend = coDe;
        stringToSend += ",";
        stringToSend += buffer;
//        stringToSend += ",";
        Serial1.println(stringToSend);
        Serial.println(stringToSend);

        Serial1.flush();
        delay(600);
/*
        boolean ackReceived = false;
        char c;
        unsigned long lastRead = millis();
        while (ackReceived == false && (millis() - lastRead < IDLE_TIMEOUT_MS)) {
               if (Serial.available()) {
                   delay(100); //allows all serial sent to be received together
                   while(Serial.available() ) {
                         c = Serial.read();
                         lastRead = millis();
                         if (c == 'a') {
                             ackReceived = true;
                         }
                   }
  
               }
        }        
 */
  //  }
}

#endif
