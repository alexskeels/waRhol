#' Andy Warhol Colour Palettes
#'
#'A collection of colour palettes inspired by the landscape and wildlife of Australia. The list of available palettes is:
#' namatjira_qual, namatjira_div
#' mccrea
#' parliament
#' tasmania
#' nolan_ned
#' winmar
#' olsen_qual
#' williams_pilbara
#' healthy_reef, dead_reef
#' galah, lorikeet, jumping_frog
#' emu_woman_paired
#'
#'@examples
#'
#' # Make an x-y plot using the Namatjira palette
#' library(tidyverse)
#' df <- data.frame(x = rnorm(100, 0, 20),
#'           y = rnorm(100, 0, 20),
#'           cl = sample(letters[1:8], 100, replace=TRUE))
#' ggplot(df, aes(x, y, colour=cl, shape=cl)) +
#'   geom_point(size=4) + scale_colour_ochre() +
#'   theme_bw() + theme(aspect.ratio=1)
#'
#' # Make a histogram using the McCrea Collins Street palette
#' ggplot(df, aes(x, fill=cl)) + geom_histogram() +
#'   scale_fill_ochre(palette="mccrea")
#'
#' \dontrun{
#'   data(elev)
#'   library(elevatr)
#'   library(raster)
#'   library(ochRe)
#'   colpal <- ochre_pal()(150)
#'   ex <- extent(110, 155, -45, -10)
#'   elev <- raster::crop(elev, ex)
#'   elev[elev < 0] <- NA
#'   topo <- list(x = xFromCol(elev), y = rev(yFromRow(elev)),
#'                z = t(as.matrix(elev))[, nrow(elev):1])
#'                par(mar = rep(0, 4), bg = "#444444")
#'                image(topo, useRaster = TRUE, col = colpal,
#'                      axes = FALSE, xlab = "", ylab = "",
#'                            asp = cos(27.5 * pi/180))
#' }
#' @export
warhol_palettes <- list(
  ## Albert Namatjira: Twin Ghosts
  ## http://www.menziesartbrands.com/sites/default/files/field/catalogue_items//DM_24017.jpg
  skull_77 = c(
    "#02a1b2",
    "#7c6099",
    "#f0937c",
    "#c2c2c3",
    "#414141"
  ),

  skull_76_1 = c(
    "#cfe690",
    "#fec5a0",
    "#f2ab70",
    "#fcf813"
  ),

  skull_76_2 = c(
    "#47342b",
    "#dcb79f",
    "#0b575d",
    "#d12203"
  ),

  skull_86 = c(
    "#f84a28",
    "#ff9cb8",
    "#fbd83e",
    "#0fd2fe"
  ),
  marilyn_orange_62 = c(
    "#b22b37",
    "#e4862b",
    "#f0cc06",
    "#abc7d4",
    "#379da1",
    "#638cc2"
  ),
  marilyn_green_62 = c(
    "#3ebf9c",
    "#05beba",
    "#92c4dc",
    "#d8accb",
    "#f7ce06",
    "#c92724"
  ),
  marilyn_67 = c(
    "#ff436c",
    "#ff6087",
    "#f0b5ad",
    "#eaf27a"
  ),
  camo_87_1 = c(
    "#ffff14",
    "#fea31d",
    "#ce2d41",
    "#3a3fa3"
  ),
  camo_87_2 = c(
    "#bd1a1b",
    "#fd3797",
    "#fd98d4",
    "#ff7613"
  ),
  camo_87_3 = c(
    "#132f8a",
    "#5a56c8",
    "#fc7ead",
    "#ffca3e"
  ),
  camo_87_4 = c(
    "#ff6e1e",
    "#fe9f14",
    "#fce90f",
    "#bbf1fc"
  ),
  camo_87_5 = c(
    "#6f7434",
    "#d0a858",
    "#f9fcdf",
    "#bfcfe3"
  ),
  bighorn_ram_83 = c(
    "#56a63f",
    "#5369a6",
    "#032b74",
    "#e29b06",
    "#b87770"
  ),
  basquiat_85 = c(
    "#b5712e",
    "#ca0106",
    "#e6a541",
    "#7bafd9",
    "#f8968c",
    "#e1d7cf"
  )
  )


