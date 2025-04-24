package org.william.tasks;
import javafx.scene.*;
import javafx.stage.*;
import javafx.scene.control.Button;

public class Menu {
    public static void showMain(Stage primStage){
    Group root = new Group();
        Button morningBtn = new Button("Morning");
        morningBtn.setOnAction(e -> ShowTasks.showTasks(primStage, Tasks.morning));
        root.getChildren().add(morningBtn);
        Scene scene = new Scene(root, 500, 300);
        primStage.setScene(scene);
        primStage.show();
        System.out.println("Opened menu");
    }
}
