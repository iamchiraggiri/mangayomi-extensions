import '../../../../../../../model/source.dart';

Source get mangagalaxySource => _mangagalaxySource;

Source _mangagalaxySource = Source(
  name: "Manga Galaxy",
  baseUrl: "https://mangagalaxy.me",
  lang: "en",

  typeSource: "madara",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/madara/src/en/mangagalaxy/icon.png",
  dateFormat: "MM/dd/yyyy",
  dateFormatLocale: "en_us",
);
