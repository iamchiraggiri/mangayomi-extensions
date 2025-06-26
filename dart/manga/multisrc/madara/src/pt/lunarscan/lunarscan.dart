import '../../../../../../../model/source.dart';

Source get lunarscanSource => _lunarscanSource;
Source _lunarscanSource = Source(
  name: "Lunar Scan",
  baseUrl: "https://lunarscan.com.br",
  lang: "pt-br",
  isNsfw: false,
  typeSource: "madara",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/main/dart/manga/multisrc/madara/src/pt/lunarscan/icon.png",
  dateFormat: "MMMMM dd, yyyy",
  dateFormatLocale: "pt-br",
);
