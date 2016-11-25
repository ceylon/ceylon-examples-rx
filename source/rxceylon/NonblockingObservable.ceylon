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
            => observable(nonblocking<Integer[2]>((subscriber) {
        for (i in 0 : 50) {
            if (subscriber.unsubscribed) {
                return;
            }
            subscriber.onNext([i, i^3]);
        }
        if (!subscriber.unsubscribed) {
            subscriber.onCompleted();
        }
    }));

    createNonblockingObservable()
        .skip(10).take(5)
        .map(([i, i3]) => "The cube of ``i`` is ``i3``")
        .subscribe(print);

}


"Execute the given [[run]] function that sends items to a
 [[Subscriber]] on a new thread."
void nonblocking<T>
    (void run(Subscriber<in T> subscriber))
    (Subscriber<in T> subscriber)
        => Thread(() => run(subscriber)).start();