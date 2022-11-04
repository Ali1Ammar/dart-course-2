class Company {
  final String name;
  final List<Emp> emps;
  final List<Project> projects;
  final List<Project> completed;
  double money;
  Company(this.name, this.emps, this.projects, this.money, this.completed);

  addEmp(Emp emp) {
    emps.add(emp);
  }

  addProjects(Project pro) {
    projects.add(pro);
  }

  addEmpToProject(Emp emp, Project pro) {
    pro.addEmp(emp);
  }

  completeProject(Project pro) {
    projects.remove(pro);
    completed.add(pro);
  }

  payTo(Emp emp) {
    money -= emp.salary;
    emp.reciveSalary();
  }
}

class Project {
  final String name;
  int day;
  final List<Emp> worker;

  Project(this.name, this.day, this.worker);

  work() {
    day--;
  }

  addEmp(Emp emp) {
    worker.add(emp);
  }
}

class Emp {
  final String name;
  final Company company;
  final double salary;
  double money;
  final List<Project> workOn;

  Emp(this.name, this.company, this.salary, this.money, this.workOn);

  reciveSalary() {
    money += salary;
  }

  pay(double price) {
    if (price > money) {
      throw "you dont have money";
    }
    money -= price;
  }
}

void main(List<String> args) {
  final company = Company("zain", [], [], 1000, []);
  final emp1 = Emp("Ali", company, 100, 200, []);
  final project = Project("website", 3, []);
  company.addProjects(project);
  company.addEmp(emp1);
  company.addEmpToProject(emp1, project);
  company.payTo(emp1);
  print(company.money);
  print(emp1.money);
  emp1.pay(50);
  print(emp1.money);
}
