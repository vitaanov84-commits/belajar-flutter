import 'package:flutter/material.dart';

class FormulirPage extends StatefulWidget {
  FormulirPage({super.key});

  @override
  State<FormulirPage> createState() => _FormulirPageState();
}

class _FormulirPageState extends State<FormulirPage> {
  final _formKey =GlobalKey<FormState>();
  
  final TextEditingController _nameController = TextEditingController();
    String_outputName = '';

  @override 
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
   void_submitForm() {
    print('Nama lengkap: ${_nameController.text}');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Nama Lengkap ${_nameController.text}")),
    );
    setState(() {
      _outputName = _nameController.text;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('text')),
        body: Center(
          child: Form(
            key: _formKey,
            child: Column (
              children:  [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'chika',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: (){   
                    print ('Nama: ${_nameController.text}');      
                  }
                , child: const Text('get name'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _submitForm();
                  },
                  child: const Text('Submit'),
                ),
                Text(
                  'Nama: $(_outputName.isEmpty ? 'Belum diisi' : _outputName)',
                  style: const TextStyle(fontSize: 16),
                )
             ],
             ),
           ),
         ),
       ),
     );
  }

  void _submitForm() {}
}