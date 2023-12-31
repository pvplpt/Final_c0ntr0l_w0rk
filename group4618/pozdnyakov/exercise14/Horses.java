package group4618.pozdnyakov.exercise14;

import java.util.ArrayList;
import java.util.Date;

public class Horses extends PackAnimals {

    public Horses(String name, Date birthday, ArrayList<String> commands) {
        super(name, birthday, commands);
    }

    @Override
    public String toString() {
        return "Horses [name=" + getName() + ", birthday=" + getBirthday() + ", commands=" + getCommands() + "]";
    }

}
