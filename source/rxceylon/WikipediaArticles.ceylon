import ceylon.http.client {
    get
}
import ceylon.uri {
    parse
}

import rx {
    Observable {
        observable=create
    }
}

shared void runWikipediaArticles() {

    function fetchWikipediaArticleAsynchronously
        (String* wikipediaArticleNames)
            => observable(nonblocking<String>((subscriber) {
        try {
            for (articleName in wikipediaArticleNames) {
                if (subscriber.unsubscribed) {
                    return;
                }
                value uri = parse("https://en.wikipedia.org/wiki/``articleName``");
                value text = get(uri).execute().contents;
                subscriber.onNext(text);
            }
            if (!subscriber.unsubscribed) {
                subscriber.onCompleted();
            }
        }
        catch (e) {
            if (!subscriber.unsubscribed) {
                subscriber.onError(e);
            }
        }
    }));

    fetchWikipediaArticleAsynchronously("Tiger", "Elephant")
        .map((art)
                => "--- Article ---
                    ``art[...200]``
                    ---------------")
        .subscribe(print, (e) => e.printStackTrace());
}
