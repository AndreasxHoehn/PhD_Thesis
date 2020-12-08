#######################
#### R.CODE.GRAPHS ####
#######################


### LOAD LIBRARY ###
library(ggplot2)
library(HMDHFDplus)
library(tidyr)
library(dplyr)
library(xml2)
library(RColorBrewer)

### CREDENTIALS ###
UN <- "youraddress@yourdomain.net"
PW <- "yourpw"

### GET THE DATA ###
#getHMDcountries()
AUS <- as_data_frame(readHMDweb(CNTRY = "AUS", item = "E0per",username = UN, password = PW,fixup = TRUE))
AUT <- as_data_frame(readHMDweb(CNTRY = "AUT", item = "E0per",username = UN, password = PW,fixup = TRUE))
BEL <- as_data_frame(readHMDweb(CNTRY = "BEL", item = "E0per",username = UN, password = PW,fixup = TRUE))
BGR <- as_data_frame(readHMDweb(CNTRY = "BGR", item = "E0per",username = UN, password = PW,fixup = TRUE))
BLR <- as_data_frame(readHMDweb(CNTRY = "BLR", item = "E0per",username = UN, password = PW,fixup = TRUE))
CAN <- as_data_frame(readHMDweb(CNTRY = "CAN", item = "E0per",username = UN, password = PW,fixup = TRUE))
CHL <- as_data_frame(readHMDweb(CNTRY = "CHL", item = "E0per",username = UN, password = PW,fixup = TRUE))
CHE <- as_data_frame(readHMDweb(CNTRY = "CHE", item = "E0per",username = UN, password = PW,fixup = TRUE))
CZE <- as_data_frame(readHMDweb(CNTRY = "CZE", item = "E0per",username = UN, password = PW,fixup = TRUE))
DEUTNP <- as_data_frame(readHMDweb(CNTRY = "DEUTNP", item = "E0per",username = UN, password = PW,fixup = TRUE))
DEUTE <- as_data_frame(readHMDweb(CNTRY = "DEUTE", item = "E0per",username = UN, password = PW,fixup = TRUE))
DEUTW <- as_data_frame(readHMDweb(CNTRY = "DEUTW", item = "E0per",username = UN, password = PW,fixup = TRUE))
DNK <- as_data_frame(readHMDweb(CNTRY = "DNK", item = "E0per",username = UN, password = PW,fixup = TRUE))
ESP <- as_data_frame(readHMDweb(CNTRY = "ESP", item = "E0per",username = UN, password = PW,fixup = TRUE))
EST <- as_data_frame(readHMDweb(CNTRY = "EST", item = "E0per",username = UN, password = PW,fixup = TRUE))
FIN <- as_data_frame(readHMDweb(CNTRY = "FIN", item = "E0per",username = UN, password = PW,fixup = TRUE))
FRATNP <- as_data_frame(readHMDweb(CNTRY = "FRATNP", item = "E0per",username = UN, password = PW,fixup = TRUE))
FRACNP <- as_data_frame(readHMDweb(CNTRY = "FRACNP", item = "E0per",username = UN, password = PW,fixup = TRUE))
GRC <- as_data_frame(readHMDweb(CNTRY = "GRC", item = "E0per",username = UN, password = PW,fixup = TRUE))
HUN <- as_data_frame(readHMDweb(CNTRY = "HUN", item = "E0per",username = UN, password = PW,fixup = TRUE))
IRL <- as_data_frame(readHMDweb(CNTRY = "IRL", item = "E0per",username = UN, password = PW,fixup = TRUE))
ISL <- as_data_frame(readHMDweb(CNTRY = "ISL", item = "E0per",username = UN, password = PW,fixup = TRUE))
ISR <- as_data_frame(readHMDweb(CNTRY = "ISR", item = "E0per",username = UN, password = PW,fixup = TRUE))
ITA <- as_data_frame(readHMDweb(CNTRY = "ITA", item = "E0per",username = UN, password = PW,fixup = TRUE))
JPN <- as_data_frame(readHMDweb(CNTRY = "JPN", item = "E0per",username = UN, password = PW,fixup = TRUE))
LTU <- as_data_frame(readHMDweb(CNTRY = "LTU", item = "E0per",username = UN, password = PW,fixup = TRUE))
LUX <- as_data_frame(readHMDweb(CNTRY = "LUX", item = "E0per",username = UN, password = PW,fixup = TRUE))
LVA <- as_data_frame(readHMDweb(CNTRY = "LVA", item = "E0per",username = UN, password = PW,fixup = TRUE))
NLD <- as_data_frame(readHMDweb(CNTRY = "NLD", item = "E0per",username = UN, password = PW,fixup = TRUE))
NOR <- as_data_frame(readHMDweb(CNTRY = "NOR", item = "E0per",username = UN, password = PW,fixup = TRUE))
NZL_NP <- as_data_frame(readHMDweb(CNTRY = "NZL_NP", item = "E0per",username = UN, password = PW,fixup = TRUE))
NZL_MA <- as_data_frame(readHMDweb(CNTRY = "NZL_MA", item = "E0per",username = UN, password = PW,fixup = TRUE))
NZL_NM <- as_data_frame(readHMDweb(CNTRY = "NZL_NM", item = "E0per",username = UN, password = PW,fixup = TRUE))
POL <- as_data_frame(readHMDweb(CNTRY = "POL", item = "E0per",username = UN, password = PW,fixup = TRUE))
PRT <- as_data_frame(readHMDweb(CNTRY = "PRT", item = "E0per",username = UN, password = PW,fixup = TRUE))
RUS <- as_data_frame(readHMDweb(CNTRY = "RUS", item = "E0per",username = UN, password = PW,fixup = TRUE))
SVK <- as_data_frame(readHMDweb(CNTRY = "SVK", item = "E0per",username = UN, password = PW,fixup = TRUE))
SVN <- as_data_frame(readHMDweb(CNTRY = "SVN", item = "E0per",username = UN, password = PW,fixup = TRUE))
SWE <- as_data_frame(readHMDweb(CNTRY = "SWE", item = "E0per",username = UN, password = PW,fixup = TRUE))
TWN <- as_data_frame(readHMDweb(CNTRY = "TWN", item = "E0per",username = UN, password = PW,fixup = TRUE))
UKR <- as_data_frame(readHMDweb(CNTRY = "UKR", item = "E0per",username = UN, password = PW,fixup = TRUE))
GBR_NP <- as_data_frame(readHMDweb(CNTRY = "GBR_NP", item = "E0per",username = UN, password = PW,fixup = TRUE))
GBRTENW <- as_data_frame(readHMDweb(CNTRY = "GBRTENW", item = "E0per",username = UN, password = PW,fixup = TRUE))
GBRCENW <- as_data_frame(readHMDweb(CNTRY = "GBRCENW", item = "E0per",username = UN, password = PW,fixup = TRUE))
GBR_SCO <- as_data_frame(readHMDweb(CNTRY = "GBR_SCO", item = "E0per",username = UN, password = PW,fixup = TRUE))
GBR_NIR <- as_data_frame(readHMDweb(CNTRY = "GBR_NIR", item = "E0per",username = UN, password = PW,fixup = TRUE))
USA <- as_data_frame(readHMDweb(CNTRY = "USA", item = "E0per",username = UN, password = PW,fixup = TRUE))

