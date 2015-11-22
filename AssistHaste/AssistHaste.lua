AssistHaste={
	LastGrade=5,
	bFrameOpened=false,
	tPre={
		["1.5G"]={0,1.5,1},
		["MJYP"]={52,1,1},
		["QCTJ"]={60,1.5,1},
		["BXXZ"]={50,2.4375,3},
		["BXYS"]={50,3,3},
		["NXHX"]={0,3,3},
		["NXLL"]={0,2.5,5},
		["HJYM"]={50,1.5,1},
		["HJKX"]={50,5,5},
		["QGKX"]={50,3.125,5},		
		["NHJZ"]={0,1.25,1},
		["NHCZ"]={0,3,1},
		["QLCZ"]={0,2.75,1},
		["NHTZ"]={0,2,1},
		["JZTZ"]={0,1.75,1},
		["NDZW"]={0,5,5},
		["NJZW"]={0,4.8125,7},
		["TLJD"]={0,1.5,1},	
		["TMBY"]={0,2.5,5},
		["JYDP"]={0,1.5,1},
		["CJYF"]={51,1.5,1},	
		["CJXZ"]={51,1.25,1},		
		["CGZ"]={51,3,3},
		["ZCZ"]={51,3,6},
		["CGG"]={51,1.5,1},	 
		["GYG"]={51,3,1},			
	},
}
 
  
function AssistHaste.SetPre(which)
	local ui=TF.UI(Station.Lookup("Normal/AssistHaste"))
	ui:Fetch("Edit_ExA"):Text(AssistHaste.tPre[which][1])
	ui:Fetch("Edit_DutiaoS"):Text(AssistHaste.tPre[which][2])
	ui:Fetch("Edit_Hip"):Text(AssistHaste.tPre[which][3])
	AssistHaste.CalRes(unpack(AssistHaste.tPre[which]))
end

function AssistHaste.SetPreEx(ex)
	local ui=TF.UI(Station.Lookup("Normal/AssistHaste"))
	ui:Fetch("Edit_ExA"):Text(ex)
	AssistHaste.CalRes(ex)
end

AssistHaste.OnFrameKeyDown = function()
	if GetKeyName(Station.GetMessageKey()) == "Esc" then
		AssistHaste._OpenWindow()
		return 1
	end
	return 0
end

function AssistHaste.OnMouseLeave()
	local szName = this:GetName()
	local szType = this:GetType()
	HideTip()
end

function AssistHaste.OnLButtonClick()
	local szName = this:GetName()
	local frame = Station.Lookup("Normal/AssistHaste")
	if szName == "Button_Close" then
		if not frame then	return	end
		frame:Hide() 
		AssistHaste.bFrameOpened = false	
	end
end
  
function AssistHaste.EditChange(szName,szText)
	local  ui = TF.UI(Station.Lookup("Normal/AssistHaste"))
	if szName=="Edit_DutiaoS" then 
		dutiao =szText
		dutiao = tonumber(dutiao)	
		if dutiao and dutiao>10 then dutiao=10 ui:Fetch("Edit_DutiaoS"):Text(10) end
	elseif  szName=="Edit_Hip" then 
		hip = szText
		hip = tonumber(hip)
		if hip==0 then hip=1 ui:Fetch("Edit_Hip"):Text(1)   end	--����0
		if hip and hip>10 then hip=10  ui:Fetch("Edit_Hip"):Text(10)  end	
	elseif szName=="Edit_ExA" then 
		ExA = szText
		ExA = tonumber(ExA)	
		if ExA and ExA>255 then ExA=255  ui:Fetch("Edit_ExA"):Text(255)  end		
	end
	if not dutiao and not hip and not ExA then return end
	AssistHaste.CalRes(ExA,dutiao,hip)
end
 
