class Teilnehmer {
  final String vorname;
  final String nachname;
  final String strasse;
  final int hausnummer;
  final String plz;
  final String ort;

  const Teilnehmer({
    required this.vorname,
    required this.nachname,
    required this.strasse,
    required this.hausnummer,
    required this.plz,
    required this.ort,
  });

  /*@override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Teilnehmer &&
        other.Strasse == Strasse &&
        other.Hausnummer == Hausnummer;
  }

  @override
  int get hashCode => Object.hash(Strasse, Hausnummer);*/

  Teilnehmer copyWith({
    String Function()? vorname,
    String Function()? nachname,
    String Function()? strasse,
    int Function()? hausnummer,
    String Function()? plz,
    String Function()? ort,
  }) => Teilnehmer(
    vorname: vorname != null ? vorname() : this.vorname,
    nachname: nachname != null ? nachname() : this.nachname,
    strasse: strasse != null ? strasse() : this.strasse,
    hausnummer: hausnummer != null ? hausnummer() : this.hausnummer,
    plz: plz != null ? plz() : this.plz,
    ort: ort != null ? ort() : this.ort,
  );

  String toString() =>
      "Teilnehmer: Nachname: $nachname, Vorname: $vorname, Strasse: $strasse, Hausnummer: $hausnummer, PLZ: $plz, Ort: $ort";
}
/*class SomeClass {
  final int? Hausnummer;
  SomeClass(this.Hausnummer);
  SomeClass copyWith({Function(int?)? Hausnummer}) {
    return SomeClass(Hausnummer != null ? Hausnummer(0) : this.Hausnummer);
  }
}*/