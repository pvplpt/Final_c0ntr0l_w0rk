package group4618.pozdnyakov.exercise14;

import java.util.ArrayList;
import java.util.Date;

public class Dogs extends Pets {

    public Dogs(String name, Date birthday, ArrayList<String> commands) {
        super(name, birthday, commands);
    }

    @Override
    public String toString() {
        return "Dogs [name=" + getName() + ", birthday=" + getBirthday() + ", commands=" + getCommands() + "]";
    }

}
