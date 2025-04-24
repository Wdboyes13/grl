package org.william.tasks;

import javafx.scene.*;
import javafx.stage.*;
import javafx.scene.control.*;
import javafx.scene.control.Button;

public class ShowTasks {
    public static void showTasks(Stage primStage, String[] tasks){
        Button back = new Button("<- Back");
        back.setOnAction(e -> Menu.showMain(primStage));
        Group root = new Group();
        root.getChildren().add(back);
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
