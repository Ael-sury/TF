AssistChJT={
	AssistChJTTitle="[TF������ң����]-",
	bFrameOpened = false,
	clrbagIndex=16,
	pveeqIndex=10,
	IsAddMoney=false,
	AMStep=0,
	_nNpcID=0,
	_nShopID=0,
	_jtID=0,
	IsAssistChJT=false,
	szTempCon=nil,
	szSecCon=nil,
	CloseAfterD=false,
	JTTabType=5,   
	JTIndex=5284,
	PveLv="435",	
	PvpLv="435",
	tPveXF={
		["310�ƾ�"]="310",		
		["435����"]="435",		
		["515�ط�"]="515",		
		["555˷ѩ"]="555",	
		["595˪��"]="595",		
	},	
	tPvpXF={
		["230���"]="230",		
		["270�ϻ�"]="270",		
		["325�ƾ�"]="325",		
		["435����"]="435",		
		["515�ط�"]="515",		
		["555˷ѩ"]="555",	
		["595˪��"]="595",		
	},
	tFlyChNew={
		["TQL"]="���͵������֣����Ƶȼ�90��",	
		["YSSQ"]="���͵���ɽʥȪ�����Ƶȼ�90��",	
		["FKCY"]="���͵������Ժ�����Ƶȼ�90��",	
		["YXSX"]="���͵�����ˮ鿣����Ƶȼ�90��",	
		["WSSY"]="���͵�΢ɽ��Ժ�����Ƶȼ�15��",		
		["TQLh"]="���͵�Ӣ�������֣����Ƶȼ�90��",	
		["YSSQh"]="���͵�Ӣ����ɽʥȪ�����Ƶȼ�90��",	
		["FKCYh"]="���͵�Ӣ�������Ժ�����Ƶȼ�90��",	
		["YXSXh"]="���͵�Ӣ������ˮ鿣����Ƶȼ�90��",	
		["WSSYh"]="���͵�Ӣ��΢ɽ��Ժ�����Ƶȼ�90��",	
		["PTXL"]="���͵������й�������ͥ԰�����Ƶȼ�95��",		
		["PTHY"]="���͵������й������±�Ժ�����Ƶȼ�95��",		
		["YXXL"]="���͵�Ӣ�������й�������ͥ԰�����Ƶȼ�95��",			
		["YXHY"]="���͵�Ӣ�������й������±�Ժ�����Ƶȼ�95��",		
		["BHXL"]="���͵���������й�������ͥ԰�����Ƶȼ�95��",		
		["BHHY"]="���͵���������й������±�Ժ�����Ƶȼ�95��",		
		["C1XL"]="���͵�10����ս�����й�������ͥ԰�����Ƶȼ�95��",	
		["C2XL"]="���͵�25����ս�����й�������ͥ԰�����Ƶȼ�95��",	
		["C1HY"]="���͵�10����ս�����й������±�Ժ�����Ƶȼ�95��",	
		["C2HY"]="���͵�25����ս�����й������±�Ժ�����Ƶȼ�95��",			
		["LuoYZL"]="���͵�������ս�ң��Ƽ��ȼ�80��",	 
		["ChAn"]="���͵�������ս�ң��Ƽ��ȼ�85��",						 
		["DXC"]="���͵������(����ͼ������������Լ���)",					
		["LuoY"]="���͵�����",	
		["YaZh"]="���͵�����",	
		["ChDu"]="���͵��ɶ�",					
		["CY"]="���͵�����",				
		["WH"]="���͵���",		
		["TC"]="���͵����",	 
		["SL"]="���͵�����",
		["QX"]="���͵�����",			 
		["CJ"]="���͵��ؽ�",			 	 
		["WD"]="���͵��嶾",		
		["GB"]="���͵�ؤ��",				
		["MJ"]="���͵�����",				
		["TM"]="���͵�����",				
		["CC"]="���͵�����",				
		["CGM"]="���͵�������",		 	
	},
	tRoleType={"����","Ů��","3������","4������","С�к�","СŮ��",},
	tMPCh={
		["TC"]="������߲���ü���",
		["CY"]="���봿������ü���",
		["WH"]="�����򻨲���ü���",
		["XX"]="�������㲢��ü���",
		["SL"]="�������ֲ���ü���",
		["CJ"]="����ؽ�����ü���",
		["WD"]="�����嶾����ü���",
		["TM"]="�������Ų���ü���",
		["MJ"]="�������̲���ü���",
		["GB"]="����ؤ�ﲢ��ü���",
		["CC"]="������Ʋ���ü���",
		["CG"]="���볤���Ų���ü���",
	},
	tPVECh = {	--{ 310, 435, 515, 555, 595 }
		["Any"]="",
		["750"]="��ȡ750��ɫPVEװ��",		
		["850"]="��ȡ850��ɫPVEװ��",		
		["310"]="��ȡ310ƷPVEװ��",	
		["435"]="��ȡ435ƷPVEװ��",	
		["515"]="��ȡ515ƷPVEװ������ʱ���֣�",	
		["555"]="��ȡ555��ɫPVEװ��",	
		["595"]="��ȡ595��ɫPVEװ��",		
	},
	tPVPCh = {		
		["Any"]="",	
		["850"]="��ȡ850��ɫPVPװ��",		
		["930"]="��ȡ930��ɫPVPװ��",		
		["230"]="��ȡ230ƷPVPװ��",		
		["270"]="��ȡ270ƷPVPװ��",		
		["325"]="��ȡ325ƷPVPװ��",		
		["435"]="��ȡ435ƷPVPװ��",				
		["515"]="��ȡ515ƷPVPװ��",		
		["555"]="��ȡ555��ɫPVPװ��",	
		["595"]="��ȡ595��ɫPVPװ��",			
	},	
	tYijiMenuCh = {
		["Button_CCHT"]="����貴亣�������Ƶȼ�90��",	--�������������²�
	--	["Button_28to90"]="������28������Ҫ����90��",			 
		["Button_HorseBag"]="�����ƥ������",
		["Button_FuZhu"]="��ø�����Ʒ",
		["Button_FZ90"]="���90������������Ʒ",
		["Button_FZ95"]="���95������������Ʒ",
		["Button_XYCL"]="���ϡ�в���",
		["Button_ColorStone"]="������ʯ",
		["Button_tMP"]="ѡ�����ɲ�����90��",			--һ��90��һ��95��һ����90������û�꣡��
		["Button_tPVE"]="���������ӦPVEװ��",			--����
		["Button_tPVP"]="���������ӦPVPװ��",			--����
		["Button_tFly"]="����ȥ������ͼ",			--����
		["Button_ZYHQ"]="��������� ",
		["Button_ZYER"]="������˹� ",
		["Button_ZYZL"]="�������� ",		--û�����������һ������Ƿ��Ŀո񣡣���    
		["Button_ClrBag"]="ɾ������װ��",
		["Button_MPDX"]="�ع������",
		["Button_Friend"]="���Ӻøж�",
		["Button_MiJi"]="ѧϰ���ɶ�Ӧ����",
		["Button_XiuWei"]="�����Ϊ",
		["Button_Money50"]="���Ӱ���ʽ�50��",
		["Button_TMJG"]="��ȡ����ר���ӵ�",
	},	
	tBtnUnDXC={"Button_MiJi","Button_XYCL","Button_ZYHQ","Button_ZYER","Button_FuZhu","Button_FZ90","Button_FZ95","Button_ColorStone","Button_ClrBag","Button_ZYZL","Button_MPDX","Button_AddMoney"},
	tBtnUnable = {"Button_FlyCGM"},	
	tBtnFemaleUn = {"Button_MPSL","Button_MPCG",},
	tBtnHanziUn = {"Button_MPXX",},
	tBtnBoyUn = {"Button_MPWD","Button_MPTM","Button_MPMJ","Button_MPCG",},	--WD
	tMPBoyEn={"SL","XX","GB","TC","CY","WH","CJ","CC"},	 --CG
	tMPFemaleEn={"TC","CY","WH","XX","CJ","WD","TM","MJ","GB","CC"},	--CG
	tMPHanziEn={"TC","CY","WH","SL","CJ","WD","TM","MJ","GB","CC","CG"},
	--MPFlag=0,
}
AssistChJT.tErJiTable = {  
	["Button_Fly"]={AssistChJT.tYijiMenuCh["Button_tFly"], AssistChJT.tFlyChNew,},	--"����ȥ������ͼ"
	["Button_MP"]={AssistChJT.tYijiMenuCh["Button_tMP"], AssistChJT.tMPCh,}, 	--"ѡ�����ɲ�����90��",
	["Button_PVE"]={AssistChJT.tYijiMenuCh["Button_tPVE"],AssistChJT.tPVECh,}, 	-- "���������ӦPVEװ��"
	["Button_PVP"]={AssistChJT.tYijiMenuCh["Button_tPVP"], AssistChJT.tPVPCh,},	--"���������ӦPVPװ��"
}
AssistChJT.tRoleBtn = {[2]= AssistChJT.tBtnFemaleUn,[6]= AssistChJT.tBtnFemaleUn,[1]= AssistChJT.tBtnHanziUn,[5]= AssistChJT.tBtnBoyUn,}
AssistChJT.tMPEn = {[2]= AssistChJT.tMPFemaleEn,[6]= AssistChJT.tMPFemaleEn,[1]= AssistChJT.tMPHanziEn,[5]= AssistChJT.tMPBoyEn,}
 

 function AssistChJT.OnMouseEnter()		
	local szName = this:GetName()
	local szType = this:GetType()
	if szName=="Text_MPDX" then 
			local szSce=GetClientPlayer().GetScene().szDisplayName
			if szSce~="�����"	then TF.ShowTip("�ù���ֻ���ڵ����ʹ��")  
			else
				str = "��סCtrl���ع������" 
				TF.ShowTip(str,163)
			end
		return 
	end

	if szType == "WndButton" and szName ~="Button_Close" then
