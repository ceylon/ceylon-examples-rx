# RxJava with Ceylon

This project contains simple examples of the use of [RxJava] 
with Ceylon.

[RxJava]: https://github.com/ReactiveX/RxJava

## Requirements

This project requires JDK 8 and [Ceylon] 1.3.1 or Ceylon IDE 
1.3.1 for IntelliJ or Eclipse. On the command line you can use
the provided `ceylonb` command if you don't have Ceylon already
installed.

_Note_: 1.3.1 or above is a hard requirement, since earlier
versions of Ceylon did not support Java lambda expressions.

[Ceylon]: https://ceylon-lang.org/download

## Running the examples

To run the examples, either import this project into 
Ceylon IDE, or, in this directory, type:

    ./ceylonb run

To run one of the other examples besides the default
Hello World, specify the name of the function using `--run`:

    ./ceylonb run --run=rxceylon::runBlockingObservable
    ./ceylonb run --run=rxceylon::runNonblockingObservable
    ./ceylonb run --run=rxceylon::runWikipediaArticles

