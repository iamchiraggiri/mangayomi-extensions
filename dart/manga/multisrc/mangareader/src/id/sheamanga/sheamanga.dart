import '../../../../../../../model/source.dart';

Source get sheamangaSource => _sheamangaSource;
Source _sheamangaSource = Source(
  name: "Shea Manga",
  baseUrl: "https://sheakomik.com",
  lang: "id",
  isNsfw: false,
  typeSource: "mangareader",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/mangareader/src/id/sheamanga/icon.png",
  dateFormat: "MMMM dd, yyyy",
  dateFormatLocale: "id",
);
