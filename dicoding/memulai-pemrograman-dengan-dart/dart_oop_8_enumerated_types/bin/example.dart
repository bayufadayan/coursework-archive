enum AccessLevel {
  admin(3),    // Admin memiliki prioritas 3
  moderator(2), // Moderator memiliki prioritas 2
  user(1);      // User memiliki prioritas 1

  final int priority;  // Property untuk menyimpan prioritas

  // Konstruktor untuk menginisialisasi prioritas
  const AccessLevel(this.priority);

  // Override toString untuk menampilkan informasi yang lebih jelas
  @override
  String toString() {
    return 'Access Level: $name, Priority: $priority';
  }
}

void main() {
  var userAccess = AccessLevel.user;
  print(userAccess);            // Output: Access Level: user, Priority: 1
  print(userAccess.priority);   // Output: 1

  var adminAccess = AccessLevel.admin;
  print(adminAccess);           // Output: Access Level: admin, Priority: 3
  print(adminAccess.priority);  // Output: 3
}
