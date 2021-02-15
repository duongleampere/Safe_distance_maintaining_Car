
_calib:

;MyProject.c,7 :: 		float calib(float dis){
;MyProject.c,8 :: 		if(dis ==  0) dis = 0;
	CLRF       R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       FARG_calib_dis+0, 0
	MOVWF      R0+0
	MOVF       FARG_calib_dis+1, 0
	MOVWF      R0+1
	MOVF       FARG_calib_dis+2, 0
	MOVWF      R0+2
	MOVF       FARG_calib_dis+3, 0
	MOVWF      R0+3
	CALL       _Equals_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_calib0
	CLRF       FARG_calib_dis+0
	CLRF       FARG_calib_dis+1
	CLRF       FARG_calib_dis+2
	CLRF       FARG_calib_dis+3
L_calib0:
;MyProject.c,9 :: 		if(dis < 30 && dis > 0) dis += (dis + 2)*0.5;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      112
	MOVWF      R4+2
	MOVLW      131
	MOVWF      R4+3
	MOVF       FARG_calib_dis+0, 0
	MOVWF      R0+0
	MOVF       FARG_calib_dis+1, 0
	MOVWF      R0+1
	MOVF       FARG_calib_dis+2, 0
	MOVWF      R0+2
	MOVF       FARG_calib_dis+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_calib3
	MOVF       FARG_calib_dis+0, 0
	MOVWF      R4+0
	MOVF       FARG_calib_dis+1, 0
	MOVWF      R4+1
	MOVF       FARG_calib_dis+2, 0
	MOVWF      R4+2
	MOVF       FARG_calib_dis+3, 0
	MOVWF      R4+3
	CLRF       R0+0
	CLRF       R0+1
	CLRF       R0+2
	CLRF       R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_calib3
L__calib55:
	MOVF       FARG_calib_dis+0, 0
	MOVWF      R0+0
	MOVF       FARG_calib_dis+1, 0
	MOVWF      R0+1
	MOVF       FARG_calib_dis+2, 0
	MOVWF      R0+2
	MOVF       FARG_calib_dis+3, 0
	MOVWF      R0+3
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      0
	MOVWF      R4+2
	MOVLW      128
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      0
	MOVWF      R4+2
	MOVLW      126
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       FARG_calib_dis+0, 0
	MOVWF      R4+0
	MOVF       FARG_calib_dis+1, 0
	MOVWF      R4+1
	MOVF       FARG_calib_dis+2, 0
	MOVWF      R4+2
	MOVF       FARG_calib_dis+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_calib_dis+0
	MOVF       R0+1, 0
	MOVWF      FARG_calib_dis+1
	MOVF       R0+2, 0
	MOVWF      FARG_calib_dis+2
	MOVF       R0+3, 0
	MOVWF      FARG_calib_dis+3
L_calib3:
;MyProject.c,10 :: 		if(dis >= 30 && dis <46) dis += 3;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      112
	MOVWF      R4+2
	MOVLW      131
	MOVWF      R4+3
	MOVF       FARG_calib_dis+0, 0
	MOVWF      R0+0
	MOVF       FARG_calib_dis+1, 0
	MOVWF      R0+1
	MOVF       FARG_calib_dis+2, 0
	MOVWF      R0+2
	MOVF       FARG_calib_dis+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_calib6
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      56
	MOVWF      R4+2
	MOVLW      132
	MOVWF      R4+3
	MOVF       FARG_calib_dis+0, 0
	MOVWF      R0+0
	MOVF       FARG_calib_dis+1, 0
	MOVWF      R0+1
	MOVF       FARG_calib_dis+2, 0
	MOVWF      R0+2
	MOVF       FARG_calib_dis+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_calib6
L__calib54:
	MOVF       FARG_calib_dis+0, 0
	MOVWF      R0+0
	MOVF       FARG_calib_dis+1, 0
	MOVWF      R0+1
	MOVF       FARG_calib_dis+2, 0
	MOVWF      R0+2
	MOVF       FARG_calib_dis+3, 0
	MOVWF      R0+3
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      64
	MOVWF      R4+2
	MOVLW      128
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_calib_dis+0
	MOVF       R0+1, 0
	MOVWF      FARG_calib_dis+1
	MOVF       R0+2, 0
	MOVWF      FARG_calib_dis+2
	MOVF       R0+3, 0
	MOVWF      FARG_calib_dis+3
L_calib6:
;MyProject.c,11 :: 		if(dis >= 46) dis = 50;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      56
	MOVWF      R4+2
	MOVLW      132
	MOVWF      R4+3
	MOVF       FARG_calib_dis+0, 0
	MOVWF      R0+0
	MOVF       FARG_calib_dis+1, 0
	MOVWF      R0+1
	MOVF       FARG_calib_dis+2, 0
	MOVWF      R0+2
	MOVF       FARG_calib_dis+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_calib7
	MOVLW      0
	MOVWF      FARG_calib_dis+0
	MOVLW      0
	MOVWF      FARG_calib_dis+1
	MOVLW      72
	MOVWF      FARG_calib_dis+2
	MOVLW      132
	MOVWF      FARG_calib_dis+3
L_calib7:
;MyProject.c,12 :: 		return dis;
	MOVF       FARG_calib_dis+0, 0
	MOVWF      R0+0
	MOVF       FARG_calib_dis+1, 0
	MOVWF      R0+1
	MOVF       FARG_calib_dis+2, 0
	MOVWF      R0+2
	MOVF       FARG_calib_dis+3, 0
	MOVWF      R0+3
;MyProject.c,13 :: 		}
L_end_calib:
	RETURN
; end of _calib

_lui_xuong:

;MyProject.c,15 :: 		void lui_xuong(int duty_cycle){
;MyProject.c,16 :: 		portd.f1 = 1;
	BSF        PORTD+0, 1
;MyProject.c,17 :: 		portd.f0 = 1;
	BSF        PORTD+0, 0
;MyProject.c,18 :: 		PWM2_SET_DUTY(duty_cycle);
	MOVF       FARG_lui_xuong_duty_cycle+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;MyProject.c,19 :: 		PWM1_SET_DUTY(0);
	CLRF       FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,20 :: 		}
L_end_lui_xuong:
	RETURN
; end of _lui_xuong

_tien_len:

;MyProject.c,22 :: 		void tien_len(int duty_cycle){
;MyProject.c,23 :: 		portd.f1 = 1;
	BSF        PORTD+0, 1
;MyProject.c,24 :: 		portd.f0 = 1;
	BSF        PORTD+0, 0
;MyProject.c,25 :: 		PWM1_SET_DUTY(duty_cycle);
	MOVF       FARG_tien_len_duty_cycle+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,26 :: 		PWM2_SET_DUTY(0);
	CLRF       FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;MyProject.c,27 :: 		}
L_end_tien_len:
	RETURN
; end of _tien_len

_dung_yen:

;MyProject.c,29 :: 		void dung_yen(){
;MyProject.c,30 :: 		PWM1_SET_DUTY(0);
	CLRF       FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,31 :: 		PWM2_SET_DUTY(0);
	CLRF       FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;MyProject.c,32 :: 		}
L_end_dung_yen:
	RETURN
; end of _dung_yen

_set_pwm:

;MyProject.c,34 :: 		void set_pwm(){
;MyProject.c,35 :: 		pwm1_init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;MyProject.c,37 :: 		PWM1_START();
	CALL       _PWM1_Start+0
;MyProject.c,38 :: 		PWM2_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;MyProject.c,40 :: 		PWM2_START();
	CALL       _PWM2_Start+0
;MyProject.c,41 :: 		}
L_end_set_pwm:
	RETURN
; end of _set_pwm

_hthang:

