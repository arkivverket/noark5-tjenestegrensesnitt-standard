# Orientering og introduksjon

## Historikk og status

## Noark

Noark – Norsk arkivstandard – ble utarbeidet som kravspesifikasjon for
elektroniske journalsystemer i statsforvaltningen, og etablerte seg
raskt som en de facto standard, forvaltet av Riksarkivet. Kommunal
sektor utarbeidet en tilsvarende kravspesifikasjon – Koark.
Spesifikasjonene i Koark ble innlemmet i Noark-4, og da arkivforskriften
trådte i kraft ble det obligatorisk for offentlig forvaltning å benytte
et Noark-basert system for elektronisk journalføring.

Gjeldende standard – Noark 5 skal benyttes for all elektronisk
arkivdanning – også fagsystemer med saksbehandling.

## Noark tjenestegrensesnitt

Teknisk grensesnitt mot kjernen er en del av standarden. Noark-4 Web
Services ble utarbeidet i 2006 etter initiativ fra KS, og som et
resultat av behov hos kommunene. Formålet var å standardisere og
forenkle kommunikasjonen mellom de ulike systemene i forvaltningen.

Statens Kartverk og KS gjennomførte i GeoIntegrasjonsprosjektet en
revisjon av Noark-4 Web Services. Tjenestene i Noark-4 Web services er
avgrenset ut fra behovene fagsystemene har for å arkivere og gjenfinne
data.

I nåværende form, og sett i lys av avgrensningene, mangler Noark
tjenestegrensesnittet funksjonalitet. Et utvidet standardisert
grensesnitt vil legge til rette for gode, sammenhengende tjenester på
tvers av virksomhetsgrensene i offentlig sektor. De ulike leverandørene
behøver ikke utvide tjenestene, eller benytte egne grensesnitt.

## Prosjekt for Noark 5 tjenestegrensesnitt 

Prosjekt for Noark 5 Tjenestegrensesnitt ble satt igang av Riksarkivet 
og Kommunenes Sentralforbund høsten 2013, og et forslag til spesifikasjon 
overlevert fra Samdok-prosjektet i september 2016 som en betaversjon.

Sommeren 2017 innledet Arkivverket og Arkitektum AS (som utviklet betaversjonen) 
et samarbeid med Fredrikstad kommune, Evry og HK Data om å kjøre en pilot (Proof 
of Concept) for å verifisere betaversjonen. 

I forbindelse med ferdigstilling av Noark 5.5.0 ble det også besluttet at 
tjenestegrenesnittet skulle viderutvikles og forbedres. Prosjektet hadde oppstart 
høsten 2018 og ny versjon skulle foreligge sommeren 2019. Det ble besluttet at 
spesifikajson og alle åpne saker skulle publiseres på GitHub. Prosessen med og 
diskusjonen rundt det å videreutvikle tjenestegrensesnittet ble dermed åpent 
tilgjengelig for alle interesserte.

Vi takket samtidig ja til invitasjon til samarbeid med NUUG ved Petter Reinholdtsen 
og OsloMet ved Thomas Sødring. Det har testet Nikita mot Tjenestegrensittet betaversjon
og versjon 1.0. Denne testingen har resultert i mange nyttige inspill og gode eksempler.  

## Prosjektets hovedmål

Mandatet for prosjektet var

 - å etablere en plattformuavhengig informasjonsmodell i UML for
   arkivstrukturen i Noark 5
 - å definere CRUD tjenester (Create, Read, Update, Delete) for
   objektene i informasjonsmodellen

Mål og begrunnelse for prosjektet var videre

  - sammen med arkivleverandørindustrien å utvikle og levere et
    tjenestegrensesnitt for Noark 5 som implementeres som et krav i
    Noark-standarden, forvaltes av Riksarkivet og benyttes av
    fagløsninger uavhengig av leverandør. Prosjektet skal også levere
    et forslag til opplegg for test og godkjenning. Prosjektet skal
    videre bidra til å skape en arena der leverandørindustrien og
    bestillerne kan møtes og diskutere behov og utfordringer.

  - Et standardisert Noark 5 tjenestegrensesnitt skal bidra til gode,
    sammenhengende digitale tjenester på tvers av virksomhetsgren­sene i
    offentlig sektor, støtte opp under offentlige virksomheters ønske om
    leverandøruavhengighet, samt fremme digitalisering og gi bedre
    tjenester.

