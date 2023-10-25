import 'dart:io';
// void main(List<String> args) {
//   print('Введите ваше имя:');
//   String name = stdin.readLineSync()!;
//   print("name = $name");

//   // print('Введите ваше имя2:');
//   stdout.write("Введите ваше имя2"); //не переводит на новую строку
//   String name2 = stdin.readLineSync()!;
//   print("name2 = $name2");

//   print('Введите ваш возраст:');
//   // int age = stdin.readByteSync()!;
//   int age = int.parse(stdin.readLineSync()!);
//   print("age = $age");
// }

void main() {
  // zadanie1();
  // zadanie2(234);
  // zadanie3(432);
  // zadanie4(3);
  // zadanie5(4);
  // zadanie6(2, 2, 4);
  // zadanie7i8();
  // zadanie9(100);
  // zadanie10(1);
  // zadanie11(10);
  // zadanie12(483456);
  zadanie13();
}

void zadanie1() {
  List array = ["ponedelnik", "subota", "voskresenye"];
  stdout.write("Первый элемент: ${array.first}    ");
  stdout.write("Последний элемент: ${array.last}");
}

void zadanie2(int a2) {
  int x, y, z;
  print(a2);
  x = a2 ~/ 100;
  y = a2 ~/ 10 % 10;
  z = a2 % 10;
  print("Произведение цифр 3-х значного числа = ${x * y * z}");
}

void zadanie3(int a3) {
  int x, y;
  print(a3);
  x = a3 ~/ 100;
  y = a3 % 10;
  print("Поменяеп вторую цифру 3-х значного числа  на 0 = ${x * 100 + y}");
}

void zadanie4(int dayOfWeek) {
  switch (dayOfWeek) {
    case 1:
      print("Понедельник");
      break;
    case 2:
      print("Вторник");
      break;
    case 3:
      print("Среда");
      break;
    case 4:
      print("Четверг");
      break;
    case 5:
      print("Пятница");
      break;
    case 6:
      print("Суббота");
      break;
    case 7:
      print("Воскресенье");
      break;
    default:
      print("error");
  }
}

void zadanie5(int n) {
  for (int i = 1; i <= n; i++) {
    print("Loading...");
  }
}

void zadanie6(int a, int b, int c) {
  if (a + b == c) {
    print("a+b=c");
  } else {
    print("a*b*c=${a * b * c}");
  }
}

void zadanie7i8() {
  String name0 = "Dastan";
  int age0 = 20;
  String address0 = "Aitmatova - 66";
  String hobby0 = "to play football";

  stdout.write("Введите ваше имя - ");
  String name = stdin.readLineSync()!;
  stdout.write("Введите ваш возраст - ");
  int age = int.parse(stdin.readLineSync()!);
  stdout.write("Введите ваш адрес - ");
  String address = stdin.readLineSync()!;
  stdout.write("Ваше хобби - ");
  String hobby = stdin.readLineSync()!;
  print("----------------Result-----------------");
  print("Вас зовут - $name");
  print("Васш возраст - $age");
  print("Ваш адрес - $address");
  print("Ваше хобби - $hobby");
  print("-------------------------------------");
  if (name0 == name && age0 == age && address0 == address && hobby0 == hobby) {
    print("Давай дружить");
  } else {
    if (name == name0) {
      print("У нас одинаковое имя");
    }
    if (age0 == age) {
      print("Мы ровесники");
    }
    if (address0 == address) {
      print("Мы соседи");
    }
    if (hobby0 == hobby) {
      print("У нас одинаковое хобби");
    }
  }
}

void zadanie9(int do_n) {
  int summa = 0;
  for (int i = 1; i <= do_n; i++) {
    summa += i;
  }
  print("Среднее рифметическое число [1 : $do_n] = ${summa / do_n}");
}

void zadanie10(int n) {
  print("n=$n");
  print(
      "n + nn + nnn = $n + $n$n + $n$n$n = ${n + n * 10 + n + n * 100 + n * 10 + n}");
}

void zadanie11(int age) {
  if (age < 7) {
    print("Вам в садик");
  } else if (age >= 7 && age <= 18) {
    print("Вам в школу");
  } else if (age > 18 && age < 23) {
    print("Вам в универ");
  } else if (age >= 23 && age < 60) {
    print("Вам на работу");
  } else if (age >= 60 && age <= 100) {
    print("Вы пенсионер");
  } else {
    print('Неправильный возраст');
  }
}

void zadanie12(int tsifra) {
  int a;
  int b;
  a = tsifra ~/ 1000;
  b = tsifra % 1000;

  int x, y, z;
  int e, f, g;

  x = a ~/ 100;
  y = a % 100 ~/ 10;
  z = a % 10;

  e = b ~/ 100;
  f = b % 100 ~/ 10;
  g = b % 10;
  (x + y + z) == (e + f + g) ? print("true") : print("false");
}

void zadanie13() {
  int count = 0;
  int summa = 0;
  int chislo;
  do {
    chislo = int.parse(stdin.readLineSync()!);
    count++;
    summa += chislo;
  } while (chislo != 0);
  print("Количество введенных чисел = $count");
  print("Summa = $summa");
  print("Srednee arif.chislo = ${summa / count}");
}
