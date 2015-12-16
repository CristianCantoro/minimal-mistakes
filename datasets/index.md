---
layout: page
title: Datasets
modified: 2015-06-13T17:43:02.362000+01:00
excerpt: "Courses information and materials"
image:
  feature: mountains-7.jpg
  credit: Dolomites, Monte Paterno by Robert J. Heath @ Flickr (CC-BY 2.0)
  creditlink: http://bit.ly/1ZbMlDJ
---

Here you can find some datasets you can reuse for your research.

## Temporal evolution of templates

This work has constituted the B.Sc. thesis of Mattia Lago.
The code is available under the MIT license [on GitHub](https://github.com/Tihacker/Wikipedia-Templates-Analysis).

### Italian Wikipedia (itwiki)

These datasets were produced analyzing the Italian Wikipedia dump with complete
page edit history in .bz2 format of [2015-10-20](https://dumps.wikimedia.org/itwiki/20151020/).

* ***[template_count_it.tar.7z](./template_count_it.tar.7z)*** (544MB compressed, 9.0GB uncompressed).
  This dataset consists in the count of the appeareance of each template for
  each revision in Italian Wikipedia.
  The archive contains a CSV file with the following fields:
  1. `page_id`: (numerical) identifier of numerico della pagina
  2. `page_tile`: page title
  3. `rev_id`: (numerical) identifier of the article revision
  4. `timestamp`: revision timestamp
  5. `dictionary`: a (Python) dictionary containing the count  of the templates
    appearing in that given revision. Keys are the name of the templates, values
    are the counts.


Extract of the file:
{% highlight text %}
page_id,page_title,rev_id,timestamp,dictionary
2,Armonium,3,20010914101928,{}
...
2,Armonium,73738102,20150710080500,"{'Nota disambigua': 1, 'Thesaurus BNCF': 1, 'Portale': 1, 'Controllo di autorità': 1, 'Strumento musicale': 1, 'Interprogetto': 1}"
3,Antropologia,4,20020111200304,{}
...
3,Antropologia,71799348,20150404230808,"{'Nota disambigua': 1, 'Scienze sociali': 1, 'Thesaurus BNCF': 1, 'Zoologia': 1, 'Interprogetto': 1, 'Portale': 1, 'Controllo di autorità': 1, 'Scienze etnoantropologiche': 1}"
```
{% endhighlight %}

* ***[redirects_it.tar.7z](./redirects_it.tar.7z)*** (74KB compressed, 257K uncompressed).
  This dataset consists in a list of redirects for each template in Italian Wikipedia.
  The archive contains a CSV file with the following fields:
  1. `template`: template name
  2. `redirect`: destination of the redirect
  3. `rev_id`: (numerical) identifier of the page revision
  4. `timestamp`: revision timestamp.

Extract of the file:
{% highlight text %}
template,redirect,rev_id,timestamp
1461 Trabzon,Calcio 1461 trabzon,53804499,20121109120449
3TeamBracket,Torneo semifinali con 3 squadre,68884284,20141028102030
404,Collegamento interrotto,33230901,20100701081710
Aa,Avvisoavvisi,21929679,20090207224952
AA,Avvisoavvisi,63955793,20140204021440
Abbreviazione aeronautica,Abbreviazioni aeronautiche,56951406,20130304162116
ABK,Abcasia,52746688,20120923230717
AC,Avvisocommento,45522329,20111209160525
Accountbot,Accountbot,45939459,20111228164505
{% endhighlight %}

---

## Questions?

For further info <a href="mailto:cristian.consonni(at)unitn(dot)it" target="_blank">send me an e-mail</a>.