;MyProject.c,43 :: 		float hthang(float x,float L,float C1,float C2,float R){
;MyProject.c,45 :: 		if(x < L) y = 0;
	MOVF       FARG_hthang_L+0, 0
	MOVWF      R4+0
	MOVF       FARG_hthang_L+1, 0
	MOVWF      R4+1
	MOVF       FARG_hthang_L+2, 0
	MOVWF      R4+2
	MOVF       FARG_hthang_L+3, 0
	MOVWF      R4+3
	MOVF       FARG_hthang_x+0, 0
	MOVWF      R0+0
	MOVF       FARG_hthang_x+1, 0
	MOVWF      R0+1
	MOVF       FARG_hthang_x+2, 0
	MOVWF      R0+2
	MOVF       FARG_hthang_x+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_hthang8
	CLRF       hthang_y_L0+0
	CLRF       hthang_y_L0+1
	CLRF       hthang_y_L0+2
	CLRF       hthang_y_L0+3
	GOTO       L_hthang9
L_hthang8:
;MyProject.c,46 :: 		else if(x < C1) y = (float) (x-L)/(C1 - L);
	MOVF       FARG_hthang_C1+0, 0
	MOVWF      R4+0
	MOVF       FARG_hthang_C1+1, 0
	MOVWF      R4+1
	MOVF       FARG_hthang_C1+2, 0
	MOVWF      R4+2
	MOVF       FARG_hthang_C1+3, 0
	MOVWF      R4+3
	MOVF       FARG_hthang_x+0, 0
	MOVWF      R0+0
	MOVF       FARG_hthang_x+1, 0
	MOVWF      R0+1
	MOVF       FARG_hthang_x+2, 0
	MOVWF      R0+2
	MOVF       FARG_hthang_x+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_hthang10
	MOVF       FARG_hthang_L+0, 0
	MOVWF      R4+0
	MOVF       FARG_hthang_L+1, 0
	MOVWF      R4+1
	MOVF       FARG_hthang_L+2, 0
	MOVWF      R4+2
	MOVF       FARG_hthang_L+3, 0
	MOVWF      R4+3
	MOVF       FARG_hthang_x+0, 0
	MOVWF      R0+0
	MOVF       FARG_hthang_x+1, 0
	MOVWF      R0+1
	MOVF       FARG_hthang_x+2, 0
	MOVWF      R0+2
	MOVF       FARG_hthang_x+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__hthang+0
	MOVF       R0+1, 0
	MOVWF      FLOC__hthang+1
	MOVF       R0+2, 0
	MOVWF      FLOC__hthang+2
	MOVF       R0+3, 0
	MOVWF      FLOC__hthang+3
	MOVF       FARG_hthang_L+0, 0
	MOVWF      R4+0
	MOVF       FARG_hthang_L+1, 0
	MOVWF      R4+1
	MOVF       FARG_hthang_L+2, 0
	MOVWF      R4+2
	MOVF       FARG_hthang_L+3, 0
	MOVWF      R4+3
	MOVF       FARG_hthang_C1+0, 0
	MOVWF      R0+0
	MOVF       FARG_hthang_C1+1, 0
	MOVWF      R0+1
	MOVF       FARG_hthang_C1+2, 0
	MOVWF      R0+2
	MOVF       FARG_hthang_C1+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__hthang+0, 0
	MOVWF      R0+0
	MOVF       FLOC__hthang+1, 0
	MOVWF      R0+1
	MOVF       FLOC__hthang+2, 0
	MOVWF      R0+2
	MOVF       FLOC__hthang+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      hthang_y_L0+0
	MOVF       R0+1, 0
	MOVWF      hthang_y_L0+1
	MOVF       R0+2, 0
	MOVWF      hthang_y_L0+2
	MOVF       R0+3, 0
	MOVWF      hthang_y_L0+3
	GOTO       L_hthang11
L_hthang10:
;MyProject.c,47 :: 		else if(x < C2) y = 1;
	MOVF       FARG_hthang_C2+0, 0
	MOVWF      R4+0
	MOVF       FARG_hthang_C2+1, 0
	MOVWF      R4+1
	MOVF       FARG_hthang_C2+2, 0
	MOVWF      R4+2
	MOVF       FARG_hthang_C2+3, 0
	MOVWF      R4+3
	MOVF       FARG_hthang_x+0, 0
	MOVWF      R0+0
	MOVF       FARG_hthang_x+1, 0
	MOVWF      R0+1
	MOVF       FARG_hthang_x+2, 0
	MOVWF      R0+2
	MOVF       FARG_hthang_x+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_hthang12
	MOVLW      0
	MOVWF      hthang_y_L0+0
	MOVLW      0
	MOVWF      hthang_y_L0+1
	MOVLW      0
	MOVWF      hthang_y_L0+2
	MOVLW      127
	MOVWF      hthang_y_L0+3
	GOTO       L_hthang13
L_hthang12:
;MyProject.c,48 :: 		else if(x < R) y = (float) (R - x)/(R-C2);
	MOVF       FARG_hthang_R+0, 0
	MOVWF      R4+0
	MOVF       FARG_hthang_R+1, 0
	MOVWF      R4+1
	MOVF       FARG_hthang_R+2, 0
	MOVWF      R4+2
	MOVF       FARG_hthang_R+3, 0
	MOVWF      R4+3
	MOVF       FARG_hthang_x+0, 0
	MOVWF      R0+0
	MOVF       FARG_hthang_x+1, 0
	MOVWF      R0+1
	MOVF       FARG_hthang_x+2, 0
	MOVWF      R0+2
	MOVF       FARG_hthang_x+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_hthang14
	MOVF       FARG_hthang_x+0, 0
	MOVWF      R4+0
	MOVF       FARG_hthang_x+1, 0
	MOVWF      R4+1
	MOVF       FARG_hthang_x+2, 0
	MOVWF      R4+2
	MOVF       FARG_hthang_x+3, 0
	MOVWF      R4+3
	MOVF       FARG_hthang_R+0, 0
	MOVWF      R0+0
	MOVF       FARG_hthang_R+1, 0
	MOVWF      R0+1
	MOVF       FARG_hthang_R+2, 0
	MOVWF      R0+2
	MOVF       FARG_hthang_R+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__hthang+0
	MOVF       R0+1, 0
	MOVWF      FLOC__hthang+1
	MOVF       R0+2, 0
	MOVWF      FLOC__hthang+2
	MOVF       R0+3, 0
	MOVWF      FLOC__hthang+3
	MOVF       FARG_hthang_C2+0, 0
	MOVWF      R4+0
	MOVF       FARG_hthang_C2+1, 0
	MOVWF      R4+1
	MOVF       FARG_hthang_C2+2, 0
	MOVWF      R4+2
	MOVF       FARG_hthang_C2+3, 0
	MOVWF      R4+3
	MOVF       FARG_hthang_R+0, 0
	MOVWF      R0+0
	MOVF       FARG_hthang_R+1, 0
	MOVWF      R0+1
	MOVF       FARG_hthang_R+2, 0
	MOVWF      R0+2
	MOVF       FARG_hthang_R+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__hthang+0, 0
	MOVWF      R0+0
	MOVF       FLOC__hthang+1, 0
	MOVWF      R0+1
	MOVF       FLOC__hthang+2, 0
	MOVWF      R0+2
	MOVF       FLOC__hthang+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      hthang_y_L0+0
	MOVF       R0+1, 0
	MOVWF      hthang_y_L0+1
	MOVF       R0+2, 0
	MOVWF      hthang_y_L0+2
	MOVF       R0+3, 0
	MOVWF      hthang_y_L0+3
	GOTO       L_hthang15
L_hthang14:
;MyProject.c,49 :: 		else y = 0;
	CLRF       hthang_y_L0+0
	CLRF       hthang_y_L0+1
	CLRF       hthang_y_L0+2
	CLRF       hthang_y_L0+3
L_hthang15:
L_hthang13:
L_hthang11:
L_hthang9:
;MyProject.c,50 :: 		return y;
	MOVF       hthang_y_L0+0, 0
	MOVWF      R0+0
	MOVF       hthang_y_L0+1, 0
	MOVWF      R0+1
	MOVF       hthang_y_L0+2, 0
	MOVWF      R0+2
	MOVF       hthang_y_L0+3, 0
	MOVWF      R0+3
;MyProject.c,51 :: 		}
L_end_hthang:
	RETURN
; end of _hthang

_upgradefuzzy:

;MyProject.c,55 :: 		void upgradefuzzy(float dis){
;MyProject.c,56 :: 		ek1_1 = ek1;
	MOVF       _ek1+0, 0
	MOVWF      _ek1_1+0
	MOVF       _ek1+1, 0
	MOVWF      _ek1_1+1
	MOVF       _ek1+2, 0
	MOVWF      _ek1_1+2
	MOVF       _ek1+3, 0
	MOVWF      _ek1_1+3
;MyProject.c,57 :: 		ek1 = (setpoint - dis);
	MOVF       FARG_upgradefuzzy_dis+0, 0
	MOVWF      R4+0
	MOVF       FARG_upgradefuzzy_dis+1, 0
	MOVWF      R4+1
	MOVF       FARG_upgradefuzzy_dis+2, 0
	MOVWF      R4+2
	MOVF       FARG_upgradefuzzy_dis+3, 0
	MOVWF      R4+3
	MOVF       _setpoint+0, 0
	MOVWF      R0+0
	MOVF       _setpoint+1, 0
	MOVWF      R0+1
	MOVF       _setpoint+2, 0
	MOVWF      R0+2
	MOVF       _setpoint+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _ek1+0
	MOVF       R0+1, 0
	MOVWF      _ek1+1
	MOVF       R0+2, 0
	MOVWF      _ek1+2
	MOVF       R0+3, 0
	MOVWF      _ek1+3
;MyProject.c,58 :: 		ekk1 = (float) (ek1);
	MOVF       R0+0, 0
	MOVWF      _ekk1+0
	MOVF       R0+1, 0
	MOVWF      _ekk1+1
	MOVF       R0+2, 0
	MOVWF      _ekk1+2
	MOVF       R0+3, 0
	MOVWF      _ekk1+3
;MyProject.c,59 :: 		if(ekk1 > 1) ekk1 = 1;
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      0
	MOVWF      R0+2
	MOVLW      127
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_upgradefuzzy16
	MOVLW      0
	MOVWF      _ekk1+0
	MOVLW      0
	MOVWF      _ekk1+1
	MOVLW      0
	MOVWF      _ekk1+2
	MOVLW      127
	MOVWF      _ekk1+3
L_upgradefuzzy16:
;MyProject.c,60 :: 		if(ekk1 < -1) ekk1 = -1;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      128
	MOVWF      R4+2
	MOVLW      127
	MOVWF      R4+3
	MOVF       _ekk1+0, 0
	MOVWF      R0+0
	MOVF       _ekk1+1, 0
	MOVWF      R0+1
	MOVF       _ekk1+2, 0
	MOVWF      R0+2
	MOVF       _ekk1+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_upgradefuzzy17
	MOVLW      0
	MOVWF      _ekk1+0
	MOVLW      0
	MOVWF      _ekk1+1
	MOVLW      128
	MOVWF      _ekk1+2
	MOVLW      127
	MOVWF      _ekk1+3
L_upgradefuzzy17:
;MyProject.c,62 :: 		ekk_11 = (float) (ek1 - ek1_1)/(0.15*T1);
	MOVF       _ek1_1+0, 0
	MOVWF      R4+0
	MOVF       _ek1_1+1, 0
	MOVWF      R4+1
	MOVF       _ek1_1+2, 0
	MOVWF      R4+2
	MOVF       _ek1_1+3, 0
	MOVWF      R4+3
	MOVF       _ek1+0, 0
	MOVWF      R0+0
	MOVF       _ek1+1, 0
	MOVWF      R0+1
	MOVF       _ek1+2, 0
	MOVWF      R0+2
	MOVF       _ek1+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__upgradefuzzy+0
	MOVF       R0+1, 0
	MOVWF      FLOC__upgradefuzzy+1
	MOVF       R0+2, 0
	MOVWF      FLOC__upgradefuzzy+2
	MOVF       R0+3, 0
	MOVWF      FLOC__upgradefuzzy+3
	MOVLW      154
	MOVWF      R0+0
	MOVLW      153
	MOVWF      R0+1
	MOVLW      25
	MOVWF      R0+2
	MOVLW      124
	MOVWF      R0+3
	MOVF       _T1+0, 0
	MOVWF      R4+0
	MOVF       _T1+1, 0
	MOVWF      R4+1
	MOVF       _T1+2, 0
	MOVWF      R4+2
	MOVF       _T1+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__upgradefuzzy+0, 0
	MOVWF      R0+0
	MOVF       FLOC__upgradefuzzy+1, 0
	MOVWF      R0+1
	MOVF       FLOC__upgradefuzzy+2, 0
	MOVWF      R0+2
	MOVF       FLOC__upgradefuzzy+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _ekk_11+0
	MOVF       R0+1, 0
	MOVWF      _ekk_11+1
	MOVF       R0+2, 0
	MOVWF      _ekk_11+2
	MOVF       R0+3, 0
	MOVWF      _ekk_11+3
;MyProject.c,63 :: 		if(ekk_11 > 1) ekk_11 = 1;
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      0
	MOVWF      R0+2
	MOVLW      127
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_upgradefuzzy18
	MOVLW      0
	MOVWF      _ekk_11+0
	MOVLW      0
	MOVWF      _ekk_11+1
	MOVLW      0
	MOVWF      _ekk_11+2
	MOVLW      127
	MOVWF      _ekk_11+3
L_upgradefuzzy18:
;MyProject.c,64 :: 		if(ekk_11 < -1) ekk_11 = -1;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      128
	MOVWF      R4+2
	MOVLW      127
	MOVWF      R4+3
	MOVF       _ekk_11+0, 0
	MOVWF      R0+0
	MOVF       _ekk_11+1, 0
	MOVWF      R0+1
	MOVF       _ekk_11+2, 0
	MOVWF      R0+2
	MOVF       _ekk_11+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_upgradefuzzy19
	MOVLW      0
	MOVWF      _ekk_11+0
	MOVLW      0
	MOVWF      _ekk_11+1
	MOVLW      128
	MOVWF      _ekk_11+2
	MOVLW      127
	MOVWF      _ekk_11+3
L_upgradefuzzy19:
;MyProject.c,66 :: 		Enb = hthang(ekk1,-2,-1,-c2,-c1);
	MOVF       _ekk1+0, 0
	MOVWF      FARG_hthang_x+0
	MOVF       _ekk1+1, 0
	MOVWF      FARG_hthang_x+1
	MOVF       _ekk1+2, 0
	MOVWF      FARG_hthang_x+2
	MOVF       _ekk1+3, 0
	MOVWF      FARG_hthang_x+3
	MOVLW      0
	MOVWF      FARG_hthang_L+0
	MOVLW      0
	MOVWF      FARG_hthang_L+1
	MOVLW      128
	MOVWF      FARG_hthang_L+2
	MOVLW      128
	MOVWF      FARG_hthang_L+3
	MOVLW      0
	MOVWF      FARG_hthang_C1+0
	MOVLW      0
	MOVWF      FARG_hthang_C1+1
	MOVLW      128
	MOVWF      FARG_hthang_C1+2
	MOVLW      127
	MOVWF      FARG_hthang_C1+3
	MOVLW      0
	XORWF      _c2+0, 0
	MOVWF      FARG_hthang_C2+0
	MOVLW      0
	XORWF      _c2+1, 0
	MOVWF      FARG_hthang_C2+1
	MOVLW      128
	XORWF      _c2+2, 0
	MOVWF      FARG_hthang_C2+2
	MOVLW      0
	XORWF      _c2+3, 0
	MOVWF      FARG_hthang_C2+3
	MOVLW      0
	XORWF      _c1+0, 0
	MOVWF      FARG_hthang_R+0
	MOVLW      0
	XORWF      _c1+1, 0
	MOVWF      FARG_hthang_R+1
	MOVLW      128
	XORWF      _c1+2, 0
	MOVWF      FARG_hthang_R+2
	MOVLW      0
	XORWF      _c1+3, 0
	MOVWF      FARG_hthang_R+3
	CALL       _hthang+0
	MOVF       R0+0, 0
	MOVWF      _Enb+0
	MOVF       R0+1, 0
	MOVWF      _Enb+1
	MOVF       R0+2, 0
	MOVWF      _Enb+2
	MOVF       R0+3, 0
	MOVWF      _Enb+3
;MyProject.c,67 :: 		Ens = hthang(ekk1,-c2,-c1,-c1,0);
	MOVF       _ekk1+0, 0
	MOVWF      FARG_hthang_x+0
	MOVF       _ekk1+1, 0
	MOVWF      FARG_hthang_x+1
	MOVF       _ekk1+2, 0
	MOVWF      FARG_hthang_x+2
	MOVF       _ekk1+3, 0
	MOVWF      FARG_hthang_x+3
	MOVLW      0
	XORWF      _c2+0, 0
	MOVWF      FARG_hthang_L+0
	MOVLW      0
	XORWF      _c2+1, 0
	MOVWF      FARG_hthang_L+1
	MOVLW      128
	XORWF      _c2+2, 0
	MOVWF      FARG_hthang_L+2
	MOVLW      0
	XORWF      _c2+3, 0
	MOVWF      FARG_hthang_L+3
	MOVLW      0
	XORWF      _c1+0, 0
	MOVWF      FARG_hthang_C1+0
	MOVLW      0
	XORWF      _c1+1, 0
	MOVWF      FARG_hthang_C1+1
	MOVLW      128
	XORWF      _c1+2, 0
	MOVWF      FARG_hthang_C1+2
	MOVLW      0
	XORWF      _c1+3, 0
	MOVWF      FARG_hthang_C1+3
	MOVLW      0
	XORWF      _c1+0, 0
	MOVWF      FARG_hthang_C2+0
	MOVLW      0
	XORWF      _c1+1, 0
	MOVWF      FARG_hthang_C2+1
	MOVLW      128
	XORWF      _c1+2, 0
	MOVWF      FARG_hthang_C2+2
	MOVLW      0
	XORWF      _c1+3, 0
	MOVWF      FARG_hthang_C2+3
	CLRF       FARG_hthang_R+0
	CLRF       FARG_hthang_R+1
	CLRF       FARG_hthang_R+2
	CLRF       FARG_hthang_R+3
	CALL       _hthang+0
	MOVF       R0+0, 0
	MOVWF      _Ens+0
	MOVF       R0+1, 0
	MOVWF      _Ens+1
	MOVF       R0+2, 0
	MOVWF      _Ens+2
	MOVF       R0+3, 0
	MOVWF      _Ens+3
;MyProject.c,68 :: 		Eze = hthang(ekk1,-c1,0,0,c1);
	MOVF       _ekk1+0, 0
	MOVWF      FARG_hthang_x+0
	MOVF       _ekk1+1, 0
	MOVWF      FARG_hthang_x+1
	MOVF       _ekk1+2, 0
	MOVWF      FARG_hthang_x+2
	MOVF       _ekk1+3, 0
	MOVWF      FARG_hthang_x+3
	MOVLW      0
	XORWF      _c1+0, 0
	MOVWF      FARG_hthang_L+0
	MOVLW      0
	XORWF      _c1+1, 0
	MOVWF      FARG_hthang_L+1
	MOVLW      128
	XORWF      _c1+2, 0
	MOVWF      FARG_hthang_L+2
	MOVLW      0
	XORWF      _c1+3, 0
	MOVWF      FARG_hthang_L+3
	CLRF       FARG_hthang_C1+0
	CLRF       FARG_hthang_C1+1
	CLRF       FARG_hthang_C1+2
	CLRF       FARG_hthang_C1+3
	CLRF       FARG_hthang_C2+0
	CLRF       FARG_hthang_C2+1
	CLRF       FARG_hthang_C2+2
	CLRF       FARG_hthang_C2+3
	MOVF       _c1+0, 0
	MOVWF      FARG_hthang_R+0
	MOVF       _c1+1, 0
	MOVWF      FARG_hthang_R+1
	MOVF       _c1+2, 0
	MOVWF      FARG_hthang_R+2
	MOVF       _c1+3, 0
	MOVWF      FARG_hthang_R+3
	CALL       _hthang+0
	MOVF       R0+0, 0
	MOVWF      _Eze+0
	MOVF       R0+1, 0
	MOVWF      _Eze+1
	MOVF       R0+2, 0
	MOVWF      _Eze+2
	MOVF       R0+3, 0
	MOVWF      _Eze+3
;MyProject.c,69 :: 		Eps = hthang(ekk1,0,c1,c1,c2);
	MOVF       _ekk1+0, 0
	MOVWF      FARG_hthang_x+0
	MOVF       _ekk1+1, 0
	MOVWF      FARG_hthang_x+1
	MOVF       _ekk1+2, 0
	MOVWF      FARG_hthang_x+2
	MOVF       _ekk1+3, 0
	MOVWF      FARG_hthang_x+3
	CLRF       FARG_hthang_L+0
	CLRF       FARG_hthang_L+1
	CLRF       FARG_hthang_L+2
	CLRF       FARG_hthang_L+3
	MOVF       _c1+0, 0
	MOVWF      FARG_hthang_C1+0
	MOVF       _c1+1, 0
	MOVWF      FARG_hthang_C1+1
	MOVF       _c1+2, 0
	MOVWF      FARG_hthang_C1+2
	MOVF       _c1+3, 0
	MOVWF      FARG_hthang_C1+3
	MOVF       _c1+0, 0
	MOVWF      FARG_hthang_C2+0
	MOVF       _c1+1, 0
	MOVWF      FARG_hthang_C2+1
	MOVF       _c1+2, 0
	MOVWF      FARG_hthang_C2+2
	MOVF       _c1+3, 0
	MOVWF      FARG_hthang_C2+3
	MOVF       _c2+0, 0
	MOVWF      FARG_hthang_R+0
	MOVF       _c2+1, 0
	MOVWF      FARG_hthang_R+1
	MOVF       _c2+2, 0
	MOVWF      FARG_hthang_R+2
	MOVF       _c2+3, 0
	MOVWF      FARG_hthang_R+3
	CALL       _hthang+0
	MOVF       R0+0, 0
	MOVWF      _Eps+0
	MOVF       R0+1, 0
	MOVWF      _Eps+1
	MOVF       R0+2, 0
	MOVWF      _Eps+2
	MOVF       R0+3, 0
	MOVWF      _Eps+3
;MyProject.c,70 :: 		Epb = hthang(ekk1,c1,c2,1,2);
	MOVF       _ekk1+0, 0
	MOVWF      FARG_hthang_x+0
	MOVF       _ekk1+1, 0
	MOVWF      FARG_hthang_x+1
	MOVF       _ekk1+2, 0
	MOVWF      FARG_hthang_x+2
	MOVF       _ekk1+3, 0
	MOVWF      FARG_hthang_x+3
	MOVF       _c1+0, 0
	MOVWF      FARG_hthang_L+0
	MOVF       _c1+1, 0
	MOVWF      FARG_hthang_L+1
	MOVF       _c1+2, 0
	MOVWF      FARG_hthang_L+2
	MOVF       _c1+3, 0
	MOVWF      FARG_hthang_L+3
	MOVF       _c2+0, 0
	MOVWF      FARG_hthang_C1+0
	MOVF       _c2+1, 0
	MOVWF      FARG_hthang_C1+1
	MOVF       _c2+2, 0
	MOVWF      FARG_hthang_C1+2
	MOVF       _c2+3, 0
	MOVWF      FARG_hthang_C1+3
	MOVLW      0
	MOVWF      FARG_hthang_C2+0
	MOVLW      0
	MOVWF      FARG_hthang_C2+1
	MOVLW      0
	MOVWF      FARG_hthang_C2+2
	MOVLW      127
	MOVWF      FARG_hthang_C2+3
	MOVLW      0
	MOVWF      FARG_hthang_R+0
	MOVLW      0
	MOVWF      FARG_hthang_R+1
	MOVLW      0
	MOVWF      FARG_hthang_R+2
	MOVLW      128
	MOVWF      FARG_hthang_R+3
	CALL       _hthang+0
	MOVF       R0+0, 0
	MOVWF      _Epb+0
	MOVF       R0+1, 0
	MOVWF      _Epb+1
	MOVF       R0+2, 0
	MOVWF      _Epb+2
	MOVF       R0+3, 0
	MOVWF      _Epb+3
;MyProject.c,72 :: 		Edotnb = hthang(ekk_11,-2,-1,-c4,-c3);
	MOVF       _ekk_11+0, 0
	MOVWF      FARG_hthang_x+0
	MOVF       _ekk_11+1, 0
	MOVWF      FARG_hthang_x+1
	MOVF       _ekk_11+2, 0
	MOVWF      FARG_hthang_x+2
	MOVF       _ekk_11+3, 0
	MOVWF      FARG_hthang_x+3
	MOVLW      0
	MOVWF      FARG_hthang_L+0
	MOVLW      0
	MOVWF      FARG_hthang_L+1
	MOVLW      128
	MOVWF      FARG_hthang_L+2
	MOVLW      128
	MOVWF      FARG_hthang_L+3
	MOVLW      0
	MOVWF      FARG_hthang_C1+0
	MOVLW      0
	MOVWF      FARG_hthang_C1+1
	MOVLW      128
	MOVWF      FARG_hthang_C1+2
	MOVLW      127
	MOVWF      FARG_hthang_C1+3
	MOVLW      0
	XORWF      _c4+0, 0
	MOVWF      FARG_hthang_C2+0
	MOVLW      0
	XORWF      _c4+1, 0
	MOVWF      FARG_hthang_C2+1
	MOVLW      128
	XORWF      _c4+2, 0
	MOVWF      FARG_hthang_C2+2
	MOVLW      0
	XORWF      _c4+3, 0
	MOVWF      FARG_hthang_C2+3
	MOVLW      0
	XORWF      _c3+0, 0
	MOVWF      FARG_hthang_R+0
	MOVLW      0
	XORWF      _c3+1, 0
	MOVWF      FARG_hthang_R+1
	MOVLW      128
	XORWF      _c3+2, 0
	MOVWF      FARG_hthang_R+2
	MOVLW      0
	XORWF      _c3+3, 0
	MOVWF      FARG_hthang_R+3
	CALL       _hthang+0
	MOVF       R0+0, 0
	MOVWF      _Edotnb+0
	MOVF       R0+1, 0
	MOVWF      _Edotnb+1
	MOVF       R0+2, 0
	MOVWF      _Edotnb+2
	MOVF       R0+3, 0
	MOVWF      _Edotnb+3
;MyProject.c,73 :: 		Edotns = hthang(ekk_11,-c4,-c3,-c3,0);
	MOVF       _ekk_11+0, 0
	MOVWF      FARG_hthang_x+0
	MOVF       _ekk_11+1, 0
	MOVWF      FARG_hthang_x+1
	MOVF       _ekk_11+2, 0
	MOVWF      FARG_hthang_x+2
	MOVF       _ekk_11+3, 0
	MOVWF      FARG_hthang_x+3
	MOVLW      0
	XORWF      _c4+0, 0
	MOVWF      FARG_hthang_L+0
	MOVLW      0
	XORWF      _c4+1, 0
	MOVWF      FARG_hthang_L+1
	MOVLW      128
	XORWF      _c4+2, 0
	MOVWF      FARG_hthang_L+2
	MOVLW      0
	XORWF      _c4+3, 0
	MOVWF      FARG_hthang_L+3
	MOVLW      0
	XORWF      _c3+0, 0
	MOVWF      FARG_hthang_C1+0
	MOVLW      0
	XORWF      _c3+1, 0
	MOVWF      FARG_hthang_C1+1
	MOVLW      128
	XORWF      _c3+2, 0
	MOVWF      FARG_hthang_C1+2
	MOVLW      0
	XORWF      _c3+3, 0
	MOVWF      FARG_hthang_C1+3
	MOVLW      0
	XORWF      _c3+0, 0
	MOVWF      FARG_hthang_C2+0
	MOVLW      0
	XORWF      _c3+1, 0
	MOVWF      FARG_hthang_C2+1
	MOVLW      128
	XORWF      _c3+2, 0
	MOVWF      FARG_hthang_C2+2
	MOVLW      0
	XORWF      _c3+3, 0
	MOVWF      FARG_hthang_C2+3
	CLRF       FARG_hthang_R+0
	CLRF       FARG_hthang_R+1
	CLRF       FARG_hthang_R+2
	CLRF       FARG_hthang_R+3
	CALL       _hthang+0
	MOVF       R0+0, 0
	MOVWF      _Edotns+0
	MOVF       R0+1, 0
	MOVWF      _Edotns+1
	MOVF       R0+2, 0
	MOVWF      _Edotns+2
	MOVF       R0+3, 0
	MOVWF      _Edotns+3
;MyProject.c,74 :: 		Edotze = hthang(ekk_11,-c3,0,0,c3);
	MOVF       _ekk_11+0, 0
	MOVWF      FARG_hthang_x+0
	MOVF       _ekk_11+1, 0
	MOVWF      FARG_hthang_x+1
	MOVF       _ekk_11+2, 0
	MOVWF      FARG_hthang_x+2
	MOVF       _ekk_11+3, 0
	MOVWF      FARG_hthang_x+3
	MOVLW      0
	XORWF      _c3+0, 0
	MOVWF      FARG_hthang_L+0
	MOVLW      0
	XORWF      _c3+1, 0
	MOVWF      FARG_hthang_L+1
	MOVLW      128
	XORWF      _c3+2, 0
	MOVWF      FARG_hthang_L+2
	MOVLW      0
	XORWF      _c3+3, 0
	MOVWF      FARG_hthang_L+3
	CLRF       FARG_hthang_C1+0
	CLRF       FARG_hthang_C1+1
	CLRF       FARG_hthang_C1+2
	CLRF       FARG_hthang_C1+3
	CLRF       FARG_hthang_C2+0
	CLRF       FARG_hthang_C2+1
	CLRF       FARG_hthang_C2+2
	CLRF       FARG_hthang_C2+3
	MOVF       _c3+0, 0
	MOVWF      FARG_hthang_R+0
	MOVF       _c3+1, 0
	MOVWF      FARG_hthang_R+1
	MOVF       _c3+2, 0
	MOVWF      FARG_hthang_R+2
	MOVF       _c3+3, 0
	MOVWF      FARG_hthang_R+3
	CALL       _hthang+0
	MOVF       R0+0, 0
	MOVWF      _Edotze+0
	MOVF       R0+1, 0
	MOVWF      _Edotze+1
	MOVF       R0+2, 0
	MOVWF      _Edotze+2
	MOVF       R0+3, 0
	MOVWF      _Edotze+3
;MyProject.c,75 :: 		Edotps = hthang(ekk_11,0,c3,c3,c4);
	MOVF       _ekk_11+0, 0
	MOVWF      FARG_hthang_x+0
	MOVF       _ekk_11+1, 0
	MOVWF      FARG_hthang_x+1
	MOVF       _ekk_11+2, 0
	MOVWF      FARG_hthang_x+2
	MOVF       _ekk_11+3, 0
	MOVWF      FARG_hthang_x+3
	CLRF       FARG_hthang_L+0
	CLRF       FARG_hthang_L+1
	CLRF       FARG_hthang_L+2
	CLRF       FARG_hthang_L+3
	MOVF       _c3+0, 0
	MOVWF      FARG_hthang_C1+0
	MOVF       _c3+1, 0
	MOVWF      FARG_hthang_C1+1
	MOVF       _c3+2, 0
	MOVWF      FARG_hthang_C1+2
	MOVF       _c3+3, 0
	MOVWF      FARG_hthang_C1+3
	MOVF       _c3+0, 0
	MOVWF      FARG_hthang_C2+0
	MOVF       _c3+1, 0
	MOVWF      FARG_hthang_C2+1
	MOVF       _c3+2, 0
	MOVWF      FARG_hthang_C2+2
	MOVF       _c3+3, 0
	MOVWF      FARG_hthang_C2+3
	MOVF       _c4+0, 0
	MOVWF      FARG_hthang_R+0
	MOVF       _c4+1, 0
	MOVWF      FARG_hthang_R+1
	MOVF       _c4+2, 0
	MOVWF      FARG_hthang_R+2
	MOVF       _c4+3, 0
	MOVWF      FARG_hthang_R+3
	CALL       _hthang+0
	MOVF       R0+0, 0
	MOVWF      _Edotps+0
	MOVF       R0+1, 0
	MOVWF      _Edotps+1
	MOVF       R0+2, 0
	MOVWF      _Edotps+2
	MOVF       R0+3, 0
	MOVWF      _Edotps+3
;MyProject.c,76 :: 		Edotpb = hthang(ekk_11,c3,c4,1,2);
	MOVF       _ekk_11+0, 0
	MOVWF      FARG_hthang_x+0
	MOVF       _ekk_11+1, 0
	MOVWF      FARG_hthang_x+1
	MOVF       _ekk_11+2, 0
	MOVWF      FARG_hthang_x+2
	MOVF       _ekk_11+3, 0
	MOVWF      FARG_hthang_x+3
	MOVF       _c3+0, 0
	MOVWF      FARG_hthang_L+0
	MOVF       _c3+1, 0
	MOVWF      FARG_hthang_L+1
	MOVF       _c3+2, 0
	MOVWF      FARG_hthang_L+2
	MOVF       _c3+3, 0
	MOVWF      FARG_hthang_L+3
	MOVF       _c4+0, 0
	MOVWF      FARG_hthang_C1+0
	MOVF       _c4+1, 0
	MOVWF      FARG_hthang_C1+1
	MOVF       _c4+2, 0
	MOVWF      FARG_hthang_C1+2
	MOVF       _c4+3, 0
	MOVWF      FARG_hthang_C1+3
	MOVLW      0
	MOVWF      FARG_hthang_C2+0
	MOVLW      0
	MOVWF      FARG_hthang_C2+1
	MOVLW      0
	MOVWF      FARG_hthang_C2+2
	MOVLW      127
	MOVWF      FARG_hthang_C2+3
	MOVLW      0
	MOVWF      FARG_hthang_R+0
	MOVLW      0
	MOVWF      FARG_hthang_R+1
	MOVLW      0
	MOVWF      FARG_hthang_R+2
	MOVLW      128
	MOVWF      FARG_hthang_R+3
	CALL       _hthang+0
	MOVF       R0+0, 0
	MOVWF      _Edotpb+0
	MOVF       R0+1, 0
	MOVWF      _Edotpb+1
	MOVF       R0+2, 0
	MOVWF      _Edotpb+2
	MOVF       R0+3, 0
	MOVWF      _Edotpb+3
;MyProject.c,78 :: 		}
L_end_upgradefuzzy:
	RETURN
