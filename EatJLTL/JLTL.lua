JLTL={
JL_On=false,
TL_On=false,
JLCount=0,		
TLCount=0,		
JLIdx=19458,
TLIdx=19459,
JLTitle="[TF�Զ��Ծ���]-",
TLTitle="[TF�Զ�������]-",
MsgHorseFlag=0,
MoveFlag=0,
fTimeStamp=0,
}

function JLTL.JLSwitch()
local p=GetClientPlayer()
	JLTL.JL_On= not JLTL.JL_On
	if JLTL.JL_On then
		JLTL.MsgHorseFlag=0	JLTL.MoveFlag=0	
		JLTL.JLCount=(p.nMaxStamina-p.nCurrentStamina)/30
		JLTL.JLCount=math.ceil(JLTL.JLCount)    
		JLTime=JLTL.JLCount*15
		if JLTime>0 then JLTime=JLTime-10 end	
		JLMin=math.floor(JLTime/60)
		JLSec=JLTime%60
		OutputMessage("MSG_SYS",JLTL.JLTitle.."����\n")
		OutputMessage("MSG_SYS",JLTL.JLTitle.."��������"..JLTL.JLCount.."�š��ѡ���Ԫ�͡�,Ԥ����ʱ"..JLMin.."��"..JLSec.."�루��ʱ�������\n")
		OutputMessage("MSG_SYS",JLTL.JLTitle.."��ȷ�ϲ������״̬��ս��״̬\n")
	else
		OutputMessage("MSG_SYS",JLTL.JLTitle.."�ر�\n")
		p.StopCurrentAction()		
	end
end

function JLTL.TLSwitch()
local p=GetClientPlayer()
	JLTL.TL_On= not JLTL.TL_On
	if JLTL.TL_On then
		JLTL.MsgHorseFlag=0	JLTL.MoveFlag=0	
		JLTL.TLCount=math.ceil((p.nMaxThew-p.nCurrentThew)/32)			
		TLTime=JLTL.TLCount*15
		if TLTime>0 then TLTime=TLTime-10 end	
		TLMin=math.floor(TLTime/60)
		TLSec=TLTime%60
		OutputMessage("MSG_SYS",JLTL.TLTitle.."����\n")
		OutputMessage("MSG_SYS",JLTL.TLTitle.."��������"..JLTL.TLCount.."�š��ѡ�ת��͡�,Ԥ����ʱ"..TLMin.."��"..TLSec.."�루��ʱ�������\n")
		OutputMessage("MSG_SYS",JLTL.TLTitle.."��ȷ�ϲ������״̬��ս��״̬\n")
	else
		OutputMessage("MSG_SYS",JLTL.TLTitle.."�ر�\n")
		p.StopCurrentAction()		
	end
end


function JLTL.OnFrameBreathe()

if GetLogicFrameCount() < JLTL.fTimeStamp then return end
	if GetLogicFrameCount()%8==0 then

		local player = GetClientPlayer()		
		if JLTL.JL_On then 
			dwIndex=JLTL.JLIdx 
			if player.nMaxStamina == player.nCurrentStamina then  TF.Alert("�������� �Զ���ҩ�ر�", function() end, "Yes")  
			JLTL.JL_On=false return end
		elseif  JLTL.TL_On then 
			dwIndex=JLTL.TLIdx
			if  player.nMaxThew == player.nCurrentThew then  TF.Alert("�������� �Զ���ҩ�ر�", function() end, "Yes")    
			JLTL.TL_On=false return end			
		else return end	
		if player.bOnHorse then			
			if JLTL.MsgHorseFlag==0 then TF.Alert("���������״̬��ҩ��������Զ�����", function() end, "Yes") JLTL.MsgHorseFlag=1 end 
			return	
		else JLTL.MsgHorseFlag=0	--Output("notOnHorse")
		end
		if player.bFightState then end	 
		if player.nMoveState~=MOVE_STATE.ON_STAND and player.nMoveState~=MOVE_STATE.ON_SIT then   
			if JLTL.MoveFlag==0 then TF.Alert("���Զ�������������վ�û����£����Զ�����", function() end, "Yes") JLTL.MoveFlag=1 end 
			return	
		else JLTL.MoveFlag=0	 
		end		
		if player.GetOTActionState()~=0 then --[==[JLTL.Error("OTPrepareing")]==] return end		
		JLTL.Eat(dwIndex)

	end
