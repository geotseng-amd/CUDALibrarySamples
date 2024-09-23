#!/bin/bash

# Put bench.sh inside build/
# Codebase parameters
CUBLASLT_LOG_LEVEL_FLAG=5

# Environment parameters
sel=1000
warm=100
iter=1000

# Bench problems
# size 0
# Todo modify for F16:A/B, F32:C/D
M=128
N=16
K=5280
TRANS_A=N
TRANS_B=N
BIAS_VEC=true
ALPHA_VEC=true

if $BIAS_VEC; then BIAS_VEC_STR="_bias"; else BIAS_VEC_STR=""; fi
printf "BENCH: 0_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel"\n"
CUBLASLT_LOG_LEVEL=$CUBLASLT_LOG_LEVEL_FLAG ./LtSgemmSimpleAutoTuning/sample_cublasLt_LtSgemmSimpleAutoTuning $M $N $K $TRANS_A $TRANS_B $sel $warm $iter $BIAS_VEC $ALPHA_VEC| tee "0_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel".txt"

# # size 1
# M=1248
# N=16
# K=5280
# TRANS_A=N
# TRANS_B=N
# BIAS_VEC=true
# ALPHA_VEC=true

# if $BIAS_VEC; then BIAS_VEC_STR="_bias"; else BIAS_VEC_STR=""; fi
# printf "BENCH: 1_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel"\n"
# CUBLASLT_LOG_LEVEL=$CUBLASLT_LOG_LEVEL_FLAG ./LtSgemmSimpleAutoTuning/sample_cublasLt_LtSgemmSimpleAutoTuning $M $N $K $TRANS_A $TRANS_B $sel $warm $iter $BIAS_VEC $ALPHA_VEC| tee "1_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel".txt"

# # size 2
# M=1920
# N=16
# K=5280
# TRANS_A=N
# TRANS_B=N
# BIAS_VEC=true
# ALPHA_VEC=true

# if $BIAS_VEC; then BIAS_VEC_STR="_bias"; else BIAS_VEC_STR=""; fi
# printf "BENCH: 2_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel"\n"
# CUBLASLT_LOG_LEVEL=$CUBLASLT_LOG_LEVEL_FLAG ./LtSgemmSimpleAutoTuning/sample_cublasLt_LtSgemmSimpleAutoTuning $M $N $K $TRANS_A $TRANS_B $sel $warm $iter $BIAS_VEC $ALPHA_VEC| tee "2_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel".txt"

# # size 3
# M=5280
# N=16
# K=1056
# TRANS_A=N
# TRANS_B=N
# BIAS_VEC=false
# ALPHA_VEC=true

# if $BIAS_VEC; then BIAS_VEC_STR="_bias"; else BIAS_VEC_STR=""; fi
# printf "BENCH: 3_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel"\n"
# CUBLASLT_LOG_LEVEL=$CUBLASLT_LOG_LEVEL_FLAG ./LtSgemmSimpleAutoTuning/sample_cublasLt_LtSgemmSimpleAutoTuning $M $N $K $TRANS_A $TRANS_B $sel $warm $iter $BIAS_VEC $ALPHA_VEC| tee "3_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel".txt"

# # size 4
# M=5280
# N=16
# K=1056
# TRANS_A=N
# TRANS_B=N
# BIAS_VEC=true
# ALPHA_VEC=true

# if $BIAS_VEC; then BIAS_VEC_STR="_bias"; else BIAS_VEC_STR=""; fi
# printf "BENCH: 4_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel"\n"
# CUBLASLT_LOG_LEVEL=$CUBLASLT_LOG_LEVEL_FLAG ./LtSgemmSimpleAutoTuning/sample_cublasLt_LtSgemmSimpleAutoTuning $M $N $K $TRANS_A $TRANS_B $sel $warm $iter $BIAS_VEC $ALPHA_VEC| tee "4_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel".txt"

# # size 5
# M=5280
# N=16
# K=1184
# TRANS_A=N
# TRANS_B=N
# BIAS_VEC=false
# ALPHA_VEC=true

# if $BIAS_VEC; then BIAS_VEC_STR="_bias"; else BIAS_VEC_STR=""; fi
# printf "BENCH: 5_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel"\n"
# CUBLASLT_LOG_LEVEL=$CUBLASLT_LOG_LEVEL_FLAG ./LtSgemmSimpleAutoTuning/sample_cublasLt_LtSgemmSimpleAutoTuning $M $N $K $TRANS_A $TRANS_B $sel $warm $iter $BIAS_VEC $ALPHA_VEC| tee "5_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel".txt"

# # size 6
# M=5280
# N=16
# K=1184
# TRANS_A=N
# TRANS_B=N
# BIAS_VEC=true
# ALPHA_VEC=true

# if $BIAS_VEC; then BIAS_VEC_STR="_bias"; else BIAS_VEC_STR=""; fi
# printf "BENCH: 6_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel"\n"
# CUBLASLT_LOG_LEVEL=$CUBLASLT_LOG_LEVEL_FLAG ./LtSgemmSimpleAutoTuning/sample_cublasLt_LtSgemmSimpleAutoTuning $M $N $K $TRANS_A $TRANS_B $sel $warm $iter $BIAS_VEC $ALPHA_VEC| tee "6_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel".txt"

# # size 7
# M=8320
# N=16
# K=5280
# TRANS_A=N
# TRANS_B=N
# BIAS_VEC=true
# ALPHA_VEC=true

# if $BIAS_VEC; then BIAS_VEC_STR="_bias"; else BIAS_VEC_STR=""; fi
# printf "BENCH: 7_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel"\n"
# CUBLASLT_LOG_LEVEL=$CUBLASLT_LOG_LEVEL_FLAG ./LtSgemmSimpleAutoTuning/sample_cublasLt_LtSgemmSimpleAutoTuning $M $N $K $TRANS_A $TRANS_B $sel $warm $iter $BIAS_VEC $ALPHA_VEC| tee "7_cu_ps"$M"_"$N"_"$K$BIAS_VEC_STR"_sel"$sel".txt"

