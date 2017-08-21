# RxJava with Ceylon

This project contains simple examples of the use of [RxJava][]
with [Ceylon][].

[RxJava]: https://github.com/ReactiveX/RxJava
[Ceylon]: https://ceylon-lang.org

## Requirements

This project requires JDK 8 and [Ceylon][download] 1.3.3 or 
Ceylon IDE 1.3.3 for IntelliJ or Eclipse. On the command line 
you can use the provided `ceylonb` command if you don't have 
Ceylon already installed.

_Note_: Unfortunately Ceylon 1.3.3 is not compatible with 
RxJava 2.1 due to a bug in lambda conversions in 1.3.3.

[download]: https://ceylon-lang.org/download

## Running the examples

To run the examples, either import this project into 
Ceylon IDE, or, in this directory, type:

    ./ceylonb run

To run one of the other examples besides the default
Hello World, specify the name of the function using `--run`:

    ./ceylonb run --run=runBlocking
    ./ceylonb run --run=runNonblocking
    ./ceylonb run --run=runWikipediaArticles

