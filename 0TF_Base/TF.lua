 --
-- TF����������ú����⡢UI �������
--
 
---------------------------------------------------------------------
-- ���غ����ͱ���
---------------------------------------------------------------------
 local _TF = {
	bFrameOpened=false,
	szTitle="���ר�ò����",
	szShort="[������] ",
	dwVersion= 0x2030100,		--�汾��ά��
	szBuildDate="20151201",	--��������ά��
	szIniFile = "Interface\\TF\\0TF_Base\\TF.ini",
	tClass = {"���й���","��������","�Զ�����","������ǿ","�����Ϣ"},	--All,tTool,Auto,UI,Info
	tItem = { {}, {}, {}, {}, {} },
	tMenu={},
	tMenuTrace = {},
	tHotkey={},
	tDelayCall = {},
	tBreatheCall = {},
	tCustomUpdateCall = {},
	tTempTarget = {},
	nDebug = 1,
	tAnchor={},
	tRequest={},
	aDoodad = {},	
	tEvent = {},	
}	
 
 
-------------------------------------
-- ������忪�ء���ʼ��
-------------------------------------
 -- open
_TF.OpenPanel = function()
	local frame = Station.Lookup("Normal/TF") or Wnd.OpenWindow(_TF.szIniFile, "TF") 
	frame:Show()
	frame:BringToTop()
	return frame
end

-- close
_TF.ClosePanel = function()
	local frame = Station.Lookup("Normal/TF")
	if frame then 
		frame:Hide()
	end
end
  
-- toggle
_TF.TogglePanel = function()
	if _TF.frame and _TF.frame:IsVisible() then
		_TF.ClosePanel()
	else
		_TF.OpenPanel()
	end
end

-- initlization   
_TF.Init = function()
	local pFrame = Player_GetFrame()
	local hFrame = _TF.OpenPanel("TF")
	-- button	
	local button = pFrame:Lookup("TF_Button")
	if not button then
		button = hFrame:Lookup("Btn_Menu")
		button:SetName("TF_Button")
		button:ChangeRelation(pFrame, true, true)
		button.OnMouseEnter = function()
			local nX, nY = this:GetAbsPos()
			local nW, nH = this:GetSize()
			local szTip = GetFormatText("<" .. _TF.szTitle .. ">\n", 101) .. GetFormatText("�����򿪹������ý���!\n�ҵ�ID��  "..UI_GetClientPlayerID(), 106)
			OutputTip(szTip, 400, {nX, nY, nW, nH})
		end
		button.OnLButtonClick =  _TF.TogglePanel
		button.OnRButtonClick =  _TF.TogglePanel
		button:Show()
	end
	--  hide
	hFrame:Hide()
	--�ȼ� ��ݼ�����
	Hotkey.AddBinding("TF_MenuToggle","�����ý��濪��", "�����ר�ò������",_TF.TogglePanel, nil)
	for _, v in ipairs(_TF.tHotkey) do
		Hotkey.AddBinding(v.szName, v.szTitle, "", v.fnAction, nil)
	end

end  

 
-------------------------------------
-- ����غ���
-------------------------------------
-- handle event
_TF.EventHandler = function(szEvent)
	local tEvent = _TF.tEvent[szEvent]
	if tEvent then
		for k, v in pairs(tEvent) do
			local res, err = pcall(v)
			if not res then
				TF.Debug("EVENT#" .. szEvent .. "." .. k .." ERROR: " .. err)
			end
		end
	end
end


_TF.UpdateAnchor = function(frame)
	local a = _TF.tAnchor
	if not IsEmpty(a) then
		frame:SetPoint(a.s, 0, 0, a.r, a.x, a.y)
	else
		frame:SetPoint("CENTER", 0, 0, "CENTER", 0, 0)
	end
end

 -- register conflict checker
_TF.RegisterConflictCheck = function(fnAction)
	_TF.tConflict = _TF.tConflict or {}
	table.insert(_TF.tConflict, fnAction)
end
-------------------------------------
-- ��������������
-------------------------------------
-- update scrollbar
_TF.UpdateListScroll = function()
	local handle, scroll = _TF.hList, _TF.hScroll
	local w, h = handle:GetSize()
	local wA, hA = handle:GetAllItemSize()
	local nStep = math.ceil((hA - h) / 10)
	scroll:SetStepCount(nStep)
	if nStep > 0 then
		scroll:Show()
		scroll:GetParent():Lookup("Btn_Up"):Show()
		scroll:GetParent():Lookup("Btn_Down"):Show()
	else
		scroll:Hide()
		scroll:GetParent():Lookup("Btn_Up"):Hide()
		scroll:GetParent():Lookup("Btn_Down"):Hide()
	end
end

-- updae detail content
_TF.UpdateDetail = function(i, data)
	local win = TF.UI.Fetch(_TF.frame, "Wnd_Detail")
	if win then win:Remove() end
	if not data then
		data = {}
		if TF_About then			
			if not i then	-- default
				data.fn = {
					OnPanelActive = TF_About.OnPanelActive,
					GetAuthorInfo = TF_About.GetAuthorInfo,
				}
			elseif TF_About.OnTaboxCheck then	-- switch
				data.fn = {
					OnPanelActive = function(frame) TF_About.OnTaboxCheck(frame, i, _TF.tClass[i]) end,
					GetAuthorInfo = TF_About.GetAuthorInfo
				}
			end
		end
	end
	win = TF.UI.Append(_TF.frame, "WndActionWindow", "Wnd_Detail")
	win:Size(_TF.hContent:GetSize()):Pos(_TF.hContent:GetRelPos())
	if type(data.fn) == "table" then
		local szInfo = ""
		if data.fn.GetAuthorInfo then
			szInfo = "-- by " .. data.fn.GetAuthorInfo() .. " --"
		end
		_TF.hTotal:Lookup("Text_Author"):SetText(szInfo)
		if data.fn.OnPanelActive then
			data.fn.OnPanelActive(win:Raw())
			win.handle:FormatAllItemPos()
		end
		win.fnDestroy = data.fn.OnPanelDeactive
	end
end

-- create menu item
_TF.NewListItem = function(i, data, dwClass)		--��չ����uiͼƬ  string�ṩͼƬ·��
	local handle = _TF.hList
	local item = TF.UI.Append(handle, "BoxButton", "Button_" .. i)
	if type(data.dwIcon)=="number" then 
		item:Icon(data.dwIcon):Text(data.szTitle):Click(function()
			_TF.UpdateDetail(dwClass, data)
		end, true, true)
	elseif type(data.dwIcon)=="string" then
		item:File(data.dwIcon):Text(data.szTitle):Click(function()
			_TF.UpdateDetail(dwClass, data)
		end, true, true)
	end
	return item
end

-- update menu list
_TF.UpdateListInfo = function(nIndex)
	local nX, nY = 0, 14
	_TF.hList:Clear()
	_TF.hScroll:ScrollHome()
	_TF.UpdateDetail(nIndex)
	for k, v in ipairs(_TF.tItem[nIndex]) do
		local item = _TF.NewListItem(k, v, nIndex)
		item:Pos(nX, nY)
		nY = nY + 50
	end
	_TF.UpdateListScroll()
end

-- update tab list
_TF.UpdateTabBox = function(frame)
	local nX, nY, first = 25, 52, nil
	for k, v in ipairs(_TF.tClass) do
		if table.getn(_TF.tItem[k]) > 0 then
			local tab = frame:Lookup("TabBox_" .. k)
			if not tab then
				tab = TF.UI.Append(frame, "WndTabBox", "TabBox_" .. k, { group = "Nav" })
			else
				tab = TF.UI.Fetch(tab)
			end
			tab:Text(v):Pos(nX, nY):Click(function(bChecked)
				if bChecked then
					_TF.UpdateListInfo(k)
				end
			end):Check(false)
			if not first then
				first = tab
			end
			local nW, _ = tab:Size()
			nX = nX + math.ceil(nW) + 10
		end
	end
	if first then
		first:Check(true)
	end
end

-------------------------------------
-- ϵͳ HOOK
-------------------------------------
-- get main menu
_TF.GetPlugMenu = function()
	return {
		szOption = _TF.szTitle,
		fnAction = _TF.TogglePanel,
		bCheck = true,
		bChecked = _TF.frame and _TF.frame:IsVisible(),
		szIcon = 'ui/Image/UICommon/CommonPanel2.UITex',
		nFrame = 105,
		nMouseOverFrame = 106,
		szLayer = "ICON_RIGHT",
		fnClickIcon = _TF.TogglePanel
	}
end
 
 ---------------------------------------------------------------------
-- ȫ�ֺ����ͱ���     TF.XXX   
---------------------------------------------------------------------


TF = {
	szTitle = _TF.szTitle,						-- ���������
	szBuildDate = _TF.szBuildDate,		-- �����������
--	nBuildDate = 0,	-- ���͵ĸ������ڣ����� CustomData��
}
--RegisterCustomData("TF.nBuildDate")
 
TF.GetVersion = function()
	local v = _TF.dwVersion
	local szVersion = string.format("%d.%d.%d", v/0x1000000,
		math.floor(v/0x10000)%0x100, math.floor(v/0x100)%0x100)
	if  v%0x100 ~= 0 then
		szVersion = szVersion .. "b" .. tostring(v%0x100)
	end
	return szVersion, v
end

TF.GetCustomFile = function(szName, szDefault)
	local szPath = "interface\\TFcustom\\" .. szName
	if IsFileExist(szPath) then
		return szPath
	end
	return szDefault
end



TF.AddEnterButton=function(frame,szBtnName,szFile,szBtnTemplate,rpX,rpY,tips,fnClick)		
	if frame and frame:IsVisible() then
		local btn=frame:Lookup(szBtnName)
		if not btn then  
			local fx=Wnd.OpenWindow(szFile,"YL_Temp")	
			if fx then													
				fx:Show()
				fx:BringToTop()	 
				local itm=fx:Lookup(szBtnTemplate)
				if itm then
					itm:ChangeRelation(frame,true,true)  
					itm:SetName(szBtnName)
					itm:SetRelPos(rpX,rpY)				 
					itm.OnMouseLeave=function() HideTip() end
					itm.OnMouseEnter=function() TF.ShowTip(tips) end 	
					itm.OnLButtonClick=function()  fnClick() end				 
					itm.OnLButtonHold=function()  fnClick() end				
				end
			end
			Wnd.CloseWindow(fx)
		end
	end
end

 

 -- (void) TF.AddHotKey(string szName, string szTitle, func fnAction)	-- ����ϵͳ��ݼ�
TF.AddHotKey = function(szName, szTitle, fnAction)
	if string.sub(szName, 1, 3) ~= "TF_" then
		szName = "TF_" .. szName
	end
	table.insert(_TF.tHotkey, { szName = szName, szTitle = szTitle, fnAction = fnAction })
end

-- (string) TF.GetHotKey(string szName, boolean bBracket, boolean bShort)		-- ȡ�ÿ�ݼ�����
TF.GetHotKey = function(szName, bBracket, bShort)
	if string.sub(szName, 1, 3) ~= "TF_" then
		szName = "TF_" .. szName
	end
	local nKey, bShift, bCtrl, bAlt = Hotkey.Get(szName)
	local szKey = GetKeyShow(nKey, bShift, bCtrl, bAlt, bShort == true)
	if szKey ~= "" and bBracket then
		szKey = "(" .. szKey .. ")"
	end
	return szKey
end

function TF.GMOW()
	TF.Sysmsg(Station.GetMouseOverWindow():GetTreePath())
end

function TF.ShowTip(str,fontscheme)		
	local nX, nY = this:GetAbsPos()
	local nW, nH = this:GetSize()
	fontscheme=fontscheme or 185		 --101 Ĭ�ϳ�ɫ����  ������  ����185����
	if not string.find(str,"font=") then		
		str=GetFormatText(str, fontscheme)
	end	
	OutputTip(str, 400, {nX, nY, nW, nH})
end


