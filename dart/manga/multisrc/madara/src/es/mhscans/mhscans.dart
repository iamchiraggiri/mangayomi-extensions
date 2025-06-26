import '../../../../../../../model/source.dart';

Source get mhscansSource => _mhscansSource;
Source _mhscansSource = Source(
  name: "MHScans",
  baseUrl: "https://twobluescans.com",
  lang: "es",
  isNsfw: false,
  typeSource: "madara",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/main/dart/manga/multisrc/madara/src/es/mhscans/icon.png",
  dateFormat: "dd 'de' MMMM 'de' yyyy",
  dateFormatLocale: "es",
);
