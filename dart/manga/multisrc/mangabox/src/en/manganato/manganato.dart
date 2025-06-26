import '../../../../../../../model/source.dart';

Source get manganatoSource => _manganatoSource;

Source _manganatoSource = Source(
  name: "Manganato",
  baseUrl: "https://www.natomanga.com",
  lang: "en",
  typeSource: "mangabox",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/mangabox/src/en/manganato/icon.png",
  dateFormat: "MMM dd,yy",
  dateFormatLocale: "en",
);
