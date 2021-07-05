MacDonald1974 <- function() {

    x.data <<- WR[, "FeOt"]
    y.data <<- WR[, "Al2O3"]

    temp <- list(
                 clssf = list("NULL", use = 2:5, rcname = c("comendite",
                                                            "pantellerite",
                                                            "pantelleritic trachyte",
                                                            "comenditic trachyte")),
                 poly1 = list("lines", x = c(0, 6.57834, 0, 0), y = c(4.4, 13.21, 17.65, 4.4)),
                 poly2 = list("lines", x = c(0, 0, 11.5, 11.5, 6.57834, 0), y = c(4.4, 0, 0, 9.83, 13.21, 4.4)),
                 poly3 = list("lines", x = c(6.57834, 11.5, 11.5, 6.57843), y = c(13.21, 9.83, 19.695, 13.21)),
                 poly4 = list("lines", x = c(0, 0, 6.57834, 11.5, 11.5, 0), y = c(20, 17.65, 13.21, 19.695, 20, 20)),
                 lines1 = list("abline", a = 4.4, b = 1.33, col = "black", lwd = 1),
                 lines2 = list("abline", a = 17.65, b = -0.68, col = "black", lwd = 1),
                 GCDkit = list("NULL",
                               plot.type = "binary",
                               plot.position = 903,
                               plot.name = "Peralkaline Q-normative extrusive rocks (MacDonald, 1974)")
    )

    temp2 <- list(
                  text1 = list("text", x = 2.1, y = 12.2, text = "Comendite", col = plt.col[2]),
                  text2 = list("text", x = 6.8, y = 5.75, text = "Pantellerite", col = plt.col[2]),
                  text3 = list("text", x = 10.1, y = 14.3, text = "Pantelleritic\ntrachyte", col = plt.col[2]),
                  text4 = list("text", x = 5.5, y = 18, text = "Comenditic\ntrachyte", col = plt.col[2])
    )


    if (getOption("gcd.plot.text")) {
        temp <- c(temp, temp2)
    }

    sheet <<- list(
                   demo = list(
                               fun = "plot",
                               call = list(
                                           xlim = c(0, 11.5),
                                           ylim = c(0, 20),
                                           main = "Peralkaline Q-normative extrusive rocks (MacDonald, 1974)",
                                           col = "green",
                                           bg = "transparent",
                                           fg = "black",
                                           xlab = annotate("FeO"),
                                           ylab = annotate("Al2O3")),
                               template = temp))
}
