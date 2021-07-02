EnriqueEstevePlut <- function() {
  x.data <<- 100*(WR[, "CaO"] / (WR[, "CaO"] + WR[, "K2O"]))
  y.data <<- WR[, "SiO2"]
  
  temp1 <- list(
          linesD = list("lines", x = c(0, 100), y = c(64.8, 44.4), col = plt.col[2], lwd = 2),
          linesC = list("lines", x = c(0, 100), y = c(67.8, 48.2), col = plt.col[2]),
          linesB = list("lines", x = c(0, 100), y = c(74.9, 55.3), col = plt.col[2]),
          linesA = list("lines", x = c(20, 100), y = c(80, 64.3), col = plt.col[2]),
          linesE = list("lines", x = c(0, 100), y = c(58.5, 38.4), col = plt.col[2]),
          linesF = list("lines", x = c(3.4, 35.8), y = c(80, 56.1), col = plt.col[2]),
          linesH = list("lines", x = c(12.1, 45.8), y = c(80, 55.3), col = plt.col[2]),
          linesI = list("lines", x = c(26.8, 62.5), y = c(78.7, 52.2), col = plt.col[2]),
          linesK = list("lines", x = c(47.3, 83.1), y = c(74.6, 47.9), col = plt.col[2]),
          linesG = list("lines", x = c(35.8, 27.2), y = c(56.1, 50.1), col = plt.col[2]),
          linesJ = list("lines", x = c(62.5, 53.4), y = c(52.2, 45.5), col = plt.col[2]),
          linesL = list("lines", x = c(83.0, 74.3), y = c(47.9, 41.4), col = plt.col[2]),
          GCDkit = list("NULL",                                    
              plot.type = "binary",
              plot.position = 900.0,
              plot.name = "Plutonic SiO2-CaO/(CaO+K2O) plot (Enrique + Esteve, 2019)"
              )
         )
  
  temp2 <- list(
      text1 = list("text", x = 3.85, y = 76.17, text = "Alkali\nfeldspar\ngranite", col = plt.col[2], adj = 0.5, srt = -56, cex = 0.5),
      text2 = list("text", x = 13.75, y = 75.47, text = "Syenogranite", col = plt.col[2], adj = 0.5, srt = -56, cex = 0.7),
      text3 = list("text", x = 26.84, y = 73.76, text = "Monzogranite", col = plt.col[2], adj = 0.5, srt = -56, cex = 0.7),
      text4 = list("text", x = 45.89, y = 70.05, text = "Granodiorite", col = plt.col[2], adj = 0.5, srt = -56, cex = 0.7),
      text5 = list("text", x = 68.71, y = 65.73, text = "Tonalite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text6 = list("text", x = 8.70,  y = 69.54, text = "Quartz\nalkali feldspar\nsyenite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text7 = list("text", x = 27.00, y = 66.13, text = "Quartz syenite", col = plt.col[2], adj = 0.5, srt = -56, cex = 0.7),
      text8 = list("text", x = 41.65, y = 63.34, text = "Quartz\nmonzonite", col = plt.col[2], adj = 0.5, srt = -56, cex = 0.7),
      text9 = list("text", x = 59.58, y = 59.85, text = "Quartz\nmonzodiorite", col = plt.col[2], adj = 0.5, srt = -56, cex = 0.7),
      text10 = list("text", x = 85.85, y = 54.88, text = "Quartz diorite (An<50)\nQuartz gabbro (An>50)", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text11 = list("text", x = 13.35, y = 63.62, text = "Alkali feldspar syenite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text12 = list("text", x = 36.37, y = 59.09, text = "Syenite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text13 = list("text", x = 50.65, y = 56.28, text = "Monzonite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text14 = list("text", x = 68.71, y = 52.66, text = "Monzodiorite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text15 = list("text", x = 91.55, y = 48.25, text = "Diorite (An<50)\nGabbro (An>50)", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text16 = list("text", x = 13.95, y = 58.39, text = "Foid syenite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text17 = list("text", x = 45.89, y = 52.16, text = "Foid monzosyenite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text18 = list("text", x = 68.71, y = 47.44, text = "Foid monzodiorite", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text19 = list("text", x = 88.55, y = 43.52, text = "Olivine and/or\nfoid\ndiorite/gabbro", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text20 = list("text", x = 46.88, y = 43.62, text = "Foidolites", col = plt.col[2], adj = 0.5, srt = -21, cex = 0.7),
      text21 = list("text", x = 95, y = 76, text = "QUARTZ-RICH\nGRANITOIDS", col = plt.col[2], adj = 1),
      text22 = list("text", x = 5, y = 40, text = "SUBSATURATED\nROCKS", col = plt.col[2], adj = 0)
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
