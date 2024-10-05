# Custom diagrams for GCDkit

This is a collection of custom diagrams I wrote for
[GCDkit](http://gcdkit.org/) (Janoušek *et al.*, 2006).

## Installation

Copy the `*.R` files into the `Diagrams/User/` subdirectory of your
local GCDkit library.

You can check your local library path by running
`Sys.getenv("R_LIBS_USER")` in an R session. If the `R_LIBS_USER`
variable is unset you can run `.libPaths()` to get the full list of
library paths R knows about.

Once copied, you will find the diagrams under the *Plots > User
defined* menu item.

The diagrams are tested on Linux running R 4.1.0 and GCDkit 6.0.

## Diagrams

* SiO<sub>2</sub>&ndash;CaO/(CaO+K<sub>2</sub>O) diagrams of Enrique &
  Esteve (2019).
  * Enrique, P. & Esteve, S. (2019). "A chemical approximation to the
    modal QAPF and normative Q' (F')-ANOR classification of the igneous
    rocks based on their SiO<sub>2</sub>-CaO-K<sub>2</sub>O content".
    *Geogaceta*, 66, 91&ndash;94. [Link to
    PDF](https://sge.usal.es/archivos/geogacetas/geo66/Geo66_23.pdf)
  * Enrique, P. & Esteve, S. (2019). "Comparative study of the
    classification of plutonic and volcanic rocks using the normative Q'
    (F')-ANOR and chemical
    SiO<sub>2</sub>&ndash;100⋅CaO/(CaO+K<sub>2</sub>O) diagrams".
    *Geogaceta*, 66, 95&ndash;98.  [Link to
    PDF](https://sge.usal.es/archivos/geogacetas/geo66/Geo66_24.pdf)
* 2Q&ndash;(or+ab)&ndash;4an diagram of Enrique (2018).
  * Enrique, P. (2018). "Clasificación normativa de las rocas plutónicas
    saturadas y sobresaturadas en sílice basada en la clasificación
    modal QAP: El diagrama 2Q-(or+ab)-4an".  *Geogaceta*, 63,
    95&ndash;98. [Link to
    PDF](https://sge.usal.es/archivos/geogacetas/geo63/geo63_24.pdf)
* Al<sub>2</sub>O<sub>3</sub> versus normative plagioclase diagram,
  figure 6 of Irvine & Baragar (1971).
  * Irvine, T. N. & Baragar, W. R. A. (1971). "A Guide to the Chemical
    Classification of the Common Volcanic Rocks". *Canadian Journal of
    Earth Sciences*, 8, 523&ndash;548. DOI
    [10.1139/e71-055](https://doi.org/10.1139/e71-055)
* Peralkaline quartz-normative extrusive rock classification of
  MacDonald (1974).
  * MacDonald, R. (1974). "Nomenclature and petrochemistry of the
    peralkaline oversaturated extrusive rocks". *Bulletin
    Volcanologique*, 38, 498&ndash;516. DOI
    [10.1007/BF02596896](https://doi.org/10.1007/BF02596896)
* Basalt tetrahedron's Q-Ne-Ol plane, figure 2 of Yoder & Tilley (1962).
  * Yoder, H.S. & Tilley, C. E. (1962). "Origin of basalt magmas: An
    experimental study of natural and synthetic rock systems". *Journal
    of Petrology*, 3, 342&ndash;532. DOI
    [10.1093/petrology/3.3.342](https://doi.org/10.1093/petrology/3.3.342)

## Other references

Janoušek, V.; Farrow, C. M. & Erban, V. (2006). "Interpretation of
Whole-rock Geochemical Data in Igneous Geochemistry: Introducing
Geochemical Data Toolkit (GCDkit)".  *Journal of Petrology*, Oxford
University Press, 47, 1255&ndash;1259. DOI
[10.1093/petrology/egl013](https://doi.org/10.1093/petrology/egl013)

R Core Team (2024). *R: A language and environment for statistical
computing*. R Foundation for Statistical Computing, Vienna, Austria. URL
https://www.R-project.org/


## License

All the diagrams are released under the same license as GCDkit (i.e.
`GPL (>= 2)`).
