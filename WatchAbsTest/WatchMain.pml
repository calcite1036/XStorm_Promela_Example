#include "input_selector.pml"

mtype = {StopWatchRun,StopWatchStop,WatchDisplayMode,WatchSetMode,WatchStopWatchMode}

mtype StopWatch = StopWatchStop;
mtype Watch = WatchDisplayMode;

int LStopWatchstopWatchHour;
int LStopWatchstopWatchMin;
int LStopWatchstopWatchSec;
int LWatchhour;
int LWatchmin;
int LWatchsec;
int WatchSetModepos;
int LMainelapsed;
int LMaincurHour;
int LMaincurMin;
int LMaincurSec;

bool a1;
bool a2;
bool a3;
bool a4;

inline Watchlib_incSec(result, sec) {
  int _tmpvar44;
  if
  :: (sec == 1) -> _tmpvar44 = 0;
  :: else -> _tmpvar44 = (sec + 1);
  fi;
  
  result = _tmpvar44;
}
inline Watchlib_incMin(result, min, sec) {
  int _tmpvar46;
  int _tmpvar45;
  if
  :: ((min == 1) && (sec == 1)) -> _tmpvar46 = 0;
  :: else -> if
             :: (sec == 1) -> _tmpvar45 = (min + 1);
             :: else -> _tmpvar45 = min;
             fi;
             _tmpvar46 = _tmpvar45;
  fi;
  
  result = _tmpvar46;
}
inline Watchlib_incHour(result, hour, min, sec) {
  int _tmpvar48;
  int _tmpvar47;
  if
  :: (((hour == 1) && (min == 1)) && (sec == 1)) -> _tmpvar48 = 0;
  :: else -> if
             :: ((min == 1) && (sec == 1)) -> _tmpvar47 = (hour + 1);
             :: else -> _tmpvar47 = hour;
             fi;
             _tmpvar48 = _tmpvar47;
  fi;
  
  result = _tmpvar48;
}

inline reset_StopWatch() {
  
  skip;
  
  StopWatch = StopWatchStop;
  
  LStopWatchstopWatchHour = 0;
  LStopWatchstopWatchMin = 0;
  LStopWatchstopWatchSec = 0;
}
inline reset_Watch() {
  
  skip;
  
  Watch = WatchDisplayMode;
  
  LWatchhour = 0;
  LWatchmin = 0;
  LWatchsec = 0;
  reset_StopWatch(); 
}
inline reset_Main() {
  
  skip;
  LMaincurHour = 0;
  LMaincurMin = 0;
  LMaincurSec = 0;
  reset_Watch();
}

inline reset_StopWatchRun() {
  
  skip;
}
inline reset_StopWatchStop() {
  
  skip;
}
inline reset_WatchDisplayMode() {
  
  skip;
}
inline reset_WatchSetMode() {
  
  skip;
}
inline reset_WatchStopWatchMode() {
  
  skip;
  reset_StopWatch(); 
}

