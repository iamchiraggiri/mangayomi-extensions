import '../../../../../../model/source.dart';

Source get kaidoSource => _kaidoSource;

Source _kaidoSource = Source(
  name: "Kaido.to",
  baseUrl: "https://kaido.to",
  lang: "en",
  itemType: ItemType.anime,
  typeSource: "zorotheme",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/anime/multisrc/zorotheme/src/kaido/icon.png",
);
