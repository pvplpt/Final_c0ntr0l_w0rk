package group4618.pozdnyakov.exercise14;

import java.util.ArrayList;
import java.util.Date;

public class Hamsters extends Pets {

    public Hamsters(String name, Date birthday, ArrayList<String> commands) {
        super(name, birthday, commands);
    }

    @Override
    public String toString() {
        return "Hamsters [name=" + getName() + ", birthday=" + getBirthday() + ", commands=" + getCommands() + "]";
    }

}
