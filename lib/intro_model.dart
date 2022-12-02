class IntroModel {
  final String image;
  final String title;
  final String description;

  IntroModel(
      {required this.image, required this.title, required this.description});
}

final List<IntroModel> intromodel_data = [
  IntroModel(
      image: "images/logo_polnes.png",
      title: "Selamat Datang",
      description: "Selamat Datang di Aplikasi SMART TI POLNES"),
  IntroModel(
      image: "images/logo_polnes.png",
      title: "Aplikasi Smart TI",
      description:
          "Aplikasi ini digunakan untuk memudahkan\nsegala kebutuhan terkait Jurusan TI"),
  IntroModel(
      image: "images/logo_polnes.png",
      title: "Enjoy",
      description: "Selamat Menikmati"),
];