--Alert 
TF.Alert = function(szMsg, fnAction1,  szSure , fnAction2, szCancel)
	local nW, nH = Station.GetClientSize()
	local tMsg = {
		x = nW / 2, y = nH / 2, szMessage = szMsg, szName = "_JT_Alert",
		{
			szOption = szSure or g_tStrings.STR_HOTKEY_SURE,
			fnAction = fnAction1,
		},
	}
	if fnAction2 or szCancel then 
		table.insert(tMsg,{
			szOption = szCancel or g_tStrings.STR_HOTKEY_CANCEL,
			fnAction = fnAction2,		
		})
	end
	MessageBox(tMsg)
end 

-- (boolean) TF.IsPanelOpened()			-- �ж���������Ƿ��Ѵ�
TF.IsPanelOpened = function()
	return _TF.frame and _TF.frame:IsVisible()
end

-- (void) TF.OpenPanel()							-- ���������
-- (void) TF.OpenPanel(string szTitle)		-- ������Ϊ szTitle �Ĳ����������ý���
TF.OpenPanel = function(szTitle)
	_TF.OpenPanel(szTitle ~= nil)
	if szTitle then
		local nClass, nItem = 0, 0
		for k, v in ipairs(_TF.tItem) do
			if _TF.tClass[k] == szTitle then
				nClass = k
			end
			for kk, vv in ipairs(v) do
				if vv.szTitle == szTitle then
					nClass, nItem = k, kk
					break
				end
			end
			if nClass ~= 0 then
				break
			end
		end
		if nClass ~= 0 then
			TF.UI.Fetch(_TF.frame, "TabBox_" .. nClass):Check(true)
			if nItem ~= 0 then
				TF.UI.Fetch(_TF.hList, "Button_" .. nItem):Click()
			end
		end
	end
end
-- (void) TF.ClosePanel()				--  �����������
-- (void) TF.ClosePanel(true)		-- ���׹ر�������崰��
TF.ClosePanel = _TF.ClosePanel

-- (void) TF.TogglePanel()			-- ��ʾ/�����������
TF.TogglePanel = _TF.TogglePanel
 
-- ����������һ��������ð�Ŧ������
-- (void) TF.RegisterPanel(string szTitle, number dwIcon, string szClass, table fn)
-- szTitle		-- �������
--	dwIcon		-- ͼ�� ID
--	szClass		-- �������ƣ���Ϊ nil ������
--	fn {			-- ������
--		OnPanelActive = (void) function(WndWindow frame),		-- ������弤��ʱ���ã�����Ϊ���û���Ĵ������
--		OnPanelDeactive = (void) function(WndWindow frame),	-- *��ѡ* ������屻�г�ʱ���ã�����ͬ��
--		OnConflictCheck = (void) function(),								-- *��ѡ* �����ͻ��⺯����ÿ�����ߺ����һ�Σ�
--		OnPlayerMenu = (table) function(),									-- *��ѡ* ���ظ��ӵ�ͷ��˵�
--		GetAuthorInfo = (string) function(),									-- *��ѡ* ���ظò�������ߡ���Ȩ��Ϣ
--	}
TF.RegisterPanel = function(szTitle, dwIcon, szClass, fn)
	-- find class
	local dwClass = nil
	if not szClass then
		dwClass = 1
	else
		for k, v in ipairs(_TF.tClass) do
			if v == szClass then
				dwClass = k
			end
		end
		if not dwClass then
			table.insert(_TF.tClass, szClass)
			dwClass = table.getn(_TF.tClass)
			_TF.tItem[dwClass] = {}
		end
	end
	-- check to update
	for _, v in ipairs(_TF.tItem[dwClass]) do
		if v.szTitle == szTitle then
			v.dwIcon, v.fn, dwClass = dwIcon, fn, nil
			break
		end
	end
	-- create new one
	if dwClass then
		table.insert(_TF.tItem[dwClass], { szTitle = szTitle, dwIcon = dwIcon, fn = fn })
	end
	if _TF.frame then
		_TF.UpdateTabBox(_TF.frame)
	end
	if fn and fn.OnConflictCheck then
		_TF.RegisterConflictCheck(fn.OnConflictCheck)
	end
end

-- (table) TF.GetPanelFunc(szTitle)		-- ��ȡ Hook ĳ������ĳ�ʼ������
TF.GetPanelFunc = function(szTitle)
	for k, v in ipairs(_TF.tItem) do
		for kk, vv in ipairs(v) do
			if vv.szTitle == szTitle then
				return vv.fn
			end
		end
	end
end

-- �Ǽ���Ҫ��ʱ��ΪĿ�����ң��ڷ�ս��״̬����ʱ�л�Ŀ�꣬�Ի�ȡĿ����ҵ��ڹ���
-- (void) TF.RegisterTempTarget(number dwID)
-- dwID		-- ��Ҫ��ע����� ID
TF.RegisterTempTarget = function(dwID)
	table.insert(_TF.tTempTarget, dwID)
end

-- �Ǽ���Ҫ��ӵ�ͷ��˵�����Ŀ
-- (void) TF.AppendPlayerMenu(table menu | func fnMenu)
-- menu 		-- Ҫ��ӵĵĲ˵���򷵻ز˵���ĺ���
TF.AppendPlayerMenu = function(menu)
	table.insert(_TF.tMenu, menu)
end

-- �Ǽ�С���ֲ˵���Ŀ
-- (void) TF.AppendTraceMenu(table menu | func fnMenu)
-- menu 		-- Ҫ��ӵĵĲ˵���򷵻ز˵���ĺ���
TF.AppendTraceMenu = function(menu)
	table.insert(_TF.tMenuTrace, menu)
end

-- �����������һ�λ��֣�ֻ�е�ǰ�û��ɼ���
-- (void) TF.Sysmsg(string szMsg[, string szHead])
-- szMsg		-- Ҫ�������������
--	szHead		-- ���ǰ׺���Զ����������ţ�Ĭ��Ϊ���������
TF.Sysmsg = function(szMsg, szHead, szType)
	szHead = szHead or _TF.szShort
	szType = szType or "MSG_SYS"
	OutputMessage(szType, szHead.. szMsg .. "\n")  --"[" ..    .. "] " 
end

-- �����������������Ϣ���� TF.Sysmsg ���ƣ�����2���������ֵķ��ű��
-- (void) TF.Debug(string szMsg[, string szHead])
-- (void) TF.Debug2(string szMsg[, string szHead])
-- (void) TF.Debug3(string szMsg[, string szHead])
TF.Debug = function(szMsg, szHead, nLevel)
	nLevel = nLevel or 1
	if TF_About and TF_About.bDebug and _TF.nDebug >= nLevel then
		if nLevel == 3 then szMsg = "### " .. szMsg
		elseif nLevel == 2 then szMsg = "=== " .. szMsg
		else szMsg = "-- " .. szMsg end
		TF.Sysmsg(szMsg, szHead)
	end
end
TF.Debug2 = function(szMsg, szHead) TF.Debug(szMsg, szHead, 2) end
TF.Debug3 = function(szMsg, szHead) TF.Debug(szMsg, szHead, 3) end

 
-- ע�����ѭ�����ú���
-- (void) TF.BreatheCall(string szKey, func fnAction[, number nTime])
-- szKey		-- ���ƣ�����Ψһ���ظ��򸲸�
-- fnAction	-- ѭ���������ú�������Ϊ nil ���ʾȡ����� key �µĺ���������
-- nTime		-- ���ü������λ�����룬Ĭ��Ϊ 62.5����ÿ����� 16�Σ���ֵ�Զ�������� 62.5 ��������
TF.BreatheCall = function(szKey, fnAction, nTime)
	local key = StringLowerW(szKey)
	if type(fnAction) == "function" then
		local nFrame = 1
		if nTime and nTime > 0 then
			nFrame = math.ceil(nTime / 62.5)
		end
		_TF.tBreatheCall[key] = { fnAction = fnAction, nNext = GetLogicFrameCount() + 1, nFrame = nFrame }
	else
		_TF.tBreatheCall[key] = nil
	end
end

-- �ı��������Ƶ��
-- (void) TF.BreatheCallDelay(string szKey, nTime)
-- nTime		-- �ӳ�ʱ�䣬ÿ 62.5 �ӳ�һ֡
TF.BreatheCallDelay = function(szKey, nTime)
	local t = _TF.tBreatheCall[StringLowerW(szKey)]
	if t then
		t.nFrame = math.ceil(nTime / 62.5)
		t.nNext = GetLogicFrameCount() + t.nFrame
	end
end

-- �ӳ�һ�κ��������ĵ���Ƶ��
-- (void) TF.BreatheCallDelayOnce(string szKey, nTime)
-- nTime		-- �ӳ�ʱ�䣬ÿ 62.5 �ӳ�һ֡
TF.BreatheCallDelayOnce = function(szKey, nTime)
	local t = _TF.tBreatheCall[StringLowerW(szKey)]
	if t then
		t.nNext = GetLogicFrameCount() + math.ceil(nTime / 62.5)
	end
end

-- (void) TF.DelayCall(number nDelay, func fnAction)		-- �ӳٵ���
-- nTime		-- �ӳٵ���ʱ�䣬��λ�����룬ʵ�ʵ����ӳ��ӳ��� 62.5 ��������
-- fnAction	-- ���ú���
TF.DelayCall = function(nDelay, fnAction)
	local nTime = nDelay + GetTime()
	table.insert(_TF.tDelayCall, { nTime = nTime, fnAction = fnAction })
end

 
-- (table) TF.GetAllDoodad([number nLimit])		-- ��ȡ�����ڵ����� DOODAD
-- nLimit -- �������ޣ�Ĭ�ϲ���
TF.GetAllDoodad = function(nLimit)
	local aDoodad = {}
	for k, _ in pairs(_TF.aDoodad) do
		local p = GetDoodad(k)
		if not p then
			_TF.aDoodad[k] = nil
		else
			table.insert(aDoodad, p)
			if nLimit and #aDoodad == nLimit then
				break
			end
		end
	end
	return aDoodad
end

-- (table) TF.GetAllDoodadID()			-- ��ȡ�����ڵ� Doodad ID �б�
TF.GetAllDoodadID = function()
	return _TF.aDoodad
end

-- ����Ŀ��������ľ���
-- (number) TF.GetDistance(KObject tar)
-- (number) TF.GetDistance(number nX, number nY[, number nZ])
-- tar		-- ���� nX��nY��nZ �����Ե� table �� KPlayer��KNpc��KDoodad
-- nX		-- ��������ϵ�µ�Ŀ��� X ֵ
-- nY		-- ��������ϵ�µ�Ŀ��� Y ֵ
-- nZ		-- *��ѡ* ��������ϵ�µ�Ŀ��� Z ֵ
TF.GetDistance = function(nX, nY, nZ)
	local me = GetClientPlayer()
	if not me then
		return 0
	elseif not nY and not nZ then
		local tar = nX
		nX, nY, nZ = tar.nX, tar.nY, tar.nZ
	elseif not nZ then
		return math.floor(((me.nX - nX) ^ 2 + (me.nY - nY) ^ 2) ^ 0.5)/64
	end
	return math.floor(((me.nX - nX) ^ 2 + (me.nY - nY) ^ 2 + (me.nZ/8 - nZ/8) ^ 2) ^ 0.5)/64
end

 -- ׷��С��ͼ���
-- (void) TF.UpdateMiniFlag(number dwType, KObject tar, number nF1[, number nF2])
-- dwType	-- ���ͣ�8 - ������5 - Doodad��7 - ���� NPC��2 - ��ʾ�㣬1 - ���ѣ�4 - ���� NPC
-- tar			-- Ŀ����� KPlayer��KNpc��KDoodad
-- nF1			-- ͼ��֡��
-- nF2			-- ��ͷ֡�Σ�Ĭ�� 48 ����
TF.UpdateMiniFlag = function(dwType, tar, nF1, nF2)
	local nX, nZ = Scene_PlaneGameWorldPosToScene(tar.nX, tar.nY)
	local m = Station.Lookup("Normal/Minimap/Wnd_Minimap/Minimap_Map")
	if m then
		m:UpdataArrowPoint(dwType, tar.dwID, nF1, nF2 or 48, nX, nZ, 16)
	end
