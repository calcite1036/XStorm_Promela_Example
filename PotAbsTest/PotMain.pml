#include "input_selector.pml"

mtype = {BuzzerThreeRun,BuzzerThreeStop,BuzzerOneDRun,BuzzerOneDStop,BuzzerOneCRun,BuzzerOneCStop,TimerRun,TimerStop,BuzzerOneBRun,BuzzerOneBStop,SettingHighMode,SettingMilkMode,SettingSaveMode,LockLocked,LockUnlocked,CoverClose,CoverOpen,BuzzerOneRun,BuzzerOneStop,PotBoilMode,PotErrorMode,PotIdleMode,PotKeepMode}


mtype BuzzerThree = BuzzerThreeStop;
mtype BuzzerOneD = BuzzerOneDStop;
mtype BuzzerOneC = BuzzerOneCStop;
mtype Timer = TimerStop;
mtype BuzzerOneB = BuzzerOneBStop;
mtype Setting = SettingHighMode;
mtype Lock = LockUnlocked;
mtype Cover = CoverOpen;
mtype BuzzerOne = BuzzerOneStop;
mtype Pot = PotIdleMode;

int LBuzzerThreeRunwait;
int LBuzzerOneDRunwait;
int LBuzzerOneCRunwait;
int LTimerminute;
int LTimersecond;
int LTimerRuncounter;
int LTimerRunresetInput;
int LTimerRunwaitInput;
int LTimerStopendInput;
int LTimerStopwaitInput;
int LSettingHighModewait;
int LSettingMilkModewait;
int LSettingSaveModewait;
bool LLocklock;
int LLockLockedwait;
int LLockUnlockedwait;
bool LBoiledreached;
int LBoiledwait;
int LBoilwait;
int LPotKeepModemcounter;
int LPotKeepModemtemp;
bool LMainsupply;

bool a1;
bool a2;
bool a3;


inline reset_Water() {
  
  skip;
}
inline reset_BuzzerThree() {
  
  skip;
  
  BuzzerThree = BuzzerThreeStop;
  
  LBuzzerThreeRunwait = 0;
}
inline reset_BuzzerOneD() {
  
  skip;
  
  BuzzerOneD = BuzzerOneDStop;
  
  LBuzzerOneDRunwait = 0;
}
inline reset_BuzzerOneC() {
  
  skip;
  
  BuzzerOneC = BuzzerOneCStop;
  
  LBuzzerOneCRunwait = 0;
}
inline reset_Timer() {
  
  skip;
  
  Timer = TimerStop;
  
  LTimerminute = 0;
  LTimersecond = 0;
  LTimerRuncounter = 0;
  LTimerRunresetInput = 0;
  LTimerRunwaitInput = 0;
  reset_BuzzerThree(); 
  reset_BuzzerOneC(); 
  reset_BuzzerOneD(); 
  LTimerStopendInput = 0;
  LTimerStopwaitInput = 0;
  reset_BuzzerOneC(); 
}
inline reset_BuzzerOneB() {
  
  skip;
  
  BuzzerOneB = BuzzerOneBStop;
  
}
inline reset_Setting() {
  
  skip;
  
  Setting = SettingHighMode;
  
  LSettingHighModewait = 0;
  reset_BuzzerOneB(); 
  LSettingMilkModewait = 0;
  reset_BuzzerOneB(); 
  LSettingSaveModewait = 0;
  reset_BuzzerOneB(); 
}
inline reset_Lock() {
  
  skip;
  
  Lock = LockUnlocked;
  
  LLocklock = false;
  LLockLockedwait = 0;
  LLockUnlockedwait = 0;
}
inline reset_Cover() {
  
  skip;
  
  Cover = CoverOpen;
  
}
inline reset_Heater() {
  
  skip;
}
inline reset_Boiled() {
  
  skip;
  LBoiledreached = false;
  LBoiledwait = 0;
}
inline reset_BuzzerOne() {
  
  skip;
  
  BuzzerOne = BuzzerOneStop;
  
}
inline reset_Boil() {
  
  skip;
  LBoilwait = 0;
  reset_BuzzerOne();
}
inline reset_Pot() {
  
  skip;
  
  Pot = PotIdleMode;
  
  reset_Boiled(); 
  LPotKeepModemcounter = 0;
  LPotKeepModemtemp = 0;
  reset_Boil(); 
  reset_Heater(); 
}
inline reset_Main() {
  
  skip;
  LMainsupply = false;
  reset_Cover();
  reset_Timer();
  reset_Setting();
  reset_Water();
  reset_Lock();
  reset_Pot();
}

