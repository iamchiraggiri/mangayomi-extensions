import '../../../../../../../model/source.dart';

Source get inmortalscanSource => _inmortalscanSource;

Source _inmortalscanSource = Source(
  name: "Inmortal Scan",
  baseUrl: "https://scaninmortal.com",
  lang: "es",

  typeSource: "madara",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/madara/src/es/inmortalscan/icon.png",
  dateFormat: "MMMM d, yyyy",
  dateFormatLocale: "es",
);
