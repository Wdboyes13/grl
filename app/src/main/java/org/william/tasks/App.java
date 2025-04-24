package org.william.tasks;

import javafx.application.*;
import javafx.stage.*;
public class App extends Application{
    
    public static void main(String[] args) {
        launch(args);
    }
    @Override
    public void start(Stage primStage){
        Menu.showMain(primStage);
    }
    
}
