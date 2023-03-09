import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/controller/wishlist_controller.dart';
import 'package:real_estate_app/util/config.dart';

import '../../../model/properties_list.dart';

class PropertiesWidget extends StatelessWidget {
  final Data data;
  final bool rent;

  const PropertiesWidget(
    this.data,
    this.rent, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WishlistController>(
        init: WishlistController(),
        builder: (controller) {
          return SizedBox(
            width: MediaQuery.of(context).size.width / 1.6,
            height: MediaQuery.of(context).size.height / 2.4,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Image.network(
                          data.imageUrl != 'null'
                              ? data.imageUrl ?? Constants.logo
                              : Constants.logo,
                          errorBuilder: (context, error, stackTrace) =>
                              Image.asset('assets/logo.png'),
                        ),
                        IconButton(
                          onPressed: () {
                            controller.addWishlist(data);
                          },
                          icon: controller.wishlist!.contains(data)
                              ? const Icon(
                                  EvaIcons.heart,
                                )
                              : const Icon(
                                  EvaIcons.heartOutline,
                                ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          rent ? 'For Rent' : 'For sale',
                          maxLines: 1,
                        ),
                        Text(
                          data.price ?? '0',
                          maxLines: 1,
                        ),
                      ],
                    ),
                    Text(
                      data.name!,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Icon(EvaIcons.pin,
                            color: Theme.of(context).colorScheme.surfaceTint),
                        Expanded(
                          child: Text(
                            data.location ?? ' ',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  EvaIcons.phone,
                                  size: 15,
                                ),
                                Text(
                                  'Call',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.white),
                                ),
                              ],
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                    width: 15,
                                    height: 15,
                                    child: Image.asset(
                                      'assets/whatsApp.png',
                                      color: Colors.white,
                                    )),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'WhatsApp',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.white),
                                ),
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
