package group4618.pozdnyakov.exercise14;

import java.util.ArrayList;

public class PetRegistry {
    private ArrayList<Animals> listAnimals = new ArrayList<>();
    private ArrayList<Pets> listPets = new ArrayList<>();
    private ArrayList<PackAnimals> listPackAnimals = new ArrayList<>();
    private ArrayList<Dogs> listDogs = new ArrayList<>();
    private ArrayList<Cats> listCats = new ArrayList<>();
    private ArrayList<Hamsters> listHamsters = new ArrayList<>();
    private ArrayList<Horses> listHorses = new ArrayList<>();
    private ArrayList<Camels> listCamels = new ArrayList<>();
    private ArrayList<Donkeys> listDonkeys = new ArrayList<>();

    public void addAnimal(Animals animal) {
        listAnimals.add(animal);
    }

    public void addPet(Pets animal) {
        listPets.add(animal);
    }

    public void addPackAnimal(PackAnimals animal) {
        listPackAnimals.add(animal);
    }

    public void addDog(Dogs animal) {
        listDogs.add(animal);
    }

    public void addCat(Cats animal) {
        listCats.add(animal);
    }

    public void addHamster(Hamsters animal) {
        listHamsters.add(animal);
    }

    public void addHorse(Horses animal) {
        listHorses.add(animal);
    }

    public void addCamel(Camels animal) {
        listCamels.add(animal);
    }

    public void addDonkey(Donkeys animal) {
        listDonkeys.add(animal);
    }

    public ArrayList<Animals> getListAnimals() {
        return listAnimals;
    }

    public ArrayList<Pets> getListPets() {
        return listPets;
    }

    public ArrayList<PackAnimals> getListPackAnimals() {
        return listPackAnimals;
    }

    public ArrayList<Dogs> getListDogs() {
        return listDogs;
    }

    public ArrayList<Cats> getListCats() {
        return listCats;
    }

    public ArrayList<Hamsters> getListHamsters() {
        return listHamsters;
    }

    public ArrayList<Horses> getListHorses() {
        return listHorses;
    }

    public ArrayList<Camels> getListCamels() {
        return listCamels;
    }

    public ArrayList<Donkeys> getListDonkeys() {
        return listDonkeys;
    }
}
