import '../../util/config.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class PropertyShimmering extends StatelessWidget {
  const PropertyShimmering({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 10,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.7,
                  height: MediaQuery.of(context).size.height / 10,
                  child: Shimmer(
                    color: Colors.white,
                    duration: const Duration(milliseconds: 1000),
                    interval: const Duration(milliseconds: 200),
                    colorOpacity: 0.3,
                    enabled: true,
                    direction: const ShimmerDirection.fromLTRB(),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 6.7,
                              child: Image.asset(
                                'assets/logo.png',
                                color:
                                    Theme.of(context).colorScheme.surfaceTint,
                              )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 70,
                                width: MediaQuery.of(context).size.width / 7.8,
                                color:
                                    Theme.of(context).colorScheme.surfaceTint,
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
