////////////////////////////////
sbit SRF05_Trigger              at RB1_bit;
sbit SRF05_Trigger_Direction    at TRISB1_bit;
unsigned int time = 0;
unsigned long count = 0,count1 = 0;
/////////////////////calib//////////////////////////////////
float calib(float dis){
if(dis ==  0) dis = 0;
if(dis < 30 && dis > 0) dis += (dis + 2)*0.5;
if(dis >= 30 && dis <46) dis += 3;
if(dis >= 46) dis = 50;
return dis;
}
///////////////lui xuong/////////////////////////////
void lui_xuong(int duty_cycle){
 portd.f1 = 1;
      portd.f0 = 1;
      PWM2_SET_DUTY(duty_cycle);
      PWM1_SET_DUTY(0);
}
////////////////tien len///////////////////////
void tien_len(int duty_cycle){
 portd.f1 = 1;
      portd.f0 = 1;
      PWM1_SET_DUTY(duty_cycle);
      PWM2_SET_DUTY(0);
}
/////////////dung yen///////////////////////
void dung_yen(){
      PWM1_SET_DUTY(0);
      PWM2_SET_DUTY(0);
      }
///////////////////////cau hinh che do pwm////////////////////////
void set_pwm(){
           pwm1_init(5000);
           //PWM1_SET_DUTY(DC) ;
           PWM1_START();
           PWM2_Init(5000);
           //PWM2_SET_DUTY(DC) ;
           PWM2_START();
           }
///////////////code tao hinh thang/////////////////////////////////
float hthang(float x,float L,float C1,float C2,float R){
     int i; float y;
     if(x < L) y = 0;
     else if(x < C1) y = (float) (x-L)/(C1 - L);
     else if(x < C2) y = 1;
     else if(x < R) y = (float) (R - x)/(R-C2);
     else y = 0;
   return y;
   }
   ////////////cap nhat cac thong so mo////////////////
