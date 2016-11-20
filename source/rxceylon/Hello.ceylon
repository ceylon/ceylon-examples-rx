import java.util {
    Arrays {
        asList
    }
}

import rx {
    Observable
}

shared void run() {
    Observable.from(asList("Frodo", "Sam", "Merry", "Pippin"))
        .map((name) => "Hello ``name``!")
        .subscribe(print);
}
