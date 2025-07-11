import '../../../../../../../model/source.dart';

Source get ravenscansSource => _ravenscansSource;

Source _ravenscansSource = Source(
  name: "Raven Scans",
  baseUrl: "https://ravenscans.com",
  lang: "en",
  typeSource: "mangareader",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/mangareader/src/en/ravenscans/icon.png",
  dateFormat: "MMMM dd, yyyy",
  dateFormatLocale: "en_us",
);
