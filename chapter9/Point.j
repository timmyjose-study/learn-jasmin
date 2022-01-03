; define a class Point<Down>
;
;  class Point {
;     float x, y;
;     
;     public Point(float x, float y) { this.x = x; this.y = y; }
;   
;     public float length() { return Math.sqrt(x * x + y* y); }
; }

.class public Point
.super java/lang/Object

.field private x F
.field private y F

.method public <init>(FF)V
  .limit stack 2
  .limit locals 3

  aload_0
  invokespecial java/lang/Object/<init>()V

  aload_0
  fload_1
  putfield Point/x F

  aload_0
  fload_2
  putfield Point/y F

  return
.end method

.method public length()F
  .limit stack 5
  .limit locals 1

  aload_0
  getfield Point/x F
  dup
  fmul

  aload_0
  getfield Point/y F
  dup
  fmul

  fadd
  f2d

  invokestatic java/lang/Math/sqrt(D)D
  d2f

  freturn
.end method
