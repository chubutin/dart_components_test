import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _inputString = '';
  String _inputEmail = '';
  String _password = '';
  String _dateOfBirth = null;

  TextEditingController _dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Input Form'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            _createInput(),
            Divider(),
            _createEmail(),
            Divider(),
            _createPassword(),
            Divider(),
            _createDate(context)
          ],
        ));
  }

  Widget _createInput() {
    int _maxLength = 20;

    return TextField(
        textCapitalization: TextCapitalization.words,
        maxLength: _maxLength,
        onChanged: (value) {
          setState(() {
            _inputString = value;
          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          counter: Text('${_inputString.length}/$_maxLength'),
          hintText: 'Person\'s name',
          labelText: 'Name',
          helperText: 'Only the name',
          suffix: Icon(Icons.person_add),
          icon: Icon(Icons.account_circle),
        ));
  }

  Widget _createEmail() {

    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            _inputEmail = value;
          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: 'Person\'s email',
          labelText: 'Email',
          suffix: Icon(Icons.alternate_email),
          icon: Icon(Icons.email),
        ));
  }

  Widget _createPassword() {

    return TextFormField(
        obscureText: true,
        onChanged: (value) {
          setState(() {
            _password = value;
          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: 'Password',
          labelText: 'Password',
          suffix: Icon(Icons.lock_open),
          icon: Icon(Icons.lock),
        ));
  }

  Widget _createDate(BuildContext context) {
    return TextFormField(
      enableInteractiveSelection: false,
      controller: _dobController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: 'Date of Birth',
        labelText: 'Date of birth',
        suffix: Icon(Icons.calendar_today),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1900),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES'));
    
    if( picked != null) {
      setState(() {
        var formatter = new DateFormat('yyyy-MM-dd');
        _dateOfBirth = formatter.format(picked);
        _dobController.text = _dateOfBirth;
      });
    }
  }
}
