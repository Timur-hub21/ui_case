class Services {
  final String title;
  final List<Cuts> cuts;

  Services({
    required this.title,
    required this.cuts,
  });
}

class Cuts {
  final String name;
  final String price;

  Cuts({
    required this.name,
    required this.price,
  });
}
