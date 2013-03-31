part of devoxxfr_2013;

class Item {
  int id;
  String value;
  List<Item> children;
  
  Item(this.id, this.value, [this.children]);
}

class School {
  int id;
  String schoolName;
  
  List<Grade> grades;
  
  School(this.id, this.schoolName, [this.grades]);
}

class Grade {
  int id;
  String schoolGrade;
  
  List<Student> students;
  
  Grade(this.id, this.schoolGrade, [this.students]);
}

class Student {
  int id;
  String firstname;
  String lastname;
  
  Student(this.id, this.firstname, this.lastname);
}

/*
   * - Item 1
   * - Item 2
   * | - Item 2.1
   * | - Item 2.2
   * | | - Item 2.2.1
   * | | - Item 2.2.2
   * - Item 3
   * | - Item 3.1
   * - Item 4
   */
List<Item> get items {
  final Item item1 = new Item(1, 'Item 1');
  final Item item2_2_1 = new Item(8, 'Item 2.2.1'); 
  final Item item2_2_2 = new Item(9, 'Item 2.2.2'); 
  final Item item2_2 = new Item(6, 'Item 2.2', [item2_2_1, item2_2_2]); 
  final Item item2_1 = new Item(5, 'Item 2.1'); 
  final Item item2 = new Item(2, 'Item 2', [item2_1, item2_2]); 
  final Item item3_1 = new Item(7, 'Item 3.1');
  final Item item3 = new Item(3, 'Item 3', [item3_1]);
  final Item item4 = new Item(4, 'Item 4');
  final List<Item> items = [item1, item2, item3, item4];
  
  return items;
}


  /*
   * - School 1
   * - School 2
   * | - Grade 2.1
   * | - Grade 2.2
   * | | - Student 2.2.1
   * | | - Student 2.2.2
   * - School 3
   * | - Grade 3.1
   * - School 4
   */
List<School> get schools { 
  final School school1 = new School(1, 'School 1');
  final Student student2_2_1 = new Student(8, 'Person',  '2.2.1'); 
  final Student student2_2_2 = new Student(9, 'Person',  '2.2.2'); 
  final Grade grade2_2 = new Grade(6, 'Grade 2.2', [student2_2_1, student2_2_2]); 
  final Grade grade2_1 = new Grade(5, 'Grade 2.1'); 
  final School school2 = new School(2, 'School 2', [grade2_1, grade2_2]); 
  final Grade grade3_1 = new Grade(7, 'Grade 3.1');
  final School school3 = new School(3, 'School 3', [grade3_1]);
  final School school4 = new School(4, 'School 4');
  final List<School> schools = [school1, school2, school3, school4];
  
  return schools;
}