import '../../../../../../../model/source.dart';

Source get mangawowSource => _mangawowSource;
Source _mangawowSource = Source(
  name: "MangaWOW",
  baseUrl: "https://mangawow.org",
  lang: "tr",
  isNsfw: false,
  typeSource: "madara",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/main/dart/manga/multisrc/madara/src/tr/mangawow/icon.png",
  dateFormat: "MMMM dd, yyyy",
  dateFormatLocale: "tr",
);
