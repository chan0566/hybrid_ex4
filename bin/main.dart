import 'package:hybrid_ex4/lucky.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Error, please provide a name');
    return;
  }

  for (var name in arguments) {
    String capitalizedName = name[0].toUpperCase() + name.substring(1);
    var luckyInstance = Lucky();
    print("$capitalizedName's lucky number is ${luckyInstance.luckyNumber}");
  }
}