## Prosjektets organisering

Prosjekteiere: Riksarkivet, KS, KMD og Kartverket

Styringsgruppe: SAMDOK sin strategigruppe Arkiv i e-forvaltning

Prosjektgruppen har bestått av:

 - Hans Fredrik Berg (Riksarkivet), Rune Sandland (KommIT), Michael
   Pande Rolfsen (KommIT), Anne Mette Dørum (KS), Line Richardsen
   (KS), Tor Kjetil Nilsen (KommIT/Arkitektum as), Per Arne Aass
   (Fredrikstad kommune), Atle Løvstakken (Bergen
   Kommune). Prosjektleder Inger Berit Eidsten (KommIT/EKOR AS).

Arbeidsgruppen har bestått av:

 - Fra prosjektgruppen: Hans Fredrik Berg (Riksarkivet), Tor Kjetil
   Nilsen (KommIT), Rune Sandland (KommIT) Inger Berit Eidsten
   (KommIT).
 - Fra leverandørene: ACOS - Trygve Håland, Ciber - Antony Lærdahl /
   Kjetil Sahlberg, Evry - Ragnar Sturtzel, Gecko - Haakon Johannessen
   / Steinar Herland, Documaster - Christian Lundvang / Dimitar
   Ouzounov, Norconsult - Tor Olav Almås, Oppad - Thor Arne Johnsen,
   Software Innovation - Bjørn Tore Eriksen, Visma - Harry Myrene.
 - Trondheim kommune: Jean-Philippe Caquet
 
Denne spesifikasjonen faller inn under unntakene i den norske åndsverkslovens §
9, og er ikke opphavsrettslig vernet.

## Endringslogg for dette dokumentet

| Versjon  | Dato       | Utført av           | Endring                            |
| -------- | ---------- | ------------------- | ---------------------------------- |
| 0.9      | 26.08.2014 | Tor Kjetil Nilsen   | Første versjon                     |
| 0.9.1    | 09.10.2014 | Inger Berit Eidsten | Lagt inn kapittel om Orientering og introduksjon |
| 0.9.2    | 10.10.2014 | Tor Kjetil Nilsen   | Flyttet kapittel om avgrensninger og utvidelser til Vedlegg 5 Endringslogg fra NOARK 5 v3.1 |
| 0.9.3    | 30.10.2014 | Tor Kjetil Nilsen   | Oppdatert fra UML modell og eksempler |
| 0.9.4    | 06.11.2014 | Tor Kjetil Nilsen   | Oppdatert bilde for oppdatering av mappe, fjernet kommentarer |
| 0.9.5    | 06.05.2015 | Tor Kjetil Nilsen   | Overskriftsnummerering, fjernet SOAP webservice, gått tilbake på relasjon til sakspart og korrespondansepart |
| 0.9.6    | 08.07.2015 | Tor Kjetil Nilsen   | Oppdatert etter konklusjoner på intern høring |
| 0.9.7    | 14.01.2016 | Tor Kjetil Nilsen   | Oppdatert etter konklusjoner på høringskommentarer |
| 0.9.8    | 03.05.2016 | Tor Kjetil Nilsen   | Oppdatert etter konklusjoner på høringskommentarer |
| 0.9.8.1  | 31.05.2016 | Tor Kjetil Nilsen   | Oppdatert med flere filtereksempler, kapittel for filopplasting og feilrettinger |
| 1.0 beta | 01.07.2016 | Tor Kjetil Nilsen   | Oppdatert etter avklaringsmøter – overlevering fra SAMDOK til Arkivverket |
