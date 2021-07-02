EnriqueEsteveVolc <- function() {
  x.data <<- 100*(WR[, "CaO"] / (WR[, "CaO"] + WR[, "K2O"]))
  y.data <<- WR[, "SiO2"]
  
  temp1 <- list(
          linesD = list("lines", x = c(0, 100), y = c(64.8, 44.4), col = plt.col[2], lwd = 2),
#          linesC = list("lines", x = c(0, 56.7), y = c(67.8, 56.1), col = plt.col[2]),
          linesC = list("lines", x = c(0, 57.2), y = c(67.8, 56.1), col = plt.col[2]),
          linesB = list("lines", x = c(0, 100), y = c(74.9, 55.3), col = plt.col[2]),
          linesA = list("lines", x = c(20, 100), y = c(80, 64.3), col = plt.col[2]),
          linesE = list("lines", x = c(0, 100), y = c(58.5, 38.4), col = plt.col[2]),
          linesF = list("lines", x = c(3.4, 35.8), y = c(80, 56.1), col = plt.col[2]),
          linesHa = list("lines", x = c(12.1, 26.05), y = c(80, 69.74), col = plt.col[2], lty = 2),
          linesH = list("lines", x = c(26.05, 45.8), y = c(69.74, 55.3), col = plt.col[2]),
          linesI = list("lines", x = c(26.8, 62.5), y = c(78.7, 52.2), col = plt.col[2]),
          linesK = list("lines", x = c(47.3, 63.75), y = c(74.6, 62.4), col = plt.col[2], lty = 2),
          linesG = list("lines", x = c(35.8, 27.2), y = c(56.1, 50.1), col = plt.col[2]),
          linesJ = list("lines", x = c(62.5, 53.4), y = c(52.2, 45.5), col = plt.col[2]),
          linesL = list("lines", x = c(83.0, 74.3), y = c(47.9, 41.4), col = plt.col[2]),
          GCDkit = list("NULL",                                    
              plot.type = "binary",
              plot.position = 901,
              plot.name = "Volcanic SiO2-CaO/(CaO+K2O) plot (Enrique + Esteve, 2019)"
              )
         )
  
  temp2 <- list(
      text1 = list("text", x = 3.85, y = 76.17, text = "Alkali\nfeldspar\nryolite", col = plt.col[2], adj = 0.5, srt = -56, cex = 0.5),
      text2 = list("text", x = 20.89, y = 74.87, text = "Rhyolite", col = plt.col[2], adj = 0.5, cex = 0.9),
      text3 = list("text", x = 56.21, y = 68.04, text = "Dacite", col = plt.col[2], adj = 0.5, cex = 0.9),
      text4 = list("text", x = 8.70,  y = 69.54, text = "Quartz\nalkali feldspar\nrhyolite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text5 = list("text", x = 27.00, y = 66.13, text = "Quartz trachyte", col = plt.col[2], adj = 0.5, srt = -56, cex = 0.7),
      text6 = list("text", x = 41.65, y = 63.34, text = "Quartz latite", col = plt.col[2], adj = 0.5, srt = -56, cex = 0.7),
      text7 = list("text", x = 74.06, y = 54.98, text = "Andesite\nBasalt", col = plt.col[2], adj = 0.5, cex = 0.9),
      text8 = list("text", x = 13.35, y = 63.62, text = "Alkali feldspar trachyte", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text9 = list("text", x = 36.37, y = 59.09, text = "Trachyte", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text10 = list("text", x = 50.65, y = 56.28, text = "Latite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text11 = list("text", x = 13.95, y = 58.39, text = "Phonolite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text12 = list("text", x = 45.89, y = 52.16, text = "Tephritic phonolite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text13 = list("text", x = 68.71, y = 47.64, text = "Phonolitic\ntephrite (<10% Ol)\nbasanite (>10% Ol)", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text14 = list("text", x = 89.05, y = 43.55, text = "Olivine or\nfoid basalt\nTephrite (<10% Ol)\nBasanite (>10% Ol)", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text15 = list("text", x = 46.88, y = 43.62, text = "Foidites", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text16 = list("text", x = 5, y = 40, text = "SUBSATURATED\nROCKS", col = plt.col[2], adj = 0)
      )
  
  if (getOption("gcd.plot.text")) {
      temp <- c(temp1, temp2)
      } else {
      temp <- temp1
  }
  
  sheet <<- list(
                 demo = list(
                 fun = "plot",
                 call = list(
                   xlim = c(0, 100),
                   ylim = c(35, 80),
                   main = expression("SiO"[2]*"-CaO/(CaO+K"[2]*"O) plot (Enrique & Esteve, 2019)"),
                   col = "green",
                   bg = "transparent",
                   fg = "black",
                   xlab = annotate("CaO/(CaO+K2O)"),
                   ylab = annotate("SiO2"),
                   main = ""),
                 template = temp)
           )
}
