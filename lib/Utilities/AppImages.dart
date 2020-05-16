//!! get image or icon in app from assets folder


//!AppImage class
class AppImage {

  //!Get Image
  static String getImage({String imageName}) {
    return 'lib/Assets/Images/$imageName';
  }
  //!Get icon
  static String getIcon({String iconName}) {
    return 'lib/Assets/Icons/$iconName';
  }
}
