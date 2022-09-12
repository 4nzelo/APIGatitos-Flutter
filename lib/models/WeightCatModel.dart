class WeightCatModel {
  //constructor
  WeightCatModel({
    required this.imperial,
    required this.metric,
  });

  String imperial;
  String metric;

  //constructor por nombre, se ejecuta cuando se esté creando la instancia de la clase.
  factory WeightCatModel.fromJson(Map<String, dynamic> json) => WeightCatModel(
        imperial: json["imperial"],
        metric: json["metric"],
      );

  //dynamic => cualquier tipo de dato
  Map<String, dynamic> toJson() => {
        "imperial": imperial,
        "metric": metric,
      };
}
