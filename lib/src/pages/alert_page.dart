import 'package:componentes/src/widgets/custom_alert_dialog.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {

  @override
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  bool _check = true;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert page')
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          color: Colors.lightBlue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _showAlert(context)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlert (BuildContext context) {

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return CustomAlertDialog(check: _check, onChange: _changeCheckValue);
      }
    );
  }

  void _changeCheckValue(val) {
    print(val);
    setState(() {
      _check = val;
    });
  }
}