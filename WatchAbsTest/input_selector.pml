inline select_input() {
  atomic {
    if
    :: skip -> MainpressedA = true
    :: skip -> MainpressedA = false
    fi;
    if
    :: skip -> MainpressedB = true
    :: skip -> MainpressedB = false
    fi;
    if
    :: skip -> MainpressedC = true
    :: skip -> MainpressedC = false
    fi;
    if
    :: skip -> Mainelapsed = 0;
    :: skip -> Mainelapsed = 1;
    fi;
  }
}