import rx {
    Observable
}


shared void runBlockingObservable() {

    function createBlockingObservable()
            => Observable.create<String>((subscriber) {
        for (i in 0:50) {
            if (!subscriber.unsubscribed) {
                subscriber.onNext("value_``i``");
            }
        }
        if (!subscriber.unsubscribed) {
            subscriber.onCompleted();
        }
    });


    createBlockingObservable()
        .skip(10).take(5)
        .map((str) => str + "_xform")
        .subscribe(print);

}