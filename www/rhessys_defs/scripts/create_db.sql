CREATE DATABASE rhessys_defs;
USE rhessys_defs;

GRANT ALL ON rhessys_defs.* TO "rhessys" IDENTIFIED BY "rhessys";

CREATE TABLE Zone ( 
zone_default_ID INTEGER, 
rhessys_version CHAR(20),
name CHAR(255), 
atm_trans_lapse_rate FLOAT, 
dewpoint_lapse_rate FLOAT, 
max_effective_lai FLOAT, 
lapse_rate FLOAT, 
pptmin FLOAT, 
sea_level_clear_sky_trans FLOAT, 
temcf FLOAT, 
trans_coeff1 FLOAT, 
trans_coeff2 FLOAT, 
wind FLOAT, 
max_snow_temp FLOAT, 
min_rain_temp FLOAT,
ndep_NO3 FLOAT
);

CREATE TABLE Zone_Reference ( 
zone_default_ID INTEGER, 
atm_trans_lapse_rate CHAR(255), 
dewpoint_lapse_rate CHAR(255), 
max_effective_lai CHAR(255), 
lapse_rate CHAR(255), 
pptmin CHAR(255), 
sea_level_clear_sky_trans CHAR(255), 
temcf CHAR(255), 
trans_coeff1 CHAR(255), 
trans_coeff2 CHAR(255), 
wind CHAR(255), 
max_snow_temp CHAR(255), 
min_rain_temp CHAR(255),
ndep_NO3 CHAR(255) 
);

CREATE TABLE Soil (  
patch_default_ID INTEGER, 
rhessy_version CHAR(20),
name CHAR(255),
theta_psi_curve INTEGER, 
Ksat_0 FLOAT, 
m FLOAT, 
porosity_0 FLOAT, 
porosity_decay FLOAT, 
p3 FLOAT, 
pore_size_index FLOAT, 
psi_air_entry FLOAT, 
psi_max FLOAT, 
soil_depth FLOAT, 
m_z FLOAT, 
detention_store_size FLOAT, 
deltaZ FLOAT, 
active_zone_z FLOAT, 
maximum_snow_energy_deficit FLOAT, 
snow_water_capacity FLOAT, 
snow_light_ext_coef FLOAT, 
snow_melt_Tcoef FLOAT, 
max_heat_capacity FLOAT, 
min_heat_capacity FLOAT, 
albedo FLOAT, 
mobile_N_proportion FLOAT, 
N_decay_rate FLOAT, 
sand FLOAT, 
clay FLOAT, 
silt FLOAT 
);

CREATE TABLE Soil_Reference (  
patch_default_ID INTEGER, 
theta_psi_curve CHAR(255), 
Ksat_0 CHAR(255), 
m CHAR(255), 
porosity_0 CHAR(255), 
porosity_decay CHAR(255), 
p3 CHAR(255), 
pore_size_index CHAR(255), 
psi_air_entry CHAR(255), 
psi_max CHAR(255), 
soil_depth CHAR(255), 
m_z CHAR(255), 
detention_store_size CHAR(255), 
deltaZ CHAR(255), 
active_zone_z CHAR(255), 
maximum_snow_energy_deficit CHAR(255), 
snow_water_capacity CHAR(255), 
snow_light_ext_coef CHAR(255), 
snow_melt_Tcoef CHAR(255), 
max_heat_capacity CHAR(255), 
min_heat_capacity CHAR(255), 
albedo CHAR(255), 
mobile_N_proportion CHAR(255), 
N_decay_rate CHAR(255), 
sand CHAR(255), 
clay CHAR(255), 
silt CHAR(255) 
);

CREATE TABLE Land_Use ( 
landuse_default_ID INTEGER,
rhessys_version CHAR(20),
name CHAR(255),
irrigation FLOAT, 
fertilizer_NO3 FLOAT, 
fertilizer_NH4 FLOAT, 
septic_NO3_load FLOAT, 
septic_water_load FLOAT, 
detention_store_size FLOAT 
);

CREATE TABLE Land_Use_Reference ( 
landuse_default_ID INTEGER, 
irrigation CHAR(255), 
fertilizer_NO3 CHAR(255), 
fertilizer_NH4 CHAR(255), 
septic_NO3_load CHAR(255), 
sepetic_water_load CHAR(255), 
detention_store_size CHAR(255) 
);

