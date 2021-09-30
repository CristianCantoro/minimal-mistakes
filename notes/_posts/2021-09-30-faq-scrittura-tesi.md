---
layout: post
title: FAQ sulla scrittura della tesi
excerpt: "Alcune domande frequenti legate alla scrittura della tesi."
modified: 2021-09-30
tags: [tesi, BSc, MSc, UniTN]
comments: true
image:
  feature: features/world-216.png
---

Alcune risposte a domande frequenti sulla scrittura della tesi e della presentazione che ho raccolto tutorando vari (> 10) studenti per tesi triennali e magistrali in UniTN.

Inoltre, se vi sto seguendo per la tesi è molto probabile che il vostro relatore sia il prof. Montresor, per cui [leggete anche le sue indicazioni sulla scrittura della tesi][2].

* __Nel sommario della tesi è possibile inserire immagini o altro?__

No, l'abstract non deve avere immagini, né citazioni. In generale non si dovrebbero nemmeno usare acronimi a meno che non siano acronimi che tutti in quel campo utilizzano, se stiamo parlando di un articolo scientifico. Nel caso di una tesi triennale direi di evitare gli acronimi del tutto.

* __A livello di stile in generale, come sono percepite le parole in grassetto, sottolineato, ecc.? Meglio usarle, limitarsi al minimo possibile o evitare proprio?__

Nel 99.999% dei casi non vanno usati grassetto o sottolineato, un'eccezione potrebbe essere quando si presenta un teorema e enunciato che ha un none, per esempio:
> __Prima legge di Laniado.__
>
> Prendere le scale è solitamente più veloce che usare le scale mobili, a meno che non si cammini sulle scale mobili).

Il corsivo andrebbe usato per le parole straniere, incluso il latino. Per esempio, "We developed an _ad hoc_ solution ...", _ad hoc_ è latino e andrebbe messo in corsivo.

* __Se vengono nominati più volte articoli o tool per cui è richiesta la citazione, conviene citarli solo la prima volta, oppure più volte (es: una nell'abstract e una nella tesi)?__

Una volta sola, la prima volta in cui ha senso farlo. Come indicato nella risposta precedente, non vanno citazioni nell'abstract.

* __Quando si usano le citazioni e quando le note a piè di pagina?__

Le citazioni vanno usate per inserire i riferimenti alla letteratura. Le note a pié di pagina per link esterni e per note. In generale, citate molto e usate le note solo per i link esterni.

* __Come si posizionano le citazioni (comando `\cite` in LaTeX) e le note a piè di pagina (comando `**\footnote`)?__

Le citazioni vanno messe alla fine della frase cui si riferiscono, dentro la punteggiatura, per esempio: "Consonni et al. showed that drinking more than 40 coffees a day can lead to death [1]." In LaTeX tra l'ultima parola della frase e la citazione usate un "non-breakable space" che si inserisce con la tilde ~. Nell'esempio precedente sarebbe `lead to death~\cite{consonni2020}`. Le footnote invece - è questa è una particolarità dell'inglese, in italiano si fa diversamente - vanno dopo la punteggiature, per esempio: "Wikipedia XML dumps are published by the Wikimedia Foundation,¹ ...".

* __Come si preparano le tabelle?__

Usate il package `booktabs` e seguite [queste istruzioni dell'ottimo Marco de Nadai][1]. Solitamente quando si stanno facendo dei confronti, per esempio quando si confrontano le performance di più algoritmi, si usa il grassetto per evidenziare i risultati migliori.

* __Dove si posizionano le didascalie (caption per figure e tabelle__

Dipende dal template che state usando per la tesi o, in generale, per l'articolo. Di solito ci sono delle guidelines in merito che dicono se la didascalia va posizionata sopra o sotto la tabello o figura. In generale, mettetela sotto.

Cristian Consonni, [11.06.21 18:05]
[In reply to Cristian Consonni]
[ Photo ]
Esempio di tabella con risultati in grassetto. Notate che le caption devono essere esaustive.

* __Come si evita di avere troppi elenchi puntati?__

In due modi:
1. 1 usando gli elenchi senza mettere le cose in elenco;
2. 2 facendo elenchi "inline";

⮕ _Esempio 1_

Testo originale:

> The dataset used for the project is the echen102/COVID-19-TweetIDs, a collection of over 1 billion tweet IDs available on GitHub. The selected tweets are either
>• related to specific accounts
>• sampled real-time from the Twitter API because they matched a defined set of keywords

Può diventare:

> The dataset used for the project is the echen102/COVID-19-TweetIDs, a collection of over 1 billion tweet IDs available on GitHub. The selected tweets are either related to specific accounts; or sampled real-time from the Twitter API because they matched a defined set of keywords.

⮕  _Esempio 2_

Testo originale:

> The categories were selected based on the following criteria:
> * number of retweets
> * number of likes
> * ratio between number of followers and number of followed

Può diventare:

> The categories were selected based on the following three criteria: a) number of retweets; b) number of likes; and c) ratio between number of followers and number of followed.

* __In che formato deve essere la presentazione?__

Questo vale per qualsiasi presentazione vi troverete a fare, per la tesi o in altri contesti: _portatevi dietro una versione PDF della presentazione_.
In generale, è una buona idea anche non avere animazioni, o meglio, se avete cose che compaiono nelle slide invece di animarle dentro PowerPoint, fate delle slide separate che simulano l'animazione (che poi è come fa LaTeX Beamer). Così quando la salvate in PDF la cosa funziona comunque. È un po' assurdo che sia così, ma per esperienza è l'unico modo per essere ragionevolmente sicuri che la vostra presentazione funzioni ovunque. A volte gli organizzatori di un evento, presentazione o seminario si aspettano che tu, lo speaker, abbia una presentazione in formato PDF senza nemmeno dirtelo prima.
Se invece avete una presentazione in cui vi è proprio necessario usare il vostro portatile[^1]
- per esempio se dovete mostrare video, o se dovete magari fare una demo - vi dovete assicurare in anticipo con chi organizza la presentazione o il seminario che: 1. possiate usare il vostro portatile e ci siano i tempi per farlo 2. tutto funzioni correttamente.

* __Qualche consiglio riguardo i colori e i fonti  da usare nella presentazione?__

Riguardo le dimensioni, dal carattere alle legende dei grafi, devono essere leggibili facilmente anche da chi non è in prima fila alla vostra presentazione.
Per quanto riguarda i colori, tenete conto che a volte vi può capitare di avere a che fare con proiettori antidiluviani che distorcono i colori, quel rosso può diventare un giallino o un verdino. La _rule of thumb_ è che ogni informazione che desiderate evidenziare debba essere distinguibile in due modi, per esempio per evidenziale una parola in una slide mettela <span style="color:red">__in rosso e in grassetto__</span> in questo caso state cambiando il colore e il peso del carattere.

---

[^1]: Per le presentazioni di laurea in UniTN non è possibile usare il proprio portatile.

[1]: https://www.marcodena.it/post/professional-paper-writing-in-latex-2016/
[2]: http://cricca.disi.unitn.it/montresor/technical-writing-some-suggestions/
