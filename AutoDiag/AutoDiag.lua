-- Ԥ���������� AutoChat����ԭ���ߣ�����@������ɫ����  ǹ�����ǿ@׳���Ҵ�Ψ���� 
 
 
AutoDiag = { 
	IsOn = false,
	SingleOn=false,
	ADTitle="[TF�Զ��Ի�ѡ��]-",
--	TempStr=nil,
--	Iron=false,
IronHave=nil,
IronCh={
[1]=0,
[2]=1,
[3]=1,
[4]=1,
[5]=2,
[6]=3,
[7]=4,
[8]=4,
[9]=5,
[10]=6,
},

	tDiagCustom={},
	tDiagMulti = {
		"һ����ʮ��������СǮ���һ��ں�ô�����ҳ�����", --�칤����
		"��ȡ��԰����","С��","����","ʮ����",
		"��ɽ��ˮ",	--����� wh����
		"���ߣ���֮��Ҳ","���������������","����Ϊ�����Խ�Ϊ��",  "�����������Ϊ��","������ʯ���޲�Ϊ��","������ͨ������Ȼ", --�����Ժ�� ����
		"���㣬��",  "��������ʷʷ��", "��ڣ��", "�������ɽ�����", "���ģ��Ƶ�ʷ�������",	--���ʻ�����	
		"���£����Ͼ������������ˡ�",
		"�˹����ѽ𵰱���",
		"ƭ�ӣ�����Ϊ����˽���أ��Ҽ��������֣��ٱ���",
		"ekey.xoyo.com/jx3",	--������� 
		"ÿ30�����һ�ζ�̬���룬ÿ����̬����ֻ��ʹ��һ��",
		"���̶����ʺţ�������ͷ��绰",
		"��¼��ɽ��ɽ�ӹٷ��Ա��콢�깺��xishanju.taobao.com�����ȴ����������",
		"���϶���","���϶��ǳ�����թƭ��ʽ","���϶��ǳ����ı�����ʽ","�������ֶ�����","�������֣�ȫ������",	"������������ȷ","���Ϸ�ʽ������",	"���϶����Դ���ÿ3����ֻ������1�Σ�",	--5
		"�������ף�����ʱ��Ҫ���붯̬����",
		"��������",
		"���ࣨSymbian���汾���ֻ�",
		"��������",
		"�����Ԫ���ί��",
		"�����������㲻��",
		"�������",
		"���͵�������",	-- ��Ч
		"���������",	"�뿪������",
		--"��л",
		"�ϰ�����ҷݻ�ɰɣ�",
		"��л��ʦ�̻�",
		"С�İ���ȥ���ʣ�",
		"�⡭��С�İ����ѻ�����ȥ��",
		"�⡭��ʮ������Ҳ�����ˣ�С�İ���ظ����ϴ�ȥ��",
		"���ϴ�Ϣŭϲŭ��С���ٰ���ȥ���ʣ�",
		"���ܷ���",
		"�����ü�����",
		"�⡭��ʮ������Ҳ�����ˣ�С�İ���ظ����ϴ�ȥ��",
		"��ȷ���μ�",
		"��ҲҪ��һ���ౡ֮��������30���в���������",
		"������Ҫ�����У��һ۳մ�ʦ��ȶ",
		"������������ȥ��ȥ",
		"��ָ������Ϊ�Ĺ�",
		"�����ǳ�����",
		"�ðɣ����ǻ��ǻ�ȥ��",
		"���ܹܣ��������׹��ģ��뿴�������ͼ��",
		--����ͼ
		"���ҵ�����������ȥ�ɡ�",		"�ǵģ���ȷ���������ҹ�ȥ��",	--�ֹ� ��;ʧ�ܴ���
		"����Ī����λ���ˡ���",		"������Ȼ�Ǹ��ˣ�",	--��ׯԪ
		"Ŷ������λ��ɮ�÷�������",		"��ү���Ƿ���ҪЩ�ԵĶ�����","�������ն춼���㣿","�õģ������ȥ����",		
		"��ȷʮ�ֿ�������","ά����������ȻԸ�⡣",	--�ô���
		"һ��������˰ݷ���������","������׳�����󽫾�ͳ���з���","�ҶԴ󽫾����ľ����������Ͻ�ˮ���಻����������ƺӷ���һ��������ʰ��",	--���� 
		"�����ǡ���","��Ը����㻭��","������","����ȸ��","��ȶ���","����ϸ��","�������","ѩ��",				
		"��л��̫ү......","��л��ǰ��......",
		"��λ�����ι�̾Ϣ��ֹ��",	--��ɽʯ 
	},

}

