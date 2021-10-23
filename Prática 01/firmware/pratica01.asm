
_Interrupt:

;pratica01.c,5 :: 		void Interrupt()
;pratica01.c,7 :: 		if(TMR0IF_bit == 1)
	BTFSS       TMR0IF_bit+0, BitPos(TMR0IF_bit+0) 
	GOTO        L_Interrupt0
;pratica01.c,9 :: 		TMR0IF_bit = 0;
	BCF         TMR0IF_bit+0, BitPos(TMR0IF_bit+0) 
;pratica01.c,10 :: 		teste = 1;
	BSF         _teste+0, BitPos(_teste+0) 
;pratica01.c,11 :: 		T0CON = 0b00000011;
	MOVLW       3
	MOVWF       T0CON+0 
;pratica01.c,12 :: 		TMR0L = 0xEE;
	MOVLW       238
	MOVWF       TMR0L+0 
;pratica01.c,13 :: 		TMR0H = 0x85;
	MOVLW       133
	MOVWF       TMR0H+0 
;pratica01.c,14 :: 		}
L_Interrupt0:
;pratica01.c,15 :: 		}
L_end_Interrupt:
L__Interrupt28:
	RETFIE      1
; end of _Interrupt

_display:

;pratica01.c,18 :: 		void display(int num)
;pratica01.c,20 :: 		switch(num)
	GOTO        L_display1
;pratica01.c,22 :: 		case 0:
L_display3:
;pratica01.c,23 :: 		latd = 0b11111100;
	MOVLW       252
	MOVWF       LATD+0 
;pratica01.c,24 :: 		break;
	GOTO        L_display2
;pratica01.c,26 :: 		case 1:
L_display4:
;pratica01.c,27 :: 		latd = 0b01100000;
	MOVLW       96
	MOVWF       LATD+0 
;pratica01.c,28 :: 		break;
	GOTO        L_display2
;pratica01.c,30 :: 		case 2:
L_display5:
;pratica01.c,31 :: 		latd = 0b11011010;
	MOVLW       218
	MOVWF       LATD+0 
;pratica01.c,32 :: 		break;
	GOTO        L_display2
;pratica01.c,34 :: 		case 3:
L_display6:
;pratica01.c,35 :: 		latd = 0b11110010;
	MOVLW       242
	MOVWF       LATD+0 
;pratica01.c,36 :: 		break;
	GOTO        L_display2
;pratica01.c,38 :: 		case 4:
L_display7:
;pratica01.c,39 :: 		latd = 0b01100110;
	MOVLW       102
	MOVWF       LATD+0 
;pratica01.c,40 :: 		break;
	GOTO        L_display2
;pratica01.c,42 :: 		case 5:
L_display8:
;pratica01.c,43 :: 		latd = 0b10110110;
	MOVLW       182
	MOVWF       LATD+0 
;pratica01.c,44 :: 		break;
	GOTO        L_display2
;pratica01.c,46 :: 		case 6:
L_display9:
;pratica01.c,47 :: 		latd = 0b10111110;
	MOVLW       190
	MOVWF       LATD+0 
;pratica01.c,48 :: 		break;
	GOTO        L_display2
;pratica01.c,50 :: 		case 7:
L_display10:
;pratica01.c,51 :: 		latd = 0b11100000;
	MOVLW       224
	MOVWF       LATD+0 
;pratica01.c,52 :: 		break;
	GOTO        L_display2
;pratica01.c,54 :: 		case 8:
L_display11:
;pratica01.c,55 :: 		latd = 0b11111110;
	MOVLW       254
	MOVWF       LATD+0 
;pratica01.c,56 :: 		break;
	GOTO        L_display2
;pratica01.c,58 :: 		case 9:
L_display12:
;pratica01.c,59 :: 		latd = 0b11110110;
	MOVLW       246
	MOVWF       LATD+0 
;pratica01.c,60 :: 		break;
	GOTO        L_display2
;pratica01.c,61 :: 		}
L_display1:
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display30
	MOVLW       0
	XORWF       FARG_display_num+0, 0 
