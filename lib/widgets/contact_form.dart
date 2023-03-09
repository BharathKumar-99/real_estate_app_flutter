import 'package:real_estate_app/controller/home_controller.dart';

import '../util/config.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                runSpacing: 16,
                children: [
                  Center(
                    child: Text(
                      'Real Estate Enquiry Form',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextField(
                                  controller: controller.name,
                                  decoration:
                                      const InputDecoration(hintText: 'Name'),
                                )
                              ]),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Phone no.',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextField(
                                  controller: controller.phone,
                                  decoration: const InputDecoration(
                                      hintText: 'Phone. no'),
                                )
                              ]),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Enquiry Type',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextField(
                                  controller: controller.enquiryType,
                                  decoration: const InputDecoration(
                                      hintText: 'Enquiry Type'),
                                )
                              ]),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextField(
                                  controller: controller.email,
                                  decoration:
                                      const InputDecoration(hintText: 'Email'),
                                )
                              ]),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Message',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        TextField(
                          controller: controller.messages,
                          decoration:
                              const InputDecoration(hintText: 'Message'),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            controller.contactUs();
                          },
                          child: const Text('SEND MESSAGE')),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
