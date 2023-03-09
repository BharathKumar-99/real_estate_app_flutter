import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import '../../util/config.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class PropertyCardShimmering extends StatelessWidget {
  const PropertyCardShimmering({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 4,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Shimmer(
                    color: Colors.white,
                    duration: const Duration(milliseconds: 1000),
                    interval: const Duration(milliseconds: 200),
                    colorOpacity: 0.3,
                    enabled: true,
                    direction: const ShimmerDirection.fromLTRB(),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Icon(
                                EvaIcons.heart,
                                color:
                                    Theme.of(context).colorScheme.surfaceTint,
                              ),
                              Image.asset(
                                'assets/logo.png',
                                color:
                                    Theme.of(context).colorScheme.surfaceTint,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 70,
                                width: MediaQuery.of(context).size.width / 7.8,
                                color:
                                    Theme.of(context).colorScheme.surfaceTint,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 70,
                                width: MediaQuery.of(context).size.width / 7.8,
                                color:
                                    Theme.of(context).colorScheme.surfaceTint,
                              ),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 70,
                            width: MediaQuery.of(context).size.width,
                            color: Theme.of(context).colorScheme.surfaceTint,
                          ),
                          Row(
                            children: [
                              Icon(EvaIcons.pin,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surfaceTint),
                              Container(
                                height: MediaQuery.of(context).size.height / 70,
                                width: MediaQuery.of(context).size.width / 3,
                                color:
                                    Theme.of(context).colorScheme.surfaceTint,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 40,
                                width: MediaQuery.of(context).size.width / 7.8,
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceTint,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0))),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 40,
                                width: MediaQuery.of(context).size.width / 7.8,
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceTint,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0))),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                  width: 25,
                )
              ],
            );
          }),
    );
  }
}
