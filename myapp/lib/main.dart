import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/models/auth_provider.dart';
import 'package:myapp/models/book/book_list.dart';
import 'package:myapp/models/cosmetics/cosmetics_list.dart';
import 'package:myapp/models/fashion/fashion_list.dart';
import 'package:myapp/models/firniture/firniture_list.dart';
import 'package:myapp/models/food/food_list.dart';
import 'package:myapp/models/gadgets/gadgets_list.dart';
import 'package:myapp/models/product_list.dart';
import 'package:myapp/models/sports/sport_list.dart';
import 'package:myapp/models/vehicle/vehicle_list.dart';
import 'package:myapp/screens/book.dart';
import 'package:myapp/screens/cosmetics.dart';
import 'package:myapp/screens/fashion.dart';
import 'package:myapp/screens/firniture.dart';
import 'package:myapp/screens/food.dart';
import 'package:myapp/screens/gadgets.dart';
import 'package:myapp/screens/sport.dart';
import 'package:myapp/screens/vehicle.dart';

import 'package:myapp/widgets/auth/signin.dart';
import 'package:myapp/widgets/auth/signup.dart';
import 'package:myapp/widgets/details/allDetails/book.dart';
import 'package:myapp/widgets/details/allDetails/cosmetic.dart';
import 'package:myapp/widgets/details/allDetails/fashion.dart';
import 'package:myapp/widgets/details/allDetails/firniture.dart';
import 'package:myapp/widgets/details/allDetails/food.dart';
import 'package:myapp/widgets/details/allDetails/gadgets.dart';
import 'package:myapp/widgets/details/allDetails/sport.dart';
import 'package:myapp/widgets/details/allDetails/vehicle.dart';
import 'package:myapp/widgets/details/details_main.dart';
import 'package:myapp/widgets/home/home_main_page.dart';
import 'package:myapp/widgets/productCart/cart.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(
        value: AuthProvider(),
      ),
      ChangeNotifierProvider.value(
        value: ProductProvider(),
      ),
      ChangeNotifierProvider.value(value: BookProvider()),
      ChangeNotifierProvider.value(value: CosmeticProvider()),
      ChangeNotifierProvider.value(value: FashionProvider()),
      ChangeNotifierProvider.value(value: FoodProvider()),
      ChangeNotifierProvider.value(value: FirnitureProvider()),
      ChangeNotifierProvider.value(value: GadgetsProvider()),
      ChangeNotifierProvider.value(value: SportProvider()),
      ChangeNotifierProvider.value(value: VehicleProvider())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => AtuhSignUp(),
        '/home': (context) => const HomePage(),
        '/product-details': (context) => const ProductDetailsPage(),
        '/product-details-book': (context) => const BookDetailsPage(),
        '/product-details-cosmetic': (context) => const CosmeticDetailsPage(),
        '/product-details-fashion': (context) => const FashionDetailsPage(),
        '/product-details-firniture': (context) => const FirnitureDetailsPage(),
        '/product-details-food': (context) => const FoodDetailsPage(),
        '/product-details-gadgets': (context) => const GadgetsDetailsPage(),
        '/product-details-sport': (context) => const SportDetailsPage(),
        '/product-details-vehicle': (context) => const VehicleDetailsPage(),
        '/my-cart': (context) => const MyCart(),
        '/sign-in': (context) => const AuthSignIn(),
        '/book': (context) => BookHomePage(),
        '/gadgets': (context) => GadgetsHomePage(),
        '/cosmetics': (context) => CosmeycisHomePage(),
        '/food': (context) => FoodHomePage(),
        '/sports': (context) => SportHomePage(),
        '/vehicle': (context) => VechileHomePage(),
        '/fashion': (context) => FashionHomePage(),
        '/firniture': (context) => FirnitureHomePage()
      },
    );
    // : MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     //home: AtuhSignUp(),
    //     home: AtuhSignUp(),
    //     //initialRoute: provider == true ? '/home' : '/',
    //     routes: {
    //       //   // '/': (context) => AtuhSignUp(),
    //       //   // '/home': (context) => const Show(),
    //       //   '/product-details': (context) => const ProductDetailsPage(),
    //       //   '/my-cart': (context) => const MyCart(),
    //       '/sign-in': (context) => AuthSignIn(),
    //     },
    //   );
  }
}



// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<AuthProvider>(context).isAuth;
//     //print(provider);
//     return Consumer<AuthProvider>(
//       builder: (context, auth, child) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         //home: AtuhSignUp(),
//         home: auth.isAuth ? HomePage() : AtuhSignUp(),
//         //initialRoute: auth.isAuth ? '/home' : '/',
//         routes: {
//           // '/home': (context) => const HomePage(),
//           '/product-details': (context) => const ProductDetailsPage(),
//           '/my-cart': (context) => const MyCart(),
//           '/sign-in': (context) => AuthSignIn(),
//           // '/sign-up': (context) => AtuhSignUp()
//         },
//       ),
//     );
//   }
// }
