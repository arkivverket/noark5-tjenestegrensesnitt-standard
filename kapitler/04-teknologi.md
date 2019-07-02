# Teknologi

Prosjektet ble startet med et mål om å lage webservice grensesnitt for
NOARK kjernen. Tidlig i prosjektet ble det ytret ønske fra
arbeidsgruppen om å støtte nyere type tjenestegrensesnitt, og etter en
vurdering i KommIT ble REST (Representational State Transfer) valgt med
et tilnærmet HATEOAS (Hypermedia as the Engine og Application State)
format og oData for filtrering. Det ble innhentet informasjon om beste
praksis og kommentarer fra Statens Vegvesen, Difi og Brønnøysund/Altinn
i forbindelse med REST.

## Autentisering og Autorisering

Tjenestegrensesnittet skal ha en mekanisme for å autentisere brukere
som styrer tilgang til autoriserte enkeltbrukere og brukere tilknyttet
en autorisert administrativ enhet som beskrevet i Admin-delen av
kapittel 7.

Det er påkrevd å støtte OAuth2-profilen OpenID Connect med endepunktet
`.well-known/openid-configuration` relativt til hoved-URL (hoved-URL
er beskrevet i Oppkobling og ressurslenker i kapittel 6).  For
eksempeltjenesten beskrevet i kapittel 6, betyr det at
`https://n5.example.com/api/.well-known/openid-configuration` skal
returnere informasjon om hvordan en bruker / klient kan logge seg på
REST-API-et i tråd med OpenID Connect.

REST-APIet kan tilby andre innloggingsmekanismer, som Kerberos og SAML
2.0.  Innloggingsmekanismene som støttes skal annonseres i \_links på
hoved-URL med relevante relasjonsnøkler.  Tilgang til hoved-URL for å
liste opp innloggingsmeknismer krever ikke autentisering.

Følgende relasjonsnøkler for innlogging er definert i denne versjonen
av spesifikasjonen:

| **Mekanisme**  | **Relasjonsnøkkel**                                     | Valgfri    |
|----------------|---------------------------------------------------------|------------|
| OpenID Connect | https://rel.arkivverket.no/noark5/v5/api/login/oidc/    | Nei        |
| OAuth 2.0      | https://rel.arkivverket.no/noark5/v5/api/login/rfc6749/ | Nei        |
| JSON Web Token | https://rel.arkivverket.no/noark5/v5/api/login/rfc7519/ | Ja         |
| Kerberos       | https://rel.arkivverket.no/noark5/v5/api/login/rfc1510/ | Ja         |
| SAML 2.0       | https://rel.arkivverket.no/noark5/v5/api/login/saml-20/ | Ja         |
| Basic          | https://rel.arkivverket.no/noark5/v5/api/login/rfc7617/ | Ja         |

En kan så gjennomføre en innlogging / autentisering ved å kontakte den
oppgitte href for aktuell relasjonsnøkkel med aktuelle HTTP-hodefelt
og HTTP kropp satt.  For OpenID Connect så skal href peke til
`.well-known/openid-configuration`-URL beskrevet over.

Basic Authentication bør ikke tilbys over ukryptert HTTP.  Hvis en
tilbyr Basic Authentication i tråd med RFC 7617, så skal en for
ikke-autentiserte HTTP-forespørsler returnere WWW-Authenticate med
realm satt, slik RFC 7617 anbefaler, for å sikre at nettlesere spør
brukeren om brukernavn og passord.

## CORS

Tjenestegrensesnittet skal støtte CORS (Cross-Origin Resource
Sharing) slik det er beskrevet på https://www.w3.org/TR/cors/.

I praksis betyr dette at alle kall hvor klienten sender en request header med 

    Content-Type: application/vnd.noark5+json

så skal serveren støtte http metoden **OPTIONS** slik det er definert
i CORS-standarden. Dette vil gjelder alle metodene hvor klienten
sender inn data, men det er ikke nødvendig å støtte **OPTIONS**
metoden på GET-forespørsler.