--Unable
		if not this:IsEnabled() then
			local szSce=GetClientPlayer().GetScene().szDisplayName
			if szSce~="�����"	and szName~="Button_HorseBag" and  szName~="Button_XiuWei"  and szName~="Button_Friend" and  szName~="Button_TMJG"  and  szName~="Button_Money50"  and not string.find(szName,"Button_Set")  and not string.find(szName,"Button_Fly") then TF.ShowTip("�ù���ֻ���ڵ����ʹ��") return end			
			if szName=="Button_FlyCGM" then TF.ShowTip("��δ���ţ�����Ժ��û��") return end
 
			local player=GetClientPlayer()
			tBtnUn2=AssistChJT.tRoleBtn[player.nRoleType]
			for i = 1, #tBtnUn2 do
				if szName==tBtnUn2[i] then 
					if  szName=="Button_MPCG" or (player.nRoleType==5 and szName=="Button_MPWD") then 
						TF.ShowTip("�ݲ���ͨ�������������\n���������������Ŵ�����") 
					else
						TF.ShowTip("��������ʱ����"..AssistChJT.tRoleType[player.nRoleType]) 
					end
				return 
				end
			end	
			if string.find(szName,"Button_MP") then	TF.ShowTip("�����ع������")   return	end 
			if string.find(szName,"Button_PVE") then TF.ShowTip("����������")   return		end  
			if string.find(szName,"Button_PVP") then TF.ShowTip("���������ɺ���Ӫ")   return	end	 
		end
