class PetSizeList {
  PetSizeList({
    this.title = "",
  });

  String title;

  static List<PetSizeList> petSizeList = <PetSizeList>[
    PetSizeList(
      title: 'Small (0-7kg)'
    ),
    PetSizeList(
      title: 'Medium (7-18 kg)'
    ),
    PetSizeList(
        title: 'Large (18-45 kg)'
    ),
    PetSizeList(
        title: 'Gaint (45+ kg)'
    )
  ];
}
