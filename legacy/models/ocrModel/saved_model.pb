»•
щќ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
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
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.0-49-g85c8b2a817f8я°
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
АА*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@
*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
В
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
В
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
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
Д
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
АА*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:А*
dtype0
З
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/dense_1/kernel/m
А
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	А@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:@*
dtype0
Ж
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:@
*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:
*
dtype0
М
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/m
Е
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:*
dtype0
Р
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_1/kernel/m
Й
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
: *
dtype0
А
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
: *
dtype0
Р
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_2/kernel/m
Й
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
: @*
dtype0
А
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/m
y
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
:@*
dtype0
Д
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
АА*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:А*
dtype0
З
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/dense_1/kernel/v
А
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	А@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:@*
dtype0
Ж
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:@
*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:
*
dtype0
М
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/v
Е
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:*
dtype0
Р
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_1/kernel/v
Й
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
: *
dtype0
А
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
: *
dtype0
Р
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_2/kernel/v
Й
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
: @*
dtype0
А
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/v
y
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
:@*
dtype0

NoOpNoOp
ЇZ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*хY
valueлYBиY BбY
Ќ
	conv1
	conv2
	conv3
flatten
linear1
linear2
out
	model
		optimizer

trainable_variables
	variables
regularization_losses
	keras_api

signatures
У
layer_with_weights-0
layer-0
layer-1
layer-2
trainable_variables
	variables
regularization_losses
	keras_api
У
layer_with_weights-0
layer-0
layer-1
layer-2
trainable_variables
	variables
regularization_losses
	keras_api
У
layer_with_weights-0
layer-0
layer-1
layer-2
 trainable_variables
!	variables
"regularization_losses
#	keras_api
R
$trainable_variables
%	variables
&regularization_losses
'	keras_api
h

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
h

.kernel
/bias
0trainable_variables
1	variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6trainable_variables
7	variables
8regularization_losses
9	keras_api
…
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
:trainable_variables
;	variables
<regularization_losses
=	keras_api
∞
>iter

?beta_1

@beta_2
	Adecay
Blearning_rate(m“)m”.m‘/m’4m÷5m„CmЎDmўEmЏFmџGm№HmЁ(vё)vя.vа/vб4vв5vгCvдDvеEvжFvзGvиHvй
V
C0
D1
E2
F3
G4
H5
(6
)7
.8
/9
410
511
V
C0
D1
E2
F3
G4
H5
(6
)7
.8
/9
410
511
 
≠
Inon_trainable_variables
Jlayer_regularization_losses

trainable_variables
Klayer_metrics
Lmetrics

Mlayers
	variables
regularization_losses
 
h

Ckernel
Dbias
Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
R
Rtrainable_variables
S	variables
Tregularization_losses
U	keras_api
R
Vtrainable_variables
W	variables
Xregularization_losses
Y	keras_api

C0
D1

C0
D1
 
≠
Znon_trainable_variables
[layer_regularization_losses
trainable_variables
\layer_metrics
]metrics

^layers
	variables
regularization_losses
h

Ekernel
Fbias
_trainable_variables
`	variables
aregularization_losses
b	keras_api
R
ctrainable_variables
d	variables
eregularization_losses
f	keras_api
R
gtrainable_variables
h	variables
iregularization_losses
j	keras_api

E0
F1

E0
F1
 
≠
knon_trainable_variables
llayer_regularization_losses
trainable_variables
mlayer_metrics
nmetrics

olayers
	variables
regularization_losses
h

Gkernel
Hbias
ptrainable_variables
q	variables
rregularization_losses
s	keras_api
R
ttrainable_variables
u	variables
vregularization_losses
w	keras_api
R
xtrainable_variables
y	variables
zregularization_losses
{	keras_api

G0
H1

G0
H1
 
Ѓ
|non_trainable_variables
}layer_regularization_losses
 trainable_variables
~layer_metrics
metrics
Аlayers
!	variables
"regularization_losses
 
 
 
≤
Бnon_trainable_variables
 Вlayer_regularization_losses
$trainable_variables
Гlayer_metrics
Дmetrics
Еlayers
%	variables
&regularization_losses
KI
VARIABLE_VALUEdense/kernel)linear1/kernel/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUE
dense/bias'linear1/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
 
≤
Жnon_trainable_variables
 Зlayer_regularization_losses
*trainable_variables
Иlayer_metrics
Йmetrics
Кlayers
+	variables
,regularization_losses
MK
VARIABLE_VALUEdense_1/kernel)linear2/kernel/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_1/bias'linear2/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1

.0
/1
 
≤
Лnon_trainable_variables
 Мlayer_regularization_losses
0trainable_variables
Нlayer_metrics
Оmetrics
Пlayers
1	variables
2regularization_losses
IG
VARIABLE_VALUEdense_2/kernel%out/kernel/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdense_2/bias#out/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
≤
Рnon_trainable_variables
 Сlayer_regularization_losses
6trainable_variables
Тlayer_metrics
Уmetrics
Фlayers
7	variables
8regularization_losses
V
C0
D1
E2
F3
G4
H5
(6
)7
.8
/9
410
511
V
C0
D1
E2
F3
G4
H5
(6
)7
.8
/9
410
511
 
≤
Хnon_trainable_variables
 Цlayer_regularization_losses
:trainable_variables
Чlayer_metrics
Шmetrics
Щlayers
;	variables
<regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEconv2d/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_1/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d_1/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_2/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d_2/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

Ъ0
Ы1
8
0
1
2
3
4
5
6
7

C0
D1

C0
D1
 
≤
Ьnon_trainable_variables
 Эlayer_regularization_losses
Ntrainable_variables
Юlayer_metrics
Яmetrics
†layers
O	variables
Pregularization_losses
 
 
 
≤
°non_trainable_variables
 Ґlayer_regularization_losses
Rtrainable_variables
£layer_metrics
§metrics
•layers
S	variables
Tregularization_losses
 
 
 
≤
¶non_trainable_variables
 Іlayer_regularization_losses
Vtrainable_variables
®layer_metrics
©metrics
™layers
W	variables
Xregularization_losses
 
 
 
 

0
1
2

E0
F1

E0
F1
 
≤
Ђnon_trainable_variables
 ђlayer_regularization_losses
_trainable_variables
≠layer_metrics
Ѓmetrics
ѓlayers
`	variables
aregularization_losses
 
 
 
≤
∞non_trainable_variables
 ±layer_regularization_losses
ctrainable_variables
≤layer_metrics
≥metrics
іlayers
d	variables
eregularization_losses
 
 
 
≤
µnon_trainable_variables
 ґlayer_regularization_losses
gtrainable_variables
Јlayer_metrics
Єmetrics
єlayers
h	variables
iregularization_losses
 
 
 
 

0
1
2

G0
H1

G0
H1
 
≤
Їnon_trainable_variables
 їlayer_regularization_losses
ptrainable_variables
Љlayer_metrics
љmetrics
Њlayers
q	variables
rregularization_losses
 
 
 
≤
њnon_trainable_variables
 јlayer_regularization_losses
ttrainable_variables
Ѕlayer_metrics
¬metrics
√layers
u	variables
vregularization_losses
 
 
 
≤
ƒnon_trainable_variables
 ≈layer_regularization_losses
xtrainable_variables
∆layer_metrics
«metrics
»layers
y	variables
zregularization_losses
 
 
 
 

0
1
2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
1
0
1
2
3
4
5
6
8

…total

 count
Ћ	variables
ћ	keras_api
I

Ќtotal

ќcount
ѕ
_fn_kwargs
–	variables
—	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

…0
 1

Ћ	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ќ0
ќ1

