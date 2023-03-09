import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/controller/home_controller.dart';
import 'package:real_estate_app/screens/home/PropertiesCard/properties_card.dart';

import '../../util/config.dart';
import '../../widgets/contact_form.dart';
import '../../widgets/home_header.dart';
import 'PropertiesType/properties_wisget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('height:${MediaQuery.of(context).size.height}');
    debugPrint('width:${MediaQuery.of(context).size.width}');
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<HomeController>(
            init: HomeController(),
            builder: (controller) {
              return Wrap(
                runSpacing: 30,
                children: [
                  const HomeHeader(),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Wrap(
                      runSpacing: 25,
                      children: [
                        const PropertiesTypeWidget(),
                        Visibility(
                          child: PropertiesCard(
                              Constants.featureProperties,
                              controller.isLoading.value,
                              controller.featuredList,
                              true),
                        ),
                        Visibility(
                          child: PropertiesCard(
                              Constants.rentProperties,
                              controller.isLoading.value,
                              controller.rentProperties,
                              true),
                        ),
                        Visibility(
                          child: PropertiesCard(
                              Constants.saleProperties,
                              controller.isLoading.value,
                              controller.saleProperties,
                              false),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.8,
                    child: Container(
                        padding: const EdgeInsets.all(10.0),
                        color: Theme.of(context).colorScheme.primary,
                        child: const ContactForm()),
                  )
                ],
              );
            }),
      ),
    );
  }
}
