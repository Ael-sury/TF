AssistEquip={
	DETitle="[TFˢҩ��װ����]-",
	IsOn=false,
	Lock=false,
	LockEq=false,
	NoTr=false,
	NTAlpha=100,
	szPlusKey="",			
	szMinusKey="",
	bFrameOpened=false,
	tDescData = {},
	tChBoxZh={
		["JLDrug"]={"�ظ�����",},			
		["TLDrug"]={"�ظ�����",},
		["WCQ"]={"�����"},
		["RedDrug"]={"�ظ�����",},		--,"�ظ���Ѫ"
		["BlueDrug"]={"�ظ�����9000",},	 
		["XYS"]={"�ܲ��ٶ�"},		
		["FYW"]={"��Ӿ�ٶ�",},				
		["DaQi"]={"��ս"},		
		["YanXi"]={"��β��"},		 
		["xymsTZ"]={"����"},	 
		["xymsGG"]={"����"},	
		["xymsYQ"]={"Ԫ��"},	
		["xymsLD"]={"����"},	
		["xymsSF"]={"��"},	
 		["xymsCH"]={"���"},	 
		["xymsCZ"]={"����"},	
		["xymsLS"]={"����","����"},	
		["xymsHL"]={"�����ظ�","�����ָ�"},	 
		["xymsNP"]={"�ڹ���"},	
		["xymsNH"]={"�ڹ���"},			
		["xymsWP"]={"�⹦��"},	
		["xymsWH"]={"�⹦��"},	
		["xymsTS"]={"����"},			
		["xymsNS"]={"����"},	
		["xymsWS"]={"����"},		
		["WXS"]={"���˼�",},		
	--	["JTBJ"]={"������","������","���F��","������",},			--�������	   --[���㡤�������ѡ�����][���㡤�������ѡ�����][���㡤�������ѡ�����][���㡤�������ѡ��F��]
		["fmJiaSu"]={"����"},
		["fmWuShuang"]={"��˫"},
		["fmHuiLan"]={"�ڻ�"}, --�����ָ�		
		["fmNeiFang"]={"�ڷ�"},		--�ڹ�����	
		["fmWaiFang"]={"���"},		--�⹦����	
		["fmWeiXie"]={"���","��в",},		--��
		["fmChaiZhao"]={"��ֵ","����"},	
		["fmShanBi"]={"����"},	
		["fmZhaoJia"]={"�м�"},	
		["fmWGMingZhong"]={"����",},	--"�⹦����","����"
		["fmWGPoFang"]={"����"},		--�⹦�Ʒ�
		["fmWGHuiXin"]={"��ᣩ","�⹦���ĵȼ�"},	
		["fmWGHuiXiao"]={"�����","�⹦����Ч��"},	
		["fmNGMingZhong"]={"����",},	--"�ڹ�����","��Ӣ"
		["fmNGPoFang"]={"����"},		--�ڹ��Ʒ�
		["fmNGHuiXin"]={"�ڻᣩ","�ڹ����ĵȼ�"},	
		["fmNGHuiXiao"]={"�ڻ���","�ڹ�����Ч��"},	
		["fmLiaoShang"]={"����","���Ƴ�Ч",},	--"��ȸ"
		["fmYuJin"]={"����"},	
		["fmHuaJin"]={"����"},	
		["fmWQLongXue"]={"��Ѫ"},	 
		["fmWQNeiShang"]={"ĥʯ������"},		--	�����ڹ�����	--ֻ�����������ˣ�û��������λ�ġ�
		["fmWQWaiShang"]={"ĥʯ������"},		--�����⹦����
		},
	tPartZh={
		["Cloth"]={"����","��������",},	--����95
		["Waist"]={"����","��������"},
		["Hat"]={"ñ��","��������"},
		["Foot"]={"Ь��","��������"},
		["Hand"]={"����","������Ⱦ"},
		["Trou"]={"��װ","������ӡ"},
		["Weapon"]={"����","������ĥʯ"},
		},
	tCkBoxState={
		["CheckBox_JLDrug"]=true,
		["CheckBox_TLDrug"]=false,
		["CheckBox_XYS"]=true,		 
		["CheckBox_FYW"]=false,		
		["CheckBox_WXS"]=false,				
		["CheckBox_RedDrug"]=true,		
		["CheckBox_BlueDrug"]=false,		 
		["CheckBox_DaQi"]=false,		
		["CheckBox_YanXi"]=true,		
		["CheckBox_WCQ"]=true,			
		["CheckBox_xymsTZ"]=false,	 
		["CheckBox_xymsGG"]=false,	 
		["CheckBox_xymsYQ"]=false,	 
		["CheckBox_xymsLD"]=false,	 
		["CheckBox_xymsSF"]=false,	 
 		["CheckBox_xymsCH"]=false,	 
		["CheckBox_xymsCZ"]=false,	 
		["CheckBox_xymsLS"]=false,	 
		["CheckBox_xymsHL"]=false,	 
		["CheckBox_xymsNP"]=false,	 
		["CheckBox_xymsNH"]=false,	 	
		["CheckBox_xymsWP"]=false,	 
		["CheckBox_xymsWH"]=false,	 
		["CheckBox_xymsTS"]=false,	 		
		["CheckBox_xymsNS"]=false,	 
		["CheckBox_xymsWS"]=false,	 	
		["CheckBox_csPVE"]=true,			--���ʯPVE������Χ		 
		["CheckBox_csPVP"]=false,			--���ʯPVP������Χ		 
		["CheckBox_csTank"]=false,	
		["CheckBox_csNX"]=false,	
		["CheckBox_csNH"]=false,	
		["CheckBox_csND"]=false,	
		["CheckBox_csNQ"]=false,			
		["CheckBox_csWG"]=false,	
		["CheckBox_csYY"]=false,	
		["CheckBox_csHY"]=false,	
		["CheckBox_csDX"]=false,	
		["CheckBox_csTL"]=false,			
	},
	tCkBoxState2={
		["CheckBox_fmJiaSu"]=false,
		["CheckBox_fmWuShuang"]=false,
		["CheckBox_fmHuiLan"]= false,
		["CheckBox_fmNeiFang"]= false,		--�ڹ�����	
		["CheckBox_fmWaiFang"]= false,		--�⹦����	
		["CheckBox_fmWeiXie"]= true,	
		["CheckBox_fmChaiZhao"]= false,
		["CheckBox_fmZhaoJia"]= false,
		["CheckBox_fmShanBi"]= false,		
		["CheckBox_fmWGMingZhong"]= true,	
		["CheckBox_fmWGPoFang"]= false,	--�⹦�Ʒ�
		["CheckBox_fmWGHuiXin"]= true,	
		["CheckBox_fmWGHuiXiao"]= true,	
		["CheckBox_fmNGMingZhong"]= true,	
		["CheckBox_fmNGPoFang"]= false,		--�ڹ��Ʒ�
		["CheckBox_fmNGHuiXin"]= true,	
		["CheckBox_fmNGHuiXiao"]= true,	
		["CheckBox_fmLiaoShang"]= false,
		["CheckBox_fmYuJin"]= false,
		["CheckBox_fmHuaJin"]= false,
		["CheckBox_fmWQLongXue"]=true,	 	--�ڹ��Ʒ�
		["CheckBox_fmWQNeiShang"]=false, 		--����
		["CheckBox_fmWQWaiShang"]=false,		--����
		["CheckBox_fmPartCloth"]=true,			
		["CheckBox_fmPartWaist"]=true,	
		["CheckBox_fmPartHat"]=true,	
		["CheckBox_fmPartFoot"]=true,	
		["CheckBox_fmPartHand"]=true,	
		["CheckBox_fmPartTrou"]=true,	
		["CheckBox_fmPartWeapon"]=true,			
	},
	tCkBoxState3={
	["CheckBox_EqPart0"]=false,
	["CheckBox_EqPart1"]=false,
	["CheckBox_EqPart2"]=false,
	["CheckBox_EqPart3"]=false,
	["CheckBox_EqPart4"]=false,
	["CheckBox_EqPart5"]=false,
	["CheckBox_EqPart6"]=false,
	["CheckBox_EqPart7"]=false,
	["CheckBox_EqPart8"]=false,
	["CheckBox_EqPart9"]=false,
	["CheckBox_EqPart10"]=false,
	},
	tChBoxTip={
		["JLDrug"]="�ָ�����",		 
		["TLDrug"]="�ָ�����",		 
		["XYS"]="�ܲ��ٶ�",	 
		["FYW"]="��Ӿ�ٶ�",			
		["WXS"]="�˼�����ʯ",  	
		["RedDrug"]="��Ѫ",		
		["BlueDrug"]="����",				
		["DaQi"]="��ᱬ������",		
		["YanXi"]="��ϯ",			
		["WCQ"]="�����򣬻��׼ӹ�������",					
		["xymsHL"]="������_��",		 
		["xymsTS"]="ĥʯ",			
		["xymsNS"]="ĥʯ",	
		["xymsWS"]="ĥʯ",		
		["csTank"]="����/ϴ��/��Ӱ/����",
		["csNX"]="����",
		["csNH"]="����",
		["csND"]="����",
		["csNQ"]="����",
		["csWG"]="��Ѫ/����/ؤ��/�ؽ�/̫��/��ɽ",		
		["csYY"]="��Ӱ/����/Ī��/�׽�",	
		["csHY"]="����/��ϼ",
		["csDX"]="����",
		["csTL"]="����",			
		["IsOn"]="��ѡ��������̵�\n���������Զ��۳�",	 	
		["Lock"]="�����������ֹ������Ʒ�仯ʱ�������\n�����ƶ���Ʒǰ���ã�����\n��������/���/�ѵ�/������ȡ/����" ,
	},
	tBtnTip={
	["Tank"]="����/ϴ��/��Ӱ/����" ,
	["Heat"] = "����/�뾭/����/��֪" ,
	["TL"] = "����",
	["LD"]="ؤ��/��Ѫ/����" ,
	["SF"]="�ؽ�/̫��/��ɽ" ,
	["YQ"]="����/��Ӱ/�׽�" ,
	["GG"]="��ϼ/����/����/Ī��" ,
	},
	tGrpMem={
		["GrpUsual"]={"JLDrug","TLDrug","XYS","FYW","WXS",}, 
		["GrpFuBen"]={"RedDrug","BlueDrug","DaQi","YanXi","WCQ"},		 
		["xymsTank"]={"TZ","CH","CZ","TS",},		--{"����","���","����"},	--"��в", ����
		["xymsHeat"]={"GG","LS","NH",},				--{"����","����","�ڹ���","����"},   --"�ڻ�","�ڻ�Ч",
		["xymsTL"]={"YQ","WH","NS"},				--{"Ԫ��","�⹦��","����"},   --"���Ч",
		["xymsLD"]={"LD","WH","WP","WS"},		--{"����","�⹦��","����","�⹦��"},	--"���Ч",       	--�����⹦��ؤ���Ѫ������	 
		["xymsSF"]={"SF","WH","WP","WS"},			--{"��","�⹦��","����","�⹦��"},	--"���Ч",			--���⹦���ؽ���̫�飬��ɽ
		["xymsYQ"]={"YQ","NH","NP","NS"},		--{"Ԫ��","�ڹ���","����","�ڹ���"},	--"�ڻ�Ч",			--Ԫ���ڹ������䣬��Ӱ���׽�
		["xymsGG"]={"GG","NH","NP","NS"},		--{"����","�ڹ���","����","�ڹ���"},	--"�ڻ�Ч",			--�����ڹ�����ϼ�����ģ�����
		["GrpXyms"]={"xymsTZ","xymsGG","xymsYQ","xymsLD","xymsSF","xymsCH","xymsCZ","xymsLS","xymsHL","xymsNP","xymsNH","xymsWP","xymsWH","xymsTS","xymsNS","xymsWS",},		
		["GrpCS"]={"csPVE","csPVP","csTank","csNX","csNH","csND","csNQ","csWG","csYY","csHY","csDX","csTL",},
		["GrpFMPart"]={"fmPartCloth","fmPartWaist","fmPartHat","fmPartFoot","fmPartHand","fmPartTrou","fmPartWeapon",},		 
		["GrpfmTong"]={"fmJiaSu","fmWuShuang","fmHuiLan",},	
		["GrpfmT"]={"fmNeiFang","fmWaiFang","fmWeiXie","fmChaiZhao","fmZhaoJia","fmShanBi",},			
		["GrpfmWG"]={"fmWGMingZhong","fmWGPoFang","fmWGHuiXin","fmWGHuiXiao",},	
		["GrpfmNG"]={"fmNGMingZhong","fmNGPoFang","fmNGHuiXin","fmNGHuiXiao",},	
		["GrpfmPVP"]={"fmYuJin","fmHuaJin",},		
		["GrpfmWQ"]={"fmWQLongXue","fmWQNeiShang","fmWQWaiShang",},		
		["GrpEqPart"]={"EqPart0","EqPart1","EqPart2","EqPart3","EqPart4","EqPart5","EqPart6","EqPart7","EqPart8","EqPart9","EqPart10",},
		},
	tCSPVE={
		["csTank"]={33660,33600},			 
		["csNX"]={33312},
		["csNH"]={33294},
		["csND"]={33330},
		["csNQ"]={33312},
		["csWG"]={30432,30444},
		["csYY"]={34872,34860},
		["csHY"]={31692,31704},
		["csDX"]={31794,31782,31800,31812},
		["csTL"]={34464,34452,34416,34386},
	},
	tCSPVP={
		["csTank"]={0},			
		["csNX"]={33324},
		["csNH"]={33306},
		["csND"]={33342},
		["csNQ"]={33324},		
		["csWG"]={30462,30474},
		["csYY"]={34890,34884},
		["csHY"]={31716,31722},
		["csDX"]={31818,31824},
		["csTL"]={34452},
	},	
	EqLv1=820,
	EqLv2=1000,	
	EqXF={["WF"]=false,["NF"]=false,["H"]=false,["N"]=false,["W"]=false,},
	EqAttr1={["SB"]=false,["CZ"]=false,["YJ"]=false,["PF"]=false,["HX"]=false,["JS"]=false,["OH"]=false},
	EqAttr2={["MZ"]=false,["WS"]=false,["HJ"]=false,},
	EqEx={["TXW"]=false,["TXYZ"]=false,["Set"]=false,["TZJ"]=false,["JCJ"]=false,},
	EqFY={["WF"]="���",["NF"]="�ڷ�",["H"]="����",["N"]="�ڹ�",["W"]="�⹦",["SB"]="����",["CZ"]="�����м�",["YJ"]="����",["PF"]="�Ʒ�",["HX"]="����",["JS"]="����",["OH"]="������",["MZ"]="����",["WS"]="��˫",["HJ"]="����",["Set"]="��װ",["TXW"]="��Ч����",["TXYZ"]="��Ч��׹",["TZJ"]="���ʾ���",["JCJ"]="��������",},
	tEqOXF={["WF"]={147},["NF"]={162},["H"]={261,},["N"]={159,196,268,219,173,242},["W"]={133},}, 
	tEqOAt1={["SB"]={81,},["CZ"]={84,86},["YJ"]={92,},["PF"]={166,142,205,272,228, 182,251,},["HX"]={156,138,161,201,270,224,178,247,},["JS"]={29,},["OH"]={},},
	tEqOAt2={["MZ"]={155,136,199,269,222,176,245,}, ["WS"]={89,},["HJ"]={95,},
	},
	ti2Part={
		[0]="����",
		[1]="�ر�",
		[2]="Զ��",
		[3]="����",
		[4]="ñ��",
		[5]="����",
		[6]="��ָ",
		[7]="��ָ",
		[8]="����",
		[9]="��׹",
		[10]="����",
		[11]="Ь��",
		[12]="����",
	},
	tload={},
	EqDataPath="Interface\\EqData\\",
}
 
