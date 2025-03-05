##########################################################
namespace eval ::nonprj {}
set ::nonprj::strategies {}

set ::nonprj::strategy_names {
  {None}\
  {Vivado_Implementation_Defaults}\
  {Performace_Auto_1}\
  {Performace_Auto_2}\
  {Performace_Auto_3}\
  {Performance_Explore}\
  {Performance_ExplorePostRoutePhysOpt}\
  {Performance_ExploreWithRemap}\
  {Performance_WLBlockPlacement}\
  {Performance_WLBlockPlacementFanoutOpt}\
  {Performance_EarlyBlockPlacement}\
  {Performance_NetDelay_high}\
  {Performance_NetDelay_low}\
  {Performance_Retiming}\
  {Performance_ExtraTimingOpt}\
  {Performance_RefinePlacement}\
  {Performance_SpreadSLLs}\
  {Performance_BalanceSLLs}\
  {Performance_BalanceSLRs}\
  {Performance_HighUtilSLRs}\
  {Congestion_SpreadLogic_high}\
  {Congestion_SpreadLogic_medium}\
  {Congestion_SpreadLogic_low}\
  {Congestion_SSI_SpreadLogic_high}\
  {Congestion_SSI_SpreadLogic_low}\
  {Area_Explore}\
  {Area_ExploreSequential}\
  {Area_ExploreWithRemap}\
  {Power_DefaultOpts}\
  {Power_ExploreArea}\
  {Flow_RunPhysOpt}\
  {Flow_RunPostRoutePhysOpt}\
  {Flow_RuntimeOptimized}\
  {Flow_Quick}\
  {User1}\
}

dict set ::nonprj::strategies\
  {None} {\
}

dict set ::nonprj::strategies\
  {Vivado_Implementation_Defaults} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive Default}}\
    2 {phys_opt_design {-directive Default}}\
    3 {route_design {-directive Default}}\
}

dict set ::nonprj::strategies\
  {Performace_Auto_1} {\
    0 {opt_design {-directive Explore}}\
    1 {place_design {-directive Auto_1}}\
    2 {phys_opt_design {-directive AggressiveExplore}}\
    3 {route_design {-directive NoTimingRelaxation}}\
}

dict set ::nonprj::strategies\
  {Performace_Auto_2} {\
    0 {opt_design {-directive Explore}}\
    1 {place_design {-directive Auto_2}}\
    2 {phys_opt_design {-directive AggressiveExplore}}\
    3 {route_design {-directive NoTimingRelaxation}}\
}

dict set ::nonprj::strategies\
  {Performace_Auto_3} {\
    0 {opt_design {-directive Explore}}\
    1 {place_design {-directive Auto_3}}\
    2 {phys_opt_design {-directive AggressiveExplore}}\
    3 {route_design {-directive NoTimingRelaxation}}\
}

dict set ::nonprj::strategies\
  {Performance_Explore} {\
    0 {opt_design {-directive Explore}}\
    1 {place_design {-directive Explore}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Performance_ExplorePostRoutePhysOpt} {\
    0 {opt_design {-directive Explore}}\
    1 {place_design {-directive Explore}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive Explore -tns_cleanup}}\
    4 {phys_opt_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Performance_ExploreWithRemap} {\
    0 {opt_design {-directive ExploreWithRemap}}\
    1 {place_design {-directive Explore}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive NoTimingRelaxation -tns_cleanup}}\
    4 {phys_opt_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Performance_WLBlockPlacement} {\
    0 {opt_design {-directive Explore}}\
    1 {place_design {-directive WLDrivenBlockPlacement}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Performance_WLBlockPlacementFanoutOpt} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive WLDrivenBlockPlacement}}\
    2 {phys_opt_design {-directive AggressiveFanoutOpt}}\
    3 {route_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Performance_EarlyBlockPlacement} {\
    0 {opt_design {-directive Explore}}\
    1 {place_design {-directive EarlyBlockPlacement}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Performance_NetDelay_high} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive ExtraNetDelay_high}}\
    2 {phys_opt_design {-directive AggressiveExplore}}\
    3 {route_design {-directive NoTimingRelaxation}}\
}

dict set ::nonprj::strategies\
  {Performance_NetDelay_low} {\
    0 {opt_design {-directive Explore}}\
    1 {place_design {-directive ExtraNetDelay_low}}\
    2 {phys_opt_design {-directive AggressiveExplore}}\
    3 {route_design {-directive NoTimingRelaxation}}\
}

