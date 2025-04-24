package org.william.tasks;

import javafx.application.*;
import javafx.stage.*;
public class App extends Application{
    
    public static void main(String[] args) {
        System.out.println("Launching");
        launch(args);
    }
    @Override
    public void start(Stage primStage){
        System.out.println("Opening menu");
        Platform.runLater(() -> Menu.showMain(primStage));
        new Thread(() -> {
            // Simulate some background task that doesn't block UI
            try {
                Thread.sleep(2000);  // Simulate a delay or processing
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }).start();
        System.out.println("Opened menu");
    }
    
}
