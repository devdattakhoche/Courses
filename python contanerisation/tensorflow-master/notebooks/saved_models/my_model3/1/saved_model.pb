ʑ
?,?,
:
Add
x"T
y"T
z"T"
Ttype:
2	
?
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
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
?
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
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
?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
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
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
B
Equal
x"T
y"T
z
"
Ttype:
2	
?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
?
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
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
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( ?
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5??
x
flatten_inputPlaceholder*+
_output_shapes
:?????????* 
shape:?????????*
dtype0
Z
flatten/ShapeShapeflatten_input*
T0*
out_type0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
g
flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
b
flatten/Reshape/shape/1Const*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*

axis *
N*
_output_shapes
:*
T0
?
flatten/ReshapeReshapeflatten_inputflatten/Reshape/shape*
Tshape0*(
_output_shapes
:??????????*
T0
?
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"  ?   *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
?
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *_??*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
?
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *_?=*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
?
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
_class
loc:@dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
??*

seed *
T0
?
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
?
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
??
?
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min* 
_output_shapes
:
??*
T0*
_class
loc:@dense/kernel
?
dense/kernelVarHandleOp*
shared_namedense/kernel*
_class
loc:@dense/kernel*
	container *
shape:
??*
dtype0*
_output_shapes
: 
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
?
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0
?
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
_class
loc:@dense/kernel*
dtype0
?
dense/bias/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:?
?

dense/biasVarHandleOp*
	container *
shape:?*
dtype0*
_output_shapes
: *
shared_name
dense/bias*
_class
loc:@dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0
?
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:?
j
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0* 
_output_shapes
:
??
?
dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
?
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*(
_output_shapes
:??????????*
T0*
data_formatNHWC
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:??????????
?
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"?   
   *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
?
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *̈́U?*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
?
-dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *̈́U>*!
_class
loc:@dense_1/kernel*
dtype0
?
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
seed2 *
dtype0*
_output_shapes
:	?
*

seed 
?
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_1/kernel
?
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?

?
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	?

?
dense_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape:	?

m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
?
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0
?
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:	?

?
dense_1/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:

?
dense_1/biasVarHandleOp*
_output_shapes
: *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container *
shape:
*
dtype0
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
?
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
?
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:

m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes
:	?

?
dense_1/MatMulMatMul
dense/Reludense_1/MatMul/ReadVariableOp*'
_output_shapes
:?????????
*
transpose_a( *
transpose_b( *
T0
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:
*
dtype0
?
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0*
data_formatNHWC
]
dense_1/SoftmaxSoftmaxdense_1/BiasAdd*'
_output_shapes
:?????????
*
T0
?
dense_1_targetPlaceholder*
dtype0*0
_output_shapes
:??????????????????*%
shape:??????????????????
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
?
totalVarHandleOp*
shared_nametotal*
_class

loc:@total*
	container *
shape: *
dtype0*
_output_shapes
: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 
?
countVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
|
metrics/acc/SqueezeSqueezedense_1_target*#
_output_shapes
:?????????*
squeeze_dims

?????????*
T0
g
metrics/acc/ArgMax/dimensionConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
metrics/acc/ArgMaxArgMaxdense_1/Softmaxmetrics/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:?????????
y
metrics/acc/CastCastmetrics/acc/ArgMax*#
_output_shapes
:?????????*

DstT0*

SrcT0	*
Truncate( 
o
metrics/acc/EqualEqualmetrics/acc/Squeezemetrics/acc/Cast*
T0*#
_output_shapes
:?????????
z
metrics/acc/Cast_1Castmetrics/acc/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:?????????*

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/SumSummetrics/acc/Cast_1metrics/acc/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0
?
metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
dtype0*
_output_shapes
: 
]
metrics/acc/SizeSizemetrics/acc/Cast_1*
out_type0*
_output_shapes
: *
T0
l
metrics/acc/Cast_2Castmetrics/acc/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
?
!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_2 ^metrics/acc/AssignAddVariableOp*
dtype0
?
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
T0*
_output_shapes
: 
r
loss/dense_1_loss/Reshape/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
loss/dense_1_loss/ReshapeReshapedense_1_targetloss/dense_1_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
loss/dense_1_loss/CastCastloss/dense_1_loss/Reshape*
Truncate( *#
_output_shapes
:?????????*

DstT0	*

SrcT0
r
!loss/dense_1_loss/Reshape_1/shapeConst*
valueB"????
   *
dtype0*
_output_shapes
:
?
loss/dense_1_loss/Reshape_1Reshapedense_1/BiasAdd!loss/dense_1_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
;loss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/dense_1_loss/Cast*
T0	*
out_type0*
_output_shapes
:
?
Yloss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/dense_1_loss/Reshape_1loss/dense_1_loss/Cast*6
_output_shapes$
":?????????:?????????
*
Tlabels0	*
T0
j
%loss/dense_1_loss/weighted_loss/ConstConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
Tloss/dense_1_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
?
Sloss/dense_1_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
?
Sloss/dense_1_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeYloss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
?
Rloss/dense_1_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
j
bloss/dense_1_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
?
Aloss/dense_1_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeYloss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsc^loss/dense_1_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0*
out_type0
?
Aloss/dense_1_loss/weighted_loss/broadcast_weights/ones_like/ConstConstc^loss/dense_1_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
;loss/dense_1_loss/weighted_loss/broadcast_weights/ones_likeFillAloss/dense_1_loss/weighted_loss/broadcast_weights/ones_like/ShapeAloss/dense_1_loss/weighted_loss/broadcast_weights/ones_like/Const*

index_type0*#
_output_shapes
:?????????*
T0
?
1loss/dense_1_loss/weighted_loss/broadcast_weightsMul%loss/dense_1_loss/weighted_loss/Const;loss/dense_1_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:?????????
?
#loss/dense_1_loss/weighted_loss/MulMulYloss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits1loss/dense_1_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
a
loss/dense_1_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
loss/dense_1_loss/SumSum#loss/dense_1_loss/weighted_loss/Mulloss/dense_1_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
|
loss/dense_1_loss/num_elementsSize#loss/dense_1_loss/weighted_loss/Mul*
_output_shapes
: *
T0*
out_type0
?
#loss/dense_1_loss/num_elements/CastCastloss/dense_1_loss/num_elements*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
\
loss/dense_1_loss/Const_1Const*
_output_shapes
: *
valueB *
dtype0
?
loss/dense_1_loss/Sum_1Sumloss/dense_1_loss/Sumloss/dense_1_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
?
loss/dense_1_loss/valueDivNoNanloss/dense_1_loss/Sum_1#loss/dense_1_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
U
loss/mulMul
loss/mul/xloss/dense_1_loss/value*
_output_shapes
: *
T0
\
keras_learning_phase/inputConst*
_output_shapes
: *
value	B
 Z *
dtype0

|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
W
Adam/gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
]
Adam/gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0*
_output_shapes
: 
~
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
v
 Adam/gradients/loss/mul_grad/MulMulAdam/gradients/Fillloss/dense_1_loss/value*
_output_shapes
: *
T0
k
"Adam/gradients/loss/mul_grad/Mul_1MulAdam/gradients/Fill
loss/mul/x*
_output_shapes
: *
T0
t
1Adam/gradients/loss/dense_1_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
v
3Adam/gradients/loss/dense_1_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
?
AAdam/gradients/loss/dense_1_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs1Adam/gradients/loss/dense_1_loss/value_grad/Shape3Adam/gradients/loss/dense_1_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
6Adam/gradients/loss/dense_1_loss/value_grad/div_no_nanDivNoNan"Adam/gradients/loss/mul_grad/Mul_1#loss/dense_1_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
/Adam/gradients/loss/dense_1_loss/value_grad/SumSum6Adam/gradients/loss/dense_1_loss/value_grad/div_no_nanAAdam/gradients/loss/dense_1_loss/value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
?
3Adam/gradients/loss/dense_1_loss/value_grad/ReshapeReshape/Adam/gradients/loss/dense_1_loss/value_grad/Sum1Adam/gradients/loss/dense_1_loss/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
p
/Adam/gradients/loss/dense_1_loss/value_grad/NegNegloss/dense_1_loss/Sum_1*
T0*
_output_shapes
: 
?
8Adam/gradients/loss/dense_1_loss/value_grad/div_no_nan_1DivNoNan/Adam/gradients/loss/dense_1_loss/value_grad/Neg#loss/dense_1_loss/num_elements/Cast*
_output_shapes
: *
T0
?
8Adam/gradients/loss/dense_1_loss/value_grad/div_no_nan_2DivNoNan8Adam/gradients/loss/dense_1_loss/value_grad/div_no_nan_1#loss/dense_1_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
/Adam/gradients/loss/dense_1_loss/value_grad/mulMul"Adam/gradients/loss/mul_grad/Mul_18Adam/gradients/loss/dense_1_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
?
1Adam/gradients/loss/dense_1_loss/value_grad/Sum_1Sum/Adam/gradients/loss/dense_1_loss/value_grad/mulCAdam/gradients/loss/dense_1_loss/value_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
?
5Adam/gradients/loss/dense_1_loss/value_grad/Reshape_1Reshape1Adam/gradients/loss/dense_1_loss/value_grad/Sum_13Adam/gradients/loss/dense_1_loss/value_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
|
9Adam/gradients/loss/dense_1_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
?
3Adam/gradients/loss/dense_1_loss/Sum_1_grad/ReshapeReshape3Adam/gradients/loss/dense_1_loss/value_grad/Reshape9Adam/gradients/loss/dense_1_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
t
1Adam/gradients/loss/dense_1_loss/Sum_1_grad/ConstConst*
_output_shapes
: *
valueB *
dtype0
?
0Adam/gradients/loss/dense_1_loss/Sum_1_grad/TileTile3Adam/gradients/loss/dense_1_loss/Sum_1_grad/Reshape1Adam/gradients/loss/dense_1_loss/Sum_1_grad/Const*
_output_shapes
: *

Tmultiples0*
T0
?
7Adam/gradients/loss/dense_1_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0
?
1Adam/gradients/loss/dense_1_loss/Sum_grad/ReshapeReshape0Adam/gradients/loss/dense_1_loss/Sum_1_grad/Tile7Adam/gradients/loss/dense_1_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
?
/Adam/gradients/loss/dense_1_loss/Sum_grad/ShapeShape#loss/dense_1_loss/weighted_loss/Mul*
out_type0*
_output_shapes
:*
T0
?
.Adam/gradients/loss/dense_1_loss/Sum_grad/TileTile1Adam/gradients/loss/dense_1_loss/Sum_grad/Reshape/Adam/gradients/loss/dense_1_loss/Sum_grad/Shape*#
_output_shapes
:?????????*

Tmultiples0*
T0
?
=Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/ShapeShapeYloss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
?
?Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape_1Shape1loss/dense_1_loss/weighted_loss/broadcast_weights*
_output_shapes
:*
T0*
out_type0
?
MAdam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs=Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape?Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
;Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/MulMul.Adam/gradients/loss/dense_1_loss/Sum_grad/Tile1loss/dense_1_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
?
;Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/SumSum;Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/MulMAdam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
?Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/ReshapeReshape;Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Sum=Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
=Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Mul_1MulYloss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits.Adam/gradients/loss/dense_1_loss/Sum_grad/Tile*#
_output_shapes
:?????????*
T0
?
=Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Sum_1Sum=Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Mul_1OAdam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
AAdam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Reshape_1Reshape=Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Sum_1?Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:?????????
?
Adam/gradients/zeros_like	ZerosLike[loss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:?????????
*
T0
?
}Adam/gradients/loss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient[loss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*?
message??Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:?????????

?
|Adam/gradients/loss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
xAdam/gradients/loss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims?Adam/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Reshape|Adam/gradients/loss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:?????????*

Tdim0*
T0
?
qAdam/gradients/loss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulxAdam/gradients/loss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims}Adam/gradients/loss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:?????????
*
T0
?
5Adam/gradients/loss/dense_1_loss/Reshape_1_grad/ShapeShapedense_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
?
7Adam/gradients/loss/dense_1_loss/Reshape_1_grad/ReshapeReshapeqAdam/gradients/loss/dense_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul5Adam/gradients/loss/dense_1_loss/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad7Adam/gradients/loss/dense_1_loss/Reshape_1_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:

?
)Adam/gradients/dense_1/MatMul_grad/MatMulMatMul7Adam/gradients/loss/dense_1_loss/Reshape_1_grad/Reshapedense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b(
?
+Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMul
dense/Relu7Adam/gradients/loss/dense_1_loss/Reshape_1_grad/Reshape*
_output_shapes
:	?
*
transpose_a(*
transpose_b( *
T0
?
'Adam/gradients/dense/Relu_grad/ReluGradReluGrad)Adam/gradients/dense_1/MatMul_grad/MatMul
dense/Relu*(
_output_shapes
:??????????*
T0
?
-Adam/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'Adam/gradients/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:?
?
'Adam/gradients/dense/MatMul_grad/MatMulMatMul'Adam/gradients/dense/Relu_grad/ReluGraddense/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
transpose_a( *
transpose_b(*
T0
?
)Adam/gradients/dense/MatMul_grad/MatMul_1MatMulflatten/Reshape'Adam/gradients/dense/Relu_grad/ReluGrad* 
_output_shapes
:
??*
transpose_a(*
transpose_b( *
T0
{
Adam/iter/Initializer/zerosConst*
value	B	 R *
_class
loc:@Adam/iter*
dtype0	*
_output_shapes
: 
?
	Adam/iterVarHandleOp*
shared_name	Adam/iter*
_class
loc:@Adam/iter*
	container *
shape: *
dtype0	*
_output_shapes
: 
c
*Adam/iter/IsInitialized/VarIsInitializedOpVarIsInitializedOp	Adam/iter*
_output_shapes
: 
w
Adam/iter/AssignAssignVariableOp	Adam/iterAdam/iter/Initializer/zeros*
_class
loc:@Adam/iter*
dtype0	
}
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_class
loc:@Adam/iter*
dtype0	*
_output_shapes
: 
?
%Adam/beta_1/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *fff?*
_class
loc:@Adam/beta_1*
dtype0
?
Adam/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
?
Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0
?
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
?
%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *w??*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
?
Adam/beta_2VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 
?
Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0
?
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
?
$Adam/decay/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *    *
_class
loc:@Adam/decay*
dtype0
?

Adam/decayVarHandleOp*
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container *
shape: *
dtype0*
_output_shapes
: 
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 
?
Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0
?
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
?
,Adam/learning_rate/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *o?:*%
_class
loc:@Adam/learning_rate*
dtype0
?
Adam/learning_rateVarHandleOp*
dtype0*
_output_shapes
: *#
shared_nameAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
	container *
shape: 
u
3Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
?
Adam/learning_rate/AssignAssignVariableOpAdam/learning_rate,Adam/learning_rate/Initializer/initial_value*%
_class
loc:@Adam/learning_rate*
dtype0
?
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
dtype0*
_output_shapes
: 
?
5Adam/dense/kernel/m/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@dense/kernel*
valueB"  ?   *
dtype0
?
+Adam/dense/kernel/m/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
%Adam/dense/kernel/m/Initializer/zerosFill5Adam/dense/kernel/m/Initializer/zeros/shape_as_tensor+Adam/dense/kernel/m/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0* 
_output_shapes
:
??
?
Adam/dense/kernel/mVarHandleOp*$
shared_nameAdam/dense/kernel/m*
_class
loc:@dense/kernel*
	container *
shape:
??*
dtype0*
_output_shapes
: 
?
4Adam/dense/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense/kernel/m*
_output_shapes
: *
_class
loc:@dense/kernel
?
Adam/dense/kernel/m/AssignAssignVariableOpAdam/dense/kernel/m%Adam/dense/kernel/m/Initializer/zeros*
_class
loc:@dense/kernel*
dtype0
?
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
??*
_class
loc:@dense/kernel*
dtype0
?
#Adam/dense/bias/m/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
Adam/dense/bias/mVarHandleOp*
dtype0*
_output_shapes
: *"
shared_nameAdam/dense/bias/m*
_class
loc:@dense/bias*
	container *
shape:?
?
2Adam/dense/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense/bias/m*
_output_shapes
: *
_class
loc:@dense/bias
?
Adam/dense/bias/m/AssignAssignVariableOpAdam/dense/bias/m#Adam/dense/bias/m/Initializer/zeros*
_class
loc:@dense/bias*
dtype0
?
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:?
?
7Adam/dense_1/kernel/m/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"?   
   *
dtype0*
_output_shapes
:
?
-Adam/dense_1/kernel/m/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
'Adam/dense_1/kernel/m/Initializer/zerosFill7Adam/dense_1/kernel/m/Initializer/zeros/shape_as_tensor-Adam/dense_1/kernel/m/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0*
_output_shapes
:	?

?
Adam/dense_1/kernel/mVarHandleOp*
	container *
shape:	?
*
dtype0*
_output_shapes
: *&
shared_nameAdam/dense_1/kernel/m*!
_class
loc:@dense_1/kernel
?
6Adam/dense_1/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_1/kernel/m*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
Adam/dense_1/kernel/m/AssignAssignVariableOpAdam/dense_1/kernel/m'Adam/dense_1/kernel/m/Initializer/zeros*!
_class
loc:@dense_1/kernel*
dtype0
?
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:	?

?
%Adam/dense_1/bias/m/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
Adam/dense_1/bias/mVarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense_1/bias/m*
_class
loc:@dense_1/bias*
	container *
shape:

?
4Adam/dense_1/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_1/bias/m*
_output_shapes
: *
_class
loc:@dense_1/bias
?
Adam/dense_1/bias/m/AssignAssignVariableOpAdam/dense_1/bias/m%Adam/dense_1/bias/m/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
?
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:

?
5Adam/dense/kernel/v/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@dense/kernel*
valueB"  ?   *
dtype0
?
+Adam/dense/kernel/v/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
%Adam/dense/kernel/v/Initializer/zerosFill5Adam/dense/kernel/v/Initializer/zeros/shape_as_tensor+Adam/dense/kernel/v/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0* 
_output_shapes
:
??
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *$
shared_nameAdam/dense/kernel/v*
_class
loc:@dense/kernel*
	container *
shape:
??*
dtype0
?
4Adam/dense/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense/kernel/v*
_class
loc:@dense/kernel*
_output_shapes
: 
?
Adam/dense/kernel/v/AssignAssignVariableOpAdam/dense/kernel/v%Adam/dense/kernel/v/Initializer/zeros*
_class
loc:@dense/kernel*
dtype0
?
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_class
loc:@dense/kernel*
dtype0* 
_output_shapes
:
??
?
#Adam/dense/bias/v/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
Adam/dense/bias/vVarHandleOp*"
shared_nameAdam/dense/bias/v*
_class
loc:@dense/bias*
	container *
shape:?*
dtype0*
_output_shapes
: 
?
2Adam/dense/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense/bias/v*
_class
loc:@dense/bias*
_output_shapes
: 
?
Adam/dense/bias/v/AssignAssignVariableOpAdam/dense/bias/v#Adam/dense/bias/v/Initializer/zeros*
_class
loc:@dense/bias*
dtype0
?
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:?*
_class
loc:@dense/bias*
dtype0
?
7Adam/dense_1/kernel/v/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"?   
   *
dtype0*
_output_shapes
:
?
-Adam/dense_1/kernel/v/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
'Adam/dense_1/kernel/v/Initializer/zerosFill7Adam/dense_1/kernel/v/Initializer/zeros/shape_as_tensor-Adam/dense_1/kernel/v/Initializer/zeros/Const*!
_class
loc:@dense_1/kernel*

index_type0*
_output_shapes
:	?
*
T0
?
Adam/dense_1/kernel/vVarHandleOp*
dtype0*
_output_shapes
: *&
shared_nameAdam/dense_1/kernel/v*!
_class
loc:@dense_1/kernel*
	container *
shape:	?

?
6Adam/dense_1/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_1/kernel/v*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
Adam/dense_1/kernel/v/AssignAssignVariableOpAdam/dense_1/kernel/v'Adam/dense_1/kernel/v/Initializer/zeros*!
_class
loc:@dense_1/kernel*
dtype0
?
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:	?

?
%Adam/dense_1/bias/v/Initializer/zerosConst*
_output_shapes
:
*
_class
loc:@dense_1/bias*
valueB
*    *
dtype0
?
Adam/dense_1/bias/vVarHandleOp*$
shared_nameAdam/dense_1/bias/v*
_class
loc:@dense_1/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
?
4Adam/dense_1/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_1/bias/v*
_class
loc:@dense_1/bias*
_output_shapes
: 
?
Adam/dense_1/bias/v/AssignAssignVariableOpAdam/dense_1/bias/v%Adam/dense_1/bias/v/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
?
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:

h
#Adam/Adam/update_dense/kernel/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
n
,Adam/Adam/update_dense/kernel/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
e
#Adam/Adam/update_dense/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
!Adam/Adam/update_dense/kernel/addAdd,Adam/Adam/update_dense/kernel/ReadVariableOp#Adam/Adam/update_dense/kernel/add/y*
_output_shapes
: *
T0	
?
"Adam/Adam/update_dense/kernel/CastCast!Adam/Adam/update_dense/kernel/add*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
t
0Adam/Adam/update_dense/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
!Adam/Adam/update_dense/kernel/PowPow0Adam/Adam/update_dense/kernel/Pow/ReadVariableOp"Adam/Adam/update_dense/kernel/Cast*
_output_shapes
: *
T0
v
2Adam/Adam/update_dense/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
#Adam/Adam/update_dense/kernel/Pow_1Pow2Adam/Adam/update_dense/kernel/Pow_1/ReadVariableOp"Adam/Adam/update_dense/kernel/Cast*
_output_shapes
: *
T0
?
>Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
@Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
@Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
/Adam/Adam/update_dense/kernel/ResourceApplyAdamResourceApplyAdamdense/kernelAdam/dense/kernel/mAdam/dense/kernel/v!Adam/Adam/update_dense/kernel/Pow#Adam/Adam/update_dense/kernel/Pow_1>Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp@Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_1@Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_2#Adam/Adam/update_dense/kernel/Const)Adam/gradients/dense/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
f
!Adam/Adam/update_dense/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
l
*Adam/Adam/update_dense/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
c
!Adam/Adam/update_dense/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
Adam/Adam/update_dense/bias/addAdd*Adam/Adam/update_dense/bias/ReadVariableOp!Adam/Adam/update_dense/bias/add/y*
T0	*
_output_shapes
: 
?
 Adam/Adam/update_dense/bias/CastCastAdam/Adam/update_dense/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
r
.Adam/Adam/update_dense/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
Adam/Adam/update_dense/bias/PowPow.Adam/Adam/update_dense/bias/Pow/ReadVariableOp Adam/Adam/update_dense/bias/Cast*
T0*
_output_shapes
: 
t
0Adam/Adam/update_dense/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
!Adam/Adam/update_dense/bias/Pow_1Pow0Adam/Adam/update_dense/bias/Pow_1/ReadVariableOp Adam/Adam/update_dense/bias/Cast*
T0*
_output_shapes
: 
?
<Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
>Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
>Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
-Adam/Adam/update_dense/bias/ResourceApplyAdamResourceApplyAdam
dense/biasAdam/dense/bias/mAdam/dense/bias/vAdam/Adam/update_dense/bias/Pow!Adam/Adam/update_dense/bias/Pow_1<Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp>Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_1>Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_2!Adam/Adam/update_dense/bias/Const-Adam/gradients/dense/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
j
%Adam/Adam/update_dense_1/kernel/ConstConst*
_output_shapes
: *
valueB
 *???3*
dtype0
p
.Adam/Adam/update_dense_1/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
g
%Adam/Adam/update_dense_1/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
#Adam/Adam/update_dense_1/kernel/addAdd.Adam/Adam/update_dense_1/kernel/ReadVariableOp%Adam/Adam/update_dense_1/kernel/add/y*
_output_shapes
: *
T0	
?
$Adam/Adam/update_dense_1/kernel/CastCast#Adam/Adam/update_dense_1/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
v
2Adam/Adam/update_dense_1/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
#Adam/Adam/update_dense_1/kernel/PowPow2Adam/Adam/update_dense_1/kernel/Pow/ReadVariableOp$Adam/Adam/update_dense_1/kernel/Cast*
T0*
_output_shapes
: 
x
4Adam/Adam/update_dense_1/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
%Adam/Adam/update_dense_1/kernel/Pow_1Pow4Adam/Adam/update_dense_1/kernel/Pow_1/ReadVariableOp$Adam/Adam/update_dense_1/kernel/Cast*
_output_shapes
: *
T0
?
@Adam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
BAdam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
BAdam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
1Adam/Adam/update_dense_1/kernel/ResourceApplyAdamResourceApplyAdamdense_1/kernelAdam/dense_1/kernel/mAdam/dense_1/kernel/v#Adam/Adam/update_dense_1/kernel/Pow%Adam/Adam/update_dense_1/kernel/Pow_1@Adam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOpBAdam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1BAdam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_2%Adam/Adam/update_dense_1/kernel/Const+Adam/gradients/dense_1/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
h
#Adam/Adam/update_dense_1/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
n
,Adam/Adam/update_dense_1/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
e
#Adam/Adam/update_dense_1/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
!Adam/Adam/update_dense_1/bias/addAdd,Adam/Adam/update_dense_1/bias/ReadVariableOp#Adam/Adam/update_dense_1/bias/add/y*
T0	*
_output_shapes
: 
?
"Adam/Adam/update_dense_1/bias/CastCast!Adam/Adam/update_dense_1/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
t
0Adam/Adam/update_dense_1/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
!Adam/Adam/update_dense_1/bias/PowPow0Adam/Adam/update_dense_1/bias/Pow/ReadVariableOp"Adam/Adam/update_dense_1/bias/Cast*
_output_shapes
: *
T0
v
2Adam/Adam/update_dense_1/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
#Adam/Adam/update_dense_1/bias/Pow_1Pow2Adam/Adam/update_dense_1/bias/Pow_1/ReadVariableOp"Adam/Adam/update_dense_1/bias/Cast*
_output_shapes
: *
T0
?
>Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
@Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
@Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
/Adam/Adam/update_dense_1/bias/ResourceApplyAdamResourceApplyAdamdense_1/biasAdam/dense_1/bias/mAdam/dense_1/bias/v!Adam/Adam/update_dense_1/bias/Pow#Adam/Adam/update_dense_1/bias/Pow_1>Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp@Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_1@Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_2#Adam/Adam/update_dense_1/bias/Const/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
use_nesterov( *
use_locking(*
T0
?
Adam/Adam/ConstConst.^Adam/Adam/update_dense/bias/ResourceApplyAdam0^Adam/Adam/update_dense/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_1/bias/ResourceApplyAdam2^Adam/Adam/update_dense_1/kernel/ResourceApplyAdam*
_output_shapes
: *
value	B	 R*
dtype0	
]
Adam/Adam/AssignAddVariableOpAssignAddVariableOp	Adam/iterAdam/Adam/Const*
dtype0	
?
Adam/Adam/ReadVariableOpReadVariableOp	Adam/iter^Adam/Adam/AssignAddVariableOp.^Adam/Adam/update_dense/bias/ResourceApplyAdam0^Adam/Adam/update_dense/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_1/bias/ResourceApplyAdam2^Adam/Adam/update_dense_1/kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: 
H
training_1/group_depsNoOp^Adam/Adam/AssignAddVariableOp	^loss/mul
L
PlaceholderPlaceholder*
_output_shapes
: *
shape: *
dtype0
E
AssignVariableOpAssignVariableOptotalPlaceholder*
dtype0
_
ReadVariableOpReadVariableOptotal^AssignVariableOp*
dtype0*
_output_shapes
: 
N
Placeholder_1Placeholder*
_output_shapes
: *
shape: *
dtype0
I
AssignVariableOp_1AssignVariableOpcountPlaceholder_1*
dtype0
c
ReadVariableOp_1ReadVariableOpcount^AssignVariableOp_1*
dtype0*
_output_shapes
: 
G
VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
P
VarIsInitializedOp_1VarIsInitializedOpdense/kernel*
_output_shapes
: 
O
VarIsInitializedOp_2VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
Y
VarIsInitializedOp_3VarIsInitializedOpAdam/dense_1/kernel/v*
_output_shapes
: 
W
VarIsInitializedOp_4VarIsInitializedOpAdam/dense/kernel/m*
_output_shapes
: 
W
VarIsInitializedOp_5VarIsInitializedOpAdam/dense_1/bias/m*
_output_shapes
: 
N
VarIsInitializedOp_6VarIsInitializedOp
dense/bias*
_output_shapes
: 
N
VarIsInitializedOp_7VarIsInitializedOp
Adam/decay*
_output_shapes
: 
U
VarIsInitializedOp_8VarIsInitializedOpAdam/dense/bias/m*
_output_shapes
: 
W
VarIsInitializedOp_9VarIsInitializedOpAdam/dense_1/bias/v*
_output_shapes
: 
W
VarIsInitializedOp_10VarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
N
VarIsInitializedOp_11VarIsInitializedOp	Adam/iter*
_output_shapes
: 
J
VarIsInitializedOp_12VarIsInitializedOpcount*
_output_shapes
: 
Q
VarIsInitializedOp_13VarIsInitializedOpdense_1/bias*
_output_shapes
: 
P
VarIsInitializedOp_14VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
Z
VarIsInitializedOp_15VarIsInitializedOpAdam/dense_1/kernel/m*
_output_shapes
: 
X
VarIsInitializedOp_16VarIsInitializedOpAdam/dense/kernel/v*
_output_shapes
: 
V
VarIsInitializedOp_17VarIsInitializedOpAdam/dense/bias/v*
_output_shapes
: 
S
VarIsInitializedOp_18VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
?
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/dense/bias/m/Assign^Adam/dense/bias/v/Assign^Adam/dense/kernel/m/Assign^Adam/dense/kernel/v/Assign^Adam/dense_1/bias/m/Assign^Adam/dense_1/bias/v/Assign^Adam/dense_1/kernel/m/Assign^Adam/dense_1/kernel/v/Assign^Adam/iter/Assign^Adam/learning_rate/Assign^count/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^total/Assign
(
evaluation/group_depsNoOp	^loss/mul
,
predict/group_depsNoOp^dense_1/Softmax
z
flatten_1_inputPlaceholder*+
_output_shapes
:?????????* 
shape:?????????*
dtype0
^
flatten_1/ShapeShapeflatten_1_input*
T0*
out_type0*
_output_shapes
:
g
flatten_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
i
flatten_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
d
flatten_1/Reshape/shape/1Const*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
flatten_1/Reshape/shapePackflatten_1/strided_sliceflatten_1/Reshape/shape/1*

axis *
N*
_output_shapes
:*
T0
?
flatten_1/ReshapeReshapeflatten_1_inputflatten_1/Reshape/shape*(
_output_shapes
:??????????*
T0*
Tshape0
?
/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"  ?   *!
_class
loc:@dense_2/kernel*
dtype0
?
-dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *_??*!
_class
loc:@dense_2/kernel*
dtype0
?
-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *_?=*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
?
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*

seed *
T0*!
_class
loc:@dense_2/kernel*
seed2 
?
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
_output_shapes
: *
T0
?
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
??
?
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
??*
T0
?
dense_2/kernelVarHandleOp*
_output_shapes
: *
shared_namedense_2/kernel*!
_class
loc:@dense_2/kernel*
	container *
shape:
??*
dtype0
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 
?
dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*!
_class
loc:@dense_2/kernel*
dtype0
?
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
dense_2/bias/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes	
:?
?
dense_2/biasVarHandleOp*
shared_namedense_2/bias*
_class
loc:@dense_2/bias*
	container *
shape:?*
dtype0*
_output_shapes
: 
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
?
dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0
?
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes	
:?
n
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0* 
_output_shapes
:
??
?
dense_2/MatMulMatMulflatten_1/Reshapedense_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
h
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes	
:?
?
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
data_formatNHWC*(
_output_shapes
:??????????*
T0
X
dense_2/ReluReludense_2/BiasAdd*
T0*(
_output_shapes
:??????????
?
/dense_3/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"?   
   *!
_class
loc:@dense_3/kernel*
dtype0
?
-dense_3/kernel/Initializer/random_uniform/minConst*
valueB
 *̈́U?*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
?
-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *̈́U>*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
?
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
_output_shapes
:	?
*

seed *
T0*!
_class
loc:@dense_3/kernel*
seed2 *
dtype0
?
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
_output_shapes
: *
T0
?
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
_output_shapes
:	?
*
T0
?
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
_output_shapes
:	?
*
T0
?
dense_3/kernelVarHandleOp*
_output_shapes
: *
shared_namedense_3/kernel*!
_class
loc:@dense_3/kernel*
	container *
shape:	?
*
dtype0
m
/dense_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/kernel*
_output_shapes
: 
?
dense_3/kernel/AssignAssignVariableOpdense_3/kernel)dense_3/kernel/Initializer/random_uniform*!
_class
loc:@dense_3/kernel*
dtype0
?
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:	?

?
dense_3/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:

?
dense_3/biasVarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namedense_3/bias*
_class
loc:@dense_3/bias
i
-dense_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/bias*
_output_shapes
: 
?
dense_3/bias/AssignAssignVariableOpdense_3/biasdense_3/bias/Initializer/zeros*
_class
loc:@dense_3/bias*
dtype0
?
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:

m
dense_3/MatMul/ReadVariableOpReadVariableOpdense_3/kernel*
dtype0*
_output_shapes
:	?

?
dense_3/MatMulMatMuldense_2/Reludense_3/MatMul/ReadVariableOp*'
_output_shapes
:?????????
*
transpose_a( *
transpose_b( *
T0
g
dense_3/BiasAdd/ReadVariableOpReadVariableOpdense_3/bias*
dtype0*
_output_shapes
:

?
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:?????????

]
dense_3/SoftmaxSoftmaxdense_3/BiasAdd*'
_output_shapes
:?????????
*
T0
?
dense_3_targetPlaceholder*%
shape:??????????????????*
dtype0*0
_output_shapes
:??????????????????
z
total_1/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *
_class
loc:@total_1*
dtype0
?
total_1VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name	total_1*
_class
loc:@total_1
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
o
total_1/AssignAssignVariableOptotal_1total_1/Initializer/zeros*
_class
loc:@total_1*
dtype0
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
_class
loc:@total_1*
dtype0
z
count_1/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *
_class
loc:@count_1*
dtype0
?
count_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	count_1*
_class
loc:@count_1*
	container *
shape: 
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
o
count_1/AssignAssignVariableOpcount_1count_1/Initializer/zeros*
_class
loc:@count_1*
dtype0
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 
~
metrics_2/acc/SqueezeSqueezedense_3_target*#
_output_shapes
:?????????*
squeeze_dims

?????????*
T0
i
metrics_2/acc/ArgMax/dimensionConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
metrics_2/acc/ArgMaxArgMaxdense_3/Softmaxmetrics_2/acc/ArgMax/dimension*
output_type0	*#
_output_shapes
:?????????*

Tidx0*
T0
}
metrics_2/acc/CastCastmetrics_2/acc/ArgMax*

SrcT0	*
Truncate( *#
_output_shapes
:?????????*

DstT0
u
metrics_2/acc/EqualEqualmetrics_2/acc/Squeezemetrics_2/acc/Cast*#
_output_shapes
:?????????*
T0
~
metrics_2/acc/Cast_1Castmetrics_2/acc/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:?????????*

DstT0
]
metrics_2/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
metrics_2/acc/SumSummetrics_2/acc/Cast_1metrics_2/acc/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
!metrics_2/acc/AssignAddVariableOpAssignAddVariableOptotal_1metrics_2/acc/Sum*
dtype0
?
metrics_2/acc/ReadVariableOpReadVariableOptotal_1"^metrics_2/acc/AssignAddVariableOp^metrics_2/acc/Sum*
dtype0*
_output_shapes
: 
a
metrics_2/acc/SizeSizemetrics_2/acc/Cast_1*
out_type0*
_output_shapes
: *
T0
p
metrics_2/acc/Cast_2Castmetrics_2/acc/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
?
#metrics_2/acc/AssignAddVariableOp_1AssignAddVariableOpcount_1metrics_2/acc/Cast_2"^metrics_2/acc/AssignAddVariableOp*
dtype0
?
metrics_2/acc/ReadVariableOp_1ReadVariableOpcount_1"^metrics_2/acc/AssignAddVariableOp$^metrics_2/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
'metrics_2/acc/div_no_nan/ReadVariableOpReadVariableOptotal_1$^metrics_2/acc/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
)metrics_2/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount_1$^metrics_2/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
metrics_2/acc/div_no_nanDivNoNan'metrics_2/acc/div_no_nan/ReadVariableOp)metrics_2/acc/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
]
metrics_2/acc/IdentityIdentitymetrics_2/acc/div_no_nan*
T0*
_output_shapes
: 
t
!loss_1/dense_3_loss/Reshape/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
loss_1/dense_3_loss/ReshapeReshapedense_3_target!loss_1/dense_3_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
loss_1/dense_3_loss/CastCastloss_1/dense_3_loss/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:?????????*

DstT0	
t
#loss_1/dense_3_loss/Reshape_1/shapeConst*
valueB"????
   *
dtype0*
_output_shapes
:
?
loss_1/dense_3_loss/Reshape_1Reshapedense_3/BiasAdd#loss_1/dense_3_loss/Reshape_1/shape*'
_output_shapes
:?????????
*
T0*
Tshape0
?
=loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss_1/dense_3_loss/Cast*
out_type0*
_output_shapes
:*
T0	
?
[loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss_1/dense_3_loss/Reshape_1loss_1/dense_3_loss/Cast*6
_output_shapes$
":?????????:?????????
*
Tlabels0	*
T0
l
'loss_1/dense_3_loss/weighted_loss/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Vloss_1/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
?
Uloss_1/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
?
Uloss_1/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShape[loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
?
Tloss_1/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
l
dloss_1/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
?
Closs_1/dense_3_loss/weighted_loss/broadcast_weights/ones_like/ShapeShape[loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitse^loss_1/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
?
Closs_1/dense_3_loss/weighted_loss/broadcast_weights/ones_like/ConstConste^loss_1/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
=loss_1/dense_3_loss/weighted_loss/broadcast_weights/ones_likeFillCloss_1/dense_3_loss/weighted_loss/broadcast_weights/ones_like/ShapeCloss_1/dense_3_loss/weighted_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:?????????*
T0*

index_type0
?
3loss_1/dense_3_loss/weighted_loss/broadcast_weightsMul'loss_1/dense_3_loss/weighted_loss/Const=loss_1/dense_3_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:?????????
?
%loss_1/dense_3_loss/weighted_loss/MulMul[loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits3loss_1/dense_3_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
c
loss_1/dense_3_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
loss_1/dense_3_loss/SumSum%loss_1/dense_3_loss/weighted_loss/Mulloss_1/dense_3_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
?
 loss_1/dense_3_loss/num_elementsSize%loss_1/dense_3_loss/weighted_loss/Mul*
out_type0*
_output_shapes
: *
T0
?
%loss_1/dense_3_loss/num_elements/CastCast loss_1/dense_3_loss/num_elements*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
^
loss_1/dense_3_loss/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
?
loss_1/dense_3_loss/Sum_1Sumloss_1/dense_3_loss/Sumloss_1/dense_3_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
?
loss_1/dense_3_loss/valueDivNoNanloss_1/dense_3_loss/Sum_1%loss_1/dense_3_loss/num_elements/Cast*
T0*
_output_shapes
: 
Q
loss_1/mul/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
[

loss_1/mulMulloss_1/mul/xloss_1/dense_3_loss/value*
_output_shapes
: *
T0
Y
Adam_1/gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
_
Adam_1/gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Adam_1/gradients/FillFillAdam_1/gradients/ShapeAdam_1/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
~
$Adam_1/gradients/loss_1/mul_grad/MulMulAdam_1/gradients/Fillloss_1/dense_3_loss/value*
T0*
_output_shapes
: 
s
&Adam_1/gradients/loss_1/mul_grad/Mul_1MulAdam_1/gradients/Fillloss_1/mul/x*
_output_shapes
: *
T0
x
5Adam_1/gradients/loss_1/dense_3_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
z
7Adam_1/gradients/loss_1/dense_3_loss/value_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
?
EAdam_1/gradients/loss_1/dense_3_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs5Adam_1/gradients/loss_1/dense_3_loss/value_grad/Shape7Adam_1/gradients/loss_1/dense_3_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
:Adam_1/gradients/loss_1/dense_3_loss/value_grad/div_no_nanDivNoNan&Adam_1/gradients/loss_1/mul_grad/Mul_1%loss_1/dense_3_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
3Adam_1/gradients/loss_1/dense_3_loss/value_grad/SumSum:Adam_1/gradients/loss_1/dense_3_loss/value_grad/div_no_nanEAdam_1/gradients/loss_1/dense_3_loss/value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
?
7Adam_1/gradients/loss_1/dense_3_loss/value_grad/ReshapeReshape3Adam_1/gradients/loss_1/dense_3_loss/value_grad/Sum5Adam_1/gradients/loss_1/dense_3_loss/value_grad/Shape*
_output_shapes
: *
T0*
Tshape0
v
3Adam_1/gradients/loss_1/dense_3_loss/value_grad/NegNegloss_1/dense_3_loss/Sum_1*
_output_shapes
: *
T0
?
<Adam_1/gradients/loss_1/dense_3_loss/value_grad/div_no_nan_1DivNoNan3Adam_1/gradients/loss_1/dense_3_loss/value_grad/Neg%loss_1/dense_3_loss/num_elements/Cast*
_output_shapes
: *
T0
?
<Adam_1/gradients/loss_1/dense_3_loss/value_grad/div_no_nan_2DivNoNan<Adam_1/gradients/loss_1/dense_3_loss/value_grad/div_no_nan_1%loss_1/dense_3_loss/num_elements/Cast*
_output_shapes
: *
T0
?
3Adam_1/gradients/loss_1/dense_3_loss/value_grad/mulMul&Adam_1/gradients/loss_1/mul_grad/Mul_1<Adam_1/gradients/loss_1/dense_3_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
?
5Adam_1/gradients/loss_1/dense_3_loss/value_grad/Sum_1Sum3Adam_1/gradients/loss_1/dense_3_loss/value_grad/mulGAdam_1/gradients/loss_1/dense_3_loss/value_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
?
9Adam_1/gradients/loss_1/dense_3_loss/value_grad/Reshape_1Reshape5Adam_1/gradients/loss_1/dense_3_loss/value_grad/Sum_17Adam_1/gradients/loss_1/dense_3_loss/value_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
?
=Adam_1/gradients/loss_1/dense_3_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
?
7Adam_1/gradients/loss_1/dense_3_loss/Sum_1_grad/ReshapeReshape7Adam_1/gradients/loss_1/dense_3_loss/value_grad/Reshape=Adam_1/gradients/loss_1/dense_3_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
x
5Adam_1/gradients/loss_1/dense_3_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
?
4Adam_1/gradients/loss_1/dense_3_loss/Sum_1_grad/TileTile7Adam_1/gradients/loss_1/dense_3_loss/Sum_1_grad/Reshape5Adam_1/gradients/loss_1/dense_3_loss/Sum_1_grad/Const*
_output_shapes
: *

Tmultiples0*
T0
?
;Adam_1/gradients/loss_1/dense_3_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
?
5Adam_1/gradients/loss_1/dense_3_loss/Sum_grad/ReshapeReshape4Adam_1/gradients/loss_1/dense_3_loss/Sum_1_grad/Tile;Adam_1/gradients/loss_1/dense_3_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
?
3Adam_1/gradients/loss_1/dense_3_loss/Sum_grad/ShapeShape%loss_1/dense_3_loss/weighted_loss/Mul*
_output_shapes
:*
T0*
out_type0
?
2Adam_1/gradients/loss_1/dense_3_loss/Sum_grad/TileTile5Adam_1/gradients/loss_1/dense_3_loss/Sum_grad/Reshape3Adam_1/gradients/loss_1/dense_3_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:?????????
?
AAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/ShapeShape[loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
?
CAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/Shape_1Shape3loss_1/dense_3_loss/weighted_loss/broadcast_weights*
_output_shapes
:*
T0*
out_type0
?
QAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsAAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/ShapeCAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
?Adam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/MulMul2Adam_1/gradients/loss_1/dense_3_loss/Sum_grad/Tile3loss_1/dense_3_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
?
?Adam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/SumSum?Adam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/MulQAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
CAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/ReshapeReshape?Adam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/SumAAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
AAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/Mul_1Mul[loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits2Adam_1/gradients/loss_1/dense_3_loss/Sum_grad/Tile*
T0*#
_output_shapes
:?????????
?
AAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/Sum_1SumAAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/Mul_1SAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
EAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/Reshape_1ReshapeAAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/Sum_1CAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/Shape_1*
Tshape0*#
_output_shapes
:?????????*
T0
?
Adam_1/gradients/zeros_like	ZerosLike]loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:?????????

?
?Adam_1/gradients/loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient]loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:?????????
*?
message??Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
?
?Adam_1/gradients/loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
|Adam_1/gradients/loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsCAdam_1/gradients/loss_1/dense_3_loss/weighted_loss/Mul_grad/Reshape?Adam_1/gradients/loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:?????????*

Tdim0*
T0
?
uAdam_1/gradients/loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul|Adam_1/gradients/loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims?Adam_1/gradients/loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:?????????
*
T0
?
9Adam_1/gradients/loss_1/dense_3_loss/Reshape_1_grad/ShapeShapedense_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
?
;Adam_1/gradients/loss_1/dense_3_loss/Reshape_1_grad/ReshapeReshapeuAdam_1/gradients/loss_1/dense_3_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul9Adam_1/gradients/loss_1/dense_3_loss/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
1Adam_1/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad;Adam_1/gradients/loss_1/dense_3_loss/Reshape_1_grad/Reshape*
_output_shapes
:
*
T0*
data_formatNHWC
?
+Adam_1/gradients/dense_3/MatMul_grad/MatMulMatMul;Adam_1/gradients/loss_1/dense_3_loss/Reshape_1_grad/Reshapedense_3/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
transpose_a( *
transpose_b(*
T0
?
-Adam_1/gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/Relu;Adam_1/gradients/loss_1/dense_3_loss/Reshape_1_grad/Reshape*
_output_shapes
:	?
*
transpose_a(*
transpose_b( *
T0
?
+Adam_1/gradients/dense_2/Relu_grad/ReluGradReluGrad+Adam_1/gradients/dense_3/MatMul_grad/MatMuldense_2/Relu*(
_output_shapes
:??????????*
T0
?
1Adam_1/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad+Adam_1/gradients/dense_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:?
?
+Adam_1/gradients/dense_2/MatMul_grad/MatMulMatMul+Adam_1/gradients/dense_2/Relu_grad/ReluGraddense_2/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
transpose_a( *
transpose_b(*
T0
?
-Adam_1/gradients/dense_2/MatMul_grad/MatMul_1MatMulflatten_1/Reshape+Adam_1/gradients/dense_2/Relu_grad/ReluGrad* 
_output_shapes
:
??*
transpose_a(*
transpose_b( *
T0

Adam_1/iter/Initializer/zerosConst*
value	B	 R *
_class
loc:@Adam_1/iter*
dtype0	*
_output_shapes
: 
?
Adam_1/iterVarHandleOp*
shared_nameAdam_1/iter*
_class
loc:@Adam_1/iter*
	container *
shape: *
dtype0	*
_output_shapes
: 
g
,Adam_1/iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/iter*
_output_shapes
: 

Adam_1/iter/AssignAssignVariableOpAdam_1/iterAdam_1/iter/Initializer/zeros*
_class
loc:@Adam_1/iter*
dtype0	
?
Adam_1/iter/Read/ReadVariableOpReadVariableOpAdam_1/iter*
_class
loc:@Adam_1/iter*
dtype0	*
_output_shapes
: 
?
'Adam_1/beta_1/Initializer/initial_valueConst*
valueB
 *fff?* 
_class
loc:@Adam_1/beta_1*
dtype0*
_output_shapes
: 
?
Adam_1/beta_1VarHandleOp*
shared_nameAdam_1/beta_1* 
_class
loc:@Adam_1/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: 
k
.Adam_1/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 
?
Adam_1/beta_1/AssignAssignVariableOpAdam_1/beta_1'Adam_1/beta_1/Initializer/initial_value* 
_class
loc:@Adam_1/beta_1*
dtype0
?
!Adam_1/beta_1/Read/ReadVariableOpReadVariableOpAdam_1/beta_1* 
_class
loc:@Adam_1/beta_1*
dtype0*
_output_shapes
: 
?
'Adam_1/beta_2/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *w??* 
_class
loc:@Adam_1/beta_2*
dtype0
?
Adam_1/beta_2VarHandleOp*
shared_nameAdam_1/beta_2* 
_class
loc:@Adam_1/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: 
k
.Adam_1/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/beta_2*
_output_shapes
: 
?
Adam_1/beta_2/AssignAssignVariableOpAdam_1/beta_2'Adam_1/beta_2/Initializer/initial_value* 
_class
loc:@Adam_1/beta_2*
dtype0
?
!Adam_1/beta_2/Read/ReadVariableOpReadVariableOpAdam_1/beta_2*
_output_shapes
: * 
_class
loc:@Adam_1/beta_2*
dtype0
?
&Adam_1/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam_1/decay*
dtype0*
_output_shapes
: 
?
Adam_1/decayVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_1/decay*
_class
loc:@Adam_1/decay*
	container *
shape: 
i
-Adam_1/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/decay*
_output_shapes
: 
?
Adam_1/decay/AssignAssignVariableOpAdam_1/decay&Adam_1/decay/Initializer/initial_value*
_class
loc:@Adam_1/decay*
dtype0
?
 Adam_1/decay/Read/ReadVariableOpReadVariableOpAdam_1/decay*
_class
loc:@Adam_1/decay*
dtype0*
_output_shapes
: 
?
.Adam_1/learning_rate/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *o?:*'
_class
loc:@Adam_1/learning_rate*
dtype0
?
Adam_1/learning_rateVarHandleOp*%
shared_nameAdam_1/learning_rate*'
_class
loc:@Adam_1/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: 
y
5Adam_1/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/learning_rate*
_output_shapes
: 
?
Adam_1/learning_rate/AssignAssignVariableOpAdam_1/learning_rate.Adam_1/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_1/learning_rate*
dtype0
?
(Adam_1/learning_rate/Read/ReadVariableOpReadVariableOpAdam_1/learning_rate*'
_class
loc:@Adam_1/learning_rate*
dtype0*
_output_shapes
: 
?
9Adam_1/dense_2/kernel/m/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*!
_class
loc:@dense_2/kernel*
valueB"  ?   *
dtype0
?
/Adam_1/dense_2/kernel/m/Initializer/zeros/ConstConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)Adam_1/dense_2/kernel/m/Initializer/zerosFill9Adam_1/dense_2/kernel/m/Initializer/zeros/shape_as_tensor/Adam_1/dense_2/kernel/m/Initializer/zeros/Const*!
_class
loc:@dense_2/kernel*

index_type0* 
_output_shapes
:
??*
T0
?
Adam_1/dense_2/kernel/mVarHandleOp*
	container *
shape:
??*
dtype0*
_output_shapes
: *(
shared_nameAdam_1/dense_2/kernel/m*!
_class
loc:@dense_2/kernel
?
8Adam_1/dense_2/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/dense_2/kernel/m*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
?
Adam_1/dense_2/kernel/m/AssignAssignVariableOpAdam_1/dense_2/kernel/m)Adam_1/dense_2/kernel/m/Initializer/zeros*!
_class
loc:@dense_2/kernel*
dtype0
?
+Adam_1/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam_1/dense_2/kernel/m*!
_class
loc:@dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
'Adam_1/dense_2/bias/m/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
Adam_1/dense_2/bias/mVarHandleOp*
_class
loc:@dense_2/bias*
	container *
shape:?*
dtype0*
_output_shapes
: *&
shared_nameAdam_1/dense_2/bias/m
?
6Adam_1/dense_2/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/dense_2/bias/m*
_class
loc:@dense_2/bias*
_output_shapes
: 
?
Adam_1/dense_2/bias/m/AssignAssignVariableOpAdam_1/dense_2/bias/m'Adam_1/dense_2/bias/m/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0
?
)Adam_1/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam_1/dense_2/bias/m*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes	
:?
?
9Adam_1/dense_3/kernel/m/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*!
_class
loc:@dense_3/kernel*
valueB"?   
   *
dtype0
?
/Adam_1/dense_3/kernel/m/Initializer/zeros/ConstConst*!
_class
loc:@dense_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)Adam_1/dense_3/kernel/m/Initializer/zerosFill9Adam_1/dense_3/kernel/m/Initializer/zeros/shape_as_tensor/Adam_1/dense_3/kernel/m/Initializer/zeros/Const*
T0*!
_class
loc:@dense_3/kernel*

index_type0*
_output_shapes
:	?

?
Adam_1/dense_3/kernel/mVarHandleOp*
	container *
shape:	?
*
dtype0*
_output_shapes
: *(
shared_nameAdam_1/dense_3/kernel/m*!
_class
loc:@dense_3/kernel
?
8Adam_1/dense_3/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/dense_3/kernel/m*
_output_shapes
: *!
_class
loc:@dense_3/kernel
?
Adam_1/dense_3/kernel/m/AssignAssignVariableOpAdam_1/dense_3/kernel/m)Adam_1/dense_3/kernel/m/Initializer/zeros*!
_class
loc:@dense_3/kernel*
dtype0
?
+Adam_1/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam_1/dense_3/kernel/m*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:	?

?
'Adam_1/dense_3/bias/m/Initializer/zerosConst*
_class
loc:@dense_3/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
Adam_1/dense_3/bias/mVarHandleOp*
_class
loc:@dense_3/bias*
	container *
shape:
*
dtype0*
_output_shapes
: *&
shared_nameAdam_1/dense_3/bias/m
?
6Adam_1/dense_3/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/dense_3/bias/m*
_class
loc:@dense_3/bias*
_output_shapes
: 
?
Adam_1/dense_3/bias/m/AssignAssignVariableOpAdam_1/dense_3/bias/m'Adam_1/dense_3/bias/m/Initializer/zeros*
_class
loc:@dense_3/bias*
dtype0
?
)Adam_1/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam_1/dense_3/bias/m*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:

?
9Adam_1/dense_2/kernel/v/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_2/kernel*
valueB"  ?   *
dtype0*
_output_shapes
:
?
/Adam_1/dense_2/kernel/v/Initializer/zeros/ConstConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)Adam_1/dense_2/kernel/v/Initializer/zerosFill9Adam_1/dense_2/kernel/v/Initializer/zeros/shape_as_tensor/Adam_1/dense_2/kernel/v/Initializer/zeros/Const* 
_output_shapes
:
??*
T0*!
_class
loc:@dense_2/kernel*

index_type0
?
Adam_1/dense_2/kernel/vVarHandleOp*
_output_shapes
: *(
shared_nameAdam_1/dense_2/kernel/v*!
_class
loc:@dense_2/kernel*
	container *
shape:
??*
dtype0
?
8Adam_1/dense_2/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/dense_2/kernel/v*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
?
Adam_1/dense_2/kernel/v/AssignAssignVariableOpAdam_1/dense_2/kernel/v)Adam_1/dense_2/kernel/v/Initializer/zeros*!
_class
loc:@dense_2/kernel*
dtype0
?
+Adam_1/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam_1/dense_2/kernel/v*!
_class
loc:@dense_2/kernel*
dtype0* 
_output_shapes
:
??
?
'Adam_1/dense_2/bias/v/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
Adam_1/dense_2/bias/vVarHandleOp*
_output_shapes
: *&
shared_nameAdam_1/dense_2/bias/v*
_class
loc:@dense_2/bias*
	container *
shape:?*
dtype0
?
6Adam_1/dense_2/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/dense_2/bias/v*
_class
loc:@dense_2/bias*
_output_shapes
: 
?
Adam_1/dense_2/bias/v/AssignAssignVariableOpAdam_1/dense_2/bias/v'Adam_1/dense_2/bias/v/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0
?
)Adam_1/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam_1/dense_2/bias/v*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes	
:?
?
9Adam_1/dense_3/kernel/v/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_3/kernel*
valueB"?   
   *
dtype0*
_output_shapes
:
?
/Adam_1/dense_3/kernel/v/Initializer/zeros/ConstConst*!
_class
loc:@dense_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)Adam_1/dense_3/kernel/v/Initializer/zerosFill9Adam_1/dense_3/kernel/v/Initializer/zeros/shape_as_tensor/Adam_1/dense_3/kernel/v/Initializer/zeros/Const*!
_class
loc:@dense_3/kernel*

index_type0*
_output_shapes
:	?
*
T0
?
Adam_1/dense_3/kernel/vVarHandleOp*!
_class
loc:@dense_3/kernel*
	container *
shape:	?
*
dtype0*
_output_shapes
: *(
shared_nameAdam_1/dense_3/kernel/v
?
8Adam_1/dense_3/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/dense_3/kernel/v*
_output_shapes
: *!
_class
loc:@dense_3/kernel
?
Adam_1/dense_3/kernel/v/AssignAssignVariableOpAdam_1/dense_3/kernel/v)Adam_1/dense_3/kernel/v/Initializer/zeros*!
_class
loc:@dense_3/kernel*
dtype0
?
+Adam_1/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam_1/dense_3/kernel/v*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:	?

?
'Adam_1/dense_3/bias/v/Initializer/zerosConst*
_class
loc:@dense_3/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
Adam_1/dense_3/bias/vVarHandleOp*
dtype0*
_output_shapes
: *&
shared_nameAdam_1/dense_3/bias/v*
_class
loc:@dense_3/bias*
	container *
shape:

?
6Adam_1/dense_3/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/dense_3/bias/v*
_class
loc:@dense_3/bias*
_output_shapes
: 
?
Adam_1/dense_3/bias/v/AssignAssignVariableOpAdam_1/dense_3/bias/v'Adam_1/dense_3/bias/v/Initializer/zeros*
_class
loc:@dense_3/bias*
dtype0
?
)Adam_1/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam_1/dense_3/bias/v*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:

l
'Adam_1/Adam/update_dense_2/kernel/ConstConst*
_output_shapes
: *
valueB
 *???3*
dtype0
t
0Adam_1/Adam/update_dense_2/kernel/ReadVariableOpReadVariableOpAdam_1/iter*
dtype0	*
_output_shapes
: 
i
'Adam_1/Adam/update_dense_2/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
%Adam_1/Adam/update_dense_2/kernel/addAdd0Adam_1/Adam/update_dense_2/kernel/ReadVariableOp'Adam_1/Adam/update_dense_2/kernel/add/y*
_output_shapes
: *
T0	
?
&Adam_1/Adam/update_dense_2/kernel/CastCast%Adam_1/Adam/update_dense_2/kernel/add*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
z
4Adam_1/Adam/update_dense_2/kernel/Pow/ReadVariableOpReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
?
%Adam_1/Adam/update_dense_2/kernel/PowPow4Adam_1/Adam/update_dense_2/kernel/Pow/ReadVariableOp&Adam_1/Adam/update_dense_2/kernel/Cast*
T0*
_output_shapes
: 
|
6Adam_1/Adam/update_dense_2/kernel/Pow_1/ReadVariableOpReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
?
'Adam_1/Adam/update_dense_2/kernel/Pow_1Pow6Adam_1/Adam/update_dense_2/kernel/Pow_1/ReadVariableOp&Adam_1/Adam/update_dense_2/kernel/Cast*
T0*
_output_shapes
: 
?
BAdam_1/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam_1/learning_rate*
_output_shapes
: *
dtype0
?
DAdam_1/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
?
DAdam_1/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
?
3Adam_1/Adam/update_dense_2/kernel/ResourceApplyAdamResourceApplyAdamdense_2/kernelAdam_1/dense_2/kernel/mAdam_1/dense_2/kernel/v%Adam_1/Adam/update_dense_2/kernel/Pow'Adam_1/Adam/update_dense_2/kernel/Pow_1BAdam_1/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOpDAdam_1/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOp_1DAdam_1/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOp_2'Adam_1/Adam/update_dense_2/kernel/Const-Adam_1/gradients/dense_2/MatMul_grad/MatMul_1*
use_nesterov( *
use_locking(*
T0
j
%Adam_1/Adam/update_dense_2/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
r
.Adam_1/Adam/update_dense_2/bias/ReadVariableOpReadVariableOpAdam_1/iter*
dtype0	*
_output_shapes
: 
g
%Adam_1/Adam/update_dense_2/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
#Adam_1/Adam/update_dense_2/bias/addAdd.Adam_1/Adam/update_dense_2/bias/ReadVariableOp%Adam_1/Adam/update_dense_2/bias/add/y*
_output_shapes
: *
T0	
?
$Adam_1/Adam/update_dense_2/bias/CastCast#Adam_1/Adam/update_dense_2/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
x
2Adam_1/Adam/update_dense_2/bias/Pow/ReadVariableOpReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
?
#Adam_1/Adam/update_dense_2/bias/PowPow2Adam_1/Adam/update_dense_2/bias/Pow/ReadVariableOp$Adam_1/Adam/update_dense_2/bias/Cast*
_output_shapes
: *
T0
z
4Adam_1/Adam/update_dense_2/bias/Pow_1/ReadVariableOpReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
?
%Adam_1/Adam/update_dense_2/bias/Pow_1Pow4Adam_1/Adam/update_dense_2/bias/Pow_1/ReadVariableOp$Adam_1/Adam/update_dense_2/bias/Cast*
T0*
_output_shapes
: 
?
@Adam_1/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam_1/learning_rate*
dtype0*
_output_shapes
: 
?
BAdam_1/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
?
BAdam_1/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
?
1Adam_1/Adam/update_dense_2/bias/ResourceApplyAdamResourceApplyAdamdense_2/biasAdam_1/dense_2/bias/mAdam_1/dense_2/bias/v#Adam_1/Adam/update_dense_2/bias/Pow%Adam_1/Adam/update_dense_2/bias/Pow_1@Adam_1/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOpBAdam_1/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp_1BAdam_1/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp_2%Adam_1/Adam/update_dense_2/bias/Const1Adam_1/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
l
'Adam_1/Adam/update_dense_3/kernel/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
t
0Adam_1/Adam/update_dense_3/kernel/ReadVariableOpReadVariableOpAdam_1/iter*
_output_shapes
: *
dtype0	
i
'Adam_1/Adam/update_dense_3/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
%Adam_1/Adam/update_dense_3/kernel/addAdd0Adam_1/Adam/update_dense_3/kernel/ReadVariableOp'Adam_1/Adam/update_dense_3/kernel/add/y*
T0	*
_output_shapes
: 
?
&Adam_1/Adam/update_dense_3/kernel/CastCast%Adam_1/Adam/update_dense_3/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
z
4Adam_1/Adam/update_dense_3/kernel/Pow/ReadVariableOpReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
?
%Adam_1/Adam/update_dense_3/kernel/PowPow4Adam_1/Adam/update_dense_3/kernel/Pow/ReadVariableOp&Adam_1/Adam/update_dense_3/kernel/Cast*
_output_shapes
: *
T0
|
6Adam_1/Adam/update_dense_3/kernel/Pow_1/ReadVariableOpReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
?
'Adam_1/Adam/update_dense_3/kernel/Pow_1Pow6Adam_1/Adam/update_dense_3/kernel/Pow_1/ReadVariableOp&Adam_1/Adam/update_dense_3/kernel/Cast*
_output_shapes
: *
T0
?
BAdam_1/Adam/update_dense_3/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam_1/learning_rate*
dtype0*
_output_shapes
: 
?
DAdam_1/Adam/update_dense_3/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
?
DAdam_1/Adam/update_dense_3/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
?
3Adam_1/Adam/update_dense_3/kernel/ResourceApplyAdamResourceApplyAdamdense_3/kernelAdam_1/dense_3/kernel/mAdam_1/dense_3/kernel/v%Adam_1/Adam/update_dense_3/kernel/Pow'Adam_1/Adam/update_dense_3/kernel/Pow_1BAdam_1/Adam/update_dense_3/kernel/ResourceApplyAdam/ReadVariableOpDAdam_1/Adam/update_dense_3/kernel/ResourceApplyAdam/ReadVariableOp_1DAdam_1/Adam/update_dense_3/kernel/ResourceApplyAdam/ReadVariableOp_2'Adam_1/Adam/update_dense_3/kernel/Const-Adam_1/gradients/dense_3/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
j
%Adam_1/Adam/update_dense_3/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
r
.Adam_1/Adam/update_dense_3/bias/ReadVariableOpReadVariableOpAdam_1/iter*
dtype0	*
_output_shapes
: 
g
%Adam_1/Adam/update_dense_3/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
#Adam_1/Adam/update_dense_3/bias/addAdd.Adam_1/Adam/update_dense_3/bias/ReadVariableOp%Adam_1/Adam/update_dense_3/bias/add/y*
_output_shapes
: *
T0	
?
$Adam_1/Adam/update_dense_3/bias/CastCast#Adam_1/Adam/update_dense_3/bias/add*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
x
2Adam_1/Adam/update_dense_3/bias/Pow/ReadVariableOpReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
?
#Adam_1/Adam/update_dense_3/bias/PowPow2Adam_1/Adam/update_dense_3/bias/Pow/ReadVariableOp$Adam_1/Adam/update_dense_3/bias/Cast*
T0*
_output_shapes
: 
z
4Adam_1/Adam/update_dense_3/bias/Pow_1/ReadVariableOpReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
?
%Adam_1/Adam/update_dense_3/bias/Pow_1Pow4Adam_1/Adam/update_dense_3/bias/Pow_1/ReadVariableOp$Adam_1/Adam/update_dense_3/bias/Cast*
_output_shapes
: *
T0
?
@Adam_1/Adam/update_dense_3/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam_1/learning_rate*
dtype0*
_output_shapes
: 
?
BAdam_1/Adam/update_dense_3/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
?
BAdam_1/Adam/update_dense_3/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
?
1Adam_1/Adam/update_dense_3/bias/ResourceApplyAdamResourceApplyAdamdense_3/biasAdam_1/dense_3/bias/mAdam_1/dense_3/bias/v#Adam_1/Adam/update_dense_3/bias/Pow%Adam_1/Adam/update_dense_3/bias/Pow_1@Adam_1/Adam/update_dense_3/bias/ResourceApplyAdam/ReadVariableOpBAdam_1/Adam/update_dense_3/bias/ResourceApplyAdam/ReadVariableOp_1BAdam_1/Adam/update_dense_3/bias/ResourceApplyAdam/ReadVariableOp_2%Adam_1/Adam/update_dense_3/bias/Const1Adam_1/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
?
Adam_1/Adam/ConstConst2^Adam_1/Adam/update_dense_2/bias/ResourceApplyAdam4^Adam_1/Adam/update_dense_2/kernel/ResourceApplyAdam2^Adam_1/Adam/update_dense_3/bias/ResourceApplyAdam4^Adam_1/Adam/update_dense_3/kernel/ResourceApplyAdam*
_output_shapes
: *
value	B	 R*
dtype0	
c
Adam_1/Adam/AssignAddVariableOpAssignAddVariableOpAdam_1/iterAdam_1/Adam/Const*
dtype0	
?
Adam_1/Adam/ReadVariableOpReadVariableOpAdam_1/iter ^Adam_1/Adam/AssignAddVariableOp2^Adam_1/Adam/update_dense_2/bias/ResourceApplyAdam4^Adam_1/Adam/update_dense_2/kernel/ResourceApplyAdam2^Adam_1/Adam/update_dense_3/bias/ResourceApplyAdam4^Adam_1/Adam/update_dense_3/kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: 
L
training_3/group_depsNoOp ^Adam_1/Adam/AssignAddVariableOp^loss_1/mul
N
Placeholder_2Placeholder*
dtype0*
_output_shapes
: *
shape: 
K
AssignVariableOp_2AssignVariableOptotal_1Placeholder_2*
dtype0
e
ReadVariableOp_2ReadVariableOptotal_1^AssignVariableOp_2*
_output_shapes
: *
dtype0
N
Placeholder_3Placeholder*
shape: *
dtype0*
_output_shapes
: 
K
AssignVariableOp_3AssignVariableOpcount_1Placeholder_3*
dtype0
e
ReadVariableOp_3ReadVariableOpcount_1^AssignVariableOp_3*
_output_shapes
: *
dtype0
P
VarIsInitializedOp_19VarIsInitializedOpAdam_1/iter*
_output_shapes
: 
Q
VarIsInitializedOp_20VarIsInitializedOpdense_3/bias*
_output_shapes
: 
\
VarIsInitializedOp_21VarIsInitializedOpAdam_1/dense_2/kernel/v*
_output_shapes
: 
Q
VarIsInitializedOp_22VarIsInitializedOpAdam_1/decay*
_output_shapes
: 
Z
VarIsInitializedOp_23VarIsInitializedOpAdam_1/dense_3/bias/v*
_output_shapes
: 
S
VarIsInitializedOp_24VarIsInitializedOpdense_3/kernel*
_output_shapes
: 
L
VarIsInitializedOp_25VarIsInitializedOpcount_1*
_output_shapes
: 
Z
VarIsInitializedOp_26VarIsInitializedOpAdam_1/dense_3/bias/m*
_output_shapes
: 
\
VarIsInitializedOp_27VarIsInitializedOpAdam_1/dense_3/kernel/m*
_output_shapes
: 
L
VarIsInitializedOp_28VarIsInitializedOptotal_1*
_output_shapes
: 
R
VarIsInitializedOp_29VarIsInitializedOpAdam_1/beta_2*
_output_shapes
: 
R
VarIsInitializedOp_30VarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 
\
VarIsInitializedOp_31VarIsInitializedOpAdam_1/dense_2/kernel/m*
_output_shapes
: 
Z
VarIsInitializedOp_32VarIsInitializedOpAdam_1/dense_2/bias/v*
_output_shapes
: 
Z
VarIsInitializedOp_33VarIsInitializedOpAdam_1/dense_2/bias/m*
_output_shapes
: 
Q
VarIsInitializedOp_34VarIsInitializedOpdense_2/bias*
_output_shapes
: 
\
VarIsInitializedOp_35VarIsInitializedOpAdam_1/dense_3/kernel/v*
_output_shapes
: 
S
VarIsInitializedOp_36VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
Y
VarIsInitializedOp_37VarIsInitializedOpAdam_1/learning_rate*
_output_shapes
: 
?
init_1NoOp^Adam_1/beta_1/Assign^Adam_1/beta_2/Assign^Adam_1/decay/Assign^Adam_1/dense_2/bias/m/Assign^Adam_1/dense_2/bias/v/Assign^Adam_1/dense_2/kernel/m/Assign^Adam_1/dense_2/kernel/v/Assign^Adam_1/dense_3/bias/m/Assign^Adam_1/dense_3/bias/v/Assign^Adam_1/dense_3/kernel/m/Assign^Adam_1/dense_3/kernel/v/Assign^Adam_1/iter/Assign^Adam_1/learning_rate/Assign^count_1/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign^total_1/Assign
.
predict_1/group_depsNoOp^dense_3/Softmax

conv2d_inputPlaceholder*
dtype0*/
_output_shapes
:?????????*$
shape:?????????
?
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"         @   * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
?
,conv2d/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *:??* 
_class
loc:@conv2d/kernel*
dtype0
?
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *:??* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
?
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:@*

seed *
T0* 
_class
loc:@conv2d/kernel*
seed2 
?
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
T0
?
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*&
_output_shapes
:@*
T0* 
_class
loc:@conv2d/kernel
?
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*&
_output_shapes
:@*
T0* 
_class
loc:@conv2d/kernel
?
conv2d/kernelVarHandleOp*
shared_nameconv2d/kernel* 
_class
loc:@conv2d/kernel*
	container *
shape:@*
dtype0*
_output_shapes
: 
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
?
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform* 
_class
loc:@conv2d/kernel*
dtype0
?
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@* 
_class
loc:@conv2d/kernel*
dtype0
?
conv2d/bias/Initializer/zerosConst*
valueB@*    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:@
?
conv2d/biasVarHandleOp*
shared_nameconv2d/bias*
_class
loc:@conv2d/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 

conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0
?
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:@
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:@
?
conv2d/Conv2DConv2Dconv2d_inputconv2d/Conv2D/ReadVariableOp*/
_output_shapes
:?????????@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME
e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:@
?
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:?????????@
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:?????????@
?
max_pooling2d/MaxPoolMaxPoolconv2d/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:?????????@
d
flatten_2/ShapeShapemax_pooling2d/MaxPool*
_output_shapes
:*
T0*
out_type0
g
flatten_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
i
flatten_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
flatten_2/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
flatten_2/strided_sliceStridedSliceflatten_2/Shapeflatten_2/strided_slice/stackflatten_2/strided_slice/stack_1flatten_2/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
d
flatten_2/Reshape/shape/1Const*
_output_shapes
: *
valueB :
?????????*
dtype0
?
flatten_2/Reshape/shapePackflatten_2/strided_sliceflatten_2/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
?
flatten_2/ReshapeReshapemax_pooling2d/MaxPoolflatten_2/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:??????????b
?
/dense_4/kernel/Initializer/random_uniform/shapeConst*
valueB" 1  ?   *!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
:
?
-dense_4/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *;뱼*!
_class
loc:@dense_4/kernel*
dtype0
?
-dense_4/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *;??<*!
_class
loc:@dense_4/kernel*
dtype0
?
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
?b?*

seed *
T0*!
_class
loc:@dense_4/kernel*
seed2 
?
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_4/kernel
?
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_4/kernel* 
_output_shapes
:
?b?*
T0
?
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel* 
_output_shapes
:
?b?
?
dense_4/kernelVarHandleOp*!
_class
loc:@dense_4/kernel*
	container *
shape:
?b?*
dtype0*
_output_shapes
: *
shared_namedense_4/kernel
m
/dense_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_4/kernel*
_output_shapes
: 
?
dense_4/kernel/AssignAssignVariableOpdense_4/kernel)dense_4/kernel/Initializer/random_uniform*!
_class
loc:@dense_4/kernel*
dtype0
?
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*!
_class
loc:@dense_4/kernel*
dtype0* 
_output_shapes
:
?b?
?
dense_4/bias/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense_4/bias*
dtype0*
_output_shapes	
:?
?
dense_4/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_4/bias*
_class
loc:@dense_4/bias*
	container *
shape:?
i
-dense_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_4/bias*
_output_shapes
: 
?
dense_4/bias/AssignAssignVariableOpdense_4/biasdense_4/bias/Initializer/zeros*
_class
loc:@dense_4/bias*
dtype0
?
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_class
loc:@dense_4/bias*
dtype0*
_output_shapes	
:?
n
dense_4/MatMul/ReadVariableOpReadVariableOpdense_4/kernel*
dtype0* 
_output_shapes
:
?b?
?
dense_4/MatMulMatMulflatten_2/Reshapedense_4/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( *
T0
h
dense_4/BiasAdd/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:?*
dtype0
?
dense_4/BiasAddBiasAdddense_4/MatMuldense_4/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:??????????
X
dense_4/ReluReludense_4/BiasAdd*(
_output_shapes
:??????????*
T0
?
/dense_5/kernel/Initializer/random_uniform/shapeConst*
valueB"?   
   *!
_class
loc:@dense_5/kernel*
dtype0*
_output_shapes
:
?
-dense_5/kernel/Initializer/random_uniform/minConst*
valueB
 *t?7?*!
_class
loc:@dense_5/kernel*
dtype0*
_output_shapes
: 
?
-dense_5/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *t?7>*!
_class
loc:@dense_5/kernel*
dtype0
?
7dense_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_5/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_5/kernel*
seed2 *
dtype0*
_output_shapes
:	?
*

seed *
T0
?
-dense_5/kernel/Initializer/random_uniform/subSub-dense_5/kernel/Initializer/random_uniform/max-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes
: 
?
-dense_5/kernel/Initializer/random_uniform/mulMul7dense_5/kernel/Initializer/random_uniform/RandomUniform-dense_5/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes
:	?

?
)dense_5/kernel/Initializer/random_uniformAdd-dense_5/kernel/Initializer/random_uniform/mul-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes
:	?

?
dense_5/kernelVarHandleOp*
_output_shapes
: *
shared_namedense_5/kernel*!
_class
loc:@dense_5/kernel*
	container *
shape:	?
*
dtype0
m
/dense_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_5/kernel*
_output_shapes
: 
?
dense_5/kernel/AssignAssignVariableOpdense_5/kernel)dense_5/kernel/Initializer/random_uniform*!
_class
loc:@dense_5/kernel*
dtype0
?
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	?
*!
_class
loc:@dense_5/kernel*
dtype0
?
dense_5/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@dense_5/bias*
dtype0*
_output_shapes
:

?
dense_5/biasVarHandleOp*
_class
loc:@dense_5/bias*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namedense_5/bias
i
-dense_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_5/bias*
_output_shapes
: 
?
dense_5/bias/AssignAssignVariableOpdense_5/biasdense_5/bias/Initializer/zeros*
_class
loc:@dense_5/bias*
dtype0
?
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_class
loc:@dense_5/bias*
dtype0*
_output_shapes
:

m
dense_5/MatMul/ReadVariableOpReadVariableOpdense_5/kernel*
dtype0*
_output_shapes
:	?

?
dense_5/MatMulMatMuldense_4/Reludense_5/MatMul/ReadVariableOp*'
_output_shapes
:?????????
*
transpose_a( *
transpose_b( *
T0
g
dense_5/BiasAdd/ReadVariableOpReadVariableOpdense_5/bias*
dtype0*
_output_shapes
:

?
dense_5/BiasAddBiasAdddense_5/MatMuldense_5/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????
*
T0*
data_formatNHWC
]
dense_5/SoftmaxSoftmaxdense_5/BiasAdd*'
_output_shapes
:?????????
*
T0
?
dense_5_targetPlaceholder*0
_output_shapes
:??????????????????*%
shape:??????????????????*
dtype0
z
total_2/Initializer/zerosConst*
valueB
 *    *
_class
loc:@total_2*
dtype0*
_output_shapes
: 
?
total_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	total_2*
_class
loc:@total_2*
	container *
shape: 
_
(total_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_2*
_output_shapes
: 
o
total_2/AssignAssignVariableOptotal_2total_2/Initializer/zeros*
_class
loc:@total_2*
dtype0
w
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_class
loc:@total_2*
dtype0*
_output_shapes
: 
z
count_2/Initializer/zerosConst*
valueB
 *    *
_class
loc:@count_2*
dtype0*
_output_shapes
: 
?
count_2VarHandleOp*
shared_name	count_2*
_class
loc:@count_2*
	container *
shape: *
dtype0*
_output_shapes
: 
_
(count_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_2*
_output_shapes
: 
o
count_2/AssignAssignVariableOpcount_2count_2/Initializer/zeros*
_class
loc:@count_2*
dtype0
w
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_class
loc:@count_2*
dtype0*
_output_shapes
: 
~
metrics_4/acc/SqueezeSqueezedense_5_target*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????
i
metrics_4/acc/ArgMax/dimensionConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
metrics_4/acc/ArgMaxArgMaxdense_5/Softmaxmetrics_4/acc/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:?????????*

Tidx0
}
metrics_4/acc/CastCastmetrics_4/acc/ArgMax*#
_output_shapes
:?????????*

DstT0*

SrcT0	*
Truncate( 
u
metrics_4/acc/EqualEqualmetrics_4/acc/Squeezemetrics_4/acc/Cast*
T0*#
_output_shapes
:?????????
~
metrics_4/acc/Cast_1Castmetrics_4/acc/Equal*#
_output_shapes
:?????????*

DstT0*

SrcT0
*
Truncate( 
]
metrics_4/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
metrics_4/acc/SumSummetrics_4/acc/Cast_1metrics_4/acc/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
a
!metrics_4/acc/AssignAddVariableOpAssignAddVariableOptotal_2metrics_4/acc/Sum*
dtype0
?
metrics_4/acc/ReadVariableOpReadVariableOptotal_2"^metrics_4/acc/AssignAddVariableOp^metrics_4/acc/Sum*
dtype0*
_output_shapes
: 
a
metrics_4/acc/SizeSizemetrics_4/acc/Cast_1*
T0*
out_type0*
_output_shapes
: 
p
metrics_4/acc/Cast_2Castmetrics_4/acc/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
?
#metrics_4/acc/AssignAddVariableOp_1AssignAddVariableOpcount_2metrics_4/acc/Cast_2"^metrics_4/acc/AssignAddVariableOp*
dtype0
?
metrics_4/acc/ReadVariableOp_1ReadVariableOpcount_2"^metrics_4/acc/AssignAddVariableOp$^metrics_4/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
'metrics_4/acc/div_no_nan/ReadVariableOpReadVariableOptotal_2$^metrics_4/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
)metrics_4/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount_2$^metrics_4/acc/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
metrics_4/acc/div_no_nanDivNoNan'metrics_4/acc/div_no_nan/ReadVariableOp)metrics_4/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
]
metrics_4/acc/IdentityIdentitymetrics_4/acc/div_no_nan*
T0*
_output_shapes
: 
t
!loss_2/dense_5_loss/Reshape/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
?
loss_2/dense_5_loss/ReshapeReshapedense_5_target!loss_2/dense_5_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
loss_2/dense_5_loss/CastCastloss_2/dense_5_loss/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:?????????*

DstT0	
t
#loss_2/dense_5_loss/Reshape_1/shapeConst*
valueB"????
   *
dtype0*
_output_shapes
:
?
loss_2/dense_5_loss/Reshape_1Reshapedense_5/BiasAdd#loss_2/dense_5_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
=loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss_2/dense_5_loss/Cast*
out_type0*
_output_shapes
:*
T0	
?
[loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss_2/dense_5_loss/Reshape_1loss_2/dense_5_loss/Cast*
T0*6
_output_shapes$
":?????????:?????????
*
Tlabels0	
l
'loss_2/dense_5_loss/weighted_loss/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Vloss_2/dense_5_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
?
Uloss_2/dense_5_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
value	B : *
dtype0
?
Uloss_2/dense_5_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShape[loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
?
Tloss_2/dense_5_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
l
dloss_2/dense_5_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
?
Closs_2/dense_5_loss/weighted_loss/broadcast_weights/ones_like/ShapeShape[loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitse^loss_2/dense_5_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
out_type0*
_output_shapes
:*
T0
?
Closs_2/dense_5_loss/weighted_loss/broadcast_weights/ones_like/ConstConste^loss_2/dense_5_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
=loss_2/dense_5_loss/weighted_loss/broadcast_weights/ones_likeFillCloss_2/dense_5_loss/weighted_loss/broadcast_weights/ones_like/ShapeCloss_2/dense_5_loss/weighted_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:?????????
?
3loss_2/dense_5_loss/weighted_loss/broadcast_weightsMul'loss_2/dense_5_loss/weighted_loss/Const=loss_2/dense_5_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:?????????
?
%loss_2/dense_5_loss/weighted_loss/MulMul[loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits3loss_2/dense_5_loss/weighted_loss/broadcast_weights*#
_output_shapes
:?????????*
T0
c
loss_2/dense_5_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
loss_2/dense_5_loss/SumSum%loss_2/dense_5_loss/weighted_loss/Mulloss_2/dense_5_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
?
 loss_2/dense_5_loss/num_elementsSize%loss_2/dense_5_loss/weighted_loss/Mul*
out_type0*
_output_shapes
: *
T0
?
%loss_2/dense_5_loss/num_elements/CastCast loss_2/dense_5_loss/num_elements*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
^
loss_2/dense_5_loss/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
?
loss_2/dense_5_loss/Sum_1Sumloss_2/dense_5_loss/Sumloss_2/dense_5_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
?
loss_2/dense_5_loss/valueDivNoNanloss_2/dense_5_loss/Sum_1%loss_2/dense_5_loss/num_elements/Cast*
T0*
_output_shapes
: 
Q
loss_2/mul/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
[

loss_2/mulMulloss_2/mul/xloss_2/dense_5_loss/value*
_output_shapes
: *
T0
Y
Adam_2/gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
_
Adam_2/gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Adam_2/gradients/FillFillAdam_2/gradients/ShapeAdam_2/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
~
$Adam_2/gradients/loss_2/mul_grad/MulMulAdam_2/gradients/Fillloss_2/dense_5_loss/value*
_output_shapes
: *
T0
s
&Adam_2/gradients/loss_2/mul_grad/Mul_1MulAdam_2/gradients/Fillloss_2/mul/x*
T0*
_output_shapes
: 
x
5Adam_2/gradients/loss_2/dense_5_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
z
7Adam_2/gradients/loss_2/dense_5_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
?
EAdam_2/gradients/loss_2/dense_5_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs5Adam_2/gradients/loss_2/dense_5_loss/value_grad/Shape7Adam_2/gradients/loss_2/dense_5_loss/value_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
:Adam_2/gradients/loss_2/dense_5_loss/value_grad/div_no_nanDivNoNan&Adam_2/gradients/loss_2/mul_grad/Mul_1%loss_2/dense_5_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
3Adam_2/gradients/loss_2/dense_5_loss/value_grad/SumSum:Adam_2/gradients/loss_2/dense_5_loss/value_grad/div_no_nanEAdam_2/gradients/loss_2/dense_5_loss/value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
?
7Adam_2/gradients/loss_2/dense_5_loss/value_grad/ReshapeReshape3Adam_2/gradients/loss_2/dense_5_loss/value_grad/Sum5Adam_2/gradients/loss_2/dense_5_loss/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
v
3Adam_2/gradients/loss_2/dense_5_loss/value_grad/NegNegloss_2/dense_5_loss/Sum_1*
T0*
_output_shapes
: 
?
<Adam_2/gradients/loss_2/dense_5_loss/value_grad/div_no_nan_1DivNoNan3Adam_2/gradients/loss_2/dense_5_loss/value_grad/Neg%loss_2/dense_5_loss/num_elements/Cast*
_output_shapes
: *
T0
?
<Adam_2/gradients/loss_2/dense_5_loss/value_grad/div_no_nan_2DivNoNan<Adam_2/gradients/loss_2/dense_5_loss/value_grad/div_no_nan_1%loss_2/dense_5_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
3Adam_2/gradients/loss_2/dense_5_loss/value_grad/mulMul&Adam_2/gradients/loss_2/mul_grad/Mul_1<Adam_2/gradients/loss_2/dense_5_loss/value_grad/div_no_nan_2*
_output_shapes
: *
T0
?
5Adam_2/gradients/loss_2/dense_5_loss/value_grad/Sum_1Sum3Adam_2/gradients/loss_2/dense_5_loss/value_grad/mulGAdam_2/gradients/loss_2/dense_5_loss/value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
?
9Adam_2/gradients/loss_2/dense_5_loss/value_grad/Reshape_1Reshape5Adam_2/gradients/loss_2/dense_5_loss/value_grad/Sum_17Adam_2/gradients/loss_2/dense_5_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
?
=Adam_2/gradients/loss_2/dense_5_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
?
7Adam_2/gradients/loss_2/dense_5_loss/Sum_1_grad/ReshapeReshape7Adam_2/gradients/loss_2/dense_5_loss/value_grad/Reshape=Adam_2/gradients/loss_2/dense_5_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
x
5Adam_2/gradients/loss_2/dense_5_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
?
4Adam_2/gradients/loss_2/dense_5_loss/Sum_1_grad/TileTile7Adam_2/gradients/loss_2/dense_5_loss/Sum_1_grad/Reshape5Adam_2/gradients/loss_2/dense_5_loss/Sum_1_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 
?
;Adam_2/gradients/loss_2/dense_5_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
?
5Adam_2/gradients/loss_2/dense_5_loss/Sum_grad/ReshapeReshape4Adam_2/gradients/loss_2/dense_5_loss/Sum_1_grad/Tile;Adam_2/gradients/loss_2/dense_5_loss/Sum_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
?
3Adam_2/gradients/loss_2/dense_5_loss/Sum_grad/ShapeShape%loss_2/dense_5_loss/weighted_loss/Mul*
T0*
out_type0*
_output_shapes
:
?
2Adam_2/gradients/loss_2/dense_5_loss/Sum_grad/TileTile5Adam_2/gradients/loss_2/dense_5_loss/Sum_grad/Reshape3Adam_2/gradients/loss_2/dense_5_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:?????????
?
AAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/ShapeShape[loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0
?
CAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/Shape_1Shape3loss_2/dense_5_loss/weighted_loss/broadcast_weights*
_output_shapes
:*
T0*
out_type0
?
QAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsAAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/ShapeCAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
?Adam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/MulMul2Adam_2/gradients/loss_2/dense_5_loss/Sum_grad/Tile3loss_2/dense_5_loss/weighted_loss/broadcast_weights*#
_output_shapes
:?????????*
T0
?
?Adam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/SumSum?Adam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/MulQAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
CAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/ReshapeReshape?Adam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/SumAAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/Shape*
Tshape0*#
_output_shapes
:?????????*
T0
?
AAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/Mul_1Mul[loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits2Adam_2/gradients/loss_2/dense_5_loss/Sum_grad/Tile*#
_output_shapes
:?????????*
T0
?
AAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/Sum_1SumAAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/Mul_1SAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
EAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/Reshape_1ReshapeAAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/Sum_1CAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:?????????
?
Adam_2/gradients/zeros_like	ZerosLike]loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:?????????
*
T0
?
?Adam_2/gradients/loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient]loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:?????????
*?
message??Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
?
?Adam_2/gradients/loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
|Adam_2/gradients/loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsCAdam_2/gradients/loss_2/dense_5_loss/weighted_loss/Mul_grad/Reshape?Adam_2/gradients/loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:?????????*

Tdim0*
T0
?
uAdam_2/gradients/loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul|Adam_2/gradients/loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims?Adam_2/gradients/loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:?????????

?
9Adam_2/gradients/loss_2/dense_5_loss/Reshape_1_grad/ShapeShapedense_5/BiasAdd*
_output_shapes
:*
T0*
out_type0
?
;Adam_2/gradients/loss_2/dense_5_loss/Reshape_1_grad/ReshapeReshapeuAdam_2/gradients/loss_2/dense_5_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul9Adam_2/gradients/loss_2/dense_5_loss/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
1Adam_2/gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad;Adam_2/gradients/loss_2/dense_5_loss/Reshape_1_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:

?
+Adam_2/gradients/dense_5/MatMul_grad/MatMulMatMul;Adam_2/gradients/loss_2/dense_5_loss/Reshape_1_grad/Reshapedense_5/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
transpose_a( *
transpose_b(*
T0
?
-Adam_2/gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_4/Relu;Adam_2/gradients/loss_2/dense_5_loss/Reshape_1_grad/Reshape*
T0*
_output_shapes
:	?
*
transpose_a(*
transpose_b( 
?
+Adam_2/gradients/dense_4/Relu_grad/ReluGradReluGrad+Adam_2/gradients/dense_5/MatMul_grad/MatMuldense_4/Relu*(
_output_shapes
:??????????*
T0
?
1Adam_2/gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad+Adam_2/gradients/dense_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:?
?
+Adam_2/gradients/dense_4/MatMul_grad/MatMulMatMul+Adam_2/gradients/dense_4/Relu_grad/ReluGraddense_4/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????b*
transpose_a( *
transpose_b(
?
-Adam_2/gradients/dense_4/MatMul_grad/MatMul_1MatMulflatten_2/Reshape+Adam_2/gradients/dense_4/Relu_grad/ReluGrad*
T0* 
_output_shapes
:
?b?*
transpose_a(*
transpose_b( 
?
-Adam_2/gradients/flatten_2/Reshape_grad/ShapeShapemax_pooling2d/MaxPool*
T0*
out_type0*
_output_shapes
:
?
/Adam_2/gradients/flatten_2/Reshape_grad/ReshapeReshape+Adam_2/gradients/dense_4/MatMul_grad/MatMul-Adam_2/gradients/flatten_2/Reshape_grad/Shape*
Tshape0*/
_output_shapes
:?????????@*
T0
?
7Adam_2/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d/Relumax_pooling2d/MaxPool/Adam_2/gradients/flatten_2/Reshape_grad/Reshape*/
_output_shapes
:?????????@*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID
?
*Adam_2/gradients/conv2d/Relu_grad/ReluGradReluGrad7Adam_2/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d/Relu*
T0*/
_output_shapes
:?????????@
?
0Adam_2/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam_2/gradients/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
?
*Adam_2/gradients/conv2d/Conv2D_grad/ShapeNShapeNconv2d_inputconv2d/Conv2D/ReadVariableOp* 
_output_shapes
::*
T0*
out_type0*
N
?
7Adam_2/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*Adam_2/gradients/conv2d/Conv2D_grad/ShapeNconv2d/Conv2D/ReadVariableOp*Adam_2/gradients/conv2d/Relu_grad/ReluGrad*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*/
_output_shapes
:?????????
?
8Adam_2/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_input,Adam_2/gradients/conv2d/Conv2D_grad/ShapeN:1*Adam_2/gradients/conv2d/Relu_grad/ReluGrad*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*&
_output_shapes
:@

Adam_2/iter/Initializer/zerosConst*
_output_shapes
: *
value	B	 R *
_class
loc:@Adam_2/iter*
dtype0	
?
Adam_2/iterVarHandleOp*
shared_nameAdam_2/iter*
_class
loc:@Adam_2/iter*
	container *
shape: *
dtype0	*
_output_shapes
: 
g
,Adam_2/iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/iter*
_output_shapes
: 

Adam_2/iter/AssignAssignVariableOpAdam_2/iterAdam_2/iter/Initializer/zeros*
_class
loc:@Adam_2/iter*
dtype0	
?
Adam_2/iter/Read/ReadVariableOpReadVariableOpAdam_2/iter*
_class
loc:@Adam_2/iter*
dtype0	*
_output_shapes
: 
?
'Adam_2/beta_1/Initializer/initial_valueConst*
valueB
 *fff?* 
_class
loc:@Adam_2/beta_1*
dtype0*
_output_shapes
: 
?
Adam_2/beta_1VarHandleOp*
shared_nameAdam_2/beta_1* 
_class
loc:@Adam_2/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: 
k
.Adam_2/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/beta_1*
_output_shapes
: 
?
Adam_2/beta_1/AssignAssignVariableOpAdam_2/beta_1'Adam_2/beta_1/Initializer/initial_value* 
_class
loc:@Adam_2/beta_1*
dtype0
?
!Adam_2/beta_1/Read/ReadVariableOpReadVariableOpAdam_2/beta_1* 
_class
loc:@Adam_2/beta_1*
dtype0*
_output_shapes
: 
?
'Adam_2/beta_2/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *w??* 
_class
loc:@Adam_2/beta_2*
dtype0
?
Adam_2/beta_2VarHandleOp* 
_class
loc:@Adam_2/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_2/beta_2
k
.Adam_2/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/beta_2*
_output_shapes
: 
?
Adam_2/beta_2/AssignAssignVariableOpAdam_2/beta_2'Adam_2/beta_2/Initializer/initial_value* 
_class
loc:@Adam_2/beta_2*
dtype0
?
!Adam_2/beta_2/Read/ReadVariableOpReadVariableOpAdam_2/beta_2*
_output_shapes
: * 
_class
loc:@Adam_2/beta_2*
dtype0
?
&Adam_2/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam_2/decay*
dtype0*
_output_shapes
: 
?
Adam_2/decayVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_2/decay*
_class
loc:@Adam_2/decay
i
-Adam_2/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/decay*
_output_shapes
: 
?
Adam_2/decay/AssignAssignVariableOpAdam_2/decay&Adam_2/decay/Initializer/initial_value*
_class
loc:@Adam_2/decay*
dtype0
?
 Adam_2/decay/Read/ReadVariableOpReadVariableOpAdam_2/decay*
_class
loc:@Adam_2/decay*
dtype0*
_output_shapes
: 
?
.Adam_2/learning_rate/Initializer/initial_valueConst*
valueB
 *o?:*'
_class
loc:@Adam_2/learning_rate*
dtype0*
_output_shapes
: 
?
Adam_2/learning_rateVarHandleOp*
dtype0*
_output_shapes
: *%
shared_nameAdam_2/learning_rate*'
_class
loc:@Adam_2/learning_rate*
	container *
shape: 
y
5Adam_2/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/learning_rate*
_output_shapes
: 
?
Adam_2/learning_rate/AssignAssignVariableOpAdam_2/learning_rate.Adam_2/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_2/learning_rate*
dtype0
?
(Adam_2/learning_rate/Read/ReadVariableOpReadVariableOpAdam_2/learning_rate*
_output_shapes
: *'
_class
loc:@Adam_2/learning_rate*
dtype0
?
(Adam_2/conv2d/kernel/m/Initializer/zerosConst* 
_class
loc:@conv2d/kernel*%
valueB@*    *
dtype0*&
_output_shapes
:@
?
Adam_2/conv2d/kernel/mVarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *'
shared_nameAdam_2/conv2d/kernel/m* 
_class
loc:@conv2d/kernel
?
7Adam_2/conv2d/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/conv2d/kernel/m*
_output_shapes
: * 
_class
loc:@conv2d/kernel
?
Adam_2/conv2d/kernel/m/AssignAssignVariableOpAdam_2/conv2d/kernel/m(Adam_2/conv2d/kernel/m/Initializer/zeros* 
_class
loc:@conv2d/kernel*
dtype0
?
*Adam_2/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam_2/conv2d/kernel/m* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
:@
?
&Adam_2/conv2d/bias/m/Initializer/zerosConst*
_output_shapes
:@*
_class
loc:@conv2d/bias*
valueB@*    *
dtype0
?
Adam_2/conv2d/bias/mVarHandleOp*
dtype0*
_output_shapes
: *%
shared_nameAdam_2/conv2d/bias/m*
_class
loc:@conv2d/bias*
	container *
shape:@
?
5Adam_2/conv2d/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/conv2d/bias/m*
_class
loc:@conv2d/bias*
_output_shapes
: 
?
Adam_2/conv2d/bias/m/AssignAssignVariableOpAdam_2/conv2d/bias/m&Adam_2/conv2d/bias/m/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0
?
(Adam_2/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam_2/conv2d/bias/m*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:@
?
9Adam_2/dense_4/kernel/m/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*!
_class
loc:@dense_4/kernel*
valueB" 1  ?   *
dtype0
?
/Adam_2/dense_4/kernel/m/Initializer/zeros/ConstConst*!
_class
loc:@dense_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)Adam_2/dense_4/kernel/m/Initializer/zerosFill9Adam_2/dense_4/kernel/m/Initializer/zeros/shape_as_tensor/Adam_2/dense_4/kernel/m/Initializer/zeros/Const* 
_output_shapes
:
?b?*
T0*!
_class
loc:@dense_4/kernel*

index_type0
?
Adam_2/dense_4/kernel/mVarHandleOp*
	container *
shape:
?b?*
dtype0*
_output_shapes
: *(
shared_nameAdam_2/dense_4/kernel/m*!
_class
loc:@dense_4/kernel
?
8Adam_2/dense_4/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/dense_4/kernel/m*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
?
Adam_2/dense_4/kernel/m/AssignAssignVariableOpAdam_2/dense_4/kernel/m)Adam_2/dense_4/kernel/m/Initializer/zeros*!
_class
loc:@dense_4/kernel*
dtype0
?
+Adam_2/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam_2/dense_4/kernel/m*!
_class
loc:@dense_4/kernel*
dtype0* 
_output_shapes
:
?b?
?
'Adam_2/dense_4/bias/m/Initializer/zerosConst*
_class
loc:@dense_4/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
Adam_2/dense_4/bias/mVarHandleOp*
_output_shapes
: *&
shared_nameAdam_2/dense_4/bias/m*
_class
loc:@dense_4/bias*
	container *
shape:?*
dtype0
?
6Adam_2/dense_4/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/dense_4/bias/m*
_class
loc:@dense_4/bias*
_output_shapes
: 
?
Adam_2/dense_4/bias/m/AssignAssignVariableOpAdam_2/dense_4/bias/m'Adam_2/dense_4/bias/m/Initializer/zeros*
_class
loc:@dense_4/bias*
dtype0
?
)Adam_2/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam_2/dense_4/bias/m*
_class
loc:@dense_4/bias*
dtype0*
_output_shapes	
:?
?
9Adam_2/dense_5/kernel/m/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_5/kernel*
valueB"?   
   *
dtype0*
_output_shapes
:
?
/Adam_2/dense_5/kernel/m/Initializer/zeros/ConstConst*!
_class
loc:@dense_5/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)Adam_2/dense_5/kernel/m/Initializer/zerosFill9Adam_2/dense_5/kernel/m/Initializer/zeros/shape_as_tensor/Adam_2/dense_5/kernel/m/Initializer/zeros/Const*!
_class
loc:@dense_5/kernel*

index_type0*
_output_shapes
:	?
*
T0
?
Adam_2/dense_5/kernel/mVarHandleOp*(
shared_nameAdam_2/dense_5/kernel/m*!
_class
loc:@dense_5/kernel*
	container *
shape:	?
*
dtype0*
_output_shapes
: 
?
8Adam_2/dense_5/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/dense_5/kernel/m*
_output_shapes
: *!
_class
loc:@dense_5/kernel
?
Adam_2/dense_5/kernel/m/AssignAssignVariableOpAdam_2/dense_5/kernel/m)Adam_2/dense_5/kernel/m/Initializer/zeros*!
_class
loc:@dense_5/kernel*
dtype0
?
+Adam_2/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam_2/dense_5/kernel/m*!
_class
loc:@dense_5/kernel*
dtype0*
_output_shapes
:	?

?
'Adam_2/dense_5/bias/m/Initializer/zerosConst*
_class
loc:@dense_5/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
Adam_2/dense_5/bias/mVarHandleOp*&
shared_nameAdam_2/dense_5/bias/m*
_class
loc:@dense_5/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
?
6Adam_2/dense_5/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/dense_5/bias/m*
_class
loc:@dense_5/bias*
_output_shapes
: 
?
Adam_2/dense_5/bias/m/AssignAssignVariableOpAdam_2/dense_5/bias/m'Adam_2/dense_5/bias/m/Initializer/zeros*
_class
loc:@dense_5/bias*
dtype0
?
)Adam_2/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam_2/dense_5/bias/m*
_class
loc:@dense_5/bias*
dtype0*
_output_shapes
:

?
(Adam_2/conv2d/kernel/v/Initializer/zerosConst* 
_class
loc:@conv2d/kernel*%
valueB@*    *
dtype0*&
_output_shapes
:@
?
Adam_2/conv2d/kernel/vVarHandleOp*'
shared_nameAdam_2/conv2d/kernel/v* 
_class
loc:@conv2d/kernel*
	container *
shape:@*
dtype0*
_output_shapes
: 
?
7Adam_2/conv2d/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/conv2d/kernel/v*
_output_shapes
: * 
_class
loc:@conv2d/kernel
?
Adam_2/conv2d/kernel/v/AssignAssignVariableOpAdam_2/conv2d/kernel/v(Adam_2/conv2d/kernel/v/Initializer/zeros* 
_class
loc:@conv2d/kernel*
dtype0
?
*Adam_2/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam_2/conv2d/kernel/v* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
:@
?
&Adam_2/conv2d/bias/v/Initializer/zerosConst*
_class
loc:@conv2d/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
Adam_2/conv2d/bias/vVarHandleOp*
_output_shapes
: *%
shared_nameAdam_2/conv2d/bias/v*
_class
loc:@conv2d/bias*
	container *
shape:@*
dtype0
?
5Adam_2/conv2d/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/conv2d/bias/v*
_class
loc:@conv2d/bias*
_output_shapes
: 
?
Adam_2/conv2d/bias/v/AssignAssignVariableOpAdam_2/conv2d/bias/v&Adam_2/conv2d/bias/v/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0
?
(Adam_2/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam_2/conv2d/bias/v*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:@
?
9Adam_2/dense_4/kernel/v/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_4/kernel*
valueB" 1  ?   *
dtype0*
_output_shapes
:
?
/Adam_2/dense_4/kernel/v/Initializer/zeros/ConstConst*!
_class
loc:@dense_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)Adam_2/dense_4/kernel/v/Initializer/zerosFill9Adam_2/dense_4/kernel/v/Initializer/zeros/shape_as_tensor/Adam_2/dense_4/kernel/v/Initializer/zeros/Const*
T0*!
_class
loc:@dense_4/kernel*

index_type0* 
_output_shapes
:
?b?
?
Adam_2/dense_4/kernel/vVarHandleOp*
dtype0*
_output_shapes
: *(
shared_nameAdam_2/dense_4/kernel/v*!
_class
loc:@dense_4/kernel*
	container *
shape:
?b?
?
8Adam_2/dense_4/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/dense_4/kernel/v*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
?
Adam_2/dense_4/kernel/v/AssignAssignVariableOpAdam_2/dense_4/kernel/v)Adam_2/dense_4/kernel/v/Initializer/zeros*!
_class
loc:@dense_4/kernel*
dtype0
?
+Adam_2/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam_2/dense_4/kernel/v*!
_class
loc:@dense_4/kernel*
dtype0* 
_output_shapes
:
?b?
?
'Adam_2/dense_4/bias/v/Initializer/zerosConst*
_class
loc:@dense_4/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
Adam_2/dense_4/bias/vVarHandleOp*
dtype0*
_output_shapes
: *&
shared_nameAdam_2/dense_4/bias/v*
_class
loc:@dense_4/bias*
	container *
shape:?
?
6Adam_2/dense_4/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/dense_4/bias/v*
_class
loc:@dense_4/bias*
_output_shapes
: 
?
Adam_2/dense_4/bias/v/AssignAssignVariableOpAdam_2/dense_4/bias/v'Adam_2/dense_4/bias/v/Initializer/zeros*
_class
loc:@dense_4/bias*
dtype0
?
)Adam_2/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam_2/dense_4/bias/v*
_output_shapes	
:?*
_class
loc:@dense_4/bias*
dtype0
?
9Adam_2/dense_5/kernel/v/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_5/kernel*
valueB"?   
   *
dtype0*
_output_shapes
:
?
/Adam_2/dense_5/kernel/v/Initializer/zeros/ConstConst*!
_class
loc:@dense_5/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
)Adam_2/dense_5/kernel/v/Initializer/zerosFill9Adam_2/dense_5/kernel/v/Initializer/zeros/shape_as_tensor/Adam_2/dense_5/kernel/v/Initializer/zeros/Const*
_output_shapes
:	?
*
T0*!
_class
loc:@dense_5/kernel*

index_type0
?
Adam_2/dense_5/kernel/vVarHandleOp*
dtype0*
_output_shapes
: *(
shared_nameAdam_2/dense_5/kernel/v*!
_class
loc:@dense_5/kernel*
	container *
shape:	?

?
8Adam_2/dense_5/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/dense_5/kernel/v*
_output_shapes
: *!
_class
loc:@dense_5/kernel
?
Adam_2/dense_5/kernel/v/AssignAssignVariableOpAdam_2/dense_5/kernel/v)Adam_2/dense_5/kernel/v/Initializer/zeros*!
_class
loc:@dense_5/kernel*
dtype0
?
+Adam_2/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam_2/dense_5/kernel/v*
_output_shapes
:	?
*!
_class
loc:@dense_5/kernel*
dtype0
?
'Adam_2/dense_5/bias/v/Initializer/zerosConst*
_class
loc:@dense_5/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
Adam_2/dense_5/bias/vVarHandleOp*
dtype0*
_output_shapes
: *&
shared_nameAdam_2/dense_5/bias/v*
_class
loc:@dense_5/bias*
	container *
shape:

?
6Adam_2/dense_5/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/dense_5/bias/v*
_class
loc:@dense_5/bias*
_output_shapes
: 
?
Adam_2/dense_5/bias/v/AssignAssignVariableOpAdam_2/dense_5/bias/v'Adam_2/dense_5/bias/v/Initializer/zeros*
_class
loc:@dense_5/bias*
dtype0
?
)Adam_2/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam_2/dense_5/bias/v*
_class
loc:@dense_5/bias*
dtype0*
_output_shapes
:

k
&Adam_2/Adam/update_conv2d/kernel/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
s
/Adam_2/Adam/update_conv2d/kernel/ReadVariableOpReadVariableOpAdam_2/iter*
dtype0	*
_output_shapes
: 
h
&Adam_2/Adam/update_conv2d/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
$Adam_2/Adam/update_conv2d/kernel/addAdd/Adam_2/Adam/update_conv2d/kernel/ReadVariableOp&Adam_2/Adam/update_conv2d/kernel/add/y*
T0	*
_output_shapes
: 
?
%Adam_2/Adam/update_conv2d/kernel/CastCast$Adam_2/Adam/update_conv2d/kernel/add*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
y
3Adam_2/Adam/update_conv2d/kernel/Pow/ReadVariableOpReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
?
$Adam_2/Adam/update_conv2d/kernel/PowPow3Adam_2/Adam/update_conv2d/kernel/Pow/ReadVariableOp%Adam_2/Adam/update_conv2d/kernel/Cast*
T0*
_output_shapes
: 
{
5Adam_2/Adam/update_conv2d/kernel/Pow_1/ReadVariableOpReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
?
&Adam_2/Adam/update_conv2d/kernel/Pow_1Pow5Adam_2/Adam/update_conv2d/kernel/Pow_1/ReadVariableOp%Adam_2/Adam/update_conv2d/kernel/Cast*
_output_shapes
: *
T0
?
AAdam_2/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam_2/learning_rate*
dtype0*
_output_shapes
: 
?
CAdam_2/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
?
CAdam_2/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
?
2Adam_2/Adam/update_conv2d/kernel/ResourceApplyAdamResourceApplyAdamconv2d/kernelAdam_2/conv2d/kernel/mAdam_2/conv2d/kernel/v$Adam_2/Adam/update_conv2d/kernel/Pow&Adam_2/Adam/update_conv2d/kernel/Pow_1AAdam_2/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOpCAdam_2/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1CAdam_2/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOp_2&Adam_2/Adam/update_conv2d/kernel/Const8Adam_2/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
use_locking(*
T0*
use_nesterov( 
i
$Adam_2/Adam/update_conv2d/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
q
-Adam_2/Adam/update_conv2d/bias/ReadVariableOpReadVariableOpAdam_2/iter*
dtype0	*
_output_shapes
: 
f
$Adam_2/Adam/update_conv2d/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
"Adam_2/Adam/update_conv2d/bias/addAdd-Adam_2/Adam/update_conv2d/bias/ReadVariableOp$Adam_2/Adam/update_conv2d/bias/add/y*
T0	*
_output_shapes
: 
?
#Adam_2/Adam/update_conv2d/bias/CastCast"Adam_2/Adam/update_conv2d/bias/add*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
w
1Adam_2/Adam/update_conv2d/bias/Pow/ReadVariableOpReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
?
"Adam_2/Adam/update_conv2d/bias/PowPow1Adam_2/Adam/update_conv2d/bias/Pow/ReadVariableOp#Adam_2/Adam/update_conv2d/bias/Cast*
_output_shapes
: *
T0
y
3Adam_2/Adam/update_conv2d/bias/Pow_1/ReadVariableOpReadVariableOpAdam_2/beta_2*
_output_shapes
: *
dtype0
?
$Adam_2/Adam/update_conv2d/bias/Pow_1Pow3Adam_2/Adam/update_conv2d/bias/Pow_1/ReadVariableOp#Adam_2/Adam/update_conv2d/bias/Cast*
T0*
_output_shapes
: 
?
?Adam_2/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam_2/learning_rate*
dtype0*
_output_shapes
: 
?
AAdam_2/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
?
AAdam_2/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
?
0Adam_2/Adam/update_conv2d/bias/ResourceApplyAdamResourceApplyAdamconv2d/biasAdam_2/conv2d/bias/mAdam_2/conv2d/bias/v"Adam_2/Adam/update_conv2d/bias/Pow$Adam_2/Adam/update_conv2d/bias/Pow_1?Adam_2/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOpAAdam_2/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp_1AAdam_2/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp_2$Adam_2/Adam/update_conv2d/bias/Const0Adam_2/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
use_nesterov( *
use_locking(*
T0
l
'Adam_2/Adam/update_dense_4/kernel/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
t
0Adam_2/Adam/update_dense_4/kernel/ReadVariableOpReadVariableOpAdam_2/iter*
dtype0	*
_output_shapes
: 
i
'Adam_2/Adam/update_dense_4/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
%Adam_2/Adam/update_dense_4/kernel/addAdd0Adam_2/Adam/update_dense_4/kernel/ReadVariableOp'Adam_2/Adam/update_dense_4/kernel/add/y*
T0	*
_output_shapes
: 
?
&Adam_2/Adam/update_dense_4/kernel/CastCast%Adam_2/Adam/update_dense_4/kernel/add*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
z
4Adam_2/Adam/update_dense_4/kernel/Pow/ReadVariableOpReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
?
%Adam_2/Adam/update_dense_4/kernel/PowPow4Adam_2/Adam/update_dense_4/kernel/Pow/ReadVariableOp&Adam_2/Adam/update_dense_4/kernel/Cast*
_output_shapes
: *
T0
|
6Adam_2/Adam/update_dense_4/kernel/Pow_1/ReadVariableOpReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
?
'Adam_2/Adam/update_dense_4/kernel/Pow_1Pow6Adam_2/Adam/update_dense_4/kernel/Pow_1/ReadVariableOp&Adam_2/Adam/update_dense_4/kernel/Cast*
_output_shapes
: *
T0
?
BAdam_2/Adam/update_dense_4/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam_2/learning_rate*
dtype0*
_output_shapes
: 
?
DAdam_2/Adam/update_dense_4/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
?
DAdam_2/Adam/update_dense_4/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
?
3Adam_2/Adam/update_dense_4/kernel/ResourceApplyAdamResourceApplyAdamdense_4/kernelAdam_2/dense_4/kernel/mAdam_2/dense_4/kernel/v%Adam_2/Adam/update_dense_4/kernel/Pow'Adam_2/Adam/update_dense_4/kernel/Pow_1BAdam_2/Adam/update_dense_4/kernel/ResourceApplyAdam/ReadVariableOpDAdam_2/Adam/update_dense_4/kernel/ResourceApplyAdam/ReadVariableOp_1DAdam_2/Adam/update_dense_4/kernel/ResourceApplyAdam/ReadVariableOp_2'Adam_2/Adam/update_dense_4/kernel/Const-Adam_2/gradients/dense_4/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
j
%Adam_2/Adam/update_dense_4/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
r
.Adam_2/Adam/update_dense_4/bias/ReadVariableOpReadVariableOpAdam_2/iter*
dtype0	*
_output_shapes
: 
g
%Adam_2/Adam/update_dense_4/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
#Adam_2/Adam/update_dense_4/bias/addAdd.Adam_2/Adam/update_dense_4/bias/ReadVariableOp%Adam_2/Adam/update_dense_4/bias/add/y*
T0	*
_output_shapes
: 
?
$Adam_2/Adam/update_dense_4/bias/CastCast#Adam_2/Adam/update_dense_4/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
x
2Adam_2/Adam/update_dense_4/bias/Pow/ReadVariableOpReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
?
#Adam_2/Adam/update_dense_4/bias/PowPow2Adam_2/Adam/update_dense_4/bias/Pow/ReadVariableOp$Adam_2/Adam/update_dense_4/bias/Cast*
T0*
_output_shapes
: 
z
4Adam_2/Adam/update_dense_4/bias/Pow_1/ReadVariableOpReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
?
%Adam_2/Adam/update_dense_4/bias/Pow_1Pow4Adam_2/Adam/update_dense_4/bias/Pow_1/ReadVariableOp$Adam_2/Adam/update_dense_4/bias/Cast*
T0*
_output_shapes
: 
?
@Adam_2/Adam/update_dense_4/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam_2/learning_rate*
dtype0*
_output_shapes
: 
?
BAdam_2/Adam/update_dense_4/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam_2/beta_1*
_output_shapes
: *
dtype0
?
BAdam_2/Adam/update_dense_4/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam_2/beta_2*
_output_shapes
: *
dtype0
?
1Adam_2/Adam/update_dense_4/bias/ResourceApplyAdamResourceApplyAdamdense_4/biasAdam_2/dense_4/bias/mAdam_2/dense_4/bias/v#Adam_2/Adam/update_dense_4/bias/Pow%Adam_2/Adam/update_dense_4/bias/Pow_1@Adam_2/Adam/update_dense_4/bias/ResourceApplyAdam/ReadVariableOpBAdam_2/Adam/update_dense_4/bias/ResourceApplyAdam/ReadVariableOp_1BAdam_2/Adam/update_dense_4/bias/ResourceApplyAdam/ReadVariableOp_2%Adam_2/Adam/update_dense_4/bias/Const1Adam_2/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
use_nesterov( *
use_locking(*
T0
l
'Adam_2/Adam/update_dense_5/kernel/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
t
0Adam_2/Adam/update_dense_5/kernel/ReadVariableOpReadVariableOpAdam_2/iter*
dtype0	*
_output_shapes
: 
i
'Adam_2/Adam/update_dense_5/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
%Adam_2/Adam/update_dense_5/kernel/addAdd0Adam_2/Adam/update_dense_5/kernel/ReadVariableOp'Adam_2/Adam/update_dense_5/kernel/add/y*
T0	*
_output_shapes
: 
?
&Adam_2/Adam/update_dense_5/kernel/CastCast%Adam_2/Adam/update_dense_5/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
z
4Adam_2/Adam/update_dense_5/kernel/Pow/ReadVariableOpReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
?
%Adam_2/Adam/update_dense_5/kernel/PowPow4Adam_2/Adam/update_dense_5/kernel/Pow/ReadVariableOp&Adam_2/Adam/update_dense_5/kernel/Cast*
T0*
_output_shapes
: 
|
6Adam_2/Adam/update_dense_5/kernel/Pow_1/ReadVariableOpReadVariableOpAdam_2/beta_2*
_output_shapes
: *
dtype0
?
'Adam_2/Adam/update_dense_5/kernel/Pow_1Pow6Adam_2/Adam/update_dense_5/kernel/Pow_1/ReadVariableOp&Adam_2/Adam/update_dense_5/kernel/Cast*
T0*
_output_shapes
: 
?
BAdam_2/Adam/update_dense_5/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam_2/learning_rate*
_output_shapes
: *
dtype0
?
DAdam_2/Adam/update_dense_5/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
?
DAdam_2/Adam/update_dense_5/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
?
3Adam_2/Adam/update_dense_5/kernel/ResourceApplyAdamResourceApplyAdamdense_5/kernelAdam_2/dense_5/kernel/mAdam_2/dense_5/kernel/v%Adam_2/Adam/update_dense_5/kernel/Pow'Adam_2/Adam/update_dense_5/kernel/Pow_1BAdam_2/Adam/update_dense_5/kernel/ResourceApplyAdam/ReadVariableOpDAdam_2/Adam/update_dense_5/kernel/ResourceApplyAdam/ReadVariableOp_1DAdam_2/Adam/update_dense_5/kernel/ResourceApplyAdam/ReadVariableOp_2'Adam_2/Adam/update_dense_5/kernel/Const-Adam_2/gradients/dense_5/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
j
%Adam_2/Adam/update_dense_5/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
r
.Adam_2/Adam/update_dense_5/bias/ReadVariableOpReadVariableOpAdam_2/iter*
dtype0	*
_output_shapes
: 
g
%Adam_2/Adam/update_dense_5/bias/add/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
?
#Adam_2/Adam/update_dense_5/bias/addAdd.Adam_2/Adam/update_dense_5/bias/ReadVariableOp%Adam_2/Adam/update_dense_5/bias/add/y*
T0	*
_output_shapes
: 
?
$Adam_2/Adam/update_dense_5/bias/CastCast#Adam_2/Adam/update_dense_5/bias/add*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
x
2Adam_2/Adam/update_dense_5/bias/Pow/ReadVariableOpReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
?
#Adam_2/Adam/update_dense_5/bias/PowPow2Adam_2/Adam/update_dense_5/bias/Pow/ReadVariableOp$Adam_2/Adam/update_dense_5/bias/Cast*
T0*
_output_shapes
: 
z
4Adam_2/Adam/update_dense_5/bias/Pow_1/ReadVariableOpReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
?
%Adam_2/Adam/update_dense_5/bias/Pow_1Pow4Adam_2/Adam/update_dense_5/bias/Pow_1/ReadVariableOp$Adam_2/Adam/update_dense_5/bias/Cast*
T0*
_output_shapes
: 
?
@Adam_2/Adam/update_dense_5/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam_2/learning_rate*
dtype0*
_output_shapes
: 
?
BAdam_2/Adam/update_dense_5/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
?
BAdam_2/Adam/update_dense_5/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
?
1Adam_2/Adam/update_dense_5/bias/ResourceApplyAdamResourceApplyAdamdense_5/biasAdam_2/dense_5/bias/mAdam_2/dense_5/bias/v#Adam_2/Adam/update_dense_5/bias/Pow%Adam_2/Adam/update_dense_5/bias/Pow_1@Adam_2/Adam/update_dense_5/bias/ResourceApplyAdam/ReadVariableOpBAdam_2/Adam/update_dense_5/bias/ResourceApplyAdam/ReadVariableOp_1BAdam_2/Adam/update_dense_5/bias/ResourceApplyAdam/ReadVariableOp_2%Adam_2/Adam/update_dense_5/bias/Const1Adam_2/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
?
Adam_2/Adam/ConstConst1^Adam_2/Adam/update_conv2d/bias/ResourceApplyAdam3^Adam_2/Adam/update_conv2d/kernel/ResourceApplyAdam2^Adam_2/Adam/update_dense_4/bias/ResourceApplyAdam4^Adam_2/Adam/update_dense_4/kernel/ResourceApplyAdam2^Adam_2/Adam/update_dense_5/bias/ResourceApplyAdam4^Adam_2/Adam/update_dense_5/kernel/ResourceApplyAdam*
_output_shapes
: *
value	B	 R*
dtype0	
c
Adam_2/Adam/AssignAddVariableOpAssignAddVariableOpAdam_2/iterAdam_2/Adam/Const*
dtype0	
?
Adam_2/Adam/ReadVariableOpReadVariableOpAdam_2/iter ^Adam_2/Adam/AssignAddVariableOp1^Adam_2/Adam/update_conv2d/bias/ResourceApplyAdam3^Adam_2/Adam/update_conv2d/kernel/ResourceApplyAdam2^Adam_2/Adam/update_dense_4/bias/ResourceApplyAdam4^Adam_2/Adam/update_dense_4/kernel/ResourceApplyAdam2^Adam_2/Adam/update_dense_5/bias/ResourceApplyAdam4^Adam_2/Adam/update_dense_5/kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: 
L
training_5/group_depsNoOp ^Adam_2/Adam/AssignAddVariableOp^loss_2/mul
N
Placeholder_4Placeholder*
dtype0*
_output_shapes
: *
shape: 
K
AssignVariableOp_4AssignVariableOptotal_2Placeholder_4*
dtype0
e
ReadVariableOp_4ReadVariableOptotal_2^AssignVariableOp_4*
dtype0*
_output_shapes
: 
N
Placeholder_5Placeholder*
dtype0*
_output_shapes
: *
shape: 
K
AssignVariableOp_5AssignVariableOpcount_2Placeholder_5*
dtype0
e
ReadVariableOp_5ReadVariableOpcount_2^AssignVariableOp_5*
dtype0*
_output_shapes
: 
S
VarIsInitializedOp_38VarIsInitializedOpdense_5/kernel*
_output_shapes
: 
L
VarIsInitializedOp_39VarIsInitializedOpcount_2*
_output_shapes
: 
Z
VarIsInitializedOp_40VarIsInitializedOpAdam_2/dense_4/bias/m*
_output_shapes
: 
\
VarIsInitializedOp_41VarIsInitializedOpAdam_2/dense_4/kernel/m*
_output_shapes
: 
Q
VarIsInitializedOp_42VarIsInitializedOpdense_5/bias*
_output_shapes
: 
\
VarIsInitializedOp_43VarIsInitializedOpAdam_2/dense_5/kernel/m*
_output_shapes
: 
[
VarIsInitializedOp_44VarIsInitializedOpAdam_2/conv2d/kernel/v*
_output_shapes
: 
Y
VarIsInitializedOp_45VarIsInitializedOpAdam_2/conv2d/bias/m*
_output_shapes
: 
P
VarIsInitializedOp_46VarIsInitializedOpAdam_2/iter*
_output_shapes
: 
R
VarIsInitializedOp_47VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_48VarIsInitializedOpAdam_2/decay*
_output_shapes
: 
P
VarIsInitializedOp_49VarIsInitializedOpconv2d/bias*
_output_shapes
: 
S
VarIsInitializedOp_50VarIsInitializedOpdense_4/kernel*
_output_shapes
: 
Y
VarIsInitializedOp_51VarIsInitializedOpAdam_2/learning_rate*
_output_shapes
: 
R
VarIsInitializedOp_52VarIsInitializedOpAdam_2/beta_1*
_output_shapes
: 
\
VarIsInitializedOp_53VarIsInitializedOpAdam_2/dense_5/kernel/v*
_output_shapes
: 
Y
VarIsInitializedOp_54VarIsInitializedOpAdam_2/conv2d/bias/v*
_output_shapes
: 
Z
VarIsInitializedOp_55VarIsInitializedOpAdam_2/dense_5/bias/v*
_output_shapes
: 
Z
VarIsInitializedOp_56VarIsInitializedOpAdam_2/dense_5/bias/m*
_output_shapes
: 
Q
VarIsInitializedOp_57VarIsInitializedOpdense_4/bias*
_output_shapes
: 
\
VarIsInitializedOp_58VarIsInitializedOpAdam_2/dense_4/kernel/v*
_output_shapes
: 
L
VarIsInitializedOp_59VarIsInitializedOptotal_2*
_output_shapes
: 
Z
VarIsInitializedOp_60VarIsInitializedOpAdam_2/dense_4/bias/v*
_output_shapes
: 
[
VarIsInitializedOp_61VarIsInitializedOpAdam_2/conv2d/kernel/m*
_output_shapes
: 
R
VarIsInitializedOp_62VarIsInitializedOpAdam_2/beta_2*
_output_shapes
: 
?
init_2NoOp^Adam_2/beta_1/Assign^Adam_2/beta_2/Assign^Adam_2/conv2d/bias/m/Assign^Adam_2/conv2d/bias/v/Assign^Adam_2/conv2d/kernel/m/Assign^Adam_2/conv2d/kernel/v/Assign^Adam_2/decay/Assign^Adam_2/dense_4/bias/m/Assign^Adam_2/dense_4/bias/v/Assign^Adam_2/dense_4/kernel/m/Assign^Adam_2/dense_4/kernel/v/Assign^Adam_2/dense_5/bias/m/Assign^Adam_2/dense_5/bias/v/Assign^Adam_2/dense_5/kernel/m/Assign^Adam_2/dense_5/kernel/v/Assign^Adam_2/iter/Assign^Adam_2/learning_rate/Assign^conv2d/bias/Assign^conv2d/kernel/Assign^count_2/Assign^dense_4/bias/Assign^dense_4/kernel/Assign^dense_5/bias/Assign^dense_5/kernel/Assign^total_2/Assign
.
predict_2/group_depsNoOp^dense_5/Softmax
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_e77d1f7b4c5340bdb38604aec970757f/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?	
save/SaveV2/tensor_namesConst*?
value?B?9BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/dense/bias/mBAdam/dense/bias/vBAdam/dense/kernel/mBAdam/dense/kernel/vBAdam/dense_1/bias/mBAdam/dense_1/bias/vBAdam/dense_1/kernel/mBAdam/dense_1/kernel/vB	Adam/iterBAdam/learning_rateBAdam_1/beta_1BAdam_1/beta_2BAdam_1/decayBAdam_1/dense_2/bias/mBAdam_1/dense_2/bias/vBAdam_1/dense_2/kernel/mBAdam_1/dense_2/kernel/vBAdam_1/dense_3/bias/mBAdam_1/dense_3/bias/vBAdam_1/dense_3/kernel/mBAdam_1/dense_3/kernel/vBAdam_1/iterBAdam_1/learning_rateBAdam_2/beta_1BAdam_2/beta_2BAdam_2/conv2d/bias/mBAdam_2/conv2d/bias/vBAdam_2/conv2d/kernel/mBAdam_2/conv2d/kernel/vBAdam_2/decayBAdam_2/dense_4/bias/mBAdam_2/dense_4/bias/vBAdam_2/dense_4/kernel/mBAdam_2/dense_4/kernel/vBAdam_2/dense_5/bias/mBAdam_2/dense_5/bias/vBAdam_2/dense_5/kernel/mBAdam_2/dense_5/kernel/vBAdam_2/iterBAdam_2/learning_rateBconv2d/biasBconv2d/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBdense_4/biasBdense_4/kernelBdense_5/biasBdense_5/kernel*
dtype0*
_output_shapes
:9
?
save/SaveV2/shape_and_slicesConst*
_output_shapes
:9*?
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOpAdam/iter/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp!Adam_1/beta_1/Read/ReadVariableOp!Adam_1/beta_2/Read/ReadVariableOp Adam_1/decay/Read/ReadVariableOp)Adam_1/dense_2/bias/m/Read/ReadVariableOp)Adam_1/dense_2/bias/v/Read/ReadVariableOp+Adam_1/dense_2/kernel/m/Read/ReadVariableOp+Adam_1/dense_2/kernel/v/Read/ReadVariableOp)Adam_1/dense_3/bias/m/Read/ReadVariableOp)Adam_1/dense_3/bias/v/Read/ReadVariableOp+Adam_1/dense_3/kernel/m/Read/ReadVariableOp+Adam_1/dense_3/kernel/v/Read/ReadVariableOpAdam_1/iter/Read/ReadVariableOp(Adam_1/learning_rate/Read/ReadVariableOp!Adam_2/beta_1/Read/ReadVariableOp!Adam_2/beta_2/Read/ReadVariableOp(Adam_2/conv2d/bias/m/Read/ReadVariableOp(Adam_2/conv2d/bias/v/Read/ReadVariableOp*Adam_2/conv2d/kernel/m/Read/ReadVariableOp*Adam_2/conv2d/kernel/v/Read/ReadVariableOp Adam_2/decay/Read/ReadVariableOp)Adam_2/dense_4/bias/m/Read/ReadVariableOp)Adam_2/dense_4/bias/v/Read/ReadVariableOp+Adam_2/dense_4/kernel/m/Read/ReadVariableOp+Adam_2/dense_4/kernel/v/Read/ReadVariableOp)Adam_2/dense_5/bias/m/Read/ReadVariableOp)Adam_2/dense_5/bias/v/Read/ReadVariableOp+Adam_2/dense_5/kernel/m/Read/ReadVariableOp+Adam_2/dense_5/kernel/v/Read/ReadVariableOpAdam_2/iter/Read/ReadVariableOp(Adam_2/learning_rate/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp*G
dtypes=
;29			
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
N*
_output_shapes
:*
T0
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
?	
save/RestoreV2/tensor_namesConst*
_output_shapes
:9*?
value?B?9BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/dense/bias/mBAdam/dense/bias/vBAdam/dense/kernel/mBAdam/dense/kernel/vBAdam/dense_1/bias/mBAdam/dense_1/bias/vBAdam/dense_1/kernel/mBAdam/dense_1/kernel/vB	Adam/iterBAdam/learning_rateBAdam_1/beta_1BAdam_1/beta_2BAdam_1/decayBAdam_1/dense_2/bias/mBAdam_1/dense_2/bias/vBAdam_1/dense_2/kernel/mBAdam_1/dense_2/kernel/vBAdam_1/dense_3/bias/mBAdam_1/dense_3/bias/vBAdam_1/dense_3/kernel/mBAdam_1/dense_3/kernel/vBAdam_1/iterBAdam_1/learning_rateBAdam_2/beta_1BAdam_2/beta_2BAdam_2/conv2d/bias/mBAdam_2/conv2d/bias/vBAdam_2/conv2d/kernel/mBAdam_2/conv2d/kernel/vBAdam_2/decayBAdam_2/dense_4/bias/mBAdam_2/dense_4/bias/vBAdam_2/dense_4/kernel/mBAdam_2/dense_4/kernel/vBAdam_2/dense_5/bias/mBAdam_2/dense_5/bias/vBAdam_2/dense_5/kernel/mBAdam_2/dense_5/kernel/vBAdam_2/iterBAdam_2/learning_rateBconv2d/biasBconv2d/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBdense_4/biasBdense_4/kernelBdense_5/biasBdense_5/kernel*
dtype0
?
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:9*?
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*G
dtypes=
;29			*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
_output_shapes
:*
T0
\
save/AssignVariableOp_3AssignVariableOpAdam/dense/bias/msave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
_output_shapes
:*
T0
\
save/AssignVariableOp_4AssignVariableOpAdam/dense/bias/vsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
_output_shapes
:*
T0
^
save/AssignVariableOp_5AssignVariableOpAdam/dense/kernel/msave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
_output_shapes
:*
T0
^
save/AssignVariableOp_6AssignVariableOpAdam/dense/kernel/vsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
_output_shapes
:*
T0
^
save/AssignVariableOp_7AssignVariableOpAdam/dense_1/bias/msave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
_output_shapes
:*
T0
^
save/AssignVariableOp_8AssignVariableOpAdam/dense_1/bias/vsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
a
save/AssignVariableOp_9AssignVariableOpAdam/dense_1/kernel/msave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
_output_shapes
:*
T0
b
save/AssignVariableOp_10AssignVariableOpAdam/dense_1/kernel/vsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
_output_shapes
:*
T0	
V
save/AssignVariableOp_11AssignVariableOp	Adam/itersave/Identity_12*
dtype0	
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
_
save/AssignVariableOp_12AssignVariableOpAdam/learning_ratesave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
Z
save/AssignVariableOp_13AssignVariableOpAdam_1/beta_1save/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
Z
save/AssignVariableOp_14AssignVariableOpAdam_1/beta_2save/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
_output_shapes
:*
T0
Y
save/AssignVariableOp_15AssignVariableOpAdam_1/decaysave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
b
save/AssignVariableOp_16AssignVariableOpAdam_1/dense_2/bias/msave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
_output_shapes
:*
T0
b
save/AssignVariableOp_17AssignVariableOpAdam_1/dense_2/bias/vsave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
_output_shapes
:*
T0
d
save/AssignVariableOp_18AssignVariableOpAdam_1/dense_2/kernel/msave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
_output_shapes
:*
T0
d
save/AssignVariableOp_19AssignVariableOpAdam_1/dense_2/kernel/vsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
_output_shapes
:*
T0
b
save/AssignVariableOp_20AssignVariableOpAdam_1/dense_3/bias/msave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
_output_shapes
:*
T0
b
save/AssignVariableOp_21AssignVariableOpAdam_1/dense_3/bias/vsave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
d
save/AssignVariableOp_22AssignVariableOpAdam_1/dense_3/kernel/msave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
d
save/AssignVariableOp_23AssignVariableOpAdam_1/dense_3/kernel/vsave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0	*
_output_shapes
:
X
save/AssignVariableOp_24AssignVariableOpAdam_1/itersave/Identity_25*
dtype0	
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
a
save/AssignVariableOp_25AssignVariableOpAdam_1/learning_ratesave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
_output_shapes
:*
T0
Z
save/AssignVariableOp_26AssignVariableOpAdam_2/beta_1save/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
Z
save/AssignVariableOp_27AssignVariableOpAdam_2/beta_2save/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
_output_shapes
:*
T0
a
save/AssignVariableOp_28AssignVariableOpAdam_2/conv2d/bias/msave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
_output_shapes
:*
T0
a
save/AssignVariableOp_29AssignVariableOpAdam_2/conv2d/bias/vsave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
c
save/AssignVariableOp_30AssignVariableOpAdam_2/conv2d/kernel/msave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
c
save/AssignVariableOp_31AssignVariableOpAdam_2/conv2d/kernel/vsave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
Y
save/AssignVariableOp_32AssignVariableOpAdam_2/decaysave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
_output_shapes
:*
T0
b
save/AssignVariableOp_33AssignVariableOpAdam_2/dense_4/bias/msave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
b
save/AssignVariableOp_34AssignVariableOpAdam_2/dense_4/bias/vsave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
_output_shapes
:*
T0
d
save/AssignVariableOp_35AssignVariableOpAdam_2/dense_4/kernel/msave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
_output_shapes
:*
T0
d
save/AssignVariableOp_36AssignVariableOpAdam_2/dense_4/kernel/vsave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
_output_shapes
:*
T0
b
save/AssignVariableOp_37AssignVariableOpAdam_2/dense_5/bias/msave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
b
save/AssignVariableOp_38AssignVariableOpAdam_2/dense_5/bias/vsave/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:39*
_output_shapes
:*
T0
d
save/AssignVariableOp_39AssignVariableOpAdam_2/dense_5/kernel/msave/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
_output_shapes
:*
T0
d
save/AssignVariableOp_40AssignVariableOpAdam_2/dense_5/kernel/vsave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:41*
T0	*
_output_shapes
:
X
save/AssignVariableOp_41AssignVariableOpAdam_2/itersave/Identity_42*
dtype0	
R
save/Identity_43Identitysave/RestoreV2:42*
T0*
_output_shapes
:
a
save/AssignVariableOp_42AssignVariableOpAdam_2/learning_ratesave/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:43*
T0*
_output_shapes
:
X
save/AssignVariableOp_43AssignVariableOpconv2d/biassave/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:44*
_output_shapes
:*
T0
Z
save/AssignVariableOp_44AssignVariableOpconv2d/kernelsave/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:45*
T0*
_output_shapes
:
W
save/AssignVariableOp_45AssignVariableOp
dense/biassave/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:46*
T0*
_output_shapes
:
Y
save/AssignVariableOp_46AssignVariableOpdense/kernelsave/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:47*
T0*
_output_shapes
:
Y
save/AssignVariableOp_47AssignVariableOpdense_1/biassave/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:48*
T0*
_output_shapes
:
[
save/AssignVariableOp_48AssignVariableOpdense_1/kernelsave/Identity_49*
dtype0
R
save/Identity_50Identitysave/RestoreV2:49*
_output_shapes
:*
T0
Y
save/AssignVariableOp_49AssignVariableOpdense_2/biassave/Identity_50*
dtype0
R
save/Identity_51Identitysave/RestoreV2:50*
_output_shapes
:*
T0
[
save/AssignVariableOp_50AssignVariableOpdense_2/kernelsave/Identity_51*
dtype0
R
save/Identity_52Identitysave/RestoreV2:51*
_output_shapes
:*
T0
Y
save/AssignVariableOp_51AssignVariableOpdense_3/biassave/Identity_52*
dtype0
R
save/Identity_53Identitysave/RestoreV2:52*
_output_shapes
:*
T0
[
save/AssignVariableOp_52AssignVariableOpdense_3/kernelsave/Identity_53*
dtype0
R
save/Identity_54Identitysave/RestoreV2:53*
T0*
_output_shapes
:
Y
save/AssignVariableOp_53AssignVariableOpdense_4/biassave/Identity_54*
dtype0
R
save/Identity_55Identitysave/RestoreV2:54*
_output_shapes
:*
T0
[
save/AssignVariableOp_54AssignVariableOpdense_4/kernelsave/Identity_55*
dtype0
R
save/Identity_56Identitysave/RestoreV2:55*
_output_shapes
:*
T0
Y
save/AssignVariableOp_55AssignVariableOpdense_5/biassave/Identity_56*
dtype0
R
save/Identity_57Identitysave/RestoreV2:56*
_output_shapes
:*
T0
[
save/AssignVariableOp_56AssignVariableOpdense_5/kernelsave/Identity_57*
dtype0
?
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard "&<
save/Const:0save/Identity:0save/restore_all (5 @F8"?
trainable_variables??
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
?
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
?
dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
?
dense_4/kernel:0dense_4/kernel/Assign$dense_4/kernel/Read/ReadVariableOp:0(2+dense_4/kernel/Initializer/random_uniform:08
o
dense_4/bias:0dense_4/bias/Assign"dense_4/bias/Read/ReadVariableOp:0(2 dense_4/bias/Initializer/zeros:08
?
dense_5/kernel:0dense_5/kernel/Assign$dense_5/kernel/Read/ReadVariableOp:0(2+dense_5/kernel/Initializer/random_uniform:08
o
dense_5/bias:0dense_5/bias/Assign"dense_5/bias/Read/ReadVariableOp:0(2 dense_5/bias/Initializer/zeros:08"?<
	variables?<?<
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
c
Adam/iter:0Adam/iter/AssignAdam/iter/Read/ReadVariableOp:0(2Adam/iter/Initializer/zeros:0H
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:0H
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:0H
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:0H
?
Adam/learning_rate:0Adam/learning_rate/Assign(Adam/learning_rate/Read/ReadVariableOp:0(2.Adam/learning_rate/Initializer/initial_value:0H
?
Adam/dense/kernel/m:0Adam/dense/kernel/m/Assign)Adam/dense/kernel/m/Read/ReadVariableOp:0(2'Adam/dense/kernel/m/Initializer/zeros:0
?
Adam/dense/bias/m:0Adam/dense/bias/m/Assign'Adam/dense/bias/m/Read/ReadVariableOp:0(2%Adam/dense/bias/m/Initializer/zeros:0
?
Adam/dense_1/kernel/m:0Adam/dense_1/kernel/m/Assign+Adam/dense_1/kernel/m/Read/ReadVariableOp:0(2)Adam/dense_1/kernel/m/Initializer/zeros:0
?
Adam/dense_1/bias/m:0Adam/dense_1/bias/m/Assign)Adam/dense_1/bias/m/Read/ReadVariableOp:0(2'Adam/dense_1/bias/m/Initializer/zeros:0
?
Adam/dense/kernel/v:0Adam/dense/kernel/v/Assign)Adam/dense/kernel/v/Read/ReadVariableOp:0(2'Adam/dense/kernel/v/Initializer/zeros:0
?
Adam/dense/bias/v:0Adam/dense/bias/v/Assign'Adam/dense/bias/v/Read/ReadVariableOp:0(2%Adam/dense/bias/v/Initializer/zeros:0
?
Adam/dense_1/kernel/v:0Adam/dense_1/kernel/v/Assign+Adam/dense_1/kernel/v/Read/ReadVariableOp:0(2)Adam/dense_1/kernel/v/Initializer/zeros:0
?
Adam/dense_1/bias/v:0Adam/dense_1/bias/v/Assign)Adam/dense_1/bias/v/Read/ReadVariableOp:0(2'Adam/dense_1/bias/v/Initializer/zeros:0
?
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
?
dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08
k
Adam_1/iter:0Adam_1/iter/Assign!Adam_1/iter/Read/ReadVariableOp:0(2Adam_1/iter/Initializer/zeros:0H
{
Adam_1/beta_1:0Adam_1/beta_1/Assign#Adam_1/beta_1/Read/ReadVariableOp:0(2)Adam_1/beta_1/Initializer/initial_value:0H
{
Adam_1/beta_2:0Adam_1/beta_2/Assign#Adam_1/beta_2/Read/ReadVariableOp:0(2)Adam_1/beta_2/Initializer/initial_value:0H
w
Adam_1/decay:0Adam_1/decay/Assign"Adam_1/decay/Read/ReadVariableOp:0(2(Adam_1/decay/Initializer/initial_value:0H
?
Adam_1/learning_rate:0Adam_1/learning_rate/Assign*Adam_1/learning_rate/Read/ReadVariableOp:0(20Adam_1/learning_rate/Initializer/initial_value:0H
?
Adam_1/dense_2/kernel/m:0Adam_1/dense_2/kernel/m/Assign-Adam_1/dense_2/kernel/m/Read/ReadVariableOp:0(2+Adam_1/dense_2/kernel/m/Initializer/zeros:0
?
Adam_1/dense_2/bias/m:0Adam_1/dense_2/bias/m/Assign+Adam_1/dense_2/bias/m/Read/ReadVariableOp:0(2)Adam_1/dense_2/bias/m/Initializer/zeros:0
?
Adam_1/dense_3/kernel/m:0Adam_1/dense_3/kernel/m/Assign-Adam_1/dense_3/kernel/m/Read/ReadVariableOp:0(2+Adam_1/dense_3/kernel/m/Initializer/zeros:0
?
Adam_1/dense_3/bias/m:0Adam_1/dense_3/bias/m/Assign+Adam_1/dense_3/bias/m/Read/ReadVariableOp:0(2)Adam_1/dense_3/bias/m/Initializer/zeros:0
?
Adam_1/dense_2/kernel/v:0Adam_1/dense_2/kernel/v/Assign-Adam_1/dense_2/kernel/v/Read/ReadVariableOp:0(2+Adam_1/dense_2/kernel/v/Initializer/zeros:0
?
Adam_1/dense_2/bias/v:0Adam_1/dense_2/bias/v/Assign+Adam_1/dense_2/bias/v/Read/ReadVariableOp:0(2)Adam_1/dense_2/bias/v/Initializer/zeros:0
?
Adam_1/dense_3/kernel/v:0Adam_1/dense_3/kernel/v/Assign-Adam_1/dense_3/kernel/v/Read/ReadVariableOp:0(2+Adam_1/dense_3/kernel/v/Initializer/zeros:0
?
Adam_1/dense_3/bias/v:0Adam_1/dense_3/bias/v/Assign+Adam_1/dense_3/bias/v/Read/ReadVariableOp:0(2)Adam_1/dense_3/bias/v/Initializer/zeros:0
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
?
dense_4/kernel:0dense_4/kernel/Assign$dense_4/kernel/Read/ReadVariableOp:0(2+dense_4/kernel/Initializer/random_uniform:08
o
dense_4/bias:0dense_4/bias/Assign"dense_4/bias/Read/ReadVariableOp:0(2 dense_4/bias/Initializer/zeros:08
?
dense_5/kernel:0dense_5/kernel/Assign$dense_5/kernel/Read/ReadVariableOp:0(2+dense_5/kernel/Initializer/random_uniform:08
o
dense_5/bias:0dense_5/bias/Assign"dense_5/bias/Read/ReadVariableOp:0(2 dense_5/bias/Initializer/zeros:08
k
Adam_2/iter:0Adam_2/iter/Assign!Adam_2/iter/Read/ReadVariableOp:0(2Adam_2/iter/Initializer/zeros:0H
{
Adam_2/beta_1:0Adam_2/beta_1/Assign#Adam_2/beta_1/Read/ReadVariableOp:0(2)Adam_2/beta_1/Initializer/initial_value:0H
{
Adam_2/beta_2:0Adam_2/beta_2/Assign#Adam_2/beta_2/Read/ReadVariableOp:0(2)Adam_2/beta_2/Initializer/initial_value:0H
w
Adam_2/decay:0Adam_2/decay/Assign"Adam_2/decay/Read/ReadVariableOp:0(2(Adam_2/decay/Initializer/initial_value:0H
?
Adam_2/learning_rate:0Adam_2/learning_rate/Assign*Adam_2/learning_rate/Read/ReadVariableOp:0(20Adam_2/learning_rate/Initializer/initial_value:0H
?
Adam_2/conv2d/kernel/m:0Adam_2/conv2d/kernel/m/Assign,Adam_2/conv2d/kernel/m/Read/ReadVariableOp:0(2*Adam_2/conv2d/kernel/m/Initializer/zeros:0
?
Adam_2/conv2d/bias/m:0Adam_2/conv2d/bias/m/Assign*Adam_2/conv2d/bias/m/Read/ReadVariableOp:0(2(Adam_2/conv2d/bias/m/Initializer/zeros:0
?
Adam_2/dense_4/kernel/m:0Adam_2/dense_4/kernel/m/Assign-Adam_2/dense_4/kernel/m/Read/ReadVariableOp:0(2+Adam_2/dense_4/kernel/m/Initializer/zeros:0
?
Adam_2/dense_4/bias/m:0Adam_2/dense_4/bias/m/Assign+Adam_2/dense_4/bias/m/Read/ReadVariableOp:0(2)Adam_2/dense_4/bias/m/Initializer/zeros:0
?
Adam_2/dense_5/kernel/m:0Adam_2/dense_5/kernel/m/Assign-Adam_2/dense_5/kernel/m/Read/ReadVariableOp:0(2+Adam_2/dense_5/kernel/m/Initializer/zeros:0
?
Adam_2/dense_5/bias/m:0Adam_2/dense_5/bias/m/Assign+Adam_2/dense_5/bias/m/Read/ReadVariableOp:0(2)Adam_2/dense_5/bias/m/Initializer/zeros:0
?
Adam_2/conv2d/kernel/v:0Adam_2/conv2d/kernel/v/Assign,Adam_2/conv2d/kernel/v/Read/ReadVariableOp:0(2*Adam_2/conv2d/kernel/v/Initializer/zeros:0
?
Adam_2/conv2d/bias/v:0Adam_2/conv2d/bias/v/Assign*Adam_2/conv2d/bias/v/Read/ReadVariableOp:0(2(Adam_2/conv2d/bias/v/Initializer/zeros:0
?
Adam_2/dense_4/kernel/v:0Adam_2/dense_4/kernel/v/Assign-Adam_2/dense_4/kernel/v/Read/ReadVariableOp:0(2+Adam_2/dense_4/kernel/v/Initializer/zeros:0
?
Adam_2/dense_4/bias/v:0Adam_2/dense_4/bias/v/Assign+Adam_2/dense_4/bias/v/Read/ReadVariableOp:0(2)Adam_2/dense_4/bias/v/Initializer/zeros:0
?
Adam_2/dense_5/kernel/v:0Adam_2/dense_5/kernel/v/Assign-Adam_2/dense_5/kernel/v/Read/ReadVariableOp:0(2+Adam_2/dense_5/kernel/v/Initializer/zeros:0
?
Adam_2/dense_5/bias/v:0Adam_2/dense_5/bias/v/Assign+Adam_2/dense_5/bias/v/Read/ReadVariableOp:0(2)Adam_2/dense_5/bias/v/Initializer/zeros:0*?
serving_default?
<
input_image-
conv2d_input:0?????????=
dense_5/Softmax:0(
dense_5/Softmax:0?????????
tensorflow/serving/predict