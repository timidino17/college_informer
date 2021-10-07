import 'package:codetech/model/IntroModel.dart';
import 'package:get/get.dart';

class IntroController extends GetxController{
  var currentPage = 0.obs;
  List<IntroModel> introPage = [
    IntroModel('assets/images/university.jpg', 'KNOW YOUR COLLEGE', 'Now with this College Informer Application you can easily get all news, notices and events information in just one tap.'),
    IntroModel('assets/images/club.jpg', 'DAILY CLUB UPDATES', 'Now you can get each and every minute to huge news of all the clubs of NITRR with this amazing app.'),
    IntroModel('assets/images/gallery.jpg', 'BUILT IN GALLERY', 'Now get all the latest and oldest photos of every events, fests, seminars and workshop in just one tap with this app.'),
  ];
}