    sc39 & f1:: {
        DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
    }
    sc39 & f2:: {
        Shutdown 1
    }
    sc39 & f3:: {
        Shutdown 2
    }
