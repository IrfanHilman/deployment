ʶ
?.?.
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.22v2.9.1-132-g18960c44ad38??
?
Nadam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_8/bias/v
y
(Nadam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_8/bias/v*
_output_shapes
:*
dtype0
?
Nadam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameNadam/dense_8/kernel/v
?
*Nadam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_8/kernel/v*
_output_shapes

:*
dtype0
?
Nadam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_7/bias/v
y
(Nadam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_7/bias/v*
_output_shapes
:*
dtype0
?
Nadam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameNadam/dense_7/kernel/v
?
*Nadam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_7/kernel/v*
_output_shapes

:*
dtype0
?
Nadam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_6/bias/v
y
(Nadam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_6/bias/v*
_output_shapes
:*
dtype0
?
Nadam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*'
shared_nameNadam/dense_6/kernel/v
?
*Nadam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_6/kernel/v*
_output_shapes

:<*
dtype0
?
Nadam/conv1d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*&
shared_nameNadam/conv1d_2/bias/v
{
)Nadam/conv1d_2/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv1d_2/bias/v*
_output_shapes
:<*
dtype0
?
Nadam/conv1d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?<*(
shared_nameNadam/conv1d_2/kernel/v
?
+Nadam/conv1d_2/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv1d_2/kernel/v*#
_output_shapes
:?<*
dtype0
?
Nadam/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?M?*/
shared_name Nadam/embedding_1/embeddings/v
?
2Nadam/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOpNadam/embedding_1/embeddings/v* 
_output_shapes
:
?M?*
dtype0
?
Nadam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_8/bias/m
y
(Nadam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_8/bias/m*
_output_shapes
:*
dtype0
?
Nadam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameNadam/dense_8/kernel/m
?
*Nadam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_8/kernel/m*
_output_shapes

:*
dtype0
?
Nadam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_7/bias/m
y
(Nadam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_7/bias/m*
_output_shapes
:*
dtype0
?
Nadam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameNadam/dense_7/kernel/m
?
*Nadam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_7/kernel/m*
_output_shapes

:*
dtype0
?
Nadam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_6/bias/m
y
(Nadam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_6/bias/m*
_output_shapes
:*
dtype0
?
Nadam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*'
shared_nameNadam/dense_6/kernel/m
?
*Nadam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_6/kernel/m*
_output_shapes

:<*
dtype0
?
Nadam/conv1d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*&
shared_nameNadam/conv1d_2/bias/m
{
)Nadam/conv1d_2/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv1d_2/bias/m*
_output_shapes
:<*
dtype0
?
Nadam/conv1d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?<*(
shared_nameNadam/conv1d_2/kernel/m
?
+Nadam/conv1d_2/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv1d_2/kernel/m*#
_output_shapes
:?<*
dtype0
?
Nadam/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?M?*/
shared_name Nadam/embedding_1/embeddings/m
?
2Nadam/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOpNadam/embedding_1/embeddings/m* 
_output_shapes
:
?M?*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_62375*
value_dtype0	
m

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name62866*
value_dtype0	
|
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
_output_shapes
: *
dtype0
z
Nadam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
j
Nadam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
l
Nadam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
l
Nadam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
h

Nadam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:*
dtype0
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:<*
dtype0
r
conv1d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_nameconv1d_2/bias
k
!conv1d_2/bias/Read/ReadVariableOpReadVariableOpconv1d_2/bias*
_output_shapes
:<*
dtype0

conv1d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?<* 
shared_nameconv1d_2/kernel
x
#conv1d_2/kernel/Read/ReadVariableOpReadVariableOpconv1d_2/kernel*#
_output_shapes
:?<*
dtype0
?
embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?M?*'
shared_nameembedding_1/embeddings
?
*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings* 
_output_shapes
:
?M?*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes	
:?M*
dtype0*??
valueքB҄?MBsBntBampBlikeBfireBuBmBgetBnewBviaBoneBpeopleBvideoByearBdisasterBtimeB	emergencyBwouldBhomeBbodyBbuildingBstormBdayBbombBpoliceBgoBfamilyBsayBgotBnewsBbackBcrashBmanBlifeBsuicideBstillBreBlookBdeathBseeBknowBburningBcarBwarBloveBtwoBcaBgoingB
californiaBworldBtrainBfirstBattackBtodayBmakeBletBfullBpmBwBneedBwantBgoodBaccidentBwomanBtakeBfloodBnuclearBwatchBkilledBweaponBdeadBoldBwayBgtBcollapseBthinkBserviceBmanyBhBnaBcouldBrepoBlastBmayBfatalityBbagBpaBinjuryBhelpBthingBmassBworkBstaBbombingBarmyBplanBcomeBevenBschoolBrightBreallyBforestBanotherBpleaseBhostageBblackBveBobamaB	hiroshimaBfeelBcityBkillBfatalBwildfireBwaterBlolBfearBcasualtyBstateBreadBmuchBhouseBhitBwaveBstopBnearBmhBphotoBneverBllBlegionnaireBgreatBtyphoonBtopBgameBbomberBrunBpBimBhernBgettingBflameBatomicBcauseBareaBwithoutBsmokeBshitBredditBgirlBfaceBeveryoneBdamageBtruckBsaidBnextBliveBboyBthBsoundBpostBlatestBeverBeaBcrossBcontentBshowBsetBrBjapanBinjuredBgodBfallBeveryBcomingBalwaysBxBwindBtonightBthunderstormBstBsinceBroadBhopeBheatB
evacuationBendBwreckBwildBsevereBsaveBrainBoilBnightBheaBgonBfoundBcheckBbBasBwoundedBwellBwarningBupdateBsummerBsirenBmilitaryBmigrantBfuckingB
devastatedBdebrisBstoryBsomeoneBofficialBmadeBlikedBlandB	explosionBpanicBoutbreakBmurderBloudBlittleBfoodBchildBchangeBcallBbridgeBredBmovieBmalaysiaBlotB	lightningBfloodingBdB	confirmedBbusBbloodBbattleBalsoByrBweatherBspillB	screamingBrescuedBrescueBnaturalBlightBheadBhalfBfanBedBchinaBbigBbestBweekBsurvivorBshotBruinBreleasedBphoneB	hurricaneBharmBguyBdestructionB	ambulanceBairBthunderBsurviveBsinkingBsignBriotBminuteBislandBhighBhailBfreeBdustBdrownB
derailmentBdelugeBcurfewB	collisionBcatastropheBwoundBwholeBwhiteBtornadoB	terroristBstockBscreamBputBokBofficerBnBmissingB	hazardousBfailureBevacuateBdevastationBcrushBcountyBcollidedBbadBattackedBzoneBwordBwanBtwitterBtrappedB
structuralBrescuerBrefugeeBplaneBpicBnationalBkeepBhundredBgroupBfuckBfriendBfightBexplodeBengulfedBdetonateBburnedBbombedBbabyBaugustBairplaneBwreckedBviolentBsureBsouthBsaudiB
quarantineBorderBmosqueBmassacreBmarketBleastBkidBiranBhourB
governmentBdrowningB	destroyedB
desolationBderailedBdemolishBcrushedBaroundBwreckageB	windstormB	whirlwindBwentBvolcanoBvBtwisterBtraumaBthoughtBtheBsurvivedBsongBshipBscreamedBriverBrealBrdBpossibleBpkkBissueBhquakeBelectrocutedB	collapsedBchargedBcBboatBbloodyBanniversaryBtroubleBsuspectBsunkBstreetBstandBsinkholeBselfBsecondBquarantinedBpowerBpersonBpastBpandemoniumBohBobliteratedBmurdererBmenBmeltdownBlongBleftB	landslideBinvestigatorBhorribleBhijackerBeyeB	displacedB
detonationB	detonatedBdestroyBdangerBcycloneBcollideBcliffBcalgaryBblewB	beautifulBbangBbaggingBalreadyBtsunamiBtraumatisedBsuppoBstarBsendBsawB	sandstormBreasonB	panickingBheardBhazardBfamineBexplodedBcrashedBcountryBcausedBblownBbleedingBblastBbetterBaugBannihilatedBaffectedBwoBuseBupheavalBturkeyBthankBshoulderBriotingBreunionB	responderBplaceBnearbyBmustBmakingBladyBkBhotB	hijackingB	flattenedBeffectBebayBdueBdroughtBdealBcoolBcaseBcareBcameBbrownBbookBblazingB
armageddonBtragedyBthreeBteamBstayBsoonB	rainstormB	offensiveBniggaBmonthBmeanBlevelBlavaBinsideBelectrocuteBdeclaresBcrewBchemicalBbusinessBbreakingBblightBwaitBvehicleBurB	terrorismBsueB	somethingB	snowstormBriseBlongerBkmBgunBfunBfindBfedexBderailBcenterB	bioterrorBawayB
apocalypseBamericanBairpoBagoBwinBwatchingBtranspoBtrafficBtomorrowBtalkBsiteBshareBsaipanBrazedBplayBpickBobliterationBmusicBmudslideBltBlowBlinkBlineBlabBlaB	inundatedBhijackBhellfireBfeelingBeBdoneBdogBdiedBcatastrophicBbushBanythingBanyoneBactuallyBablazeByeahBusedBtryingBtrenchBtreeBthanksBrubbleBrememberBreactorBpayB
obliterateBmpBmoveBmomentBmediumBisraeliBhearBgBflagB
eyewitnessBdrownedBdriveB
demolitionBdataBcontrolBcoBbelieveBaveBamericaByetBtvBtellB	swallowedBsoudelorBshootingBsensorBsecurityBsecretBsavedBpolicyBpoBopenBmillionBmaybeB	literallyBleatherBlBknockBimageBhorrorBhistoryBhellBhatBdieBdesolateB
demolishedBdelugedBcoupleBbioterrorismBbiggerBalmostByouthByesBwowBweBwakeBtweetBtownBspotBskyBsideBseismicB	searchingB	projectedBpointBpeaceBonlineBnothingBnameBmoneyBmomBlostBlistenBhumanBheyB
helicopterBgiantBfinallyBfarB	evacuatedBdamnBcomputerBclosedB	christianBblueBballB	australiaBamidBactionBworstBwestBvillageButcBthoughBsorryBruleBrefugioBpoorBmuslimBmissBmemoryBmemberBmadBleaveBinfoBignitionBideaBhateBflashBfirefighterBfavoriteBexpeBdailyBcostlierBconclusivelyBchanceBcaughtBcampBcakeBbarBbannedB	avalancheBannihilationBwonderBvictimBtrustBtotallyBthousandBsoulBseenBseekBseaBproblemBparkBpainBoutsideBmountainBmorningBmarkBmanslaughterBmajorBjobBinsteadBingBhorseB	hollywoodBhealthBhardBhappenedBgemBforceBfearedBfastB
everythingBdriverBdiseaseBdesireBcoverBcopBclaimBbreakBbcBarsonBalBaircraftBaiBaddedBabcByorkBwrongBvirginBviewBturnBtryBthursdayBstrikeB	stretcherBspaceBseasonBrunningBriskBpropeBprobablyBpplBplayingBpickingBokayBnumberBnigerianBnearlyBmphBmountBminerBmightBmentBlookingBleadBlargeBisiBindiaBhugeBholdingBhappyBhandbagBhandBgiveBfrontBfootBerBeastBdeclarationBburnBblizzardBblazeBbestnaijamadeBappearsBacrossBwantedBtrueBtoteBthinkingBtempleBspringBsickBrockBreutersBprayBpilotB	passengerBpakistanBnwBmishapBmilitantBlovingBlordBlmaoBlikelyBlearnBlampBkingBissuedBheroBhahaBgunmanBgovtBglobalBgalacticBfuntennaBfourBflightBfBescapeBenoughBearlyBdateBcrisisBcostBcompanyBcivilianBcentreBbuyBbritishBanswerBalarmB
aftershockB
washingtonBwallBunionBunconfirmedBtoddlerB
subredditsBsceneBsadBradioBquestionBprettyBplaylistBpieceBparoleBomgBoccurredB	neighbourBmoBmileBmeekBlieBledBlawBlandingBitBinvestigatingBheavyB	hailstormBgreenBgermBgaveBfilmBfactBexpectedBentireBdrivingBdontBdiseaBcryBcraneBcommentBcoachBclimateBclassBceBcareerBcaptureBcalledBbrotherBbitchBbiggestBbiBbeginBbecomeBashBarsonistBapolloBanimalBancientBzBworseBusingBuserBuponBunitedBukBturnedBtillBthreatBtheaterBterrorBtakingBtakenBstudentBstandardBspoBsittingBsexBseriesBscaredBsaltBrussianBrussiaBroomBreleaseBreadyBquizBpublicBparentBpamelaBothersBndBnagasakiBmineBmiddleBmentionBmayhemBmariansBlondonBlibyaBlakeBislamicB	involvingB
internallyBinterestingBinsurerBhappenBgroundBglassBformerBexpectBelseBdudeBdrinkBdowntownB	directionBdeepBdeBdadBcrazyBcloseBchicagoBbrokeBbehindBbedBbeachBbayelsaBanthraxBangryBaheadBactBaccountBabaByoungBwesternBwelcomeBwavingBwalkingBwalkBtriedBtexasBtestBsundayB	structureB	speciallyBsisterBsingleBshiftBsentBsayingBreturnBresponseBresearchBqueenB	presidentBpradeshBplayerBplayedBplannedBpaulBpatienceBpasB	pakistaniBownerBoklahomaBmyanmarBmodeBmodBmapBmadhyaBleBlaneBkillerBjonathanBjoinBjapaneseBinformationBindustryBincidentBgovernorBgellerB	followingBfoBfightingBfeatBeventBenuguBelBdrunkBdoorBdisneyBdeliversBcreeB	communityBcoloradoBcoastBchileB	characterBcentralBcantBbringBblockBbitBbearBanymoreBaloneBallowsBalabamaBairlineB
absolutelyByoutubeByallBwroughtBworkingBwindowBwifeB	wednesdayBweddingBvoteBusaBtwelveBtruthBtotalBtoldBtogetherBtenBteenBstruggleBstageBstadiumBsoldierBsitBsilverBshoBshapeBrouteBrichmondBrelatedBrecordBrateBquiteBprepareBpictureBpetitionBofficeBniceBmodifiedBmichaelBmessageBmeetBmedBmatchBlovedBlouisBlossBleaderBinternetBhairBguessBgeneralBgayBgasB	fukushimaBfridayBfreakBfollowB	financialBfauxBfatBfallingBetcB	equipmentBemBebolaBdyBdrakeBdownloadB	differentBdepaBdegreeBcutBcrimeBcameroonBcableBarrestedBapaBamongBagreeBwtfBwokeBweekendBversionBusuallyBtrentBtrackBtiredBthereBtaiwanBtaB	suspectedBsuperBstuffBstraightB	sometimesBsmaugBsmallBsensoBseeingBscreenBsafetyBrossB	rooseveltBrockyBrlyBreviewBrepatriatedBratherBpurseBprogramBpressB
populationBpileBoutrageB	operationBoffroadBnonB	municipalBmrBmixBmeetingBmeatBmainBluckyBloseBlocalBlivingBleavingBjohnBjoeB	insuranceBindianBiclesBhwyBhospitalBholdBhillBhearingBhdayBhawaiiBgrillBgoalBgladBgivingBfutureBfunnyBforecastBfleetBfiveBeveningB	emotionalBeitherBeffoBearlierBdroneBdreamBdrBdamagedBcriminalBcrematoriumBcourseBchoiceBcdtBcatBcarefulBcancerBcanadaBboxBblowBawesomeBapcBaliveBalbumBwwiiBworryBweirdBwaitingBvoiceBunitBudhampurBturkishBtrumpBtripleBtrfcBtrainingBtotalingBtookBticketBtextBtentBtearBtabletBsystemBstoppedBsposBspecialB	spaceshipBsnowBsignedBsettingBsenseBseemsBsaturdayBsanBridgeBresultB
republicanBrecallBreadingB	radiationBpullBprovokeBproofBprojectBpriceBpressureBperfectBpathogenBpackBofferBnineBmotorcyclistBminiBmindBmediterraneanBmatterBlovelyBlooseBlistBlionBlinkedBlimitedBlilBkombatBisraelBinternationalBillegalBiiBiceBhuBhelpingBhelloB	happeningBgrowsBgopBgoneBgoldBftBfranceBfeministBfeltB
exchangingB
everywhereBepisodeBeconomyBdoubleBdestroysBdesignBdenverBdebateBdarkB	dangerousBdanBdaB	currentlyB	concernedBcolourBcoldBcoffeeBcausingBcarryingBcanyonBbuildBbudgetBbroughtBbrokenBbrainBblockedBbinBbeyondBbeatBbattlefieldBbasedBavoidBaskedBaskBarrivedBarmBangelBalongBahBacreBableByoBwwBworkerBworkedBwishBwasteBwaBvisitBvetBupsetBuniverseBtwiceBtontoBtipBthxB	threatensBterribleBtensionBtasteBtankBtalkingBsyrianBstupidBstreamBstealingBspentBspBsourceBsonBsomebodyB	situationBshelterBshameBshallBshBsearchBscheduleBscaryBsaleBsafeBsadlyBroundBrootBreplaceBrepairBreliefBregionBrecountBreachBreaBpussyBprotectBpreventBpracticeB	potentialBpoolB
philippineBpdpBpcBoriginalBnoneBneededBnahBmtBmovingBmissedBministerBmfBmaxBmassiveBmaryBliftedBlegBlaterBlateBladenBknewBkitBkindaBjebBjamBjBitalianBionBinvoiceB	interviewBinnerBindeedB	includingBinchBimagineBidpBhuntBhumanityBhonestlyBhighwayBheadedBhappensBgovBgmBgeorgiaBfrenchBfootballBfloorBfinalBfieldBfeedB
experienceBexitBestimateBepBenjoyBenBeconomicBdrugBdropBdrinkingBdozenB
discoveredBdigitBdiBdelayBdecisionBdavidBcruzBcreateB	crackdownBcouBcookB	conditionBconcernBcompleteBcomboBclubBchurchBchiefBcapsizesBcalmBcallingBburstBbulletBbruhBbroB	bicyclistBbeyonceBbetBbbcBaussieBarabiaB
apparentlyBappBantiBamazonBaimBafricaB	abandonedByouB	yesterdayByaBwedBwarnsBunlessB
understandBultimateBtrialBtongueBtomBthomasBteacherBswBsurvivalB
surroundedBsunBsubBstuaBstrategyBsteveBsocialBsleepingBsicilyBshowerBshopBsevenB	seriouslyBseriousBseatBsavingB	satelliteBsatBrubberBrowBroofBripBresidentBremoveBremainsBrelativeBreduceBrecoveryBrealiseBrailBquicklyBquickBquestBquaBqBprophetBpromiseBpresBpreBplusBplungingBplantBpipeBpickedBpatientBpassingBparleyBparkerB
parenthoodBpakBpacificBoveBoutlookBopeningBontoBoceanBnyBncBnatureBnationBminBmidB
mediterranBmdBmayanBmaximumBlibraryBlegacyBleadingBkneeBkillingB	kidnappedBjstBjetBjanBinjBimpactBidkBhunterBhuhBhoboBhobbitBhiBheldBheavenlyBgunfireBguideBgrowBgivenB
generationBfundBfullyBfruitBforgetBforeverBfollowerBfogBfocusBfloydBfloridaBfitBfiredBfingerBfighterBfergusonBfellBfashionBfantasyBfalseB	extremelyBextremeBexpressBexchangeB	examiningBevilB	epicentreBepicBenglandBenemyBendedB
electronicBeatBeasyBdyingBdutyBdroppedBdragonBdollarBdocumentBdisruptsBdiscoB	democracyBdefenseBdearBdeadlyBdcBdaughterBcreatedBconsiderB	connectorB
conferenceB
collectionBclickB	christmasBchineseBchillBcheeseBcharityBcardBbuiltBbrowserBbrooklynBbroadwayBbroadBbringingBbrazilBboardBblkBbenB	beginningBbayBbatteryBbathroomBbanBawfulBavoidingB	attentionBarriveBarBapproachBapplyBamazingBageBafghanistanBafBadvisoryBaddressB	accordingBaccidentallyByeaBxdBxboxBworriedB	wonderfulBwithinBwingBwhatsBwhaleBwetBwdBwatchedBwarshipBvuittonBviolenceBvietnamBveteranBvalueBvalleyBusgsBusBupdatedBunveiledBunsafeBunlockedBunBughBtrynaBtropicalBtrolleyBtripBtribalB	treatmentBtravelBtramBtownshipBtouchBtoiletBtheatreBthatsBtermBtemperedBtaxBtargetBswallowBsurpriseBsupposedBsubjectBstudyBstruckBstrongBstreakBstrandedBstoreBstepBstatusBstationB	statementBstaffBsquadBsmileBsmellBslipBslideBsizeBsixBsirBsimpleBshoeBshellBshadowBseveralBsentinelBseniorBsenatorBseanBseBscottBsatchelBsantaBsacBrunwayBroseBrollingBrnBrestoreBrestBrespectBrememberingBregisterBreducedB	recommendBrealizedBrareBrallyBraidBqualityBputtingBpurpleBprotestB	protectorB
prosecutedBproBprintBpreparedB
powerlinesBpovBpotusBpopBpollB	politicalBpocketBplugBpinBpillowBphoenixBpercentBpathBpalmBpalestinianBpaintBpageBorgBnycBnoticeBnoseBnavyBmultiplayerBmovedBmonogramBminorBminingB	minecraftBmidoB
microlightBmexicoBmetroBmethodBmentalBmedicalBmanagerB
managementB	malaysianBmailBmachineBlungBluckBlowndesBlorryBloopBloanBloadBletterBleagueBkickBjesusBjackBitalyBiraqBirBinvestigationB
inundationBinsaneB
individualB
incredibleBimpoBillBigerBigBidBicemoonBhwoBhungryB	hopefullyBhonorBhipBheightBheBhatchetBgustBgreyBgrenadeBgradeBgraceBgottenBgermanyBgangBfuelBfuckedB	freakiestBfrBfoxBfounderBforcedBfishBfestivalBfemaleBfalconBfairBfactoryBfaanBexplorationBexpB	executiveBexceptBexactlyBexBeverydayBenergyBemotionallyBemailBedtBearBdutchBdryBdrillBdoubtBdorretBdivingBdistanceBdepthBdanceBcyclistBcuzBcurvedBcrowdBcrB
correctionBcopycatBcontinueBcongressBconfirmsBconfirmBconceBcomplexB
completelyBcommonB
commercialBclutchBcloudBclothesBcleanupBclassicBcivilBcinemaB	chocolateBchestBcharlieBchargingBchargeBchannelBchairBceoBcancelBcalorieBbutterBboutBbountyBbosBborderBblvdBblogBblockingBblessingBblameB
blackberryBbiteBbillBbellBbeeBbecomesBbatBbargainBbandB
australianBaskingBannualBalpBallowedBallegedBalbeB	afternoonBadvanceBactivityB	activatedBaccessBzoumaBzombieByobeBwrittenBwritingBwriterBwontBwiredBwireBwhetherBwhatBweightBweedBwebsiteBwearBweakBwashBwarmingBwalmaB
vulnerableBvictoryBviBvegaBvaButterBuniformBunderwayBunderstandingBuglyBugandaBtunedBtryoutBtrulyBtroopB	triggeredBtribuneBtrendBtreatBtrapBtransitBtrailerBtrackingBtowardsBtoughBtorchBtonBtollBtoeBtideBthusBthrowingBthrowBthreateningBthoBtherapyBtfBtemperBtedBteaBtableBswimmingBswimB	surprisedBsurgeBsufferBsuckBstressBstrangeBstoneBstickBstereoBsteelBstabBsrBspiritBspiderBspendBspeedBsparkedBspanishBsouthernBsoupBsomehowBsocietyBsnapBsmokingBsmithsonianBsmhBslowBsleepBskillBskiBsingingBsilenceBshutBshippingB
settlementBserverBservedBsectionBscreenshotsB	scientistBscareBsarahBsalvadorBsalemBsaBromeBrollBrobotBrobBrisingBriderBrichardBrewardB
restrictedBrespondB	resistantBresidentialB	replacingBremindsBreminderBremainBrelaxBregularB	recognizeBrecipeBrecentBrearBreapBrealityBrayBrapeBrailwayBrageBracistBquoteBputinB
providenceBprogressBprofitBprobeBprivateBprimeBpreviousBpresentBpreparednessBpowerfulBpostedBplanetBplainBplaguingBpitchBpepperBpenaltyB
pedestrianBpeanutBpatrickBpassedBpamBopusBopinionBopenedBoopsBomfgBolympicBokanaganB
officiallyBoddsBoddBocBnurseBnumberedBnukeBnormalBnoiseBnobodyBnieceBnhBnemaB	nashvilleBmumbaiB
motorcycleBmorganBmoonBmoodBmmaB
mitigationBmissionBminorityBmillBmikeBmhtwBmeterB	messengerBmessBmemorialBmegaBmeantBmealBmaterialBmasterBmarylandBmarriedBmarineBmariaBmansionBmansehraBmamaBmaintenanceBmagnumBmagicBmadinahBlunchBlowlyBlosingBlongestBlmfaoB	listeningBlinkuryBlettingBlethalBlegitBlearningBleakBleafBlaunchBlaughingBlaughBlargerBlanguageBlackBknownBkissBkindBkiernanBkarymskyBkadunaBjusticeBjulyBjudgeBjoyBjewishBjayBitemBirelandBiranianBinvolvedB
interestedB	instagramBinnocentBincludeB	impressedBimeBicleBhumidityBhughesBhuffmanBhrBhotelBhostBhopBholyBholidayBholeBhoaxBhiringB	hilariousBhighestBhieroglyphicBhdBharperBharborBharamBhangBgtaBgreatestBgratefulBgpsBgolfBgermanBgeorgeB	generallyBgazaBgateBgainedBfwyBfuBfoxtrotBfnetBflowerBfloodedBflewBflatBfishingBfinnishBfineBfillBfileBferryBfederalBfavBfatherBfasterB	fantasticBfallenBfaithBfailedBfailBfactorBfacilityBfacebookBfaBexplainsB
experimentB	expectingBexistBexcitedBexampleB
especiallyBeruptionBequalBepilepsyBenteBengineBendingBemptyBemotionBelevatedBelephantBelectionBeightBegyptBeditionB	edinburghBebBeasilyBduckBdroveBdrawnBdoctorBdidntBdickBdeviceBdestinyBderbyBdeputyBdemandBdeckBdecidedBdebtBdarudeBdallasBcuteBcustomBcupBcrossedBcreamBcraterBcrapBcramerBcounterB	counselorBcornerBcordBconversationB	continuesB
constantlyBconsideringBconsequenceB	compliantBcombinedBcombatBcodeBcockBcnnBclosureBclipBclintonBclientBclevBclearedBclearBclashBciaBchaseBchargerBchaosBchainB	centipedeBcellBcbcBcatchBcarryiBcarryBcaptainBcapacityB	canaaniteBcampusBcampaignBcalifBcalamityBcaitlinBcabinBbuttonBbringsBbrakingBbrakeBbowlBboundaryBboughtBbottomBbootBbobB	bluetoothBblindBblamedBblakeBbikerBbetrayedBbeganBbeerBbedroomBbecameBbbB
battleshipBbathBbareBbankBawB	automaticB	authorityBauthBaudioBaudienceB	attackingBarrestBarmedBarabianBapocalypticBapBanywayBanybodyBankleBangerBanalysisB	amsterdamBamongstBallyBaleBalaskaBakaBakBainlyBaidBagentBafraidBafghanBaffectBadultBaddBadB	activatesBacidBabuseBaboBabeBzeroBzaynByayBxxxBxpBwwiBwriteBwrapB	workplaceB	wonderingBwomBwitnessBwitherBwirelessBwinterBwinstonBwillingBwilliamsBwilliamB
widespreadBwideB	wholesaleBwhateverBwelfareBwearingBwarnedBwarnBwarfightingBwantingBwalkedBwaimateBvoterBvolgaBvocalBvipBvinylBvineBvestBvermontB	venezuelaB	vegetableBvarietyBvalBvacantBurgentBupperB	unlockingB
undercoverBunatelyBukraineBtypeBtutorialBturningBturbineBtunnelBtuesdayBtubeBtrailBtraditionalBtrBtoxicBtowardBtorsoBtoolBtoddBtidalBthruBthrowingknifesBthirdBthinBthighBthickB	tennesseeB	temporaryBtellingB	telegraphBteachingB	targetingBtalentBtagBtacoBtabBsyriaBsymphonyBsympathyBsydneyBswellBsweetBswedenBswearBswarmBsuvBsurfBsurelyB
supervisorBsupernaturalB	superheroBsunsetBsuddenlyBsuccessBstyleBstrikerB	streamingBstomachBstewaBstephenBsteamBstatsBstarringBstandingBstampBsquareBsprinterBspendingBspecimenBspecifB
specialistBspearBspeakingBspeakerBsparkBspainB
southboundBsorrowBsophieBsolitudeBsoccerBsneakBsnackBsmokyBsmashBslightlyBskinBsizedBsignificantBsightBshittyBsheriffBshepherdBshelbyBsheddingBsharpBsharedBshanghaiBshakingBsexualBserialBscotlandBscoreBschipholBschemeBsbBsassyBsandBsamplingB	salvationBsakeBsaddlebrookeBryanBrushBruinedBroyalBrollerBroleBrobeBrippedBringB
ridiculousBrideBrevealsBrevealedBresultedB
restaurantBresourceBrequiredBrenoBrelationshipBrejectBreidBrefusedBrefuseB	referringBrecoverBrecentlyBrealizeBratingBrangeBranBrainingBradioactiveBradarBpunBpullingBpulledBpromptBprofileBproducedBprisonBpriorBprinceBprimaryB
previouslyBpreviewB
predictionB	predictedBpredictBprecipitationBprabhuBpoveBpositiveBpondBpoliticsBpolandBplsBplayoffBplateBplantedBplanningBplagueBpizzaBpitcherBpitBpisgahBpipelineBpillBphysicalBphotographerBphillyBpetBpersonalBpeepBpeacefulBpatternBparkingBpalinBpairBpaceB	overnightBoutdoorB	otherwiseBorganizationBorderedBorangeBoptionBopsBopenlyBopBoohBontarioBomarBolapBoccupantBoccasionBobjectBoakB
nowplayingBnopeBnoaaBnmBnigeriaBnickiBnflBnewlywedBnetworkBnerBneitherBnegativeBneedleBneBnavedBnapBnailBmysteryBmusicianBmuseumBmuscleB	murderousBmumBmultipleBmultiBmovementBmountaineeringBmotherBmothBmoralBmonsterBmonsoonBmodelBmlBmkxBmittBmistakeBmirageBminajBmilkB	microsoftBmichiganBmiBmetricBmetalBmercyB	mentionedBmemeBmeltBmedievalBmeasurementBmattsonBmateBmatakoBmarvelB	marketingBmarkerBmarkedB
manchesterBmallBmacBlyingBlulgzimbestpictsBlowerBlosBloopingBlookedBlongsBlockBlocationBlizardBlivedBlistedBlimitB
lighteningBliftingBlifetimeBlglBlezBleveledBlessonBleoBlenBleisureBlayBlaurenBlargestBlandfallBkoreaB	knoxvilleBknowingBkingdomBkickedBkeptBkalleBjordanBjonBjointBjoiningBjohnsonBjohannesburgBjeffBjeanBjazzBjailBjacksonvilleBjacksonBjacketBiveBinternalBinternBinterestB	intensityB	integrityBintactBinstantBinkBincreaseB
impossibleBikBiiiBifiedBifBianBhypeBhurryBhunkBhugBhquakesBhoustonBhousingBhostingBhorrificBhopingBhollandBhoeBhmmBhistoricBhimalayaBheadsetB	headphoneBheadingBhauntingBhatingBhatedBhashtagBhardyBhardlineBhackBgustyBgunshotB	guillermoBguestBguardianBguardBgrowthBgrownBgregBgreeceBgrayBgrabBgoogleBgodsloveBgoatBgmtB
girlfriendBgiftBghostBgfBgenuineBgelBgearBgateauBgardenBgarbageBgameplayBfyiBfrozenB	frontlineB
friendshipBfreshBfreezingBfreedomBfranklinBfractionBfoulBfosterBforwardBformedBforgotBfordBfootageBflyingBfloatedBflipBflamingBfknBfixingBfixedBfifthBfeedingBfedBfdBfbiB	favouriteBfateBfashionableBfamousBfamBfakeBfacedBextraBexternalBextendsBexperiencedB	expensiveB	excellentBevidenceBeuropeBespBeqBenvironmentalBenteringBenterBenglishBencouragementB
electricalBegoBeggBeeBedwardB	educationBedlyBeatenBearningsBearnerBdvdBdublinBdualBdtnBdrumBdroidBdramaticBdragBdqBdonateBdonaldBdolphinBdocBdjBdisplaceB
disgustingB	discoveryBdisBdietBdiamondBdevalueBdetroitBdetainedBdetailBdeseBdescriptionBdemonstratioBdemocratBdemBdecadeBdarknessBdanielBdamagingBcyclingBcurbBcueBcubanBcsxBcroatianBcroatBcriticalBcreditB
creativityBcrackBcowBcoveredBcousinBcottonB
controllerB
controlledBcontrastB	continuedBcontextB	containedBcontactBcontBconstructionBconnectoBcommunicationBcomBcolumbiaBcolorBcollegeBcoatBcoastalBclimbBclearlyBcircleBchunkBchrisBchokingBchangedBchampionshipB	challengeBcelebrationBcdcBcdBcbsBcaveBcautionBcastBcashBcarriedBcargoBcapsizedBcapitalBcapBcandyBcageBcafeBbuttBburiedBbulletinBbugBbuffaloBbuddyBbuBbtwnBbrutallyBbronxBbritainBbrideBbrickBbreatheBbrandBbpB	boyfriendBboxerBbowlingBboundBbotBboreBboomBbokoBboeingBbluedioBblksBblessedBblessBblanketBblahBbirdB
biologicalBbioBbikeBbidBbffBbewareBbenefitBbeltB	believingBbeliefBbehalfBbeardBbeamBbattlingBbasicBbasementBbaseballBbaseBbarnBbakeBbadgeBbackupBawareBaverageBavenueBavBautumnBauthorBattitudeB
attendanceBassemblyBasianB
appreciateBappleBapparentBanxiousBanxietyBantiochBangelesB	anchorageBanBalthoughBalrightBallowBallahBainmentBagreedBafricanB	adventureBadmitsBactualBaccusesBaccusedBabusedBabilityBabbswinstonBaaBzimbabweBzabadaniBypresByourByoungerByorkerByepByellowBxvBxoxoBxbBwyBwweBwudBwrapupBwrappedBwptBwpriBwowoBworryingBwornB	worldnewsBworkoutBwoodBwolfBwndBwmvBwmurBwitchBwippBwinningBwindyBwilshereBwillianBwieldingBwickedBwiBwhyBwhtsBwhtBwhomeverBwhoeverBwhoaBwhistleBwhippedBwheelBwhaoBwftvBwestonBwesterosBwenBwealthB	weakeningBwayneBwaterwayBwashedBwarneBwarcraftBwalterBwalkerBwalergaBwaleBwaistBvotingBvotedB	volunteerB	voluntaryBvladimirBvitalBvistoBvisitedB
visibilityBvintageBvinceBvillagerB
vietnameseBvidaBvicinityBvibezBversetheBverdictBvashonBvariousBvantageBvanessaBvanBvampiroBvaccineBvacationBvabengalButvButterlyButBushedBusatodayBuribeBuraniumBupwardsB	uploadingB	upgradingBupgradeBupBuntoBunrestBunrelentingBunrBunprecedentedBunnecessaryBunknownBunityBunhappinessBunfoldedBunderwriterBuncleBunawaresBunavoidableBuhBudBuberBtyreBtypicalBtylerBtyB
twentynineBtutorBturkmenBtuneinBtumblingBttesBtrustyBtrustingBtrunkBtroyB	troublingBtrinityBtrickBtrekBtreatingBtravisBtraverseBtrashBtraffordB
tournamentBtourBtorontoBtonyBtomatoBtmpBtlvfacesBtixBtitleBtitaBtimelineBtilBtiedBtieBthyBthursBthugginBthuBthroneBthrillerBthreatenBthirstyBtheyreBtheoryBthemedBtheeB
thankfullyBthankfulBthaBteslaB
terrifyingB
technologyBteBtcBtbBtaylorBtaxiwayBtaxiBtaughtBtargetedBtapeBtampaBtalkinBtalibanBtaleBtakBtahoeBswissBswingBsweaterBsurveyBsurucB	surrenderBsurgeryBsurfaceBsupremeBsupposeBsuperstitionBsunshineBsunnyBsunniBsummaryBsuitB	sufferingBsufferedBsuddenBstylishBstunnedBstudioBstuckBstuBstronglyBstrongerBstrokeBstrikingBstrictB	stressfulBstressedBstrengtheningBstrainBstoutBstoleBstocktonBsteppedBstealBsteakBstarvingBstaceyBsquirrelBsprayBspontaneouslyBsponsorBsplitBspinningBspinBspecificBspanielBsovietB	southeastBsoundingBsooooBsoooBsooBsolveBsolutionBsolidBsoftenzaB	socialismBsoakingBsnuffBsnipingBsndBsnapchatBsnBsmugglerBsmilingBsmaBsmBslowlyBslowerBslickerBslayerBslaveBskylineBskinnyBsketchBskanndtyagiBsjBsixthB
sixpenceeeBsiskiyouBsinkBsingBsimultaneousBsimulateBsimplyBsilentBsigningBsidingBsidelineBsicaBsiblingBsiBshutdownBshowedBshowcaseBshoutBshoreBshootBshookBshockingBshockedBshockBshizuneB	shipwreckBsheetBsheerBsheBshawieBsharingBshaniaBshamBshakerBshakeBsexyBsessionBsequelB	septemberBseptBsepBsendsBsendingBsenateBsenBsellBseemedBseedBsecuredBseattleBscufBsctBscrewBscoutBscorpionBscienceB	schwarberBscandalBscaleBsaturnB
sanctionedBsanctionBsamelB	samaritanBsalviB
salvadoranBsaltyBsalmonBsaferBsafelyBsafariBrwyB
rutherfordBrunnerBruiningBruebsBroverBrotatorBrotationBrosterBronnieBronBromanceBrogueBrogerBrocketBrobinsonBroanokeBrippleBrioterBrifleBridBriceBreyBrevenueBrevB	retweetedBretweetBreturnedBretroBretailB	resultingBresponsibleBresponsibilityBrespondsB	respondedB	respectedBreshapesBrepublicBrepB	reopeningBreopenBrenisonBreneBremovingBremovedBremorseBremixB
rememberedB
relentlessBregretB
registeredBregionalB
regardlessB	regardingBrefundBreflectsBreefB	recyclingB	recreatesBrecordedBrecommendedBrecklessBrecapBrealtimeBrealizationBrealisedBreaganBreachingBraynorBraungBratedBratBrappingBrapperBrapidlyBrapBrantBrankingBrankBrammedBramBraisedBraiderBracingBraceBraBquotedBqueBquarrelBpurchaseBpunkBpunjabB
punishmentBpunishedBpunditBpunchBpumpkinBpumpBptBpsychologicalBpsalmBpsaBprovideB
protectionBprogressiveB	programmeBproduceBproceedsB	procedureBprisonerBpriorityB	principleB	primarilyBpriestB
preventionBpretendBpressedBpresenceBpremierB	prematureBpregnantBpredatorBpreciousBpoundedBpotentiallyBpotBpostingBpossiblyBpossibilityBpornBpopularBpoplarBpoorlyBponyBpolitifiactBpolB	plummetedBplotBpleasureBplatformBplacingBplacedBpkwyBpissedBpirateBpinpointBpilingBpickleBpickerelBpickensB	physicianB	photoshopBphilBphewBphaseBpharaohBphantomBperspectiveB	personnelB
perquisiteBpermitBpermanentlyBperiodBperhapsBperformanceB	perfectlyBpennyB
penningtonB	pendletonBpeakBpcpBpavedBpatnaBparisBpaperBpantsBpanB	pakpattanBpaintingBpackedBpackageBoverworkBoverloadBoutletBoutflowBoutfitBoutbidBoutageBothBosbornBornamentBoriginBoriBoregonBoralB
oppositionBoppositeBoperB
oooooohhhhBooohBoneselfBoliverBokinawaBohioBohhBoftenBofframpBoffrBodeonBoccursBobsessedBnylonBnutBnuggetBnuffBnudeBnuBntsbBnowhereBnovelBnotleyBnotificationBnoticedBnormanBnixonBnikeB	nightmareBnickBnewbergB	netanyahuBnetBnershipsBneilBneighborhoodBneighborBnegroBneckB	necessaryBndaBnbBnaziBnavblBnavalBnatoBnastyBnasahurricaneBnasaBnanBnamedBmyBmuzzamilBmutantBmurderedBmultidimensiBmullahBmukilteoBmudBmsfBmouthBmournsB
motorcraftBmotorBmotionBmosquitoBmoscowBmooresvilleBmooreBmonkeyBmondayBmonBmoleBmmmmmmBmkB
mistreatedBmississaugaBmissileBminaB	milkshakeBmilBmidwestBmidnightBmidgetBmicomBmicheleBmicBmgmBmetlifeBmessedBmercuryBmentsBmentallyBmemphisBmegadethBmegBmedicineB
mechanicalBmeaslesBmeaningBmcmahonBmchenryB	mcdonaldsBmcBmbBmatchingBmatBmarqueiBmarketerBmarinBmariahBmarchBmanufacturedBmaniaB	mandatoryBmanagedBmalikBmakerBmajorityBmajBmaintainB	magnitudeBmagnerB	magistersBmafiaBmadisonBmaciaBluisBlubbockBloverBlouBlorettaBlootingBlooterBloosBlonelyBloneBlogoBloganBlogB
locomotiveBlockerBlockeBlocatedBlloydBlithBlitBlistingBlipBlightingBliftBlicenseBliberalBlibeBliableB	liabilityBlesbianBlemonBlegoBlegioB	legendaryBleedsBleeBlebanonBleakedB
leadershipBlawtonBlavenderpoetrycafeBlatinoBlatinB	landscapeBlaidBkyleBkuwaitBkurdishBkurdBkuBkraftBkowingB	kosciuskoBknockingBknightBknifeBkittenBkithBkissedBkisiiBkindnessBkindleBkidnapBkiBkhanBkeyBkerryBkendallBkellyBkeBkatrinaBkarmaBkarachiBjurorBjuneBjumpedBjumpBjulianBjrBjourneyB
journalistBjournalBjoinedBjohnnyBjoelBjhaustinBjerseyBjennerBjeepBjediBjealousBjaxBjasmineBjamesBjamaicaBjailedBjacqueBitunesBistBislamBisilBirvineB
ironicallyBironicBirishBiredellBiraqiBipodBipadBinvitedBinvasionBinvadedB
interstateBintensifiesBinsultB	instituteBinstBinspiredB
inspectionBinningBinmateBinitialBinfinityB
inevitablyB
inevitableBindoorsBindifferenceBindependentB
incrediblyB
increasingB	increasedBincaseBincBimpulseBimprovementBimproveB
impressiveB	imperfectB	impendingBillustrationBillnessBignoredBignoreBificialBificateBidolBidisBidiotBidcBicularlyBiconicBiclownBhysteriaBhybridBhwestBhutchBhungerBhoweverB	householdBhousedBhottestBhorizonBhooliganBhoneyB	homeownerBhomelessBhomelandBhlandBhittingBhipsterBhillaryBhighlyBhigherBhideBhiddenBhewBheroineBheroinBhermancranstonBhenryBhelplineBhellaBhelenBheelBheavenBheastBhealthyBhealBheadquaBhasbroBharwichBharryBhardlyB	happinessBhannemanBhandlingBhandleBhandedBhamiltonBhamburgBhamasBhaltBhaiyanBhahahahaBhahahahBhahahaBhackerBhabitBhaBgymBgumBguiltyBguidedB
guaranteedBgrrrrBgrowingBgroveBgroomBgriefBgrewBgreetingBgreekBgreedyBgravelBgrantBgrandpaBgrandeurBgrandBgrainBgrabberBgrBgpmBgoulburnBgordonBgoodbyeBgmmbcBglobeBglidedBglennBgigBghostwriterBgettinB	geometricBgeniusBgenevaBgenerationalBgdBgaryBgainingBgainBfuryBfuriousBfurBfunctionBfuckinBfriendlyBfriBfreshmanBfreewayB	freestyleBfreakingBfrankBfranBfouBforsureB	formationBformB	forgottenBforgivenBforeignBforbidBforbesBfoolBfolkBflyBfledBfixBfireworkBfiremanBfirB	finishingBfinishBfindingB	financingBfilledBfigureBfiftyBfiegBfiascoBfiBfezBferrellB
fennovoimaBfenceBfemaBfellaB	feinsteinBfeelinBfeeBfeaturedBfeatureBfeastBfbBfavsBfaultyBfatallyBfarmBfairfaxBfadingBfacingBfabricBextinguishedBextenderBexposedBexpoBexplodesBexperiencingBexitedB	existenceB	exhaustedBexcuseB	exclusiveB
excitementBexcBexaminerBexamBexacerbatedBevolveB	everytimeB	everybodyB
eventuallyBeveB
evansvilleBevBeuropeanBeudrylantiquaBeuBetisalatBetB	estimatedBesteemedBestateBespnBescapingBescapedBerrorBequateBepidemicBenteredBenrouteBenjoyingBenjoyedBengineerBengageBenduresB	encounterBempireBemperorBelkhornBeliteBelementBelemBelectricBehBeggedBefB	editorialBedenBeatingBeasternB	eastboundB	dystopianBdyeBdummyBdumbBdukeBdryerBdrivenBdrawBdramaB
downstairsBdoveBdothrakiBdormanBdopeBdomainBdollBdoeBdockBdmplBdkBdixonBdividedBdiverBdiveBdistrictBdistinctB
disruptiveBdisplayBdisorderBdiscusBdisappointsBdisappearedB	disappearBdirectorB	diplomacyBdinnerBdigitalBdiggingB	difficultB
differenceBdiffB	diaporamaBdhsBdeyB	detouringB	detectadoB
destroyingBdespiteBdespairBdeskBdesignedBdeservesBderailsBdeptB
depressingBdenierBdemsBdemonBdemiBdeliverBdelayedBdelB
definitelyBdefineBdefendBdefeatBdefB	dedicatedBdeclaredBdecideBdecemberBdealingBdatingBdatBdareBdanteBdancerBdameBdamBdakotaBcustomerBcusterBcurrentB	curiosityBcupcakeBcuntBcumBcuffBctdBcrystalBcrypticBcrustyB	cripplingBcricketBcreatingBcrashingBcrackingBcoyoteBcoworkerB	countlessBcountB	cosponsorBcorpBcoralBcopingBcopeBcoolerBconveBcontructionBcontributingBcontinuallyBcontemplatingBconstantB
conspiracyBconservativeBconsentBconquestB
connectionBconflictB
condolenceBcondemnBconcreteBconceptBconB	componentBcomplicationB	completedBcompeteB
comparisonBcomoB	committeeBcommerceBcommandBcomicBcomedyBcombustBcolludedBcollinsBcoleBcolderBcoincideBcoilBcockpitBcobraBcoasterBcoalBcoahuilaBcmonBclosestBcleverB	clevelandBcleanBcldBcitizenBciteBcircusBciBchristieBchpBchosenBchoseBchonceBchipBchillingB	childhoodBchickenBchickBchewingBchevyBcherylBcherryBcherokeeBcheatBcheapBchattanoogaBchatB	charlotteBcharlesBchangingBchanB
challengedBchairmanBchBcementBcatchingBcasualBcastleBcarrBcarpetBcarolinaBcarlosBcarelessBcapturedB
capitalismBcanvasBcanoeBcannonBcandleB	cancelledBcampfireBcameoBcamBcalumetBcalifornianBcairoBcadBcabBbyBbwpBbuyingBbutterfingerBbutBbusyBbundledBbumperBbullseyeBbullBbuffBbuckleBbuckBbubbleBbtsBbruiseBbrookeBbrockBbritonBbritneyBbriskBbrightBbriefingBbriefBbrianB	breakfastBbreadBbradyBbottleBbotherBbostonBbornBboredBboneBboltBbolsterBbobcatBbluntB	blueprintBblowingBbknBbistroB
birminghamBbillionaireBbillionBbigamistBbicycleBbicepBbgBbetzBbesidesBbendBbelongsBbelongedBbehaviorBbeginnerBbeggingBbeforeitsnewsBbecomingBbbcnewsBbatteredBbatterBbastardBbassB	basicallyBbarryBbarrierBbarackBbalanceBbailBbagoBbackyardBbackpackB
backgroundBavoidedB	availableB
automationBautobiographyBautoBautisticBaucklandBattemptBattainedBatmosphericBathleteB
associatedB	assistingB	assistantB
assistanceBassholeBasicsBashleyBasapBarsenalBarrivingBarnhemBargumentBarenaBarchitectureB	architectBaqBaptBapchBantonioBanthonyBanteBantBannoyingB	announcesBaniBandyBanchorBamiriteBamesBalternativeBalotB
allegationBallBalienBalcoholBaintyBahhB
aggressiveBagencyBagBaffleckBaffiliationB	affiliateB	affectingBadoptionBadmitBadministrationBadminBadditionBaddictBadamBacuteBactiveBactedBacquisitionBacquireBacousticBacdelcoBaccBacBabbottBabandonBabBzurichBzumiezBzrnfBzoomBzonewolfBzodiacBzmneBziuwBzipperBzipBzionistBzimpapersviewsBzimmerBzicacBzhejiangBzergeleBzenitBzealBzarryBzarBzamanBzakuunBzachByyesoByuviByuukoByupByumikoByumByukiByuanBysoulBypgByounginsByosemiteByorByoguByogaByoenisB
ykelquibanB	yiraneuniByikesByieldByhngsjlgByhB	yeyeulalaByessumByennoraByemeniByemenByelpByellingByelledByellByehudaByeahsByeByankeeB	yamashiroB	yamaguchiByahooByBxxhjescBxviiBxoBxmasBxleakBxlBxiiBxelaBwyouBwxiaBwutBwthBwtcBwsocBwslsBwsjthinktankBwrougBwrkedB	wristbandBwristBwrinkledBwpdBwouldntBworshipBworsenBworseitsBworriesB	worldwideB	workspaceB	workforceBworkdBwordkBwoooooooBwoodwardBwoodlandB	woodchuckB	wonderkidBwonderfullyBwomppppB
womengirlsBwomemBwombBwolterBwolfoBwokenBwoeBwodBwoahBwnwBwnBwmataBwldBwkndBwkBwizardBwiwnpfxaB
witnessingB	witnessedB	withstandB	withdrawsBwitBwishingBwishedBwiseBwisdomB	wisconsinBwipeBwinnipegBwingerBwingedBwindsorB
windowsillBwimpBwillisB
willingheaBwiiBwifiBwiedemerBwidthBwidoutBwiderBwickettBwhyorBwhoseBwhoopBwhoBwhittB	whitewashBwhitewalkersB
whitbourneBwhistledBwhiskeyBwhipeBwhineBwhimsyBwhereasBwhereB
whensoeverBwheneverBwhenBwhelenBwheelerBwheatleyBwheatBwhatsappBwhackBwhaBweymouthBweyburnBwexlerBwewBwestministerB	westmarchBwestchesterBwesleyBwengerBweirdoBweiqinB
weightlessBweighsBweighBweepBweeklongBweeBwednesBwednBwebinarBwebB	weatheritBwealthyBweallheaBweaknessBwdtvBwcwBwctvBwceBwcBwbreBwbB
waziristanBwaywardBwavedBwattleB
waterproofB
watermelonBwaterfurBwateBwatchoutBwatchinBwastingBwaspBwasntBwasillaBwashingBwashardBwarriorcordBwarriorB	warrantedBwarraBwarpedBwarmthBwarmBwannabeBwankBwallybaiterBwaldoBwakingBwakhoBwaiverBwaitedBwaimeaBwackoBvulnerabilityBvulneraBvulnBvulcanBvtcB	vosloorusBvooBvoltaicBvolBvoidBvodsBvodkaBvocalistBvocBvoBvividBvivianBvitesseBvistingBvisitingBvisionBvisibleBviscousBvisageBvirusBvirgBvirBviolinBvioletB	violationBviolatedBvincentBvilleBvillaBvikingBvigilentBvidB
victoriousB
victorinoxBvictoriaB
victimiserBviceBvicBvibratesBvibrateBvibeBviabBvestmentBvesselBversusBvernB	vermilionBverhoekBvergeBventBvenomBveniceBveldBvelaBveinBveilBveggieB
vegetarianBvaultBvastB
vassalboroBvapingB	vanishingBvanishedBvanillaB
vandalizedBvampireB	valuationB	vallerandBvalleB	valentineBvaleBvaiBvacancyBvacaBuvopwzBuvBuudButpButopianButilizedButilityButdBuswBusualBusgBusesBuselessBusdBusatBusamiBusamaBusageBuruanBursulaBurselfBurogynBurnedBurnBurgentthereBuresBureBurbanisationBupwardBuptownBupstairsB	upsettingBupsB	uprootingBuprootinB	upliftingBuphillBupgradedBupcomingBupaBunwarrantedBunwantedBunuBuntillBuntangleBunsurprisinglyBunsureBunsuccessfulBunstoppableBunstableBunsignedB
unscreenedBunrecognizedBunrealBunqualifiedBunpredictableBunplugBunpackedBunloadsB
unlicensedBunknB
universityBuniteBuninvestigatedBunimpressedBunhingedBunhealedBunharmedBunhappyBungodlyBunfoBunfilledBunfairBunexplainableBunexercisedBunendingBunebutBundoneBundeservingB	underwoodB
underwaterB
understoodBunderstandableB	underpassBundergroundbestsellersBundergroundBunderestimateBuncoverBuncontrolledBuncontrollableBunconsciouslyBunconditionalBuncommonBuncomfoBunceBunbelievablyBunawareBunauthorizedBunarmedBunaddressedBunableBumntuBummBumbrellaBumBuluruB	ultimatumBullmanBukeBuhmmmmBuhcBuglinessBugliestBugalBufnBudomBudestBualBuaeBtyroneBtyrantBtypoBtyarBtxtBtxBtwxBtwitBtwinsBtwinBtwillBtwilightBtwiBtwentyB
tweetstormBtweetingBtweetedBtwainBtuskyBturnerBtunisianBtunisiaBtunisBtuningBtuneBtumblrB
tulowitzkiBtullamarineBtuffersBtucsonBtubBtuBttwBttBtsutomiBtsiprasBtrynnaBtruBtrpBtroyeBtrophyBtropeBtrooperBtrollBtroisBtrixieBtrinnaBtrillionBtriggerBtricycleBtrickyB	trickshotBtrickierBtribezBtribBtriadBtreyBtrespassBtremorBtrekkerB	treblinkaBtreatyBtreatmenBtreatedBtreasureBtrayB
travellingB	travelingBtrashedB
transwomenBtransgenderedBtransformedBtransformationBtranscriptionB	transcendBtransBtrancyB	tramplingB	trailheadBtrailedBtragicBtraditionalistBtraderBtradeBtradBtracyBtractorBtractionBtraceyBtraBtpanicBtozletBtoyotaBtowerBtowboatBtoughensBtouchingBtouchedB	touchdownB	tottenhamBtottehamBtotalitarianismBtosuBtossBtosBtoryB
torrentialBtorrentB
torrecillaBtorchingBtopicBtoothBtooooooBtookemBtonneBtoneBtommorowB	tomlinsonBtomislavBtolewantB	toleratedB	toleranceBtokyoBtogtheBtoenailB	todayhaveBtodBtnBtlozBtlkBtlcBtkyonlyBtjBtittyBtittieBtitoloBtitanicBtitanBtireBtinyBtintedBtingB	tinderingBtinderBtinBtimingBtimeyB	timestackBtimedBtimebombBtimberBtightlyBtightBtiffanyfrizzellBtierBticBtiantaBthyroidBthurlowBthundersnowB
thunderingBthuggingBthtBthruuuBthrustBthrownBthrowinB	throwbackBthroatBthrivingBthrewB	threesomeBthreadBthrarchivesBthrB	thousandsBthouB
thoroughlyBthorinBthorganBthirstBthiefBthiBthhBtheyBthesensualeyeBthereofBthereinB	thereforeBtheraminBtheologicalBthemheBthemeBtheftBthdaBthankkkBthankingB
thalapathiBthailandBthaiBtgirlBtgBtfwBtextureBtextingBtexanBtestingB	testimonyBtestimonialBtestifyB	testifiedBtestedBtestaB	territoryB	terrifiedBterrificBterrainBtepatBtenshiBtennoBtennisBtennBtendsB
temptationBtemporarilyBtemplateBtemperatureBtempBtemeculaBtemBtelnetBtellyBtelltaleBtelemarketingBtelekinesisBtejcBteethBteeBteddyBtecnoB	techniqueBtechniquB	technicalB
techesbackBtechBteamoBteammateBtchBtccBtbrBtbhBtaxpayerBtawfmcawB
taungbazarBtattooedBtattooBtatBtastedBtasmaniaBtaskB	tarminetaBtargeBtapaBtanzaniaBtantrumBtangledBtanBtamponB
tambourineBtamboBtallestBtakinBtakeoffBtaipeiBtaintBtailorBtailBtahiniBtaggingBtaggedBtacticalBtactfulBtacomaBtacitBtacBszuterB
systematicBsysBsyndromeBsymptomBsymbolBsyjexoBswornBswordBswoopingBswollenBswivelBswitzerlandB	switchingBswingmanBswimingBswiftlyBsweptBsweetpeaBsweepingBsweepBsweatBsweaBswangerBswamiBsvetlanaBsuxBsustainoureaBsustainabilityB
suspiciousBsuspenseB
suspendingB	suspendedBsuspendB
susinessesBsushiB	survivingBsuruBsurroundingBsurgicalBsurferBsuretyBsureshBsurahBsupremoBsupremacistB
supposedlyBsupplyB
superpowerBsuperiorityBsuperintendentBsuperficialBsuperbugBsuperbBsunrayB	sunflowerBsundownBsuncorpBsunburstB	sunburnedBsunbatheB
summerslamBsultryBsulBsuiteBsuingBsuhoBsuhBsuggsBsugarBsuffieldBsufficientlyBsuffersBsuedBsudanBsuckingBsuckerBsuckedBsucceedBsubwayBsubtletyBsubtleBsubstantialB	substanceB
subsequentB
submittingBsubmittB
submissionB	submergedB	subjectedBsubcontractorBsubcommitteeB	subatomicBsuBstylistBstyledBsturgisB
stunninglyBstungBstumpBstuffinBstudyingB
studebakerBstuddedBstsB	struttingB
strugglingBstrivesB
stripteaseBstrippedBstripB	stretchedBstrengthBstreetlightBstreamyxBstrapBstrandBstraitB
straightenBstormyBstormtrooperBstormingBstormcomingBstoreyBstoppingBstoolBstoodBstolenBstokesB	stockwellB	stockholmBstoBstlndBstlBstirB	stillnessBstilBstickyBstickingBsthingBstewBstevieBstevenBsterotypicalBsternBsterlingB
stephensonBstephenscifiBstemmingBstemBstefanoBsteepB	steamshipBstealthBsteadyBstayingBstavolaBstatisticallyBstarveBstarmadeBstarksBstarkBstareBstardateBstarbsBstansBstandardisedBstanBstalledBstalinBstalagBstaidBstagedBstacyBstableBstabbingBsswBssshhheeesshhBsspBssbBsrslyBsrkBsqueezeBsqueakyBsquabbleBsqBspyroBspyingBspxB
sputteringBsputnikBspurgeonBspurBspsgspBspriteB	sprinklerBspringerBspreeB	spreadingBspreadBsprainBspouseBsponsorshipBspongeBspokeBspokaneBspoiledBspoilBsplifsB	splatlingB	splatdownBsplashBspitBspiltBspilledBspikeB	spiderwebBspiceBspendsBspenBspellB	speedtechBspeedingBspeechBspectrumBspectacularBspecificallyBspecieB
specializeBspeccyBspecBspeakBsparxxxBsparkzBsparkingBspanBspammerBspamBspacexBspaceshiptwoBsowB	southwestB	southdownBsouthamptonBsousseBsourB
soundtrackBsounderBsoultechBsouljaBsoughtBsothwestB	sorrowfulBsorelyBsoreBsophisticationBsongforBsommeB
sometimesiBsomedayBsomeBsomaliaBsolvingBsolvedB
soloquieroBsoloBsoleBsoldiBsoldBsolarBsolanoBsoilBsoggyBsoftwareBsoftballBsoftBsocketBsockBsocialtimesBsociallyBsobbingBsoapBsoakerBsoakedBsoBsnuckBsnowyBsnowdenBsnowballBsnoopBsnoBsnipeB
sniiiiiiffBsniffBsniBsneezingBsmugBsmpBsmoresBsmoothedBsmoochyBsmokeyBsmokerBsmellingBsmelledBsmearedBsmbBsmashingBsmantibatamBsmallerBsmackBslumberBslowsBslosherB
slitheringBslippingBslipperBslippedBslightBslidingBslewBsleptBslaveryB	slaughterBslatedBslateBslashBslappingBslanderBslamBslBskywarsBskypeBskylerBskyeBskullBskippingBskipBskinlessBskimmedBskimBskiingB
sketchbookBskcBskaggsBskBsizygwwfBsituBsittwayBsiteinvestigatingBsiriusBsippinBsipB	siouxlandBsiouxlanBsiouxBsinjarB	sinistrasBsindhBsincereBsinB
simulatingBsimpsonBsimonBsimmonsBsimilarBsilveryB	silvermanBsillyB
silentmindBsilencedBsikhBsignificanceB	signatureBsignalBsigmundBsighBsigaleBsifBsidjsjdjekdjskdjdBsidewalkBsidedBshutsBshuffledBshudBshtapBshtB
shrewsburyBshrewBshowingBshowdownBshovelBshoveBshoutingBshoutedBshououtBshotgunBshoppingBshoppeBshootoutBshooterBshootasBshoookBshiverBshiteBshineBshifterBshiftedBshieldBshiddddBshiaBshiBshevlinBshesBshenBshemeshBsheetingBshedidBshedBshawB	shatteredBsharplyBsharkBshariaBsharBshapingBshaperBshapedBshaolinBshantaeB	shanaynayBshakespeareBshakenB	shadowmanBshadowedBshadeBshadBshaabiBshaBsgBsfgateBsfaBsfB	sexualityBsexistBsewingBsewerBsewardBseveringBseverelyBseventyB	sevenfigzBsettleBsetsukoBsetlistBsetantaBservingBservicinBserveBservantB	serephinaBsereneBserbianBserasBserBsequenceBsequalaeBsepticB	separatedB	sentencedBsensoryB	sensitiveBseminarBselmoBsellingBselfiesBselfieB
selfavowedBselectsB	selectionBselectBseizingBseizeBsegmentBsegaBsefBseeweedBseemethBseemBseekerBsedarBsedBsectorB
secondhandBsecBseawallB
seasonfromBseashoreBsealBsdBscumB	scrollingB	screeningB
screechingB
scratchingBscrapedBscourgueBscourgeB
scotiabankBscoredBscorchedBscoopitBscomBscissorBschulzB
schoenfeldBschismBscheerBscenarioB	scatteredBscarletBscariestBscarierBscamBscabBsbeeBsayinBsaverBsavageBsaundersBsaumurBsaudiesB
saturationB	saturatedB
satisfyingBsatireBsatinBsaskBsashaB	sarcasticBsarcasmBsantiagoBsanityB
sanitizingB	sanitisedBsangBsanfordBsandyBsandwichBsandunesBsandboxBsanchezBsamsungBsampleBsammyBsamaBsamBsalvageBsaltedBsalopekBsalmanBsallyB	salisburyBsakuBsaisonBsaintBsailorBsailingBsailBsahelBsafsufaBsafecoB
saddledomeBsaddleB
sacramentoB	sackvilleBsackingBsabrinaBsabotageBsaatBsaadtheBryansBrvBruthannBrussellvilleBrussellBruralB	runkeeperBrunawayBrumorBrumblingBrumahBrumBrulingBruledBruhlBrudeBruddBrubyBrubbinBrubberyBrubBruBrsxBrspcaBrsfBrsaBrqBrpnBroyBrovingBroutingBroutineBrouterBrouseyBrottingBrottenBrotatingBrotaryBrossumBroskomnadzorB	rosenthalB
rosenbergsBrosalieBroryBropeBroomrBrooftopBroofingBrongeBrondaBronaldoBronaldBrompBromfordBromeroBromaniaBromanatwoodvlogsBromBroloBrohBrogersBrodBrockstarBrocknB
rockinghamBrockingBrobloxBrobbieBrobbedBroarB	roadworksBrnkBrlyehBrlBriyadhBrivieresB
riveeeeeerBrivalryBrivalBritualisticBritualBriteBriskyBriserB	ripripripBrippingBriooooosBrindouBrinBrijnBrihannaB	rightwaysB	righteousBrigBridiculouslyBridahBricoBricketsBrickBricinB
richardsonBrichBribbonBriBrhodeB
rhinestoneBrhiannonBrhettBrgjBreworkedB
revolutionBrevivingBreviseB	reviewingBreviewerBreverseBrevereBrevengeBrevelBreveilleB	revealingBreusingBreuniteB	returningBretroactiveBretreatBretractBretooledBretireeBretardBretainerBresumedBrestrospectB	restoringBrestiveBrestingBrestaBresqueB
respondingB
respondentB
respectingBresoBresinB
resilienceBresidualB	residenceBreshapeBresetBreservedBreserveBresemblanceB
researcherBrescuingBrescindB	requiringBrequiemBrequestB	repulsiveBreprocussionsBreprisesB
repressionB
representsBrepresentingBrepresentativeBreplyBrepeatBrepayBrepatriatingBreopenedBrentB
renovationBrenewsitBrenewedBrenamedBrenBremovalB	remodeledBremixesBremembranceB	remembersBrembrB
remarkablyBremarkBremandBremadeBreliveB	religiousBreligionB	reliefwebB	relevanceB	releasingBrelayBrekkerBrejoiceBrejectedB	reinstateBreinedBreimaginingBregrBregimeBregardB	reflectedBreferredB	referenceBreedBredwingBreducesBredoBredistributeBrediscoveredBredesigningB
redemptionB	redeemethBredeemBreddishBredbullBrecruitmentB
recruitingB	recordingB	recordandB	reconnectBrecoilBrecognitionBrecluseBrecipBreceiveBrecalledBrecBreboundB	rebootingBrebootBrebelledBreatorB
reassignedBrealmB	realisticBrealismBreafsBreactionBreactedBreactBreachedBrcmpBrchsBrcBrbiBrbBrazingBraynerBrawB	rationingBratioBrarB	ransackedBrandomBrandBrampBramatBralphBraitBrainyBrainierBrainfallBrainedBrailroadBrailedBragingBragBraffiBradicalBracerBraccoonBraccoBrabbitB	qzloremftBqvcBquizzedBquitBquirkBquietBquickerBqueerB
queenslandBqueenmyBquantumBquantitBqualsBqualitBqtyBqldBqiangBqendilBqaveBpythonBpyrotechnicBpwhvgwaxBputhBpusssssssssyBpushB	purposelyBpurposeBpurpoBpurelyBpurdiesB	purchasedBpuppyBpuppetBpupBpunyB	punishingB
punishableBpunctureBpumpedBpulseBpulkovoBpugwashBpugBpuffBpueBpuckB
publishingBpublicizingB	publicityBpublicationBptsdBpsychologistBpsychicBpsychiatricBpsqdBpspBpsmBpsfdaBproxyBprovokesBprovocationBprovinceBproviderBprovidedBprovenBproudBprotoshoggothBprotoB
protestingBproteinBprosperB	prosecuteBproposedBproposalBpropoBproperB	propelledB
propagandaBpronouncingBproneB	promptingBpromptedBpromotedBpromoteBpromisedBpromBprollyB
projectileB	prohibitsBprofessionalB
productionBproductBproducBproddingBprocBprobsBprobB	privilegeBprivacyBprintingBprintedB	printableBprimalBprideB	prevalentBprettyboyshyflizzyBpretenseBpresumeBprestonBpressingBpreserveBpreservationB	preseasonB	preschoolBprepperB	preparingBpreparesBpreorderBprensaBpremiumBpremiseBpremiereBpremB
preferablyB
preferableBpreferB
prefectureBpreconditioningBprecisionisticB	preachingBprayerBprayedBprairieBpractitionerB
practicingBpracticallyBpraBpporBppleBppBpoxBpowderBpowayBpoursBpouringBpouredBpourBpoundingBpoundBpotatoB	postponedBpostexistenceB	posteringBpostcardBpostapocalypticflimflamBpostalB	possesionB
positivityB
positivelyBposeBpornhubB	porcupineBpopularmmosBpopeyesBpopcornBponeBpomoBpollutedBpoliticizedB
politicianBpoliticB	policylabBpoleBpolaroidBpolarBpoisonedB	pointlessBpointingBpoignantBpogoBpodcastBpoconorecordBpnpizodyB	pneumoniaBplzBplymouthBplutoB
plummetingBplumbingBploppyBpllBplezBplentyBpledgedBpledgeBplebB
pleasantlyBpleaBplazaBplaystationBplayaBplattBplatinumBplankBplaningB	planetaryBplBpivotBpityB
pittsburghBpitchedBpissBpiscesBpiracyBpirBpipingB
pipelinersBpinkBpineviewBpinerB	pilloriedBpilgrimBpileupBpileqBpikinBpikachuBpigaBpiercingBpierceBpiercBpicturedBpickupB
physicallyBphotosetBphotographyBphotographedB
photogenicBphillipsBphilippiBphilipBphiladelphiaBpharrellB
phantasmalBphandomB
phalaborwaBphBpgBpfftBpettingB	petroleumBpetersenB
petersburgB	petebestsBpeteBpestleB
personallyB
persistentBpersistBpersecutionBperrieB
permissionB	permanentB
periwinkleBperishedB	periscopeB
performingBperformBperceiveBperBpensionBpenneysBpennB	peninsulaB	penetrateBpenBpelosiBpeiceBpeetersBpeerBpeepedBpeelBpedroBpedalBpeasantBpearlBpealeB	peacetimeB
peacefullyBpeaBpeBpdxBpdBpciBpbxBpbcanpcxBpbBpayingBpaydayBpaybackBpaxtonBpawsoxBpaulistaBpatronBpatrolBpatriotBpatrickjbutlerBpatioB
pathfinderBpatedBpatchedBpatchBpatBpastorBpastieBpastaBpasswordBpassiveBpassionBpascoeBpascalB
parsholicsB	parlimentBparliamentaryBparkedBparisianBparentalBpardonBparchedBparatrooperBparamoreB	paramedicBparadiseBparadeBparacordBparaBparBpapiB	paperbackBpapaBpantofelBpanikBpandoraBpandemicBpanayBpanamaBpalmerB	palestineBpalermoBpajamaBpaintheyBpainfulBpagingBpageshiBpagasaBpaedsBpadreBpaddedBpadaBpadBpactBpacquiaoBpackingBpaciBoysterB
oworoshokiBowenrbroadhurstBowenBovoBoverwhelmingB	oversightBoverseeBoverrunB
overpricedBoverlookingB
overlookedBoverheadBoverflowB	overdriveBovercomeBoverchargingB	overboardB	overblownBoverallBovenBovBouvirBouvindoBouttaBoutnumberingBoutcryBoutcomeBoutburstBoutbreedBoutboundBoutBourBoupBounBoughtBouchBotpBostentatiousB	ossingtonBospBosoBoshaBosbourneBosamaBoryxBorpikB	orphanageBoriannaB
organizingB	organizedBorganismBorganBordainedBorchsBorchidBorchestratedBorchardBorcaBorangiBoracleBoptionedBoptimizationB
optimisticBopticalB
oppressionB	oppressedBoppBopinionatedBopheliaBopenerB
ooooohshitBooohshitBoonyBoonBoompahBookBooBonshitBonrBonlyBonlinemhBonlineaBonlinBonionBonesieBonedirectionBonboardBomwBomronBomggggBomegaBombudsmanshipBomahaBoliviamilesBoliveBoldestBolderBoklaBokinawanBokanowaBoiledBoifBoiBohlordyBohgodBogunBogtBofrB	ofnsixjksBoficialB	offspringBoffsiteBoffsideBoffshootBoffsB
offloadingBofflineBoffingBoffenseBoffenderBoffendedBofcourseBofclansBoefBodellBoddballBodaiBoctBoclockBocdB
occurrenceBoccurBocampoB	obviouslyBobtaingBobserverB	obscuringB	obliviousB
obligationB	objectionBobispoB	obedienceBoamsgajagahahahBoakridgeBoBnytBnyseBnypdBnyoziBnychaBnycfcBnyackBnwoBnvrBnuysBnuuBnurgleBnuiBnuhBnswBnsideBnsfBnsaBnrcBnpzpBnoxiousBnoxdvBnowtBnovemberBnoutB
nottinghamBnotreBnotifiedBnotificationsuBnothingnessBnotherBnotexplainedBnotedBnoteBnotBnostrilB	nostalgiaBnossoBnormallyBnorfolkBnorandaBnoraB	nooooooooBnoodleBnoobBnomiyaB
nominationB	nominatesBnoiB	noemotionBnoelBnockthieBnochesBnoblemanBnoahBnnwBnnoBnlBnkeaBnjengaBnjBnittysBnitroglycerinBniteBnissanBniqqaBninoBninjaBnikkiBnightmarishlyBnightmarishBnighBnicoleBnicBniallBniagaraBniaBngataBngBnflexpeBnfBnexusB	newspaperBnewserBnewpoBnewlyBnewideaBnewestBnewbieB	nevermoreBnetflixBnesterBnervousBnepalBneighboringBnegotiationBnegotiatingB
negligenceBneglectBnecroBnecesBnearingB
ndetentionBncmsBnbcnightlynewsBnbcBnbanewsBnbaB	naypyidawBnavigateBnatwestB	naturallyBnatsuBnatsBnathanBnateBnatalyBnatalieBnarsBnarryBnarrowlyBnarratorB	narrativeBnarratedBnaomiBnanotechBnamjoonBnakedBnajibBnagaskiBnaemolgoBnabbedBnaayfBnaaaBmythBmysticalBmypillowstudioBmygcBmyelfBmycareerBmxaaaaBmxBmwjcdkB
mwednesdayBmvBmuzziesBmutualBmuttB	mutilatedBmuteBmustardBmuskB
musicvideoBmuseBmuschampBmurloBmurfreesboroBmumblingBmumbaitimesBmultidimensionalBmullinBmulberryBmulanBmuggedBmuffleBmtrBmtheBmrwBmreBmrcBmppBmpcBmoyoBmovtBmouseBmourningBmountingBmountainousBmouldingBmotoristBmotordomBmotogpBmotleyB	motivatorB
motivationBmothernaturenetworkBmotheBmoshavBmoshBmosebyBmoronBmoroccoBmorethanBmorelandBmorebutB	mordechaiBmorbidBmoraleBmophemeBmopBmontyBmonthlyBmonstrosityBmonroeB
monotonousBmonopolizedB	monologueB
monitoringBmonitorBmonicaBmonetaryBmommyBmolysBmoltenBmolloyBmolecularlyBmoldBmolaveBmoistBmoirBmohammedBmofoBmoeBmodocBmodisBmodiboBmodiBmodestB
modernizedB	modernizeBmoderateBmockeryBmockedBmoblinBmobileBmoanBmmkBmmBmlnBmlkBmizzouBmizutaBmixxtailBmixtapeBmixedB
mitigatingBmistyBmistakenBmissouriBmississippiBmisledBmishaB	misguidedBmisfoBmisfitBmiseryBmisdirectionBmiscalculationBmirrorBmiradBmiracleBmirBminutiaB	minusculeBminusBmintBminoBminkBminionB	miniatureBmingoBmineralBminenessBmindlessBmindedB	milwaukeeB
millenniumB
militarismBmilitaBmileenaBmildBmigraineBmidweekBmidtownB	midsummerBmidstBmideastBmicsB	microwaveB
microsoftsB	microchipBmicrobeBmichelBmiaBmhmmmBmgnBmgBmfiBmetsB	metrotownBmetropolitanB
metropolisBmetroidBmetrobusBmeteorB
metastaticB	metallicaBmetBmessyBmessiahBmessiBmesmerizingBmeshBmerleBmergedBmereB	mercenaryBmercBmeowingB	mentalityBmenciusBmenahemB	memorableB
membuahkanBmeltedBmelloBmelanieBmeganB
megalpolisBmeerkatBmeellltttingB
meditationB
mediocrityBmedicBmedianBmeddlingBmedalBmeadeBmdtBmdashBmcvBmcrB	mcphersonBmcouB
mclaughlinBmcilroyBmcgwireBmcfaddenBmcdonaldB	mccormickB	mcconnellBmccainBmbiwaB	mbataweelBmbaBmazingBmazdaB
mayweatherBmayorB
mayonnaiseBmaxsysBmaxiBmaxedBmavBmattressB	mattinglyBmatthewBmathBmaterialismBmateoB	matchwoodBmasturbationBmasturbatesBmasterpieceB	massgraveBmasonBmaskBmashBmascaraBmarvinsB
marvellousBmarshallBmarrieBmarriageBmarrBmarquisBmarquezBmarleyBmarleneBmarketwatchBmarketforceB
marinadingBmarilynB	marijuanaB	margaritaBmargaretBmarekBmarbleBmarathaBmarBmapleB	manzanitaBmanuelBmanuallyBmanualBmanorBmanneredB	mannequinBmanlyBmankindBmanitouBmanifestingBmangoBmaneBmandemBmanageBmamataBmaltaBmallordBmaleBmajestyB
maintainedBmainlyBmainlineBmainlandBmaineBmaigaBmaidBmahaloBmaguBmagogBmagneticBmagneBmagicalBmagesBmagellanBmagazineBmagB	mafireemsBmadddddBmadaraBmachismoBmachidaBmacabrelolitaBmacaBmaailissBmaaaaanBlzktjnoxBlzkelyBlyriumB	lyricallyBlyricalBlyricBlyndonB	lynchburgBlynchBlymeBlyfBlyBlvgBlvBluvBlurkinBluredBlumeBlumbarBluluBlukaBlujoBluhanBlucioBluciferBlucasBluBltzBlpdklBloyaltyBlowkeyBloweredBlougheedBloudestBlouderBlotgBlosesBloserBlorrBloreBlopezBlootBloosersBloooooooooooolBloooooolBlooneyBlookgB	longevityBlongabergerBlonerB
lonelynessBlololBloloBlollapaloozaBlokoBlokiBlogicBlocksmithingBlockdownBlobbyBlobbiedBloathingBloadingBloadedBloaBlnpBlmfaooooBlmaovBllfBllegasteBlkBliyeBlivinB
livestreamBliverBlivemintBlivelyBliveleakfunBlivBlitterBlithiumBliteBlitanyBlisteriaB
listenliveBlispBlisowskiBliquidationBliqdBlipstickBlionelBliningB	linerlessBlindsayBlindenowBlindBlincolnBlimaBlimBlilyBlilourryBlightmanBlightlyBlighterB	lightbulbB	lifestyleBlifelongBlifelineBlifeitsBlickinBlichBlicensedBlibsBlibbyBliarBlexiBlewisBlevyB
lethbridgeBletdownBlestBlesothoBlesnarBleprosyBleoneBleonardvilleBlenoreBlennoxBlemBleitchfieldB	leicesterBlehBlegislationBlegionnairesBlegionnaBlegionBlegalBleftyBleftwichBleelanauBlearniBlearnedBleaningBleanBldnrBlccBlcbBlbrBlayoutBlayerBlaxBlawsuitBlawrenceBlawnBlavatoryBlaundryBlatticeB	latinoandBlatinaBlateralBlatelyBlastingnessBlassicsBlashingBlashBlariousBlaraBlappingBlapakaBlaoisB	lansdowneBlanjutBlanguishingBlangtreeBlangleyBlanfordB	landolinaBlandiBlanceBlancasteronlineBlanaBlambastsBlambB
lalaloopsyBlakhBlaighignBlagB	lafayetteBladinBladBlacedBlabourBlabelledBlabelBkyBkwaaaaaB
kuznetsovaBkusB	kurdistanBkunstlerBkungBkulliB	ktfounderBkrefeldBkpdiedBkpBkozBkouBkotolilyB	korzhonovB	kororinpaBkoreanBkookBkomoBkomenBkodakBknwB	knowledgeB	knowlddgeBknottBknockoutBknobBknoBkneelB	klitschkoBkitchenBkissingB	kissimmeeBkirstenBkindofBkindlyB
kindersleyBkillinBkikeBkijimaBkijanBkievBkidneyBkiddoBkiddingBkiddieBkickingBkiaBkhuzdarBkhulnaBkhroneBkhqBkhakiBkhBkgbBkfvsBkfcBkeurigB
kettlebellB	kesabaranBkerriBkernBkeratinBkenyaBkenoshaBkennyBkennedyBkenjiBkelloggBkelbyBkeithyyBkeithBkeeganBkebabBkcrwBkcarosawmurBkcBkbakBkaylaBkayBkatunewsB	katherineBkasichBkashBkasabweBkasabBkarnalB	karlsruheBkarenBkanyeBkansaBkanglaonlineBkangerBkaneBkamkaB	kamchatkaBkaldiBkaiserBkaiBkabwandiBkabulBkaboomBjustinB
justifyingB	justifiedBjustBjusBjuryBjupiterBjunkoBjunkBjungleBjuneauBjunctionBjunBjumpinBjumperBjulieBjulBjuicyBjuiceBjudithBjudicialB	judgementBjudaBjuannyBjuanmthompsonBjuanBjsdfBjrowahBjpBjournoB
journalismBjotaBjosieBjoshuaBjosephusBjosephBjoseB	jonesboroBjonesBjonasBjolieBjokinBjokeBjoeysterlingBjoesBjocelynB	joboozosoBjobbingBjklB	jitteringBjitsuBjinxBjimmyBjiminBjimBjihadisBjihadiBjihadB
jiahahahhaBjhmnyeBjfcBjezBjewelBjewBjetstarBjesseBjerryBjerkfaceBjenniferBjenBjeezBjawanBjavaBjasonBjarmuschBjarianaBjaptonBjapBjanuaryBjantaBjaniceB
janenelsonBjammedBjamieBjamaicanBjakeBjakBjaileensB	jailbreakBjaidenBjagBjadeBjacquieBjacquiBjackmanBjackieB	jackholesBjackassBjacintaBjaBizBitzB
itsllikelyBitrawcwbB	itineraryBistsBistgBisoBisntBisleBislamaphobeBisisBisedBisaiBisBirrespectiveBironyBironBiphoneBipBioBinwsBinvzicesBinvolvesBinvokcesBinvitingB	invisibleB
investmentBinvestigatorsBinvestigativeBinvestigatedBinvestedBinvestBinvadingBintroductionBintroducingBintroB
intriguingB	intriguedBintlBinterviewedB	interveneBintervalBinterspersedBintersectionBintersectioB	interruptBinterrogationBinterracialBinterlockingBinteractionB	intentionB	intensiveBintenseB	intendingBintelBintegrativeB
integratesBinteadBinteBintBinsureBinstructionBinstitutionalizeB	instantlyBinstallmentB	installedBinstallationB	inspiringBinspectBinsomniaBinsightBinsectBinsasB
innovativeBinnitBinjuresBinjectB
initiativeBinhofeBinfrastructureBinfowarsBinfomercialBinfographicBinfluentialBinfluencersB
influencedB	inflictedBinflictBinfiniteBinfiltratedBinfestedBinfernoB
infectiousB	infectionBinfantryBinfamousBinfactB
inequalityBinecBindyfestB
industrialBinducedBindotB
indonesianB	indonesiaBindoBindividlBindistinguishableBindiscriminateB	indiegogoBindieBindianperpetratedBindianapolisBindianaBindiBindexBindepthBindecisivenessB	indecencyBindahBindBincrementalBincredulousBincreasinglyBincompetentBincomeBincludesBincludedBinciwebBincitingB
incitementBinciteBincineratorB
incidentalB	incessantB	incapableBinboundsB	inbetweenBimprovesBimprisonB
impositionBimposingBimposedBimplyBimploresBimplodeBimplicitBimperialismBimpairsBimpactedBimmigrationB	immigrantB	immenselyBimmediatelyB	immediateBimeshikaB	imbalanceBimamBimaginiBimagingBimaginedB
imaginableBimaB	illusoriaBillusionBillinoisBilleryB	illegallyBiiiiBihhenBignorantBignorancesheBigniteBightBifsBificatesBieeeBidmB	identicalBidealBicymiBicyBiculateBicularB	icipatingBicipateBicicleBicelandBicaseitBicarusBicalsBibrahimmisauBibomBibizaBibetoBibarakiBibBiallyBialB	hypocrisyBhypoBhypedBhyiderB	hyderabadBhyattBhwrfBhwesternBhwBhuzzahBhusbandB
huntingtonBhuntingBhuntedBhunhryBhungrierBhungoverBhungB	hunchbackBhumphreyBhumpBhumorBhumboldtBhumbleB
humberlandBhumazaB	humanityiBhumanitarianBhuggedBhuebelBhueBhudhudBhubeBhubBhuaBhttpBhttBhtmlB	htarvrglyBhstoneBhrightBhrefBhpssjdBhpaBhowBhotterBhotspotBhostagesBhospitalizedBhospitalityBhorrormoviesB
horrendousBhorowitzB	horoscopeBhornyBhornoBhorndaleBhornBhopferBhopedBhoopBhoofBhoodBhonshuBhonourBhonoredBhonestBhonduranBhondaBhomsBhomosexualityBhomiesBhomicideBhomerBhomepageBhomemadeB	homegrownBhomefolkB	homebuyerBholtzBholtB	holodomorBholmgrenBhollywBhollyBholisticBholedBhokeBhoistingBhoganBhockeyBhobbyBhmuBhmmmBhmBhlgBhlessBhixonBhitterBhitsBhitchhikingB
historicalBhistBhisaoBhirschBhirochiiBhiredBhintonBhintB	hindustanB	hindsightBhinataB	hilversumBhillyBhillsideBhillarymassBhildaBhilBhikerBhikeBhiguainB	highsmithBhighlandBhidingBhideousB
hicksvilleBhibernatingBhiattBhhsBhhahahaBhexagonBhesseBherringB	hermitageBhermanBhenshawBhenleyBhendrixonfireB	hendricksBhenBhemBheloBhelmetBhelmBhellerBheleneBheiressBhehehBheheBhebronBheavyweightBheavydiBheatherBheatedBhearsB
healthcareBhealingBhealedBheadlineBheaderBheaddeskBhcgBhboundBhazmatBhaydenBhawkBhavntBhavBhatzolahBhatredBhatmanBhastleBhassleBhasilBhashtagsBhashdB
harvestingBharshlyB	harrowingBharrisBharmonyBharmanB	hardstyleBhardenB	hardcoverBhardcoreBhardaB
harassmentBharBhappilyBhapaBhanoverBhannahBhannaBhankBhanginBhandsomeBhandledBhandicappedBhandiB	hamstringBhamptonroadsforBhamptonB	hampshireBhammondBhamletBhalseyBhalfwayBhaleyBhakogakuBhairyB	hairdryerBhailingBhaiBhahahBhahBhadntBhackedBgyrsiBgypBgwattBguthrieBgustoBguoBgunnerBgunnedBgummyBgullBgulfpoBgulagBguimarasBguildBguevaraBguessingBgucciB
guatemalanB	guardrailBguamBguabxfvBgtxrwmBgrumpoutBgrubbingBgrosslyBgrossBgroinBgroceryBgroaningBgrizzlyBgrittyBgritBgrimrailBgrimeBgrilledBgrilleBgriffinBgridlockBgridBgreyjoysBgregoryBgreetBgreerBgreenwayB
greenspaceBgreasyBgraywardensBgrayedBgravyBgraveBgrassBgraphBgrapeBgrantedBgrandmaBgrandfatherBgrandadBgrahamwpB	graduatedBgrabbedBgpvBgpBgozBgovtsBgovernBgouldingBgotthardBgothamBgosteiBgospelBgoshenBgoshBgorgeousBgoreB	gooooooooBgoooooooaaaaaalBgoondaBgoofballBgoofB	goodnightBgoodnessBgoodluckBgoodellBgoodeBgonerBgolfballB	goldsteinBgoinBgogglesBgogBgodlyBgodlikeB
gobsmackedBgnwtBgnsBgnBgmcrBgmailB
gloucesterBgloriousBgloomyB	glononiumBglitterBgleanedBgladbachBglacierBgiveawayBgistB	girardeauBgiorgioBgioBgingaBginB
gillibrandBgilgitBgigglingB	gigawattsB	gibraltarBgiannisBgiBghulBghostwritingBghettoBgheBgeyserBgestureBgesseritBgeorginaBgentlyB	gentlemanBgentleBgenocideBgenitalsBgenisysBgenerousBgenericBgenBgeminiBgeekBgcBgbboBgazeboBgazansBgauzeBgautengBgaspingBgaspedBgasparcBgaspBgasolineBgarzaBgargoyleBgarfieldBgapingBganseyBgangstermailBganderBgammaBgameofkittensBgambitBgambiaBgallupBgalleriaBgalifianakisBgalaxyBgalBgainesvilleBgailBgaiaBgagnonBgagBgaeliteBgabonBgaBfyldeBfwtBfwdBfvckBfusoBfusionBfurstBfunniestBfunkoBfuneralBfundwhenB
fundraiserBfundamentalB
fulfillingB
fukurodaniBfuelingBfueledBfuddyBfucktardBfuckfaceBfuckboyBfslothsBfryingBfryBfrustrationB
frustratedB
fruscianteBfrozeBfrothyBfrostB
frontlinesBfrontinBfrogBfriscoBfrigginBfriedmanBfrickinBfreyaBfreudBfresnoB	freshnessB
frequentlyBfrequentBfrenzyBfreezerBfreezeBfreeviewBfreemanBfreeingBfreddieBfreakedBfraudBfratBfranklyBfrancisBfrailB	fragranceBfragileBfoxspoBfoxnewBfoxaBfowlerBfouseyB
foursquareB
foundationBfoughtBfotosetBfossilBforsytheBforseeBforrestBforrealBformulaBformingBformatBforgiveBforestserviceBforeskinBforemanB
forefatherB
foreclosedB
forebodingBforbidsBforbathBfoothillBfootedBfoolishBfooledB	foodborneBfooBfontBfondnessBfollowsBfollownflnewsB
followbackBfoldingBfoldBfnafBfmkBfmBflynnBflushBflurryBfluidBfluffyBfluctuationBflowBflourBflorinBfloridBflorenceBfloralBfloppingB
floorburntBfloatinBfloatBflippedBflintBflexBfletcherBfleshBfleeingB	flechadasBflawlessBflawBflavoredB
flatlinersBflatbackB	flashbackBflamethrowerBflakeBflBfjordBfizzyB
fitzgeraldBfitzB	fittscottBfitbaBfistBfirmlyBfirmBfiringBfireyB	firepowerBfirefigthersB
firefightrBfirefightingB
firefighteBfireballBfionaBfinnaBfinnBfiniteBfinishedBfinerBfinanceBfinallBfinaliseBfinaleBfinBfilterB	filmmakerBfilmingBfilmedBfillingBfiguredBfighterdenaBfifeBfieryBfierceBfideBfiddleBfidayeenBfictionBfiatBffviiB	fforecastBfeverBfestacBfestBferrochromeBfernoBfergieBfentanylBfemnismBfemBfelB	featuringBfeBfdxBfdbdpBfcoBfckedBfciB
favoritismB	favoritedBfavoriB	favorableBfavorBfavedBfaultB
fatburningB	fastpitchBfastingBfastestBfascinatingBfarmlandBfarmerBfarewellBfarceBfaqBfangedB
fanfictionBfanbaseBfamiliarBfameBfalmerBfallacyBfairyBfairlyBfaintlyBfaintBfailingBfadeBfadcBfactualB	factsheetBfactionBfacelessBfabBeyesBexumBextraordinaireB
externallyBextentB	extensiveB	extensionBextendedBextendB	exquisiteB
expressionBexposureBexposeB	explosiveB	exploringBexploresBexploitB	explodingB
explicitlyBexplanationB
explainingBexpenseB	expansiveB	expansionBexpandedBexpandB	exofficioBexoBexistantB	exhibitorB
exhibitionB
exhaustionB	exercisedBexerciseB	executingBexclamationBexcitingBexciteB	exchangedB	excessiveBexceptionallyBexceptionalB	exceptingBexactBevolvedB
everythignB	everyonesBeverwheBeversafeBeverestBevangelicalBevadedBevadeB
evacuatingBevacB
eurotunnelB
eurocrisisBeuroBetoffeBetoB	ethiopianBethicBeternityBesteemBestablishmentBestBessenceofmeBesseBespoB	espargaroBesotericBesnBeshBesevuBerykahBerstaffBerrrrBerrBerodesBerodeBermacBerieBericBerectedBerallyBeraBequationBequallyB	equalizerBepsomBepochBeplB	episcopalB	epiphanesB	epilepticB	epicenterBepaBeovmBenvisionBenviromentalBentranceBentitlementBentirelyBensuringBensuresBensureBensuingBensuedBenormousBenhancedBengleBengineeringB
engagementBengagedBenemityBenduringBendorsesBendorsementB	endlesslyBendlessBendersBenderB
encouragedBencoreBencodedB	encausticBencaBenactsBenablingB
enablementBenabledBemscBemptiveBempowerBemployedBemoBemmyB	emmerdaleBemmanuelBemittinBeminemBemilioBemileeBemileBemiBemergingBemergesBemergBembroideredBembracedBembraceBembraBemberBembarrassmentBembarrassingBemailedBelvenBelsaBelmBelliottBellieB	elizabethBelitistB	eliminateBelijahBeligibleBelgatoBelevatorB	elevationBelectrostaticBelectrocutedboilingBelectroBelectricityBelectBelecmanBelderlyBelbowBelationBelanorofrohanBelaborationBejaculatingB
eisenhowerBeightyBeighthBegyptianBefsBeffectedBefakBeerieBeepBedwinBedmundBedmontonBedmondBedkBeditorBeditBedisonBedgeBeddyBectBecstaticB	economicsBeconomicallyBecologyBecoBechoBebbBeauBeastwardBeastonBeasierBearnB	dyxtmryduBdysfunctionalBdynastyB	dyersburgBdwightBdwarfBdwBdvcBdvbbsBdustpigBdurvodBdurhamBdurbanBdurantBdupreeBdupeBduoBdunkingBduneBdundeeBdunbarBdumpingBdumbfoundedBdumbassBdumBdullBduhBdudaBduckvillelolBdubstepBdubloadzBdubboBdubBdtbBdserialpcilpBdryingBdrumstepBdrumpfBdrummondBdrummingBdrownsBdroppingBdroppdBdroolBdrobB
driverlessBdrinkerBdrillerBdriftingBdriftBdriedB	dribblingBdressingBdressedBdressBdrenBdreamingBdrayeshaBdrawingBdravetBdrankBdramaticallyBdrainB
dragonvaleBdragoBdragneelBdraftedBdqsvyusyBdownsideB	downrightBdownpourBdownloadingBdowningB
downgradedBdoughBdougB	douchebagBdotishBdorrieBdorrianBdorlingBdoritosBdoretteBdorettBdopplerBdopeyBdopestBdooneBdoomedBdonutBdonnyBdonnieB	doningtonBdonationBdonatedB
dominicanaBdominantB	dominanceBdomesticBdomBdojoBdoggBdoessntBdoesntBdodgeBdocumentingBdocumentaryBdocoBdockedBdoB	dnbheavenBdmBdlhBdixieBdivisionBdivineBdivestitureBdiversifiedBdiverseBdivBdittoBditchedBdisturbanceBdistributionBdistressBdistractionBdistinctionB	dissuadedB	disregardBdisputeB
displeasedB	displacesB	dispersedB
dispensaryBdispatchBdisownsBdisownedB
disneylandB	dismissesBdislikeBdisinfoBdisillusionedB
disfiguredBdisembarkmentBdisdainB
discussionB
discussingB	discussedBdiscountBdisconnectedB	disclosedBdisclosB
disclaimerBdisarmedBdisappointingBdisappointedB
disappearsBdisappearingBdisappearanceBdisagreementBdirumahBdiretubeB	directoryB	directingBdirectedBdirectBdippingBdiplomatB	dimensionB
dilutionalBdiluteBdillBdilawriBdigginBdigBdifferentlyBdieselBdierksBdiegoBdieboldBdictatorBdickyBdickheadBdiasporaBdiaryBdiarrheaBdialysisBdialB	diagnosisBdiabloB
dhsscitechBdhalgrenBdhBdfrBdfljevBdewdneyBdewBdevoursBdevoteBdeviseBdevilB	deviatingBdevelopmentB
developingB	developerB	developedBdevelopB
devastatesB	detersionB
determinedBdetectorBdetainsBdestructiveB	destroyerBdestinedBdestinationB
dessicatedBdesignerBdeserveBdescriptiveB
describingB	describesBdescribeB	descendedBdermaBderivesB
derivativeBdereBderB
depressionB	depressedBdepreciationBdepotBdeployedBdeployBdeoBdenyingBdenyBdentonBdentalBdenimBdeniesBdeniedBdenialBdenaliBdenBdemonstratedBdemonessB
demolishesBdemoBdemiseBdemeanorBdeluxeBdeludedBdeltaBdelphiBdelmontB	deliveredB	deliciousBdeliberatelyBdelhiBdeleteBdelayingBdelanyBdeiBdehydrationBdeglinBdeflategateBdefiniteBdefinedB	defensiveB	defendingBdefenderB	defendantBdefenceB	defectiveBdefectB	deepwaterBdeeplyBdeepestBdeepakBdeemedBdeejayempiresoundBdeedBdeeB
dedicationBdecriminalizedBdecreeBdecreaseB
decorationBdecorBdeconstructBdecompositionBdecoBdeclinedB	declaringBdeclaratBdecentBdeceasedBdecayedBdecBdebbieBdeadpoolB	deadliestBdeactivatedB
deactivateBddosBddntBdcfdBdbBdazzleBdaytonBdawgsBdawabshaBdavisonBdavisBdaviesmutiaBdavidsonBdaveB	daughteryBdaubtB	darwinismBdarkestBdarkenB
dardanelleBdannyBdanielleBdanglingBdancingBdamselBdampenBdamnnnnBdamiengayleBdambisaBdamaturuBdamatuBdalroyBdakBdajaalBdaisyBdaggerBdaeshBdaddyBdabbedBcyprusBcypressBcyhiBcybersecurityBcyberBcyaBcwBcuttingBcutleryBcutiesBcutestBcursedBcurseBcurryBcurrensyBcurlBcureB
cummerbundBcumberbatchB
cultsierreBcuffedBcucksBcubeBcuBctyBctrBcteBctaBctBcstBcryibgBcrunchyB	crumblingBcruiseBcrudeBcrucialBcrqckB	crptotechBcrozesBcroydonizationBcroydonBcrownedBcrownBcroweBcrossingBcrosedBcrookB	crocodileBcrockeryBcritterB
criticallyBcringesBcriedBcrestBcrescentBcreptBcreepingB	creepiestBcreeperBcreelBcreekBcreditedB
credentialBcreatureBcreativeBcreationBcreatesBcreamfieldsBcrbzfzBcrawlingBcravingBcrashsterlingBcrampBcrammingBcraigBcrackerBcprBcpanelBcowgirlBcowardlyBcoveringBcoverageBcoursingB
courageousBcourageBcounterstrikeBcouncilBcouldntBcouldaBcougarBcouchBcoteBcostlyBcosmeticBcositsBcorrespondentBcorrelationB	correlateB
correctingBcorrectBcorpseBcoronetBcornBcorkBcoriiBcoreBcorB	coquitlamBcopperfieldsBcopperBcopiedBcopaBcooperstownBcooperBcoolingBcoolestBcookingBcookieB	convivtedB
conventionBconvenientlyBcontriesBcontributorBcontributionB
contributeB
contractorBcontractBcontrBcontigBcontestBcontemplationBcontainBconsumesBconsumeristB	constructBconstitutionalB
constituteBconstellationBconsoleBconsistentlyB
consistentBconservationBconsciousnessBconnectsBconnecticutBconklinBcongratulationBcongratsB
congestionBconfusedBconfirmationBconfidentialB	confessesBconfB	conductedBcondoBconditionsprivationB	condensesBcondemnsBcondemnationBconcurB
conclusionB	concludesB	concludedBconcentrationB
compulsoryBcompoundB
competitorBcompetitiveB
compassionB	comparingBcompBcommuterBcommuteBcommonwealthB	commodityB
committingB	committedB
commitmentB	commitingBcommitB
commissionB	commentesB
commentersB	commencesBcommencementBcommenceBcommaBcominBcomethBcomeeeeeBcomaBcolumnBcolorismBcoloredB
colorectalBcolonelBcolomrBcolombiaBcoloB	colnharunBcollieBcolleenmnelsonB
collectiveBcollectibleBcollarBcollaboratingBcollabBcolinBcoleslawBcolB	cognitiveBcoffinBcoercionBcoercedBcoefficientBcodBcocoaBcockerBcocaineBcobesBcoatesBcoatedB
coastguardB	coalitionBcoachingBcnmiBcnbcBcnBcmcsaBcmBclydeBcluelessBclueiBclueBclownBcloudyBclothingBclotheslessBclotBclosingBcloseupBclosetBcloselyBclogBclipuriBclinicalBclimbingBclimbedBcliccaBclericalBclergyforcedBclelliBcleggBcleavageBcleavBcleaningBclawingBclarksvilleBclaptonBclappingBclancyBclaireBclaimingBclaiminBclaimedB	claiborneBcladdingBclBckecBcjBcivilizationBcitypornBcitylinkBcitrusBcitingBcitiBcitationBcisladyBcircuitBcipinangBcinsBcillaBcigsBciggsB	cigaretteB	churchillBchuckerBchuckBchryslerB	chronicleBchristBchrissieB
chowchillaBchoreBchordBchopraBchoppingBchoppasBchooseBchokedBchokeBchoctawBchippewaBchipperBchimBchilliBchiliB	childfundB	childcareBchiassonBchiangBchewB	chevroletBcherB
chemicallyBchelseaBcheerB
cheekinessBcheekBcheckoutBcheckingBcheckedBcheBchaserBcharredBcharonBcharmingB	charmeuseBcharlizeB
charlestonBcharcoalBchapterB
chapoutierBchaningBchandrababuB	chandaneeB	champaignB	champagneBchampBchallengingBchalkedBchainsawBchachiBchaBcgiBcggBcfcBcestBcessnaBcervixBcervelliB
cerographyBcerealBcensusB
censorshipBcenaBcelticB	celebrityB	celebretyBcecilBcechBcebuB
cbplawyersB	causationBcauedBcatlowBcatfishBcategoryB	catechizeBcatcherB	catalogueBcataclysmicBcasuallyBcasuBcastingBcasinoBcasingBcaruanaBcarriageB
carpoolingBcarnegieBcarmiBcarmelBcarlBcaringBcaribeanB	caribbeanBcarhotB	careerismBcareenBcaredB	cardboardB
carbondaleBcaraB	capturingBcaptorBcaptionBcapsizeB
capitalistBcapeBcantwoBcantarBcannibalismB	candidateBcanberraBcanalBcanadianBcanadasuicideBcanBcampingBcamperBcampbellBcampanhaBcamilaBcameraBcamdenBcalmlyBcaliBcalhounB
calgariansBcalaisBcalabriaBcalBcakedBcainBcaiB	cafetiereBcaesarBcactusBcacklingBcachetBcabrilloB
cabramattaBcablingBbyrBbypassBbyityfBbyeBbuzzfeedBbutsBbutiqobB
buthidaungBbutchBbustingBbustBbusinessmenBbushmanBbuseyBbuscemiBburyBburpBburokerBburntBburnerBburmaBburglaryBburgerBburfordBbuntingBbundyBbunchBbumpinBbumpBbummerBbullyBbullshitBbullpenBbulletproofB	bulgarianBbuildupBbuilderBbuffettBbuffetBbufferBbuddzBbuddhaBbudBbuckleyB	bucharestBbuchanaBbtwBbstBbsgBbsfBbrzjcBbruvB	brutalityBbrutalBbrushBbruntBbrowsingBbrownerBbrosBbroooB	bronvilleBbroadlyBbroaderBbroadcastingBbritBbristolBbrinxBbrincoB	brilliantBbrightonBbrighteningBbrigadeBbrigB	briefcaseB
bridgeworkBbridalBbrewingBbrenasBbreivikBbreederBbreedBbredB	breathingBbreathBbreastB	breakdownBbreachBbrbrsBbrbB	brazilianBbraveryBbraveB	brassworkBbrassBbrantBbranchB	brainlessBbrahmanBbradleyBbradfordBbracketBbracingBbraceletBbraceBbrBboylespoBboydBboxsetBboxedBbowknotB
bowhuntingBboweryBbowBbovineBbouttaBboutaBbounceBbottlingBbotheredBboringBborgeousBboozeBbootyBboostBbonusBbongBbonaBbonB	bolshevikBbolasieBbokutoBboiseBbodiedBbodBbobbleBboardingBbnBbmxBbmwBbluffBblowoutBblowjobBblowinBblowerBblossomBbloorB	bloombergBbloomBblokeBbloggerBblockageBblitzedBblitzBblissBblinkBblevinsBbleedsBbleedBbleacherBblazerBblankBblamingBblaiseB	blackmailBblackenB	blackcatsB	blackburnB	blaaaaaaaBbkbBbjpBbizBbittenBbitingBbiryaniBbioterrorismiBbiosurveillanceBbiolabsBbiolabBbingBbindBbilsenBbillyBbillneelynbcBbillitonBbillingBbillersB	bilingualBbilicBbigstarBbigrigradioBbiggieBbiggarBbieberB	bickletonBbicentennialBbiblicalBbiasBbhpBbhavanaBbhaijaanBbfBbettingB	bethlehemBbethBbestivalBbestieBbestiaBbesiegedBbesideBbernardBberlinB	berlatskyBbenzemaBbentleyB	benstracyBbensonB	benothingBbenjaminBbenitezBbengstonBbengaliBbengalBbenedictBbeneathBbeneB	benchmarkBbelugaBbellyBbelleBbellaBbelBbeitBbeisbolBbeinaBbeigeBbeholdB	beheadingBbeheadB	behaviourBbeetrootBbeepBbeefBbecymeB	beckoningB
bebacksoonBbeaveBbeautyBbeautifullyBbeaumontBbeatzBbeatenBbeatdownBbeastlyBbeastinBbeastBbearerBbeanBbeaconBbeachedBbeBbdayBbdBbcuzBbcsBbckBbbmBbattingBbatistaBbatheBbasketBbaskBbasisBbashingBbashBbasemanBbaruchBbarringBbarrackBbarraBbarkingB
barkeviousBbarkBbarfieldBbarelyBbardoBbardB	barcouskyBbarberBbarbaricBbanquetB	bannisterB	bankstownBbangtanBbanerjeeBbamaB	baltimoreBballewBbaliBbaldingBbalconyBbalancedBbalBbakedBbakBbajrangiBbaitingBbairstowBbailedBbahBbaggedBbafflingBbaffleBbaekhyunBbaduBbadassBbacteriaBbacktyBbackingBbackedBbachmannBbabeBbabalmaoBbaanBbaaaackBbaBazusaBayyyBayyoBayBawolBawkwardBawesomesauceBawesomeloveBawesomeeeeeeeeBawashB	awarenessB	awakeningBawakeBawaitsBawaitBavysssBavoidsBaviationBaviBavengerBavaBauzBauthenticatingB	authenticBaustrianBaustinBaustBauntBauditBaudiBauctionBaucBauburnBaubreyBatvB
attractiveB
attractionBattilaBatticB	attendingBattendeeBattendedBattendB
attemptingB	attemptedBattachedBatomB
atmosphereBatmBatleastBatlasBatlanticBatlantaBatlB	athleticsBatchaBatcBasylumBastroturfersBastrologianB
astoundingBastonishingBasswipeBassuredBassetB
assessmentBassaultBassadBassBaspiringBasphaltBaspectBasleepBasksBasideB
ashrafiyahBashenforestBashdodBasfBaseerBascendBasbBaryBarseBarrivesBarreatBarrangedB	arlingtonBarizonaBarinBariBarguesBargueB
argsupposeBarghBargentineanB	argentinaBarfurBarentBarealBarceenBarcadeBarachysBarabicBarabBaraBaquariusBaquariumBaquaBaptsBaproposBaprilBaprBappxBapprovalBappropriateBapproachingBappreciatedB	appraisalBappointsBappointmentBappliesBappliedBapplicationBapplaudBapperceptionBappeaseBappealB	appallingB
apologizedBapocalpyticBapdBapazB	aogashimaBanzaBanywhereBanywaysBanytimeBantonyBantipoziB	antiochusB	anthologyBanthelminticBansweredB	anonymousBannoyedBannouncementB	announcedBannounceBannihilatingBanndddBannaBanistonBanimeBanimatronicsB	animationBangelriveralibBangelinaBandsBandrewBandreaBandreBandersonBandersBancopBanceBanatomyBanalogBanakinBanaBamsalB	amplifierBamoBaminoBamiibosBamicoBameribagBamendsBamenB	amdollelaBamcxBambitionBamberBamazingnessBamazinBamateurBamalieBamaBamBalwslBalvesBaluminumBaltonB	alternateB	altamonteBalsowhatBalskaBalphenBalphaBaloisBalmightyBalloyBallowingB	allotmentBalllllBalliedBallianceBalleyB
allegianceB	allegedlyBalisonannyoungBalilBalignBaliceBaliBalhajiBalgaeBalexisBalexandrianBalexBalbeitBalaskanB
alarminglyBalarmingBaladdinBalabamaquakeBalaBakxbskdnBakxBakwaBakramBakitoBakilahBajwBaisleB
airstrikesBairliftBairingBairhornsBainsB	aimlesslyBaiiiBaiaBahrarBahhhhBahamedisBagreesB	agreementBagonyBagniveshBaggressivelyB
aggressionB	aggressifBagedBagdqBagallochBafycsoB	aftermathBafrinBafrikaanBafloatBafghetcB
afflictionB	aestheticBaegBadvisedBadviceBadverseBadveB	advantageBadvancedBadorableBadoptiveBadoptBadjusterBadjustedB
adjustableBadidasBaddingB
adaptationBacuraBactressBactorBactivistBactivelyBactivateBactingBactinBactavisBacrylicBacquiredB	acquiesceBachingBachimotaBacesseBaceB
accustomedBaccuracy
??
Const_5Const*
_output_shapes	
:?M*
dtype0	*??
value??B??	?M"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_135412
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_135417
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?]
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?]
value?\B?\ B?\
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer-8

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
;
	keras_api
_lookup_layer
_adapt_function*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias
 '_jit_compiled_convolution_op*
?
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
?
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses
4_random_generator* 
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses

;kernel
<bias*
?
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
C_random_generator* 
?
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

Jkernel
Kbias*
?
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
R_random_generator* 
?
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses* 
?
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

_kernel
`bias*
C
1
%2
&3
;4
<5
J6
K7
_8
`9*
* 
* 
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ftrace_0
gtrace_1
htrace_2
itrace_3* 
6
jtrace_0
ktrace_1
ltrace_2
mtrace_3* 
* 
?
niter

obeta_1

pbeta_2
	qdecay
rlearning_rate
smomentum_cachem?%m?&m?;m?<m?Jm?Km?_m?`m?v?%v?&v?;v?<v?Jv?Kv?_v?`v?*

tserving_default* 
* 
7
u	keras_api
vlookup_table
wtoken_counts*

xtrace_0* 

0*
* 
* 
?
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

~trace_0* 

trace_0* 
jd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEconv1d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

;0
<1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

J0
K1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

_0
`1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
C
1
%2
&3
;4
<5
J6
K7
_8
`9*
R
0
1
2
3
4
5
6
7
	8

9
10*

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
MG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
?
?_create_resource
?_initialize
?_destroy_resource><layer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/*
* 

0*
* 
* 
* 
* 
* 
* 

%0
&1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

;0
<1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

J0
K1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

_0
`1*
* 
* 
* 
* 
* 
* 
<
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*
* 

?trace_0* 

?trace_0* 

?trace_0* 

?trace_0* 

?trace_0* 

?trace_0* 

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
??
VARIABLE_VALUENadam/embedding_1/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUENadam/conv1d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv1d_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUENadam/dense_6/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_6/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUENadam/dense_7/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_7/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUENadam/dense_8/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_8/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUENadam/embedding_1/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUENadam/conv1d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv1d_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUENadam/dense_6/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_6/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUENadam/dense_7/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_7/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUENadam/dense_8/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_8/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
*serving_default_text_vectorization_1_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCall*serving_default_text_vectorization_1_input
hash_tableConstConst_1Const_2embedding_1/embeddingsconv1d_2/kernelconv1d_2/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_134737
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename*embedding_1/embeddings/Read/ReadVariableOp#conv1d_2/kernel/Read/ReadVariableOp!conv1d_2/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp2Nadam/embedding_1/embeddings/m/Read/ReadVariableOp+Nadam/conv1d_2/kernel/m/Read/ReadVariableOp)Nadam/conv1d_2/bias/m/Read/ReadVariableOp*Nadam/dense_6/kernel/m/Read/ReadVariableOp(Nadam/dense_6/bias/m/Read/ReadVariableOp*Nadam/dense_7/kernel/m/Read/ReadVariableOp(Nadam/dense_7/bias/m/Read/ReadVariableOp*Nadam/dense_8/kernel/m/Read/ReadVariableOp(Nadam/dense_8/bias/m/Read/ReadVariableOp2Nadam/embedding_1/embeddings/v/Read/ReadVariableOp+Nadam/conv1d_2/kernel/v/Read/ReadVariableOp)Nadam/conv1d_2/bias/v/Read/ReadVariableOp*Nadam/dense_6/kernel/v/Read/ReadVariableOp(Nadam/dense_6/bias/v/Read/ReadVariableOp*Nadam/dense_7/kernel/v/Read/ReadVariableOp(Nadam/dense_7/bias/v/Read/ReadVariableOp*Nadam/dense_8/kernel/v/Read/ReadVariableOp(Nadam/dense_8/bias/v/Read/ReadVariableOpConst_6*4
Tin-
+2)		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_135565
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding_1/embeddingsconv1d_2/kernelconv1d_2/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cacheMutableHashTabletotal_1count_1totalcountNadam/embedding_1/embeddings/mNadam/conv1d_2/kernel/mNadam/conv1d_2/bias/mNadam/dense_6/kernel/mNadam/dense_6/bias/mNadam/dense_7/kernel/mNadam/dense_7/bias/mNadam/dense_8/kernel/mNadam/dense_8/bias/mNadam/embedding_1/embeddings/vNadam/conv1d_2/kernel/vNadam/conv1d_2/bias/vNadam/dense_6/kernel/vNadam/dense_6/bias/vNadam/dense_7/kernel/vNadam/dense_7/bias/vNadam/dense_8/kernel/vNadam/dense_8/bias/v*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_135689??
?
g
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_135152

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_2_layer_call_fn_134538
text_vectorization_1_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?M? 
	unknown_4:?<
	unknown_5:<
	unknown_6:<
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_134478o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_1_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_2_layer_call_fn_134768

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?M? 
	unknown_4:?<
	unknown_5:<
	unknown_6:<
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_134219o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
F
*__inference_dropout_8_layer_call_fn_135291

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_134198d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_embedding_1_layer_call_and_return_conditional_losses_134078

inputs	+
embedding_lookup_134072:
?M?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_134072inputs*
Tindices0	**
_class 
loc:@embedding_lookup/134072*,
_output_shapes
:??????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/134072*,
_output_shapes
:???????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:??????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?

H__inference_sequential_2_layer_call_and_return_conditional_losses_134938

inputsY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	7
#embedding_1_embedding_lookup_134850:
?M?K
4conv1d_2_conv1d_expanddims_1_readvariableop_resource:?<6
(conv1d_2_biasadd_readvariableop_resource:<;
)dense_6_tensordot_readvariableop_resource:<5
'dense_6_biasadd_readvariableop_resource:;
)dense_7_tensordot_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:8
&dense_8_matmul_readvariableop_resource:5
'dense_8_biasadd_readvariableop_resource:
identity??conv1d_2/BiasAdd/ReadVariableOp?+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp? dense_6/Tensordot/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp? dense_7/Tensordot/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?embedding_1/embedding_lookup?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2`
 text_vectorization_1/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_1/SqueezeSqueeze0text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV2%text_vectorization_1/Squeeze:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_134850Atext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*6
_class,
*(loc:@embedding_1/embedding_lookup/134850*,
_output_shapes
:??????????*
dtype0?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_1/embedding_lookup/134850*,
_output_shapes
:???????????
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????i
conv1d_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_2/Conv1D/ExpandDims
ExpandDims0embedding_1/embedding_lookup/Identity_1:output:0'conv1d_2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?<*
dtype0b
 conv1d_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_2/Conv1D/ExpandDims_1
ExpandDims3conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?<?
conv1d_2/Conv1DConv2D#conv1d_2/Conv1D/ExpandDims:output:0%conv1d_2/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????<*
paddingVALID*
strides
?
conv1d_2/Conv1D/SqueezeSqueezeconv1d_2/Conv1D:output:0*
T0*+
_output_shapes
:?????????<*
squeeze_dims

??????????
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
conv1d_2/BiasAddBiasAdd conv1d_2/Conv1D/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????<f
conv1d_2/ReluReluconv1d_2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????<`
max_pooling1d_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
max_pooling1d_2/ExpandDims
ExpandDimsconv1d_2/Relu:activations:0'max_pooling1d_2/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????<?
max_pooling1d_2/MaxPoolMaxPool#max_pooling1d_2/ExpandDims:output:0*/
_output_shapes
:?????????<*
ksize
*
paddingVALID*
strides
?
max_pooling1d_2/SqueezeSqueeze max_pooling1d_2/MaxPool:output:0*
T0*+
_output_shapes
:?????????<*
squeeze_dims
v
dropout_6/IdentityIdentity max_pooling1d_2/Squeeze:output:0*
T0*+
_output_shapes
:?????????<?
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource*
_output_shapes

:<*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_6/Tensordot/ShapeShapedropout_6/Identity:output:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_6/Tensordot/transpose	Transposedropout_6/Identity:output:0!dense_6/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????<?
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*+
_output_shapes
:?????????p
dropout_7/IdentityIdentitydense_6/Relu:activations:0*
T0*+
_output_shapes
:??????????
 dense_7/Tensordot/ReadVariableOpReadVariableOp)dense_7_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_7/Tensordot/ShapeShapedropout_7/Identity:output:0*
T0*
_output_shapes
:a
dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/GatherV2GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/free:output:0(dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/GatherV2_1GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/axes:output:0*dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_7/Tensordot/ProdProd#dense_7/Tensordot/GatherV2:output:0 dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_7/Tensordot/Prod_1Prod%dense_7/Tensordot/GatherV2_1:output:0"dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/concatConcatV2dense_7/Tensordot/free:output:0dense_7/Tensordot/axes:output:0&dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_7/Tensordot/stackPackdense_7/Tensordot/Prod:output:0!dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_7/Tensordot/transpose	Transposedropout_7/Identity:output:0!dense_7/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_7/Tensordot/ReshapeReshapedense_7/Tensordot/transpose:y:0 dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_7/Tensordot/MatMulMatMul"dense_7/Tensordot/Reshape:output:0(dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/concat_1ConcatV2#dense_7/Tensordot/GatherV2:output:0"dense_7/Tensordot/Const_2:output:0(dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_7/TensordotReshape"dense_7/Tensordot/MatMul:product:0#dense_7/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/Tensordot:output:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*+
_output_shapes
:?????????p
dropout_8/IdentityIdentitydense_7/Relu:activations:0*
T0*+
_output_shapes
:?????????n
,global_max_pooling1d_2/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d_2/MaxMaxdropout_8/Identity:output:05global_max_pooling1d_2/Max/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_8/MatMulMatMul#global_max_pooling1d_2/Max:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_8/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp!^dense_7/Tensordot/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^embedding_1/embedding_lookupI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2D
 dense_7/Tensordot/ReadVariableOp dense_7/Tensordot/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
F
*__inference_dropout_7_layer_call_fn_135224

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_134154d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
/
__inference__initializer_135372
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?

H__inference_sequential_2_layer_call_and_return_conditional_losses_135098

inputsY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	7
#embedding_1_embedding_lookup_134989:
?M?K
4conv1d_2_conv1d_expanddims_1_readvariableop_resource:?<6
(conv1d_2_biasadd_readvariableop_resource:<;
)dense_6_tensordot_readvariableop_resource:<5
'dense_6_biasadd_readvariableop_resource:;
)dense_7_tensordot_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:8
&dense_8_matmul_readvariableop_resource:5
'dense_8_biasadd_readvariableop_resource:
identity??conv1d_2/BiasAdd/ReadVariableOp?+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp? dense_6/Tensordot/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp? dense_7/Tensordot/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?embedding_1/embedding_lookup?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2`
 text_vectorization_1/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_1/SqueezeSqueeze0text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV2%text_vectorization_1/Squeeze:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_134989Atext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*6
_class,
*(loc:@embedding_1/embedding_lookup/134989*,
_output_shapes
:??????????*
dtype0?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_1/embedding_lookup/134989*,
_output_shapes
:???????????
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????i
conv1d_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_2/Conv1D/ExpandDims
ExpandDims0embedding_1/embedding_lookup/Identity_1:output:0'conv1d_2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?<*
dtype0b
 conv1d_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_2/Conv1D/ExpandDims_1
ExpandDims3conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?<?
conv1d_2/Conv1DConv2D#conv1d_2/Conv1D/ExpandDims:output:0%conv1d_2/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????<*
paddingVALID*
strides
?
conv1d_2/Conv1D/SqueezeSqueezeconv1d_2/Conv1D:output:0*
T0*+
_output_shapes
:?????????<*
squeeze_dims

??????????
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
conv1d_2/BiasAddBiasAdd conv1d_2/Conv1D/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????<f
conv1d_2/ReluReluconv1d_2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????<`
max_pooling1d_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
max_pooling1d_2/ExpandDims
ExpandDimsconv1d_2/Relu:activations:0'max_pooling1d_2/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????<?
max_pooling1d_2/MaxPoolMaxPool#max_pooling1d_2/ExpandDims:output:0*/
_output_shapes
:?????????<*
ksize
*
paddingVALID*
strides
?
max_pooling1d_2/SqueezeSqueeze max_pooling1d_2/MaxPool:output:0*
T0*+
_output_shapes
:?????????<*
squeeze_dims
\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_6/dropout/MulMul max_pooling1d_2/Squeeze:output:0 dropout_6/dropout/Const:output:0*
T0*+
_output_shapes
:?????????<g
dropout_6/dropout/ShapeShape max_pooling1d_2/Squeeze:output:0*
T0*
_output_shapes
:?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????<*
dtype0*

seed2e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????<?
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????<?
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????<?
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource*
_output_shapes

:<*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_6/Tensordot/ShapeShapedropout_6/dropout/Mul_1:z:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_6/Tensordot/transpose	Transposedropout_6/dropout/Mul_1:z:0!dense_6/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????<?
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*+
_output_shapes
:?????????\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_7/dropout/MulMuldense_6/Relu:activations:0 dropout_7/dropout/Const:output:0*
T0*+
_output_shapes
:?????????a
dropout_7/dropout/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0*

seed2*
seed2e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*+
_output_shapes
:??????????
 dense_7/Tensordot/ReadVariableOpReadVariableOp)dense_7_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_7/Tensordot/ShapeShapedropout_7/dropout/Mul_1:z:0*
T0*
_output_shapes
:a
dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/GatherV2GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/free:output:0(dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/GatherV2_1GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/axes:output:0*dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_7/Tensordot/ProdProd#dense_7/Tensordot/GatherV2:output:0 dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_7/Tensordot/Prod_1Prod%dense_7/Tensordot/GatherV2_1:output:0"dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/concatConcatV2dense_7/Tensordot/free:output:0dense_7/Tensordot/axes:output:0&dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_7/Tensordot/stackPackdense_7/Tensordot/Prod:output:0!dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_7/Tensordot/transpose	Transposedropout_7/dropout/Mul_1:z:0!dense_7/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_7/Tensordot/ReshapeReshapedense_7/Tensordot/transpose:y:0 dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_7/Tensordot/MatMulMatMul"dense_7/Tensordot/Reshape:output:0(dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/concat_1ConcatV2#dense_7/Tensordot/GatherV2:output:0"dense_7/Tensordot/Const_2:output:0(dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_7/TensordotReshape"dense_7/Tensordot/MatMul:product:0#dense_7/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/Tensordot:output:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*+
_output_shapes
:?????????\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_8/dropout/MulMuldense_7/Relu:activations:0 dropout_8/dropout/Const:output:0*
T0*+
_output_shapes
:?????????a
dropout_8/dropout/ShapeShapedense_7/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0*

seed2*
seed2e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????n
,global_max_pooling1d_2/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d_2/MaxMaxdropout_8/dropout/Mul_1:z:05global_max_pooling1d_2/Max/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_8/MatMulMatMul#global_max_pooling1d_2/Max:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_8/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp!^dense_7/Tensordot/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^embedding_1/embedding_lookupI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2D
 dense_7/Tensordot/ReadVariableOp dense_7/Tensordot/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_conv1d_2_layer_call_and_return_conditional_losses_135139

inputsB
+conv1d_expanddims_1_readvariableop_resource:?<-
biasadd_readvariableop_resource:<
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?<*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?<?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????<*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????<*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????<T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????<e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????<?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_135234

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_134198

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_135179

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????<C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????<*
dtype0*

seed2[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????<s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????<m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????<]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????<:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_134478

inputsY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	&
embedding_1_134449:
?M?&
conv1d_2_134452:?<
conv1d_2_134454:< 
dense_6_134459:<
dense_6_134461: 
dense_7_134465:
dense_7_134467: 
dense_8_134472:
dense_8_134474:
identity?? conv1d_2/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2`
 text_vectorization_1/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_1/SqueezeSqueeze0text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV2%text_vectorization_1/Squeeze:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0embedding_1_134449*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_134078?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_2_134452conv1d_2_134454*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_2_layer_call_and_return_conditional_losses_134098?
max_pooling1d_2/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_133998?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_134344?
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_6_134459dense_6_134461*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_134143?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_134311?
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_7_134465dense_7_134467*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_134187?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_134278?
&global_max_pooling1d_2/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_134011?
dense_8/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_2/PartitionedCall:output:0dense_8_134472dense_8_134474*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_134212w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv1d_2/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCallI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
g
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_133998

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_134154

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_134737
text_vectorization_1_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?M? 
	unknown_4:?<
	unknown_5:<
	unknown_6:<
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_133986o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_1_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?C
?
__inference_adapt_step_114525
iterator9
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2a
StringLowerStringLowerIteratorGetNext:components:0*'
_output_shapes
:??????????
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite }
SqueezeSqueezeStaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2Squeeze:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:

_output_shapes
: 
?
?
C__inference_dense_7_layer_call_and_return_conditional_losses_134187

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
S
7__inference_global_max_pooling1d_2_layer_call_fn_135318

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_134011i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_6_layer_call_fn_135162

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_134344s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????<22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
n
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_134011

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_133986
text_vectorization_1_inputf
bsequential_2_text_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleg
csequential_2_text_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	=
9sequential_2_text_vectorization_1_string_lookup_1_equal_y@
<sequential_2_text_vectorization_1_string_lookup_1_selectv2_t	D
0sequential_2_embedding_1_embedding_lookup_133898:
?M?X
Asequential_2_conv1d_2_conv1d_expanddims_1_readvariableop_resource:?<C
5sequential_2_conv1d_2_biasadd_readvariableop_resource:<H
6sequential_2_dense_6_tensordot_readvariableop_resource:<B
4sequential_2_dense_6_biasadd_readvariableop_resource:H
6sequential_2_dense_7_tensordot_readvariableop_resource:B
4sequential_2_dense_7_biasadd_readvariableop_resource:E
3sequential_2_dense_8_matmul_readvariableop_resource:B
4sequential_2_dense_8_biasadd_readvariableop_resource:
identity??,sequential_2/conv1d_2/BiasAdd/ReadVariableOp?8sequential_2/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp?+sequential_2/dense_6/BiasAdd/ReadVariableOp?-sequential_2/dense_6/Tensordot/ReadVariableOp?+sequential_2/dense_7/BiasAdd/ReadVariableOp?-sequential_2/dense_7/Tensordot/ReadVariableOp?+sequential_2/dense_8/BiasAdd/ReadVariableOp?*sequential_2/dense_8/MatMul/ReadVariableOp?)sequential_2/embedding_1/embedding_lookup?Usequential_2/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2?
-sequential_2/text_vectorization_1/StringLowerStringLowertext_vectorization_1_input*'
_output_shapes
:??????????
4sequential_2/text_vectorization_1/StaticRegexReplaceStaticRegexReplace6sequential_2/text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
)sequential_2/text_vectorization_1/SqueezeSqueeze=sequential_2/text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????t
3sequential_2/text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
;sequential_2/text_vectorization_1/StringSplit/StringSplitV2StringSplitV22sequential_2/text_vectorization_1/Squeeze:output:0<sequential_2/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
Asequential_2/text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
Csequential_2/text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
Csequential_2/text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
;sequential_2/text_vectorization_1/StringSplit/strided_sliceStridedSliceEsequential_2/text_vectorization_1/StringSplit/StringSplitV2:indices:0Jsequential_2/text_vectorization_1/StringSplit/strided_slice/stack:output:0Lsequential_2/text_vectorization_1/StringSplit/strided_slice/stack_1:output:0Lsequential_2/text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Csequential_2/text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Esequential_2/text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Esequential_2/text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
=sequential_2/text_vectorization_1/StringSplit/strided_slice_1StridedSliceCsequential_2/text_vectorization_1/StringSplit/StringSplitV2:shape:0Lsequential_2/text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Nsequential_2/text_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Nsequential_2/text_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
dsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastDsequential_2/text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
fsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastFsequential_2/text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
nsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapehsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
nsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
msequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdwsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0wsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
rsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
psequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatervsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0{sequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
msequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasttsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
psequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
lsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxhsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ysequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
nsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
lsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2usequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0wsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
lsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulqsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0psequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
psequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumjsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0psequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
psequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumjsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0tsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
psequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
qsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincounthsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0tsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ysequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
ksequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
fsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumxsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0tsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
osequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
ksequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
fsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2xsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0lsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0tsequential_2/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Usequential_2/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2bsequential_2_text_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleDsequential_2/text_vectorization_1/StringSplit/StringSplitV2:values:0csequential_2_text_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
7sequential_2/text_vectorization_1/string_lookup_1/EqualEqualDsequential_2/text_vectorization_1/StringSplit/StringSplitV2:values:09sequential_2_text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
:sequential_2/text_vectorization_1/string_lookup_1/SelectV2SelectV2;sequential_2/text_vectorization_1/string_lookup_1/Equal:z:0<sequential_2_text_vectorization_1_string_lookup_1_selectv2_t^sequential_2/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
:sequential_2/text_vectorization_1/string_lookup_1/IdentityIdentityCsequential_2/text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:??????????
>sequential_2/text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
6sequential_2/text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
Esequential_2/text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor?sequential_2/text_vectorization_1/RaggedToTensor/Const:output:0Csequential_2/text_vectorization_1/string_lookup_1/Identity:output:0Gsequential_2/text_vectorization_1/RaggedToTensor/default_value:output:0Fsequential_2/text_vectorization_1/StringSplit/strided_slice_1:output:0Dsequential_2/text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
)sequential_2/embedding_1/embedding_lookupResourceGather0sequential_2_embedding_1_embedding_lookup_133898Nsequential_2/text_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*C
_class9
75loc:@sequential_2/embedding_1/embedding_lookup/133898*,
_output_shapes
:??????????*
dtype0?
2sequential_2/embedding_1/embedding_lookup/IdentityIdentity2sequential_2/embedding_1/embedding_lookup:output:0*
T0*C
_class9
75loc:@sequential_2/embedding_1/embedding_lookup/133898*,
_output_shapes
:???????????
4sequential_2/embedding_1/embedding_lookup/Identity_1Identity;sequential_2/embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????v
+sequential_2/conv1d_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
'sequential_2/conv1d_2/Conv1D/ExpandDims
ExpandDims=sequential_2/embedding_1/embedding_lookup/Identity_1:output:04sequential_2/conv1d_2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
8sequential_2/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_2_conv1d_2_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?<*
dtype0o
-sequential_2/conv1d_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_2/conv1d_2/Conv1D/ExpandDims_1
ExpandDims@sequential_2/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp:value:06sequential_2/conv1d_2/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?<?
sequential_2/conv1d_2/Conv1DConv2D0sequential_2/conv1d_2/Conv1D/ExpandDims:output:02sequential_2/conv1d_2/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????<*
paddingVALID*
strides
?
$sequential_2/conv1d_2/Conv1D/SqueezeSqueeze%sequential_2/conv1d_2/Conv1D:output:0*
T0*+
_output_shapes
:?????????<*
squeeze_dims

??????????
,sequential_2/conv1d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv1d_2_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
sequential_2/conv1d_2/BiasAddBiasAdd-sequential_2/conv1d_2/Conv1D/Squeeze:output:04sequential_2/conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????<?
sequential_2/conv1d_2/ReluRelu&sequential_2/conv1d_2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????<m
+sequential_2/max_pooling1d_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
'sequential_2/max_pooling1d_2/ExpandDims
ExpandDims(sequential_2/conv1d_2/Relu:activations:04sequential_2/max_pooling1d_2/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????<?
$sequential_2/max_pooling1d_2/MaxPoolMaxPool0sequential_2/max_pooling1d_2/ExpandDims:output:0*/
_output_shapes
:?????????<*
ksize
*
paddingVALID*
strides
?
$sequential_2/max_pooling1d_2/SqueezeSqueeze-sequential_2/max_pooling1d_2/MaxPool:output:0*
T0*+
_output_shapes
:?????????<*
squeeze_dims
?
sequential_2/dropout_6/IdentityIdentity-sequential_2/max_pooling1d_2/Squeeze:output:0*
T0*+
_output_shapes
:?????????<?
-sequential_2/dense_6/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_6_tensordot_readvariableop_resource*
_output_shapes

:<*
dtype0m
#sequential_2/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_2/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       |
$sequential_2/dense_6/Tensordot/ShapeShape(sequential_2/dropout_6/Identity:output:0*
T0*
_output_shapes
:n
,sequential_2/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_2/dense_6/Tensordot/GatherV2GatherV2-sequential_2/dense_6/Tensordot/Shape:output:0,sequential_2/dense_6/Tensordot/free:output:05sequential_2/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_2/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_2/dense_6/Tensordot/GatherV2_1GatherV2-sequential_2/dense_6/Tensordot/Shape:output:0,sequential_2/dense_6/Tensordot/axes:output:07sequential_2/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_2/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_2/dense_6/Tensordot/ProdProd0sequential_2/dense_6/Tensordot/GatherV2:output:0-sequential_2/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_2/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_2/dense_6/Tensordot/Prod_1Prod2sequential_2/dense_6/Tensordot/GatherV2_1:output:0/sequential_2/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_2/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_2/dense_6/Tensordot/concatConcatV2,sequential_2/dense_6/Tensordot/free:output:0,sequential_2/dense_6/Tensordot/axes:output:03sequential_2/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_2/dense_6/Tensordot/stackPack,sequential_2/dense_6/Tensordot/Prod:output:0.sequential_2/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_2/dense_6/Tensordot/transpose	Transpose(sequential_2/dropout_6/Identity:output:0.sequential_2/dense_6/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????<?
&sequential_2/dense_6/Tensordot/ReshapeReshape,sequential_2/dense_6/Tensordot/transpose:y:0-sequential_2/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_2/dense_6/Tensordot/MatMulMatMul/sequential_2/dense_6/Tensordot/Reshape:output:05sequential_2/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_2/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_2/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_2/dense_6/Tensordot/concat_1ConcatV20sequential_2/dense_6/Tensordot/GatherV2:output:0/sequential_2/dense_6/Tensordot/Const_2:output:05sequential_2/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_6/TensordotReshape/sequential_2/dense_6/Tensordot/MatMul:product:00sequential_2/dense_6/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
+sequential_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/dense_6/BiasAddBiasAdd'sequential_2/dense_6/Tensordot:output:03sequential_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????~
sequential_2/dense_6/ReluRelu%sequential_2/dense_6/BiasAdd:output:0*
T0*+
_output_shapes
:??????????
sequential_2/dropout_7/IdentityIdentity'sequential_2/dense_6/Relu:activations:0*
T0*+
_output_shapes
:??????????
-sequential_2/dense_7/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_7_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0m
#sequential_2/dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_2/dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       |
$sequential_2/dense_7/Tensordot/ShapeShape(sequential_2/dropout_7/Identity:output:0*
T0*
_output_shapes
:n
,sequential_2/dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_2/dense_7/Tensordot/GatherV2GatherV2-sequential_2/dense_7/Tensordot/Shape:output:0,sequential_2/dense_7/Tensordot/free:output:05sequential_2/dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_2/dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_2/dense_7/Tensordot/GatherV2_1GatherV2-sequential_2/dense_7/Tensordot/Shape:output:0,sequential_2/dense_7/Tensordot/axes:output:07sequential_2/dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_2/dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_2/dense_7/Tensordot/ProdProd0sequential_2/dense_7/Tensordot/GatherV2:output:0-sequential_2/dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_2/dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_2/dense_7/Tensordot/Prod_1Prod2sequential_2/dense_7/Tensordot/GatherV2_1:output:0/sequential_2/dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_2/dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_2/dense_7/Tensordot/concatConcatV2,sequential_2/dense_7/Tensordot/free:output:0,sequential_2/dense_7/Tensordot/axes:output:03sequential_2/dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_2/dense_7/Tensordot/stackPack,sequential_2/dense_7/Tensordot/Prod:output:0.sequential_2/dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_2/dense_7/Tensordot/transpose	Transpose(sequential_2/dropout_7/Identity:output:0.sequential_2/dense_7/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
&sequential_2/dense_7/Tensordot/ReshapeReshape,sequential_2/dense_7/Tensordot/transpose:y:0-sequential_2/dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_2/dense_7/Tensordot/MatMulMatMul/sequential_2/dense_7/Tensordot/Reshape:output:05sequential_2/dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_2/dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_2/dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_2/dense_7/Tensordot/concat_1ConcatV20sequential_2/dense_7/Tensordot/GatherV2:output:0/sequential_2/dense_7/Tensordot/Const_2:output:05sequential_2/dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_2/dense_7/TensordotReshape/sequential_2/dense_7/Tensordot/MatMul:product:00sequential_2/dense_7/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
+sequential_2/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/dense_7/BiasAddBiasAdd'sequential_2/dense_7/Tensordot:output:03sequential_2/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????~
sequential_2/dense_7/ReluRelu%sequential_2/dense_7/BiasAdd:output:0*
T0*+
_output_shapes
:??????????
sequential_2/dropout_8/IdentityIdentity'sequential_2/dense_7/Relu:activations:0*
T0*+
_output_shapes
:?????????{
9sequential_2/global_max_pooling1d_2/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
'sequential_2/global_max_pooling1d_2/MaxMax(sequential_2/dropout_8/Identity:output:0Bsequential_2/global_max_pooling1d_2/Max/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
*sequential_2/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_8_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_2/dense_8/MatMulMatMul0sequential_2/global_max_pooling1d_2/Max:output:02sequential_2/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/dense_8/BiasAddBiasAdd%sequential_2/dense_8/MatMul:product:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_2/dense_8/SigmoidSigmoid%sequential_2/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????o
IdentityIdentity sequential_2/dense_8/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp-^sequential_2/conv1d_2/BiasAdd/ReadVariableOp9^sequential_2/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp,^sequential_2/dense_6/BiasAdd/ReadVariableOp.^sequential_2/dense_6/Tensordot/ReadVariableOp,^sequential_2/dense_7/BiasAdd/ReadVariableOp.^sequential_2/dense_7/Tensordot/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp+^sequential_2/dense_8/MatMul/ReadVariableOp*^sequential_2/embedding_1/embedding_lookupV^sequential_2/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2\
,sequential_2/conv1d_2/BiasAdd/ReadVariableOp,sequential_2/conv1d_2/BiasAdd/ReadVariableOp2t
8sequential_2/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp8sequential_2/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2Z
+sequential_2/dense_6/BiasAdd/ReadVariableOp+sequential_2/dense_6/BiasAdd/ReadVariableOp2^
-sequential_2/dense_6/Tensordot/ReadVariableOp-sequential_2/dense_6/Tensordot/ReadVariableOp2Z
+sequential_2/dense_7/BiasAdd/ReadVariableOp+sequential_2/dense_7/BiasAdd/ReadVariableOp2^
-sequential_2/dense_7/Tensordot/ReadVariableOp-sequential_2/dense_7/Tensordot/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2X
*sequential_2/dense_8/MatMul/ReadVariableOp*sequential_2/dense_8/MatMul/ReadVariableOp2V
)sequential_2/embedding_1/embedding_lookup)sequential_2/embedding_1/embedding_lookup2?
Usequential_2/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Usequential_2/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_1_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_135313

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0*

seed2[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_conv1d_2_layer_call_fn_135123

inputs
unknown:?<
	unknown_0:<
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_2_layer_call_and_return_conditional_losses_134098s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_135301

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
;
__inference__creator_135349
identity??
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name62866*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
-__inference_sequential_2_layer_call_fn_134799

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?M? 
	unknown_4:?<
	unknown_5:<
	unknown_6:<
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_134478o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
+
__inference_<lambda>_135417
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
-__inference_sequential_2_layer_call_fn_134248
text_vectorization_1_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?M? 
	unknown_4:?<
	unknown_5:<
	unknown_6:<
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_134219o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_1_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
C__inference_dense_7_layer_call_and_return_conditional_losses_135286

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_134344

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????<C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????<*
dtype0*

seed2[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????<s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????<m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????<]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????<:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
(__inference_dense_6_layer_call_fn_135188

inputs
unknown:<
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_134143s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
-
__inference__destroyer_135377
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
D__inference_conv1d_2_layer_call_and_return_conditional_losses_134098

inputsB
+conv1d_expanddims_1_readvariableop_resource:?<-
biasadd_readvariableop_resource:<
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?<*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?<?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????<*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????<*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????<T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????<e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????<?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_135167

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????<_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????<"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????<:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
C__inference_dense_6_layer_call_and_return_conditional_losses_135219

inputs3
!tensordot_readvariableop_resource:<-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:<*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????<?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_134618
text_vectorization_1_inputY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	&
embedding_1_134589:
?M?&
conv1d_2_134592:?<
conv1d_2_134594:< 
dense_6_134599:<
dense_6_134601: 
dense_7_134605:
dense_7_134607: 
dense_8_134612:
dense_8_134614:
identity?? conv1d_2/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2t
 text_vectorization_1/StringLowerStringLowertext_vectorization_1_input*'
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_1/SqueezeSqueeze0text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV2%text_vectorization_1/Squeeze:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0embedding_1_134589*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_134078?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_2_134592conv1d_2_134594*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_2_layer_call_and_return_conditional_losses_134098?
max_pooling1d_2/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_133998?
dropout_6/PartitionedCallPartitionedCall(max_pooling1d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_134110?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_6_134599dense_6_134601*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_134143?
dropout_7/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_134154?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_7_134605dense_7_134607*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_134187?
dropout_8/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_134198?
&global_max_pooling1d_2/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_134011?
dense_8/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_2/PartitionedCall:output:0dense_8_134612dense_8_134614*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_134212w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv1d_2/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCallI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_1_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_134278

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0*

seed2[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_134110

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????<_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????<"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????<:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
F
*__inference_dropout_6_layer_call_fn_135157

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_134110d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????<:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
G__inference_embedding_1_layer_call_and_return_conditional_losses_135114

inputs	+
embedding_lookup_135108:
?M?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_135108inputs*
Tindices0	**
_class 
loc:@embedding_lookup/135108*,
_output_shapes
:??????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/135108*,
_output_shapes
:???????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:??????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_8_layer_call_fn_135296

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_134278s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ݚ
?
"__inference__traced_restore_135689
file_prefix;
'assignvariableop_embedding_1_embeddings:
?M?9
"assignvariableop_1_conv1d_2_kernel:?<.
 assignvariableop_2_conv1d_2_bias:<3
!assignvariableop_3_dense_6_kernel:<-
assignvariableop_4_dense_6_bias:3
!assignvariableop_5_dense_7_kernel:-
assignvariableop_6_dense_7_bias:3
!assignvariableop_7_dense_8_kernel:-
assignvariableop_8_dense_8_bias:'
assignvariableop_9_nadam_iter:	 *
 assignvariableop_10_nadam_beta_1: *
 assignvariableop_11_nadam_beta_2: )
assignvariableop_12_nadam_decay: 1
'assignvariableop_13_nadam_learning_rate: 2
(assignvariableop_14_nadam_momentum_cache: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: F
2assignvariableop_19_nadam_embedding_1_embeddings_m:
?M?B
+assignvariableop_20_nadam_conv1d_2_kernel_m:?<7
)assignvariableop_21_nadam_conv1d_2_bias_m:<<
*assignvariableop_22_nadam_dense_6_kernel_m:<6
(assignvariableop_23_nadam_dense_6_bias_m:<
*assignvariableop_24_nadam_dense_7_kernel_m:6
(assignvariableop_25_nadam_dense_7_bias_m:<
*assignvariableop_26_nadam_dense_8_kernel_m:6
(assignvariableop_27_nadam_dense_8_bias_m:F
2assignvariableop_28_nadam_embedding_1_embeddings_v:
?M?B
+assignvariableop_29_nadam_conv1d_2_kernel_v:?<7
)assignvariableop_30_nadam_conv1d_2_bias_v:<<
*assignvariableop_31_nadam_dense_6_kernel_v:<6
(assignvariableop_32_nadam_dense_6_bias_v:<
*assignvariableop_33_nadam_dense_7_kernel_v:6
(assignvariableop_34_nadam_dense_7_bias_v:<
*assignvariableop_35_nadam_dense_8_kernel_v:6
(assignvariableop_36_nadam_dense_8_bias_v:
identity_38??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp'assignvariableop_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv1d_2_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv1d_2_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_6_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_6_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_7_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_7_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_8_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_8_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_nadam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp assignvariableop_10_nadam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp assignvariableop_11_nadam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_nadam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp'assignvariableop_13_nadam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp(assignvariableop_14_nadam_momentum_cacheIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:15RestoreV2:tensors:16*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 _
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp2assignvariableop_19_nadam_embedding_1_embeddings_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp+assignvariableop_20_nadam_conv1d_2_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_nadam_conv1d_2_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_nadam_dense_6_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_nadam_dense_6_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_nadam_dense_7_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp(assignvariableop_25_nadam_dense_7_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_nadam_dense_8_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp(assignvariableop_27_nadam_dense_8_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp2assignvariableop_28_nadam_embedding_1_embeddings_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_nadam_conv1d_2_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_nadam_conv1d_2_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_nadam_dense_6_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_nadam_dense_6_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_nadam_dense_7_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_nadam_dense_7_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_nadam_dense_8_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_nadam_dense_8_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_38Identity_38:output:0*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?Q
?
__inference__traced_save_135565
file_prefix5
1savev2_embedding_1_embeddings_read_readvariableop.
*savev2_conv1d_2_kernel_read_readvariableop,
(savev2_conv1d_2_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop=
9savev2_nadam_embedding_1_embeddings_m_read_readvariableop6
2savev2_nadam_conv1d_2_kernel_m_read_readvariableop4
0savev2_nadam_conv1d_2_bias_m_read_readvariableop5
1savev2_nadam_dense_6_kernel_m_read_readvariableop3
/savev2_nadam_dense_6_bias_m_read_readvariableop5
1savev2_nadam_dense_7_kernel_m_read_readvariableop3
/savev2_nadam_dense_7_bias_m_read_readvariableop5
1savev2_nadam_dense_8_kernel_m_read_readvariableop3
/savev2_nadam_dense_8_bias_m_read_readvariableop=
9savev2_nadam_embedding_1_embeddings_v_read_readvariableop6
2savev2_nadam_conv1d_2_kernel_v_read_readvariableop4
0savev2_nadam_conv1d_2_bias_v_read_readvariableop5
1savev2_nadam_dense_6_kernel_v_read_readvariableop3
/savev2_nadam_dense_6_bias_v_read_readvariableop5
1savev2_nadam_dense_7_kernel_v_read_readvariableop3
/savev2_nadam_dense_7_bias_v_read_readvariableop5
1savev2_nadam_dense_8_kernel_v_read_readvariableop3
/savev2_nadam_dense_8_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_1_embeddings_read_readvariableop*savev2_conv1d_2_kernel_read_readvariableop(savev2_conv1d_2_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop9savev2_nadam_embedding_1_embeddings_m_read_readvariableop2savev2_nadam_conv1d_2_kernel_m_read_readvariableop0savev2_nadam_conv1d_2_bias_m_read_readvariableop1savev2_nadam_dense_6_kernel_m_read_readvariableop/savev2_nadam_dense_6_bias_m_read_readvariableop1savev2_nadam_dense_7_kernel_m_read_readvariableop/savev2_nadam_dense_7_bias_m_read_readvariableop1savev2_nadam_dense_8_kernel_m_read_readvariableop/savev2_nadam_dense_8_bias_m_read_readvariableop9savev2_nadam_embedding_1_embeddings_v_read_readvariableop2savev2_nadam_conv1d_2_kernel_v_read_readvariableop0savev2_nadam_conv1d_2_bias_v_read_readvariableop1savev2_nadam_dense_6_kernel_v_read_readvariableop/savev2_nadam_dense_6_bias_v_read_readvariableop1savev2_nadam_dense_7_kernel_v_read_readvariableop/savev2_nadam_dense_7_bias_v_read_readvariableop1savev2_nadam_dense_8_kernel_v_read_readvariableop/savev2_nadam_dense_8_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
?M?:?<:<:<:::::: : : : : : ::: : : : :
?M?:?<:<:<::::::
?M?:?<:<:<:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?M?:)%
#
_output_shapes
:?<: 

_output_shapes
:<:$ 

_output_shapes

:<: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
?M?:)%
#
_output_shapes
:?<: 

_output_shapes
:<:$ 

_output_shapes

:<: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::&"
 
_output_shapes
:
?M?:) %
#
_output_shapes
:?<: !

_output_shapes
:<:$" 

_output_shapes

:<: #

_output_shapes
::$$ 

_output_shapes

:: %

_output_shapes
::$& 

_output_shapes

:: '

_output_shapes
::(

_output_shapes
: 
?
n
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_135324

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling1d_2_layer_call_fn_135144

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_133998v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
__inference_restore_fn_135404
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?

?
C__inference_dense_8_layer_call_and_return_conditional_losses_135344

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
__inference__creator_135367
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_62375*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_134311

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0*

seed2[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_dense_8_layer_call_fn_135333

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_134212o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
-
__inference__destroyer_135362
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference__initializer_1353578
4key_value_init62865_lookuptableimportv2_table_handle0
,key_value_init62865_lookuptableimportv2_keys2
.key_value_init62865_lookuptableimportv2_values	
identity??'key_value_init62865/LookupTableImportV2?
'key_value_init62865/LookupTableImportV2LookupTableImportV24key_value_init62865_lookuptableimportv2_table_handle,key_value_init62865_lookuptableimportv2_keys.key_value_init62865_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init62865/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?M:?M2R
'key_value_init62865/LookupTableImportV2'key_value_init62865/LookupTableImportV2:!

_output_shapes	
:?M:!

_output_shapes	
:?M
?
?
,__inference_embedding_1_layer_call_fn_135105

inputs	
unknown:
?M?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_134078t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_dense_6_layer_call_and_return_conditional_losses_134143

inputs3
!tensordot_readvariableop_resource:<-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:<*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????<?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
__inference_<lambda>_1354128
4key_value_init62865_lookuptableimportv2_table_handle0
,key_value_init62865_lookuptableimportv2_keys2
.key_value_init62865_lookuptableimportv2_values	
identity??'key_value_init62865/LookupTableImportV2?
'key_value_init62865/LookupTableImportV2LookupTableImportV24key_value_init62865_lookuptableimportv2_table_handle,key_value_init62865_lookuptableimportv2_keys.key_value_init62865_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init62865/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?M:?M2R
'key_value_init62865/LookupTableImportV2'key_value_init62865/LookupTableImportV2:!

_output_shapes	
:?M:!

_output_shapes	
:?M
?
?
(__inference_dense_7_layer_call_fn_135255

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_134187s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_7_layer_call_fn_135229

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_134311s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
΄
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_134698
text_vectorization_1_inputY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	&
embedding_1_134669:
?M?&
conv1d_2_134672:?<
conv1d_2_134674:< 
dense_6_134679:<
dense_6_134681: 
dense_7_134685:
dense_7_134687: 
dense_8_134692:
dense_8_134694:
identity?? conv1d_2/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2t
 text_vectorization_1/StringLowerStringLowertext_vectorization_1_input*'
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_1/SqueezeSqueeze0text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV2%text_vectorization_1/Squeeze:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0embedding_1_134669*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_134078?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_2_134672conv1d_2_134674*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_2_layer_call_and_return_conditional_losses_134098?
max_pooling1d_2/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_133998?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_134344?
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_6_134679dense_6_134681*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_134143?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_134311?
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_7_134685dense_7_134687*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_134187?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_134278?
&global_max_pooling1d_2/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_134011?
dense_8/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_2/PartitionedCall:output:0dense_8_134692dense_8_134694*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_134212w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv1d_2/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCallI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_1_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_134219

inputsY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	&
embedding_1_134079:
?M?&
conv1d_2_134099:?<
conv1d_2_134101:< 
dense_6_134144:<
dense_6_134146: 
dense_7_134188:
dense_7_134190: 
dense_8_134213:
dense_8_134215:
identity?? conv1d_2/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2`
 text_vectorization_1/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_1/SqueezeSqueeze0text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV2%text_vectorization_1/Squeeze:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0embedding_1_134079*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_134078?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_2_134099conv1d_2_134101*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_2_layer_call_and_return_conditional_losses_134098?
max_pooling1d_2/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_133998?
dropout_6/PartitionedCallPartitionedCall(max_pooling1d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_134110?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_6_134144dense_6_134146*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_134143?
dropout_7/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_134154?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_7_134188dense_7_134190*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_134187?
dropout_8/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_134198?
&global_max_pooling1d_2/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_134011?
dense_8/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_2/PartitionedCall:output:0dense_8_134213dense_8_134215*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_134212w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv1d_2/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCallI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_135246

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0*

seed2[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
C__inference_dense_8_layer_call_and_return_conditional_losses_134212

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_save_fn_135396
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::P
add/yConst*
_output_shapes
: *
dtype0*
valueB B
table-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: T
add_1/yConst*
_output_shapes
: *
dtype0*
valueB Btable-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
a
text_vectorization_1_inputC
,serving_default_text_vectorization_1_input:0?????????=
dense_82
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer-8

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
P
	keras_api
_lookup_layer
_adapt_function"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias
 '_jit_compiled_convolution_op"
_tf_keras_layer
?
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
?
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses
4_random_generator"
_tf_keras_layer
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses

;kernel
<bias"
_tf_keras_layer
?
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
C_random_generator"
_tf_keras_layer
?
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

Jkernel
Kbias"
_tf_keras_layer
?
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
R_random_generator"
_tf_keras_layer
?
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

_kernel
`bias"
_tf_keras_layer
_
1
%2
&3
;4
<5
J6
K7
_8
`9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
ftrace_0
gtrace_1
htrace_2
itrace_32?
-__inference_sequential_2_layer_call_fn_134248
-__inference_sequential_2_layer_call_fn_134768
-__inference_sequential_2_layer_call_fn_134799
-__inference_sequential_2_layer_call_fn_134538?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zftrace_0zgtrace_1zhtrace_2zitrace_3
?
jtrace_0
ktrace_1
ltrace_2
mtrace_32?
H__inference_sequential_2_layer_call_and_return_conditional_losses_134938
H__inference_sequential_2_layer_call_and_return_conditional_losses_135098
H__inference_sequential_2_layer_call_and_return_conditional_losses_134618
H__inference_sequential_2_layer_call_and_return_conditional_losses_134698?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zjtrace_0zktrace_1zltrace_2zmtrace_3
?B?
!__inference__wrapped_model_133986text_vectorization_1_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
niter

obeta_1

pbeta_2
	qdecay
rlearning_rate
smomentum_cachem?%m?&m?;m?<m?Jm?Km?_m?`m?v?%v?&v?;v?<v?Jv?Kv?_v?`v?"
	optimizer
,
tserving_default"
signature_map
"
_generic_user_object
L
u	keras_api
vlookup_table
wtoken_counts"
_tf_keras_layer
?
xtrace_02?
__inference_adapt_step_114525?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zxtrace_0
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
~trace_02?
,__inference_embedding_1_layer_call_fn_135105?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z~trace_0
?
trace_02?
G__inference_embedding_1_layer_call_and_return_conditional_losses_135114?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ztrace_0
*:(
?M?2embedding_1/embeddings
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv1d_2_layer_call_fn_135123?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv1d_2_layer_call_and_return_conditional_losses_135139?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
&:$?<2conv1d_2/kernel
:<2conv1d_2/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_max_pooling1d_2_layer_call_fn_135144?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_135152?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
*__inference_dropout_6_layer_call_fn_135157
*__inference_dropout_6_layer_call_fn_135162?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
E__inference_dropout_6_layer_call_and_return_conditional_losses_135167
E__inference_dropout_6_layer_call_and_return_conditional_losses_135179?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
(__inference_dense_6_layer_call_fn_135188?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
C__inference_dense_6_layer_call_and_return_conditional_losses_135219?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 :<2dense_6/kernel
:2dense_6/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
*__inference_dropout_7_layer_call_fn_135224
*__inference_dropout_7_layer_call_fn_135229?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
E__inference_dropout_7_layer_call_and_return_conditional_losses_135234
E__inference_dropout_7_layer_call_and_return_conditional_losses_135246?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
(__inference_dense_7_layer_call_fn_135255?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
C__inference_dense_7_layer_call_and_return_conditional_losses_135286?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 :2dense_7/kernel
:2dense_7/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
*__inference_dropout_8_layer_call_fn_135291
*__inference_dropout_8_layer_call_fn_135296?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
E__inference_dropout_8_layer_call_and_return_conditional_losses_135301
E__inference_dropout_8_layer_call_and_return_conditional_losses_135313?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
7__inference_global_max_pooling1d_2_layer_call_fn_135318?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_135324?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
(__inference_dense_8_layer_call_fn_135333?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
C__inference_dense_8_layer_call_and_return_conditional_losses_135344?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 :2dense_8/kernel
:2dense_8/bias
_
1
%2
&3
;4
<5
J6
K7
_8
`9"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_sequential_2_layer_call_fn_134248text_vectorization_1_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_2_layer_call_fn_134768inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_2_layer_call_fn_134799inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_2_layer_call_fn_134538text_vectorization_1_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_2_layer_call_and_return_conditional_losses_134938inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_2_layer_call_and_return_conditional_losses_135098inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_2_layer_call_and_return_conditional_losses_134618text_vectorization_1_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_2_layer_call_and_return_conditional_losses_134698text_vectorization_1_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
?B?
$__inference_signature_wrapper_134737text_vectorization_1_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
O
?_create_resource
?_initialize
?_destroy_resourceR Z

 ??
?B?
__inference_adapt_step_114525iterator"?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
,__inference_embedding_1_layer_call_fn_135105inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_embedding_1_layer_call_and_return_conditional_losses_135114inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv1d_2_layer_call_fn_135123inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv1d_2_layer_call_and_return_conditional_losses_135139inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
0__inference_max_pooling1d_2_layer_call_fn_135144inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_135152inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
*__inference_dropout_6_layer_call_fn_135157inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_dropout_6_layer_call_fn_135162inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_6_layer_call_and_return_conditional_losses_135167inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_6_layer_call_and_return_conditional_losses_135179inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_dense_6_layer_call_fn_135188inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_dense_6_layer_call_and_return_conditional_losses_135219inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
*__inference_dropout_7_layer_call_fn_135224inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_dropout_7_layer_call_fn_135229inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_7_layer_call_and_return_conditional_losses_135234inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_7_layer_call_and_return_conditional_losses_135246inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_dense_7_layer_call_fn_135255inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_dense_7_layer_call_and_return_conditional_losses_135286inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
*__inference_dropout_8_layer_call_fn_135291inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_dropout_8_layer_call_fn_135296inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_8_layer_call_and_return_conditional_losses_135301inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_8_layer_call_and_return_conditional_losses_135313inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
7__inference_global_max_pooling1d_2_layer_call_fn_135318inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_135324inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_dense_8_layer_call_fn_135333inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_dense_8_layer_call_and_return_conditional_losses_135344inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
"
_generic_user_object
?
?trace_02?
__inference__creator_135349?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_135357?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_135362?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__creator_135367?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_135372?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_135377?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
?B?
__inference__creator_135349"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_135357"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_135362"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__creator_135367"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_135372"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_135377"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
0:.
?M?2Nadam/embedding_1/embeddings/m
,:*?<2Nadam/conv1d_2/kernel/m
!:<2Nadam/conv1d_2/bias/m
&:$<2Nadam/dense_6/kernel/m
 :2Nadam/dense_6/bias/m
&:$2Nadam/dense_7/kernel/m
 :2Nadam/dense_7/bias/m
&:$2Nadam/dense_8/kernel/m
 :2Nadam/dense_8/bias/m
0:.
?M?2Nadam/embedding_1/embeddings/v
,:*?<2Nadam/conv1d_2/kernel/v
!:<2Nadam/conv1d_2/bias/v
&:$<2Nadam/dense_6/kernel/v
 :2Nadam/dense_6/bias/v
&:$2Nadam/dense_7/kernel/v
 :2Nadam/dense_7/bias/v
&:$2Nadam/dense_8/kernel/v
 :2Nadam/dense_8/bias/v
?B?
__inference_save_fn_135396checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_135404restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_5jtf.TrackableConstant7
__inference__creator_135349?

? 
? "? 7
__inference__creator_135367?

? 
? "? 9
__inference__destroyer_135362?

? 
? "? 9
__inference__destroyer_135377?

? 
? "? B
__inference__initializer_135357v???

? 
? "? ;
__inference__initializer_135372?

? 
? "? ?
!__inference__wrapped_model_133986?v???%&;<JK_`C?@
9?6
4?1
text_vectorization_1_input?????????
? "1?.
,
dense_8!?
dense_8?????????o
__inference_adapt_step_114525Nw?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 ?
D__inference_conv1d_2_layer_call_and_return_conditional_losses_135139e%&4?1
*?'
%?"
inputs??????????
? ")?&
?
0?????????<
? ?
)__inference_conv1d_2_layer_call_fn_135123X%&4?1
*?'
%?"
inputs??????????
? "??????????<?
C__inference_dense_6_layer_call_and_return_conditional_losses_135219d;<3?0
)?&
$?!
inputs?????????<
? ")?&
?
0?????????
? ?
(__inference_dense_6_layer_call_fn_135188W;<3?0
)?&
$?!
inputs?????????<
? "???????????
C__inference_dense_7_layer_call_and_return_conditional_losses_135286dJK3?0
)?&
$?!
inputs?????????
? ")?&
?
0?????????
? ?
(__inference_dense_7_layer_call_fn_135255WJK3?0
)?&
$?!
inputs?????????
? "???????????
C__inference_dense_8_layer_call_and_return_conditional_losses_135344\_`/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
(__inference_dense_8_layer_call_fn_135333O_`/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dropout_6_layer_call_and_return_conditional_losses_135167d7?4
-?*
$?!
inputs?????????<
p 
? ")?&
?
0?????????<
? ?
E__inference_dropout_6_layer_call_and_return_conditional_losses_135179d7?4
-?*
$?!
inputs?????????<
p
? ")?&
?
0?????????<
? ?
*__inference_dropout_6_layer_call_fn_135157W7?4
-?*
$?!
inputs?????????<
p 
? "??????????<?
*__inference_dropout_6_layer_call_fn_135162W7?4
-?*
$?!
inputs?????????<
p
? "??????????<?
E__inference_dropout_7_layer_call_and_return_conditional_losses_135234d7?4
-?*
$?!
inputs?????????
p 
? ")?&
?
0?????????
? ?
E__inference_dropout_7_layer_call_and_return_conditional_losses_135246d7?4
-?*
$?!
inputs?????????
p
? ")?&
?
0?????????
? ?
*__inference_dropout_7_layer_call_fn_135224W7?4
-?*
$?!
inputs?????????
p 
? "???????????
*__inference_dropout_7_layer_call_fn_135229W7?4
-?*
$?!
inputs?????????
p
? "???????????
E__inference_dropout_8_layer_call_and_return_conditional_losses_135301d7?4
-?*
$?!
inputs?????????
p 
? ")?&
?
0?????????
? ?
E__inference_dropout_8_layer_call_and_return_conditional_losses_135313d7?4
-?*
$?!
inputs?????????
p
? ")?&
?
0?????????
? ?
*__inference_dropout_8_layer_call_fn_135291W7?4
-?*
$?!
inputs?????????
p 
? "???????????
*__inference_dropout_8_layer_call_fn_135296W7?4
-?*
$?!
inputs?????????
p
? "???????????
G__inference_embedding_1_layer_call_and_return_conditional_losses_135114`/?,
%?"
 ?
inputs?????????	
? "*?'
 ?
0??????????
? ?
,__inference_embedding_1_layer_call_fn_135105S/?,
%?"
 ?
inputs?????????	
? "????????????
R__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_135324wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+
$?!
0??????????????????
? ?
7__inference_global_max_pooling1d_2_layer_call_fn_135318jE?B
;?8
6?3
inputs'???????????????????????????
? "!????????????????????
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_135152?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
0__inference_max_pooling1d_2_layer_call_fn_135144wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'???????????????????????????z
__inference_restore_fn_135404YwK?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_135396?w&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
H__inference_sequential_2_layer_call_and_return_conditional_losses_134618?v???%&;<JK_`K?H
A?>
4?1
text_vectorization_1_input?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_134698?v???%&;<JK_`K?H
A?>
4?1
text_vectorization_1_input?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_134938rv???%&;<JK_`7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_135098rv???%&;<JK_`7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_2_layer_call_fn_134248yv???%&;<JK_`K?H
A?>
4?1
text_vectorization_1_input?????????
p 

 
? "???????????
-__inference_sequential_2_layer_call_fn_134538yv???%&;<JK_`K?H
A?>
4?1
text_vectorization_1_input?????????
p

 
? "???????????
-__inference_sequential_2_layer_call_fn_134768ev???%&;<JK_`7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
-__inference_sequential_2_layer_call_fn_134799ev???%&;<JK_`7?4
-?*
 ?
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_134737?v???%&;<JK_`a?^
? 
W?T
R
text_vectorization_1_input4?1
text_vectorization_1_input?????????"1?.
,
dense_8!?
dense_8?????????