; end of _upgradefuzzy

_fuzzypd:

;MyProject.c,81 :: 		void fuzzypd(float dis){
;MyProject.c,82 :: 		upgradefuzzy(dis);
	MOVF       FARG_fuzzypd_dis+0, 0
	MOVWF      FARG_upgradefuzzy_dis+0
	MOVF       FARG_fuzzypd_dis+1, 0
	MOVWF      FARG_upgradefuzzy_dis+1
	MOVF       FARG_fuzzypd_dis+2, 0
	MOVWF      FARG_upgradefuzzy_dis+2
	MOVF       FARG_fuzzypd_dis+3, 0
	MOVWF      FARG_upgradefuzzy_dis+3
	CALL       _upgradefuzzy+0
;MyProject.c,84 :: 		Unb = max(Epb*Edotpb,Epb*Edotps);
	MOVF       _Epb+0, 0
	MOVWF      R0+0
	MOVF       _Epb+1, 0
	MOVWF      R0+1
	MOVF       _Epb+2, 0
	MOVWF      R0+2
	MOVF       _Epb+3, 0
	MOVWF      R0+3
	MOVF       _Edotpb+0, 0
	MOVWF      R4+0
	MOVF       _Edotpb+1, 0
	MOVWF      R4+1
	MOVF       _Edotpb+2, 0
	MOVWF      R4+2
	MOVF       _Edotpb+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Epb+0, 0
	MOVWF      R0+0
	MOVF       _Epb+1, 0
	MOVWF      R0+1
	MOVF       _Epb+2, 0
	MOVWF      R0+2
	MOVF       _Epb+3, 0
	MOVWF      R0+3
	MOVF       _Edotps+0, 0
	MOVWF      R4+0
	MOVF       _Edotps+1, 0
	MOVWF      R4+1
	MOVF       _Edotps+2, 0
	MOVWF      R4+2
	MOVF       _Edotps+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Unb+0
	MOVF       R0+1, 0
	MOVWF      _Unb+1
	MOVF       R0+2, 0
	MOVWF      _Unb+2
	MOVF       R0+3, 0
	MOVWF      _Unb+3
;MyProject.c,85 :: 		Unb = max(Unb,Eps*Edotpb);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Eps+0, 0
	MOVWF      R0+0
	MOVF       _Eps+1, 0
	MOVWF      R0+1
	MOVF       _Eps+2, 0
	MOVWF      R0+2
	MOVF       _Eps+3, 0
	MOVWF      R0+3
	MOVF       _Edotpb+0, 0
	MOVWF      R4+0
	MOVF       _Edotpb+1, 0
	MOVWF      R4+1
	MOVF       _Edotpb+2, 0
	MOVWF      R4+2
	MOVF       _Edotpb+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Unb+0
	MOVF       R0+1, 0
	MOVWF      _Unb+1
	MOVF       R0+2, 0
	MOVWF      _Unb+2
	MOVF       R0+3, 0
	MOVWF      _Unb+3
;MyProject.c,87 :: 		Unm = max(Epb*Edotze,Eps*Edotps);
	MOVF       _Epb+0, 0
	MOVWF      R0+0
	MOVF       _Epb+1, 0
	MOVWF      R0+1
	MOVF       _Epb+2, 0
	MOVWF      R0+2
	MOVF       _Epb+3, 0
	MOVWF      R0+3
	MOVF       _Edotze+0, 0
	MOVWF      R4+0
	MOVF       _Edotze+1, 0
	MOVWF      R4+1
	MOVF       _Edotze+2, 0
	MOVWF      R4+2
	MOVF       _Edotze+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Eps+0, 0
	MOVWF      R0+0
	MOVF       _Eps+1, 0
	MOVWF      R0+1
	MOVF       _Eps+2, 0
	MOVWF      R0+2
	MOVF       _Eps+3, 0
	MOVWF      R0+3
	MOVF       _Edotps+0, 0
	MOVWF      R4+0
	MOVF       _Edotps+1, 0
	MOVWF      R4+1
	MOVF       _Edotps+2, 0
	MOVWF      R4+2
	MOVF       _Edotps+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Unm+0
	MOVF       R0+1, 0
	MOVWF      _Unm+1
	MOVF       R0+2, 0
	MOVWF      _Unm+2
	MOVF       R0+3, 0
	MOVWF      _Unm+3
;MyProject.c,88 :: 		Unm = max(Unm,Eze*Edotpb);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Eze+0, 0
	MOVWF      R0+0
	MOVF       _Eze+1, 0
	MOVWF      R0+1
	MOVF       _Eze+2, 0
	MOVWF      R0+2
	MOVF       _Eze+3, 0
	MOVWF      R0+3
	MOVF       _Edotpb+0, 0
	MOVWF      R4+0
	MOVF       _Edotpb+1, 0
	MOVWF      R4+1
	MOVF       _Edotpb+2, 0
	MOVWF      R4+2
	MOVF       _Edotpb+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Unm+0
	MOVF       R0+1, 0
	MOVWF      _Unm+1
	MOVF       R0+2, 0
	MOVWF      _Unm+2
	MOVF       R0+3, 0
	MOVWF      _Unm+3
;MyProject.c,90 :: 		Uns = max(Epb*Edotns,Eps*Edotze);
	MOVF       _Epb+0, 0
	MOVWF      R0+0
	MOVF       _Epb+1, 0
	MOVWF      R0+1
	MOVF       _Epb+2, 0
	MOVWF      R0+2
	MOVF       _Epb+3, 0
	MOVWF      R0+3
	MOVF       _Edotns+0, 0
	MOVWF      R4+0
	MOVF       _Edotns+1, 0
	MOVWF      R4+1
	MOVF       _Edotns+2, 0
	MOVWF      R4+2
	MOVF       _Edotns+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Eps+0, 0
	MOVWF      R0+0
	MOVF       _Eps+1, 0
	MOVWF      R0+1
	MOVF       _Eps+2, 0
	MOVWF      R0+2
	MOVF       _Eps+3, 0
	MOVWF      R0+3
	MOVF       _Edotze+0, 0
	MOVWF      R4+0
	MOVF       _Edotze+1, 0
	MOVWF      R4+1
	MOVF       _Edotze+2, 0
	MOVWF      R4+2
	MOVF       _Edotze+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Uns+0
	MOVF       R0+1, 0
	MOVWF      _Uns+1
	MOVF       R0+2, 0
	MOVWF      _Uns+2
	MOVF       R0+3, 0
	MOVWF      _Uns+3
;MyProject.c,91 :: 		Uns = max(Uns,Eze*Edotps);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Eze+0, 0
	MOVWF      R0+0
	MOVF       _Eze+1, 0
	MOVWF      R0+1
	MOVF       _Eze+2, 0
	MOVWF      R0+2
	MOVF       _Eze+3, 0
	MOVWF      R0+3
	MOVF       _Edotps+0, 0
	MOVWF      R4+0
	MOVF       _Edotps+1, 0
	MOVWF      R4+1
	MOVF       _Edotps+2, 0
	MOVWF      R4+2
	MOVF       _Edotps+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Uns+0
	MOVF       R0+1, 0
	MOVWF      _Uns+1
	MOVF       R0+2, 0
	MOVWF      _Uns+2
	MOVF       R0+3, 0
	MOVWF      _Uns+3
;MyProject.c,92 :: 		Uns = max(Uns, Ens*Edotpb);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Ens+0, 0
	MOVWF      R0+0
	MOVF       _Ens+1, 0
	MOVWF      R0+1
	MOVF       _Ens+2, 0
	MOVWF      R0+2
	MOVF       _Ens+3, 0
	MOVWF      R0+3
	MOVF       _Edotpb+0, 0
	MOVWF      R4+0
	MOVF       _Edotpb+1, 0
	MOVWF      R4+1
	MOVF       _Edotpb+2, 0
	MOVWF      R4+2
	MOVF       _Edotpb+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Uns+0
	MOVF       R0+1, 0
	MOVWF      _Uns+1
	MOVF       R0+2, 0
	MOVWF      _Uns+2
	MOVF       R0+3, 0
	MOVWF      _Uns+3
;MyProject.c,94 :: 		Uze = max(Epb*Edotnb,Eps*Edotns);
	MOVF       _Epb+0, 0
	MOVWF      R0+0
	MOVF       _Epb+1, 0
	MOVWF      R0+1
	MOVF       _Epb+2, 0
	MOVWF      R0+2
	MOVF       _Epb+3, 0
	MOVWF      R0+3
	MOVF       _Edotnb+0, 0
	MOVWF      R4+0
	MOVF       _Edotnb+1, 0
	MOVWF      R4+1
	MOVF       _Edotnb+2, 0
	MOVWF      R4+2
	MOVF       _Edotnb+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Eps+0, 0
	MOVWF      R0+0
	MOVF       _Eps+1, 0
	MOVWF      R0+1
	MOVF       _Eps+2, 0
	MOVWF      R0+2
	MOVF       _Eps+3, 0
	MOVWF      R0+3
	MOVF       _Edotns+0, 0
	MOVWF      R4+0
	MOVF       _Edotns+1, 0
	MOVWF      R4+1
	MOVF       _Edotns+2, 0
	MOVWF      R4+2
	MOVF       _Edotns+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Uze+0
	MOVF       R0+1, 0
	MOVWF      _Uze+1
	MOVF       R0+2, 0
	MOVWF      _Uze+2
	MOVF       R0+3, 0
	MOVWF      _Uze+3
;MyProject.c,95 :: 		Uze = max(Uze,Eze*Edotze);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Eze+0, 0
	MOVWF      R0+0
	MOVF       _Eze+1, 0
	MOVWF      R0+1
	MOVF       _Eze+2, 0
	MOVWF      R0+2
	MOVF       _Eze+3, 0
	MOVWF      R0+3
	MOVF       _Edotze+0, 0
	MOVWF      R4+0
	MOVF       _Edotze+1, 0
	MOVWF      R4+1
	MOVF       _Edotze+2, 0
	MOVWF      R4+2
	MOVF       _Edotze+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Uze+0
	MOVF       R0+1, 0
	MOVWF      _Uze+1
	MOVF       R0+2, 0
	MOVWF      _Uze+2
	MOVF       R0+3, 0
	MOVWF      _Uze+3
;MyProject.c,96 :: 		Uze = max(Uze,Ens*Edotps);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Ens+0, 0
	MOVWF      R0+0
	MOVF       _Ens+1, 0
	MOVWF      R0+1
	MOVF       _Ens+2, 0
	MOVWF      R0+2
	MOVF       _Ens+3, 0
	MOVWF      R0+3
	MOVF       _Edotps+0, 0
	MOVWF      R4+0
	MOVF       _Edotps+1, 0
	MOVWF      R4+1
	MOVF       _Edotps+2, 0
	MOVWF      R4+2
	MOVF       _Edotps+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Uze+0
	MOVF       R0+1, 0
	MOVWF      _Uze+1
	MOVF       R0+2, 0
	MOVWF      _Uze+2
	MOVF       R0+3, 0
	MOVWF      _Uze+3
;MyProject.c,97 :: 		Uze = max(Uze,Enb*Edotpb);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Enb+0, 0
	MOVWF      R0+0
	MOVF       _Enb+1, 0
	MOVWF      R0+1
	MOVF       _Enb+2, 0
	MOVWF      R0+2
	MOVF       _Enb+3, 0
	MOVWF      R0+3
	MOVF       _Edotpb+0, 0
	MOVWF      R4+0
	MOVF       _Edotpb+1, 0
	MOVWF      R4+1
	MOVF       _Edotpb+2, 0
	MOVWF      R4+2
	MOVF       _Edotpb+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Uze+0
	MOVF       R0+1, 0
	MOVWF      _Uze+1
	MOVF       R0+2, 0
	MOVWF      _Uze+2
	MOVF       R0+3, 0
	MOVWF      _Uze+3
;MyProject.c,99 :: 		Ups = max(Eps*Edotnb,Eze*Edotns);
	MOVF       _Eps+0, 0
	MOVWF      R0+0
	MOVF       _Eps+1, 0
	MOVWF      R0+1
	MOVF       _Eps+2, 0
	MOVWF      R0+2
	MOVF       _Eps+3, 0
	MOVWF      R0+3
	MOVF       _Edotnb+0, 0
	MOVWF      R4+0
	MOVF       _Edotnb+1, 0
	MOVWF      R4+1
	MOVF       _Edotnb+2, 0
	MOVWF      R4+2
	MOVF       _Edotnb+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Eze+0, 0
	MOVWF      R0+0
	MOVF       _Eze+1, 0
	MOVWF      R0+1
	MOVF       _Eze+2, 0
	MOVWF      R0+2
	MOVF       _Eze+3, 0
	MOVWF      R0+3
	MOVF       _Edotns+0, 0
	MOVWF      R4+0
	MOVF       _Edotns+1, 0
	MOVWF      R4+1
	MOVF       _Edotns+2, 0
	MOVWF      R4+2
	MOVF       _Edotns+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Ups+0
	MOVF       R0+1, 0
	MOVWF      _Ups+1
	MOVF       R0+2, 0
	MOVWF      _Ups+2
	MOVF       R0+3, 0
	MOVWF      _Ups+3
;MyProject.c,100 :: 		Ups = max(Ups,Ens*Edotze);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Ens+0, 0
	MOVWF      R0+0
	MOVF       _Ens+1, 0
	MOVWF      R0+1
	MOVF       _Ens+2, 0
	MOVWF      R0+2
	MOVF       _Ens+3, 0
	MOVWF      R0+3
	MOVF       _Edotze+0, 0
	MOVWF      R4+0
	MOVF       _Edotze+1, 0
	MOVWF      R4+1
	MOVF       _Edotze+2, 0
	MOVWF      R4+2
	MOVF       _Edotze+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Ups+0
	MOVF       R0+1, 0
	MOVWF      _Ups+1
	MOVF       R0+2, 0
	MOVWF      _Ups+2
	MOVF       R0+3, 0
	MOVWF      _Ups+3
;MyProject.c,101 :: 		Ups = max(Ups,Enb*Edotps);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Enb+0, 0
	MOVWF      R0+0
	MOVF       _Enb+1, 0
	MOVWF      R0+1
	MOVF       _Enb+2, 0
	MOVWF      R0+2
	MOVF       _Enb+3, 0
	MOVWF      R0+3
	MOVF       _Edotps+0, 0
	MOVWF      R4+0
	MOVF       _Edotps+1, 0
	MOVWF      R4+1
	MOVF       _Edotps+2, 0
	MOVWF      R4+2
	MOVF       _Edotps+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Ups+0
	MOVF       R0+1, 0
	MOVWF      _Ups+1
	MOVF       R0+2, 0
	MOVWF      _Ups+2
	MOVF       R0+3, 0
	MOVWF      _Ups+3
;MyProject.c,103 :: 		Upm = max(Eze*Edotnb,Ens*Edotns);
	MOVF       _Eze+0, 0
	MOVWF      R0+0
	MOVF       _Eze+1, 0
	MOVWF      R0+1
	MOVF       _Eze+2, 0
	MOVWF      R0+2
	MOVF       _Eze+3, 0
	MOVWF      R0+3
	MOVF       _Edotnb+0, 0
	MOVWF      R4+0
	MOVF       _Edotnb+1, 0
	MOVWF      R4+1
	MOVF       _Edotnb+2, 0
	MOVWF      R4+2
	MOVF       _Edotnb+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Ens+0, 0
	MOVWF      R0+0
	MOVF       _Ens+1, 0
	MOVWF      R0+1
	MOVF       _Ens+2, 0
	MOVWF      R0+2
	MOVF       _Ens+3, 0
	MOVWF      R0+3
	MOVF       _Edotns+0, 0
	MOVWF      R4+0
	MOVF       _Edotns+1, 0
	MOVWF      R4+1
	MOVF       _Edotns+2, 0
	MOVWF      R4+2
	MOVF       _Edotns+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Upm+0
	MOVF       R0+1, 0
	MOVWF      _Upm+1
	MOVF       R0+2, 0
	MOVWF      _Upm+2
	MOVF       R0+3, 0
	MOVWF      _Upm+3
;MyProject.c,104 :: 		Upm = max(Upm,Enb*Edotze);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Enb+0, 0
	MOVWF      R0+0
	MOVF       _Enb+1, 0
	MOVWF      R0+1
	MOVF       _Enb+2, 0
	MOVWF      R0+2
	MOVF       _Enb+3, 0
	MOVWF      R0+3
	MOVF       _Edotze+0, 0
	MOVWF      R4+0
	MOVF       _Edotze+1, 0
	MOVWF      R4+1
	MOVF       _Edotze+2, 0
	MOVWF      R4+2
	MOVF       _Edotze+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _Upm+0
	MOVF       R0+1, 0
	MOVWF      _Upm+1
	MOVF       R0+2, 0
	MOVWF      _Upm+2
	MOVF       R0+3, 0
	MOVWF      _Upm+3
;MyProject.c,106 :: 		Upb = max(Ens*Edotnb,Enb*Edotns);
	MOVF       _Ens+0, 0
	MOVWF      R0+0
	MOVF       _Ens+1, 0
	MOVWF      R0+1
	MOVF       _Ens+2, 0
	MOVWF      R0+2
	MOVF       _Ens+3, 0
	MOVWF      R0+3
	MOVF       _Edotnb+0, 0
	MOVWF      R4+0
	MOVF       _Edotnb+1, 0
	MOVWF      R4+1
	MOVF       _Edotnb+2, 0
	MOVWF      R4+2
	MOVF       _Edotnb+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Enb+0, 0
	MOVWF      R0+0
	MOVF       _Enb+1, 0
	MOVWF      R0+1
	MOVF       _Enb+2, 0
	MOVWF      R0+2
	MOVF       _Enb+3, 0
	MOVWF      R0+3
	MOVF       _Edotns+0, 0
	MOVWF      R4+0
	MOVF       _Edotns+1, 0
	MOVWF      R4+1
	MOVF       _Edotns+2, 0
	MOVWF      R4+2
	MOVF       _Edotns+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _UPb+0
	MOVF       R0+1, 0
	MOVWF      _UPb+1
	MOVF       R0+2, 0
	MOVWF      _UPb+2
	MOVF       R0+3, 0
	MOVWF      _UPb+3
;MyProject.c,107 :: 		Upb = max(Upb,Enb*Edotnb);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_a+1
	MOVF       _Enb+0, 0
	MOVWF      R0+0
	MOVF       _Enb+1, 0
	MOVWF      R0+1
	MOVF       _Enb+2, 0
	MOVWF      R0+2
	MOVF       _Enb+3, 0
	MOVWF      R0+3
	MOVF       _Edotnb+0, 0
	MOVWF      R4+0
	MOVF       _Edotnb+1, 0
	MOVWF      R4+1
	MOVF       _Edotnb+2, 0
	MOVWF      R4+2
	MOVF       _Edotnb+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_max_b+0
	MOVF       R0+1, 0
	MOVWF      FARG_max_b+1
	CALL       _max+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      FLOC__fuzzypd+4
	MOVF       R0+1, 0
	MOVWF      FLOC__fuzzypd+5
	MOVF       R0+2, 0
	MOVWF      FLOC__fuzzypd+6
	MOVF       R0+3, 0
	MOVWF      FLOC__fuzzypd+7
	MOVF       FLOC__fuzzypd+4, 0
	MOVWF      _UPb+0
	MOVF       FLOC__fuzzypd+5, 0
	MOVWF      _UPb+1
	MOVF       FLOC__fuzzypd+6, 0
	MOVWF      _UPb+2
	MOVF       FLOC__fuzzypd+7, 0
	MOVWF      _UPb+3
;MyProject.c,109 :: 		uk1 = (float) (Unb*(-c7) + Unm*(-c6) + Uns*(-c5) +Uze*0 +Ups*c5 + Upm*c6 + Upb*c7)/(Unb+Unm+Uns+Uze+Ups+Upm+Upb);
	MOVLW      0
	XORWF      _c7+0, 0
	MOVWF      R0+0
	MOVLW      0
	XORWF      _c7+1, 0
	MOVWF      R0+1
	MOVLW      128
	XORWF      _c7+2, 0
	MOVWF      R0+2
	MOVLW      0
	XORWF      _c7+3, 0
	MOVWF      R0+3
	MOVF       _Unb+0, 0
	MOVWF      R4+0
	MOVF       _Unb+1, 0
	MOVWF      R4+1
	MOVF       _Unb+2, 0
	MOVWF      R4+2
	MOVF       _Unb+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__fuzzypd+0
	MOVF       R0+1, 0
	MOVWF      FLOC__fuzzypd+1
	MOVF       R0+2, 0
	MOVWF      FLOC__fuzzypd+2
	MOVF       R0+3, 0
	MOVWF      FLOC__fuzzypd+3
	MOVLW      0
	XORWF      _c6+0, 0
	MOVWF      R0+0
	MOVLW      0
	XORWF      _c6+1, 0
	MOVWF      R0+1
	MOVLW      128
	XORWF      _c6+2, 0
	MOVWF      R0+2
	MOVLW      0
	XORWF      _c6+3, 0
	MOVWF      R0+3
	MOVF       _Unm+0, 0
	MOVWF      R4+0
	MOVF       _Unm+1, 0
	MOVWF      R4+1
	MOVF       _Unm+2, 0
	MOVWF      R4+2
	MOVF       _Unm+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       FLOC__fuzzypd+0, 0
	MOVWF      R4+0
	MOVF       FLOC__fuzzypd+1, 0
	MOVWF      R4+1
	MOVF       FLOC__fuzzypd+2, 0
	MOVWF      R4+2
	MOVF       FLOC__fuzzypd+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__fuzzypd+0
	MOVF       R0+1, 0
	MOVWF      FLOC__fuzzypd+1
	MOVF       R0+2, 0
	MOVWF      FLOC__fuzzypd+2
	MOVF       R0+3, 0
	MOVWF      FLOC__fuzzypd+3
	MOVLW      0
	XORWF      _c5+0, 0
	MOVWF      R0+0
	MOVLW      0
	XORWF      _c5+1, 0
	MOVWF      R0+1
	MOVLW      128
	XORWF      _c5+2, 0
	MOVWF      R0+2
	MOVLW      0
	XORWF      _c5+3, 0
	MOVWF      R0+3
	MOVF       _Uns+0, 0
	MOVWF      R4+0
	MOVF       _Uns+1, 0
	MOVWF      R4+1
	MOVF       _Uns+2, 0
	MOVWF      R4+2
	MOVF       _Uns+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       FLOC__fuzzypd+0, 0
	MOVWF      R4+0
	MOVF       FLOC__fuzzypd+1, 0
	MOVWF      R4+1
	MOVF       FLOC__fuzzypd+2, 0
	MOVWF      R4+2
	MOVF       FLOC__fuzzypd+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__fuzzypd+0
	MOVF       R0+1, 0
	MOVWF      FLOC__fuzzypd+1
	MOVF       R0+2, 0
	MOVWF      FLOC__fuzzypd+2
	MOVF       R0+3, 0
	MOVWF      FLOC__fuzzypd+3
	MOVF       _Ups+0, 0
	MOVWF      R0+0
	MOVF       _Ups+1, 0
	MOVWF      R0+1
	MOVF       _Ups+2, 0
	MOVWF      R0+2
	MOVF       _Ups+3, 0
	MOVWF      R0+3
	MOVF       _c5+0, 0
	MOVWF      R4+0
	MOVF       _c5+1, 0
	MOVWF      R4+1
	MOVF       _c5+2, 0
	MOVWF      R4+2
	MOVF       _c5+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       FLOC__fuzzypd+0, 0
	MOVWF      R4+0
	MOVF       FLOC__fuzzypd+1, 0
	MOVWF      R4+1
	MOVF       FLOC__fuzzypd+2, 0
	MOVWF      R4+2
	MOVF       FLOC__fuzzypd+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__fuzzypd+0
	MOVF       R0+1, 0
	MOVWF      FLOC__fuzzypd+1
	MOVF       R0+2, 0
	MOVWF      FLOC__fuzzypd+2
	MOVF       R0+3, 0
	MOVWF      FLOC__fuzzypd+3
	MOVF       _Upm+0, 0
	MOVWF      R0+0
	MOVF       _Upm+1, 0
	MOVWF      R0+1
	MOVF       _Upm+2, 0
	MOVWF      R0+2
	MOVF       _Upm+3, 0
	MOVWF      R0+3
	MOVF       _c6+0, 0
	MOVWF      R4+0
	MOVF       _c6+1, 0
	MOVWF      R4+1
	MOVF       _c6+2, 0
	MOVWF      R4+2
	MOVF       _c6+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       FLOC__fuzzypd+0, 0
	MOVWF      R4+0
	MOVF       FLOC__fuzzypd+1, 0
	MOVWF      R4+1
	MOVF       FLOC__fuzzypd+2, 0
	MOVWF      R4+2
	MOVF       FLOC__fuzzypd+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__fuzzypd+0
	MOVF       R0+1, 0
	MOVWF      FLOC__fuzzypd+1
	MOVF       R0+2, 0
	MOVWF      FLOC__fuzzypd+2
	MOVF       R0+3, 0
	MOVWF      FLOC__fuzzypd+3
	MOVF       FLOC__fuzzypd+4, 0
	MOVWF      R0+0
	MOVF       FLOC__fuzzypd+5, 0
	MOVWF      R0+1
	MOVF       FLOC__fuzzypd+6, 0
	MOVWF      R0+2
	MOVF       FLOC__fuzzypd+7, 0
	MOVWF      R0+3
	MOVF       _c7+0, 0
	MOVWF      R4+0
	MOVF       _c7+1, 0
	MOVWF      R4+1
	MOVF       _c7+2, 0
	MOVWF      R4+2
	MOVF       _c7+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       FLOC__fuzzypd+0, 0
	MOVWF      R4+0
	MOVF       FLOC__fuzzypd+1, 0
	MOVWF      R4+1
	MOVF       FLOC__fuzzypd+2, 0
	MOVWF      R4+2
	MOVF       FLOC__fuzzypd+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__fuzzypd+0
	MOVF       R0+1, 0
	MOVWF      FLOC__fuzzypd+1
	MOVF       R0+2, 0
	MOVWF      FLOC__fuzzypd+2
	MOVF       R0+3, 0
	MOVWF      FLOC__fuzzypd+3
	MOVF       _Unb+0, 0
	MOVWF      R0+0
	MOVF       _Unb+1, 0
	MOVWF      R0+1
	MOVF       _Unb+2, 0
	MOVWF      R0+2
	MOVF       _Unb+3, 0
	MOVWF      R0+3
	MOVF       _Unm+0, 0
	MOVWF      R4+0
	MOVF       _Unm+1, 0
	MOVWF      R4+1
	MOVF       _Unm+2, 0
	MOVWF      R4+2
	MOVF       _Unm+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       _Uns+0, 0
	MOVWF      R4+0
	MOVF       _Uns+1, 0
	MOVWF      R4+1
	MOVF       _Uns+2, 0
	MOVWF      R4+2
	MOVF       _Uns+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       _Uze+0, 0
	MOVWF      R4+0
	MOVF       _Uze+1, 0
	MOVWF      R4+1
	MOVF       _Uze+2, 0
	MOVWF      R4+2
	MOVF       _Uze+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       _Ups+0, 0
	MOVWF      R4+0
	MOVF       _Ups+1, 0
	MOVWF      R4+1
	MOVF       _Ups+2, 0
	MOVWF      R4+2
	MOVF       _Ups+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       _Upm+0, 0
	MOVWF      R4+0
	MOVF       _Upm+1, 0
	MOVWF      R4+1
	MOVF       _Upm+2, 0
	MOVWF      R4+2
	MOVF       _Upm+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       FLOC__fuzzypd+4, 0
	MOVWF      R4+0
	MOVF       FLOC__fuzzypd+5, 0
	MOVWF      R4+1
	MOVF       FLOC__fuzzypd+6, 0
	MOVWF      R4+2
	MOVF       FLOC__fuzzypd+7, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__fuzzypd+0, 0
	MOVWF      R0+0
	MOVF       FLOC__fuzzypd+1, 0
	MOVWF      R0+1
	MOVF       FLOC__fuzzypd+2, 0
	MOVWF      R0+2
	MOVF       FLOC__fuzzypd+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _uk1+0
	MOVF       R0+1, 0
	MOVWF      _uk1+1
	MOVF       R0+2, 0
	MOVWF      _uk1+2
	MOVF       R0+3, 0
	MOVWF      _uk1+3
;MyProject.c,110 :: 		uk1 = -uk1;
	MOVLW      0
	XORWF      R0+0, 0
	MOVWF      R4+0
	MOVLW      0
	XORWF      R0+1, 0
	MOVWF      R4+1
	MOVLW      128
	XORWF      R0+2, 0
	MOVWF      R4+2
	MOVLW      0
	XORWF      R0+3, 0
	MOVWF      R4+3
	MOVF       R4+0, 0
	MOVWF      _uk1+0
	MOVF       R4+1, 0
	MOVWF      _uk1+1
	MOVF       R4+2, 0
	MOVWF      _uk1+2
	MOVF       R4+3, 0
	MOVWF      _uk1+3
;MyProject.c,111 :: 		if(uk1 > 1) uk1 = 1;
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      0
	MOVWF      R0+2
	MOVLW      127
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_fuzzypd20
	MOVLW      0
	MOVWF      _uk1+0
	MOVLW      0
	MOVWF      _uk1+1
	MOVLW      0
	MOVWF      _uk1+2
	MOVLW      127
	MOVWF      _uk1+3
L_fuzzypd20:
;MyProject.c,112 :: 		if(uk1 < -1) uk1 = -1;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      128
	MOVWF      R4+2
	MOVLW      127
	MOVWF      R4+3
	MOVF       _uk1+0, 0
	MOVWF      R0+0
	MOVF       _uk1+1, 0
	MOVWF      R0+1
	MOVF       _uk1+2, 0
	MOVWF      R0+2
	MOVF       _uk1+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_fuzzypd21
	MOVLW      0
	MOVWF      _uk1+0
	MOVLW      0
	MOVWF      _uk1+1
	MOVLW      128
	MOVWF      _uk1+2
	MOVLW      127
	MOVWF      _uk1+3
L_fuzzypd21:
;MyProject.c,113 :: 		}
L_end_fuzzypd:
	RETURN