function AssistHaste.OnFrameCreate()

	local  ui = TF.UI(Station.Lookup("Normal/AssistHaste"))
	nX,nY=ui:Append("Text", { txt = "������ֵ��ѯ", x = 320, y = 20, font = 203 }):Pos_()	
	nX,nY=ui:Append("Text", { txt = "ʱ��/���", x = 35, y = 59,  font = 185}):Pos_()
	nX,_=ui:Append("WndEdit", "Edit_DutiaoS", { x = 120, y = 59,  limit = 7, w = 50, h = 28 }):Change(function(szText) AssistHaste.EditChange("Edit_DutiaoS",szText) end)
	:Text("1.5"):ASize():Pos_()
	nX,nY=ui:Append("Text", { txt = "���� ", x = 210, y = 59, font = 185 }):Pos_()	
	nX,_=ui:Append("WndEdit", "Edit_Hip", { x = 255, y = 59,  limit = 2, w = 50, h = 28 }):Change(function(szText) AssistHaste.EditChange("Edit_Hip",szText) end)
	:Text("1"):ASize():Pos_()	
	nX,nY=ui:Append("Text", { txt = "���������", x = 35, y = 109, font = 185 }):Pos_()	
	nX,_=ui:Append("WndEdit", "Edit_ExA", { x = 120, y = 109,  limit = 3, w = 50, h = 28 }):Change(function(szText) AssistHaste.EditChange("Edit_ExA",szText) end)
	:Text("0"):ASize():Pos_()

	nX,nY=ui:Append("Text", { txt = "��ױ���� 2.4375s 3�����ɾ����� 4.8125s 7����", x = 355, y = 49,}):Pos_()	
	nX,nY=ui:Append("Text", { txt = "����ѩ 3.125s 5��", x = 355, y = 74,}):Pos_()		
	nX,nY=ui:Append("Text", { txt = "�޼���", x = 220, y = 105, }):Click(function()  AssistHaste.SetPreEx(0) end):ASize():Pos_()
	nX,nY=ui:Append("Text", { txt = "1%��5  ���� �θ� ���� ", x = nX+18, y = 105, }):Click(function()  AssistHaste.SetPreEx(50) end):ASize():Pos_()
	nX,nY=ui:Append("Text", { txt = "2%��3  ̫��", x = nX+20, y = 105, }):Click(function()  AssistHaste.SetPreEx(60) end):ASize():Pos_()
	nX,nY=ui:Append("Text", { txt = "2%��5  �", x = nX+20, y = 105, }):Click(function()  AssistHaste.SetPreEx(105) end):ASize():Pos_()	
	nX,nY=ui:Append("Text", { txt = "5% ��� ���� ���� ���", x = 220, y = 130, }):Click(function()  AssistHaste.SetPreEx(51) end):ASize():Pos_()
	nX,nY=ui:Append("Text", { txt = "5% �쳾", x = nX+20, y = 130, }):Click(function()  AssistHaste.SetPreEx(52) end):ASize():Pos_()
	nX,nY=ui:Append("Text", { txt = "10% ����", x =nX+20, y = 130, }):Click(function()  AssistHaste.SetPreEx(102) end):ASize():Pos_()
	nX,nY=ui:Append("Text", { txt = "20% �۾�����", x =nX+20, y = 130, }):Click(function()  AssistHaste.SetPreEx(204) end):ASize():Pos_()	