### MAKE A BIG DATA ###
# APPEND DATA FRAMES #

DATA.BIG <- rbind( AUS,     AUT,     BEL,     BGR,     BLR,     CAN,     CHL,     CHE,     CZE,    
                   DEUTNP,  DEUTE,   DEUTW,   DNK,     ESP,     EST,     FIN,     FRATNP,  FRACNP, 
                   GRC,     HUN,     IRL,     ISL,     ISR,     ITA,     JPN,     LTU,     LUX,    
                   LVA,     NLD,     NOR,     NZL_NP,  NZL_MA,  NZL_NM,  POL,     PRT,     RUS,    
                   SVK,     SVN,     SWE,     TWN,     UKR,     GBR_NP,  GBRTENW, GBRCENW, GBR_SCO,
                   GBR_NIR, USA)    
  
# ADD CTR ABBREVATIONS #  
CTR          <-     c(rep("AUS",times=length(AUS$Year)),rep("AUT",times=length(AUT$Year)),
                      rep("BEL",times=length(BEL$Year)),rep("BGR",times=length(BGR$Year)),
                      rep("BLR",times=length(BLR$Year)),rep("CAN",times=length(CAN$Year)),
                      rep("CHL",times=length(CHL$Year)),rep("CHE",times=length(CHE$Year)),
                      rep("CZE",times=length(CZE$Year)),rep("DEUTNP",times=length(DEUTNP$Year)),
                      rep("DEUTE",times=length(DEUTE$Year)),rep("DEUTW",times=length(DEUTW$Year)),
                      rep("DNK",times=length(DNK$Year)),rep("ESP",times=length(ESP$Year)),
                      rep("EST",times=length(EST$Year)),rep("FIN",times=length(FIN$Year)),
                      rep("FRATNP",times=length(FRATNP$Year)),rep("FRACNP",times=length(FRACNP$Year)),
                      rep("GRC",times=length(GRC$Year)),rep("HUN",times=length(HUN$Year)),
                      rep("IRL",times=length(IRL$Year)),rep("ISL",times=length(ISL$Year)),
                      rep("ISR",times=length(ISR$Year)),rep("ITA",times=length(ITA$Year)),
                      rep("JPN",times=length(JPN$Year)),rep("LTU",times=length(LTU$Year)),
                      rep("LUX",times=length(LUX$Year)),rep("LVA",times=length(LVA$Year)),
                      rep("NLD",times=length(NLD$Year)),rep("NOR",times=length(NOR$Year)),
                      rep("NZL_NP",times=length(NZL_NP$Year)),rep("NZL_MA",times=length(NZL_MA$Year)),
                      rep("NZL_NM",times=length(NZL_NM$Year)),rep("POL",times=length(POL$Year)),
                      rep("PRT",times=length(PRT$Year)),rep("RUS",times=length(RUS$Year)),
                      rep("SVK",times=length(SVK$Year)),rep("SVN",times=length(SVN$Year)),
                      rep("SWE",times=length(SWE$Year)),rep("TWN",times=length(TWN$Year)),
                      rep("UKR",times=length(UKR$Year)),rep("GBR_NP",times=length(GBR_NP$Year)),
                      rep("GBRTENW",times=length(GBRTENW$Year)),rep("GBRCENW",times=length(GBRCENW$Year)),
                      rep("GBR_SCO",times=length(GBR_SCO$Year)),rep("GBR_NIR",times=length(GBR_NIR$Year)),
                      rep("USA",times=length(USA$Year)))

