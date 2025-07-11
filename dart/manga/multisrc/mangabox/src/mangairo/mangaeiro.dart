import '../../../../../../model/source.dart';

Source get mangairoSource => _mangairoSource;

Source _mangairoSource = Source(
  name: "Mangairo",
  baseUrl: "https://h.mangairo.com",
  lang: "en",
  isNsfw: true,
  typeSource: "mangabox",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/mangabox/src/mangairo/icon.png",
  dateFormat: "MMM-dd-yy",
  dateFormatLocale: "en",
);
