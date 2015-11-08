AutoSure={
	bActiveSlot=true,
	bSellItem=false,
	bDropItem=false, 
	bResTrade=false,
	bResHorse=false,
	bFinishQuest=false,
--	bReColorS=true,
 
}
TF.RegisterCustomData("AutoSure")
 

function AutoSure.WhichMsgBox()		
	if AutoSure.bActiveSlot then 
		AutoSure.DoMsgBox("ActiveSlotSure")  
		AutoSure.DoMsgBox("MountSlotSure")  
	end	
	if AutoSure.bFinishQuest then
		AutoSure.DoMsgBox("QuestReachMaxValueWarning")
	end
	if AutoSure.bSellItem then
		AutoSure.DoMsgBox("SellItemSure")
	end
	if AutoSure.bDropItem then
		AutoSure.DoMsgBox("DropItemSure")
	end
	if AutoSure.bResTrade then
		AutoSure.DoMsgBox("TradingInvite")
	end
	if AutoSure.bResHorse then
		AutoSure.DoMsgBox("OnInviteFollow")
	end
end

function AutoSure.DoMsgBox(szName, i)
local frame=Station.Lookup("Topmost/MB_"..szName) or Station.Lookup("Topmost2/MB_"..szName) 
	if frame then 
		i = i or 1
		local btn = frame:Lookup("Wnd_All/Btn_Option" .. i) 
		if btn and btn:IsEnabled() then 
			if btn.fnAction then
				if frame.args then
					btn.fnAction(unpack(frame.args))
				else
					btn.fnAction()
				end
			elseif frame.fnAction then
				if frame.args then
					frame.fnAction(i, unpack(frame.args))
				else
					frame.fnAction(i)
				end
			end
			frame.OnFrameDestroy = nil
			CloseMessageBox(szName)
		end 
	end 
end
 

RegisterEvent("RENDER_FRAME_UPDATE",function() AutoSure.WhichMsgBox() end)

  
 TF.AppendPlayerMenu(function()
	return {
		szOption ="������ʯ��ȷ��", bCheck = true,
		bChecked = AutoSure.bActiveSlot,  
		fnAction = function() AutoSure.bActiveSlot = not AutoSure.bActiveSlot end,
		}
end)
 TF.AppendPlayerMenu(function()
	return {
		szOption ="�������������", bCheck = true,
		bChecked = AutoSure.bFinishQuest,  
		fnAction = function()  AutoSure.bFinishQuest = not AutoSure.bFinishQuest end,
		}
end)
 TF.AppendPlayerMenu(function()
	return {
		szOption ="������Ʒ��ȷ��", bCheck = true,
		bChecked = AutoSure.bSellItem,  
		fnAction = function()  AutoSure.bSellItem = not AutoSure.bSellItem end,
		}
end)
TF.AppendPlayerMenu(function()
	return {
		szOption ="�ݻ���Ʒ��ȷ��", bCheck = true,
		bChecked = AutoSure.bDropItem,  
		fnAction = function()  AutoSure.bDropItem = not AutoSure.bDropItem end,
		}
end)
TF.AppendPlayerMenu(function()
	return {
		szOption ="���ܽ�����ȷ��", bCheck = true,
		bChecked = AutoSure.bResTrade,  
		fnAction = function()  AutoSure.bResTrade = not AutoSure.bResTrade end,
		}
end)
 TF.AppendPlayerMenu(function()
	return {
		szOption ="����˫����ȷ��", bCheck = true,
		bChecked = AutoSure.bResHorse,  
		fnAction = function()  AutoSure.bResHorse = not AutoSure.bResHorse end,
		}
end) 

--TF.AppendPlayerMenu( { bDevide = true }) 
 
 
-------------------------------------
-- ���ý���
-------------------------------------
_AutoSure={}
_AutoSure.PS = {}

-- init
_AutoSure.PS.OnPanelActive = function(frame)
	local ui = TF.UI(frame)
	-- feature
	nX,nY=ui:Append("Text",  { txt = "������˵����������Ϣ���Զ�ȷ��", x = 0, y = 5 , }):Pos_()
	nX,_=ui:Append("WndCheckBox", "CheckBox_bActiveSlot",{ txt ="������ʯ�����ʯ��ȷ��", x = 5, y = nY+20, checked = AutoSure.bActiveSlot}):Click(function(bChecked) AutoSure.bActiveSlot = bChecked  end):Pos_()
	_,nY=ui:Append("WndCheckBox", "CheckBox_bFinishQuest",{ txt ="�������������", x = 240, y = nY+20, checked = AutoSure.bFinishQuest }):Click(function(bChecked) AutoSure.bFinishQuest = bChecked  end):Pos_()
	nX,_=ui:Append("WndCheckBox", "CheckBox_bSellItem",{ txt ="������Ʒ������Ʒ��ȷ��", x =5, y = nY+12, checked = AutoSure.bSellItem }):Click(function(bChecked) AutoSure.bSellItem = bChecked  end)
	_,nY=ui:Append("WndCheckBox", "CheckBox_bDropItem",{ txt ="�ݻ���Ʒ��ȷ��", x = 240, y = nY+12,  checked = AutoSure.bDropItem}):Click(function(bChecked) AutoSure.bDropItem = bChecked  end):Pos_()
	nX,_=ui:Append("WndCheckBox", "CheckBox_bResTrade",{ txt ="�Զ����ܽ���", x = 5, y = nY+12,  checked = AutoSure.bResTrade}):Click(function(bChecked) AutoSure.bResTrade = bChecked  end)
	ui:Append("WndCheckBox", "CheckBox_bResHorse_On",{ txt ="�Զ�����˫������", x = 240, y = nY+12, checked = AutoSure.bResHorse }):Click(function(bChecked) AutoSure.bResHorse = bChecked  end):Pos_()	
--	ui:Append("Text", { txt =  "By ΢��ƾ��" , x = 340, y =340, font = 205 })
end
 
	
---------------------------------------------------------------------
-- ע���¼�����ʼ��
---------------------------------------------------------------------
-- add to TF panel
TF.RegisterPanel("�Զ���Ϣȷ��", 7172, "�Զ�����", _AutoSure.PS)