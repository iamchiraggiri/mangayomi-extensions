import '../../../../model/source.dart';
import 'src/hianime/hianime.dart';
import 'src/kaido/kaido.dart';

const _zorothemeVersion = "0.1.65";
const _zorothemeSourceCodeUrl =
    "https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/$branchName/dart/anime/multisrc/zorotheme/zorotheme.dart";

List<Source> get zorothemeSourcesList => _zorothemeSourcesList;
List<Source> _zorothemeSourcesList =
    [
          //AniWatch.to (EN)
          aniwatchSource,
          //Kaido.to (EN)
          kaidoSource,
        ]
        .map(
          (e) =>
              e
                ..sourceCodeUrl = _zorothemeSourceCodeUrl
                ..version = _zorothemeVersion,
        )
        .toList();
