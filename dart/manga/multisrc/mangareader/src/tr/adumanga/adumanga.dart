import '../../../../../../../model/source.dart';

Source get adumangaSource => _adumangaSource;
Source _adumangaSource = Source(
  name: "Adu Manga",
  baseUrl: "https://www.mangacim.com",
  lang: "tr",
  isNsfw: false,
  typeSource: "mangareader",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/mangareader/src/tr/adumanga/icon.png",
  dateFormat: "MMMM d, yyy",
  dateFormatLocale: "tr",
);
