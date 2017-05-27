var aerotow_dialog = gui.Dialog.new("sim/gui/dialogs/ASK13/aerotow/dialog", 
                                    "Aircraft/ASK13/Dialogs/aerotow.xml");
var winch_dialog = gui.Dialog.new("sim/gui/dialogs/ASK13/winch/dialog", 
                                    "Aircraft/ASK13/Dialogs/winch.xml");
var groundservice_dialog = gui.Dialog.new("sim/gui/dialogs/ASK13/groundservice/dialog", 
                                    "Aircraft/ASK13/Dialogs/groundservice.xml");
var options_dialog = gui.Dialog.new("sim/gui/dialogs/ASK13/options/dialog", 
                                    "Aircraft/ASK13/Dialogs/options.xml");
var winchhelp_dialog = gui.Dialog.new("sim/gui/dialogs/ASK13/winchhelp/dialog", 
                                    "Aircraft/ASK13/Dialogs/winchhelp.xml");


                                    
                                    

setlistener("/sim/signals/fdm-initialized", func {
    if(getprop("/sim/config/hide-winch-msg")==0){
        winchhelp_dialog.open()
    }
    });
