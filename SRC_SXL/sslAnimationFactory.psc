scriptname sslAnimationFactory extends Quest hidden

; ============================================================================
; ============================================================================
; THIS IS COPY OF ORIGINAL SCRIPT WHICH IS ONLY USED FOR COMPILING UD SCRIPTS 
; ============================================================================
; ============================================================================

sslAnimationSlots property Slots auto hidden

int property Male = 0 autoreadonly hidden
int property Female = 1 autoreadonly hidden
int property Creature = 2 autoreadonly hidden
int property CreatureMale = 2 autoreadonly hidden
int property CreatureFemale = 3 autoreadonly hidden
int property Vaginal = 1 autoreadonly hidden
int property Oral = 2 autoreadonly hidden
int property Anal = 3 autoreadonly hidden
int property VaginalOral = 4 autoreadonly hidden
int property VaginalAnal = 5 autoreadonly hidden
int property OralAnal = 6 autoreadonly hidden
int property VaginalOralAnal = 7 autoreadonly hidden
int property Misc = 0 autoreadonly hidden
int property Sexual = 1 autoreadonly hidden
int property Foreplay = 2 autoreadonly hidden
Sound property Squishing auto hidden
Sound property Sucking auto hidden
Sound property SexMix auto hidden
Sound property Squirting auto hidden
bool property IsCreatureFactory auto hidden

function PrepareFactory()
endFunction

function PrepareFactoryCreatures()
endFunction

function RegisterAnimation(string Registrar)
endFunction

sslBaseAnimation function Create(int id)
endFunction

function Initialize()
endfunction

function RegisterOtherCategories()
endFunction

function RegisterCategory(string Category)
endFunction

sslBaseAnimation function RegisterJSON(string Filename)
endFunction

bool function ValidateJSON(string Filename)
endFunction

Sound function StringSFX(string sfx)
endFunction

function FactoryLog(string msg)
endFunction