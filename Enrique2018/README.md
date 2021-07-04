## NOTES

1. The two folders correspond to the original Spanish version and an
   English translated version.

2. Under normal circumstances, the user-defined plots cannot be used to
   classify rocks (e.g. through the menu item *Data handling >
   Classify...*) (see `Diagrams/User/@README.txt`). In order to use this
   functionality without hacking the original GCDkit code, you must
   place a copy of the file inside the appropriate folder (e.g.
   `Diagrams/Classification/English/` or
   `Diagrams/Classification/Spanish/`). Note that by doing so, it will
   also be listed in the menu *Plots > Classification...*.

3. The fields of this diagram are left blank to avoid clutter. See the
   [original
   paper](https://sge.usal.es/archivos/geogacetas/geo63/geo63_24.pdf)
   for reference.

4. The function calculates the ratio FeO/Fe<sub>2</sub>O<sub>3</sub>
   according to the formula of [Le Maitre
   (1976)](https://doi.org/10.1007/BF00399603) for plutonic rocks. If
   you wish to skip this recalculation and use your original FeO and
   Fe<sub>2</sub>O<sub>3</sub>, set the argument `calc.Fe` to `FALSE`
   (i.e. execute `plotDiagram("Enrique2018", calc.Fe = FALSE)` instead
   of using the menus).
