class User {
  var phoneNumber;
  String name;
  DateTime dob;
  String gender;

  User(this.phoneNumber,this.name,this.dob,this.gender);
  
}

User currentUser = new User(null,null,null,null);