end


-- (table) TF.Split(string szFull, string szSep)		-- ���� szSep �ָ��ַ��� szFull����֧�ֱ��ʽ
TF.Split = function(szFull, szSep)
	local nOff, tResult = 1, {}
	while true do
		local nEnd = StringFindW(szFull, szSep, nOff)
		if not nEnd then
			table.insert(tResult, string.sub(szFull, nOff, string.len(szFull)))
			break
		else
			table.insert(tResult, string.sub(szFull, nOff, nEnd - 1))
			nOff = nEnd + string.len(szSep)
		end
	end
	return tResult
end

-- (string) TF.Trim(string szText)				-- ����ַ�����β�Ŀհ��ַ�
TF.Trim = function(szText)
	if not szText or szText == "" then
		return ""
	end
	return (string.gsub(szText, "^%s*(.-)%s*$", "%1"))
end

-- ע���¼�����ϵͳ���������ڿ���ָ��һ�� KEY ��ֹ��μ���
-- (void) TF.RegisterEvent(string szEvent, func fnAction[, string szKey])
-- szEvent		-- �¼������ں����һ���㲢����һ����ʶ�ַ������ڷ�ֹ�ظ���ȡ���󶨣��� LOADING_END.xxx
-- fnAction		-- �¼���������arg0 ~ arg9������ nil �൱��ȡ�����¼�
--�ر�ע�⣺�� fnAction Ϊ nil ���� szKey ҲΪ nil ʱ��ȡ������ͨ��������ע����¼�������
TF.RegisterEvent = function(szEvent, fnAction)
	local szKey = nil
	local nPos = StringFindW(szEvent, ".")
	if nPos then
		szKey = string.sub(szEvent, nPos + 1)
		szEvent = string.sub(szEvent, 1, nPos - 1)
	end
	if not _TF.tEvent[szEvent] then
		_TF.tEvent[szEvent] = {}
		RegisterEvent(szEvent, function() _TF.EventHandler(szEvent) end)
	end
	local tEvent = _TF.tEvent[szEvent]
	if fnAction then
		if not szKey then
			table.insert(tEvent, fnAction)
		else
			tEvent[szKey] = fnAction
		end
	else
		if not szKey then
			_TF.tEvent[szEvent] = {}
		else
			tEvent[szKey] = nil
		end
	end
end

-- ȡ���¼�������
-- (void) TF.UnRegisterEvent(string szEvent)
TF.UnRegisterEvent = function(szEvent)
	TF.RegisterEvent(szEvent, nil)
end

-- ע���û��������ݣ�֧��ȫ�ֱ����������
-- (void) TF.RegisterCustomData(string szVarPath)
TF.RegisterCustomData = function(szVarPath)
	if _G and type(_G[szVarPath]) == "table" then
		for k, _ in pairs(_G[szVarPath]) do
			RegisterCustomData(szVarPath .. "." .. k)
		end
	else
		RegisterCustomData(szVarPath)
	end
end

-- Role Custom Data ���غ��жϱȽ� nUpdateDate Ȼ����� fnAction
-- (void) TF.RegisterCustomUpdater(func fnAction, number nUpdateDate)
TF.RegisterCustomUpdater = function(fnAction, nUpdateDate)
	table.insert(_TF.tCustomUpdateCall, { nDate = nUpdateDate, fnAction = fnAction })
end

--Entrance/Access
 

 _TF.GetPlayerMenu=function()
  	local m0, n = _TF.GetPlugMenu(), 0
	for _, v in ipairs(_TF.tMenu) do
		if type(v) == "function" then
			table.insert(m0, v())
		else
			table.insert(m0, v)
		end
	end
	return { m0 }
 end
 
 _TF.GetPlugMenu=function()
	return  {	 
		szOption ="���ר�ò����", bCheck = true,
		bChecked = _TF.bFrameOpened,
		fnAction = _TF.TogglePanel,
			{ szOption ="v"..TF.GetVersion(), bDisable = true, },	--.._TF.szBuildDate
			{ bDevide = true }
	}
 end

 --ͷ��menu	
   	Player_AppendAddonMenu({ _TF.GetPlayerMenu })
 --�����
	TraceButton_AppendAddonMenu({ _TF.GetPlayerMenu })
  

---------------------------------------------------------------------
-- ���ص� UI �������
---------------------------------------------------------------------
_TF.UI = {}

-------------------------------------
-- Base object class
-------------------------------------
_TF.UI.Base = class()

-- (userdata) Instance:Raw()		-- ��ȡԭʼ����/�������
function _TF.UI.Base:Raw()
	if self.type == "Label" then
		return self.txt
	end
	return self.wnd or self.edit or self.self
end

-- (void) Instance:Remove()		-- ɾ�����
function _TF.UI.Base:Remove()
	if self.fnDestroy then
		local wnd = self.wnd or self.self
		self.fnDestroy(wnd)
	end
	local hP = self.self:GetParent()
	if hP.___uis then
		local szName = self.self:GetName()
		hP.___uis[szName] = nil
	end
	if self.type == "WndFrame" then
		Wnd.CloseWindow(self.self)
	elseif string.sub(self.type, 1, 3) == "Wnd" then
		self.self:Destroy()
	else
		hP:RemoveItem(self.self:GetIndex())
	end
end

-- (string) Instance:Name()					-- ȡ������
-- (self) Instance:Name(szName)			-- ��������Ϊ szName ������������֧�ִ��ӵ���
function _TF.UI.Base:Name(szName)
	if not szName then
		return self.self:GetName()
	end
	self.self:SetName(szName)
	return self
end

-- (self) Instance:Toggle([boolean bShow])			-- ��ʾ/����
function _TF.UI.Base:Toggle(bShow)
	if bShow == false or (not bShow and self.self:IsVisible()) then
		self.self:Hide()
	else
		self.self:Show()
		if self.type == "WndFrame" then
			self.self:BringToTop()
		end
	end
	return self.self
end

function _TF.UI.Base:ASize()	--�����Զ�������С
	local hnd = self.self
	local nW, nH = hnd:GetSize()   
	if self.type == "Text" or self.type == "Label" then
		nW, nH = self.txt:GetTextExtent()
	end
	hnd:SetSize(nW, nH)
	return self
end

-- (number, number) Instance:Pos()					-- ȡ��λ������				
-- (self) Instance:Pos(number nX, number nY)	-- ����λ������
function _TF.UI.Base:Pos(nX, nY)
	if not nX then
		return self.self:GetRelPos()
	end
	self.self:SetRelPos(nX, nY)
	if self.type == "WndFrame" then
		self.self:CorrectPos()
	elseif string.sub(self.type, 1, 3) ~= "Wnd" then
		self.self:GetParent():FormatAllItemPos()
	end
	return self
end

-- (number, number) Instance:Pos_()			-- ȡ�����½ǵ�����
function _TF.UI.Base:Pos_()
	local nX, nY = self:Pos()
	local nW, nH = self:Size()
	return nX + nW, nY + nH
end

-- (number, number) Instance:CPos_()			-- ȡ�����һ����Ԫ�����½�����
-- �ر�ע�⣺����ͨ�� :Append() ׷�ӵ�Ԫ����Ч���Ա����ڶ�̬��λ
function _TF.UI.Base:CPos_()
	local hP = self.wnd or self.self
	if not hP.___last and string.sub(hP:GetType(), 1, 3) == "Wnd" then
		hP = hP:Lookup("", "")
	end
	if hP.___last then
		local ui = TF.UI.Fetch(hP, hP.___last)
		if ui then
			return ui:Pos_()
		end
	end
	return 0, 0
end

-- (class) Instance:Append(string szType, ...)	-- ��� UI �����
-- NOTICE��only for Handle��WndXXX
function _TF.UI.Base:Append(szType, ...)
	local hP = self.wnd or self.self
	if string.sub(hP:GetType(), 1, 3) == "Wnd" and string.sub(szType, 1, 3) ~= "Wnd" then
		hP.___last = nil
		hP = hP:Lookup("", "")
	end
	return TF.UI.Append(hP, szType, ...)
end

-- (class) Instance:Fetch(string szName)	-- �������ƻ�ȡ UI �����
function _TF.UI.Base:Fetch(szName)
	local hP = self.wnd or self.self
	local ui = TF.UI.Fetch(hP, szName)
	if not ui and self.handle then
		ui = TF.UI.Fetch(self.handle, szName)
	end
	return ui
end

-- (number, number) Instance:Align()
-- (self) Instance:Align(number nHAlign, number nVAlign)
function _TF.UI.Base:Align(nHAlign, nVAlign)
	local txt = self.edit or self.txt
	if txt then
		if not nHAlign and not nVAlign then
			return txt:GetHAlign(), txt:GetVAlign()
		else
			if nHAlign then
				txt:SetHAlign(nHAlign)
			end
			if nVAlign then
				txt:SetVAlign(nVAlign)
			end
		end
	end
	return self
end

-- (number) Instance:Font()
-- (self) Instance:Font(number nFont)
function _TF.UI.Base:Font(nFont)
	local txt = self.edit or self.txt
	if txt then
		if not nFont then
			return txt:GetFontScheme()
		end
		txt:SetFontScheme(nFont)
	end
	return self
end

-- (number, number, number) Instance:Color()
-- (self) Instance:Color(number nRed, number nGreen, number nBlue)
function _TF.UI.Base:Color(nRed, nGreen, nBlue)
	if self.type == "Shadow" then
		if not nRed then
			return self.self:GetColorRGB()
		end
		self.self:SetColorRGB(nRed, nGreen, nBlue)
	else
		local txt = self.edit or self.txt
		if txt then
			if not nRed then
				return txt:GetFontColor()
			end
			txt:SetFontColor(nRed, nGreen, nBlue)
		end
	end
	return self
end

-- (number) Instance:Alpha()
-- (self) Instance:Alpha(number nAlpha)
function _TF.UI.Base:Alpha(nAlpha)
	local txt = self.edit or self.txt or self.self
	if txt then
		if not nAlpha then
			return txt:GetAlpha()
		end
		txt:SetAlpha(nAlpha)
	end
	return self
end

-------------------------------------
-- Dialog frame
-------------------------------------
_TF.UI.Frm = class(_TF.UI.Base)

-- constructor
function _TF.UI.Frm:ctor(szName, bEmpty)
	local frm, szIniFile = nil, "interface\\TF\\0TF_Base\\ui\\WndFrame.ini"
	if bEmpty then
		szIniFile = "interface\\TF\\0TF_Base\\ui\\WndFrameEmpty.ini"
	end
	if type(szName) == "string" then
		frm = Station.Lookup("Normal/" .. szName)
		if frm then
			Wnd.CloseWindow(frm)
		end
		frm = Wnd.OpenWindow(szIniFile, szName)
	else
		frm = Wnd.OpenWindow(szIniFile)
	end
	frm:Show()
	if not bEmpty then
		frm:SetPoint("CENTER", 0, 0, "CENTER", 0, 0)
		frm:Lookup("Btn_Close").OnLButtonClick = function()
			if frm.bClose then
				Wnd.CloseWindow(frm)
			else
				frm:Hide()
			end
		end
		self.wnd = frm:Lookup("Window_Main")
		self.handle = self.wnd:Lookup("", "")
	else
		self.handle = frm:Lookup("", "")
	end
	self.self, self.type = frm, "WndFrame"
end

