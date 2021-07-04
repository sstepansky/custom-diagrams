IrvineBaragarFig6 <- function() {
    if (!any(grepl(".userlist", as.character(sys.calls())))) {
        ee <- Catanorm(WR)
        cols <- colnames(ee)
        nmins <- c("   An", "   Ab", "   Ne")
        if(all(nmins %in% cols)) {
            x.data <<- 100 * ee[, "   An"] / (ee[, "   An"] + ee[, "   Ab"] + 5 / 3 * ee[, "   Ne"])
        } else {
            x.data <<- 100 * ee[, "   An"] / (ee[, "   An"] + ee[, "   Ab"])
        }
        y.data <<- WRanh[, "Al2O3"]
    }

    temp1 <- list(
                  lines0 = list("lines", x=c(100, 40), y = c(20, 15.2), col = "black"),
                  lines1 = list("lines", x=c(40, 35), y = c(15.2,14.8), lty = "dashed", col = "black"),
                  GCDkit = list("NULL",
                                plot.type = "binary",
                                plot.position = 902,
                                plot.name = "Al2O3 versus normative plagioclase (Irvine + Baragar, 1971)"
                  )

    )
    temp2<-list(
                text1 = list("text", x = 40, y = 20, text = "Calc-alkaline", col = "black"),
                text1 = list("text", x = 80, y = 12, text = "Tholeiitic", col = "black")
    )
    if(getOption("gcd.plot.text")) {
        temp <- c(temp1, temp2)
    } else {
        temp <- temp1
    }

    sheet <<- list(
                   demo = list(fun = "plot",
                               call = list(xlim = c(100, 0),
                                           ylim = c(6, 26),
                                           main = expression("Al"[2]*"O"[3]*" vs normative plagioclase (Irvine & Baragar, 1971)"),
                                           xlab = "Normative plagioclase",
                                           ylab = annotate("Al2O3"),
                                           bg = "transparent",
                                           fg = "black",
                                           asp = NA,
                                           axes = TRUE),
                               template = temp))
}
