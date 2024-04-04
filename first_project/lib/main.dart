import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fee Voucher App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationPage(),
    );
  }
}
class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ContactPage(),
    AboutPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fee Voucher App'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ],
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FeeVoucherButton(
              label: 'Semester Fee Voucher',
               onPressed: () {
            // Navigate to the new window (or screen)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SemesterFeePage()),
            );
          },
            ),
            SizedBox(height: 20),
            FeeVoucherButton(
              label: 'Admission Fee Voucher',
              onPressed: () {
            // Navigate to the new window (or screen)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdmissionFeePage()),
            );
          },
            ),
            SizedBox(height: 20),
            FeeVoucherButton(
              label: 'Repeat Course Fee Voucher',
              onPressed: () {
            // Navigate to the new window (or screen)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RepeatFeePage()),
            );
          },
            ),
          ],
        ),
      ),
    );
  }
}


class SemesterFeePage extends StatefulWidget {
  @override
  _SemesterFeePageState createState() => _SemesterFeePageState();
}

class _SemesterFeePageState extends State<SemesterFeePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController fatherNameController = TextEditingController();
  final TextEditingController rollNoController = TextEditingController();
  final TextEditingController semesterController = TextEditingController();
  final TextEditingController programController = TextEditingController();
  final TextEditingController facultyController = TextEditingController();
  final TextEditingController feeController = TextEditingController();

  String message = '';

  void createSemesterFeeVoucher() {
 
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Success'),
          content: Text('Your Semester Fee voucher is created successfully!'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the alert dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semester Fee Voucher'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: fatherNameController,
              decoration: InputDecoration(labelText: 'Father\'s Name'),
            ),
            TextField(
              controller: rollNoController,
              decoration: InputDecoration(labelText: 'Roll No'),
            ),
            TextField(
              controller: semesterController,
              decoration: InputDecoration(labelText: 'Semester'),
            ),
            TextField(
              controller: programController,
              decoration: InputDecoration(labelText: 'Program'),
            ),
            TextField(
              controller: facultyController,
              decoration: InputDecoration(labelText: 'Faculty'),
            ),
            TextField(
              controller: feeController,
              decoration: InputDecoration(labelText: 'Program Fee in Rs:'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                createSemesterFeeVoucher();
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    fatherNameController.dispose();
    rollNoController.dispose();
    semesterController.dispose();
    programController.dispose();
    facultyController.dispose();
    feeController.dispose();
    super.dispose();
  }
}







class RepeatFeePage extends StatefulWidget {
  @override
  _RepeatFeePageState createState() => _RepeatFeePageState();
}

class _RepeatFeePageState extends State<RepeatFeePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController fatherNameController = TextEditingController();
  final TextEditingController rollNoController = TextEditingController();
  final TextEditingController semesterController = TextEditingController();
  final TextEditingController courseController = TextEditingController();
  final TextEditingController facultyController = TextEditingController();
  final TextEditingController RepeatFeeController = TextEditingController();

  String message = '';

  void createRepeatFeeVoucher() {
 
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Success'),
          content: Text('Your Repeat Fee voucher is created successfully!'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the alert dialog
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Repeat Fee Voucher'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: fatherNameController,
              decoration: InputDecoration(labelText: 'Father\'s Name'),
            ),
            TextField(
              controller: rollNoController,
              decoration: InputDecoration(labelText: 'Roll No'),
            ),
            TextField(
              controller: semesterController,
              decoration: InputDecoration(labelText: 'Semester'),
            ),
            TextField(
              controller: courseController,
              decoration: InputDecoration(labelText: 'Course'),
            ),
            TextField(
              controller: facultyController,
              decoration: InputDecoration(labelText: 'Faculty'),
            ),
            TextField(
              controller: RepeatFeeController,
              decoration: InputDecoration(labelText: 'Repeat course Fee in Rs: '),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                createRepeatFeeVoucher();
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    fatherNameController.dispose();
    rollNoController.dispose();
    semesterController.dispose();
    courseController.dispose();
    facultyController.dispose();
    RepeatFeeController.dispose();
    super.dispose();
  }
}








class AdmissionFeePage extends StatefulWidget {
  @override
  _AdmissionFeePageState createState() => _AdmissionFeePageState();
}

class _AdmissionFeePageState extends State<AdmissionFeePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController fatherNameController = TextEditingController();
  final TextEditingController ProgramController = TextEditingController();
  final TextEditingController facultyController = TextEditingController();

  String message = '';

  void createAdmissionFeeVoucher() {
 
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Success'),
          content: Text('Your Admission voucher is created successfully!'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the alert dialog
              },
            ),
          ],
        );
      },
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admission Fee Voucher'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: fatherNameController,
              decoration: InputDecoration(labelText: 'Father\'s Name'),
            ),
            TextField(
              controller: ProgramController,
              decoration: InputDecoration(labelText: 'Program'),
            ),
            TextField(
              controller: facultyController,
              decoration: InputDecoration(labelText: 'Faculty'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                createAdmissionFeeVoucher();
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    fatherNameController.dispose();
    ProgramController.dispose();
    facultyController.dispose();
    super.dispose();
  }
}


class FeeVoucherButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const FeeVoucherButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page'),
      ),
      body: ContactForm(),
    );
  }
}

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Name'),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(labelText: 'Contact Number'),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          SizedBox(height: 20),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(labelText: 'Message'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _showDialog(context);
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('Form submitted'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Bilal Ahmad'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: Bilal Ahmad',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Education: Software Engineering at Islamia University Bahawalpur',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Skills:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '- Web Development',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Mobile App Development',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}



