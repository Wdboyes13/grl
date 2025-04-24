package org.william.tasks;

import javafx.application.*;
import javafx.scene.*;
import javafx.stage.*;
import javafx.scene.control.*;
import javafx.scene.control.Button;
public class App extends Application{
    
    public static void main(String[] args) {
        launch(args);
    }
    @Override
    public void start(Stage primStage){
        Group root = new Group();
        Button morningBtn = new Button("Morning");
        morningBtn.setOnAction(e -> {showTasks(primStage, Tasks.morning);});
        root.getChildren().add(morningBtn);
        Scene scene = new Scene(root, 500, 300);
        primStage.setScene(scene);
        primStage.show();
        System.out.println("Opened menu");
    }
    public void showTasks(Stage primStage, String[] tasks){
        Group root = new Group();
        int stx = 20;
        int sty = 20;
        int xsec = 0;
        for (int i=0; i < tasks.length; i++){
            if (xsec == 10) {
                stx += 100;
                sty = 20;
                xsec = 0;
            }
            CheckBox text = new CheckBox(tasks[i]);
            text.setTranslateX(stx);
            text.setTranslateY(sty);
            sty += 30;
            root.getChildren().add(text);
            xsec += 1;
        }
        Scene scene = new Scene(root, 500, 350);
        primStage.setScene(scene);
        primStage.show();
    }
}