RegisterCustomData("AutoDiag.IsOn")
RegisterCustomData("AutoDiag.SingleOn") 
RegisterCustomData("AutoDiag.tDiagCustom")
 
local tTargDeny = {	--�����Զ��Ի���npc
	"���졤��ң",
	"С����",
	"��������",
	"�����",
	"��ֱ�Ŵ�ѩ","½С��","ήС��","ը������","�����","����","��Ӣ��", --�����Ժ
	
}
local tDiagDeny = {
	"�Ҳ����ˣ���Ҫ�����ϵ�������ȡ������",	
	"�����뿪�˵�",	--��ֹ��������������
	"�뿪�����й�",
        "��Ҫ���оݵ�ó��",
        "���ۻ���",
	"��ԯ����ʲôί����",
	"�˽�����������",
	"......���������",	"......��ȷ�����",	"��л��",	--����ͼ�ӻ������
	"������ȥ���ֹ�",
	"�鿴��ϸ����",
	"����Ҫ�˽��������",
	"��������֮��",
	"����������Ṧ",
	"��׼���ø�����Ц����",
	"�˽⺣��ɽ�˺�ȵ��",
	"�ǵģ�������ȥ��¥�������",
	"���ʿƾٿ��ԵĹ�����Σ�",
	"ԭͼ�����ˣ���Ҫ����",
	"���ܹܣ����ٸ���һ����Ǭ���ٵ����̡��ɡ�",
}
 

function AutoDiag.OpenDialog() 
--arg0 : dwIndex���
--arg1 : szText�ı�
--arg2 : dwTargetTypeĿ�����ͣ���ö����[[TARGET]]				-- 3 npc  4 player...  5 doodad  6 item
--arg3 : dwTargetIDĿ��ID

	local page = Station.Lookup("Normal/DialoguePanel")
	h=page:Lookup("","")
	h:RemoveItem("ADAddEntr")
	
	if not AutoDiag.IsOn then return end

	local tar=GetClientPlayer()
	if arg2==TARGET.NPC then tar=GetNpc(arg3)
	elseif arg2==TARGET.DOODAD then tar=GetDoodad(arg3)
	elseif arg2==TARGET.ITEM then tar=GetItem(arg3)	
	--elseif arg2~=TARGET.PLAYER then Output(arg2,arg3) tar.szName="��Ŀ��" --��������			--�칤���ˡ�С������ʮ���� ���뿪������ ������
	end

	for _,v in pairs(tTargDeny) do
		if tar.szName == v then   
			TF.Debug("�ܾ��Զ��Ի������ֶ�ѡ��",AutoDiag.ADTitle) 
			return  
		end 
	end

	dwIndex,szContext = arg0,arg1

	if string.find(szContext,"<T%$") then TF.Debug("ƴͼ�ܾ��Զ�ѡ��",AutoDiag.ADTitle)  return end  
	for k,v in pairs(tDiagDeny) do
		if string.find(szContext,v,1) then  TF.Debug("�ܾ��Զ��Ի������ֶ�ѡ��",AutoDiag.ADTitle)  return end	 
	end
	
	local AD_nCount=-1
	local ReplaceCont= string.gsub(szContext, "<%$C?",  function () AD_nCount=AD_nCount+1   return AD_nCount   end)
	--TF.Debug(tar.szName..AD_nCount.."\n"..ReplaceCont.."\n"..dwIndex,AutoDiag.ADTitle)

	if tar.szName=="�����ػ�" then
		tQuestList=GetClientPlayer().GetQuestTree()
		for k,v in pairs(tQuestList) do	--k �������
			for j=1,#v do 
				QuestID=GetClientPlayer().GetQuestID(v[j])
				if QuestID==8247 then 		--��֮��
					QInfo=GetClientPlayer().GetQuestTraceInfo(QuestID)	
					nNeed=QInfo["quest_state"][1]["need"]	
					nhave=QInfo["quest_state"][1]["have"]			 
					if nNeed==7 and AD_nCount==6  and nhave<7 then  
						GetClientPlayer().WindowSelect(dwIndex,nhave)	
						local szTTT= string.match(ReplaceCont,nhave.." (.-)>")	
						TF.Sysmsg("������"..tostring(nhave+1)..szTTT,AutoDiag.ADTitle)
						return
					end
				end	
			end
		end
	end	
 
	if tar.szName=="����̨" then
		nID=AutoDiag.IronCh[AutoDiag.IronHave]
		GetClientPlayer().WindowSelect(dwIndex,nID) 
	end
	
	if AD_nCount==0 then		--��ѡ��
		if AutoDiag.SingleOn then
			TF.Debug("����ѡ��",AutoDiag.ADTitle)
			GetClientPlayer().WindowSelect(dwIndex,0)
		end
	elseif AD_nCount>0  then	 	--��ѡ <$C  �� -1 ��ѡ�� 
		for _,v in pairs(AutoDiag.tDiagMulti) do	--Ԥ���ѡ
			local id=string.match(ReplaceCont,"(%d+) "..v)	
			if id then 
				local nID=tonumber(id)  	TF.Debug("��ѡ��"..v,AutoDiag.ADTitle)
				GetClientPlayer().WindowSelect(dwIndex,nID)	--aInfo[i].attribute.id �����Ļ�����forѭ��- - 
				return    
			end 
		end
		for _,v in pairs(AutoDiag.tDiagCustom) do	--custom...
			local id=string.match(ReplaceCont,"(%d+) "..v)	
			if id then 
				local nID=tonumber(id)  	TF.Debug("��ѡ��"..v,AutoDiag.ADTitle)
				GetClientPlayer().WindowSelect(dwIndex,nID)	 
				return   
			end 
		end
		--��Ԥ�裺���ѡ��
 		ui = TF.UI(page)
		ui:Append("Text", "ADAddEntr",{ txt = "�����Զ��Ի�ѡ��", x =260, y = 35, font = 187 }):Click(function() AutoDiag.AddNewDiag(AD_nCount,ReplaceCont) end):ASize()	
	--else TF.Debug("��ѡ��",AutoDiag.ADTitle)  --count=-1
	end
