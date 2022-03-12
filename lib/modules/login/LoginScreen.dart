import 'package:flutter/material.dart';
import 'package:flutter_app/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isPassword = true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.login),
        title: Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextFormFiled(
                      controller: emailController,
                      prefix: Icons.email,
                      label: 'Email address',
                      type: TextInputType.emailAddress,
                      validate: (value){
                        if(value.isEmpty){
                          return 'Email must not be empty';
                        }else if(!(value.contains('@') && value.contains('.'))){
                          return 'Invalid email';
                        }else return null;
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormFiled(controller: passwordController, prefix: Icons.lock, label: 'Password', type: TextInputType.visiblePassword,
                      validate:(value){
                    if(value.isEmpty){
                      return 'Password must not be empty';
                    }else return null;
                      },
                    isPassword: isPassword,
                    suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                    suffixPressed:(){
                    setState(() {
                      isPassword = !isPassword;
                    });
                    }
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print('Email is : ${emailController.text}');
                          print('Password is : ${passwordController.text}');
                        }
                      },
                      padding: EdgeInsets.symmetric(vertical: 14.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(onPressed: () {}, child: Text('Register Now'))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
