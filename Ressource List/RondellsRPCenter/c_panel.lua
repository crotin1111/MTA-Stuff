
GUIEditor = {
    tab = {},
    scrollpane = {},
    tabpanel = {},
    label = {},
    button = {},
    memo = {}
}
addEventHandler("onClientResourceStart", resourceRoot,
    function()
        rondellsRPCENTER = guiCreateWindow(14, 188, 590, 524, "Rondell's Roleplay Center", false)
        guiWindowSetSizable(rondellsRPCENTER, false)
        guiSetVisible(rondellsRPCENTER, false)

        GUIEditor.label[1] = guiCreateLabel(10, 34, 564, 49, "Welcome!", false, rondellsRPCENTER)
        guiSetFont(GUIEditor.label[1], "default-bold-small")
        GUIEditor.label[2] = guiCreateLabel(10, 51, 564, 32, "This is a panel created by Rondell, this should contain some commands created by Rondell, this panel is a W.I.P so expect some features to not work properly.", false, rondellsRPCENTER)
        guiLabelSetHorizontalAlign(GUIEditor.label[2], "left", true)
        GUIEditor.tabpanel[1] = guiCreateTabPanel(9, 91, 572, 398, false, rondellsRPCENTER)

        GUIEditor.tab[1] = guiCreateTab("Character Actions", GUIEditor.tabpanel[1])

        GUIEditor.scrollpane[1] = guiCreateScrollPane(9, 13, 553, 350, false, GUIEditor.tab[1])

        GUIEditor.button[1] = guiCreateButton(10, 10, 86, 29, "Suicide", false, GUIEditor.scrollpane[1])


        GUIEditor.tab[2] = guiCreateTab("Server Actions", GUIEditor.tabpanel[1])

        GUIEditor.label[3] = guiCreateLabel(12, 16, 541, 68, "WARNING!!!", false, GUIEditor.tab[2])
        guiSetFont(GUIEditor.label[3], "default-bold-small")
        guiLabelSetColor(GUIEditor.label[3], 253, 0, 0)

        GUIEditor.label[4] = guiCreateLabel(0, 18, 542, 51, "These commands may impact the player you use these on and their roleplay situation, only use these if you know what you're doing.", false, GUIEditor.label[3])
        guiLabelSetHorizontalAlign(GUIEditor.label[4], "left", true)

        GUIEditor.scrollpane[2] = guiCreateScrollPane(12, 85, 541, 279, false, GUIEditor.tab[2])

        GUIEditor.memo[1] = guiCreateMemo(9, 11, 257, 33, "Firstname_Lastname", false, GUIEditor.scrollpane[2])
        GUIEditor.button[2] = guiCreateButton(268, 13, 88, 31, "Kill Player", false, GUIEditor.scrollpane[2])


        GUIEditor.tab[3] = guiCreateTab("Blank Panel", GUIEditor.tabpanel[1])

        GUIEditor.button[3] = guiCreateButton(485, 495, 95, 19, "Close Panel", false, rondellsRPCENTER)
        addEventHandler('onClientGUIClick', GUIEditor.button[3], CloseP, false)
        GUIEditor.label[5] = guiCreateLabel(7, 498, 474, 16, "Version 0.1 - Created by Rondell - Made for Spl4z Roleplay Gamemode", false, rondellsRPCENTER)    
    end
)

function CloseP()
    if(guiGetVisible(rondellsRPCENTER) == true) then
        guiSetVisible(rondellsRPCENTER, false)
    end
end

function ShowP()
    if(guiGetVisible(rondellsRPCENTER) == true) then
        outputChatBox("[Rondells RP Center]: Panel is already opened...", 250,0,0, source)
    else
        guiSetVisible(rondellsRPCENTER, true)
    end
end

addCommandHandler('rondell', ShowP, false)
