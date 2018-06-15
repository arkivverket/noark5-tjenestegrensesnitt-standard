# Tjenester og informasjonsmodell

## Om UML og notasjon som er benyttet
|         |            |
| ------------- |---------------  | 
|![](./media/uml-forklaring-om-notasjon-som-er-brukt.png) | ***Klassediagram*** brukes for å vise utvalgte klasser i en UML-modell. Klassediagram ***trenger ikke være fullstendige***, hverken mhp hvilke klasser som vises eller hvilke assosiasjoner somvises. For kompliserte modeller (som NOARK-modellen) trengs flere klassediagram for å vise hele modellen. |
|![](./media/uml-klasse-konspetet-bruker-registrering-som-eksempel.png) |I et ***klassediagram*** vises en klasse som en firkantet boks. ***Klassenavnet*** står i øverste «etasje», og er i eksempelet Registrering. ***Klasseattributtene*** karakteriserer klassen, og listes opp en i nest øverste etasje (i eksempelet i alt 7, den første/øverste har navnet arkivertDato). Firkanten kan også ha flere frivillige etasjer for å vise mer informasjon. I klassen Registrering vises en «etasje» med notes (ofte brukt for ***klassedefinisjon***) |
|![](./media/uml-assosiasjoner-brukt-med-klasser.png") | Klasser kan knyttes sammen med ***assosiasjoner***. Assosiasjoner vises som streker mellom to klasser. En assosiasjon der begge ender er knytta til samme klasse kalles ***selv-assosiasjon***. Eksempel: Mappe kan ha undermappe med samme struktur som mappa selv. Dette brukes der en trenger et hierarki av like klasser. En assosiasjon kan være ***aggregering***. Symbolet er en strek mellom to klasser med åpen diamant i ene enden. Eksempel: Ei Mappe ***har*** Registrering(er). En registrering er en selvstendig enhet, som «overlever» selv om Mappa blir sletta. |
|![](./media/uml-generalisering-brukt-med-klasser.png) | Assosiasjoner kan være ***generalisering/spesialisering***. Symbolet er en strek med en trekant i ene enden. Eksempel er Basisregistrering som er en generalisering av Journalpost og Møteregistrering. En kan også si at Journalpost er en spesialisering av basisregistrering. I Basisregistrering legges alle felles-kjennetegnene. Felleskjennetegnene arves så ned på Journalpost og Møteregistrering. Dette leses som Journalpost ***er en*** Basisregistrering. Dersom en klasse er en spesialisering av en annen klasse som ikke er tatt med i diagrammet, skrives ofte navnet på den generaliserte klassen i øvre høyre hjørne av klasse-firkanten. I eksempelet kan vi derfor se at Basisregistrering er en spesialisering av Registrering, selv om klassen Registrering ikke finnes i diagrammet. |
|![](./media/uml-komposisjon-brukt-med-klasser.png) | En assosiasjon kan også være ***komposisjon***. Symbolet er en strek mellom to klasser med lukka diamant i den ene enden. En Basisregistrering ***har*** Korrespondansepart(er). En Korrespondansepart kan ikke eksistere uten at den er knytta til en mappe. Slettes («dør») basisregistreringen vil også korrespondanseparten bli sletta («vil dø»). Assosiasjonene forteller også hvilken vei de er ***navigerbare***. Symbolet for dette er piler i endene på streken. Eksempel: En basisregistrering «vet» hvilke korrespondansepart(er) som tilhører basisregistreringen, mens korrespondanseparten ikke vet hvilken basisregistrering den tilhører.|
|![](./media/uml-multiplisitet-brukt-med-klasser.png) | ***Multiplisiteten*** forteller hvor mange forekomster som kan inngå. Multiplisitet kan brukes i forbindelse med assosiasjoner og også på klasseattributter. Dette vises med minst ett tall, men ofte to tall med to prikker mellom (0..1). Det første tallet angir minimums-multiplisitet (så mange det minst må være), det andre tallet er maksimumsmultiplisitet (så mange det maksimalt kan være). Eksempel: En Mappe kan høre til ingen eller en (0..1) Klasse, mens en Klasse kan «ha» ingen eller flere (0..***) Mapper(er). Stjernesymbol brukes til å angi «mange» (ubestemt tall større enn 1).En klasseattributt har angitt multiplisitet med klammeparenteser ([0..1]). Klasseattributten nøkkelord kan forekomme ingen eller en gang. Når det ikke er angitt multiplisitet, skal dette oftest tolkes som (1..1). En Klasse skal alltid ha en klasseID, og kan bare ha en.|
|![](./media/uml-simple-datatyper-eller-primitiver.png) | Datatypene kan også være ***simple datatyper*** eller ***primitiver***. Disse brukes for å gi mulighet for restriksjoner også på primitivene. Epostadresse kan være modellert som en slik primitiv. Epost er en tekst-streng, men som i tillegg til å være tekst-streng også må oppfylle visse regler knytta til det å være gyldig epostadresse (bl.a. inneholde en og bare en forekomst av tegnet @). I eksempelet i figuren er SystemID en tekststreng (string) som i tillegg må oppfylle tilleggskrav. I store modeller kan det være hensiktsmessig å plassere ulike modell-elementer i ulike pakker. Da kan det også bli lettere for leseren å forstå modellen når han får vite hvilken pakke de ulike klassene er plassert i. Modellpakker kalles ofte ***navnerom*** (namespace) Dette kan angis foran klassenavnet, skilt fra klassenavnet med kolon (:). I eksempelet hører klassen SystemID til pakken/navnerommet Metadata og klassen string tilhører pakken/navnerommet BasicTypes.|

## Noark5v4 

### Noark5 kjerne arkivstruktur

Diagrammet viser pakkene som inngår i arkivstruktur kjernen

![](./media/uml-pakker-som-inngaar-i-loesninger-geointegrasjon-eksempel.png)

Figur: 1

### Noark5 spesialisering sakarkiv - (diagram)

Diagrammet viser oversikt over spesialiseringen sakarkiv

![](./media/uml-pakker-som-inngaar-i-loesninger-sakarkiv-eksempel.png)

Figur: 2

### Noark5 struktur - (diagram)

Diagrammet viser oversikt over pakker som kan inngå i en noark kjerne.

![](./media/uml-pakker-som-inngaar-i-loesninger-noark5-kjerne.png)

Figur: 3

### Noark5 elementlister - (diagram)

Diagrammet viser oversikt over alle klasser og hvor de er definert

![](./media/uml-pakker-og-tilhoerende-klasser.png)

Figur: 4


### Arkivstruktur 

Basis skjema for arkivstruktur og indre kjerne

#### Arkivenheter - (diagram)

![](./media/uml-arkivstruktur-arkivenhet-som-basis-klasse.png)

Figur: 5

#### BevaringOgKassasjon - (diagram)

![](./media/uml-arkivenheter-som-har-noe-med-bevaring-og-kassasjon-aa-gjoere.png)

Figur: 6

#### Hovedmodell - (diagram)

![](./media/uml-arkivstruktur-forklart-som-hovedmodell.png)

Figur: 7

#### Forenklet struktur - (diagram)

![](./media/uml-arkivstruktur-forenklet-modell.png)

Figur: 8

#### Arkiv og arkivdel - (diagram)

![](./media/uml-arkivstruktur-arkiv-og-arkivdel.png)

Figur: 9

#### Mappestrukturen - (diagram)

![](./media/uml-arkivstruktur-mappe-til-saksmappe.png)

Figur: 10

#### Mappe - (diagram)

![](./media/uml-arkivstruktur-mappe.png)

Figur: 11

#### Klassifikasjonssystem - (diagram)

![](./media/uml-arkivstruktur-klassifikasjon.png)

Figur: 12

#### Registrering - (diagram)

I fysiske sakarkiver har det vært vanlig å legge dokumenter som ikke
er journalføringspliktige - men som likevel er arkivpliktige (ikke
underlagt arkivbegrensning) - inn i saksomslaget uten at dette ble
registrert i journalen. Tilsvarende funksjonalitet bør også være mulig
i et elektronisk arkivsystem. Her må dokumentene nødvendigvis bli
registrert, men dette skal skje på en automatisk måte og med minst
mulig metadata. Denne typen dokumenter skal ikke kunne søkes fram
etter innhold, og de skal heller ikke inngå i den ordinære
identifikasjonen (nummereringen) av journalposter. Disse dokumentene
vil heller ikke komme på offentlig journal. Men de skal kunne inngå i
arkivuttrekk dersom de er bevaringsverdige, og det må være mulig å
skjerme dem internt. I Noark-4 ble dette kalt "loggede dokumenter". I
Noark 5 spesifiseres dette som en egen registreringstype kalt
registrering. En registrering inneholder alle metadata som er
nødvendig for å knytte registreringen til resten av
arkivstrukturen. Dette er metadata som også skal inngå i alle de andre
registreringstypene.  Metadata for registrering er derfor
obligatorisk, selv om det i selve løsningen ikke er implementert noen
funksjon for "arkivering uten journalføring".

![](./media/uml-arkivstruktur-registrering-til-basisregistrering-til-journalpost.png)

Figur: 13

#### Merknad - (diagram)

![](./media/uml-arkivstruktur-merknad.png)

Figur: 14

#### Dokumentbeskrivelse - (diagram)

![](./media/uml-arkivstruktur-dokumentbeskrivelse-og-dokumentobjekt.png)

Figur: 15

#### Arkivstruktur med attributter  - (diagram)

![](./media/uml-arkivstruktur-attributter.png)

Figur: 16

#### Kryssreferanse - (diagram)

![](./media/uml-arkivstruktur-kryssreferanse.png)

Figur: 17

#### Arkivstruktur alternativ - (diagram)

henter korrespondansepart objekt

![](./media/uml-arkivstruktur-omfattende-forklart.png)

Figur: 18

#### Skjerming - (diagram)

![](./media/uml-arkivstruktur-skjerming.png)

Figur: 19

#### Arkiv

*Type:* ***Class***

*Arver:* ***Arkivenhet***

Arkiv er det øverste nivået i arkivstrukturen. De fleste brukere vil
bare ha behov for å opprette ett arkiv i sin Noark 5-løsning. Men det
skal være mulig å opprette flere arkiver. Det kan være aktuelt dersom
flere organer deler samme løsning. Det kan også være aktuelt dersom en
hel etat deler samme løsning. Her kan da f.eks. hovedkontoret og hvert
distriktskontor settes opp med hvert sitt arkiv. Men ved elektronisk
arkivering er det heller ikke noe i veien for at hele etaten deler
samme arkiv, selv om de enkelte avdelinger er spredt over et stort
geografisk område.

Arkiv er obligatorisk i et arkivuttrekk. Toppnivået skal bare ha én
forekomst, men kan ha ett eller flere undernivåer, se om underarkiv
nedenfor. Et arkiv skal inneholde en eller flere arkivdeler. Dersom
arkivet består av underarkiver, skal arkivdel være knyttet til det
laveste nivået av disse.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>underarkiv</p>
<p>0..*</p>
<p>Arkiv</p></td>
<td>Arkiv</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Arkiv</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>arkivskaper</p>
<p>1..*</p>
<p>Arkivskaper</p></td>
<td><p>arkiv</p>
<p>0..*</p>
<p>Arkiv</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>arkivdel</p>
<p>0..*</p>
<p>Arkivdel</p></td>
<td><p>arkiv</p>
<p>1</p>
<p>Arkiv</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>underarkiv</p>
<p>0..*</p>
<p>Arkiv</p></td>
<td>Arkiv</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                      |
| --------- | -------------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/dokumentmedium/      |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/arkivskaper/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/arkivdel/       |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/arkiv/          |
| REST\_REL | self                                                           |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-arkivskaper/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/underarkiv/     |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/arkivstatus/         |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-arkivdel/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-arkiv/       |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>tittel</strong></td>
<td><p>Definisjon: Tittel eller navn på arkivenheten</p>
<p>Kilde: Registreres manuelt eller hentes automatisk fra innholdet i arkivdokumentet. Ja fra klassetittel dersom alle mapper skal ha samme tittel som klassen. Kan også hentes automatisk fra et fagsystem.</p>
<p>Kommentarer: For saksmappe og journalpost vil dette tilsvare &quot;Sakstittel&quot; og &quot;Dokumentbeskrivelse&quot;. Disse navnene kan beholdes i grensesnittet.</p>
<p>M020</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>beskrivelse</strong></td>
<td><p>Definisjon: Tekstlig beskrivelse av arkivenheten</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentarer: Tilsvarende attributt finnes ikke i Noark 4 (men noen tabeller hadde egne attributter for merknad som kunne brukes som et beskrivelsesfelt)</p>
<p>M021</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>arkivstatus</strong></td>
<td><p>Definisjon: Status til arkivet</p>
<p>Kilde: Registreres manuelt når arkivet opprettes eller ved skifte av status.</p>
<p>Kommentarer: (ingen)</p>
<p>M050</p></td>
<td>[0..1]</td>
<td></td>
<td>Arkivstatus</td>
</tr>
<tr class="even">
<td><strong>dokumentmedium</strong></td>
<td><p>Definisjon: Angivelse av om arkivenheten inneholder fysiske dokumenter, elektroniske dokumenter eller en blanding av fysiske og elektroniske dokumenter</p>
<p>Kilde: Arves fra overordnet nivå, kan overstyres manuelt</p>
<p>Kommentarer: Obligatorisk ved blanding av fysisk og elektronisk arkiv. Er hele arkivet enten fysisk eller elektronisk, er det tilstrekkelig med verdi på arkivnivå. Er en hel arkivdel enten fysisk eller elektronisk, er det tilstrekkelig å angi det på arkivdelnivå. Dersom underordnede arkivdeler inneholder både fysiske og elektroniske dokumenter, må informasjon om dette arves nedover i hierarkiet. Se også kommentar til M208 referanseArkivdel.</p>
<p>M300</p></td>
<td>[0..1]</td>
<td></td>
<td>Dokumentmedium</td>
</tr>
<tr class="odd">
<td><strong>oppbevaringssted</strong></td>
<td><p>Definisjon: Stedet hvor de fysiske dokumentene oppbevares. Kan være angivelse av rom, hylle, skap osv. Overordnede arkivdeler (f.eks. en arkivdel) kan oppbevares på flere steder.</p>
<p>Kilde: Arves fra overordnet nivå, kan overstyres manuelt</p>
<p>Kommentarer: Fysiske dokumenters plassering skal ellers gå fram av arkivstrukturen. Fysiske dokumenter i et sakarkiv skal i utgangspunktet være ordnet i overordnede omslag (f.eks. hengemapper) etter stigende klasseID. Innenfor hver av disse skal omslagene skal dokumentene ligge i fysiske saksmapper som er ordnet etter stigende mappeID. Innenfor saksmappene skal dokumentene være ordnet etter stigende journalpostnummer (&quot;dokumentnummer&quot;). Vedlegg skal legges sammen med tilhørende hoveddokument.</p>
<p>M301</p></td>
<td>[0..*]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>avsluttetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble avsluttet/lukket</p>
<p>Kilde: Registreres automatisk av systemet når enheten avsluttes</p>
<p>Kommentarer: (ingen)</p>
<p>M602</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>avsluttetAv</strong></td>
<td><p>Definisjon: Navn på person som avsluttet/lukket arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M603</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referanseAvsluttetAv</strong></td>
<td>referanse til Bruker sin systemID</td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>5.2.1 En Noark 5-løsning skal kunne bestå av ett eller flere selvstendige Arkiv</td>
<td></td>
</tr>
<tr class="even">
<td>5.2.2 Det skal være mulig å opprette ingen, ett eller flere Arkiv for en Arkivskaper (virksomhet) og det skal være mulig å angi at flere arkivskapere sammen skaper ett Arkiv.</td>
<td></td>
</tr>
<tr class="odd">
<td>5.2.3 Et Arkiv skal bestå av en eller flere arkivdeler og en Arkivdel skal inngå i (kun) ett Arkiv.</td>
<td></td>
</tr>
<tr class="even">
<td>5.2.4 Dersom Arkiv er registrert som ”Avsluttet”, skal det ikke være mulig å legge til flere underliggende Arkivdeler.</td>
<td></td>
</tr>
<tr class="odd">
<td>5.2.5 Når en tjeneste/funksjon sletter et helt Arkiv med alle underliggende nivå, skal dette logges.</td>
<td></td>
</tr>
<tr class="even">
<td><p>5.2.6 Det skal ikke være mulig å endre dato for opprettelse av</p>
<p>Arkiv.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.2.7 Det skal ikke være mulig å slette dato for opprettelse av</p>
<p>Arkiv.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.2.8 Det skal ikke være mulig å slette dato for avslutning av</p>
<p>Arkiv.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.2.9 Det skal være mulig å definere statusverdier for Arkiv. Følgende verdier er anbefalt:</p>
<p>Opprettet, Avsluttet</p></td>
<td></td>
</tr>
<tr class="even">
<td>5.2.10 Et Arkiv bør kunne inndeles i et hierarki (skissert i modellen ved bruk av egenrelasjon) av Underarkiver.</td>
<td><p>/* Merknad: Det bør være mulig med ett eller flere nivåer under Arkiv, f.eks. for å representere fysiske delarkiver.</p>
<p>Dette kan være aktuelt for virksomheter som har arkiver</p>
<p>fysisk plassert på flere forskjellige steder.</p>
<p>*/</p></td>
</tr>
<tr class="odd">
<td>5.2.11 Systemet bør ha en tjeneste/funksjon for å angi et Arkiv som Underarkiv til et Arkiv.</td>
<td></td>
</tr>
<tr class="even">
<td>5.2.12 Et Underarkiv skal kun opprettes og endres gjennom Administrasjonssystemet for Noark 5.</td>
<td></td>
</tr>
<tr class="odd">
<td>Ny - Når arkivet settes &quot;Avsluttet&quot; så skal avsluttetDato og avsluttetAv registreres</td>
<td></td>
</tr>
<tr class="even">
<td>Ny - Etter registrering av arkiv skal systemID, opprettetAv og opprettetDato være utfylt</td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.13.4 Et Arkiv og arkivets metadata skal kun opprettes</p>
<p>gjennom Administratorfunksjonen for Noark 5 kjerne.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.13.5 Et Underarkiv skal kun defineres og endres gjennom</p>
<p>Administratorfunksjonen for Noark 5 kjerne.</p></td>
<td></td>
</tr>
<tr class="odd">
<td>avsluttetAv_M603A</td>
<td>avsluttetAv: Skal ikke kunne endres</td>
</tr>
<tr class="even">
<td>avsluttetAv_M603B</td>
<td>avsluttetAv: Obligatorisk dersom arkivenheten er avsluttet.</td>
</tr>
<tr class="odd">
<td>avsluttetDato_M602A</td>
<td>avsluttetDato: Skal ikke kunne endres.</td>
</tr>
<tr class="even">
<td>avsluttetDato_M602B</td>
<td>avsluttetDato: Obligatorisk dersom arkivenheten er avsluttet.</td>
</tr>
<tr class="odd">
<td>tittel_M020</td>
<td>tittel: Skal normalt ikke kunne endres etter at enheten er lukket, eller dokumentene arkivert</td>
</tr>
</tbody>
</table>

#### Arkivdel

*Type:* ***Class***

*Arver:* ***Arkivenhet***

Et arkiv skal kunne deles opp i arkivdeler for å gruppere arkivet
etter overordnede kriterier. De viktigste kriteriene for oppdeling i
arkivdeler er:

 - Skille mellom aktivt arkiv og avsluttede arkivperioder
   (tradisjonelt kalt bortsettingsarkiver). Viktige funksjoner i
   forbindelse med periodisering og produksjon av arkivuttrekk er
   knyttet til en arkivdel.
 - Skille mellom mapper som skal periodiseres etter forskjellige
   prinsipper. Emneordnede saksmapper kan periodiseres f.eks. hvert
   femte år, mens personalmapper kan beholdes i et aktiv arkiv så
   lenge en person er ansatt.
 - Skille mellom saksmapper som er klassifisert etter forskjellige
   prinsipper.
 - Skille mellom elektronisk arkiv og fysisk arkiv. Hovedregelen er at
   hele mapper enten skal være fysiske eller elektroniske. Men det kan
   gis dispensasjon fra denne regelen, slik at enkelte registreringer
   kan være fysiske og andre elektroniske i samme mappe.  Dersom et
   stort vedlegg (f.eks. en trykksak) ikke er blitt skannet, kan også
   fysiske dokumenter forekomme sammen med elektroniske dokumenter i
   samme registrering (journalpost).
 - Skille mellom sakarkivet og andre typer arkiver, f.eks. arkiver
   tilknyttet fagsystemer.  Noen vil ha behov for et klart skille
   mellom de administrative sakene og fagsakene. Det vil også være et
   behov for å skille ut møtedokumenter.
 - Skille mellom mapper, registreringer eller dokumenttyper som skal
   bevares eller som skal kasseres.
 - Skille mellom mapper, registreringer eller dokumenttyper som er
   offentlige eller som skal skjermes.

Arkivdel er obligatorisk i et arkivuttrekk, og skal forekomme én eller
flere ganger i et arkiv.  Dersom arkivet er delt opp i underarkiver,
skal arkivdel bare kunne knyttes til det laveste arkivnivået. Dersom
det dreier seg om et sakarkiv, skal arkivdelen inneholde et primært
klassifikasjonssystem. Arkivdelen kan i tillegg inneholde et eller
flere sekundære klassifikasjonssystemer. I et fagsystem uten
klassifikasjon, skal arkivdelen inneholde én eller flere mapper. I et
fagsystem uten klassifikasjon og mapper, skal arkivdelen inneholde én
eller flere registreringer.

Arkivdeler kan brukes til å skille ut dokumenter som skal kasseres
etter andre regler enn resten av dokumentene i mappen (f.eks. alle
inngående dokumenter) eller registreringen (f.eks. alle
vedlegg). Slike regler kan da knyttes til en egen arkivdel.  Se mer om
dette i NOARK 5 v3.1 kapittel 5.10 Bevaring og kassasjon, om kassasjon
av dokumenttyper.  Det samme gjelder dokumenter som skal skjermes
etter andre regler enn resten av dokumentene i mappen eller
registreringen. Se mer under NOARK 5 v3.1 kapittel 6.6.1 Skjerming.

Dessuten kan det være tilfeller hvor noen dokumenter i en mappe eller
registrering er arkivert på papir, mens resten av dokumentene er
elektroniske. En egen arkivdel skiller da ut disse dokumentene.

Arkivdeler som brukes til å angi andre kassasjonsvedtak,
skjermingsregler og dokumentmedium enn de som gjelder for resten av
innholdet i arkivet, vil være "tomme" – dvs. de har ikke egne
barn. Mapper, registreringer og dokumentbeskrivelse som har referanse
til slike arkivdeler, skal arve metadata fra disse. Disse mappene,
registreringene og dokumentbeskrivelsene vil indirekte også tilhøre
arkivdelen som er utgangspunktet for den hierarkiske arkivstrukturen,
men arv herfra blir overstyrt.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Arkivdel</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>arkivdel</p>
<p>0..*</p>
<p>Arkivdel</p></td>
<td><p>arkiv</p>
<p>1</p>
<p>Arkiv</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>klassifikasjonssystem</p>
<p>0..1</p>
<p>Klassifikasjonssystem</p></td>
<td><p>arkivdel</p>
<p>1..*</p>
<p>Arkivdel</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>registrering</p>
<p>0..*</p>
<p>Registrering</p></td>
<td><p>arkivdel</p>
<p>0..1</p>
<p>Arkivdel</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>mappe</p>
<p>0..*</p>
<p>Mappe</p></td>
<td><p>arkivdel</p>
<p>0..1</p>
<p>Arkivdel</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>sekundærklassifikasjonssystem</p>
<p>0..*</p>
<p>Klassifikasjonssystem</p></td>
<td>Arkivdel</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                                |
| --------- | ------------------------------------------------------------------------ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-arkivdel/              |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-registrering/          |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-mappe/                 |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-arkiv/                 |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/arkivdel/                 |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-klassifikasjonssystem/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/registrering/             |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/klassifikasjonssystem/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/arkiv/                    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/mappe/                    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/dokumentmedium/                |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/arkivdelstatus/                |
| REST\_REL | self                                                                     |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>tittel</strong></td>
<td><p>Definisjon: Tittel eller navn på arkivenheten</p>
<p>Kilde: Registreres manuelt eller hentes automatisk fra innholdet i arkivdokumentet. Ja fra klassetittel dersom alle mapper skal ha samme tittel som klassen. Kan også hentes automatisk fra et fagsystem.</p>
<p>Kommentarer: For saksmappe og journalpost vil dette tilsvare &quot;Sakstittel&quot; og &quot;Dokumentbeskrivelse&quot;. Disse navnene kan beholdes i grensesnittet.</p>
<p>M020</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>beskrivelse</strong></td>
<td><p>Definisjon: Tekstlig beskrivelse av arkivenheten</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentarer: Tilsvarende attributt finnes ikke i Noark 4 (men noen tabeller hadde egne attributter for merknad som kunne brukes som et beskrivelsesfelt)</p>
<p>M021</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>arkivdelstatus</strong></td>
<td><p>Definisjon: Status til den arkivperioden som arkivdelen omfatter</p>
<p>Kilde: Registreres manuelt når arkivdelen opprettes eller ved skifte av status.</p>
<p>Kommentarer: Arkivdeler som avleveres skal ha status &quot;Avsluttet periode&quot;</p>
<p>M051</p></td>
<td>[1..1]</td>
<td></td>
<td>Arkivdelstatus</td>
</tr>
<tr class="even">
<td><strong>dokumentmedium</strong></td>
<td><p>Definisjon: Angivelse av om arkivenheten inneholder fysiske dokumenter, elektroniske dokumenter eller en blanding av fysiske og elektroniske dokumenter</p>
<p>Kilde: Arves fra overordnet nivå, kan overstyres manuelt</p>
<p>Kommentarer: Obligatorisk ved blanding av fysisk og elektronisk arkiv. Er hele arkivet enten fysisk eller elektronisk, er det tilstrekkelig med verdi på arkivnivå. Er en hel arkivdel enten fysisk eller elektronisk, er det tilstrekkelig å angi det på arkivdelnivå. Dersom underordnede arkivdeler inneholder både fysiske og elektroniske dokumenter, må informasjon om dette arves nedover i hierarkiet. Se også kommentar til M208 referanseArkivdel.</p>
<p>M300</p></td>
<td>[0..1]</td>
<td></td>
<td>Dokumentmedium</td>
</tr>
<tr class="odd">
<td><strong>oppbevaringssted</strong></td>
<td><p>Definisjon: Stedet hvor de fysiske dokumentene oppbevares. Kan være angivelse av rom, hylle, skap osv. Overordnede arkivdeler (f.eks. en arkivdel) kan oppbevares på flere steder.</p>
<p>Kilde: Arves fra overordnet nivå, kan overstyres manuelt</p>
<p>Kommentarer: Fysiske dokumenters plassering skal ellers gå fram av arkivstrukturen. Fysiske dokumenter i et sakarkiv skal i utgangspunktet være ordnet i overordnede omslag (f.eks. hengemapper) etter stigende klasseID. Innenfor hver av disse skal omslagene skal dokumentene ligge i fysiske saksmapper som er ordnet etter stigende mappeID. Innenfor saksmappene skal dokumentene være ordnet etter stigende journalpostnummer (&quot;dokumentnummer&quot;). Vedlegg skal legges sammen med tilhørende hoveddokument.</p>
<p>M301</p></td>
<td>[0..*]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>avsluttetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble avsluttet/lukket</p>
<p>Kilde: Registreres automatisk av systemet når enheten avsluttes</p>
<p>Kommentarer: (ingen)</p>
<p>M602</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>avsluttetAv</strong></td>
<td><p>Definisjon: Navn på person som avsluttet/lukket arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M603</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referanseAvsluttetAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="odd">
<td><strong>arkivperiodeStartDato</strong></td>
<td><p>Definisjon: Dato for starten av en arkivperiode</p>
<p>Kilde: Settes automatisk til samme dato som M600 opprettetDato</p>
<p>Kommentarer: Det kan tenkes tilfeller hvor startdatoen ikke er identisk med datoen arkivdelen ble opprettet</p>
<p>M107</p></td>
<td>[0..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="even">
<td><strong>arkivperiodeSluttDato</strong></td>
<td><p>Definisjon: Dato for slutten av en arkivperiode</p>
<p>Kilde: Settes automatisk til samme dato som M602 avsluttetDato</p>
<p>Kommentarer: Det kan forekomme tilfeller hvor sluttdatoen ikke er identisk med datoen arkivdelen ble avsluttet.</p>
<p>M108</p></td>
<td>[0..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="odd">
<td><strong>referanseForløper</strong></td>
<td>M202</td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>referanseArvtaker</strong></td>
<td>M203</td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="odd">
<td><strong>kassasjon</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Kassasjon</td>
</tr>
<tr class="even">
<td><strong>utførtKassasjon</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>UtførtKassasjon</td>
</tr>
<tr class="odd">
<td><strong>sletting</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Sletting</td>
</tr>
<tr class="even">
<td><strong>skjerming</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Skjerming</td>
</tr>
<tr class="odd">
<td><strong>gradering</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Gradering</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>5.2.13 En Arkivdel kan ha registrert ingen eller ett preferert</p>
<p>Klassifikasjonssystem og et Klassifikasjonssystem kan</p>
<p>inngå i ingen, en eller flere Arkivdel(er).</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.2.14 En Arkivdel kan ha registrert ingen eller en Skjerming og</p>
<p>en Skjerming kan inngå i ingen, en eller flere Arkivdeler</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.2.15 En Arkivdel kan ha registrert ingen eller en Bevaring og</p>
<p>kassasjon og en Bevaring og kassasjon kan inngå i ingen,</p>
<p>en eller flere Arkivdeler.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.2.16 En Arkivdel kan ha tilknyttet (inneholde) ingen, en eller</p>
<p>flere Mapper.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.2.17 Når en tjeneste/funksjon sletter en Arkivdel, skal dette</p>
<p>logges.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.2.18 Det skal finnes en tjeneste/funksjon for å ajourholde</p>
<p>primært Klassifikasjonssystem for en Arkivdel.</p>
<p>(referanseKlassifikasjonssystem)</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.2.19 Dersom Arkivdel er registrert som avsluttet (avsluttetDato</p>
<p>er satt) skal det ikke være mulig å legge til flere</p>
<p>tilhørende Mapper eller Registreringer</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.2.20 En arkivdel skal inneholde informasjon om hvilken</p>
<p>status arkivperioden har.</p></td>
<td><p>/*</p>
<p>Autoriserte brukere skal kunne</p>
<p>endre statusverdier. Obligatoriske verdier er:</p>
<p>1. Aktiv periode</p>
<p>2. Overlappingsperiode</p>
<p>3. Avsluttet periode</p>
<p>Andre verdier kan brukes ved behov.</p>
<p>*/</p></td>
</tr>
<tr class="odd">
<td><p>5.2.21 En arkivdel skal inneholde dato for når arkivperioden</p>
<p>starter.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.2.22 En avsluttet arkivdel skal inneholde dato for når</p>
<p>perioden ble avsluttet.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.2.23 En arkivdel skal inneholde informasjon om de</p>
<p>tilhørende dokumentene er fysiske eller elektroniske.</p></td>
<td></td>
</tr>
<tr class="even">
<td>Ny - arkivdel kan ha liste med enten klassifikasjonssystem eller mapper</td>
<td></td>
</tr>
<tr class="odd">
<td>Ny - Når arkivdel settes &quot;Avsluttet&quot; så skal avsluttetDato og avsluttetAv registreres</td>
<td></td>
</tr>
<tr class="even">
<td>Ny - Etter registrering av arkivdel skal systemID, opprettetAv og opprettetDato være utfylt</td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.10.1 En Arkivdel skal kunne ha registrert ingen eller ett</p>
<p>Kassasjonsvedtak og et Kassasjonsvedtak kan inngå i</p>
<p>ingen, en eller flere Arkivdeler.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.10.8 Det skal finnes en tjeneste/funksjon for å ajourholde</p>
<p>kassasjonsvedtak, kassasjonshjemmel og bevaringstid</p>
<p>for en Arkivdel.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.10.9 Metadata om bevaring og kassasjon på en Arkivdel skal</p>
<p>kunne arves til Mappe, Registrering og</p>
<p>Dokumentbeskrivelse.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.10.10 Dersom arv av metadata om bevaring og kassasjon skal</p>
<p>skje fra arkivdel, skal dette overstyre arv av metadata fra</p>
<p>klassene.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.10.16 Det skal være mulig å slå av funksjonen for arv fra</p>
<p>klasser og arkivdeler, slik at metadata om bevaring og</p>
<p>kassasjon ikke arves til underliggende mapper.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.11.1 En arkivdel skal kunne inneholde en tekstlig beskrivelse</p>
<p>av hvilke prinsipper den skal periodiseres etter.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.11.2 En arkivdel skal inneholde referanser til eventuelle</p>
<p>forløpere og arvtakere.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.11.4 En arkivdel som inneholder en overlappingsperiode,</p>
<p>skal være sperret for tilføyelse av nyopprettede mapper.</p>
<p>Men eksisterende mapper i en overlappingsperiode skal</p>
<p>være åpne for nye registreringer</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.11.5 Dersom en ny registrering føyes til en mappe som</p>
<p>tilhører en arkivdel i overlappingsperiode, skal mappen</p>
<p>automatisk overføres til arkivdelens arvtaker.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.11.6 En arkivdel som inneholder en avsluttet arkivperiode,</p>
<p>skal være sperret for tilføyelse av nye mapper. Alle</p>
<p>mapper skal være lukket, slik at heller ingen</p>
<p>registreringer og dokumenter kan føyes til.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.11.7 Det skal være umulig å avslutte en arkivdel i</p>
<p>overlappingsperiode dersom den fremdeles inneholder</p>
<p>åpne mapper.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.11.13 Dersom dokumentene i en arkivdel er ikke-elektroniske</p>
<p>(fysiske), skal det også være mulig å registrere</p>
<p>oppbevaringssted.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.13.6 En Arkivdel og arkivdelens metadata skal kun opprettes</p>
<p>og endres gjennom Administratorfunksjonen for</p>
<p>Noark 5 kjerne.</p></td>
<td></td>
</tr>
<tr class="even">
<td>6.6.9 - 6.6.19 rettighetsangivelser</td>
<td></td>
</tr>
<tr class="odd">
<td><p>6.6.25 Det skal finnes en tjeneste/funksjon for å ajourholde</p>
<p>opplysninger om skjermingskode (skjermingsgrad,</p>
<p>skjermingshjemmel og skjermingsvarighet) for en verdi</p>
<p>av Arkivdel, klasse, Mappe, Registrering og</p>
<p>Dokumentbeskrivelse</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>6.6.26 Skjerming bør kunne arves til mappe, journalpost,</p>
<p>dokumentbeskrivelse og dokumentobjekt.</p>
<p>Arvede verdier skal kunne overstyres.</p></td>
<td></td>
</tr>
<tr class="odd">
<td>M020 tittel: Skal normalt ikke kunne endres etter at enheten er lukket, eller dokumentene arkivert</td>
<td></td>
</tr>
<tr class="even">
<td>M107 arkivperiodeStartDato: Skal kunne endres manuelt</td>
<td></td>
</tr>
<tr class="odd">
<td>M108 arkivperiodeSluttDato: Skal kunne endres manuelt</td>
<td></td>
</tr>
<tr class="even">
<td>M601 avsluttetDato: Skal ikke kunne endres. Obligatorisk dersom arkivdelen er avsluttet.</td>
<td></td>
</tr>
<tr class="odd">
<td>M603 avsluttetAv: Skal ikke kunne endres. Obligatorisk dersom arkivenheten er avsluttet.</td>
<td></td>
</tr>
</tbody>
</table>

#### Arkivenhet

*Type:* ***Class***

*Arver:* 

En arkivenhet (se NOARK 5 v3.1 krav 5.1.2 og 5.1.3) skal kunne
identifiseres entydig innenfor det arkivskapende organet. I et
arkivuttrekk skal denne identifikasjonen hete systemID, og være
entydig på tvers av alle uttrekk som organet produserer, dermed også
på tvers av alle systemer organet benytter. Også arkivenheter som
dupliseres i et arkivuttrekk, skal identifiseres entydig, slik at
identiske arkivenheter har ulik systemID.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Arkivdel</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>logg</p>
<p>0..*</p>
<p>Hendelseslogg</p></td>
<td><p>0..1</p>
<p>Arkivenhet</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Klassifikasjonssystem</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Arkiv</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Mappe</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Klasse</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Arkivskaper</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Registrering</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Dokumentbeskrivelse</td>
<td>Arkivenhet</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                        |
| --------- | ---------------------------------------------------------------- |
| NEW       | 5.4.0                                                            |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-hendelseslogg/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/logg/             |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>systemID</strong></td>
<td><p>M001</p>
<p>Entydig identifikasjon av arkivenheten innenfor det arkivskapende organet. Dersom organet har flere arkivsystemer, skal altså <em>systemID</em> være gjennomgående entydig. Systemidentifikasjonen vil som oftest være en nummerisk kode uten noe logisk meningsinnhold. Identifikasjonen trenger ikke å være synlig for brukerne.</p>
<p>Registreres automatisk av systemet</p>
<p>Skal ikke kunne endres</p>
<p>Alle referanser fra en arkivenhet til en annen skal peke til arkivenhetens systemidentifikasjon. Dette gjelder også referanser fra en arkivdel til en annen, f.eks. mellom to arkivperioder som avleveres på forskjellig tidspunkt. I et arkivuttrekk skal <em>systemID</em> være entydig (unik). Dokumentobjekt har ingen systemidentifikasjon fordi enheten kan være duplisert i et arkivuttrekk dersom samme dokumentfil er knyttet til flere forskjellige registreringer.</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>oppdatertDato</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>opprettetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble opprettet/registrert</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M600</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="even">
<td><strong>opprettetAv</strong></td>
<td><p>Definisjon: Navn på person som opprettet/registrerte arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M601</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>oppdatertAv</strong></td>
<td><p>Definisjon: Navn på person som oppdaterte arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved oppdatering av enheten</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referanseOppdatertAv</strong></td>
<td><p>Definisjon: SystemID på person som oppdaterte arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved oppdatering av enheten</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="odd">
<td><strong>referanseOpprettetAv</strong></td>
<td><p>Definisjon: SystemID på person som opprettet/registrerte arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**                                          | **Merknad** |
| ------------------------------------------------- | ----------- |
| Ny - Etter registrering skal systemID være utfylt |             |
| M001 systemID: Skal ikke kunne endres             |             |
| M600 opprettetDato: Skal ikke kunne endres        |             |
| M601 opprettetAv: Skal ikke kunne endres          |             |

#### Arkivskaper

*Type:* ***Class***

*Arver:* ***Arkivenhet***

Tradisjonelt har et arkiv blitt definert etter organisasjon. Ett organ
skaper ett arkiv, dvs.  organet er arkivskaperen. Men elektronisk
informasjonsteknologi har ført til at det blir stadig vanligere at
flere arkivskapere sammen skaper ett arkiv. Arkivet vil da være
definert etter funksjon, ikke organisasjon.

I en Noark 5-løsning skal det altså være mulig å knytte en eller flere
arkivskapere til ett arkiv.  Informasjon om arkivskapere er
obligatorisk i arkivuttrekk.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>arkivskaper</p>
<p>1..*</p>
<p>Arkivskaper</p></td>
<td><p>arkiv</p>
<p>0..*</p>
<p>Arkiv</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Arkivskaper</td>
<td>Arkivenhet</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                      |
| --------- | -------------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/arkivskaper/    |
| REST\_REL | self                                                           |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-arkivskaper/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-arkiv/       |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/arkiv/          |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>arkivskaperID</strong></td>
<td><p>Definisjon: Unik ID for arkivskaperen</p>
<p>Kilde: Registreres manuelt ved opprettelsen av arkivet</p>
<p>Kommentar: Kan være organisasjonsnummer (Brønnøysundregistrene) eller annen identifikasjon avtalt med arkivdepotet</p>
<p>M006</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>arkivskaperNavn</strong></td>
<td><p>Definisjon: Navn på organisasjonen som har skapt arkivet</p>
<p>Kilde: Registreres manuelt ved opprettelsen av arkivet.</p>
<p>Kommentarer: (ingen)</p>
<p>M023</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>beskrivelse</strong></td>
<td><p>Definisjon: Tekstlig beskrivelse av arkivenheten</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentarer: Tilsvarende attributt finnes ikke i Noark 4 (men noen tabeller</p>
<p>hadde egne attributter for merknad som kunne brukes som et</p>
<p>beskrivelsesfelt)</p>
<p>M021</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**                                          | **Merknad** |
| ------------------------------------------------- | ----------- |
| Ny - Etter registrering skal systemID være utfylt |             |

#### Basisregistrering

*Type:* ***Class***

*Arver:* ***Registrering***

En basisregistrering inneholder alle metadata fra registrering, samt
andre metadata som er obligatoriske i alle typer arkivsystemer. En
basisregistrering kan danne utgangspunkt for andre registreringstyper
for spesialiserte fagsystemer

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Basisregistrering</td>
<td>Registrering</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>kryssreferanse</p>
<p>0..*</p>
<p>Kryssreferanse</p></td>
<td><p>registrering</p>
<p>0..1</p>
<p>Basisregistrering</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Møteregistrering</td>
<td>Basisregistrering</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Journalpost</td>
<td>Basisregistrering</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>merknad</p>
<p>0..*</p>
<p>Merknad</p></td>
<td>Basisregistrering</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                            |
| --------- | -------------------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/merknad/              |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/dokumentmedium/            |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-kryssreferanse/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-basisregistrering/ |
| REST\_REL | self                                                                 |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-merknad/           |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/basisregistrering/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/kryssreferanse/       |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>registreringsID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av registreringen innenfor arkivet. Andre arkiver innenfor samme system kan inneholde den samme koden. Koden kan være rent nummerisk, men kan også ha en logisk oppbygging. Merk at registreringsID er identisk med saksår og sekvensnummer (oftest bare kalt &quot;saksnummer&quot;) i kombinasjon med &quot;dokumentnummer&quot; i Noark 4, se kommentar.</p>
<p>Kilde: Registreres automatisk av systemet etter interne regler</p>
<p>Kommentarer: Saksnummer og dokumentnummer (f.eks. 2011/3869-8, dvs. dokumentnummer 8 i saksnummer 2011/3869) er ikke lenger obligatorisk identifikasjon i Noark 5, men det anbefales at dette mønsteret fremdeles brukes i sakarkiver. I slike tilfeller skal verdien for &quot;dokumentnummer&quot; kopieres til M015 journalpostnummer i journalposten.</p>
<p>M004</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>tittel</strong></td>
<td><p>Definisjon: Tittel eller navn på arkivenheten</p>
<p>Kilde: Registreres manuelt eller hentes automatisk fra innholdet i arkivdokumentet. Ja fra klassetittel dersom alle mapper skal ha samme tittel som klassen. Kan også hentes automatisk fra et fagsystem.</p>
<p>Kommentarer: For saksmappe og journalpost vil dette tilsvare &quot;Sakstittel&quot; og &quot;Dokumentbeskrivelse&quot;. Disse navnene kan beholdes i grensesnittet.</p>
<p>M020</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>offentligTittel</strong></td>
<td><p>Definisjon: Offentlig tittel på arkivenheten, ord som skal skjermes er fjernet fra innholdet i tittelen (erstattet med ******)</p>
<p>Kilde: (ingen)</p>
<p>Kommentarer: I løpende og offentlig journaler skal også offentligTittel være med dersom ord i tittelfeltet skal skjermes.</p>
<p>M025</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>beskrivelse</strong></td>
<td><p>Definisjon: Tekstlig beskrivelse av arkivenheten</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentarer: Tilsvarende attributt finnes ikke i Noark 4 (men noen tabeller hadde egne attributter for merknad som kunne brukes som et beskrivelsesfelt)</p>
<p>M021</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>nøkkelord</strong></td>
<td><p>Definisjon: Nøkkeord eller stikkord som beskriver innholdet i enheten</p>
<p>Kilde: Registreres vanligvis ved oppslag fra liste (f.eks. en tesaurus). Kan også registreres automatisk på grunnlag av dokumentinnhold eller integrering med fagsystem.</p>
<p>Kommentarer: Nøkkelord kan brukes for å forbedre mulighetene for søking og gjenfinning. Nøkkelord skal ikke erstatte klassifikasjon.</p>
<p>M022</p></td>
<td>[0..*]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>forfatter</strong></td>
<td><p>Definisjon: Navn på person (eller eventuelt organisasjon) som har forfattet eller skapt dokumentet.</p>
<p>Kilde: Registreres automatisk av systemet, automatisk fra innholdet i dokumentet eller manuelt</p>
<p>Kommentarer: Sakarkiver har tradisjonelt ikke noen forfatter på journalposten, men kan eventuelt ha det på dokumentbeskrivelsen. I en journalpost vil derfor forfatter vanligvis være forstått som M307 saksbehandler (utgående og organinterne dokumenter) eller eventuelt M400 korrespondansepartNavn (ved inngående dokumenter). Fagsystemer uten korrespondansedokumenter bør normal ha en forfatter. Her kan personnavn eventuelt erstattes med en kilde (f.eks. et system).</p>
<p>M024</p></td>
<td>[0..*]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>dokumentmedium</strong></td>
<td><p>Definisjon: Angivelse av om arkivenheten inneholder fysiske dokumenter, elektroniske dokumenter eller en blanding av fysiske og elektroniske dokumenter</p>
<p>Kilde: Arves fra overordnet nivå, kan overstyres manuelt</p>
<p>Kommentarer: Obligatorisk ved blanding av fysisk og elektronisk arkiv. Er hele arkivet enten fysisk eller elektronisk, er det tilstrekkelig med verdi på arkivnivå. Er en hel arkivdel enten fysisk eller elektronisk, er det tilstrekkelig å angi det på arkivdelnivå. Dersom underordnede arkivdeler inneholder både fysiske og elektroniske dokumenter, må informasjon om dette arves nedover i hierarkiet. Se også kommentar til M208 referanseArkivdel.</p>
<p>M300</p></td>
<td>[0..1]</td>
<td></td>
<td>Dokumentmedium</td>
</tr>
<tr class="even">
<td><strong>oppbevaringssted</strong></td>
<td><p>Definisjon: Stedet hvor de fysiske dokumentene oppbevares. Kan være angivelse av rom, hylle, skap osv. Overordnede arkivdeler (f.eks. en arkivdel) kan oppbevares på flere steder.</p>
<p>Kilde: Arves fra overordnet nivå, kan overstyres manuelt</p>
<p>Kommentarer: Fysiske dokumenters plassering skal ellers gå fram av arkivstrukturen. Fysiske dokumenter i et sakarkiv skal i utgangspunktet være ordnet i overordnede omslag (f.eks. hengemapper) etter stigende klasseID. Innenfor hver av disse skal omslagene skal dokumentene ligge i fysiske saksmapper som er ordnet etter stigende mappeID. Innenfor saksmappene skal dokumentene være ordnet etter stigende journalpostnummer (&quot;dokumentnummer&quot;). Vedlegg skal legges sammen med tilhørende hoveddokument.</p>
<p>M301</p></td>
<td>[0..*]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>virksomhetsspesifikkeMetadata</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>any</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>5.5.7 En Basisregistrering skal kunne utvides til en</p>
<p>Journalpost.</p></td>
<td></td>
</tr>
<tr class="even">
<td>M004 registreringsID: Skal normalt ikke kunne endres. Ved flytting til en annen mappe, kan endring av registreringsID forekomme.</td>
<td></td>
</tr>
<tr class="odd">
<td>M020 tittel: Skal normalt ikke kunne endres etter at enheten er lukket, eller dokumentene arkivert</td>
<td></td>
</tr>
<tr class="even">
<td>M025 offentligTittel: Obligatorisk i arkivuttrekk dersom tittelen inneholder ord som skal skjermes, jf. M504 skjermingMetadata.</td>
<td></td>
</tr>
</tbody>
</table>

#### Dokumentbeskrivelse

*Type:* ***Class***

*Arver:* ***Arkivenhet***

Et dokument er et informasjonsobjekt som kan behandles som en
enhet. For å understreke at det dreier seg om en enhet, kan vi bruke
begrepet enkeltdokument. En registrering som dokumenterer en
transaksjon, vil vanligvis bestå av bare ett enkeltdokument.
Dokumentbeskrivelsen inneholder altså metadata for enkeltdokumenter.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong><span class="underline">NoteLink</span></strong></td>
<td>Dokumentbeskrivelse</td>
<td>&lt;anonymous&gt;</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>dokumentbeskrivelse</p>
<p>0..*</p>
<p>Dokumentbeskrivelse</p></td>
<td><p>registrering</p>
<p>1..*</p>
<p>Registrering</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Dokumentbeskrivelse</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>merknad</p>
<p>0..*</p>
<p>Merknad</p></td>
<td>Dokumentbeskrivelse</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>dokumentobjekt</p>
<p>0..*</p>
<p>Dokumentobjekt</p></td>
<td><p>dokumentbeskrivelse</p>
<p>1</p>
<p>Dokumentbeskrivelse</p></td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                              |
| --------- | ---------------------------------------------------------------------- |
| REST\_REL | self                                                                   |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/dokumenttype/                |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-merknad/             |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-dokumentbeskrivelse/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/dokumentobjekt/         |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/dokumentstatus/              |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-dokumentobjekt/      |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/registrering/           |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/tilknyttetregistreringsom/   |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/dokumentmedium/              |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/dokumentbeskrivelse/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-registrering/        |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/merknad/                |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>dokumenttype</strong></td>
<td><p>Definisjon: Navn på type dokument</p>
<p>Kilde: Registreres automatisk av systemet eller manuelt</p>
<p>Kommentarer: (ingen)</p>
<p>M083</p></td>
<td>[1..1]</td>
<td></td>
<td>Dokumenttype</td>
</tr>
<tr class="even">
<td><strong>dokumentstatus</strong></td>
<td><p>Definisjon: Status til dokumentet</p>
<p>Kilde: Kan endres automatisk ved endring i saksstatus eller journalstatus.</p>
<p>Kommentarer: Dokumentbeskrivelser som avlevers skal ha status &quot;Dokumentet er ferdigstilt&quot;.</p>
<p>M054</p></td>
<td>[1..1]</td>
<td></td>
<td>Dokumentstatus</td>
</tr>
<tr class="odd">
<td><strong>tittel</strong></td>
<td><p>Definisjon: Tittel eller navn på arkivenheten</p>
<p>Kilde: Registreres manuelt eller hentes automatisk fra innholdet i arkivdokumentet. Ja fra klassetittel dersom alle mapper skal ha samme tittel som klassen. Kan også hentes automatisk fra et fagsystem.</p>
<p>Kommentarer: For saksmappe og journalpost vil dette tilsvare &quot;Sakstittel&quot; og &quot;Dokumentbeskrivelse&quot;. Disse navnene kan beholdes i grensesnittet.</p>
<p>M020</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>beskrivelse</strong></td>
<td><p>Definisjon: Tekstlig beskrivelse av arkivenheten</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentarer: Tilsvarende attributt finnes ikke i Noark 4 (men noen tabeller hadde egne attributter for merknad som kunne brukes som et beskrivelsesfelt)</p>
<p>M021</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>forfatter</strong></td>
<td><p>Definisjon: Navn på person (eller eventuelt organisasjon) som har forfattet eller skapt dokumentet.</p>
<p>Kilde: Registreres automatisk av systemet, automatisk fra innholdet i dokumentet eller manuelt</p>
<p>Kommentarer: Sakarkiver har tradisjonelt ikke noen forfatter på journalposten, men kan eventuelt ha det på dokumentbeskrivelsen. I en journalpost vil derfor forfatter vanligvis være forstått som M307 saksbehandler (utgående og organinterne dokumenter) eller eventuelt M400 korrespondansepartNavn (ved inngående dokumenter). Fagsystemer uten korrespondansedokumenter bør normal ha en forfatter. Her kan personnavn eventuelt erstattes med en kilde (f.eks. et system).</p>
<p>M024</p></td>
<td>[0..*]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>dokumentmedium</strong></td>
<td><p>Definisjon: Angivelse av om arkivenheten inneholder fysiske dokumenter, elektroniske dokumenter eller en blanding av fysiske og elektroniske dokumenter</p>
<p>Kilde: Arves fra overordnet nivå, kan overstyres manuelt</p>
<p>Kommentarer: Obligatorisk ved blanding av fysisk og elektronisk arkiv. Er hele arkivet enten fysisk eller elektronisk, er det tilstrekkelig med verdi på arkivnivå. Er en hel arkivdel enten fysisk eller elektronisk, er det tilstrekkelig å angi det på arkivdelnivå. Dersom underordnede arkivdeler inneholder både fysiske og elektroniske dokumenter, må informasjon om dette arves nedover i hierarkiet. Se også kommentar til M208 referanseArkivdel.</p>
<p>M300</p></td>
<td>[0..1]</td>
<td></td>
<td>Dokumentmedium</td>
</tr>
<tr class="odd">
<td><strong>oppbevaringssted</strong></td>
<td><p>Definisjon: Stedet hvor de fysiske dokumentene oppbevares. Kan være angivelse av rom, hylle, skap osv. Overordnede arkivdeler (f.eks. en arkivdel) kan oppbevares på flere steder.</p>
<p>Kilde: Arves fra overordnet nivå, kan overstyres manuelt</p>
<p>Kommentarer: Fysiske dokumenters plassering skal ellers gå fram av arkivstrukturen. Fysiske dokumenter i et sakarkiv skal i utgangspunktet være ordnet i overordnede omslag (f.eks. hengemapper) etter stigende klasseID. Innenfor hver av disse skal omslagene skal dokumentene ligge i fysiske saksmapper som er ordnet etter stigende mappeID. Innenfor saksmappene skal dokumentene være ordnet etter stigende journalpostnummer (&quot;dokumentnummer&quot;). Vedlegg skal legges sammen med tilhørende hoveddokument.</p>
<p>M301</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>tilknyttetRegistreringSom</strong></td>
<td><p>Definisjon: Angivelse av hvilken &quot;rolle&quot; dokumentet har i forhold til registreringen</p>
<p>Kilde: Registreres automatisk eller manuelt når et dokument blir tilknyttet en registrering</p>
<p>Kommentarer: (ingen)</p>
<p>M217</p></td>
<td>[1..1]</td>
<td></td>
<td>TilknyttetRegistreringSom</td>
</tr>
<tr class="odd">
<td><strong>dokumentnummer</strong></td>
<td><p>Definisjon: Identifikasjon av dokumentene innenfor en registrering</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: Dokumentnummeret avgjør i hvilken rekkefølge dokumentene vises i brukergrensesnittet. Normalt skal hoveddokument vises før vedleggene.</p>
<p>M007</p></td>
<td>[1..1]</td>
<td></td>
<td>integer</td>
</tr>
<tr class="even">
<td><strong>tilknyttetDato</strong></td>
<td><p>Definisjon: Datoen et dokument ble knyttet til en registrering</p>
<p>Kilde: Registreres automatisk nå tilknytning foretas</p>
<p>Kommentarer: (ingen)</p>
<p>M620</p></td>
<td>[1..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="odd">
<td><strong>tilknyttetAv</strong></td>
<td><p>Definisjon: Navn på person som knyttet et dokument til en registrering</p>
<p>Kilde: Registreres automatisk når tilknytning foretas</p>
<p>Kommentarer: (ingen)</p>
<p>M621</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referanseTilknyttetAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="odd">
<td><strong>kassasjon</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Kassasjon</td>
</tr>
<tr class="even">
<td><strong>utførtKassasjon</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>UtførtKassasjon</td>
</tr>
<tr class="odd">
<td><strong>sletting</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Sletting</td>
</tr>
<tr class="even">
<td><strong>skjerming</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Skjerming</td>
</tr>
<tr class="odd">
<td><strong>gradering</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Gradering</td>
</tr>
<tr class="even">
<td><strong>elektroniskSignatur</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>ElektroniskSignatur</td>
</tr>
<tr class="odd">
<td><strong>virksomhetsspesifikkeMetadata</strong></td>
<td><p>Definisjon: Et overordnet metadataelement som kan inneholde egendefinerte metadata. Disse metadataene må da være spesifisert i et eller flere XML-skjema.</p>
<p>Kilde: (ingen)</p>
<p>Kommentar: (ingen)</p>
<p>M711 virksomhetsspesifikkeMetadata</p></td>
<td>[0..1]</td>
<td></td>
<td>any</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Ny - Etter registrering skal systemID, opprettetAv og opprettetDato være utfylt</td>
<td></td>
</tr>
<tr class="even">
<td><p>5.13.17 Autoriserte brukere skal kunne slette en arkivert inaktiv</p>
<p>dokumentversjon. Den siste, endelige versjonen skal</p>
<p>ikke kunne slettes.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.13.18 Det skal være mulig å søke fram dokumenter som er</p>
<p>arkivert i flere versjoner</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.13.19 Det bør være mulig å utføre sletting av mange inaktive</p>
<p>dokumentversjoner samtidig, f.eks. alle inaktive</p>
<p>dokumentversjoner som funnet etter et søk.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.13.20 Sletting av arkiverte inaktive dokumentversjoner skal</p>
<p>logges.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.13.21 Autoriserte brukere skal kunne slette en arkivert</p>
<p>dokumentvariant. Det opprinnelige dokumentet skal</p>
<p>ikke kunne slettes.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.13.22 Det skal være mulig å søke fram arkiverte</p>
<p>dokumentvarianter.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.13.23 Det bør være mulig å slette mange dokumentvarianter</p>
<p>samtidig, f.eks. alle dokumentvarianter som er funnet</p>
<p>etter et søk.</p></td>
<td></td>
</tr>
<tr class="odd">
<td>5.13.24 Sletting av arkiverte dokumentvarianter skal logges.</td>
<td></td>
</tr>
<tr class="even">
<td><p>5.13.25 Autoriserte brukere skal kunne slette et arkivert</p>
<p>dokument i produksjonsformat dersom dokumentet er</p>
<p>blitt konvertert til arkivformat. Dokumentet i</p>
<p>arkivformat skal ikke kunne slettes.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.13.26 Det skal være mulig å søke fram dokumenter arkivert i</p>
<p>produksjonsformat.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.13.27 Det bør være mulig å slette mange produksjonsformater</p>
<p>samtidig, f.eks. alle produksjonsformater som er funnet</p>
<p>etter et søk.</p></td>
<td></td>
</tr>
<tr class="odd">
<td>5.13.28 Sletting av arkiverte produksjonsformater skal logges</td>
<td></td>
</tr>
<tr class="even">
<td>M007 dokumentnummer: Skal ikke kunne endres</td>
<td></td>
</tr>
<tr class="odd">
<td>M020 tittel: Skal normalt ikke kunne endres etter at enheten er lukket, eller dokumentene arkivert</td>
<td></td>
</tr>
<tr class="even">
<td>M620 tilknyttetDato: Kan ikke endres</td>
<td></td>
</tr>
<tr class="odd">
<td>M621 tilknyttetAv: Kan ikke endres</td>
<td></td>
</tr>
</tbody>
</table>

#### Dokumentobjekt

*Type:* ***Class***

*Arver:* 

Dokumentobjekt er det laveste metadatanivået i arkivstrukturen. Et
dokumentobjekt skal referere til én og kun en
dokumentfil. Dokumentfila inneholder selve dokumentet. Dersom
dokumentet er arkivert i flere versjoner, må vi ha et dokumentobjekt
og en dokumentfil for hver versjon. Hver versjon av dokumentet kan
dessuten arkiveres i flere forskjellige formater, og da må det i
tillegg opprettes egne dokumentobjekter og dokumentfiler for hvert
format. I noen tilfeller kan det også være aktuelt å lage varianter av
enkelte dokumenter. Den mest vanlige varianten vil være et "sladdet"
dokument hvor taushetsbelagt informasjon er fjernet slik at varianten
kan være offentlig tilgjengelig. Dokumentobjektet inneholder mer
tekniske metadata enn de andre arkivenhetene, bl.a. sjekksummen til
bytesekvensen som representerer dokumentet.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>dokumentobjekt</p>
<p>0..*</p>
<p>Dokumentobjekt</p></td>
<td><p>dokumentbeskrivelse</p>
<p>1</p>
<p>Dokumentbeskrivelse</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>konvertering</p>
<p>0..*</p>
<p>Konvertering</p></td>
<td>Dokumentobjekt</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                              |
| --------- | ---------------------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/dokumentbeskrivelse/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-dokumentobjekt/      |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-dokumentbeskrivelse/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/variantformat/               |
| REST\_REL | self                                                                   |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/dokumentobjekt/         |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/format/                      |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-konvertering/        |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/konvertering/           |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/fil/                    |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>systemID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av arkivenheten innenfor det arkivskapende organet. Dersom organet har flere arkivsystemer, skal altså systemID være gjennomgående entydig. Systemidentifikasjonen vil som oftest være en nummerisk kode uten noe logisk meningsinnhold. Identifikasjonen trenger ikke å være synlig for brukerne.</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: Alle referanser fra en arkivenhet til en annen skal peke til arkivenhetens systemidentifikasjon. Dette gjelder også referanser fra en arkivdel til en annen, f.eks. mellom to arkivperioder som avleveres på forskjellig tidspunkt. I et arkivuttrekk skal systemID være entydig (unik). Dokumentobjekt har ingen systemidentifikasjon fordi enheten kan være duplisert i et arkivuttrekk dersom samme dokumentfil er knyttet til flere forskjellige registreringer.</p>
<p>M001</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>versjonsnummer</strong></td>
<td><p>Definisjon: Identifikasjon av versjoner innenfor ett og samme dokument.</p>
<p>Kilde: Registreres automatisk når en ny versjon arkiveres</p>
<p>Kommentarer: Versjonsnummer gjelder bare arkiverte versjoner. Annen versjons-håndtering ligger i komplett Noark, og genererer ikke metadata skal følge med i et arkivuttrekk.</p>
<p>M005</p></td>
<td>[1..1]</td>
<td></td>
<td>integer</td>
</tr>
<tr class="odd">
<td><strong>variantformat</strong></td>
<td><p>Definisjon: Angivelse av hvilken variant et dokument forekommer i</p>
<p>Kilde: Registreres automatisk når dokumentet arkiveres</p>
<p>Kommentarer: (ingen)</p>
<p>M700</p></td>
<td>[1..1]</td>
<td></td>
<td>Variantformat</td>
</tr>
<tr class="even">
<td><strong>format</strong></td>
<td><p>Definisjon: Dokumentets format</p>
<p>Kilde: Registreres automatisk når dokumentet arkiveres</p>
<p>Kommentarer: Faste verdier bestemmes senere</p>
<p>M701</p></td>
<td>[0..1]</td>
<td></td>
<td>Format</td>
</tr>
<tr class="odd">
<td><strong>formatDetaljer</strong></td>
<td><p>Definisjon: Nærmere spesifikasjon av dokuments format, f.eks. informasjon om komprimering</p>
<p>Kilde: (ingen)</p>
<p>Kommentarer: (ingen)</p>
<p>M702</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>opprettetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble opprettet/registrert</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M600</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>opprettetAv</strong></td>
<td><p>Definisjon: Navn på person som opprettet/registrerte arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M601</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referanseDokumentfil</strong></td>
<td><p>Definisjon: Referanse til filen som inneholder det elektroniske dokumentet som dokumentobjektet beskriver</p>
<p>Kilde: Registreres automatisk når et dokument tilknyttes en registrering, når det arkiveres flere versjoner av et dokument, når det lages en egen variant av dokumentet og når dokumentet konverteres til nye formater</p>
<p>Kommentarer: Referansen skal være en &quot;sti&quot; (dvs. også inneholde katalogstrukturen) til filnavnet som gjør det mulig å identifisere riktig fil i et arkivuttrekk.</p>
<p>M218</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>filnavn</strong></td>
<td>veFilnavn i n4</td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>sjekksum</strong></td>
<td><p>Definisjon: En verdi som beregnes ut fra innholdet i dokumentet, og som dermed gir integritetssikring til dokumentets innhold</p>
<p>Kilde: Påføres automatisk i forbindelse med eksport for avlevering</p>
<p>Kommentarer: (ingen)</p>
<p>M705</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>mimeType</strong></td>
<td>veMimeType i n4</td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>sjekksumAlgoritme</strong></td>
<td><p>Definisjon: Algoritmen som er brukt for å beregne sjekksummen</p>
<p>Kilde: Registreres automatisk i forbindelse med eksport for avlevering</p>
<p>Kommentarer: (ingen)</p>
<p>M706</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>filstørrelse</strong></td>
<td><p>Definisjon: Størrelsen på fila i antall bytes oppgitt med desimaltall</p>
<p>Kilde: Registreres automatisk i forbindelse med eksport for avlevering</p>
<p>Kommentarer: (ingen)</p>
<p>M707</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>elektroniskSignatur</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>ElektroniskSignatur</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Ny - Etter registrering skal systemID, opprettetAv og opprettetDato være utfylt</td>
<td></td>
</tr>
<tr class="even">
<td><p>5.13.13 Det skal finnes en tjeneste/funksjon som gjør at</p>
<p>arkivadministrator kan sette opp regler for når (hvilke</p>
<p>statuser) arkivdokumenter skal konverteres til</p>
<p>arkivformat.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.13.14 Det skal være konfigurerbart om dokumenter skal</p>
<p>konverteres til arkivformat når status på</p>
<p>dokumentbeskrivelse settes til ”Dokumentet er</p>
<p>ferdigstilt”.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.13.15 Det skal være konfigurerbart om alle eller spesielt</p>
<p>merkede versjoner skal konverteres til arkivformat.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.13.16 Det skal finnes en tjeneste/funksjon og rapportering for</p>
<p>filformattesting av dokumentene som er lagret i kjernen.</p></td>
<td><p>/*</p>
<p>Rapporten skal gi oversikt over hvilke mapper,</p>
<p>registreringer og/eller dokumentbeskrivelser som ikke</p>
<p>inneholder dokumenter lagret i godkjent arkivformat. */</p></td>
</tr>
<tr class="even">
<td>M001 systemID: Skal ikke kunne endres</td>
<td></td>
</tr>
<tr class="odd">
<td>M005 versjonsnummer: Skal ikke endres</td>
<td></td>
</tr>
<tr class="even">
<td>M005 versjonsnummer: Den eldste versjonen skal ha det laveste nummeret</td>
<td><p>Dersom arkiverte versjoner er slettet (gjelder ikke siste versjon), vil dette skape</p>
<p>&quot;huller&quot; i nummerrekkefølgen.</p></td>
</tr>
<tr class="odd">
<td>M600 opprettetDato: Skal ikke kunne endres</td>
<td></td>
</tr>
<tr class="even">
<td>M601 opprettetAv: Skal ikke kunne endres</td>
<td></td>
</tr>
<tr class="odd">
<td>M700 veriantformat: Kan ikke endres</td>
<td></td>
</tr>
<tr class="even">
<td>M701 format: Kan ikke endres</td>
<td></td>
</tr>
<tr class="odd">
<td>M702 formatDetaljer: Kan ikke endres</td>
<td></td>
</tr>
<tr class="even">
<td>M705 sjekksum: Kan ikke endres.</td>
<td></td>
</tr>
<tr class="odd">
<td><p>M705 sjekksum: Sjekksummen skal være heksadesimal uten noen</p>
<p>formatteringstegn.</p></td>
<td></td>
</tr>
<tr class="even">
<td>M706 sjekksumAlgoritme: Kan ikke endres</td>
<td></td>
</tr>
<tr class="odd">
<td>M706 sjekksumAlgoritme: Algoritmen som skal brukes inntil videre er SHA256.</td>
<td></td>
</tr>
<tr class="even">
<td>M707 fulstoerrelse: Kan ikke endres</td>
<td></td>
</tr>
</tbody>
</table>

#### ElektroniskSignatur

*Type:* ***Class «dataType»***

*Arver:*

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                                     |
| --------- | ----------------------------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-elektronisksignatur/        |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/elektronisksignatursikkerhetsnivaa/ |
| REST\_REL | self                                                                          |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/elektronisksignatur/           |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/elektronisksignaturverifisert/      |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>elektroniskSignaturSikkerhetsnivå</strong></td>
<td><p>Definisjon: Angivelse av hvilket sikkerhetsnivå som ble brukt ved forsendelse og mottak av elektroniske dokumenter</p>
<p>Kilde: Registreres automatisk knyttet til funksjonalitet for elektronisk signatur</p>
<p>Kommentarer: (ingen)</p>
<p>M507 elektroniskSignaturSikkerhetsnivaa</p></td>
<td>[1..1]</td>
<td></td>
<td>ElektroniskSignaturSikkerhetsnivå</td>
</tr>
<tr class="even">
<td><strong>elektroniskSignaturVerifisert</strong></td>
<td><p>Definisjon: Angivelse av om et dokument er mottatt med elektronisk signatur, og om signaturen er verifisert.</p>
<p>Kilde: Registreres automatisk knyttet til funksjonalitet for elektronisk signatur</p>
<p>Kommentarer: Dersom signaturen er verifisert, skal det logges hvem som verifiserte den og når det skjedde</p>
<p>M508</p></td>
<td>[1..1]</td>
<td></td>
<td>ElektroniskSignaturVerifisert</td>
</tr>
<tr class="odd">
<td><strong>verifisertDato</strong></td>
<td><p>Definisjon: Dato en elektronisk signatur ble verifisert</p>
<p>Kilde: Registreres automatisk når verifisering utføres</p>
<p>Kommentarer: (ingen)</p>
<p>M622</p></td>
<td>[1..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="even">
<td><strong>verifisertAv</strong></td>
<td><p>Definisjon: Navn på person som har verifisert en elektronisk signatur</p>
<p>Kilde: Registreres automatisk når verifisering utføres</p>
<p>Kommentarer: (ingen)</p>
<p>M623</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseVerifisertAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**                             | **Merknad**                     |
| ------------------------------------ | ------------------------------- |
| M622 verifisertDato: kan ikke endres | verifisertDato: kan ikke endres |
| M623 verifisertAv: Kan ikke endres   |                                 |

#### Gradering

*Type:* ***Class «dataType»***

*Arver:* 

Metadata for gradering skal grupperes inn i metadata for mappe,
registrering og dokumentbeskrivelse. Gradering er valgfritt, og kan
forekomme en gang

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>graderingskode</strong></td>
<td><p>Definisjon: Angivelse av at dokumentene er gradert i henhold til sikkerhetsloven eller beskyttelsesinstruksen.</p>
<p>Kilde: Registreres manuelt ved valg fra liste, kan også registres automatisk</p>
<p>Kommentarer: Dokumenter gradert &quot;Strengt hemmelig&quot;, &quot;Hemmelig&quot;, &quot;Konfidensielt&quot; og &quot;Strengt fortrolig&quot; skal føres i en egen journal som i sin helhet er unntatt fra innsyn.</p>
<p>M506 gradering</p></td>
<td>[1..1]</td>
<td></td>
<td>Graderingskode</td>
</tr>
<tr class="even">
<td><strong>graderingsdato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når et dokument ble gradert</p>
<p>Kilde: Registreres automatisk ved gradering</p>
<p>Kommentarer: (ingen)</p>
<p>M624</p></td>
<td>[1..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>gradertAv</strong></td>
<td><p>Definisjon: Navn på person som foretok graderingen</p>
<p>Kilde: Registreres automatisk ved gradering</p>
<p>Kommentarer: (ingen)</p>
<p>M625</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referanseGradertAv</strong></td>
<td></td>
<td>[1..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="odd">
<td><strong>nedgraderingsdato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når et dokument ble nedgradert</p>
<p>Kilde: Registreres automatisk ved nedgradering</p>
<p>Kommentarer: (ingen)</p>
<p>M626</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="even">
<td><strong>nedgradertAv</strong></td>
<td><p>Definisjon: Navn på person som foretok nedgraderingen</p>
<p>Kilde: Registreres automatisk ved nedgradering</p>
<p>Kommentarer: (ingen)</p>
<p>M627</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseNedgradertAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
</tbody>
</table>

#### Hendelseslogg

*Type:* ***Class***

*Arver:* ***Endringslogg***

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>logg</p>
<p>0..*</p>
<p>Hendelseslogg</p></td>
<td><p>0..1</p>
<p>Arkivenhet</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Hendelseslogg</td>
<td>Endringslogg</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                        |
| --------- | ---------------------------------------------------------------- |
| NEW       | 5.4.0                                                            |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-hendelseslogg/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/hendelsetype/          |
| REST\_REL | self                                                             |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/hendelseslogg/    |

*<span class="underline">Attributter</span>*

| **Navn**         | **Merknad** | **Multipl.** | **Kode** | **Type**     |
| ---------------- | ----------- | ------------ | -------- | ------------ |
| **hendelsetype** |             | \[1..1\]     |          | Hendelsetype |
| **beskrivelse**  |             | \[0..1\]     |          | string       |
| **hendelseDato** |             | \[1..1\]     |          | datetime     |

#### Kassasjon

*Type:* ***Class «dataType»***

*Arver:* 

Kassasjon vil si at elektroniske dokumenter fjernes fra
arkivstrukturen.  Dersom dokumentet ikke er tilknyttet andre
registreringer, innebærer en kassasjon også at dokumentet slettes helt
fra Noark 5-løsningen. Kassasjon av fysiske dokumenter vil si at de
plukkes ut fra stedet de oppbevares, og makuleres eller destrueres på
en betryggende måte.

Inneholder vedtak om kassasjon. Kassasjonsvedtak bestemmer hvilket
arkivmateriale som skal fjernes fra arkivet og tilintetgjøres. (Se
NOARK 5 v3.1 eget kapittel: 5.10 Bevaring og kassasjon)

Metadata for bevaring og kassasjon skal grupperes inn i metadata for
arkivdel, klasse, mappe, registrering og
dokumentbeskrivelse. Funksjonalitet for kassasjon er obligatorisk i
alle Noark 5-løsninger, men det kan gis dispensasjon til
fagsystemløsninger hvor kassasjon er uaktuelt.

Overordnede kassasjonsbestemmelser kan settes på arkiv- og klassenivå,
og skal da arves nedover i arkivstrukturen til mappe, registrering og
dokumentbeskrivelse. Verdiene som arves skal kunne overstyres. Ved
deponering/avlevering er det bare kassasjonsvedtak som innebærer
kassasjon som skal være med. Det skal altså ikke knyttes opplysninger
om kassasjon til arkivenheter hvor alle tilordnede dokumenter skal
bevares. Kassasjon kan altså være knyttet en gang til arkivdel,
klasse, mappe, registrering og dokumentbeskrivelse.

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>kassasjonsvedtak</strong></td>
<td><p>Definisjon:Handling som skal utføres ved bevaringstidens slutt.</p>
<p>Kilde: Registreres manuelt ved opprettelse av arkivdel eller klasse. Arves til underliggende enheter, men kan endres manuelt.</p>
<p>Kommentarer: (ingen)</p>
<p>M450</p></td>
<td>[1..1]</td>
<td></td>
<td>Kassasjonsvedtak</td>
</tr>
<tr class="even">
<td><strong>kassasjonshjemmel</strong></td>
<td><p>Definisjon: Angivelse av hjemmel for kassasjon</p>
<p>Kilde: Registreres manuelt ved opprettelse av arkivdel eller klasse. Arves til underliggende enheter, men kan endres manuelt</p>
<p>Kommentarer: Hjemmel kan f.eks. være Riksarkivarens bevarings- og kassasjons-vedtak.</p>
<p>M453</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>bevaringstid</strong></td>
<td><p>Definisjon: Antall år dokumentene som tilhører denne arkivdelen skal bevares.</p>
<p>Kilde: Registreres manuelt ved opprettelse av arkivdel eller klasse. Arves til underliggende enheter, men kan endres manuelt.</p>
<p>Kommentarer: Tidspunktet for når bevaringstiden starter å løpe, vil vanligvis være når en mappe avsluttes. Men andre regler kan være aktuelle.</p>
<p>M451</p></td>
<td>[1..1]</td>
<td></td>
<td>integer</td>
</tr>
<tr class="even">
<td><strong>kassasjonsdato</strong></td>
<td><p>Definisjon: Dato for når dokumentene som tilhører denne arkivenheten skal kunne kasseres, eller vurderes for bevaring og kassasjon på ny</p>
<p>Kilde: Datoen beregnes automatisk på grunnlag av M451 Bevaringstid, eller registreres manuelt</p>
<p>Kommentarer: (ingen)</p>
<p>M452</p></td>
<td>[1..1]</td>
<td></td>
<td>date</td>
</tr>
</tbody>
</table>

#### Klasse

*Type:* ***Class***

*Arver:* ***Arkivenhet***

Et klassifikasjonssystem er bygd opp av klasser. Ved funksjonsbasert
(emnebasert) klassifikasjon vil klassene vanligvis inngå i et
hierarki, hvor tre eller fire nivåer er det vanlige.  I den
konseptuelle modellen er undernivåene kalt underklasser, og fremkommer
som en egenrelasjon i Klasse5.

ISO 15489 anbefaler at klassene beskriver organets funksjoner og
aktiviteter (forretningsprosesser). Øverste nivå vil da typisk
beskrive hovedfunksjonene, nivå to kan beskrive underfunksjoner og
nivå tre prosessene (dvs. aktiviteter som stadig gjentas).

Klassene skal ha en egen identifikasjon som er unik innenfor
klassifikasjonssystemet. Dette tilsvarer det som er kalt ordningsverdi
eller arkivkode i Noark-4. Identifikasjoner fra overordnede klasser skal
arves nedover i hierarkiet, slik at det er lett å si hvilket nivå en
befinner seg på6

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>underklasse</p>
<p>0..*</p>
<p>Klasse</p></td>
<td>Klasse</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Klasse</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>klasse</p>
<p>0..*</p>
<p>Klasse</p></td>
<td><p>klassifikasjonssystem</p>
<p>0..1</p>
<p>Klassifikasjonssystem</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>underklasse</p>
<p>0..*</p>
<p>Klasse</p></td>
<td>Klasse</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>mappe</p>
<p>0..*</p>
<p>Mappe</p></td>
<td><p>klasse</p>
<p>0..1</p>
<p>Klasse</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>kryssreferanse</p>
<p>0..*</p>
<p>Kryssreferanse</p></td>
<td><p>klasse</p>
<p>0..1</p>
<p>Klasse</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Saksmappe</td>
<td><p>sekundærklassifikasjon</p>
<p>0..*</p>
<p>Klasse</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>registrering</p>
<p>0..*</p>
<p>Registrering</p></td>
<td><p>klasse</p>
<p>0..1</p>
<p>Klasse</p></td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                                |
| --------- | ------------------------------------------------------------------------ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-klassifikasjonssystem/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/registrering/             |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-kryssreferanse/        |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-klasse/                |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/underklasse/              |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/klassifikasjonssystem/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/klasse/                   |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/kryssreferanse/           |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/mappe/                    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-mappe/                 |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-registrering/          |
| REST\_REL | self                                                                     |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>klasseID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av klassen innenfor klassifikasjonssystemet. Andre klassifikasjonssystemer innenfor samme arkivsystem kan imidlertid inneholde en eller flere av de samme identifikasjonene. Identifikasjonen kan være rent nummerisk, men kan også være alfanumerisk og ha et logisk meningsinnhold. Merk at klasseID er identisk med begrepene ordningsverdi og arkivkode i Noark 4.</p>
<p>Kilde: Alle klasser i et klassifikasjonssystem opprettes vanligvis når et arkivsystem tas i bruk. Men enkelte løsninger kan tillate at det opprettes nye klasser ved behov (mest aktuelt ved objektbasert klassifikasjon).</p>
<p>Kommentarer: Eksempel på klasseID og tittel i tre nivåer fra statens arkivnøkkel (emne-/funksjonsbasert klassifikasjonssystem):</p>
<p>2 Stillinger og personell</p>
<p>2.3 Lønn og pensjon</p>
<p>2.3.6 Arbeidsgiveravgift</p>
<p>Ved personbasert klassifikasjonssystem, kan f.eks. fødselsnummer og navn utgjøre klasseID og tittel.</p>
<p>M002</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>tittel</strong></td>
<td><p>Definisjon: Tittel eller navn på arkivenheten</p>
<p>Kilde: Registreres manuelt eller hentes automatisk fra innholdet i arkivdokumentet. Ja fra klassetittel dersom alle mapper skal ha samme tittel som klassen. Kan også hentes automatisk fra et fagsystem.</p>
<p>Kommentarer: For saksmappe og journalpost vil dette tilsvare &quot;Sakstittel&quot; og &quot;Dokumentbeskrivelse&quot;. Disse navnene kan beholdes i grensesnittet.</p>
<p>M020</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>beskrivelse</strong></td>
<td><p>Definisjon: Tekstlig beskrivelse av arkivenheten</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentarer: Tilsvarende attributt finnes ikke i Noark 4 (men noen tabeller hadde egne attributter for merknad som kunne brukes som et beskrivelsesfelt)</p>
<p>M021</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>nøkkelord</strong></td>
<td><p>Definisjon: Nøkkeord eller stikkord som beskriver innholdet i enheten</p>
<p>Kilde: Registreres vanligvis ved oppslag fra liste (f.eks. en tesaurus). Kan også registreres automatisk på grunnlag av dokumentinnhold eller integrering med fagsystem.</p>
<p>Kommentarer: Nøkkelord kan brukes for å forbedre mulighetene for søking og gjenfinning. Nøkkelord skal ikke erstatte klassifikasjon.</p>
<p>M022</p></td>
<td>[0..*]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>avsluttetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble avsluttet/lukket</p>
<p>Kilde: Registreres automatisk av systemet når enheten avsluttes</p>
<p>Kommentarer: (ingen)</p>
<p>M602</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="even">
<td><strong>avsluttetAv</strong></td>
<td><p>Definisjon: Navn på person som avsluttet/lukket arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M603</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseAvsluttetAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>skjerming</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Skjerming</td>
</tr>
<tr class="odd">
<td><strong>kassasjon</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Kassasjon</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Ny - Etter registrering skal systemID, opprettetAv og opprettetDato være utfylt</td>
<td></td>
</tr>
<tr class="even">
<td>Ny - Kan ha enten underklasse eller mappe eller registrering</td>
<td></td>
</tr>
<tr class="odd">
<td>M002 klasseID: Skal ikke kunne endres</td>
<td></td>
</tr>
<tr class="even">
<td><p>M020 tittel: Skal normalt ikke kunne endres etter at enheten er lukket, eller</p>
<p>dokumentene arkivert</p></td>
<td></td>
</tr>
<tr class="odd">
<td>M602 avsluttetDato: Skal ikke kunne endres</td>
<td></td>
</tr>
<tr class="even">
<td>M602 avsluttetDato: Obligatorisk dersom arkivdelen er avsluttet.</td>
<td></td>
</tr>
</tbody>
</table>

#### Klassifikasjonssystem

*Type:* ***Class***

*Arver:* ***Arkivenhet***

Moderne arkivteori legger vekt på at klassifikasjonssystemet skal være
funksjonsbasert. Alle
virksomheter utøver et bestemt antall funksjoner. Disse er ofte stabile
over tid, men funksjoner kan overføres fra en virksomhet til en annen.
Et eksempel på en slik overføring er når saksområder flytter fra et
departement til et annet, noe som ofte skjer i forbindelse med et
regjeringsskifte. En virksomhet vil vanligvis bare ha et fåtall
hovedfunksjoner, men disse er det naturlig å dele opp i underfunksjoner.

Funksjoner/underfunksjoner deles inn i aktiviteter. I motsetning til en
funksjon, har en aktivitet en begynnelse og en slutt. En aktivitet har
også deltakere, og den fører til et resultat. Dersom en aktivitet stadig
gjentar seg, tilhører den en prosess. Alle arkivdokumenter som
produseres når en aktivitet utføres, skal normalt tilhøre samme
(saks)mappe.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>klassifikasjonssystem</p>
<p>0..1</p>
<p>Klassifikasjonssystem</p></td>
<td><p>arkivdel</p>
<p>1..*</p>
<p>Arkivdel</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Klassifikasjonssystem</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>sekundærklassifikasjonssystem</p>
<p>0..*</p>
<p>Klassifikasjonssystem</p></td>
<td>Arkivdel</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>klasse</p>
<p>0..*</p>
<p>Klasse</p></td>
<td><p>klassifikasjonssystem</p>
<p>0..1</p>
<p>Klassifikasjonssystem</p></td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                                         |
| --------- | --------------------------------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-klassifikasjonssystem/          |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-sekundaerklassifikasjonssystem/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/sekundaerklassifikasjonssystem/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/klassifikasjonstype/                    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-arkivdel/                       |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-klasse/                         |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/arkivdel/                          |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/klasse/                            |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/klassifikasjonssystem/             |
| REST\_REL | self                                                                              |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>klassifikasjonstype</strong></td>
<td><p>Definisjon: Type klassifikasjonssystem</p>
<p>Kilde: Registreres manuelt ved opprettelse av klassifikasjonssystem</p>
<p>Kommentarer: (ingen)</p>
<p>M086</p></td>
<td>[0..1]</td>
<td></td>
<td>Klassifikasjonstype</td>
</tr>
<tr class="even">
<td><strong>tittel</strong></td>
<td><p>Definisjon: Tittel eller navn på arkivenheten</p>
<p>Kilde: Registreres manuelt eller hentes automatisk fra innholdet i arkivdokumentet. Ja fra klassetittel dersom alle mapper skal ha samme tittel som klassen. Kan også hentes automatisk fra et fagsystem.</p>
<p>Kommentarer: For saksmappe og journalpost vil dette tilsvare &quot;Sakstittel&quot;</p>
<p>og &quot;Dokumentbeskrivelse&quot;. Disse navnene kan beholdes i grensesnittet.</p>
<p>M020</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>beskrivelse</strong></td>
<td><p>Definisjon: Tekstlig beskrivelse av arkivenheten</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentarer: Tilsvarende attributt finnes ikke i Noark 4 (men noen tabeller</p>
<p>hadde egne attributter for merknad som kunne brukes som et</p>
<p>beskrivelsesfelt)</p>
<p>M021</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>avsluttetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble avsluttet/lukket</p>
<p>Kilde: Registreres automatisk av systemet når enheten avsluttes</p>
<p>Kommentarer: (ingen)</p>
<p>M602</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>avsluttetAv</strong></td>
<td><p>Definisjon: Navn på person som avsluttet/lukket arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M603</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referanseAvsluttetAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Ny - Etter registrering skal systemID, opprettetAv og opprettetDato være utfylt</td>
<td></td>
</tr>
<tr class="even">
<td><p>M020 tittel: Skal normalt ikke kunne endres etter at enheten er lukket, eller</p>
<p>dokumentene arkivert</p></td>
<td></td>
</tr>
</tbody>
</table>

#### Konvertering

*Type:* ***Class***

*Arver:* 

Alle arkivdokumenter som skal avleveres må være i arkivformat.
Konvertering til arkivformat skal foretas senest ved avslutning av
mappe (jf. NOARK 5 v3.1 krav 6.1.11). Systemet skal logge alle
konverteringer, og informasjon om dette skal tas med ved
deponering/avlevering.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>konvertering</p>
<p>0..*</p>
<p>Konvertering</p></td>
<td>Dokumentobjekt</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                       |
| --------- | --------------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/konvertering/    |
| REST\_REL | self                                                            |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-konvertering/ |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>systemID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av arkivenheten innenfor det arkivskapende organet. Dersom organet har flere arkivsystemer, skal altså systemID være gjennomgående entydig. Systemidentifikasjonen vil som oftest være en nummerisk kode uten noe logisk meningsinnhold. Identifikasjonen trenger ikke å være synlig for brukerne.</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: Alle referanser fra en arkivenhet til en annen skal peke til arkivenhetens systemidentifikasjon. Dette gjelder også referanser fra en arkivdel til en annen, f.eks. mellom to arkivperioder som avleveres på forskjellig tidspunkt. I et arkivuttrekk skal systemID være entydig (unik). Dokumentobjekt har ingen systemidentifikasjon fordi enheten kan være duplisert i et arkivuttrekk dersom samme dokumentfil er knyttet til flere forskjellige registreringer.</p>
<p>M001</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>konvertertDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett for når et dokument ble konvertert fra et format til et annet</p>
<p>Kilde: Registreres automatisk ved konvertering</p>
<p>Kommentarer: (ingen)</p>
<p>M615</p></td>
<td>[1..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>konvertertAv</strong></td>
<td><p>Definisjon: Person eller system som har foretatt konverteringen</p>
<p>Kilde: Registreres automatisk ved konvertering</p>
<p>Kommentarer: (ingen)</p>
<p>M616</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>konvertertFraFormat</strong></td>
<td><p>Definisjon: Formatet dokumentet hadde før det ble konvertert</p>
<p>Kilde: Registreres automatisk ved konvertering</p>
<p>Kommentarer: Dette vil vanligvis være produksjonsformatet, men kan også være et annet arkivformat. Faste verdier bestemmes senere</p>
<p>M712</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>konvertertTilFormat</strong></td>
<td><p>Definisjon: Formatet dokumentet fikk etter konvertering</p>
<p>Kilde: Registreres automatisk ved konvertering</p>
<p>Kommentarer: Faste verdier bestemmes senere</p>
<p>M713</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>konverteringsverktøy</strong></td>
<td><p>Definisjon: Navn på det IT-verktøyet som ble brukt til å foreta konverteringen</p>
<p>Kilde: (ingen)</p>
<p>Kommentarer: (ingen)</p>
<p>M714</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>konverteringskommentar</strong></td>
<td><p>Definisjon: Kommentarer til konverteringen</p>
<p>Kilde: (ingen)</p>
<p>Kommentarer: (ingen)</p>
<p>M715</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**                                  | **Merknad** |
| ----------------------------------------- | ----------- |
| M001 systemID: Skal ikke kunne endres     |             |
| M615 konvertertdato: Kan ikke endres      |             |
| M616 konvertertAv: Kan ikke endres        |             |
| M712 konvertertFraFormat: Kan ikke endres |             |
| M713 konvertertTilFormat: Kan ikke endres |             |

#### Kryssreferanse

*Type:* ***Class***

*Arver:* 

Dette er en referanse på tvers av hierarkiet i arkivstrukturen.
Referansen kan gå fra en mappe til en annen mappe, fra en registrering
til en annen registrering, fra en mappe til en registrering og fra en
registrering til en mappe. Det kan også refereres fra en klasse til en
annen klasse.

Kryssreferanse er valgfritt, og kan knyttes en eller flere ganger til
klasse, mappe og basisregistrering. Referansen går en vei, dvs. den
kan kun være en referanse til en arkivenhet. I og med at
kryssreferanser knyttes til Mappe og Basisregistrering, vil det si at
Referanser også knyttes til alle utvidelsene (spesialiseringer) under
disse (Saksmappe, Møtemappe og Journalpost, Møteregistrering).

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>kryssreferanse</p>
<p>0..*</p>
<p>Kryssreferanse</p></td>
<td><p>registrering</p>
<p>0..1</p>
<p>Basisregistrering</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>kryssreferanse</p>
<p>0..*</p>
<p>Kryssreferanse</p></td>
<td><p>klasse</p>
<p>0..1</p>
<p>Klasse</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>kryssreferanse</p>
<p>0..*</p>
<p>Kryssreferanse</p></td>
<td><p>mappe</p>
<p>0..1</p>
<p>Mappe</p></td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                      |
| --------- | -------------------------------------------------------------- |
| REST\_REL | self                                                           |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/kryssreferanse/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/mappe/          |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/registrering/   |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/klasse/         |

*<span class="underline">Attributter</span>*

| **Navn**                     | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ---------------------------- | ----------- | ------------ | -------- | -------- |
| **referanseTilMappe**        | M210        | \[0..1\]     |          | SystemID |
| **referanseTilKlasse**       | M219        | \[0..1\]     |          | SystemID |
| **referanseTilRegistrering** | M212        | \[0..1\]     |          | SystemID |

#### Mappe

*Type:* ***Class***

*Arver:* ***Arkivenhet***

En mappe grupperer dokumenter som på en eller annen måte hører sammen.
Helst bør dokumentene i en mappe utgjøre en instans (dvs. en utførelse)
av en aktivitet, med en definert begynnelse og slutt. Et eksempel på
dette er enkeltsaker i et sakarkiv. En slik sak kan f.eks. omhandle et
spørsmål som er til behandling, og dokumentene i saken vil da utgjøre
behandlingsforløpet for dette spørsmålet. Slike saker kan typisk starte
med en søknad eller henvendelse utenfra, og ende med et vedtak.

Men av og til er det naturlig å gruppere dokumentene i en mappe etter
andre kriterier. I noen tilfeller legges alle dokumenter som omhandler
et objekt i én mappe, f.eks. personalmapper. Slike mapper kalles også
dossiermapper. I andre tilfeller kan det være naturlig å legge alle
dokumentene som tilhører samme prosess (dvs. gjentakelse av samme type
aktivitet) i samme mappe. Dette vil ofte dreie seg om svært
rutinemessige aktiviteter, hvor hver aktivitet kanskje bare skaper ett
dokument. I sakarkiver er dette kjent som samlemapper eller samlesaker.

Måten innholdet i en mappe grupperes på, vil avhenge av
klassifikasjonssystemet. En trenger ikke nødvendigvis å ha egne
personalmapper dersom klassifikasjonssystemet er objektbasert på person.
Innholdet i personalmappen kan da ordnes etter aktivitet. Dersom en
likevel velger å ha personalmapper, kan klassifikasjonssystemet være på
et overordnet nivå med bare noen få klasser. Dokumentene som skapes i et
bestemt prosjekt kan samles i en prosjektmappe (med
undermapper), men det er sannsynligvis bedre å definere prosjektet i
klassifikasjonssystemet og gruppere mappene etter instanser av
aktiviteter.

Mapper skal ha en egen identifikasjon som er unik innenfor et og samme
arkiv. Noark 5 stiller ingen krav til hvordan denne koden skal se ut.
Når det gjelder saksmapper, anbefales det at en fortsetter med samme
mal som i tidligere versjoner av Noark-standarden - dvs. en kombinasjon
av årstallet da mappen ble opprettet og et fortløpende seksjonsnummer
innenfor året, f.eks. 2011/3869.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>mappe</p>
<p>0..*</p>
<p>Mappe</p></td>
<td><p>arkivdel</p>
<p>0..1</p>
<p>Arkivdel</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>mappe</p>
<p>0..*</p>
<p>Mappe</p></td>
<td><p>klasse</p>
<p>0..1</p>
<p>Klasse</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Mappe</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>undermappe</p>
<p>0..*</p>
<p>Mappe</p></td>
<td>Mappe</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>registrering</p>
<p>0..*</p>
<p>Registrering</p></td>
<td><p>mappe</p>
<p>0..1</p>
<p>Mappe</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>nasjonalidentifikator</p>
<p>0..*</p>
<p>Nasjonalidentifikator</p></td>
<td>Mappe</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>merknad</p>
<p>0..*</p>
<p>Merknad</p></td>
<td>Mappe</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Møtemappe</td>
<td>Mappe</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Saksmappe</td>
<td>Mappe</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>kryssreferanse</p>
<p>0..*</p>
<p>Kryssreferanse</p></td>
<td><p>mappe</p>
<p>0..1</p>
<p>Mappe</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>undermappe</p>
<p>0..*</p>
<p>Mappe</p></td>
<td>Mappe</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                                |
| --------- | ------------------------------------------------------------------------ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/kryssreferanse/           |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/arkivdel/                 |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-kryssreferanse/        |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-arkivdel/              |
| REST\_REL | self                                                                     |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-merknad/               |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-registrering/          |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/klasse/                   |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-klasse/                |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/registrering/             |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-nasjonalidentifikator/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/merknad/                  |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-mappe/                 |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/mappe/                    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/dokumentmedium/                |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/mappetype/                     |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/undermappe/               |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/nasjonaleidentifikator/   |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>mappeID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av mappen innenfor det arkivet mappen tilhører. Andre arkiver innenfor samme arkivsystem, kan inneholde en eller flere av de samme kodene. Koden kan være rent nummerisk, men kan også ha en logisk oppbygning. Merk at <em>mappeID</em> er identisk med kombinasjonen saksår og sekvensnummer (oftest bare kalt &quot;saksnummer&quot;) i Noark 4, se kommentarfeltet.</p>
<p>Kilde: Registreres automatisk av systemet etter interne regler</p>
<p>Kommentarer: Saksår og sekvensnummer er ikke lenger obligatorisk identifikasjon i Noark 5, men det anbefales at dette mønsteret fremdeles brukes i sakarkiver. I slike tilfeller skal verdien i mappeID også kopieres til de to metadataelementene <em>M011 saksaar</em> og <em>M012 sakssekvensnummer</em> i saksmappen. Grunnen til dette er at det i noen tilfeller er nødvendig å skille de to elementene i saksnummeret, f.eks. ved sortering og i tjenestegrensesnittet.</p>
<p>M003</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>mappetype</strong></td>
<td>angir mappetype som blant annet kan brukes som hint til hva som ligger i virksomhetsspesifikkemetadata</td>
<td>[0..1]</td>
<td></td>
<td>Mappetype</td>
</tr>
<tr class="odd">
<td><strong>tittel</strong></td>
<td><p>Definisjon: Tittel eller navn på arkivenheten</p>
<p>Kilde: Registreres manuelt eller hentes automatisk fra innholdet i arkivdokumentet. Ja fra klassetittel dersom alle mapper skal ha samme tittel som klassen. Kan også hentes automatisk fra et fagsystem.</p>
<p>Kommentarer: For saksmappe og journalpost vil dette tilsvare &quot;Sakstittel&quot; og &quot;Dokumentbeskrivelse&quot;. Disse navnene kan beholdes i grensesnittet.</p>
<p>M020</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>offentligTittel</strong></td>
<td><p>Definisjon: Offentlig tittel på arkivenheten, ord som skal skjermes er fjernet fra innholdet i tittelen (erstattet med ******)</p>
<p>Kommentarer: I løpende og offentlig journaler skal også offentligTittel være med dersom ord i tittelfeltet skal skjermes.</p>
<p>M025</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>beskrivelse</strong></td>
<td><p>Definisjon: Tekstlig beskrivelse av arkivenheten</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentarer: Tilsvarende attributt finnes ikke i Noark 4 (men noen tabeller hadde egne attributter for merknad som kunne brukes som et beskrivelsesfelt)</p>
<p>M021</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>nøkkelord</strong></td>
<td><p>Definisjon: Nøkkeord eller stikkord som beskriver innholdet i enheten</p>
<p>Kilde: Registreres vanligvis ved oppslag fra liste (f.eks. en tesaurus). Kan også registreres automatisk på grunnlag av dokumentinnhold eller integrering med fagsystem.</p>
<p>Kommentarer: Nøkkelord kan brukes for å forbedre mulighetene for søking og gjenfinning. Nøkkelord skal ikke erstatte klassifikasjon.</p>
<p>M022</p></td>
<td>[0..*]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>dokumentmedium</strong></td>
<td><p>Definisjon: Angivelse av om arkivenheten inneholder fysiske dokumenter, elektroniske dokumenter eller en blanding av fysiske og elektroniske</p>
<p>dokumenter</p>
<p>Kilde: Arves fra overordnet nivå, kan overstyres manuelt</p>
<p>Kommentarer: Obligatorisk ved blanding av fysisk og elektronisk arkiv. Er hele arkivet enten fysisk eller elektronisk, er det tilstrekkelig med verdi på arkivnivå. Er en hel arkivdel enten fysisk eller elektronisk, er det tilstrekkelig å angi det på arkivdelnivå. Dersom underordnede arkivdeler inneholder både fysiske og elektroniske dokumenter, må informasjon om dette arves nedover i hierarkiet. Se også kommentar til M208 referanseArkivdel.</p>
<p>M300</p></td>
<td>[0..1]</td>
<td></td>
<td>Dokumentmedium</td>
</tr>
<tr class="even">
<td><strong>oppbevaringssted</strong></td>
<td><p>Definisjon: Stedet hvor de fysiske dokumentene oppbevares. Kan være angivelse av rom, hylle, skap osv. Overordnede arkivdeler (f.eks. en arkivdel) kan oppbevares på flere steder.</p>
<p>Kilde: Arves fra overordnet nivå, kan overstyres manuelt</p>
<p>Kommentarer: Fysiske dokumenters plassering skal ellers gå fram av arkivstrukturen. Fysiske dokumenter i et sakarkiv skal i utgangspunktet være ordnet i overordnede omslag (f.eks. hengemapper) etter stigende klasseID. Innenfor hver av disse skal omslagene skal dokumentene ligge i fysiske saksmapper som er ordnet etter stigende mappeID. Innenfor saksmappene skal dokumentene være ordnet etter stigende journalpostnummer (&quot;dokumentnummer&quot;). Vedlegg skal legges sammen med tilhørende hoveddokument.</p>
<p>M301</p></td>
<td>[0..*]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>avsluttetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble avsluttet/lukket</p>
<p>Kilde: Registreres automatisk av systemet når enheten avsluttes</p>
<p>Kommentarer: (ingen)</p>
<p>M602</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="even">
<td><strong>avsluttetAv</strong></td>
<td><p>Definisjon: Navn på person som avsluttet/lukket arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M603</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseAvsluttetAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>kassasjon</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Kassasjon</td>
</tr>
<tr class="odd">
<td><strong>skjerming</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Skjerming</td>
</tr>
<tr class="even">
<td><strong>gradering</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Gradering</td>
</tr>
<tr class="odd">
<td><strong>referanseForelderMappe</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>virksomhetsspesifikkeMetadata</strong></td>
<td><p>Definisjon: Et overordnet metadataelement som kan inneholde egendefinerte metadata. Disse metadataene må da være spesifisert i et eller flere XML-skjema.</p>
<p>Kilde: (ingen)</p>
<p>Kommentar: (ingen)</p>
<p>M711 virksomhetsspesifikkeMetadata</p></td>
<td>[0..1]</td>
<td></td>
<td>any</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>5.4.1 En mappe skal kunne være av forskjellig type.</td>
<td></td>
</tr>
<tr class="even">
<td>5.4.2 En Mappe skal tilhøre en Arkivdel og en Arkivdel kan innehold ingen, en eller flere Mapper.</td>
<td></td>
</tr>
<tr class="odd">
<td>5.4.3 En Mappe skal tilhøre en Klasse og en Klasse kan klassifisere ingen, en eller flere Mapper.</td>
<td></td>
</tr>
<tr class="even">
<td>5.4.5 En Mappe bør kunne inngå i andre Mapper i et hierarki</td>
<td></td>
</tr>
<tr class="odd">
<td>5.4.6 En Mappe skal kunne bestå av ingen, en eller flere Registreringer og en Registrering kan inngå i (kun) en Mappe.</td>
<td></td>
</tr>
<tr class="even">
<td>5.4.7 Dersom en Mappe er registrert som avsluttet (avsluttetDato) skal det ikke være mulig å legge flere Registreringer til Mappen.</td>
<td></td>
</tr>
<tr class="odd">
<td>5.4.8 En Mappe skal kunne utvides til en Saksmappe</td>
<td></td>
</tr>
<tr class="even">
<td><p>5.4.14 Dersom det er angitt et primært klassifikasjonssystem for</p>
<p>Arkivdel, skal alle Mapper i arkivdelen ha verdier fra</p>
<p>dette klassifikasjonssystemet som primær klasse.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.4.19 Det bør finnes en tjeneste/funksjon for å legge opp og</p>
<p>ajourholde undermapper for en Mappe (mappehierarki).</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>6.1.1 Det skal finnes en tjeneste/funksjon for å avslutte en</p>
<p>Mappe (dvs. at avsluttetDato settes).</p></td>
<td></td>
</tr>
<tr class="odd">
<td>6.1.2 For en Mappe som er avsluttet skal det ikke være mulig å endre følgende metadata: tittel ,dokumentmedium</td>
<td></td>
</tr>
<tr class="even">
<td><p>6.1.17 Det skal ikke være mulig å slette en Mappe som er</p>
<p>avsluttet.</p></td>
<td></td>
</tr>
<tr class="odd">
<td>Ny - Etter at mappe er registrert så skal kjernen fylle ut systemid, opprettetAv og opprettetDato</td>
<td></td>
</tr>
<tr class="even">
<td>Ny - Når mappe avsluttes så skal avsluttetDato og avsluttetAv registreres</td>
<td></td>
</tr>
<tr class="odd">
<td>Ny - Mappe kan enten være tilknyttet arkivdel eller referanseForelderMappe eller klasse</td>
<td></td>
</tr>
<tr class="even">
<td>M003 mappeID: Skal ikke kunne endres</td>
<td></td>
</tr>
<tr class="odd">
<td><p>M025 offentligTittel: Obligatorisk i arkivuttrekk dersom tittelen inneholder ord som skal</p>
<p>skjermes, jf. M504 skjermingMetadata.</p></td>
<td></td>
</tr>
<tr class="even">
<td>M602 avsluttetDato: Skal ikke kunne endres.</td>
<td></td>
</tr>
<tr class="odd">
<td>M602 avsluttetDato: Obligatorisk dersom arkivdelen er avsluttet.</td>
<td></td>
</tr>
<tr class="even">
<td>M603 avsluttetAv: Skal ikke kunne endres</td>
<td></td>
</tr>
<tr class="odd">
<td>M603 avsluttetAv: Obligatorisk dersom arkivenheten er avsluttet.</td>
<td></td>
</tr>
</tbody>
</table>

#### Merknad

*Type:* ***Class***

*Arver:* 

En eller flere merknader skal kunne knyttes til en mappe,
basisregistrering eller en dokumentbeskrivelse. Merknader skal brukes
for å dokumentere spesielle forhold rundt saksbehandlingen og
arkivering av dokumenter, og denne informasjonen skal tas med i
arkivuttrekket.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>merknad</p>
<p>0..*</p>
<p>Merknad</p></td>
<td>Mappe</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>merknad</p>
<p>0..*</p>
<p>Merknad</p></td>
<td>Basisregistrering</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>merknad</p>
<p>0..*</p>
<p>Merknad</p></td>
<td>Dokumentbeskrivelse</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                  |
| --------- | ---------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/merknad/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-merknad/ |
| REST\_REL | self                                                       |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/merknadstype/    |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>systemID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av arkivenheten innenfor det arkivskapende organet. Dersom organet har flere arkivsystemer, skal altså systemID være gjennomgående entydig. Systemidentifikasjonen vil som oftest være en nummerisk kode uten noe logisk meningsinnhold. Identifikasjonen trenger ikke å være synlig for brukerne.</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: Alle referanser fra en arkivenhet til en annen skal peke til arkivenhetens systemidentifikasjon. Dette gjelder også referanser fra en arkivdel til en annen, f.eks. mellom to arkivperioder som avleveres på forskjellig tidspunkt. I et arkivuttrekk skal systemID være entydig (unik). Dokumentobjekt har ingen systemidentifikasjon fordi enheten kan være duplisert i et arkivuttrekk dersom samme dokumentfil er knyttet til flere forskjellige registreringer.</p>
<p>M001</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>merknadstekst</strong></td>
<td><p>Definisjon: Merknad fra saksbehandler, leder eller arkivpersonale.</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentarer: Merknaden bør gjelde selve saksbehandlingen eller forhold arkiveringen av dokumentene som tilhører arkivenheten.</p>
<p>M310</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>merknadstype</strong></td>
<td><p>Definisjon: Navn på type merknad</p>
<p>M084</p></td>
<td>[0..1]</td>
<td></td>
<td>Merknadstype</td>
</tr>
<tr class="even">
<td><strong>merknadsdato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når merknaden ble registrert</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: (ingen)</p>
<p>M611</p></td>
<td>[1..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>merknadRegistrertAv</strong></td>
<td><p>Definisjon: Navn på person som har registrert merknaden</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: (ingen)</p>
<p>M612</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referanseMerknadRegistrertAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**                                  | **Merknad** |
| ----------------------------------------- | ----------- |
| M001 systemID: Skal ikke kunne endres     |             |
| M611 merknadsdato: Kan ikke endres        |             |
| M612 merknadRegistrertAv: Kan ikke endres |             |

#### Registrering

*Type:* ***Class***

*Arver:* ***Arkivenhet***

En registrering inneholder bare de metadata som er nødvendig dersom
dokumentet arkiveres uten journalføring. Dette kalles også forenklet
registrering.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>registrering</p>
<p>0..*</p>
<p>Registrering</p></td>
<td><p>mappe</p>
<p>0..1</p>
<p>Mappe</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>registrering</p>
<p>0..*</p>
<p>Registrering</p></td>
<td><p>arkivdel</p>
<p>0..1</p>
<p>Arkivdel</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Registrering</td>
<td>Arkivenhet</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>registrering</p>
<p>0..*</p>
<p>Registrering</p></td>
<td><p>klasse</p>
<p>0..1</p>
<p>Klasse</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>dokumentbeskrivelse</p>
<p>0..*</p>
<p>Dokumentbeskrivelse</p></td>
<td><p>registrering</p>
<p>1..*</p>
<p>Registrering</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>nasjonalidentifikator</p>
<p>0..*</p>
<p>Nasjonalidentifikator</p></td>
<td>Registrering</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Basisregistrering</td>
<td>Registrering</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                                |
| --------- | ------------------------------------------------------------------------ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/mappe/                    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-dokumentbeskrivelse/   |
| REST\_REL | self                                                                     |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-klasse/                |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/dokumentbeskrivelse/      |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/arkivdel/                 |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-mappe/                 |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/klasse/                   |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/nasjonaleidentifikator/   |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-arkivdel/              |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-registrering/          |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-nasjonalidentifikator/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/registrering/             |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>arkivertDato</strong></td>
<td><p>Definisjon. Dato og klokkeslett når alle dokumentene som er tilknyttet registreringen ble arkivert</p>
<p>Kilde: Registreres automatisk ved utførelse av en funksjon som markerer at dokumentene er arkivert. For journalposter kan dette knyttes til endring av journalstatus.</p>
<p>Kommentarer: Arkivering innebærer at dokumentene blir &quot;frosset&quot;, dvs. sperret for all videre redigering/endring</p>
<p>M604</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="even">
<td><strong>arkivertAv</strong></td>
<td><p>Definisjon: Navn på person som arkiverte dokumentet og frøs det for all videre redigering</p>
<p>Kilde: Registreres automatisk ved utførelse av en funksjon som markerer at dokumentene er arkivert. For journalposter kan dette knyttes til endring av journalstatus.</p>
<p>Kommentarer: (ingen)</p>
<p>M605</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseArkivertAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>kassasjon</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Kassasjon</td>
</tr>
<tr class="odd">
<td><strong>skjerming</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Skjerming</td>
</tr>
<tr class="even">
<td><strong>gradering</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>Gradering</td>
</tr>
<tr class="odd">
<td><strong>referanseArkivdel</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>5.5.2 Hvis Mappenivået er benyttet, skal en Registrering</p>
<p>tilhøre (kun) en Mappe og en Mappe kan innehold ingen,</p>
<p>en eller flere Registreringer.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.5.3 Hvis Mappenivået ikke er benyttet, skal Registrering</p>
<p>tilhøre (kun) én Arkivdel og en Arkivdel kan inneholde</p>
<p>ingen, én eller flere Registreringer.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.5.4 Hvis Mappenivået ikke er benyttet, skal Registrering</p>
<p>tilhøre kun en Klasse og en Klasse kan inngå i ingen, en</p>
<p>eller flere Registreringer.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.5.5 En Registrering skal kunne inneholde ingen, en eller flere</p>
<p>Dokumentbeskrivelser og en Dokumentbeskrivelse skal</p>
<p>inngå i en eller flere Registreringer.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.5.6 En Registrering skal kunne utvides til en</p>
<p>Basisregistrering</p></td>
<td></td>
</tr>
<tr class="even">
<td>Ny - Etter at registrering er registrert så skal kjernen fylle ut systemid, opprettetAv og opprettetDato</td>
<td></td>
</tr>
<tr class="odd">
<td>Ny - Når registrering arkiveres så skal arkivertDato og arkivertAv/referanseArkivertAv registreres</td>
<td></td>
</tr>
<tr class="even">
<td>M604 arkivertDato: Kan ikke endres</td>
<td></td>
</tr>
<tr class="odd">
<td>M605 arkivertAv: Kan ikke endres</td>
<td></td>
</tr>
</tbody>
</table>

#### Skjerming

*Type:* ***Class «dataType»***

*Arver:* 

Skjerming benyttes til å skjerme registrerte opplysninger eller
enkeltdokumenter. Skjermingen trer i kraft når en tilgangskode påføres
den enkelte mappe, registrering eller det enkelte dokument. (Se NOARK
5 v3.1 eget kapittel: 6.6.1 Skjerming)

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>tilgangsrestriksjon</strong></td>
<td><p>Definisjon: Angivelse av at dokumentene som tilhører arkivenheten ikke er offentlig tilgjengelig i henhold til offentlighetsloven eller av en annen grunn</p>
<p>Kilde: Registreres manuelt ved valg fra liste, kan også registres automatisk</p>
<p>Kommentarer: (ingen)</p>
<p>M500</p></td>
<td>[1..1]</td>
<td></td>
<td>Tilgangsrestriksjon</td>
</tr>
<tr class="even">
<td><strong>skjermingshjemmel</strong></td>
<td><p>Definisjon: Henvisning til hjemmel (paragraf) i offentlighetsloven, sikkerhetsloven eller beskyttelsesinstruksen</p>
<p>Kilde: Registreres automatisk på grunnlag av valgt tilgangskode, kan overstyres manuelt</p>
<p>Kommentarer: (ingen)</p>
<p>M501</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>skjermingMetadata</strong></td>
<td><p>Definisjon: Angivelse av hvilke metadataelementer som skal skjermes.</p>
<p>Kilde: Registreres manuelt ved valg fra liste eller annen funksjonalitet, kan også registreres automatisk</p>
<p>Kommentarer: Skjerming av klasseID (arkivnøkkel, arkivkode) er f.eks. aktuelt når identifikasjonen er et fødselsnummer. Dersom utvalgte ord fra tittel skjermes, er metadataelementet M025 offentligTittel obligatorisk. Skjerming av navn på part i sak angis for saksmappe, skjerming av navn på avsender og mottaker angis for journalpost, skjerming av merknader angis for saksmappe og journalpost. Ved midlertidig skjerming skal alle metadata ovenfor skjermes, må bare brukes inntil skjermingsbehovet er vurdert.</p>
<p>M502</p></td>
<td>[0..*]</td>
<td></td>
<td>SkjermingMetadata</td>
</tr>
<tr class="even">
<td><strong>skjermingDokument</strong></td>
<td><p>Definisjon: Angivelse av at hele dokumentet eller deler av det må skjermes.</p>
<p>Kilde: Registreres manuelt ved valg fra liste eller annen funksjonalitet, kan også registreres automatisk</p>
<p>Kommentarer: Dersom deler av dokumentet skal skjermes, må dokumentet også finnes i en variant. Her må all informasjon som skal skjermes, være &quot;sladdet&quot;.</p>
<p>M503</p></td>
<td>[0..1]</td>
<td></td>
<td>SkjermingDokument</td>
</tr>
<tr class="odd">
<td><strong>skjermingsvarighet</strong></td>
<td><p>Definisjon: Antall år skjermingen skal opprettholdes.</p>
<p>Kilde: Registreres automatisk knyttet til valg av tilgangskode, kan registreres manuelt.</p>
<p>Kommentarer: Tidspunktet for når skjermingsvarigheten starter å løpe, vil vanligvis være når journalposten ble registrert, men det skal være mulig med andre regler.</p>
<p>M504</p></td>
<td>[0..1]</td>
<td></td>
<td>integer</td>
</tr>
<tr class="even">
<td><strong>skjermingOpphørerDato</strong></td>
<td><p>Definisjon: Datoen skjermingen skal oppheves.</p>
<p>Kilde: Datoen beregnes automatisk på grunnlag av M504 skjermingsvarighet</p>
<p>Kommentarer: (ingen)</p>
<p>M505</p></td>
<td>[0..1]</td>
<td></td>
<td>date</td>
</tr>
</tbody>
</table>

#### Sletting

*Type:* ***Class «dataType»***

*Arver:* 

Et viktig krav i Noark 5 er at arkiverte elektroniske dokumenter ikke
skal kunne slettes.  Kontrollert sletting skal bare kunne foretas av
autoriserte brukere i forbindelse med kassasjon, se NOARK 5 v3.1
kapittel 5.10 Bevaring og kassasjon.

Dessuten kan dokumenter slettes av autoriserte brukere dersom de er
formelt avlevert til et arkivdepot, se NOARK 5 v3.1 kapittel 5.12
Avlevering. Det understrekes at dette siste bare gjelder avleverte
dokumenter, ikke dokumenter som bare er deponert til arkivdepotet.

Dersom et dokument er arkivert i mer enn én versjon, skal det være
mulig å slette de eldre versjonene. Vanligvis er det bare den siste,
ferdiggjorte versjon som skal arkiveres. Men det kan også være aktuelt
å arkivere tidligere versjoner dersom disse har
dokumentasjonsverdi. Det kan f.eks. være tilfelle dersom en leder har
gjort vesentlige endringer i utkastet til en
saksbehandler. Saksbehandlers utkast kan da arkiveres som en tidligere
versjon av det ferdige dokumentet. Dette vil gi ekstra dokumentasjon
om selve saksbehandlingsforløpet.

Dersom tidligere versjoner er blitt arkivert unødvendig, skal det være
mulig å rydde opp på en effektiv måte. Slik opprydding skal alltid
skje før det produseres et arkivuttrekk.

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>slettingstype</strong></td>
<td><p>Definisjon: Navn på hvilket objekt som er slettet</p>
<p>Kilde: (ingen)</p>
<p>Kommentarer: Siste versjon av et dokument skal vanligvis ikke kunne slettes. Sletting av innholdet i en arkivdel skal bare kunne utføres av autorisert personale.</p>
<p>M089</p></td>
<td>[1..1]</td>
<td></td>
<td>Slettingstype</td>
</tr>
<tr class="even">
<td><strong>slettetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når et dokument ble slettet</p>
<p>Kilde: Registreres automatisk når en tidligere versjon eller en variant av et dokument slettes.</p>
<p>Kommentarer: Informasjon om sletting av dokumenter i produksjonsformat skal ikke avleveres. Sletting må ikke blandes sammen med kassasjon.</p>
<p>M613</p></td>
<td>[1..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>slettetAv</strong></td>
<td><p>Definisjon: Navn på person som har utført en kontrollert kassasjon av dokumenter, eller sletting av versjoner, formater og varianter.</p>
<p>Kilde: Registreres automatisk når et dokument blir slettet</p>
<p>Kommentarer: Sletting må ikke blandes sammen med kassasjon.</p>
<p>M614</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referanseSlettetAv</strong></td>
<td></td>
<td>[1..1]</td>
<td></td>
<td>SystemID</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**          | **Merknad**                  |
| ----------------- | ---------------------------- |
| slettetAv\_M614   | slettetAv: Kan ikke endres   |
| slettetDato\_M613 | slettetDato: Kan ikke endres |

#### UtførtKassasjon

*Type:* ***Class «dataType»***

*Arver:* 

Metadata for utført kassasjon er obligatorisk når kassasjon er utført
før arkivuttrekket

produseres. Det skal grupperes inn i metadata for dokumentbeskrivelse.
Dersom en hel

arkivdel er kassert, skal metadata grupperes inn i arkivdel.

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>kassertDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når kassasjonen ble utført</p>
<p>Kilde: Registreres automatisk når kassasjon utføres</p>
<p>Kommentarer: (ingen)</p>
<p>M630</p></td>
<td>[1..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="even">
<td><strong>kassertAv</strong></td>
<td><p>Definisjon: Navn på person som har utført kassasjonen</p>
<p>Kilde: Registreres automatisk når kassasjon utføres</p>
<p>Kommentarer: (ingen)</p>
<p>M631</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseKassertAv</strong></td>
<td></td>
<td>[1..1]</td>
<td></td>
<td>SystemID</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**          | **Merknad**                         |
| ----------------- | ----------------------------------- |
| kassertAv\_M631   | kassertAv: Skal ikke kunne endres   |
| kassertDato\_M630 | kassertdato: Skal ikke kunne endres |

#### NasjonaleIdentifikatorer 

**<span class="underline">Nasjonale identifikatorer</span>** -
*(diagram) *

![](./media/uml-bruken-av-nasjonalidentifikator.png)

Figur: 20

##### **Bygning**

*Type:* ***Class***

*Arver:* ***Nasjonalidentifikator***

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Bygning</td>
<td>Nasjonalidentifikator</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                  |
| --------- | ---------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/bygning/    |
| REST\_REL | self                                                       |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-bygning/ |

*<span class="underline">Attributter</span>*

| **Navn**              | **Merknad** | **Multipl.** | **Kode** | **Type**  |
| --------------------- | ----------- | ------------ | -------- | --------- |
| **byggidentifikator** |             | \[1..1\]     |          | ByggIdent |

##### **Enhetsidentifikator**

*Type:* ***Class***

*Arver:* ***Nasjonalidentifikator***

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Enhetsidentifikator</td>
<td>Nasjonalidentifikator</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Attributter</span>*

| **Navn**                | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ----------------------- | ----------- | ------------ | -------- | -------- |
| **organisasjonsnummer** |             | \[1..1\]     |          | string   |

##### **Matrikkel**

*Type:* ***Class***

*Arver:* ***Nasjonalidentifikator***

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Matrikkel</td>
<td>Nasjonalidentifikator</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                    |
| --------- | ------------------------------------------------------------ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-matrikkel/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/matrikkel/    |
| REST\_REL | self                                                         |

*<span class="underline">Attributter</span>*

| **Navn**            | **Merknad** | **Multipl.** | **Kode** | **Type**        |
| ------------------- | ----------- | ------------ | -------- | --------------- |
| **matrikkelnummer** |             | \[1..1\]     |          | Matrikkelnummer |

##### **Nasjonalidentifikator**

*Type:* ***Class***

*Arver:* 

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>nasjonalidentifikator</p>
<p>0..*</p>
<p>Nasjonalidentifikator</p></td>
<td>Mappe</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Aggregation</span></strong></p>
<p>Destination -&gt; Source</p></td>
<td><p>nasjonalidentifikator</p>
<p>0..*</p>
<p>Nasjonalidentifikator</p></td>
<td>Registrering</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Bygning</td>
<td>Nasjonalidentifikator</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Enhetsidentifikator</td>
<td>Nasjonalidentifikator</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Matrikkel</td>
<td>Nasjonalidentifikator</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Plan</td>
<td>Nasjonalidentifikator</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Posisjon</td>
<td>Nasjonalidentifikator</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Personidentifikator</td>
<td>Nasjonalidentifikator</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                                |
| --------- | ------------------------------------------------------------------------ |
| NEW       | 5.4.0                                                                    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-nasjonalidentifikator/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/nasjonalidentifikator/    |
| REST\_REL | self                                                                     |

*<span class="underline">Attributter</span>*

| **Navn**        | **Merknad** | **Multipl.** | **Kode** | **Type** |
| --------------- | ----------- | ------------ | -------- | -------- |
| **systemID**    |             | \[0..1\]     |          | SystemID |
| **beskrivelse** |             | \[0..1\]     |          | string   |

##### **Personidentifikator**

*Type:* ***Class***

*Arver:* ***Nasjonalidentifikator***

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Personidentifikator</td>
<td>Nasjonalidentifikator</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag** | **Verdi**                                        |
| ------- | ------------------------------------------------ |
| LOV     | https://lovdata.no/dokument/NL/lov/2000-04-14-31 |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>fødselsnummer</strong></td>
<td><p>Personopplysningsloven § 12. Bruk av fødselsnummer m.v.</p>
<p>Fødselsnummer og andre entydige identifikasjonsmidler kan bare nyttes i behandlingen når det er saklig behov for sikker identifisering og metoden er nødvendig for å oppnå slik identifisering.</p>
<p>Datatilsynet kan pålegge en behandlingsansvarlig å bruke identifikasjonsmidler som nevnt i første ledd for å sikre at personopplysningene har tilstrekkelig kvalitet.</p>
<p>Kongen kan gi forskrift med nærmere regler om bruk av fødselsnummer og andre entydige identifikasjonsmidler.</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>dNummer</strong></td>
<td>Et D-nummer er et midlertidig nummer som blant annet tildeles utenlandske statsborgere som er skatte- eller avgiftspliktige til Norge. Det kreves et D-nummer for å bli registrert i Folkeregisteret.</td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
</tbody>
</table>

##### **Plan**

*Type:* ***Class***

*Arver:* ***Nasjonalidentifikator***

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Plan</td>
<td>Nasjonalidentifikator</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                               |
| --------- | ------------------------------------------------------- |
| REST\_REL | self                                                    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/plan/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-plan/ |

*<span class="underline">Attributter</span>*

| **Navn**              | **Merknad** | **Multipl.** | **Kode** | **Type**            |
| --------------------- | ----------- | ------------ | -------- | ------------------- |
| **planidentifikator** |             | \[1..1\]     |          | NasjonalArealplanId |

##### **Posisjon**

*Type:* ***Class***

*Arver:* ***Nasjonalidentifikator***

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Posisjon</td>
<td>Nasjonalidentifikator</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                   |
| --------- | ----------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-posisjon/ |
| REST\_REL | self                                                        |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/posisjon/    |

*<span class="underline">Attributter</span>*

| **Navn**       | **Merknad** | **Multipl.** | **Kode** | **Type** |
| -------------- | ----------- | ------------ | -------- | -------- |
| **plassering** |             | \[1..1\]     |          | Punkt    |

### Kodelister 

Felles skjema for alle kodelister og felles typer

**<span class="underline">Kodelister</span>** - *(diagram) *

![](./media/uml-kodelister-entiter.png)

Figur: 21

**<span class="underline">Metadata</span>** - *(diagram) *

![](./media/uml-metadata-entitet.png)

Figur: 22

#### Arkivdelstatus

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Status til den arkivperioden som arkivdelen omfatter

M051

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                 |
| -------- | --------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/arkivdelstatus/ |

*<span class="underline">Attributter</span>*

| **Navn**                | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ----------------------- | ----------- | ------------ | -------- | -------- |
| **Aktiv periode**       |             |              | A        |          |
| **Overlappingsperiode** |             |              | O        |          |
| **Avsluttet periode**   |             |              | P        |          |
| **Uaktuelle mapper**    |             |              | U        |          |

#### Arkivstatus

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Status til arkivet

M050

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                              |
| -------- | ------------------------------------------------------ |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/arkivstatus/ |

*<span class="underline">Attributter</span>*

| **Navn**      | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ------------- | ----------- | ------------ | -------- | -------- |
| **Opprettet** |             |              | O        |          |
| **Avsluttet** |             |              | A        |          |

#### Avskrivningsmåte

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Måten en journalpost har blitt avskrevet på

M619

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                    |
| -------- | ------------------------------------------------------------ |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/avskrivningsmaate/ |

*<span class="underline">Attributter</span>*

| **Navn**                  | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ------------------------- | ----------- | ------------ | -------- | -------- |
| **Besvart med brev**      |             |              | BU       |          |
| **Besvart med e-post**    |             |              | BE       |          |
| **Besvart på telefon**    |             |              | TLF      |          |
| **Tatt til etterretning** |             |              | TE       |          |
| **Tatt til orientering**  |             |              | TO       |          |

#### Dokumentmedium

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Angivelse av om arkivenheten inneholder fysiske dokumenter,
elektroniske dokumenter eller en blanding av fysiske og elektroniske
dokumenter

M300

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                 |
| -------- | --------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/dokumentmedium/ |

*<span class="underline">Attributter</span>*

| **Navn**                                | **Merknad** | **Multipl.** | **Kode** | **Type** |
| --------------------------------------- | ----------- | ------------ | -------- | -------- |
| **Fysisk medium**                       |             |              | F        |          |
| **Elektronisk arkiv**                   |             |              | E        |          |
| **Blandet fysisk og elektronisk arkiv** |             |              | B        |          |

#### Dokumentstatus

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Status til dokumentet

M054

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                 |
| -------- | --------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/dokumentstatus/ |

*<span class="underline">Attributter</span>*

| **Navn**                           | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ---------------------------------- | ----------- | ------------ | -------- | -------- |
| **Dokumentet er under redigering** |             |              | B        |          |
| **Dokumentet er ferdigstilt**      |             |              | F        |          |

#### Dokumenttype

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Navn på type dokument

M083

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                               |
| -------- | ------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/dokumenttype/ |

*<span class="underline">Attributter</span>*

| **Navn**             | **Merknad** | **Multipl.** | **Kode** | **Type** |
| -------------------- | ----------- | ------------ | -------- | -------- |
| **Brev**             | Valgfri     |              | B        |          |
| **Rundskriv**        | Valgfri     |              | R        |          |
| **Faktura**          | Valgfri     |              | F        |          |
| **Ordrebekreftelse** | Valgfri     |              | O        |          |

#### ElektroniskSignaturSikkerhetsnivå

*Type:* ***Class «codeList»***

*Arver:* 

Åpen kodeliste

Definisjon: Angivelse av hvilket sikkerhetsnivå som ble brukt ved
forsendelse og mottak av elektroniske dokumenter

Kilde: Registreres automatisk knyttet til funksjonalitet for elektronisk
signatur

Kommentar: (ingen)

M507
elektroniskSignaturSikkerhetsnivåå

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                                     |
| -------- | ----------------------------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/elektronisksignatursikkerhetsnivaa/ |

*<span class="underline">Attributter</span>*

| **Navn**                                       | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ---------------------------------------------- | ----------- | ------------ | -------- | -------- |
| **Symmetrisk kryptert**                        | Valgfri     |              | SK       |          |
| **Sendt med PKI/virksomhetssertifikat**        | Valgfri     |              | V        |          |
| **Sendt med PKI/"person standard"-sertifikat** | Valgfri     |              | PS       |          |
| **Sendt med PKI/"person høy"-sertifikat**      | Valgfri     |              | PH       |          |

#### ElektroniskSignaturVerifisert

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Angivelse av om et dokument er mottatt med elektronisk
signatur, og om signaturen er
verifisert.

M508

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                                |
| -------- | ------------------------------------------------------------------------ |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/elektronisksignaturverifisert/ |

*<span class="underline">Attributter</span>*

| **Navn**                             | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ------------------------------------ | ----------- | ------------ | -------- | -------- |
| **Signatur påført, ikke verifisert** |             |              | I        |          |
| **Signatur påført og verifisert**    |             |              | V        |          |

#### FlytStatus

*Type:* ***Class «codeList»***

*Arver:* 

Åpen kodeliste

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                             |
| -------- | ----------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/flytstatus/ |

*<span class="underline">Attributter</span>*

| **Navn**                                            | **Merknad** | **Multipl.** | **Kode** | **Type** |
| --------------------------------------------------- | ----------- | ------------ | -------- | -------- |
| **Godkjent**                                        | Valgfri     |              | G        |          |
| **Ikke godkjent**                                   | Valgfri     |              | I        |          |
| **Sendt tilbake til saksbehandler med kommentarer** | Valgfri     |              | S        |          |

#### Format

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                         |
| -------- | ------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/format/ |

*<span class="underline">Attributter</span>*

| **Navn**                     | **Merknad**                                                                                                                                                              | **Multipl.** | **Kode**  | **Type** |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------ | --------- | -------- |
| **Ren tekst**                | Som ren tekst: UTF-8 (ISO/IEC 10646-1:2000 Annex D) eller ISO 8859-1:1998, Latin 1. ISO 8859-1:1998, Latin 1 kan erstattes med ISO 8859-4:1998, Latin 4 for samiske tegn |              | RA-TEKST  |          |
| **TIFF versjon 6**           | TIFF - Tag Image File Format versjon 6, med de presiseringer som fremgår av forskriftens § 8-18                                                                          |              | RA-TIFF6  |          |
| **PDF/A - ISO 19005-1:2005** | PDF/A - ISO 19005-1:2005, versjon 1a eller 1b («Conformance Level» A eller B). PDF/A erstatter Adobe PDF, jf. forskriftens § 8-20 tredje ledd.                           |              | RA-PDF    |          |
| **XML**                      | XML - Extensible Markup Language versjon 1.0, med de presiseringer som fremgår av forskriftens § 8-19                                                                    |              | RA-XML    |          |
| **JPEG**                     | JPEG (ISO 10918-1:1994)                                                                                                                                                  |              | RA-JPEG   |          |
| **SOSI**                     | SOSI versjon 2.2 (1995) eller nyere                                                                                                                                      |              | RA-SOSI   |          |
| **MPEG-2**                   | MPEG-2 (ISO 13818-2.)                                                                                                                                                    |              | RA-MPEG-2 |          |
| **MP3**                      | lyd: MP3 (ISO 11172-3), PCM eller PCM-basert Wave. Valget mellom disse lydformatene skal i hvert tilfelle være avtalt med Arkivverket før deponering eller avlevering    |              | RA-MP3    |          |

#### Graderingskode

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                 |
| -------- | --------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/graderingskode/ |

*<span class="underline">Attributter</span>*

| **Navn**                                 | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ---------------------------------------- | ----------- | ------------ | -------- | -------- |
| **Strengt hemmelig (sikkerhetsgrad)**    |             |              | SH       |          |
| **Hemmelig (sikkerhetsgrad)**            |             |              | H        |          |
| **Konfidensielt (sikkerhetsgrad)**       |             |              | K        |          |
| **Begrenset (sikkerhetsgrad)**           |             |              | B        |          |
| **Fortrolig (beskyttelsesgrad)**         |             |              | F        |          |
| **Strengt fortrolig (beskyttelsesgrad)** |             |              | SF       |          |

#### Hendelsetype

*Type:* ***Class «codelist»***

*Arver:* 

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                               |
| -------- | ------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/hendelsetype/ |

*<span class="underline">Attributter</span>*

| **Navn**            | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ------------------- | ----------- | ------------ | -------- | -------- |
| **Endringslogg**    |             |              |          |          |
| **Søknad mottatt**  |             |              |          |          |
| **Søknad komplett** |             |              |          |          |
| **Vedtak**          |             |              |          |          |

#### Journalposttype

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Navn på type
journalpost

M082

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                  |
| -------- | ---------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/journalposttype/ |

*<span class="underline">Attributter</span>*

| **Navn**                                  | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ----------------------------------------- | ----------- | ------------ | -------- | -------- |
| **Inngående dokument**                    |             |              | I        |          |
| **Utgående dokument**                     |             |              | U        |          |
| **Organinternt dokument for oppfølging**  |             |              | N        |          |
| **Organinternt dokument uten oppfølging** |             |              | X        |          |
| **Saksframlegg**                          |             |              | S        |          |

#### Journalstatus

*Type:* ***Class «codelist»***

*Arver:* 

Definisjon: Status til journalposten, dvs. om dokumentet er registrert,
under behandling eller endelig arkivert.

M053

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                |
| -------- | -------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/journalstatus/ |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Journalført</strong></td>
<td></td>
<td></td>
<td>J</td>
<td></td>
</tr>
<tr class="even">
<td><strong>Ferdigstilt fra saksbehandler</strong></td>
<td></td>
<td></td>
<td>F</td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Godkjent av leder</strong></td>
<td></td>
<td></td>
<td>G</td>
<td></td>
</tr>
<tr class="even">
<td><strong>Ekspedert</strong></td>
<td></td>
<td></td>
<td>E</td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Arkivert</strong></td>
<td></td>
<td></td>
<td>A</td>
<td></td>
</tr>
<tr class="even">
<td><strong>Utgår</strong></td>
<td></td>
<td></td>
<td>U</td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Midlertidig registrering av innkommet dokument</strong></td>
<td>anbefalt</td>
<td></td>
<td>M</td>
<td></td>
</tr>
<tr class="even">
<td><strong>Saksbehandler har registrert innkommet dokument</strong></td>
<td>anbefalt</td>
<td></td>
<td>S</td>
<td></td>
</tr>
<tr class="odd">
<td><strong>Reservert dokument</strong></td>
<td><p>Reservert dokument, dvs. egenprodusert dokument</p>
<p>er under arbeid</p></td>
<td></td>
<td>R</td>
<td></td>
</tr>
</tbody>
</table>

#### Kassasjonsvedtak

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon:Handling som skal utføres ved bevaringstidens
slutt.

M450

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                   |
| -------- | ----------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/kassasjonsvedtak/ |

*<span class="underline">Attributter</span>*

| **Navn**            | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ------------------- | ----------- | ------------ | -------- | -------- |
| **Bevares**         |             |              | B        |          |
| **Kasseres**        |             |              | K        |          |
| **Vurderes senere** |             |              | G        |          |

#### Klassifikasjonstype

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Type
klassifikasjonssystem

M086

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                      |
| -------- | -------------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/klassifikasjonstype/ |

*<span class="underline">Attributter</span>*

| **Navn**                               | **Merknad** | **Multipl.** | **Kode** | **Type** |
| -------------------------------------- | ----------- | ------------ | -------- | -------- |
| **Gårds- og bruksnummer**              | Valgfri     |              | GBN      |          |
| **Funksjonsbasert, hierarkisk**        | Valgfri     |              | FH       |          |
| **Emnebasert, hierarkisk arkivnøkkel** | Valgfri     |              | EH       |          |
| **Emnebasert, ett nivå**               | Valgfri     |              | E1       |          |
| **K-koder**                            | Valgfri     |              | KK       |          |
| **Mangefasettert, ikke hierarki**      | Valgfri     |              | MF       |          |
| **Objektbasert**                       | Valgfri     |              | UO       |          |
| **Fødselsnummer**                      | Valgfri     |              | PNR      |          |

#### Korrespondanseparttype

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Type
korrespondansepart

M087

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                         |
| -------- | ----------------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/korrespondanseparttype/ |

*<span class="underline">Attributter</span>*

| **Navn**                | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ----------------------- | ----------- | ------------ | -------- | -------- |
| **Avsender**            |             |              | EA       |          |
| **Mottaker**            |             |              | EM       |          |
| **Kopimottaker**        |             |              | EK       |          |
| **Gruppemottaker**      |             |              | GM       |          |
| **Intern avsender**     |             |              | IA       |          |
| **Intern mottaker**     |             |              | IM       |          |
| **Intern kopimottaker** |             |              | IK       |          |

#### Land

*Type:* ***Class «codelist»***

*Arver:* 

Landkoder ihht ISO 3166
https://no.wikipedia.org/wiki/ISO\_3166-1\_alfa-2\#Offisielle\_koder

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                       |
| -------- | ----------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/land/ |

#### Mappetype

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                            |
| -------- | ---------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/mappetype/ |
| NEW      | 5.4.0                                                |

#### Merknadstype

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Navn på type merknad

M084

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                               |
| -------- | ------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/merknadstype/ |

*<span class="underline">Attributter</span>*

| **Navn**                       | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ------------------------------ | ----------- | ------------ | -------- | -------- |
| **Merknad fra saksbehandler**  | Valgfri     |              | MS       |          |
| **Merknad fra leder**          | Valgfri     |              | ML       |          |
| **Merknad fra arkivansvarlig** | Valgfri     |              | MA       |          |

#### MøtedeltakerFunksjon

*Type:* ***Class «codeList»***

*Arver:* 

Åpen kodeliste

Definisjon: Funksjon eller rolle til personen som deltok på møtet

M373
moetedeltakerFunksjon

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                        |
| -------- | ---------------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/moetedeltakerfunksjon/ |

*<span class="underline">Attributter</span>*

| **Navn**      | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ------------- | ----------- | ------------ | -------- | -------- |
| **Møteleder** | Valgfri     |              | M        |          |
| **Referent**  | Valgfri     |              | R        |          |

#### Møteregistreringsstatus

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Status til møteregistreringen

Kilde: (ingen)

Kommentar: Valgfrie verdier, eksempler:

 - "Ferdig behandlet av utvalget"
 - "Utsatt til nytt møte i samme utvalg"
 - "Sendt tilbake til foregående utvalg"

M055 moeteregistreringsstatus

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                           |
| -------- | ------------------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/moeteregistreringsstatus/ |

*<span class="underline">Attributter</span>*

| **Navn**                                | **Merknad** | **Multipl.** | **Kode** | **Type** |
| --------------------------------------- | ----------- | ------------ | -------- | -------- |
| **Ferdig behandlet av utvalget**        | Valgfri     |              | BE       |          |
| **Utsatt til nytt møte i samme utvalg** | Valgfri     |              | UT       |          |
| **Sendt tilbake til foregående utvalg** | Valgfri     |              | TB       |          |

#### Møteregistreringstype

*Type:* ***Class «codelist»***

*Arver:* 

Definisjon: Navn på type møteregistrering

Kommentar: utvidet i forhold til forslagene i NOARK 5 Vedlegg 1

Vedlegg 1 Metadatakatalog v 3.1, M085 lister følgende "aktuelle
verdier":

 - Møteinnkallelse
 - Saksliste
 - Saksframlegg
 - Vedlegg til møtesak

M085 moeteregistreringstype

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                         |
| -------- | ----------------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/moeteregistreringstype/ |

*<span class="underline">Attributter</span>*

| **Navn**                | **Merknad**                                                                                                                     | **Multipl.** | **Kode** | **Type** |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------ | -------- | -------- |
| **Møteinnkalling**      |                                                                                                                                 |              | MI       |          |
| **Saksframlegg**        |                                                                                                                                 |              | SF       |          |
| **Saksprotokoll**       |                                                                                                                                 |              | SP       |          |
| **Møteprotokoll**       |                                                                                                                                 |              | MP       |          |
| **Saksliste**           |                                                                                                                                 |              | SL       |          |
| **Offentlig saksliste** | Offentlig saksliste, dvs en saksliste hvor informasjon (vanligvis kun i sakstittel) som skal unntas offentligheten, er skjermet |              | OL       |          |
| **Vedlegg til møtesak** |                                                                                                                                 |              | VL       |          |

#### Møtesakstype

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Navn på type møtesak

Kilde: (ingen)

Kommentar: (ingen)

M088 moetesakstype

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                |
| -------- | -------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/moetesakstype/ |

*<span class="underline">Attributter</span>*

| **Navn**                         | **Merknad** | **Multipl.** | **Kode** | **Type** |
| -------------------------------- | ----------- | ------------ | -------- | -------- |
| **Politisk sak**                 |             |              | PS       |          |
| **Delegert møtesak**             |             |              | DS       |          |
| **Referatsak**                   |             |              | RS       |          |
| **Forespørsel (interpellasjon)** |             |              | FO       |          |

#### Postnummer

*Type:* ***Class «codelist»***

*Arver:* 

Postens postnummer liste
http://adressesok.posten.no/nb/postal\_codes/search

*<span class="underline">Relasjoner</span>*

| **Relasjon**                                | **Kilde**  | **Mål**       | **Merknad** |
| ------------------------------------------- | ---------- | ------------- | ----------- |
| **<span class="underline">NoteLink</span>** | Postnummer | \<anonymous\> |             |

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                             |
| -------- | ----------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/postnummer/ |

#### Presedensstatus

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Informasjon om presedensen er gjeldende eller
foreldet

M056

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                  |
| -------- | ---------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/presedensstatus/ |

*<span class="underline">Attributter</span>*

| **Navn**      | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ------------- | ----------- | ------------ | -------- | -------- |
| **Gjeldende** |             |              | G        |          |
| **Foreldet**  |             |              | F        |          |

#### SakspartRolle

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                |
| -------- | -------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/sakspartrolle/ |

*<span class="underline">Attributter</span>*

| **Navn**      | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ------------- | ----------- | ------------ | -------- | -------- |
| **Klient**    | Valgfri     |              | KLI      |          |
| **Pårørende** | Valgfri     |              | PÅ       |          |
| **Formynder** | Valgfri     |              | FORM     |          |
| **Advokat**   | Valgfri     |              | ADV      |          |

#### Saksstatus

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Status til saksmappen, dvs. hvor langt saksbehandlingen har
kommet.

M052

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                             |
| -------- | ----------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/saksstatus/ |

*<span class="underline">Attributter</span>*

| **Navn**                        | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ------------------------------- | ----------- | ------------ | -------- | -------- |
| **Under behandling**            |             |              | B        |          |
| **Avsluttet**                   |             |              | A        |          |
| **Utgår**                       |             |              | U        |          |
| **Opprettet av saksbehandler ** | anbefalt    |              | R        |          |
| **Avsluttet av saksbehandler**  | anbefalt    |              | S        |          |
| **Unntatt prosesstyring**       | anbefalt    |              | P        |          |
| **Ferdig fra saksbehandler**    |             |              | F        |          |

#### SkjermingDokument

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Angivelse av at hele dokumentet eller deler av det må
skjermes.

M503

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                    |
| -------- | ------------------------------------------------------------ |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/skjermingdokument/ |

*<span class="underline">Attributter</span>*

| **Navn**                             | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ------------------------------------ | ----------- | ------------ | -------- | -------- |
| **Skjerming av hele dokumentet**     |             |              | H        |          |
| **Skjerming av deler av dokumentet** |             |              | D        |          |

#### SkjermingMetadata

*Type:* ***Class «codeList»***

*Arver:* 

Åpen kodeliste

Definisjon: Angivelse av hvilke metadataelementer som skal
skjermes.

M502

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                    |
| -------- | ------------------------------------------------------------ |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/skjermingmetadata/ |

*<span class="underline">Attributter</span>*

| **Navn**                                                 | **Merknad** | **Multipl.** | **Kode** | **Type** |
| -------------------------------------------------------- | ----------- | ------------ | -------- | -------- |
| **Skjerming klasseID**                                   |             |              | KID      |          |
| **Skjerming tittel klasse**                              |             |              | TKL      |          |
| **Skjerming tittel mappe - unntatt første linje**        |             |              | TM1      |          |
| **Skjerming tittel mappe - utvalgte ord**                |             |              | TMO      |          |
| **Skjerming navn part i sak**                            |             |              | NPS      |          |
| **Skjerming tittel registrering - unntatt første linje** |             |              | TR1      |          |
| **Skjerming tittel registrering - utvalgte ord**         |             |              | TRO      |          |
| **Skjerming navn avsender**                              |             |              | NA       |          |
| **Skjerming navn mottaker**                              |             |              | NM       |          |
| **Skjerming tittel dokumentbeskrivelse**                 |             |              | TD       |          |
| **Skjerming merknadstekst**                              |             |              | MT       |          |
| **Midlertidig skjerming**                                |             |              | M        |          |

#### Slettingstype

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Navn på hvilket objekt som er slettet

M089

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                |
| -------- | -------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/slettingstype/ |

*<span class="underline">Attributter</span>*

| **Navn**                                        | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ----------------------------------------------- | ----------- | ------------ | -------- | -------- |
| **Sletting av produksjonsformat**               |             |              | SP       |          |
| **Sletting av tidligere versjon**               |             |              | SV       |          |
| **Sletting av variant med sladdet informasjon** |             |              | SS       |          |
| **Sletting av hele innholdet i arkivdelen**     |             |              | SA       |          |

#### SystemID

*Type:* ***Class «simple»***

*Arver:* ***string***

Definisjon: Entydig identifikasjon av arkivenheten innenfor det
arkivskapende organet. Dersom organet har flere arkivsystemer, skal
altså systemID være gjennomgående entydig. Systemidentifikasjonen vil
som oftest være en nummerisk kode uten noe logisk meningsinnhold.
Identifikasjonen trenger ikke å være synlig for brukerne.

Kilde: Registreres automatisk av systemet

Kommentarer: Alle referanser fra en arkivenhet til en annen skal peke
til arkivenhetens systemidentifikasjon. Dette gjelder også referanser
fra en arkivdel til en annen, f.eks. mellom to arkivperioder som
avleveres på forskjellig tidspunkt. I et arkivuttrekk skal systemID være
entydig (unik). Dokumentobjekt har ingen systemidentifikasjon fordi
enheten kan være duplisert i et arkivuttrekk dersom samme dokumentfil er
knyttet til flere forskjellige registreringer.

M001

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>SystemID</td>
<td>string</td>
<td></td>
</tr>
</tbody>
</table>

#### Tilgangskategori

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

ny kodeliste jfr NOARK 5 v3.1 krav
6.6.32

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                   |
| -------- | ----------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/tilgangskategori/ |
| NEW      | 5.4.0                                                       |

*<span class="underline">Attributter</span>*

| **Navn**                | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ----------------------- | ----------- | ------------ | -------- | -------- |
| **arkivdel**            |             |              | A        |          |
| **klasse**              |             |              | K        |          |
| **mappe**               |             |              | M        |          |
| **registrering**        |             |              | R        |          |
| **dokumentbeskrivelse** |             |              | D        |          |

#### Tilgangsrestriksjon

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                      |
| -------- | -------------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/tilgangsrestriksjon/ |
| NEW      | 5.4.0                                                          |

*<span class="underline">Attributter</span>*

| **Navn**                                           | **Merknad** | **Multipl.** | **Kode** | **Type** |
| -------------------------------------------------- | ----------- | ------------ | -------- | -------- |
| **Begrenset etter sikkerhetsinstruksen**           |             |              | B        |          |
| **Konfidensielt etter sikkerhetsinstruksen**       |             |              | K        |          |
| **Hemmelig etter sikkerhetsinstruksen**            |             |              | H        |          |
| **Fortrolig etter beskyttelsesinstruksen**         |             |              | F        |          |
| **Strengt fortrolig etter beskyttelsesinstruksen** |             |              | SF       |          |
| **Unntatt etter offentlighetsloven § 5**           |             |              | 5        |          |
| **Unntatt etter offentlighetsloven § 5a**          |             |              | 5a       |          |
| **Unntatt etter offentlighetsloven § 6**           |             |              | 6        |          |
| **Unntatt etter offentlighetsloven § 11**          |             |              | 11       |          |
| **Midlertidig sperret **                           |             |              | XX       |          |
| **Personalsaker**                                  |             |              | P        |          |
| **Klientsaker**                                    |             |              | KL       |          |

#### TilknyttetRegistreringSom

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                            |
| -------- | -------------------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/tilknyttetregistreringsom/ |

*<span class="underline">Attributter</span>*

| **Navn**          | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ----------------- | ----------- | ------------ | -------- | -------- |
| **Hoveddokument** |             |              | H        |          |
| **Vedlegg**       |             |              | V        |          |

#### Variantformat

*Type:* ***Class «codelist»***

*Arver:* 

Åpen kodeliste

Definisjon: Angivelse av hvilken variant et dokument forekommer i

M700

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**  | **Verdi**                                                |
| -------- | -------------------------------------------------------- |
| codeList | http://rel.kxml.no/noark5/v4/api/metadata/variantformat/ |

*<span class="underline">Attributter</span>*

| **Navn**                                         | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ------------------------------------------------ | ----------- | ------------ | -------- | -------- |
| **Produksjonsformat**                            |             |              | P        |          |
| **Arkivformat**                                  |             |              | A        |          |
| **Dokument hvor deler av innholdet er skjermet** |             |              | O        |          |

### Sakarkiv 

Utvidelse for sakarkiv metadata

**<span class="underline">Sakarkiv</span>** - *(diagram) *

![](./media/uml-sakarkiv-entiteter.png)

Figur: 23

**<span class="underline">Sakarkiv kun</span>** - *(diagram) *

![](./media/uml-sakarkiv-entiteter-forenklet.png)

Figur: 24

**<span class="underline">Saksbehandling</span>** - *(diagram) *

![](./media/uml-klasse-saksbehandling.png)

Figur: 25

**<span class="underline">Avskrivning</span>** - *(diagram) *

![](./media/uml-klasse-avskrivning.png)

Figur: 26

**<span class="underline">Person og organisasjonsdata</span>** -
*(diagram) *

![](./media/uml-klasse-person-og-organisasjonsdata.png)

Figur: 27

**<span class="underline">Hovedmodell</span>** - *(diagram) *

![](./media/uml-hovedmodell-saksbehandling.png)

Figur: 28

**<span class="underline">Saksmappe</span>** - *(diagram) *

![](./media/uml-saksmappe.png)

Figur: 29

**<span class="underline">Journalpost</span>** - *(diagram) *

![](./media/uml-journalpost.png)

Figur: 30

**<span class="underline">Elektronisk signatur</span>** - *(diagram) *

![](./media/uml-elektronisk-signatur.png)

Figur: 31

#### Avskrivning

*Type:* ***Class***

*Arver:* 

En Journalpost av typene ”inngående dokument” eller ”organinternt
dokument for oppfølging” står i restanse inntil de er markert som
ferdigbehandlet, eller avskrives. Dette kapitlet angir krav til
avskrivning.

Metadata for avskrivning skal kunne grupperes inn i metadata for
journalpost. Avskrivning er obligatorisk for inngående dokumenter og
organinterne dokumenter som skal følges opp, og kan forekomme en eller
flere ganger i en journalpost.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Journalpost</td>
<td><p>avskrivning</p>
<p>0..*</p>
<p>Avskrivning</p></td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                    |
| --------- | ------------------------------------------------------------ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-avskrivning/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/avskrivningsmaate/ |
| REST\_REL | self                                                         |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/avskrivning/       |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>systemID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av arkivenheten innenfor det arkivskapende organet. Dersom organet har flere arkivsystemer, skal altså systemID være gjennomgående entydig. Systemidentifikasjonen vil som oftest være en nummerisk kode uten noe logisk meningsinnhold. Identifikasjonen trenger ikke å være synlig for brukerne.</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: Alle referanser fra en arkivenhet til en annen skal peke til arkivenhetens systemidentifikasjon. Dette gjelder også referanser fra en arkivdel til en annen, f.eks. mellom to arkivperioder som avleveres på forskjellig tidspunkt. I et arkivuttrekk skal systemID være entydig (unik). Dokumentobjekt har ingen systemidentifikasjon fordi enheten kan være duplisert i et arkivuttrekk dersom samme dokumentfil er knyttet til flere forskjellige registreringer.</p>
<p>M001</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>avskrivningsdato</strong></td>
<td><p>Definisjon: Dato et dokument ble avskrevet</p>
<p>Kilde: Registreres automatisk nå avskrivning foretas</p>
<p>Kommentar: (ingen)</p>
<p>M617</p></td>
<td>[1..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="odd">
<td><strong>avskrevetAv</strong></td>
<td><p>Definisjon: Navn på person som har foretatt avskrivning</p>
<p>Kilde: Registreres automatisk nå avskrivning foretas</p>
<p>Kommentar: (ingen)</p>
<p>M618</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referanseAvskrevetAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="odd">
<td><strong>avskrivningsmåte</strong></td>
<td><p>Definisjon: Måten en journalpost har blitt avskrevet på</p>
<p>Kilde: Registreres automatisk når konvertering utføres.</p>
<p>Kommentar: (ingen)</p>
<p>M619 avskrivningsmaate</p></td>
<td>[1..1]</td>
<td></td>
<td>Avskrivningsmåte</td>
</tr>
<tr class="even">
<td><strong>referanseAvskrivesAvJournalpost</strong></td>
<td><p>Definisjon: Referanse til en eller flere journalposter som avskriver denne journalposten</p>
<p>Kilde: Registreres manuelt eller automatisk ved avskrivning</p>
<p>Kommentar: (ingen)</p>
<p>M215</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="odd">
<td><strong>referanseAvskrivesAvKorrespondansepart</strong></td>
<td>angir referanse til hvilken korrespondansepart som har avskrevet journalposten</td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**                               | **Merknad** |
| -------------------------------------- | ----------- |
| M001 systemID: Skal ikke kunne endres  |             |
| M617 avskrivningsdato: Kan ikke endres |             |
| M618 avskrevetAv: Kan ikke endres      |             |

#### Dokumentflyt

*Type:* ***Class***

*Arver:* 

Et dokument som er under produksjon, skal kunne sendes fram og tilbake
i linjen det nødvendige antall ganger. Saksbehandler og lederne i
linjen skal kunne se hvor dokumentet befinner seg til enhver tid. Det
skal være mulig å definere funksjoner for at dokumentet låses for
endringer når det (videre)sendes, eller at det automatisk opprettes en
ny versjon ved hver (videre)forsendelse. All funksjonalitet for
korrektur og merknader i tilknyttet tekstbehandlingssystem skal kunne
brukes på et dokument som er under produksjon.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Journalpost</td>
<td><p>dokumentflyt</p>
<p>0..*</p>
<p>Dokumentflyt</p></td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                  |
| --------- | ---------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/flytstatus/      |
| REST\_REL | self                                                       |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/dokumentflyt/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-dokumentflyt/ |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>systemID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av arkivenheten innenfor det arkivskapende organet. Dersom organet har flere arkivsystemer, skal altså systemID være gjennomgående entydig. Systemidentifikasjonen vil som oftest være en nummerisk kode uten noe logisk meningsinnhold. Identifikasjonen trenger ikke å være synlig for brukerne.</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: Alle referanser fra en arkivenhet til en annen skal peke til arkivenhetens systemidentifikasjon. Dette gjelder også referanser fra en arkivdel til en annen, f.eks. mellom to arkivperioder som avleveres på forskjellig tidspunkt. I et arkivuttrekk skal systemID være entydig (unik). Dokumentobjekt har ingen systemidentifikasjon fordi enheten kan være duplisert i et arkivuttrekk dersom samme dokumentfil er knyttet til flere forskjellige registreringer.</p>
<p>M001</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>flytTil</strong></td>
<td><p>Definisjon: Person som har mottatt for godkjennelse et dokument som har vært sendt på flyt</p>
<p>Kilde: Registreres automatisk av funksjonalitet knyttet til arbeidsflyt</p>
<p>Kommentar: (ingen)</p>
<p>M660 flytTil</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseFlytTil</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>flytFra</strong></td>
<td><p>Definisjon: Person som har sendt et dokument på flyt</p>
<p>Kilde: Registreres automatisk av funksjonalitet knyttet til arbeidsflyt</p>
<p>Kommentar: (ingen)</p>
<p>M665 flytFra</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseFlytFra</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>flytMottattDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett et dokument på flyt ble mottatt</p>
<p>Kilde: Registreres automatisk av funksjonalitet knyttet til arbeidsflyt</p>
<p>Kommentar: (ingen)</p>
<p>M661 flytMottattDato</p></td>
<td>[1..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>flytSendtDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett et dokument på flyt ble sendt videre</p>
<p>Kilde: Registreres automatisk av funksjonalitet knyttet til arbeidsflyt</p>
<p>Kommentar: (ingen)</p>
<p>M662 flytSendtDato</p></td>
<td>[1..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="even">
<td><strong>flytStatus</strong></td>
<td><p>Definisjon: Godkjennelse/ikke godkjennelse av dokumentet som er sendt på flyt</p>
<p>Kilde: Registreres automatisk av funksjonalitet knyttet til arbeidsflyt</p>
<p>Kommentar: (ingen)</p>
<p>M663 flytStatus</p></td>
<td>[1..1]</td>
<td></td>
<td>FlytStatus</td>
</tr>
<tr class="odd">
<td><strong>flytMerknad</strong></td>
<td><p>Definisjon: Merknad eller kommentar til et dokument som er sendt på flyt</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentar: (ingen)</p>
<p>M664 flytMerknad</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>M001 systemID: Skal ikke kunne endres</td>
<td></td>
</tr>
<tr class="even">
<td>M660 flytTil: Obligatorisk dersom dokumentet har blitt sendt på flyt. Skal ikke kunne endres</td>
<td></td>
</tr>
<tr class="odd">
<td>M661 flytMottattDato: Obligatorisk dersom dokumentet har blitt sendt på flyt. Skal ikke kunne endres.</td>
<td></td>
</tr>
<tr class="even">
<td>M662 flytSendtDato: Obligatorisk dersom dokumentet har blitt sendt på flyt. Skal ikke kunne endres.</td>
<td></td>
</tr>
<tr class="odd">
<td><p>M665 flytFra: Obligatorisk dersom dokumentet har blitt sendt på flyt. Skal ikke kunne</p>
<p>endres.</p></td>
<td></td>
</tr>
</tbody>
</table>

#### EnkelAdresse

*Type:* ***Class «dataType»***

*Arver:*

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                  |
| --------- | ---------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/enkeladresse/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-enkeladresse/ |
| REST\_REL | self                                                       |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/land/            |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/postnummer/      |

*<span class="underline">Attributter</span>*

| **Navn**          | **Merknad** | **Multipl.** | **Kode** | **Type**   |
| ----------------- | ----------- | ------------ | -------- | ---------- |
| **adresselinje1** |             | \[0..1\]     |          | string     |
| **adresselinje2** |             | \[0..1\]     |          | string     |
| **adresselinje3** |             | \[0..1\]     |          | string     |
| **postnr**        |             | \[0..1\]     |          | Postnummer |
| **poststed**      |             | \[1..1\]     |          | string     |
| **landkode**      |             | \[0..1\]     |          | Land       |

#### Journalpost

*Type:* ***Class***

*Arver:* ***Basisregistrering***

En journalpost fra Noark-4 utgjør en egen registreringstype i Noark 5.
En journalpost representer en "innføring i journalen". Journalen er en
kronologisk fortegnelse over inn- og utgående dokumenter
(dvs. korrespondansedokumenter), og eventuelt også interne dokumenter
som inngår i saksbehandlingen. Til sammenligning representerer en
basisregistrering en generell "innføring" i alle typer arkivsystemer,
også de som ikke inneholder korrespondansebaserte
dokumenter. Journalposten inneholder bl.a.  metadata om
korrespondanseparter (avsender og mottaker), og om saksbehandlere. Det
finnes flere typer journalposter. De viktigste er inngående dokument,
utgående dokument, organinternt dokument for oppfølging og
organinternt dokument uten oppfølging. Ved organinterne dokumenter kan
en og samme journalpost inneholde metadata om både avsender og
mottaker, og om saksbehandler både på avsender- og mottakersiden.

Registreringstypen journalpost er obligatorisk for sakarkiver. Alle
journalføringspliktige dokumenter i offentlig forvaltning skal
registreres som journalposter og inngå i et sakarkiv.  Dersom et
system basert på Noark 5 bare skal brukes for sakarkiver, er det ikke
noe i veien for å fortsette å anvende begrepet "journalpost" i alle
grensesnitt mot brukerne, på samme måte som en er vant til fra
Noark-4. I denne standarden brukes registrering som en generell
betegnelse på arkivenheter som dokumenter transaksjoner. (Registrering
er dessuten en dekkende norsk oversettelse av det tilsvarende begrepet
i MoReq2 som heter Record.)

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>journalpost</p>
<p>0..*</p>
<p>Journalpost</p></td>
<td><p>presedens</p>
<p>0..*</p>
<p>Presedens</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Journalpost</td>
<td><p>dokumentflyt</p>
<p>0..*</p>
<p>Dokumentflyt</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Journalpost</td>
<td><p>avskrivning</p>
<p>0..*</p>
<p>Avskrivning</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Journalpost</td>
<td>Basisregistrering</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Journalpost</td>
<td><p>korrespondansepart</p>
<p>0..*</p>
<p>Korrespondansepart</p></td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                        |
| --------- | ---------------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/avskrivning/           |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-avskrivning/        |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/presedens/             |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-presedens/          |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-journalpost/        |
| REST\_REL | self                                                             |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/journalpost/           |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-dokumentflyt/       |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/journalstatus/         |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-korrespondansepart/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/journalposttype/       |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/korrespondansepart/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/dokumentflyt/          |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>journalår</strong></td>
<td><p>Definisjon: Viser året journalposten ble opprettet</p>
<p>Kilde: Registreres automatisk når journalposten opprettes</p>
<p>Kommentar: (ingen)</p>
<p>M013 journalaar</p></td>
<td>[0..1]</td>
<td></td>
<td>integer</td>
</tr>
<tr class="even">
<td><strong>journalsekvensnummer</strong></td>
<td><p>Definisjon: Viser rekkefølgen når journalposten ble opprettet under året</p>
<p>Kilde: Registreres automatisk når journalposten opprettes</p>
<p>Kommentar: Kombinasjonen journalår og sekvensnummer er ikke obligatorisk, men anbefales brukt i sakarkiver. Noen rapporter er sortert på denne kombinasjonen, f.eks. løpende- og offentlig journal. Dersom journalår og sekvensnummer ikke brukes, må kronologiske utskrifter sorteres etter andre kriterier (f.eks. journalpostens opprettetDato). I Noark 4 skal sekvensnummeret vises før journalåret (f.eks. 25367/2011) for at det ikke skal blandes sammen med saksnummeret som har året først.</p>
<p>M014 journalsekvensnummer</p></td>
<td>[0..1]</td>
<td></td>
<td>integer</td>
</tr>
<tr class="odd">
<td><strong>journalpostnummer</strong></td>
<td><p>Definisjon: Inngår i M004 journalpostID. Viser rekkefølgen journalpostene ble opprettet innenfor saksmappen, f.eks. 2011/3869-8 (dokument nr. 8 i sak 2011/3869).</p>
<p>Kilde: Registreres automatisk når journalposten opprettes</p>
<p>Kommentar: Er ikke obligatorisk, men anbefales brukt i sakarkiver. Dersom journalpostnummer ikke brukes, må andre kriterier kunne identifisere journalpostenes rekkefølge innenfor saksmappen.</p>
<p>M015 journalpostnummer</p></td>
<td>[0..1]</td>
<td></td>
<td>integer</td>
</tr>
<tr class="even">
<td><strong>journalposttype</strong></td>
<td><p>Definisjon: Navn på type journalpost</p>
<p>Kilde: Registreres automatisk av systemet eller manuelt</p>
<p>Kommentar: Tilsvarer &quot;Noark dokumenttype&quot; i Noark 4</p>
<p>M082 journalposttype</p></td>
<td>[1..1]</td>
<td></td>
<td>Journalposttype</td>
</tr>
<tr class="odd">
<td><strong>journalstatus</strong></td>
<td><p>Definisjon: Status til journalposten, dvs. om dokumentet er registrert, under behandling eller endelig arkivert.</p>
<p>Kilde: Registreres automatisk gjennom forskjellig saksbehandlings-funksjonalitet, eller overstyres manuelt.</p>
<p>Kommentar: Journalposter som avleveres skal ha status &quot;Arkivert&quot; eller &quot;Utgår&quot;.</p>
<p>M053 journalstatus</p></td>
<td>[1..1]</td>
<td></td>
<td>Journalstatus</td>
</tr>
<tr class="even">
<td><strong>journaldato</strong></td>
<td><p>Definisjon: Datoen journalposten er opprettet/arkivert</p>
<p>Kilde: Settes automatisk til samme dato som M600 opprettetDato. Oppdateres til M604 arkivertDato når dokumentene som tilhørere journalposten arkiveres.</p>
<p>Kommentar: (ingen)</p>
<p>M101 journaldato</p></td>
<td>[1..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="odd">
<td><strong>dokumentetsDato</strong></td>
<td><p>Definisjon: Dato som er påført selve dokumentet</p>
<p>Kilde: Datoen hentes automatisk fra dokumentet, eller registreres manuelt</p>
<p>Kommentar: Kan brukes både for inngående, utgående og organinterne dokumenter</p>
<p>M103 dokumentetsDato</p></td>
<td>[0..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="even">
<td><strong>mottattDato</strong></td>
<td><p>Definisjon: Dato et eksternt dokument ble mottatt</p>
<p>Kilde: Registreres manuelt eller automatisk av systemet ved elektronisk kommunikasjon</p>
<p>Kommentar: Merk at mottattDato ikke behøver å være identisk med M600 opprettetDato</p>
<p>M104 mottattDato</p></td>
<td>[0..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="odd">
<td><strong>sendtDato</strong></td>
<td><p>Definisjon: Dato et internt produsert dokument ble sendt/ekspedert</p>
<p>Kilde: Registreres manuelt eller automatisk av systemet ved elektronisk kommunikasjon</p>
<p>Kommentar: (ingen)</p>
<p>M105 sendtDato</p></td>
<td>[0..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="even">
<td><strong>forfallsdato</strong></td>
<td><p>Definisjon: Dato som angir fristen for når et inngående dokument må være besvart</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentar: Forfallsdato kan være angitt som en betingelse i det inngående dokumentet</p>
<p>M109 forfallsdato</p></td>
<td>[0..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="odd">
<td><strong>offentlighetsvurdertDato</strong></td>
<td><p>Definisjon: Datoen da offentlighetsvurdering ble foretatt</p>
<p>Kilde: Registreres automatisk knyttet til funksjonalitet for skjerming</p>
<p>Kommentar: Dato for offentlighetsvurdering kan brukes dersom inngående dokumenter automatisk blir midlertidig skjermet ved mottak, og offentlighetsvurderingen skjer på et litt senere tidspunkt.</p>
<p>M110 offentlighetsvurdertDato</p></td>
<td>[0..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="even">
<td><strong>antallVedlegg</strong></td>
<td><p>Definisjon: Antall fysiske vedlegg til et fysisk hoveddokument</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentar: (ingen)</p>
<p>M304 antallVedlegg</p></td>
<td>[0..1]</td>
<td></td>
<td>integer</td>
</tr>
<tr class="odd">
<td><strong>utlåntDato</strong></td>
<td><p>Definisjon: Dato når en fysisk saksmappe eller journalpost ble utlånt</p>
<p>Kilde: Registreres manuelt ved utlån</p>
<p>Kommentar: Det er ikke spesifisert noen dato for tilbakelevering. Tilbakelevering kan markeres ved at M106 utlaantDato slettes. Det er ingen krav om obligatorisk logging av utlån av fysiske dokumenter.</p>
<p>M106 utlaantDato</p></td>
<td>[0..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="even">
<td><strong>utlåntTil</strong></td>
<td><p>Definisjon: Navnet på person som har lånt en fysisk saksmappe</p>
<p>Kilde: Registreres manuelt ved utlån</p>
<p>Kommentar: (ingen)</p>
<p>M309 utlaantTil</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseUtlåntTil</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>journalenhet</strong></td>
<td><p>Definisjon: Navn på enhet som har det arkivmessige ansvaret for kvalitetssikring av arkivdanningen, og eventuelt registrering (journalføring) og arkivering av fysiske dokumenter</p>
<p>Kilde: Registreres automatisk på grunnlag av innlogget bruker, kan overstyres manuelt</p>
<p>Kommentar: (ingen)</p>
<p>M308 journalenhet</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>elektroniskSignatur</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>ElektroniskSignatur</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**                                                      | **Merknad** |
| ------------------------------------------------------------- | ----------- |
| 5.5.8 En journalpost skal kunne defineres til å være av forskjellig type, se M082journalposttype. | |
| 5.5.10 En Journalpost skal ha registrert en Saksansvar (dvs. administrativ enhet, Saksbehandler og eventuelt journalenhet) og en Saksansvar skal kunne inngå i ingen, en eller flere Journalposter. | |
| 5.5.11 En Journalpost skal ha registrert en Korrespondansepart og en Korrespondansepart skal inngå i (kun) en Journalpost. | |
| 5.5.12 Det bør finnes en tjeneste/funksjon for å ajourholde Journalenhet på en Registrering (Journalpost). | |
| 5.5.13 Det skal finnes en tjeneste/funksjon for å ajourholde Administrativ enhet og Saksbehandler på en Registrering (Journalpost). | |
| 5.5.14 Det skal finnes en tjeneste/funksjon for å ajourholde Korrespondansepart på en Journalpost. |
| M013 journalår: Skal ikke kunne endres. | |
| M014 journalsekvensnummer: Skal ikke kunne endres. | |
| M015 journalpostnummer: Skal normalt ikke endres, men ved flytting til en annen saksmappe kan journalposten få et nytt nummer (fordi det inngår i en annen nummerrekkefølge i denne mappen). | |
| M101 journaldato: Skal kunne endres manuelt inntil arkivering. | | 
| M103 dokumentetsDato: Skal kunne endres manuelt inntil arkivering. | |
| M104 mottattDato: Skal ikke kunne endres ved automatisk registrering, dato for mottak av fysiske dokumenter skal kunne endres inntil arkivering. | |
| M105 sendtDato: Skal ikke kunne endres ved automatisk registrering, dato for forsendelse av fysiske dokumenter skal kunne endres inntil arkivering. |
| M106 utlåntDato: Utlån skal også kunne registreres etter at en saksmappe er avsluttet, eller etter at dokumentene i en journalpost ble arkivert. | |
| M308 journalenhet: Er ikke lenger obligatorisk i Noark 5. Journalenhet er helt uavhengig av administrativ enhet. Kan f.eks. brukes som seleksjonskriterium ved produksjon av rapporter. Det anbefales ikke å knytte tilgangsrettigheter til journalenhet. | |
| M309 utlåntTil: Utlån skal også kunne registreres etter at en saksmappe er avsluttet, eller at dokumentene i en journalpost ble arkivert. |

#### Kontaktinformasjon

*Type:* ***Class «dataType»***

*Arver:*

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                        |
| --------- | ---------------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-kontaktinformasjon/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/kontaktinformasjon/    |
| REST\_REL | self                                                             |

*<span class="underline">Attributter</span>*

| **Navn**         | **Merknad** | **Multipl.** | **Kode** | **Type** |
| ---------------- | ----------- | ------------ | -------- | -------- |
| **epostadresse** |             | \[0..1\]     |          | string   |
| **mobiltelefon** |             | \[0..1\]     |          | string   |
| **telefon**      |             | \[0..1\]     |          | string   |

#### Korrespondansepart

*Type:* ***Class***

*Arver:* 

Korrespondansepart er obligatorisk, og skal forekomme en eller flere
ganger i en journalpost.

Ved inngående dokumenter er det obligatorisk å registrere avsender(e),
ved utgående

dokumenter mottaker(e). Ved organinterne dokumenter som skal følges opp,
må både

avsender(e) og mottaker(e) registreres.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>KorrespondansepartEnhet</td>
<td>Korrespondansepart</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>KorrespondansepartPerson</td>
<td>Korrespondansepart</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>KorrespondansepartIntern</td>
<td>Korrespondansepart</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Journalpost</td>
<td><p>korrespondansepart</p>
<p>0..*</p>
<p>Korrespondansepart</p></td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                         |
| --------- | ----------------------------------------------------------------- |
| REST\_REL | self                                                              |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/korrespondanseparttype/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/korrespondansepart/     |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>systemID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av arkivenheten innenfor det</p>
<p>arkivskapende organet. Dersom organet har flere arkivsystemer, skal altså</p>
<p>systemID være gjennomgående entydig. Systemidentifikasjonen vil som oftest</p>
<p>være en nummerisk kode uten noe logisk meningsinnhold. Identifikasjonen</p>
<p>trenger ikke å være synlig for brukerne.</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: Alle referanser fra en arkivenhet til en annen skal peke til</p>
<p>arkivenhetens systemidentifikasjon. Dette gjelder også referanser fra en</p>
<p>arkivdel til en annen, f.eks. mellom to arkivperioder som avleveres på</p>
<p>forskjellig tidspunkt. I et arkivuttrekk skal systemID være entydig (unik).</p>
<p>Dokumentobjekt har ingen systemidentifikasjon fordi enheten kan være</p>
<p>duplisert i et arkivuttrekk dersom samme dokumentfil er knyttet til flere</p>
<p>forskjellige registreringer.</p>
<p>M001</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>korrespondanseparttype</strong></td>
<td><p>Definisjon: Type korrespondansepart</p>
<p>Kilde: Registreres automatisk knyttet til funksjonalitet i forbindelse med opprettelse av journalpost, kan også registreres manuelt</p>
<p>Kommentarer: Korrespondansetype forekommer én gang innenfor objektet korrespondansepart, men denne kan forekomme flere ganger innenfor en journalpost.</p>
<p>M087</p></td>
<td>[1..1]</td>
<td></td>
<td>Korrespondanseparttype</td>
</tr>
<tr class="odd">
<td><strong>virksomhetsspesifikkeMetadata</strong></td>
<td><p>Definisjon: Et overordnet metadataelement som kan inneholde egendefinerte metadata. Disse metadataene må da være spesifisert i et eller flere XML-skjema.</p>
<p>Kilde: (ingen)</p>
<p>Kommentar: (ingen)</p>
<p>M711 virksomhetsspesifikkeMetadata</p></td>
<td>[0..1]</td>
<td></td>
<td>any</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**                              | **Merknad** |
| ------------------------------------- | ----------- |
| M001 systemID: Skal ikke kunne endres |             |

#### KorrespondansepartEnhet

*Type:* ***Class***

*Arver:* ***Korrespondansepart***

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>KorrespondansepartEnhet</td>
<td>Korrespondansepart</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                             |
| --------- | --------------------------------------------------------------------- |
| NEW       | 5.4.0                                                                 |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/korrespondansepartenhet/    |
| REST\_REL | self                                                                  |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-korrespondansepartenhet/ |

*<span class="underline">Attributter</span>*

| **Navn**                | **Merknad** | **Multipl.** | **Kode** | **Type**           |
| ----------------------- | ----------- | ------------ | -------- | ------------------ |
| **organisasjonsnummer** |             | \[0..1\]     |          | string             |
| **navn**                |             | \[1..1\]     |          | string             |
| **forretningsadresse**  |             | \[0..1\]     |          | EnkelAdresse       |
| **postadresse**         |             | \[0..1\]     |          | EnkelAdresse       |
| **kontaktinformasjon**  |             | \[0..1\]     |          | Kontaktinformasjon |
| **kontaktperson**       |             | \[0..1\]     |          | string             |

#### KorrespondansepartIntern

*Type:* ***Class***

*Arver:* ***Korrespondansepart***

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>KorrespondansepartIntern</td>
<td>Korrespondansepart</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                              |
| --------- | ---------------------------------------------------------------------- |
| NEW       | 5.4.0                                                                  |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/korrespondansepartintern/    |
| REST\_REL | self                                                                   |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-korrespondansepartintern/ |

*<span class="underline">Attributter</span>*

| **Navn**                        | **Merknad**                                   | **Multipl.** | **Kode** | **Type** |
| ------------------------------- | --------------------------------------------- | ------------ | -------- | -------- |
| **administrativEnhet**          |                                               | \[0..1\]     |          | string   |
| **referanseAdministrativEnhet** | referanse til AdministrativEnhet sin systemID | \[0..1\]     |          | SystemID |
| **saksbehandler**               |                                               | \[0..1\]     |          | string   |
| **referanseSaksbehandler**      | referanse til Bruker sin systemID             | \[0..1\]     |          | SystemID |

#### KorrespondansepartPerson

*Type:* ***Class***

*Arver:* ***Korrespondansepart***

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>KorrespondansepartPerson</td>
<td>Korrespondansepart</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                              |
| --------- | ---------------------------------------------------------------------- |
| NEW       | 5.4.0                                                                  |
| REST\_REL | self                                                                   |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/korrespondansepartperson/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-korrespondansepartperson/ |

*<span class="underline">Attributter</span>*

| **Navn**               | **Merknad** | **Multipl.** | **Kode** | **Type**           |
| ---------------------- | ----------- | ------------ | -------- | ------------------ |
| **fødselsnummer**      |             | \[0..1\]     |          | string             |
| **DNummer**            |             | \[0..1\]     |          | string             |
| **navn**               |             | \[1..1\]     |          | string             |
| **postadresse**        |             | \[0..1\]     |          | EnkelAdresse       |
| **bostedsadresse**     |             | \[0..1\]     |          | EnkelAdresse       |
| **kontaktinformasjon** |             | \[0..1\]     |          | Kontaktinformasjon |

#### Presedens

*Type:* ***Class***

*Arver:* 

Med presedens menes en (retts)avgjørelse som siden kan tjene som
rettesnor i lignende tilfeller

eller saker. En presedens kan også være en sak som er regeldannende for
behandling av

tilsvarende saker. Det er som oftest snakk om et forvaltningsmessig
vedtak, dvs. et

enkeltvedtak fattet i henhold til det aktuelle organets
forvaltningsområde, som inneholder en

rettsoppfatning som senere blir lagt til grunn i andre lignende
tilfeller. Prinsippavgjørelser

knyttet til ulike saksområder skal derfor kunne etableres på en
hensiktsmessig måte og være

tilgjengelig for saksbehandlere.

Man snakker vanligvis om presedenssaker, men det er vanligvis ett eller
noen få av

dokumentene i saken som danner presedens. Foruten å registrere hele
saken, må derfor det eller

de dokumentene som inneholder presedensavgjørelser kunne identifiseres.
Hvis opplysninger

om presedens er registrert, er presedens obligatorisk for avlevering.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>journalpost</p>
<p>0..*</p>
<p>Journalpost</p></td>
<td><p>presedens</p>
<p>0..*</p>
<p>Presedens</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>sak</p>
<p>0..*</p>
<p>Saksmappe</p></td>
<td><p>presedens</p>
<p>0..*</p>
<p>Presedens</p></td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                  |
| --------- | ---------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/presedensstatus/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-saksmappe/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/sak/             |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-presedens/    |
| REST\_REL | self                                                       |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/presedens/       |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/journalpost/     |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-journalpost/  |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>systemID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av arkivenheten innenfor det arkivskapende</p>
<p>organet. Dersom organet har flere arkivsystemer, skal altså systemID være</p>
<p>gjennomgående entydig. Systemidentifikasjonen vil som oftest være en</p>
<p>nummerisk kode uten noe logisk meningsinnhold. Identifikasjonen trenger ikke</p>
<p>å være synlig for brukerne.</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: Alle referanser fra en arkivenhet til en annen skal peke til</p>
<p>arkivenhetens systemidentifikasjon. Dette gjelder også referanser fra en</p>
<p>arkivdel til en annen, f.eks. mellom to arkivperioder som avleveres på</p>
<p>forskjellig tidspunkt. I et arkivuttrekk skal systemID være entydig (unik).</p>
<p>Dokumentobjekt har ingen systemidentifikasjon fordi enheten kan være</p>
<p>duplisert i et arkivuttrekk dersom samme dokumentfil er knyttet til flere</p>
<p>forskjellige registreringer.</p>
<p>M001 systemID</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>presedensDato</strong></td>
<td><p>Definisjon: Datoen på presedensen</p>
<p>Kilde: Registreres manuelt ved opprettelse av presedens, men bør også kunne hentes automatisk fra M103 dokumentetsDato på journalposten presedensen opprettes på.</p>
<p>Kommentar: (ingen)</p>
<p>M111 presedensDato</p></td>
<td>[1..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="odd">
<td><strong>opprettetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble opprettet/registrert</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M600 opprettetDato</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="even">
<td><strong>opprettetAv</strong></td>
<td><p>Definisjon: Navn på person som opprettet/registrerte arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M601 opprettetAv</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseOpprettetAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>tittel</strong></td>
<td><p>Definisjon: Tittel eller navn på arkivenheten</p>
<p>Kilde: Registreres manuelt eller hentes automatisk fra innholdet i</p>
<p>arkivdokumentet. Ja fra klassetittel dersom alle mapper skal ha samme tittel</p>
<p>som klassen. Kan også hentes automatisk fra et fagsystem.</p>
<p>Kommentarer: For saksmappe og journalpost vil dette tilsvare &quot;Sakstittel&quot; og</p>
<p>&quot;Dokumentbeskrivelse&quot;. Disse navnene kan beholdes i grensesnittet.</p>
<p>M020 tittel</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>beskrivelse</strong></td>
<td><p>Definisjon: Tekstlig beskrivelse av arkivenheten</p>
<p>Kilde: Registreres manuelt</p>
<p>Kommentarer: Tilsvarende attributt finnes ikke i Noark 4 (men noen tabeller</p>
<p>hadde egne attributter for merknad som kunne brukes som et beskrivelsesfelt)</p>
<p>M021 beskrivelse</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>presedensHjemmel</strong></td>
<td><p>Definisjon: Lovparagrafen som saken eller journalposten danner presedens for</p>
<p>Kilde: Registreres manuelt ved opprettelse av presedens</p>
<p>Kommentar: (ingen)</p>
<p>M311 presedensHjemmel</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>rettskildefaktor</strong></td>
<td><p>Definisjon: En argumentkilde som brukes til å løse rettslige problemer. En retts-anvender som skal ta stilling til et juridisk spørsmål, vil ta utgangspunkt i en rettskildefaktor.</p>
<p>Kilde: Registreres manuelt ved opprettelse av presedens</p>
<p>Kommentar: En rettskildefaktor kan være en lov- eller forskriftstekst, lovforarbeider, domstolspraksis, andre myndigheters praksis, privates praksis (kontraktspraksis), rettsoppfatninger, reelle hensyn, folkerett, EU-/ EØS-rett mv.</p>
<p>M312 rettskildefaktor</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>presedensGodkjentDato</strong></td>
<td><p>Definisjon:Dato og klokkeslett for når presedensen er godkjent</p>
<p>Kilde: Registreres automatisk dersom det finnes funksjonalitet for å godkjenne presedenser</p>
<p>Kommentar: (ingen)</p>
<p>M628 presedensGodkjentDato</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>presedensGodkjentAv</strong></td>
<td><p>Definisjon: Navn på person som har godkjent presedensen</p>
<p>Kilde: Registreres automatisk dersom det finnes funksjonalitet for å godkjenne presedenser</p>
<p>Kommentar: (ingen)</p>
<p>M629 presedensGodkjentAv</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referansePresedensGodkjentAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="odd">
<td><strong>avsluttetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble avsluttet/lukket</p>
<p>Kilde: Registreres automatisk av systemet når enheten avsluttes</p>
<p>Kommentarer: (ingen)</p>
<p>M602 avsluttetDato</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="even">
<td><strong>avsluttetAv</strong></td>
<td><p>Definisjon: Navn på person som avsluttet/lukket arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M603 avsluttetAv</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseAvsluttetAv</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>presedensStatus</strong></td>
<td><p>Definisjon: Informasjon om presedensen er gjeldende eller foreldet</p>
<p>Kilde: Registreres manuelt ved foreldelse</p>
<p>Kommentar: (ingen)</p>
<p>M056 presedensstatus</p></td>
<td>[0..1]</td>
<td></td>
<td>Presedensstatus</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**                                                                                           | **Merknad** |
| -------------------------------------------------------------------------------------------------- | ----------- |
| M001 systemID: Skal ikke kunne endres                                                              |             |
| M020 tittel: Skal normalt ikke kunne endres etter at enheten er lukket, eller dokumentene arkivert |             |
| M600 opprettetDato: Skal ikke kunne endres                                                         |             |
| M601 opprettetAv: Skal ikke kunne endres                                                           |             |
| M602 avsluttetDato: Skal ikke kunne endres. Obligatorisk dersom arkivdelen er avsluttet.           |             |
| M603 avsluttetAv: Skal ikke kunne endres. Obligatorisk dersom arkivenheten er avsluttet.           |             |

#### Saksmappe

*Type:* ***Class***

*Arver:* ***Mappe***

I denne versjonen av Noark 5 er det i tillegg til Mappe definert en
spesialisering kalt

Saksmappe, som tilsvarer en ”sak” i Noark-4. Saksmappen skal inneholde
metadata fra Mappe

i tillegg til egne metadata. En saksmappe er bakoverkompatibel med en
sak i Noark-4, men har

en del nye metadata. . For sakarkiver er det obligatorisk å bruke en
saksmappe.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Saksmappe</td>
<td><p>sakspart</p>
<p>0..*</p>
<p>Sakspart</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Saksmappe</td>
<td>Mappe</td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Saksmappe</td>
<td><p>sekundærklassifikasjon</p>
<p>0..*</p>
<p>Klasse</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>sak</p>
<p>0..*</p>
<p>Saksmappe</p></td>
<td><p>presedens</p>
<p>0..*</p>
<p>Presedens</p></td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                          |
| --------- | ------------------------------------------------------------------ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/saksmappe/               |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/arkivstruktur/ny-klasse/          |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/presedens/               |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/saksparter/              |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/sekundaerklassifikasjon/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/saksstatus/              |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-sakspart/             |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-presedens/            |
| REST\_REL | self                                                               |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-saksmappe/            |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>saksår</strong></td>
<td><p>Definisjon: Inngår i M003 mappeID. Viser året saksmappen ble opprettet.</p>
<p>Kilde: Registreres automatisk når saksmappen opprettes</p>
<p>Kommentar: Se kommentar under M012 sakssekvensnummer</p>
<p>M011 saksaar</p></td>
<td>[0..1]</td>
<td></td>
<td>integer</td>
</tr>
<tr class="even">
<td><strong>sakssekvensnummer</strong></td>
<td><p>Definisjon: Inngår i M003 mappeID. Viser rekkefølgen når saksmappen ble opprettet innenfor året.</p>
<p>Kilde: Registreres automatisk når saksmappen opprettes</p>
<p>Kommentar: Kombinasjonen saksår og sakssekvensnummer er ikke obligatorisk, men anbefales brukt i sakarkiver.</p>
<p>M012 sakssekvensnummer</p></td>
<td>[0..1]</td>
<td></td>
<td>integer</td>
</tr>
<tr class="odd">
<td><strong>saksdato</strong></td>
<td><p>Definisjon: Datoen saken er opprettet</p>
<p>Kilde: Settes automatisk til samme dato som M600 opprettetDato</p>
<p>Kommentar: (ingen)</p>
<p>M100 saksdato</p></td>
<td>[1..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="even">
<td><strong>administrativEnhet</strong></td>
<td><p>Definisjon: Navn på avdeling, kontor eller annen administrativ enhet som har ansvaret for saksbehandlingen.</p>
<p>Kilde: Registreres automatisk f.eks. på grunnlag av innlogget bruker, kan overstyres</p>
<p>Kommentar: Merk at på journalpostnivå grupperes administrativEnhet sammen med M307 saksbehandler inn i korrespondansepart. Dette muliggjør individuell behandling når det er flere mottakere, noe som er særlig aktuelt ved organinterne dokumenter som skal følges opp.</p>
<p>M305 administrativEnhet</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseAdministrativEnhet</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>saksansvarlig</strong></td>
<td><p>Definisjon: Navn på person som er saksansvarlig</p>
<p>Kilde: Registreres automatisk på grunnlag av innlogget bruker eller annen saksbehandlingsfunksjonalitet (f.eks. saksfordeling), kan overstyres manuelt</p>
<p>Kommentar: (ingen)</p>
<p>M306 saksansvarlig</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>referanseSaksansvarlig</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>journalenhet</strong></td>
<td><p>Definisjon: Navn på enhet som har det arkivmessige ansvaret for</p>
<p>kvalitetssikring av arkivdanningen, og eventuelt registrering (journalføring)</p>
<p>og arkivering av fysiske dokumenter</p>
<p>Kilde: Registreres automatisk på grunnlag av innlogget bruker, kan overstyres</p>
<p>manuelt</p>
<p>Kommentar: (ingen)</p>
<p>M308 journalenhet</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>saksstatus</strong></td>
<td><p>Definisjon: Status til saksmappen, dvs. hvor langt saksbehandlingen har kommet.</p>
<p>Kilde: Registreres automatisk gjennom forskjellig saksbehandlings-funksjonalitet, eller overstyres manuelt.</p>
<p>Kommentar: Saksmapper som avleveres skal ha status &quot;Avsluttet&quot; eller &quot;Utgår&quot;.</p>
<p>M052 saksstatus</p></td>
<td>[1..1]</td>
<td></td>
<td>Saksstatus</td>
</tr>
<tr class="even">
<td><strong>utlåntDato</strong></td>
<td><p>Definisjon: Dato når en fysisk saksmappe eller journalpost ble utlånt</p>
<p>Kilde: Registreres manuelt ved utlån</p>
<p>Kommentar: Det er ikke spesifisert noen dato for tilbakelevering. Tilbakelevering</p>
<p>kan markeres ved at M106 utlaantDato slettes. Det er ingen krav om obligatorisk</p>
<p>logging av utlån av fysiske dokumenter.</p>
<p>M106 utlaantDato</p></td>
<td>[0..1]</td>
<td></td>
<td>date</td>
</tr>
<tr class="odd">
<td><strong>utlåntTil</strong></td>
<td><p>Definisjon: Navnet på person som har lånt en fysisk saksmappe</p>
<p>Kilde: Registreres manuelt ved utlån</p>
<p>Kommentar: (ingen)</p>
<p>M309 utlaantTil</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referanseUtlåntTil</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>5.4.9 En Saksmappe skal kunne identifiseres entydig innenfor arkivet.</td>
<td><p>/* Det anbefales at denne identifikasjonen er en</p>
<p>kombinasjon av saksår og et forløpende sekvensnummer</p>
<p>for saksmappene innenfor året.</p>
<p>*/</p></td>
</tr>
<tr class="even">
<td>5.4.10 En Saksmappe skal kunne ha registrert ingen, en eller flere Sekundærklassering og en Sekundærklassering tilhører kun en Saksmappe og kun en Klasse.</td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.4.11 En Saksmappe bør kunne ha registrert ingen eller en</p>
<p>Journalenhet og en Journalenhet kan inngå i ingen, en</p>
<p>eller flere Saksmapper.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5.4.12 En Saksmappe skal kunne ha registrert ingen eller en</p>
<p>Administrativ enhet og en Administrativ enhet kan inngå i</p>
<p>ingen, en eller flere Saksmapper.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5.4.13 En Saksmappe skal kunne inneha ingen, en eller flere</p>
<p>Saksparter og en Sakspart skal alltid tilhøre en</p>
<p>Saksmappe.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>6.1.3 Det skal finnes en tjeneste/funksjon for å sette Status på</p>
<p>en Saksmappe.</p></td>
<td></td>
</tr>
<tr class="odd">
<td>6.1.4 Følgende statusverdier er obligatorisk for Saksmappe: Under behandling, Avsluttet, Utgår</td>
<td></td>
</tr>
<tr class="even">
<td>6.1.5 Følgende statusverdier er anbefalt for Saksmappe: Opprettet av saksbehandler, Avsluttet av saksbehandler, Unntatt prosesstyring</td>
<td></td>
</tr>
<tr class="odd">
<td><p>6.1.6 Når status på Saksmappe settes til Avsluttet, skal</p>
<p>avsluttetDato settes automatisk.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>6.1.7 Det skal ikke være mulig å avslutte en Saksmappe uten</p>
<p>at det er angitt en primær klassifikasjon (Klasse).</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>6.1.8 Det skal ikke være mulig å avslutte en Saksmappe som</p>
<p>inneholder Registreringer som ikke er avsluttet</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>6.1.11 Det skal ikke være mulig å avslutte en Saksmappe uten</p>
<p>at alle dokumenter på registreringene i mappen er lagret</p>
<p>i arkivformat</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>6.1.12 Det skal ikke være mulig å avslutte en Saksmappe uten</p>
<p>at alle restanser på Registreringer er avskrevet</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>6.1.13 Når statusen til en Saksmappe settes til avsluttet, skal det</p>
<p>på mappenivå ikke være mulig å endre metadataene: saksdato, administrativEnhet , saksansvarlig</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>6.1.14 Når statusen til en Saksmappe settes til avsluttet, bør det</p>
<p>på Saksmappe fortsatt være mulig å endre de øvrige</p>
<p>metadataene. Endringer skal logges</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>6.1.15 En avsluttet Saksmappe bør kunne åpnes igjen av</p>
<p>autoriserte roller og personer. Det skal være mulig å</p>
<p>parameterstyre hvem som er autorisert for å åpne en</p>
<p>mappe. Åpning av mappe skal logges.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>6.1.18 Det skal ikke være mulig å slette en Saksmappe som</p>
<p>inneholder eller har inneholdt Journalposter med status</p>
<p>ekspedert, journalført eller arkivert</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>6.2.1 Det skal finnes en tjeneste/funksjon for å ajourholde</p>
<p>utlån av en Saksmappe.</p></td>
<td></td>
</tr>
<tr class="odd">
<td>M011 saksår: Skal ikke kunne endres</td>
<td></td>
</tr>
<tr class="even">
<td>M012 sakssekvensnummer: Skal ikke kunne endres</td>
<td></td>
</tr>
<tr class="odd">
<td>M100 saksdato: Skal kunne endres manuelt inntil saksmappen avsluttes</td>
<td></td>
</tr>
<tr class="even">
<td><p>M106 utlåntDato: Utlån skal også kunne registreres etter at en saksmappe er avsluttet,</p>
<p>eller etter at dokumentene i en journalpost ble arkivert.</p></td>
<td></td>
</tr>
</tbody>
</table>

#### Sakspart

*Type:* ***Class***

*Arver:* 

En eller flere virksomheter eller personer kan være knyttet til en
saksmappe som saksparter.

Metadata for sakspart skal kunne grupperes inn i metadata for saksmappe.
Sakspart er valgfritt,

og kan forekomme en eller flere ganger i tilknytning til en saksmappe.
Dersom det er mer enn

én sakspart, må metadataene grupperes sammen ved eksport og utveksling.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>SakspartPerson</td>
<td>Sakspart</td>
<td></td>
</tr>
<tr class="even">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Saksmappe</td>
<td><p>sakspart</p>
<p>0..*</p>
<p>Sakspart</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>SakspartEnhet</td>
<td>Sakspart</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                |
| --------- | -------------------------------------------------------- |
| REST\_REL | self                                                     |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/sakspartrolle/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/sakspart/      |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-sakspart/   |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>systemID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av arkivenheten innenfor det</p>
<p>arkivskapende organet. Dersom organet har flere arkivsystemer, skal altså</p>
<p>systemID være gjennomgående entydig. Systemidentifikasjonen vil som oftest</p>
<p>være en nummerisk kode uten noe logisk meningsinnhold. Identifikasjonen</p>
<p>trenger ikke å være synlig for brukerne.</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: Alle referanser fra en arkivenhet til en annen skal peke til</p>
<p>arkivenhetens systemidentifikasjon. Dette gjelder også referanser fra en</p>
<p>arkivdel til en annen, f.eks. mellom to arkivperioder som avleveres på</p>
<p>forskjellig tidspunkt. I et arkivuttrekk skal systemID være entydig (unik).</p>
<p>Dokumentobjekt har ingen systemidentifikasjon fordi enheten kan være</p>
<p>duplisert i et arkivuttrekk dersom samme dokumentfil er knyttet til flere</p>
<p>forskjellige registreringer.</p>
<p>M001</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>sakspartRolle</strong></td>
<td><p>Definisjon: Angivelse av rollen til saksparten</p>
<p>Kilde: Registreres manuelt eller automatisk fra fagsystem</p>
<p>Kommentarer: (ingen)</p>
<p>Betingelser: Her er det mange tenkelige roller avhengig av type sak, f.eks. Klient, Pårørende, Formynder, Advokat</p>
<p>M303</p></td>
<td>[1..1]</td>
<td></td>
<td>SakspartRolle</td>
</tr>
<tr class="odd">
<td><strong>virksomhetsspesifikkeMetadata</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>any</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**                              | **Merknad** |
| ------------------------------------- | ----------- |
| M001 systemID: Skal ikke kunne endres |             |

#### SakspartEnhet

*Type:* ***Class***

*Arver:* ***Sakspart***

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>SakspartEnhet</td>
<td>Sakspart</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                   |
| --------- | ----------------------------------------------------------- |
| NEW       | 5.4.0                                                       |
| REST\_REL | self                                                        |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-sakspartenhet/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/sakspartenhet/    |

*<span class="underline">Attributter</span>*

| **Navn**                | **Merknad** | **Multipl.** | **Kode** | **Type**           |
| ----------------------- | ----------- | ------------ | -------- | ------------------ |
| **organisasjonsnummer** |             | \[0..1\]     |          | string             |
| **navn**                |             | \[1..1\]     |          | string             |
| **forretningsadresse**  |             | \[0..1\]     |          | EnkelAdresse       |
| **postadresse**         |             | \[0..1\]     |          | EnkelAdresse       |
| **kontaktinformasjon**  |             | \[0..1\]     |          | Kontaktinformasjon |
| **kontaktperson**       |             | \[0..1\]     |          | string             |

#### SakspartPerson

*Type:* ***Class***

*Arver:* ***Sakspart***

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>SakspartPerson</td>
<td>Sakspart</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                    |
| --------- | ------------------------------------------------------------ |
| NEW       | 5.4.0                                                        |
| REST\_REL | self                                                         |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/sakspartperson/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/sakarkiv/ny-sakspartperson/ |

*<span class="underline">Attributter</span>*

| **Navn**               | **Merknad** | **Multipl.** | **Kode** | **Type**           |
| ---------------------- | ----------- | ------------ | -------- | ------------------ |
| **fødselsnummer**      |             | \[0..1\]     |          | string             |
| **DNummer**            |             | \[0..1\]     |          | string             |
| **navn**               |             | \[1..1\]     |          | string             |
| **postadresse**        |             | \[0..1\]     |          | EnkelAdresse       |
| **bostedsadresse**     |             | \[0..1\]     |          | EnkelAdresse       |
| **kontaktinformasjon** |             | \[0..1\]     |          | Kontaktinformasjon |

### Admin 

I dette kapitlet ligger Noark 5 kjernens krav til systemteknisk
administrasjon av Noark 5

kjernen. Kravene skal legge til rette for at arkivansvarlige skal kunne
administrere og ha

kontroll på arkivet, arkivstrukturen og metadataene som hører til
arkivenhetene i strukturen,

dvs. legge inn grunnlagsdata som typer mapper og registreringer, og
hvilke metadata utover de

obligatoriske som skal kunne legges til disse.

Det skal også gi muligheter for feilretting utover det som ellers er
tillatt etter reglene for

endring og frysing av metadata og dokumenter i løsningen.

Løsningen må dessuten legge til rette for at administratorer har
kontroll på arkivdokumentene

og hvilke formater disse er lagret i. Det vil også si å kunne
implementere vedtatte regler for når

konvertering skal skje.

**<span class="underline">Admin</span>** - *(diagram) *

![](./media/uml-administrasjon.png)

Figur: 32

#### AdministrativEnhet

*Type:* ***Class***

*Arver:* 

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>bruker</p>
<p>0..*</p>
<p>Bruker</p></td>
<td><p>enhet</p>
<p>0..*</p>
<p>AdministrativEnhet</p></td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                     |
| --------- | ------------------------------------------------------------- |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/admin/bruker/                |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/admin/ny-administrativenhet/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/admin/ny-bruker/             |
| REST\_REL | self                                                          |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/admin/administrativenhet/    |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>systemID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av arkivenheten innenfor det arkivskapende organet. Dersom organet</p>
<p>har flere arkivsystemer, skal altså systemID være gjennomgående entydig. Systemidentifikasjonen vil</p>
<p>som oftest være en nummerisk kode uten noe logisk meningsinnhold. Identifikasjonen trenger ikke å</p>
<p>være synlig for brukerne.</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: Alle referanser fra en arkivenhet til en annen skal peke til arkivenhetens</p>
<p>systemidentifikasjon. Dette gjelder også referanser fra en arkivdel til en annen, f.eks. mellom to</p>
<p>arkivperioder som avleveres på forskjellig tidspunkt. I et arkivuttrekk skal systemID være entydig</p>
<p>(unik). Dokumentobjekt har ingen systemidentifikasjon fordi enheten kan være duplisert i et</p>
<p>arkivuttrekk dersom samme dokumentfil er knyttet til flere forskjellige registreringer.</p>
<p>M001 systemID</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>administrativEnhetNavn</strong></td>
<td><p>Definisjon: Navn på administrativ enhet</p>
<p>Kilde: Registreres manuelt av administrator</p>
<p>Kommentar: Navn på administrativ enhet vil registreres flere steder i arkivstrukturen, f.eks. sammen med saksansvarlig eller saksbehandler på saksmappe eller journalpost. Administrasjonsstrukturen inngår ikke i arkivstrukturen.</p>
<p>M583 administrativEnhetNavn</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>kortnavn</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>opprettetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble opprettet/registrert</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M600 opprettetDato</p></td>
<td>[1..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>opprettetAv</strong></td>
<td><p>Definisjon: Navn på person som opprettet/registrerte arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M601 opprettetAv</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>avsluttetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble avsluttet/lukket</p>
<p>Kilde: Registreres automatisk av systemet når enheten avsluttes</p>
<p>Kommentarer: (ingen)</p>
<p>M602 avsluttetDato</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="odd">
<td><strong>administrativEnhetsstatus</strong></td>
<td><p>Definisjon: Status til den administrative enheten</p>
<p>Kilde: Registreres manuelt av administrator</p>
<p>Kommentar: Ingen obligatoriske verdier. Aktuelle verdier kan være:</p>
<p>- &quot;Aktiv enhet&quot;</p>
<p>- &quot;Passiv enhet&quot;</p>
<p>Administrasjonsstrukturen inngår ikke i arkivstrukturen</p>
<p>M584 administrativEnhetsstatus</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="even">
<td><strong>referanseOverordnetEnhet</strong></td>
<td><p>Definisjon: Referanse til enhet som er direkte overordnet denne enheten</p>
<p>Kilde: Registreres manuelt av administrator</p>
<p>Kommentar: (ingen)</p>
<p>NB 20150527: attributtnavnet endret fra overordnetEnhet til referanseOverordnetEnhet for å samsvare med M585</p>
<p>M585 referanseOverordnetEnhet</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="odd">
<td><strong>virksomhetsspesifikkeMetadata</strong></td>
<td><p>Definisjon: Et overordnet metadataelement som kan inneholde egendefinerte metadata. Disse metadataene må da være spesifisert i et eller flere XML-skjema.</p>
<p>Kilde: (ingen)</p>
<p>Kommentar: (ingen)</p>
<p>M711 virksomhetsspesifikkeMetadata</p></td>
<td>[0..1]</td>
<td></td>
<td>any</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**                                                                                                                               | **Merknad** |
| -------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| M001 systemID: Skal ikke kunne endres                                                                                                  |             |
| M600 opprettetDato: Skal ikke kunne endres                                                                                             |             |
| M601 opprettetAv: Skal ikke kunne endres                                                                                               |             |
| M602a avsluttetDato: Skal ikke kunne endres.                                                                                           |             |
| M602b avsluttetDato: Obligatorisk dersom arkivdelen er avsluttet.                                                                      |             |
| Ny - navn skal ikke endres. Hvis enhet får nytt navn så opprettes ny enhet med ny systemid. Den gamle kan da settes avsluttet dato på. |             |

#### Bruker

*Type:* ***Class***

*Arver:* 

definerer alle brukere som har eller har hatt interaksjon med
arkivkjernen. Fungerer som brukerregister til valg av saksbehandler i
kjernen og bevarer alle brukere for ettertiden. Opprettes nye av kjernen
når pålogget bruker ikke finnes fra før.

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Association</span></strong></p>
<p>Bi-Directional</p></td>
<td><p>bruker</p>
<p>0..*</p>
<p>Bruker</p></td>
<td><p>enhet</p>
<p>0..*</p>
<p>AdministrativEnhet</p></td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                     |
| --------- | ------------------------------------------------------------- |
| REST\_REL | self                                                          |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/admin/ny-administrativenhet/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/admin/bruker/                |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/admin/enhet/                 |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/admin/ny-bruker/             |

*<span class="underline">Attributter</span>*

<table>
<thead>
<tr class="header">
<th><strong>Navn</strong></th>
<th><strong>Merknad</strong></th>
<th><strong>Multipl.</strong></th>
<th><strong>Kode</strong></th>
<th><strong>Type</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>systemID</strong></td>
<td><p>Definisjon: Entydig identifikasjon av arkivenheten innenfor det arkivskapende organet. Dersom organet</p>
<p>har flere arkivsystemer, skal altså systemID være gjennomgående entydig. Systemidentifikasjonen vil</p>
<p>som oftest være en nummerisk kode uten noe logisk meningsinnhold. Identifikasjonen trenger ikke å</p>
<p>være synlig for brukerne.</p>
<p>Kilde: Registreres automatisk av systemet</p>
<p>Kommentarer: Alle referanser fra en arkivenhet til en annen skal peke til arkivenhetens</p>
<p>systemidentifikasjon. Dette gjelder også referanser fra en arkivdel til en annen, f.eks. mellom to</p>
<p>arkivperioder som avleveres på forskjellig tidspunkt. I et arkivuttrekk skal systemID være entydig</p>
<p>(unik). Dokumentobjekt har ingen systemidentifikasjon fordi enheten kan være duplisert i et</p>
<p>arkivuttrekk dersom samme dokumentfil er knyttet til flere forskjellige registreringer.</p>
<p>M001 systemID</p></td>
<td>[0..1]</td>
<td></td>
<td>SystemID</td>
</tr>
<tr class="even">
<td><strong>brukerNavn</strong></td>
<td><p>Definisjon: Navn på bruker av en Noark 5-løsning</p>
<p>Kilde: Registreres manuelt av administrator</p>
<p>Kommentar: Navn på bruker vil registreres mange steder i arkivstrukturen, f.eks. som saksansvarlig eller saksbehandler, og ved forskjellige typer logging. Brukeradministrasjon inngår ikke i arkivstrukturen</p>
<p>M580 brukerNavn</p></td>
<td>[1..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>opprettetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble opprettet/registrert</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M600 opprettetDato</p></td>
<td>[1..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="even">
<td><strong>opprettetAv</strong></td>
<td><p>Definisjon: Navn på person som opprettet/registrerte arkivenheten</p>
<p>Kilde: Registreres automatisk av systemet ved opprettelse av enheten</p>
<p>Kommentarer: (ingen)</p>
<p>M601 opprettetAv</p></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td><strong>avsluttetDato</strong></td>
<td><p>Definisjon: Dato og klokkeslett når arkivenheten ble avsluttet/lukket</p>
<p>Kilde: Registreres automatisk av systemet når enheten avsluttes</p>
<p>Kommentarer: (ingen)</p>
<p>M602 avsluttetDato</p></td>
<td>[0..1]</td>
<td></td>
<td>datetime</td>
</tr>
<tr class="even">
<td><strong>virksomhetsspesifikkeMetadata</strong></td>
<td><p>Definisjon: Et overordnet metadataelement som kan inneholde egendefinerte metadata. Disse metadataene må da være spesifisert i et eller flere XML-skjema.</p>
<p>Kilde: (ingen)</p>
<p>Kommentar: (ingen)</p>
<p>M711 virksomhetsspesifikkeMetadata</p></td>
<td>[0..1]</td>
<td></td>
<td>any</td>
</tr>
<tr class="odd">
<td><strong>kortnavn</strong></td>
<td></td>
<td>[0..1]</td>
<td></td>
<td>string</td>
</tr>
</tbody>
</table>

*<span class="underline">Restriksjoner</span>*

| **Navn**                                                                                     | **Merknad** |
| -------------------------------------------------------------------------------------------- | ----------- |
| M001 systemID: Skal ikke kunne endres                                                        |             |
| M600 opprettetDato: Skal ikke kunne endres                                                   |             |
| M601 opprettetAv: Skal ikke kunne endres                                                     |             |
| M602a avsluttetDato: Skal ikke kunne endres                                                  |             |
| M602b avsluttetDato: Obligatorisk dersom arkivdelen er avsluttet.                            |             |
| Ny - navn skal ikke endres. Hvis person får nytt navn så opprettes ny bruker med ny systemid |             |

#### Tilgang

*Type:* ***Class***

*Arver:* 

Styrer tilgang til data i kjernen basert på brukers
rolletilknytning

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                      |
| --------- | -------------------------------------------------------------- |
| NEW       | 5.4.0                                                          |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/admin/ny-rettighet/           |
| REST\_REL | self                                                           |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/tilgangsrestriksjon/ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/metadata/tilgangskategori/    |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/admin/rettighet/              |

*<span class="underline">Attributter</span>*

| **Navn**                | **Merknad**                                           | **Multipl.** | **Kode** | **Type**            |
| ----------------------- | ----------------------------------------------------- | ------------ | -------- | ------------------- |
| **systemID**            |                                                       | \[0..1\]     |          | SystemID            |
| **rolle**               | Sammenlignes feks med rolle gitt i AD eller lignende. | \[1..1\]     |          | string              |
| **tilgangskategori**    |                                                       | \[1..1\]     |          | Tilgangskategori    |
| **referanseArkivenhet** |                                                       | \[0..1\]     |          | SystemID            |
| **tilgangsrestriksjon** |                                                       | \[0..1\]     |          | Tilgangsrestriksjon |
| **les**                 |                                                       | \[1..1\]     |          | boolean             |
| **ny**                  |                                                       | \[1..1\]     |          | boolean             |
| **endre**               |                                                       | \[1..1\]     |          | boolean             |
| **slett**               |                                                       | \[1..1\]     |          | boolean             |

### LoggingOgSporing 

Skjema for logging og sporing

**<span class="underline">LoggingOgSporing</span>** - *(diagram) *

![](./media/uml-endringslogg.png)

Figur: 33

#### Endringslogg

*Type:* ***Class***

*Arver:* 

*<span class="underline">Relasjoner</span>*

<table>
<thead>
<tr class="header">
<th><strong>Relasjon</strong></th>
<th><strong>Kilde</strong></th>
<th><strong>Mål</strong></th>
<th><strong>Merknad</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong><span class="underline">Generalization</span></strong></p>
<p>Source -&gt; Destination</p></td>
<td>Hendelseslogg</td>
<td>Endringslogg</td>
<td></td>
</tr>
</tbody>
</table>

*<span class="underline">Relasjonsnøkler</span>*

| **Tag**   | **Verdi**                                                          |
| --------- | ------------------------------------------------------------------ |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/loggingogsporing/endringslogg/    |
| REST\_REL | self                                                               |
| REST\_REL | http://rel.kxml.no/noark5/v4/api/loggingogsporing/ny-endringslogg/ |

*<span class="underline">Attributter</span>*

| **Navn**                | **Merknad**                       | **Multipl.** | **Kode** | **Type** |
| ----------------------- | --------------------------------- | ------------ | -------- | -------- |
| **systemID**            |                                   | \[0..1\]     |          | SystemID |
| **referanseArkivenhet** |                                   | \[0..1\]     |          | SystemID |
| **referanseMetadata**   |                                   | \[0..1\]     |          | string   |
| **endretDato**          |                                   | \[1..1\]     |          | datetime |
| **endretAv**            |                                   | \[1..1\]     |          | string   |
| **referanseEndretAv**   | referanse til Bruker sin systemID | \[1..1\]     |          | SystemID |
| **tidligereVerdi**      |                                   | \[0..1\]     |          | string   |
| **nyVerdi**             |                                   | \[0..1\]     |          | string   |
