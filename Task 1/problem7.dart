/*Suppose your distance to the office from home is 25 km and
you travel 40 km per hour. Write a program to calculate time
taken to reach the office in minutes.
Formula= (distance) / (speed)*/
import 'dart:io';

void main() {
  print('Distance:');
  num distance = num.parse(stdin.readLineSync()!);
  print('Speed :');
  num speed = num.parse(stdin.readLineSync()!);
  num sum = distance / speed;
  print('Time is $sum');
}
