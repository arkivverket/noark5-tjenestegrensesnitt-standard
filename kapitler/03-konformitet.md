# Konformitet

![](./media/Noark5v5_px400.png)

Bakgrunnen for konformitetsnivåene er behovet for å kunne gruppere krav
i Noark standarden med aktuell modularitet i system som skal anskaffes.
Det vil også gjøre det enklere for leverandører å få godkjenning for
sine implementasjoner.

Anskaffelser av arkivkjerner kan tilpasses aktuelle konformitetsnivå.

Anskaffelser av fagsystem bør opplyse om hvilket nivå som tilbys av
arkivkjerne, og fagsystem som integrerer seg med arkivkjerne bør opplyse
om hvilke nivå de krever for å kunne operere på aktuell kjerne.

De grunnleggende krav er lagt i basiskrav og arkivstruktur og må støttes
av alle kjerner. Utvidelser skjer med egne moduler som er delt mellom
obligatoriske og valgfrie krav. Valgfrie krav må spesifiseres
særskilt.

Konformitetsnivåer er:

  - Nivå 0 – Basiskrav
  - Nivå 1 – Arkivstruktur - obligatoriske krav
  - Nivå 1.1 – Arkivstruktur - valgfrie krav
  - Nivå 2a – Sakarkiv – obligatoriske krav
  - Nivå 2.1a – Sakarkiv - valgfrie krav

For å være konform med standarden på aktuelle nivå må implementasjonen
støtte alle obligatoriske krav som er angitt for nivået.

Se [Vedlegg 1 - Konformitetskrav](https://github.com/arkivverket/noark5-tjenestegrensesnitt-standard/blob/master/kapitler/08-vedlegg_1_-_konformitetskrav.md) for liste over tester og
krav som gjelder for de ulike nivåene.
