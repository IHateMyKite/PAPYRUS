scriptname PapyrusUtil Hidden

; ============================================================================
; ============================================================================
; THIS IS COPY OF ORIGINAL SCRIPT WHICH IS ONLY USED FOR COMPILING UD SCRIPTS 
; ============================================================================
; ============================================================================

int function GetVersion() global native
int function GetScriptVersion() global
endFunction
Actor[] function ActorArray(int size, Actor filler = none) global native
Actor[] function ResizeActorArray(Actor[] ArrayValues, int toSize, Actor filler = none) global native
ObjectReference[] function ObjRefArray(int size, ObjectReference filler = none) global native
ObjectReference[] function ResizeObjRefArray(ObjectReference[] ArrayValues, int toSize, ObjectReference filler = none) global native
float[] function PushFloat(float[] ArrayValues, float push) global native
int[] function PushInt(int[] ArrayValues, int push) global native
string[] function PushString(string[] ArrayValues, string push) global native
Form[] function PushForm(Form[] ArrayValues, Form push) global native
Alias[] function PushAlias(Alias[] ArrayValues, Alias push) global native
Actor[] function PushActor(Actor[] ArrayValues, Actor push) global native
ObjectReference[] function PushObjRef(ObjectReference[] ArrayValues, ObjectReference push) global native
float[] function RemoveFloat(float[] ArrayValues, float ToRemove) global native
int[] function RemoveInt(int[] ArrayValues, int ToRemove) global native
string[] function RemoveString(string[] ArrayValues, string ToRemove) global native
Form[] function RemoveForm(Form[] ArrayValues, Form ToRemove) global native
Alias[] function RemoveAlias(Alias[] ArrayValues, Alias ToRemove) global native
Actor[] function RemoveActor(Actor[] ArrayValues, Actor ToRemove) global native
ObjectReference[] function RemoveObjRef(ObjectReference[] ArrayValues, ObjectReference ToRemove) global native
int function CountFloat(float[] ArrayValues, float EqualTo) global native
int function CountInt(int[] ArrayValues, int EqualTo) global native
int function CountBool(bool[] ArrayValues, bool EqualTo) global native
int function CountString(string[] ArrayValues, string EqualTo) global native
int function CountForm(Form[] ArrayValues, Form EqualTo) global native
int function CountAlias(Alias[] ArrayValues, Alias EqualTo) global native
int function CountActor(Actor[] ArrayValues, Actor EqualTo) global native
int function CountObjRef(ObjectReference[] ArrayValues, ObjectReference EqualTo) global native
float[] function MergeFloatArray(float[] ArrayValues1, float[] ArrayValues2, bool RemoveDupes = false) global native
int[] function MergeIntArray(int[] ArrayValues1, int[] ArrayValues2, bool RemoveDupes = false) global native
string[] function MergeStringArray(string[] ArrayValues1, string[] ArrayValues2, bool RemoveDupes = false) global native
Form[] function MergeFormArray(Form[] ArrayValues1, Form[] ArrayValues2, bool RemoveDupes = false) global native
Alias[] function MergeAliasArray(Alias[] ArrayValues1, Alias[] ArrayValues2, bool RemoveDupes = false) global native
Actor[] function MergeActorArray(Actor[] ArrayValues1, Actor[] ArrayValues2, bool RemoveDupes = false) global native
ObjectReference[] function MergeObjRefArray(ObjectReference[] ArrayValues1, ObjectReference[] ArrayValues2, bool RemoveDupes = false) global native
float[] function SliceFloatArray(float[] ArrayValues, int StartIndex, int EndIndex = -1) global native
int[] function SliceIntArray(int[] ArrayValues, int StartIndex, int EndIndex = -1) global native
string[] function SliceStringArray(string[] ArrayValues, int StartIndex, int EndIndex = -1) global native
Form[] function SliceFormArray(Form[] ArrayValues, int StartIndex, int EndIndex = -1) global native
Alias[] function SliceAliasArray(Alias[] ArrayValues, int StartIndex, int EndIndex = -1) global native
Actor[] function SliceActorArray(Actor[] ArrayValues, int StartIndex, int EndIndex = -1) global native
ObjectReference[] function SliceObjRefArray(ObjectReference[] ArrayValues, int StartIndex, int EndIndex = -1) global native
function SortIntArray(int[] ArrayValues, bool descending = false) global native
function SortFloatArray(float[] ArrayValues, bool descending = false) global native
function SortStringArray(string[] ArrayValues, bool descending = false) global native
string[] function ClearEmpty(string[] ArrayValues) global
endFunction
Form[] function ClearNone(Form[] ArrayValues) global
endFunction
int function CountFalse(bool[] ArrayValues) global
endFunction
int function CountTrue(bool[] ArrayValues) global
endFunction
int function CountNone(Form[] ArrayValues) global
endFunction
string[] function StringSplit(string ArgString, string Delimiter = ",") global native
string function StringJoin(string[] Values, string Delimiter = ",") global native
int function AddIntValues(int[] Values) global native
float function AddFloatValues(float[] Values) global native
int function ClampInt(int value, int min, int max) global native
float function ClampFloat(float value, float min, float max) global native
int function WrapInt(int value, int end, int start = 0) global native
float function WrapFloat(float value, float end, float start = 0.0) global native
int function SignInt(bool doSign, int value) global native
float function SignFloat(bool doSign, float value) global native
bool[] function ResizeBoolArray(bool[] ArrayValues, int toSize, bool filler = false) global
endFunction
bool[] function PushBool(bool[] ArrayValues, bool push) global
endFunction
bool[] function RemoveBool(bool[] ArrayValues, bool ToRemove) global
endFunction
bool[] function MergeBoolArray(bool[] ArrayValues1, bool[] ArrayValues2, bool RemoveDupes = false) global
endFunction
bool[] function SliceBoolArray(bool[] ArrayValues, int StartIndex, int EndIndex = -1) global
endFunction
float[] function FloatArray(int size, float filler = 0.0) global
endFunction
int[] function IntArray(int size, int filler = 0) global
endFunction
bool[] function BoolArray(int size, bool filler = false) global
endFunction
string[] function StringArray(int size, string filler = "") global
endFunction
Form[] function FormArray(int size, Form filler = none) global
endFunction
Alias[] function AliasArray(int size, Alias filler = none) global
endFunction
float[] function ResizeFloatArray(float[] ArrayValues, int toSize, float filler = 0.0) global
endFunction
int[] function ResizeIntArray(int[] ArrayValues, int toSize, int filler = 0) global
endFunction
string[] function ResizeStringArray(string[] ArrayValues, int toSize, string filler = "") global
endFunction
Form[] function ResizeFormArray(Form[] ArrayValues, int toSize, Form filler = none) global
endFunction
Alias[] function ResizeAliasArray(Alias[] ArrayValues, int toSize, Alias filler = none) global
endFunction