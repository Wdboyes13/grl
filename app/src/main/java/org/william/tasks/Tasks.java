package org.william.tasks;

import java.util.HashMap;
import java.util.Map;
import javafx.stage.*;
public class Tasks {
    public static Map<String, Runnable> taskMap = new HashMap<>();
    
    static String[] morning = {"Drink Coffee", "Take pills with coffee", "Get dressed", "Eat Breakfast", "Pack Bag (Go to list)", "Computer"};
    static String[] bag = {"Headphones", "Charger", "Macbook", "Pen", "Keys", "Wallet", "Pills", "Watch", "Day stuff (See List)"};
    static String[] day1 = {"Saxophone", "Woodshop Shoes", "Band Music"};
    static String[] day2 = {"Book/Kobo", "PE Shoes"};
    public static void putIndex(Stage primStage){
        taskMap.put("morning", () -> ShowTasks.showTasks(primStage, morning, "morning"));
        taskMap.put("bag", () -> ShowTasks.showTasks(primStage, bag, "bag"));
        taskMap.put("day1", () -> ShowTasks.showTasks(primStage, day1, "day1"));
        taskMap.put("day2", () -> ShowTasks.showTasks(primStage, day2, "day2"));
    }
}
