.. list-table::
   :header-rows: 1

 * - **REL**
   - **HREF**
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-kryssreferanse/
   - https://n5.example.com/api/arkivstruktur/mappe/051b40e3-a0fe-4c02-acec-828d60c3a4ea/ny-kryssreferanse/


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Association** (Bi-Directional)
   - kryssreferanse 0..\* Kryssreferanse
   - registrering 0..1 Registrering
   -
 * - **Association** (Bi-Directional)
   - kryssreferanse 0..\* Kryssreferanse
   - klasse 0..1 Klasse
   -
 * - **Association** (Bi-Directional)
   - kryssreferanse 0..\* Kryssreferanse
   - mappe 0..1 Mappe
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - self
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/klasse/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/kryssreferanse/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/mappe/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/registrering/


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Aggregation** (Bi-Directional)
   - mappe 0..\* Mappe
   - arkivdel 0..1 Arkivdel
   -
 * - **Aggregation** (Bi-Directional)
   - mappe 0..\* Mappe
   - klasse 0..1 Klasse
   -
 * - **Generalization** (Source → Destination)
   - Mappe
   - Arkivenhet
   -
 * - **Aggregation** (Destination → Source)
   - undermappe 0..\* Mappe
   - overmappe 0..1 Mappe
   -
 * - **Aggregation** (Bi-Directional)
   - registrering 0..\* Registrering
   - mappe 0..1 Mappe
   -
 * - **Aggregation** (Destination → Source)
   - nasjonalidentifikator 0..\* Nasjonalidentifikator
   - Mappe
   -
 * - **Association** (Source → Destination)
   - Mappe
   - merknad 0..\* Merknad
   -
 * - **Association** (Source → Destination)
   - Mappe
   - part 0..\* Part
   -
 * - **Generalization** (Source → Destination)
   - Saksmappe
   - Mappe
   -
 * - **Association** (Bi-Directional)
   - kryssreferanse 0..\* Kryssreferanse
   - mappe 0..1 Mappe
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - self
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/arkivdel/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/bygning/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/dnummer/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/foedselsnummer/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/klasse/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/kryssreferanse/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/mappe/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/matrikkel/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/merknad/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/nasjonalidentifikator/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-bygning/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-dnummer/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-foedselsnummer/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-kryssreferanse/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-mappe/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-matrikkel/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-merknad/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-partenhet/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-partperson/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-plan/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-posisjon/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-registrering/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/overmappe/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/part/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/plan/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/posisjon/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/registrering/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/undermappe/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/dokumentmedium/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/mappetype/


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/sakarkiv/ny-journalpost/
 * - https://rel.arkivverket.no/noark5/v5/api/sakarkiv/ny-saksmappe/
 * - https://rel.arkivverket.no/noark5/v5/api/sakarkiv/utvid-til-saksmappe/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - mappeID
   - Definisjon: Entydig identifikasjon av mappen
     innenfor det arkivet mappen tilhører. Kilde:
     Registreres automatisk av systemet etter
     interne regler. Kommentar: Ulike arkiver
     innenfor samme arkivsystem, kan inneholde en
     eller flere av de samme kodene. Koden kan
     være rent numerisk, men kan også ha en
     logisk oppbygning. Er en videreføring av
     kombinasjonen saksår og sakssekvensnummer
     (oftest bare kalt "saksnummer") i Noark 4,
     som fortsatt er obligatorisk identifikasjon
     på saksmappe. I slike tilfeller skal verdien
     i mappeID også kopieres til de to
     metadataelementene M011 saksaar og M012
     sakssekvensnummer i saksmappen. M003
   - [0..1]
   -
   - string
 * - mappetype
   - angir mappetype som blant annet kan brukes
     som hint til hva som ligger i
     virksomhetsspesifikkemetadata
   - [0..1]
   -
   - Mappetype
 * - tittel
   - Definisjon: Tittel eller navn på
     arkivenheten. Kilde: Registreres manuelt
     eller hentes automatisk fra innholdet i
     arkivdokumentet. Ja fra klassetittel dersom
     alle mapper skal ha samme tittel som
     klassen. Kan også hentes automatisk fra et
     fagsystem. Kommentarer: For saksmappe og
     journalpost vil dette tilsvare "Sakstittel"
     og "Dokumentbeskrivelse". Disse navnene kan
     beholdes i grensesnittet. M020
   - [1..1]
   -
   - string
 * - offentligTittel
   - Definisjon: Offentlig tittel på
     arkivenheten, ord som skal skjermes er
     fjernet fra innholdet i tittelen (erstattet
     med ******) . Kommentarer: I løpende og
     offentlig journaler skal også
     offentligTittel være med dersom ord i
     tittelfeltet skal skjermes. M025
   - [0..1]
   -
   - string
 * - beskrivelse
   - Definisjon: Tekstlig beskrivelse av
     arkivenheten. Kilde: Registreres manuelt.
     Kommentarer: Tilsvarende attributt finnes
     ikke i Noark 4 (men noen tabeller hadde egne
     attributter for merknad som kunne brukes som
     et beskrivelsesfelt) M021
   - [0..1]
   -
   - string
 * - noekkelord
   - Definisjon: Nøkkeord eller stikkord som
     beskriver innholdet i enheten. Kilde:
     Registreres vanligvis ved oppslag fra liste
     (f.eks. en tesaurus). Kan også registreres
     automatisk på grunnlag av dokumentinnhold
     eller integrering med fagsystem.
     Kommentarer: Noekkelord kan brukes for å
     forbedre mulighetene for søking og
     gjenfinning. Noekkelord skal ikke erstatte
     klassifikasjon. M022
   - [0..\*]
   -
   - string
 * - dokumentmedium
   - Definisjon: Angivelse av om arkivenheten
     inneholder fysiske dokumenter, elektroniske
     dokumenter eller en blanding av fysiske og
     elektroniske dokumenter. Kilde: Arves fra
     overordnet nivå, kan overstyres manuelt.
     Kommentarer: Obligatorisk ved blanding av
     fysisk og elektronisk arkiv. Er hele arkivet
     enten fysisk eller elektronisk, er det
     tilstrekkelig med verdi på arkivnivå. Er en
     hel arkivdel enten fysisk eller elektronisk,
     er det tilstrekkelig å angi det på
     arkivdelnivå. Dersom underordnede arkivdeler
     inneholder både fysiske og elektroniske
     dokumenter, må informasjon om dette arves
     nedover i hierarkiet. Se også kommentar til
     M208 referanseArkivdel. M300
   - [0..1]
   -
   - Dokumentmedium
 * - oppbevaringssted
   - Definisjon: Stedet hvor de fysiske
     dokumentene oppbevares. Kan være angivelse
     av rom, hylle, skap osv. Overordnede
     arkivdeler (f.eks. en arkivdel) kan
     oppbevares på flere steder. Kilde: Arves fra
     overordnet nivå, kan overstyres manuelt.
     Kommentarer: Fysiske dokumenters plassering
     skal ellers gå fram av arkivstrukturen.
     Fysiske dokumenter i et sakarkiv skal i
     utgangspunktet være ordnet i overordnede
     omslag (f.eks. hengemapper) etter stigende
     klasseID. Innenfor hver av disse skal
     omslagene skal dokumentene ligge i fysiske
     saksmapper som er ordnet etter stigende
     mappeID. Innenfor saksmappene skal
     dokumentene være ordnet etter stigende
     journalpostnummer ("dokumentnummer").
     Vedlegg skal legges sammen med tilhørende
     hoveddokument. M301
   - [0..\*]
   -
   - string
 * - avsluttetDato
   - Definisjon: Dato og klokkeslett når
     arkivenheten ble avsluttet/lukket . Kilde:
     Registreres automatisk av systemet når
     enheten avsluttes. Kommentarer: (ingen).
     M602
   - [0..1]
   -
   - datetime
 * - avsluttetAv
   - Definisjon: Navn på person som
     avsluttet/lukket arkivenheten. Kilde:
     Registreres automatisk av systemet ved
     opprettelse av enheten. Kommentarer: (ingen)
     M603
   - [0..1]
   -
   - string
 * - referanseAvsluttetAv
   -
   - [0..1]
   -
   - SystemID
 * - kassasjon
   -
   - [0..1]
   -
   - Kassasjon
 * - skjerming
   -
   - [0..1]
   -
   - Skjerming
 * - gradering
   -
   - [0..1]
   -
   - Gradering
 * - referanseForelderMappe
   -
   - [0..1]
   -
   - SystemID
 * - virksomhetsspesifikkeMetadata
   - Definisjon: Et overordnet metadataelement
     som kan inneholde egendefinerte metadata.
     Disse metadataene må da være spesifisert i
     et eller flere XML-skjema. Kilde: (ingen).
     Kommentar: (ingen) M711
     virksomhetsspesifikkeMetadata
   - [0..1]
   -
   - any


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
 * - 5.4.1 En mappe skal kunne være av forskjellig type.
   -
 * - 5.4.5 En Mappe bør kunne inngå i andre Mapper i et hierarki.
   -
 * - 5.4.6 En Mappe skal kunne bestå av ingen, en eller flere Registreringer og en Registrering kan inngå i (kun) en Mappe.
   -
 * - 5.4.7 Dersom en Mappe er registrert som avsluttet (avsluttetDato) skal det ikke være mulig å legge flere Registreringer til Mappen.
   -
 * - 5.4.8 En Mappe skal kunne utvides til en Saksmappe
   -
 * - 5.4.14 Dersom det er angitt et primært klassifikasjonssystem for Arkivdel, skal alle Mapper i arkivdelen ha verdier fra dette klassifikasjonssystemet som primær klasse.
   -
 * - 5.4.19 Det bør finnes en tjeneste/funksjon for å legge opp og ajourholde undermapper for en Mappe (mappehierarki).
   -
 * - 6.1.1 Det skal finnes en tjeneste/funksjon for å avslutte en Mappe (dvs. at avsluttetDato settes).
   -
 * - 6.1.2 For en Mappe som er avsluttet skal det ikke være mulig å endre følgende metadata: tittel ,dokumentmedium
   -
 * - 6.1.17 Det skal ikke være mulig å slette en Mappe som er avsluttet.
   -
 * - Ny - Etter at mappe er registrert så skal kjernen fylle ut systemID, opprettetAv og opprettetDato
   -
 * - Ny - Når mappe avsluttes så skal avsluttetDato og avsluttetAv registreres
   -
 * - Ny - Mappe kan enten være tilknyttet arkivdel eller referanseForelderMappe eller klasse
   -
 * - M003 mappeID: Skal ikke kunne endres
   -
 * - M025 offentligTittel: Obligatorisk i arkivuttrekk dersom tittelen inneholder ord som skal skjermes, jf. M504 skjermingMetadata.
   -
 * - M602 avsluttetDato: Skal ikke kunne endres.
   -
 * - M602 avsluttetDato: Obligatorisk dersom arkivdelen er avsluttet.
   -
 * - M603 avsluttetAv: Skal ikke kunne endres.
   -
 * - M603 avsluttetAv: Obligatorisk dersom arkivenheten er avsluttet.
   -


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Association** (Source → Destination)
   - Mappe
   - merknad 0..\* Merknad
   -
 * - **Association** (Source → Destination)
   - Registrering
   - merknad 0..\* Merknad
   -
 * - **Association** (Source → Destination)
   - Dokumentbeskrivelse
   - merknad 0..\* Merknad
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - self
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/merknad/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-merknad/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/merknadstype/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - systemID
   - Definisjon: Entydig
     identifikasjon av arkivenheten
     innenfor det arkivskapende
     organet. Dersom organet har flere
     arkivsystemer, skal altså
     systemID være gjennomgående
     entydig. Systemidentifikasjonen
     vil som oftest være en numerisk
     kode uten noe logisk
     meningsinnhold. Identifikasjonen
     trenger ikke å være synlig for
     brukerne. Kilde: Registreres
     automatisk av systemet.
     Kommentarer: Alle referanser fra
     en arkivenhet til en annen skal
     peke til arkivenhetens
     systemidentifikasjon. Dette
     gjelder også referanser fra en
     arkivdel til en annen, f.eks.
     mellom to arkivperioder som
     avleveres på forskjellig
     tidspunkt. I et arkivuttrekk skal
     systemID være entydig (unik).
     Dokumentobjekt har ingen
     systemidentifikasjon fordi
     enheten kan være duplisert i et
     arkivuttrekk dersom samme
     dokumentfil er knyttet til flere
     forskjellige registreringer. M001
   - [0..1]
   -
   - SystemID
 * - merknadstekst
   - Definisjon: Merknad fra
     saksbehandler, leder eller
     arkivpersonale. Kilde:
     Registreres manuelt. Kommentarer:
     Merknaden bør gjelde selve
     saksbehandlingen eller forhold
     arkiveringen av dokumentene som
     tilhører arkivenheten. M310
   - [1..1]
   -
   - string
 * - merknadstype
   - Definisjon: Navn på type merknad.
     M084
   - [0..1]
   -
   - Merknadstype
 * - merknadsdato
   - Definisjon: Dato og klokkeslett
     når merknaden ble registrert .
     Kilde: Registreres automatisk av
     systemet. Kommentarer: (ingen).
     M611
   - [1..1]
   -
   - datetime
 * - merknadRegistrertAv
   - Definisjon: Navn på person som
     har registrert merknaden . Kilde:
     Registreres automatisk av
     systemet. Kommentarer: (ingen).
     M612
   - [0..1]
   -
   - string
 * - referanseMerknadRegistrertAv
   -
   - [0..1]
   -
   - SystemID


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
 * - M001 systemID: Skal ikke kunne endres
   -
 * - M611 merknadsdato: Kan ikke endres
   -
 * - M612 merknadRegistrertAv: Kan ikke endres
   -


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Generalization** (Source → Destination)
   - PartPerson
   - Part
   -
 * - **Generalization** (Source → Destination)
   - PartEnhet
   - Part
   -
 * - **Association** (Destination → Source)
   - part 0..\* Part
   - Mappe
   -
 * - **Association** (Destination → Source)
   - part 0..\* Part
   - Registrering
   -
 * - **Association** (Source → Destination)
   - Dokumentbeskrivelse
   - part 0..\* Part
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - self
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/part/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/partrolle/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - systemID
   - Definisjon: Entydig identifikasjon av
     arkivenheten innenfor det arkivskapende
     organet. Dersom organet har flere
     arkivsystemer, skal altså systemID være
     gjennomgående entydig.
     Systemidentifikasjonen vil som oftest være
     en numerisk kode uten noe logisk
     meningsinnhold. Identifikasjonen trenger
     ikke å være synlig for brukerne. Kilde:
     Registreres automatisk av systemet
     Kommentarer: Alle referanser fra en
     arkivenhet til en annen skal peke til
     arkivenhetens systemidentifikasjon. Dette
     gjelder også referanser fra en arkivdel til
     en annen, f.eks. mellom to arkivperioder som
     avleveres på forskjellig tidspunkt. I et
     arkivuttrekk skal systemID være entydig
     (unik). Dokumentobjekt har ingen
     systemidentifikasjon fordi enheten kan være
     duplisert i et arkivuttrekk dersom samme
     dokumentfil er knyttet til flere
     forskjellige registreringer. M001
   - [0..1]
   -
   - SystemID
 * - partRolle
   - Definisjon: Angivelse av rollen til parten .
     Kilde: Registreres manuelt eller automatisk
     fra fagsystem. Kommentarer: (ingen).
     Betingelser: Her er det mange tenkelige
     roller avhengig av type sak, f.eks. Klient,
     Pårørende, Formynder, Advokat. M303
   - [1..1]
   -
   - PartRolle
 * - virksomhetsspesifikkeMetadata
   -
   - [0..1]
   -
   - any


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
 * - M001 systemID: Skal ikke kunne endres
   -


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Generalization** (Source → Destination)
   - PartEnhet
   - Part
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - self
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-partenhet/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/partenhet/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - enhetsidentifikator
   -
   - [0..1]
   -
   - Enhetsidentifikator
 * - navn
   -
   - [1..1]
   -
   - string
 * - forretningsadresse
   -
   - [0..1]
   -
   - EnkelAdresse
 * - postadresse
   -
   - [0..1]
   -
   - EnkelAdresse
 * - kontaktinformasjon
   -
   - [0..1]
   -
   - Kontaktinformasjon
 * - kontaktperson
   -
   - [0..1]
   -
   - string


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Generalization** (Source → Destination)
   - PartPerson
   - Part
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - self
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-partperson/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/partperson/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - personidentifikator
   -
   - [0..\*]
   -
   - Personidentifikator
 * - navn
   -
   - [1..1]
   -
   - string
 * - postadresse
   -
   - [0..1]
   -
   - EnkelAdresse
 * - bostedsadresse
   -
   - [0..1]
   -
   - EnkelAdresse
 * - kontaktinformasjon
   -
   - [0..1]
   -
   - Kontaktinformasjon


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - tilgangsrestriksjon
   - Definisjon: Angivelse av at
     dokumentene som tilhører arkivenheten
     ikke er offentlig tilgjengelig i
     henhold til offentlighetsloven eller
     av en annen grunn . Kilde:
     Registreres manuelt ved valg fra
     liste, kan også registres automatisk.
     Kommentarer: (ingen). M500
   - [1..1]
   -
   - Tilgangsrestriksjon
 * - skjermingshjemmel
   - Definisjon: Henvisning til hjemmel
     (paragraf) i offentlighetsloven,
     sikkerhetsloven eller
     beskyttelsesinstruksen . Kilde:
     Registreres automatisk på grunnlag av
     valgt tilgangskode, kan overstyres
     manuelt. Kommentarer: (ingen) M501
   - [1..1]
   -
   - string
 * - skjermingMetadata
   - Definisjon: Angivelse av hvilke
     metadataelementer som skal skjermes.
     Kilde: Registreres manuelt ved valg
     fra liste eller annen funksjonalitet,
     kan også registreres automatisk.
     Kommentarer: Skjerming av klasseID
     (arkivnøkkel, arkivkode) er f.eks.
     aktuelt når identifikasjonen er et
     fødselsnummer. Dersom utvalgte ord
     fra tittel skjermes, er
     metadataelementet M025
     offentligTittel obligatorisk.
     Skjerming av navn på part i sak angis
     for saksmappe, skjerming av navn på
     avsender og mottaker angis for
     journalpost, skjerming av merknader
     angis for saksmappe og journalpost.
     Ved midlertidig skjerming skal alle
     metadata ovenfor skjermes, må bare
     brukes inntil skjermingsbehovet er
     vurdert. M502
   - [0..\*]
   -
   - SkjermingMetadata
 * - skjermingDokument
   - Definisjon: Angivelse av at hele
     dokumentet eller deler av det må
     skjermes. Kilde: Registreres manuelt
     ved valg fra liste eller annen
     funksjonalitet, kan også registreres
     automatisk. Kommentarer: Dersom deler
     av dokumentet skal skjermes, må
     dokumentet også finnes i en variant.
     Her må all informasjon som skal
     skjermes, være "sladdet". M503
   - [0..1]
   -
   - SkjermingDokument
 * - skjermingsvarighet
   - Definisjon: Antall år skjermingen
     skal opprettholdes. Kilde:
     Registreres automatisk knyttet til
     valg av tilgangskode, kan registreres
     manuelt. Kommentarer: Tidspunktet for
     når skjermingsvarigheten starter å
     løpe, vil vanligvis være når
     journalposten ble registrert, men det
     skal være mulig med andre regler.
     M504
   - [0..1]
   -
   - integer
 * - skjermingOpphoererDato
   - Definisjon: Datoen skjermingen skal
     oppheves. Kilde: Datoen beregnes
     automatisk på grunnlag av M504
     skjermingsvarighet. Kommentarer:
     (ingen). M505
   - [0..1]
   -
   - date


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - slettingstype
   - Definisjon: Navn på hvilket objekt som
     er slettet . Kilde: (ingen).
     Kommentarer: Siste versjon av et
     dokument skal vanligvis ikke kunne
     slettes. Sletting av innholdet i en
     arkivdel skal bare kunne utføres av
     autorisert personale. M089
   - [1..1]
   -
   - Slettingstype
 * - slettetDato
   - Definisjon: Dato og klokkeslett når et
     dokument ble slettet . Kilde:
     Registreres automatisk når en
     tidligere versjon eller en variant av
     et dokument slettes. Kommentarer:
     Informasjon om sletting av dokumenter
     i produksjonsformat skal ikke
     avleveres. Sletting må ikke blandes
     sammen med kassasjon. M613
   - [1..1]
   -
   - datetime
 * - slettetAv
   - Definisjon: Navn på person som har
     utført en kontrollert kassasjon av
     dokumenter, eller sletting av
     versjoner, formater og varianter.
     Kilde: Registreres automatisk når et
     dokument blir slettet. Kommentarer:
     Sletting må ikke blandes sammen med
     kassasjon. M614
   - [1..1]
   -
   - string
 * - referanseSlettetAv
   -
   - [1..1]
   -
   - SystemID


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
 * - slettetAv_M614
   - slettetAv: Kan ikke endres
 * - slettetDato_M613
   - slettetDato: Kan ikke endres


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - kassertDato
   - Definisjon: Dato og klokkeslett når kassasjonen ble utført . Kilde: Registreres automatisk når kassasjon utføres. Kommentarer: (ingen). M630
   - [1..1]
   -
   - datetime
 * - kassertAv
   - Definisjon: Navn på person som har utført kassasjonen . Kilde: Registreres automatisk når kassasjon utføres. Kommentarer: (ingen). M631
   - [1..1]
   -
   - string
 * - referanseKassertAv
   -
   - [1..1\ 1
   -
   - SystemID


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
 * - kassertAv_M631
   - kassertAv: Skal ikke kunne endres
 * - kassertDato_M630
   - kassertdato: Skal ikke kunne endres


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Aggregation** (Destination → Source)
   - nasjonalidentifikator 0..\* Nasjonalidentifikator
   - Mappe
   -
 * - **Aggregation** (Destination → Source)
   - nasjonalidentifikator 0..\* Nasjonalidentifikator
   - Registrering
   -
 * - **Generalization** (Source → Destination)
   - Bygning
   - Nasjonalidentifikator
   -
 * - **Generalization** (Source → Destination)
   - Enhetsidentifikator
   - Nasjonalidentifikator
   -
 * - **Generalization** (Source → Destination)
   - Matrikkel
   - Nasjonalidentifikator
   -
 * - **Generalization** (Source → Destination)
   - Plan
   - Nasjonalidentifikator
   -
 * - **Generalization** (Source → Destination)
   - Posisjon
   - Nasjonalidentifikator
   -
 * - **Generalization** (Source → Destination)
   - Personidentifikator
   - Nasjonalidentifikator
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/nasjonalidentifikator/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - systemID
   -
   - [1..1]
   -
   - SystemID


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Generalization** (Source → Destination)
   - Bygning
   - Nasjonalidentifikator
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - self
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/bygning/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-bygning/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - bygningsnummer
   - Som registrert i Matrikkelen.
   - [1..1]
   -
   - integer
 * - endringsloepenummer
   - Som registrert i Matrikkelen.
   - [0..1]
   -
   - integer


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Generalization** (Source → Destination)
   - Enhetsidentifikator
   - Nasjonalidentifikator
   -


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - organisasjonsnummer
   -
   - [1..1]
   -
   - string


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Generalization** (Source → Destination)
   - Matrikkel
   - Nasjonalidentifikator
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - self
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/matrikkel/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-matrikkel/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - kommunenummer
   -
   - [1..1]
   -
   - string
 * - gaardsnummer
   -
   - [1..1]
   -
   - integer
 * - bruksnummer
   -
   - [1..1]
   -
   - integer
 * - festenummer
   -
   - [0..1]
   -
   - integer
 * - seksjonsnummer
   -
   - [0..1]
   -
   - integer


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Generalization** (Source → Destination)
   - Personidentifikator
   - Nasjonalidentifikator
   -
 * - **Generalization** (Source → Destination)
   - Foedselsnummer
   - Personidentifikator
   -
 * - **Generalization** (Source → Destination)
   - DNummer
   - Personidentifikator
   -


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Generalization** (Source → Destination)
   - Foedselsnummer
   - Personidentifikator
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - self
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/foedselsnummer/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-foedselsnummer/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - foedselsnummer
   -
   - [1..1]
   -
   - string


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Generalization** (Source → Destination)
   - DNummer
   - Personidentifikator
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - self
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/dnummer/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-dnummer/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - dNummer
   -
   - [1..1]
   -
   - string


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Generalization** (Source → Destination)
   - Plan
   - Nasjonalidentifikator
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - self
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-plan/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/plan/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - kommunenummer
   -
   - [0..1]
   -
   - string
 * - fylkesnummer
   -
   - [0..1]
   -
   - string
 * - landkode
   -
   - [0..1]
   -
   - Land
 * - planidentifikasjon
   -
   - [1..1]
   -
   - string


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
 * - kommunenummer/fylkesnummer/landkode
   - Kun et av feltene kommunenummer, fylkesnummer og landkode kan være satt for en gitt instans. Feltet som er satt identifiserer hvilken enhet som planen gjelder for.


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/koordinatsystem/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - UTM32N
   -
   -
   - EPSG:32632
   -
 * - WGS84
   -
   -
   - EPSG:4326
   -


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Generalization** (Source → Destination)
   - Posisjon
   - Nasjonalidentifikator
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - self
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/posisjon/
 * - https://rel.arkivverket.no/noark5/v5/api/arkivstruktur/ny-posisjon/


.. list-table::
   :header-rows: 1

 * - **Navn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - koordinatsystem
   -
   - [1..1]
   -
   - Koordinatsystem
 * - x
   - øst-vest/breddegrad
   - [1..1]
   -
   - decimal
 * - y
   - nord-sør/lengdegrad
   - [1..1]
   -
   - decimal
 * - z
   - høyde, kun noen koordinatsystem
   - [0..1]
   -
   - decimal


.. list-table::
   :header-rows: 1

 * - **Relasjonsnøkkel**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/arkivdelstatus/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/arkivstatus/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/dokumentmedium/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/dokumentstatus/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/dokumenttype/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/format/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/graderingskode/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/kassasjonsvedtak/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/klassifikasjonstype/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/mappetype/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/merknadstype/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/skjermingdokument/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/skjermingmetadata/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/slettingstype/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/tilknyttetregistreringsom/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/variantformat/


.. list-table::
   :header-rows: 1

 * - **Relasjonsnøkkel**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/avskrivningsmaate/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/elektronisksignatursikkerhetsnivaa/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/elektronisksignaturverifisert/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/flytstatus/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/journalposttype/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/journalstatus/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/korrespondanseparttype/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/land/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/postnummer/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/presedensstatus/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/partrolle/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/saksstatus/


.. list-table::
   :header-rows: 1

 * - **Relasjonsnøkkel**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/hendelsetype/


.. list-table::
   :header-rows: 1

 * - **Relasjonsnøkkel**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/tilgangskategori/
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/tilgangsrestriksjon/


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/arkivdelstatus/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Aktiv periode
   -
   -
   - A
   -
 * - Overlappingsperiode
   -
   -
   - O
   -
 * - Avsluttet periode
   -
   -
   - P
   -
 * - Uaktuelle mapper
   -
   -
   - U
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/arkivstatus/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Opprettet
   -
   -
   - O
   -
 * - Avsluttet
   -
   -
   - A
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/avskrivningsmaate/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Besvart med brev
   -
   -
   - BU
   -
 * - Besvart med e-post
   -
   -
   - BE
   -
 * - Besvart på telefon
   -
   -
   - TLF
   -
 * - Tatt til etterretning
   -
   -
   - TE
   -
 * - Tatt til orientering
   -
   -
   - TO
   -
 * - Besvart med notat
   -
   -
   - BN
   -
 * - Saken ble avsluttet
   -
   -
   - SA
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/dokumentmedium/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Fysisk medium
   -
   -
   - F
   -
 * - Elektronisk arkiv
   -
   -
   - E
   -
 * - Blandet fysisk og elektronisk arkiv
   -
   -
   - B
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/dokumentstatus/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Dokumentet er under redigering
   -
   -
   - B
   -
 * - Dokumentet er ferdigstilt
   -
   -
   - F
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/dokumenttype/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Brev
   - Valgfri
   -
   - B
   -
 * - Rundskriv
   - Valgfri
   -
   - R
   -
 * - Faktura
   - Valgfri
   -
   - F
   -
 * - Ordrebekreftelse
   - Valgfri
   -
   - O
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/elektronisksignatursikkerhetsnivaa/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Symmetrisk kryptert
   - Valgfri
   -
   - SK
   -
 * - Sendt med PKI/virksomhetssertifikat
   - Valgfri
   -
   - V
   -
 * - Sendt med PKI/"person standard"-sertifikat
   - Valgfri
   -
   - PS
   -
 * - Sendt med PKI/"person høy"-sertifikat
   - Valgfri
   -
   - PH
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/elektronisksignaturverifisert/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Signatur påført, ikke verifisert
   -
   -
   - I
   -
 * - Signatur påført og verifisert
   -
   -
   - V
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/flytstatus/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Godkjent
   - Valgfri
   -
   - G
   -
 * - Ikke godkjent
   - Valgfri
   -
   - I
   -
 * - Sendt tilbake til saksbehandler med kommentarer
   - Valgfri
   -
   - S
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/format/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Ukjent format
   - Formatet er ikke gjenkjent eller
     mangler i listen over kjente
     formater.
   -
   - av/0
   -
 * - Ren tekst
   - Som ren tekst: UTF-8 (ISO/IEC
     10646-1:2000 Annex D) eller ISO
     8859-1:1998, Latin 1. ISO
     8859-1:1998, Latin 1 kan erstattes
     med ISO 8859-4:1998, Latin 4 for
     samiske tegn
   -
   - `x-fmt/111<http://www.nationalarchives.gov.uk/PRONOM/x-fmt/111>`_
   -
 * - TIFF versjon 6
   - TIFF - Tag Image File Format versjon
     6, med de presiseringer som fremgår
     av forskriftens § 8-18
   -
   - `fmt/353<http://www.nationalarchives.gov.uk/PRONOM/fmt/353>`_
   -
 * - PDF/A 1a - ISO 19005-1:2005
   - PDF/A - ISO 19005-1:2005, versjon 1a
     («Conformance Level» A). PDF/A
     erstatter Adobe PDF, jf. forskriftens
     § 8-20 tredje ledd.
   -
   - `fmt/95<http://www.nationalarchives.gov.uk/PRONOM/fmt/95>`_
   -
 * - PDF/A 1b - ISO 19005-1:2005
   - PDF/A - ISO 19005-1:2005, versjon 1b
     («Conformance Level» B). PDF/A
     erstatter Adobe PDF, jf. forskriftens
     § 8-20 tredje ledd.
   -
   - `fmt/354<http://www.nationalarchives.gov.uk/PRONOM/fmt/354>`_
   -
 * - XML
   - XML - Extensible Markup Language
     versjon 1.0, med de presiseringer som
     fremgår av forskriftens § 8-19
   -
   - `fmt/101<http://www.nationalarchives.gov.uk/PRONOM/fmt/101>`_
   -
 * - JPEG
   - JPEG 1.00 som beskrevet i ISO
     10918-1:1994
   -
   - `fmt/42<http://www.nationalarchives.gov.uk/PRONOM/fmt/42>`_
   -
 * - SOSI
   - SOSI versjon 2.2 (1995) eller nyere
   -
   - av/1
   -
 * - MPEG-2
   - MPEG-2 (ISO 13818-2.)
   -
   - `x-fmt/386<http://www.nationalarchives.gov.uk/PRONOM/x-fmt/386>`_
   -
 * - MP3
   - lyd: MP3 (ISO 11172-3), PCM eller
     PCM-basert Wave. Valget mellom disse
     lydformatene skal i hvert tilfelle
     være avtalt med Arkivverket før
     deponering eller avlevering
   -
   - `fmt/134<http://www.nationalarchives.gov.uk/PRONOM/fmt/134>`_
   -
 * - PNG
   - PNG 1.2 som beskrevet i ISO / IEC
     15948
   -
   - `fmt/11<http://www.nationalarchives.gov.uk/PRONOM/fmt/13>`_
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/graderingskode/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Strengt hemmelig (sikkerhetsgrad)
   -
   -
   - SH
   -
 * - Hemmelig (sikkerhetsgrad)
   -
   -
   - H
   -
 * - Konfidensielt (sikkerhetsgrad)
   -
   -
   - K
   -
 * - Begrenset (sikkerhetsgrad)
   -
   -
   - B
   -
 * - Fortrolig (beskyttelsesgrad)
   -
   -
   - F
   -
 * - Strengt fortrolig (beskyttelsesgrad)
   -
   -
   - SF
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/hendelsetype/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Opprettet
   -
   -
   - C
   -
 * - Lest
   -
   -
   - R
   -
 * - Endret
   -
   -
   - U
   -
 * - Slettet
   -
   -
   - D
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/journalposttype/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Inngående dokument
   -
   -
   - I
   -
 * - Utgående dokument
   -
   -
   - U
   -
 * - Organinternt dokument for oppfølging
   -
   -
   - N
   -
 * - Organinternt dokument uten oppfølging
   -
   -
   - X
   -
 * - Saksframlegg
   -
   -
   - S
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/journalstatus/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Journalført
   -
   -
   - J
   -
 * - Ferdigstilt fra saksbehandler
   -
   -
   - F
   -
 * - Godkjent av leder
   -
   -
   - G
   -
 * - Ekspedert
   -
   -
   - E
   -
 * - Arkivert
   -
   -
   - A
   -
 * - Utgår
   -
   -
   - U
   -
 * - Midlertidig registrering av innkommet dokument
   - Anbefalt
   -
   - M
   -
 * - Saksbehandler har registrert innkommet dokument
   - Anbefalt. Dette gjelder hovedsakelig e-post
   -
   - S
   -
 * - Reservert dokument
   - Reservert dokument, dvs. egenprodusert dokument er under arbeid
   -
   - R
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/kassasjonsvedtak/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Bevares
   -
   -
   - B
   -
 * - Kasseres
   -
   -
   - K
   -
 * - Vurderes senere
   -
   -
   - G
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/klassifikasjonstype/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Gårds- og bruksnummer
   - Valgfri
   -
   - GBN
   -
 * - Funksjonsbasert, hierarkisk
   - Valgfri
   -
   - FH
   -
 * - Emnebasert, hierarkisk arkivnøkkel
   - Valgfri
   -
   - EH
   -
 * - Emnebasert, ett nivå
   - Valgfri
   -
   - E1
   -
 * - K-koder
   - Valgfri
   -
   - KK
   -
 * - Mangefasettert, ikke hierarki
   - Valgfri
   -
   - MF
   -
 * - Objektbasert
   - Valgfri
   -
   - UO
   -
 * - Fødselsnummer
   - Valgfri
   -
   - PNR
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/korrespondanseparttype/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Avsender
   -
   -
   - EA
   -
 * - Mottaker
   -
   -
   - EM
   -
 * - Kopimottaker
   -
   -
   - EK
   -
 * - Gruppemottaker
   -
   -
   - GM
   -
 * - Intern avsender
   -
   -
   - IA
   -
 * - Intern mottaker
   -
   -
   - IM
   -
 * - Intern kopimottaker
   -
   -
   - IK
   -
 * - Medavsender
   -
   -
   - IS
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/land/


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/mappetype/


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/merknadstype/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Merknad fra saksbehandler
   - Valgfri
   -
   - MS
   -
 * - Merknad fra leder
   - Valgfri
   -
   - ML
   -
 * - Merknad fra arkivansvarlig
   - Valgfri
   -
   - MA
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/postnummer/


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/presedensstatus/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Gjeldende
   -
   -
   - G
   -
 * - Foreldet
   -
   -
   - F
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/partrolle/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Klient
   - Valgfri
   -
   - KLI
   -
 * - Pårørende
   - Valgfri
   -
   - PAA
   -
 * - Formynder
   - Valgfri
   -
   - FORM
   -
 * - Advokat
   - Valgfri
   -
   - ADV
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/saksstatus/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Under behandling
   -
   -
   - B
   -
 * - Avsluttet
   -
   -
   - A
   -
 * - Utgår
   -
   -
   - U
   -
 * - Opprettet av saksbehandler
   - anbefalt
   -
   - R
   -
 * - Avsluttet av saksbehandler
   - anbefalt
   -
   - S
   -
 * - Unntatt prosesstyring
   - anbefalt
   -
   - P
   -
 * - Ferdig fra saksbehandler
   -
   -
   - F
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/skjermingdokument/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Skjerming av hele dokumentet
   -
   -
   - H
   -
 * - Skjerming av deler av dokumentet
   -
   -
   - D
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/skjermingmetadata/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Skjerming klasseID
   -
   -
   - KID
   -
 * - Skjerming tittel klasse
   -
   -
   - TKL
   -
 * - Skjerming tittel mappe - unntatt første linje
   -
   -
   - TM1
   -
 * - Skjerming tittel mappe - utvalgte ord
   -
   -
   - TMO
   -
 * - Skjerming navn part i sak
   -
   -
   - NPS
   -
 * - Skjerming tittel registrering - unntatt første linje
   -
   -
   - TR1
   -
 * - Skjerming tittel registrering - utvalgte ord
   -
   -
   - TRO
   -
 * - Skjerming navn avsender
   -
   -
   - NA
   -
 * - Skjerming navn mottaker
   -
   -
   - NM
   -
 * - Skjerming tittel dokumentbeskrivelse
   -
   -
   - TD
   -
 * - Skjerming merknadstekst
   -
   -
   - MT
   -
 * - Midlertidig skjerming
   -
   -
   - M
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/slettingstype/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Sletting av produksjonsformat
   -
   -
   - SP
   -
 * - Sletting av tidligere versjon
   -
   -
   - SV
   -
 * - Sletting av variant med sladdet informasjon
   -
   -
   - SS
   -
 * - Sletting av hele innholdet i arkivdelen
   -
   -
   - SA
   -


.. list-table::
   :header-rows: 1

 * - **Relasjon**
   - **Kilde**
   - **Mål**
   - **Merknad**
 * - **Generalization** (Source → Destination)
   - SystemID
   - string
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/tilgangskategori/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - arkivdel
   -
   -
   - A
   -
 * - klasse
   -
   -
   - K
   -
 * - mappe
   -
   -
   - M
   -
 * - registrering
   -
   -
   - R
   -
 * - dokumentbeskrivelse
   -
   -
   - D
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/tilgangsrestriksjon/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Begrenset etter sikkerhetsinstruksen
   -
   -
   - B
   -
 * - Konfidensielt etter sikkerhetsinstruksen
   -
   -
   - K
   -
 * - Hemmelig etter sikkerhetsinstruksen
   -
   -
   - H
   -
 * - Fortrolig etter beskyttelsesinstruksen
   -
   -
   - F
   -
 * - Strengt fortrolig etter beskyttelsesinstruksen
   -
   -
   - SF
   -
 * - Unntatt etter offentlighetsloven § 5
   -
   -
   - 5
   -
 * - Unntatt etter offentlighetsloven § 5a
   -
   -
   - 5a
   -
 * - Unntatt etter offentlighetsloven § 6
   -
   -
   - 6
   -
 * - Unntatt etter offentlighetsloven § 11
   -
   -
   - 11
   -
 * - Midlertidig sperret
   -
   -
   - XX
   -
 * - Personalsaker
   -
   -
   - P
   -
 * - Klientsaker
   -
   -
   - KL
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/tilknyttetregistreringsom/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Hoveddokument
   -
   -
   - H
   -
 * - Vedlegg
   -
   -
   - V
   -


.. list-table::
   :header-rows: 1

 * - **Verdi**
 * - https://rel.arkivverket.no/noark5/v5/api/metadata/variantformat/


.. list-table::
   :header-rows: 1

 * - **Kodenavn**
   - **Merknad**
   - **Forek.**
   - **Kode**
   - **Type**
 * - Produksjonsformat
   -
   -
   - P
   -
 * - Arkivformat
   -
   -
   - A
   -
 * - Dokument hvor deler av innholdet er skjermet
   -
   -
   - O
   -


.. list-table::
   :header-rows: 1

 * - **Relasjonsnøkkel**
 * - https://rel.arkivverket.no/noark5/v5/api/sakarkiv/arkivnotat/
 * - https://rel.arkivverket.no/noark5/v5/api/sakarkiv/journalpost/
 * - https://rel.arkivverket.no/noark5/v5/api/sakarkiv/presedens/
 * - https://rel.arkivverket.no/noark5/v5/api/sakarkiv/saksmappe/

















