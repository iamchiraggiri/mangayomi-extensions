import '../../../../../../../model/source.dart';

Source get miauscanSource => _miauscanSource;
Source _miauscanSource = Source(
  name: "Miau Scan",
  baseUrl: "https://lectormiau.com",
  lang: "all",
  isNsfw: false,
  typeSource: "mangareader",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/mangareader/src/all/miauscan/icon.png",
  dateFormat: "MMMM dd, yyyy",
  dateFormatLocale: "es",
);