-- (number, number) Instance:Size()						-- ȡ�ô����͸�
-- (self) Instance:Size(number nW, number nH)	-- ���ô���Ŀ�͸�
-- �ر�ע�⣺������С�߶�Ϊ 200������Զ����ӽ�ȡ  234/380/770 �е�һ��
function _TF.UI.Frm:Size(nW, nH)
	local frm = self.self
	if not nW then
		return frm:GetSize()
	end
	local hnd = frm:Lookup("", "")
	-- empty frame
	if not self.wnd then
		frm:SetSize(nW, nH)
		hnd:SetSize(nW, nH)
		return self
	end
	-- fix size
	if nW > 400 then
		nW = 770
		hnd:Lookup("Image_CBg1"):SetSize(385, 70)
		hnd:Lookup("Image_CBg2"):SetSize(384, 70)
		hnd:Lookup("Image_CBg1"):SetFrame(2)
		hnd:Lookup("Image_CBg2"):SetFrame(2)
	elseif nW > 250 then
		nW = 380
		hnd:Lookup("Image_CBg1"):SetSize(190, 70)
		hnd:Lookup("Image_CBg2"):SetSize(189, 70)
		hnd:Lookup("Image_CBg1"):SetFrame(1)
		hnd:Lookup("Image_CBg2"):SetFrame(1)
	else
		nW = 234
		hnd:Lookup("Image_CBg1"):SetSize(117, 70)
		hnd:Lookup("Image_CBg2"):SetSize(117, 70)
		hnd:Lookup("Image_CBg1"):SetFrame(0)
		hnd:Lookup("Image_CBg2"):SetFrame(0)
	end
	if nH < 200 then nH = 200 end
	-- set size
	frm:SetSize(nW, nH)
	frm:SetDragArea(0, 0, nW, 70)
	hnd:SetSize(nW, nH)
	hnd:Lookup("Image_CBg3"):SetSize(8, nH - 160)
	hnd:Lookup("Image_CBg4"):SetSize(nW - 16, nH - 160)
	hnd:Lookup("Image_CBg5"):SetSize(8, nH - 160)
	hnd:Lookup("Image_CBg7"):SetSize(nW - 132, 85)
	hnd:Lookup("Text_Title"):SetSize(nW - 90, 30)
	hnd:FormatAllItemPos()
	frm:Lookup("Btn_Close"):SetRelPos(nW - 35, 15)
	self.wnd:SetSize(nW - 90, nH - 90)
	self.wnd:Lookup("", ""):SetSize(nW - 90, nH - 90)
	-- reset position
	local an = GetFrameAnchor(frm)
	frm:SetPoint(an.s, 0, 0, an.r, an.x, an.y)
	return self
end

-- (string) Instance:Title()					-- ȡ�ô������
-- (self) Instance:Title(string szTitle)	-- ���ô������
function _TF.UI.Frm:Title(szTitle)
	local ttl = self.self:Lookup("", "Text_Title")
	if not szTitle then
		return ttl:GetText()
	end
	ttl:SetText(szTitle)
	return self
end

-- (boolean) Instance:Drag()						-- �жϴ����Ƿ������
-- (self) Instance:Drag(boolean bEnable)	-- ���ô����Ƿ������
function _TF.UI.Frm:Drag(bEnable)
	local frm = self.self
	if bEnable == nil then
		return frm:IsDragable()
	end
	frm:EnableDrag(bEnable == true)
	return self
end

-- (string) Instance:Relation()
-- (self) Instance:Relation(string szName)	-- Normal/Lowest ...
function _TF.UI.Frm:Relation(szName)
	local frm = self.self
	if not szName then
		return frm:GetParent():GetName()
	end
	frm:ChangeRelation(szName)
	return self
end

-- (userdata) Instance:Lookup(...)
function _TF.UI.Frm:Lookup(...)
	local wnd = self.wnd or self.self
	return self.wnd:Lookup(...)
end


-------------------------------------
-- Window Component
-------------------------------------
_TF.UI.Wnd = class(_TF.UI.Base)

-- constructor
function _TF.UI.Wnd:ctor(pFrame, szType, szName)
	local wnd = nil
	if not szType and not szName then
		-- convert from raw object
		wnd, szType = pFrame, pFrame:GetType()
	else
		-- append from ini file
		local szFile = "interface\\TF\\0TF_Base\\ui\\" .. szType .. ".ini"
		local frame = Wnd.OpenWindow(szFile, "TF_Virtual")
		if not frame then
			return TF.Sysmsg("Unable to open ini file " .. szFile) --("Unable to open ini file [%s]", szFile)
		end
		wnd = frame:Lookup(szType)
		if not wnd then
			TF.Sysmsg("Can not find wnd component " .. szType) --("Can not find wnd component [%s]", szType)
		else
			wnd:SetName(szName)
			wnd:ChangeRelation(pFrame, true, true)
		end
		Wnd.CloseWindow(frame)
	end
	if wnd then
		self.type = szType
		self.edit = wnd:Lookup("Edit_Default")
		self.handle = wnd:Lookup("", "")
		self.self = wnd
		if self.handle then
			self.txt = self.handle:Lookup("Text_Default")
		end
		if szType == "WndTrackBar" then
			local scroll = wnd:Lookup("Scroll_Track")
			scroll.nMin, scroll.nMax, scroll.szText = 0, scroll:GetStepCount(), self.txt:GetText()
			scroll.nVal = scroll.nMin
			self.txt:SetText(scroll.nVal .. scroll.szText)
			scroll.OnScrollBarPosChanged = function()
				this.nVal = this.nMin + math.ceil((this:GetScrollPos() / this:GetStepCount()) * (this.nMax - this.nMin))
				if this.OnScrollBarPosChanged_ then
					this.OnScrollBarPosChanged_(this.nVal)
				end
				self.txt:SetText(this.nVal .. this.szText)
			end
		end
	end
end

-- (number, number) Instance:Size()
-- (self) Instance:Size(number nW, number nH)
function _TF.UI.Wnd:Size(nW, nH)
	local wnd = self.self
	if not nW then
		local nW, nH = wnd:GetSize()
		if self.type == "WndRadioBox" or self.type == "WndCheckBox" or self.type == "WndTrackBar" then
			local xW, _ = self.txt:GetTextExtent()
			nW = nW + xW + 5
		end
		return nW, nH
	end
	if self.edit then
		wnd:SetSize(nW + 2, nH)
		self.handle:SetSize(nW + 2, nH)
		self.handle:Lookup("Image_Default"):SetSize(nW + 2, nH)
		self.edit:SetSize(nW, nH)
	else
		wnd:SetSize(nW, nH)
		if self.handle then
			self.handle:SetSize(nW, nH)
			if self.type == "WndButton" or self.type == "WndTabBox" then
				self.txt:SetSize(nW, nH)
			elseif self.type == "WndComboBox" then
				self.handle:Lookup("Image_ComboBoxBg"):SetSize(nW, nH)
				local btn = wnd:Lookup("Btn_ComboBox")
				local hnd = btn:Lookup("", "")
				local bW, bH = btn:GetSize()
				btn:SetRelPos(nW - bW - 5, math.ceil((nH - bH)/2))
				hnd:SetAbsPos(self.handle:GetAbsPos())
				hnd:SetSize(nW, nH)
				self.txt:SetSize(nW - math.ceil(bW/2), nH)
			elseif self.type == "WndCheckBox" then
				local _, xH = self.txt:GetTextExtent()
				self.txt:SetRelPos(nW - 20, math.floor((nH - xH)/2))
				self.handle:FormatAllItemPos()
			elseif self.type == "WndRadioBox" then
				local _, xH = self.txt:GetTextExtent()
				self.txt:SetRelPos(nW + 5, math.floor((nH - xH)/2))
				self.handle:FormatAllItemPos()
			elseif self.type == "WndTrackBar" then
				wnd:Lookup("Scroll_Track"):SetSize(nW, nH - 13)
				wnd:Lookup("Scroll_Track/Btn_Track"):SetSize(math.ceil(nW/5), nH - 13)
				self.handle:Lookup("Image_BG"):SetSize(nW, nH - 15)
				self.handle:Lookup("Text_Default"):SetRelPos(nW + 5, math.ceil((nH - 25)/2))
				self.handle:FormatAllItemPos()
			end
		end
	end
	return self
end

-- (boolean) Instance:Enable()
-- (self) Instance:Enable(boolean bEnable)
function _TF.UI.Wnd:Enable(bEnable)
	local wnd = self.edit or self.self
	local txt = self.edit or self.txt
	if bEnable == nil then
		if self.type == "WndButton" then
			return wnd:IsEnabled()
		end
		return self.enable ~= false
	end
	if bEnable then
		wnd:Enable(1)
		if txt and self.font then
			txt:SetFontScheme(self.font)
		end
		self.enable = true
	else
		wnd:Enable(0)
		if txt and self.enable ~= false then
			self.font = txt:GetFontScheme()
			txt:SetFontScheme(161)
		end
		self.enable = false
	end
	return self
end

-- (self) Instance:AutoSize([number hPad[, number vPad] ])
function _TF.UI.Wnd:AutoSize(hPad, vPad)
	local wnd = self.self
	if self.type == "WndTabBox" or self.type == "WndButton" then
		local _, nH = wnd:GetSize()
		local nW, _ = self.txt:GetTextExtent()
		local nEx = self.txt:GetTextPosExtent()
		if hPad then
			nW = nW + hPad + hPad
		end
		if vPad then
			nH = nH + vPad + vPad
		end
		self:Size(nW + nEx + 16, nH)
	elseif self.type == "WndComboBox" then
		local bW, _ = wnd:Lookup("Btn_ComboBox"):GetSize()
		local nW, nH = self.txt:GetTextExtent()
		local nEx = self.txt:GetTextPosExtent()
		if hPad then
			nW = nW + hPad + hPad
		end
		if vPad then
			nH = nH + vPad + vPad
		end
		self:Size(nW + bW + 20, nH + 6)
	end
	return self
end

-- (boolean) Instance:Check()
-- (self) Instance:Check(boolean bCheck)
-- NOTICE��only for WndCheckBox
function _TF.UI.Wnd:Check(bCheck)
	local wnd = self.self
	if wnd:GetType() == "WndCheckBox" then
		if bCheck == nil then
			return wnd:IsCheckBoxChecked()
		end
		wnd:Check(bCheck == true)
	end
	return self
end

-- (string) Instance:Group()
-- (self) Instance:Group(string szGroup)
-- NOTICE��only for WndCheckBox
function _TF.UI.Wnd:Group(szGroup)
	local wnd = self.self
	if wnd:GetType() == "WndCheckBox" then
		if not szGroup then
			return wnd.group
		end
		wnd.group = szGroup
	end
	return self
end

-- (string) Instance:Url()
-- (self) Instance:Url(string szUrl)
-- NOTICE��only for WndWebPage
function _TF.UI.Wnd:Url(szUrl)
	local wnd = self.self
	if self.type == "WndWebPage" then
		if not szUrl then
			return wnd:GetLocationURL()
		end
		wnd:Navigate(szUrl)
	end
	return self
end

-- (number, number, number) Instance:Range()
-- (self) Instance:Range(number nMin, number nMax[, number nStep])
-- NOTICE��only for WndTrackBar
function _TF.UI.Wnd:Range(nMin, nMax, nStep)
	if self.type == "WndTrackBar" then
		local scroll = self.self:Lookup("Scroll_Track")
		if not nMin and not nMax then
			return scroll.nMin, scroll.nMax, scroll:GetStepCount()
		end
		if nMin then scroll.nMin = nMin end
		if nMax then scroll.nMax = nMax end
		if nStep then scroll:SetStepCount(nStep) end
		self:Value(scroll.nVal)
	end
	return self
end

-- (number) Instance:Value()
-- (self) Instance:Value(number nVal)
-- NOTICE��only for WndTrackBar
function _TF.UI.Wnd:Value(nVal)
	if self.type == "WndTrackBar" then
		local scroll = self.self:Lookup("Scroll_Track")
		if not nVal then
			return scroll.nVal
		end
		scroll.nVal = math.min(math.max(nVal, scroll.nMin), scroll.nMax)
		scroll:SetScrollPos(math.ceil((scroll.nVal - scroll.nMin) / (scroll.nMax - scroll.nMin) * scroll:GetStepCount()))
		self.txt:SetText(scroll.nVal .. scroll.szText)
	end
	return self
end

