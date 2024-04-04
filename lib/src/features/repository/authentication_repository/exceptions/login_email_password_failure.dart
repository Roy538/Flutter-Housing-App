// class LogInWithEmailAndPasswordFailure {
//   final String message;

//   const LogInWithEmailAndPasswordFailure(
//       [this.message = "An Unknown error occured."]);

//   factory LogInWithEmailAndPasswordFailure.code(String code) {
//     switch (code) {
//       case 'weak-password':
//         return LogInWithEmailAndPasswordFailure(
//             'Please enter a strong password');
//       case 'invalid-email':
//         return LogInWithEmailAndPasswordFailure(
//             'Email is not valid or badly formatted');
//       case 'email-already-in-use':
//         return LogInWithEmailAndPasswordFailure(
//             'An Account already exists for that email');
//       case 'operation-not-allowed':
//         return LogInWithEmailAndPasswordFailure(
//             'Operation is not allowed, please Contact support');
//       case 'user-disabled':
//         return LogInWithEmailAndPasswordFailure(
//             'This user has been disabled. Please contact support for help.');
//       default:
//         return const LogInWithEmailAndPasswordFailure();
//     }
//   }
// }