--Enable		
		if  szName =="Button_AddMoney" then
			TF.ShowTip("�����˰��˼�ˢ��\n����ձ�����\n�ؽ�ؤ�ﵥ��������")
		end
		yjFlag=0
		for szBtnName,_ in pairs(AssistChJT.tYijiMenuCh) do 	
			if szName == szBtnName then 
				str = AssistChJT.tYijiMenuCh[szBtnName]		--szFirCon
				TF.ShowTip(str,35)	
				if szName == "Button_ClrBag" then str="��סCtrl����ձ�����" TF.ShowTip(str,163)
				elseif szName == "Button_ZYZL" then str="��סCtrl���ع�������"  TF.ShowTip(str,163)
				end
				yjFlag=1
				break
			end
		end
		
		if szName=="Button_PVEAny" then 
			szName="Button_PVE".. AssistChJT.PveLv			
		elseif szName=="Button_PVPAny" then 
			szName="Button_PVP".. AssistChJT.PvpLv
		end
		if yjFlag==0 then 
			for szBtnGrp,_ in pairs(AssistChJT.tErJiTable) do 
				if string.find(szName,szBtnGrp) then		
					t = AssistChJT.tErJiTable[szBtnGrp][2]
					local x1,y1=string.find(szName,szBtnGrp)  
					szEJName = string.sub(szName,y1+1)
					str = t[szEJName]	 				--szSecCon
					TF.ShowTip(str,35)	
					break
				end
			end	
		end
		
	end
end

function AssistChJT.OnMouseLeave()
	local szName = this:GetName()
	local szType = this:GetType()
	HideTip()
end

function AssistChJT.openJT()
	player=GetClientPlayer()
	if player.bOnHorse then	OutputMessage("MSG_ANNOUNCE_RED","���״̬����ʹ�á����졤��ң��")  return end
	local dwBox, dwX=GetItemPosByItemTypeIndex(AssistChJT.JTTabType,AssistChJT.JTIndex)		
	if not dwBox then OutputMessage("MSG_ANNOUNCE_RED","������û�С����졤��ң�������ڲֿ�����")	end
	OnUseItem(dwBox, dwX, GetUIItemBox(dwBox, dwX, true))  
end

  AssistChJT.OnOpenWindow=function()
	if AssistChJT.IsAddMoney then AssistChJT._jtID=arg0 end
	--nIdx=arg0
	if not AssistChJT.IsAssistChJT then return end
	fr=Station.Lookup("Normal/DialoguePanel")  
	if fr and fr:IsVisible() then
	local nType,nID,nIdx,aInfo=fr.dwTargetType, fr.dwTargetId, fr.dwIndex,fr.aInfo
	    if aInfo then
			for i=1,#aInfo,1 do 		
				if aInfo[i].name == "$" and aInfo[i].context==AssistChJT.szTempCon  then    --nFirId=aInfo[i].attribute.id 
					GetClientPlayer().WindowSelect(nIdx,aInfo[i].attribute.id)	
					if not AssistChJT.szSecCon then 
						OutputMessage("MSG_ANNOUNCE_YELLOW", aInfo[i].context.."\n")
						AssistChJT.IsAssistChJT=false
						Station.Lookup("Normal/DialoguePanel"):Hide() 
					end
					break     
				elseif  aInfo[i].name == "$" and  aInfo[i].context==AssistChJT.szSecCon then
					GetClientPlayer().WindowSelect(nIdx,aInfo[i].attribute.id)	
					OutputMessage("MSG_ANNOUNCE_YELLOW", aInfo[i].context.."\n")
					AssistChJT.IsAssistChJT=false 
					AssistChJT.szSecCon=nil
					Station.Lookup("Normal/DialoguePanel"):Hide() 
					if 	AssistChJT.CloseAfterD then	Station.Lookup("Topmost/AssistChJT"):Hide()  AssistChJT.CloseAfterD=false end
				end
			end	
		end
	end
 end
 
 RegisterEvent("OPEN_WINDOW",AssistChJT.OnOpenWindow)
  

