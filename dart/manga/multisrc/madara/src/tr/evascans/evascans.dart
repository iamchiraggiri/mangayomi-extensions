import '../../../../../../../model/source.dart';

Source get evascansSource => _evascansSource;

Source _evascansSource = Source(
  name: "EvaScans",
  baseUrl: "https://evascans.com",
  lang: "tr",

  typeSource: "madara",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/madara/src/tr/evascans/icon.png",
  dateFormat: "MMM d, yyy",
  dateFormatLocale: "tr",
);