-- (string) Instance:Text()
-- (self) Instance:Text(string szText[, boolean bDummy])
-- bDummy		-- ��Ϊ true ������������ onChange �¼�
function _TF.UI.Wnd:Text(szText, bDummy)
	local txt = self.edit or self.txt
	if txt then
		if not szText then
			return txt:GetText()
		end
		if self.type == "WndTrackBar" then
			local scroll = self.self:Lookup("Scroll_Track")
			scroll.szText = szText
			txt:SetText(scroll.nVal .. scroll.szText)
		elseif self.type == "WndEdit" and bDummy then
			local fnChanged = txt.OnEditChanged
			txt.OnEditChanged = nil
			txt:SetText(szText)
			txt.OnEditChanged = fnChanged
		else
			txt:SetText(szText)
		end
		if self.type == "WndTabBox" then
			self:AutoSize()
		elseif self.type == "WndCheckBox" or self.type == "WndRadioBox" then
			local nW, nH = txt:GetTextExtent()
			txt:SetSize(nW + 26, nH)
			self.handle:SetSize(nW + 26, nH)
			self.handle:FormatAllItemPos()
		--	x,y=txt:GetRelPos() --�Լ��ӵ�û��
		--	txt:SetRelPos(x+10,y)
		end
	end
	return self
end

-- (boolean) Instance:Multi()
-- (self) Instance:Multi(boolean bEnable)
-- NOTICE: only for WndEdit
function _TF.UI.Wnd:Multi(bEnable)
	local edit = self.edit
	if edit then
		if bEnable == nil then
			return edit:IsMultiLine()
		end
		edit:SetMultiLine(bEnable == true)
	end
	return self
end

-- (number) Instance:Limit()
-- (self) Instance:Limit(number nLimit)
-- NOTICE: only for WndEdit
function _TF.UI.Wnd:Limit(nLimit)
	local edit = self.edit
	if edit then
		if not nLimit then
			return edit:GetLimit()
		end
		edit:SetLimit(nLimit)
	end
	return self
end

-- (self) Instance:Change()			-- �����༭���޸Ĵ�����
-- (self) Instance:Change(func fnAction)
-- NOTICE��only for WndEdit��WndTrackBar
function _TF.UI.Wnd:Change(fnAction)
	if self.type == "WndTrackBar" then
		self.self:Lookup("Scroll_Track").OnScrollBarPosChanged_ = fnAction
	elseif self.edit then
		local edit = self.edit
		if not fnAction then
			if edit.OnEditChanged then
				local _this = this
				this = edit
				edit.OnEditChanged()
				this = _this
			end
		else
			edit.OnEditChanged = function()
				if not this.bChanging then
					this.bChanging = true
					fnAction(this:GetText())
					this.bChanging = false
				end
			end
		end
	end
	return self
end

-- (self) Instance:Menu(table menu)		-- ���������˵�
-- NOTICE��only for WndComboBox
function _TF.UI.Wnd:Menu(menu)
	if self.type == "WndComboBox" then
		local wnd = self.self
		self:Click(function()
			local _menu = nil
			local nX, nY = wnd:GetAbsPos()
			local nW, nH = wnd:GetSize()
			if type(menu) == "function" then
				_menu = menu()
			else
				_menu = menu
			end
			_menu.nMiniWidth = nW
			_menu.x = nX
			_menu.y = nY + nH
			PopupMenu(_menu)
		end)
	end
	return self
end

-- (self) Instance:Click()
-- (self) Instance:Click(func fnAction)	-- �����������󴥷�ִ�еĺ���
-- fnAction = function([bCheck])			-- ���� WndCheckBox �ᴫ�� bCheck �����Ƿ�ѡ
function _TF.UI.Wnd:Click(fnAction)
	local wnd = self.self
	if self.type == "WndComboBox" then
		wnd = wnd:Lookup("Btn_ComboBox")
	end
	if wnd:GetType() == "WndCheckBox" then
		if not fnAction then
			self:Check(not self:Check())
		else
			wnd.OnCheckBoxCheck = function()
				if this.group then
					local uis = this:GetParent().___uis or {}
					for _, ui in pairs(uis) do
						if ui:Group() == this.group and ui:Name() ~= this:GetName() then
							ui.bCanUnCheck = true
							ui:Check(false)
							ui.bCanUnCheck = nil
						end
					end
				end
				fnAction(true)
			end
			wnd.OnCheckBoxUncheck = function()
				if this.group and not self.bCanUnCheck and string.sub(this.group, 1, 1) ~= "-" then
					self:Check(true)
				else
					fnAction(false)
				end
			end
		end
	else
		if not fnAction then
			if wnd.OnLButtonClick then
				local _this = this
				this = wnd
				wnd.OnLButtonClick()
				this = _this
			end
		else
			wnd.OnLButtonClick = fnAction
		end
	end
	return self
end

 
-- (self) Instance:Hover(func fnEnter[, func fnLeave])	-- ����������������
-- fnEnter = function(true)		-- ������ʱ����
-- fnLeave = function(false)		-- ����Ƴ�ʱ���ã���ʡ����ͽ��뺯��һ��
function _TF.UI.Wnd:Hover(fnEnter, fnLeave)
	local wnd = self.wnd
	if self.type == "WndComboBox" then
		wnd = wnd:Lookup("Btn_ComboBox")
	end
	if wnd then
		fnLeave = fnLeave or fnEnter
		if fnEnter then
			wnd.OnMouseEnter = function() fnEnter(true) end
		end
		if fnLeave then
			wnd.OnMouseLeave = function() fnLeave(false) end
		end
	end
	return self
end
 
-------------------------------------
-- Handle Item
-------------------------------------
 _TF.UI.Item = class(_TF.UI.Base)

-- xml string
_TF.UI.tItemXML = {
	["Text"] = "<text>w=150 h=30 valign=1 font=162 eventid=257 </text>",
	["Image"] = "<image>w=100 h=100 eventid=257 </image>",
	["Box"] = "<box>w=48 h=48 eventid=525311 </box>",
	["Shadow"] = "<shadow>w=15 h=15 eventid=277 </shadow>",
	["Handle"] = "<handle>w=10 h=10</handle>",
	["Label"] = "<handle>w=150 h=30 eventid=257 <text>name=\"Text_Label\" w=150 h=30 font=162 valign=1 </text></handle>",
}

-- construct
function _TF.UI.Item:ctor(pHandle, szType, szName)
	local hnd = nil
	if not szType and not szName then
		-- convert from raw object
		hnd, szType = pHandle, pHandle:GetType()
	else
		local szXml = _TF.UI.tItemXML[szType]
		if szXml then
			-- append from xml
			local nCount = pHandle:GetItemCount()
			pHandle:AppendItemFromString(szXml)
			hnd = pHandle:Lookup(nCount)
			if hnd then hnd:SetName(szName) end
		else
			-- append from ini
			hnd = pHandle:AppendItemFromIni("interface\\TF\\0TF_Base\\ui\\HandleItems.ini","Handle_" .. szType, szName)
		end
		if not hnd then
			return TF.Sysmsg("Unable to append handle item " .. szType)
		end
	end
	if szType == "BoxButton" then
		self.txt = hnd:Lookup("Text_BoxButton")
		self.img = hnd:Lookup("Image_BoxIco")
		hnd.OnItemMouseEnter = function()
			if not this.bSelected then
				this:Lookup("Image_BoxBg"):Hide()
				this:Lookup("Image_BoxBgOver"):Show()
			end
		end
		hnd.OnItemMouseLeave = function()
			if not this.bSelected then
				this:Lookup("Image_BoxBg"):Show()
				this:Lookup("Image_BoxBgOver"):Hide()
			end
		end
	elseif szType == "TxtButton" then
		self.txt = hnd:Lookup("Text_TxtButton")
		self.img = hnd:Lookup("Image_TxtBg")
		hnd.OnItemMouseEnter = function()
			self.img:Show()
		end
		hnd.OnItemMouseLeave = function()
			if not this.bSelected then
				self.img:Hide()
			end
		end
	elseif szType == "Label" then
		self.txt = hnd:Lookup("Text_Label")
	elseif szType == "Text" then
		self.txt = hnd
	elseif szType == "Image" then
		self.img = hnd
	end
	self.self, self.type = hnd, szType
	hnd:SetRelPos(0, 0)
	hnd:GetParent():FormatAllItemPos()
end

-- (number, number) Instance:Size()
-- (self) Instance:Size(number nW, number nH)
function _TF.UI.Item:Size(nW, nH)	 
	local hnd = self.self
	if not nW then
		local nW, nH = hnd:GetSize()
		if self.type == "Text" or self.type == "Label" then
			nW, nH = self.txt:GetTextExtent()
		end
		return nW, nH
	end
	hnd:SetSize(nW, nH)
	if self.type == "BoxButton" then
		local nPad = math.ceil(nH * 0.2)
		hnd:Lookup("Image_BoxBg"):SetSize(nW - 12, nH + 8)
		hnd:Lookup("Image_BoxBgOver"):SetSize(nW - 12, nH + 8)
		hnd:Lookup("Image_BoxBgSel"):SetSize(nW - 1, nH + 11)
		self.img:SetSize(nH - nPad, nH - nPad)
		self.img:SetRelPos(10, math.ceil(nPad / 2))
		self.txt:SetSize(nW - nH - nPad, nH)
		self.txt:SetRelPos(nH + 10, 0)
		hnd:FormatAllItemPos()
	elseif self.type == "TxtButton" then
		self.img:SetSize(nW, nH - 5)
		self.txt:SetSize(nW - 10, nH - 5)
	elseif self.type == "Label" then
		self.txt:SetSize(nW, nH)
	end
	return self
end

-- (self) Instance:Zoom(boolean bEnable)	-- �Ƿ����õ����Ŵ�
-- NOTICE��only for BoxButton
function _TF.UI.Item:Zoom(bEnable)
	local hnd = self.self
	if self.type == "BoxButton" then
		local bg = hnd:Lookup("Image_BoxBg")
		local sel = hnd:Lookup("Image_BoxBgSel")
		if bEnable == true then
			local nW, nH = bg:GetSize()
			sel:SetSize(nW + 11, nH + 3)
			sel:SetRelPos(1, -5)
		else
			sel:SetSize(bg:GetSize())
			sel:SetRelPos(5, -2)
		end
		hnd:FormatAllItemPos()
	end
	return self
end

-- (self) Instance:Select()		-- ����ѡ�е�ǰ��Ŧ��������Ч����
-- NOTICE��only for BoxButton��TxtButton
function _TF.UI.Item:Select()
	local hnd = self.self
	if self.type == "BoxButton" or self.type == "TxtButton" then
		local hParent, nIndex = hnd:GetParent(), hnd:GetIndex()
		local nCount = hParent:GetItemCount() - 1
		for i = 0, nCount do
			local item = TF.UI.Fetch(hParent:Lookup(i))
			if item and item.type == self.type then
				if i == nIndex then
					if not item.self.bSelected then
						hnd.bSelected = true
						hnd.nIndex = i
						if self.type == "BoxButton" then
							hnd:Lookup("Image_BoxBg"):Hide()
							hnd:Lookup("Image_BoxBgOver"):Hide()
							hnd:Lookup("Image_BoxBgSel"):Show()
							self.txt:SetFontScheme(65)
							local icon = hnd:Lookup("Image_BoxIco")
							local nW, nH = icon:GetSize()
							local nX, nY = icon:GetRelPos()
							icon:SetSize(nW + 8, nH + 8)
							icon:SetRelPos(nX - 3, nY - 5)
							hnd:FormatAllItemPos()
						else
							self.img:Show()
						end
					end
				elseif item.self.bSelected then
					item.self.bSelected = false
					if item.type == "BoxButton" then
						item.self:SetIndex(item.self.nIndex)
						if hnd.nIndex >= item.self.nIndex then
							hnd.nIndex = hnd.nIndex + 1
						end
						item.self:Lookup("Image_BoxBg"):Show()
						item.self:Lookup("Image_BoxBgOver"):Hide()
						item.self:Lookup("Image_BoxBgSel"):Hide()
						item.txt:SetFontScheme(163)
						local icon = item.self:Lookup("Image_BoxIco")
						local nW, nH = icon:GetSize()
						local nX, nY = icon:GetRelPos()
						icon:SetSize(nW - 8, nH - 8)
						icon:SetRelPos(nX + 3, nY + 5)
						item.self:FormatAllItemPos()
					else
						item.img:Hide()
					end
				end
			end
		end
		if hnd.nIndex then
			hnd:SetIndex(nCount)
		end
	end
	return self
