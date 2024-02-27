/*Student Grades
Create a function analyzeGrades(grades) that takes a List of
student grades (integers 0-100) and returns a Map containing
statistics: number of students, average grade, number of
Valedictorian students ( الدحيحه الطالب (if student’s degree above 85,
and number of Failed students (هللا على اللي الطالب (if student’s degree
below 40. Handle cases where the grades List is empty*/

Map<String, dynamic>? analyzeGrades(List<int> grades) {
  if (grades.isEmpty) {
    return null;
  }

  int totalStudents = grades.length;
  double totalGrades = grades.fold(0, (a, b) => a + b).toDouble();
  double averageGrade = totalGrades / totalStudents;

  int valedictorianCount = grades.where((grade) => grade > 85).length;
  int failedCount = grades.where((grade) => grade < 40).length;

  return {
    'totalStudents': totalStudents,
    'averageGrade': averageGrade,
    'valedictorianCount': valedictorianCount,
    'failedCount': failedCount,
  };
}

void main() {
  List<int> studentGrades = [85, 90, 75, 60, 95, 40, 35, 80];

  Map<String, dynamic>? result = analyzeGrades(studentGrades);

  if (result != null) {
    print('Number of students: ${result['totalStudents']}');
    print('Average grade: ${result['averageGrade']}');
    print('Number of Valedictorian students: ${result['valedictorianCount']}');
    print('Number of Failed students: ${result['failedCount']}');
  } else {
    print('No grades available.');
  }
}
