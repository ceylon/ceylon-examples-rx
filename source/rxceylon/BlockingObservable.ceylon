import rx {
    Observable
}


shared void runBlockingObservable() {

    function createBlockingObservable()
            => Observable.create<Integer[2]>((subscriber) {
        for (i in 0:50) {
            if (!subscriber.unsubscribed) {
                subscriber.onNext([i, i^3]);
            }
        }
        if (!subscriber.unsubscribed) {
            subscriber.onCompleted();
        }
    });


    createBlockingObservable()
        .skip(10).take(5)
        .map(([i, i3]) => "The cube of ``i`` is ``i3``")
        .subscribe(print);

}