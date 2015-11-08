-- ��ս�ҵ�ͼ���ݣ�����ڸ�����ս����е��λ�� id = 160��
OldMap={
bNonwar = true,		-- ���е���ս�ҵ�ͼ
}
RegisterCustomData("OldMap.bNonwar")  



function OldMap.OnFrameBreathe()
	if GetLogicFrameCount()%16==0 then
	--OutputMessage("MSG_SYS","���ں���Ŷ\n")
		OldMap.BindNonwarButton()
	end

end

OldMap.tNonwarData = {
	{ id = 15, x = -355, y = 18 }, -- ����
	{ id = 8, x = 35, y = -50 }, -- ����
	{ id = 11, x = 30, y = -155 }, -- ���
	{ id = 12, x = -30, y = 100 }, -- �㻪
	{ id = 26, x = -90, y = 100}, -- ݶ����
	{ id = 32, x = 35, y = 0 },	-- Сս��
}


-- �����ս�ҵ�ͼ�����а�ť
OldMap.BindNonwarButton = function()
	local h = Station.Lookup("Topmost1/WorldMap/Wnd_All", "Handle_CopyBtn")
	if not h then return end
	if OldMap.bNonwar and not h.bNonwared then
		local me = GetClientPlayer()
		if not me then return end
		for i = 0, h:GetItemCount() - 1 do
			local m = h:Lookup(i)
			if m and m.mapid == 160 then
				local _w, _ = m:GetSize()
				local fS = m.w / _w
				for _, v in ipairs(OldMap.tNonwarData) do
					local bOpen = me.GetMapVisitFlag(v.id)
					--local bOpen=1
					local szFile, nFrame = "ui/Image/MiddleMap/MapWindow.UITex", 41
					if bOpen then
						nFrame = 98		--�����ĵ�ͼ������ɫ�ġ������ɫ��
					end
					h:AppendItemFromString("<image>name=\"nonwar_" .. v.id .. "\" path="..EncodeComponentsString(szFile).." frame="..nFrame.." eventid=341</image>")
					local img = h:Lookup(h:GetItemCount() - 1)
					img.bEnable = bOpen		--��������ʾ������Ч
					img.bSelect = bOpen and (v.id == 15 or v.id == 8  or v.id ==11 or v.id == 12	)		--��������ߣ��㻪�ȣ��������Ծ���ɣ���������CD��������ѡ���㡣��
					img.x = m.x + v.x
					img.y = m.y + v.y
					img.w, img.h = m.w, m.h
					img.id, img.mapid = v.id, v.id
					img.middlemapindex = 0
					img.name = Table_GetMapName(v.mapid)
					img.city = img.name		
					img.button = m.button	
					img.copy = true
					img:SetSize(img.w / fS, img.h / fS)
					img:SetRelPos(img.x / fS - (img.w / fS / 2), img.y / fS - (img.h / fS / 2))
				end
				h:FormatAllItemPos()
				break
			end
		end
		h.bNonwared = true
	end
	if not OldMap.bNonwar and h.bNonwared then
		for _, v in ipairs(OldMap.tNonwarData) do
			local img = h:Lookup("nonwar_" .. v.id)
			if img then
				h:RemoveItem(img)
			end
		end
		h:FormatAllItemPos()
		h.bNonwared = nil
	end
end

Wnd.OpenWindow ("Interface/TF/OldMap/OldMap.ini","OldMap")

-------------------------------------
-- ���ý���
-------------------------------------
_OldMap={}
_OldMap.PS = {}

-- init
_OldMap.PS.OnPanelActive = function(frame)
	local ui = TF.UI(frame)
	-- feature
	_,nY=ui:Append("WndCheckBox", "CheckBox_OMOn",{ txt ="�ϵ�ͼ���е㿪��", x = 0, y = 0, checked =  OldMap.bNonwar}):Click(function(bChecked)  OldMap.bNonwar = bChecked  end):Pos_()
	_,nY=ui:Append("Text", { txt ="������˵����ֱ��ݶ����ս����ս��ǰ���ǡ���ߡ��㻪��", x = 0, y = nY+20, }):Pos_()
	ui:Append("Text", { txt ="��ʹ��ע�⡿����ͼδ����ȥ����������ɷ�һ�μ���", x = 0, y = nY+20, }):Pos_()	
--	ui:Append("Text", { txt =  "��΢�����HM��ȡ" , x = 340, y =340, font = 205 })
end
 
	
---------------------------------------------------------------------
-- ע���¼�����ʼ��
---------------------------------------------------------------------
TF.RegisterPanel("��������(HM", 2043, "������ǿ", _OldMap.PS)