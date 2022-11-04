import '2-private.dart';



class Company {
  final String name;
  final List<Emp> emps;
  final List<Project> project;
  final List<Project> completed;

  Company(this.name, this.emps, this.project, this.completed);

  void addProject(Project pro) {
    project.add(pro);
  }

  void addEmp(Emp emp) {
    emps.add(emp);
  }

  void removeEmp(Emp emp) {
    emps.remove(emp);
  }

  void completeProject(Project pro) {
    project.remove(pro);
    completed.add(pro);
  }
}

class Project {
  final String name;
  final int days;
  final double pirce;
  final List<Emp> emps;

  Project(this.name, this.days, this.pirce, this.emps);
  addEmp(Emp emp) {
    emps.add(emp);
  }
}

class Emp {
  final Company company;
  final String name;
  final int age;
  final int salay;
  Project? project;
  double money;

  Emp(this.company, this.name, this.age, this.salay, this.money);

  receiveSalary() {
    money += salay;
  }

  pay(int m) {
    money -= m;
  }
}