end

function AutoDiag.AddNewDiag(AD_nCount,ReplaceCont)
	AutoDiag._ShowRes()
	local fr=Station.Lookup("Normal/AddPreDiag")
	local ui = TF.UI(fr)
	ui:Append("Text", {txt="�����Զ��Ի�ѡ��",x=40,y=5, font=205})
	local nEnd,nY=1,42
	for i=0,AD_nCount do
		szTxt=string.match(ReplaceCont,"%d+ (.-)>",nEnd)
		_,nEnd=string.find(ReplaceCont,"%d+ .->",nEnd)
		_,nY=ui:Append("Text",szTxt,  { txt =szTxt , x = 40, y = nY , }):Click(function() table.insert(AutoDiag.tDiagCustom,this:GetName()) TF.Sysmsg("�����Զ��Ի�ѡ� "..this:GetName(),AutoDiag.ADTitle) end):ASize():Pos_()
		nY=nY+10
	end
	ui:Append("Text",  { txt = "�Ƴ�Ԥ��ѡ��", x = 40, y = nY+20 ,font=205 }):Click(AutoDiag.RemoveData):ASize()
	_,nY=ui:Append("Text", { txt = "�ر�", x =200, y = nY+20, font = 205 }):Click(function() 				 
	Station.Lookup("Normal/AddPreDiag"):Destroy()
	end):ASize():Pos_()
	fr:Lookup("","Image_SideMId"):SetSize(420,nY+15)
	fr:SetSize(420,nY+15)
	fr:SetDragArea(0,0,420,nY+15)
end

function AutoDiag.RemoveData()
	AutoDiag._ShowRes()
	local fr=Station.Lookup("Normal/AddPreDiag")
	local  ui = TF.UI(fr)
	ui:Append("Text", {txt="��סCtrlѡ��ĳһ���ɾ������ɾ���ָܻ�!",x=5,y=5, font=205})
	local nX,nY=12,36
	for i=1,#AutoDiag.tDiagCustom do
		_,nY=ui:Append("Text", "Pos"..i, { txt =AutoDiag.tDiagCustom[i] , x = nX, y = nY , }):Click(function()	
			if not IsCtrlKeyDown() then return end
			nPos=tostring(string.match(this:GetName(),"Pos(%d+)"))
			table.remove(AutoDiag.tDiagCustom,nPos) 
			AutoDiag.RemoveData()
			end):ASize():Pos_()
		nY=nY+4
		end
	_,nY=ui:Append("Text", { txt = "�ر�", x =200, y = nY+15, font = 205 }):Click(function() 				 
	Station.Lookup("Normal/AddPreDiag"):Destroy()
	end):ASize():Pos_()
	fr:Lookup("","Image_SideMId"):SetSize(420,nY+15)
	fr:SetSize(420,nY+15)
	fr:SetDragArea(0,0,420,nY+15)
end
 
 
function AutoDiag.SthHp()
-- if arg1==QUEST_EVENT_TYPE.SET_QUEST_VALUE then end
	AutoDiag.IronHave=arg3
end

TF.RegisterEvent("QUEST_DATA_UPDATE", AutoDiag.SthHp)

function AutoDiag.Switch()
	if AutoDiag.IsOn then
		AutoDiag.IsOn = false
		TF.Sysmsg("�ر�",AutoDiag.ADTitle)
	else
		AutoDiag.IsOn = true
		TF.Sysmsg("����",AutoDiag.ADTitle)
	end
end

function AutoDiag._ShowRes()
	local frame = Station.Lookup("Normal/AddPreDiag")
	if frame then
		frame:Destroy()
	end
		frame = Wnd.OpenWindow("Interface\\TF\\AutoDiag\\AddPreDiag.ini","AddPreDiag")
		frame:Show() 
		frame:EnableDrag(1)
		frame:SetDragArea(0,0,420,300)
end
 
AddPreDiag={}
AddPreDiag.OnFrameKeyDown= function()
	if GetKeyName(Station.GetMessageKey()) == "Esc" then
		Station.Lookup("Normal/AddPreDiag"):Destroy()
		return 1
	end
	return 0
end



RegisterEvent("OPEN_WINDOW",AutoDiag.OpenDialog)

 TF.AppendPlayerMenu(function()
	return {
		szOption ="�����Զ��Ի�", bCheck = true,
		bChecked = AutoDiag.IsOn,  
		fnAction = function()  AutoDiag.IsOn = not AutoDiag.IsOn end,
		}		
end) 
 
TF.AppendPlayerMenu( { bDevide = true }) 

TF.AddHotKey("AutoDiag", "�Զ��Ի�����",  AutoDiag.Switch)
 
-------------------------------------
-- ���ý���
-------------------------------------
_AutoDiag={}
_AutoDiag.PS = {}

-- init
_AutoDiag.PS.OnPanelActive = function(frame)
	local ui = TF.UI(frame)
	-- feature
	_,nY=ui:Append("Text",  { txt = "������˵����", x = 0, y = 5 , }):Pos_()
	_,nY=ui:Append("Text", { x = 5, y = nY+12, w = 500, h = 40, multi = true }):Align(0, 0):Text("1.�������Զ�ѡ��2.Ԥ��ĳ��ö����Զ�ѡ��"):Pos_()
	nX,_=ui:Append("WndCheckBox", "Check_bAutoDiag",{ txt ="�Զ��Ի��ܿ���", x = 5, y = nY+20, checked = AutoDiag.IsOn}):Click(function(bChecked) AutoDiag.IsOn = bChecked  ui:Fetch("Check_bAutoSing"):Enable(bChecked)  end):Pos_()  
	_,nY=ui:Append("WndButton", "Button_SetADHotK", { txt = "���ÿ�ݼ�", x = nX, y = nY+20 , font = 185, }):Size(120, 28):Click(function() HotkeyPanel_Open("�����ר�ò������") end):Pos_()
	_,nY=ui:Append("WndCheckBox", "Check_bAutoSing",{ txt ="1���������Զ�ѡ������������ֶ��ر� ", x = 5, y = nY+12, checked = AutoDiag.SingleOn}):Click(function(bChecked) AutoDiag.SingleOn = bChecked  end):Pos_()
	_,nY=ui:Append("Text", { x = 15, y = nY+10, w = 500, h = 40, multi = true }):Align(0, 0):Text("		��Ҫ���������ʱ����ЩNPC�ĵ���Ի��������鷳(�紫��/�Ի��ж�/��ѭ��/�޷����������"):Pos_()	
	nX,_=ui:Append("Text",  { txt = "2�����ö��", x = 30, y = nY+30 , }):Pos_()
	_,nY=ui:Append("WndButton", "Button_SetADHotK", { txt = "�Ƴ�Ԥ��ѡ��", x = nX, y = nY+30 , font = 185, }):Size(130, 28):Click(AutoDiag.RemoveData):Pos_()
	_,nY=ui:Append("Text", { x = 15, y = nY+10, w = 500, h = 40, multi = true }):Align(0, 0):Text("		��������Ԥ��ѡ���������Ԥ��Ķ�ѡ��Ի�ʱ���ڶԻ�ҳ�����Ͻǻ���[�����Զ��Ի�ѡ��]�����ѡ����Ҫ�������Ŀ����"):Pos_()	
--	ui:Append("Text", { txt =  "By ΢��ƾ��" , x = 340, y =340, font = 205 })
end
 
	
---------------------------------------------------------------------
-- ע���¼�����ʼ��
---------------------------------------------------------------------
-- add to TF panel
TF.RegisterPanel("�Զ��Ի�ѡ��", 2586, "�Զ�����", _AutoDiag.PS)	 