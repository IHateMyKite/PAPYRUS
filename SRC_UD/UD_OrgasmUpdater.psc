Scriptname UD_OrgasmUpdater extends Quest conditional

import UnforgivingDevicesMain

UnforgivingDevicesMain              Property    UDmain              auto
UD_OrgasmManager                    Property    UDOM                auto
UD_CustomDevices_NPCSlotsManager    Property    UDNPCM              auto
Bool                                Property    Ready   = False     auto conditional

Bool _IsEnabled = True
Bool Property Enabled Hidden
    Function Set(Bool abVal)
        _IsEnabled = abVal
        if _IsEnabled
            GoToState("")
        else
            GoToState("Paused")
        endif
    EndFunction
    Bool Function Get()
        return _IsEnabled
    EndFunction
EndProperty

Int Property UD_UpdateTime  Hidden
    Int Function Get()
        return Round(UDmain.UDGV.UDG_NPCOrgasmUpT.Value)
    EndFunction
EndProperty

Event OnInit()
    RegisterForSingleUpdate(15.0)
EndEvent

Event OnUpdate()
    if !Ready
        Ready = True
        InitSlots()
    endif
    if UDmain.IsEnabled()
        Evaluate()
        RegisterForSingleUpdate(UD_UpdateTime)
    else
        RegisterForSingleUpdate(30.0)
    endif
EndEvent

Function InitSlots()
    Int loc_id = UDNPCM.GetNumAliases() - 1 ;all except player
    while loc_id
        loc_id -= 1
        UD_CustomDevice_NPCSlot loc_Slot = UDNPCM.getNPCSlotByIndex(loc_id)
        if loc_Slot && loc_Slot.IsUsed()
            loc_Slot.InitArousalUpdate()
            loc_Slot.InitOrgasmUpdate()
        endif
    endwhile
EndFunction

Function Evaluate()
    EvaluateSlots(UDNPCM, UD_UpdateTime)
    Int loc_SSlotsNum = UDNPCM.GetNumberOfStatisSlots()
    while loc_SSlotsNum
        loc_SSlotsNum -= 1
        EvaluateSlots(UDNPCM.GetNthStaticSlots(loc_SSlotsNum), UD_UpdateTime)
    endwhile
EndFunction

Function EvaluateSlots(UD_CustomDevices_NPCSlotsManager akSlots, Int aiUpdateTime)
    Int loc_id = akSlots.GetNumAliases() ;all except player
    while loc_id
        loc_id -= 1
        UD_CustomDevice_NPCSlot loc_Slot = akSlots.getNPCSlotByIndex(loc_id)
        if SlotOrgasmUpdateEnabled(loc_Slot)
            UpdateVibrators(loc_Slot,aiUpdateTime)
            if !loc_Slot.IsPlayer()
                UpdateArousal(loc_Slot,aiUpdateTime)
                UpdateOrgasm(loc_Slot,aiUpdateTime)
            endif
        endif
    endwhile
EndFUnction

Bool Function SlotOrgasmUpdateEnabled(UD_CustomDevice_NPCSlot akSlot)
    if !akSlot || !akSlot.GetActor()
        return false
    endif
    Actor   loc_actor   = akSlot.GetActor()
    Bool    loc_cond    = true
    ;loc_cond = loc_cond && loc_actor.Is3DLoaded() ;only enable update if actor 3D is loaded
    return loc_cond
EndFunction

Function UpdateArousal(UD_CustomDevice_NPCSlot akSlot,Int aiUpdateTime)
    akSlot.UpdateArousal(aiUpdateTime)
EndFunction

Function UpdateOrgasm(UD_CustomDevice_NPCSlot akSlot,Float afUpdateTime)
    akSlot.UpdateOrgasm(afUpdateTime)
EndFunction

Function UpdateVibrators(UD_CustomDevice_NPCSlot akSlot,Int aiUpdateTime)
    akSlot.VibrateUpdate(aiUpdateTime)
EndFunction

State Paused
    Event OnUpdate()
        RegisterForSingleUpdate(UD_UpdateTime*3)
    EndEvent
    Bool Function SlotOrgasmUpdateEnabled(UD_CustomDevice_NPCSlot akSlot)
        return False
    EndFunction
    Function Evaluate()
    EndFunction
EndState
State Disabled
    Event OnUpdate()
        RegisterForSingleUpdate(UD_UpdateTime*3)
    EndEvent
    Bool Function SlotOrgasmUpdateEnabled(UD_CustomDevice_NPCSlot akSlot)
        return False
    EndFunction
    Function Evaluate()
    EndFunction
EndState