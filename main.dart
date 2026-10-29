import 'teilnehmer.dart';

void main() {
  final teilnehmer1 = Teilnehmer(
    nachname: "Mustermann",
    vorname: "Max",
    strasse: "Musterstrasse",
    hausnummer: 1,
    plz: "01234",
    ort: "Musterhausen",
  );
  print(teilnehmer1);
  final teilnehmer2 = teilnehmer1.copyWith(
    vorname: () => "Maria",
    hausnummer: () => 2,
  );
  print(teilnehmer2);
}
