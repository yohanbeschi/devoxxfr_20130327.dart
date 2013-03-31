import '../../lib/devoxxfr_2013.dart';

void main() {
  final Tree tree1 = new Tree.noFeature((Item item) => item.value, (Item item) => item.children)
  ..data = items
  ..addTo('body', 'afterBegin');
}

