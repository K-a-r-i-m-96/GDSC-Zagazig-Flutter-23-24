/*Movie Ratings
Create a function findAverageRating(ratings) that takes a List of
movie ratings (integers 1-5) and returns the average rating. If the
List is empty, return null*/

double? findAverageRating(List<int> ratings) {
  if (ratings.isEmpty) {
    return null;
  }

  int totalRating = 0;
  for (int rating in ratings) {
    totalRating += rating;
  }

  return totalRating / ratings.length;
}

void main() {
  List<int> movieRatings1 = [2, 4, 4, 3, 5];
  List<int> movieRatings2 = [];

  double? averageRating1 = findAverageRating(movieRatings1);
  double? averageRating2 = findAverageRating(movieRatings2);

  print('Average rating for movieRatings1: $averageRating1');
  print('Average rating for movieRatings2: $averageRating2');
}
