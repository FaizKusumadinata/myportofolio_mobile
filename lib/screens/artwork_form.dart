import 'package:myportofolio_mobile/widgets/left_drawer.dart';
import 'package:flutter/material.dart';

class ArtworkForm extends StatefulWidget {
  const ArtworkForm({super.key});
  
  @override
  State<ArtworkForm> createState() => _ArtworkFormState();
}

class _ArtworkFormState extends State<ArtworkForm> {
  final _formkey = GlobalKey<FormState>();

  String _title = "";
  String _description = "";
  String _tags = "";
  String _image = "";
  dynamic _postDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Submit Artwork'),),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      drawer: LeftDrawer(),
      body: Form(key: _formkey, child: SingleChildScrollView(child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Title
          Padding(padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Title",
              labelText: "Title",
              hintStyle: TextStyle(color: Colors.white),
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
            ),
            onChanged: (String? value){
              setState(() {
                _title = value!;
              });
            },
            validator: (String? value){
              if(value == null || value.trim().isEmpty){
                return "Title is required!";
              }
              return null;
            },
          ),
          ),

          //Description
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 5,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Description",
                labelText: "Description",
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _description = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.trim().isEmpty) {
                  return "Description is required!";
                }
                return null;
              },
            ),
          ),

          //Tags
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Example: illustration, worldbuilding, original-character",
                labelText: "Art Tags",
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _tags = value!;
                });
              },
            ),
          ),

          //Image
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Image URL(Google Drive Link)",
                labelText: "Image URL",
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _image = value!;
                });
              },
            ),
          ),

          //Tombol Simpan
           Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Artwork Successfully Submitted!'),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Title:$_title'),
                                Text('Descrition:$_description'),
                                Text('Tags:$_tags'),
                                Text('Image:$_image'),
                                Text('Date Posted:$_postDate'),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.pop(context);
                                _formkey.currentState!.reset();
                                _postDate = DateTime.now();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      )
      )
      ),
    );
  }
}