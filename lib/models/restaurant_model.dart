//objet restaurant avec ses attribut

class Restaurant {
  final String title;
  final String description;
  final double deliverCost;
  final int minCostToDeliver;
  final String assetImage;
  final List<String>? type;
  final int? minDelay;
  final int? maxDelay;

  final int? rating;
  //pour ajouter le coeaur sur l'application si c'est vrai le coeur est remplie
  final bool isFavorite;

  Restaurant(
      {required this.title,
        required this.deliverCost,
        required this.minCostToDeliver,
        required this.assetImage,
        required this.description,
        this.type,
        this.minDelay,
        this.maxDelay,
        this.rating,
        this.isFavorite = false});
}
