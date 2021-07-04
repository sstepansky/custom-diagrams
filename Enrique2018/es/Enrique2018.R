Enrique2018 <- function() {
    if (!any(grepl(".userlist", as.character(sys.calls())))) {
        if (!diagram.testing) {
            # hack to avoid setWinProgressBar on line 368 of CIPW.r
            # and close(pb) on line 395
            op <- options()
            options("gcd.menus" = "", "gcd.shut.up" = FALSE)
            invisible(capture.output(ee <- CIPW(WR)))
            options(op)

            aa <- ee[, "Or"] + ee[, "Ab"]
            bb <- 2 * ee[, "Q"]
            cc <- 4 * ee[, "An"]
            suma <- aa + bb + cc
            aa <- aa / suma
            bb <- bb / suma
            cc <- cc / suma
            x.data <<- cc + bb / 2
            y.data <<- sqrt(3) * bb / 2
        }
    }

    temp1 <- list(
                  clssf = list("NULL",
                               use = 2:24,
                               rcname = c("cuarzolita",
                                          "granitoide rico en cuarzo",
                                          "granito de feldespato alcalino",
                                          "sienogranito + monzogranito sub-anortítico",
                                          "monzogranito",
                                          "granodiorita",
                                          "tonalita",
                                          "tonalgabro",
                                          "tonaleucrita",
                                          "cuarzosienita de feldespato alcalino",
                                          "cuarzosienita",
                                          "cuarzomonzonita",
                                          "cuarzomonzodiorita",
                                          "cuarzodiorita",
                                          "cuarzogabro",
                                          "cuarzoeucrita",
                                          "sienita de feldespato alcalino",
                                          "sienita",
                                          "monzonita",
                                          "monzodiorita",
                                          "diorita",
                                          "gabroides",
                                          "eucritoides")),

                  poly1 = list("lines", x = c(0.45, 0.5, 0.55, 0.45), y = c(sqrt(3)*0.9/2, sqrt(3)/2, sqrt(3)*0.9/2, sqrt(3)*0.9/2)),
                  poly2 = list("lines", x = c(0.45, 0.55, 0.7, 0.3, 0.45), y = c(sqrt(3)*0.9/2, sqrt(3)*0.9/2, sqrt(3)*0.6/2, sqrt(3)*0.6/2, sqrt(3)*0.9/2)),
                  poly3 = list("lines", x = c(0.3, 0.34, 0.18, 0.1, 0.3), y = c(sqrt(3)*0.6/2, sqrt(3)*0.6/2, sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.6/2)),
                  poly4 = list("lines", x = c(0.34, 0.42, 0.34, 0.18, 0.34), y = c(sqrt(3)*0.6/2, sqrt(3)*0.6/2, sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.6/2)),
                  poly5 = list("lines", x = c(0.42, 0.5, 0.5, 0.34, 0.42), y = c(sqrt(3)*0.6/2, sqrt(3)*0.6/2, sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.6/2)),
                  poly6 = list("lines", x = c(0.5, 0.56, 0.62, 0.5, 0.5), y = c(sqrt(3)*0.6/2, sqrt(3)*0.6/2, sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.6/2)),
                  poly7 = list("lines", x = c(0.56, 0.62, 0.74, 0.62, 0.56), y = c(sqrt(3)*0.6/2, sqrt(3)*0.6/2, sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.6/2)),
                  poly8 = list("lines", x = c(0.62, 0.66, 0.82, 0.74, 0.62), y = c(sqrt(3)*0.6/2, sqrt(3)*0.6/2, sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.6/2)),
                  poly9 = list("lines", x = c(0.66, 0.7, 0.9, 0.82, 0.66), y = c(sqrt(3)*0.6/2, sqrt(3)*0.6/2, sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.6/2)),
                  poly10 = list("lines", x = c(0.1, 0.18, 0.12, 0.025, 0.1), y = c(sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.05/2, sqrt(3)*0.05/2, sqrt(3)*0.2/2)),
                  poly11 = list("lines", x = c(0.18, 0.34, 0.31, 0.12, 0.18), y = c(sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.05/2, sqrt(3)*0.05/2, sqrt(3)*0.2/2)),
                  poly12 = list("lines", x = c(0.34, 0.5, 0.5, 0.31, 0.34), y = c(sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.05/2, sqrt(3)*0.05/2, sqrt(3)*0.2/2)),
                  poly13 = list("lines", x = c(0.5, 0.62, 0.6425, 0.5, 0.5), y = c(sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.05/2, sqrt(3)*0.05/2, sqrt(3)*0.2/2)),
                  poly14 = list("lines", x = c(0.62, 0.74, 0.785, 0.6425, 0.62), y = c(sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.05/2, sqrt(3)*0.05/2, sqrt(3)*0.2/2)),
                  poly15 = list("lines", x = c(0.74, 0.82, 0.88, 0.785, 0.74), y = c(sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.05/2, sqrt(3)*0.05/2, sqrt(3)*0.2/2)),
                  poly16 = list("lines", x = c(0.82, 0.9, 0.975, 0.88, 0.82), y = c(sqrt(3)*0.2/2, sqrt(3)*0.2/2, sqrt(3)*0.05/2, sqrt(3)*0.05/2, sqrt(3)*0.2/2)),
                  poly17 = list("lines", x = c(0.025, 0.12, 0.1, 0, 0.025), y = c(sqrt(3)*0.05/2, sqrt(3)*0.05/2, 0, 0, sqrt(3)*0.05/2)),
                  poly18 = list("lines", x = c(0.12, 0.31, 0.3, 0.1, 0.12), y = c(sqrt(3)*0.05/2, sqrt(3)*0.05/2, 0, 0, sqrt(3)*0.05/2)),
                  poly19 = list("lines", x = c(0.31, 0.5, 0.5, 0.3, 0.31), y = c(sqrt(3)*0.05/2, sqrt(3)*0.05/2, 0, 0,sqrt(3)*0.05/2)),
                  poly20 = list("lines", x = c(0.5, 0.6425, 0.65, 0.5, 0.5), y = c(sqrt(3)*0.05/2, sqrt(3)*0.05/2, 0, 0, sqrt(3)*0.05/2)),
                  poly21 = list("lines", x = c(0.6425, 0.785, 0.8, 0.65, 0.6425), y = c(sqrt(3)*0.05/2, sqrt(3)*0.05/2, 0, 0,sqrt(3)*0.05/2)),
                  poly22 = list("lines", x = c(0.785, 0.88, 0.9, 0.8, 0.785), y = c(sqrt(3)*0.05/2, sqrt(3)*0.05/2, 0, 0, sqrt(3)*0.05/2)),
                  poly23 = list("lines", x = c(0.88, 0.975, 1, 0.9, 0.88), y = c(sqrt(3)*0.05/2, sqrt(3)*0.05/2, 0, 0, sqrt(3)*0.05/2)),

                  lines0 = list("lines", x = c(0, 1, 0.5, 0), y = c(0, 0, sqrt(3)/2, 0), col = "black"),
                  lines1 = list("lines", x = c(0.025, 0.975), y = c(sqrt(3)*0.05/2, sqrt(3)*0.05/2), col = "black"),
                  lines2 = list("lines", x = c(0.1, 0.9), y = c(sqrt(3)*0.2/2, sqrt(3)*0.2/2), col = "black"),
                  lines3 = list("lines", x = c(0.3, 0.7), y = c(sqrt(3)*0.6/2, sqrt(3)*0.6/2), col = "black"),
                  lines4 = list("lines", x = c(0.45, 0.55), y = c(sqrt(3)*0.9/2, sqrt(3)*0.9/2), col = "black"),
                  lines5 = list("lines", x = c(0.34, 0.1), y = c(sqrt(3)*0.6/2, 0), col = "black"),
                  lines6 = list("lines", x = c(0.42, 0.3), y = c(sqrt(3)*0.6/2, 0), col = "black"),
                  lines7 = list("lines", x = c(0.5, 0.5), y = c(sqrt(3)*0.6/2, 0), col = "black"),
                  lines8 = list("lines", x = c(0.56, 0.65), y = c(sqrt(3)*0.6/2, 0), col = "black"),
                  lines9 = list("lines", x = c(0.62, 0.8), y = c(sqrt(3)*0.6/2, 0), col = "black"),
                  lines10 = list("lines", x = c(0.66, 0.9), y = c(sqrt(3)*0.6/2, 0), col = "black"),

                  A = list("text", x = 0, y = -0.03, text = "(or+ab)", adj = 0.5),
                  C = list("text", x = 1, y = -0.03, text = "4an", adj = 0.5),
                  B = list("text", x = 0.5, y = sqrt(3)/2+.03, text = "2Q", adj = 0.5),
                  GCDkit = list("NULL",
                                plot.type = "ternary",
                                plot.position = 901,
                                plot.name = "2Q-(or+ab)-4an diagram (Enrique, 2018)")
    )
    temp2 <- list(
                  text4 = list("text", x = 0.5, y = 0.55, text = "", col = plt.col[2]),
                  text5 = list("text", x = 0.5, y = 0.1, text = "", col = plt.col[2])
    )

    if(getOption("gcd.plot.text")) {
        temp <- c(temp1, temp2)
    } else {
        temp <- temp1
    }

    sheet <<- list(
                   demo = list(fun = "plot",
                               call = list(xlim = c(-.03, 1.03),
                                           ylim = c(-0.05, 1.03),
                                           main = "2Q-(or+ab)-4an diagram (Enrique, 2018)",
                                           xlab = "",
                                           ylab = "",
                                           bg = "transparent",
                                           fg = "black",
                                           asp = 1,
                                           axes = FALSE),
                               template = temp))
}
