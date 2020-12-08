#######################
#### R.CODE.GRAPHS ####
#######################

### LOAD LIBRARY ###
library(ggplot2)
library(HMDHFDplus)
library(tidyr)
library(dplyr)


CPR  <- data_frame(YEAR     =     seq(1968,2014,1),
                  COVERAGE  =     rep(1,times=length(seq(1968,2014,1))),
                  FACET     =     1.)

NPR  <- data_frame(YEAR     =     seq(1977,2014,1),
                  COVERAGE  =     rep(2,times=length(seq(1977,2014,1))),
                  FACET     =     2)

NHSR <- data_frame(YEAR     =     seq(1990,2014,1),
                  COVERAGE  =     rep(3,times=length(seq(1990,2014,1))),
                  FACET     =     3)

DATA.PLOT <- rbind (CPR,NPR,NHSR)
DATA.PLOT$FACET <- as.factor(DATA.PLOT$FACET)
str(DATA.PLOT)

### PLOT COMMAND GO 1 ###
PLOT <-ggplot(DATA.PLOT, aes(x = YEAR, y = COVERAGE, colour = FACET)) + 
            # ADD LINES # 
            geom_segment(aes(x = 1968 , y = 0.5, yend = 1.2,  xend = 1968), colour="black", size=0.5) +
            geom_segment(aes(x = 1977 , y = 0.5, yend = 2.2,  xend = 1977), colour="black", size=0.5) +
            geom_segment(aes(x = 1990 , y = 0.5, yend = 3.2,  xend = 1990), colour="black", size=0.5) +
            geom_segment(aes(x = 2011 , y = 0.5, yend = 3.25, xend = 2011), colour="black", size=0.5, linetype="dashed") +
            geom_segment(aes(x = 2014 , y = 0.5, yend = 3.45, xend = 2014), colour="black", size=0.5, linetype="dashed") +
            # ADD TEXT 
            #geom_text(x=2005.5, y=3.35, label="2011: 5% Sample", size=7, color="black",  fontface ="plain") +
            #geom_text(x=2006.9, y=3.55, label="2014: Total Population", size=7, color="black", fontface ="plain") +
            # ADD VALUES
            geom_line(size=22.0) +
            scale_colour_manual(values=c("#1b9e77", "#d95f02", "#7570b3","#e7298a")) +
            # WORK ON AXES #
            scale_x_continuous(name="",
                   limits=c(1968,2018),        
                   breaks=c(1968,1977,1990,2014)) +
            scale_y_continuous(name="",
                     limits=c(0.5,3.5),
                     breaks=c(1,2,3),
                     labels=c("Central Population \n Register (CPR)",
                              "National Patient \n Register (NPR)",
                              "National Health \n Service Register \n (NHSR)")) +
          # WORK ON THE THEME 1 # 
          theme_bw() + 
          # WORK ON THE THEME 2 # 
          theme(axis.text.x        = element_text(size=22),
                axis.text.y        = element_text(size=22),
                axis.title.x       = element_text(size=26),
                axis.title.y       = element_text(size=26),
                panel.grid.major   = element_blank(), 
                panel.grid.minor   = element_blank(),
                panel.border       = element_blank(),
                panel.background   = element_blank(),
                axis.ticks = element_blank()) + 
          # LEGEND # 
          guides(colour=FALSE)
### SAVE PLOT ###
ggsave("C:/Users/hoehn/Desktop/THESIS PLOTS/DATA/PLOT_DATA1.pdf",
       plot=PLOT, device="pdf", width=35, height=20, units="cm")

