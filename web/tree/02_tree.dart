import '../../lib/devoxxfr_2013.dart';

void main() {
  final Tree tree2 = new Tree.noFeature()
  ..addTreeConfig(new TreeConfig(
    (School s) => s.schoolName,
    (School s) => s.grades))
  ..addTreeConfig(new TreeConfig(
    (Grade g) => g.schoolGrade,
    (Grade g) => g.students))
  ..addTreeConfig(new TreeConfig(
      (Student s) => '${s.firstname} ${s.lastname}'))
    ..data = schools
    ..addTo('body', 'afterBegin');
}
