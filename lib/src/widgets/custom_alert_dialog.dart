import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {

  const CustomAlertDialog({this.check, this.onChange});

  final check;
  final onChange;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          //shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          //shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          //shape: StadiumBorder(side: BorderSide(width: 1.0)),
          title: Text("Titulo"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la caja de la alerta'),
              FlutterLogo(
                size: 100.0,
              ),
              ListTile(
                title: Text("Domingo"),
                trailing: Checkbox(value: check, onChanged: (val){
                    onChange(val);
                }),
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel')),
            FlatButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text('Ok')),
          ],
        );
  }
}