inline reset_BuzzerThreeRun() {
  
  skip;
  LBuzzerThreeRunwait = 0;
}
inline reset_BuzzerThreeStop() {
  
  skip;
}
inline reset_BuzzerOneDRun() {
  
  skip;
  LBuzzerOneDRunwait = 0;
}
inline reset_BuzzerOneDStop() {
  
  skip;
}
inline reset_BuzzerOneCRun() {
  
  skip;
  LBuzzerOneCRunwait = 0;
}
inline reset_BuzzerOneCStop() {
  
  skip;
}
inline reset_TimerRun() {
  
  skip;
  LTimerRuncounter = 0;
  LTimerRunresetInput = 0;
  LTimerRunwaitInput = 0;
  reset_BuzzerThree(); 
  reset_BuzzerOneC(); 
  reset_BuzzerOneD(); 
}
inline reset_TimerStop() {
  
  skip;
  LTimerStopendInput = 0;
  LTimerStopwaitInput = 0;
  reset_BuzzerOneC(); 
}
inline reset_BuzzerOneBRun() {
  
  skip;
}
inline reset_BuzzerOneBStop() {
  
  skip;
}
inline reset_SettingHighMode() {
  
  skip;
  LSettingHighModewait = 0;
  reset_BuzzerOneB(); 
}
inline reset_SettingMilkMode() {
  
  skip;
  LSettingMilkModewait = 0;
  reset_BuzzerOneB(); 
}
inline reset_SettingSaveMode() {
  
  skip;
  LSettingSaveModewait = 0;
  reset_BuzzerOneB(); 
}
inline reset_LockLocked() {
  
  skip;
  LLockLockedwait = 0;
}
inline reset_LockUnlocked() {
  
  skip;
  LLockUnlockedwait = 0;
}
inline reset_CoverClose() {
  
  skip;
}
inline reset_CoverOpen() {
  
  skip;
}
inline reset_BuzzerOneRun() {
  
  skip;
}
inline reset_BuzzerOneStop() {
  
  skip;
}
inline reset_PotBoilMode() {
  
  skip;
  reset_Boiled(); 
}
inline reset_PotErrorMode() {
  
  skip;
}
inline reset_PotIdleMode() {
  
  skip;
}
inline reset_PotKeepMode() {
  
  skip;
  LPotKeepModemcounter = 0;
  LPotKeepModemtemp = 0;
  reset_Boil(); 
  reset_Heater(); 
}

