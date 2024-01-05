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

        System.out.println(petRegistry);

        assignClassAnimal(animal);

        System.out.println(petRegistry);

        printListCommandsAnimal(animal);

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

    private static void assignClassAnimal(Animals animal) {

        System.out.println("\n1. Собаки");
        System.out.println("2. Кошки");
        System.out.println("3. Хомяки");
        System.out.println("4. Лошади");
        System.out.println("5. Верблюды");
        System.out.println("6. Ослы");
        int num = MyUtilities.inputNaturelNumber("Введите номер класса: ");

        switch (num) {
            case 1:
                Pets petAnimalDog = new Pets(animal.getName(), animal.getBirthday(), animal.getCommands());
                petRegistry.addPet(petAnimalDog);
                Dogs dogAnimal = new Dogs(animal.getName(), animal.getBirthday(), animal.getCommands());
                petRegistry.addDog(dogAnimal);
                break;
            case 2:
                Pets petAnimalCat = new Pets(animal.getName(), animal.getBirthday(), animal.getCommands());
                petRegistry.addPet(petAnimalCat);
                Cats catAnimal = new Cats(animal.getName(), animal.getBirthday(), animal.getCommands());
                petRegistry.addCat(catAnimal);
                break;
            case 3:
                Pets petAnimalHamster = new Pets(animal.getName(), animal.getBirthday(), animal.getCommands());
                petRegistry.addPet(petAnimalHamster);
                Hamsters hamsterAnimal = new Hamsters(animal.getName(), animal.getBirthday(), animal.getCommands());
                petRegistry.addHamster(hamsterAnimal);
                break;
            case 4:
                PackAnimals packAnimalHorse = new PackAnimals(animal.getName(), animal.getBirthday(),
                        animal.getCommands());
                petRegistry.addPackAnimal(packAnimalHorse);
                Horses horseAnimal = new Horses(animal.getName(), animal.getBirthday(), animal.getCommands());
                petRegistry.addHorse(horseAnimal);
                break;
            case 5:
                PackAnimals packAnimalCamel = new PackAnimals(animal.getName(), animal.getBirthday(),
                        animal.getCommands());
                petRegistry.addPackAnimal(packAnimalCamel);
                Camels camelAnimal = new Camels(animal.getName(), animal.getBirthday(), animal.getCommands());
                petRegistry.addCamel(camelAnimal);
                break;
            case 6:
                PackAnimals packAnimalDonkey = new PackAnimals(animal.getName(), animal.getBirthday(),
                        animal.getCommands());
                petRegistry.addPackAnimal(packAnimalDonkey);
                Donkeys donkeyAnimal = new Donkeys(animal.getName(), animal.getBirthday(), animal.getCommands());
                petRegistry.addDonkey(donkeyAnimal);
                break;
            default:
                System.out.println("\nКласс животного не определили.");
                break;
        }
    }

    private static void printListCommandsAnimal(Animals animal) {
        System.out.println("\nCписок команд, которое выполняет " + animal.getName());
        System.out.println(animal.getCommands());
        System.out.println();
    }
}
