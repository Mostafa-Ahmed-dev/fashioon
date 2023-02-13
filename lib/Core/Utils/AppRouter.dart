import 'package:go_router/go_router.dart';

import '../../Features/Auth/Presentation/views/AuthHomeView.dart';
import '../../Features/Auth/Presentation/views/ForgotpasswordView.dart';
import '../../Features/Auth/Presentation/views/SignInView.dart';
import '../../Features/Auth/Presentation/views/SignUpView.dart';
import '../../Features/Auth/Presentation/views/VerfiyView.dart';
import '../../Features/Favorite/Presentation/Views/FavoriteView.dart';
import '../../Features/Home/Presentation/Views/DetailsHomeView.dart';
import '../../Features/Home/Presentation/Views/HomeView.dart';
import '../../Features/OnBoarding/Presentaion/Views/Explore.dart';
import '../../Features/Payment/presentation/Views/CartView.dart';
import '../../Features/Payment/presentation/Views/ShippingView.dart';
import '../../Features/Profile/presentation/Views/ProfileView.dart';
import '../../Features/Splash/Presentation/Views/SplashView.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static const String kExploreView = '/ExploreView';
  static const String kAuthHomeView = '/AuthHomeView';
  static const String kSignUpView = '/SignUPView';
  static const String kVerifyView = '/VerifyView';
  static const String kSignInView = '/SignInView';
  static const String kForgotPasswordView = '/ForgotPasswordViw';
  static const String kHomeView = '/HomeView';
  static const String kFavoriteView = '/FavoriteView';
  static const String kProfileView = '/ProfileView';
  static const String kDetailsView = '/DetailsView';
  static const String kCartView = '/CartView';
  static const String kShippingView = '/ShippingView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kExploreView,
        builder: (context, state) => const ExploreView(),
      ),
      GoRoute(
        path: kAuthHomeView,
        builder: (context, state) => const AuthHomeView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kVerifyView,
        builder: (context, state) => const VerfiyView(),
      ),
      GoRoute(
        path: kSignInView,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: kForgotPasswordView,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kFavoriteView,
        builder: (context, state) => const FavoriteView(),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => const DetailsHomeView(),
      ),
      GoRoute(
        path: kCartView,
        builder: (context, state) => const CartView(),
      ),
      GoRoute(
        path: kShippingView,
        builder: (context, state) => const ShippingView(),
      ),
    ],
  );
}
