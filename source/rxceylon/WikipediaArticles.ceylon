import ceylon.http.client {
    get
}
import ceylon.uri {
    parse
}

import io.reactivex {
    Flowable
}
import io.reactivex.schedulers {
    Schedulers
}

import java.lang {
    Thread
}

shared void runWikipediaArticles() {

    function uri(String articleName)
        => "https://en.wikipedia.org/wiki/``articleName``";

    Flowable.fromArray("Tiger", "Elephant", "Hedgehog")
        .map((articleName)
                => get(parse(uri(articleName)))
                    .execute()
                    .contents)
        .subscribeOn(Schedulers.io())
        .observeOn(Schedulers.single())
        .map((art)
                => "--- Article ---
                    ``art.string[...200]``
                    ---------------")
        .subscribe(print, printStackTrace);

    Thread.sleep(5k);
}
