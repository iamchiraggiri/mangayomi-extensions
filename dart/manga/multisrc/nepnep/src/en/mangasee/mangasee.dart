import '../../../../../../../model/source.dart';

Source get mangaseeSource => _mangaseeSource;

Source _mangaseeSource = Source(
  name: "MangaSee",
  baseUrl: "https://mangasee123.com",
  lang: "en",
  typeSource: "nepnep",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/nepnep/src/en/mangasee/icon.png",
  dateFormat: "yyyy-MM-dd HH:mm:ss",
  dateFormatLocale: "en",
);
