---
layout: page
title: "Datasets: Wikipedia pagecounts-ez (2007-12-09 – 2011-11-15)"
modified: 2024-08-03T19:21:30+02:00
excerpt: "This dataset is a compressed format of the pageview data of Wikimedia projects from 2007-12-09 to 2011-11-15. It has been created by processing Wikimedia's pagecounts-raw."
image:
  feature: features/world-108.png
---

This dataset is a compressed format of the pageview data of Wikimedia projects from 2007-12-09 to 2011-11-15. It has been created by processing Wikimedia's [`pagecounts-raw`](https://dumps.wikimedia.org/other/pagecounts-raw/) dataset. For the period `2011-11-15` onwards, data are available on [pagecounts-ez](https://dumps.wikimedia.org/other/pagecounts-ez/), where you can also find more information about the dataset.

## Download

This dataset can be downloaded in two different ways:

### HTTP (preferred method)

You can find the dataset on: [`cricca.disi.unitn.it/datasets/pagecounts-ez/`](http://cricca.disi.unitn.it/datasets/pagecounts-ez/).

You can download the dataset with the following command:
<pre>
lynx -dump -listonly http://cricca.disi.unitn.it/datasets/pagecounts-ez/ | awk '{print $2}' | grep -E '^http://cricca\.disi\.unitn\.it/datasets/pagecounts-ez/' | xargs -L1 -I{} wget -R '\?C=' {}
</pre>

### dat (experimental)

You can download the dataset using [`dat`](https://datproject.org/), the dataset is available at [`datbase.org/CristianCantoro/wikipedia-pagecounts-ez`](https://datbase.org/CristianCantoro/wikipedia-pagecounts-ez).

Once you have installed `dat`, you can download the dataset with:
```
dat clone dat://07d810c54bdc547191b700ac1c12500af9eaa25a3ea054847e9819533acd4891 ~/dat-wikipedia-pagecounts-ez
```


## Code

* This dataset has been produced using [Python](https://python.org/), you can find the code in the repo [`engineroom-merge-pageviews`](https://github.com/NGI4eu/engineroom-merge-pageviews) on GitHub.

## Authors

* Cristian Consonni ([cristian.consonni(at)unitn.it](mailto:cristian.consonni(at)unitn(dot)it)), DISI - University of Trento
* Alberto Montresor, DISI - University of Trento

### License

The [original dataset](https://dumps.wikimedia.org/other/pagecounts-raw/) was
published in the Public Domain ([Public Domain Mark 1.0](http://creativecommons.org/publicdomain/mark/1.0/)).

You can reuse this dataset under the same license.

### How to cite

Please cite this dataset as:

***Cristian Consonni, Alberto Montresor.***
***Wikipedia pagecounts-raw sorted by article.***
***doi coming soon***


## FAQs

### What is the total size of the dataset, the number of files and the largest file in the dataset?

The total dataset size is 518GB, and it contains 1,435 files. The average file size is 371MB and the largest file is 581MB.

### How are files organized?

Files are divided in directories, one for each month, like this:
{% highlight text %}
.
├── md5sums.txt
├── pagecounts-2007-12-09.bz2
├── pagecounts-2007-12-10.bz2
...
├── pagecounts-2011-11-14.bz2
└── pagecounts-2011-11-15.bz2
{% endhighlight %}

### Who produced this dataset and why?

The dataset has been produced by Cristian Consonni and Alberto Montresor, from the Department of Information Engineering and Computer Science (DISI), University of Trento, Trento, Italy.

This dataset has also been utilized in the research related to the ENGINEROOM project, in collaboration with David Laniado of Eurecat - Centre Tecnològic de Catalunya, Barcelona, Spain. EU ENGINEROOM has received funding from the European Union's Horizon 2020 research and innovation programme under the Grant Agreement no 780643.

### Is this dataset used in currently in-review or future papers that cite it?

This dataset is published as part of the ENGINEROOM project and it will be cited in the related scientific publications.

---

## Questions?

For further info <a href="mailto:cristian.consonni(at)unitn(dot)it" target="_blank">send me an e-mail</a>.
