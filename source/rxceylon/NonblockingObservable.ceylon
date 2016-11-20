import java.lang {
    Thread
}

import rx {
    Observable {
        observable=create
    },
    Subscriber
}


shared void runNonblockingObservable() {

    function createNonblockingObservable()
            => observable(nonblocking<String>((subscriber) {
        for (i in 0 : 50) {
            if (subscriber.unsubscribed) {
                return;
            }
            subscriber.onNext("value_``i``");
        }
        if (!subscriber.unsubscribed) {
            subscriber.onCompleted();
        }
    }));

    createNonblockingObservable()
        .skip(10).take(5)
        .map((str) => str + "_xform")
        .subscribe(print);

}


"Execute the given [[run]] function that sends items to a
 [[Subscriber]] on a new thread."
void nonblocking<T>
    (void run(Subscriber<in T> subscriber))
    (Subscriber<in T> subscriber)
        => Thread(() => run(subscriber)).start();