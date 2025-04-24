package org.william.tasks;
import javafx.scene.*;
import javafx.stage.*;
import javafx.scene.control.Button;

public class Menu {
    public static String text = "";
    public static void showMain(Stage primStage){
        Tasks.putIndex(primStage);
    int btnY = 20;
    int btnX = 20;
    Button[] buttons = {new Button("Morning"), new Button("Pack Bag"), new Button("Day 1"), new Button("Day 2")};
    String[] btnLists = {"morning", "bag", "day1", "day2"};
    Group root = new Group();
        for (int i = 0; i < buttons.length; i++){
            final int index = i;
            buttons[i].setOnAction(e -> {Menu.text = buttons[index].getText(); Tasks.taskMap.get(btnLists[index]).run(); });
            buttons[i].setTranslateX(btnX);
            buttons[i].setTranslateY(btnY);
            root.getChildren().add(buttons[i]);
            btnY += 40;
        }
        Scene scene = new Scene(root, 200, 400);
        primStage.setScene(scene);
        primStage.show();
    }
}
