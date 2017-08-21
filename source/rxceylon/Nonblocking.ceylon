import io.reactivex {
    Flowable
}
import io.reactivex.schedulers {
    Schedulers {
        ...
    }
}

import java.lang {
    Thread
}

shared void runNonblocking() {

    Flowable.range(0, 50)
        .map((i) => i.longValue())
        .map((i) => [i, i^3])
        .subscribeOn(io())
        .observeOn(single())
        .skip(10).take(5)
        .map(([i, i3]) => "The cube of ``i`` is ``i3``")
        .subscribe(print, printStackTrace);

    Thread.sleep(3k);

}
