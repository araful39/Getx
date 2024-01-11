import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{
  RxString imagePathe="".obs;
  Future getImage()async{
    final ImagePicker _picker=ImagePicker();
    final image=await _picker.pickImage(source: ImageSource.gallery);
    if(image !=null){
      imagePathe.value=image.path.toString();
    }
  }
}