# CHECK IF LENGTH IS THE SAME #
length(CTR) == length(DATA.BIG$Year)
# ADD NAMES 
DATA.BIG$CTR <- CTR

# CALCULATING GAP #
DATA.BIG$GAP <- DATA.BIG$Female - DATA.BIG$Male

# CHECK THE OUTLIERS: TOO HIGH # 
DATA.CHECK.H <- subset(DATA.BIG, DATA.BIG$GAP>=15,select=c(CTR, Year,Female, Male, Total, GAP))
DATA.CHECK.H # WAR DRIVEN: UK, FRA, FIN, (ITA)

# CHECK THE OUTLIERS: TOO HIGH # 
DATA.CHECK.L <- subset(DATA.BIG, DATA.BIG$GAP< 0 & DATA.BIG$Year >= 1900 ,select=c(CTR, Year,Female, Male, Total, GAP))
DATA.CHECK.L # NEW ZEALAND MAORI POP

# REMOVE THE OUTLIERS WHICH ARE TOO HIGH # 
#DATA.BIG <- subset(DATA.BIG, DATA.BIG$GAP<=15 & (DATA.BIG$Year != 1914 | 
#                                                 DATA.BIG$Year != 1915 |
#                                                 DATA.BIG$Year != 1916 | 
#                                                 DATA.BIG$Year != 1917 | 
#                                                 DATA.BIG$Year != 1918 | 
#                                                 DATA.BIG$Year != 1939 |
#                                                 DATA.BIG$Year != 1940 |
#                                                 DATA.BIG$Year != 1941 |
#                                                 DATA.BIG$Year != 1942 |
#                                                 DATA.BIG$Year != 1943 |
#                                                 DATA.BIG$Year != 1944 |
#                                                 DATA.BIG$Year != 1945),
#                   select=c(Year,GAP))

COL.ALL <- colorRampPalette(brewer.pal(9,"Blues"))

str(DATA.BIG)
DATA.BIG$FACTOR <- 1
DATA.BIG$FACTOR[DATA.BIG$CTR=="DNK"] <- "dodgerblue3"
DATA.BIG$FACTOR <- as.factor(DATA.BIG$FACTOR)
DATA.BIG$ALPHA <- 0.1
DATA.BIG$ALPHA[DATA.BIG$CTR=="DNK"] <- 1
DATA.BIG$SIZE <- 4.0
DATA.BIG$SIZE[DATA.BIG$CTR=="DNK"] <- 5

PLOT.1 <- ggplot(DATA.BIG, aes(Year, GAP)) +
            geom_point(size=DATA.BIG$SIZE, alpha = DATA.BIG$ALPHA, colour=DATA.BIG$FACTOR) + 
            # WORK ON AXES #
            scale_x_continuous(name="Year",
                      limits=c(1800,2020),        
                      breaks=c(1800,1850,1900,1950,2000)) +
            scale_y_continuous(name="Women's Advantage in Life Expectancy",
                     limits=c(-2,15),
                     breaks=c(0,5,10,15,20,25)) + 
            # WORK ON THE THEME 1 # 
            theme_bw() + 
            # WORK ON THE THEME 2 # 
            theme(axis.text.x        = element_text(size=22),
            axis.text.y        = element_text(size=22),
            axis.title.x       = element_text(size=26),
            axis.title.y       = element_text(size=26)) + 
            geom_hline(yintercept=0) + 
            # annotate("text", x = 1995, y = 1, label = "Denmark", size = 12.5, color="deepskyblue2")
            annotate("text", x = 1831, y = 14.5, label = "Denmark", size = 15, color="dodgerblue3",fontface = "bold") + 
            annotate("text", x = 1850, y = 13.0, label = "HMD Countries", size = 15, color="grey50")

ggsave("U:/WORK/BACKUP/DISSERTATION/THESIS/THESIS/PLOT/INTRODUCTION/PLOT_INTRO.pdf",
       plot=PLOT.1, device="pdf", width=27.5, height=22.5, units="cm")
            

