#line 1 "G:/Faculdade/8° Semestre/SEL0337 - Micros II/SEL0337_Micros_II/Prática 01/firmware/pratica01.c"

bit teste;


void Interrupt()
{
 if(TMR0IF_bit == 1)
 {
 TMR0IF_bit = 0;
 teste = 1;
 T0CON = 0b00000011;
 TMR0L = 0xEE;
 TMR0H = 0x85;
 }
}


void display(int num)
{
 switch(num)
 {
 case 0:
 latd = 0b11111100;
 break;

 case 1:
 latd = 0b01100000;
 break;

 case 2:
 latd = 0b11011010;
 break;

 case 3:
 latd = 0b11110010;
 break;

 case 4:
 latd = 0b01100110;
 break;

 case 5:
 latd = 0b10110110;
 break;

 case 6:
 latd = 0b10111110;
 break;

 case 7:
 latd = 0b11100000;
 break;

 case 8:
 latd = 0b11111110;
 break;

 case 9:
 latd = 0b11110110;
 break;
 }
}

void main(){

 long int i;
 bit buf_rb0, buf_rb1;


 ADCON1 = 0b00001111;
 INTCON = 0b11100000;
 trisb = 0b00000011;
 trisd = 0b00000000;
 latd = 0b00000000;
#line 84 "G:/Faculdade/8° Semestre/SEL0337 - Micros II/SEL0337_Micros_II/Prática 01/firmware/pratica01.c"
 T0CON = 0b00000011;
 TMR0L = 0xEE;
 TMR0H = 0x85;

 while(1)
 {

 if((RB1_bit == 1) && (RB0_bit == 1)){
 i = 0;
 display(i);
 }

 if(RB1_bit == 0)
 {
 if(i>9)
 {
 i = 0;
 display(i);
 }
 display(i);
 i=i+1;
 TMR0ON_bit = 1;
 teste = 0;
 while(teste == 0);

 }

 if(RB0_bit == 0)
 {
 if(i>9)
 {
 i = 0;
 display(i);
 }
 display(i);
 i=i+1;
 T0CON = 0b00000101;
 TMR0ON_bit = 1;
 teste = 0;
 while(teste == 0);

 }

 }
}
