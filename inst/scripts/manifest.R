library(minfi)

manifestFile <- "../../../IlluminaHumanMethylation450k_files/data/HumanMethylation450_15017482_v.1.2.csv"
if(!file.exists(manifestFile)) {
    cat("Missing files, quitting\n")
    q(save = "no")
}
maniTmp <- minfi:::read.manifest.450k(manifestFile)

## Manifest package
maniList <- maniTmp$manifestList
IlluminaHumanMethylation450kmanifest <- IlluminaMethylationManifest(TypeI = maniList$TypeI,
                                                                    TypeII = maniList$TypeII,
                                                                    TypeControl = maniList$TypeControl,
                                                                    TypeSnpI = maniList$TypeSnpI,
                                                                    TypeSnpII = maniList$TypeSnpII,
                                                                    annotation = "IlluminaHumanMethylation450k")
save(IlluminaHumanMethylation450kmanifest, compress = "xz",
     file = "../../data/IlluminaHumanMethylation450kmanifest.rda")

sessionInfo()
q(save = "no")
