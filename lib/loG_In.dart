import 'package:flutter/material.dart';
import 'package:my_first/shared/components/components.dart';

class LogInScreen extends StatefulWidget {

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children:[
                  const Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress ,
                    onFieldSubmitted: (String? value){
                      print(value);
                    },
                    onChanged: (value){
                      print(value);
                    },
                    validator: (value)
                    {
                      if (value == null || value.isEmpty)
                      {
                        return'email must be not empty';
                      }
                      return null;

                    },
                    decoration: const InputDecoration(
                      labelText: 'Email Adress',
                      labelStyle: TextStyle(fontSize: 15.0, fontStyle: FontStyle.italic, ),
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: isPassword,
                    keyboardType: TextInputType.visiblePassword,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    onChanged: (value){
                      print(value);
                    },
                    validator: (value)
                    {
                      if (value == null || value.isEmpty)
                      {
                        return 'password must be not empty';
                      }
                      return null;

                    },
                    decoration: InputDecoration(
                      labelText:'Password' ,
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(fontSize: 15.0, fontStyle: FontStyle.italic, ),
                      prefix: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPassword ? Icons.visibility : Icons.visibility_off, ),
                        onPressed: () {
                          setState(() {
                            isPassword = ! isPassword;
                          });
                      },
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultButton(
                    text: 'Log In',
                    background: Colors.blue,
                    function: (){
                      if(formKey.currentState!.validate())
                      {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },

                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          'Register Now',
                        ),
                      )
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
