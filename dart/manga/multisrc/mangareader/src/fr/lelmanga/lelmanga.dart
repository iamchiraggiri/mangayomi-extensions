import '../../../../../../../model/source.dart';

Source get lelmangaSource => _lelmangaSource;

Source _lelmangaSource = Source(
  name: "Lelmanga",
  baseUrl: "https://www.lelmanga.com",
  lang: "fr",
  typeSource: "mangareader",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/mangareader/src/fr/lelmanga/icon.png",
  dateFormat: "MMMM d, yyyy",
  dateFormatLocale: "en",
);
