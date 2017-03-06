; RUN: llvm-as %s -o /dev/null | FileCheck %s

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "arm-pc-linux-gnu"

; CHECK: .type @object
define i32 @f() prefix i32 42 {
  ret i32 0;
}
