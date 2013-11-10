on textualcmd()
    set np to "is listening to Enrei's dad moaning"
    if isRunning("iTunes") then
        tell application "iTunes"
            if player state is playing then set np to "is now playing " & artist of current track & " - " & name of current track & " (" & album of current track & ")"
        end tell
    end if
    return "/me " & np
end textualcmd

on isRunning(mediaPlayer)
    tell application "System Events"
        tell application "System Events" to return exists (processes where name is mediaPlayer)
    end tell
end isRunning
