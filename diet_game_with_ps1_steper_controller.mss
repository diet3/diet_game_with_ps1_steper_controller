#include "lambda.h"

#define	SPR_W	640
#define	SPR_H	480
#define	ADD_X	1
#define	ADD_Y	2

/*
Å@âÊñ ì‡ÇîΩéÀÇµÇ»Ç™ÇÁìÆÇ≠ÉTÉìÉvÉã
*/
main()
{
	var back, move, sz[2], x, y, x1, y1, a1, addx, addy, txt;
	var flag1, c1, c2, c3, x2, y2, x3, y3, score1;
	var ani1,ani2,ani3;
	var c4,x4,y4,score2;
	sprSetLevel(66);
	timeSetFPS(30);
	txt = imgCreate(640,16,4,0);
	back = imgLoad("bg.bmp", 1, 0);
	imgSetCurrent(back);
	x1=200;y1=300.2;
	x2=30;y2=160;
	x3=460;y3=160;
	x4=100;y4=300;
	score1=0;
	score2=0.1;
	ani3=3;
	c1 = imgLoad("9ball_002.bmp", 2, 0);
	c2 = imgLoad("bill_003.bmp", 3, 0);
	c3 = imgLoad("bill_001.bmp", 4, 0);
	c4 = imgLoad("mos_003.bmp", 4, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	imgSetCurrent(c3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x3, y3);
	imgSetCurrent(c4);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x4, y4);
		imgSetCurrent(txt);
		txtSetColor(255, 255, 255);
		txtSetPos(300, 0);
		txtOut("SCORE:"+score1);
	inpSetCurrent(inpGetDevice(1));
	sprRenderScreen();

	while(true)
	{
		imgSetCurrent(c1);
		inpClear();
		if(inpGetState(INP_RIGHT) == INP_PUSH)
		{
				if(flag1==1){
			if(ani1==0){
	c1 = imgLoad("9ball_002.bmp", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	ani1+=1;
			}else if(ani1==1){
	c1 = imgLoad("9ball_003.bmp", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	ani1+=1;
			}else if(ani1==2){
	c1 = imgLoad("9ball_004.bmp", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	ani1+=1;
			}else if((ani1==3)||(ani1==4)||(ani1==5)||(ani1==6)){
	c1 = imgLoad("9ball_005.bmp", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	ani1+=1;
			}else if(ani1==7){
	c1 = imgLoad("9ball_000.bmp", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	ani1+=1;
			}else if(ani1==8){
	c1 = imgLoad("9ball_001.bmp", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	ani1=0;
			}
				flag1=0;
				score1+=1;
						if(ani2==0){
	c2 = imgLoad("bill_003.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2+=1;
	}else if(ani2==1){
	c2 = imgLoad("bill_002.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2+=1;
	}else if(ani2==2){
	c2 = imgLoad("bill_001.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2+=1;
	}else if(ani2==3){
	c2 = imgLoad("bill_000.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2+=1;
	}else if(ani2==4){
	c2 = imgLoad("bill_0.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2=0;
	}
	if(ani3==0){
	c3 = imgLoad("bill_003.bmp", 3, 0);
	imgSetCurrent(c3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x3, y3);
	ani3+=1;
	}else if(ani3==1){
	c3 = imgLoad("bill_002.bmp", 3, 0);
	imgSetCurrent(c3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x3, y3);
	ani3+=1;
	}else if(ani3==2){
	c3 = imgLoad("bill_001.bmp", 3, 0);
	imgSetCurrent(c3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x3, y3);
	ani3+=1;
	}else if(ani3==3){
	c3 = imgLoad("bill_000.bmp", 3, 0);
	imgSetCurrent(c3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x3, y3);
	ani3+=1;
	}else if(ani3==4){
	c3 = imgLoad("bill_0.bmp", 3, 0);
	imgSetCurrent(c3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x3, y3);
	ani3=0;
	}
				}
			
		}
		if(inpGetState(INP_LEFT) == INP_PUSH)
		{
				if(flag1==0){
			if(ani1==0){
	c1 = imgLoad("9ball_002.bmp", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	ani1+=1;
			}else if(ani1==1){
	c1 = imgLoad("9ball_003.bmp", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	ani1+=1;
			}else if(ani1==2){
	c1 = imgLoad("9ball_004.bmp", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	ani1+=1;
			}else if((ani1==3)||(ani1==4)||(ani1==5)||(ani1==6)){
	c1 = imgLoad("9ball_005.bmp", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	ani1+=1;
			}else if(ani1==7){
	c1 = imgLoad("9ball_000.bmp", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	ani1+=1;
			}else if(ani1==8){
	c1 = imgLoad("9ball_001.bmp", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	ani1=0;
			}
				flag1=1;
				score1+=1;
							if(ani2==0){
	c2 = imgLoad("bill_003.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2+=1;
	}else if(ani2==1){
	c2 = imgLoad("bill_002.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2+=1;
	}else if(ani2==2){
	c2 = imgLoad("bill_001.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2+=1;
	}else if(ani2==3){
	c2 = imgLoad("bill_000.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2+=1;
	}else if(ani2==4){
	c2 = imgLoad("bill_0.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2=0;
	}
	if(ani3==0){
	c3 = imgLoad("bill_003.bmp", 3, 0);
	imgSetCurrent(c3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x3, y3);
	ani3+=1;
	}else if(ani3==1){
	c3 = imgLoad("bill_002.bmp", 3, 0);
	imgSetCurrent(c3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x3, y3);
	ani3+=1;
	}else if(ani3==2){
	c3 = imgLoad("bill_001.bmp", 3, 0);
	imgSetCurrent(c3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x3, y3);
	ani3+=1;
	}else if(ani3==3){
	c3 = imgLoad("bill_000.bmp", 3, 0);
	imgSetCurrent(c3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x3, y3);
	ani3+=1;
	}else if(ani3==4){
	c3 = imgLoad("bill_0.bmp", 3, 0);
	imgSetCurrent(c3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x3, y3);
	ani3=0;
	}
				}
		}
		score2+=0.1;
		if((score1*2 < score2)&&(score1*2 + 26 > score2)){
	c4 = imgLoad("mos_002.bmp", 4, 0);
	imgSetCurrent(c4);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x4, y4);
		}else if((score1*2 + 25 < score2)&&(score1*2 + 51 > score2)){
	c4 = imgLoad("mos_001.bmp", 4, 0);
	imgSetCurrent(c4);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x4, y4);
		}else if(score1*2 + 50 < score2){
	c4 = imgLoad("mos_000.bmp", 4, 0);
	imgSetCurrent(c4);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x4, y4);
		}else{
	c4 = imgLoad("mos_003.bmp", 4, 0);
	imgSetCurrent(c4);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x4, y4);
		}
		imgSetCurrent(txt);
		imgFill(0, 0, 0);
		txtSetPos(0, 0);
		txtOut("You play with Step controller.");
		txtSetPos(300, 0);
		txtOut("SCORE:"+score1);
		sprRenderWait();
	}
}
