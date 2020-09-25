---
layout: page
title: Publications
modified: 2019-03-18T08:58+01:00
excerpt: "Publications of Cristian Consonni"
image:
  feature: mountains-3.jpg
  credit: Sella group - Dolomites, Italy - Landscape photography by Giuseppe Milo (CC-BY 2.0)
  creditlink: https://www.flickr.com/photos/photolupi/3294447879
---
<script type="text/javascript"
  src="//cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>
<script type="text/x-mathjax-config">
  MathJax.Hub.Config({
    tex2jax: {
      inlineMath: [ ['$','$'], ["\\(","\\)"] ],
      processEscapes: true
    }
  });
</script>

These are my publications (complete Curriculum Vitæ: [en][encv], [it][itcv]).
See also [my Google Scholar profile][scholar] and [ResearchGate profile][researchgate].

* Journal paper
: Cristian Consonni, David Laniado and Alberto Montresor
: ["CycleRank, or there and back again: personalized relevance scores from cyclic paths on directed graphs"](files/cyclerank.pdf)
: Proceedings of the Royal Society A, 2020, vol. 476, no 2241, p. 20190740.
: abstract <a class="collapsible inactive" id='abstract_cyclerank_2020' href="#"></a>
<div class="collapsible" id='abstract_cyclerank_2020'>
Surfing the links between Wikipedia articles constitutes a valuable way to acquire new knowledge related to a topic by exploring its connections to other pages. In this sense, Personalized PageRank is a well-known option to make sense of the graph of links between pages, and identify the most relevant articles with respect to a given one; its performance, however, is hindered by pages with high indegree that function as hubs and obtain high scores regardless of the starting point. In this work, we present CycleRank, a novel algorithm based on cyclic paths aimed at finding the most relevant nodes related to a topic. To compare the results of CycleRank with those of Personalized PageRank and other algorithms derived from it, we perform three experiments based on different ground truths. We find that CycleRank aligns better with readers’ behavior as it ranks in higher positions the articles corresponding to links that receive more clicks; it tends to identify in higher position related articles highlighted by editors in the “See also” section; and it is more robust to global hubs of the network having high indegree. Finally, we show that computing CycleRank is two orders of magnitude faster than computing the other baselines.
</div>

* Conference paper
: Silvia Basile, Cristian Consonni, Matteo Manca, and Ludovico Boratto
: ["Matching User Preferences and Behavior for Mobility"](files/ACM_HT2020_47.pdf)
: In Proceedings of the 31st ACM Conference on Hypertext and Social Media (pp. 141-150). July 13-15, 2020
: abstract <a class="collapsible inactive" id='abstract_acmht_2020' href="#"></a>
<div class="collapsible" id='abstract_acmht_2020'>
Understanding user mobility is central to develop better transport systems that answer users' needs. Users usually plan their travel according to their needs and preferences; however, different factors can influence their choices when traveling.  In this work, we model users' preferences, and we match their actual transport use. We use data coming from a mobility platform developed for mobile devices, whose aim is to understand the value of users' travel time. Our first goal is to characterize the perception that users have of their mobility by analyzing their general preferences expressed **before** their travel time. Our approach combines dimensionality reduction and clustering techniques to provide interpretable profiles of users. Then, we perform the same task **after** monitoring users' travels by doing a matching between users' preferences and their actual behavior. Our results show that there are substantial differences between users' perception of their mobility and their actual behavior: users overestimate their preferences for specific mobility modes, that in general, yield a lower return in terms of the worthwhileness of their trip.
</div>

