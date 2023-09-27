import 'package:flutter/material.dart';

import 'ValidateCreateAccount.dart';

void main() {
  runApp(MaterialApp(
    home: Validate_Form(),
  ));
}

class Validate_Form extends StatelessWidget{

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // final TextEditingController _reenterPasswordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign-Up Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.all(20),
                  child: TextFormField(
                    controller: _firstNameController,
                    decoration: InputDecoration(
                      labelText: 'Enter First Name',
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(20),
                  child: TextFormField(
                    controller: _lastNameController,
                    decoration: InputDecoration(
                      labelText: 'Enter Last Name',
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Enter Email Id',
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  labelText: 'Enter Phone Number',
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Enter Password',
                ),
              ),
            ),
            // Padding(padding: EdgeInsets.all(20),
            //   child: TextFormField(
            //     controller: _reenterPasswordController,
            //     decoration: InputDecoration(
            //       labelText: 'Re-Enter Password',
            //     ),
            //   ),
            // ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              String firstName = _firstNameController.text;
              String lastName = _lastNameController.text;
              String email = _emailController.text;
              String phoneNumber = _phoneNumberController.text;
              String password = _passwordController.text;
              // String reenterPassword = _reenterPasswordController.text;
              // Navigate to the second screen and pass the data as arguments
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount(
                firstName: firstName,
                lastName: lastName,
                email: email,
                phoneNumber: phoneNumber,
                password: password,
                // reenterPassword: _reenterPassword,
              )));
            }, child: Text('Create Account'),)
          ],
        ),
      ),

    );
     }


}

