class TestClass {
  final int input;

  TestClass(this.input);
}

class TestClass2 {
  final int input;

  TestClass2(this.input);
}

class TestClass3 extends TestClass {
  TestClass3(int input) : super(input);
}
