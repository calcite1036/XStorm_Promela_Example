inline select_input() {
  atomic {
    if
    :: MaincoverSensor = true
    :: MaincoverSensor = false
    fi;
    if
    :: MaintimerButton = true
    :: MaintimerButton = false
    fi;
    if
    :: MainsettingButton = true
    :: MainsettingButton = false
    fi;
    if
    :: MainsupplyButton = true
    :: MainsupplyButton = false
    fi;
    if
    :: MainboilButton = true
    :: MainboilButton = false
    fi;
    if
    :: MainlockButton = true
    :: MainlockButton = false
    fi;
    if
    :: MainwaterSensor1 = true
    :: MainwaterSensor1 = false
    fi;
    if
    :: MainwaterSensor1 -> MainwaterSensor2 = true
    :: MainwaterSensor2 = false
    fi;
    if
    :: MainwaterSensor2 -> MainwaterSensor3 = true
    :: MainwaterSensor3 = false
    fi;
    if
    :: MainwaterSensor3 -> MainwaterSensor4 = true
    :: MainwaterSensor4 = false
    fi;
    if
    :: MainwaterSensor4 -> MainfullSensor = true
    :: MainfullSensor = false
    fi;
    select (Maindt : 0..1);
    if
    :: Mainthermistor = 50
    :: Mainthermistor = 60
    :: Mainthermistor = 90
    :: Mainthermistor = 98
    :: Mainthermistor = 100
    :: Mainthermistor = 120
    fi;
  }
}

