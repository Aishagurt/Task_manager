package kz.bitlab.db;

import java.util.ArrayList;

public class DBManager {

    private static ArrayList<Task> tasks = new ArrayList<>();
    private static Long id = 1L;
    public static ArrayList<Task> getAllTasks() {
        return tasks;
    }

    public static void addTask(Task task) {
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static Task getTask(int id) {
        return tasks
                .stream()
                .filter(task -> task.getId() == id)
                .findFirst()
                .orElse(null);
    }

    public static void updateTask(Task task) {
        for (int i = 0; i < tasks.size(); i++) {
            if (tasks.get(i).getId() == task.getId()) {
                tasks.set(i, task);
                break;
            }
        }
    }

    public static void deleteTask(int id) {
        for (int i = 0; i < tasks.size(); i++) {
            if(tasks.get(i).getId()==id){
                tasks.remove(i);
                break;
            }
        }
    }
}