end

-- (string) Instance:Text()
-- (self) Instance:Text(string szText)
function _TF.UI.Item:Text(szText)
	local txt = self.txt
	if txt then
		if not szText then
			return txt:GetText()
		end
		txt:SetText(szText)
	end
	return self
end

-- (boolean) Instance:Multi()
-- (self) Instance:Multi(boolean bEnable)
-- NOTICE: only for Text��Label
function _TF.UI.Item:Multi(bEnable)
	local txt = self.txt
	if txt then
		if bEnable == nil then
			return txt:IsMultiLine()
		end
		txt:SetMultiLine(bEnable == true)
	end
	return self
end

-- (self) Instance:File(string szUitexFile, number nFrame)
-- (self) Instance:File(string szTextureFile)
-- (self) Instance:File(number dwIcon)
-- NOTICE��only for Image��BoxButton
function _TF.UI.Item:File(szFile, nFrame)
	local img = nil
	if self.type == "Image" then
		img = self.self
	elseif self.type == "BoxButton" then
		img = self.img
	end
	if img then
		if type(szFile) == "number" then
			img:FromIconID(szFile)
		elseif not nFrame then
			img:FromTextureFile(szFile)
		else
			img:FromUITex(szFile, nFrame)
		end
	end
	return self
end

-- (self) Instance:Type()
-- (self) Instance:Type(number nType)		-- �޸�ͼƬ���ͻ� BoxButton �ı�������
-- NOTICE��only for Image��BoxButton
function _TF.UI.Item:Type(nType)
	local hnd = self.self
	if self.type == "Image" then
		if not nType then
			return hnd:GetImageType()
		end
		hnd:SetImageType(nType)
	elseif self.type == "BoxButton" then
		if nType == nil then
			local nFrame = hnd:Lookup("Image_BoxBg"):GetFrame()
			if nFrame == 16 then
				return 2
			elseif nFrame == 18 then
				return 1
			end
			return 0
		elseif nType == 0 then
			hnd:Lookup("Image_BoxBg"):SetFrame(1)
			hnd:Lookup("Image_BoxBgOver"):SetFrame(2)
			hnd:Lookup("Image_BoxBgSel"):SetFrame(3)
		elseif nType == 1 then
			hnd:Lookup("Image_BoxBg"):SetFrame(18)
			hnd:Lookup("Image_BoxBgOver"):SetFrame(19)
			hnd:Lookup("Image_BoxBgSel"):SetFrame(22)
		elseif nType == 2 then
			hnd:Lookup("Image_BoxBg"):SetFrame(16)
			hnd:Lookup("Image_BoxBgOver"):SetFrame(17)
			hnd:Lookup("Image_BoxBgSel"):SetFrame(15)
		end
	end
	return self
end

-- (self) Instance:Icon(number dwIcon)
-- NOTICE��only for Box��Image��BoxButton
function _TF.UI.Item:Icon(dwIcon)
	if self.type == "BoxButton" or self.type == "Image" then
		self.img:FromIconID(dwIcon)
	elseif self.type == "Box" then
		self.self:SetObjectIcon(dwIcon)
	end
	return self
end

-- (self) Instance:Click()
-- (self) Instance:Click(func fnAction[, boolean bSound[, boolean bSelect] ])	-- �Ǽ������������
-- (self) Instance:Click(func fnAction[, table tLinkColor[, tHoverColor] ])		-- ͬ�ϣ�ֻ���ı�
function _TF.UI.Item:Click(fnAction, szTip, bSound, bSelect)
	local hnd = self.self
	--hnd:RegisterEvent(0x001)
	if not fnAction then
		if hnd.OnItemLButtonDown then
			local _this = this
			this = hnd
			hnd.OnItemLButtonDown()
			this = _this
		end
	elseif self.type == "BoxButton" or self.type == "TxtButton" then
		hnd.OnItemLButtonDown = function()
			if bSound then PlaySound(SOUND.UI_SOUND, g_sound.Button) end
			if bSelect then self:Select() end
			fnAction()
		end
	else
		hnd.OnItemLButtonDown = fnAction
		-- text link��tLinkColor��tHoverColor
		local txt = self.txt
		if txt then
			local tLinkColor = bSound or { 90, 230, 90 }
			local tHoverColor = bSelect  or { 100, 210, 220 }
			txt:SetFontColor(unpack(tLinkColor))
			if tHoverColor then
				self:Hover(function(bIn)
					if bIn then
						if szTip then TF.ShowTip(szTip) end
						txt:SetFontColor(unpack(tHoverColor))
					else
						txt:SetFontColor(unpack(tLinkColor))
					end
				end,function() HideTip()  txt:SetFontColor(unpack(tLinkColor)) end)
			end
		end	
	end
	return self
end

 

-- (self) Instance:Hover(func fnEnter[, func fnLeave])	-- ����������������
-- fnEnter = function(true)		-- ������ʱ����
-- fnLeave = function(false)		-- ����Ƴ�ʱ���ã���ʡ����ͽ��뺯��һ��
function _TF.UI.Item:Hover(fnEnter, fnLeave,tLinkColor,tHoverColor)
	local hnd = self.self
	--hnd:RegisterEvent(0x300)
	--fnLeave = fnLeave or fnEnter
	fnLeave=fnLeave or HideTip
	if fnEnter then
		hnd.OnItemMouseEnter = function() 
			fnEnter(true) 
			if not tHoverColor then return end
			local txt = self.txt
			if txt then txt:SetFontColor(unpack(tHoverColor)) end
		end
	end
	if fnLeave then
		hnd.OnItemMouseLeave = function() 
			fnLeave(false) 
			if not tLinkColor then return end
			local txt = self.txt
			if txt then txt:SetFontColor(unpack(tLinkColor)) end
		end
	end
	return self
end
 
---------------------------------------------------------------------
-- ������ API��TF.UI.xxx
---------------------------------------------------------------------
TF.UI = {}
 
-- ����Ԫ���������Ե����������ã���Ч���൱�� TF.UI.Fetch
setmetatable(TF.UI, { __call = function(me, ...) return me.Fetch(...) end, __metatable = true })

-- ����һ���յĶԻ�������棬������ TF.UI ��װ����
-- (class) TF.UI.CreateFrame([string szName, ]table tArg)
-- szName		-- *��ѡ* ���ƣ���ʡ�����Զ������
-- tArg {			-- *��ѡ* ��ʼ�����ò������Զ�������Ӧ�ķ�װ�������������Ծ���ѡ
--		w, h,			-- ��͸ߣ��ɶԳ�������ָ����С��ע���Ȼ��Զ����ͽ�����Ϊ��770/380/234���߶���С 200
--		x, y,			-- λ�����꣬Ĭ������Ļ���м�
--		title			-- �������
--		drag			-- ���ô����Ƿ���϶�
--		close		-- ����رհ�Ŧ���Ƿ������رմ��壨��Ϊ false �������أ�
--		empty		-- �����մ��壬����������ȫ͸����ֻ�ǽ�������
--		fnCreate = function(frame)		-- �򿪴����ĳ�ʼ��������frame Ϊ���ݴ��壬�ڴ���� UI
--		fnDestroy = function(frame)	-- �ر����ٴ���ʱ���ã�frame Ϊ���ݴ��壬���ڴ��������
-- }
-- ����ֵ��ͨ�õ�  TF.UI ���󣬿�ֱ�ӵ��÷�װ����
TF.UI.CreateFrame = function(szName, tArg)
	if type(szName) == "table" then
		szName, tArg = nil, szName
	end
	tArg = tArg or {}
	local ui = _TF.UI.Frm.new(szName, tArg.empty == true)
	-- apply init setting
	if tArg.w and tArg.h then ui:Size(tArg.w, tArg.h) end
	if tArg.x and tArg.y then ui:Pos(tArg.x, tArg.y) end
	if tArg.title then ui:Title(tArg.title) end
	if tArg.drag ~= nil then ui:Drag(tArg.drag) end
	if tArg.close ~= nil then ui.self.bClose = tArg.close end
	if tArg.fnCreate then tArg.fnCreate(ui:Raw()) end
	if tArg.fnDestroy then ui.fnDestroy = tArg.fnDestroy end
	if tArg.parent then ui:Relation(tArg.parent) end
	return ui
end

-- �����մ���
TF.UI.CreateFrameEmpty = function(szName, szParent)
	return TF.UI.CreateFrame(szName, { empty  = true, parent = szParent })
end

-- ��ĳһ��������������  INI �����ļ��еĲ��֣������� TF.UI ��װ����
-- (class) TF.UI.Append(userdata hParent, string szIniFile, string szTag, string szName)
-- hParent		-- �����������ԭʼ����TF.UI ������ֱ����  :Append ������
-- szIniFile		-- INI �ļ�·��
-- szTag			-- Ҫ��ӵĶ���Դ�����������ڵĲ��� [XXXX]������ hParent ƥ����� Wnd ���������
-- szName		-- *��ѡ* �������ƣ�����ָ��������ԭ����
-- ����ֵ��ͨ�õ�  TF.UI ���󣬿�ֱ�ӵ��÷�װ������ʧ�ܻ������ nil
-- �ر�ע�⣺�������Ҳ֧����Ӵ������
TF.UI.AppendIni = function(hParent, szFile, szTag, szName)
	local raw = nil
	if hParent:GetType() == "Handle" then
		if not szName then
			szName = "Child_" .. hParent:GetItemCount()
		end
		raw = hParent:AppendItemFromIni(szFile, szTag, szName)
	elseif string.sub(hParent:GetType(), 1, 3) == "Wnd" then
		local frame = Wnd.OpenWindow(szFile, "TF_Virtual")
		if frame then
			raw = frame:Lookup(szTag)
			if raw and string.sub(raw:GetType(), 1, 3) == "Wnd" then
				raw:ChangeRelation(hParent, true, true)
				if szName then
					raw:SetName(szName)
				end
			else
				raw = nil
			end
			Wnd.CloseWindow(frame)
		end
	end
	if not raw then
		TF.Sysmsg("Fail to add component [" .. szTag .. "@" .. szFile) 
		else
		return TF.UI.Fetch(raw)
	end
end

