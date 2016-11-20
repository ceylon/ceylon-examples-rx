# RxJava with Ceylon

This project contains simple examples of the use of [RxJava] 
with Ceylon.

[RxJava]: https://github.com/ReactiveX/RxJava

## Requirements

This project requires JDK 8 and [Ceylon] 1.3.1 or Ceylon IDE 
1.3.1 for IntelliJ or Eclipse.

_Note_: 1.3.1 or above is a hard requirement, since earlier
versions of Ceylon did not support Java lambda expressions.

[Ceylon]: https://ceylon-lang.org/download

## Compiling the examples

To compile the examples, either import this project into 
Ceylon IDE, or, in this directory, type:

    ceylon compile

## Running the examples

To run the Hello World example, in this directory, type:

    ceylon run rxceylon

To run one of the other examples, specify the name of
the function using `--run`:

    ceylon run --run=rxceylon::runWikipediaArticles rxceylon


