import 'package:real_estate_app/model/properties_list.dart';
import 'package:real_estate_app/screens/home/PropertiesCard/properties_card_widget.dart';
import 'package:real_estate_app/util/config.dart';

import '../../../ShimmerLayout/Home/property_card_layout.dart';
import '../../../constants/constants.dart';

class PropertiesCard extends StatelessWidget {
  final String title;
  final bool isLoading;

  final PropertiesList data;
  final bool isRent;
  const PropertiesCard(this.title, this.isLoading, this.data, this.isRent,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              Constants.seeAll,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        isLoading
            ? const PropertyCardShimmering()
            : SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: data.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      return PropertiesWidget(data.data![index], isRent);
                    }),
              ),
      ],
    );
  }
}