RegisterCustomData("AssistEquip.szPlusKey")
RegisterCustomData("AssistEquip.szMinusKey")
RegisterCustomData("AssistEquip.tCkBoxState")
RegisterCustomData("AssistEquip.tCkBoxState2")
RegisterCustomData("AssistEquip.tCkBoxState3")

--Output(Station.GetMouseOverWindow():GetTreePath())
function AssistEquip.OnFrameCreate()
	local  ui = TF.UI(Station.Lookup("Normal/AssistEquip"))
	ui1= TF.UI(Station.Lookup("Normal/AssistEquip/PageSet_Main/Page_Drug/")) 
	ui2= TF.UI(Station.Lookup("Normal/AssistEquip/PageSet_Main/Page_Fumo/")) 
	ui3= TF.UI(Station.Lookup("Normal/AssistEquip/PageSet_Main/Page_Equip/")) 
	
	nX,_=ui:Append("Text", { txt = "ˢҩ��װ����", x = 300, y = 20, font = 203 }):Pos_()
	nX,_=ui:Append("Text", { txt = "���΢�� ", x =328, y =436,  }):Click(function() tips="��������΢����ʹ�÷�����\n��1���ڱ���ĳ���ϰ�[������]ǿ�Ƹ����������۳�\n��2���ڱ���ĳ���ϰ�[���ۼ�]ǿ�Ƶ������Զ��۳�\n��3����ݼ�Ϊ��������ǿ�Ƹ����������ۣ�ǿ�Ƶ�����\n"  TF.Sysmsg(tips,AssistEquip.DETitle) end):Hover(function()  tips="�������������ʾ" TF.ShowTip(tips) end):Size(65,28):Pos_()
	ui:Append("WndButton",  { txt = "���ñ���/���ۼ�", x = nX, y = 438 , font = 185, }):Size(145, 28):Click(function() HotkeyPanel_Open("�����ר�ò������") end):Pos_()
	ui:Append("WndCheckBox", "CheckBox_Lock",{ txt ="Lock(����", x = 556, y = 438, font = 203 }):Pos_()
	ui:Append("Text", { txt = "��ѡ�豣���ģ�������ʾ����", x =50, y = 475 , font = 205, })	
	ui:Append("WndCheckBox", "CheckBox_NoTrad", { txt = "����޷�����", x =400, y = 475 , font = 18, })
	ui:Append("WndCheckBox", "CheckBox_IsOn",{ txt ="��������", x = 556, y = 475, font = 205 })	
	--	nX,nY=ui:Append("Text", { txt = "1 ��ѡ�豣����(��������  => 2 �ÿ�ݼ� �� ΢��   =>  3 �������� �J �Ҹ�����", x = 30, y = nY+12, font = 67 }):Pos_()

	--ui1:Append("WndButton", "Button_DrugUnAll", { txt = "ȫ �� ѡ", x = 590, y = 385 , font = 18, }):Size(80, 28)
	ui2:Append("WndButton", "Button_FumoUnAll", { txt = "ȫ �� ѡ", x = 585, y = 385 , font = 18, }):Size(80, 28)
	
	nY=62
	nX,_=ui1:Append("WndButton", "Button_GrpUsual", { txt = "ͨ   ��", x = 65, y = nY , font = 185, }):Size(80, 28):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_JLDrug",{ txt ="����", x = 200, y = nY, font = 203 }):Pos_() 
	nX,_=ui1:Append("WndCheckBox", "CheckBox_TLDrug",{ txt ="����", x = 290, y = nY, font = 203 }):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_XYS",{ txt ="��ң", x = 380, y = nY, font = 203 }):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_FYW",{ txt ="����", x = 470, y = nY, font = 203 }):Pos_()
	nX,nY=ui1:Append("WndCheckBox", "CheckBox_WXS",{ txt ="����ʯ", x = 560, y = nY, font = 203 }):Pos_()

	nY = nY+ 15
	nX,_=ui1:Append("WndButton", "Button_GrpFuBen", { txt = "��   ��", x = 65, y = nY , font = 185, }):Size(80, 28):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_RedDrug",{ txt ="��ҩ", x = 200, y = nY, font = 203 }):Pos_() 
	nX,_=ui1:Append("WndCheckBox", "CheckBox_BlueDrug",{ txt ="��ҩ", x = 290, y = nY, font = 203 }):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_DaQi",{ txt ="����", x =380, y = nY, font = 203 }):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_YanXi",{ txt ="��ϯ", x = 470, y = nY, font = 203 }):Pos_()
	nX,nY=ui1:Append("WndCheckBox", "CheckBox_WCQ",{ txt ="�����", x = 560, y = nY, font = 203 }):Pos_()
	nY=nY+15

	nX,_=ui1:Append("WndButton", "Button_GrpXyms", { txt = "Сҩĥʯ", x = 65, y = nY , font = 185, }):Size(90, 28):Pos_()
	nX,_=ui1:Append("WndButton", "Button_xymsTank", { txt = "T", x = 70, y = 184 , font = 155, }):Size(44,28) :Pos_()
	nX,_=ui1:Append("WndButton", "Button_xymsHeat", { txt = "����", x = 138, y = 184 , font = 155, }):Size(44,28) :Pos_()
	nX,_=ui1:Append("WndButton", "Button_xymsTL", { txt = "����", x = 202, y = 184 , font = 155, }):Size(44,28) :Pos_()
	nX,_=ui1:Append("WndButton", "Button_xymsLD", { txt = "�����⹦", x = 70, y = 224 , font = 155, }):Size(75,28) :Pos_()
	nX,_=ui1:Append("WndButton", "Button_xymsSF", { txt = "���⹦", x =174, y = 224 , font = 155, }):Size(75,28) :Pos_()
	nX,_=ui1:Append("WndButton", "Button_xymsYQ", { txt = "Ԫ���ڹ�", x = 70, y = 264 , font = 155, }):Size(75,28) :Pos_()
	nX,_=ui1:Append("WndButton", "Button_xymsGG", { txt = "�����ڹ�", x = 174, y = 264 , font = 155, }):Size(75,28) :Pos_()

	nX,_=ui1:Append("WndCheckBox", "CheckBox_xymsTZ",{ txt ="����", x = 290, y = nY, font = 203 }):Pos_() 
	nX,_=ui1:Append("WndCheckBox", "CheckBox_xymsTS",{ txt ="����", x = 380, y = nY, font = 203 }):Pos_() 
	nX,_=ui1:Append("WndCheckBox", "CheckBox_xymsNS",{ txt ="����", x = 470, y = nY, font = 203 }):Pos_()
	nX,nY=ui1:Append("WndCheckBox", "CheckBox_xymsWS",{ txt ="����", x =560, y = nY, font = 203 }):Pos_()
	nY=nY+15
	nX,_=ui1:Append("WndCheckBox", "CheckBox_xymsGG",{ txt ="����", x = 290, y = nY, font = 203 }):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_xymsYQ",{ txt ="Ԫ��", x =380, y = nY, font = 203 }):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_xymsLD",{ txt ="����", x = 470, y = nY, font = 203 }):Pos_()
	nX,nY=ui1:Append("WndCheckBox", "CheckBox_xymsSF",{ txt ="��", x = 560, y = nY, font = 203 }):Pos_()
	nY=nY+15
	nX,_=ui1:Append("WndCheckBox", "CheckBox_xymsCH",{ txt ="���", x = 290, y = nY, font = 203 }):Pos_() 
	nX,_=ui1:Append("WndCheckBox", "CheckBox_xymsCZ",{ txt ="����", x = 380, y = nY, font = 203 }):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_xymsLS",{ txt ="����", x =470, y = nY, font = 203 }):Pos_()
	nX,nY=ui1:Append("WndCheckBox", "CheckBox_xymsHL",{ txt ="����", x = 560, y = nY, font = 203 }):Pos_()
	nY=nY+15
	nX,_=ui1:Append("WndCheckBox", "CheckBox_xymsNP",{ txt ="����", x = 290, y = nY, font = 203 }):Pos_() 
	nX,_=ui1:Append("WndCheckBox", "CheckBox_xymsNH",{ txt ="�ڻ�", x = 380, y = nY, font = 203 }):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_xymsWP",{ txt ="����", x =470, y = nY, font = 203 }):Pos_()
	nX,nY=ui1:Append("WndCheckBox", "CheckBox_xymsWH",{ txt ="���", x = 560, y = nY, font = 203 }):Pos_()
	
	
	
	nY=nY+20
	nX,_=ui1:Append("WndButton", "Button_GrpCS", { txt = "���ʯ", x = 65, y = nY , font = 185, }):Size(90, 28):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_csPVE",{ txt ="PVE", x = 200, y = nY, font = 203 }):Pos_() 
	nX,nY=ui1:Append("WndCheckBox", "CheckBox_csPVP",{ txt ="PVP", x = 290, y = nY, font = 203 }):Pos_()
	nY=nY+15
	nX,_=ui1:Append("WndCheckBox", "CheckBox_csTank",{ txt ="T", x = 200, y = nY, font = 203 }):Pos_() 
	nX,_=ui1:Append("WndCheckBox", "CheckBox_csNX",{ txt ="����", x = 290, y = nY, font = 203 }):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_csNH",{ txt ="�뾭", x =380, y = nY, font = 203 }):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_csND",{ txt ="����", x = 470, y = nY, font = 203 }):Pos_()
	nX,nY=ui1:Append("WndCheckBox", "CheckBox_csNQ",{ txt ="��֪", x = 560, y = nY, font = 203 }):Pos_()
	nY=nY+15
	nX,_=ui1:Append("WndCheckBox", "CheckBox_csWG",{ txt ="�⹦", x = 200, y = nY, font = 203 }):Pos_() 
	nX,_=ui1:Append("WndCheckBox", "CheckBox_csYY",{ txt ="����", x = 290, y = nY, font = 203 }):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_csHY",{ txt ="��Ԫ", x =380, y = nY, font = 203 }):Pos_()
	nX,_=ui1:Append("WndCheckBox", "CheckBox_csDX",{ txt ="����", x = 470, y = nY, font = 203 }):Pos_()
	nX,nY=ui1:Append("WndCheckBox", "CheckBox_csTL",{ txt ="����", x = 560, y = nY, font = 203 }):Pos_()
	
	this:RegisterEvent("SYS_MSG")

	
	nY=62
	nX,_=ui2:Append("WndButton", "Button_GrpFMPart", { txt = "��    λ", x = 70, y = nY , font = 205, }):Size(80, 28):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmPartCloth",{ txt ="��", x = 200, y = nY, font = 203 }):Pos_() 
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmPartWaist",{ txt ="��", x = 260, y = nY, font = 203 }):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmPartHat",{ txt ="ñ", x = 320, y = nY, font = 203 }):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmPartFoot",{ txt ="Ь", x = 380, y = nY, font = 203 }):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmPartHand",{ txt ="��", x = 440, y = nY, font = 203 }):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmPartTrou",{ txt ="��", x = 500, y = nY, font = 203 }):Pos_()
	nX,nY=ui2:Append("WndCheckBox", "CheckBox_fmPartWeapon",{ txt ="����", x = 560, y = nY, font = 203 }):Pos_()	
	nY=nY+15
	nX,_=ui2:Append("WndButton", "Button_GrpfmTong", { txt = "ͨ    ��", x = 72, y = nY , font = 185, }):Size(80, 28):Pos_()	
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmJiaSu",{ txt ="����", x = 200, y = nY, font = 203 }):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmWuShuang",{ txt ="��˫", x = 320, y = nY, font = 203 }):Pos_()
	nX,nY=ui2:Append("WndCheckBox", "CheckBox_fmHuiLan",{ txt ="����", x = 440, y = nY, font = 203 }):Pos_()		
	nY=nY+15
	nX,_=ui2:Append("WndButton", "Button_GrpfmT", { txt = "T", x = 72, y = nY , font = 185, }):Size(80, 28):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmNeiFang",{ txt ="�ڷ�", x = 200, y = nY, font = 203 }):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmWaiFang",{ txt ="���", x = 320, y = nY, font = 203 }):Pos_()
	nX,nY=ui2:Append("WndCheckBox", "CheckBox_fmWeiXie",{ txt ="��в", x = 440, y = nY, font = 203 }):Pos_()		
	nY=nY+15
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmChaiZhao",{ txt ="����", x = 200, y = nY, font = 203 }):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmZhaoJia",{ txt ="�м�", x = 320, y = nY, font = 203 }):Pos_()		
	nX,nY=ui2:Append("WndCheckBox", "CheckBox_fmShanBi",{ txt ="����", x = 440, y = nY, font = 203 }):Pos_()
	nY=nY+15	
	nX,_=ui2:Append("WndButton", "Button_GrpfmWG", { txt = "��    ��", x = 72, y = nY , font = 185, }):Size(80, 28):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmWGMingZhong",{ txt ="����", x = 200, y = nY, font = 203 }):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmWGPoFang",{ txt ="�Ʒ�", x = 320, y = nY, font = 203 }):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmWGHuiXin",{ txt ="����", x = 440, y = nY, font = 203 }):Pos_()		
	nX,nY=ui2:Append("WndCheckBox", "CheckBox_fmWGHuiXiao",{ txt ="��Ч", x = 560, y = nY, font = 203 }):Pos_()		
	nY=nY+15		
	nX,_=ui2:Append("WndButton", "Button_GrpfmNG", { txt = "��    ��", x = 72, y = nY , font = 185, }):Size(80, 28):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmNGMingZhong",{ txt ="����", x = 200, y = nY, font = 203 }):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmNGPoFang",{ txt ="�Ʒ�", x = 320, y = nY, font = 203 }):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmNGHuiXin",{ txt ="����", x = 440, y = nY, font = 203 }):Pos_()		
	nX,nY=ui2:Append("WndCheckBox", "CheckBox_fmNGHuiXiao",{ txt ="��Ч", x = 560, y = nY, font = 203 }):Pos_()			
	nY=nY+15
	nX,_=ui2:Append("Text", { txt = "��    ��", x = 65, y = 270, font = 185 }):Pos_()
	nX,nY=ui2:Append("WndCheckBox", "CheckBox_fmLiaoShang",{ txt ="����", x = 200, y = nY, font = 203 }):Pos_()
	nY=nY+15
	nX,_=ui2:Append("WndButton", "Button_GrpfmPVP", { txt = "P  V  P", x = 72, y = nY , font = 185, }):Size(80, 28):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmYuJin",{ txt ="����", x = 200, y = nY, font = 203 }):Pos_()
	nX,nY=ui2:Append("WndCheckBox", "CheckBox_fmHuaJin",{ txt ="����", x = 320, y = nY, font = 203 }):Pos_()	
	nY=nY+15
	nX,_=ui2:Append("WndButton", "Button_GrpfmWQ", { txt = "��    ��", x = 72, y = nY , font = 185, }):Size(80, 28):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmWQLongXue",{ txt ="��Ѫ", x = 200, y = nY, font = 203 }):Pos_()
	nX,_=ui2:Append("WndCheckBox", "CheckBox_fmWQNeiShang",{ txt ="����", x = 320, y = nY, font = 203 }):Pos_()
	nX,nY=ui2:Append("WndCheckBox", "CheckBox_fmWQWaiShang",{ txt ="����", x = 440, y = nY, font = 203 }):Pos_()	
	
	
	nX,_=ui3:Append("Text", { txt = "Ʒ    ��", x = 62, y = 35, font = 185 }):Pos_()
	nX,_=ui3:Append("Text", { txt = "��", x = 184, y = 35, }):Pos_()
	nX,_=ui3:Append("WndEdit", "Edit_EqLv1", { x = 225, y = 67, limit = 4, h = 27, w = 46 })
	:Text("820"):Change(function(szText)	
		if not tonumber(szText) then return end	--Output("���ǺϷ����ݣ���������") 
		if tonumber(szText)<=0 then AssistEquip.EqLv1=0 
		else
			AssistEquip.EqLv1=tonumber(szText) 
		end
		AssistEquip.SetEQ() 
		end):Pos_()
	nX,_=ui3:Append("Text", { txt = "~", x = 270, y = 35, }):Pos_()
	nX,nY=ui3:Append("WndEdit", "Edit_EqLv2", { x = 310, y = 67, limit = 4, h = 27, w = 46 })
	:Text("1000"):Change(function(szText)	if not tonumber(szText) then return end	 
		if tonumber(szText)<=0 then AssistEquip.EqLv2=0 
		else
			AssistEquip.EqLv2=tonumber(szText) 
		end
		AssistEquip.SetEQ() 
		end):Pos_()
	nY=nY+15			--0 ����  1���� 2�� 3ñ 4�� 5�� 6�� 7׹ 8�� 9Ь 10��
	nX,_=ui3:Append("WndButton", "Button_GrpEqPart", { txt = "��    λ", x = 70, y = nY , font = 185, }):Size(80, 28):Pos_()
	nX,_=ui3:Append("WndCheckBox", "CheckBox_EqPart2",{ txt ="��", x = 200, y = nY, font = 203 }):Pos_() 
	nX,_=ui3:Append("WndCheckBox", "CheckBox_EqPart6",{ txt ="��", x = 270, y = nY, font = 203 }):Pos_()
	nX,_=ui3:Append("WndCheckBox", "CheckBox_EqPart3",{ txt ="ñ", x = 340, y = nY, font = 203 }):Pos_()
	nX,nY=ui3:Append("WndCheckBox", "CheckBox_EqPart9",{ txt ="Ь", x = 410, y = nY, font = 203 }):Pos_()
	nY=nY+15	
	nX,_=ui3:Append("WndCheckBox", "CheckBox_EqPart10",{ txt ="��", x = 200, y = nY, font = 203 }):Pos_()
	nX,_=ui3:Append("WndCheckBox", "CheckBox_EqPart8",{ txt ="��", x = 270, y = nY, font = 203 }):Pos_()
	nX,_=ui3:Append("WndCheckBox", "CheckBox_EqPart5",{ txt ="��", x = 340, y = nY, font = 203 }):Pos_()	
	nX,nY=ui3:Append("WndCheckBox", "CheckBox_EqPart4",{ txt ="��", x = 410, y = nY, font = 203 }):Pos_()
	nY=nY+15		
	nX,_=ui3:Append("WndCheckBox", "CheckBox_EqPart7",{ txt ="׹", x = 200, y = nY, font = 203 }):Pos_()
	nX,_=ui3:Append("WndCheckBox", "CheckBox_EqPart1",{ txt ="����", x = 270, y = nY, font = 203 }):Pos_()
	nX,nY=ui3:Append("WndCheckBox", "CheckBox_EqPart0",{ txt ="����", x = 340, y = nY, font = 203 }):Pos_()	
	nX,_=ui3:Append("Text", { txt = "��    ��", x = 62, y = 215, font = 205 }):Pos_()
	ui3:Append("WndComboBox", "Combo_XinFa", { x = 200, y = 245, w=160, h=25, txt = AssistEquip.GetComboN("XF") }):Menu(AssistEquip.GetEqXFMenu)
 	ui3:Append("WndComboBox", "Combo_Attr1", { x = 200, y = 285, w=160, h=25, txt = AssistEquip.GetComboN("Attr1") }):Menu(AssistEquip.GetEqAttr1Menu)
	ui3:Append("WndComboBox", "Combo_Attr2", { x = 200, y = 325, w=160, h=25, txt = AssistEquip.GetComboN("Attr2") }):Menu(AssistEquip.GetEqAttr2Menu)
	ui3:Append("WndComboBox", "Combo_Ex", { x = 200, y = 365, w=160, h=25, txt = AssistEquip.GetComboN("Ex") }):Menu(AssistEquip.GetEqExMenu)
	
 	ui3:Append("Text", { txt = "���ٲ�ѯ", x =500, y = 220,  font = 205  }):Size(60,28) :Click(function() 
		AssistHaste._OpenWindow()
		end)
	ui3:Append("Text", { txt = "���뷽��", x =500, y = 260, font = 205 }):Size(60,28) :Click(function() 
		GetUserInput("��������Ҫ������ļ���(��Ҫ��׺���磺eq\n·����Interface/EqData",function(szText) AssistEquip.LoadEqData(szText) end, nil)
		end):Hover(function()  tips="���ļ�������װ��Ϣ" TF.ShowTip(tips) end)
	ui3:Append("Text", { txt = "��λ�ȡ����", x =500, y = 300, }):Size(80,28) :Click(function() tips="��λ�ȡ���գ�\n���Լ���������װ����屣����գ����Ͻ�\n��������ҡ���ѡ�и���ң���Ҫ�л�Ŀ��\n�����Ѻ��Ѳ��ڸ�����������ѯ��ID����ѡ������Ŀ��\n�������ͣ����ͷ��TF����ť�ɻ�ȡ����ID\n����סCtrl����Cataclysm��壬�ɻ�ȡ����ID\nֻ����װ�������ʯ��Ϣ���޷���ȡ��ħ��Ϣ\n"  TF.Sysmsg(tips,AssistEquip.DETitle) end):Hover(function()  tips="�������������ʾ" TF.ShowTip(tips) end):Pos_()
 
	local page = this:Lookup("PageSet_Main")
	page:Lookup("CheckBox_Drug"):Lookup("", ""):Lookup("Text_DrugCapital"):SetText("ˢҩ")
	page:Lookup("CheckBox_Fumo"):Lookup("", ""):Lookup("Text_FumoCapital"):SetText("��ħ")
	page:Lookup("CheckBox_Equip"):Lookup("", ""):Lookup("Text_EquipCapital"):SetText("װ��")

