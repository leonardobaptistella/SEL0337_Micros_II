//Bit p/ travar o loop
bit teste;

//interrup��o
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

//Fun��o teste de delay
void delay(long int a){
     long int i;
     for(i=0;i<a;i++);
}

// Fun��o para controlar o display
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
     //Variaveis
     long int i;

     /*Registers configuration*/
     ADCON1 = 0b00001111;       //Todas portas s�o digitais
     INTCON = 0b11100000;        //Ativa interrup��o globa e int do Timer 0
     trisb  = 0b00000011;       //Config. RB0 e RB1 como input
     trisd  = 0b00000000;       //Config. todas D ports como output
      latd  = 0b00000000;       //Inicia display apagado

     /* Timer0 configuration
      - Timer off  0
      - 16 bits 0
      - Incrementa com clock interno 0
      - Borda de subida 0
      - Prescaler on 0
      - Prescaler 1:16  011*/
      
     T0CON = 0b00000011;
     TMR0L = 0xEE;
     TMR0H = 0x85;



     //Teste do Display
     for(i=0;i<10;i++)
     {
      display(i);
      TMR0ON_bit = 1;
      teste  = 0;
      while(teste == 0);
      //delay(450000);
     }


}