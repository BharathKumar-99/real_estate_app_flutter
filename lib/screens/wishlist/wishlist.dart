import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/controller/wishlist_controller.dart';
import 'package:real_estate_app/screens/home/PropertiesCard/properties_card_widget.dart';

import '../../util/config.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.wishlistTitle,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.black),
        ),
      ),
      body: GetBuilder<WishlistController>(
        init: WishlistController(),
        builder: (ctrl) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 350,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1),
              itemCount: ctrl.wishlist != null ? ctrl.wishlist!.length : 0,
              itemBuilder: (context, index) {
                return FittedBox(
                    fit: BoxFit.scaleDown,
                    child: PropertiesWidget(ctrl.wishlist![index], true));
              },
            ),
          );
        },
      ),
    );
  }
}
