package group4618.pozdnyakov.exercise14;

public class Counter implements AutoCloseable {

    private int count;
    private boolean opened;

    public Counter() {
        count = 0;
        opened = true;
    }

    @Override
    public void close() {
        opened = false;
        count = 0;
    }

    public void add() {
        if (opened) {
            count++;
        }
    }

    public int getCount() {
        return count;
    }
}
