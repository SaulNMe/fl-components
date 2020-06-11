import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ) ,
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.teal,
      value: _valorSlider,
      min: 10,
      max: 400,
      onChanged: !_isActive ? (value) {
        setState(() {
          _valorSlider = value;
        });
      } : null,
    );
  }
  
  Widget _checkBox() {
    // return Checkbox(
    //   value: _isActive, 
    //   onChanged: (value) {        
    //     setState(() {
    //       _isActive = value;
    //     });
    //   }
    // );
    return CheckboxListTile(
      activeColor: Colors.pink,
      checkColor: Colors.white,
      controlAffinity: ListTileControlAffinity.leading,
      subtitle: Text("Excellent"),
      title: Text("Bloquear slider"),
      value: _isActive, 
      onChanged: (value){
        setState(() {
          _isActive =  value;
        });
      }
    );  
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text("Bloquear slider"),
      value: _isActive, 
      onChanged: (value){
        setState(() {
          _isActive =  value;
        });
      }
    );  
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage("http://oyster.ignimgs.com/wordpress/stg.ign.com/2014/03/THE-FLASH-Full-Suit-Image.jpg"),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

}