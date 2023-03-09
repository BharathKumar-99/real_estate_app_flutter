import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/controller/home_controller.dart';
import 'package:real_estate_app/screens/home/PropertiesType/properties_card.dart';
import 'package:real_estate_app/util/config.dart';

import '../../../ShimmerLayout/Home/property_layout.dart';

class PropertiesTypeWidget extends StatelessWidget {
  const PropertiesTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Constants.propertiesType,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    Constants.seeAll,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              controller.isLoading.value
                  ? const PropertyShimmering()
                  : SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 10,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: controller.propertiesModel?.length ?? 0,
                          itemBuilder: (context, index) => PropertiesType(
                              controller.propertiesModel![index])),
                    ),
            ],
          );
        });
  }
}
