import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterFormPage extends StatefulWidget {
  const RegisterFormPage({Key? key}) : super(key: key);

  @override
  State<RegisterFormPage> createState() => _RegisterFormPageState();
}

class _RegisterFormPageState extends State<RegisterFormPage> {
  bool _hidePassConfirm = true;
  bool _hidePass = true;

  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _vozrastController = TextEditingController();
  final _storyController = TextEditingController();
  bool _isChecked = false;
  Pol _selectPol = Pol.m;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _vozrastController.dispose();
    _storyController.dispose();
    _passController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Форма заявки на работу в зоопарке'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text('Пожалуйста, заполните форму. Обязательные поля помечены *',
            style: TextStyle(
              fontSize: 16,
            fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 25),
            Text('Контактная информация',
              style: TextStyle(
                  fontSize: 30,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 25),
            TextFormField(
              validator: _validateName,
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Имя*',
                hintText: 'Введите свое имя (обязательное поле)',
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Телефон',
                hintText: 'Введите Ваш телефон',
                helperText: 'Формат телефона: (XXX)XXX-XXXX',
                prefixIcon: Icon(Icons.call),
                suffixIcon: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
              ),
              inputFormatters: [
                FilteringTextInputFormatter(
                  RegExp(r'^[()\d -]{1,15}$'),
                  allow: true,
                ),
              ],
              validator: (value) => _validatePhoneNumber(value)
                  ? null
                  : 'Phone number must be entered as (###)###-####',
            ),
            SizedBox(height: 25),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email*',
                hintText: 'Введите свой Email (обязательное поле)',
                icon: Icon(Icons.mail),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: _validateEmail,
            ),
            SizedBox(height: 40),
            Text('Персональная информация',
              style: TextStyle(
                fontSize: 30,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 40),
            TextFormField(
              validator: _validateName,
              controller: _vozrastController,
              decoration: InputDecoration(
                labelText: 'Возраст*',
                hintText: 'Введите свой возраст (обязательное поле)',
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: 200,
              color: Colors.grey,
              child: CheckboxListTile(
                title: Text('Выбор'),
                secondary: Icon(Icons.alt_route),
                controlAffinity: ListTile,
              ),
            ),
            TextFormField(
              controller: _storyController,
              decoration: InputDecoration(
                labelText: 'Перечислите личные качества',
                hintText: '',
                helperText: '',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
              inputFormatters: [
                LengthLimitingTextInputFormatter(100),
              ],
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: _submitForm,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo),
              ),
              child: Text('Submit Form'),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Form is valid');
    }else{
      print('Form is not valid! Please review and correct');
    }
  }

  String? _validateName(String? value) {
    final _nameExp = RegExp(r'^[A-Za-z ]+$');
    if (value!.isEmpty) {
      return 'Name is required';
    } else if (!_nameExp.hasMatch(value)) {
      return 'Please enter alphabetical characters';
    } else {
      return null;
    }
  }

  bool _validatePhoneNumber(String? input) {
    final _phoneExp = RegExp(r'^\(\d\d\d\)\d\d\d-\d\d\d\d$');
    return _phoneExp.hasMatch(input!);
  }

  String? _validateEmail(String? value){
    if(value!.isEmpty){
      return 'Email cannot be empty';
    }else if(!_emailController.text.contains("@")){
      return 'Invalid email address';
    }else{
      return null;
    }
  }

  String? _validatePassword(String? value){
    if(_passController.text.length != 8){
      return '8 characters required for password';
    }else if (_confirmController.text != _passController.text){
      return 'Password does not match';
    } else {
      return null;
    }
  }
}
