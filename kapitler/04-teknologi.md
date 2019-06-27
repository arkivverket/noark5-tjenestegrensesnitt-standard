# Teknologi

Prosjektet ble startet med et mål om å lage webservice grensesnitt for
NOARK kjernen. Tidlig i prosjektet ble det ytret ønske fra
arbeidsgruppen om å støtte nyere type tjenestegrensesnitt, og etter en
vurdering i KommIT ble REST (Representational State Transfer) valgt med
et tilnærmet HATEOAS (Hypermedia as the Engine og Application State)
format og oData for filtrering. Det ble innhentet informasjon om beste
praksis og kommentarer fra Statens Vegvesen, Difi og Brønnøysund/Altinn
i forbindelse med REST.

## Autentisering

NOARK5 kjerne må ha metoder for å autentisere brukere og gi de riktige
tilganger til kjernen.

Single Sign On bør støttes.

For REST er Basic autentication minimum for autentisering og en bør
støtte SAML 2.0 og OpenID Connect.

## CORS

Tjenestegrensesnittet skal støtte CORS (Cross-Origin Resource
Sharing) slik det er beskrevet på https://www.w3.org/TR/cors/.

I praksis betyr dette at alle kall hvor klienten sender en request header med 

    Content-Type: application/vnd.noark5+json

så skal serveren støtte http metoden **OPTIONS** slik det er definert
i CORS-standarden. Dette vil gjelder alle metodene hvor klienten
sender inn data, men det er ikke nødvendig å støtte **OPTIONS**
metoden på GET-forespørsler.
