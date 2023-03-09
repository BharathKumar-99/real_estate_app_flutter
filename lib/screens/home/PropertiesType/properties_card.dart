import 'package:real_estate_app/model/categories_model.dart';

import '../../../util/config.dart';

class PropertiesType extends StatelessWidget {
  final CategoriesModel data;
  const PropertiesType(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.7,
          height: MediaQuery.of(context).size.height / 10,
          child: Card(
            elevation: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width / 4.7,
                    child: Image.asset(
                      'assets/logo.png',
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(data.name!),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'More',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
          width: 25,
        )
      ],
    );
  }
}
