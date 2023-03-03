class AssetPath {
  static String getImages(String filename) {
    return 'assets/images/$filename';
  }

  static String getIcons(String filename) {
    return 'assets/icons/$filename';
  }

  static String getDocument(String filename) {
    return 'assets/document/$filename';
  }
}
