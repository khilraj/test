class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  String toString() {
    // TODO: implement toString
    return "Name : $name, Age: $age, Address : $address";
  }
}

void main() {
  Person person = Person("Rabi", 20, "KTM");
  Person person1 = Person("Abhyas", 20, "KTM");
  Person person2 = Person("Vimal", 20, "KTM");
  Person person3 = Person("Karki", 20, "KTM");

  List<Person> listPerson = [];
  listPerson.add(person);
  listPerson.add(person1);
  listPerson.add(person2);
  listPerson.add(person3);

  // for (var p in listPerson) {
  //   print(p);
  // }

  for (int i = 3; i >= 0; i--) {
    print(listPerson[i]);
  }
}