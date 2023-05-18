class User {
  final String userId;
  final String email;
  final String fullName;
  final String pinTransaction;
  final String imageProfile;
  final String dateOfBirth;
  final int balance;

  User({
    this.userId = '',
    this.email = '',
    this.fullName = '',
    this.pinTransaction = '',
    this.imageProfile = '',
    this.dateOfBirth = '',
    this.balance = 0,
  });
}

List<User?> userList = [
  User(
      userId: "0",
      email: "",
      fullName: "",
      pinTransaction: "",
      imageProfile: "",
      dateOfBirth: "",
      balance: 0)
];
