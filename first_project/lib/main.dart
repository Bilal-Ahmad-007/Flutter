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
      home: HomePage(),
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

  String message = '';

  void createSemesterFeeVoucher() {
    // Implement the logic to create a semester fee voucher here
    // For demonstration purposes, I'm just showing a success message
    setState(() {
      message = 'Your semester fee voucher is created successfully!';
    });
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

  String message = '';

  void createRepeatFeeVoucher() {
    // Implement the logic to create a semester fee voucher here
    // For demonstration purposes, I'm just showing a success message
    setState(() {
      message = 'Your Repeat Fee voucher is created successfully!';
    });
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
  final TextEditingController semesterController = TextEditingController();
  final TextEditingController facultyController = TextEditingController();

  String message = '';

  void createRepeatFeeVoucher() {
    // Implement the logic to create a semester fee voucher here
    // For demonstration purposes, I'm just showing a success message
    setState(() {
      message = 'Your Repeat Fee voucher is created successfully!';
    });
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
              controller: semesterController,
              decoration: InputDecoration(labelText: 'Semester'),
            ),
            TextField(
              controller: facultyController,
              decoration: InputDecoration(labelText: 'Faculty'),
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
    semesterController.dispose();
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
        title: Text('Contact'),
      ),
      body: Center(
        child: Text(
          'Contact information goes here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Center(
        child: Text(
          'Menu items go here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
