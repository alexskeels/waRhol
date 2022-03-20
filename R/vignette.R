pal_names <- names(warhol_palettes)

par(mfrow=c(length(warhol_palettes)/2, 2), lheight = 2, mar=rep(1, 4), adj = 0)
for (i in 1:length(warhol_palettes)){
  viz_palette(warhol_palettes[[i]], pal_names[i])
}

library(ggplot2)
ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
  scale_fill_warhol(palette="bighorn_ram_83")


## basic example code
pal <- colorRampPalette(warhol_palettes[["skull_76_2"]])
image(volcano, col = pal(20))
