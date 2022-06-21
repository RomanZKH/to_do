import '../index/index.dart';
import 'dart:io';

class AddFile extends StatefulWidget {

  @override
  State<AddFile> createState() => _AddFileState();
}

class _AddFileState extends State<AddFile> {
  final _imagePicker = ImagePicker();
  bool _value = false;
  File? image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final imgGallery =
            await _imagePicker.pickImage(source: ImageSource.gallery);
        if (imgGallery != null) {
          setState(() {
            _value = true;
            image = File(imgGallery.path);
          });
        }
      },
      child: AnimatedContainer(
          alignment: Alignment.topRight,
          padding:
              const EdgeInsets.only(left: 16, top: 7, bottom: 7, right: 13),
          height: !_value ? Get.height * 0.06 : Get.height * 0.2,
          color: const Color(0xFFFBEFB4),
          duration: const Duration(milliseconds: 240),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CustomText(
                  text: _value ? "" : "Додати файл",
                  fontSize: 20,
                  color: const Color(0xFF383838)),
              image == null
                  ? Container(
                      height: Get.height * 0.1,
                      color: const Color(0xFFFBEFB4),
                    )
                  : Align(
                      alignment: Alignment.topRight, child: Image.file(image!)),
            ],
          )),
    );
  }
}
