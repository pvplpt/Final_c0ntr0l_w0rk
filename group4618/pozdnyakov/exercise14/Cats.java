package group4618.pozdnyakov.exercise14;

import java.util.ArrayList;
import java.util.Date;

public class Cats extends Pets {

    public Cats(String name, Date birthday, ArrayList<String> commands) {
        super(name, birthday, commands);
    }

    @Override
    public String toString() {
        return "Cats [name=" + getName() + ", birthday=" + getBirthday() + ", commands=" + getCommands() + "]";
    }

}
