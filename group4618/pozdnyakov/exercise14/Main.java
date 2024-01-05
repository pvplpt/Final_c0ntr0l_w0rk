package group4618.pozdnyakov.exercise14;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import group4618.pozdnyakov.MyUtilities;

public class Main {
    private static PetRegistry petRegistry = new PetRegistry();

    public static void main(String[] args) {

        Animals animal = newAnimal();
        petRegistry.addAnimal(animal);

        System.out.println(petRegistry.getListAnimals());

    }

    private static Animals newAnimal() {

        String nameAnimal = MyUtilities.inputString("Введите имя животного:");

        int yearBirthday = MyUtilities.inputNaturelNumber("Введите год роджения животного:");
        int monthBirthday = MyUtilities.inputNaturelNumber("Введите месяц роджения животного:");
        int dayBirthday = MyUtilities.inputNaturelNumber("Введите день роджения животного:");
        Calendar tmpCalendar = Calendar.getInstance();
        tmpCalendar.set(yearBirthday, monthBirthday - 1, dayBirthday);
        Date dateBirthday = tmpCalendar.getTime();

        ArrayList<String> commandsAnimal = new ArrayList<>();
        String answer = MyUtilities.inputString("Команды животного будете вводить (y/n)? ");
        while (answer.equals("y")) {
            commandsAnimal.add(MyUtilities.inputString("Введите команду животного:"));
            answer = MyUtilities.inputString("Еще команды животного будете вводить (y/n)? ");
        }

        return new Animals(nameAnimal, dateBirthday, commandsAnimal);
    }
}
