package org.example;
import javafx.application.*;
import javafx.scene.*;
import javafx.stage.*;
import javafx.scene.control.*;
public class App extends Application{
    String[] morning = {"Drink Coffee", "Get Dressed", "Eat Breakfast", "Take Morning Pills"};
    public static void main(String[] args) {
        launch(args);
    }
    @Override
    public void start(Stage primStage){
        Group root = new Group();
        int stx = 20;
        int sty = 20;
        int xsec = 0;
        for (int i=0; i < morning.length; i++){
            if (xsec == 10) {
                stx += 100;
                sty = 20;
                xsec = 0;
            }
            CheckBox text = new CheckBox(morning[i]);
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
