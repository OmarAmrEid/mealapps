class Meal {
  final int? id;
  final String name;
  final String description;
  final String image;
  final double rating;
  final String time;

  Meal({
    this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.rating,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'rating': rating,
      'time': time,
    };
  }

  // Convert a Map object to a Meal object
  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      image: map['image'] ?? '',
      rating: map['rating']?.toDouble() ?? 0.0,
      time: map['time'],
    );
  }
}