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
    ..handleNWN = true
    ..handleNNE = true
    ..handleWSW = true
    ..handleSSE = true
    ..extendWSW = true
    ..extendSSE = true
    ..addTo('body', 'afterBegin');
}

