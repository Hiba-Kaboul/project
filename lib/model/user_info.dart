class UserInfo {
    final String email;
    final String password;

    UserInfo({
        required this.email,
        required this.password,
    });


    toMap() {return{
        "email": email,
        "password": password,
      } ; }
}
