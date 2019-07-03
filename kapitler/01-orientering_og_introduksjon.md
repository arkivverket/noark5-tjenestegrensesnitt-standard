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

Noark 5-tjenestegrensesnittet (API) er en spesifikasjon av en dataprotokoll for 
maskinell kommunikasjon med Noark-løsninger. Formålet er å standardisere og 
forenkle kommunikasjonen mellom de ulike systemene i forvaltningen. 

Et utvidet standardisert grensesnitt vil legge til rette for gode,
sammenhengende tjenester på tvers av virksomhetsgrensene i offentlig sektor. 
De ulike leverandørene behøver ikke utvide tjenestene, eller benytte egne grensesnitt.

## Prosjekt for Noark 5 tjenestegrensesnitt 

Prosjekt for Noark 5 tjenestegrensesnitt ble satt i gang av Riksarkivet
og KS høsten 2013, og gjennomført i regi av KS KommIT. Blant
initiativtakere til prosjektet var også K10 – det kommunale
it-samarbeidet for landets 10 største kommuner.

Målsettingen for prosjektet har vært, sammen med arkivleverandørene, å
utvide det standardiserte grensesnittet mot Noark 5 kjerne.
Grensesnittet skal være tjenestebasert og bygge på erfaringene fra
Noark-4 med tilhørende web services, GeoIntegrasjonsprosjektet og
arkivleverandørenes utvidelser.

Prosjektgruppen ble etablert i november 2013. Prosjektets arbeidsgruppe
ble satt ned i januar 2014 og arbeidet med versjon 0.9 av
tjenestegrensesnittet er avsluttet i oktober 2014.

## Prosjektets hovedmål

Mandatet for prosjektet i Samdoc var:

 - å etablere en plattformuavhengig informasjonsmodell i UML for
   arkivstrukturen i Noark 5
 - å definere CRUD tjenester (Create, Read, Update, Delete) for
   objektene i informasjonsmodellen

Mål og begrunnelse var videre:

  - sammen med arkivleverandørindustrien å utvikle og levere et
    tjenestegrensesnitt for Noark 5 som implementeres som et krav i
    Noark-standarden, forvaltes av Riksarkivet og benyttes av
    fagløsninger uavhengig av leverandør. Prosjektet skal også levere
    et forslag til opplegg for test og godkjenning. Prosjektet skal
    videre bidra til å skape en arena der leverandørindustrien og
    bestillerne kan møtes og diskutere behov og utfordringer.

  - Et standardisert Noark 5 tjenestegrensesnitt skal bidra til gode,
    sammenhengende digitale tjenester på tvers av virksomhetsgrensene i
    offentlig sektor, støtte opp under offentlige virksomheters ønske om
    leverandøruavhengighet, samt fremme digitalisering og gi bedre
    tjenester.
    
I forbindelse med ferdigstilling av Noark 5.5.0 ble det besluttet at 
tjenestegrenesnittet skulle viderutvikles, og få inn endringer som var 
etterspurt etter betalanseringen.

## Prosjektets organisering

Prosjekteier: Arkivverket

Prosjektgruppen har bestått av:

 - Arkivverket ved Øyvind Kruse, Hans Fredrik Berg, Mona Danielsen og 
 Anne Sofie Knutsen. 
 - Leverandør til prosjektet har vært Arkitektum AS
 - Piloter: 
   - Fredrikstad kommune i samarbeid med Evry og HK Data 
   - NUUG ved Petter Reinholdtsen (Nikita)
   - OsloMet ved Thomas Sødring (Nikita)
 
 Noark leverandører har informert og involdert i prosjektet, og har kunne 
 følge og bidra underveis via GitHub. 
 
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
