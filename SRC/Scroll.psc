scriptname scroll extends form hidden
function cast(objectreference aksource, objectreference aktarget=none) native 
float function getcasttime() native
perk function getperk() native
int function getnumeffects() native
float function getntheffectmagnitude(int index) native
int function getntheffectarea(int index) native
int function getntheffectduration(int index) native
magiceffect function getntheffectmagiceffect(int index) native
int function getcostliesteffectindex() native
function setntheffectmagnitude(int index, float value) native
function setntheffectarea(int index, int value) native
function setntheffectduration(int index, int value) native
equipslot function getequiptype() native
function setequiptype(equipslot type) native
float[] function geteffectmagnitudes() native
int[] function geteffectareas() native
int[] function geteffectdurations() native
magiceffect[] function getmagiceffects() native
;This file was cleaned with papyrusSourceHeadliner