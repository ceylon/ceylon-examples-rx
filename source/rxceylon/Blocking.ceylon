import io.reactivex {
    Flowable
}
import io.reactivex.schedulers {
    Schedulers {
        computation
    }
}

shared void runBlocking() {

    Flowable.range(0, 50)
        .map((i) => i.longValue())
        .map((i) => [i, i^3])
        .observeOn(computation())
        .skip(10).take(5)
        .map(([i, i3]) => "The cube of ``i`` is ``i3``")
        .blockingSubscribe(print, printStackTrace);

}