–	variables
nl
VARIABLE_VALUEAdam/dense/kernel/mElinear1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/dense/bias/mClinear1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/dense_1/kernel/mElinear2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_1/bias/mClinear2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_2/kernel/mAout/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/dense_2/bias/m?out/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/conv2d/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_1/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_1/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_2/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_2/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense/kernel/vElinear1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/dense/bias/vClinear1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/dense_1/kernel/vElinear2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_1/bias/vClinear2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_2/kernel/vAout/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/dense_2/bias/v?out/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/conv2d/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_1/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_1/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_2/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_2/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ј
serving_default_input_1Placeholder*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*?
shape6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Б
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *-
f(R&
$__inference_signature_wrapper_682994
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ф
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *(
f#R!
__inference__traced_save_684623
л
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biastotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/v*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *+
f&R$
"__inference__traced_restore_684768х“
Ѓ
J
.__inference_max_pooling2d_layer_call_fn_681789

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_6817832
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ў
ґ
C__inference_ocr_net_layer_call_and_return_conditional_losses_682838
input_1
sequential_3_682812
sequential_3_682814
sequential_3_682816
sequential_3_682818
sequential_3_682820
sequential_3_682822
sequential_3_682824
sequential_3_682826
sequential_3_682828
sequential_3_682830
sequential_3_682832
sequential_3_682834
identityИҐ$sequential_3/StatefulPartitionedCallФ
$sequential_3/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_3_682812sequential_3_682814sequential_3_682816sequential_3_682818sequential_3_682820sequential_3_682822sequential_3_682824sequential_3_682826sequential_3_682828sequential_3_682830sequential_3_682832sequential_3_682834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_6827182&
$sequential_3/StatefulPartitionedCall®
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0%^sequential_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:s o
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_1
Б
~
)__inference_conv2d_2_layer_call_fn_684438

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_6820582
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
 
Е
H__inference_sequential_1_layer_call_and_return_conditional_losses_682571

inputs+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOp∞
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp–
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
2
conv2d_1/Conv2DІ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpЊ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
conv2d_1/BiasAddН
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
conv2d_1/ReluЎ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const≈
dropout_1/dropout/MulMul max_pooling2d_1/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
dropout_1/dropout/MulВ
dropout_1/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shapeм
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/yА
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2 
dropout_1/dropout/GreaterEqualЈ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
dropout_1/dropout/CastЉ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
dropout_1/dropout/Mul_1ћ
IdentityIdentitydropout_1/dropout/Mul_1:z:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€::2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≈w
е
!__inference__wrapped_model_681777
input_1I
Eocr_net_sequential_3_sequential_conv2d_conv2d_readvariableop_resourceJ
Focr_net_sequential_3_sequential_conv2d_biasadd_readvariableop_resourceM
Iocr_net_sequential_3_sequential_1_conv2d_1_conv2d_readvariableop_resourceN
Jocr_net_sequential_3_sequential_1_conv2d_1_biasadd_readvariableop_resourceM
Iocr_net_sequential_3_sequential_2_conv2d_2_conv2d_readvariableop_resourceN
Jocr_net_sequential_3_sequential_2_conv2d_2_biasadd_readvariableop_resource=
9ocr_net_sequential_3_dense_matmul_readvariableop_resource>
:ocr_net_sequential_3_dense_biasadd_readvariableop_resource?
;ocr_net_sequential_3_dense_1_matmul_readvariableop_resource@
<ocr_net_sequential_3_dense_1_biasadd_readvariableop_resource?
;ocr_net_sequential_3_dense_2_matmul_readvariableop_resource@
<ocr_net_sequential_3_dense_2_biasadd_readvariableop_resource
identityИҐ1ocr_net/sequential_3/dense/BiasAdd/ReadVariableOpҐ0ocr_net/sequential_3/dense/MatMul/ReadVariableOpҐ3ocr_net/sequential_3/dense_1/BiasAdd/ReadVariableOpҐ2ocr_net/sequential_3/dense_1/MatMul/ReadVariableOpҐ3ocr_net/sequential_3/dense_2/BiasAdd/ReadVariableOpҐ2ocr_net/sequential_3/dense_2/MatMul/ReadVariableOpҐ=ocr_net/sequential_3/sequential/conv2d/BiasAdd/ReadVariableOpҐ<ocr_net/sequential_3/sequential/conv2d/Conv2D/ReadVariableOpҐAocr_net/sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOpҐ@ocr_net/sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOpҐAocr_net/sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOpҐ@ocr_net/sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOpК
<ocr_net/sequential_3/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOpEocr_net_sequential_3_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02>
<ocr_net/sequential_3/sequential/conv2d/Conv2D/ReadVariableOpЂ
-ocr_net/sequential_3/sequential/conv2d/Conv2DConv2Dinput_1Docr_net/sequential_3/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
2/
-ocr_net/sequential_3/sequential/conv2d/Conv2DБ
=ocr_net/sequential_3/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOpFocr_net_sequential_3_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=ocr_net/sequential_3/sequential/conv2d/BiasAdd/ReadVariableOpґ
.ocr_net/sequential_3/sequential/conv2d/BiasAddBiasAdd6ocr_net/sequential_3/sequential/conv2d/Conv2D:output:0Eocr_net/sequential_3/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€20
.ocr_net/sequential_3/sequential/conv2d/BiasAddз
+ocr_net/sequential_3/sequential/conv2d/ReluRelu7ocr_net/sequential_3/sequential/conv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2-
+ocr_net/sequential_3/sequential/conv2d/Relu≤
5ocr_net/sequential_3/sequential/max_pooling2d/MaxPoolMaxPool9ocr_net/sequential_3/sequential/conv2d/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
27
5ocr_net/sequential_3/sequential/max_pooling2d/MaxPoolь
0ocr_net/sequential_3/sequential/dropout/IdentityIdentity>ocr_net/sequential_3/sequential/max_pooling2d/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€22
0ocr_net/sequential_3/sequential/dropout/IdentityЦ
@ocr_net/sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOpIocr_net_sequential_3_sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02B
@ocr_net/sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOpй
1ocr_net/sequential_3/sequential_1/conv2d_1/Conv2DConv2D9ocr_net/sequential_3/sequential/dropout/Identity:output:0Hocr_net/sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
23
1ocr_net/sequential_3/sequential_1/conv2d_1/Conv2DН
Aocr_net/sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpJocr_net_sequential_3_sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02C
Aocr_net/sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp∆
2ocr_net/sequential_3/sequential_1/conv2d_1/BiasAddBiasAdd:ocr_net/sequential_3/sequential_1/conv2d_1/Conv2D:output:0Iocr_net/sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 24
2ocr_net/sequential_3/sequential_1/conv2d_1/BiasAddу
/ocr_net/sequential_3/sequential_1/conv2d_1/ReluRelu;ocr_net/sequential_3/sequential_1/conv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 21
/ocr_net/sequential_3/sequential_1/conv2d_1/ReluЊ
9ocr_net/sequential_3/sequential_1/max_pooling2d_1/MaxPoolMaxPool=ocr_net/sequential_3/sequential_1/conv2d_1/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2;
9ocr_net/sequential_3/sequential_1/max_pooling2d_1/MaxPoolИ
4ocr_net/sequential_3/sequential_1/dropout_1/IdentityIdentityBocr_net/sequential_3/sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 26
4ocr_net/sequential_3/sequential_1/dropout_1/IdentityЦ
@ocr_net/sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOpIocr_net_sequential_3_sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02B
@ocr_net/sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOpн
1ocr_net/sequential_3/sequential_2/conv2d_2/Conv2DConv2D=ocr_net/sequential_3/sequential_1/dropout_1/Identity:output:0Hocr_net/sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
23
1ocr_net/sequential_3/sequential_2/conv2d_2/Conv2DН
Aocr_net/sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpJocr_net_sequential_3_sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02C
Aocr_net/sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp∆
2ocr_net/sequential_3/sequential_2/conv2d_2/BiasAddBiasAdd:ocr_net/sequential_3/sequential_2/conv2d_2/Conv2D:output:0Iocr_net/sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@24
2ocr_net/sequential_3/sequential_2/conv2d_2/BiasAddу
/ocr_net/sequential_3/sequential_2/conv2d_2/ReluRelu;ocr_net/sequential_3/sequential_2/conv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@21
/ocr_net/sequential_3/sequential_2/conv2d_2/ReluЊ
9ocr_net/sequential_3/sequential_2/max_pooling2d_2/MaxPoolMaxPool=ocr_net/sequential_3/sequential_2/conv2d_2/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2;
9ocr_net/sequential_3/sequential_2/max_pooling2d_2/MaxPoolИ
4ocr_net/sequential_3/sequential_2/dropout_2/IdentityIdentityBocr_net/sequential_3/sequential_2/max_pooling2d_2/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@26
4ocr_net/sequential_3/sequential_2/dropout_2/Identityµ
"ocr_net/sequential_3/flatten/ShapeShape=ocr_net/sequential_3/sequential_2/dropout_2/Identity:output:0*
T0*
_output_shapes
:2$
"ocr_net/sequential_3/flatten/ShapeЃ
0ocr_net/sequential_3/flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0ocr_net/sequential_3/flatten/strided_slice/stack≤
2ocr_net/sequential_3/flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2ocr_net/sequential_3/flatten/strided_slice/stack_1≤
2ocr_net/sequential_3/flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2ocr_net/sequential_3/flatten/strided_slice/stack_2Р
*ocr_net/sequential_3/flatten/strided_sliceStridedSlice+ocr_net/sequential_3/flatten/Shape:output:09ocr_net/sequential_3/flatten/strided_slice/stack:output:0;ocr_net/sequential_3/flatten/strided_slice/stack_1:output:0;ocr_net/sequential_3/flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*ocr_net/sequential_3/flatten/strided_sliceІ
,ocr_net/sequential_3/flatten/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2.
,ocr_net/sequential_3/flatten/Reshape/shape/1ъ
*ocr_net/sequential_3/flatten/Reshape/shapePack3ocr_net/sequential_3/flatten/strided_slice:output:05ocr_net/sequential_3/flatten/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2,
*ocr_net/sequential_3/flatten/Reshape/shapeЖ
$ocr_net/sequential_3/flatten/ReshapeReshape=ocr_net/sequential_3/sequential_2/dropout_2/Identity:output:03ocr_net/sequential_3/flatten/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2&
$ocr_net/sequential_3/flatten/Reshapeа
0ocr_net/sequential_3/dense/MatMul/ReadVariableOpReadVariableOp9ocr_net_sequential_3_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype022
0ocr_net/sequential_3/dense/MatMul/ReadVariableOpм
!ocr_net/sequential_3/dense/MatMulMatMul-ocr_net/sequential_3/flatten/Reshape:output:08ocr_net/sequential_3/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2#
!ocr_net/sequential_3/dense/MatMulё
1ocr_net/sequential_3/dense/BiasAdd/ReadVariableOpReadVariableOp:ocr_net_sequential_3_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype023
1ocr_net/sequential_3/dense/BiasAdd/ReadVariableOpо
"ocr_net/sequential_3/dense/BiasAddBiasAdd+ocr_net/sequential_3/dense/MatMul:product:09ocr_net/sequential_3/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"ocr_net/sequential_3/dense/BiasAdd™
ocr_net/sequential_3/dense/ReluRelu+ocr_net/sequential_3/dense/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
ocr_net/sequential_3/dense/Reluе
2ocr_net/sequential_3/dense_1/MatMul/ReadVariableOpReadVariableOp;ocr_net_sequential_3_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype024
2ocr_net/sequential_3/dense_1/MatMul/ReadVariableOpс
#ocr_net/sequential_3/dense_1/MatMulMatMul-ocr_net/sequential_3/dense/Relu:activations:0:ocr_net/sequential_3/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2%
#ocr_net/sequential_3/dense_1/MatMulг
3ocr_net/sequential_3/dense_1/BiasAdd/ReadVariableOpReadVariableOp<ocr_net_sequential_3_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype025
3ocr_net/sequential_3/dense_1/BiasAdd/ReadVariableOpх
$ocr_net/sequential_3/dense_1/BiasAddBiasAdd-ocr_net/sequential_3/dense_1/MatMul:product:0;ocr_net/sequential_3/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2&
$ocr_net/sequential_3/dense_1/BiasAddѓ
!ocr_net/sequential_3/dense_1/ReluRelu-ocr_net/sequential_3/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2#
!ocr_net/sequential_3/dense_1/Reluд
2ocr_net/sequential_3/dense_2/MatMul/ReadVariableOpReadVariableOp;ocr_net_sequential_3_dense_2_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype024
2ocr_net/sequential_3/dense_2/MatMul/ReadVariableOpу
#ocr_net/sequential_3/dense_2/MatMulMatMul/ocr_net/sequential_3/dense_1/Relu:activations:0:ocr_net/sequential_3/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2%
#ocr_net/sequential_3/dense_2/MatMulг
3ocr_net/sequential_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp<ocr_net_sequential_3_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype025
3ocr_net/sequential_3/dense_2/BiasAdd/ReadVariableOpх
$ocr_net/sequential_3/dense_2/BiasAddBiasAdd-ocr_net/sequential_3/dense_2/MatMul:product:0;ocr_net/sequential_3/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2&
$ocr_net/sequential_3/dense_2/BiasAddЋ
IdentityIdentity-ocr_net/sequential_3/dense_2/BiasAdd:output:02^ocr_net/sequential_3/dense/BiasAdd/ReadVariableOp1^ocr_net/sequential_3/dense/MatMul/ReadVariableOp4^ocr_net/sequential_3/dense_1/BiasAdd/ReadVariableOp3^ocr_net/sequential_3/dense_1/MatMul/ReadVariableOp4^ocr_net/sequential_3/dense_2/BiasAdd/ReadVariableOp3^ocr_net/sequential_3/dense_2/MatMul/ReadVariableOp>^ocr_net/sequential_3/sequential/conv2d/BiasAdd/ReadVariableOp=^ocr_net/sequential_3/sequential/conv2d/Conv2D/ReadVariableOpB^ocr_net/sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOpA^ocr_net/sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOpB^ocr_net/sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOpA^ocr_net/sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::2f
1ocr_net/sequential_3/dense/BiasAdd/ReadVariableOp1ocr_net/sequential_3/dense/BiasAdd/ReadVariableOp2d
0ocr_net/sequential_3/dense/MatMul/ReadVariableOp0ocr_net/sequential_3/dense/MatMul/ReadVariableOp2j
3ocr_net/sequential_3/dense_1/BiasAdd/ReadVariableOp3ocr_net/sequential_3/dense_1/BiasAdd/ReadVariableOp2h
2ocr_net/sequential_3/dense_1/MatMul/ReadVariableOp2ocr_net/sequential_3/dense_1/MatMul/ReadVariableOp2j
3ocr_net/sequential_3/dense_2/BiasAdd/ReadVariableOp3ocr_net/sequential_3/dense_2/BiasAdd/ReadVariableOp2h
2ocr_net/sequential_3/dense_2/MatMul/ReadVariableOp2ocr_net/sequential_3/dense_2/MatMul/ReadVariableOp2~
=ocr_net/sequential_3/sequential/conv2d/BiasAdd/ReadVariableOp=ocr_net/sequential_3/sequential/conv2d/BiasAdd/ReadVariableOp2|
<ocr_net/sequential_3/sequential/conv2d/Conv2D/ReadVariableOp<ocr_net/sequential_3/sequential/conv2d/Conv2D/ReadVariableOp2Ж
Aocr_net/sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOpAocr_net/sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Д
@ocr_net/sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp@ocr_net/sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp2Ж
Aocr_net/sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOpAocr_net/sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp2Д
@ocr_net/sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOp@ocr_net/sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOp:s o
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_1
К
В
-__inference_sequential_1_layer_call_fn_683395

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_6820242
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
“
В
-__inference_sequential_2_layer_call_fn_683650

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_6826402
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ќ

Ё
D__inference_conv2d_1_layer_call_and_return_conditional_losses_684382

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ћ

џ
B__inference_conv2d_layer_call_and_return_conditional_losses_684335

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
л
ы
F__inference_sequential_layer_call_and_return_conditional_losses_682515

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOp™
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp 
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
2
conv2d/Conv2D°
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOpґ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
conv2d/BiasAddЗ
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
conv2d/Relu“
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2
max_pooling2d/MaxPools
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Constљ
dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0dropout/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
dropout/dropout/Mul|
dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shapeж
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/yш
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
dropout/dropout/GreaterEqual±
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
dropout/dropout/Castі
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
dropout/dropout/Mul_1∆
IdentityIdentitydropout/dropout/Mul_1:z:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ї
_
C__inference_flatten_layer_call_and_return_conditional_losses_683673

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≤
Е
H__inference_sequential_1_layer_call_and_return_conditional_losses_682584

inputs+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOp∞
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp–
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
2
conv2d_1/Conv2DІ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpЊ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
conv2d_1/BiasAddН
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
conv2d_1/ReluЎ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolҐ
dropout_1/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
dropout_1/Identityћ
IdentityIdentitydropout_1/Identity:output:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€::2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є
F
*__inference_dropout_1_layer_call_fn_684418

inputs
identity–
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_6819652
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Й
Н
H__inference_sequential_1_layer_call_and_return_conditional_losses_683466
conv2d_1_input+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOp∞
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp∆
conv2d_1/Conv2DConv2Dconv2d_1_input&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
conv2d_1/Conv2DІ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpђ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
conv2d_1/Relu∆
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const≥
dropout_1/dropout/MulMul max_pooling2d_1/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout_1/dropout/MulВ
dropout_1/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/ShapeЏ
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/yо
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2 
dropout_1/dropout/GreaterEqual•
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ 2
dropout_1/dropout/Cast™
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout_1/dropout/Mul_1Ї
IdentityIdentitydropout_1/dropout/Mul_1:z:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:_ [
/
_output_shapes
:€€€€€€€€€
(
_user_specified_nameconv2d_1_input
К
В
-__inference_sequential_1_layer_call_fn_683386

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_6820042
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ЪL
У	
H__inference_sequential_3_layer_call_and_return_conditional_losses_684266

inputs4
0sequential_conv2d_conv2d_readvariableop_resource5
1sequential_conv2d_biasadd_readvariableop_resource8
4sequential_1_conv2d_1_conv2d_readvariableop_resource9
5sequential_1_conv2d_1_biasadd_readvariableop_resource8
4sequential_2_conv2d_2_conv2d_readvariableop_resource9
5sequential_2_conv2d_2_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐ(sequential/conv2d/BiasAdd/ReadVariableOpҐ'sequential/conv2d/Conv2D/ReadVariableOpҐ,sequential_1/conv2d_1/BiasAdd/ReadVariableOpҐ+sequential_1/conv2d_1/Conv2D/ReadVariableOpҐ,sequential_2/conv2d_2/BiasAdd/ReadVariableOpҐ+sequential_2/conv2d_2/Conv2D/ReadVariableOpЋ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpў
sequential/conv2d/Conv2DConv2Dinputs/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
2
sequential/conv2d/Conv2D¬
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp–
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2
sequential/conv2d/BiasAddЦ
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
sequential/conv2d/Reluб
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
2"
 sequential/max_pooling2d/MaxPoolЂ
sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
sequential/dropout/Identity„
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOpГ
sequential_1/conv2d_1/Conv2DConv2D$sequential/dropout/Identity:output:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
sequential_1/conv2d_1/Conv2Dќ
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpа
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
sequential_1/conv2d_1/BiasAddҐ
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
sequential_1/conv2d_1/Reluн
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolЈ
sequential_1/dropout_1/IdentityIdentity-sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2!
sequential_1/dropout_1/Identity„
+sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_2/conv2d_2/Conv2D/ReadVariableOpЗ
sequential_2/conv2d_2/Conv2DConv2D(sequential_1/dropout_1/Identity:output:03sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
sequential_2/conv2d_2/Conv2Dќ
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpа
sequential_2/conv2d_2/BiasAddBiasAdd%sequential_2/conv2d_2/Conv2D:output:04sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
sequential_2/conv2d_2/BiasAddҐ
sequential_2/conv2d_2/ReluRelu&sequential_2/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
sequential_2/conv2d_2/Reluн
$sequential_2/max_pooling2d_2/MaxPoolMaxPool(sequential_2/conv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2&
$sequential_2/max_pooling2d_2/MaxPoolЈ
sequential_2/dropout_2/IdentityIdentity-sequential_2/max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2!
sequential_2/dropout_2/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten/ConstҐ
flatten/ReshapeReshape(sequential_2/dropout_2/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten/Reshape°
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

dense/Relu¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/Relu•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense_2/MatMul/ReadVariableOpЯ
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/BiasAddЇ
IdentityIdentitydense_2/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_2/conv2d_2/BiasAdd/ReadVariableOp,^sequential_2/conv2d_2/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:€€€€€€€€€::::::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_2/BiasAdd/ReadVariableOp,sequential_2/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_2/Conv2D/ReadVariableOp+sequential_2/conv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
л	
Х
(__inference_ocr_net_layer_call_fn_682955
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_ocr_net_layer_call_and_return_conditional_losses_6828992
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:s o
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_1
≤
Е
H__inference_sequential_2_layer_call_and_return_conditional_losses_682640

inputs+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource
identityИҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOp∞
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp–
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_2/Conv2DІ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpЊ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
conv2d_2/BiasAddН
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
conv2d_2/ReluЎ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_2/MaxPoolҐ
dropout_2/IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
dropout_2/Identityћ
IdentityIdentitydropout_2/Identity:output:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ::2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Љ	
Щ
-__inference_sequential_3_layer_call_fn_684324

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_6824632
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:€€€€€€€€€::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
 
Е
H__inference_sequential_2_layer_call_and_return_conditional_losses_682627

inputs+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource
identityИҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOp∞
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp–
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_2/Conv2DІ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpЊ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
conv2d_2/BiasAddН
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
conv2d_2/ReluЎ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_2/MaxPoolw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/Const≈
dropout_2/dropout/MulMul max_pooling2d_2/MaxPool:output:0 dropout_2/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
dropout_2/dropout/MulВ
dropout_2/dropout/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shapeм
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
dtype020
.dropout_2/dropout/random_uniform/RandomUniformЙ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_2/dropout/GreaterEqual/yА
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2 
dropout_2/dropout/GreaterEqualЈ
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
dropout_2/dropout/CastЉ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
dropout_2/dropout/Mul_1ћ
IdentityIdentitydropout_2/dropout/Mul_1:z:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ::2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
п
Б
F__inference_sequential_layer_call_and_return_conditional_losses_683224
conv2d_input)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOp™
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOpЊ
conv2d/Conv2DConv2Dconv2d_input$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
2
conv2d/Conv2D°
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp§
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
conv2d/Reluј
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
2
max_pooling2d/MaxPoolК
dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/Identityі
IdentityIdentitydropout/Identity:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:€€€€€€€€€
&
_user_specified_nameconv2d_input
Д

Џ
A__inference_dense_layer_call_and_return_conditional_losses_682692

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
р	
№
C__inference_dense_1_layer_call_and_return_conditional_losses_683729

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ѕ
b
C__inference_dropout_layer_call_and_return_conditional_losses_684356

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
С	
№
C__inference_dense_2_layer_call_and_return_conditional_losses_683748

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
£
_
C__inference_flatten_layer_call_and_return_conditional_losses_682675

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicem
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape/shape/1Ж
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ф	
Џ
A__inference_dense_layer_call_and_return_conditional_losses_683689

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≈
c
*__inference_dropout_1_layer_call_fn_684413

inputs
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_6819602
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
¶$
ƒ
H__inference_sequential_3_layer_call_and_return_conditional_losses_682399

inputs
sequential_682367
sequential_682369
sequential_1_682372
sequential_1_682374
sequential_2_682377
sequential_2_682379
dense_682383
dense_682385
dense_1_682388
dense_1_682390
dense_2_682393
dense_2_682395
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐ"sequential/StatefulPartitionedCallҐ$sequential_1/StatefulPartitionedCallҐ$sequential_2/StatefulPartitionedCallЂ
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_682367sequential_682369*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_6818772$
"sequential/StatefulPartitionedCallЏ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_682372sequential_1_682374*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_6820042&
$sequential_1/StatefulPartitionedCall№
$sequential_2/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0sequential_2_682377sequential_2_682379*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_6821312&
$sequential_2/StatefulPartitionedCallю
flatten/PartitionedCallPartitionedCall-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_6822372
flatten/PartitionedCall•
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_682383dense_682385*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_6822562
dense/StatefulPartitionedCallі
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_682388dense_1_682390*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_6822832!
dense_1/StatefulPartitionedCallґ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_682393dense_2_682395*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_6823092!
dense_2/StatefulPartitionedCall”
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:€€€€€€€€€::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
т	
Щ
-__inference_sequential_3_layer_call_fn_684139

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_6827532
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Пo
У	
H__inference_sequential_3_layer_call_and_return_conditional_losses_684213

inputs4
0sequential_conv2d_conv2d_readvariableop_resource5
1sequential_conv2d_biasadd_readvariableop_resource8
4sequential_1_conv2d_1_conv2d_readvariableop_resource9
5sequential_1_conv2d_1_biasadd_readvariableop_resource8
4sequential_2_conv2d_2_conv2d_readvariableop_resource9
5sequential_2_conv2d_2_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐ(sequential/conv2d/BiasAdd/ReadVariableOpҐ'sequential/conv2d/Conv2D/ReadVariableOpҐ,sequential_1/conv2d_1/BiasAdd/ReadVariableOpҐ+sequential_1/conv2d_1/Conv2D/ReadVariableOpҐ,sequential_2/conv2d_2/BiasAdd/ReadVariableOpҐ+sequential_2/conv2d_2/Conv2D/ReadVariableOpЋ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpў
sequential/conv2d/Conv2DConv2Dinputs/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
2
sequential/conv2d/Conv2D¬
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp–
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2
sequential/conv2d/BiasAddЦ
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
sequential/conv2d/Reluб
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
2"
 sequential/max_pooling2d/MaxPoolЙ
 sequential/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2"
 sequential/dropout/dropout/Const„
sequential/dropout/dropout/MulMul)sequential/max_pooling2d/MaxPool:output:0)sequential/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€2 
sequential/dropout/dropout/MulЭ
 sequential/dropout/dropout/ShapeShape)sequential/max_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2"
 sequential/dropout/dropout/Shapeх
7sequential/dropout/dropout/random_uniform/RandomUniformRandomUniform)sequential/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
dtype029
7sequential/dropout/dropout/random_uniform/RandomUniformЫ
)sequential/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2+
)sequential/dropout/dropout/GreaterEqual/yТ
'sequential/dropout/dropout/GreaterEqualGreaterEqual@sequential/dropout/dropout/random_uniform/RandomUniform:output:02sequential/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€2)
'sequential/dropout/dropout/GreaterEqualј
sequential/dropout/dropout/CastCast+sequential/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€2!
sequential/dropout/dropout/Castќ
 sequential/dropout/dropout/Mul_1Mul"sequential/dropout/dropout/Mul:z:0#sequential/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€2"
 sequential/dropout/dropout/Mul_1„
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOpГ
sequential_1/conv2d_1/Conv2DConv2D$sequential/dropout/dropout/Mul_1:z:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
sequential_1/conv2d_1/Conv2Dќ
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpа
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
sequential_1/conv2d_1/BiasAddҐ
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
sequential_1/conv2d_1/Reluн
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolС
$sequential_1/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$sequential_1/dropout_1/dropout/Constз
"sequential_1/dropout_1/dropout/MulMul-sequential_1/max_pooling2d_1/MaxPool:output:0-sequential_1/dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2$
"sequential_1/dropout_1/dropout/Mul©
$sequential_1/dropout_1/dropout/ShapeShape-sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2&
$sequential_1/dropout_1/dropout/ShapeБ
;sequential_1/dropout_1/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype02=
;sequential_1/dropout_1/dropout/random_uniform/RandomUniform£
-sequential_1/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_1/dropout_1/dropout/GreaterEqual/yҐ
+sequential_1/dropout_1/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_1/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2-
+sequential_1/dropout_1/dropout/GreaterEqualћ
#sequential_1/dropout_1/dropout/CastCast/sequential_1/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ 2%
#sequential_1/dropout_1/dropout/Castё
$sequential_1/dropout_1/dropout/Mul_1Mul&sequential_1/dropout_1/dropout/Mul:z:0'sequential_1/dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ 2&
$sequential_1/dropout_1/dropout/Mul_1„
+sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_2/conv2d_2/Conv2D/ReadVariableOpЗ
sequential_2/conv2d_2/Conv2DConv2D(sequential_1/dropout_1/dropout/Mul_1:z:03sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
sequential_2/conv2d_2/Conv2Dќ
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpа
sequential_2/conv2d_2/BiasAddBiasAdd%sequential_2/conv2d_2/Conv2D:output:04sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
sequential_2/conv2d_2/BiasAddҐ
sequential_2/conv2d_2/ReluRelu&sequential_2/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
sequential_2/conv2d_2/Reluн
$sequential_2/max_pooling2d_2/MaxPoolMaxPool(sequential_2/conv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2&
$sequential_2/max_pooling2d_2/MaxPoolС
$sequential_2/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$sequential_2/dropout_2/dropout/Constз
"sequential_2/dropout_2/dropout/MulMul-sequential_2/max_pooling2d_2/MaxPool:output:0-sequential_2/dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2$
"sequential_2/dropout_2/dropout/Mul©
$sequential_2/dropout_2/dropout/ShapeShape-sequential_2/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2&
$sequential_2/dropout_2/dropout/ShapeБ
;sequential_2/dropout_2/dropout/random_uniform/RandomUniformRandomUniform-sequential_2/dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02=
;sequential_2/dropout_2/dropout/random_uniform/RandomUniform£
-sequential_2/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_2/dropout_2/dropout/GreaterEqual/yҐ
+sequential_2/dropout_2/dropout/GreaterEqualGreaterEqualDsequential_2/dropout_2/dropout/random_uniform/RandomUniform:output:06sequential_2/dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2-
+sequential_2/dropout_2/dropout/GreaterEqualћ
#sequential_2/dropout_2/dropout/CastCast/sequential_2/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2%
#sequential_2/dropout_2/dropout/Castё
$sequential_2/dropout_2/dropout/Mul_1Mul&sequential_2/dropout_2/dropout/Mul:z:0'sequential_2/dropout_2/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2&
$sequential_2/dropout_2/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten/ConstҐ
flatten/ReshapeReshape(sequential_2/dropout_2/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten/Reshape°
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

dense/Relu¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/Relu•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense_2/MatMul/ReadVariableOpЯ
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/BiasAddЇ
IdentityIdentitydense_2/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_2/conv2d_2/BiasAdd/ReadVariableOp,^sequential_2/conv2d_2/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:€€€€€€€€€::::::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_2/BiasAdd/ReadVariableOp,sequential_2/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_2/Conv2D/ReadVariableOp+sequential_2/conv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
р
ђ
F__inference_sequential_layer_call_and_return_conditional_losses_681897

inputs
conv2d_681889
conv2d_681891
identityИҐconv2d/StatefulPartitionedCallЧ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_681889conv2d_681891*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_6818042 
conv2d/StatefulPartitionedCallС
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_6817832
max_pooling2d/PartitionedCallю
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_6818382
dropout/PartitionedCallЭ
IdentityIdentity dropout/PartitionedCall:output:0^conv2d/StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ё
ы
F__inference_sequential_layer_call_and_return_conditional_losses_683275

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOp™
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOpЄ
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
2
conv2d/Conv2D°
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp§
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
conv2d/Reluј
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
2
max_pooling2d/MaxPoolК
dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/Identityі
IdentityIdentitydropout/Identity:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
√
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_684450

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
“
В
-__inference_sequential_1_layer_call_fn_683446

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_6825842
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
РZ
В
__inference__traced_save_684623
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameё
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*р
valueжBг.B)linear1/kernel/.ATTRIBUTES/VARIABLE_VALUEB'linear1/bias/.ATTRIBUTES/VARIABLE_VALUEB)linear2/kernel/.ATTRIBUTES/VARIABLE_VALUEB'linear2/bias/.ATTRIBUTES/VARIABLE_VALUEB%out/kernel/.ATTRIBUTES/VARIABLE_VALUEB#out/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBElinear1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClinear1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElinear2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClinear2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAout/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?out/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElinear1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClinear1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElinear2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClinear2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAout/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?out/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesд
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices…
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Я
_input_shapesН
К: :
АА:А:	А@:@:@
:
: : : : : ::: : : @:@: : : : :
АА:А:	А@:@:@
:
::: : : @:@:
АА:А:	А@:@:@
:
::: : : @:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А@: 

_output_shapes
:@:$ 

_output_shapes

:@
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:
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
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А@: 

_output_shapes
:@:$ 

_output_shapes

:@
: 

_output_shapes
:
:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :, (
&
_output_shapes
: @: !

_output_shapes
:@:&""
 
_output_shapes
:
АА:!#

_output_shapes	
:А:%$!

_output_shapes
:	А@: %

_output_shapes
:@:$& 

_output_shapes

:@
: '

_output_shapes
:
:,((
&
_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
: : +

_output_shapes
: :,,(
&
_output_shapes
: @: -

_output_shapes
:@:.

_output_shapes
: 
Ъ
і
H__inference_sequential_1_layer_call_and_return_conditional_losses_682024

inputs
conv2d_1_682016
conv2d_1_682018
identityИҐ conv2d_1/StatefulPartitionedCall°
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_682016conv2d_1_682018*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_6819312"
 conv2d_1/StatefulPartitionedCallЩ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_6819102!
max_pooling2d_1/PartitionedCallЖ
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_6819652
dropout_1/PartitionedCall°
IdentityIdentity"dropout_1/PartitionedCall:output:0!^conv2d_1/StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
 
Ў
H__inference_sequential_2_layer_call_and_return_conditional_losses_682131

inputs
conv2d_2_682123
conv2d_2_682125
identityИҐ conv2d_2/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCall°
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_682123conv2d_2_682125*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_6820582"
 conv2d_2/StatefulPartitionedCallЩ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_6820372!
max_pooling2d_2/PartitionedCallЮ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_6820872#
!dropout_2/StatefulPartitionedCallЌ
IdentityIdentity*dropout_2/StatefulPartitionedCall:output:0!^conv2d_2/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
т	
Щ
-__inference_sequential_3_layer_call_fn_684110

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_6827182
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ъ%
ƒ
H__inference_sequential_3_layer_call_and_return_conditional_losses_682753

inputs
sequential_682721
sequential_682723
sequential_1_682726
sequential_1_682728
sequential_2_682731
sequential_2_682733
dense_682737
dense_682739
dense_1_682742
dense_1_682744
dense_2_682747
dense_2_682749
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐ"sequential/StatefulPartitionedCallҐ$sequential_1/StatefulPartitionedCallҐ$sequential_2/StatefulPartitionedCallљ
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_682721sequential_682723*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_6825282$
"sequential/StatefulPartitionedCallм
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_682726sequential_1_682728*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_6825842&
$sequential_1/StatefulPartitionedCallо
$sequential_2/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0sequential_2_682731sequential_2_682733*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_6826402&
$sequential_2/StatefulPartitionedCallЖ
flatten/PartitionedCallPartitionedCall-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_6826752
flatten/PartitionedCall•
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_682737dense_682739*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_6826922
dense/StatefulPartitionedCallі
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_682742dense_1_682744*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_6822832!
dense_1/StatefulPartitionedCallґ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_682747dense_2_682749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_6823092!
dense_2/StatefulPartitionedCall”
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
А
ы
F__inference_sequential_layer_call_and_return_conditional_losses_683326

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOp™
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp 
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
2
conv2d/Conv2D°
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOpґ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
conv2d/BiasAddЗ
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
conv2d/Relu“
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2
max_pooling2d/MaxPoolЬ
dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
dropout/Identity∆
IdentityIdentitydropout/Identity:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
µ
D
(__inference_dropout_layer_call_fn_684371

inputs
identityќ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_6818382
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≤
L
0__inference_max_pooling2d_1_layer_call_fn_681916

inputs
identityс
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_6819102
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ї
_
C__inference_flatten_layer_call_and_return_conditional_losses_682237

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≤
Е
H__inference_sequential_2_layer_call_and_return_conditional_losses_683632

inputs+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource
identityИҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOp∞
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp–
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_2/Conv2DІ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpЊ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
conv2d_2/BiasAddН
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
conv2d_2/ReluЎ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_2/MaxPoolҐ
dropout_2/IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
dropout_2/Identityћ
IdentityIdentitydropout_2/Identity:output:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ::2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
э
|
'__inference_conv2d_layer_call_fn_684344

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_6818042
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ґ
К
-__inference_sequential_1_layer_call_fn_683488
conv2d_1_input
unknown
	unknown_0
identityИҐStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_6820042
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:€€€€€€€€€
(
_user_specified_nameconv2d_1_input
ќ

Ё
D__inference_conv2d_1_layer_call_and_return_conditional_losses_681931

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
и
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_681965

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Й
Н
H__inference_sequential_2_layer_call_and_return_conditional_losses_683517
conv2d_2_input+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource
identityИҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOp∞
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp∆
conv2d_2/Conv2DConv2Dconv2d_2_input&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_2/Conv2DІ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpђ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_2/Relu∆
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_2/MaxPoolw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/Const≥
dropout_2/dropout/MulMul max_pooling2d_2/MaxPool:output:0 dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_2/dropout/MulВ
dropout_2/dropout/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_2/dropout/ShapeЏ
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype020
.dropout_2/dropout/random_uniform/RandomUniformЙ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_2/dropout/GreaterEqual/yо
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2 
dropout_2/dropout/GreaterEqual•
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout_2/dropout/Cast™
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_2/dropout/Mul_1Ї
IdentityIdentitydropout_2/dropout/Mul_1:z:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:_ [
/
_output_shapes
:€€€€€€€€€ 
(
_user_specified_nameconv2d_2_input
Љ	
Щ
-__inference_sequential_3_layer_call_fn_684295

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_6823992
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:€€€€€€€€€::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
а
А
+__inference_sequential_layer_call_fn_683335

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_6825152
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
л
ы
F__inference_sequential_layer_call_and_return_conditional_losses_683313

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOp™
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp 
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
2
conv2d/Conv2D°
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOpґ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
conv2d/BiasAddЗ
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
conv2d/Relu“
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2
max_pooling2d/MaxPools
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Constљ
dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0dropout/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
dropout/dropout/Mul|
dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shapeж
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/yш
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
dropout/dropout/GreaterEqual±
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
dropout/dropout/Castі
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
dropout/dropout/Mul_1∆
IdentityIdentitydropout/dropout/Mul_1:z:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
я
}
(__inference_dense_2_layer_call_fn_683757

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_6823092
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
л	
Х
(__inference_ocr_net_layer_call_fn_682926
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_ocr_net_layer_call_and_return_conditional_losses_6828992
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:s o
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_1
Ь{
У	
H__inference_sequential_3_layer_call_and_return_conditional_losses_684022

inputs4
0sequential_conv2d_conv2d_readvariableop_resource5
1sequential_conv2d_biasadd_readvariableop_resource8
4sequential_1_conv2d_1_conv2d_readvariableop_resource9
5sequential_1_conv2d_1_biasadd_readvariableop_resource8
4sequential_2_conv2d_2_conv2d_readvariableop_resource9
5sequential_2_conv2d_2_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐ(sequential/conv2d/BiasAdd/ReadVariableOpҐ'sequential/conv2d/Conv2D/ReadVariableOpҐ,sequential_1/conv2d_1/BiasAdd/ReadVariableOpҐ+sequential_1/conv2d_1/Conv2D/ReadVariableOpҐ,sequential_2/conv2d_2/BiasAdd/ReadVariableOpҐ+sequential_2/conv2d_2/Conv2D/ReadVariableOpЋ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpл
sequential/conv2d/Conv2DConv2Dinputs/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
2
sequential/conv2d/Conv2D¬
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOpв
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
sequential/conv2d/BiasAdd®
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
sequential/conv2d/Reluу
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2"
 sequential/max_pooling2d/MaxPoolЙ
 sequential/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2"
 sequential/dropout/dropout/Constй
sequential/dropout/dropout/MulMul)sequential/max_pooling2d/MaxPool:output:0)sequential/dropout/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2 
sequential/dropout/dropout/MulЭ
 sequential/dropout/dropout/ShapeShape)sequential/max_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2"
 sequential/dropout/dropout/ShapeЗ
7sequential/dropout/dropout/random_uniform/RandomUniformRandomUniform)sequential/dropout/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype029
7sequential/dropout/dropout/random_uniform/RandomUniformЫ
)sequential/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2+
)sequential/dropout/dropout/GreaterEqual/y§
'sequential/dropout/dropout/GreaterEqualGreaterEqual@sequential/dropout/dropout/random_uniform/RandomUniform:output:02sequential/dropout/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2)
'sequential/dropout/dropout/GreaterEqual“
sequential/dropout/dropout/CastCast+sequential/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2!
sequential/dropout/dropout/Castа
 sequential/dropout/dropout/Mul_1Mul"sequential/dropout/dropout/Mul:z:0#sequential/dropout/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2"
 sequential/dropout/dropout/Mul_1„
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOpХ
sequential_1/conv2d_1/Conv2DConv2D$sequential/dropout/dropout/Mul_1:z:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
2
sequential_1/conv2d_1/Conv2Dќ
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpт
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
sequential_1/conv2d_1/BiasAddі
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
sequential_1/conv2d_1/Relu€
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_1/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolС
$sequential_1/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$sequential_1/dropout_1/dropout/Constщ
"sequential_1/dropout_1/dropout/MulMul-sequential_1/max_pooling2d_1/MaxPool:output:0-sequential_1/dropout_1/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2$
"sequential_1/dropout_1/dropout/Mul©
$sequential_1/dropout_1/dropout/ShapeShape-sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2&
$sequential_1/dropout_1/dropout/ShapeУ
;sequential_1/dropout_1/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_1/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
dtype02=
;sequential_1/dropout_1/dropout/random_uniform/RandomUniform£
-sequential_1/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_1/dropout_1/dropout/GreaterEqual/yі
+sequential_1/dropout_1/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_1/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_1/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2-
+sequential_1/dropout_1/dropout/GreaterEqualё
#sequential_1/dropout_1/dropout/CastCast/sequential_1/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2%
#sequential_1/dropout_1/dropout/Castр
$sequential_1/dropout_1/dropout/Mul_1Mul&sequential_1/dropout_1/dropout/Mul:z:0'sequential_1/dropout_1/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2&
$sequential_1/dropout_1/dropout/Mul_1„
+sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_2/conv2d_2/Conv2D/ReadVariableOpЩ
sequential_2/conv2d_2/Conv2DConv2D(sequential_1/dropout_1/dropout/Mul_1:z:03sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
2
sequential_2/conv2d_2/Conv2Dќ
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpт
sequential_2/conv2d_2/BiasAddBiasAdd%sequential_2/conv2d_2/Conv2D:output:04sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
sequential_2/conv2d_2/BiasAddі
sequential_2/conv2d_2/ReluRelu&sequential_2/conv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
sequential_2/conv2d_2/Relu€
$sequential_2/max_pooling2d_2/MaxPoolMaxPool(sequential_2/conv2d_2/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2&
$sequential_2/max_pooling2d_2/MaxPoolС
$sequential_2/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$sequential_2/dropout_2/dropout/Constщ
"sequential_2/dropout_2/dropout/MulMul-sequential_2/max_pooling2d_2/MaxPool:output:0-sequential_2/dropout_2/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2$
"sequential_2/dropout_2/dropout/Mul©
$sequential_2/dropout_2/dropout/ShapeShape-sequential_2/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2&
$sequential_2/dropout_2/dropout/ShapeУ
;sequential_2/dropout_2/dropout/random_uniform/RandomUniformRandomUniform-sequential_2/dropout_2/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
dtype02=
;sequential_2/dropout_2/dropout/random_uniform/RandomUniform£
-sequential_2/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_2/dropout_2/dropout/GreaterEqual/yі
+sequential_2/dropout_2/dropout/GreaterEqualGreaterEqualDsequential_2/dropout_2/dropout/random_uniform/RandomUniform:output:06sequential_2/dropout_2/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2-
+sequential_2/dropout_2/dropout/GreaterEqualё
#sequential_2/dropout_2/dropout/CastCast/sequential_2/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2%
#sequential_2/dropout_2/dropout/Castр
$sequential_2/dropout_2/dropout/Mul_1Mul&sequential_2/dropout_2/dropout/Mul:z:0'sequential_2/dropout_2/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2&
$sequential_2/dropout_2/dropout/Mul_1v
flatten/ShapeShape(sequential_2/dropout_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
flatten/ShapeД
flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
flatten/strided_slice/stackИ
flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
flatten/strided_slice/stack_1И
flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
flatten/strided_slice/stack_2Т
flatten/strided_sliceStridedSliceflatten/Shape:output:0$flatten/strided_slice/stack:output:0&flatten/strided_slice/stack_1:output:0&flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
flatten/strided_slice}
flatten/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
flatten/Reshape/shape/1¶
flatten/Reshape/shapePackflatten/strided_slice:output:0 flatten/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
flatten/Reshape/shape≤
flatten/ReshapeReshape(sequential_2/dropout_2/dropout/Mul_1:z:0flatten/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
flatten/Reshape°
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

dense/Relu¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/Relu•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense_2/MatMul/ReadVariableOpЯ
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/BiasAddЇ
IdentityIdentitydense_2/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_2/conv2d_2/BiasAdd/ReadVariableOp,^sequential_2/conv2d_2/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_2/BiasAdd/ReadVariableOp,sequential_2/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_2/Conv2D/ReadVariableOp+sequential_2/conv2d_2/Conv2D/ReadVariableOp:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
с
Е
H__inference_sequential_1_layer_call_and_return_conditional_losses_683364

inputs+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOp∞
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOpЊ
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
conv2d_1/Conv2DІ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpђ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
conv2d_1/Relu∆
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const≥
dropout_1/dropout/MulMul max_pooling2d_1/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout_1/dropout/MulВ
dropout_1/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/ShapeЏ
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/yо
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2 
dropout_1/dropout/GreaterEqual•
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ 2
dropout_1/dropout/Cast™
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout_1/dropout/Mul_1Ї
IdentityIdentitydropout_1/dropout/Mul_1:z:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≈	
С
$__inference_signature_wrapper_682994
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В **
f%R#
!__inference__wrapped_model_6817772
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:s o
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_1
Ж
А
+__inference_sequential_layer_call_fn_683293

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_6818972
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
b
C__inference_dropout_layer_call_and_return_conditional_losses_681833

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ	
£
-__inference_sequential_3_layer_call_fn_683913
sequential_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_6823992
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:€€€€€€€€€::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:€€€€€€€€€
*
_user_specified_namesequential_input
ю
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_681783

inputs
identityђ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ЄL
Э	
H__inference_sequential_3_layer_call_and_return_conditional_losses_683884
sequential_input4
0sequential_conv2d_conv2d_readvariableop_resource5
1sequential_conv2d_biasadd_readvariableop_resource8
4sequential_1_conv2d_1_conv2d_readvariableop_resource9
5sequential_1_conv2d_1_biasadd_readvariableop_resource8
4sequential_2_conv2d_2_conv2d_readvariableop_resource9
5sequential_2_conv2d_2_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐ(sequential/conv2d/BiasAdd/ReadVariableOpҐ'sequential/conv2d/Conv2D/ReadVariableOpҐ,sequential_1/conv2d_1/BiasAdd/ReadVariableOpҐ+sequential_1/conv2d_1/Conv2D/ReadVariableOpҐ,sequential_2/conv2d_2/BiasAdd/ReadVariableOpҐ+sequential_2/conv2d_2/Conv2D/ReadVariableOpЋ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpг
sequential/conv2d/Conv2DConv2Dsequential_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
2
sequential/conv2d/Conv2D¬
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp–
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2
sequential/conv2d/BiasAddЦ
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
sequential/conv2d/Reluб
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
2"
 sequential/max_pooling2d/MaxPoolЂ
sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
sequential/dropout/Identity„
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOpГ
sequential_1/conv2d_1/Conv2DConv2D$sequential/dropout/Identity:output:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
sequential_1/conv2d_1/Conv2Dќ
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpа
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
sequential_1/conv2d_1/BiasAddҐ
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
sequential_1/conv2d_1/Reluн
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolЈ
sequential_1/dropout_1/IdentityIdentity-sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2!
sequential_1/dropout_1/Identity„
+sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_2/conv2d_2/Conv2D/ReadVariableOpЗ
sequential_2/conv2d_2/Conv2DConv2D(sequential_1/dropout_1/Identity:output:03sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
sequential_2/conv2d_2/Conv2Dќ
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpа
sequential_2/conv2d_2/BiasAddBiasAdd%sequential_2/conv2d_2/Conv2D:output:04sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
sequential_2/conv2d_2/BiasAddҐ
sequential_2/conv2d_2/ReluRelu&sequential_2/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
sequential_2/conv2d_2/Reluн
$sequential_2/max_pooling2d_2/MaxPoolMaxPool(sequential_2/conv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2&
$sequential_2/max_pooling2d_2/MaxPoolЈ
sequential_2/dropout_2/IdentityIdentity-sequential_2/max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2!
sequential_2/dropout_2/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten/ConstҐ
flatten/ReshapeReshape(sequential_2/dropout_2/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten/Reshape°
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

dense/Relu¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/Relu•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense_2/MatMul/ReadVariableOpЯ
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/BiasAddЇ
IdentityIdentitydense_2/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_2/conv2d_2/BiasAdd/ReadVariableOp,^sequential_2/conv2d_2/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:€€€€€€€€€::::::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_2/BiasAdd/ReadVariableOp,sequential_2/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_2/Conv2D/ReadVariableOp+sequential_2/conv2d_2/Conv2D/ReadVariableOp:a ]
/
_output_shapes
:€€€€€€€€€
*
_user_specified_namesequential_input
А
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_681910

inputs
identityђ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є
Н
H__inference_sequential_2_layer_call_and_return_conditional_losses_683530
conv2d_2_input+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource
identityИҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOp∞
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp∆
conv2d_2/Conv2DConv2Dconv2d_2_input&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_2/Conv2DІ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpђ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_2/Relu∆
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_2/MaxPoolР
dropout_2/IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_2/IdentityЇ
IdentityIdentitydropout_2/Identity:output:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:_ [
/
_output_shapes
:€€€€€€€€€ 
(
_user_specified_nameconv2d_2_input
Ш
ќ
F__inference_sequential_layer_call_and_return_conditional_losses_681877

inputs
conv2d_681869
conv2d_681871
identityИҐconv2d/StatefulPartitionedCallҐdropout/StatefulPartitionedCallЧ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_681869conv2d_681871*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_6818042 
conv2d/StatefulPartitionedCallС
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_6817832
max_pooling2d/PartitionedCallЦ
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_6818332!
dropout/StatefulPartitionedCall«
IdentityIdentity(dropout/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ъ%
ƒ
H__inference_sequential_3_layer_call_and_return_conditional_losses_682718

inputs
sequential_682547
sequential_682549
sequential_1_682603
sequential_1_682605
sequential_2_682659
sequential_2_682661
dense_682702
dense_682704
dense_1_682707
dense_1_682709
dense_2_682712
dense_2_682714
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐ"sequential/StatefulPartitionedCallҐ$sequential_1/StatefulPartitionedCallҐ$sequential_2/StatefulPartitionedCallљ
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_682547sequential_682549*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_6825152$
"sequential/StatefulPartitionedCallм
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_682603sequential_1_682605*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_6825712&
$sequential_1/StatefulPartitionedCallо
$sequential_2/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0sequential_2_682659sequential_2_682661*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_6826272&
$sequential_2/StatefulPartitionedCallЖ
flatten/PartitionedCallPartitionedCall-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_6826752
flatten/PartitionedCall•
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_682702dense_682704*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_6826922
dense/StatefulPartitionedCallі
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_682707dense_1_682709*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_6822832!
dense_1/StatefulPartitionedCallґ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_682712dense_2_682714*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_6823092!
dense_2/StatefulPartitionedCall”
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є
Н
H__inference_sequential_1_layer_call_and_return_conditional_losses_683479
conv2d_1_input+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOp∞
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp∆
conv2d_1/Conv2DConv2Dconv2d_1_input&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
conv2d_1/Conv2DІ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpђ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
conv2d_1/Relu∆
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolР
dropout_1/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout_1/IdentityЇ
IdentityIdentitydropout_1/Identity:output:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:_ [
/
_output_shapes
:€€€€€€€€€
(
_user_specified_nameconv2d_1_input
Џ	
£
-__inference_sequential_3_layer_call_fn_683942
sequential_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_6824632
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:€€€€€€€€€::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:€€€€€€€€€
*
_user_specified_namesequential_input
ќ

Ё
D__inference_conv2d_2_layer_call_and_return_conditional_losses_682058

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
£
_
C__inference_flatten_layer_call_and_return_conditional_losses_683662

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicem
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape/shape/1Ж
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
 
Е
H__inference_sequential_2_layer_call_and_return_conditional_losses_683619

inputs+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource
identityИҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOp∞
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp–
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_2/Conv2DІ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpЊ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
conv2d_2/BiasAddН
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
conv2d_2/ReluЎ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_2/MaxPoolw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/Const≈
dropout_2/dropout/MulMul max_pooling2d_2/MaxPool:output:0 dropout_2/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
dropout_2/dropout/MulВ
dropout_2/dropout/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shapeм
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
dtype020
.dropout_2/dropout/random_uniform/RandomUniformЙ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_2/dropout/GreaterEqual/yА
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2 
dropout_2/dropout/GreaterEqualЈ
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
dropout_2/dropout/CastЉ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
dropout_2/dropout/Mul_1ћ
IdentityIdentitydropout_2/dropout/Mul_1:z:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ::2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Ѕ
a
(__inference_dropout_layer_call_fn_684366

inputs
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_6818332
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
К
В
-__inference_sequential_2_layer_call_fn_683599

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_6821512
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Яk
Ћ
C__inference_ocr_net_layer_call_and_return_conditional_losses_683133
batch_inputA
=sequential_3_sequential_conv2d_conv2d_readvariableop_resourceB
>sequential_3_sequential_conv2d_biasadd_readvariableop_resourceE
Asequential_3_sequential_1_conv2d_1_conv2d_readvariableop_resourceF
Bsequential_3_sequential_1_conv2d_1_biasadd_readvariableop_resourceE
Asequential_3_sequential_2_conv2d_2_conv2d_readvariableop_resourceF
Bsequential_3_sequential_2_conv2d_2_biasadd_readvariableop_resource5
1sequential_3_dense_matmul_readvariableop_resource6
2sequential_3_dense_biasadd_readvariableop_resource7
3sequential_3_dense_1_matmul_readvariableop_resource8
4sequential_3_dense_1_biasadd_readvariableop_resource7
3sequential_3_dense_2_matmul_readvariableop_resource8
4sequential_3_dense_2_biasadd_readvariableop_resource
identityИҐ)sequential_3/dense/BiasAdd/ReadVariableOpҐ(sequential_3/dense/MatMul/ReadVariableOpҐ+sequential_3/dense_1/BiasAdd/ReadVariableOpҐ*sequential_3/dense_1/MatMul/ReadVariableOpҐ+sequential_3/dense_2/BiasAdd/ReadVariableOpҐ*sequential_3/dense_2/MatMul/ReadVariableOpҐ5sequential_3/sequential/conv2d/BiasAdd/ReadVariableOpҐ4sequential_3/sequential/conv2d/Conv2D/ReadVariableOpҐ9sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOpҐ8sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOpҐ9sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOpҐ8sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOpт
4sequential_3/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp=sequential_3_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype026
4sequential_3/sequential/conv2d/Conv2D/ReadVariableOpЧ
%sequential_3/sequential/conv2d/Conv2DConv2Dbatch_input<sequential_3/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
2'
%sequential_3/sequential/conv2d/Conv2Dй
5sequential_3/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp>sequential_3_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype027
5sequential_3/sequential/conv2d/BiasAdd/ReadVariableOpЦ
&sequential_3/sequential/conv2d/BiasAddBiasAdd.sequential_3/sequential/conv2d/Conv2D:output:0=sequential_3/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2(
&sequential_3/sequential/conv2d/BiasAddѕ
#sequential_3/sequential/conv2d/ReluRelu/sequential_3/sequential/conv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2%
#sequential_3/sequential/conv2d/ReluЪ
-sequential_3/sequential/max_pooling2d/MaxPoolMaxPool1sequential_3/sequential/conv2d/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2/
-sequential_3/sequential/max_pooling2d/MaxPoolд
(sequential_3/sequential/dropout/IdentityIdentity6sequential_3/sequential/max_pooling2d/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2*
(sequential_3/sequential/dropout/Identityю
8sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOpAsequential_3_sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02:
8sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp…
)sequential_3/sequential_1/conv2d_1/Conv2DConv2D1sequential_3/sequential/dropout/Identity:output:0@sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
2+
)sequential_3/sequential_1/conv2d_1/Conv2Dх
9sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpBsequential_3_sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02;
9sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp¶
*sequential_3/sequential_1/conv2d_1/BiasAddBiasAdd2sequential_3/sequential_1/conv2d_1/Conv2D:output:0Asequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2,
*sequential_3/sequential_1/conv2d_1/BiasAddџ
'sequential_3/sequential_1/conv2d_1/ReluRelu3sequential_3/sequential_1/conv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2)
'sequential_3/sequential_1/conv2d_1/Relu¶
1sequential_3/sequential_1/max_pooling2d_1/MaxPoolMaxPool5sequential_3/sequential_1/conv2d_1/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
ksize
*
paddingSAME*
strides
23
1sequential_3/sequential_1/max_pooling2d_1/MaxPoolр
,sequential_3/sequential_1/dropout_1/IdentityIdentity:sequential_3/sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2.
,sequential_3/sequential_1/dropout_1/Identityю
8sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOpAsequential_3_sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02:
8sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOpЌ
)sequential_3/sequential_2/conv2d_2/Conv2DConv2D5sequential_3/sequential_1/dropout_1/Identity:output:0@sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
2+
)sequential_3/sequential_2/conv2d_2/Conv2Dх
9sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpBsequential_3_sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02;
9sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp¶
*sequential_3/sequential_2/conv2d_2/BiasAddBiasAdd2sequential_3/sequential_2/conv2d_2/Conv2D:output:0Asequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2,
*sequential_3/sequential_2/conv2d_2/BiasAddџ
'sequential_3/sequential_2/conv2d_2/ReluRelu3sequential_3/sequential_2/conv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2)
'sequential_3/sequential_2/conv2d_2/Relu¶
1sequential_3/sequential_2/max_pooling2d_2/MaxPoolMaxPool5sequential_3/sequential_2/conv2d_2/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
ksize
*
paddingSAME*
strides
23
1sequential_3/sequential_2/max_pooling2d_2/MaxPoolр
,sequential_3/sequential_2/dropout_2/IdentityIdentity:sequential_3/sequential_2/max_pooling2d_2/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2.
,sequential_3/sequential_2/dropout_2/IdentityЭ
sequential_3/flatten/ShapeShape5sequential_3/sequential_2/dropout_2/Identity:output:0*
T0*
_output_shapes
:2
sequential_3/flatten/ShapeЮ
(sequential_3/flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_3/flatten/strided_slice/stackҐ
*sequential_3/flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_3/flatten/strided_slice/stack_1Ґ
*sequential_3/flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_3/flatten/strided_slice/stack_2а
"sequential_3/flatten/strided_sliceStridedSlice#sequential_3/flatten/Shape:output:01sequential_3/flatten/strided_slice/stack:output:03sequential_3/flatten/strided_slice/stack_1:output:03sequential_3/flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_3/flatten/strided_sliceЧ
$sequential_3/flatten/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2&
$sequential_3/flatten/Reshape/shape/1Џ
"sequential_3/flatten/Reshape/shapePack+sequential_3/flatten/strided_slice:output:0-sequential_3/flatten/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_3/flatten/Reshape/shapeж
sequential_3/flatten/ReshapeReshape5sequential_3/sequential_2/dropout_2/Identity:output:0+sequential_3/flatten/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sequential_3/flatten/Reshape»
(sequential_3/dense/MatMul/ReadVariableOpReadVariableOp1sequential_3_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02*
(sequential_3/dense/MatMul/ReadVariableOpћ
sequential_3/dense/MatMulMatMul%sequential_3/flatten/Reshape:output:00sequential_3/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense/MatMul∆
)sequential_3/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_3_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)sequential_3/dense/BiasAdd/ReadVariableOpќ
sequential_3/dense/BiasAddBiasAdd#sequential_3/dense/MatMul:product:01sequential_3/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense/BiasAddТ
sequential_3/dense/ReluRelu#sequential_3/dense/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense/ReluЌ
*sequential_3/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02,
*sequential_3/dense_1/MatMul/ReadVariableOp—
sequential_3/dense_1/MatMulMatMul%sequential_3/dense/Relu:activations:02sequential_3/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential_3/dense_1/MatMulЋ
+sequential_3/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_3/dense_1/BiasAdd/ReadVariableOp’
sequential_3/dense_1/BiasAddBiasAdd%sequential_3/dense_1/MatMul:product:03sequential_3/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential_3/dense_1/BiasAddЧ
sequential_3/dense_1/ReluRelu%sequential_3/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential_3/dense_1/Reluћ
*sequential_3/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_2_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02,
*sequential_3/dense_2/MatMul/ReadVariableOp”
sequential_3/dense_2/MatMulMatMul'sequential_3/dense_1/Relu:activations:02sequential_3/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
sequential_3/dense_2/MatMulЋ
+sequential_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+sequential_3/dense_2/BiasAdd/ReadVariableOp’
sequential_3/dense_2/BiasAddBiasAdd%sequential_3/dense_2/MatMul:product:03sequential_3/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
sequential_3/dense_2/BiasAddг
IdentityIdentity%sequential_3/dense_2/BiasAdd:output:0*^sequential_3/dense/BiasAdd/ReadVariableOp)^sequential_3/dense/MatMul/ReadVariableOp,^sequential_3/dense_1/BiasAdd/ReadVariableOp+^sequential_3/dense_1/MatMul/ReadVariableOp,^sequential_3/dense_2/BiasAdd/ReadVariableOp+^sequential_3/dense_2/MatMul/ReadVariableOp6^sequential_3/sequential/conv2d/BiasAdd/ReadVariableOp5^sequential_3/sequential/conv2d/Conv2D/ReadVariableOp:^sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp9^sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp:^sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp9^sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::2V
)sequential_3/dense/BiasAdd/ReadVariableOp)sequential_3/dense/BiasAdd/ReadVariableOp2T
(sequential_3/dense/MatMul/ReadVariableOp(sequential_3/dense/MatMul/ReadVariableOp2Z
+sequential_3/dense_1/BiasAdd/ReadVariableOp+sequential_3/dense_1/BiasAdd/ReadVariableOp2X
*sequential_3/dense_1/MatMul/ReadVariableOp*sequential_3/dense_1/MatMul/ReadVariableOp2Z
+sequential_3/dense_2/BiasAdd/ReadVariableOp+sequential_3/dense_2/BiasAdd/ReadVariableOp2X
*sequential_3/dense_2/MatMul/ReadVariableOp*sequential_3/dense_2/MatMul/ReadVariableOp2n
5sequential_3/sequential/conv2d/BiasAdd/ReadVariableOp5sequential_3/sequential/conv2d/BiasAdd/ReadVariableOp2l
4sequential_3/sequential/conv2d/Conv2D/ReadVariableOp4sequential_3/sequential/conv2d/Conv2D/ReadVariableOp2v
9sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp9sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp2t
8sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp8sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp2v
9sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp9sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp2t
8sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOp8sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOp:w s
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
%
_user_specified_namebatch_input
Т
Б
F__inference_sequential_layer_call_and_return_conditional_losses_683211
conv2d_input)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOp™
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOpЊ
conv2d/Conv2DConv2Dconv2d_input$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
2
conv2d/Conv2D°
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp§
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
conv2d/Reluј
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
2
max_pooling2d/MaxPools
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/ConstЂ
dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/dropout/Mul|
dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape‘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/yж
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€2
dropout/dropout/CastҐ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/dropout/Mul_1і
IdentityIdentitydropout/dropout/Mul_1:z:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:€€€€€€€€€
&
_user_specified_nameconv2d_input
а
А
+__inference_sequential_layer_call_fn_683344

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_6825282
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
°
Е
H__inference_sequential_1_layer_call_and_return_conditional_losses_683377

inputs+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOp∞
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOpЊ
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
conv2d_1/Conv2DІ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpђ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
conv2d_1/Relu∆
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolР
dropout_1/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout_1/IdentityЇ
IdentityIdentitydropout_1/Identity:output:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
∆Ц
Ћ
C__inference_ocr_net_layer_call_and_return_conditional_losses_683074
batch_inputA
=sequential_3_sequential_conv2d_conv2d_readvariableop_resourceB
>sequential_3_sequential_conv2d_biasadd_readvariableop_resourceE
Asequential_3_sequential_1_conv2d_1_conv2d_readvariableop_resourceF
Bsequential_3_sequential_1_conv2d_1_biasadd_readvariableop_resourceE
Asequential_3_sequential_2_conv2d_2_conv2d_readvariableop_resourceF
Bsequential_3_sequential_2_conv2d_2_biasadd_readvariableop_resource5
1sequential_3_dense_matmul_readvariableop_resource6
2sequential_3_dense_biasadd_readvariableop_resource7
3sequential_3_dense_1_matmul_readvariableop_resource8
4sequential_3_dense_1_biasadd_readvariableop_resource7
3sequential_3_dense_2_matmul_readvariableop_resource8
4sequential_3_dense_2_biasadd_readvariableop_resource
identityИҐ)sequential_3/dense/BiasAdd/ReadVariableOpҐ(sequential_3/dense/MatMul/ReadVariableOpҐ+sequential_3/dense_1/BiasAdd/ReadVariableOpҐ*sequential_3/dense_1/MatMul/ReadVariableOpҐ+sequential_3/dense_2/BiasAdd/ReadVariableOpҐ*sequential_3/dense_2/MatMul/ReadVariableOpҐ5sequential_3/sequential/conv2d/BiasAdd/ReadVariableOpҐ4sequential_3/sequential/conv2d/Conv2D/ReadVariableOpҐ9sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOpҐ8sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOpҐ9sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOpҐ8sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOpт
4sequential_3/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp=sequential_3_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype026
4sequential_3/sequential/conv2d/Conv2D/ReadVariableOpЧ
%sequential_3/sequential/conv2d/Conv2DConv2Dbatch_input<sequential_3/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
2'
%sequential_3/sequential/conv2d/Conv2Dй
5sequential_3/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp>sequential_3_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype027
5sequential_3/sequential/conv2d/BiasAdd/ReadVariableOpЦ
&sequential_3/sequential/conv2d/BiasAddBiasAdd.sequential_3/sequential/conv2d/Conv2D:output:0=sequential_3/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2(
&sequential_3/sequential/conv2d/BiasAddѕ
#sequential_3/sequential/conv2d/ReluRelu/sequential_3/sequential/conv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2%
#sequential_3/sequential/conv2d/ReluЪ
-sequential_3/sequential/max_pooling2d/MaxPoolMaxPool1sequential_3/sequential/conv2d/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2/
-sequential_3/sequential/max_pooling2d/MaxPool£
-sequential_3/sequential/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-sequential_3/sequential/dropout/dropout/ConstЭ
+sequential_3/sequential/dropout/dropout/MulMul6sequential_3/sequential/max_pooling2d/MaxPool:output:06sequential_3/sequential/dropout/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2-
+sequential_3/sequential/dropout/dropout/Mulƒ
-sequential_3/sequential/dropout/dropout/ShapeShape6sequential_3/sequential/max_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2/
-sequential_3/sequential/dropout/dropout/ShapeЃ
Dsequential_3/sequential/dropout/dropout/random_uniform/RandomUniformRandomUniform6sequential_3/sequential/dropout/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype02F
Dsequential_3/sequential/dropout/dropout/random_uniform/RandomUniformµ
6sequential_3/sequential/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6sequential_3/sequential/dropout/dropout/GreaterEqual/yЎ
4sequential_3/sequential/dropout/dropout/GreaterEqualGreaterEqualMsequential_3/sequential/dropout/dropout/random_uniform/RandomUniform:output:0?sequential_3/sequential/dropout/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€26
4sequential_3/sequential/dropout/dropout/GreaterEqualщ
,sequential_3/sequential/dropout/dropout/CastCast8sequential_3/sequential/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2.
,sequential_3/sequential/dropout/dropout/CastФ
-sequential_3/sequential/dropout/dropout/Mul_1Mul/sequential_3/sequential/dropout/dropout/Mul:z:00sequential_3/sequential/dropout/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2/
-sequential_3/sequential/dropout/dropout/Mul_1ю
8sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOpAsequential_3_sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02:
8sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp…
)sequential_3/sequential_1/conv2d_1/Conv2DConv2D1sequential_3/sequential/dropout/dropout/Mul_1:z:0@sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
2+
)sequential_3/sequential_1/conv2d_1/Conv2Dх
9sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpBsequential_3_sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02;
9sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp¶
*sequential_3/sequential_1/conv2d_1/BiasAddBiasAdd2sequential_3/sequential_1/conv2d_1/Conv2D:output:0Asequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2,
*sequential_3/sequential_1/conv2d_1/BiasAddџ
'sequential_3/sequential_1/conv2d_1/ReluRelu3sequential_3/sequential_1/conv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2)
'sequential_3/sequential_1/conv2d_1/Relu¶
1sequential_3/sequential_1/max_pooling2d_1/MaxPoolMaxPool5sequential_3/sequential_1/conv2d_1/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
ksize
*
paddingSAME*
strides
23
1sequential_3/sequential_1/max_pooling2d_1/MaxPoolЂ
1sequential_3/sequential_1/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @23
1sequential_3/sequential_1/dropout_1/dropout/Const≠
/sequential_3/sequential_1/dropout_1/dropout/MulMul:sequential_3/sequential_1/max_pooling2d_1/MaxPool:output:0:sequential_3/sequential_1/dropout_1/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 21
/sequential_3/sequential_1/dropout_1/dropout/Mul–
1sequential_3/sequential_1/dropout_1/dropout/ShapeShape:sequential_3/sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:23
1sequential_3/sequential_1/dropout_1/dropout/ShapeЇ
Hsequential_3/sequential_1/dropout_1/dropout/random_uniform/RandomUniformRandomUniform:sequential_3/sequential_1/dropout_1/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
dtype02J
Hsequential_3/sequential_1/dropout_1/dropout/random_uniform/RandomUniformљ
:sequential_3/sequential_1/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2<
:sequential_3/sequential_1/dropout_1/dropout/GreaterEqual/yи
8sequential_3/sequential_1/dropout_1/dropout/GreaterEqualGreaterEqualQsequential_3/sequential_1/dropout_1/dropout/random_uniform/RandomUniform:output:0Csequential_3/sequential_1/dropout_1/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2:
8sequential_3/sequential_1/dropout_1/dropout/GreaterEqualЕ
0sequential_3/sequential_1/dropout_1/dropout/CastCast<sequential_3/sequential_1/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 22
0sequential_3/sequential_1/dropout_1/dropout/Cast§
1sequential_3/sequential_1/dropout_1/dropout/Mul_1Mul3sequential_3/sequential_1/dropout_1/dropout/Mul:z:04sequential_3/sequential_1/dropout_1/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 23
1sequential_3/sequential_1/dropout_1/dropout/Mul_1ю
8sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOpAsequential_3_sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02:
8sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOpЌ
)sequential_3/sequential_2/conv2d_2/Conv2DConv2D5sequential_3/sequential_1/dropout_1/dropout/Mul_1:z:0@sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
2+
)sequential_3/sequential_2/conv2d_2/Conv2Dх
9sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpBsequential_3_sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02;
9sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp¶
*sequential_3/sequential_2/conv2d_2/BiasAddBiasAdd2sequential_3/sequential_2/conv2d_2/Conv2D:output:0Asequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2,
*sequential_3/sequential_2/conv2d_2/BiasAddџ
'sequential_3/sequential_2/conv2d_2/ReluRelu3sequential_3/sequential_2/conv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2)
'sequential_3/sequential_2/conv2d_2/Relu¶
1sequential_3/sequential_2/max_pooling2d_2/MaxPoolMaxPool5sequential_3/sequential_2/conv2d_2/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
ksize
*
paddingSAME*
strides
23
1sequential_3/sequential_2/max_pooling2d_2/MaxPoolЂ
1sequential_3/sequential_2/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @23
1sequential_3/sequential_2/dropout_2/dropout/Const≠
/sequential_3/sequential_2/dropout_2/dropout/MulMul:sequential_3/sequential_2/max_pooling2d_2/MaxPool:output:0:sequential_3/sequential_2/dropout_2/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@21
/sequential_3/sequential_2/dropout_2/dropout/Mul–
1sequential_3/sequential_2/dropout_2/dropout/ShapeShape:sequential_3/sequential_2/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:23
1sequential_3/sequential_2/dropout_2/dropout/ShapeЇ
Hsequential_3/sequential_2/dropout_2/dropout/random_uniform/RandomUniformRandomUniform:sequential_3/sequential_2/dropout_2/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
dtype02J
Hsequential_3/sequential_2/dropout_2/dropout/random_uniform/RandomUniformљ
:sequential_3/sequential_2/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2<
:sequential_3/sequential_2/dropout_2/dropout/GreaterEqual/yи
8sequential_3/sequential_2/dropout_2/dropout/GreaterEqualGreaterEqualQsequential_3/sequential_2/dropout_2/dropout/random_uniform/RandomUniform:output:0Csequential_3/sequential_2/dropout_2/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2:
8sequential_3/sequential_2/dropout_2/dropout/GreaterEqualЕ
0sequential_3/sequential_2/dropout_2/dropout/CastCast<sequential_3/sequential_2/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@22
0sequential_3/sequential_2/dropout_2/dropout/Cast§
1sequential_3/sequential_2/dropout_2/dropout/Mul_1Mul3sequential_3/sequential_2/dropout_2/dropout/Mul:z:04sequential_3/sequential_2/dropout_2/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@23
1sequential_3/sequential_2/dropout_2/dropout/Mul_1Э
sequential_3/flatten/ShapeShape5sequential_3/sequential_2/dropout_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
sequential_3/flatten/ShapeЮ
(sequential_3/flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_3/flatten/strided_slice/stackҐ
*sequential_3/flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_3/flatten/strided_slice/stack_1Ґ
*sequential_3/flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_3/flatten/strided_slice/stack_2а
"sequential_3/flatten/strided_sliceStridedSlice#sequential_3/flatten/Shape:output:01sequential_3/flatten/strided_slice/stack:output:03sequential_3/flatten/strided_slice/stack_1:output:03sequential_3/flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_3/flatten/strided_sliceЧ
$sequential_3/flatten/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2&
$sequential_3/flatten/Reshape/shape/1Џ
"sequential_3/flatten/Reshape/shapePack+sequential_3/flatten/strided_slice:output:0-sequential_3/flatten/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_3/flatten/Reshape/shapeж
sequential_3/flatten/ReshapeReshape5sequential_3/sequential_2/dropout_2/dropout/Mul_1:z:0+sequential_3/flatten/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sequential_3/flatten/Reshape»
(sequential_3/dense/MatMul/ReadVariableOpReadVariableOp1sequential_3_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02*
(sequential_3/dense/MatMul/ReadVariableOpћ
sequential_3/dense/MatMulMatMul%sequential_3/flatten/Reshape:output:00sequential_3/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense/MatMul∆
)sequential_3/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_3_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)sequential_3/dense/BiasAdd/ReadVariableOpќ
sequential_3/dense/BiasAddBiasAdd#sequential_3/dense/MatMul:product:01sequential_3/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense/BiasAddТ
sequential_3/dense/ReluRelu#sequential_3/dense/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense/ReluЌ
*sequential_3/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02,
*sequential_3/dense_1/MatMul/ReadVariableOp—
sequential_3/dense_1/MatMulMatMul%sequential_3/dense/Relu:activations:02sequential_3/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential_3/dense_1/MatMulЋ
+sequential_3/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_3/dense_1/BiasAdd/ReadVariableOp’
sequential_3/dense_1/BiasAddBiasAdd%sequential_3/dense_1/MatMul:product:03sequential_3/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential_3/dense_1/BiasAddЧ
sequential_3/dense_1/ReluRelu%sequential_3/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential_3/dense_1/Reluћ
*sequential_3/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_2_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02,
*sequential_3/dense_2/MatMul/ReadVariableOp”
sequential_3/dense_2/MatMulMatMul'sequential_3/dense_1/Relu:activations:02sequential_3/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
sequential_3/dense_2/MatMulЋ
+sequential_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+sequential_3/dense_2/BiasAdd/ReadVariableOp’
sequential_3/dense_2/BiasAddBiasAdd%sequential_3/dense_2/MatMul:product:03sequential_3/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
sequential_3/dense_2/BiasAddг
IdentityIdentity%sequential_3/dense_2/BiasAdd:output:0*^sequential_3/dense/BiasAdd/ReadVariableOp)^sequential_3/dense/MatMul/ReadVariableOp,^sequential_3/dense_1/BiasAdd/ReadVariableOp+^sequential_3/dense_1/MatMul/ReadVariableOp,^sequential_3/dense_2/BiasAdd/ReadVariableOp+^sequential_3/dense_2/MatMul/ReadVariableOp6^sequential_3/sequential/conv2d/BiasAdd/ReadVariableOp5^sequential_3/sequential/conv2d/Conv2D/ReadVariableOp:^sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp9^sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp:^sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp9^sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::2V
)sequential_3/dense/BiasAdd/ReadVariableOp)sequential_3/dense/BiasAdd/ReadVariableOp2T
(sequential_3/dense/MatMul/ReadVariableOp(sequential_3/dense/MatMul/ReadVariableOp2Z
+sequential_3/dense_1/BiasAdd/ReadVariableOp+sequential_3/dense_1/BiasAdd/ReadVariableOp2X
*sequential_3/dense_1/MatMul/ReadVariableOp*sequential_3/dense_1/MatMul/ReadVariableOp2Z
+sequential_3/dense_2/BiasAdd/ReadVariableOp+sequential_3/dense_2/BiasAdd/ReadVariableOp2X
*sequential_3/dense_2/MatMul/ReadVariableOp*sequential_3/dense_2/MatMul/ReadVariableOp2n
5sequential_3/sequential/conv2d/BiasAdd/ReadVariableOp5sequential_3/sequential/conv2d/BiasAdd/ReadVariableOp2l
4sequential_3/sequential/conv2d/Conv2D/ReadVariableOp4sequential_3/sequential/conv2d/Conv2D/ReadVariableOp2v
9sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp9sequential_3/sequential_1/conv2d_1/BiasAdd/ReadVariableOp2t
8sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp8sequential_3/sequential_1/conv2d_1/Conv2D/ReadVariableOp2v
9sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp9sequential_3/sequential_2/conv2d_2/BiasAdd/ReadVariableOp2t
8sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOp8sequential_3/sequential_2/conv2d_2/Conv2D/ReadVariableOp:w s
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
%
_user_specified_namebatch_input
и
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_684455

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≠o
Э	
H__inference_sequential_3_layer_call_and_return_conditional_losses_683831
sequential_input4
0sequential_conv2d_conv2d_readvariableop_resource5
1sequential_conv2d_biasadd_readvariableop_resource8
4sequential_1_conv2d_1_conv2d_readvariableop_resource9
5sequential_1_conv2d_1_biasadd_readvariableop_resource8
4sequential_2_conv2d_2_conv2d_readvariableop_resource9
5sequential_2_conv2d_2_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐ(sequential/conv2d/BiasAdd/ReadVariableOpҐ'sequential/conv2d/Conv2D/ReadVariableOpҐ,sequential_1/conv2d_1/BiasAdd/ReadVariableOpҐ+sequential_1/conv2d_1/Conv2D/ReadVariableOpҐ,sequential_2/conv2d_2/BiasAdd/ReadVariableOpҐ+sequential_2/conv2d_2/Conv2D/ReadVariableOpЋ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpг
sequential/conv2d/Conv2DConv2Dsequential_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
2
sequential/conv2d/Conv2D¬
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp–
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2
sequential/conv2d/BiasAddЦ
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
sequential/conv2d/Reluб
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
2"
 sequential/max_pooling2d/MaxPoolЙ
 sequential/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2"
 sequential/dropout/dropout/Const„
sequential/dropout/dropout/MulMul)sequential/max_pooling2d/MaxPool:output:0)sequential/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€2 
sequential/dropout/dropout/MulЭ
 sequential/dropout/dropout/ShapeShape)sequential/max_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2"
 sequential/dropout/dropout/Shapeх
7sequential/dropout/dropout/random_uniform/RandomUniformRandomUniform)sequential/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
dtype029
7sequential/dropout/dropout/random_uniform/RandomUniformЫ
)sequential/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2+
)sequential/dropout/dropout/GreaterEqual/yТ
'sequential/dropout/dropout/GreaterEqualGreaterEqual@sequential/dropout/dropout/random_uniform/RandomUniform:output:02sequential/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€2)
'sequential/dropout/dropout/GreaterEqualј
sequential/dropout/dropout/CastCast+sequential/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€2!
sequential/dropout/dropout/Castќ
 sequential/dropout/dropout/Mul_1Mul"sequential/dropout/dropout/Mul:z:0#sequential/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€2"
 sequential/dropout/dropout/Mul_1„
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOpГ
sequential_1/conv2d_1/Conv2DConv2D$sequential/dropout/dropout/Mul_1:z:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
sequential_1/conv2d_1/Conv2Dќ
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpа
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
sequential_1/conv2d_1/BiasAddҐ
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
sequential_1/conv2d_1/Reluн
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolС
$sequential_1/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$sequential_1/dropout_1/dropout/Constз
"sequential_1/dropout_1/dropout/MulMul-sequential_1/max_pooling2d_1/MaxPool:output:0-sequential_1/dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2$
"sequential_1/dropout_1/dropout/Mul©
$sequential_1/dropout_1/dropout/ShapeShape-sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2&
$sequential_1/dropout_1/dropout/ShapeБ
;sequential_1/dropout_1/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype02=
;sequential_1/dropout_1/dropout/random_uniform/RandomUniform£
-sequential_1/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_1/dropout_1/dropout/GreaterEqual/yҐ
+sequential_1/dropout_1/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_1/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2-
+sequential_1/dropout_1/dropout/GreaterEqualћ
#sequential_1/dropout_1/dropout/CastCast/sequential_1/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ 2%
#sequential_1/dropout_1/dropout/Castё
$sequential_1/dropout_1/dropout/Mul_1Mul&sequential_1/dropout_1/dropout/Mul:z:0'sequential_1/dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ 2&
$sequential_1/dropout_1/dropout/Mul_1„
+sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_2/conv2d_2/Conv2D/ReadVariableOpЗ
sequential_2/conv2d_2/Conv2DConv2D(sequential_1/dropout_1/dropout/Mul_1:z:03sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
sequential_2/conv2d_2/Conv2Dќ
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpа
sequential_2/conv2d_2/BiasAddBiasAdd%sequential_2/conv2d_2/Conv2D:output:04sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
sequential_2/conv2d_2/BiasAddҐ
sequential_2/conv2d_2/ReluRelu&sequential_2/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
sequential_2/conv2d_2/Reluн
$sequential_2/max_pooling2d_2/MaxPoolMaxPool(sequential_2/conv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2&
$sequential_2/max_pooling2d_2/MaxPoolС
$sequential_2/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$sequential_2/dropout_2/dropout/Constз
"sequential_2/dropout_2/dropout/MulMul-sequential_2/max_pooling2d_2/MaxPool:output:0-sequential_2/dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2$
"sequential_2/dropout_2/dropout/Mul©
$sequential_2/dropout_2/dropout/ShapeShape-sequential_2/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2&
$sequential_2/dropout_2/dropout/ShapeБ
;sequential_2/dropout_2/dropout/random_uniform/RandomUniformRandomUniform-sequential_2/dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02=
;sequential_2/dropout_2/dropout/random_uniform/RandomUniform£
-sequential_2/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_2/dropout_2/dropout/GreaterEqual/yҐ
+sequential_2/dropout_2/dropout/GreaterEqualGreaterEqualDsequential_2/dropout_2/dropout/random_uniform/RandomUniform:output:06sequential_2/dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2-
+sequential_2/dropout_2/dropout/GreaterEqualћ
#sequential_2/dropout_2/dropout/CastCast/sequential_2/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2%
#sequential_2/dropout_2/dropout/Castё
$sequential_2/dropout_2/dropout/Mul_1Mul&sequential_2/dropout_2/dropout/Mul:z:0'sequential_2/dropout_2/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2&
$sequential_2/dropout_2/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten/ConstҐ
flatten/ReshapeReshape(sequential_2/dropout_2/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten/Reshape°
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

dense/Relu¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/Relu•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense_2/MatMul/ReadVariableOpЯ
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/BiasAddЇ
IdentityIdentitydense_2/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_2/conv2d_2/BiasAdd/ReadVariableOp,^sequential_2/conv2d_2/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:€€€€€€€€€::::::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_2/BiasAdd/ReadVariableOp,sequential_2/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_2/Conv2D/ReadVariableOp+sequential_2/conv2d_2/Conv2D/ReadVariableOp:a ]
/
_output_shapes
:€€€€€€€€€
*
_user_specified_namesequential_input
С	
№
C__inference_dense_2_layer_call_and_return_conditional_losses_682309

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ъ
і
H__inference_sequential_2_layer_call_and_return_conditional_losses_682151

inputs
conv2d_2_682143
conv2d_2_682145
identityИҐ conv2d_2/StatefulPartitionedCall°
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_682143conv2d_2_682145*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_6820582"
 conv2d_2/StatefulPartitionedCallЩ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_6820372!
max_pooling2d_2/PartitionedCallЖ
dropout_2/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_6820922
dropout_2/PartitionedCall°
IdentityIdentity"dropout_2/PartitionedCall:output:0!^conv2d_2/StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ж
a
C__inference_dropout_layer_call_and_return_conditional_losses_681838

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ґ
К
-__inference_sequential_2_layer_call_fn_683539
conv2d_2_input
unknown
	unknown_0
identityИҐStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallconv2d_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_6821312
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:€€€€€€€€€ 
(
_user_specified_nameconv2d_2_input
ч	
Щ
(__inference_ocr_net_layer_call_fn_683162
batch_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallbatch_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_ocr_net_layer_call_and_return_conditional_losses_6828992
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:w s
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
%
_user_specified_namebatch_input
А
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_682037

inputs
identityђ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≤
L
0__inference_max_pooling2d_2_layer_call_fn_682043

inputs
identityс
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_6820372
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Б
~
)__inference_conv2d_1_layer_call_fn_684391

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_6819312
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
А
ы
F__inference_sequential_layer_call_and_return_conditional_losses_683262

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOp™
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOpЄ
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
2
conv2d/Conv2D°
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp§
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
conv2d/Reluј
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
2
max_pooling2d/MaxPools
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/ConstЂ
dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/dropout/Mul|
dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape‘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/yж
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€2
dropout/dropout/CastҐ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€2
dropout/dropout/Mul_1і
IdentityIdentitydropout/dropout/Mul_1:z:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ґ
К
-__inference_sequential_1_layer_call_fn_683497
conv2d_1_input
unknown
	unknown_0
identityИҐStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_6820242
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:€€€€€€€€€
(
_user_specified_nameconv2d_1_input
б
}
(__inference_dense_1_layer_call_fn_683738

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_6822832
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
√
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_681960

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ 2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
“
В
-__inference_sequential_1_layer_call_fn_683437

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_6825712
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ч	
Щ
(__inference_ocr_net_layer_call_fn_683191
batch_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallbatch_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_ocr_net_layer_call_and_return_conditional_losses_6828992
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:w s
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
%
_user_specified_namebatch_input
І
D
(__inference_flatten_layer_call_fn_683678

inputs
identity«
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_6822372
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
 
Ў
H__inference_sequential_1_layer_call_and_return_conditional_losses_682004

inputs
conv2d_1_681996
conv2d_1_681998
identityИҐ conv2d_1/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCall°
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_681996conv2d_1_681998*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_6819312"
 conv2d_1/StatefulPartitionedCallЩ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_6819102!
max_pooling2d_1/PartitionedCallЮ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_6819602#
!dropout_1/StatefulPartitionedCallЌ
IdentityIdentity*dropout_1/StatefulPartitionedCall:output:0!^conv2d_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ж
А
+__inference_sequential_layer_call_fn_683284

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_6818772
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
√
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_684403

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ 2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
с
Е
H__inference_sequential_2_layer_call_and_return_conditional_losses_683568

inputs+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource
identityИҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOp∞
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOpЊ
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_2/Conv2DІ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpђ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_2/Relu∆
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_2/MaxPoolw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/Const≥
dropout_2/dropout/MulMul max_pooling2d_2/MaxPool:output:0 dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_2/dropout/MulВ
dropout_2/dropout/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_2/dropout/ShapeЏ
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype020
.dropout_2/dropout/random_uniform/RandomUniformЙ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_2/dropout/GreaterEqual/yо
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2 
dropout_2/dropout/GreaterEqual•
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout_2/dropout/Cast™
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_2/dropout/Mul_1Ї
IdentityIdentitydropout_2/dropout/Mul_1:z:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
џ
D
(__inference_flatten_layer_call_fn_683667

inputs
identityѕ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_6826752
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
°
Е
H__inference_sequential_2_layer_call_and_return_conditional_losses_683581

inputs+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource
identityИҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOp∞
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOpЊ
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_2/Conv2DІ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpђ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_2/Relu∆
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_2/MaxPoolР
dropout_2/IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_2/IdentityЇ
IdentityIdentitydropout_2/Identity:output:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
д
Ї
C__inference_ocr_net_layer_call_and_return_conditional_losses_682899
batch_input
sequential_3_682873
sequential_3_682875
sequential_3_682877
sequential_3_682879
sequential_3_682881
sequential_3_682883
sequential_3_682885
sequential_3_682887
sequential_3_682889
sequential_3_682891
sequential_3_682893
sequential_3_682895
identityИҐ$sequential_3/StatefulPartitionedCallШ
$sequential_3/StatefulPartitionedCallStatefulPartitionedCallbatch_inputsequential_3_682873sequential_3_682875sequential_3_682877sequential_3_682879sequential_3_682881sequential_3_682883sequential_3_682885sequential_3_682887sequential_3_682889sequential_3_682891sequential_3_682893sequential_3_682895*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_6827532&
$sequential_3/StatefulPartitionedCall®
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0%^sequential_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:w s
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
%
_user_specified_namebatch_input
Ґ
К
-__inference_sequential_2_layer_call_fn_683548
conv2d_2_input
unknown
	unknown_0
identityИҐStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallconv2d_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_6821512
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:€€€€€€€€€ 
(
_user_specified_nameconv2d_2_input
√
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_682087

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ж
a
C__inference_dropout_layer_call_and_return_conditional_losses_684361

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
є
F
*__inference_dropout_2_layer_call_fn_684465

inputs
identity–
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_6820922
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≈
c
*__inference_dropout_2_layer_call_fn_684460

inputs
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_6820872
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ф	
Џ
A__inference_dense_layer_call_and_return_conditional_losses_682256

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¶$
ƒ
H__inference_sequential_3_layer_call_and_return_conditional_losses_682463

inputs
sequential_682431
sequential_682433
sequential_1_682436
sequential_1_682438
sequential_2_682441
sequential_2_682443
dense_682447
dense_682449
dense_1_682452
dense_1_682454
dense_2_682457
dense_2_682459
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐ"sequential/StatefulPartitionedCallҐ$sequential_1/StatefulPartitionedCallҐ$sequential_2/StatefulPartitionedCallЂ
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_682431sequential_682433*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_6818972$
"sequential/StatefulPartitionedCallЏ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_682436sequential_1_682438*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_6820242&
$sequential_1/StatefulPartitionedCall№
$sequential_2/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0sequential_2_682441sequential_2_682443*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_6821512&
$sequential_2/StatefulPartitionedCallю
flatten/PartitionedCallPartitionedCall-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_6822372
flatten/PartitionedCall•
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_682447dense_682449*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_6822562
dense/StatefulPartitionedCallі
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_682452dense_1_682454*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_6822832!
dense_1/StatefulPartitionedCallґ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_682457dense_2_682459*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_6823092!
dense_2/StatefulPartitionedCall”
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:€€€€€€€€€::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
р	
№
C__inference_dense_1_layer_call_and_return_conditional_losses_682283

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
и
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_684408

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
я
{
&__inference_dense_layer_call_fn_683698

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_6822562
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
А
ы
F__inference_sequential_layer_call_and_return_conditional_losses_682528

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOp™
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp 
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
2
conv2d/Conv2D°
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOpґ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
conv2d/BiasAddЗ
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
conv2d/Relu“
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2
max_pooling2d/MaxPoolЬ
dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
dropout/Identity∆
IdentityIdentitydropout/Identity:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ў
ґ
C__inference_ocr_net_layer_call_and_return_conditional_losses_682867
input_1
sequential_3_682841
sequential_3_682843
sequential_3_682845
sequential_3_682847
sequential_3_682849
sequential_3_682851
sequential_3_682853
sequential_3_682855
sequential_3_682857
sequential_3_682859
sequential_3_682861
sequential_3_682863
identityИҐ$sequential_3/StatefulPartitionedCallФ
$sequential_3/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_3_682841sequential_3_682843sequential_3_682845sequential_3_682847sequential_3_682849sequential_3_682851sequential_3_682853sequential_3_682855sequential_3_682857sequential_3_682859sequential_3_682861sequential_3_682863*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_6827532&
$sequential_3/StatefulPartitionedCall®
IdentityIdentity-sequential_3/StatefulPartitionedCall:output:0%^sequential_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:s o
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_1
ъє
к
"__inference__traced_restore_684768
file_prefix!
assignvariableop_dense_kernel!
assignvariableop_1_dense_bias%
!assignvariableop_2_dense_1_kernel#
assignvariableop_3_dense_1_bias%
!assignvariableop_4_dense_2_kernel#
assignvariableop_5_dense_2_bias 
assignvariableop_6_adam_iter"
assignvariableop_7_adam_beta_1"
assignvariableop_8_adam_beta_2!
assignvariableop_9_adam_decay*
&assignvariableop_10_adam_learning_rate%
!assignvariableop_11_conv2d_kernel#
assignvariableop_12_conv2d_bias'
#assignvariableop_13_conv2d_1_kernel%
!assignvariableop_14_conv2d_1_bias'
#assignvariableop_15_conv2d_2_kernel%
!assignvariableop_16_conv2d_2_bias
assignvariableop_17_total
assignvariableop_18_count
assignvariableop_19_total_1
assignvariableop_20_count_1+
'assignvariableop_21_adam_dense_kernel_m)
%assignvariableop_22_adam_dense_bias_m-
)assignvariableop_23_adam_dense_1_kernel_m+
'assignvariableop_24_adam_dense_1_bias_m-
)assignvariableop_25_adam_dense_2_kernel_m+
'assignvariableop_26_adam_dense_2_bias_m,
(assignvariableop_27_adam_conv2d_kernel_m*
&assignvariableop_28_adam_conv2d_bias_m.
*assignvariableop_29_adam_conv2d_1_kernel_m,
(assignvariableop_30_adam_conv2d_1_bias_m.
*assignvariableop_31_adam_conv2d_2_kernel_m,
(assignvariableop_32_adam_conv2d_2_bias_m+
'assignvariableop_33_adam_dense_kernel_v)
%assignvariableop_34_adam_dense_bias_v-
)assignvariableop_35_adam_dense_1_kernel_v+
'assignvariableop_36_adam_dense_1_bias_v-
)assignvariableop_37_adam_dense_2_kernel_v+
'assignvariableop_38_adam_dense_2_bias_v,
(assignvariableop_39_adam_conv2d_kernel_v*
&assignvariableop_40_adam_conv2d_bias_v.
*assignvariableop_41_adam_conv2d_1_kernel_v,
(assignvariableop_42_adam_conv2d_1_bias_v.
*assignvariableop_43_adam_conv2d_2_kernel_v,
(assignvariableop_44_adam_conv2d_2_bias_v
identity_46ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9д
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*р
valueжBг.B)linear1/kernel/.ATTRIBUTES/VARIABLE_VALUEB'linear1/bias/.ATTRIBUTES/VARIABLE_VALUEB)linear2/kernel/.ATTRIBUTES/VARIABLE_VALUEB'linear2/bias/.ATTRIBUTES/VARIABLE_VALUEB%out/kernel/.ATTRIBUTES/VARIABLE_VALUEB#out/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBElinear1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClinear1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElinear2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBClinear2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAout/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?out/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElinear1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClinear1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElinear2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBClinear2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAout/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?out/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesк
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesФ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ќ
_output_shapesї
Є::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЬ
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ґ
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¶
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3§
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¶
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5§
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6°
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7£
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8£
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ґ
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ѓ
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11©
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv2d_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12І
AssignVariableOp_12AssignVariableOpassignvariableop_12_conv2d_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ђ
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_1_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14©
AssignVariableOp_14AssignVariableOp!assignvariableop_14_conv2d_1_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ђ
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv2d_2_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16©
AssignVariableOp_16AssignVariableOp!assignvariableop_16_conv2d_2_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19£
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20£
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21ѓ
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22≠
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23±
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24ѓ
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25±
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26ѓ
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27∞
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_conv2d_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ѓ
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_conv2d_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29≤
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv2d_1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30∞
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31≤
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv2d_2_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32∞
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv2d_2_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33ѓ
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34≠
AssignVariableOp_34AssignVariableOp%assignvariableop_34_adam_dense_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35±
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_1_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36ѓ
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_1_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37±
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_2_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38ѓ
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_2_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39∞
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_conv2d_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Ѓ
AssignVariableOp_40AssignVariableOp&assignvariableop_40_adam_conv2d_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41≤
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_conv2d_1_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42∞
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_conv2d_1_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43≤
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_conv2d_2_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44∞
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_conv2d_2_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЉ
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45ѓ
Identity_46IdentityIdentity_45:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_46"#
identity_46Identity_46:output:0*Ћ
_input_shapesє
ґ: :::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ш
Ж
+__inference_sequential_layer_call_fn_683242
conv2d_input
unknown
	unknown_0
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_6818972
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:€€€€€€€€€
&
_user_specified_nameconv2d_input
“
В
-__inference_sequential_2_layer_call_fn_683641

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_6826272
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ѕV
У	
H__inference_sequential_3_layer_call_and_return_conditional_losses_684081

inputs4
0sequential_conv2d_conv2d_readvariableop_resource5
1sequential_conv2d_biasadd_readvariableop_resource8
4sequential_1_conv2d_1_conv2d_readvariableop_resource9
5sequential_1_conv2d_1_biasadd_readvariableop_resource8
4sequential_2_conv2d_2_conv2d_readvariableop_resource9
5sequential_2_conv2d_2_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐ(sequential/conv2d/BiasAdd/ReadVariableOpҐ'sequential/conv2d/Conv2D/ReadVariableOpҐ,sequential_1/conv2d_1/BiasAdd/ReadVariableOpҐ+sequential_1/conv2d_1/Conv2D/ReadVariableOpҐ,sequential_2/conv2d_2/BiasAdd/ReadVariableOpҐ+sequential_2/conv2d_2/Conv2D/ReadVariableOpЋ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpл
sequential/conv2d/Conv2DConv2Dinputs/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
2
sequential/conv2d/Conv2D¬
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOpв
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
sequential/conv2d/BiasAdd®
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
sequential/conv2d/Reluу
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2"
 sequential/max_pooling2d/MaxPoolљ
sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2
sequential/dropout/Identity„
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOpХ
sequential_1/conv2d_1/Conv2DConv2D$sequential/dropout/Identity:output:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
2
sequential_1/conv2d_1/Conv2Dќ
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpт
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
sequential_1/conv2d_1/BiasAddі
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
sequential_1/conv2d_1/Relu€
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_1/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2&
$sequential_1/max_pooling2d_1/MaxPool…
sequential_1/dropout_1/IdentityIdentity-sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2!
sequential_1/dropout_1/Identity„
+sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_2/conv2d_2/Conv2D/ReadVariableOpЩ
sequential_2/conv2d_2/Conv2DConv2D(sequential_1/dropout_1/Identity:output:03sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
2
sequential_2/conv2d_2/Conv2Dќ
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpт
sequential_2/conv2d_2/BiasAddBiasAdd%sequential_2/conv2d_2/Conv2D:output:04sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
sequential_2/conv2d_2/BiasAddі
sequential_2/conv2d_2/ReluRelu&sequential_2/conv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2
sequential_2/conv2d_2/Relu€
$sequential_2/max_pooling2d_2/MaxPoolMaxPool(sequential_2/conv2d_2/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2&
$sequential_2/max_pooling2d_2/MaxPool…
sequential_2/dropout_2/IdentityIdentity-sequential_2/max_pooling2d_2/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2!
sequential_2/dropout_2/Identityv
flatten/ShapeShape(sequential_2/dropout_2/Identity:output:0*
T0*
_output_shapes
:2
flatten/ShapeД
flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
flatten/strided_slice/stackИ
flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
flatten/strided_slice/stack_1И
flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
flatten/strided_slice/stack_2Т
flatten/strided_sliceStridedSliceflatten/Shape:output:0$flatten/strided_slice/stack:output:0&flatten/strided_slice/stack_1:output:0&flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
flatten/strided_slice}
flatten/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
flatten/Reshape/shape/1¶
flatten/Reshape/shapePackflatten/strided_slice:output:0 flatten/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
flatten/Reshape/shape≤
flatten/ReshapeReshape(sequential_2/dropout_2/Identity:output:0flatten/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
flatten/Reshape°
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

dense/Relu¶
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_1/Relu•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense_2/MatMul/ReadVariableOpЯ
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_2/BiasAddЇ
IdentityIdentitydense_2/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_2/conv2d_2/BiasAdd/ReadVariableOp,^sequential_2/conv2d_2/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*y
_input_shapesh
f:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€::::::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_2/BiasAdd/ReadVariableOp,sequential_2/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_2/Conv2D/ReadVariableOp+sequential_2/conv2d_2/Conv2D/ReadVariableOp:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
 
Е
H__inference_sequential_1_layer_call_and_return_conditional_losses_683415

inputs+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOp∞
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp–
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
2
conv2d_1/Conv2DІ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpЊ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
conv2d_1/BiasAddН
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
conv2d_1/ReluЎ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const≈
dropout_1/dropout/MulMul max_pooling2d_1/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
dropout_1/dropout/MulВ
dropout_1/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shapeм
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/yА
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2 
dropout_1/dropout/GreaterEqualЈ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
dropout_1/dropout/CastЉ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
dropout_1/dropout/Mul_1ћ
IdentityIdentitydropout_1/dropout/Mul_1:z:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€::2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≤
Е
H__inference_sequential_1_layer_call_and_return_conditional_losses_683428

inputs+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOp∞
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp–
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
2
conv2d_1/Conv2DІ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpЊ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
conv2d_1/BiasAddН
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
conv2d_1/ReluЎ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_1/MaxPoolҐ
dropout_1/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2
dropout_1/Identityћ
IdentityIdentitydropout_1/Identity:output:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€::2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ќ

Ё
D__inference_conv2d_2_layer_call_and_return_conditional_losses_684429

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Ш
Ж
+__inference_sequential_layer_call_fn_683233
conv2d_input
unknown
	unknown_0
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_6818772
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:€€€€€€€€€
&
_user_specified_nameconv2d_input
К
В
-__inference_sequential_2_layer_call_fn_683590

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_6821312
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Д

Џ
A__inference_dense_layer_call_and_return_conditional_losses_683709

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
и
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_682092

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ћ

џ
B__inference_conv2d_layer_call_and_return_conditional_losses_681804

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
п
{
&__inference_dense_layer_call_fn_683718

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_6826922
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ќ
serving_defaultЇ
^
input_1S
serving_default_input_1:04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€<
output_10
StatefulPartitionedCall:0€€€€€€€€€
tensorflow/serving/predict:ел
я	
	conv1
	conv2
	conv3
flatten
linear1
linear2
out
	model
		optimizer

trainable_variables
	variables
regularization_losses
	keras_api

signatures
к__call__
л_default_save_signature
+м&call_and_return_all_conditional_losses"µ
_tf_keras_modelЫ{"class_name": "OCRNet", "name": "ocr_net", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "OCRNet"}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "SparseCategoricalAccuracy", "config": {"name": "sparse_categorical_accuracy", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Л
layer_with_weights-0
layer-0
layer-1
layer-2
trainable_variables
	variables
regularization_losses
	keras_api
н__call__
+о&call_and_return_all_conditional_losses"є
_tf_keras_sequentialЪ{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, null]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}]}}}
Ь
layer_with_weights-0
layer-0
layer-1
layer-2
trainable_variables
	variables
regularization_losses
	keras_api
п__call__
+р&call_and_return_all_conditional_losses" 
_tf_keras_sequentialЂ{"class_name": "Sequential", "name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 16]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 16]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 16]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}]}}}
Ь
layer_with_weights-0
layer-0
layer-1
layer-2
 trainable_variables
!	variables
"regularization_losses
#	keras_api
с__call__
+т&call_and_return_all_conditional_losses" 
_tf_keras_sequentialЂ{"class_name": "Sequential", "name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 32]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}]}}}
д
$trainable_variables
%	variables
&regularization_losses
'	keras_api
у__call__
+ф&call_and_return_all_conditional_losses"”
_tf_keras_layerє{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
с

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
х__call__
+ц&call_and_return_all_conditional_losses" 
_tf_keras_layer∞{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 1024]}}
т

.kernel
/bias
0trainable_variables
1	variables
2regularization_losses
3	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses"Ћ
_tf_keras_layer±{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 512]}}
т

4kernel
5bias
6trainable_variables
7	variables
8regularization_losses
9	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses"Ћ
_tf_keras_layer±{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 64]}}
Еb
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
:trainable_variables
;	variables
<regularization_losses
=	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses"э^
_tf_keras_sequentialё^{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_input"}}, {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}]}}, {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 16]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}]}}, {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}]}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, null]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_input"}}, {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}]}}, {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 16]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}]}}, {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}]}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
√
>iter

?beta_1

@beta_2
	Adecay
Blearning_rate(m“)m”.m‘/m’4m÷5m„CmЎDmўEmЏFmџGm№HmЁ(vё)vя.vа/vб4vв5vгCvдDvеEvжFvзGvиHvй"
	optimizer
v
C0
D1
E2
F3
G4
H5
(6
)7
.8
/9
410
511"
trackable_list_wrapper
v
C0
D1
E2
F3
G4
H5
(6
)7
.8
/9
410
511"
trackable_list_wrapper
 "
trackable_list_wrapper
ќ
Inon_trainable_variables
Jlayer_regularization_losses

trainable_variables
Klayer_metrics
Lmetrics

Mlayers
	variables
regularization_losses
к__call__
л_default_save_signature
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
-
эserving_default"
signature_map
м	

Ckernel
Dbias
Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
ю__call__
+€&call_and_return_all_conditional_losses"≈
_tf_keras_layerЂ{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 28, 28, 1]}}
ь
Rtrainable_variables
S	variables
Tregularization_losses
U	keras_api
А__call__
+Б&call_and_return_all_conditional_losses"л
_tf_keras_layer—{"class_name": "MaxPooling2D", "name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
г
Vtrainable_variables
W	variables
Xregularization_losses
Y	keras_api
В__call__
+Г&call_and_return_all_conditional_losses"“
_tf_keras_layerЄ{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Znon_trainable_variables
[layer_regularization_losses
trainable_variables
\layer_metrics
]metrics

^layers
	variables
regularization_losses
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
т	

Ekernel
Fbias
_trainable_variables
`	variables
aregularization_losses
b	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"Ћ
_tf_keras_layer±{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 14, 14, 16]}}
А
ctrainable_variables
d	variables
eregularization_losses
f	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses"п
_tf_keras_layer’{"class_name": "MaxPooling2D", "name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
з
gtrainable_variables
h	variables
iregularization_losses
j	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"÷
_tf_keras_layerЉ{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
knon_trainable_variables
llayer_regularization_losses
trainable_variables
mlayer_metrics
nmetrics

olayers
	variables
regularization_losses
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
р	

Gkernel
Hbias
ptrainable_variables
q	variables
rregularization_losses
s	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"…
_tf_keras_layerѓ{"class_name": "Conv2D", "name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 7, 7, 32]}}
А
ttrainable_variables
u	variables
vregularization_losses
w	keras_api
М__call__
+Н&call_and_return_all_conditional_losses"п
_tf_keras_layer’{"class_name": "MaxPooling2D", "name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
з
xtrainable_variables
y	variables
zregularization_losses
{	keras_api
О__call__
+П&call_and_return_all_conditional_losses"÷
_tf_keras_layerЉ{"class_name": "Dropout", "name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
±
|non_trainable_variables
}layer_regularization_losses
 trainable_variables
~layer_metrics
metrics
Аlayers
!	variables
"regularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Бnon_trainable_variables
 Вlayer_regularization_losses
$trainable_variables
Гlayer_metrics
Дmetrics
Еlayers
%	variables
&regularization_losses
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
 :
АА2dense/kernel
:А2
dense/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Жnon_trainable_variables
 Зlayer_regularization_losses
*trainable_variables
Иlayer_metrics
Йmetrics
Кlayers
+	variables
,regularization_losses
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
!:	А@2dense_1/kernel
:@2dense_1/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Лnon_trainable_variables
 Мlayer_regularization_losses
0trainable_variables
Нlayer_metrics
Оmetrics
Пlayers
1	variables
2regularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
 :@
2dense_2/kernel
:
2dense_2/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Рnon_trainable_variables
 Сlayer_regularization_losses
6trainable_variables
Тlayer_metrics
Уmetrics
Фlayers
7	variables
8regularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
v
C0
D1
E2
F3
G4
H5
(6
)7
.8
/9
410
511"
trackable_list_wrapper
v
C0
D1
E2
F3
G4
H5
(6
)7
.8
/9
410
511"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Хnon_trainable_variables
 Цlayer_regularization_losses
:trainable_variables
Чlayer_metrics
Шmetrics
Щlayers
;	variables
<regularization_losses
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
':%2conv2d/kernel
:2conv2d/bias
):' 2conv2d_1/kernel
: 2conv2d_1/bias
):' @2conv2d_2/kernel
:@2conv2d_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
Ъ0
Ы1"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ьnon_trainable_variables
 Эlayer_regularization_losses
Ntrainable_variables
Юlayer_metrics
Яmetrics
†layers
O	variables
Pregularization_losses
ю__call__
+€&call_and_return_all_conditional_losses
'€"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
°non_trainable_variables
 Ґlayer_regularization_losses
Rtrainable_variables
£layer_metrics
§metrics
•layers
S	variables
Tregularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¶non_trainable_variables
 Іlayer_regularization_losses
Vtrainable_variables
®layer_metrics
©metrics
™layers
W	variables
Xregularization_losses
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ђnon_trainable_variables
 ђlayer_regularization_losses
_trainable_variables
≠layer_metrics
Ѓmetrics
ѓlayers
`	variables
aregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
∞non_trainable_variables
 ±layer_regularization_losses
ctrainable_variables
≤layer_metrics
≥metrics
іlayers
d	variables
eregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
µnon_trainable_variables
 ґlayer_regularization_losses
gtrainable_variables
Јlayer_metrics
Єmetrics
єlayers
h	variables
iregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Їnon_trainable_variables
 їlayer_regularization_losses
ptrainable_variables
Љlayer_metrics
љmetrics
Њlayers
q	variables
rregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
њnon_trainable_variables
 јlayer_regularization_losses
ttrainable_variables
Ѕlayer_metrics
¬metrics
√layers
u	variables
vregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ƒnon_trainable_variables
 ≈layer_regularization_losses
xtrainable_variables
∆layer_metrics
«metrics
»layers
y	variables
zregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
њ

…total

 count
Ћ	variables
ћ	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Ф

Ќtotal

ќcount
ѕ
_fn_kwargs
–	variables
—	keras_api"»
_tf_keras_metric≠{"class_name": "SparseCategoricalAccuracy", "name": "sparse_categorical_accuracy", "dtype": "float32", "config": {"name": "sparse_categorical_accuracy", "dtype": "float32"}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
…0
 1"
trackable_list_wrapper
.
Ћ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ќ0
ќ1"
trackable_list_wrapper
.
–	variables"
_generic_user_object
%:#
АА2Adam/dense/kernel/m
:А2Adam/dense/bias/m
&:$	А@2Adam/dense_1/kernel/m
:@2Adam/dense_1/bias/m
%:#@
2Adam/dense_2/kernel/m
:
2Adam/dense_2/bias/m
,:*2Adam/conv2d/kernel/m
:2Adam/conv2d/bias/m
.:, 2Adam/conv2d_1/kernel/m
 : 2Adam/conv2d_1/bias/m
.:, @2Adam/conv2d_2/kernel/m
 :@2Adam/conv2d_2/bias/m
%:#
АА2Adam/dense/kernel/v
:А2Adam/dense/bias/v
&:$	А@2Adam/dense_1/kernel/v
:@2Adam/dense_1/bias/v
%:#@
2Adam/dense_2/kernel/v
:
2Adam/dense_2/bias/v
,:*2Adam/conv2d/kernel/v
:2Adam/conv2d/bias/v
.:, 2Adam/conv2d_1/kernel/v
 : 2Adam/conv2d_1/bias/v
.:, @2Adam/conv2d_2/kernel/v
 :@2Adam/conv2d_2/bias/v
ж2г
(__inference_ocr_net_layer_call_fn_682955
(__inference_ocr_net_layer_call_fn_682926
(__inference_ocr_net_layer_call_fn_683162
(__inference_ocr_net_layer_call_fn_683191Є
ѓ≤Ђ
FullArgSpec.
args&Ъ#
jself
jbatch_input

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
В2€
!__inference__wrapped_model_681777ў
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *IҐF
DКA
input_14€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
“2ѕ
C__inference_ocr_net_layer_call_and_return_conditional_losses_683133
C__inference_ocr_net_layer_call_and_return_conditional_losses_683074
C__inference_ocr_net_layer_call_and_return_conditional_losses_682838
C__inference_ocr_net_layer_call_and_return_conditional_losses_682867Є
ѓ≤Ђ
FullArgSpec.
args&Ъ#
jself
jbatch_input

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
+__inference_sequential_layer_call_fn_683242
+__inference_sequential_layer_call_fn_683284
+__inference_sequential_layer_call_fn_683335
+__inference_sequential_layer_call_fn_683344
+__inference_sequential_layer_call_fn_683233
+__inference_sequential_layer_call_fn_683293ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ц2у
F__inference_sequential_layer_call_and_return_conditional_losses_683211
F__inference_sequential_layer_call_and_return_conditional_losses_683224
F__inference_sequential_layer_call_and_return_conditional_losses_683262
F__inference_sequential_layer_call_and_return_conditional_losses_683326
F__inference_sequential_layer_call_and_return_conditional_losses_683275
F__inference_sequential_layer_call_and_return_conditional_losses_683313ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
а2Ё
-__inference_sequential_1_layer_call_fn_683386
-__inference_sequential_1_layer_call_fn_683488
-__inference_sequential_1_layer_call_fn_683446
-__inference_sequential_1_layer_call_fn_683497
-__inference_sequential_1_layer_call_fn_683395
-__inference_sequential_1_layer_call_fn_683437ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
В2€
H__inference_sequential_1_layer_call_and_return_conditional_losses_683466
H__inference_sequential_1_layer_call_and_return_conditional_losses_683428
H__inference_sequential_1_layer_call_and_return_conditional_losses_683364
H__inference_sequential_1_layer_call_and_return_conditional_losses_683415
H__inference_sequential_1_layer_call_and_return_conditional_losses_683479
H__inference_sequential_1_layer_call_and_return_conditional_losses_683377ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
а2Ё
-__inference_sequential_2_layer_call_fn_683548
-__inference_sequential_2_layer_call_fn_683599
-__inference_sequential_2_layer_call_fn_683590
-__inference_sequential_2_layer_call_fn_683650
-__inference_sequential_2_layer_call_fn_683539
-__inference_sequential_2_layer_call_fn_683641ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
В2€
H__inference_sequential_2_layer_call_and_return_conditional_losses_683517
H__inference_sequential_2_layer_call_and_return_conditional_losses_683632
H__inference_sequential_2_layer_call_and_return_conditional_losses_683581
H__inference_sequential_2_layer_call_and_return_conditional_losses_683619
H__inference_sequential_2_layer_call_and_return_conditional_losses_683568
H__inference_sequential_2_layer_call_and_return_conditional_losses_683530ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ь2щ
(__inference_flatten_layer_call_fn_683678
(__inference_flatten_layer_call_fn_683667Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≤2ѓ
C__inference_flatten_layer_call_and_return_conditional_losses_683662
C__inference_flatten_layer_call_and_return_conditional_losses_683673Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ш2х
&__inference_dense_layer_call_fn_683718
&__inference_dense_layer_call_fn_683698Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ѓ2Ђ
A__inference_dense_layer_call_and_return_conditional_losses_683709
A__inference_dense_layer_call_and_return_conditional_losses_683689Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_1_layer_call_fn_683738Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_1_layer_call_and_return_conditional_losses_683729Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_2_layer_call_fn_683757Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_2_layer_call_and_return_conditional_losses_683748Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
а2Ё
-__inference_sequential_3_layer_call_fn_684110
-__inference_sequential_3_layer_call_fn_684139
-__inference_sequential_3_layer_call_fn_683942
-__inference_sequential_3_layer_call_fn_683913
-__inference_sequential_3_layer_call_fn_684324
-__inference_sequential_3_layer_call_fn_684295ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
В2€
H__inference_sequential_3_layer_call_and_return_conditional_losses_683884
H__inference_sequential_3_layer_call_and_return_conditional_losses_684022
H__inference_sequential_3_layer_call_and_return_conditional_losses_684081
H__inference_sequential_3_layer_call_and_return_conditional_losses_684266
H__inference_sequential_3_layer_call_and_return_conditional_losses_684213
H__inference_sequential_3_layer_call_and_return_conditional_losses_683831ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЋB»
$__inference_signature_wrapper_682994input_1"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—2ќ
'__inference_conv2d_layer_call_fn_684344Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_conv2d_layer_call_and_return_conditional_losses_684335Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ц2У
.__inference_max_pooling2d_layer_call_fn_681789а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
±2Ѓ
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_681783а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
О2Л
(__inference_dropout_layer_call_fn_684371
(__inference_dropout_layer_call_fn_684366і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ƒ2Ѕ
C__inference_dropout_layer_call_and_return_conditional_losses_684361
C__inference_dropout_layer_call_and_return_conditional_losses_684356і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
”2–
)__inference_conv2d_1_layer_call_fn_684391Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_conv2d_1_layer_call_and_return_conditional_losses_684382Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ш2Х
0__inference_max_pooling2d_1_layer_call_fn_681916а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
≥2∞
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_681910а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Т2П
*__inference_dropout_1_layer_call_fn_684418
*__inference_dropout_1_layer_call_fn_684413і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
»2≈
E__inference_dropout_1_layer_call_and_return_conditional_losses_684408
E__inference_dropout_1_layer_call_and_return_conditional_losses_684403і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
”2–
)__inference_conv2d_2_layer_call_fn_684438Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_conv2d_2_layer_call_and_return_conditional_losses_684429Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ш2Х
0__inference_max_pooling2d_2_layer_call_fn_682043а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
≥2∞
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_682037а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Т2П
*__inference_dropout_2_layer_call_fn_684460
*__inference_dropout_2_layer_call_fn_684465і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
»2≈
E__inference_dropout_2_layer_call_and_return_conditional_losses_684455
E__inference_dropout_2_layer_call_and_return_conditional_losses_684450і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 Њ
!__inference__wrapped_model_681777ШCDEFGH()./45SҐP
IҐF
DКA
input_14€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "3™0
.
output_1"К
output_1€€€€€€€€€
і
D__inference_conv2d_1_layer_call_and_return_conditional_losses_684382lEF7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ М
)__inference_conv2d_1_layer_call_fn_684391_EF7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ " К€€€€€€€€€ і
D__inference_conv2d_2_layer_call_and_return_conditional_losses_684429lGH7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ М
)__inference_conv2d_2_layer_call_fn_684438_GH7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€@≤
B__inference_conv2d_layer_call_and_return_conditional_losses_684335lCD7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ К
'__inference_conv2d_layer_call_fn_684344_CD7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ " К€€€€€€€€€§
C__inference_dense_1_layer_call_and_return_conditional_losses_683729]./0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€@
Ъ |
(__inference_dense_1_layer_call_fn_683738P./0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€@£
C__inference_dense_2_layer_call_and_return_conditional_losses_683748\45/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€

Ъ {
(__inference_dense_2_layer_call_fn_683757O45/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€
£
A__inference_dense_layer_call_and_return_conditional_losses_683689^()0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ Ђ
A__inference_dense_layer_call_and_return_conditional_losses_683709f()8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€€€€€€€€€€
™ "&Ґ#
К
0€€€€€€€€€А
Ъ {
&__inference_dense_layer_call_fn_683698Q()0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€АГ
&__inference_dense_layer_call_fn_683718Y()8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€€€€€€€€€€
™ "К€€€€€€€€€Аµ
E__inference_dropout_1_layer_call_and_return_conditional_losses_684403l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ µ
E__inference_dropout_1_layer_call_and_return_conditional_losses_684408l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p 
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ Н
*__inference_dropout_1_layer_call_fn_684413_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p
™ " К€€€€€€€€€ Н
*__inference_dropout_1_layer_call_fn_684418_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p 
™ " К€€€€€€€€€ µ
E__inference_dropout_2_layer_call_and_return_conditional_losses_684450l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ µ
E__inference_dropout_2_layer_call_and_return_conditional_losses_684455l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Н
*__inference_dropout_2_layer_call_fn_684460_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ " К€€€€€€€€€@Н
*__inference_dropout_2_layer_call_fn_684465_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ " К€€€€€€€€€@≥
C__inference_dropout_layer_call_and_return_conditional_losses_684356l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€
p
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ ≥
C__inference_dropout_layer_call_and_return_conditional_losses_684361l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€
p 
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ Л
(__inference_dropout_layer_call_fn_684366_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€
p
™ " К€€€€€€€€€Л
(__inference_dropout_layer_call_fn_684371_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€
p 
™ " К€€€€€€€€€¬
C__inference_flatten_layer_call_and_return_conditional_losses_683662{IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ ".Ґ+
$К!
0€€€€€€€€€€€€€€€€€€
Ъ ®
C__inference_flatten_layer_call_and_return_conditional_losses_683673a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "&Ґ#
К
0€€€€€€€€€А
Ъ Ъ
(__inference_flatten_layer_call_fn_683667nIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "!К€€€€€€€€€€€€€€€€€€А
(__inference_flatten_layer_call_fn_683678T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "К€€€€€€€€€Ао
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_681910ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_1_layer_call_fn_681916СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_682037ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_2_layer_call_fn_682043СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€м
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_681783ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_max_pooling2d_layer_call_fn_681789СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€÷
C__inference_ocr_net_layer_call_and_return_conditional_losses_682838ОCDEFGH()./45WҐT
MҐJ
DКA
input_14€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p
™ "%Ґ"
К
0€€€€€€€€€

Ъ ÷
C__inference_ocr_net_layer_call_and_return_conditional_losses_682867ОCDEFGH()./45WҐT
MҐJ
DКA
input_14€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 
™ "%Ґ"
К
0€€€€€€€€€

Ъ Џ
C__inference_ocr_net_layer_call_and_return_conditional_losses_683074ТCDEFGH()./45[ҐX
QҐN
HКE
batch_input4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p
™ "%Ґ"
К
0€€€€€€€€€

Ъ Џ
C__inference_ocr_net_layer_call_and_return_conditional_losses_683133ТCDEFGH()./45[ҐX
QҐN
HКE
batch_input4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 
™ "%Ґ"
К
0€€€€€€€€€

Ъ Ѓ
(__inference_ocr_net_layer_call_fn_682926БCDEFGH()./45WҐT
MҐJ
DКA
input_14€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p
™ "К€€€€€€€€€
Ѓ
(__inference_ocr_net_layer_call_fn_682955БCDEFGH()./45WҐT
MҐJ
DКA
input_14€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 
™ "К€€€€€€€€€
≤
(__inference_ocr_net_layer_call_fn_683162ЕCDEFGH()./45[ҐX
QҐN
HКE
batch_input4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p
™ "К€€€€€€€€€
≤
(__inference_ocr_net_layer_call_fn_683191ЕCDEFGH()./45[ҐX
QҐN
HКE
batch_input4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 
™ "К€€€€€€€€€
ј
H__inference_sequential_1_layer_call_and_return_conditional_losses_683364tEF?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p

 
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ ј
H__inference_sequential_1_layer_call_and_return_conditional_losses_683377tEF?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p 

 
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ е
H__inference_sequential_1_layer_call_and_return_conditional_losses_683415ШEFQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ е
H__inference_sequential_1_layer_call_and_return_conditional_losses_683428ШEFQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ »
H__inference_sequential_1_layer_call_and_return_conditional_losses_683466|EFGҐD
=Ґ:
0К-
conv2d_1_input€€€€€€€€€
p

 
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ »
H__inference_sequential_1_layer_call_and_return_conditional_losses_683479|EFGҐD
=Ґ:
0К-
conv2d_1_input€€€€€€€€€
p 

 
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ Ш
-__inference_sequential_1_layer_call_fn_683386gEF?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p

 
™ " К€€€€€€€€€ Ш
-__inference_sequential_1_layer_call_fn_683395gEF?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p 

 
™ " К€€€€€€€€€ љ
-__inference_sequential_1_layer_call_fn_683437ЛEFQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ љ
-__inference_sequential_1_layer_call_fn_683446ЛEFQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ †
-__inference_sequential_1_layer_call_fn_683488oEFGҐD
=Ґ:
0К-
conv2d_1_input€€€€€€€€€
p

 
™ " К€€€€€€€€€ †
-__inference_sequential_1_layer_call_fn_683497oEFGҐD
=Ґ:
0К-
conv2d_1_input€€€€€€€€€
p 

 
™ " К€€€€€€€€€ »
H__inference_sequential_2_layer_call_and_return_conditional_losses_683517|GHGҐD
=Ґ:
0К-
conv2d_2_input€€€€€€€€€ 
p

 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ »
H__inference_sequential_2_layer_call_and_return_conditional_losses_683530|GHGҐD
=Ґ:
0К-
conv2d_2_input€€€€€€€€€ 
p 

 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ ј
H__inference_sequential_2_layer_call_and_return_conditional_losses_683568tGH?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€ 
p

 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ ј
H__inference_sequential_2_layer_call_and_return_conditional_losses_683581tGH?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€ 
p 

 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ е
H__inference_sequential_2_layer_call_and_return_conditional_losses_683619ШGHQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p

 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ е
H__inference_sequential_2_layer_call_and_return_conditional_losses_683632ШGHQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p 

 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ †
-__inference_sequential_2_layer_call_fn_683539oGHGҐD
=Ґ:
0К-
conv2d_2_input€€€€€€€€€ 
p

 
™ " К€€€€€€€€€@†
-__inference_sequential_2_layer_call_fn_683548oGHGҐD
=Ґ:
0К-
conv2d_2_input€€€€€€€€€ 
p 

 
™ " К€€€€€€€€€@Ш
-__inference_sequential_2_layer_call_fn_683590gGH?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€ 
p

 
™ " К€€€€€€€€€@Ш
-__inference_sequential_2_layer_call_fn_683599gGH?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€ 
p 

 
™ " К€€€€€€€€€@љ
-__inference_sequential_2_layer_call_fn_683641ЛGHQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p

 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@љ
-__inference_sequential_2_layer_call_fn_683650ЛGHQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p 

 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@Ќ
H__inference_sequential_3_layer_call_and_return_conditional_losses_683831АCDEFGH()./45IҐF
?Ґ<
2К/
sequential_input€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ Ќ
H__inference_sequential_3_layer_call_and_return_conditional_losses_683884АCDEFGH()./45IҐF
?Ґ<
2К/
sequential_input€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ ё
H__inference_sequential_3_layer_call_and_return_conditional_losses_684022СCDEFGH()./45ZҐW
PҐM
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ ё
H__inference_sequential_3_layer_call_and_return_conditional_losses_684081СCDEFGH()./45ZҐW
PҐM
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ ¬
H__inference_sequential_3_layer_call_and_return_conditional_losses_684213vCDEFGH()./45?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ ¬
H__inference_sequential_3_layer_call_and_return_conditional_losses_684266vCDEFGH()./45?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ §
-__inference_sequential_3_layer_call_fn_683913sCDEFGH()./45IҐF
?Ґ<
2К/
sequential_input€€€€€€€€€
p

 
™ "К€€€€€€€€€
§
-__inference_sequential_3_layer_call_fn_683942sCDEFGH()./45IҐF
?Ґ<
2К/
sequential_input€€€€€€€€€
p 

 
™ "К€€€€€€€€€
ґ
-__inference_sequential_3_layer_call_fn_684110ДCDEFGH()./45ZҐW
PҐM
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ "К€€€€€€€€€
ґ
-__inference_sequential_3_layer_call_fn_684139ДCDEFGH()./45ZҐW
PҐM
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ "К€€€€€€€€€
Ъ
-__inference_sequential_3_layer_call_fn_684295iCDEFGH()./45?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€
Ъ
-__inference_sequential_3_layer_call_fn_684324iCDEFGH()./45?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€
ƒ
F__inference_sequential_layer_call_and_return_conditional_losses_683211zCDEҐB
;Ґ8
.К+
conv2d_input€€€€€€€€€
p

 
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ ƒ
F__inference_sequential_layer_call_and_return_conditional_losses_683224zCDEҐB
;Ґ8
.К+
conv2d_input€€€€€€€€€
p 

 
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ Њ
F__inference_sequential_layer_call_and_return_conditional_losses_683262tCD?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p

 
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ Њ
F__inference_sequential_layer_call_and_return_conditional_losses_683275tCD?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p 

 
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ м
F__inference_sequential_layer_call_and_return_conditional_losses_683313°CDZҐW
PҐM
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ м
F__inference_sequential_layer_call_and_return_conditional_losses_683326°CDZҐW
PҐM
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ь
+__inference_sequential_layer_call_fn_683233mCDEҐB
;Ґ8
.К+
conv2d_input€€€€€€€€€
p

 
™ " К€€€€€€€€€Ь
+__inference_sequential_layer_call_fn_683242mCDEҐB
;Ґ8
.К+
conv2d_input€€€€€€€€€
p 

 
™ " К€€€€€€€€€Ц
+__inference_sequential_layer_call_fn_683284gCD?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p

 
™ " К€€€€€€€€€Ц
+__inference_sequential_layer_call_fn_683293gCD?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p 

 
™ " К€€€€€€€€€ƒ
+__inference_sequential_layer_call_fn_683335ФCDZҐW
PҐM
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
+__inference_sequential_layer_call_fn_683344ФCDZҐW
PҐM
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ћ
$__inference_signature_wrapper_682994£CDEFGH()./45^Ґ[
Ґ 
T™Q
O
input_1DКA
input_14€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"3™0
.
output_1"К
output_1€€€€€€€€€
