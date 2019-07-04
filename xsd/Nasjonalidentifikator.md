Det er ønskelig at XMLen skal være i overensstemmelse med JSON eksemplene
i tjenestegrensesnittet. Det var knyttet litt usikkerhet hvorvidt dette
stemte eller ikke. Vi bruker Matrikkel som eksempel.

 <xs:element name="Matrikkel" type="as:MatrikkelType"/>

Denne betyr at det er definert en element som heter Matrikkel som er i
den globale namespacen til arkivstruktur.xsd. Det betyr at det kan
brukes som et rot-element til et XML-dokument. Dette gjør at
arkivstruktur.xsd *kan* faktisk brukes til å definere XML nyttelaster.
Men det gir lite mening hvorvidt dette er nyttelast beskrivelser brukt
med GET/PUT/POST forespørsler fordi _minOccurs="?"_ og _maxOccurs="?"_
vil variere her.

```Python
<xs:complexType name="MatrikkelListe">
    <xs:sequence>
      <xs:element name="matrikkel" type="as:MatrikkelType" minOccurs="0" maxOccurs="unbounded"/>
    </xs:sequence>
  </xs:complexType>
```


Dette kan brukes til å definere at matrikkel er 0:m i feks Mappe eller
Registrering. Dette oppleves som et litt tungvint metodikk men det er
forklart at det gjøres på denne måten slik at både C# og Java klasser
kan autogenereres. I Mappe/Registrering arkivenhetene er Matrikkel
definert gjennom base-elementet nasjonalidentifikator.

```Python
<xs:complexType name="MatrikkelType">
  <xs:complexContent>
    <xs:extension base="as:AbstraktNasjonalidentifikatorType">
      <xs:sequence>
        <xs:element name="matrikkelnummer" type="matrikkelfellesns:Matrikkelnummer"/>
      </xs:sequence>
    </xs:extension>
  </xs:complexContent>
</xs:complexType>
```

<Mappe> elementer inneholder et element som heter
<nasjonalidentifikator> som er av type
_AbstraktNasjonalidentifikatorListe_ som alle nasjonalidentifikator
arver fra.


Et minimum fungerende XML eksempel som viser en mappe som inneholder to
instanser av en nasjonal identifikator (matrikkel/bygningidentifikasjon)
er som følgende:

```Python
<?xml version="1.0" encoding="UTF-8"?>
<Mappe  xmlns:xs="http://www.w3.org/2001/XMLSchema-instance"
        xmlns="http://www.arkivverket.no/standarder/noark5/tj/arkivstruktur"
        xs:schemaLocation="http://www.arkivverket.no/standarder/noark5/tj/arkivstruktur arkivstruktur.xsd">
  <tittel>Beskrivelse av hus</tittel>
  <nasjonalidentifikator>
    <abstraktnasjonalidentifikator xs:type="MatrikkelType">
      <systemID>5ed0a39a-54a6-4bf5-b2fa-a15680a4f11d</systemID>
      <beskrivelse>Drammensveien 999. 181 - Garasjeuthus anneks til bolig</beskrivelse>
      <matrikkelnummer>
        <kommunenummer
            xmlns:xs="http://www.w3.org/2001/XMLSchema-instance"
            xmlns="http://rep.geointegrasjon.no/Matrikkel/Felles/xml.schema/2012.01.31"
            xs:schemaLocation="http://rep.geointegrasjon.no/Matrikkel/Felles/xml.schema/2012.01.31 MatrikkelFelles.xsd">0301
        </kommunenummer>
        <gaardsnummer
            xmlns:xs="http://www.w3.org/2001/XMLSchema-instance"
            xmlns="http://rep.geointegrasjon.no/Matrikkel/Felles/xml.schema/2012.01.31"
            xs:schemaLocation="http://rep.geointegrasjon.no/Matrikkel/Felles/xml.schema/2012.01.31 MatrikkelFelles.xsd">99
        </gaardsnummer>
        <bruksnummer
            xmlns:xs="http://www.w3.org/2001/XMLSchema-instance"
            xmlns="http://rep.geointegrasjon.no/Matrikkel/Felles/xml.schema/2012.01.31"
            xs:schemaLocation="http://rep.geointegrasjon.no/Matrikkel/Felles/xml.schema/2012.01.31 MatrikkelFelles.xsd">999
        </bruksnummer>
      </matrikkelnummer>
    </abstraktnasjonalidentifikator>
    <abstraktnasjonalidentifikator xs:type="BygningType">
      <systemID>6658094c-6515-41f8-bd03-c8ce66ccea24</systemID>
      <byggidentifikator>
        <bygningsNummer
            xmlns:xs="http://www.w3.org/2001/XMLSchema-instance"
            xmlns="http://rep.geointegrasjon.no/Matrikkel/Felles/xml.schema/2012.01.31"
            xs:schemaLocation="http://rep.geointegrasjon.no/Matrikkel/Felles/xml.schema/2012.01.31 MatrikkelFelles.xsd">1
        </bygningsNummer>
      </byggidentifikator>
    </abstraktnasjonalidentifikator>
  </nasjonalidentifikator>
</Mappe>
```

Eksempelet over kan valideres med:

     xmllint --noout --schema arkivstruktur.xsd nasjIdentEskempel.xml

Merk navngiving av elementene (complexTypes) i disse XSD-filene bør
etterhvert bruke Noark sin tilnærming der små bokstaver brukes.