function AssistChJT.OnLButtonClick()
	local szName = this:GetName()
	
	if szName=="Text_MPDX" then szName="Button_MPDX" end
	
	local frame = Station.Lookup("Topmost/AssistChJT")
	if szName == "Button_Close" then
		if not frame then	return	end
		frame:Hide()
		AssistChJT.bFrameOpened=false		
		return
	elseif szName=="Button_AddMoney" then 
		if not AssistChJT.IsAddMoney then AssistChJT.MoneyInitial() end 
		AssistChJT.StartRefresh()
		return
	end
 
 	yjFlag = 0				
	if szName == "Button_ClrBag" and not  IsCtrlKeyDown() --[=[and not AssistChJT.IsClrBag]=]then 
		TF.Alert("��ȷ����ձ������밴סCtrl��ͬʱ���¡���ձ�������ť��", function() end, "Yes")   return
	elseif szName == "Button_ZYZL" and not IsCtrlKeyDown() then 
		TF.Alert("��ȷ�ϻع��������밴סCtrl��ͬʱ���¡��� ������ť��", function() end, "Yes") return 
	elseif szName == "Button_MPDX" and not IsCtrlKeyDown() then 
		TF.Alert("��ȷ�ϻع�������밴סCtrl��ͬʱ���¡��� ������", function() end, "Yes")	return 
 	else	
		for szBtnName,_ in pairs(AssistChJT.tYijiMenuCh) do
			if szName == szBtnName then 
				AssistChJT.szTempCon=AssistChJT.tYijiMenuCh[szBtnName]
				AssistChJT.IsAssistChJT=true				
				AssistChJT.openJT()
				yjFlag=1
				break
			end
		end 
	end
 
	if szName=="Button_PVEAny" then 
		szName="Button_PVE".. AssistChJT.PveLv	
	elseif szName=="Button_PVPAny" then 
		szName="Button_PVP".. AssistChJT.PvpLv
	end
	
	if yjFlag==0 then 
		for szBtnGrp,_ in pairs(AssistChJT.tErJiTable) do 
			if string.find(szName,szBtnGrp) then		
				AssistChJT.szTempCon=AssistChJT.tErJiTable[szBtnGrp][1]	
				t = AssistChJT.tErJiTable[szBtnGrp][2]
				if szBtnGrp=="Button_Fly" then AssistChJT.CloseAfterD=true end
				local x1,y1=string.find(szName,szBtnGrp)  
				szEJName = string.sub(szName,y1+1)
				AssistChJT.szSecCon = t[szEJName]	 
				AssistChJT.IsAssistChJT=true
				AssistChJT.openJT()				
				break
			end
		end
	end 
 end
	
 function AssistChJT.BtnUnable(szName)
	local f=Station.Lookup("Topmost/AssistChJT")
	local btn=f:Lookup(szName)
	if btn then btn:Enable(false) end
 end
 
 function AssistChJT.BtnEnable(szName)
	local f=Station.Lookup("Topmost/AssistChJT")
	local btn=f:Lookup(szName)
	if btn then btn:Enable(1) end
 end
 