-- ��ĳһ�������������� TF.UI ��������ط�װ����
-- (class) TF.UI.Append(userdata hParent, string szType[, string szName], table tArg)
-- hParent		-- �����������ԭʼ����TF.UI ������ֱ����  :Append ������
-- szType			-- Ҫ��ӵ�������ͣ��磺WndWindow��WndEdit��Handle��Text ������
-- szName		-- *��ѡ* ���ƣ���ʡ�����Զ������
-- tArg {			-- *��ѡ* ��ʼ�����ò������Զ�������Ӧ�ķ�װ�������������Ծ���ѡ�����û�������
--		w, h,			-- ��͸ߣ��ɶԳ�������ָ����С
--		x, y,			-- λ������
--		txt, font, multi, limit, align		-- �ı����ݣ����壬�Ƿ���У��������ƣ����뷽ʽ��0����1���У�2���ң�
--		color, alpha			-- ��ɫ����͸����
--		checked				-- �Ƿ�ѡ��CheckBox ר��
--		enable					-- �Ƿ�����
--		file, icon, type		-- ͼƬ�ļ���ַ��ͼ���ţ�����
--		group					-- ��ѡ���������
-- }
-- ����ֵ��ͨ�õ�  TF.UI ���󣬿�ֱ�ӵ��÷�װ������ʧ�ܻ������ nil
-- �ر�ע�⣺Ϊͳһ�ӿڴ˺���Ҳ������ AppendIni �ļ��������� TF.UI.AppendIni һ��
-- (class) TF.UI.Append(userdata hParent, string szIniFile, string szTag, string szName)
TF.UI.Append = function(hParent, szType, szName, tArg)
	-- compatiable with AppendIni
	if StringFindW(szType, ".ini") ~= nil then
		return TF.UI.AppendIni(hParent, szType, szName, tArg)
	end
	-- reset parameters
	if not tArg and type(szName) == "table" then
		szName, tArg = nil, szName
	end
	if not szName then
		if not hParent.nAutoIndex then
			hParent.nAutoIndex = 1
		end
		szName = szType .. "_" .. hParent.nAutoIndex
		hParent.nAutoIndex = hParent.nAutoIndex + 1
	else
		szName = tostring(szName)
	end
	-- create ui
	local ui = nil
	if string.sub(szType, 1, 3) == "Wnd" then
		if string.sub(hParent:GetType(), 1, 3) ~= "Wnd" then
			return TF.Sysmsg("The 1st arg for adding component must be a [WndXxx]")
		end
		ui = _TF.UI.Wnd.new(hParent, szType, szName)
	else
		if hParent:GetType() ~= "Handle" then
			return TF.Sysmsg("The 1st arg for adding item must be a [Handle]")
		end
		ui = _TF.UI.Item.new(hParent, szType, szName)
	end
	local raw = ui:Raw()
	if raw then
		-- for reverse fetching
		hParent.___uis = hParent.___uis or {}
		for k, v in pairs(hParent.___uis) do
			if not v.self.___id then
				hParent.___uis[k] = nil
			end
		end
		hParent.___uis[szName] = ui
		hParent.___last = szName
		-- apply init setting
		tArg = tArg or {}
		if tArg.w and tArg.h then ui:Size(tArg.w, tArg.h) end
		if tArg.x and tArg.y then ui:Pos(tArg.x, tArg.y) end
		if tArg.font then ui:Font(tArg.font) end
		if tArg.multi ~= nil then ui:Multi(tArg.multi) end
		if tArg.limit then ui:Limit(tArg.limit) end
		if tArg.color then ui:Color(unpack(tArg.color)) end
		if tArg.align ~= nil then ui:Align(tArg.align) end
		if tArg.alpha then ui:Alpha(tArg.alpha) end
		if tArg.txt then ui:Text(tArg.txt) end
		if tArg.checked ~= nil then ui:Check(tArg.checked) end
		-- wnd only
		if tArg.enable ~= nil then ui:Enable(tArg.enable) end
		if tArg.group then ui:Group(tArg.group) end
		if ui.type == "WndComboBox" and (not tArg.w or not tArg.h) then
			ui:Size(185, 25)
		end
		-- item only
		if tArg.file then ui:File(tArg.file, tArg.num) end
		if tArg.icon ~= nil then ui:Icon(tArg.icon) end
		if tArg.type then ui:Type(tArg.type) end
		return ui
	end
end

-- (class) TF.UI(...)
-- (class) TF.UI.Fetch(hRaw)						-- �� hRaw ԭʼ����ת��Ϊ TF.UI ��װ����
-- (class) TF.UI.Fetch(hParent, szName)	-- �� hParent ����ȡ��Ϊ szName ����Ԫ����ת��Ϊ TF.UI ����
-- ����ֵ��ͨ�õ�  TF.UI ���󣬿�ֱ�ӵ��÷�װ������ʧ�ܻ������ nil
TF.UI.Fetch = function(hParent, szName)
	if type(hParent) == "string" then
		hParent = Station.Lookup(hParent)
	end
	if not szName then
		szName = hParent:GetName()
		hParent = hParent:GetParent()
	end
	-- exists
	if hParent.___uis and hParent.___uis[szName] then
		local ui = hParent.___uis[szName]
		if ui and ui.self.___id then
			return ui
		end
	end
	-- convert
	local hRaw = hParent:Lookup(szName)
	if hRaw then
		local ui
		if string.sub(hRaw:GetType(), 1, 3) == "Wnd" then
			ui = _TF.UI.Wnd.new(hRaw)
		else
			ui = _TF.UI.Item.new(hRaw)
		end
		hParent.___uis = hParent.___uis or {}
		hParent.___uis[szName] = ui
		return ui
	end
end  


---------------------------------------------------------------------
-- ���������ص����� TF.OnXXX
---------------------------------------------------------------------
-- create frame
TF.OnFrameCreate = function()
	-- var
	_TF.frame = this
	_TF.hTotal = this:Lookup("Wnd_Content", "")
	_TF.hScroll = this:Lookup("Wnd_Content/Scroll_List")
	_TF.hList = _TF.hTotal:Lookup("Handle_List")
	_TF.hContent = _TF.hTotal:Lookup("Handle_Content")
	_TF.hBox = _TF.hTotal:Lookup("Box_1")
	-- title
	local szTitle =_TF.szTitle  .. " v" .. TF.GetVersion() .. " (" .. TF.szBuildDate .. ")"
	_TF.hTotal:Lookup("Text_Title"):SetText(szTitle)
	-- position
	this:SetPoint("CENTER", 0, 0, "CENTER", 0, 0)
	this:RegisterEvent("UI_SCALED")
	-- update list/detail
	_TF.UpdateTabBox(this)
	--_TF.UpdateDetail()

end

TF.OnEvent = function(szEvent)		--�Ƿ���Ҫonevent?
	if szEvent == "UI_SCALED" then
		_TF.UpdateAnchor(this)
	end
end
TF.OnFrameDragEnd = function()
	this:CorrectPos()
	_TF.tAnchor = GetFrameAnchor(this)
end
-- breathe
TF.OnFrameBreathe = function()
	-- run breathe calls
	local nFrame = GetLogicFrameCount()
	for k, v in pairs(_TF.tBreatheCall) do
		if nFrame >= v.nNext then
			v.nNext = nFrame + v.nFrame
			local res, err = pcall(v.fnAction)
			if not res then
				TF.Debug("BreatheCall#" .. k .." ERROR: " .. err)
			end
		end
	end
	-- run delay calls
	local nTime = GetTime()
	for k = #_TF.tDelayCall, 1, -1 do
		local v = _TF.tDelayCall[k]
		if v.nTime <= nTime then
			local res, err = pcall(v.fnAction)
			if not res then
				TF.Debug("DelayCall#" .. k .." ERROR: " .. err)
			end
			table.remove(_TF.tDelayCall, k)
		end
	end
	-- run player monitor
	--_TF.SetTempTarget()
	-- run remote request (10s)
	if not _TF.nRequestExpire or _TF.nRequestExpire < nTime then
		if _TF.nRequestExpire then
			local r = table.remove(_TF.tRequest, 1)
			if r and r.fnAction then
				pcall(r.fnAction)
			end
			_TF.nRequestExpire = nil
		end
		if #_TF.tRequest > 0 then
			local page = Station.Lookup("Normal/TF/Page_1")
			if page then
				page:Navigate(_TF.tRequest[1].szUrl)
			end
			_TF.nRequestExpire = GetTime() + 15000
		end
	end
end

-- key down
TF.OnFrameKeyDown = function()
	if GetKeyName(Station.GetMessageKey()) == "Esc" then
		_TF.ClosePanel()
		return 1
	end
	return 0
end
 
-- button click
TF.OnLButtonClick = function()
	local szName = this:GetName()
	if szName == "Btn_Close" then
		_TF.ClosePanel()
	elseif szName == "Btn_Up" then
		_TF.hScroll:ScrollPrev(1)
	elseif szName == "Btn_Down" then
		_TF.hScroll:ScrollNext(1)
	end
end

-- scrolls
TF.OnScrollBarPosChanged = function()
	local handle, frame = _TF.hList, this:GetParent()
	local nPos = this:GetScrollPos()
	if nPos == 0 then
		frame:Lookup("Btn_Up"):Enable(0)
	else
		frame:Lookup("Btn_Up"):Enable(1)
	end
	if nPos == this:GetStepCount() then
		frame:Lookup("Btn_Down"):Enable(0)
	else
		frame:Lookup("Btn_Down"):Enable(1)
	end
    handle:SetItemStartRelPos(0, - nPos * 10)
end

-- web page complete
TF.OnDocumentComplete = function()
	local r = table.remove(_TF.tRequest, 1)
	if r then
		_TF.nRequestExpire = nil
		if r.fnAction then
			pcall(r.fnAction, this:GetLocationName(), this:GetDocument())
		end
	end
end

------------------------------------
--Compatible
------------------------------------
-- internet exploere
if not OpenInternetExplorer then
function IsInternetExplorerOpened(nIndex)
	local frame = Station.Lookup("Topmost/IE"..nIndex)
	if frame and frame:IsVisible() then
		return true
	end
	return false
end

function IE_GetNewIEFramePos()
	local nLastTime = 0
	local nLastIndex = nil
	for i = 1, 10, 1 do
		local frame = Station.Lookup("Topmost/IE"..i)
		if frame and frame:IsVisible() then
			if frame.nOpenTime > nLastTime then
				nLastTime = frame.nOpenTime
				nLastIndex = i
			end
		end
	end
	if nLastIndex then
		local frame = Station.Lookup("Topmost/IE"..nLastIndex)
		x, y = frame:GetAbsPos()
		local wC, hC = Station.GetClientSize()
		if x + 890 <= wC and y + 630 <= hC then
			return x + 30, y + 30
		end
	end
	return 40, 40
end

function OpenInternetExplorer(szAddr, bDisableSound)
	local nIndex, nLast = nil, nil
	for i = 1, 10, 1 do
		if not IsInternetExplorerOpened(i) then
			nIndex = i
			break
		elseif not nLast then
			nLast = i
		end
	end
	if not nIndex then
		OutputMessage("MSG_ANNOUNCE_RED", g_tStrings.MSG_OPEN_TOO_MANY)
		return nil
	end
	local x, y = IE_GetNewIEFramePos()
	local frame = Wnd.OpenWindow("InternetExplorer", "IE"..nIndex)
	frame.bIE = true
	frame.nIndex = nIndex

	frame:BringToTop()
	if nLast then
		frame:SetAbsPos(x, y)
		frame:CorrectPos()
		frame.x = x
		frame.y = y
	else
		frame:SetPoint("CENTER", 0, 0, "CENTER", 0, 0)
		frame.x, frame.y = frame:GetAbsPos()
	end
	local webPage = frame:Lookup("WebPage_Page")
	if szAddr then
		webPage:Navigate(szAddr)
	end
	Station.SetFocusWindow(webPage)
	if not bDisableSound then
		PlaySound(SOUND.UI_SOUND,g_sound.OpenFrame)
	end
	return webPage
end
end

-- dialogue panel
if not IsDialoguePanelOpened then
function IsDialoguePanelOpened()
	local frame = Station.Lookup("Normal/DialoguePanel")
	if frame and frame:IsVisible() then
		return true
	end
	return false
end
end

