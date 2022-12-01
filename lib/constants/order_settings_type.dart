enum OrderSettingsType {
  splitByOrder,
  breakIntoPlaces,
  tableReplacement,
}

extension OrderSettingsTranslations on OrderSettingsType{
  String get title{
    switch(this){
      case OrderSettingsType.splitByOrder:
        return 'splitByOrder';
      case OrderSettingsType.breakIntoPlaces:
        return 'breakIntoPlaces';
      case OrderSettingsType.tableReplacement:
        return 'tableReplacement';
    }
  }
}