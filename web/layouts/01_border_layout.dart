import '../../lib/devoxxfr_2013.dart';

void main() {
  new BorderLayout()
    ..northWest = northWest
    ..north = north
    ..northEast = northEast
    ..west = west
    ..southWest = southWest
    ..south = south
    ..southEast = southEast
    ..east = east
    ..middle = middle
    ..addTo('body', 'afterBegin');
}