-- hotkey panel
function HotkeyPanel_Open(szGroup)
	local frame = Station.Lookup("Topmost/HotkeyPanel")
	if not frame then
		frame = Wnd.OpenWindow("HotkeyPanel")
	elseif not frame:IsVisible() then
		frame:Show()
	end
	if not szGroup then return end
	-- load aKey
	local aKey, nI, bindings = nil, 0, Hotkey.GetBinding(false)
	for k, v in pairs(bindings) do
		if v.szHeader ~= "" then
			if aKey then
				break
			elseif v.szHeader == szGroup then
				aKey = {}
			else
				nI = nI + 1
			end
		end
		if aKey then
			if not v.Hotkey1 then
				v.Hotkey1 = {nKey = 0, bShift = false, bCtrl = false, bAlt = false}
			end
			if not v.Hotkey2 then
				v.Hotkey2 = {nKey = 0, bShift = false, bCtrl = false, bAlt = false}
			end
			table.insert(aKey, v)
		end
	end
	if not aKey then return end
	local hP = frame:Lookup("", "Handle_List")
	local hI = hP:Lookup(nI)
	if hI.bSel then return end
	-- update list effect
	for i = 0, hP:GetItemCount() - 1 do
		local hB = hP:Lookup(i)
		if hB.bSel then
			hB.bSel = false
			if hB.IsOver then
				hB:Lookup("Image_Sel"):SetAlpha(128)
				hB:Lookup("Image_Sel"):Show()
			else
				hB:Lookup("Image_Sel"):Hide()
			end
		end
	end
	hI.bSel = true
	hI:Lookup("Image_Sel"):SetAlpha(255)
	hI:Lookup("Image_Sel"):Show()
	-- update content keys [hI.nGroupIndex]
	local hK = frame:Lookup("", "Handle_Hotkey")
	local szIniFile = "UI/Config/default/HotkeyPanel.ini"
	Hotkey.SetCapture(false)
	hK:Clear()
	hK.nGroupIndex = hI.nGroupIndex
	hK:AppendItemFromIni(szIniFile, "Text_GroupName")
	hK:Lookup(0):SetText(szGroup)
	hK:Lookup(0).bGroup = true
	for k, v in ipairs(aKey) do
		hK:AppendItemFromIni(szIniFile, "Handle_Binding")
		local hI = hK:Lookup(k)
		hI.bBinding = true
		hI.nIndex = k
		hI.szTip = v.szTip
		hI:Lookup("Text_Name"):SetText(v.szDesc)
		for i = 1, 2, 1 do
			local hK = hI:Lookup("Handle_Key"..i)
			hK.bKey = true
			hK.nIndex = i
			local hotkey = v["Hotkey"..i]
			hotkey.bUnchangeable = v.bUnchangeable
			hK.bUnchangeable = v.bUnchangeable
			local text = hK:Lookup("Text_Key"..i)
			text:SetText(GetKeyShow(hotkey.nKey, hotkey.bShift, hotkey.bCtrl, hotkey.bAlt))
			-- update btn
			if hK.bUnchangeable then
				hK:Lookup("Image_Key"..hK.nIndex):SetFrame(56)
			elseif hK.bDown then
				hK:Lookup("Image_Key"..hK.nIndex):SetFrame(55)
			elseif hK.bRDown then
				hK:Lookup("Image_Key"..hK.nIndex):SetFrame(55)
			elseif hK.bSel then
				hK:Lookup("Image_Key"..hK.nIndex):SetFrame(55)
			elseif hK.bOver then
				hK:Lookup("Image_Key"..hK.nIndex):SetFrame(54)
			elseif hotkey.bChange then
				hK:Lookup("Image_Key"..hK.nIndex):SetFrame(56)
			elseif hotkey.bConflict then
				hK:Lookup("Image_Key"..hK.nIndex):SetFrame(54)
			else
				hK:Lookup("Image_Key"..hK.nIndex):SetFrame(53)
			end
		end
	end
	-- update content scroll
	hK:FormatAllItemPos()
	local wAll, hAll = hK:GetAllItemSize()
    local w, h = hK:GetSize()
    local scroll = frame:Lookup("Scroll_Key")
    local nCountStep = math.ceil((hAll - h) / 10)
    scroll:SetStepCount(nCountStep)
	scroll:SetScrollPos(0)
	if nCountStep > 0 then
		scroll:Show()
    	scroll:GetParent():Lookup("Btn_Up"):Show()
    	scroll:GetParent():Lookup("Btn_Down"):Show()
    else
    	scroll:Hide()
    	scroll:GetParent():Lookup("Btn_Up"):Hide()
    	scroll:GetParent():Lookup("Btn_Down"):Hide()
    end
	-- update list scroll
	local scroll = frame:Lookup("Scroll_List")
	if scroll:GetStepCount() > 0 then
		local _, nH = hI:GetSize()
		local nStep = math.ceil((nI * nH) / 10)
		if nStep > scroll:GetStepCount() then
			nStep = scroll:GetStepCount()
		end
		scroll:SetScrollPos(nStep)
	end
end


--------------------------------------------------------------------
-- ע���¼�����ʼ��
---------------------------------------------------------------------
TF.RegisterEvent("PLAYER_ENTER_GAME", _TF.Init)
TF.RegisterEvent("DOODAD_ENTER_SCENE", function() _TF.aDoodad[arg0] = true end)
TF.RegisterEvent("DOODAD_LEAVE_SCENE", function() _TF.aDoodad[arg0] = nil end)
 TF.RegisterEvent("LOADING_END", function()
	if _TF.tConflict then
		for _, v in ipairs(_TF.tConflict) do v() end
		_TF.tConflict = nil
		TF.Sysmsg(string.format("��ӭ%sʹ���������� v".. TF.GetVersion().." Build ".._TF.szBuildDate, GetClientPlayer().szName ))
	end
	-- reseting frame count (FIXED BUG FOR Cross Server)
--	_TF.nTempFrame = nil
	for k, v in pairs(_TF.tBreatheCall) do
		v.nNext = GetLogicFrameCount()
	end
end)

TF_Info={}
TF_Info.PS = {}
-- tab box switch
--TF_About.PS.OnTaboxCheck = function(frame, nIndex, szTitle)
TF_Info.PS.OnPanelActive = function(frame)
	local ui = TF.UI(frame)
	_,nY=ui:Append("Text", { txt = "�򵥡�ʵ�á�רעPVX!��רΪ�����Ҷ���", x = 0, y = 0, font=27}):Pos_()
	ui:Append("Text", { x = 0, y = 28, w = 500, h = 40, multi = true })
	:Align(0, 0):Text("�������΢��ƾ�������������Ż��Ľ��������Է�PVX���������δ���ٷ���֤����������г���ܣ�ֻ�������ʹ�á�")
	ui:Append("Text", { x = 0, y = 74, w = 500, h = 40, multi = true })
	:Align(0, 0):Text("��������ڸ����������Ȥ���������ṩ�κ����ε�����")
	ui:Append("WndCheckBox", { x =260, y = 122, checked = TF_About.bDebug == true })
	:Text("Enable Debug"):Click(function(bChecked) TF_About.bDebug = bChecked end)
	_,nY=ui:Append("Text", { txt = "��ǰ�汾��", x = 0, y = 122, font=27}):Pos_()
	nX=ui:Append("Text", { txt = "v"..TF.GetVersion().."(".._TF.szBuildDate..")", x = 0, y =  150 }):Pos_()
	_,nY = ui:Append("Text", { txt ="���ص�ַ/������־", x = 0, y =188, font=27, })
	ui:Append("Text", { txt="sina΢�̣�΢��ƾ���ķ���", x = 0, y = 218, }):Click(function()
		OpenInternetExplorer("http://vdisk.weibo.com/u/5749249142") 
	end):ASize():Pos_()			
	ui:Append("Text", { txt="Github��https://github.com/DicTag/TF", x = 0, y = 244}):Click(function()
		OpenInternetExplorer("https://github.com/DicTag/TF") 
	end):ASize():Pos_()			
	ui:Append("Text", { txt =  "By ΢��ƾ��" , x = 400, y =360, font = 79 }):Click(function()
		OpenInternetExplorer("http://weibo.com/weiyupinglan") 
	end,"����΢��"):ASize():Pos_()	
	_,nY=ui:Append("Text", { txt = "�������ߣ�", x = 0, y =  280, font = 27 }):Pos_()
	ui:Append("Text", { x = 0, y = 308, w = 500, h = 40, multi = true }):Align(0, 0):Text("һ����פ����Ĵ�PVX���㣬û�²�Ҫ���������¸���Ҫ����!")
end

TF.RegisterPanel("���ڱ����", "Interface\\TF\\0TF_Base\\aboutTF.jpg", "�����Ϣ", TF_Info.PS)

 


TF_Thank={}
TF_Thank.PS = {}
TF_Thank.PS.OnPanelActive = function(frame)
	local ui = TF.UI(frame)
	_,nY=ui:Append("Text", { txt = "�ر���л��", x = 0, y = 5, font=27}):Pos_()
	_,nY=ui:Append("Text", { txt = "��л��������졢��ǧ��Ȳ������Ϊ�����ұ�д�����", x = 0, y = nY+20}):Pos_()
	_,nY=ui:Append("Text", { txt = "��л������Ȧ�弰crazyǰ����Դ����ѧϰAPI�ͺ����÷���", x = 0, y = nY+12 }):Pos_()
	_,nY=ui:Append("Text", { txt = "��лСѩ��zylaputa��const���ܵ�ǰ���ṩ�����Ž̳̣�", x = 0, y =  nY+12 }):Pos_()
	_,nY=ui:Append("Text", { txt = "��л������B���ṩ�Ĳ��������������گ�󽫾������ݣ�", x = 0, y =  nY+12 }):Pos_()
	_,nY=ui:Append("Text", { txt = "��лС�Ƽ��ṩ��debug���������������ϲ�ѯ��", x = 0, y = nY+12}):Pos_()
	_,nY=ui:Append("Text", { txt = "�ر��л������������Сѩ��ǰ���ṩ��ָ����", x = 0, y = nY+12 }):Pos_()
	_,nY=ui:Append("Text", { txt = "��л��פ���С���һֱ�����Ĺ��ա�", x = 0, y = nY+12 }):Pos_()
end

TF.RegisterPanel("�ر���л", 3875, "�����Ϣ", TF_Thank.PS)



TF_About={
	bDebug=false,
 }
_TF_About = {}
_TF_About.PS = {}

 _TF_About.PS.OnTaboxCheck = function(frame, nIndex, szTitle)
	local ui = TF.UI(frame)
	local szName, me = "��", GetClientPlayer()
	if me then szName = me.szName end
	-- info
	local nF = 0
	local t = TimeToDate(GetCurrentTime())
	local nT = t.month * 100 + t.day
	if nT > 720 and nT < 804 then
		nF = 1
	end
	_,nY=ui:Append("Image", { x = 0, y = 5, w = 532, h = 313 }):File(TF.GetCustomFile("WelImg.jpg", "Interface\\TF\\0TF_Base\\WelImg.jpg")):Pos_()
	nX = ui:Append("Text", { txt ="<�������>", x = 0, y = nY+10, font = 27 }):Click(function()
		OpenInternetExplorer("http://vdisk.weibo.com/u/5749249142") 
	end):ASize():Pos_()	
	nX = ui:Append("Text", { txt ="<������־>", x = nX+10, y = nY+10, font = 27 }):Click(function()
		OpenInternetExplorer("https://github.com/DicTag/TF/releases") 
	end):ASize():Pos_()	
	nX=ui:Append("Text", { txt = "<���ÿ�ݼ�>", x = nX+10 , y = nY+10, font = 27 }):Click(function() HotkeyPanel_Open("�����ר�ò������") end):ASize():Pos_()
	nX=ui:Append("Text", { txt = "<���ڲ��>", x = nX + 10, y = nY+10, font = 27 }):Click(function() TF.OpenPanel("���ڱ����") end):ASize():Pos_()
	nX=ui:Append("Text", { txt = "<��λ�ͼ>", x = nX+10 , y = nY+10, font = 27 }):Click(function() OutputMessage("MSG_SYS","[TF�����-����滻��ӭͼ]\n��interface�½��� TFcustom �ļ���\n��ͼƬ������Ŀ¼��������WelImg.jpg\n������ ԼΪ1.7����ѡ���������ȵ�ͼ\n")  end,"�������������ʾ"):ASize():Pos_()	
	ui:Append("Text", { txt =  "By ΢��ƾ��" , x = 400, y =360, font = 79 }):Click(function()
		OpenInternetExplorer("http://weibo.com/weiyupinglan") 
	end,"����΢��"):ASize():Pos_()	
end  

--[[ _TF_About.PS.GetAuthorInfo = function()
	return "΢��ƾ��"
end ]]

local _About = {
--	AddNameEx = _TF_About.AddNameEx,
--	CheckTarEx = _TF_About.CheckTarEx,
--	CheckNameEx = _TF_About.CheckNameEx,
	OnTaboxCheck = _TF_About.PS.OnTaboxCheck,
	OnPanelActive = _TF_About.PS.OnTaboxCheck,
--	GetAuthorInfo = _TF_About.PS.GetAuthorInfo,
--	SyncData = _TF_About.SyncData,
}
setmetatable(TF_About, { __metatable = true, __index = _About, __newindex = function() end } )