dict set ::nonprj::strategies\
  {Performance_Retiming} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive ExtraPostPlacementOpt}}\
    2 {phys_opt_design {-directive AlternateFlowWithRetiming}}\
    3 {route_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Performance_ExtraTimingOpt} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive ExtraTimingOpt}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive NoTimingRelaxation}}\
}

dict set ::nonprj::strategies\
  {Performance_RefinePlacement} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive ExtraPostPlacementOpt}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Performance_SpreadSLLs} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive SSI_SpreadSLLs}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Performance_BalanceSLLs} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive SSI_BalanceSLLs}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Performance_BalanceSLRs} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive SSI_BalanceSLRs}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Performance_HighUtilSLRs} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive SSI_HighUtilSLRs}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Congestion_SpreadLogic_high} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive AltSpreadLogic_high}}\
    2 {phys_opt_design {-directive AggressiveExplore}}\
    3 {route_design {-directive AlternateCLBRouting}}\
}

dict set ::nonprj::strategies\
  {Congestion_SpreadLogic_medium} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive AltSpreadLogic_medium}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive AlternateCLBRouting}}\
}

dict set ::nonprj::strategies\
  {Congestion_SpreadLogic_low} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive AltSpreadLogic_low}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive AlternateCLBRouting}}\
}

dict set ::nonprj::strategies\
  {Congestion_SSI_SpreadLogic_high} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive SSI_SpreadLogic_high}}\
    2 {phys_opt_design {-directive AggressiveExplore}}\
    3 {route_design {-directive AlternateCLBRouting}}\
}

dict set ::nonprj::strategies\
  {Congestion_SSI_SpreadLogic_low} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive SSI_SpreadLogic_low}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive AlternateCLBRouting}}\
}

dict set ::nonprj::strategies\
  {Area_Explore} {\
    0 {opt_design {-directive ExploreArea}}\
    1 {place_design {-directive Default}}\
    2 {route_design {-directive Default}}\
}

dict set ::nonprj::strategies\
  {Area_ExploreSequential} {\
    0 {opt_design {-directive ExploreSequentialArea}}\
    1 {place_design {-directive Default}}\
    2 {route_design {-directive Default}}\
}

dict set ::nonprj::strategies\
  {Area_ExploreWithRemap} {\
    0 {opt_design {-directive ExploreWithRemap}}\
    1 {place_design {-directive Default}}\
    2 {route_design {-directive Default}}\
}

dict set ::nonprj::strategies\
  {Power_DefaultOpts} {\
    0 {opt_design {-directive Default}}\
    1 {power_opt_design {}}\
    2 {place_design {-directive Default}}\
    3 {route_design {-directive Default}}\
}

dict set ::nonprj::strategies\
  {Power_ExploreArea} {\
    0 {opt_design {-directive ExploreSequentialArea}}\
    1 {power_opt_design {}}\
    2 {place_design {-directive Default}}\
    3 {route_design {-directive Default}}\
}

dict set ::nonprj::strategies\
  {Flow_RunPhysOpt} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive Default}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive Default}}\
}

dict set ::nonprj::strategies\
  {Flow_RunPostRoutePhysOpt} {\
    0 {opt_design {-directive Default}}\
    1 {place_design {-directive Default}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive Default -tns_cleanup}}\
    4 {phys_opt_design {-directive Explore}}\
}

dict set ::nonprj::strategies\
  {Flow_RuntimeOptimized} {\
    0 {opt_design {-directive RuntimeOptimized}}\
    1 {place_design {-directive RuntimeOptimized}}\
    2 {route_design {-directive RuntimeOptimized}}\
}

dict set ::nonprj::strategies\
  {Flow_Quick} {\
    0 {opt_design {-directive RuntimeOptimized}}\
    1 {place_design {-directive Quick}}\
    2 {route_design {-directive Quick}}\
}

dict set ::nonprj::strategies\
  {User1} {\
    0 {opt_design {-directive Explore}}\
    1 {place_design {-directive Explore}}\
    2 {phys_opt_design {-directive Explore}}\
    3 {route_design {-directive Explore}}\
}
##########################################################