end

function JLTL.Eat(dwIndex)
	--Output("����Ƶ��")			
	local dwBox, dwX=GetItemPosByItemTypeIndex(5,dwIndex)		
	if not dwBox then 	
		if dwIndex==JLTL.JLIdx then OutputMessage("MSG_ANNOUNCE_RED","û�о���ҩ�ˣ���ȷ�ϱ������С��ѡ���Ԫ�͡�")
		TF.Alert("�Զ���ҩ�ѹر�\nû�о���ҩ�ˣ���ȷ�ϱ������С��ѡ���Ԫ�͡�", function() end, "Yes")
		JLTL.JL_On=false
		else OutputMessage("MSG_ANNOUNCE_RED","û������ҩ�ˣ���ȷ�ϱ������С��ѡ�ת��͡�") 			
		TF.Alert("�Զ���ҩ�ѹر�\nû������ҩ�ˣ���ȷ�ϱ������С��ѡ�ת��͡�", function() end, "Yes")
		JLTL.TL_On=false
		end
	else
		player=GetClientPlayer()
		item = player.GetItem(dwBox, dwX)
		local _,NeedCD,_,_=player.GetItemCDProgress(item.dwID)
		if NeedCD==0 then		
			OnUseItem(dwBox,dwX)					
		elseif  NeedCD>90 then     
		JLTL.fTimeStamp=GetLogicFrameCount()+NeedCD

		end
	end
end

 
Wnd.OpenWindow("Interface\\TF\\EatJLTL\\JLTL.ini","JLTL")

TF.AddHotKey("JLSwitch", "�Զ��Ծ�������",  JLTL.JLSwitch)
TF.AddHotKey("TLSwitch", "�Զ�����������",  JLTL.TLSwitch)
 
-------------------------------------
-- ���ý���
-------------------------------------
_JLTL={}
_JLTL.PS = {}

-- init
_JLTL.PS.OnPanelActive = function(frame)
	local ui = TF.UI(frame)
	nX,nY=ui:Append("Text",  { txt = "������˵�����Զ��Ծ�������ҩ", x = 0, y = 5 , }):Pos_()
	nX,nY=ui:Append("Text",  { txt = "��ʹ��ע�⡿��Ҫ�����״̬������ˢ��ҩ�һ�", x = 0, y = nY+15 , }):Pos_()	
	nX,nY=ui:Append("Text",  { txt = "��Ԫ�� / ת��ͣ�������ѹ����ҩ����ʱ������", x = 0, y = nY+15 , }):Pos_()	
	ui:Append("WndCheckBox", "CheckBox_JLOn",{ txt ="�Զ��Ծ�������", x = 5, y = nY+20, checked =  JLTL.JL_On}):Click(function(bChecked)  JLTL.JL_On = bChecked  end)
	_,nY=ui:Append("WndCheckBox", "CheckBox_TLOn",{ txt ="�Զ�����������", x = 210, y = nY+20, checked =  JLTL.TL_On }):Click(function(bChecked)  JLTL.TL_On= bChecked  end):Pos_()
	_,nY=ui:Append("WndButton", "Button_SetJLHotK", { txt = "���ÿ�ݼ�", x = 25, y = nY+15 , font = 185, }):Size(120, 28):Click(function() HotkeyPanel_Open("�����ר�ò������") end):Pos_()
--	ui:Append("Text", { txt =  "By ΢��ƾ��" , x = 340, y =340, font = 205 })
end
 
	
---------------------------------------------------------------------
-- ע���¼�����ʼ��
---------------------------------------------------------------------
-- add to TF panel
TF.RegisterPanel("�Զ���������", 3721, "�Զ�����", _JLTL.PS)