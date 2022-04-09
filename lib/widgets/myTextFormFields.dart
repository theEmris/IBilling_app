import 'package:flutter/material.dart';

class myTextFormField extends StatelessWidget {
  const myTextFormField({
    Key? key,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Theme(
      
      data: ThemeData.light(
      
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: _controller,
    
          decoration: InputDecoration(
              fillColor: Colors.white,
              
             
        focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
                
           border: OutlineInputBorder(
    
                   
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(color: Colors.white,width: 10))),
                  
          validator: (v) {
            if (v!.isEmpty) {
              return "please fill the form";
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }
}
