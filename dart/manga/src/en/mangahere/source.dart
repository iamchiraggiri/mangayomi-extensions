import '../../../../../model/source.dart';

Source get mangahereSource => _mangahereSource;
const _mangahereVersion = "0.0.8";
const _mangahereSourceCodeUrl =
    "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/src/en/mangahere/mangahere.dart";
Source _mangahereSource = Source(
  name: "MangaHere",
  baseUrl: "http://www.mangahere.cc",
  lang: "en",
  typeSource: "single",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/src/en/mangahere/icon.png",
  sourceCodeUrl: _mangahereSourceCodeUrl,
  itemType: ItemType.manga,
  version: _mangahereVersion,
  dateFormat: "MMM dd,yyyy",
  dateFormatLocale: "en",
);
