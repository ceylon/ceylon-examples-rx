"Simple examples demonstrating [RxJava] in Ceylon.

 [RxJava]: https://github.com/ReactiveX/RxJava"
native ("jvm")
module rxceylon "1.0.0" {
    import java.base "8";
    import maven:org.reactivestreams:"reactive-streams" "1.0.1";
    import maven:io.reactivex.rxjava2:"rxjava" "2.0.2";
    import ceylon.http.client "1.3.3";
}