; end of _fuzzypd

_main:

;MyProject.c,121 :: 		void main() {
;MyProject.c,122 :: 		set_pwm();
	CALL       _set_pwm+0
;MyProject.c,124 :: 		TRISB0_bit = 1; //echo la B0 la ngo vao
	BSF        TRISB0_bit+0, BitPos(TRISB0_bit+0)
;MyProject.c,125 :: 		TRISC4_bit = 1; //cb trai
	BSF        TRISC4_bit+0, BitPos(TRISC4_bit+0)
;MyProject.c,126 :: 		TRISC5_bit = 1; //cb phai
	BSF        TRISC5_bit+0, BitPos(TRISC5_bit+0)
;MyProject.c,127 :: 		TRISD1_bit = 0; // banh xe trai
	BCF        TRISD1_bit+0, BitPos(TRISD1_bit+0)
;MyProject.c,128 :: 		TRISD0_bit = 0; //// banh xe phai
	BCF        TRISD0_bit+0, BitPos(TRISD0_bit+0)
;MyProject.c,129 :: 		portd.f1 = 1;
	BSF        PORTD+0, 1
;MyProject.c,130 :: 		portd.f0 = 1;
	BSF        PORTD+0, 0
;MyProject.c,131 :: 		ADCON1 |= 0x07;                  // Khong dung ADC
	MOVLW      7
	IORWF      ADCON1+0, 1
;MyProject.c,134 :: 		SRF05_Trigger_Direction = 0;     // Chan Trigger la ngo ra
	BCF        TRISB1_bit+0, BitPos(TRISB1_bit+0)
;MyProject.c,135 :: 		SRF05_Trigger = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;MyProject.c,137 :: 		T1CON.T1CKPS1 = 1;               // Ti le bo chia
	BSF        T1CON+0, 5
;MyProject.c,138 :: 		T1CON.T1CKPS0 = 1;               //truoc la 1:2
	BSF        T1CON+0, 4
;MyProject.c,139 :: 		uart1_init(9600);
	MOVLW      129
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;MyProject.c,141 :: 		OPTION_REG.INTEDG = 1;  //ngat xung canh len
	BSF        OPTION_REG+0, 6
;MyProject.c,142 :: 		INTCON.INTE = 1;
	BSF        INTCON+0, 4
;MyProject.c,143 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;MyProject.c,145 :: 		while(1){
L_main22:
;MyProject.c,148 :: 		if(UART1_Data_Ready()){
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main24
;MyProject.c,149 :: 		i = UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _i+0
;MyProject.c,150 :: 		a1 = (int) i;
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	CLRF       FLOC__main+1
	MOVF       FLOC__main+0, 0
	MOVWF      _a1+0
	MOVF       FLOC__main+1, 0
	MOVWF      _a1+1
;MyProject.c,151 :: 		a = a1/100;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _a+0
	MOVF       R0+1, 0
	MOVWF      _a+1
;MyProject.c,152 :: 		setpoint = a1%100;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _setpoint+0
	MOVF       R0+1, 0
	MOVWF      _setpoint+1
	MOVF       R0+2, 0
	MOVWF      _setpoint+2
	MOVF       R0+3, 0
	MOVWF      _setpoint+3
;MyProject.c,154 :: 		}
L_main24:
;MyProject.c,158 :: 		if(a == 1 || a == 2){
	MOVLW      0
	XORWF      _a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main71
	MOVLW      1
	XORWF      _a+0, 0
L__main71:
	BTFSC      STATUS+0, 2
	GOTO       L__main61
	MOVLW      0
	XORWF      _a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main72
	MOVLW      2
	XORWF      _a+0, 0
L__main72:
	BTFSC      STATUS+0, 2
	GOTO       L__main61
	GOTO       L_main27
L__main61:
;MyProject.c,159 :: 		SRF05_Trigger = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;MyProject.c,160 :: 		delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
	NOP
	NOP
;MyProject.c,161 :: 		SRF05_Trigger = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;MyProject.c,163 :: 		if(time > 100 && time < 25000) distance =(float) (time - 5)/58  ;
	MOVF       _time+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main73
	MOVF       _time+0, 0
	SUBLW      100
L__main73:
	BTFSC      STATUS+0, 0
	GOTO       L_main31
	MOVLW      97
	SUBWF      _time+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main74
	MOVLW      168
	SUBWF      _time+0, 0
L__main74:
	BTFSC      STATUS+0, 0
	GOTO       L_main31
L__main60:
	MOVLW      5
	SUBWF      _time+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _time+1, 0
	MOVWF      R0+1
	CALL       _word2double+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      104
	MOVWF      R4+2
	MOVLW      132
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _distance+0
	MOVF       R0+1, 0
	MOVWF      _distance+1
	MOVF       R0+2, 0
	MOVWF      _distance+2
	MOVF       R0+3, 0
	MOVWF      _distance+3
	GOTO       L_main32
L_main31:
;MyProject.c,164 :: 		else distance = 50;
	MOVLW      0
	MOVWF      _distance+0
	MOVLW      0
	MOVWF      _distance+1
	MOVLW      72
	MOVWF      _distance+2
	MOVLW      132
	MOVWF      _distance+3
L_main32:
;MyProject.c,166 :: 		distance = calib(distance);
	MOVF       _distance+0, 0
	MOVWF      FARG_calib_dis+0
	MOVF       _distance+1, 0
	MOVWF      FARG_calib_dis+1
	MOVF       _distance+2, 0
	MOVWF      FARG_calib_dis+2
	MOVF       _distance+3, 0
	MOVWF      FARG_calib_dis+3
	CALL       _calib+0
	MOVF       R0+0, 0
	MOVWF      _distance+0
	MOVF       R0+1, 0
	MOVWF      _distance+1
	MOVF       R0+2, 0
	MOVWF      _distance+2
	MOVF       R0+3, 0
	MOVWF      _distance+3
;MyProject.c,168 :: 		fuzzypd(distance);
	MOVF       R0+0, 0
	MOVWF      FARG_fuzzypd_dis+0
	MOVF       R0+1, 0
	MOVWF      FARG_fuzzypd_dis+1
	MOVF       R0+2, 0
	MOVWF      FARG_fuzzypd_dis+2
	MOVF       R0+3, 0
	MOVWF      FARG_fuzzypd_dis+3
	CALL       _fuzzypd+0
;MyProject.c,170 :: 		floatToStr(distance,str);
	MOVF       _distance+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       _distance+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       _distance+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       _distance+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _str+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;MyProject.c,171 :: 		if(fabs(distance-setpoint) < 3.5 && fabs(distance-setpoint) > 0.5){
	MOVF       _setpoint+0, 0
	MOVWF      R4+0
	MOVF       _setpoint+1, 0
	MOVWF      R4+1
	MOVF       _setpoint+2, 0
	MOVWF      R4+2
	MOVF       _setpoint+3, 0
	MOVWF      R4+3
	MOVF       _distance+0, 0
	MOVWF      R0+0
	MOVF       _distance+1, 0
	MOVWF      R0+1
	MOVF       _distance+2, 0
	MOVWF      R0+2
	MOVF       _distance+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_fabs_d+0
	MOVF       R0+1, 0
	MOVWF      FARG_fabs_d+1
	MOVF       R0+2, 0
	MOVWF      FARG_fabs_d+2
	MOVF       R0+3, 0
	MOVWF      FARG_fabs_d+3
	CALL       _fabs+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      96
	MOVWF      R4+2
	MOVLW      128
	MOVWF      R4+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main35
	MOVF       _setpoint+0, 0
	MOVWF      R4+0
	MOVF       _setpoint+1, 0
	MOVWF      R4+1
	MOVF       _setpoint+2, 0
	MOVWF      R4+2
	MOVF       _setpoint+3, 0
	MOVWF      R4+3
	MOVF       _distance+0, 0
	MOVWF      R0+0
	MOVF       _distance+1, 0
	MOVWF      R0+1
	MOVF       _distance+2, 0
	MOVWF      R0+2
	MOVF       _distance+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_fabs_d+0
	MOVF       R0+1, 0
	MOVWF      FARG_fabs_d+1
	MOVF       R0+2, 0
	MOVWF      FARG_fabs_d+2
	MOVF       R0+3, 0
	MOVWF      FARG_fabs_d+3
	CALL       _fabs+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      0
	MOVWF      R0+2
	MOVLW      126
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main35
L__main59:
;MyProject.c,172 :: 		if(uk1 < 0) lui_xuong((fabs(uk1)+0.08)*100);
	CLRF       R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       _uk1+0, 0
	MOVWF      R0+0
	MOVF       _uk1+1, 0
	MOVWF      R0+1
	MOVF       _uk1+2, 0
	MOVWF      R0+2
	MOVF       _uk1+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main36
	MOVF       _uk1+0, 0
	MOVWF      FARG_fabs_d+0
	MOVF       _uk1+1, 0
	MOVWF      FARG_fabs_d+1
	MOVF       _uk1+2, 0
	MOVWF      FARG_fabs_d+2
	MOVF       _uk1+3, 0
	MOVWF      FARG_fabs_d+3
	CALL       _fabs+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      215
	MOVWF      R4+1
	MOVLW      35
	MOVWF      R4+2
	MOVLW      123
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_lui_xuong_duty_cycle+0
	MOVF       R0+1, 0
	MOVWF      FARG_lui_xuong_duty_cycle+1
	CALL       _lui_xuong+0
L_main36:
;MyProject.c,173 :: 		if(uk1 >= 0) tien_len((fabs(uk1)+0.08)*100);
	CLRF       R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       _uk1+0, 0
	MOVWF      R0+0
	MOVF       _uk1+1, 0
	MOVWF      R0+1
	MOVF       _uk1+2, 0
	MOVWF      R0+2
	MOVF       _uk1+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main37
	MOVF       _uk1+0, 0
	MOVWF      FARG_fabs_d+0
	MOVF       _uk1+1, 0
	MOVWF      FARG_fabs_d+1
	MOVF       _uk1+2, 0
	MOVWF      FARG_fabs_d+2
	MOVF       _uk1+3, 0
	MOVWF      FARG_fabs_d+3
	CALL       _fabs+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      215
	MOVWF      R4+1
	MOVLW      35
	MOVWF      R4+2
	MOVLW      123
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_tien_len_duty_cycle+0
	MOVF       R0+1, 0
	MOVWF      FARG_tien_len_duty_cycle+1
	CALL       _tien_len+0
L_main37:
;MyProject.c,174 :: 		}
L_main35:
;MyProject.c,176 :: 		if(distance == 0 || distance ==50 || fabs(distance-setpoint) < 0.5) {
	CLRF       R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       _distance+0, 0
	MOVWF      R0+0
	MOVF       _distance+1, 0
	MOVWF      R0+1
	MOVF       _distance+2, 0
	MOVWF      R0+2
	MOVF       _distance+3, 0
	MOVWF      R0+3
	CALL       _Equals_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main58
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      132
	MOVWF      R4+3
	MOVF       _distance+0, 0
	MOVWF      R0+0
	MOVF       _distance+1, 0
	MOVWF      R0+1
	MOVF       _distance+2, 0
	MOVWF      R0+2
	MOVF       _distance+3, 0
	MOVWF      R0+3
	CALL       _Equals_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main58
	MOVF       _setpoint+0, 0
	MOVWF      R4+0
	MOVF       _setpoint+1, 0
	MOVWF      R4+1
	MOVF       _setpoint+2, 0
	MOVWF      R4+2
	MOVF       _setpoint+3, 0
	MOVWF      R4+3
	MOVF       _distance+0, 0
	MOVWF      R0+0
	MOVF       _distance+1, 0
	MOVWF      R0+1
	MOVF       _distance+2, 0
	MOVWF      R0+2
	MOVF       _distance+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_fabs_d+0
	MOVF       R0+1, 0
	MOVWF      FARG_fabs_d+1
	MOVF       R0+2, 0
	MOVWF      FARG_fabs_d+2
	MOVF       R0+3, 0
	MOVWF      FARG_fabs_d+3
	CALL       _fabs+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      0
	MOVWF      R4+2
	MOVLW      126
	MOVWF      R4+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main58
	GOTO       L_main40
L__main58:
;MyProject.c,177 :: 		dung_yen();
	CALL       _dung_yen+0
;MyProject.c,178 :: 		uk1 = 0;
	CLRF       _uk1+0
	CLRF       _uk1+1
	CLRF       _uk1+2
	CLRF       _uk1+3
;MyProject.c,179 :: 		}
	GOTO       L_main41
L_main40:
;MyProject.c,181 :: 		else if(uk1 < 0 && fabs(distance-setpoint) > 3.5) lui_xuong(fabs(uk1)*100);
	CLRF       R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       _uk1+0, 0
	MOVWF      R0+0
	MOVF       _uk1+1, 0
	MOVWF      R0+1
	MOVF       _uk1+2, 0
	MOVWF      R0+2
	MOVF       _uk1+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main44
	MOVF       _setpoint+0, 0
	MOVWF      R4+0
	MOVF       _setpoint+1, 0
	MOVWF      R4+1
	MOVF       _setpoint+2, 0
	MOVWF      R4+2
	MOVF       _setpoint+3, 0
	MOVWF      R4+3
	MOVF       _distance+0, 0
	MOVWF      R0+0
	MOVF       _distance+1, 0
	MOVWF      R0+1
	MOVF       _distance+2, 0
	MOVWF      R0+2
	MOVF       _distance+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_fabs_d+0
	MOVF       R0+1, 0
	MOVWF      FARG_fabs_d+1
	MOVF       R0+2, 0
	MOVWF      FARG_fabs_d+2
	MOVF       R0+3, 0
	MOVWF      FARG_fabs_d+3
	CALL       _fabs+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      96
	MOVWF      R0+2
	MOVLW      128
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main44
L__main57:
	MOVF       _uk1+0, 0
	MOVWF      FARG_fabs_d+0
	MOVF       _uk1+1, 0
	MOVWF      FARG_fabs_d+1
	MOVF       _uk1+2, 0
	MOVWF      FARG_fabs_d+2
	MOVF       _uk1+3, 0
	MOVWF      FARG_fabs_d+3
	CALL       _fabs+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_lui_xuong_duty_cycle+0
	MOVF       R0+1, 0
	MOVWF      FARG_lui_xuong_duty_cycle+1
	CALL       _lui_xuong+0
	GOTO       L_main45
L_main44:
;MyProject.c,182 :: 		else if(uk1 >= 0 && fabs(distance-setpoint) > 3.5) tien_len(fabs(uk1)*100);
	CLRF       R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       _uk1+0, 0
	MOVWF      R0+0
	MOVF       _uk1+1, 0
	MOVWF      R0+1
	MOVF       _uk1+2, 0
	MOVWF      R0+2
	MOVF       _uk1+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main48
	MOVF       _setpoint+0, 0
	MOVWF      R4+0
	MOVF       _setpoint+1, 0
	MOVWF      R4+1
	MOVF       _setpoint+2, 0
	MOVWF      R4+2
	MOVF       _setpoint+3, 0
	MOVWF      R4+3
	MOVF       _distance+0, 0
	MOVWF      R0+0
	MOVF       _distance+1, 0
	MOVWF      R0+1
	MOVF       _distance+2, 0
	MOVWF      R0+2
	MOVF       _distance+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_fabs_d+0
	MOVF       R0+1, 0
	MOVWF      FARG_fabs_d+1
	MOVF       R0+2, 0
	MOVWF      FARG_fabs_d+2
	MOVF       R0+3, 0
	MOVWF      FARG_fabs_d+3
	CALL       _fabs+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      96
	MOVWF      R0+2
	MOVLW      128
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main48
L__main56:
	MOVF       _uk1+0, 0
	MOVWF      FARG_fabs_d+0
	MOVF       _uk1+1, 0
	MOVWF      FARG_fabs_d+1
	MOVF       _uk1+2, 0
	MOVWF      FARG_fabs_d+2
	MOVF       _uk1+3, 0
	MOVWF      FARG_fabs_d+3
	CALL       _fabs+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_tien_len_duty_cycle+0
	MOVF       R0+1, 0
	MOVWF      FARG_tien_len_duty_cycle+1
	CALL       _tien_len+0
L_main48:
L_main45:
L_main41:
;MyProject.c,184 :: 		count += 1;
	MOVF       _count+0, 0
	MOVWF      R0+0
	MOVF       _count+1, 0
	MOVWF      R0+1
	MOVF       _count+2, 0
	MOVWF      R0+2
	MOVF       _count+3, 0
	MOVWF      R0+3
	INCF       R0+0, 1
	BTFSC      STATUS+0, 2
	INCF       R0+1, 1
	BTFSC      STATUS+0, 2
	INCF       R0+2, 1
	BTFSC      STATUS+0, 2
	INCF       R0+3, 1
	MOVF       R0+0, 0
	MOVWF      _count+0
	MOVF       R0+1, 0
	MOVWF      _count+1
	MOVF       R0+2, 0
	MOVWF      _count+2
	MOVF       R0+3, 0
	MOVWF      _count+3
;MyProject.c,185 :: 		if(count == 20){
	MOVLW      0
	MOVWF      R0+0
	XORWF      _count+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main75
	MOVF       R0+0, 0
	XORWF      _count+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main75
	MOVF       R0+0, 0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main75
	MOVF       _count+0, 0
	XORLW      20
L__main75:
	BTFSS      STATUS+0, 2
	GOTO       L_main49
;MyProject.c,186 :: 		uart1_write_text(str);
	MOVLW      _str+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,187 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,188 :: 		count = 0;
	CLRF       _count+0
	CLRF       _count+1
	CLRF       _count+2
	CLRF       _count+3
;MyProject.c,189 :: 		}
L_main49:
;MyProject.c,190 :: 		}
	GOTO       L_main50
L_main27:
;MyProject.c,191 :: 		else dung_yen();
	CALL       _dung_yen+0
L_main50:
;MyProject.c,192 :: 		}
	GOTO       L_main22
;MyProject.c,193 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;MyProject.c,195 :: 		void interrupt(void){
;MyProject.c,196 :: 		if(INTCON.INTF == 1){
	BTFSS      INTCON+0, 1
	GOTO       L_interrupt51
;MyProject.c,197 :: 		INTCON.INTF = 0;
	BCF        INTCON+0, 1
;MyProject.c,198 :: 		if(index == 0){
	MOVLW      0
	XORWF      _index+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt78
	MOVLW      0
	XORWF      _index+0, 0
L__interrupt78:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt52
;MyProject.c,199 :: 		T1CON.TMR1ON = 1;
	BSF        T1CON+0, 0
;MyProject.c,200 :: 		index = 1;
	MOVLW      1
	MOVWF      _index+0
	MOVLW      0
	MOVWF      _index+1
;MyProject.c,201 :: 		OPTION_REG.INTEDG = 0;
	BCF        OPTION_REG+0, 6
;MyProject.c,202 :: 		}
	GOTO       L_interrupt53
L_interrupt52:
;MyProject.c,204 :: 		T1CON.TMR1ON = 0;
	BCF        T1CON+0, 0
;MyProject.c,205 :: 		index = 0;
	CLRF       _index+0
	CLRF       _index+1
;MyProject.c,206 :: 		OPTION_REG.INTEDG = 1;
	BSF        OPTION_REG+0, 6
;MyProject.c,207 :: 		}
L_interrupt53:
;MyProject.c,208 :: 		}
L_interrupt51:
;MyProject.c,210 :: 		time = 0;
	CLRF       _time+0
	CLRF       _time+1
;MyProject.c,211 :: 		time = TMR1H;
	MOVF       TMR1H+0, 0
	MOVWF      _time+0
	CLRF       _time+1
;MyProject.c,212 :: 		time <<= 8;
	MOVF       _time+0, 0
	MOVWF      _time+1
	CLRF       _time+0
;MyProject.c,213 :: 		time |= TMR1L;
	MOVF       TMR1L+0, 0
	IORWF      _time+0, 1
	MOVLW      0
	IORWF      _time+1, 1
;MyProject.c,214 :: 		TMR1H = 0;                    // Xoa bo dem
	CLRF       TMR1H+0
;MyProject.c,215 :: 		TMR1L = 0;
	CLRF       TMR1L+0
;MyProject.c,216 :: 		}
L_end_interrupt:
L__interrupt77:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt
