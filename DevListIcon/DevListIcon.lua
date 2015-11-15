-- ȫ�ֱ�����
DevListIcon = {
    szTitle = "ϵͳͼ���б�",
}

-- ���ر�����
local _DevListIcon = {
    nCur = 0,            -- ͼ�� ID ��Сֵ
    nMax = 8009,    -- ͼ�� ID ���ֵ 6246
}

-- ��ȡ����������Ϣ
_DevListIcon.GetAuthorInfo = function()
    return "������@���Ŷ���ݶ���� (v1.0b)"
end

-- �ӵ�ͷ��˵��б�
_DevListIcon.OnPlayerMenu = function()
    -- �˵��е����ֱ�Ӵ��������
    return { szOption = "�鿴ϵͳͼ��", fnAction = function() TF.OpenPanel(DevListIcon.szTitle) end }
end

-- ��ͻ��⺯�����״�����ʱִ��
_DevListIcon.OnConflictCheck = function()
    TF.Sysmsg("ִ�� DevListIcon ��ͻ��⺯�� ����")
end

function _DevListIcon._ShowRes()
	local frame = Station.Lookup("Normal/DevListIcon")
	if frame then
		frame:Destroy()
	end
		frame = Wnd.OpenWindow("Interface\\TF\\DevListIcon\\DevListIcon.ini","DevListIcon")
		frame:Show() 
		frame:EnableDrag(1)
		frame:SetDragArea(0,0,1500,900)
end

DevListIcon.OnFrameKeyDown= function()
	if GetKeyName(Station.GetMessageKey()) == "Esc" then
		Station.Lookup("Normal/DevListIcon"):Destroy()
		return 1
	end
	return 0
end


-- ���ý����ʼ������
_DevListIcon.OnPanelActive = function(frame)
    -- ��������崰��ת��Ϊ ��װ�õ� TF.UI ����
    _DevListIcon._ShowRes()
    local frame = Station.Lookup("Normal/DevListIcon")
    local ui = TF.UI(frame)
    local imgs, txts = {}, {}

    -- �ڽ�������ӻ�ɫ�ı������֣�����Ϊ 27 ��
    nX,_=ui:Append("Text", { txt = "ϵͳͼ���ȫ", x = 0, y = 0, font = 27 }):Pos_()
	nX,_=ui:Append("WndEdit", "Edit_Pointer", { x = nX+15, y = 0,  limit = 4, w = 50, h = 28 })
	:Text(_DevListIcon.nCur):Change(function(szText)
		_DevListIcon.nCur = tonumber(szText) or _DevListIcon.nCur or 0
        if _DevListIcon.nCur<0 then _DevListIcon.nCur=0 ui:Fetch("Edit_Pointer"):Text(0)   end
        for k, v in ipairs(imgs) do
            local i = _DevListIcon.nCur + k - 1
            if i > _DevListIcon.nMax then
                break
            end
            imgs[k]:Icon(i)
            txts[k]:Text(tostring(i))
        end
	end):Pos_()
    ui:Append("Text", { txt = "�ر�", x =480, y = 0, font = 205 }):Click(function() 				 
	Station.Lookup("Normal/DevListIcon"):Destroy()
	end):Size(28,28):Pos_()

    -- ��������Ϊ ÿҳ 360����ÿҳ 12�У�ÿ�� 30�� ͼ��
    for i = 1, 360 do
        local x = ((i - 1) % 30) * 50
        local y = math.floor((i - 1) / 30) * 70 + 40
        -- ���һ�� 48x48 ��ͼƬ
        imgs[i] = ui:Append("Image", { w = 48, h = 48, x = x, y = y})
        -- ��ͼƬ�·���� 48x20 �����֣����ж���
        txts[i] = ui:Append("Text", { w = 48, h = 20, x = x, y = y + 48, align = 1 })
    end
  
    -- ���·���� 2 ����Ŧ
    local btn1 = ui:Append("WndButton", { txt = "��һҳ", x = 200, y = 0 })
    local nX, _ = btn1:Pos_()
    local btn2 = ui:Append("WndButton", { txt = "��һҳ", x = nX, y = 0 })
    -- ������һҳ�ĵ��������
    btn1:Click(function()
        _DevListIcon.nCur = _DevListIcon.nCur - #imgs
        if _DevListIcon.nCur <= 0 then
            _DevListIcon.nCur = 0   -- �Ѿ��ǵ�һҳ������Ŧ��Ϊ���ɵ��
            btn1:Enable(false)
        end
        -- ��һҳ�϶�Ҫ��Ϊ���Ե��
        btn2:Enable(true)
        -- ˢ��ͼƬ�����ֵ�����
        for k, v in ipairs(imgs) do
            local i = _DevListIcon.nCur + k - 1
            if i > _DevListIcon.nMax then break end
            imgs[k]:Icon(i)
            txts[k]:Text(tostring(i))
        end
    end):Click()
    -- ������һҳ��Ŧ�Ĵ�����
    btn2:Click(function()
        _DevListIcon.nCur = _DevListIcon.nCur + #imgs
        if (_DevListIcon.nCur + #imgs) >= _DevListIcon.nMax then    -- �Ѿ����һҳ������Ŧ��Ϊ���ɵ��
            btn2:Enable(false)
        end
        -- ��һҳ�϶�Ҫ��Ϊ���Ե��
        btn1:Enable(true)
        -- ˢ��ͼƬ�����ֵ�����
        for k, v in ipairs(imgs) do
            local i = _DevListIcon.nCur + k - 1
            if i > _DevListIcon.nMax then
                break
            end
            imgs[k]:Icon(i)
            txts[k]:Text(tostring(i))
        end
    end)
end

-- �����ý�����ӵ����������������Ϊ����������ͼ�� ID��591������������ _DevListIcon
TF.RegisterPanel(DevListIcon.szTitle, 591, "��������", _DevListIcon)