CREATE TABLE Stratum ( 
stratum_default_ID INTEGER,
rhessys_version CHAR(20),
name CHAR(255),
K_absorptance FLOAT, 
K_reflectance FLOAT, 
K_transmittance FLOAT, 
PAR_absorptance FLOAT, 
PAR_reflectance FLOAT, 
PAR_transmittance FLOAT, 
`epc.ext_coef` FLOAT, 
specific_rain_capacity FLOAT, 
specific_snow_capacity FLOAT, 
wind_attenuation_coef FLOAT, 
ustar_overu FLOAT, 
`mrc.q10` FLOAT, 
`mrc.per_N` FLOAT, 
`epc.gr_perc` FLOAT, 
lai_stomatal_fraction FLOAT, 
`epc.flnr` FLOAT, 
`epc.ppfd_coef` FLOAT, 
`epc.topt` FLOAT, 
`epc.tmax` FLOAT, 
`epc.tcoef` FLOAT, 
`epc.psi_open` FLOAT, 
`epc.psi_close` FLOAT, 
`epc.vpd_open` FLOAT, 
`epc.vpd_close` FLOAT, 
`epc.gl_smax` FLOAT, 
`epc.gl_c` FLOAT, 
gsurf_slope FLOAT, 
gsurf_intercept FLOAT, 
`epc.veg_type` CHAR(20), 
`epc.phenology_flag` CHAR(20), 
`epc.phenology_type` CHAR(20), 
`epc.max_lai` FLOAT, 
`epc.proj_sla` FLOAT, 
`epc.lai_ratio` FLOAT, 
`epc.proj_swa` FLOAT, 
`epc.leaf_turnover` FLOAT, 
`epc.day_leafon` INTEGER , 
`epc.day_leafoff` INTEGER , 
`epc.ndays_expand` INTEGER , 
`epc.ndays_litfall` INTEGER , 
`epc.leaf_cn` FLOAT, 
`epc.leaflitr_cn` FLOAT, 
min_heat_capacity FLOAT, 
max_heat_capacity FLOAT, 
`epc.allocation_flag` CHAR(20), 
`epc.storage_transfer_prop` FLOAT, 
`epc.froot_turnover` FLOAT,
`epc.deadleaf_turnover` FLOAT,
`epc.livewood_turnover` FLOAT,
`epc.kfrag_base` FLOAT,
`epc.daily_mortality_turnover` FLOAT,
`epc.froot_cn` FLOAT,
`epc.livewood_cn` FLOAT,
`epc.leaflitr_flab` FLOAT,
`epc.leaflitr_fcel` FLOAT,
`epc.leaflitr_flig` FLOAT,
`epc.frootlitr_flab` FLOAT,
`epc.frootlitr_fcel` FLOAT,
`epc.frootlitr_flig` FLOAT,
`epc.deadwood_fcel` FLOAT,
`epc.deadwood_flig` FLOAT,
`epc.alloc_frootc_leafc` FLOAT,
`epc.alloc_crootc_stemc` FLOAT,
`epc.alloc_stemc_leafc` FLOAT,
`epc.alloc_livewoodc_woodc` FLOAT,
`epc.alloc_maxlgf` FLOAT,
`epc.alloc_prop_day_growth` FLOAT,
`epc.daily_fire_turnover` FLOAT,
`epc.height_to_stem_exp` FLOAT,
`epc.height_to_stem_coef` FLOAT,
`epc.max_storage_percent` FLOAT,
`epc.min_leaf_carbon` FLOAT,
`epc.max_years_resprout` FLOAT,
`epc.resprout_leaf_carbon` FLOAT,
`epc.litter_gsurf_slope` FLOAT,
`epc.coef_CO2` FLOAT,
`epc.litter_moist_coeff` FLOAT,
`epc.litter_gsurf_intercept` FLOAT,
`epc.root_growth_direction` FLOAT,
`epc.root_distrib_parm` FLOAT,
`epc.gs_tmin` FLOAT,
`epc.gs_tmax` FLOAT,
`epc.gs_vpd_min` FLOAT,
`epc.gs_vpd_max` FLOAT,
`epc.gs_dayl_min` FLOAT,
`epc.gs_dayl_max` FLOAT,
mortality FLOAT
);

