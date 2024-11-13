setwd("C:/Users/jvive/Desktop/B.C/Proyecto")

library(Biostrings)
library(phangorn)

H1N1 <- readAAMultipleAlignment("C:/Users/jvive/Desktop/B.C/Proyecto/secuenciasH1N1.aln")
H1N1_phy_dat <- as.phyDat(H1N1)
H1N1_dist <- dist.ml(H1N1_phy_dat,model="JC69")
H1N1_NJ <- NJ(H1N1_dist)
plot(H1N1_NJ,main="SEROTIPO H1N1")

H3N2 <- readAAMultipleAlignment("C:/Users/jvive/Desktop/B.C/Proyecto/secuenciasH3N2.aln")
H3N2_phy_dat <- as.phyDat(H3N2)
H3N2_dist <- dist.ml(H3N2_phy_dat,model="JC69")
H3N2_NJ <- NJ(H3N2_dist)
plot(H3N2_NJ,main="SEROTIPO H3N2")

Aves <- readAAMultipleAlignment("C:/Users/jvive/Desktop/B.C/Proyecto/secuenciasaves.aln")
Aves_phy_dat <- as.phyDat(Aves)
Aves_dist <- dist.ml(Aves_phy_dat,model="JC69")
Aves_NJ <- NJ(Aves_dist)
plot(Aves_NJ,main="SEROTIPO DE AVES")

All <- readAAMultipleAlignment("C:/Users/jvive/Desktop/B.C/Proyecto/secuenciastodas.aln")
All_phy_dat <- as.phyDat(All)
All_dist <- dist.ml(All_phy_dat,model="JC69")
All_NJ <- NJ(All_dist)
plot(All_NJ,main="TODOS LOS SEROTIPOS")