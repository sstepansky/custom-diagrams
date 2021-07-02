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

* SiO<sub>2</sub>&ndash;CaO/(CaO+K<sub>2</sub>O) diagrams of Enrique & Esteve
  (2019).
  * Enrique, P. & Esteve, S. (2019). "A chemical approximation to the
    modal QAPF and normative Q' (F')-ANOR classification of the igneous
    rocks based on their SiO<sub>2</sub>&ndash;CaO-K<sub>2</sub>O content".
    *Geogaceta*, 66, 91&ndash;94. [Link to
    PDF](https://sge.usal.es/archivos/geogacetas/geo66/Geo66_23.pdf)
  * Enrique, P. & Esteve, S. (2019). "Comparative study of the
    classification of plutonic and volcanic rocks using the normative Q'
    (F')-ANOR and chemical SiO<sub>2</sub>&ndash;100⋅CaO/(CaO+K<sub>2</sub>O)
    diagrams".  *Geogaceta*, 66, 95&ndash;98.  [Link to
    PDF](https://sge.usal.es/archivos/geogacetas/geo66/Geo66_24.pdf)


## Other references

Janoušek, V.; Farrow, C. M. & Erban, V. (2006). "Interpretation of
Whole-rock Geochemical Data in Igneous Geochemistry: Introducing
Geochemical Data Toolkit (GCDkit)".  *Journal of Petrology*, Oxford
University Press, 47, 1255&ndash;1259. DOI
[10.1093/petrology/egl013](https://doi.org/10.1093/petrology/egl013)

R Core Team (2021). *R: A language and environment for statistical
computing*. R Foundation for Statistical Computing, Vienna, Austria. URL
https://www.R-project.org/


## License

All the diagrams are released under the same license as GCDkit (i.e.
`GPL (>= 2)`).
