import '../../../../../model/source.dart';

Source get nimegami => _nimegami;
const _nimegamiVersion = "0.0.6";
const _nimegamiCodeUrl =
    "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/anime/src/id/nimegami/nimegami.dart";
Source _nimegami = Source(
  name: "NimeGami",
  baseUrl: "https://nimegami.id",
  lang: "id",
  typeSource: "single",
  iconUrl:
      "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/anime/src/id/nimegami/icon.png",
  sourceCodeUrl: _nimegamiCodeUrl,
  version: _nimegamiVersion,
  itemType: ItemType.anime,
);
