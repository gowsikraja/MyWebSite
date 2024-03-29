import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  static const screenId = '/PrivacyPolicy';

  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 150),
        child: _content(),
      ),
    );
  }

  Widget _content() => const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                  color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'Effective Date: April-2024\n\nThank you for choosing Sri '
              'Mugundaa. Your privacy is important to us, and we are '
              'committed to protecting your personal information. This '
              'Privacy Policy explains how we collect, use, and safeguard '
              'your data when you use our mobile application (the "App").',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),

            ///PG1
            SizedBox(height: 50),
            Text(
              '1. Information We Collect',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'We collect the following types of information when you use our App:',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'Personal Information:',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'When you register with Sri Mugundaa, you provide us with your'
              ' mobile number, which is used as your unique identifier '
              'for account creation and authentication purposes.',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'Usage Data:',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'We may collect information about how you interact with the App, '
              'such as the features you use, the actions you take, and the '
              'frequency and duration of your usage',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'Device Information:',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'We may collect information about your device, including the '
              'device model, operating system version, unique device '
              'identifiers, and mobile network information.',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),

            ///PG2
            SizedBox(height: 50),
            Text(
              '2. How We Use Your Information',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'We use the information we collect for the following purposes:',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'User Authentication:',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'Your mobile number is used for account registration and '
              'authentication purposes. You may choose to create a password '
              'for your account to enhance security.',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'Improving Our Services:',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'We analyze usage patterns and feedback to understand how users'
              ' interact with the App and to make enhancements '
              'and improvements.',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'Customer Support:',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'We may use your information to respond to your inquiries, '
              'provide technical support, and address any issues you may '
              'encounter while using the App.',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),

            ///PG3
            SizedBox(height: 50),
            Text(
              '3. Data Security',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'We implement appropriate security measures to protect your '
              'personal information from unauthorized access, disclosure, '
              'alteration, or destruction. However, please be aware that no '
              'method of transmission over the internet or electronic '
              'storage is completely secure, and we cannot guarantee '
              'absolute security.',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),

            ///PG4
            SizedBox(height: 50),
            Text(
              '4. Third-Party Services',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'We do not share your personal information with third parties '
              'except as required for the operation of the '
              'App or as permitted by law.',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),

            ///PG5
            SizedBox(height: 50),
            Text(
              '5. Children\'s Privacy',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'Sri Mugundaa is not intended for use by children under the age '
              'of 13. We do not knowingly collect personal information from '
              'children under 13. If you believe that we may have collected '
              'information from a child under 13, please contact us'
              ' immediately at gowsik.andro@gmail.com, and we will take'
              ' appropriate steps to delete such information.',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),

            ///PG5
            SizedBox(height: 50),
            Text(
              '6. Changes to This Privacy Policy',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'We may update this Privacy Policy from time to time to reflect'
              ' changes in our practices or legal requirements. We will'
              ' notify you of any material changes by posting the updated'
              ' Privacy Policy on this page. Please review this Privacy'
              ' Policy periodically for any updates.',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),

            ///PG6
            SizedBox(height: 50),
            Text(
              '7. Contact Us',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'If you have any questions, concerns, or feedback about this '
              'Privacy Policy or our privacy practices, please contact us '
              'at gowsik.andro@gmail.com.',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),

            SizedBox(height: 50),
            Text(
              'By using the App, you agree to the collection and use of your '
              'information in accordance with this Privacy Policy.',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 50),
          ],
        ),
      );
}
