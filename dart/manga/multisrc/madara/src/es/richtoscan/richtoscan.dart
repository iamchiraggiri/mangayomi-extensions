import '../../../../../../../model/source.dart';

Source get richtoscanSource => _richtoscanSource;

Source _richtoscanSource = Source(
  name: "RichtoScan",
  baseUrl: "https://r1.richtoon.top",
  lang: "es",

  typeSource: "madara",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/madara/src/es/richtoscan/icon.png",
  dateFormat: "MMMM dd, yyyy",
  dateFormatLocale: "es",
);
