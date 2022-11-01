import '../3/1-parameter.dart';

void main(List<String> args) {
  try {
    // will run this first
    print("run try");
    int x = 1 ~/ 0; // here error
    print("end try"); // will not run as we have error

  } on IntegerDivisionByZeroException catch (e) {
    // will run this if the error is IntegerDivisionByZeroException
    print("there are a IntegerDivisionByZeroException here");
  } on RangeError {
    // will run this if the error is RangeError
    print("there are a RangeError here");
  } catch (e, s) {
    // will run no 'on' statement run
    print(e); // print error
    print(s); // print the location of the error
  } finally {
    // will always run if error or not
  }
}
