import '../../../../../../../model/source.dart';

Source get kamisamaexplorerSource => _kamisamaexplorerSource;

Source _kamisamaexplorerSource = Source(
  name: "Kami Sama Explorer",
  baseUrl: "https://leitor.kamisama.com.br",
  lang: "pt-br",

  typeSource: "madara",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/manga/multisrc/madara/src/pt/kamisamaexplorer/icon.png",
  dateFormat: "dd 'de' MMMM 'de' yyyy",
  dateFormatLocale: "pt-br",
);