inline calc_atomic() {
  a1 = (Pot == PotKeepMode);
  a2 = (Mainthermistor > 110);
  a3 = ((Pot == PotErrorMode));
}
active proctype PotMain(){
  reset_Water();
  reset_BuzzerThree();
  reset_BuzzerThreeRun();
  reset_BuzzerThreeStop();
  reset_BuzzerOneD();
  reset_BuzzerOneDRun();
  reset_BuzzerOneDStop();
  reset_BuzzerOneC();
  reset_BuzzerOneCRun();
  reset_BuzzerOneCStop();
  reset_Timer();
  reset_TimerRun();
  reset_TimerStop();
  reset_BuzzerOneB();
  reset_BuzzerOneBRun();
  reset_BuzzerOneBStop();
  reset_Setting();
  reset_SettingHighMode();
  reset_SettingMilkMode();
  reset_SettingSaveMode();
  reset_Lock();
  reset_LockLocked();
  reset_LockUnlocked();
  reset_Cover();
  reset_CoverClose();
  reset_CoverOpen();
  reset_Heater();
  reset_Boiled();
  reset_BuzzerOne();
  reset_BuzzerOneRun();
  reset_BuzzerOneStop();
  reset_Boil();
  reset_Pot();
  reset_PotBoilMode();
  reset_PotErrorMode();
  reset_PotIdleMode();
  reset_PotKeepMode();
  reset_Main();
  
  do
  :: {
       
       
       mtype NBuzzerThree;
       mtype NBuzzerOneD;
       mtype NBuzzerOneC;
       mtype NTimer;
       mtype NBuzzerOneB;
       mtype NSetting;
       mtype NLock;
       mtype NCover;
       mtype NBuzzerOne;
       mtype NPot;
       
       bool WaterfullSensor;
       bool WaterwaterSensor1;
       bool WaterwaterSensor2;
       bool WaterwaterSensor3;
       bool WaterwaterSensor4;
       bool Waterclosed;
       int Waterwater;
       bool BuzzerThreestart;
       int BuzzerThreedt;
       bool BuzzerThreebuzzer;
       bool BuzzerThreeend;
       bool resetBuzzerThreeRun = false;
       int BuzzerThreeRunwait;
       bool resetBuzzerThreeStop = false;
       bool BuzzerOneDstart;
       int BuzzerOneDdt;
       bool BuzzerOneDbuzzer;
       bool BuzzerOneDend;
       bool resetBuzzerOneDRun = false;
       int BuzzerOneDRunwait;
       bool resetBuzzerOneDStop = false;
       bool BuzzerOneCstart;
       int BuzzerOneCdt;
       bool BuzzerOneCbuzzer;
       bool BuzzerOneCend;
       bool resetBuzzerOneCRun = false;
       int BuzzerOneCRunwait;
       bool resetBuzzerOneCStop = false;
       bool TimertimerButton;
       bool Timerclosed;
       int Timerdt;
       int Timerminute;
       int Timersecond;
       bool TimerbuzzerT;
       bool resetTimerRun = false;
       int TimerRuncounter;
       bool TimerRunpulse;
       int TimerRunresetInput;
       bool TimerRunstartA;
       bool TimerRunstartB;
       bool TimerRunstartC;
       int TimerRunwaitInput;
       bool TimerRunbuzzerTC;
       bool TimerRunendC;
       bool TimerRunbuzzerTA;
       bool TimerRunendA;
       bool TimerRunbuzzerTB;
       bool TimerRunendB;
       bool resetTimerStop = false;
       int TimerStopendInput;
       bool TimerStopstart;
       int TimerStopwaitInput;
       bool TimerStopend;
       bool BuzzerOneBstart;
       int BuzzerOneBdt;
       bool BuzzerOneBbuzzer;
       bool BuzzerOneBend;
       bool resetBuzzerOneBRun = false;
       int BuzzerOneBRunwait;
       bool resetBuzzerOneBStop = false;
       bool SettingsettingButton;
       bool Settingclosed;
       int Settingdt;
       int Settingsetting;
       bool SettingbuzzerS;
       bool resetSettingHighMode = false;
       bool SettingHighModestart;
       int SettingHighModewait;
       bool SettingHighModeend;
       bool resetSettingMilkMode = false;
       bool SettingMilkModestart;
       int SettingMilkModewait;
       bool SettingMilkModeend;
       bool resetSettingSaveMode = false;
       bool SettingSaveModestart;
       int SettingSaveModewait;
       bool SettingSaveModeend;
       bool LocklockButton;
       bool Lockclosed;
       bool Locksupply;
       int Lockdt;
       bool Locklock;
       bool resetLockLocked = false;
       int LockLockedwait;
       bool resetLockUnlocked = false;
       int LockUnlockedwait;
       bool CovercoverSensor;
       int Coverdt;
       bool Coverclosed;
       bool resetCoverClose = false;
       int CoverClosewait;
       bool resetCoverOpen = false;
       int CoverOpenwait;
       int Heatertemp;
       int Heaterthermistor;
       bool Heaterheater;
       int Heaterdt;
       int Heatert;
       int Boiledthermistor;
       int Boileddt;
       bool Boiledboiled;
       bool Boiledreached;
       int Boiledwait;
       bool BuzzerOnestart;
       int BuzzerOnedt;
       bool BuzzerOnebuzzer;
       bool BuzzerOneend;
       bool resetBuzzerOneRun = false;
       int BuzzerOneRunwait;
       bool resetBuzzerOneStop = false;
       bool BoilboilButton;
       int Boildt;
       bool Boilboil;
       bool BoilbuzzerP;
       bool Boilstart;
       int Boiltmp;
       int Boilwait;
       bool Potplug;
       bool Potclosed;
       int Potwater;
       int Potthermistor;
       bool Potlocklamp;
       bool PotsupplyButton;
       bool PotboilButton;
       int Potkeeptemp;
       int Potdt;
       bool Potheater;
       bool Potbattery;
       int Pottemperature;
       bool Potboillamp;
       bool Potkeeplamp;
       bool Potsupply;
       bool PotbuzzerP;
       int Potpotconst;
       bool resetPotBoilMode = false;
       bool PotBoilModeboiled;
       bool resetPotErrorMode = false;
       bool resetPotIdleMode = false;
       int PotIdleModeidleconst;
       bool resetPotKeepMode = false;
       int PotKeepModeerrorA;
       bool PotKeepModeerrorB;
       int PotKeepModemcounter;
       bool PotKeepModemdown;
       bool PotKeepModempulse;
       int PotKeepModemtemp;
       int PotKeepModetemp;
       bool PotKeepModeboil;
       bool MaincoverSensor;
       bool MaintimerButton;
       bool MainsettingButton;
       bool MainsupplyButton;
       bool MainboilButton;
       bool MainlockButton;
       bool MainfullSensor;
       bool MainwaterSensor1;
       bool MainwaterSensor2;
       bool MainwaterSensor3;
       bool MainwaterSensor4;
       int Mainthermistor;
       int Maindt;
       bool Mainheater;
       bool Mainbattery;
       int Maintime;
       int Maintemperature;
       bool Mainboillamp;
       bool Mainkeeplamp;
       bool Mainlocklamp;
       int Mainmode;
       bool Mainbuzzer;
       int Mainwater;
       bool Mainsupply;
       bool Mainclosed;
       int Mainminute;
       int Mainsecond;
       bool MainbuzzerT;
       int Mainkeeptemp;
       bool MainbuzzerS;
       bool Mainsup;
       bool MainbuzzerP;
       mtype _tmpvar1;
       int _tmpvar2;
       mtype _tmpvar3;
       int _tmpvar4;
       mtype _tmpvar7;
       mtype _tmpvar6;
       mtype _tmpvar5;
       int _tmpvar8;
       mtype _tmpvar10;
       mtype _tmpvar9;
       int _tmpvar11;
       int _tmpvar17;
       int _tmpvar16;
       int _tmpvar15;
       int _tmpvar14;
       int _tmpvar13;
       int _tmpvar12;
       mtype _tmpvar18;
       int _tmpvar19;
       mtype _tmpvar20;
       bool _tmpvar21;
       bool _tmpvar22;
       mtype _tmpvar23;
       mtype _tmpvar24;
       int _tmpvar25;
       mtype _tmpvar26;
       bool _tmpvar27;
       bool _tmpvar28;
       mtype _tmpvar29;
       mtype _tmpvar30;
       int _tmpvar31;
       mtype _tmpvar32;
       bool _tmpvar33;
       bool _tmpvar34;
       mtype _tmpvar35;
       mtype _tmpvar38;
       mtype _tmpvar37;
       mtype _tmpvar36;
       bool _tmpvar39;
       bool _tmpvar40;
       int _tmpvar41;
       bool _tmpvar42;
       mtype _tmpvar43;
       mtype _tmpvar46;
       mtype _tmpvar45;
       mtype _tmpvar44;
       int _tmpvar48;
       int _tmpvar47;
       int _tmpvar49;
       bool _tmpvar50;
       int _tmpvar51;
       bool _tmpvar52;
       bool _tmpvar53;
       int _tmpvar54;
       mtype _tmpvar55;
       bool _tmpvar56;
       bool _tmpvar57;
       mtype _tmpvar58;
       select_input();
       d_step {
         
         Maintime = 0;
         Mainmode = 0;
         Mainbuzzer = true;
         Mainminute = 0;
         Mainsecond = 0;
         MainbuzzerT = false;
         CovercoverSensor = MaincoverSensor;
         Coverdt = Maindt;
         
         
         if
         
         :: (Cover == CoverClose) -> 
            
            if
            :: (!CovercoverSensor) -> _tmpvar2 = Coverdt;
            :: else -> _tmpvar2 = 0;
            fi;
            CoverClosewait = _tmpvar2;
            Coverclosed = true;
            
            if
            :: ((!CovercoverSensor) && (CoverClosewait >= 1)) -> _tmpvar1 = 
                                                                 CoverOpen;
                                                                 resetCoverOpen = true;
                                                                 resetCoverClose = true;
            :: else -> _tmpvar1 = Cover;
            fi;
            NCover = _tmpvar1;
         
         :: (Cover == CoverOpen) -> 
            
            if
            :: CovercoverSensor -> _tmpvar4 = Coverdt;
            :: else -> _tmpvar4 = 0;
            fi;
            CoverOpenwait = _tmpvar4;
            Coverclosed = false;
            
            if
            :: (CovercoverSensor && (CoverOpenwait >= 1)) -> _tmpvar3 = 
                                                             CoverClose;
                                                             resetCoverClose = true;
                                                             resetCoverOpen = true;
            :: else -> _tmpvar3 = Cover;
            fi;
            NCover = _tmpvar3;
         
         fi;
         
         
         Mainclosed = Coverclosed;
         LocklockButton = MainlockButton;
         Lockclosed = Mainclosed;
         Locksupply = LMainsupply;
         Lockdt = Maindt;
         
         
         if
         
         :: (Lock == LockLocked) -> 
            
            if
            :: LocklockButton -> _tmpvar8 = Lockdt;
            :: else -> _tmpvar8 = 0;
            fi;
            LockLockedwait = _tmpvar8;
            Locklock = true;
            
            if
            :: (!Lockclosed) -> _tmpvar7 = LockUnlocked;
                                           resetLockUnlocked = true;
                                           resetLockLocked = true;
            :: else -> if
                       :: Locksupply -> _tmpvar6 = LockUnlocked;
                                                   resetLockUnlocked = true;
                                                   resetLockLocked = true;
                       :: else -> if
                                  :: ((!LocklockButton) && (LLockLockedwait >= 1)) -> 
                                  _tmpvar5 = LockUnlocked;
                                             resetLockUnlocked = true;
                                             resetLockLocked = true;
                                  :: else -> _tmpvar5 = Lock;
                                  fi;
                                  _tmpvar6 = _tmpvar5;
                       fi;
                       _tmpvar7 = _tmpvar6;
            fi;
            NLock = _tmpvar7;
         
         :: (Lock == LockUnlocked) -> 
            
            if
            :: LocklockButton -> _tmpvar11 = Lockdt;
            :: else -> _tmpvar11 = 0;
            fi;
            LockUnlockedwait = _tmpvar11;
            Locklock = false;
            
            if
            :: ((!Lockclosed) || Locksupply) -> _tmpvar10 = Lock;
            :: else -> if
                       :: ((!LocklockButton) && (LLockUnlockedwait >= 1)) -> 
                       _tmpvar9 = LockLocked;
                                  resetLockLocked = true;
                                  resetLockUnlocked = true;
                       :: else -> _tmpvar9 = Lock;
                       fi;
                       _tmpvar10 = _tmpvar9;
            fi;
            NLock = _tmpvar10;
         
         fi;
         
         
         Mainlocklamp = Locklock;
         WaterfullSensor = MainfullSensor;
         WaterwaterSensor1 = MainwaterSensor1;
         WaterwaterSensor2 = MainwaterSensor2;
         WaterwaterSensor3 = MainwaterSensor3;
         WaterwaterSensor4 = MainwaterSensor4;
         Waterclosed = Mainclosed;
         if
         :: (!Waterclosed) -> _tmpvar17 = 6;
         :: else -> if
                    :: WaterfullSensor -> _tmpvar16 = 5;
                    :: else -> if
                               :: WaterwaterSensor4 -> _tmpvar15 = 4;
                               :: else -> if
                                          :: WaterwaterSensor3 -> _tmpvar14 = 3;
                                          :: else -> if
                                                     :: WaterwaterSensor2 -> 
                                                     _tmpvar13 = 2;
                                                     :: else -> if
                                                                :: WaterwaterSensor1 -> 
                                                                _tmpvar12 = 1;
                                                                :: else -> 
                                                                _tmpvar12 = 0;
                                                                fi;
                                                                _tmpvar13 = _tmpvar12;
                                                     fi;
                                                     _tmpvar14 = _tmpvar13;
                                          fi;
                                          _tmpvar15 = _tmpvar14;
                               fi;
                               _tmpvar16 = _tmpvar15;
                    fi;
                    _tmpvar17 = _tmpvar16;
         fi;
         Waterwater = _tmpvar17;
         
         Mainwater = Waterwater;
         SettingsettingButton = MainsettingButton;
         Settingclosed = Mainclosed;
         Settingdt = Maindt;
         
         
         if
         
         :: (Setting == SettingHighMode) -> 
            
            if
            :: SettingsettingButton -> _tmpvar19 = Settingdt;
            :: else -> _tmpvar19 = 0;
            fi;
            SettingHighModewait = _tmpvar19;
            SettingHighModestart = (((LSettingHighModewait >= 1) && (!SettingsettingButton)) && Settingclosed);
            Settingsetting = 1;
            BuzzerOneBstart = SettingHighModestart;
            BuzzerOneBdt = Settingdt;
            
            
            if
            
            :: (BuzzerOneB == BuzzerOneBRun) -> 
               
               BuzzerOneBRunwait = BuzzerOneBdt;
               if
               :: (BuzzerOneBRunwait >= 1) -> _tmpvar21 = true;
               :: else -> _tmpvar21 = false;
               fi;
               BuzzerOneBend = _tmpvar21;
               if
               :: (BuzzerOneBRunwait < 1) -> _tmpvar22 = true;
               :: else -> _tmpvar22 = false;
               fi;
               BuzzerOneBbuzzer = _tmpvar22;
               
               if
               :: (BuzzerOneBRunwait >= 1) -> _tmpvar20 = BuzzerOneBStop;
                                                          resetBuzzerOneBStop = true;
                                                          resetBuzzerOneBRun = true;
               :: else -> _tmpvar20 = BuzzerOneB;
               fi;
               NBuzzerOneB = _tmpvar20;
            
            :: (BuzzerOneB == BuzzerOneBStop) -> 
               
               BuzzerOneBend = false;
               BuzzerOneBbuzzer = false;
               
               if
               :: BuzzerOneBstart -> _tmpvar23 = BuzzerOneBRun;
                                                 resetBuzzerOneBRun = true;
                                                 resetBuzzerOneBStop = true;
               :: else -> _tmpvar23 = BuzzerOneB;
               fi;
               NBuzzerOneB = _tmpvar23;
            
            fi;
            
            SettingbuzzerS = BuzzerOneBbuzzer;
            SettingHighModeend = BuzzerOneBend;
            
            if
            :: (SettingHighModeend && Settingclosed) -> _tmpvar18 = SettingSaveMode;
                                                                    resetSettingSaveMode = true;
                                                                    resetSettingHighMode = true;
            :: else -> _tmpvar18 = Setting;
            fi;
            NSetting = _tmpvar18;
         
         :: (Setting == SettingMilkMode) -> 
            
            if
            :: SettingsettingButton -> _tmpvar25 = Settingdt;
            :: else -> _tmpvar25 = 0;
            fi;
            SettingMilkModewait = _tmpvar25;
            SettingMilkModestart = (((LSettingMilkModewait >= 1) && (!SettingsettingButton)) && Settingclosed);
            Settingsetting = 3;
            BuzzerOneBstart = SettingMilkModestart;
            BuzzerOneBdt = Settingdt;
            
            
            if
            
            :: (BuzzerOneB == BuzzerOneBRun) -> 
               
               BuzzerOneBRunwait = BuzzerOneBdt;
               if
               :: (BuzzerOneBRunwait >= 1) -> _tmpvar27 = true;
               :: else -> _tmpvar27 = false;
               fi;
               BuzzerOneBend = _tmpvar27;
               if
               :: (BuzzerOneBRunwait < 1) -> _tmpvar28 = true;
               :: else -> _tmpvar28 = false;
               fi;
               BuzzerOneBbuzzer = _tmpvar28;
               
               if
               :: (BuzzerOneBRunwait >= 1) -> _tmpvar26 = BuzzerOneBStop;
                                                          resetBuzzerOneBStop = true;
                                                          resetBuzzerOneBRun = true;
               :: else -> _tmpvar26 = BuzzerOneB;
               fi;
               NBuzzerOneB = _tmpvar26;
            
            :: (BuzzerOneB == BuzzerOneBStop) -> 
               
               BuzzerOneBend = false;
               BuzzerOneBbuzzer = false;
               
               if
               :: BuzzerOneBstart -> _tmpvar29 = BuzzerOneBRun;
                                                 resetBuzzerOneBRun = true;
                                                 resetBuzzerOneBStop = true;
               :: else -> _tmpvar29 = BuzzerOneB;
               fi;
               NBuzzerOneB = _tmpvar29;
            
            fi;
            
            SettingbuzzerS = BuzzerOneBbuzzer;
            SettingMilkModeend = BuzzerOneBend;
            
            if
            :: (SettingMilkModeend && Settingclosed) -> _tmpvar24 = SettingHighMode;
                                                                    resetSettingHighMode = true;
                                                                    resetSettingMilkMode = true;
            :: else -> _tmpvar24 = Setting;
            fi;
            NSetting = _tmpvar24;
         
         :: (Setting == SettingSaveMode) -> 
            
            if
            :: SettingsettingButton -> _tmpvar31 = Settingdt;
            :: else -> _tmpvar31 = 0;
            fi;
            SettingSaveModewait = _tmpvar31;
            SettingSaveModestart = (((LSettingSaveModewait >= 1) && (!SettingsettingButton)) && Settingclosed);
            Settingsetting = 2;
            BuzzerOneBstart = SettingSaveModestart;
            BuzzerOneBdt = Settingdt;
            
            
            if
            
            :: (BuzzerOneB == BuzzerOneBRun) -> 
               
               BuzzerOneBRunwait = BuzzerOneBdt;
               if
               :: (BuzzerOneBRunwait >= 1) -> _tmpvar33 = true;
               :: else -> _tmpvar33 = false;
               fi;
               BuzzerOneBend = _tmpvar33;
               if
               :: (BuzzerOneBRunwait < 1) -> _tmpvar34 = true;
               :: else -> _tmpvar34 = false;
               fi;
               BuzzerOneBbuzzer = _tmpvar34;
               
               if
               :: (BuzzerOneBRunwait >= 1) -> _tmpvar32 = BuzzerOneBStop;
                                                          resetBuzzerOneBStop = true;
                                                          resetBuzzerOneBRun = true;
               :: else -> _tmpvar32 = BuzzerOneB;
               fi;
               NBuzzerOneB = _tmpvar32;
            
            :: (BuzzerOneB == BuzzerOneBStop) -> 
               
               BuzzerOneBend = false;
               BuzzerOneBbuzzer = false;
               
               if
               :: BuzzerOneBstart -> _tmpvar35 = BuzzerOneBRun;
                                                 resetBuzzerOneBRun = true;
                                                 resetBuzzerOneBStop = true;
               :: else -> _tmpvar35 = BuzzerOneB;
               fi;
               NBuzzerOneB = _tmpvar35;
            
            fi;
            
            SettingbuzzerS = BuzzerOneBbuzzer;
            SettingSaveModeend = BuzzerOneBend;
            
            if
            :: (SettingSaveModeend && Settingclosed) -> _tmpvar30 = SettingMilkMode;
                                                                    resetSettingMilkMode = true;
                                                                    resetSettingSaveMode = true;
            :: else -> _tmpvar30 = Setting;
            fi;
            NSetting = _tmpvar30;
         
         fi;
         
         
         Mainkeeptemp = Settingsetting;
         
         MainbuzzerS = SettingbuzzerS;
         Potplug = true;
         Potclosed = Mainclosed;
         Potwater = Mainwater;
         Potthermistor = Mainthermistor;
         Potlocklamp = Mainlocklamp;
         PotsupplyButton = MainsupplyButton;
         PotboilButton = MainboilButton;
         Potkeeptemp = Mainkeeptemp;
         Potdt = Maindt;
         Potpotconst = 1;
         
         
         if
         
         :: (Pot == PotBoilMode) -> 
            
            Pottemperature = Potthermistor;
            Potsupply = false;
            Potkeeplamp = false;
            if
            :: (Potthermistor < 100) -> _tmpvar39 = true;
            :: else -> _tmpvar39 = false;
            fi;
            Potheater = _tmpvar39;
            PotbuzzerP = false;
            Potboillamp = true;
            Potbattery = true;
            Boiledthermistor = Potthermistor;
            Boileddt = Potdt;
            if
            :: (Boiledthermistor >= 100) -> _tmpvar40 = true;
            :: else -> _tmpvar40 = LBoiledreached;
            fi;
            Boiledreached = _tmpvar40;
            if
            :: Boiledreached -> _tmpvar41 = Boileddt;
            :: else -> _tmpvar41 = LBoiledwait;
            fi;
            Boiledwait = _tmpvar41;
            if
            :: (Boiledwait >= 1) -> _tmpvar42 = true;
            :: else -> _tmpvar42 = false;
            fi;
            Boiledboiled = _tmpvar42;
            PotBoilModeboiled = Boiledboiled;
            
            if
            :: (Potthermistor > 110) -> _tmpvar38 = PotErrorMode;
                                                    resetPotErrorMode = true;
                                                    resetPotBoilMode = true;
            :: else -> if
                       :: (((!Potclosed) || (Potwater == 0)) || (Potwater == 5)) -> 
                       _tmpvar37 = PotIdleMode;
                                   resetPotIdleMode = true;
                                   resetPotBoilMode = true;
                       :: else -> if
                                  :: PotBoilModeboiled -> _tmpvar36 = 
                                                          PotKeepMode;
                                                          resetPotKeepMode = true;
                                                          resetPotBoilMode = true;
                                  :: else -> _tmpvar36 = Pot;
                                  fi;
                                  _tmpvar37 = _tmpvar36;
                       fi;
                       _tmpvar38 = _tmpvar37;
            fi;
            NPot = _tmpvar38;
         
         :: (Pot == PotErrorMode) -> 
            
            Pottemperature = Potthermistor;
            Potsupply = false;
            Potkeeplamp = false;
            Potheater = false;
            PotbuzzerP = true;
            Potboillamp = false;
            Potbattery = false;
            
            NPot = Pot;
         
         :: (Pot == PotIdleMode) -> 
            
            PotIdleModeidleconst = 1;
            Pottemperature = 200;
            Potsupply = false;
            Potkeeplamp = false;
            Potheater = false;
            PotbuzzerP = false;
            Potboillamp = false;
            Potbattery = true;
            
            if
            :: ((Potclosed && (Potwater != 5)) && (Potwater != 0)) -> 
            _tmpvar43 = PotBoilMode;
                        resetPotBoilMode = true;
                        resetPotIdleMode = true;
            :: else -> _tmpvar43 = Pot;
            fi;
            NPot = _tmpvar43;
         
         :: (Pot == PotKeepMode) -> 
            
            Pottemperature = Potthermistor;
            if
            :: (Potkeeptemp == 1) -> _tmpvar48 = 98;
            :: else -> if
                       :: (Potkeeptemp == 2) -> _tmpvar47 = 90;
                       :: else -> _tmpvar47 = 60;
                       fi;
                       _tmpvar48 = _tmpvar47;
            fi;
            PotKeepModetemp = _tmpvar48;
            PotKeepModemcounter = Potdt;
            PotKeepModempulse = (LPotKeepModemcounter > PotKeepModemcounter);
            if
            :: PotKeepModempulse -> _tmpvar49 = Potthermistor;
            :: else -> _tmpvar49 = LPotKeepModemtemp;
            fi;
            PotKeepModemtemp = _tmpvar49;
            PotKeepModemdown = (LPotKeepModemtemp > PotKeepModemtemp);
            Potkeeplamp = true;
            if
            :: (PotKeepModemdown && ((PotKeepModetemp - Potthermistor) >= 8)) -> 
            _tmpvar50 = true;
            :: else -> _tmpvar50 = false;
            fi;
            PotKeepModeerrorB = _tmpvar50;
            if
            :: (Potthermistor > 98) -> _tmpvar51 = Potdt;
            :: else -> _tmpvar51 = 0;
            fi;
            PotKeepModeerrorA = _tmpvar51;
            Potboillamp = false;
            Potbattery = true;
            if
            :: (((((PotsupplyButton && (Potwater != 0)) && (Potwater != 5)) && Potclosed) && Potbattery) && (!Potlocklamp)) -> 
            _tmpvar52 = true;
            :: else -> _tmpvar52 = false;
            fi;
            Potsupply = _tmpvar52;
            Heatertemp = PotKeepModetemp;
            Heaterthermistor = Potthermistor;
            Heatert = 0;
            if
            :: (Heaterthermistor < Heatertemp) -> _tmpvar53 = true;
            :: else -> _tmpvar53 = false;
            fi;
            Heaterheater = _tmpvar53;
            Heaterdt = 0;
            Potheater = Heaterheater;
            BoilboilButton = PotboilButton;
            Boildt = Potdt;
            if
            :: BoilboilButton -> _tmpvar54 = Boildt;
            :: else -> _tmpvar54 = 0;
            fi;
            Boilwait = _tmpvar54;
            Boiltmp = 1;
            Boilstart = ((!BoilboilButton) && (LBoilwait >= 1));
            BuzzerOnestart = Boilstart;
            BuzzerOnedt = Boildt;
            
            
            if
            
            :: (BuzzerOne == BuzzerOneRun) -> 
               
               BuzzerOneRunwait = BuzzerOnedt;
               if
               :: (BuzzerOneRunwait >= 1) -> _tmpvar56 = true;
               :: else -> _tmpvar56 = false;
               fi;
               BuzzerOneend = _tmpvar56;
               if
               :: (BuzzerOneRunwait < 1) -> _tmpvar57 = true;
               :: else -> _tmpvar57 = false;
               fi;
               BuzzerOnebuzzer = _tmpvar57;
               
               if
               :: (BuzzerOneRunwait >= 1) -> _tmpvar55 = BuzzerOneStop;
                                                         resetBuzzerOneStop = true;
                                                         resetBuzzerOneRun = true;
               :: else -> _tmpvar55 = BuzzerOne;
               fi;
               NBuzzerOne = _tmpvar55;
            
            :: (BuzzerOne == BuzzerOneStop) -> 
               
               BuzzerOneend = false;
               BuzzerOnebuzzer = false;
               
               if
               :: BuzzerOnestart -> _tmpvar58 = BuzzerOneRun;
                                                resetBuzzerOneRun = true;
                                                resetBuzzerOneStop = true;
               :: else -> _tmpvar58 = BuzzerOne;
               fi;
               NBuzzerOne = _tmpvar58;
            
            fi;
            
            
            BoilbuzzerP = BuzzerOnebuzzer;
            
            Boilboil = BuzzerOneend;
            PotKeepModeboil = Boilboil;
            PotbuzzerP = BoilbuzzerP;
            
            if
            :: (((Potthermistor > 110) || (PotKeepModeerrorA >= 1)) || PotKeepModeerrorB) -> 
            _tmpvar46 = PotErrorMode;
                        resetPotErrorMode = true;
                        resetPotKeepMode = true;
            :: else -> if
                       :: (((!Potclosed) || (Potwater == 0)) || (Potwater == 5)) -> 
                       _tmpvar45 = PotIdleMode;
                                   resetPotIdleMode = true;
                                   resetPotKeepMode = true;
                       :: else -> if
                                  :: (PotKeepModeboil && (!Potsupply)) -> 
                                  _tmpvar44 = PotBoilMode;
                                              resetPotBoilMode = true;
                                              resetPotKeepMode = true;
                                  :: else -> _tmpvar44 = Pot;
                                  fi;
                                  _tmpvar45 = _tmpvar44;
                       fi;
                       _tmpvar46 = _tmpvar45;
            fi;
            NPot = _tmpvar46;
         
         fi;
         
         
         Mainheater = Potheater;
         
         Mainbattery = Potbattery;
         
         Maintemperature = Pottemperature;
         
         Mainboillamp = Potboillamp;
         
         Mainkeeplamp = Potkeeplamp;
         
         Mainsup = Potsupply;
         
         MainbuzzerP = PotbuzzerP;
         Mainsupply = Mainsup;
         calc_atomic();
         
         
         LBuzzerThreeRunwait = BuzzerThreeRunwait;
         LBuzzerOneDRunwait = BuzzerOneDRunwait;
         LBuzzerOneCRunwait = BuzzerOneCRunwait;
         LTimerminute = Timerminute;
         LTimersecond = Timersecond;
         LTimerRuncounter = TimerRuncounter;
         LTimerRunresetInput = TimerRunresetInput;
         LTimerRunwaitInput = TimerRunwaitInput;
         LTimerStopendInput = TimerStopendInput;
         LTimerStopwaitInput = TimerStopwaitInput;
         LSettingHighModewait = SettingHighModewait;
         LSettingMilkModewait = SettingMilkModewait;
         LSettingSaveModewait = SettingSaveModewait;
         LLocklock = Locklock;
         LLockLockedwait = LockLockedwait;
         LLockUnlockedwait = LockUnlockedwait;
         LBoiledreached = Boiledreached;
         LBoiledwait = Boiledwait;
         LBoilwait = Boilwait;
         LPotKeepModemcounter = PotKeepModemcounter;
         LPotKeepModemtemp = PotKeepModemtemp;
         LMainsupply = Mainsupply;
         
         if
         :: (resetBuzzerThreeRun) -> reset_BuzzerThreeRun(); resetBuzzerThreeRun = 0;
         :: else -> skip
         fi;
         if
         :: (resetBuzzerThreeStop) -> reset_BuzzerThreeStop(); resetBuzzerThreeStop = 0;
         :: else -> skip
         fi;
         BuzzerThree = NBuzzerThree;
         if
         :: (resetBuzzerOneDRun) -> reset_BuzzerOneDRun(); resetBuzzerOneDRun = 0;
         :: else -> skip
         fi;
         if
         :: (resetBuzzerOneDStop) -> reset_BuzzerOneDStop(); resetBuzzerOneDStop = 0;
         :: else -> skip
         fi;
         BuzzerOneD = NBuzzerOneD;
         if
         :: (resetBuzzerOneCRun) -> reset_BuzzerOneCRun(); resetBuzzerOneCRun = 0;
         :: else -> skip
         fi;
         if
         :: (resetBuzzerOneCStop) -> reset_BuzzerOneCStop(); resetBuzzerOneCStop = 0;
         :: else -> skip
         fi;
         BuzzerOneC = NBuzzerOneC;
         if
         :: (resetTimerRun) -> reset_TimerRun(); resetTimerRun = 0;
         :: else -> skip
         fi;
         if
         :: (resetTimerStop) -> reset_TimerStop(); resetTimerStop = 0;
         :: else -> skip
         fi;
         Timer = NTimer;
         if
         :: (resetBuzzerOneBRun) -> reset_BuzzerOneBRun(); resetBuzzerOneBRun = 0;
         :: else -> skip
         fi;
         if
         :: (resetBuzzerOneBStop) -> reset_BuzzerOneBStop(); resetBuzzerOneBStop = 0;
         :: else -> skip
         fi;
         BuzzerOneB = NBuzzerOneB;
         if
         :: (resetSettingHighMode) -> reset_SettingHighMode(); resetSettingHighMode = 0;
         :: else -> skip
         fi;
         if
         :: (resetSettingMilkMode) -> reset_SettingMilkMode(); resetSettingMilkMode = 0;
         :: else -> skip
         fi;
         if
         :: (resetSettingSaveMode) -> reset_SettingSaveMode(); resetSettingSaveMode = 0;
         :: else -> skip
         fi;
         Setting = NSetting;
         if
         :: (resetLockLocked) -> reset_LockLocked(); resetLockLocked = 0;
         :: else -> skip
         fi;
         if
         :: (resetLockUnlocked) -> reset_LockUnlocked(); resetLockUnlocked = 0;
         :: else -> skip
         fi;
         Lock = NLock;
         if
         :: (resetCoverClose) -> reset_CoverClose(); resetCoverClose = 0;
         :: else -> skip
         fi;
         if
         :: (resetCoverOpen) -> reset_CoverOpen(); resetCoverOpen = 0;
         :: else -> skip
         fi;
         Cover = NCover;
         if
         :: (resetBuzzerOneRun) -> reset_BuzzerOneRun(); resetBuzzerOneRun = 0;
         :: else -> skip
         fi;
         if
         :: (resetBuzzerOneStop) -> reset_BuzzerOneStop(); resetBuzzerOneStop = 0;
         :: else -> skip
         fi;
         BuzzerOne = NBuzzerOne;
         if
         :: (resetPotBoilMode) -> reset_PotBoilMode(); resetPotBoilMode = 0;
         :: else -> skip
         fi;
         if
         :: (resetPotErrorMode) -> reset_PotErrorMode(); resetPotErrorMode = 0;
         :: else -> skip
         fi;
         if
         :: (resetPotIdleMode) -> reset_PotIdleMode(); resetPotIdleMode = 0;
         :: else -> skip
         fi;
         if
         :: (resetPotKeepMode) -> reset_PotKeepMode(); resetPotKeepMode = 0;
         :: else -> skip
         fi;
         Pot = NPot;
       }
     }
  check: skip;
  od
}
ltl {[](PotMain@check -> (a1 && a2 -> <>a3))}
