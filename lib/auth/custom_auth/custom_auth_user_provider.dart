import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class ApricityAuthUser {
  ApricityAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<ApricityAuthUser> apricityAuthUserSubject =
    BehaviorSubject.seeded(ApricityAuthUser(loggedIn: false));
Stream<ApricityAuthUser> apricityAuthUserStream() => apricityAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
