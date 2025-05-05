// import 'package:flutter/material.dart';
// import 'package:login_signup/signup.dart';
// import 'user_db.dart';
// import 'package:login_signup/HomePage.dart'; 

// class LoginPage extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   bool isValidEmail(String email) {
//     RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
//     return emailRegExp.hasMatch(email);
//   }

//   void login(BuildContext context) {
//     final email = emailController.text.trim();
//     final password = passwordController.text;

//     if (email.isEmpty || !isValidEmail(email)) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter a valid email address')),
//       );
//       return;
//     }

//     if (password.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter your password')),
//       );
//       return;
//     }

//     if (fakeDatabase.containsKey(email) && fakeDatabase[email] == password) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Login successful')),
//       );
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => HomePage()),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Invalid credentials')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//         backgroundColor: Colors.teal,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // إضافة الشعار
//               Center(
//                 child: Image.asset(
//                   'images/logo.png', 
//                   width: 200,
//                   height: 200,  
//                 ),
//               ),
//               const SizedBox(height: 30),

//               // Header Text
//               Center(
//                 child: Text(
//                   'Welcome Back!',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
//                 ),
//               ),
//               const SizedBox(height: 16),

//               // Email Field
//               TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   prefixIcon: Icon(Icons.email, color: Colors.teal),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   filled: true,
//                   fillColor: Colors.white,
//                   contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
//                 ),
//               ),
//               SizedBox(height: 16),

//               // Password Field
//               TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   prefixIcon: Icon(Icons.lock, color: Colors.teal),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   filled: true,
//                   fillColor: Colors.white,
//                   contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
//                 ),
//               ),
//               SizedBox(height: 30),

//               // Login Button
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () => login(context),
//                   child: Text('Login', style: TextStyle(fontSize: 18)),
//                   style: ElevatedButton.styleFrom(
//                     // primary: Colors.teal,
//                     padding: EdgeInsets.symmetric(vertical: 16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),

//               // Don't have an account?
//               Center(
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/signup');
//                   },
//                   child: Text(
//                     'Don\'t have an account? Sign Up',
//                     style: TextStyle(fontSize: 16, color: Colors.teal),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }














import 'package:flutter/material.dart';
import 'package:login_signup/signup.dart';
import 'user_db.dart'; // يمكن استبداله بقاعدة بيانات حقيقية
import 'package:login_signup/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isValidEmail(String email) {
    RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegExp.hasMatch(email);
  }

  void login(BuildContext context) {
    final email = emailController.text.trim();
    final password = passwordController.text;

    if (email.isEmpty || !isValidEmail(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a valid email address')),
      );
      return;
    }

    if (password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter your password')),
      );
      return;
    }

    // قاعدة بيانات وهمية
    if (fakeDatabase.containsKey(email) && fakeDatabase[email] == password) {
      // تخزين البيانات في الذاكرة المحلية إذا كان الدخول ناجحًا
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login successful')),
      );

      // توجيه المستخدم إلى صفحة الصفحة الرئيسية بعد تسجيل الدخول
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid credentials')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // إضافة الشعار
              Center(
                child: Image.asset(
                  'images/logo.png', 
                  width: 200,
                  height: 200,  
                ),
              ),
              const SizedBox(height: 30),

              // Header Text
              Center(
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
              ),
              const SizedBox(height: 16),

              // Email Field
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email, color: Colors.teal),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                ),
              ),
              SizedBox(height: 16),

              // Password Field
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock, color: Colors.teal),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                ),
              ),
              SizedBox(height: 30),

              // Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => login(context),
                  child: Text('Login', style: TextStyle(fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Don't have an account?
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Text(
                    'Don\'t have an account? Sign Up',
                    style: TextStyle(fontSize: 16, color: Colors.teal),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
