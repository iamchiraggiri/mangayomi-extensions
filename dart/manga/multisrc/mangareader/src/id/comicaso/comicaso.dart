import '../../../../../../../model/source.dart';

Source get comicasoSource => _comicasoSource;
Source _comicasoSource = Source(
  name: "Comicaso",
  baseUrl: "https://comicaso.com",
  lang: "id",
  isNsfw: false,
  typeSource: "mangareader",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/mangareader/src/id/comicaso/icon.png",
  dateFormat: "MMMM d, yyyy",
  dateFormatLocale: "id",
);
