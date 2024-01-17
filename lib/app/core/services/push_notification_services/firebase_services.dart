import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import '../../../../firebase_options.dart';

class FirebaseServices extends GetxService{


  Future<FirebaseServices> init() async {
    print('xxxxx Firebase Init ');
    await Firebase.initializeApp(
      /**
       * Generated Firebase Option :
       *
       *  # Install the CLI if not already done so
          dart pub global activate flutterfire_cli

          # Run the `configure` command, select a Firebase project and platforms
          flutterfire configure
       */
      options: DefaultFirebaseOptions.currentPlatform,
      
    );
    return this;
  }


}