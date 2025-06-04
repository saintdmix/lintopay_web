import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  // Remove the # from URLs
  setPathUrlStrategy();
  runApp(LintoPayApp());
}

class LintoPayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LintoPay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/privacypolicy': (context) => PrivacyPolicyPage(),
        '/accountdeletion': (context) => AccountDeletionPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LintoPay'),
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue[50]!, Colors.white],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Icon(
                  Icons.account_balance_wallet,
                  size: 80,
                  color: Colors.blue[600],
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome to LintoPay',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Your Virtual Top-Up Service',
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                ),
                SizedBox(height: 40),
                Container(
                  constraints: BoxConstraints(maxWidth: 800),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount:
                        MediaQuery.of(context).size.width > 600 ? 3 : 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1.2,
                    children: [
                      _buildServiceCard(
                        Icons.phone_android,
                        'Airtime',
                        'Buy and sell airtime for all networks',
                        Colors.green,
                      ),
                      _buildServiceCard(
                        Icons.wifi,
                        'Data',
                        'Purchase data bundles at best rates',
                        Colors.blue,
                      ),
                      _buildServiceCard(
                        Icons.security,
                        'Insurance',
                        'Get insurance coverage easily',
                        Colors.orange,
                      ),
                      _buildServiceCard(
                        Icons.tv,
                        'Cable TV',
                        'Subscribe to cable and streaming services',
                        Colors.purple,
                      ),
                      _buildServiceCard(
                        Icons.electrical_services,
                        'Utilities',
                        'Pay electricity and water bills',
                        Colors.red,
                      ),
                      _buildServiceCard(
                        Icons.more_horiz,
                        'More Services',
                        'Explore additional top-up services',
                        Colors.teal,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                Container(
                  constraints: BoxConstraints(maxWidth: 600),
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          Text(
                            'Why Choose LintoPay?',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[800],
                            ),
                          ),
                          SizedBox(height: 20),
                          _buildFeature(Icons.flash_on, 'Instant Processing'),
                          _buildFeature(Icons.security, 'Secure Transactions'),
                          _buildFeature(Icons.support_agent, '24/7 Support'),
                          _buildFeature(Icons.price_check, 'Best Rates'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed:
                          () => Navigator.pushNamed(context, '/privacypolicy'),
                      child: Text('Privacy Policy'),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed:
                          () =>
                              Navigator.pushNamed(context, '/accountdeletion'),
                      child: Text('Delete Account'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  '© 2024 LintoPay. All rights reserved.',
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildServiceCard(
    IconData icon,
    String title,
    String description,
    Color color,
  ) {
    return Card(
      elevation: 3,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [color.withOpacity(0.1), Colors.white],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeature(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.green, size: 20),
          SizedBox(width: 12),
          Text(text, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Container(
          constraints: BoxConstraints(maxWidth: 800),
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'LintoPay Privacy Policy',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Last updated: ${DateTime.now().toString().substring(0, 10)}',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ),
              SizedBox(height: 30),

              _buildSection(
                'Introduction',
                'LintoPay ("we," "our," or "us") is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our virtual top-up service mobile application and related services.',
              ),

              _buildSection(
                'Information We Collect',
                '''We may collect the following types of information:

Personal Information:
• Name and contact information (email address, phone number)
• Account credentials and authentication information
• Payment and billing information
• Transaction history and usage data

Technical Information:
• Device information (device type, operating system, unique device identifiers)
• App usage data and analytics
• IP address and location data
• Log files and crash reports

Service-Related Information:
• Top-up transaction details
• Service preferences and settings
• Customer support communications''',
              ),

              _buildSection(
                'How We Use Your Information',
                '''We use your information for the following purposes:

• To provide and maintain our virtual top-up services
• To process transactions and payments
• To send service-related notifications and updates
• To provide customer support and respond to inquiries
• To improve our app and services
• To comply with legal obligations and prevent fraud
• To send promotional communications (with your consent)''',
              ),

              _buildSection(
                'Information Sharing and Disclosure',
                '''We may share your information in the following circumstances:

• With service providers and business partners who help us operate our services
• With payment processors to complete transactions
• With telecom operators and service providers for top-up services
• When required by law or to protect our rights
• In connection with business transfers or mergers
• With your explicit consent

We do not sell, trade, or rent your personal information to third parties for marketing purposes.''',
              ),

              _buildSection(
                'Data Security',
                'We implement appropriate security measures to protect your information against unauthorized access, alteration, disclosure, or destruction. This includes encryption, secure servers, and regular security assessments. However, no method of transmission over the internet is 100% secure.',
              ),

              _buildSection(
                'Data Retention',
                'We retain your personal information for as long as necessary to provide our services and comply with legal obligations. You may request deletion of your account and associated data at any time through our account deletion process.',
              ),

              _buildSection(
                'Your Rights and Choices',
                '''You have the following rights regarding your personal information:

• Access: Request access to your personal data
• Correction: Request correction of inaccurate information
• Deletion: Request deletion of your account and data
• Portability: Request a copy of your data in a portable format
• Opt-out: Unsubscribe from marketing communications
• Restrict processing: Request limitation of data processing

To exercise these rights, please contact us using the information provided below.''',
              ),

              _buildSection(
                'Children\'s Privacy',
                'Our services are not intended for children under 13 years of age. We do not knowingly collect personal information from children under 13. If you believe we have collected information from a child under 13, please contact us immediately.',
              ),

              _buildSection(
                'Third-Party Services',
                'Our app may contain links to third-party services. We are not responsible for the privacy practices of these third parties. We encourage you to review their privacy policies before providing any information.',
              ),

              _buildSection(
                'International Data Transfers',
                'Your information may be transferred to and processed in countries other than your own. We ensure appropriate safeguards are in place to protect your information during such transfers.',
              ),

              _buildSection(
                'Changes to This Privacy Policy',
                'We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page and updating the "Last updated" date. Continued use of our services after changes constitutes acceptance of the updated policy.',
              ),

              _buildSection(
                'Contact Us',
                '''If you have any questions about this Privacy Policy or our privacy practices, please contact us at:

Email: privacy@lintopay.com
Address: [Your Business Address]
Phone: [Your Contact Number]

For account deletion requests, please visit our Account Deletion page or email us at: support@lintopay.com''',
              ),

              SizedBox(height: 40),
              Center(
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Back to Home'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[600],
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue[700],
            ),
          ),
          SizedBox(height: 10),
          Text(
            content,
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }
}

class AccountDeletionPage extends StatefulWidget {
  @override
  _AccountDeletionPageState createState() => _AccountDeletionPageState();
}

class _AccountDeletionPageState extends State<AccountDeletionPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _reasonController = TextEditingController();
  bool _isSubmitting = false;
  bool _confirmDeletion = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Deletion Request'),
        backgroundColor: Colors.red[600],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 600),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Icon(
                          Icons.warning_amber_rounded,
                          size: 60,
                          color: Colors.red[600],
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Delete Your Account',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.red[700],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.red[50],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.red[200]!),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Important Information:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red[800],
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '• Account deletion is permanent and cannot be undone\n'
                              '• All your transaction history will be deleted\n'
                              '• Any remaining balance will be forfeited\n'
                              '• You will lose access to all LintoPay services\n'
                              '• This process may take up to 30 days to complete',
                              style: TextStyle(
                                color: Colors.red[700],
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email Address *',
                          hintText: 'Enter your registered email address',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email address';
                          }
                          if (!RegExp(
                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                          ).hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _reasonController,
                        maxLines: 4,
                        decoration: InputDecoration(
                          labelText: 'Reason for Deletion (Optional)',
                          hintText:
                              'Please tell us why you want to delete your account',
                          prefixIcon: Icon(Icons.comment),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      CheckboxListTile(
                        value: _confirmDeletion,
                        onChanged: (value) {
                          setState(() {
                            _confirmDeletion = value ?? false;
                          });
                        },
                        title: Text(
                          'I understand that this action is permanent and cannot be undone',
                          style: TextStyle(fontSize: 14),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.red[600],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('Cancel'),
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 15),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: ElevatedButton(
                              onPressed:
                                  _confirmDeletion && !_isSubmitting
                                      ? _submitDeletionRequest
                                      : null,
                              child:
                                  _isSubmitting
                                      ? SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                Colors.white,
                                              ),
                                        ),
                                      )
                                      : Text('Delete Account'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red[600],
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(vertical: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Need help? Contact our support team at support@lintopay.com',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submitDeletionRequest() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isSubmitting = true;
      });

      // Simulate API call
      await Future.delayed(Duration(seconds: 2));

      setState(() {
        _isSubmitting = false;
      });

      // Show success dialog
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Request Submitted'),
            content: Text(
              'Your account deletion request has been submitted successfully. '
              'You will receive a confirmation email within 24 hours. '
              'The deletion process may take up to 30 days to complete.',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close dialog
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    '/',
                    (route) => false,
                  ); // Go to home
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _reasonController.dispose();
    super.dispose();
  }
}