CREATE TABLE Stratum_Reference ( 
stratum_default_ID INTEGER, 
K_absorptance CHAR(255), 
K_reflectance CHAR(255), 
K_transmittance CHAR(255), 
PAR_absorptance CHAR(255), 
PAR_reflectance CHAR(255), 
PAR_transmittance CHAR(255), 
`epc.ext_coef` CHAR(255), 
specific_rain_capacity CHAR(255), 
specific_snow_capacity CHAR(255), 
wind_attenuation_coef CHAR(255), 
ustar_overu CHAR(255), 
`mrc.q10` CHAR(255), 
`mrc.per_N` CHAR(255), 
`epc.gr_perc` CHAR(255), 
lai_stomatal_fraction CHAR(255), 
`epc.flnr` CHAR(255), 
`epc.ppfd_coef` CHAR(255), 
`epc.topt` CHAR(255), 
`epc.tmax` CHAR(255), 
`epc.tcoef` CHAR(255), 
`epc.psi_open` CHAR(255), 
`epc.psi_close` CHAR(255), 
`epc.vpd_open` CHAR(255), 
`epc.vpd_close` CHAR(255), 
`epc.gl_smax` CHAR(255), 
`epc.gl_c` CHAR(255), 
gsurf_slope CHAR(255), 
gsurf_intercept CHAR(255), 
`epc.veg_type` CHAR(255), 
`epc.phenology_flag` CHAR(255), 
`epc.phenology_type` CHAR(255), 
`epc.max_lai` CHAR(255), 
`epc.proj_sla` CHAR(255), 
`epc.lai_ratio` CHAR(255), 
`epc.proj_swa` CHAR(255), 
`epc.leaf_turnover` CHAR(255), 
`epc.day_leafon` CHAR(255) , 
`epc.day_leafoff` CHAR(255) , 
`epc.ndays_expand` CHAR(255) , 
`epc.ndays_litfall` CHAR(255) , 
`epc.leaf_cn` CHAR(255), 
`epc.leaflitr_cn` CHAR(255), 
min_heat_capacity CHAR(255), 
max_heat_capacity CHAR(255), 
`epc.allocation_flag` CHAR(255), 
`epc.storage_transfer_prop` CHAR(255), 
`epc.froot_turnover` CHAR(255), 
`epc.deadleaf_turnover` CHAR(255),
`epc.livewood_turnover` CHAR(255),
`epc.kfrag_base` CHAR(255),
`epc.daily_mortality_turnover` CHAR(255),
`epc.froot_cn` CHAR(255),
`epc.livewood_cn` CHAR(255),
`epc.leaflitr_flab` CHAR(255),
`epc.leaflitr_fcel` CHAR(255),
`epc.leaflitr_flig` CHAR(255),
`epc.frootlitr_flab` CHAR(255),
`epc.frootlitr_fcel` CHAR(255),
`epc.frootlitr_flig` CHAR(255),
`epc.deadwood_fcel` CHAR(255),
`epc.deadwood_flig` CHAR(255),
`epc.alloc_frootc_leafc` CHAR(255),
`epc.alloc_crootc_stemc` CHAR(255),
`epc.alloc_stemc_leafc` CHAR(255),
`epc.alloc_livewoodc_woodc` CHAR(255),
`epc.alloc_maxlgf` CHAR(255),
`epc.alloc_prop_day_growth` CHAR(255),
`epc.daily_fire_turnover` CHAR(255),
`epc.height_to_stem_exp` CHAR(255),
`epc.height_to_stem_coef` CHAR(255),
`epc.max_storage_percent` CHAR(255),
`epc.min_leaf_carbon` CHAR(255),
`epc.max_years_resprout` CHAR(255),
`epc.resprout_leaf_carbon` CHAR(255),
`epc.litter_gsurf_slope` CHAR(255),
`epc.coef_CO2` CHAR(255),
`epc.litter_moist_coeff` CHAR(255),
`epc.litter_gsurf_intercept` CHAR(255),
`epc.root_growth_direction` CHAR(255),
`epc.root_distrib_parm` CHAR(255),
`epc.gs_tmin` CHAR(255),
`epc.gs_tmax` CHAR(255),
`epc.gs_vpd_min` CHAR(255),
`epc.gs_vpd_max` CHAR(255),
`epc.gs_dayl_min` CHAR(255),
`epc.gs_dayl_max` CHAR(255),
mortality CHAR(255)
);
