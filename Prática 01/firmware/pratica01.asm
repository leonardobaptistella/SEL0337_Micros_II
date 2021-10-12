
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
L__Interrupt46:
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
;pratica01.c,62 :: 		}
L_display1:
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display48
	MOVLW       0
	XORWF       FARG_display_num+0, 0 
L__display48:
	BTFSC       STATUS+0, 2 
	GOTO        L_display3
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display49
	MOVLW       1
	XORWF       FARG_display_num+0, 0 
L__display49:
	BTFSC       STATUS+0, 2 
	GOTO        L_display4
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display50
	MOVLW       2
	XORWF       FARG_display_num+0, 0 
L__display50:
	BTFSC       STATUS+0, 2 
	GOTO        L_display5
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display51
	MOVLW       3
	XORWF       FARG_display_num+0, 0 
L__display51:
	BTFSC       STATUS+0, 2 
	GOTO        L_display6
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display52
	MOVLW       4
	XORWF       FARG_display_num+0, 0 
L__display52:
	BTFSC       STATUS+0, 2 
	GOTO        L_display7
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display53
	MOVLW       5
	XORWF       FARG_display_num+0, 0 
L__display53:
	BTFSC       STATUS+0, 2 
	GOTO        L_display8
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display54
	MOVLW       6
	XORWF       FARG_display_num+0, 0 
L__display54:
	BTFSC       STATUS+0, 2 
	GOTO        L_display9
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display55
	MOVLW       7
	XORWF       FARG_display_num+0, 0 
L__display55:
	BTFSC       STATUS+0, 2 
	GOTO        L_display10
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display56
	MOVLW       8
	XORWF       FARG_display_num+0, 0 
L__display56:
	BTFSC       STATUS+0, 2 
	GOTO        L_display11
	MOVLW       0
	XORWF       FARG_display_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__display57
	MOVLW       9
	XORWF       FARG_display_num+0, 0 
L__display57:
	BTFSC       STATUS+0, 2 
	GOTO        L_display12
L_display2:
;pratica01.c,63 :: 		}
L_end_display:
	RETURN      0
; end of _display

_main:

