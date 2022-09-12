class ImageCatModel {
  //constructor
  ImageCatModel({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
  });

  String id;
  int width;
  int height;
  String url;

  //constructor por nombre, se ejecuta cuando se esté creando la instancia de la clase.
  factory ImageCatModel.fromJson(Map<String, dynamic> json) => ImageCatModel(
        id: json["id"] ?? "",
        width: json["width"] ?? 0,
        height: json["height"] ?? 0,
        url: json["url"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
      };
}
