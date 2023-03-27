---
layout: page
title: Publications
modified: 2019-03-18T08:58+01:00
excerpt: "Publications by Cristian Consonni"
image:
  feature: features/world-216.png
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
: Cristian Consonni, Martin Brugnara, Paolo Bevilacqua, Anna Tagliaferri, Marco Frego.
: ["A new Markov–Dubins hybrid solver with learned decision trees."](files/markov-dubins.pdf)
: Engineering Applications of Artificial Intelligence, Volume 122, 2023: [Science Direct](https://www.sciencedirect.com/science/article/pii/S0952197623003500). [doi.org/10.1016/j.engappai.2023.106166](https://doi.org/10.1016/j.engappai.2023.106166).
: _keywords_: Markov–Dubins; Machine learning; CatBoost; Shortest path; Non-holonomic planning; Path planning
: abstract <a class="collapsible inactive" id='abstract_markov-dubins_engappai_2023' href="#"></a>
<div class="collapsible" id='abstract_markov-dubins_engappai_2023'>
In this paper, the applicability of machine learning models and techniques to the Markov–Dubins path planning problem have been explored. Machine learning techniques are already applied to several fields, which range from computer vision, to physics simulation, to item recommendation, to user profiling. This pervasiveness has led to marked improvements in the implementation and support for applying machine learning models, in particular for specialised use cases such as low-power devices, embedded hardware, and real-time applications. On the other hand, the Markov–Dubins path planning problem, which is central in robotic nonholonomic trajectory design, is already covered by established numerical and optimisation techniques. However, the benefits of applying machine learning approaches to this problem remain to be investigated. In particular, there is the need to research potential speed-ups or application domains that would be better solved by a machine learning approach compared to the traditional algorithmic approaches. In this study, we train a state-of-the-art machine learning model in a supervised setting on Markov–Dubins and use it in two different ways: to directly predict the solution, and to filter candidate solutions. Also, a comparison of the quality of these predictions with a state-of-the-art Markov–Dubins solver is made. The results obtained indicate that machine learning approaches are comparable to state-of-the-art solutions: our bare model, directly predicting the solution, appears to be 8.3 times faster than the current standard, sacrificing the accuracy, which amounts to a value close to 92%; the hybrid model that filters the solutions prior to finding the best candidate runs in times that are comparable to the classical solver (58 ms) and has over 98% accuracy. A further comparison with alternative solvers and techniques, such as Optimal Control, NonLinear Programming and Mixed Integer NonLinear Programming has been made, confirming the benefits of the machine learning approach over these, for which the computational times are in the range of seconds. This opens new avenues for interdisciplinary applications of machine learning to more general planning problems (e.g., the same problem in 3D), where the number of possible manoeuvres is large and the computation of each of them requires a considerable computational effort, which makes the brute force trial-and-error infeasible. <br/>
</div>


* Workshop paper
: Miquel-Ribé, Marc, Cristian Consonni, David Laniado.
: ["Wikipedia, Elder or Teen?"](files/WikiWorkshop2022_paper_25.pdf)
: [Wiki Workshop 2022](https://wikiworkshop.org/2022/), part of [The Web Conference 2022](https://www2022.thewebconf.org/) (2022) ([PDF](https://wikiworkshop.org/2022/papers/WikiWorkshop2022_paper_25.pdf))
: abstract <a class="collapsible inactive" id='abstract_wikiworkshop_2022' href="#"></a>
<div class="collapsible" id='abstract_wikiworkshop_2022'>
Wikipedia is an undeniably successful project, with unprecedented numbers of online volunteer contributors. However, researchers observed that the number of active editors for the largest Wikipedias started to decline in 2007, after rapid initial growth. Years after those announcements, researchers and community activists still need to understand community growth. We studied the growth, decline, and stagnation patterns of 50 Wikipedia language editions, and we found that half of them are still growing.
</div>

* Journal paper
: Miquel-Ribé, Marc, Cristian Consonni, David Laniado.
: ["Community Vital Signs: Measuring Wikipedia Communities’ Sustainable Growth and Renewal."](files/sustainability-14-04705.pdf)
: MDPI Sustainability 14.8 (2022): [4705](https://www.mdpi.com/2071-1050/14/8/4705). [doi:10.3390/su14084705](https://doi.org/10.3390/su14084705).
: abstract <a class="collapsible inactive" id='abstract_vitalsigns-mdpi_2022' href="#"></a>
<div class="collapsible" id='abstract_vitalsigns-mdpi_2022'>
Wikipedia is an undeniably successful project, with unprecedented numbers of online volunteer contributors. After 2007, researchers started to observe that the number of active editors for the largest Wikipedias declined after rapid initial growth. Years after those announcements, researchers and community activists still need to understand how to measure community health. In this paper, we  study patterns of growth, decline and stagnation, and we propose the creation of 6 sets of language-independent indicators that we call “Vital Signs.” Three focus on the general population of active editors creating content: retention, stability, and balance; the other three are related to specific community functions: specialists, administrators, and global community participation. We borrow the analogy from the medical field, as these indicators represent a first step in defining the health status of a community; they can constitute a valuable reference point to foresee and prevent future risks. We present our analysis for 8 Wikipedia language editions, and we show that communities are renewing their productive force even with stagnating absolute numbers; we observe a general lack of renewal in positions related to special functions or administratorship. Finally, we evaluate our framework by discussing these indicators with Wikimedia affiliates to support them in promoting the necessary changes to grow the communities.
</div>

* Journal paper
: Giovanni De Toni, Cristian Consonni, Alberto Montresor
: ["A general method for estimating the prevalence of influenza-like-symptoms with Wikipedia data."](files/journal.pone.0256858.pdf)
: PLOS ONE 16(8): e0256858. [doi:10.1371/journal.pone.0256858](https://doi.org/10.1371/journal.pone.0256858)
: abstract <a class="collapsible inactive" id='abstract_wikiflu-plone_2021' href="#"></a>
<div class="collapsible" id='abstract_wikiflu-plone_2021'>
Influenza is an acute respiratory seasonal disease that affects millions of people worldwide and causes thousands of deaths in Europe alone. Estimating in a fast and reliable way the impact of an illness on a given country is essential to plan and organize effective counter-measures, which is now possible by leveraging unconventional data sources like web searches and visits. In this study, we show the feasibility of exploiting machine learning models and information about Wikipedia’s page views of a selected group of articles to obtain
accurate estimates of influenza-like illnesses incidence in four European countries: Italy, Germany, Belgium, and the Netherlands. We propose a novel language-agnostic method, based on two algorithms, Personalized PageRank and CycleRank, to automatically select the most relevant Wikipedia pages to be monitored without the need for expert supervision. We then show how our model can reach state-of-the-art results by comparing it with previous solutions.
</div>

* Workshop paper
: Marc Miquel-Ribé, Cristian Consonni and David Laniado
: ["Wikipedia Editor Drop-Off: A Framework to Characterize Editors’ Inactivity"](files/wikiworkshop2021_editor_drop-off.pdf)
: [Wiki Workshop 2021](https://wikiworkshop.org/2021/), part of [The Web Conference 2021](https://www2021.thewebconf.org/) (2021) ([PDF](https://wikiworkshop.org/2021/papers/Wiki_Workshop_2021_paper_22.pdf))
: abstract <a class="collapsible inactive" id='abstract_wikiworkshop_editor_drop-off_2021' href="#"></a>
<div class="collapsible" id='abstract_wikiworkshop_editor_drop-off_2021'>
While there is extensive literature both on the motivations of Wikipedia's editors and on newcomers' retention, less is known about the process by which experienced editors leave. In this paper, we present an approach to characterize Wikipedia's editor drop-off as the transitional states from activity to inactivity. Our approach is based on the data that can be collected or inferred about editors' activity within the project, namely their contributions to encyclopedic articles, discussions with other editors, and overall participation.
Along with the characterization, we want to advance three main hypotheses, derived from the state of the art in the literature and the documentation produced by the community, to understand which interaction patterns may  anticipate editors leaving Wikipedia: 1) abrupt interactions or conflict with other editors, 2) excess in the number and spread of interactions, and 3) a lack of interactions with editors with similar characteristics.
We present this work both as a preliminary stage of our research to understand editor drop-off and as a flexible frame to look at the phenomenon that we believe can be useful in the future. Furthermore, by characterizing drop-off and identifying interaction patterns that may be associated with it, it may be possible to assess the general health of a community, and ultimately propose changes to improve it.
</div>

* Dataset paper
: Cristian Consonni, Silvia Basile, Matteo Manca, Ludovico Boratto, André Freitas, Tatiana Kovacikova, Ghadir Pourhashem and Yannick Cornet
: ["What's Your Value of Travel Time? Collecting Traveler-Centered Mobility Data via Crowdsourcing"](files/motiv-dataset.pdf)
:_[ICWSM 2021](https://icwsm.org/2021/)_. arXiv preprint [arXiv:2104.05809](https://arxiv.org/pdf/2104.05809.pdf) (2021).
: abstract <a class="collapsible inactive" id='abstract_motiv-dataset_2021' href="#"></a>
<div class="collapsible" id='abstract_motiv-dataset_2021'>
Mobility and transport, by their nature, involve crowds and require the coordination of multiple stakeholders - such as policy-makers, planners, transport operators, and the travelers themselves. However, traditional approaches have been focused on time savings, proposing to users solutions that include the shortest or fastest paths. We argue that this approach towards travel time value is not centered on a traveler's perspective. To date, very few works have mined data from crowds of travelers to test the efficacy and efficiency of novel mobility paradigms. In this paper, we build upon a different paradigm of <emph>worthwhile time</emph> in which travelers can use their travel time for other activities; we present a new dataset, which contains data about travelers and their journeys, collected from a dedicated mobile application. Each trip contains multi-faceted information: from the transport mode, through its evaluation, to the positive and negative experience factors. To showcase this new dataset's potential, we also present a use case, which compares corresponding trip legs with different transport modes, studying experience factors that negatively impact users using cycling and public transport as alternatives to cars. We conclude by discussing other application domains and research opportunities enabled by the dataset.
</div>

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
: abstract <a class="collapsible inactive" id='abstract_acmht_2020' href="#"></a> - [presentation](files/MoTiV-HT2020.pdf)
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

[encv]: /bio/files/CV_Consonni_public_en.pdf
[itcv]: /bio/files/CV_Consonni_public_it.pdf
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
