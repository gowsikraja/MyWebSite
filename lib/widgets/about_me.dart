import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:my_website/resource.dart';
import 'package:my_website/utils/app_extentions.dart';
import 'package:my_website/widgets/components.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _aboutMeTrackLine(context),
              _aboutMeTitle(context),
            ],
          ),
          _aboutMeBody(context),
          Components.trackingLine(ImagePath.projectLineStart)
        ],
      ),
    );
  }

  Widget _aboutMeTrackLine(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          height: context.height / 15,
          ImagePath.aboutIcon,
          fit: BoxFit.contain,
        ),
        Components.trackingLine(ImagePath.aboutLineStart),
      ],
    );
  }

  Widget _aboutMeTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.aboutMe, fontSize: 28),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: context.width / 2,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Lorem ipsum dolor sit amet. consectetur '
                        'adipiscing elit. Praesent imperdiet '
                        'ante tortor,',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Theme.of(context).colorScheme.aboutMe),
                  ),
                  TextSpan(
                    text: 'sit amet mollis erat placerat suscipit. Nulla '
                        'lobortis et libero sit amet congue. ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          // _aboutMeBody(context)
        ],
      ),
    );
  }

  Widget _aboutMeBody(BuildContext context) {
    return Container(
      width: context.width / 1.2,
      // height: context.height,
      margin: const EdgeInsets.only(top: 100,left: 50),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.aboutMeBodyBackground,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.aboutMeBodyStroke,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                      "Praesent imperdiet ante tortor, sit amet mollis erat "
                      "placeratsuscipit. Nulla lobortis et libero sit amet congue."
                      "Donec "
                      "quis odio at augue imperdiet posuere. Sed ullamcorper "
                      "hendrerit auctor. In laoreet arcu maximus fringilla ornare."
                      " Sed quam leo, maximus a sodales scelerisque, "
                      "lacinia vitae tortor. Aenean tincidunt porttitor "
                      "pulvinar. Aliquam fermentum consequat orci,sed euismod "
                      "diam posuere ut. Vestibulum ante massa, rutrum eu "
                      "enim consequat, tincidunt tincidunt eros.",
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                ImagePath.aboutDesign,
                width: context.width / 5,
              )
            ],
          ),
          Positioned(
            top: context.height / 4,
            left: context.width / 3,
            child: Container(
              width: context.width / 2.3,
              padding: const EdgeInsets.all(50),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.aboutMeBodyBackground,
                  borderRadius: BorderRadius.circular(10),
                  border: const Border(
                    top: BorderSide(color: Color(0xff6E7681)),
                    left: BorderSide(color: Color(0xff6E7681)),
                  )
                  ),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                "Praesent imperdiet ante tortor, sit amet mollis erat "
                "placeratsuscipit. Nulla lobortis et libero sit amet congue."
                "Donec "
                "quis odio at augue imperdiet posuere. Sed ullamcorper "
                "hendrerit auctor. In laoreet arcu maximus fringilla ornare."
                " Sed quam leo, maximus a sodales scelerisque, "
                "lacinia vitae tortor. Aenean tincidunt porttitor "
                "pulvinar. Aliquam fermentum consequat orci,sed euismod "
                "diam posuere ut. Vestibulum ante massa, rutrum eu "
                "enim consequat, tincidunt tincidunt eros.",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.start,
              ),
            ),
          )
        ],
      ),
    );
  }
}