;pratica01.c,65 :: 		void main(){
;pratica01.c,71 :: 		ADCON1 = 0b00001111;       //Todas portas são digitais
	MOVLW       15
	MOVWF       ADCON1+0 
;pratica01.c,72 :: 		INTCON = 0b11100000;        //Ativa interrupção globa e int do Timer 0
	MOVLW       224
	MOVWF       INTCON+0 
;pratica01.c,73 :: 		trisb  = 0b00000011;       //Config. RB0 e RB1 como input
	MOVLW       3
	MOVWF       TRISB+0 
;pratica01.c,74 :: 		trisd  = 0b00000000;       //Config. todas D ports como output
	CLRF        TRISD+0 
;pratica01.c,75 :: 		latd  = 0b00000000;       //Inicia display apagado
	CLRF        LATD+0 
;pratica01.c,85 :: 		T0CON = 0b00000011;
	MOVLW       3
	MOVWF       T0CON+0 
;pratica01.c,86 :: 		TMR0L = 0xEE;
	MOVLW       238
	MOVWF       TMR0L+0 
;pratica01.c,87 :: 		TMR0H = 0x85;
	MOVLW       133
	MOVWF       TMR0H+0 
;pratica01.c,98 :: 		while(1)
L_main13:
;pratica01.c,100 :: 		buf_rb1 = RB1_bit;
	BTFSC       RB1_bit+0, BitPos(RB1_bit+0) 
	GOTO        L__main59
	BCF         main_buf_rb1_L0+0, BitPos(main_buf_rb1_L0+0) 
	GOTO        L__main60
L__main59:
	BSF         main_buf_rb1_L0+0, BitPos(main_buf_rb1_L0+0) 
L__main60:
;pratica01.c,101 :: 		buf_rb0 = RB0_bit;
	BTFSC       RB0_bit+0, BitPos(RB0_bit+0) 
	GOTO        L__main61
	BCF         main_buf_rb0_L0+0, BitPos(main_buf_rb0_L0+0) 
	GOTO        L__main62
L__main61:
	BSF         main_buf_rb0_L0+0, BitPos(main_buf_rb0_L0+0) 
L__main62:
;pratica01.c,103 :: 		while(buf_rb1 == 0)
L_main15:
	BTFSC       main_buf_rb1_L0+0, BitPos(main_buf_rb1_L0+0) 
	GOTO        L_main16
;pratica01.c,105 :: 		for(i=0;i<10;i++)
	CLRF        main_i_L0+0 
	CLRF        main_i_L0+1 
	CLRF        main_i_L0+2 
	CLRF        main_i_L0+3 
L_main17:
	MOVLW       128
	XORWF       main_i_L0+3, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main63
	MOVLW       0
	SUBWF       main_i_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main63
	MOVLW       0
	SUBWF       main_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main63
	MOVLW       10
	SUBWF       main_i_L0+0, 0 
L__main63:
	BTFSC       STATUS+0, 0 
	GOTO        L_main18
;pratica01.c,107 :: 		if((buf_rb0 == 1) && (RB0_bit == 0))
	BTFSS       main_buf_rb0_L0+0, BitPos(main_buf_rb0_L0+0) 
	GOTO        L_main22
	BTFSC       RB0_bit+0, BitPos(RB0_bit+0) 
	GOTO        L_main22
L__main44:
;pratica01.c,109 :: 		buf_rb1 = 1;
	BSF         main_buf_rb1_L0+0, BitPos(main_buf_rb1_L0+0) 
;pratica01.c,110 :: 		buf_rb0 = 0;
	BCF         main_buf_rb0_L0+0, BitPos(main_buf_rb0_L0+0) 
;pratica01.c,111 :: 		break;
	GOTO        L_main18
;pratica01.c,112 :: 		}
L_main22:
;pratica01.c,113 :: 		display(i);
	MOVF        main_i_L0+0, 0 
	MOVWF       FARG_display_num+0 
	MOVF        main_i_L0+1, 0 
	MOVWF       FARG_display_num+1 
	CALL        _display+0, 0
;pratica01.c,114 :: 		TMR0ON_bit = 1;
	BSF         TMR0ON_bit+0, BitPos(TMR0ON_bit+0) 
;pratica01.c,115 :: 		teste  = 0;
	BCF         _teste+0, BitPos(_teste+0) 
;pratica01.c,116 :: 		while(teste == 0)
L_main23:
	BTFSC       _teste+0, BitPos(_teste+0) 
	GOTO        L_main24
;pratica01.c,118 :: 		if((buf_rb0 == 1) && (RB0_bit == 0))
	BTFSS       main_buf_rb0_L0+0, BitPos(main_buf_rb0_L0+0) 
	GOTO        L_main27
	BTFSC       RB0_bit+0, BitPos(RB0_bit+0) 
	GOTO        L_main27
L__main43:
;pratica01.c,120 :: 		buf_rb1 = 1;
	BSF         main_buf_rb1_L0+0, BitPos(main_buf_rb1_L0+0) 
;pratica01.c,121 :: 		buf_rb0 = 0;
	BCF         main_buf_rb0_L0+0, BitPos(main_buf_rb0_L0+0) 
;pratica01.c,122 :: 		break;
	GOTO        L_main24
;pratica01.c,123 :: 		}
L_main27:
;pratica01.c,124 :: 		}
	GOTO        L_main23
L_main24:
;pratica01.c,105 :: 		for(i=0;i<10;i++)
	MOVLW       1
	ADDWF       main_i_L0+0, 1 
	MOVLW       0
	ADDWFC      main_i_L0+1, 1 
	ADDWFC      main_i_L0+2, 1 
	ADDWFC      main_i_L0+3, 1 
;pratica01.c,125 :: 		}
	GOTO        L_main17
L_main18:
;pratica01.c,126 :: 		}
	GOTO        L_main15
