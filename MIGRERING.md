Vedlikehold av Noark 5 tjenestegrensesnitt som markdown i git
=============================================================

av Petter Reinholdtsen 2018-06-05

Siste oppdaterte utgave av spesifikasjonen for Noark 5
tjenestegrensesnitt vedlikeholdes i dag som et MS Word-dokument.
Dette skal endres til å vedlikeholdes i markdown-format i et git-repo.
Her er noen notater om hvordan dette tenkes gjort.

Det er opprettet et git-repo
https://github.com/arkivverket/noark5-tjenestegrensesnitt-standard
der relevante personer har og får skrivetilgang.  Skrivetilgang gis
til de som er redaktører for spesifikasjonen.

Dagens MS Word-dokument omformes til markdown og figurer ved hjelp av
pandoc, som støtter lesing av docx, og skriving av markdown.

Tanken er å dele opp i en markdown-fil per kapittel, og ha alle
figurer i redigerbar form i samme git-repo, og lage en automatisert
byggeprosess som samler alle delen til en PDF.

Bruken av git lar oss versjonere utgavene av standarden og gjør det
enkelt for enhver interessert å finne de konkrete endringene mellom
hver utgave.

Første utgave av omformingen gjøres slik

> pandoc --extract-media ./figurer input.docx -o output.md

Dernest må output.md deles opp manuelt i en fil per kapittel, f.eks. med
nummerprefix ala dette:

 * 01-orientering-og-introduksjon.md
 * 02-normative-referanser.md
 * ... osv.

For byggingen tenker jeg vi tar veien via docbook, dvs. omformer
markdown til docbook og limer det hele sammen til en bok med
innholdsfortegnelse, fotnoter, lenker osv.  Nøyaktig prosess kommer
litt an på hvordan figurene vedlikeholdes og hvor mye spesiell
formattering vi må ta hensyn til.  Det ser jeg når første omforming er
gjort.




Bruker av Markdown slik github tolker det gir endel utfordringer:

 - Mangler mulighet for å styre plassering av bilder (f.eks. i høyre
   marg slik det gjøres i kapittel 3).

 - Mangler mulighet til å ha flere avsnitt i en tabellrute
   (f.eks. slik det gjøres i kapittel 7, delpunkt 7.1 og de fleste
   relasjons- og attributt-tabeller).

 - Mangler støtte for understreket tekst (f.eks. slik det brukes i
   overskrifter og for å markere klikkbare lenker i teksten, se
   7.2.1.1 fjerde avsnitt og 6.2 tredje avsnitt).

 - Mangler støtte for tabell- og bildetitler.  Har har brukt
   pandoc-utvidelser som gjør at PDF og HTML-utgave får slike.

En løsning er å gå for et annet oppmerkingsspråk mer egnet for
PDF-produksjon.  RST kan være et godt alternativ.  Ulempen er at
dokumentene da ikke vil se like bra ut når de vises frem på
github.com, og ikke like enkelt kan redigeres direkte via github.com.
Et dokument som argumenteres for dette valget finnes på
http://www.zverovich.net/2016/06/16/rst-vs-markdown.html

En annen løsning er å strukturere om teksten slik at disse egenskapene
ikke brukes i dokumentene.  Vi har gått for denne løsningen i første
utgave av github-versjonen av spesifikasjonen.
