#!/usr/bin/osascript

on run {title, confno, pwd}
    set link to "zoommtg://zoom.us/join?action=join&confno=" & confno & "&pwd=" & pwd
    display alert title as critical buttons {"Cancel", "Join"} default button "Join" cancel button "Cancel"
    set the button_pressed to the button returned of the result
    if the button_pressed is "Join" then
        open location link
    end if
end run