L__display30:
	BTFSC       STATUS+0, 2 
	GOTO        L_display3
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display31
	MOVLW       1
	XORWF       FARG_display_num+0, 0 
L__display31:
	BTFSC       STATUS+0, 2 
	GOTO        L_display4
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display32
	MOVLW       2
	XORWF       FARG_display_num+0, 0 
L__display32:
	BTFSC       STATUS+0, 2 
	GOTO        L_display5
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display33
	MOVLW       3
	XORWF       FARG_display_num+0, 0 
L__display33:
	BTFSC       STATUS+0, 2 
	GOTO        L_display6
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display34
	MOVLW       4
	XORWF       FARG_display_num+0, 0 
L__display34:
	BTFSC       STATUS+0, 2 
	GOTO        L_display7
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display35
	MOVLW       5
	XORWF       FARG_display_num+0, 0 
L__display35:
	BTFSC       STATUS+0, 2 
	GOTO        L_display8
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display36
	MOVLW       6
	XORWF       FARG_display_num+0, 0 
L__display36:
	BTFSC       STATUS+0, 2 
	GOTO        L_display9
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display37
	MOVLW       7
	XORWF       FARG_display_num+0, 0 
L__display37:
	BTFSC       STATUS+0, 2 
	GOTO        L_display10
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display38
	MOVLW       8
	XORWF       FARG_display_num+0, 0 
L__display38:
	BTFSC       STATUS+0, 2 
	GOTO        L_display11
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display39
	MOVLW       9
	XORWF       FARG_display_num+0, 0 
L__display39:
	BTFSC       STATUS+0, 2 
	GOTO        L_display12
L_display2:
;pratica01.c,62 :: 		}
L_end_display:
	RETURN      0
; end of _display

_main:

;pratica01.c,64 :: 		void main(){
;pratica01.c,70 :: 		ADCON1 = 0b00001111;       //Todas portas são digitais
	MOVLW       15
	MOVWF       ADCON1+0 
;pratica01.c,71 :: 		INTCON = 0b11100000;        //Ativa interrupção globa e int do Timer 0
	MOVLW       224
	MOVWF       INTCON+0 
;pratica01.c,72 :: 		trisb  = 0b00000011;       //Config. RB0 e RB1 como input
	MOVLW       3
	MOVWF       TRISB+0 
;pratica01.c,73 :: 		trisd  = 0b00000000;       //Config. todas D ports como output
	CLRF        TRISD+0 
;pratica01.c,74 :: 		latd  = 0b00000000;       //Inicia display apagado
	CLRF        LATD+0 
;pratica01.c,84 :: 		T0CON = 0b00000011;
	MOVLW       3
	MOVWF       T0CON+0 
;pratica01.c,85 :: 		TMR0L = 0xEE;
	MOVLW       238
	MOVWF       TMR0L+0 
;pratica01.c,86 :: 		TMR0H = 0x85;
	MOVLW       133
	MOVWF       TMR0H+0 
;pratica01.c,88 :: 		while(1)
L_main13:
;pratica01.c,91 :: 		if((RB1_bit == 1) && (RB0_bit == 1)){
	BTFSS       RB1_bit+0, BitPos(RB1_bit+0) 
	GOTO        L_main17
	BTFSS       RB0_bit+0, BitPos(RB0_bit+0) 
	GOTO        L_main17
L__main26:
;pratica01.c,92 :: 		i = 0;
	CLRF        main_i_L0+0 
	CLRF        main_i_L0+1 
	CLRF        main_i_L0+2 
	CLRF        main_i_L0+3 
;pratica01.c,93 :: 		display(i);
	CLRF        FARG_display_num+0 
	CLRF        FARG_display_num+1 
	CALL        _display+0, 0
;pratica01.c,94 :: 		}
L_main17:
;pratica01.c,96 :: 		if(RB1_bit == 0)
	BTFSC       RB1_bit+0, BitPos(RB1_bit+0) 
	GOTO        L_main18
;pratica01.c,98 :: 		if(i>9)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       main_i_L0+3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main41
	MOVF        main_i_L0+2, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__main41
	MOVF        main_i_L0+1, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__main41
	MOVF        main_i_L0+0, 0 
	SUBLW       9
L__main41:
	BTFSC       STATUS+0, 0 
	GOTO        L_main19
;pratica01.c,100 :: 		i = 0;
	CLRF        main_i_L0+0 
	CLRF        main_i_L0+1 
	CLRF        main_i_L0+2 
	CLRF        main_i_L0+3 
;pratica01.c,101 :: 		display(i);
	CLRF        FARG_display_num+0 
	CLRF        FARG_display_num+1 
	CALL        _display+0, 0
;pratica01.c,102 :: 		}
L_main19:
;pratica01.c,103 :: 		display(i);
	MOVF        main_i_L0+0, 0 
	MOVWF       FARG_display_num+0 
	MOVF        main_i_L0+1, 0 
	MOVWF       FARG_display_num+1 
	CALL        _display+0, 0
