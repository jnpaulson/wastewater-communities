# wastewater-communities
Data analysis for wastewater communities project


## File Descriptions  
* Source data files  
    * `plantObj.rds` is an R `MRexperiment` object with the OTU count table and sample metadata. The object is a cleaned up version of the raw OTU table, see `generate-plantObj.Rmd` for details. 

* Manuscript Analysis  
    * `analysis_and_figures.Rmd` contains the bulk of the data analysis used in the study.  

* Phylogenetic Placement 
    * TIPP (https://github.com/smirarab/sepp) was used to perform a robust taxonomic classification for _Mycobacterium_ and _Legionella_ OTUs.
    * `extract_myco_and_leg_seqs.Rmd` contains code used to obtain the appropriate representative sequences for the _Mycobacterium_ and _Legionella_ OTUs.  
    * The `waste_tipp.sh` bash script was used to run TIPP along with the RDP database `rdp_bacteria.refpkg`.  
    * `output_*` files contain the TIPP results and `myco_legion_tipp_classification.csv` contantains the summarized results. 
    
    
