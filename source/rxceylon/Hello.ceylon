import io.reactivex {
    Flowable
}

shared void run() {
    Flowable.fromArray("Frodo", "Sam", "Merry", "Pippin")
        .map((name) => "Hello ``name``!")
        .subscribe(print);
}