L_main16:
;pratica01.c,128 :: 		while(buf_rb0 == 0)
L_main28:
	BTFSC       main_buf_rb0_L0+0, BitPos(main_buf_rb0_L0+0) 
	GOTO        L_main29
;pratica01.c,130 :: 		for(i=0;i<10;i++)
	CLRF        main_i_L0+0 
	CLRF        main_i_L0+1 
	CLRF        main_i_L0+2 
	CLRF        main_i_L0+3 
L_main30:
	MOVLW       128
	XORWF       main_i_L0+3, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main64
	MOVLW       0
	SUBWF       main_i_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main64
	MOVLW       0
	SUBWF       main_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main64
	MOVLW       10
	SUBWF       main_i_L0+0, 0 
L__main64:
	BTFSC       STATUS+0, 0 
	GOTO        L_main31
;pratica01.c,132 :: 		if((buf_rb1 == 1) && (RB1_bit == 0))
	BTFSS       main_buf_rb1_L0+0, BitPos(main_buf_rb1_L0+0) 
	GOTO        L_main35
	BTFSC       RB1_bit+0, BitPos(RB1_bit+0) 
	GOTO        L_main35
L__main42:
;pratica01.c,134 :: 		buf_rb1 = 0;
	BCF         main_buf_rb1_L0+0, BitPos(main_buf_rb1_L0+0) 
;pratica01.c,135 :: 		buf_rb0 = 1;
	BSF         main_buf_rb0_L0+0, BitPos(main_buf_rb0_L0+0) 
;pratica01.c,136 :: 		break;
	GOTO        L_main31
;pratica01.c,137 :: 		}
L_main35:
;pratica01.c,138 :: 		display(i);
	MOVF        main_i_L0+0, 0 
	MOVWF       FARG_display_num+0 
	MOVF        main_i_L0+1, 0 
	MOVWF       FARG_display_num+1 
	CALL        _display+0, 0
;pratica01.c,139 :: 		T0CON = 0b00000101;
	MOVLW       5
	MOVWF       T0CON+0 
;pratica01.c,140 :: 		TMR0ON_bit = 1;
	BSF         TMR0ON_bit+0, BitPos(TMR0ON_bit+0) 
;pratica01.c,141 :: 		teste  = 0;
	BCF         _teste+0, BitPos(_teste+0) 
;pratica01.c,142 :: 		while(teste == 0){
L_main36:
	BTFSC       _teste+0, BitPos(_teste+0) 
	GOTO        L_main37
;pratica01.c,143 :: 		if((buf_rb1 == 1) && (RB1_bit == 0))
	BTFSS       main_buf_rb1_L0+0, BitPos(main_buf_rb1_L0+0) 
	GOTO        L_main40
	BTFSC       RB1_bit+0, BitPos(RB1_bit+0) 
	GOTO        L_main40
L__main41:
;pratica01.c,145 :: 		buf_rb1 = 0;
	BCF         main_buf_rb1_L0+0, BitPos(main_buf_rb1_L0+0) 
;pratica01.c,146 :: 		buf_rb0 = 1;
	BSF         main_buf_rb0_L0+0, BitPos(main_buf_rb0_L0+0) 
;pratica01.c,147 :: 		break;
	GOTO        L_main37
;pratica01.c,148 :: 		}
L_main40:
;pratica01.c,149 :: 		}
	GOTO        L_main36
L_main37:
;pratica01.c,130 :: 		for(i=0;i<10;i++)
	MOVLW       1
	ADDWF       main_i_L0+0, 1 
	MOVLW       0
	ADDWFC      main_i_L0+1, 1 
	ADDWFC      main_i_L0+2, 1 
	ADDWFC      main_i_L0+3, 1 
;pratica01.c,151 :: 		}
	GOTO        L_main30
L_main31:
;pratica01.c,152 :: 		}
	GOTO        L_main28
L_main29:
;pratica01.c,153 :: 		}
	GOTO        L_main13
;pratica01.c,155 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