end

function AssistEquip.GetComboN(szAbbr)
	local szPre,szTxt,t="","",{}
	if szAbbr == "XF" then  szPre="δѡ���ķ�"    t=AssistEquip.EqXF 
	elseif szAbbr == "Attr1" then szPre="����1����"    t=AssistEquip.EqAttr1  
	elseif szAbbr == "Attr2" then  szPre="����2����"  t=AssistEquip.EqAttr2 
	elseif szAbbr == "Ex" then  szPre="�޸�������"  t=AssistEquip.EqEx
	end
	for name,state in pairs (t) do 
		if state then szTxt=szTxt..AssistEquip.EqFY[name].."," end
	end
	if szTxt=="" then szTxt=szPre end
	return szTxt
end


function AssistEquip.GetEqXFMenu()
	local ui=TF.UI(Station.Lookup("Normal/AssistEquip/PageSet_Main/Page_Equip/"))
	return {
	{ szOption ="���",
			bCheck = true, bChecked = AssistEquip.EqXF["WF"],
			--fnDisable = function() return not HM_TargetMon end,
			fnAction = function() AssistEquip.EqXF["WF"] = not AssistEquip.EqXF["WF"]
				if  not AssistEquip.EqXF["NF"] and not AssistEquip.EqXF["WF"] then 
					AssistEquip.EqAttr1["SB"]=false    AssistEquip.EqAttr1["CZ"]=false    
					szTxt=AssistEquip.GetComboN("Attr1") 
					ui:Fetch("Combo_Attr1"):Text(szTxt) 
				end
				szTxt=AssistEquip.GetComboN("XF") 
				ui:Fetch("Combo_XinFa"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		},{ szOption ="�ڷ�",
			bCheck = true, bChecked = AssistEquip.EqXF["NF"],
			--fnDisable = function() return not HM_TargetMon end,
			fnAction = function() AssistEquip.EqXF["NF"] = not AssistEquip.EqXF["NF"]
				if  not AssistEquip.EqXF["NF"] and not AssistEquip.EqXF["WF"] then 
					AssistEquip.EqAttr1["SB"]=false    AssistEquip.EqAttr1["CZ"]=false    
					szTxt=AssistEquip.GetComboN("Attr1") 
					ui:Fetch("Combo_Attr1"):Text(szTxt) 
				end
				szTxt=AssistEquip.GetComboN("XF") 
				ui:Fetch("Combo_XinFa"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		},{ szOption ="����",
			bCheck = true, bChecked = AssistEquip.EqXF["H"],
			fnAction = function() 
				AssistEquip.EqXF["H"] = not AssistEquip.EqXF["H"] 
				if not AssistEquip.EqXF["H"] then 
					AssistEquip.EqAttr1["OH"]=false  
					szTxt=AssistEquip.GetComboN("Attr1") 
					ui:Fetch("Combo_Attr1"):Text(szTxt) 
				end
				szTxt=AssistEquip.GetComboN("XF") 
				ui:Fetch("Combo_XinFa"):Text(szTxt)  
				AssistEquip.SetEQ()
				end
		}, { szOption ="�ڹ�",	--��������ᣬ�ڹ�
			bCheck = true, bChecked = AssistEquip.EqXF["N"],
			fnAction = function() AssistEquip.EqXF["N"]= not AssistEquip.EqXF["N"] 
				if  not AssistEquip.EqXF["N"] and not AssistEquip.EqXF["W"] then 
					AssistEquip.EqAttr1["PF"]=false
					szTxt=AssistEquip.GetComboN("Attr1") 
					ui:Fetch("Combo_Attr1"):Text(szTxt) 
				end
				szTxt=AssistEquip.GetComboN("XF") 
				ui:Fetch("Combo_XinFa"):Text(szTxt)  
				AssistEquip.SetEQ()
			end
		}, { szOption ="�⹦",
			bCheck = true, bChecked = AssistEquip.EqXF["W"],
			fnAction = function() AssistEquip.EqXF["W"] = not AssistEquip.EqXF["W"] 
				if  not AssistEquip.EqXF["N"] and not AssistEquip.EqXF["W"] then 
					AssistEquip.EqAttr1["PF"]=false  
					szTxt=AssistEquip.GetComboN("Attr1") 
					ui:Fetch("Combo_Attr1"):Text(szTxt)
				end
				szTxt=AssistEquip.GetComboN("XF") 
				ui:Fetch("Combo_XinFa"):Text(szTxt)  
				AssistEquip.SetEQ()	
			end
		}, 
	}
end
function AssistEquip.GetEqAttr1Menu()	-- (��/��/��)/����/��/�ӣ�
	local ui=TF.UI(Station.Lookup("Normal/AssistEquip/PageSet_Main/Page_Equip/"))
	return {
		{ szOption ="����",
			bCheck = true, bDisable = not AssistEquip.EqXF["WF"] and not AssistEquip.EqXF["NF"], bChecked = AssistEquip.EqAttr1["SB"],
			fnAction = function() 
				AssistEquip.EqAttr1["SB"] = not AssistEquip.EqAttr1["SB"] 
				szTxt=AssistEquip.GetComboN("Attr1") 
				ui:Fetch("Combo_Attr1"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, { szOption ="�����м�",
			bCheck = true, bDisable = not AssistEquip.EqXF["WF"] and not AssistEquip.EqXF["NF"], bChecked = AssistEquip.EqAttr1["CZ"],
			fnAction = function() 
				AssistEquip.EqAttr1["CZ"] = not AssistEquip.EqAttr1["CZ"]
				szTxt=AssistEquip.GetComboN("Attr1") 
				ui:Fetch("Combo_Attr1"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, { szOption ="����",
			bCheck = true, bChecked = AssistEquip.EqAttr1["YJ"],
			fnAction = function() 
				AssistEquip.EqAttr1["YJ"] = not AssistEquip.EqAttr1["YJ"]
				szTxt=AssistEquip.GetComboN("Attr1") 
				ui:Fetch("Combo_Attr1"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, { szOption ="�Ʒ�", 
			bCheck =true, bDisable = not AssistEquip.EqXF["N"]  and not AssistEquip.EqXF["W"] , bChecked = AssistEquip.EqAttr1["PF"],
			fnAction = function() 
				AssistEquip.EqAttr1["PF"] = not AssistEquip.EqAttr1["PF"] 
				szTxt=AssistEquip.GetComboN("Attr1") 
				ui:Fetch("Combo_Attr1"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, { szOption ="����",
			bCheck = true, bChecked = AssistEquip.EqAttr1["HX"],
			fnAction = function() 
				AssistEquip.EqAttr1["HX"] = not AssistEquip.EqAttr1["HX"] 
				szTxt=AssistEquip.GetComboN("Attr1") 
				ui:Fetch("Combo_Attr1"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, { szOption ="����",
			bCheck = true, bChecked = AssistEquip.EqAttr1["JS"],
			fnAction = function() 
				AssistEquip.EqAttr1["JS"] = not AssistEquip.EqAttr1["JS"] 
				szTxt=AssistEquip.GetComboN("Attr1") 
				ui:Fetch("Combo_Attr1"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		},  { szOption ="������",
			bCheck = true, bDisable = not  AssistEquip.EqXF["H"], bChecked = AssistEquip.EqAttr1["OH"],
			fnAction = function() 
				AssistEquip.EqAttr1["OH"] = not AssistEquip.EqAttr1["OH"] 
				szTxt=AssistEquip.GetComboN("Attr1") 
				ui:Fetch("Combo_Attr1"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, 
	}
end
function AssistEquip.GetEqAttr2Menu()	 
	local ui=TF.UI(Station.Lookup("Normal/AssistEquip/PageSet_Main/Page_Equip/"))
	return {
		{ szOption ="����",
			bCheck = true, bChecked = AssistEquip.EqAttr2["MZ"],
			fnAction = function() 
				AssistEquip.EqAttr2["MZ"] = not AssistEquip.EqAttr2["MZ"]
				szTxt=AssistEquip.GetComboN("Attr2") 
				ui:Fetch("Combo_Attr2"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, { szOption ="��˫",
			bCheck = true, bChecked = AssistEquip.EqAttr2["WS"],
			fnAction = function() 
				AssistEquip.EqAttr2["WS"] = not AssistEquip.EqAttr2["WS"] 
				szTxt=AssistEquip.GetComboN("Attr2") 
				ui:Fetch("Combo_Attr2"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, { szOption ="����",
			bCheck = true, bChecked = AssistEquip.EqAttr2["HJ"],
			fnAction = function() 
				AssistEquip.EqAttr2["HJ"] = not AssistEquip.EqAttr2["HJ"]
				szTxt=AssistEquip.GetComboN("Attr2") 
				ui:Fetch("Combo_Attr2"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, 
	}
end

function AssistEquip.GetEqExMenu()	 
	local ui=TF.UI(Station.Lookup("Normal/AssistEquip/PageSet_Main/Page_Equip/"))
	return {	
		{ szOption ="��װ",
			bCheck = true, bChecked = AssistEquip.EqEx["Set"],
			fnAction = function() 
				AssistEquip.EqEx["Set"] = not AssistEquip.EqEx["Set"]
				szTxt=AssistEquip.GetComboN("Ex") 
				ui:Fetch("Combo_Ex"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		},
		{ szOption ="��Ч����",
			bCheck = true,  bDisable = not  AssistEquip.tCkBoxState3["CheckBox_EqPart0"], bChecked = AssistEquip.EqEx["TXW"],
			fnAction = function() 
				AssistEquip.EqEx["TXW"] = not AssistEquip.EqEx["TXW"]
				szTxt=AssistEquip.GetComboN("Ex") 
				ui:Fetch("Combo_Ex"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, { szOption ="��Ч��׹",
			bCheck = true, bDisable = not  AssistEquip.tCkBoxState3["CheckBox_EqPart7"], bChecked = AssistEquip.EqEx["TXYZ"],
			fnAction = function() 
				AssistEquip.EqEx["TXYZ"] = not AssistEquip.EqEx["TXYZ"]
				szTxt=AssistEquip.GetComboN("Ex") 
				ui:Fetch("Combo_Ex"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, { szOption ="���ʾ���",
			bCheck = true, bChecked = AssistEquip.EqEx["TZJ"],
			fnAction = function() 
				AssistEquip.EqEx["TZJ"] = not AssistEquip.EqEx["TZJ"] 
				szTxt=AssistEquip.GetComboN("Ex") 
				ui:Fetch("Combo_Ex"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, { szOption ="��������",
			bCheck = true, bChecked = AssistEquip.EqEx["JCJ"],
			fnAction = function() 
				AssistEquip.EqEx["JCJ"] = not AssistEquip.EqEx["JCJ"]
				szTxt=AssistEquip.GetComboN("Ex") 
				ui:Fetch("Combo_Ex"):Text(szTxt) 
				AssistEquip.SetEQ()
			end
		}, 
	}
end

function AssistEquip.SetPreXYMS(szClass)
	local tHisChild=	AssistEquip.tGrpMem[szClass]   
	local wnd=Station.Lookup("Normal/AssistEquip/PageSet_Main/Page_Drug/")
	for _,szName in pairs(tHisChild) do	 				
		szName="CheckBox_xyms"..szName
		--cbTarg=this:GetParent():Lookup(szName)
		cbTarg=wnd:Lookup(szName)
		if not cbTarg:IsCheckBoxChecked() then cbTarg:Check(true)	end 		
	end
end

function AssistEquip.OnLButtonClick()
	local szName = this:GetName()
	local frame = Station.Lookup("Normal/AssistEquip")
	local f = Station.Lookup("Normal/BigBagPanel")	
	if szName == "Button_Close" then
		if not frame then	return	end
		frame:Hide() 
		AssistEquip.bFrameOpened = false
		if not f or not f:IsVisible() then  return end
		AssistEquip.ResetBag()	AssistEquip.SetOff()	
		return
	end

	if not f or not f:IsVisible() then TF.Alert("�ȴ򿪱�����ʹ��", nil, "Ok") AssistEquip._OpenWindow() return end
	--[[ if szName == "Button_DrugUnAll" then	 
		for szBtnName,_ in pairs(AssistEquip.tCkBoxState) do 
			if szBtnName~="CheckBox_Drug" and szBtnName~="CheckBox_Fumo" and szBtnName~="CheckBox_Equip"  then 
				cbTarg=this:GetParent():Lookup(szBtnName)   
				if cbTarg:IsCheckBoxChecked() then cbTarg:Check(false)	end 
			end
		end
	end ]]
	if szName == "Button_FumoUnAll" then
		for szBtnName,_ in pairs(AssistEquip.tCkBoxState2) do	
			if szBtnName~="CheckBox_Drug" and szBtnName~="CheckBox_Fumo" and szBtnName~="CheckBox_Equip"   then
				cbTarg=this:GetParent():Lookup(szBtnName)
				if cbTarg:IsCheckBoxChecked() then cbTarg:Check(false)	end 	
			end
		end
		return
	end
	
	if string.find(szName,"Button_Grp") then
		szGrp=string.gsub(szName,"Button_","")   
		tHisChild=	AssistEquip.tGrpMem[szGrp]   
		for _,szName in pairs(tHisChild) do	 				
			szName="CheckBox_"..szName
			cbTarg=this:GetParent():Lookup(szName)
			if not cbTarg:IsCheckBoxChecked() then cbTarg:Check(true)	end 		
		end
		return
	end
	
	if string.find(szName,"Button_xyms") then
		szAbbr=string.match(szName,"Button_(.+)")
		AssistEquip.SetPreXYMS(szAbbr)
		return
	end
end

function AssistEquip.OnRButtonClick()
	local szName = this:GetName()
	if --[[ szName == "Button_DrugUnAll" then	 
		for szBtnName,_ in pairs(AssistEquip.tCkBoxState) do 
			if szBtnName~="CheckBox_Drug" and szBtnName~="CheckBox_Fumo" and szBtnName~="CheckBox_Equip"  then 
				cbTarg=this:GetParent():Lookup(szBtnName)   
				if cbTarg:IsCheckBoxChecked() then cbTarg:Check(false)	end 
			end
		end
	elseif  ]]szName == "Button_FumoUnAll" then				--�����Ҽ�unall
		for szBtnName,_ in pairs(AssistEquip.tCkBoxState2) do	
			if szBtnName~="CheckBox_Drug" and szBtnName~="CheckBox_Fumo" and szBtnName~="CheckBox_Equip"  then
				cbTarg=this:GetParent():Lookup(szBtnName)
				if cbTarg:IsCheckBoxChecked() then cbTarg:Check(false)	end 	
			end
		end
	elseif string.find(szName,"Button_Grp") then
		szGrp=string.gsub(szName,"Button_","")   
		tHisChild=	AssistEquip.tGrpMem[szGrp]   
		for _,szName in pairs(tHisChild) do	 
			szName="CheckBox_"..szName
			cbTarg=this:GetParent():Lookup(szName)
			if cbTarg:IsCheckBoxChecked() then cbTarg:Check(false)	end 		
		end
	end
end

 function AssistEquip.OnMouseEnter()		
	tips=nil
	local szName = this:GetName()
	local szType = this:GetType()	
	if szType == "WndCheckBox"  then  
		szAbbr=string.gsub(szName,"CheckBox_","")
		tips=AssistEquip.tChBoxTip[szAbbr] 
	elseif szType == "WndButton" then
		if string.find(szName,"Button_Grp") then
			tips="���ȫѡ\n�Ҽ�ȫ��"
		elseif string.find(szName,"xyms") then
			szAbbr=string.match(szName,"Button_xyms(.+)")
			tips=AssistEquip.tBtnTip[szAbbr]
		end
	end
	if tips then TF.ShowTip(tips,185) end	--67
end

function AssistEquip.OnMouseLeave()
	local szName = this:GetName()
	local szType = this:GetType()
	HideTip()
end

local _FILE = {
	Enchant = {
	--	Path = string.format("Interface\\AH\\AH_Base\\data\\%s\\Enchant.tab", szLang),  
		Path = string.format("Interface\\TF\\AssistEquip\\Desc.tab"), 
		Title = {
			{f = "s", t = "szName"},
			{f = "s", t = "szDesc"},
		},
	},
	}
	
	local tTable = KG_Table.Load(_FILE.Enchant.Path, _FILE.Enchant.Title, FILE_OPEN_MODE.NORMAL)
	if tTable then
		local nRow = tTable:GetRowCount()
		for i = 1, nRow do
			local tRow = tTable:GetRow(i)
			if not AssistEquip.tDescData[tRow.szName] then
				AssistEquip.tDescData[tRow.szName] = tRow.szDesc
			end
		end
	end
 
 
 
ResEqWnd={}
ResEqWnd.OnFrameKeyDown= function()
	if GetKeyName(Station.GetMessageKey()) == "Esc" then
		--AssistEquip._ShowRes()
		Station.Lookup("Normal1/ResEqWnd"):Destroy()
		AssistEquip.LockEq=false
		local fb=Station.Lookup("Normal/BigBagPanel")
		if fb and fb:IsVisible() then AssistEquip.ResetBag() end
		return 1
	end
	return 0
end

  function AssistEquip._ShowRes()
	local frame = Station.Lookup("Normal1/ResEqWnd")
	if frame then
		frame:Destroy()
	end
		frame = Wnd.OpenWindow("Interface\\TF\\AssistEquip\\ResEqWnd.ini","ResEqWnd")
		frame:Show() 
		frame:EnableDrag(1)
		frame:SetDragArea(0,0,520,500)
end
 
 function AssistEquip.EquipInfoByID(nID)
--	ViewInviteToPlayer(nID)
	if nID and IsPlayer(nID) and GetPlayer(nID) then
		local szName=GetPlayer(nID).szName
		TF.Alert("������Ϣ������ң���"..szName.."����", function() AssistEquip._EquipInfoByID(nID) end, "ȷ������",nil,"ȡ������")    
	end
 end
 
  function AssistEquip._EquipInfoByID(nID)
	player=GetPlayer(nID)   or GetClientPlayer()
	ttest={}
	dwBox=0 	
	dwSize=13 
	for dwX = 0, dwSize-1, 1 do
		local	item = GetPlayerItem(player, dwBox, dwX)		
		if item then
			local sn=item.szName
			local gn=item.nGenre
			local nuiid=item.nUiId
			local nSub=item.nSub
			local nl=item.nLevel
			local CDEid=item.GetMountFEAEnchantID()
			local fm=nil
			if nSub==0   then 			
				local tattr=item.GetMagicAttrib()
				local pvxep=tattr[#tattr]["nID"]
				szPvx="PV"
				if pvxep==95 then szPvx="PVP" else szPvx="PVE" end	--����
				if CDEid~=0 then 
					dwTabType,dwIndex=GetColorDiamondInfoFromEnchantID(CDEid)
					fm=dwIndex
				end
			end
			ttest[dwX]={nSub,nuiid,fm,sn,nl}		
		end
	end
	local xinfa=player.GetKungfuMount()
	local szPreBZ="�ķ�"
	if xinfa then szPreBZ=xinfa.szSkillName  end
	if szPvx then  szPreBZ=szPreBZ..szPvx end 
	AssistEquip.PrintRes(ttest,szPreBZ,szPreBZ)
	end
 
 function AssistEquip.EquipInfo(nID)			--������װ�������ļ�
	if not nID then nID,nType=Target_GetTargetData() end    --��������ctrl�鿴id����ѡ��Ŀ�ꡣ�����Զ���ȡ
	AssistEquip._EquipInfo(nID)
end

 function AssistEquip._EquipInfo(nID)
	player=GetPlayer(nID)   or GetClientPlayer()

	ttest={}
	dwBox=0 	
	dwSize=13  --����0��cj�ؽ�1��Զ��2��13-22����13-16���� 17���� 18-22�ֿ⡣22����
	for dwX = 0, dwSize-1, 1 do
		local	item = GetPlayerItem(player, dwBox, dwX)			
		if item then
			local sn=item.szName
			local gn=item.nGenre
			local nuiid=item.nUiId
			local nSub=item.nSub
			local nl=item.nLevel
			local CDEid=item.GetMountFEAEnchantID()
			local fm=nil
			if nSub==0   then 			
				local tattr=item.GetMagicAttrib()
				if tattr[#tattr] then 
					local pvxep=tattr[#tattr]["nID"]
					szPvx="PV"
					if pvxep==95 then szPvx="PVP" else szPvx="PVE" end	--����
					if CDEid~=0 then 
						dwTabType,dwIndex=GetColorDiamondInfoFromEnchantID(CDEid)
						fm=dwIndex
					end
				end
			end
			ttest[dwX]={nSub,nuiid,fm,sn,nl}		
		end
	end

	local xinfa=player.GetKungfuMount()
	local szPreBZ="�ķ�"
	if xinfa then szPreBZ=xinfa.szSkillName  end
	if szPvx then  szPreBZ=szPreBZ..szPvx end 
	GetUserInput("������÷�����ע���磺����PVP��", function(szText) AssistEquip.PrintRes(ttest,szText,szPreBZ) end, nil,nil,nil,szPreBZ) 
end

function AssistEquip.PrintRes(ttest,szBeiZhu,szPreBZ)
--	player=GetPlayer(dwPlayerID)
	local szName=player.szName
	local szBeiZhu=szBeiZhu or szPreBZ
	AssistEquip._ShowRes()
	local  ui3 = TF.UI(Station.Lookup("Normal1/ResEqWnd"))

	ui3:Append("Text", { txt =	szName, x =145, y = 5, font=200}):Pos_()
	ui3:Append("Text", { txt =	szBeiZhu, x =nX+25, y = 5, font=200}):Pos_()
	nY=50
	for i=0,12 do
		if ttest[i] then
			nX, _ =ui3:Append("Text", { txt =	AssistEquip.ti2Part[i], x =30, y = nY,}):Pos_()
			nX, _ =ui3:Append("Text", { txt = ttest[i][4], x = 95, y = nY, font=67}):Pos_()
			nX, _ =ui3:Append("Text", { txt = ttest[i][5], x = 260, y = nY,}):Pos_()
			if 	ttest[i][3] then  nX, _ =ui3:Append("Text", { txt = GetItemInfo(5,ttest[i][3]).szName, x = 300, y = nY,  font=67}):Pos_()   end
			nY=nY+30 
		end
	end
	--szMsg, fActionSure, fActionCancel, fAutoClose, rect, szDefault,
	ui3:Append("Text", { txt = "�������ļ�", x =80, y = nY+15, font = 205 }):Size(60,28) :Click(function() 				 
		GetUserInput("�������ļ������磺eq1��", function(szText) 
				AssistEquip.SaveEqData(szText) 
			end, nil,nil,nil,szBeiZhu.."-"..szName) 
		end) 
		ui3:Append("Text", { txt = "�Աȱ���", x =230, y = nY+15, font = 205 }):Size(60,28) :Click(function() 
		--TF.Alert("ע��͵�ǰ�����ظ��᲻������\n����������һ����װ����", nil, "Ok") 
		AssistEquip.CompBg(ttest)
		end) 			
	ui3:Append("Text", { txt = "�ر�", x =365, y = nY+15, font = 205 }):Size(40,28) :Click(function() 				 
		--AssistEquip._ShowRes()
		Station.Lookup("Normal1/ResEqWnd"):Destroy()
		local fb=Station.Lookup("Normal/BigBagPanel")
		if fb and fb:IsVisible() then AssistEquip.ResetBag() end		
		end) 	
end	

	AssistEquip.CoverFlag=false
	
function AssistEquip.SaveEqData(szText)
	tFileExist=LoadLUAData(AssistEquip.EqDataPath..szText..".jx3dat")	
	if tFileExist and not AssistEquip.CoverFlag then   
		TF.Alert("                   �ļ��Ѵ���",   function() GetUserInput("�������ļ������磺eq1��", function(szText2)  AssistEquip.SaveEqData(szText2)  end, nil,nil,nil,szText)  end , "������", 
		function() AssistEquip.CoverFlag=true  AssistEquip.SaveEqData(szText)  end,"����" ) --GetUserInput("�������ļ�����", function(szText1) AssistEquip.SaveEqData(szText1) end, nil,nil,nil) 
		return 
	end
	if szText=="" then 		
		TF.Alert("�ļ�������Ϊ��", nil, "Ok")  
	else
		SaveLUAData(AssistEquip.EqDataPath..szText..".jx3dat",ttest) 
		AssistEquip.CoverFlag=false
		OutputMessage("MSG_ANNOUNCE_YELLOW","�����ɹ���"..AssistEquip.EqDataPath..szText..".jx3dat")
	end
 end

 function	AssistEquip.LoadEqData(szText)	--������װ�����������Աȣ��ظ�����ע��
	AssistEquip.tload=LoadLUAData(AssistEquip.EqDataPath..szText..".jx3dat")	
	if not AssistEquip.tload then  
		TF.Alert("�ļ�������", nil, "Ok") return  
	else  
		OutputMessage("MSG_ANNOUNCE_YELLOW","��������ɹ�")
		AssistEquip._ShowRes()
		local  ui3 = TF.UI(Station.Lookup("Normal1/ResEqWnd"))
		ttest=AssistEquip.tload
		ui3:Append("Text", { txt =	szText, x =205, y = 5, font=207}):Pos_()
		nY=50
		for i=0,12 do
			if ttest[i] then
				nX, _ =ui3:Append("Text", { txt =	AssistEquip.ti2Part[i], x =30, y = nY,}):Pos_()
				nX, _ =ui3:Append("Text", { txt = ttest[i][4], x = 95, y = nY, font=67}):Pos_()
				nX, _ =ui3:Append("Text", { txt = ttest[i][5], x = 260, y = nY,}):Pos_()
				if 	ttest[i][3] then  nX, _ =ui3:Append("Text", { txt = GetItemInfo(5,ttest[i][3]).szName, x = 300, y = nY,  font=67}):Pos_()   end 
				nY=nY+30 
			end
		end
		ui3:Append("Text", { txt = "�Աȱ���", x =80, y = nY+15, font = 205 }):Size(60,28) :Click(function() 
		AssistEquip.CompBg(AssistEquip.tload)
		end) 	
		ui3:Append("WndCheckBox", "CheckBox_LockEq",{ txt ="Lock(����", x = 160, y = nY+15, font = 187, checked = AssistEquip.LockEq }):Click(function(bChecked) AssistEquip.LockEq = bChecked
	end)
		ui3:Append("Text", { txt = "�ر�", x =290, y = nY+15, font = 205 }):Size(40,28) :Click(function() 				 
		Station.Lookup("Normal1/ResEqWnd"):Destroy()	
		AssistEquip.LockEq=false
		local fb=Station.Lookup("Normal/BigBagPanel")
		if fb and fb:IsVisible() then AssistEquip.ResetBag() end
		end) 	
	end 
 end
	
function AssistEquip.CompBg(tload)
	if not tload then TF.Alert("δ���뷽�������ȵ�����װ����", nil, "Ok")  return end
	local f=Station.Lookup("Normal/BigBagPanel")
	if not f or not f:IsVisible() then  TF.Alert("�򿪱�����ȡװ����Ա�", nil, "Ok")  return end
	AssistEquip.SetAllDark()	--ԭ����2
	player=GetClientPlayer()
	for i = 1, 5 do	 				
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 	
		for dwX = 0, dwSize-1, 1 do
			local	item = GetPlayerItem(player, dwBox, dwX)			
			if item then		
				box=GetUIItemBox(dwBox, dwX,true)	
				if box:GetAlpha()==30 then			
					for k,ainfo in pairs(tload) do
						if item.nUiId==ainfo[2] then		 
							box:SetAlpha(255) break		
						end
						if (k==0 or k==1) and  item.dwTabType==5 and item.dwIndex==ainfo[3] then  --���� ���ʯ
							box:SetAlpha(255) break
						end
					end
				end
			end
		end
	end
end
	
function	AssistEquip.SetAllDark()	
	player=GetClientPlayer()
	for i = 1, 5 do	 		 
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 	 
		for dwX = 0, dwSize-1, 1 do
			local item = GetPlayerItem(player, dwBox, dwX)
			if item then
				box=GetUIItemBox(dwBox, dwX, true)	 
				if AssistEquip.NoTr and not item.bCanTrade  then  
					box:SetAlpha(AssistEquip.NTAlpha)
				else
					box:SetAlpha(30)
				end
			end
		end
	end
end

function	AssistEquip.ResetBag()
  f = Station.Lookup("Normal/BigBagPanel")
 if not f or not f:IsVisible() then return end
 player=GetClientPlayer()
	for i = 1, 5 do	 				 
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 	
		for dwX = 0, dwSize-1, 1 do
			box=GetUIItemBox(dwBox, dwX,true) 
			box:SetAlpha(255)
		end
    end
end

function	AssistEquip.FindNoTradeItem()
  f = Station.Lookup("Normal/BigBagPanel")
 if not f or not f:IsVisible() then return end
 player=GetClientPlayer()
	for i = 1, 5 do	 				 
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 	
		for dwX = 0, dwSize-1, 1 do
			local item = GetPlayerItem(player, dwBox, dwX)
			if item and not item.bCanTrade then 
				box=GetUIItemBox(dwBox, dwX,true) 
				if box:GetAlpha()==30  then
					box:SetAlpha(AssistEquip.NTAlpha)
				--	box:SetOverText("NoT")
				end
			end
		end
    end
end

function	AssistEquip.BackNoTradeItem()
  f = Station.Lookup("Normal/BigBagPanel")
 if not f or not f:IsVisible() then return end
 player=GetClientPlayer()
	for i = 1, 5 do	 				 
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 	
		for dwX = 0, dwSize-1, 1 do
			local item = GetPlayerItem(player, dwBox, dwX)
			if item and not item.bCanTrade then 
				box=GetUIItemBox(dwBox, dwX,true) 
				if box:GetAlpha()==AssistEquip.NTAlpha then  
					box:SetAlpha(30)
				end
			end
		end
    end
end


 function	AssistEquip._SetLastCheck(frame)
	frame:Show()
	local tCh={}
	if frame:GetName()=="Page_Drug" then 
		tCh=AssistEquip.tCkBoxState
	elseif frame:GetName()=="Page_Fumo"  then
		tCh=AssistEquip.tCkBoxState2
	elseif frame:GetName()=="Page_Equip"  then
		tCh=AssistEquip.tCkBoxState3
	end
	for szName,state in pairs(tCh) do	--bChecked
		if state==true then			 
			chb=frame:Lookup(szName) 	
			if chb then 
				chb:Check(false)	
				chb:Check(true)
			end
		end
	end
	frame:Hide()
end
	
function	AssistEquip.SetLastCheck()
 	frame=Station.Lookup("Normal/AssistEquip")
	if AssistEquip.NoTr then chb=frame:Lookup("CheckBox_NoTrad") chb:Check(false)  chb:Check(true) end	
	f3=frame:Lookup("PageSet_Main/Page_Equip")
	AssistEquip._SetLastCheck(f3)	
	f2=frame:Lookup("PageSet_Main/Page_Fumo")
	AssistEquip._SetLastCheck(f2)	
	f1=frame:Lookup("PageSet_Main/Page_Drug")
	AssistEquip._SetLastCheck(f1)
	if Station.Lookup("Normal/AssistEquip/PageSet_Main/CheckBox_Equip"):IsCheckBoxChecked() then 
		f3:Show()
	elseif	Station.Lookup("Normal/AssistEquip/PageSet_Main/CheckBox_Fumo"):IsCheckBoxChecked() then 
		f2:Show()
	elseif Station.Lookup("Normal/AssistEquip/PageSet_Main/CheckBox_Drug"):IsCheckBoxChecked() then 
		f1:Show()
	end
end


 function needreset()      	--�ѵ�������֣��� --OpenWindow openshop  ����
	local frame=Station.Lookup("Normal/AssistEquip")			 
	frame:Hide() 
	if AssistEquip.Lock or AssistEquip.LockEq then 
		if  IsBagInSort() then  
			if  AssistEquip.Lock then	Station.Lookup("Normal/AssistEquip"):Lookup("CheckBox_Lock"):Check(false)	end
			if  AssistEquip.LockEq  then	Station.Lookup("Normal1/ResEqWnd"):Lookup("CheckBox_LockEq"):Check(false)	end
			TF.Sysmsg("���������У�Lockǿ�ƹر�")
		return end 
		if AssistEquip.LockEq then 	--���ȶԱ�װ��
			AssistEquip.CompBg(AssistEquip.tload)
		else
			--Output("�ش�") 
			AssistEquip._OpenWindow()  
		end
	end
end
RegisterEvent("BAG_ITEM_UPDATE",needreset)


function AssistEquip.OnOpenWindow()
	if  AssistEquip.Lock then	Station.Lookup("Normal/AssistEquip"):Lookup("CheckBox_Lock"):Check(false)		TF.Sysmsg("�Ի���򿪣�Lockǿ�ƹر�")  end
	if  AssistEquip.LockEq  then	Station.Lookup("Normal1/ResEqWnd"):Lookup("CheckBox_LockEq"):Check(false)		TF.Sysmsg("�Ի���򿪣�Lockǿ�ƹر�")  end

end

RegisterEvent("OPEN_WINDOW",AssistEquip.OnOpenWindow)


function  AssistEquip.ReSetEquip()
	player=GetClientPlayer()
	for i = 1, 5 do	 				 
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 	 
		for dwX = 0, dwSize-1, 1 do
			local item = GetPlayerItem(player, dwBox, dwX)
			if item and item.nGenre == ITEM_GENRE.EQUIPMENT then  
				box=GetUIItemBox(dwBox, dwX, true)	 
			--	if  (item.nQuality==4 and AssistEquip.SellPEquip) or  (item.nQuality==3 and AssistEquip.SellBEquip) or (string.find(item.szName,"�����") and item.nSub==1 )  then  
				if AssistEquip.NoTr and not item.bCanTrade  then  
					box:SetAlpha(AssistEquip.NTAlpha)
				else
					box:SetAlpha(30)
				end
			end
			--SellItem(nNpcID, nShopID, dwBox, dwX, nCount)
		end
	end
end
 

function AssistEquip.IsXiaoyao(nGenre,nSub)		
	if (nGenre==1 or nGenre==14) and (nSub==2 or nSub==3) then return true
	else return false
	end
end

function AssistEquip.Is30MoShi(szName)			
	if  string.find(szName,"�������۶�") then return true   --�޶�95
	else return false
	end
end

function AssistEquip.IsXYMS(nGenre,nSub,szName)
	if  AssistEquip.IsXiaoyao(nGenre,nSub) or AssistEquip.Is30MoShi(szName) then return true
	else return false 
	end
end

function AssistEquip.IsMoShi(szName)		 
	if string.find(szName,"ĥʯ") then return true		
	else return false
	end
end
 
function AssistEquip.Is90FuMo(szName)
	local strGr={"����","����","����","��Ⱦ","����","��ӡ",}   
	for i=1,#strGr do
		if string.find(szName,strGr[i]) then return true end
	end
	return false
end

function AssistEquip.Is80FuMo(szName)
	local strGr={"�壨","Ⱦ��","��Ƭ��",}
	for i=1,#strGr do
		if string.find(szName,strGr[i]) then return true end
	end
	return false
end

function AssistEquip.IsFuMo(szName)
	if AssistEquip.Is90FuMo(szName) or AssistEquip.Is80FuMo(szName) or AssistEquip.IsMoShi(szName) then return true 
	else return false 
	end	
end	

 
 function AssistEquip.ReSetConflictData(szConflictArea)				
	for szName,state in pairs(AssistEquip.tCkBoxState) do
		szAbbr=string.gsub(szName,"CheckBox_","")
		if string.find(szAbbr,szConflictArea) then    -- "cs"  
			if state then
				AssistEquip.SetAAA(szAbbr,szConflictArea) 
			end
		end
	end
end


 function AssistEquip.IsMoneyFull()
	local player=GetClientPlayer()
 	nGold=player.GetMoney()["nGold"]
	if nGold>900000 then  
		TF.Alert("��Ǯ�ﵽ100W����ʱ�������ʧ�ܡ�\n�����ʼĻ���������", function() end, "Yes")  
	else
		TF.Alert("�Զ�����������\n��1������ʱ��Ҫ�رմ�����ҳ�棡\n��2����Ʒ������֡�����ĵȴ�����\n��3������ǰ��ȷ������\n��4���޷����� ���˲�Ҫ����Ʒ��", function() end, "Yes")  
	end
 end
  
 function AssistEquip.GettMubiao(szAbbr,szType)
 	local	tMubiao={}
	local tPart={}
--fm
	if szType=="fm" then	 
	--part
		for szPart,state in pairs(AssistEquip.tCkBoxState2)  do	 
			if  string.find(szPart,"CheckBox_fmPart") and state==true then 
			szPartAbbr=string.gsub(szPart,"CheckBox_fmPart","")
			for i=1,#AssistEquip.tPartZh[szPartAbbr] do
				table.insert(tPart,AssistEquip.tPartZh[szPartAbbr][i])
			end
			end
		end 
	--	Attr
		for szFMsx,state in pairs(AssistEquip.tCkBoxState2)  do	
			if string.find(szFMsx,"CheckBox_fm") and not string.find(szFMsx,"CheckBox_fmPart")  then
				if state==true then 
					szAbbr2= string.gsub(szFMsx,"CheckBox_","")  
					for j=1 , #AssistEquip.tChBoxZh[szAbbr2] do 	
						table.insert(tMubiao,AssistEquip.tChBoxZh[szAbbr2][j])		
					end
				end
			end
		end 
--cs
	elseif szType=="cs" then	 
		if AssistEquip.tCkBoxState["CheckBox_csPVE"] then
			for szCSSchool,state in pairs(AssistEquip.tCkBoxState)  do	
				if string.find(szCSSchool,"CheckBox_cs") and not string.find(szCSSchool,"CheckBox_csPV")  and state then
					szAbbr2= string.gsub(szCSSchool,"CheckBox_","")  
					for i =1 , #AssistEquip.tCSPVE[szAbbr2] do 	
						table.insert(tMubiao,AssistEquip.tCSPVE[szAbbr2][i])		
					end
				end
			end
		end
		if AssistEquip.tCkBoxState["CheckBox_csPVP"] then
			for szCSSchool,state in pairs(AssistEquip.tCkBoxState)  do	
				if string.find(szCSSchool,"CheckBox_cs") and not string.find(szCSSchool,"CheckBox_csPV")  and state then
					szAbbr2= string.gsub(szCSSchool,"CheckBox_","")  
					for i =1 , #AssistEquip.tCSPVP[szAbbr2] do 	
						table.insert(tMubiao,AssistEquip.tCSPVP[szAbbr2][i])		
					end
				end
			end
		end
--other
	else	 
		tMubiao=AssistEquip.tChBoxZh[szAbbr]	 
	end
	return tMubiao,tPart
 end
 
 function	AssistEquip.SetAAA(szAbbr,szType)	
--����Ŀ��
	tMubiao,tPart=AssistEquip.GettMubiao(szAbbr,szType)
--����
	player=GetClientPlayer()
	for i = 1, 5 do	 				
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 	
		for dwX = 0, dwSize-1, 1 do
			local	item = GetPlayerItem(player, dwBox, dwX)			
			if item then		
				box=GetUIItemBox(dwBox, dwX,true)	
				if box:GetAlpha()==30 or box:GetAlpha()==AssistEquip.NTAlpha then			
					szDes=AssistEquip.tDescData[item.szName] or Table_GetItemDesc(item.nUiId)			
				 
					if tMubiao then
						for i=1,#tMubiao do  
							if		szType=="cs" and item.nUiId==tMubiao[i] 	 
								or szType=="xyms" and AssistEquip.IsXYMS(item.nGenre,item.nSub,item.szName) and ( string.find(item.szName,tMubiao[i]) or string.find(szDes,tMubiao[i]) )
								or	szType=="WXS" and item.nGenre==10  and string.find(item.szName,tMubiao[i]) 			
								or	szType=="UsFb" and item.nGenre~=0 and ( string.find(item.szName,tMubiao[i]) or string.find(szDes,tMubiao[i]))	then 							 
									box:SetAlpha(255) break   
							elseif szType=="fm" and AssistEquip.IsFuMo(item.szName) and ( string.find(item.szName,tMubiao[i]) or string.find(szDes,tMubiao[i])  )  then 
								for j=1,#tPart do   
									if string.find(item.szName,tPart[j]) or string.find(szDes,tPart[j]) then 
										box:SetAlpha(255) break		 
									end
								end
								if box:GetAlpha()==255 then break end	 
							end
						end	
					end
				end
			end
		end
	end
 end
  
--�����ã���ȡ��װ������nIDֵ
function AssistEquip.EquipBag()
	player=GetClientPlayer()
	for i = 1, 5 do	 				
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 	
		for dwX = 0, dwSize-1, 1 do
			local	item = GetPlayerItem(player, dwBox, dwX)		
			if item then
				local sn=item.szName
				local gn=item.nGenre
				local nuiid=item.nUiId
				local nSub=item.nSub	
				local nLv=item.nLevel
				local tm=item.GetMagicAttrib()		
				local sz=""
				for i=1,#tm do
					sz=sz.."[\"\"]="..tostring(tm[i]["nID"])..",  "
				end
				--TF.Sysmsg(sn.."  part��"..nSub.."  Lv��"..nLv.."  Attr��"..sz)
				TF.Sysmsg(sn..sz)
			end
		end
	end
end

function AssistEquip.UnSetEQPart(szAbbr) 	
	player=GetClientPlayer()
	szAbbr=string.gsub(szAbbr,"EqPart","")	--string.match("EqPart203","EqPart(%d+)")
	nPart=tonumber(szAbbr)
	for i = 1, 5 do	 				
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 	
		for dwX = 0, dwSize-1, 1 do
			local	item = GetPlayerItem(player, dwBox, dwX)		 
			if item then
				box=GetUIItemBox(dwBox, dwX,true)	
				if box:GetAlpha()==255 and item.nGenre == ITEM_GENRE.EQUIPMENT and item.nSub ==nPart then  
					if AssistEquip.NoTr and not item.bCanTrade  then  
						box:SetAlpha(AssistEquip.NTAlpha)
					else
						box:SetAlpha(30)
					end
				end
			end
		end
	end
end

function AssistEquip.SetEQ(nPart) 
	local tEqPartS={}	

	if nPart then tEqPartS={nPart}
	else
		AssistEquip.ReSetEquip()
		for szName,szState in pairs(AssistEquip.tCkBoxState3) do
			if szState then 
				szAbbr=string.gsub(szName,"CheckBox_Eq","")
				if string.find(szAbbr,'Part') then szAbbr=string.gsub(szAbbr,"Part","") table.insert(tEqPartS,tonumber(szAbbr)) end
			end
		end
	end
	
	local tEqXF,tEqAttr1,tEqAttr2={},{},{}
	for szName,szState in pairs(AssistEquip.EqXF) do
		if szState then 
			for i=1,#AssistEquip.tEqOXF[szName] do
				table.insert(tEqXF,AssistEquip.tEqOXF[szName][i])
			end
		end
	end		
	if #tEqXF==0 then return end
	
	for szName,szState in pairs(AssistEquip.EqAttr1) do
		if szState then 
			for i=1,#AssistEquip.tEqOAt1[szName] do
				table.insert(tEqAttr1,AssistEquip.tEqOAt1[szName][i])
			end
		end
	end			
	for szName,szState in pairs(AssistEquip.EqAttr2) do
		if szState then 
			for i=1,#AssistEquip.tEqOAt2[szName] do
				table.insert(tEqAttr2,AssistEquip.tEqOAt2[szName][i])
			end
		end
	end		
--	Output( tEqXF,tEqAttr1,tEqAttr2)
--	Output(#tEqXF,#tEqAttr1,#tEqAttr2)
   	player=GetClientPlayer()
	nLv1,nLv2=AssistEquip.EqLv1,AssistEquip.EqLv2
	for i = 1, 5 do	 				
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 	
		for dwX = 0, dwSize-1, 1 do
			local	item = GetPlayerItem(player, dwBox, dwX)			 
			if item then
				box=GetUIItemBox(dwBox, dwX,true)	
				if box:GetAlpha()==30 or box:GetAlpha()==AssistEquip.NTAlpha then		
				--	local sn=item.szName
					local nSub, nLv, tm=item.nSub, item.nLevel, item.GetMagicAttrib()	
					local Pfind, XFfind, A1find, A2find, Exfind=0,0,0,0,0
					if (nLv>nLv1 or nLv==nLv1) and  (nLv<nLv2 or nLv==nLv2) then   -- if lv    
						for l =1,#tEqPartS do 					--if part    	--0 ���� 1���� 2�� 3ñ 4�� 5�� 6�� 7׹ 8�� 9Ь 10��	
							if nSub==tEqPartS[l] then Pfind=1 break end
						end			
						if Pfind ==1 then		  
							for k=1,#tm do
								for j=1 , #tEqXF do
									if tm[k]["nID"]==tEqXF[j] then XFfind=1 break end
								end
								if XFfind==1 then break end
							end
							if XFfind==1 then
								if #tEqAttr2==0 then A2find=1 		--attr2����
								else 
									for k=1,#tm do	
										for j=1 , #tEqAttr2 do
											if tm[k]["nID"]==tEqAttr2[j] then A2find=1 break end
										end		
										if A2find==1 then break end
									end
								end
								if A2find==1 then
									if (AssistEquip.EqEx["TXW"] and tm[#tm]["nID"]==319) 
										or (AssistEquip.EqEx["TXYZ"] and nSub==7 and AssistEquip.IsTXYZ(item.nUiId)) 
										or (AssistEquip.EqEx["Set"] and item.dwSetID~=0) 
										or (AssistEquip.EqEx["JCJ"] and AssistEquip.IsJCJ(tm)) 
										or (AssistEquip.EqEx["TZJ"] and tm[1]["nID"]~=23) 
										or (not AssistEquip.EqEx["TXW"] and not AssistEquip.EqEx["JCJ"] and not AssistEquip.EqEx["TZJ"] and not AssistEquip.EqEx["TXYZ"]  and not AssistEquip.EqEx["Set"]) then 
										Exfind=1 
									end		
									if Exfind==1 then
										if AssistEquip.EqAttr1["OH"] then  
											for k=1,#tm do
												if tm[k]["nID"]==261 and tm[k+1]==nil then A1find=1   break end 	--needOH  &  IsOH => A1find
											end
										elseif #tEqAttr1==0 then A1find=1 		--attr1����
										end
										if A1find==0 then
											for k=1,#tm do	
												for j=1 , #tEqAttr1 do
													if tm[k]["nID"]==tEqAttr1[j] then A1find=1 break end
												end		
												if A1find==1 then break end
											end
										end   
										if A1find==1 then 
											box:SetAlpha(255) 
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
 
function AssistEquip.IsJCJ(tm)
	if tm[1]["nID"]==23 and tm[2]["nID"]~=147 and tm[2]["nID"]~=162 and tm[2]["nID"]~=19 and  tm[2]["nID"]~=21 and  tm[2]["nID"]~=25 and  tm[2]["nID"]~= 27 then return true else return false end
end
function AssistEquip.IsTXYZ(nUiId)
	local szDesc=Table_GetItemDesc(nUiId) --"ʹ��:����������������Ƴ�Ч������15�� --{   ʹ�ã���������������ڹ��Ʒ��ȼ�������15�롣\\" font=105 
	if string.find(szDesc,"ʹ��") then return true else return false end
end

 function AssistEquip.GetUntMubiao(szAbbr,szType)
 	local tMubiao={}		 		
	local szPart="FM��λ"
	local szPart2="FM����"
--fm
 	if szType=="fm" then
		--part
		if string.find(szAbbr,"fmPart") then
			szPart=AssistEquip.tPartZh[string.gsub(szAbbr,"fmPart","")][1]
			szPart2=AssistEquip.tPartZh[string.gsub(szAbbr,"fmPart","")][2]	--   [2]��ʾ "����" ������
		else	
		--Attr
			for j=1 , #AssistEquip.tChBoxZh[szAbbr] do 	
				table.insert(tMubiao,AssistEquip.tChBoxZh[szAbbr][j])		
			end
		end   
--cs
 	elseif szType=="cs" then
	--unceck PVX
		if  szAbbr=="csPVE" or szAbbr=="csPVP" then
			for szCSSchool,state in pairs(AssistEquip.tCkBoxState)  do	
				if string.find(szCSSchool,"CheckBox_cs") and not string.find(szCSSchool,"CheckBox_csPV")  then
					if state==true then 
						szAbbr2= string.gsub(szCSSchool,"CheckBox_","")  
						if szAbbr=="csPVE" then  
							for i =1 , #AssistEquip.tCSPVE[szAbbr2] do 	
								table.insert(tMubiao,AssistEquip.tCSPVE[szAbbr2][i])		
							end
						elseif szAbbr=="csPVP" then
							for i =1 , #AssistEquip.tCSPVP[szAbbr2] do
								table.insert(tMubiao,AssistEquip.tCSPVP[szAbbr2][i])
							end
						end   
					end
				end
			end
		else	
	--	uncheck ְҵ
			if AssistEquip.tCkBoxState["CheckBox_csPVE"] then
				for i =1 , #AssistEquip.tCSPVE[szAbbr] do 	
					table.insert(tMubiao,AssistEquip.tCSPVE[szAbbr][i])		
				end
			end	
			if  AssistEquip.tCkBoxState["CheckBox_csPVP"] then 
				for i =1 , #AssistEquip.tCSPVP[szAbbr] do 	
					table.insert(tMubiao,AssistEquip.tCSPVP[szAbbr][i])		
				end
			end
		end
--other		
	else
		tMubiao=AssistEquip.tChBoxZh[szAbbr]	
	end
	return tMubiao,szPart,szPart2
 end
 

 function	AssistEquip.SetUnAAA(szAbbr,szType)	
--����Ŀ��
	tMubiao,szPart,szPart2=AssistEquip.GetUntMubiao(szAbbr,szType)
	player=GetClientPlayer()
	for i = 1, 5 do	 			
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 
		for dwX = 0, dwSize-1, 1 do
			local	item = GetPlayerItem(player, dwBox, dwX)			
			if item then		
				box=GetUIItemBox(dwBox, dwX,true)	
				if box:GetAlpha()==255 then			
					szDes=AssistEquip.tDescData[item.szName] or Table_GetItemDesc(item.nUiId)				 
					if 	szPart~="FM��λ" then 
						if AssistEquip.IsFuMo(item.szName) and (string.find(item.szName,szPart2) or string.find(szDes,szPart)) then
							if AssistEquip.NoTr and not item.bCanTrade then  
								box:SetAlpha(AssistEquip.NTAlpha)
							else
								box:SetAlpha(30)
							end
						end 
					else
						if tMubiao then 
						for i=1,#tMubiao do  -- Output(tMubiao[i])  --���break
							if szType=="fm" and AssistEquip.IsFuMo(item.szName) and (  string.find(item.szName,tMubiao[i]) or string.find(szDes,tMubiao[i])  )							
							or	szType=="cs" and item.nUiId==tMubiao[i] 		--���ʯ
							or szType=="xyms" and AssistEquip.IsXYMS(item.nGenre,item.nSub,item.szName) and (  string.find(item.szName,tMubiao[i]) or string.find(szDes,tMubiao[i])  )
							or	szType=="WXS" and item.nGenre==10  and string.find(item.szName,tMubiao[i]) 				
							or	szType=="UsFb" and item.nGenre~=0 and (  string.find(item.szName,tMubiao[i]) or string.find(szDes,tMubiao[i])  )
							then 						
								if AssistEquip.NoTr and not item.bCanTrade then  
									box:SetAlpha(AssistEquip.NTAlpha)
								else
									box:SetAlpha(30)
								end
								break		-- �Ѿ�ȷ���ҵ������ü���ƥ������������
							end
						end	
						end
					end
				end
			end
		end
	end
 end
  
 
function AssistEquip.OnCheckBoxCheck()
--	Output(this:GetParent():GetName())
	local szName = this:GetName()
	if szName == "CheckBox_Lock"  then	 AssistEquip.Lock=true return	end 
	if szName == "CheckBox_IsOn"  then	AssistEquip.IsOn = true	AssistEquip.IsMoneyFull()  	
		chb=Station.Lookup("Normal/AssistEquip"):Lookup("CheckBox_Lock") chb:Check(false) chb:Enable(false) chb:Lookup("","Text_Default"):SetFontScheme(161)
		if AssistEquip.Lock then TF.Sysmsg("����������Lockǿ�ƹر�")	end	return	
	end
	if szName == "CheckBox_NoTrad"  then	AssistEquip.NoTr = true	AssistEquip.FindNoTradeItem()	return	end      
--state
	if szName =="CheckBox_Drug" or  szName =="CheckBox_Fumo" or  szName =="CheckBox_Equip"   then 
		return  --��Ҫע��true
	else
		if this:GetParent():GetName()=="Page_Equip" then 
			AssistEquip.tCkBoxState3[szName]=true
		elseif this:GetParent():GetName()=="Page_Fumo" then 
			AssistEquip.tCkBoxState2[szName]=true
		else 
			AssistEquip.tCkBoxState[szName]=true		--��������װ IsOn��3�� ��"AssistEquip"ǰ���Ѿ�return��
		end	
		local f = Station.Lookup("Normal/BigBagPanel")
		if not f or not f:IsVisible() then TF.Alert("�ȴ򿪱�����ʹ��", nil, "Ok") AssistEquip._OpenWindow() return end
	end

	
--���࣬��������ɵ�Ԫ�أ�������
	local szAbbr=string.gsub(szName,"CheckBox_","")
	if 		 string.find(szName,"CheckBox_cs") then AssistEquip.SetAAA(szAbbr,"cs")  
	elseif string.find(szName,"CheckBox_fm") then AssistEquip.SetAAA(szAbbr,"fm")
	elseif string.find(szName,"CheckBox_xyms") then AssistEquip.SetAAA(szAbbr,"xyms")	
 	elseif string.find(szName,"CheckBox_WXS") then AssistEquip.SetAAA(szAbbr,"WXS")
	elseif string.find(szName,"CheckBox_Eq") then  	szAbbr=string.gsub(szAbbr,"EqPart","")	nPart=tonumber(szAbbr) AssistEquip.SetEQ(nPart) --,"Eq"
	else  AssistEquip.SetAAA(szAbbr,"UsFb")  	
	end
end

 
function AssistEquip.OnCheckBoxUncheck()	
--("uncheck")
	local szName = this:GetName()
	if szName == "CheckBox_Lock"  then	 AssistEquip.Lock=false return	end  
	if szName == "CheckBox_IsOn"  then	AssistEquip.IsOn = false	
		chb=Station.Lookup("Normal/AssistEquip"):Lookup("CheckBox_Lock")  chb:Enable(true) chb:Lookup("","Text_Default"):SetFontScheme(203) return	
	end
	if szName == "CheckBox_NoTrad"  then	AssistEquip.NoTr = false	AssistEquip.BackNoTradeItem()	return	end      
--state
	if szName =="CheckBox_Drug" or  szName =="CheckBox_Fumo"  or  szName =="CheckBox_Equip"    then 
		return 
	else
		if this:GetParent():GetName()=="Page_Equip" then 
			AssistEquip.tCkBoxState3[szName]=false
		elseif this:GetParent():GetName()=="Page_Fumo" then 
			AssistEquip.tCkBoxState2[szName]=false
		else 
			AssistEquip.tCkBoxState[szName]=false		--���� IsOn   ��ǰ���Ѿ�return��
		end	
		local f = Station.Lookup("Normal/BigBagPanel")
		if not f or not f:IsVisible() then TF.Alert("�ȴ򿪱�����ʹ��", nil, "Ok") AssistEquip._OpenWindow() return end
	end 
	
--���࣬��������ɵ�Ԫ��
	local szAbbr=string.gsub(szName,"CheckBox_","")
	if 		 string.find(szName,"CheckBox_cs") then  AssistEquip.SetUnAAA(szAbbr,"cs")   AssistEquip.ReSetConflictData("cs")  
	elseif string.find(szName,"CheckBox_fm") then AssistEquip.SetUnAAA(szAbbr,"fm")
	elseif string.find(szName,"CheckBox_xyms") then  AssistEquip.SetUnAAA(szAbbr,"xyms")  --AssistEquip.ReSetConflictData("xyms")	 -- �����ڹ�������ͨ��
 	elseif string.find(szName,"CheckBox_WXS") then AssistEquip.SetUnAAA(szAbbr,"WXS")
	elseif string.find(szName,"CheckBox_Eq") then  
		if szName=="CheckBox_EqPart0" then AssistEquip.EqEx["TXW"]=false 	szTxt=AssistEquip.GetComboN("Ex")  
			TF.UI(Station.Lookup("Normal/AssistEquip/PageSet_Main/Page_Equip/")):Fetch("Combo_Ex"):Text(szTxt) 
		elseif  szName=="CheckBox_EqPart7" then AssistEquip.EqEx["TXYZ"]=false 	szTxt=AssistEquip.GetComboN("Ex") 
			TF.UI(Station.Lookup("Normal/AssistEquip/PageSet_Main/Page_Equip/")):Fetch("Combo_Ex"):Text(szTxt) 
		end
		AssistEquip.UnSetEQPart(szAbbr) 	--���ٹ�����������ifҲ��ʵ�֡�
	else  AssistEquip.SetUnAAA(szAbbr,"UsFb")  	--����
	end
end

AssistEquip.flagApp0=false
AssistEquip.flagApp1=false
AssistEquip.flagApp2=false
 
  
DEBreathe={}
function DEBreathe.OnFrameBreathe()

	if AssistEquip.Lock or AssistEquip.LockEq then 
		local fr= Station.Lookup("Normal/Dismantle")	--  ��ֽ���
		if (fr and fr:IsVisible()) or Station.GetMouseOverWindow():GetTreePath()== "Normal/BigBagPanel/Btn_Stack2/" then
			if  AssistEquip.Lock then	Station.Lookup("Normal/AssistEquip"):Lookup("CheckBox_Lock"):Check(false)	end
			if  AssistEquip.LockEq  then	Station.Lookup("Normal1/ResEqWnd"):Lookup("CheckBox_LockEq"):Check(false)	end
			TF.Sysmsg("���/�ѵ���Ʒ��Lockǿ�ƹر�") 
		end
	end
	local f = Station.Lookup("Normal/BigBagPanel")
	if f and f:IsVisible() then
		if GetLogicFrameCount() % 4 == 0  and not AssistEquip.flagApp0 then
			AssistEquip.AddEnterButton(f) 	
		end
		fd=Station.Lookup("Normal/AssistEquip")
		fMO=Station.GetMouseOverWindow()
		if  fd  and fd:IsVisible()  and fMO and fMO:GetTreePath()=="Normal/BigBagPanel/" then 
			if IsKeyDown(AssistEquip.szPlusKey) then 
				AssistEquip.AdjustList(AssistEquip.szPlusKey)
			elseif IsKeyDown(AssistEquip.szMinusKey) then 
				AssistEquip.AdjustList(AssistEquip.szMinusKey)
			end
		end
	end
	if not AssistEquip.flagApp1 then
		local f2 = Station.Lookup("Normal/CharacterPanel")   
		if f2 and f2:IsVisible() then 
			f2:EnableDrag(1)
			f2:SetDragArea(0,0,80,80)			
			--AssistEquip.AddEnterButton2(f2)
			fff=f2:Lookup("Page_Main/Page_Battle")	  	
			local ui = TF.UI(fff)   
			local myid=UI_GetClientPlayerID()
			ui:Append("Text", { txt ="������", font = 27 , x = 8, y = 10 ,alpha=200}) 	
			nX,_=ui:Append("Text", { txt = "����", x =268, y = 15, font = 205 }):Size(30,28) :Click(function() 
				AssistEquip.EquipInfo(UI_GetClientPlayerID())
			end):Hover(function()  tips="���յ�ǰ��װ��Ϣ\n������ħ" TF.ShowTip(tips) end):Pos_()	
			ui:Append("Text", { txt = "����", x =nX+8, y = 15, font = 205 }):Size(30,28) :Click(function() 
				GetUserInput("��������Ҫ������ļ���(��Ҫ��׺���磺eq\n·����Interface/EqData",function(szText) AssistEquip.LoadEqData(szText) end, nil)
			end):Hover(function()  tips="���ļ�������װ��Ϣ" TF.ShowTip(tips) end):Pos_()	
			AssistEquip.flagApp1 =true
		end
	end
	if not AssistEquip.flagApp2 then
		--�򿪹�������Ż�ͣ- -
		local f3 = Station.Lookup("Normal/PlayerView")  
		if f3  and f3:IsVisible()then 
			f3:EnableDrag(1)
			f3:SetDragArea(0,0,80,80)
			--AssistEquip.AddEnterButton2(f3)			
			fff=f3:Lookup("Page_Main/Page_Battle")	  	
			local ui = TF.UI(fff)   
		--	ui:Append("Text", { txt ="������", font = 27 , x = 8, y = 10 ,alpha=200}) 	
			nX,_=ui:Append("Text", { txt = "����", x =235, y = 35, font=205  }):Size(30,28) :Click(function() 
				local nType,nID=Target_GetTargetData() 
				local szMSG="���������ID��(Ctrl�鿴"		
				if not nID or nType~=4 then --not IsPlayer(nID) then
					GetUserInputNumber(0,100000,nil,function(nID) AssistEquip.EquipInfoByID(nID) end , nil,nil)
				else
					AssistEquip.EquipInfoByID(nID)
				end
			end):Hover(function()  tips="���յ�ǰ��װ��Ϣ��������ħ\nѡ�и���ң���������ID" TF.ShowTip(tips) end):Pos_()
			ui:Append("Text", { txt = "��λ�ȡID", x =nX+15, y = 35,}):Size(80,28) :Click(function() tips=AssistEquip.DETitle.."��λ�ȡ���ID\n�������ֻ��ѡ�У����л�Ŀ�꣬��������ID\n���Ѻ��Ѳ��ڸ�����������ѯ��ID����ѡ������Ŀ��\n�������ͣ����ͷ��TF����ť�ɻ�ȡ����ID\n����סCtrl����Cataclysm��壬�ɻ�ȡ����ID\n"  OutputMessage("MSG_SYS",tips) end):Hover(function()  tips="�������������ʾ" TF.ShowTip(tips) end)			
			AssistEquip.flagApp2 =true
		end	 
	end
end
Wnd.OpenWindow("Interface\\TF\\AssistEquip\\breathe.ini","DEBreathe")

function AssistEquip.AdjustList(szKey)
	player=GetClientPlayer()
	local flagfind=false
	for i = 1, 5 do	 				
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 	
		for dwX = 0, dwSize-1, 1 do
			local	item = GetPlayerItem(player, dwBox, dwX)			
			box=GetUIItemBox(dwBox, dwX,true)	
				if box:IsObjectMouseOver() and not box:IsObjectPressed() then 			 
				if szKey==AssistEquip.szMinusKey then 
					if AssistEquip.NoTr and not item.bCanTrade then 
						box:SetAlpha(AssistEquip.NTAlpha) 
					else 
						box:SetAlpha(30) 
					end
				elseif  szKey==AssistEquip.szPlusKey then box:SetAlpha(255) 
				end 
				flagfind=true
			end
			if flagfind then break end
		end
		if flagfind then break end
	end
end


function AssistEquip.SetPlusKey()
	local nKey, bShift, bCtrl, bAlt = Hotkey.Get("TF_DEPKey")
	--local szKey = GetKeyShow(nKey, bShift, bCtrl, bAlt, bShort == true)
	local szKey = GetKeyName(nKey)
	AssistEquip.szPlusKey=szKey
end

function AssistEquip.SetMinusKey()
	local nKey, bShift, bCtrl, bAlt = Hotkey.Get("TF_DEMKey")
	AssistEquip.szMinusKey=GetKeyName(nKey)
end

   
function AssistEquip.OnOpenShop()	
--	if AssistEquip.Lock then  Station.Lookup("Normal/AssistEquip"):Lookup("CheckBox_Lock"):Check(false) TF.Sysmsg("���̵꣬Lockǿ�ƹر�") end	--����һ����ѡ�Ի����Ѿ�����
	local nNpcID, nShopID = arg4, arg0
	AssistEquip.SellItemBy(nNpcID, nShopID)
end
 
function AssistEquip.SellItemBy(nNpcID, nShopID)
	local player = GetClientPlayer()
	if AssistEquip.IsOn==false then	return	end
 	for i = 1, 5 do	 				
		local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
		local dwSize = player.GetBoxSize(dwBox) 	 
		for dwX = 0, dwSize-1, 1 do
			local	item = GetPlayerItem(player, dwBox, dwX)			
			if item then	
				box=GetUIItemBox(dwBox, dwX,true)	
				if box:GetAlpha()==30 then  
				local nCount = 1
					if item.bCanStack then 	nCount = item.nStackNum  	end
					SellItem(nNpcID, nShopID, dwBox, dwX, nCount)
				end
			end
		end
	end  
end

 
RegisterEvent("SHOP_OPENSHOP", AssistEquip.OnOpenShop)
  
 
function AssistEquip.SetOff()			--Ϊ�˷�ֹ�˼䱯��
	Station.Lookup("Normal/AssistEquip"):Lookup("CheckBox_IsOn"):Check(false)
end
 
function AssistEquip._OpenWindow()
	local frame = Station.Lookup("Normal/AssistEquip") 
	if  frame:IsVisible() then 
		frame:Hide() AssistEquip.bFrameOpened = false
		AssistEquip.ResetBag()
		AssistEquip.SetOff() 
	else	
		frame:Show() AssistEquip.bFrameOpened = true
		f = Station.Lookup("Normal/BigBagPanel")
		if not f or not f:IsVisible() then return end	
		AssistEquip.SetAllDark()		
		AssistEquip.SetLastCheck()
	end
end

Wnd.OpenWindow("Interface\\TF\\AssistEquip\\AssistEquip.ini","AssistEquip"):Hide()
AssistEquip.bFrameOpened=false

 AssistEquip.OnFrameKeyDown = function()
	if GetKeyName(Station.GetMessageKey()) == "Esc" then
		AssistEquip._OpenWindow()
		return 1
	end
	return 0
end
 
function AssistEquip.AddEnterButton(f) 
	local szFile="Interface\\TF\\AssistEquip\\btn.ini"
	local tips=GetFormatText("ˢҩ��װ����\n", 101) .. GetFormatText("���������", 106)
	TF.AddEnterButton(f,"Btn_OpenDE",szFile,"WndButton",100,0,tips,AssistEquip._OpenWindow)	
	AssistEquip.flagApp0=true
end
 

TF.AppendPlayerMenu(function()
	return {
		szOption ="ˢҩ��װ����", bCheck = true,
		bChecked = AssistEquip.bFrameOpened ,     
		fnAction = AssistEquip._OpenWindow,
		}
end)


   
TF.AddHotKey("AssistEquipOM", "ˢҩ��װ�������",  AssistEquip._OpenWindow)
TF.AddHotKey("DEPKey", "������ǿ�Ƹ���",  AssistEquip.SetPlusKey)
TF.AddHotKey("DEMKey", "���ۣ�ǿ�Ƶ���", AssistEquip.SetMinusKey)

-------------------------------------
-- ���ý���
-------------------------------------
_AssistEquip={}
_AssistEquip.PS = {}

-- init
_AssistEquip.PS.OnPanelActive = function(frame)
	local ui = TF.UI(frame)
	-- feature
	nX,_=ui:Append("WndButton", "Button_OpDEPanel", { txt = "�����", x = 0, y = 5 , }):Size(80, 28):Click(function() AssistEquip._OpenWindow() end):Pos_()
	nX,_=ui:Append("WndButton", "Button_SetAEHotK", { txt = "���ÿ�ݼ�", x = nX+10, y = 5 , font = 185, }):Size(120, 28):Click(function() HotkeyPanel_Open("�����ר�ò������") end):Pos_()	
	_,nY=ui:Append("Text", { txt =  "ʹ��ǰ�ȴ򿪱�����" , x = nX+10, y = 5, font = 27 }):Pos_()		
	_,nY=ui:Append("Text", { txt =  "������˵�����Ҹ�ħ��ˢҩ����װ" , x = 0, y = nY+20, }):Pos_()
	_,nY=ui:Append("Text", { txt =  "��1���������ˣ���ɸѡ�����з���������Ʒ��������ʾ��" , x = 0, y = nY+12, }):Pos_()
	_,nY=ui:Append("Text", { txt =  "��2�����������󣬴��̵���Զ��۳�������Ʒ��" , x = 0, y = nY+12, }):Pos_()
	ui:Append("Text", { txt =  "��3����ɫװ���ɵ�������/�������ļ��������Աȱ�����" , x = 0, y = nY+12, })	
--	ui:Append("Text", { txt =  "By ΢��ƾ��" , x = 340, y =340, font = 205 })

end

 
---------------------------------------------------------------------
-- ע���¼�����ʼ��
---------------------------------------------------------------------
-- add to TF panel
TF.RegisterPanel("ˢҩ��װ����", 7530, "��������", _AssistEquip.PS)
