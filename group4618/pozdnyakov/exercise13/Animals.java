package group4618.pozdnyakov.exercise13;

import java.util.ArrayList;
import java.util.Date;

/**
 * Animals
 */
public class Animals {
    private String name;
    private Date birthday;
    private ArrayList<String> commands;

    public Animals(String name, Date birthday) {
        this.name = name;
        this.birthday = birthday;
        this.commands = null;
    }

    public Animals(String name, Date birthday, ArrayList<String> commands) {
        this.name = name;
        this.birthday = birthday;
        this.commands = commands;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public ArrayList<String> getCommands() {
        return commands;
    }

    public void setCommands(ArrayList<String> commands) {
        this.commands = commands;
    }

    public int getAge() {
        Date curDate = new Date();
        long diffMsec = curDate.getTime() - this.birthday.getTime();
        return (int) (diffMsec / (24 * 60 * 60 * 1000));
    }

    @Override
    public String toString() {
        return "Animals [name=" + name + ", birthday=" + birthday + ", commands=" + commands + "]";
    }
}