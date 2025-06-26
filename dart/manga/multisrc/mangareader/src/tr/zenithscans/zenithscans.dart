import '../../../../../../../model/source.dart';

Source get zenithscansSource => _zenithscansSource;
Source _zenithscansSource = Source(
  name: "Zenith Scans",
  baseUrl: "https://zenithscans.com",
  lang: "tr",
  isNsfw: false,
  typeSource: "mangareader",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/mangareader/src/tr/zenithscans/icon.png",
  dateFormat: "MMM d, yyy",
  dateFormatLocale: "tr",
);
