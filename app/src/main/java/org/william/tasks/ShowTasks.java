package org.william.tasks;

import javafx.scene.*;
import javafx.stage.*;
import javafx.scene.control.*;
import javafx.scene.control.Button;
import java.util.*;

public class ShowTasks {
    private static final Map<String, List<CheckBox>> checkboxCache = new HashMap<>();
    public static void showTasks(Stage primStage, String[] tasks, String taskListName){
        
        Button back = new Button("<- Back");
        back.setOnAction(e -> Menu.showMain(primStage));
        Group root = new Group();
        root.getChildren().add(back);

        List<CheckBox> checkBoxes;

        if (checkboxCache.containsKey(taskListName)){
            checkBoxes = checkboxCache.get(taskListName);
        } else {
            checkBoxes = new ArrayList<>();
            for (String task : tasks) {
                checkBoxes.add(new CheckBox(task));
            }
            checkboxCache.put(taskListName, checkBoxes);
        }

        int stx = 20;
        int sty = 40;
        int xsec = 0;
        for (CheckBox checkbox : checkBoxes){
            if (xsec == 10) {
                stx += 100;
                sty = 20;
                xsec = 0;
            }
            checkbox.setTranslateX(stx);
            checkbox.setTranslateY(sty);
            sty += 30;
            root.getChildren().add(checkbox);
            xsec += 1;
        }
        Scene scene = new Scene(root, 200, 300);
        primStage.setScene(scene);
        primStage.show();
    }
}
