#Load libraries
library(ape)
library(tidyverse)
library(ggtree)
library(ggplot2)
library(ggpubr)
library(treeio)
library(readxl)
#load data
tree <- read.tree("Maximumlikelihooh_tree")
metadata_tree <- read_xlsx("metadata.tsv.xlsx")

# add a scale bar, tip points and labels to the tree
ML_tree <- ggtree(tree) + geom_treescale() + geom_tippoint() + geom_tiplab() +
  ggtitle("Maximum likelihood tree for Tanzania sequences") 

#tree annotation



#ML_tree <- ML_tree %<+% tree + geom_cladelabel(node=1, label="Root", geom=geom_label(aes(x=branch, y=branch, label=label), fill="white", hjust=0, vjust=0)) + geom_cladelabel(node=2, label="B.1.1.7", geom=geom_label(aes(x=branch, y=branch, label=label), fill="white", hjust=0, vjust=0)) + geom_cladelabel(node=3, label="B.1.351", geom=geom_label(aes(x=branch, y=branch, label=label), fill="white", hjust=0, vjust=0)) + geom_cladelabel(node=4, label="B.1.617.2", geom=geom_label(aes(x=branch, y=branch, label=label), fill="white", hjust=0, vjust=0)) + geom_cladelabel(node=5, label="B.1.525", geom=geom_label(aes(x=branch, y=branch, label=label), fill="white", hjust=0, vjust=0)) + geom_cladelabel(node=6, label="A.23.1", geom=geom_label(aes(x=branch, y=branch, label=label), fill="white", hjust=0, vjust=0)) + geom_cladelabel(node=7, label="A.23.1", geom=geom_label(aes(x=branch, y=branch, label=label), fill="white", hjust=0, vjust=0)) + geom_cladelabel(node=8, label="A.23.1", geom=geom_label(aes(x=branch, y=branch, label=label), fill="white", hjust=0, vjust=0)) + geom_cladelabel(node=9, label="A.23.1", geom=geom_label(aes(x=branch, y=branch, label=label), fill="white", hjust=0, vjust=0)) + geom_cladelabel(node=10, label="A.23.1", geom=geom_label(aes(x=branch, y=branch, label=label), fill="white", hjust=0, vjust=0)) + geom_cladelabel(node=11, label