;pratica01.c,104 :: 		i=i+1;
	MOVLW       1
	ADDWF       main_i_L0+0, 1 
	MOVLW       0
	ADDWFC      main_i_L0+1, 1 
	ADDWFC      main_i_L0+2, 1 
	ADDWFC      main_i_L0+3, 1 
;pratica01.c,105 :: 		TMR0ON_bit = 1;
	BSF         TMR0ON_bit+0, BitPos(TMR0ON_bit+0) 
;pratica01.c,106 :: 		teste  = 0;
	BCF         _teste+0, BitPos(_teste+0) 
;pratica01.c,107 :: 		while(teste == 0);
L_main20:
	BTFSC       _teste+0, BitPos(_teste+0) 
	GOTO        L_main21
	GOTO        L_main20
L_main21:
;pratica01.c,109 :: 		}
L_main18:
;pratica01.c,111 :: 		if(RB0_bit == 0)
	BTFSC       RB0_bit+0, BitPos(RB0_bit+0) 
	GOTO        L_main22
;pratica01.c,113 :: 		if(i>9)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       main_i_L0+3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main42
	MOVF        main_i_L0+2, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__main42
	MOVF        main_i_L0+1, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__main42
	MOVF        main_i_L0+0, 0 
	SUBLW       9
L__main42:
	BTFSC       STATUS+0, 0 
	GOTO        L_main23
;pratica01.c,115 :: 		i = 0;
	CLRF        main_i_L0+0 
	CLRF        main_i_L0+1 
	CLRF        main_i_L0+2 
	CLRF        main_i_L0+3 
;pratica01.c,116 :: 		display(i);
	CLRF        FARG_display_num+0 
	CLRF        FARG_display_num+1 
	CALL        _display+0, 0
;pratica01.c,117 :: 		}
L_main23:
;pratica01.c,118 :: 		display(i);
	MOVF        main_i_L0+0, 0 
	MOVWF       FARG_display_num+0 
	MOVF        main_i_L0+1, 0 
	MOVWF       FARG_display_num+1 
	CALL        _display+0, 0
;pratica01.c,119 :: 		i=i+1;
	MOVLW       1
	ADDWF       main_i_L0+0, 1 
	MOVLW       0
	ADDWFC      main_i_L0+1, 1 
	ADDWFC      main_i_L0+2, 1 
	ADDWFC      main_i_L0+3, 1 
;pratica01.c,120 :: 		T0CON = 0b00000101;      //Prescaler 1:64
	MOVLW       5
	MOVWF       T0CON+0 
;pratica01.c,121 :: 		TMR0ON_bit = 1;
	BSF         TMR0ON_bit+0, BitPos(TMR0ON_bit+0) 
;pratica01.c,122 :: 		teste  = 0;
	BCF         _teste+0, BitPos(_teste+0) 
;pratica01.c,123 :: 		while(teste == 0);
L_main24:
	BTFSC       _teste+0, BitPos(_teste+0) 
	GOTO        L_main25
	GOTO        L_main24
L_main25:
;pratica01.c,125 :: 		}
L_main22:
;pratica01.c,127 :: 		}
	GOTO        L_main13
;pratica01.c,128 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
