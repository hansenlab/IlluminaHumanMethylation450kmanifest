library(minfi)

## manifest.11 <- "~/Work/cegs/450k/data_files/HumanMethylation450_15017482_v.1.1.csv"
## stopifnot(file.exists(manifest.11))
## maniTmp.11 <- minfi:::read.manifest(manifest.11, returnAll = TRUE)

manifest.12 <- "~/Work/cegs/450k/data_files/HumanMethylation450_15017482_v.1.2.csv"
stopifnot(file.exists(manifest.12))
maniTmp.12 <- minfi:::read.manifest(manifest.12)

## Manifest package
maniList <- maniTmp.12$manifestList
IlluminaHumanMethylation450kmanifest <- IlluminaMethylationManifest(TypeI = maniList$TypeI,
                                                                    TypeII = maniList$TypeII,
                                                                    TypeControl = maniList$TypeControl,
                                                                    TypeSnpI = maniList$TypeSnpI,
                                                                    TypeSnpII = maniList$TypeSnpII,
                                                                    annotation = "IlluminaHumanMethylation450k")
save(IlluminaHumanMethylation450kmanifest, compress = "xz",
     file = "IlluminaHumanMethylation450kmanifest.rda")
