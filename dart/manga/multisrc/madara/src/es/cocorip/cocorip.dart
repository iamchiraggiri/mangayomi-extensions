import '../../../../../../../model/source.dart';

Source get cocoripSource => _cocoripSource;

Source _cocoripSource = Source(
  name: "Coco Rip",
  baseUrl: "https://cocorip.net",
  lang: "es",

  typeSource: "madara",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/madara/src/es/cocorip/icon.png",
  dateFormat: "dd/MM/yyyy",
  dateFormatLocale: "es",
);