float ek1_1=0,ek1=0,ekk1=0,ekk_11=0,T1=1,c1=0.3,c2=0.6,c3=0.3,c4=0.6,c5=0.3,c6=0.6,c7=0.8,uk1 = 0,setpoint = 30;
float Enb,Ens,Eze,Eps,Epb,Edotnb,Edotns,Edotze,Edotps,Edotpb;
void upgradefuzzy(float dis){
 ek1_1 = ek1;
 ek1 = (setpoint - dis);
 ekk1 = (float) (ek1);
 if(ekk1 > 1) ekk1 = 1;
 if(ekk1 < -1) ekk1 = -1;
 /////////////////////////////////////////
 ekk_11 = (float) (ek1 - ek1_1)/(0.15*T1);
 if(ekk_11 > 1) ekk_11 = 1;
 if(ekk_11 < -1) ekk_11 = -1;
 //////////////////////////////
 Enb = hthang(ekk1,-2,-1,-c2,-c1);
 Ens = hthang(ekk1,-c2,-c1,-c1,0);
 Eze = hthang(ekk1,-c1,0,0,c1);
 Eps = hthang(ekk1,0,c1,c1,c2);
 Epb = hthang(ekk1,c1,c2,1,2);
 ///////////////////////////////
 Edotnb = hthang(ekk_11,-2,-1,-c4,-c3);
 Edotns = hthang(ekk_11,-c4,-c3,-c3,0);
 Edotze = hthang(ekk_11,-c3,0,0,c3);
 Edotps = hthang(ekk_11,0,c3,c3,c4);
 Edotpb = hthang(ekk_11,c3,c4,1,2);
 /////////////////////////
}
//////////bo dieu khien pd mo/////////////////////////
float Unb,Unm,Uns,Uze,Ups,Upm,UPb;
void fuzzypd(float dis){
 upgradefuzzy(dis);
 /////////////////////////////
 Unb = max(Epb*Edotpb,Epb*Edotps);
 Unb = max(Unb,Eps*Edotpb);
 /////////////////////
 Unm = max(Epb*Edotze,Eps*Edotps);
 Unm = max(Unm,Eze*Edotpb);
 /////////////////////
 Uns = max(Epb*Edotns,Eps*Edotze);
 Uns = max(Uns,Eze*Edotps);
 Uns = max(Uns, Ens*Edotpb);
 //////////////////////
 Uze = max(Epb*Edotnb,Eps*Edotns);
 Uze = max(Uze,Eze*Edotze);
 Uze = max(Uze,Ens*Edotps);
 Uze = max(Uze,Enb*Edotpb);
 //////////////////
 Ups = max(Eps*Edotnb,Eze*Edotns);
 Ups = max(Ups,Ens*Edotze);
  Ups = max(Ups,Enb*Edotps);
 //////////////////
 Upm = max(Eze*Edotnb,Ens*Edotns);
 Upm = max(Upm,Enb*Edotze);
 ///////////////////
 Upb = max(Ens*Edotnb,Enb*Edotns);
 Upb = max(Upb,Enb*Edotnb);

 uk1 = (float) (Unb*(-c7) + Unm*(-c6) + Uns*(-c5) +Uze*0 +Ups*c5 + Upm*c6 + Upb*c7)/(Unb+Unm+Uns+Uze+Ups+Upm+Upb);
 uk1 = -uk1;
 if(uk1 > 1) uk1 = 1;
 if(uk1 < -1) uk1 = -1;
}
/////////////////bo dieu khien pd mo//////////////
//// failed//////////
/////////////code chinh////////////////////////
float distance,ukk;
int index = 0,step = 0, a = 0, mode = 0,a1 = 0,b = 0 ,n = 0,m=1;
char str[9];
char i;
void main() {
      set_pwm();
      ////////////cau hinh chan/////////
      TRISB0_bit = 1; //echo la B0 la ngo vao
      TRISC4_bit = 1; //cb trai
      TRISC5_bit = 1; //cb phai
      TRISD1_bit = 0; // banh xe trai
      TRISD0_bit = 0; //// banh xe phai
      portd.f1 = 1;
      portd.f0 = 1;
      ADCON1 |= 0x07;                  // Khong dung ADC
     //////////////////////////////////////////////
   // Khoi tao ket noi voi SRF05
      SRF05_Trigger_Direction = 0;     // Chan Trigger la ngo ra
      SRF05_Trigger = 0;
   ////////////thiet lap bo timer////////////////////
      T1CON.T1CKPS1 = 1;               // Ti le bo chia
      T1CON.T1CKPS0 = 1;               //truoc la 1:2
      uart1_init(9600);
      /////////////thiet lap bo ngat xung ngoai/////////////////
      OPTION_REG.INTEDG = 1;  //ngat xung canh len
      INTCON.INTE = 1;
      INTCON.GIE = 1;
////////////////////////////////////////
  while(1){
    ///////////////xung_trigger//////////////

    if(UART1_Data_Ready()){
      i = UART1_Read();
      a1 = (int) i;
      a = a1/100;
      setpoint = a1%100;
      //ukk = 0; uk = 0; uk_1 = 0; ek = 0, ek_1 =0,ek_2=0;
      }


   // ukk = fuzzypd(setpoint);
    if(a == 1 || a == 2){
      SRF05_Trigger = 1;
      delay_ms(20);
      SRF05_Trigger = 0;
     /////////////////tinh toan khoang cach///////////////
      if(time > 100 && time < 25000) distance =(float) (time - 5)/58  ;
      else distance = 50;
      /////////////////////////////////////////////////
      distance = calib(distance);
      //ukk =(float) (PID_control(distance) + 2)/12;
      fuzzypd(distance);
      ///////////////////////////////////////////////////////
      floatToStr(distance,str);
      if(fabs(distance-setpoint) < 3.5 && fabs(distance-setpoint) > 0.5){
       if(uk1 < 0) lui_xuong((fabs(uk1)+0.08)*100);
       if(uk1 >= 0) tien_len((fabs(uk1)+0.08)*100);
              }

      if(distance == 0 || distance ==50 || fabs(distance-setpoint) < 0.5) {
        dung_yen();
        uk1 = 0;
               }

      else if(uk1 < 0 && fabs(distance-setpoint) > 3.5) lui_xuong(fabs(uk1)*100);
      else if(uk1 >= 0 && fabs(distance-setpoint) > 3.5) tien_len(fabs(uk1)*100);

      count += 1;
      if(count == 20){
       uart1_write_text(str);
       UART1_Write(10);
       count = 0;
        }
    }
      else dung_yen();
   }
}
//////////////ngat ngoai +  ngat timer////////////////////////////
void interrupt(void){
   if(INTCON.INTF == 1){
      INTCON.INTF = 0;
       if(index == 0){
            T1CON.TMR1ON = 1;
            index = 1;
            OPTION_REG.INTEDG = 0;
            }
  else {
      T1CON.TMR1ON = 0;
      index = 0;
      OPTION_REG.INTEDG = 1;
      }
}

       time = 0;
      time = TMR1H;
      time <<= 8;
      time |= TMR1L;
      TMR1H = 0;                    // Xoa bo dem
      TMR1L = 0;
      }