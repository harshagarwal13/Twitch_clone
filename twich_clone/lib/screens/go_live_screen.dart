import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:twich_clone/Widgets/custom_button.dart';
import 'package:twich_clone/Widgets/custom_textfield.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  final TextEditingController _textController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  @override
  void dispose() {
    // TODO: implement dispose
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DottedBorder(
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.withOpacity(.001),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async{
                            final XFile? image = await _picker.pickImage(
                                source: ImageSource.gallery);
                          },
                          child: const Icon(
                            Icons.folder_open,
                            color: Colors.deepPurpleAccent,
                            size: 40,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Please select thumbnail",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade400,
                          ),
                        )
                      ],
                    ),
                  ),
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(10),
                  dashPattern: const [10, 4],
                  strokeCap: StrokeCap.round,
                  color: Colors.deepPurpleAccent,
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Title",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: CustomTextField(controller: _textController),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: CustomButton(text: "Go Live", onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
