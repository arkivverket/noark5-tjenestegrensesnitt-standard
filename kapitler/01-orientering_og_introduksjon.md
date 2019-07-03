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

Prosjekt for Noark 5 Tjenestegrensesnitt ble satt igang av Riksarkivet 
og Kommunenes Sentralforbund høsten 2013, og et forslag til spesifikasjon 
overlevert fra Samdok-prosjektet i september 2016 som en betaversjon.

Sommeren 2017 innledet Arkivverket og Arkitektum AS (som utviklet betaversjonen) 
et samarbeid med Fredrikstad kommune, Evry og HK Data om å kjøre en pilot (Proof 
of Concept) for å verifisere betaversjonen. 

I forbindelse med ferdigstilling av Noark 5.5.0 ble det også besluttet at 
tjenestegrensesnittet skulle videreutvikles og forbedres. Prosjektet hadde oppstart 
høsten 2018 og ny versjon skulle foreligge sommeren 2019. Det ble besluttet at 
spesifikasjonen og alle åpne saker skulle publiseres på GitHub. Prosessen med og 
diskusjonen rundt det å videreutvikle tjenestegrensesnittet ble dermed åpent 
tilgjengelig for alle interesserte.

Vi takket samtidig ja til invitasjon til samarbeid med NUUG ved Petter Reinholdtsen 
og OsloMet ved Thomas Sødring. De har testet Nikita mot tjenestegrensesnittet betaversjon
og versjon 1.0. Denne testingen har resultert i mange nyttige innspill og gode eksempler.  

## Prosjektets hovedmål

Mandatet for prosjektet i Samdok var:

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
 
Noark leverandører er blitt informert og involvert i prosjektet, og har via 
GitHub hatt mulighet til følge med og bidra underveis i videreutviklingen 
av tjenestegrensesnittet. 
 
Denne spesifikasjonen faller inn under unntakene i den norske åndsverkslovens §
9, og er ikke opphavsrettslig vernet.

## Endringslogg for dette dokumentet

| Versjon  | Dato       | Utført av           | Endring                            |
| -------- | ---------- | ------------------- | ---------------------------------- |
| 5.5v1.0  | 04.07.2019  |Anne S Knutsen og Mona Danielsen| Release av Tj.gr. 5.5v1.0, detaljert historikk over endringer i spesifikasjonen kan hentes ut av git-depotet (se kapittel 2). |
