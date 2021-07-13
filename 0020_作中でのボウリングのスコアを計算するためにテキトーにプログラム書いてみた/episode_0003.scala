def lazyListOf(data : List[List[Int]]): LazyList[Int] = data match {
  case Nil => LazyList.empty
  case frame::next => frame.filter{_ != 0}.to(LazyList) #::: lazyListOf(next)
}
def makeFrames(scores: LazyList[Int]): LazyList[Int] = scores match {
  case 10 #:: (next@(x#::y#::_)) => (10 + x + y) #:: makeFrames(next)
  case a #:: b #:: (next@(x#::_)) if a + b == 10=> (10 + x) #:: makeFrames(next)
  case a #:: b #:: next => (a + b) #:: makeFrames(next)
}

val datum = List(
  List(10, 0),
  List(10, 0),
  List(10, 0),
  List(10, 0),
  List(10, 0),
  List(10, 0),
  List(10, 0),
  List(10, 0),
  List(10, 0),
  List(10, 10, 10)
)

val frames = makeFrames(lazyListOf(datum))
println(frames.take(10).sum)
