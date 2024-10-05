YoderTilley1962 <- function() {
    if (!any(grepl(".userlist", as.character(sys.calls())))) {
        m.Fo <- 2 * molecularWeight("MgO") + molecularWeight("SiO2")
        m.Fa <- 2 * molecularWeight("FeO") + molecularWeight("SiO2")
        m.An <- 2 * molecularWeight("SiO2") + molecularWeight("CaO") + molecularWeight("Al2O3")
        m.Ab <- 6 * molecularWeight("SiO2") + molecularWeight("Na2O") + molecularWeight("Al2O3")
        m.Ne <- 2 * molecularWeight("SiO2") + molecularWeight("Na2O") + molecularWeight("Al2O3")
        m.En <- molecularWeight("MgO") + molecularWeight("SiO2")
        m.Fs <- molecularWeight("FeO") + molecularWeight("SiO2")
        m.Q <- molecularWeight("SiO2")

        # hack to avoid setWinProgressBar on line 368 of CIPW.r
        # and close(pb) on line 395
        op <- options()
        options("gcd.menus" = "", "gcd.shut.up" = FALSE)
        invisible(capture.output(ee <- CIPW(WR, complete.results = TRUE)))
        options(op)

        A <- (ee[, "Ne"] / m.Ne) + (ee[, "An"] / m.An)  + (ee[, "Ab"] / m.Ab)
        B <- (ee[, "Q"] / m.Q) + (ee[, "An"] / m.An) + (ee[, "Ab"] / m.Ab)  + (ee[, "En"] / m.En) + (ee[, "Fs"] / m.Fs)
        C <- (ee[, "Fo"] / m.Fo) + (ee[, "Fa"] / m.Fa) + (ee[, "En"] / m.En)  + (ee[, "Fs"] / m.Fs)

        suma <- A + B + C
        A <- A / suma
        B <- B / suma
        C <- C / suma
        x.data <<- C + B / 2
        y.data <<- sqrt(3) * B / 2
    }

    temp <- list(
                 A = list("text", x = 0, y = -0.03, text = "Ne", adj = 0.5),
                 C = list("text", x = 1, y = -0.03, text = "Ol", adj = 0.5),
                 B = list("text", x = 0.5, y = sqrt(3)/2 + .03, text = "Q", adj = 0.5),
                 Pl = list("text", x = 0.25 - 0.03, y = sqrt(3)/4, text = "Pl", adj = 1),
                 Hy = list("text", x = 0.75 + 0.03, y = sqrt(3)/4, text = "Hy", adj = 0),

                 lines0 = list("lines", x = c(0, 1, 0.5, 0), y = c(0, 0, sqrt(3)/2, 0), col = "black", lwd = 1.5),
                 lines1 = list("lines", x = c(0.25, 0.75), y = rep(sqrt(3)/4, 2), col = "black"),
                 lines2 = list("lines", x = c(0.25, 1), y = c(sqrt(3)/4, 0), col = "black"),

                 GCDkit = list("NULL",
                               plot.type="ternary",
                               plot.position=904,
                               plot.name="Basalt tetrahedron's Q-Ne-Ol plane (Yoder + Tilley, 1962)")
    )

    sheet <<- list(
                   demo = list(
                               fun = "plot",
                               call = list(
                                           xlim = c(-.03, 1.03),
                                           ylim = c(-0.05, 1.03),
                                           main = "Basalt tetrahedron's Q-Ne-Ol plane (Yoder & Tilley, 1962)",
                                           xlab = "",
                                           ylab = "",
                                           bg = "transparent",
                                           fg = "black",
                                           asp = 1,
                                           axes = FALSE),
                               template = temp))

}
