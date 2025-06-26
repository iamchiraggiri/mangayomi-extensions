import '../../../../../../../model/source.dart';

Source get ragnarokscanlationSource => _ragnarokscanlationSource;

Source _ragnarokscanlationSource = Source(
  name: "Ragnarok Scanlation",
  baseUrl: "https://ragnarokscanlation.org",
  lang: "es",

  typeSource: "madara",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/madara/src/es/ragnarokscanlation/icon.png",
  dateFormat: "MMMM d, yyyy",
  dateFormatLocale: "es",
);