------------------------------------------------------------------------------------------------
--��������50/���θ�50/�̶����� ������50�����51/��������51/���ž۾�����204
--5%  ���Ϊ4.98%��ʵ��Ϊ51�㣬cj���51/cg��������51  --����������  �ĳɼ��Ʒ���
--1%��5�� ʵ�������ʾ0.98%��4.88%�����ʣ�0.98*10.24=10.0352��4.88*10.24=49.9712��ʵ���������������ļ�����ֵ����Ƶļ����ʣ� һ��10����������ֵ�����50�㡣 10*5
--���̺쳾��������Ϊ5%�����Ϊ5.08%�����ʡ�ʵ��Ϊ52����������ֵ��
--��������Ы������Ϊ10%�����Ϊ9.96%�����ʡ�ʵ��Ϊ102����������ֵ��
--�������Ȫ������Ӱ��29.98%��307����������ֵ���Ѿ����������ˡ��ĳ�׷����������1.5s
--���ž۾������������𣬶���20.02%�����ʣ�ʵ��Ϊ205����������ֵ��--����9���紵ѩ���ܣ��Ѿ��Ҳ�����
--ʵ��95�汾����19.92% Ӧ����204������
--����̫���޼�������2%�����1.95%������5.86%��ʵ��Ϊһ��20�㣬����60���������ʡ� 20*3
------------------------------------------------------------------------------------------------
	nY=185	
	nX, _ =ui:Append("Text", { txt = "ʱ��", x = 64, y = nY, font = 185 }):Pos_()
	nX, _ =ui:Append("Text", { txt = "������", x = 146, y = nY, font = 185 }):Pos_()
	nX, _ =ui:Append("Text", { txt = "���ٵȼ�", x = 250, y = nY, font = 185 }):Pos_()	
	nX, _ =ui:Append("Text", { txt = "Ԥ    ��", x = 520, y = nY, font = 185 }):Hover(function() str = "Ĭ���������ؼ�"  TF.ShowTip(str) end):ASize():Pos_()	
	nX,nY=ui:Append("Text", { txt = "1.5sGCD�����롢���ϡ�Ы�ġ�...", x = 380, y = nY+35, }):Click(function()  AssistHaste.SetPre("1.5G") end):ASize():Pos_()
	nY=nY+15
	nX, _ =ui:Append("Text", { txt = "�쳾����", x = 380, y = nY, }):Click(function()  AssistHaste.SetPre("MJYP") end):ASize():Pos_()
	nX,nY=ui:Append("Text", { txt = "����̫��", x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("QCTJ") end):ASize():Pos_()	
	nY=nY+15
	nX, _ =ui:Append("Text", { txt = "������ױ", x = 380, y =nY, }):Click(function()  AssistHaste.SetPre("BXXZ") end):ASize():Pos_()
	nX, _ =ui:Append("Text", { txt = "��������", x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("BXYS") end):ASize():Pos_()	
	nX, _ =ui:Append("Text", { txt = "�����ѩ", x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("NXHX") end):ASize():Pos_()
	nX,nY=ui:Append("Text", { txt = "��������", x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("NXLL") end):ASize():Pos_()	
	nY=nY+15
	nX, _ =ui:Append("Text", { txt = "�θ�����",  x = 380, y =nY, }):Click(function()  AssistHaste.SetPre("HJYM") end):ASize():Pos_()	
	nX, _ =ui:Append("Text", { txt = "�θ��ѩ",  x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("HJKX") end):ASize():Pos_()
	nX, _ =ui:Append("Text", { txt = "����ѩ",  x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("QGKX") end,"���θ�"):ASize():Pos_()	
	nX,nY=ui:Append("Text", { txt = "�̻�����",  x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("NHJZ") end):ASize():Pos_()	
	nY=nY+15
	nX, _ =ui:Append("Text", { txt = "�̻�����",  x = 380, y = nY, }):Click(function()  AssistHaste.SetPre("NHCZ") end):ASize():Pos_()
	nX, _ =ui:Append("Text", { txt = "���ɳ���",  x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("QLCZ") end):ASize():Pos_()
	nX, _ =ui:Append("Text", { txt = "�̻�����",  x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("NHTZ") end):ASize():Pos_()	
	nX,nY=ui:Append("Text", { txt = "�ߛg����",  x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("JZTZ") end):ASize():Pos_()		
	nY=nY+15
	nX, _ =ui:Append("Text", { txt = "�̶�����", x = 380, y = nY, }):Click(function()  AssistHaste.SetPre("NDZW") end):ASize():Pos_()
	nX,nY=ui:Append("Text", { txt = "�ɾ�����", x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("NJZW") end):ASize():Pos_()
	nY=nY+15
 	nX, _ =ui:Append("Text", { txt = "���ű���", x = 380, y = nY, }):Click(function()  AssistHaste.SetPre("TMBY") end):ASize():Pos_()
	nX, _ =ui:Append("Text", { txt = "�������", x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("JYDP") end):ASize():Pos_()
	nX, nY =ui:Append("Text", { txt ="����ʴ��", x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("TLJD") end):ASize():Pos_()	
	nY=nY+15
 	nX, _ =ui:Append("Text", { txt = "����Ʒ�", x = 380, y = nY, }):Click(function()  AssistHaste.SetPre("CJYF") end):ASize():Pos_()
	nX, nY =ui:Append("Text", { txt = "���Ϧ��", x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("CJXZ") end):ASize():Pos_()
	nY=nY+15
 	nX, _ =ui:Append("Text", { txt = "���裺��", x = 380, y = nY, }):Click(function()  AssistHaste.SetPre("CGZ") end,"������/����"):ASize():Pos_()
	nX, _ =ui:Append("Text", { txt = "���أ���", x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("ZCZ") end,"������/����"):ASize():Pos_()	
 	nX, _ =ui:Append("Text", { txt = "���裺��", x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("CGG") end,"������/����"):ASize():Pos_()
	nX, nY =ui:Append("Text", { txt = "���ţ���", x = nX+25, y = nY, }):Click(function()  AssistHaste.SetPre("GYG") end,"������"):ASize():Pos_()	
end
  
function AssistHaste._OpenWindow()
	local frame = Station.Lookup("Normal/AssistHaste")
	if frame then
		if frame:IsVisible() then
			frame:Hide() AssistHaste.bFrameOpened = false
		else
			frame:Show() AssistHaste.bFrameOpened = true
		end
	else
		frame = Wnd.OpenWindow("Interface\\TF\\AssistHaste\\AssistHaste.ini","AssistHaste")
		frame:Show() AssistHaste.bFrameOpened = true
	end
end
 
   
 function AssistHaste.CalRes(ExA,dutiao,hip)
	dutiao = tonumber(dutiao) 
	if dutiao == nil then return end
	hip = tonumber(hip) or 1
	ExA=tonumber(ExA) or 0

	local page = Station.Lookup("Normal/AssistHaste/Wnd_ResWnd")
	if page then  
		h=page:Lookup("","")
		for i=1,AssistHaste.LastGrade do
			h:RemoveItem("d"..i)
			h:RemoveItem("ATime"..i)
			h:RemoveItem("RateA"..i)
			h:RemoveItem("RateB"..i)
			h:RemoveItem("NeedA"..i)		
			h:RemoveItem("NeedB"..i)				
		end
	end

	local  ui2 = TF.UI(page)
	local OriFr=dutiao/hip*16
	local MaxFr=math.floor(OriFr/1.249)
	local grade=OriFr-MaxFr
	
	nY=35

	AssistHaste.LastGrade=grade
	for i=1,grade do
		local mid=OriFr/(OriFr-i+1)*1024-1024 
		if mid==math.ceil(mid) then TotA=mid+1 else TotA=math.ceil(mid) end  
		if TotA<ExA then  NeedA=0  else    NeedA=math.ceil((TotA-ExA)*54.782/10.24) end	 
		if TotA<ExA then  NeedB=0  else    NeedB=math.ceil((TotA-ExA)*47.174/10.24) end	--47.174
		local ATime=hip*(OriFr-i)/16
		ATime=string.format("%.2f", ATime) 
	--	if NeedA<10 then NeedA="    "..NeedA  elseif NeedA<1000 then NeedA="  "..NeedA  end
	--	if NeedB<10 then NeedB="    "..NeedB  elseif NeedB<1000 then NeedB="  "..NeedB  end 
		RateA=NeedA/54.782
		szRateA=string.format("%.2f", RateA)
		RateB=NeedB/47.174
		szRateB=string.format("%.2f", RateB)	--.."%"
		nX, _ =ui2:Append("Text","d"..i,{ txt = i , x = 30, y = nY, align = 1 }):ASize():Pos_()
		nX, _ =ui2:Append("Text","ATime"..i, { txt = ATime.."s", x = 65, y = nY, font=101, align = 1 }):ASize():Pos_()
		nX, _ =ui2:Append("Text","RateA"..i, { txt = szRateA, x = 128, y = nY,  font=109, align = 1 }):ASize():Pos_()		
		nX, _ =ui2:Append("Text", "RateB"..i,{ txt = szRateB, x = 187, y = nY, font=101, align = 1 }):ASize():Pos_()			
		nX, _ =ui2:Append("Text", "NeedA"..i,{ txt = NeedA, x = 244, y = nY, font=109, align = 1 }):ASize():Pos_()
		nX, _ =ui2:Append("Text", "NeedB"..i,{ txt = NeedB, x = 296, y = nY, font=101, align = 1 }):ASize():Pos_()
		
		nY=nY+30 
		end
		
	end
 
TF.AppendPlayerMenu(function()
	return {
		szOption ="���ٲ�ѯ����", bCheck = true,
		bChecked = AssistHaste.bFrameOpened, 
		fnAction = AssistHaste._OpenWindow,
		}
end)
 TF.AppendPlayerMenu( { bDevide = true }) 

 
TF.AddHotKey("AssistHasteQ", "������ֵ��ѯ���", AssistHaste._OpenWindow)

-------------------------------------
-- ���ý���
-------------------------------------
_AssistHaste={}
_AssistHaste.PS = {}

-- init
_AssistHaste.PS.OnPanelActive = function(frame)
	local ui = TF.UI(frame)
	-- feature
	nX,_=ui:Append("WndButton", "Button_OpAcPanel", { txt = "�����", x = 0, y = 5 , }):Size(80, 28):Click(function() AssistHaste._OpenWindow() end):Pos_()
	_,nY=ui:Append("WndButton", "Button_SetAHHotK", { txt = "���ÿ�ݼ�", x = nX+10, y = 5 , font = 185, }):Size(120, 28):Click(function() HotkeyPanel_Open("�����ר�ò������") end):Pos_()	
	_,nY=ui:Append("Text", { txt =  "������˵����" , x = 0, y = nY+14, }):Pos_()
	_,nY=ui:Append("Text", { txt =  "��1��95����¼�����ֵ��ѯ����Ԥ�Ƹ�ְҵ���÷���" , x = 0, y = nY+12, }):Pos_()
--	ui:Append("Text", { txt =  "By ΢��ƾ��" , x = 340, y =340, font = 205 })
end

 
---------------------------------------------------------------------
-- ע���¼�����ʼ��
---------------------------------------------------------------------
-- add to TF panel
TF.RegisterPanel("���ٲ�ѯ����", 6495, "��������", _AssistHaste.PS)