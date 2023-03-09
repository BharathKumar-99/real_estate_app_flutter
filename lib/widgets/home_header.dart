import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import '../util/config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 4,
          width: double.infinity,
          child: Image.asset(
            'assets/homeHeader.png',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 12,
          child: Column(
            children: [
              Text(
                'Search property for sale & rent',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Find your perfect place',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Positioned(
          bottom: -25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    border: Border.all(color: Colors.grey),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  children: [
                    Icon(
                      EvaIcons.search,
                      color: Colors.blueGrey.shade300,
                    ),
                    Text(
                      'Search',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius:
                        const BorderRadius.all(Radius.circular(10.0))),
                child: IconButton(
                  color: Theme.of(context).colorScheme.background,
                  icon: const Icon(EvaIcons.funnel),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