function AssistChJT.OnFrameCreate()
	local  ui = TF.UI(Station.Lookup("Topmost/AssistChJT"))
	ui:Append("Text", { txt = "������ң����", x = 315, y = 30, font = 203 })	 
	ui:Append("Text", { txt = "ͨ  �ã�", x = 27, y = 70, font = 185 })		
	nX,_=ui:Append("WndButton", "Button_HorseBag", { txt = "��ȡ���", x = 90, y = 70 }):Size(80, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_ClrBag", { txt = "��ձ���", x = nX+10, y = 70, font=27 }):Size(80, 28):Pos_()	
	nX,nY=ui:Append("WndButton", "Button_Friend", { txt = "�Ӻøж�", x = nX+10, y = 70}):Size(80, 28):Pos_()		
	nY=nY+12
	nX,_=ui:Append("WndButton", "Button_XiuWei", { txt = "�����Ϊ", x = 90, y = nY }):Size(80, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_MiJi", { txt = "ѧϰ�ؼ�", x = nX+10, y = nY}):Size(80, 28):Pos_()	
	nX,nY=ui:Append("WndButton", "Button_TMJG", { txt = "���Ż���", x = nX+10, y = nY}):Size(80, 28):Pos_()			
 	nY=nY+12
	nX,_=ui:Append("WndButton", "Button_ColorStone", { txt = "���ʯ", x = 90, y = nY }):Size(80, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_XYCL", { txt = "ϡ�в���", x = nX+10, y = nY}):Size(80, 28):Pos_()	
	nX,nY=ui:Append("WndButton", "Button_AddMoney", { txt = "�Զ�ˢ��", x = nX+10, y = nY, font=205 }):Size(80, 28):Pos_()			

	nY=nY+12	
	ui:Append("Text", { txt = "��  װ��", x = 27, y = nY, font = 185 }):Pos_()
	nX,_=ui:Append("WndButton", "Button_FuZhu", { txt = "�� ��", x = 90, y = nY }):Size(80, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_FZ90", { txt = "90����", x = nX+10, y = nY }):Size(80, 28):Pos_()	
	nX,nY=ui:Append("WndButton", "Button_FZ95", { txt = "95����", x = nX+10, y = nY}):Size(80, 28):Pos_()	
	
	nY=nY+12	
	ui:Append("Text", { txt = "��  Ӫ��", x = 27, y = nY, font = 185 }):Pos_()
	nX,_=ui:Append("WndButton", "Button_ZYZL", { txt = "�� ��", x = 90, y = nY , font=27 }):Size(80, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_ZYHQ", { txt = "������", x = nX+10, y = nY }):Size(80, 28):Pos_()	
	nX,nY=ui:Append("WndButton", "Button_ZYER", { txt = "���˹�", x = nX+10, y = nY}):Size(80, 28):Pos_()	
	
	nY=nY+12		
	nX,_=ui:Append("Text","Text_MPDX", { txt = "[�� ��]", x = 27, y = nY, font = 205 }):Click(function() 
		AssistChJT.OnLButtonClick()
	end):Hover(function() AssistChJT.OnMouseEnter()  end,function() HideTip() end):Pos_()
	nX,_=ui:Append("WndButton", "Button_MPTC", { txt = "���", x = 90, y = nY }):Size(50, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_MPCY", { txt = "����", x = nX+20, y = nY}):Size(50, 28):Pos_()		
	nX,_=ui:Append("WndButton", "Button_MPWH", { txt = "��", x = nX+20, y = nY}):Size(50, 28):Pos_()			
	nX,nY=ui:Append("WndButton", "Button_MPWD", { txt = "�嶾", x = nX+20, y = nY, }):Size(50, 28):Pos_()
	nY=nY+12	
	nX,_=ui:Append("WndButton", "Button_MPTM", { txt = "����", x = 90, y = nY }):Size(50, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_MPMJ", { txt = "����", x = nX+20, y = nY}):Size(50, 28):Pos_()		
	nX,_=ui:Append("WndButton", "Button_MPGB", { txt = "ؤ��", x = nX+20, y = nY}):Size(50, 28):Pos_()			
	nX,nY=ui:Append("WndButton", "Button_MPCJ", { txt = "�ؽ�", x = nX+20, y = nY, }):Size(50, 28):Pos_()
	nY=nY+12
	nX,_=ui:Append("WndButton", "Button_MPCC", { txt = "����", x = 90, y = nY }):Size(50, 28):Pos_()		
	nX,_=ui:Append("WndButton", "Button_MPSL", { txt = "����", x = nX+20, y = nY }):Size(50, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_MPXX", { txt = "����", x = nX+20, y = nY }):Size(50, 28):Pos_()	
	nX,nY=ui:Append("WndButton", "Button_MPCG", { txt = "����", x = nX+20, y = nY}):Size(50, 28):Pos_()
	
	nY=nY+12	
	ui:Append("Text", { txt = "PVEװ", x = 27, y = nY, font = 185 }):Pos_()
	nX,_=ui:Append("WndButton", "Button_PVE750", { txt = "750", x = 90, y = nY }):Size(50, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_PVE850", { txt = "850", x = nX+20, y = nY }):Size(50, 28):Pos_()	
--[[     nX,_=ui:Append("WndEdit", "Edit_Name", { x = nX+20, y = nY, limit = 3, w = 50, h = 25 } ):Pos_() ]]
	nX,_ = ui:Append("WndComboBox", "Combo_PveLv", { x = nX + 20, y = nY, w = 82, h = 25 })
	:Text("435����"):Menu(function()
		local m0, tPveLv = {}, { "310�ƾ�", "435����", "515�ط�", "555˷ѩ", "595˪��",}
		for i=1,#tPveLv do
			table.insert(m0, {
				szOption = tPveLv[i],
				fnAction = function()
					szPveLv=AssistChJT.tPveXF[tPveLv[i]]
					ui:Fetch("Combo_PveLv"):Text(tPveLv[i])
					AssistChJT.PveLv=szPveLv
				end
			})
		end
		return m0
	end):Pos_()
	nX,nY=ui:Append("WndButton", "Button_PVEAny", { txt = "PVE", x = nX, y = nY }):Size(40, 28):Pos_()
	
	nY=nY+12	
	ui:Append("Text", { txt = "PVPװ", x = 27, y = nY, font = 185 }):Pos_()	
	nX,_=ui:Append("WndButton", "Button_PVP850", { txt = "850", x = 90, y = nY, }):Size(50, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_PVP930", { txt = "930", x = nX+20, y = nY}):Size(50, 28):Pos_()			
	nX,_ = ui:Append("WndComboBox", "Combo_PvpLv", { x = nX + 20, y = nY, w = 82, h = 25 })
	:Text("435����"):Menu(function()
		local m0, tPvpLv = {}, {"230���","270�ϻ�","325�ƾ�","435����","515�ط�","555˷ѩ","595˪��",}
		for i=1,#tPvpLv do
			table.insert(m0, {
				szOption = tPvpLv[i],
				fnAction = function()
					szPvpLv=AssistChJT.tPvpXF[tPvpLv[i]]
					ui:Fetch("Combo_PvpLv"):Text(tPvpLv[i])
					AssistChJT.PvpLv=szPvpLv
				end
			})
		end
		return m0
	end):Pos_()
	nX,nY=ui:Append("WndButton", "Button_PVPAny", { txt = "PVP", x = nX, y = nY }):Size(40, 28):Pos_()
	
	nY=nY+12	
	ui:Append("Text", { txt = "��  �᣺", x = 27, y = nY, font = 185 }):Pos_()
	nX,_=ui:Append("WndButton", "Button_Money50", { txt = "50��", x = 90, y = nY }):Size(50, 28):Pos_()	
	
	nY=70
	nX,_=ui:Append("Text", { txt = "�� �ǣ�", x = 395, y = nY, font = 192 }):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyDXC", { txt = "�����", x = 455, y = nY }):Size(75, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_FlyChAn", { txt = "����*", x = nX+16, y = nY }):Size(75, 28):Pos_()
	nX,nY=ui:Append("WndButton", "Button_CCHT", { txt = "����Ͽ", x = nX+16, y = nY }):Size(75, 28):Pos_()
	nY=nY+12
	nX,_=ui:Append("WndButton", "Button_FlyChDu", { txt = "�ɶ�", x = 455, y = nY }):Size(75, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyYaZh", { txt = "����", x = nX+16, y = nY }):Size(75, 28):Pos_()	
	nX, nY =ui:Append("WndButton", "Button_FlyLuoY", { txt = "����", x = nX+16, y = nY }):Size(75, 28):Pos_()
	
--[[ 	
	nY=nY+12
	nY=nY+18
	nX,_=ui:Append("WndButton", "Button_FlyTQL", { txt = "����", x = 400, y = nY }):Size(56, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_FlyYSSQ", { txt = "ʥȪ", x = nX+10, y = nY }):Size(56, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyFKCY", { txt = "��Ժ", x = nX+10, y = nY}):Size(56, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyYXSX", { txt = "ˮ�", x = nX+10 , y = nY}):Size(56, 28):Pos_()
	nX,nY=ui:Append("WndButton", "Button_FlyWSSY", { txt = "��Ժ", x = nX+10, y = nY}):Size(56, 28):Pos_()	
	nY=nY+12
	nX,_=ui:Append("WndButton", "Button_FlyTQLh", { txt = "����H", x = 400, y = nY }):Size(56, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_FlyYSSQh", { txt = "ʥȪH", x = nX+10, y = nY }):Size(56, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyFKCYh", { txt = "��ԺH", x = nX+10, y = nY}):Size(56, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyYXSXh", { txt = "ˮ�H", x = nX+10, y = nY}):Size(56, 28):Pos_()
	nX,nY=ui:Append("WndButton", "Button_FlyWSSYh", { txt = "��ԺH", x = nX+10, y = nY}):Size(56, 28):Pos_()	
 ]]
	nY=nY+32
	nX,_=ui:Append("Text", { txt = "�� ����", x = 395, y = nY, font = 192 }):Pos_()
--[[ 	nX,_=ui:Append("WndButton", "Button_FlyPTXL", { txt = "����", x = 400, y = nY }):Size(56, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_FlyBHXL", { txt = "����B", x = nX+10, y = nY }):Size(56, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyYXXL", { txt = "����H", x = nX+10, y = nY}):Size(56, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyC1XL", { txt = "����10��ս", x = nX+10, y = nY }):Size(56, 28):Pos_()	
	nX,nY=ui:Append("WndButton", "Button_FlyC2XL", { txt = "����25��ս", x = nX+10, y = nY}):Size(56, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyPTHY", { txt = "����", x = 400, y = nY+12}):Size(56, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_FlyBHHY", { txt = "����B", x = nX+10, y = nY+12}):Size(56, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyYXHY", { txt = "����H", x = nX+10, y = nY+12}):Size(56, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyC1HY", { txt = "����10��ս", x = nX+10, y = nY+12}):Size(56, 28):Pos_()	
	nX,nY=ui:Append("WndButton", "Button_FlyC2HY", { txt = "����25��ս", x = nX+10, y = nY+12}):Size(56, 28):Pos_()	 ]]
	nX,_=ui:Append("WndButton", "Button_FlyC1XL", { txt = "����10��ս", x = 455, y = nY }):Size(120, 28):Pos_()	
	nX,nY=ui:Append("WndButton", "Button_FlyC2XL", { txt = "����25��ս", x = nX+20, y = nY}):Size(120, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyC1HY", { txt = "����10��ս", x = 455, y = nY+12}):Size(120, 28):Pos_()	
	nX,nY=ui:Append("WndButton", "Button_FlyC2HY", { txt = "����25��ս", x = nX+20, y = nY+12}):Size(120, 28):Pos_()	
	nY=nY+32
	nX,_=ui:Append("Text", { txt = "�� �ɣ�", x = 395, y = nY, font = 192 }):Pos_()
	nX,_=ui:Append("WndButton", "Button_FlyCY", { txt = "����", x = 455, y = nY }):Size(50, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_FlyWH", { txt = "��", x = nX+20, y = nY }):Size(50, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyTC", { txt = "���", x = nX+20, y = nY }):Size(50, 28):Pos_()		
	nX,nY=ui:Append("WndButton", "Button_FlySL", { txt = "����", x = nX+20, y = nY }):Size(50, 28):Pos_()	
	nY=nY+12
	nX,_=ui:Append("WndButton", "Button_FlyQX", { txt = "����", x =455, y = nY }):Size(50, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_FlyCJ", { txt = "�ؽ�", x = nX+20, y = nY }):Size(50, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyWD", { txt = "�嶾", x =  nX+20, y = nY }):Size(50, 28):Pos_()		
	nX,nY=ui:Append("WndButton", "Button_FlyTM", { txt = "����", x = nX+20, y = nY}):Size(50, 28):Pos_()		
	nY=nY+12
	nX,_=ui:Append("WndButton", "Button_FlyMJ", { txt = "����", x = 455, y = nY }):Size(50, 28):Pos_()
	nX,_=ui:Append("WndButton", "Button_FlyGB", { txt = "ؤ��", x = nX+20, y = nY }):Size(50, 28):Pos_()	
	nX,_=ui:Append("WndButton", "Button_FlyCC", { txt = "����", x = nX+20, y = nY }):Size(50, 28):Pos_()		
	nX,nY=ui:Append("WndButton", "Button_FlyCGM", { txt = "����", x = nX+20, y = nY}):Size(50, 28):Pos_()	
	nY=nY+30
	nX,_=ui:Append("Text", { txt = "�� С��", x = 395, y = nY, font = 192 }):Pos_()
	nX,nY=ui:Append("Text", { txt = "������������ֽ��_��", x = nX, y = nY, font = 194 }):Pos_()	
 end
--Output(Station.GetMouseOverWindow():GetTreePath())

function AssistChJT.OnFrameBreathe()

 	if GetLogicFrameCount() % 8~= 0  then return end
	if AssistChJT.IsAddMoney then AssistChJT.SellAnQi() end

--Output("����")
	local player = GetClientPlayer()
	if not player then return end
	local Sce=player.GetScene()
	if not Sce then return end
	local szSce=Sce.szDisplayName
	
	if AssistChJT.tBtnUnable then 
		for i = 1, #AssistChJT.tBtnUnable	do	AssistChJT.BtnUnable(AssistChJT.tBtnUnable[i])	end 
	end
--Output("����ͼ")	
	if szSce~="�����"	then 			
		for i = 1, #AssistChJT.tBtnUnDXC	do	AssistChJT.BtnUnable(AssistChJT.tBtnUnDXC[i])	end 
		for szName,_ in pairs(AssistChJT.tMPCh)	do AssistChJT.BtnUnable("Button_MP"..szName)	end 	
		for szName,_ in pairs(AssistChJT.tPVECh)  do	AssistChJT.BtnUnable("Button_PVE"..szName)	end 	
		for szName,_ in pairs(AssistChJT.tPVPCh)  do	AssistChJT.BtnUnable("Button_PVP"..szName)	end 
	else	 
		for i = 1, #AssistChJT.tBtnUnDXC	do	AssistChJT.BtnEnable(AssistChJT.tBtnUnDXC[i])	end
		local t=AssistChJT.tMPEn[GetClientPlayer().nRoleType]
		for i = 1,#t do	AssistChJT.BtnEnable("Button_MP"..t[i])	end	
		for szName,_ in pairs(AssistChJT.tPVECh)  do	AssistChJT.BtnEnable("Button_PVE"..szName)	end	
		for szName,_ in pairs(AssistChJT.tPVPCh)  do	AssistChJT.BtnEnable("Button_PVP"..szName)	end
		
		--Output("�������")		
		if GetClientPlayer().dwForceID~=0	then 	--Output("�Ǵ����������� ��PVE")
			for szMP,_ in pairs(AssistChJT.tMPCh)		do	AssistChJT.BtnUnable("Button_MP"..szMP)	end	
			for szPVE,_ in pairs(AssistChJT.tPVECh)	do	AssistChJT.BtnEnable("Button_PVE"..szPVE)	end			
		else 	--Output("���� �������� ��װ��")
			local t=AssistChJT.tMPEn[GetClientPlayer().nRoleType]
			for i = 1,#t do	AssistChJT.BtnEnable("Button_MP"..t[i])	end
			for szPVE,_ in pairs(AssistChJT.tPVECh)	do	AssistChJT.BtnUnable("Button_PVE"..szPVE)	end
			for szPVP,_ in pairs(AssistChJT.tPVPCh)	do	AssistChJT.BtnUnable("Button_PVP"..szPVP)	end
		end
		--Output("�����Ӫ")		
		if  GetClientPlayer().nCamp==0	then	--Output("���� ��pvp")
			for szPVP,_ in pairs(AssistChJT.tPVPCh)	do	AssistChJT.BtnUnable("Button_PVP"..szPVP)	end
		elseif GetClientPlayer().dwForceID~=0 then 	--Output("��Ӫ�Ǵ��� ��pvp")
			for szPVP,_ in pairs(AssistChJT.tPVPCh)	do	AssistChJT.BtnEnable("Button_PVP"..szPVP)	end
		end
	end 

end
  
function AssistChJT._OpenWindow()
	local frame = Station.Lookup("Topmost/AssistChJT")
	if frame then
		if frame:IsVisible() then
			frame:Hide() AssistChJT.bFrameOpened = false
		else
			frame:Show() AssistChJT.bFrameOpened = true
		end
	else
		frame = Wnd.OpenWindow("Interface\\TF\\AssistChJT\\AssistChJT.ini","AssistChJT")
		frame:Show() AssistChJT.bFrameOpened = true
 
		local player=GetClientPlayer()
		tBtnUn2=AssistChJT.tRoleBtn[player.nRoleType]
		for i = 1, #tBtnUn2 do   
			AssistChJT.BtnUnable(tBtnUn2[i])
		end
	end
end
 
 AssistChJT.OnFrameKeyDown = function()
	if GetKeyName(Station.GetMessageKey()) == "Esc" then
		AssistChJT._OpenWindow()
		return 1
	end
	return 0
end
 
 function AssistChJT.OnOpenShop()
	AssistChJT._nNpcID, AssistChJT._nShopID = arg4, arg0
end
 
function AssistChJT.MoneyInitial()
	AssistChJT.openJT() 
	fr=Station.Lookup("Normal/DialoguePanel")  
	if not fr or not fr:IsVisible() then return end 
	local nType,nID,nIdx,aInfo=fr.dwTargetType, fr.dwTargetId, fr.dwIndex,fr.aInfo
	--AssistChJT.clrbagIndex=16
	if 	aInfo[37]["context"]~="ɾ������װ��" then   -- aInfo[3]["name"]=="G" and 
		for i=1,#aInfo,1 do 	
			if aInfo[i].name == "$" and aInfo[i].context== "ɾ������װ��"  then   
				AssistChJT.clrbagIndex=aInfo[i].attribute.id  
				break
			end   
		end
	end
	--AssistChJT.pveeqIndex=10
	if	aInfo[25]["context"]~="���������ӦPVEװ��" then
		for i=1,#aInfo,1 do 	
			if aInfo[i].name == "$" and aInfo[i].context== "���������ӦPVEװ��"  then   
				AssistChJT.pveeqIndex=aInfo[i].attribute.id  
				break
			end   
		end
	end		
end

function AssistChJT.StartRefresh()
    local player = GetClientPlayer()
   if not AssistChJT.IsAddMoney then
		TF.Sysmsg("��ʼˢǮ",AssistChJT.AssistChJTTitle)		 
		AssistChJT.IsAddMoney=true
		nDistance=GetCharacterDistance(player.dwID,AssistChJT._nNpcID)/64 
		if nDistance>6 or nDistance<0 then	--�Ƿ�����	--or AssistChJT._nShopID==0
			TF.Alert("�����˴��̵�һ�Σ��ٰ��Զ�ˢ��\nˢ��ʱ��֤�����˽���������(6�ߣ�)", function() end, "Yes")
			AssistChJT.IsAddMoney=false
			TF.Sysmsg("�ر�ˢǮ",AssistChJT.AssistChJTTitle)	
			return
		end
		if AssistChJT._nShopID=="UI_OME_SHOP_RESPOND" then
			TF.Alert("����0G�ҿ������Զ���װʱ�����ҡ��ӻ��̡���\n���ڵ�����ҡ�С���̡�������\n������Ų����޷��Զ�����",function() end,"Yes")
			AssistChJT.IsAddMoney=false
			TF.Sysmsg("�ر�ˢǮ",AssistChJT.AssistChJTTitle)	
			return
		end
		AssistChJT.openJT() 
   else
		AssistChJT.IsAddMoney=false
		TF.Sysmsg("�ر�ˢǮ",AssistChJT.AssistChJTTitle)		
   end
end

function AssistChJT.SellAnQi()
   local player = GetClientPlayer()
   	fr=Station.Lookup("Normal/DialoguePanel")  
	if not fr or not fr:IsVisible() then return end 
	local nType,nID,nIdx,aInfo=fr.dwTargetType, fr.dwTargetId, fr.dwIndex,fr.aInfo
	
	nGold=player.GetMoney()["nGold"]
	if nGold>970000 then  
		TF.Alert("��Ǯ���ޡ��Զ�ˢ��ر�\n",function() end, "Yes")   --������棡����  
		TF.Sysmsg("�ر�ˢǮ",AssistChJT.AssistChJTTitle)	
			player.WindowSelect(nIdx, AssistChJT.clrbagIndex)
		AssistChJT.IsAddMoney=false  
	return end
	
	if AssistChJT.AMStep==1 then
		player.WindowSelect(AssistChJT._jtID, AssistChJT.clrbagIndex) 	-- clrbag    
	elseif AssistChJT.AMStep==2 then		
		player.WindowSelect(AssistChJT._jtID, AssistChJT.pveeqIndex) 	 
	elseif  AssistChJT.AMStep==3 or AssistChJT.AMStep==4 then 
		if aInfo[11]["context"]=="��ȡ435ƷPVEװ��" then player.WindowSelect(AssistChJT._jtID, 4)	end 
	elseif AssistChJT.AMStep==5 then 	
	AssistChJT.AMStep=0 
		for i = 1, 5 do
			local dwBox = INVENTORY_INDEX.PACKAGE + i - 1
			local dwSize = player.GetBoxSize(dwBox) - 1
			for dwX = 0, dwSize do
				local item = GetPlayerItem(player, dwBox, dwX)
				local nCount = 1
				if item.nUiId>=55797 and item.nUiId<=55802 then					
					SellItem(AssistChJT._nNpcID, AssistChJT._nShopID, dwBox, dwX, nCount)	--��0G�Զ���װ��ShopID����������ȡ��
				end
			end
			AssistChJT.openJT() 
		end
	end
	AssistChJT.AMStep=AssistChJT.AMStep+1
end

 
RegisterEvent("SHOP_OPENSHOP", AssistChJT.OnOpenShop)
 
 
TF.AppendPlayerMenu(function()
	return {
		szOption ="������ң����", bCheck = true,
		bChecked = AssistChJT.bFrameOpened, 
		fnAction = AssistChJT._OpenWindow,
		}
end)
 
 

TF.AddHotKey("XYZSOM", "������ң�������", AssistChJT._OpenWindow)

-------------------------------------
-- ���ý���
-------------------------------------
_AssistChJT={}
_AssistChJT.PS = {}

-- init
_AssistChJT.PS.OnPanelActive = function(frame)
	local ui = TF.UI(frame)
	-- feature
	nX,_=ui:Append("WndButton", "Button_OpJTPanel", { txt = "�����", x = 0, y = 5 , }):Size(80, 28):Click(function() AssistChJT._OpenWindow() end):Pos_()
	_,nY=ui:Append("WndButton", "Button_SetJTHotK", { txt = "���ÿ�ݼ�", x = nX+10, y = 5 , font = 185, }):Size(120, 28):Click(function() HotkeyPanel_Open("�����ר�ò������") end):Pos_()	
	_,nY=ui:Append("Text", { txt =  "������˵����" , x = 0, y = nY+14, }):Pos_()
	_,nY=ui:Append("Text", { txt =  "��1������ѡ��[���졤��ң]���ܣ���������" , x = 0, y = nY+12, }):Pos_()
	_,nY=ui:Append("Text", { txt =  "��2���Զ�ˢ��" , x = 0, y = nY+12, }):Pos_()
--	ui:Append("Text", { txt =  "By ΢��ƾ��" , x = 340, y =340, font = 205 })
end

 
---------------------------------------------------------------------
-- ע���¼�����ʼ��
---------------------------------------------------------------------
-- add to TF panel
TF.RegisterPanel("������ң����", 637, "��������", _AssistChJT.PS)