* Workshop paper
: Cristian Consonni, David Laniado and Alberto Montresor
: [_"Discovering Topical Contexts from Links in Wikipedia"_](files/Wiki_Workshop_2019_paper_20.pdf)
: [Wiki Workshop 2019](https://wikiworkshop.org/2019/), part of [The Web Conference 2019](https://www2019.thewebconf.org/) (2019)
: abstract <a class="collapsible inactive" id='abstract_wikiworkshop_2019' href="#"></a>
<div class="collapsible" id='abstract_wikiworkshop_2019'>
Surfing the links between Wikipedia articles constitutes a valuable way to acquire new knowledge related to a topic. The density of connections in Wikipedia makes that, starting from a single page, it is possible to reach virtually any other topic on the encyclopedia. This abundance highlights the need for dedicated algorithms to
identify the topics which are more relevant to a given concept. In this context, a well-known algorithm is Personalized PageRank; its performance, however, is hindered by pages with high in-degree that function as hubs and appear with high scores regardless of the starting point. In this work, we present how a novel algorithm based on cyclic paths can be used to find the most relevant nodes in the Wikipedia link network related to a topic. We present a case study showing how the most relevant concepts associated with the topic of "Fake news" vary over time and across language editions.
</div>

* Dataset paper
: Cristian Consonni , David Laniado, and Alberto Montresor.
: [_"WikiLinkGraphs: A complete, longitudinal and multi-language dataset of the Wikipedia link networks"_](files/WikiLinkGraphs.pdf)
: _[ICWSM 2019](https://icwsm.org/2019/)_. arXiv preprint [arXiv:1902.04298](https://arxiv.org/pdf/1902.04298.pdf) (2019). [poster](./files/ICWSM19_WikiLinkGraphs_Poster.pdf)
: abstract <a class="collapsible inactive" id='abstract_wikilinkgraphs' href="#"></a>
<div class="collapsible" id='abstract_wikilinkgraphs'>
Wikipedia articles contain multiple links connecting a subject to other pages of the encyclopedia. In Wikipedia parlance, these links are called internal links or wikilinks. We present a complete dataset of the network of internal Wikipedia links for the 9 largest language editions. The dataset contains yearly snapshots of the network and spans 17 years, from the creation of Wikipedia in 2001 to March 1st, 2018. While previous work has mostly focused on the complete hyperlink graph which includes also links automatically generated by templates, we parsed each revision of each article to track links appearing in the main text. In this way we obtained a cleaner network, discarding more than half of the links and representing all and only the links intentionally added by editors. We describe in detail how the Wikipedia dumps have been processed and the challenges we have encountered, including the need to handle special pages such as redirects, i.e., alternative article titles. We present descriptive statistics of several snapshots of this network. Finally, we propose several research opportunities that can be explored using this new dataset.
</div>

---

* Conference paper
: Cristian Consonni, Paolo Sottovia, Alberto Montresor, and Yannis Velegrakis.
: [_"Discoverying order dependencies through order compatibility"_](files/OD_paper_EDBT_2019.pdf)
: [International Conference on Extending Database Technology 2019](http://edbticdt2019.inesc-id.pt/).
: abstract <a class="collapsible inactive" id='abstract_od_edbt' href="#"></a>
<div class="collapsible" id='abstract_od_edbt'>
A relevant task in the exploration and understanding of large datasets is the discovery of hidden relationships in the data. In particular, functional dependencies have received considerable attention in the past. However, there are other kinds of relationships that are significant both for understanding the data and for performing query optimization. Order dependencies belong to this category. An order dependency states that if a table is ordered on a list of attributes, then it is also ordered on another list of attributes. The discovery of order dependencies has been only recently studied. In this paper, we propose a novel approach for discovering order dependencies in a given dataset. Our approach leverages the observation that discovering order dependencies can be guided by the discovery of a more specific form of de- pendencies called order compatibility dependencies. We show that our algorithm outperforms existing approaches on real datasets.
Furthermore, our algorithm can be parallelized leading to further improvements when it is executed on multiple threads. We present several experiments that illustrate the effectiveness and efficiency of our proposal and discuss our findings.
</div>

---

* White paper
: Martin Brugnara, Cristian Consonni, Daniele Foroni, Sivan Pasupathipillai, Giulia Preti, Paolo Sottovia, and Yannis Velegrakis.
: [_"Data Management and Smart Cities"_](files/data_management_smart_cities_whitepaper_dbtrento.pdf)
: [IEEE Smart Cities Trento](https://event.unitn.it/smartcities-trento/). 2019.
: abstract <a class="collapsible inactive" id='abstract_whitepaper_smartcities' href="#"></a>
<div class="collapsible" id='abstract_whitepaper_smartcities'>
Modern cities use information and communication technologies to obtain deep insights on the different aspects of the way they operate, which can allow officials to make informed decisions to improve the operational efficiency of different operations and improve the life of their citizens. Analyzing the data about the different activities poses significant challenges. It is not merely the volume that recent hardware and software advancements have helped to achieve, but also challenges regarding the variety, velocity, and veracity of the data. All this is often known as the Big Data paradigm. In this document, we analyze some of these challenges, which we believe have not yet received considerable attention, we explain their value, and we describe some of the advanced solutions we have developed.
</div>

---

These works have been developed while I was at [Università degli studi di Milano-Bicocca](http://www.unimib.it), at [Fondazione Bruno Kessler](http://www.fbk.eu) or during projects done by [Wikimedia Italia](http://www.wikimedia.it).

* Conference paper
: Riccardo Pasi, Cristian Consonni, Maurizio Napolitano.
: [_“Open Community Data & Official Public Data in flood risk management: a comparison based on InaSAFE”_](files/FOSS4G-eu15_Pasi_Consonni_Napolitano.pdf)
: FOSS4G-Europe 2015, the 2nd European Conference for for Free and Open Source Software for Geospatial, Como, July 2015
: abstract <a class="collapsible inactive" id='abstract_osm_inasafe' href="#"></a>
<div class="collapsible" id='abstract_osm_inasafe'>
Flood and - in general - natural hazards cannot be prevented; however, measures can be taken to mitigate their impacts and prevent them from
becoming disasters. Disaster management has been defined as «(the) continuous process that aims at avoiding or reducing the impact of natural hazards» (Poser, Dransch, 2010). Poser and Dransch (2010) have also outlined the importance of using up-to-date and accurate information in all phases of disaster management, as the need of integrating information from many different sources including in-situ sensors, aerial and satellite images, administrative, statistics and socioeconomic census data. New Internet technologies have facilitated fast and easy data collection from the public, giving rise to the idea of using Volunteered Geographic Information (VGI) in disaster risk management.

The paper discusses the opportunities and challenges of using VGI for disaster management, with particular focus on information for the prevention phase. This case study is based on flood risk assessment in two recently flooded cities in Veneto, Italy. We used InaSAFE, a free hazard and risk modeling application integrated in QGIS as a plug-in. InaSAFE offers the capacity to compare hazard and exposure official data with community crowdsourced data. In the case study we compare the results obtained by InaSAFE when using as input the data describing buildings (as exposure layer) drew from OpenStreetMap and from official public data. The goal of this work is answering the following question: Can OSM be used to collect exposure data for DRM? The paper ends analyzing different data sources opportunities and limits.
</div>
---


* Journal paper
: Marco Cè, Cristian Consonni, Georg P. Engel and Leonardo Giusti.
: [_"Non-Gaussianities in the topological charge distribution of the SU(3) Yang-Mills theory"_](files/PhysRevD.92.074502.pdf).
: [Physical Review D, 92(7), 074502](https://journals.aps.org/prd/abstract/10.1103/PhysRevD.92.074502).
: abstract <a class="collapsible inactive" id='abstract_non-gaussianities_topological_charge' href="#"></a>
<div class="collapsible" id='abstract_non-gaussianities_topological_charge'>
We study the topological charge distribution of the SU(3) Yang-Mills theory with high precision in order to be able to detect deviations from Gaussianity. The computation is carried out on the lattice with high statistics Monte&nbsp;Carlo simulations by implementing a naive discretization of the topological charge evolved with the Yang-Mills gradient flow. This definition is far less demanding than the one suggested from Neuberger’s fermions and, as shown in this paper, in the continuum limit its cumulants coincide with those of the universal definition appearing in the chiral Ward identities. Thanks to the range of lattice volumes and spacings considered, we can extrapolate the results for the second and fourth cumulant of the topological charge distribution to the continuum limit with confidence by keeping finite volume effects negligible with respect to the statistical errors. Our best results for the topological susceptibility is $t_{0}^{2}\chi=6.67(7) \times 10^{-4}$, where $t_0$ is a standard reference scale, while for the ratio of the fourth cumulant over the second, we obtain $R=0.233(45)$. The latter is compatible with the expectations from the large $N_c$ expansion, while it rules out the $\theta$ behavior of the vacuum energy predicted by the dilute instanton model. Its large distance from 1 implies that, in the ensemble of gauge configurations that dominate the path integral, the fluctuations of the topological charge are of quantum <i>nonperturbative</i> nature.
</div>

---

* Conference paper
: Anna Antonini, Dante Bartoli, Sara Chiesa, Cristian Consonni, Rossella Di Marco, Sara Franco.
: _“Archeowiki: enhancing archaeological heritage in Lombardy (Italy) with open-source strategies”_
: First EAGLE International Conference, Paris, October 2014.
: [conference proceedings @ eagle-network.eu](http://www.eagle-network.eu/wp-content/uploads/2015/01/Paris-Conference-Proceedings.pdf); [conference proceedings (self-hosted)](files/EAGLE-Paris-Conference-Proceedings.pdf) [presentation on SlideShare](https://www.slideshare.net/CristianCantoro/archeowiki-when-opensource-strategies-attract-visitors-presence-in-museums-eagle-2014-conference)
: abstract <a class="collapsible inactive" id='abstract_archeowiki' href="#"></a>
<div class="collapsible" id='abstract_archeowiki'>
Open Source initiatives in cultural environment are emerging tools among educational and cultural institutions. This practice, indeed, is largely used by museums, libraries, archives, in order to promote knowledge also implemented by a sharing process. Involving people in this participative process means also increase the number of real visitors in museums. That idea stimulated the project “Archeowiki”.
</div>

---

* Presentation
: Cristian Consonni.
: _“Nuts4nuts: geospatial information from Wikipedia”_
: [ECCS'14 Satellite Workshop on Computational Social Science](https://web.archive.org/web/20140929162342/http://cssworkshop.oii.ox.ac.uk/), Lucca, 24-25 September, 2014
: [slides (self-hosted)](files/eccs14_css_Paper28_Consonni.pdf) [slides on SlideShare](https://www.slideshare.net/CristianCantoro/nuts4nuts-geospatial-information-from-wikipedia-ecss-2014)

---

* Conference paper
: Marco Cè, Cristian Consonni, Georg P. Engel and Leonardo Giusti.
: [_“Testing the Witten-Veneziano mechanism with the Yang-Mills gradient flow on the lattice”_](files/1410.8358.pdf)
: The 32nd International Symposium on Lattice Field Theory, 23-28 June, 2014, Columbia University New York, NY
: [arxiv:1410.8358](http://arxiv.org/abs/1410.8358)
: abstract <a class="collapsible inactive" id='abstract_WV_mechanism_YM_flow_lattice' href="#"></a>
<div class="collapsible" id='abstract_WV_mechanism_YM_flow_lattice'>
We present a precise computation of the topological charge distribution in the $SU(3)$ Yang-Mills theory. It is carried out on the lattice with high statistics Monte Carlo simulations by employing the clover discretization of the field strength tensor combined with the Yang–Mills gradient flow. The flow equations are integrated numerically by a fourth-order structure-preserving Runge–Kutta method. We have performed simulations at four lattice spacings and several lattice sizes to remove with confidence the systematic errors in the second (topological susceptibility $\chi_{t}^{\text{YM}}$ ) and the fourth cumulant of the distribution. In the continuum we obtain the preliminary results $t_{0}^{2} \chi_{t}^{\text{YM}}= 6.53(8) \times 10^{-4}$ and the ratio between the fourth and the second cumulant $R=0.233(45)$. Our results disfavour the $\theta$-behaviour of the vacuum energy predicted by dilute instanton models, while they are compatible with the expectation from the large-$N_{c}$ expansion.
</div>

---

* Poster
: Cristian Consonni.
: _“Nuts4Nuts: extraction of geospatial information from Wikipedia and linking to OpenStreetMap”_
: Collective Intelligence 2014 @ Massachusetts Institute of Technology, Cambridge (MA) -- June 10-12, 2014.
: [poster (self-hosted)](files/ci2014_Paper64_Consonni.pdf) [code on GitHub](https://github.com/SpazioDati/Nuts4Nuts)
: abstract <a class="collapsible inactive" id='abstract_n4n_poster' href="#"></a>
<div class="collapsible" id='abstract_n4n_poster'>
Volunteered geographical information (VGI) are one facet of phenomenon of crowdsourcing in which people are collecting and sharing large amounts data in open and collaborative projects. Although these projects have different purposes and scopes there is some overlap between them so it can be asked if these data, which are collected from different communities with different processes, are coherent.
In this context we have developed a tool, called Nuts4Nuts, which can identify the municipality in which a Wikipedia article is located extracting relevant informations from the templates or perfoming an analysis of the article's incipit. The code is available with a permissive MIT license. At the moment, the system is limited to locations in Italy and is based on Italian Wikipedia.
</div>

---

* Presentation
: Cristian Consonni.
: _“Data coherence between OSM and Wikipedia”_
: State of the Map 2013 @ Birmingham (UK) -- September 2013
: [slides (self-hosted)](files/Consonni_SotM13.pdf) [slide on Slideshare](https://www.slideshare.net/CristianCantoro/data-coherence-between-openstreetmap-and-wikipedia-presentation-state-of-the-map-2013-birmingham) [video on Vimeo](https://vimeo.com/79221338)
: abstract <a class="collapsible inactive" id='abstract_sotm13' href="#"></a>
<div class="collapsible" id='abstract_sotm13'>
Volunteered geographical information (VGI) is one facet of phenomenon of crowdsourcing in which people collect and share large amounts data in open and collaborative projects. Although these projects have different purposes and scopes there is some overlap between them so it can be asked if this data, which is collected from different communities with different processes, is coherent. I will discuss a set of possible analyses between OSM and Wikipedia data, how they can be performed and a path for further research. I will also present some preliminary results of the application of these metrics regarding Italian Wikipedia and OSM in Italy for a given category of objects (churches and historical buildings).
</div>

---


### Bachelor and Master Thesis

I have received both my BSc in Physics and my MSc in computational physics
from the [University of Milano-Bicocca][unimib] (UniMiB), Milan.

* *Bachelor Thesis*
For my Bachelor thesis I was supervised by [Marco Paganoni][paganoni] and
Roberto Salerno. I worked in High Energy Physics with the [CMS][cms] group at
UniMiB/INFN Milano-Bicocca at CERN in Geneva.
: [_“Study of electron fake rate from QCD jets in CMS ECAL calorimeter”_][bsc_thesis]
([final presentation][bsc_presentation])

---

* *Master Thesis*
I did my Master thesis with [Leonardo Giusti][giusti] in computational physics.
: [_“Applications of the Wilson Flow in Lattice Gauge Theory”_][msc_thesis]
([final presentation][msc_presentation])

[encv]: ./CV_Consonni_public_en.pdf
[itcv]: ./CV_Consonni_public_it.pdf
[scholar]: https://scholar.google.it/citations?hl=en&view_op=list_works&gmla=AJsN-F64Lis8rmWDuTFqARwsNXIyvMT-IuYfRp6916E-B5LdonOCcvaB-d-gbo1rG9kz3_swYOXS2uK38q8Z1G2M8lBGUwpqplf-Qv2q0H1azSyBgxT3eDE&user=3ncgdOUAAAAJ
[researchgate]: https://www.researchgate.net/profile/Cristian_Consonni
[giusti]: http://virgilio.mib.infn.it/~lgiusti/lgiusti.html
[unimib]: http://www.unimib.it/
[paganoni]: http://fisica.mib.infn.it/pages/it/chi-siamo/persone/who.php?user=paganoni&lang=IT
[cms]: http://cms.web.cern.ch/
[bsc_thesis]: ./files/BSc_thesis_Cristian_Consonni.pdf
[bsc_presentation]: ./files/BSc_thesis_presentation_Cristian_Consonni.pdf
[msc_thesis]: ./files/MSc_thesis_Cristian_Consonni.pdf
[msc_presentation]: ./files/MSc_thesis_presentation_Cristian_Consonni.pdf
