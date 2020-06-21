import 'package:firebase_auth/firebase_auth.dart';
import 'user.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  String verificationId;
  String phone;

  User _currentuser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }

  Stream<User> get user{
    return _auth.onAuthStateChanged.map((FirebaseUser user) => _currentuser(user));
  }

  Future signInAnon() async{
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _currentuser(user);
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

  Future signOut() async{
   try{
     return await _auth.signOut();
   }catch(e) {
     print(e.toString());
     return null;
   }
  }

  Future<void> verifyPhone(phone) async{


    final PhoneVerificationCompleted verified = (AuthCredential authResults){
      AuthService().signIn(authResults);
    };

    final PhoneVerificationFailed verificationfailed = (AuthException authException) {print('${authException.message}');};

    final PhoneCodeSent smssent = (String verId, [int forceRecend]){
      this.verificationId = verId;
    };

    final PhoneCodeAutoRetrievalTimeout autoTimeout = (String verId){
      this.verificationId = verId;
    };

    await _auth.verifyPhoneNumber(phoneNumber: phone,
        timeout: Duration(seconds: 2),
        verificationCompleted: verified,
        verificationFailed: verificationfailed,
        codeSent: smssent,
        codeAutoRetrievalTimeout: autoTimeout
    );
  }

  Future signIn(AuthCredential authCread){
    _auth.signInWithCredential(authCread);
  }
}