inline calc_atomic() {
  a1 = (Watch == WatchStopWatchMode);
  a2 = (StopWatch == StopWatchStop);
  a3 = (MainpressedC);
  a4 = (NWatch == WatchDisplayMode);
}
active proctype WatchMain(){
  reset_StopWatch();
  reset_StopWatchRun();
  reset_StopWatchStop();
  reset_Watch();
  reset_WatchDisplayMode();
  reset_WatchSetMode();
  reset_WatchStopWatchMode();
  reset_Main();
  
  do
  :: {
       
       
       mtype NStopWatch;
       mtype NWatch;
       
       bool StopWatchpressedA;
       bool StopWatchpressedB;
       bool StopWatchpressedC;
       int StopWatchdt;
       int StopWatchstopWatchHour;
       int StopWatchstopWatchMin;
       int StopWatchstopWatchSec;
       bool StopWatchexit;
       bool resetStopWatchRun = false;
       int StopWatchRuncounterSW;
       int StopWatchRunpulseSW;
       bool resetStopWatchStop = false;
       bool WatchpressedA;
       bool WatchpressedB;
       bool WatchpressedC;
       int WatchcurHour;
       int WatchcurMin;
       int WatchcurSec;
       int Watchdt;
       int Watchhour;
       int Watchmin;
       int Watchsec;
       bool Watchupdate;
       int Watchupdateh;
       int Watchupdatem;
       int Watchupdates;
       bool resetWatchDisplayMode = false;
       bool resetWatchSetMode = false;
       int WatchSetModedh;
       int WatchSetModedm;
       int WatchSetModeds;
       bool resetWatchStopWatchMode = false;
       bool WatchStopWatchModeexit;
       bool MainpressedA;
       bool MainpressedB;
       bool MainpressedC;
       int Mainelapsed;
       int Mainhour;
       int Mainmin;
       int Mainsec;
       int MaincounterCLK;
       int MaincurHour;
       int MaincurMin;
       int MaincurSec;
       int Maindt;
       int MainpulseCLK;
       bool Mainupdate;
       int Mainupdateh;
       int Mainupdatem;
       int Mainupdates;
       mtype _tmpvar2;
       mtype _tmpvar1;
       mtype _tmpvar5;
       mtype _tmpvar4;
       
       
       int _tmpvar3;
       int _tmpvar7;
       
       
       int _tmpvar6;
       int _tmpvar9;
       
       
       int _tmpvar8;
       int _tmpvar11;
       
       
       int _tmpvar10;
       bool _tmpvar13;
       
       
       int _tmpvar12;
       int _tmpvar14;
       int _tmpvar16;
       
       
       int _tmpvar15;
       int _tmpvar17;
       int _tmpvar19;
       
       
       int _tmpvar18;
       int _tmpvar20;
       int _tmpvar22;
       
       
       int _tmpvar21;
       mtype _tmpvar23;
       mtype _tmpvar24;
       int _tmpvar26;
       int _tmpvar25;
       int _tmpvar28;
       int _tmpvar27;
       int _tmpvar30;
       int _tmpvar29;
       mtype _tmpvar31;
       int _tmpvar32;
       int _tmpvar33;
       int _tmpvar34;
       int _tmpvar37;
       int _tmpvar36;
       int _tmpvar35;
       int _tmpvar40;
       int _tmpvar39;
       int _tmpvar38;
       int _tmpvar43;
       int _tmpvar42;
       int _tmpvar41;
       select_input();
       d_step {
         
         MainpulseCLK = Mainelapsed;
         Maindt = Mainelapsed;
         MaincounterCLK = 0;
         WatchpressedA = MainpressedA;
         WatchpressedB = MainpressedB;
         WatchpressedC = MainpressedC;
         WatchcurHour = LMaincurHour;
         WatchcurMin = LMaincurMin;
         WatchcurSec = LMaincurSec;
         Watchdt = Maindt;
         
         
         if
         
         :: (Watch == WatchDisplayMode) -> 
            
            Watchupdates = 0;
            Watchupdatem = 0;
            Watchupdateh = 0;
            Watchupdate = false;
            Watchsec = WatchcurSec;
            Watchmin = WatchcurMin;
            Watchhour = WatchcurHour;
            
            if
            :: WatchpressedA -> _tmpvar2 = WatchSetMode;
                                           WatchSetModepos = 1;
                                           resetWatchSetMode = true;
                                           resetWatchDisplayMode = true;
            :: else -> if
                       :: WatchpressedC -> _tmpvar1 = WatchStopWatchMode;
                                                      resetWatchStopWatchMode = true;
                                                      resetWatchDisplayMode = true;
                       :: else -> _tmpvar1 = Watch;
                       fi;
                       _tmpvar2 = _tmpvar1;
            fi;
            NWatch = _tmpvar2;
         
         :: (Watch == WatchSetMode) -> 
            
            _tmpvar6 = WatchSetModepos;
            
            if
            :: _tmpvar6 == 3 -> _tmpvar7 = 1;
            
            :: else -> _tmpvar7 = 0;
            fi;
            WatchSetModeds = _tmpvar7;
            _tmpvar8 = WatchSetModepos;
            
            if
            :: _tmpvar8 == 2 -> _tmpvar9 = 1;
            
            :: else -> _tmpvar9 = 0;
            fi;
            WatchSetModedm = _tmpvar9;
            _tmpvar10 = WatchSetModepos;
            
            if
            :: _tmpvar10 == 1 -> _tmpvar11 = 1;
            
            :: else -> _tmpvar11 = 0;
            fi;
            WatchSetModedh = _tmpvar11;
            _tmpvar12 = WatchSetModepos;
            
            if
            :: _tmpvar12 == 3 -> _tmpvar13 = WatchpressedA;
            
            :: else -> _tmpvar13 = false;
            fi;
            Watchupdate = _tmpvar13;
            if
            :: WatchpressedA -> _tmpvar14 = ((LWatchsec + WatchSetModeds) % 2);
            :: else -> _tmpvar14 = LWatchsec;
            fi;
            Watchsec = _tmpvar14;
            _tmpvar15 = WatchSetModepos;
            int _tmpvar49;
            if
            :: _tmpvar15 == 3 -> if
                                 :: WatchpressedA -> _tmpvar49 = Watchsec;
                                 :: else -> _tmpvar49 = 0;
                                 fi;
                                 
                                 _tmpvar16 = _tmpvar49;
            
            :: else -> _tmpvar16 = 0;
            fi;
            Watchupdates = _tmpvar16;
            if
            :: WatchpressedA -> _tmpvar17 = ((LWatchmin + WatchSetModedm) % 2);
            :: else -> _tmpvar17 = LWatchmin;
            fi;
            Watchmin = _tmpvar17;
            _tmpvar18 = WatchSetModepos;
            int _tmpvar50;
            if
            :: _tmpvar18 == 3 -> if
                                 :: WatchpressedA -> _tmpvar50 = Watchmin;
                                 :: else -> _tmpvar50 = 0;
                                 fi;
                                 
                                 _tmpvar19 = _tmpvar50;
            
            :: else -> _tmpvar19 = 0;
            fi;
            Watchupdatem = _tmpvar19;
            if
            :: WatchpressedA -> _tmpvar20 = ((LWatchhour + WatchSetModedh) % 2);
            :: else -> _tmpvar20 = LWatchhour;
            fi;
            Watchhour = _tmpvar20;
            _tmpvar21 = WatchSetModepos;
            int _tmpvar51;
            if
            :: _tmpvar21 == 3 -> if
                                 :: WatchpressedA -> _tmpvar51 = Watchhour;
                                 :: else -> _tmpvar51 = 0;
                                 fi;
                                 
                                 _tmpvar22 = _tmpvar51;
            
            :: else -> _tmpvar22 = 0;
            fi;
            Watchupdateh = _tmpvar22;
            
            if
            :: WatchpressedA -> _tmpvar3 = WatchSetModepos;
                                
                                if
                                :: _tmpvar3 == 1 -> _tmpvar4 = WatchSetMode;
                                                               WatchSetModepos = 2;
                                                               resetWatchSetMode = true;
                                                               resetWatchSetMode = true;
                                
                                :: _tmpvar3 == 2 -> _tmpvar4 = WatchSetMode;
                                                               WatchSetModepos = 3;
                                                               resetWatchSetMode = true;
                                                               resetWatchSetMode = true;
                                
                                :: else -> _tmpvar4 = WatchDisplayMode;
                                                      resetWatchDisplayMode = true;
                                                      resetWatchSetMode = true;
                                fi;
                                _tmpvar5 = _tmpvar4;
            :: else -> _tmpvar5 = Watch;
            fi;
            NWatch = _tmpvar5;
         
         :: (Watch == WatchStopWatchMode) -> 
            
            Watchupdates = 0;
            Watchupdatem = 0;
            Watchupdateh = 0;
            Watchupdate = false;
            StopWatchpressedA = WatchpressedA;
            StopWatchpressedB = WatchpressedB;
            StopWatchpressedC = WatchpressedC;
            StopWatchdt = Watchdt;
            
            
            if
            
            :: (StopWatch == StopWatchRun) -> 
               
               StopWatchRunpulseSW = StopWatchdt;
               if
               :: StopWatchRunpulseSW -> Watchlib_incSec(_tmpvar25,
                                                         LStopWatchstopWatchSec);
                                         _tmpvar26 = _tmpvar25;
               :: else -> _tmpvar26 = LStopWatchstopWatchSec;
               fi;
               StopWatchstopWatchSec = _tmpvar26;
               if
               :: StopWatchRunpulseSW -> Watchlib_incMin(_tmpvar27,
                                                         LStopWatchstopWatchMin,
                                                         LStopWatchstopWatchSec);
                                         _tmpvar28 = _tmpvar27;
               :: else -> _tmpvar28 = LStopWatchstopWatchMin;
               fi;
               StopWatchstopWatchMin = _tmpvar28;
               if
               :: StopWatchRunpulseSW -> Watchlib_incHour(_tmpvar29,
                                                          LStopWatchstopWatchHour,
                                                          LStopWatchstopWatchMin,
                                                          LStopWatchstopWatchSec);
                                         _tmpvar30 = _tmpvar29;
               :: else -> _tmpvar30 = LStopWatchstopWatchHour;
               fi;
               StopWatchstopWatchHour = _tmpvar30;
               StopWatchexit = false;
               StopWatchRuncounterSW = 0;
               
               if
               :: StopWatchpressedB -> _tmpvar24 = StopWatchStop;
                                                   resetStopWatchStop = true;
                                                   resetStopWatchRun = true;
               :: else -> _tmpvar24 = StopWatch;
               fi;
               NStopWatch = _tmpvar24;
            
            :: (StopWatch == StopWatchStop) -> 
               
               if
               :: StopWatchpressedA -> _tmpvar32 = 0;
               :: else -> _tmpvar32 = LStopWatchstopWatchSec;
               fi;
               StopWatchstopWatchSec = _tmpvar32;
               if
               :: StopWatchpressedA -> _tmpvar33 = 0;
               :: else -> _tmpvar33 = LStopWatchstopWatchMin;
               fi;
               StopWatchstopWatchMin = _tmpvar33;
               if
               :: StopWatchpressedA -> _tmpvar34 = 0;
               :: else -> _tmpvar34 = LStopWatchstopWatchHour;
               fi;
               StopWatchstopWatchHour = _tmpvar34;
               StopWatchexit = StopWatchpressedC;
               
               if
               :: StopWatchpressedB -> _tmpvar31 = StopWatchRun;
                                                   resetStopWatchRun = true;
                                                   resetStopWatchStop = true;
               :: else -> _tmpvar31 = StopWatch;
               fi;
               NStopWatch = _tmpvar31;
            
            fi;
            
            Watchhour = StopWatchstopWatchHour;
            Watchmin = StopWatchstopWatchMin;
            Watchsec = StopWatchstopWatchSec;
            WatchStopWatchModeexit = StopWatchexit;
            
            if
            :: WatchStopWatchModeexit -> _tmpvar23 = WatchDisplayMode;
                                                     resetWatchDisplayMode = true;
                                                     resetWatchStopWatchMode = true;
            :: else -> _tmpvar23 = Watch;
            fi;
            NWatch = _tmpvar23;
         
         fi;
         
         
         Mainhour = Watchhour;
         
         Mainmin = Watchmin;
         
         Mainsec = Watchsec;
         
         Mainupdate = Watchupdate;
         
         Mainupdateh = Watchupdateh;
         
         Mainupdatem = Watchupdatem;
         
         Mainupdates = Watchupdates;
         if
         :: Mainupdate -> _tmpvar37 = Mainupdates;
         :: else -> if
                    :: MainpulseCLK -> Watchlib_incSec(_tmpvar35, LMaincurSec);
                                       _tmpvar36 = _tmpvar35;
                    :: else -> _tmpvar36 = LMaincurSec;
                    fi;
                    _tmpvar37 = _tmpvar36;
         fi;
         MaincurSec = _tmpvar37;
         if
         :: Mainupdate -> _tmpvar40 = Mainupdatem;
         :: else -> if
                    :: MainpulseCLK -> Watchlib_incMin(_tmpvar38,
                                                       LMaincurMin,
                                                       LMaincurSec);
                                       _tmpvar39 = _tmpvar38;
                    :: else -> _tmpvar39 = LMaincurMin;
                    fi;
                    _tmpvar40 = _tmpvar39;
         fi;
         MaincurMin = _tmpvar40;
         if
         :: Mainupdate -> _tmpvar43 = Mainupdateh;
         :: else -> if
                    :: MainpulseCLK -> Watchlib_incHour(_tmpvar41,
                                                        LMaincurHour,
                                                        LMaincurMin,
                                                        LMaincurSec);
                                       _tmpvar42 = _tmpvar41;
                    :: else -> _tmpvar42 = LMaincurHour;
                    fi;
                    _tmpvar43 = _tmpvar42;
         fi;
         MaincurHour = _tmpvar43;
         calc_atomic();
         
         
         LStopWatchstopWatchHour = StopWatchstopWatchHour;
         LStopWatchstopWatchMin = StopWatchstopWatchMin;
         LStopWatchstopWatchSec = StopWatchstopWatchSec;
         LWatchhour = Watchhour;
         LWatchmin = Watchmin;
         LWatchsec = Watchsec;
         LMainelapsed = Mainelapsed;
         LMaincurHour = MaincurHour;
         LMaincurMin = MaincurMin;
         LMaincurSec = MaincurSec;
         
         if
         :: (resetStopWatchRun) -> reset_StopWatchRun(); resetStopWatchRun = 0;
         :: else -> skip
         fi;
         if
         :: (resetStopWatchStop) -> reset_StopWatchStop(); resetStopWatchStop = 0;
         :: else -> skip
         fi;
         StopWatch = NStopWatch;
         if
         :: (resetWatchDisplayMode) -> reset_WatchDisplayMode(); resetWatchDisplayMode = 0;
         :: else -> skip
         fi;
         if
         :: (resetWatchSetMode) -> reset_WatchSetMode(); resetWatchSetMode = 0;
         :: else -> skip
         fi;
         if
         :: (resetWatchStopWatchMode) -> reset_WatchStopWatchMode(); resetWatchStopWatchMode = 0;
         :: else -> skip
         fi;
         Watch = NWatch;
       }
     }
  check: skip;
  od
}
ltl {[](WatchMain@check -> (a1 && a2 && a3 -> a4))}
