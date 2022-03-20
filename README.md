
<!-- README.md is generated from README.Rmd. Please edit that file -->

# waRhol

<!-- badges: start -->
<!-- badges: end -->

waRhol is an R package containing colour palettes inspired by the
paintings of Andy Warhol. It can be directly integrated with ggplot and
base R plotting.

## Installation

You can install the development version of waRhol from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("alexskeels/waRhol")
```

## Palettes

Here are the palettes:

``` r
library(waRhol)
library(ggplot2)

pal_names <- names(warhol_palettes)

par(mfrow=c(length(warhol_palettes)/2, 2), lheight = 2, mar=rep(1, 4), adj = 0)
for (i in 1:length(warhol_palettes)){
  viz_palette(warhol_palettes[[i]], pal_names[i])
}
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

## inspiration

![skull_76_1](files/Warhol_Skull_1976.jpg)

``` r
viz_palette(warhol_palettes[["skull_76_1"]])
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

![skull_76_2](files/Warhol_Skull.PNG)

``` r
viz_palette(warhol_palettes[["skull_76_2"]])
```

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />

![skull_77](files/Warhol_Skull_1977.jpg)

``` r
viz_palette(warhol_palettes[["skull_77"]])
```

<img src="man/figures/README-unnamed-chunk-6-1.png" width="100%" />

![skull_86](files/Warhol_Skull_1986.PNG)

``` r
viz_palette(warhol_palettes[["skull_86"]])
```

<img src="man/figures/README-unnamed-chunk-7-1.png" width="100%" />

![marilyn_orange_62](files/Warhol_Marilyn_Orange_1962.PNG)

``` r
viz_palette(warhol_palettes[["marilyn_orange_62"]])
```

<img src="man/figures/README-unnamed-chunk-8-1.png" width="100%" />

![marilyn_green_62](files/Warhol_Marilyn_Green_1962.PNG)

``` r
viz_palette(warhol_palettes[["marilyn_green_62"]])
```

<img src="man/figures/README-unnamed-chunk-9-1.png" width="100%" />

![marilyn_67](files/Warhol_Marilyn_1967.jpg)

``` r
viz_palette(warhol_palettes[["marilyn_67"]])
```

<img src="man/figures/README-unnamed-chunk-10-1.png" width="100%" />

![camo_87](files/Warhol_Camoflague_1987.jpg)

``` r
viz_palette(warhol_palettes[["camo_87_1"]])
```

<img src="man/figures/README-unnamed-chunk-11-1.png" width="100%" />

``` r
viz_palette(warhol_palettes[["camo_87_2"]])
```

<img src="man/figures/README-unnamed-chunk-11-2.png" width="100%" />

``` r
viz_palette(warhol_palettes[["camo_87_3"]])
```

<img src="man/figures/README-unnamed-chunk-11-3.png" width="100%" />

``` r
viz_palette(warhol_palettes[["camo_87_4"]])
```

<img src="man/figures/README-unnamed-chunk-11-4.png" width="100%" />

``` r
viz_palette(warhol_palettes[["camo_87_5"]])
```

<img src="man/figures/README-unnamed-chunk-11-5.png" width="100%" />

![bighorn_ram_83](files/Warhol_BighornRam_1983.PNG)

``` r
viz_palette(warhol_palettes[["bighorn_ram_83"]])
```

<img src="man/figures/README-unnamed-chunk-12-1.png" width="100%" />

![basquiat_85](files/Warhol_Basquiat_1985.jpg)

``` r
viz_palette(warhol_palettes[["basquiat_85"]])
```

<img src="man/figures/README-unnamed-chunk-13-1.png" width="100%" />

## Useage examples

Example of a discrete palette in ggplot

``` r
ggplot(diamonds) + 
  geom_bar(aes(x = cut, fill = clarity)) +
  theme_light()+
  scale_fill_warhol(palette="bighorn_ram_83")
```

<img src="man/figures/README-unnamed-chunk-14-1.png" width="100%" />

Example of a continuous palette in base R

``` r
par(mfrow=c(1,1))
pal <- colorRampPalette(warhol_palettes[["skull_76_2"]])
image(volcano, col = pal(20))
```

<img src="man/figures/README-unnamed-chunk-15-1.png" width="100%" />
