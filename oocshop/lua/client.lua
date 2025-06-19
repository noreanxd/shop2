sx, sy = guiGetScreenSize()
w, h = 1366, 768
x,y = 0,0
panelWidth, panelHeight = 1366, 768
scaleX, scaleY = sx / panelWidth, sy / panelHeight

local awesome = exports.creative_fonts:getFont("AwesomeFont", 15*scaleX)
local asofont3 = exports.creative_fonts:getFont("Roboto", 8*scaleX)
local asofont = exports.creative_fonts:getFont("Roboto", 9*scaleX)
local asofont2 = exports.creative_fonts:getFont("Roboto", 10*scaleX)
local asoMont = exports.creative_fonts:getFont("MontserratS", 11*scaleX)
local asoMont2 = exports.creative_fonts:getFont("MontserratB", 11*scaleX)
local asoMont3 = exports.creative_fonts:getFont("MontserratB", 10*scaleX)
local asoMont4 = exports.creative_fonts:getFont("MontserratB", 15*scaleX)
local asoMont8 = exports.creative_fonts:getFont("bebas", 15*scaleX)
local asoMont5 = exports.creative_fonts:getFont("bebas", 12*scaleX)
local asoMont55 = exports.creative_fonts:getFont("bebas", 8*scaleX)
local asoMont12 = exports.creative_fonts:getFont("bebas", 11*scaleX)
local asoMont7 = exports.creative_fonts:getFont("bebas", 20*scaleX)
local asoMont6 = exports.creative_fonts:getFont("bebasB", 15*scaleX)
local asoBebas2 = exports.creative_fonts:getFont("bebasB", 11*scaleX)

click = 0
function asoOOCMarket()
    triggerServerEvent("creative.market.bakiye.guncelle",localPlayer)
	panelDurum = true
    page = "Genel"
    -- page = "Etiket"
    firstTick = getTickCount()
	scrollMain = 0
	scrollVehicle = 0
	scrollHand = 0
	scrollEtiket = 0
	scrollGun = 0
    showCursor(true)
    showChat(false)
	aracname = "Belirsiz"
	aractur = "Super"
	aracvehlib = 0
	aracgta = 0
	aracfiyat = 999
	aracresim = ""
	aracmotor = 0
	arachiz = 0
	aracfren = 0
	silahname = "Belirsiz"
	silahtur = "Belirsiz"
	silahfiyat = 999
	silahhasar = 0
	silahid = 0
	silahkesinlik = 0
	silahrange = 0
    setElementData(localPlayer, "hudkapa", true)
    setElementData(localPlayer,"oocmarket",true)
	if not isTimer(oocshopRender) then
        oocshopRender = setTimer(function()
            ikiyuzellibes = interpolateBetween(0, 0, 0, 255, 0, 0, (getTickCount() - firstTick) / 500, "OutQuad")
            ikiyuzonbes = interpolateBetween(0, 0, 0, 215, 0, 0, (getTickCount() - firstTick) / 500, "OutQuad")
            yuzyirmibes = interpolateBetween(0, 0, 0, 125, 0, 0, (getTickCount() - firstTick) / 500, "OutQuad")
            yuz = interpolateBetween(0, 0, 0, 100, 0, 0, (getTickCount() - firstTick) / 500, "OutQuad")
            elli = interpolateBetween(0, 0, 0, 50, 0, 0, (getTickCount() - firstTick) / 500, "OutQuad")
            onbes = interpolateBetween(0, 0, 0, 15, 0, 0, (getTickCount() - firstTick) / 500, "OutQuad")	

			exports.creative_blur:bluredRectangle(0, 0, sx, sy, tocolor(255, 255, 255, 255))
            dxDrawImage(x * scaleX, y * scaleY, sx, sy, "files/particle.png", 0, 0, 0, tocolor(255, 255, 255, ikiyuzellibes))
			dxDrawImage(260*scaleX,140*scaleY,40*scaleX,30*scaleY,"files/sagclick.png")
			dxDrawText("Geri Dön",295*scaleX,147.5*scaleY, nil, nil, tocolor(200,200,200,ikiyuzonbes), 1, asofont2)
			dxDrawText("QOZTR",1190*scaleX,130*scaleY, nil, nil, tocolor(255,255,255,ikiyuzonbes), 1, asoMont2,"right")
			dxDrawText("0/140 EXP",1190*scaleX,150*scaleY, nil, nil, tocolor(100,100,100,ikiyuzonbes), 1, asoMont3,"right")
			drawRoundedGradientRectangle(1000*scaleX,130*scaleY,40*scaleX,40*scaleY,{radius = 3, offset = {x = 50,y = 100}, color  = {
			color1 = {100,100,100,100}, color2 = {125,125,125,125}, }, rotation = 100, },yuz,false)
			dxDrawImage(1007.5*scaleX,137.5*scaleY,25*scaleX,25*scaleY,"files/gem.png")
			dxDrawText(exports.creative_global:formatMoney((getElementData(localPlayer,"bakiyeMiktar")or 0)).."#00ffc0₺",990*scaleX,138.5*scaleY, nil, nil, tocolor(255,255,255,ikiyuzonbes), 1, asoMont4,"right","top",true,true,false,true)
			drawRoundedGradientRectangle(850*scaleX,130*scaleY,40*scaleX,40*scaleY,{radius = 3, offset = {x = 50,y = 100}, color  = {
			color1 = {100,100,100,100}, color2 = {125,125,125,125}, }, rotation = 100, },yuz,false)
			dxDrawImage(857.5*scaleX,137.5*scaleY,25*scaleX,25*scaleY,"files/dollar2.png")
			dxDrawText(exports.creative_global:formatMoney((getElementData(localPlayer,"money")or 9999)).."#00ffc0$",840*scaleX,138.5*scaleY, nil, nil, tocolor(255,255,255,ikiyuzonbes), 1, asoMont4,"right","top",true,true,false,true)
			drawRoundedGradientRectangle(185*scaleX,185*scaleY,40*scaleX,40*scaleY,{radius = 3, offset = {x = 50,y = 100}, color  = {
			color1 = {200,200,200,200}, color2 = {255,255,255,200}, }, rotation = 100, },elli,false)
			drawRoundedGradientRectangle(180*scaleX,180*scaleY,125*scaleX,50*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
			color1 = {229,197,117, 100}, color2 = {249,217,137,100}, }, rotation = 100, },yuzyirmibes,false)
			dxDrawImage(195*scaleX,195*scaleY,20*scaleX,20*scaleY,"files/pages/shop.png")
			dxDrawText("DONATE\nMAĞAZA",230*scaleX,185*scaleY, nil, nil, tocolor(255, 255, 255, ikiyuzonbes), 0.8, asoMont6)
			drawRoundedGradientRectangle(310*scaleX,180*scaleY,880*scaleX,50*scaleY, {radius = 3,offset = {x = 50,y = 100},color  = {
			color1 = {155, 155, 155, 200},color2 = {200,200,200,200},},rotation = 100,},yuzyirmibes,false)
			drawRoundedGradientRectangle(180*scaleX,140*scaleY,80*scaleX,30*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
			color1 = {229,197,117, 100}, color2 = {249,217,137,100}, }, rotation = 100, },yuzyirmibes,false)
			dxDrawText("SILAH SKIN",190*scaleX,145*scaleY, nil, nil, tocolor(255, 255, 255, ikiyuzonbes), 0.8, asoMont6)
			if mouse(180*scaleX,140*scaleY,80*scaleX,30*scaleY) then
				drawRoundedGradientRectangle(180*scaleX,140*scaleY,80*scaleX,30*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
				color1 = {229,197,117, 100}, color2 = {249,217,137,100}, }, rotation = 100, },yuzyirmibes,false)
				dxDrawText("SILAH SKIN",190*scaleX,145*scaleY, nil, nil, tocolor(255, 255, 255, ikiyuzonbes), 0.8, asoMont6)
				if getKeyState("mouse1") then
					triggerEvent('weapontexture:panel',localPlayer)
					close()
				end
			end
            for k, v in ipairs(pages) do
                if mouse(200*scaleX+(k*120*scaleX),180*scaleY,110*scaleX,50*scaleY) then
                    dxDrawText(v[1],255*scaleX+(k*120*scaleX),197*scaleY,nil,nil,tocolor(249,215,158, ikiyuzellibes), 1, asofont2, "center")
					dxDrawRectangle(225*scaleX+(k*120*scaleX),229*scaleY,60*scaleX,1*scaleY,tocolor(249,215,158,ikiyuzellibes))
                    if page == v[1] then
                        drawRoundedGradientRectangle(200*scaleX+(k*120*scaleX),180*scaleY,110*scaleX,50*scaleY, {radius = 3,offset = {x = 50,y = 100},color  = {
						color1 = {249,215,158, 200},color2 = {100,100,100,200},},rotation = 90,},elli,false)
                    end
					if not panelVanDurum and getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
						page = v[1]
						ozelPlakaState = false
						if plakaBox then
						deleteEditBox(plakaBox)
						end
					end
                else
                    dxDrawText(v[1],255*scaleX+(k*120*scaleX),197*scaleY,nil,nil,page==v[1]and tocolor(249,215,158,ikiyuzellibes) or tocolor(255, 255, 255, ikiyuzellibes), 1, asofont2, "center")
					dxDrawRectangle(225*scaleX+(k*120*scaleX),229*scaleY,60*scaleX,1*scaleY,page==v[1]and tocolor(249,215,158,ikiyuzellibes) or tocolor(200,200,200,ikiyuzellibes))
                    if page == v[1] then
                        drawRoundedGradientRectangle(200*scaleX+(k*120*scaleX),180*scaleY,110*scaleX,50*scaleY, {radius = 3,offset = {x = 50,y = 100},color  = {
						color1 = {249,215,158, 200},color2 = {100,100,100,200},},rotation = 90,},elli,false)
                    end
                end
            end
			-- kampanya
			if page ~= "VIP" and page ~= "Araçlar" and page ~= "Silah" and page ~= "Para" and page ~= "Etiket" and page ~= "Handling" and page ~= "Ana Sayfa" then
				drawRoundedGradientRectangle(180*scaleX,240*scaleY,450*scaleX,110*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {249,217,137,100}, }, rotation = 110, },yuz,false)
				dxDrawRoundedRectangle(190*scaleX,250*scaleY,135*scaleX,35*scaleY,tocolor(137,217,249,yuz),{0.3,0.3,0.3,0.3})
				dxDrawText("SICAK TEKLIF",210*scaleX,255*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont6)
				dxDrawText("AÇILIŞ ÖZEL",615*scaleX,253.5*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont6,"right")
				dxDrawText("Bakiye yüklemelerinizde %10 ekstra",615*scaleX,280*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
				dxDrawText("Kaçırılmaz fırsat!",615*scaleX,295*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
				dxDrawText("yüklemek için www.starisroleplay.com",615*scaleX,325*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
				dxDrawText("Bitmesine kalan: 3 gün 8 saat 10 dakika.",195*scaleX,325*scaleY,nil,nil,tocolor(249,217,137,ikiyuzellibes),1,asofont3)
				-- paket
				if (getElementData(localPlayer,"hoursplayed") or 0) < 15 then -- hoşgeldin olduğu için 15 saat sınır
					dxDrawImage(180*scaleX,460*scaleY,450*scaleX,250*scaleY,"files/char/welcomecha.png")
					drawRoundedGradientRectangle(180*scaleX,360*scaleY,450*scaleX,350*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {249,217,137,100}, }, rotation = 100, },yuz,false)
					dxDrawRoundedRectangle(190*scaleX,370*scaleY,165*scaleX,35*scaleY,tocolor(137,217,249,yuz),{0.3,0.3,0.3,0.3})
					dxDrawText("HOŞGELDIN PAKETI",210*scaleX,375*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont6)
					dxDrawText("PAKET IÇERIĞI",615*scaleX,373.5*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont6,"right")
					dxDrawText("Audi RS7",615*scaleX,400*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
					dxDrawText("1 Aylık VIP 3",615*scaleX,415*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
					dxDrawText("1 Adet AK-47",615*scaleX,430*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
					dxDrawText("100.000 $ İC Para",615*scaleX,445*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
					dxDrawText("PAKET BILGISI",210*scaleX,425*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),0.8,asoMont6)
					dxDrawText("15 saati doldurmamış oyuncularımıza\nözel başlangıç paketi.",210*scaleX,450*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont3)
					dxDrawText("550#00ffc0₺",585*scaleX,672.5*scaleY, nil, nil, tocolor(255,255,255,ikiyuzonbes), 1, asoMont8,"right","top",true,true,false,true)
					dxDrawImage(590*scaleX,670*scaleY,30*scaleX,30*scaleY,"files/gem.png")
					dxDrawText("Bitmesine kalan: 3 gün 8 saat 10 dakika.",195*scaleX,685*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asofont3)
					if mouse(180*scaleX,360*scaleY,450*scaleX,350*scaleY) and not panelVanDurum then
						dxDrawImage(180*scaleX,460*scaleY,450*scaleX,250*scaleY,"files/char/welcomecha.png",0,0,0,tocolor(255,255,255,yuz))
						dxDrawText("550#00ffc0₺",585*scaleX,672.5*scaleY, nil, nil, tocolor(255,255,255,ikiyuzonbes), 1, asoMont8,"right","top",true,true,false,true)
						dxDrawImage(590*scaleX,670*scaleY,30*scaleX,30*scaleY,"files/gem.png")
						dxDrawText("Bitmesine kalan: 3 gün 8 saat 10 dakika.",195*scaleX,685*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asofont3)
						if not panelVanDurum and getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
							-- panelVan("Hoşgeldin Paketi",750,"staris.shop.welcomepack")
						end
					end
				else
					dxDrawText("Anında haberdar olmak için,\ndiscord.gg/starisroleplay",400*scaleX,520*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),0.5,asoMont7,"center")
					drawRoundedGradientRectangle(180*scaleX,360*scaleY,450*scaleX,350*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {249,217,137,100}, }, rotation = 100, },yuz,false)
					dxDrawText("Kampanya Bulunumadı.",400*scaleX,475*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont7,"center")
				end
			end
			if page == "Ana Sayfa" then
				dxDrawText("Şuanda bir teklif yok.\nDaha sonra tekrar gel..",660*scaleX,350*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asoMont4,"center")
			
			elseif page == "Genel" then
				drawRoundedGradientRectangle(640*scaleX,240*scaleY,550*scaleX,55*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
				color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
				dxDrawRoundedRectangle(650*scaleX,250*scaleY,35*scaleX,35*scaleY,tocolor(200,200,200,yuz),{0.3,0.3,0.3,0.3})
				dxDrawImage(655*scaleX,255*scaleY,25*scaleX,25*scaleY,"files/pages/home.png")
				dxDrawText("Genel Ürünler;",695*scaleX,255*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont8)
				addX = 0
				addY = 0
				counter = 0
				createScrollBar(1185*scaleX,305*scaleY,5*scaleX,400*scaleY, #mainPage, 3, scrollMain)
				for k,v in ipairs(mainPage) do
					if k > scrollMain and counter < 9 then
						drawRoundedGradientRectangle(640*scaleX+addX,305*scaleY+addY,172*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
						color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
						dxDrawImage(685*scaleX+addX,335*scaleY+addY,77*scaleX,77*scaleY,"files/main/"..v.image..".png",0,0,0,tocolor(255,255,255,ikiyuzellibes))
						if not panelVanDurum and mouse(640*scaleX+addX,305*scaleY+addY,172*scaleX,127*scaleY) then
							drawRoundedGradientRectangle(640*scaleX+addX,305*scaleY+addY,172*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
							color1 = {150,150,150, 100}, color2 = {249,217,137,100}, }, rotation = 100, },elli,false)
							if not panelVanDurum and getKeyState("mouse1") and click+300 <= getTickCount() then 
								click = getTickCount()
								if v.type == 1 then
							    aractexture(v.urun,tonumber(v.fiyat),v.event)
								elseif v.type == 2 then 
								buychangevehplate(v.fiyat)
								else
								panelVan(v.urun,tonumber(v.fiyat),v.event)
							    end
							end
						end
						dxDrawText(exports.creative_global:formatMoney(v.fiyat).."#00ffc0₺",800*scaleX+addX,400*scaleY+addY,nil,nil,tocolor(255,255,255,ikiyuzonbes),1,asoMont8,"right","top",true,true,false,true)
						dxDrawText(v.urun,725*scaleX+addX,310*scaleY+addY,nil,nil,tocolor(255,255,255,ikiyuzonbes),1,asoMont5,"center","top",true,true,false,true)
						addX = addX + 181.5 * scaleX
						counter = counter + 1
						if counter % 3 == 0 then
							addX = 0
							addY = addY + 137*scaleY
						end
					end
				end
			elseif page == "VIP" then
				addX = 0
				addY = 0
				counter = 0
				for k,v in ipairs(vipPage) do
					drawRoundedGradientRectangle(190*scaleX+addX,240*scaleY+addY,240*scaleX,450*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
						color1 = {150,150,150, 100}, color2 = {v.r1,v.g1,v.b1,100}, }, rotation = 90, },yuz,false)
					if not panelVanDurum and mouse(190*scaleX+addX,240*scaleY+addY,240*scaleX,450*scaleY) then
						drawRoundedGradientRectangle(190*scaleX+addX,240*scaleY+addY,240*scaleX,450*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
						color1 = {150,150,150, 100}, color2 = {v.r1,v.g1,v.b1,100}, }, rotation = 90, },yuz,false)
						-- if not panelVipDurum and getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount() panelVip(v.urun,v.fiyat,v.event) end
						if not panelVipDurum and getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount() vipbuy(v.event,(v.fiyat/30)) end
						-- vipbuy(value.event,(value.fiyat/30))
						
						-- if isClicked() then 
						-- print("hooopp")
						-- end
						
						-- if not panelVipDurum and getKeyState("mouse1") and click+300 <= getTickCount() then 
						-- click = getTickCount() vipbuy(value.event,(value.fiyat/30))
						-- end
					end
					dxDrawImage(255*scaleX+addX,260*scaleY,100*scaleX,100*scaleY,":srp_nametag/samp/"..v.image..".png",0,0,0,tocolor(255,255,255,ikiyuzonbes))
					dxDrawText(v.urun.." OZELLIKLERI",305*scaleX+addX,375*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont6,"center")
					dxDrawText(v.bilgi,200*scaleX+addX,405*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont12)
					dxDrawText((v.fiyat).." ₺ / ay",305*scaleX+addX,650*scaleY,nil,nil,tocolor(55,255,185,ikiyuzellibes),0.8,asoMont7,"center")
					addX = addX + 250 * scaleX
				end
			elseif page == "Araçlar" then
				addX = 0
				addY = 0
				counter = 0
				drawRoundedGradientRectangle(415*scaleX,240*scaleY,775*scaleX,50*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
				dxDrawRoundedRectangle(425*scaleX,247.5*scaleY,35*scaleX,35*scaleY,tocolor(200,200,200,yuz),{0.3,0.3,0.3,0.3})
				dxDrawImage(430*scaleX,252.5*scaleY,25*scaleX,25*scaleY,"files/pages/home.png")
				dxDrawText("Araç Listesi;",470*scaleX,255*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont8)
				addX = 0
				addY = 0
				counter = 0
				createScrollBar(1185*scaleX,305*scaleY,5*scaleX,400*scaleY, #aracPage, 3, scrollVehicle)
				for k,v in ipairs(aracPage) do
					if k > scrollVehicle and counter < 9 then
						drawRoundedGradientRectangle(415*scaleX+addX,305*scaleY+addY,245*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
							color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
						if not panelVanDurum and mouse(415*scaleX+addX,305*scaleY+addY,245*scaleX,127*scaleY) then
							
							drawRoundedGradientRectangle(415*scaleX+addX,305*scaleY+addY,245*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
							color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
							
							if getKeyState("mouse1") then
								aracname = v[3]
								aractur = v[4]
								aracvehlib = v[2]
								aracgta = v[1]
								aracfiyat = v[6]
								aracresim = v[7]
								aracmotor = v[8]
								arachiz = v[9]
								aracfren = v[10]
							end
						end
						dxDrawImage(440*scaleX+addX,295*scaleY+addY,200*scaleX,125*scaleY,v[7],0,0,0,tocolor(255,255,255,ikiyuzellibes))
						dxDrawText(exports.creative_global:formatMoney(v[6]).."#00ffc0₺",540*scaleX+addX,410*scaleY+addY,nil,nil,tocolor(255,255,255,ikiyuzonbes),0.8,asoMont8,"center","top",true,true,false,true)
						dxDrawText(v[3],425*scaleX+addX,310*scaleY+addY,nil,nil,tocolor(255,255,255,ikiyuzonbes),1,asoMont5,"left","top",true,true,false,true)
						addX = addX + 255 * scaleX
						counter = counter + 1
						if counter % 3 == 0 then
							addX = 0
							addY = addY + 137*scaleY
						end
					end
				end
				drawRoundedGradientRectangle(180*scaleX,240*scaleY,225*scaleX,465*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {249,217,137,100}, }, rotation = 110, },yuz,false) -- main
				drawRoundedGradientRectangle(185*scaleX,245*scaleY,215*scaleX,75*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {225,225,225,100}, }, rotation = 110, },yuz,false) -- üst
				dxDrawText("YENI!",190*scaleX,250*scaleY,nil,nil,tocolor(249,217,137,ikiyuzellibes),1,asoMont6)
				dxDrawText("BMW M3 GTR",190*scaleX,270*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),0.9,asoMont6)
				dxDrawText("Şimdi hemen satın al!",390*scaleX,300*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
				dxDrawText("300#f9d98a₺",390*scaleX,250*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont8,"right","top",true,true,false,true)
				drawRoundedGradientRectangle(185*scaleX,330*scaleY,215*scaleX,370*scaleY,{radius = 3,offset = {x = 5,y = 25},color={
					color1 = {249,217,137, 100}, color2 = {150,150,150,100}, }, rotation = 110, },yuz,false) -- alt
				dxDrawText(aracname,195*scaleX,335*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont8)
				dxDrawText(aractur,195*scaleX,360*scaleY,nil,nil,tocolor(249,217,137,ikiyuzellibes),1,asoBebas2)
				drawRoundedGradientRectangle(190*scaleX,385*scaleY,205*scaleX,100*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {255,255,255, 100}, color2 = {200,200,200,100}, }, rotation = 110, },yuz,false)
				if aracresim == "" then else
				dxDrawImage(210*scaleX,400*scaleY,150*scaleX,75*scaleY,aracresim,0,0,0,tocolor(255,255,255,ikiyuzellibes))
				end
				drawRoundedGradientRectangle(190*scaleX,490*scaleY,205*scaleX,35*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {100,100,100, 100}, color2 = {50,50,50,100}, }, rotation = 110, },yuz,false)
				dxDrawText("Motor Gücü",195*scaleX,495*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asofont2)
				dxDrawRoundedRectangle(195*scaleX,515*scaleY,195*scaleX,5*scaleY,tocolor(137,217,249,yuz),{1,1,1,1})
				dxDrawRoundedRectangle(195*scaleX,515*scaleY,(aracmotor / 15) * 195*scaleX,5*scaleY,tocolor(137,217,249,ikiyuzellibes),{1,1,1,1})
				drawRoundedGradientRectangle(190*scaleX,530*scaleY,205*scaleX,35*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {100,100,100, 100}, color2 = {50,50,50,100}, }, rotation = 110, },yuz,false)
				dxDrawText("Hız",195*scaleX,535*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asofont2)
				dxDrawRoundedRectangle(195*scaleX,555*scaleY,195*scaleX,5*scaleY,tocolor(137,217,249,yuz),{1,1,1,1})
				dxDrawRoundedRectangle(195*scaleX,555*scaleY,(arachiz / 400) * 195*scaleX,5*scaleY,tocolor(137,217,249,ikiyuzellibes),{1,1,1,1})
				drawRoundedGradientRectangle(190*scaleX,570*scaleY,205*scaleX,35*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {100,100,100, 100}, color2 = {50,50,50,100}, }, rotation = 110, },yuz,false)
				dxDrawText("Fren",195*scaleX,575*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asofont2)
				dxDrawRoundedRectangle(195*scaleX,595*scaleY,195*scaleX,5*scaleY,tocolor(137,217,249,yuz),{1,1,1,1})
				dxDrawRoundedRectangle(195*scaleX,595*scaleY,(aracfren / 15) * 195*scaleX,5*scaleY,tocolor(137,217,249,ikiyuzellibes),{1,1,1,1})
				--customplate
				-- drawRoundedGradientRectangle(200*scaleX,615*scaleY,15*scaleX,15*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					-- color1 = {255,255,255, 100}, color2 = {50,50,50,100}, }, rotation = 110, },yuz,false)
				-- dxDrawText("Özel Plaka #f9d989(+40₺)",220*scaleX,615*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),0.6,asoMont8,"left","top",true,true,false,true)
				-- drawRoundedGradientRectangle(200*scaleX,635*scaleY,150*scaleX,20*scaleY,{radius = 1,offset = {x = 50,y = 100},color={
					-- color1 = {215,215,215, 100}, color2 = {255,255,255,100}, }, rotation = 90, },yuz,false)
				-- drawRoundedGradientRectangle(350*scaleX,635*scaleY,20*scaleX,20*scaleY,{radius = 1,offset = {x = 50,y = 100},color={
					-- color1 = {229,197,107, 100}, color2 = {249,217,137,100}, }, rotation = 90, },yuz,false)
				-- if not ozelPlakaState then
					-- if mouse(350*scaleX,635*scaleY,20*scaleX,20*scaleY) then
						-- drawRoundedGradientRectangle(350*scaleX,635*scaleY,20*scaleX,20*scaleY,{radius = 1,offset = {x = 50,y = 100},color={
						-- color1 = {229,197,107, 100}, color2 = {249,217,137,100}, }, rotation = 90, },yuz,false)
						-- if getKeyState("mouse1") and click+600 <= getTickCount() then click = getTickCount()
							-- ozelPlakaState = true
							-- if not plakaBox then
								-- plakaBox = createEditBox(220*scaleX,635*scaleY,1,asoMont12,10,"orn: ASO 3457",255,255,255,ikiyuzellibes,false,false,false)
							-- end
						-- end
					-- end
				-- else
					-- if mouse(350*scaleX,635*scaleY,20*scaleX,20*scaleY) then
						-- drawRoundedGradientRectangle(350*scaleX,635*scaleY,20*scaleX,20*scaleY,{radius = 1,offset = {x = 50,y = 100},color={
						-- color1 = {229,197,107, 100}, color2 = {249,217,137,100}, }, rotation = 90, },yuz,false)
						-- if getKeyState("mouse1") and click+600 <= getTickCount() then click = getTickCount()
							-- ozelPlakaState = false
							-- deleteEditBox(plakaBox)
						-- end
					-- end
					-- dxDrawImage(350*scaleX,635*scaleY,20*scaleX,20*scaleY,"files/tick.png",0,0,0,tocolor(255,255,255,ikiyuzellibes))
				-- end
				--satınal/test
				drawRoundedGradientRectangle(185*scaleX,670*scaleY,165*scaleX,30*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {229,197,107, 100}, color2 = {249,217,137,100}, }, rotation = 90, },yuz,false)
				
				-- if not mouse(350*scaleX,670*scaleY,50*scaleX,30*scaleY) then 
				-- drawRoundedGradientRectangle(350*scaleX,670*scaleY,50*scaleX,30*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					-- color1 = {215,215,215, 100}, color2 = {255,255,255,100}, }, rotation = 90, },yuz,false)
				-- else
				
				-- if isClicked2() then 
				-- triggerServerEvent("car.shop.testcar",localPlayer,localPlayer,aracvehlib,aracgta)
				-- close()
				-- end
				
				-- drawRoundedGradientRectangle(350*scaleX,670*scaleY,50*scaleX,30*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					-- color1 = {215,215,215, 100}, color2 = {255,255,255,100}, }, rotation = 90, },120,false)				
				-- end
				
				
				dxDrawText(aracfiyat.."₺ şimdi satın al",265*scaleX,673*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),0.9,asoMont8,"center","top",true,true,false,true)
				-- dxDrawText("TEST",375*scaleX,673*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),0.9,asoMont8,"center","top",true,true,false,true)
				if mouse(185*scaleX,670*scaleY,165*scaleX,30*scaleY) then
					drawRoundedGradientRectangle(185*scaleX,670*scaleY,165*scaleX,30*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {229,197,107, 100}, color2 = {249,217,137,100}, }, rotation = 90, },yuz,false)
					if not plakaBox then
					dxDrawText(aracfiyat.."₺ şimdi satın al",265*scaleX,673*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),0.9,asoMont8,"center","top",true,true,false,true)
					else
					dxDrawText((aracfiyat+40).."₺ şimdi satın al",265*scaleX,673*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),0.9,asoMont8,"center","top",true,true,false,true)
					end
					if getKeyState("mouse1") and click+600 <= getTickCount() then click = getTickCount()
						if not plakaBox then
							triggerServerEvent("shop.vehicle",localPlayer,aracgta,aracvehlib,255,255,255,aracfiyat,aracname,false,"")
						else
							triggerServerEvent("shop.vehicle",localPlayer,aracgta,aracvehlib,255,255,255,aracfiyat+40,aracname,false,getEditBoxText(plakaBox))
						end
					end
				end
			elseif page == "Silah" then
				addX = 0
				addY = 0
				counter = 0
				drawRoundedGradientRectangle(415*scaleX,240*scaleY,775*scaleX,50*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
				dxDrawRoundedRectangle(425*scaleX,247.5*scaleY,35*scaleX,35*scaleY,tocolor(200,200,200,yuz),{0.3,0.3,0.3,0.3})
				dxDrawImage(430*scaleX,252.5*scaleY,25*scaleX,25*scaleY,"files/pages/home.png")
				dxDrawText("Silah Listesi;",470*scaleX,255*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont8)
				addX = 0
				addY = 0
				counter = 0
				createScrollBar(1185*scaleX,305*scaleY,5*scaleX,400*scaleY, #silahPage, 3, scrollGun)
				for k,v in ipairs(silahPage) do
					if k > scrollGun and counter < 9 then
						drawRoundedGradientRectangle(415*scaleX+addX,305*scaleY+addY,245*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
							color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
						if not panelVanDurum and mouse(415*scaleX+addX,305*scaleY+addY,245*scaleX,127*scaleY) then
							drawRoundedGradientRectangle(415*scaleX+addX,305*scaleY+addY,245*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
							color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
							if getKeyState("mouse1") then
								silahname = v[2]
								silahtur = v[3]
								silahid = v[1]
								silahfiyat = v[4]
								silahrange = v[5]
								silahkesinlik = v[6]
								silahhasar = v[7]
							end
						end
						dxDrawImage(480*scaleX+addX,335*scaleY+addY,100*scaleX,75*scaleY,":items/images/-"..v[1]..".png",0,0,0,tocolor(255,255,255,ikiyuzellibes))
						dxDrawText(exports.creative_global:formatMoney(v[4]).."#00ffc0₺",540*scaleX+addX,410*scaleY+addY,nil,nil,tocolor(255,255,255,ikiyuzonbes),0.8,asoMont8,"center","top",true,true,false,true)
						dxDrawText(v[2],425*scaleX+addX,310*scaleY+addY,nil,nil,tocolor(255,255,255,ikiyuzonbes),1,asoMont5,"left","top",true,true,false,true)
						addX = addX + 255 * scaleX
						counter = counter + 1
						if counter % 3 == 0 then
							addX = 0
							addY = addY + 137*scaleY
						end
					end
				end
				drawRoundedGradientRectangle(180*scaleX,240*scaleY,225*scaleX,465*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {249,217,137,100}, }, rotation = 110, },yuz,false) -- main
				drawRoundedGradientRectangle(185*scaleX,245*scaleY,215*scaleX,75*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {225,225,225,100}, }, rotation = 110, },yuz,false) -- üst
				dxDrawText("POPÜLER!",190*scaleX,250*scaleY,nil,nil,tocolor(249,217,137,ikiyuzellibes),1,asoMont6)
				dxDrawText("M4",190*scaleX,270*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),0.9,asoMont6)
				dxDrawText("Şimdi hemen satın al!",390*scaleX,300*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
				dxDrawText("350#f9d98a₺",390*scaleX,250*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont8,"right","top",true,true,false,true)
				drawRoundedGradientRectangle(185*scaleX,330*scaleY,215*scaleX,370*scaleY,{radius = 3,offset = {x = 5,y = 25},color={
					color1 = {249,217,137, 100}, color2 = {150,150,150,100}, }, rotation = 110, },yuz,false) -- alt
				dxDrawText(silahname,195*scaleX,335*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont8)
				dxDrawText(silahtur,195*scaleX,360*scaleY,nil,nil,tocolor(249,217,137,ikiyuzellibes),1,asoBebas2)
				drawRoundedGradientRectangle(190*scaleX,385*scaleY,205*scaleX,100*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {255,255,255, 100}, color2 = {200,200,200,100}, }, rotation = 110, },yuz,false)
				dxDrawImage(235*scaleX,400*scaleY,100*scaleX,75*scaleY,":items/images/-"..silahid..".png",0,0,0,tocolor(255,255,255,ikiyuzellibes))
				drawRoundedGradientRectangle(190*scaleX,490*scaleY,205*scaleX,35*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {100,100,100, 100}, color2 = {50,50,50,100}, }, rotation = 110, },yuz,false)
				dxDrawText("Mesafe",195*scaleX,495*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asofont2)
				dxDrawRoundedRectangle(195*scaleX,515*scaleY,195*scaleX,5*scaleY,tocolor(137,217,249,yuz),{1,1,1,1})
				dxDrawRoundedRectangle(195*scaleX,515*scaleY,(silahrange / 15) * 195*scaleX,5*scaleY,tocolor(137,217,249,ikiyuzellibes),{1,1,1,1})
				drawRoundedGradientRectangle(190*scaleX,530*scaleY,205*scaleX,35*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {100,100,100, 100}, color2 = {50,50,50,100}, }, rotation = 110, },yuz,false)
				dxDrawText("Kesinlik",195*scaleX,535*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asofont2)
				dxDrawRoundedRectangle(195*scaleX,555*scaleY,195*scaleX,5*scaleY,tocolor(137,217,249,yuz),{1,1,1,1})
				dxDrawRoundedRectangle(195*scaleX,555*scaleY,(silahkesinlik / 15) * 195*scaleX,5*scaleY,tocolor(137,217,249,ikiyuzellibes),{1,1,1,1})
				drawRoundedGradientRectangle(190*scaleX,570*scaleY,205*scaleX,35*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {100,100,100, 100}, color2 = {50,50,50,100}, }, rotation = 110, },yuz,false)
				dxDrawText("Hasar",195*scaleX,575*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asofont2)
				dxDrawRoundedRectangle(195*scaleX,595*scaleY,195*scaleX,5*scaleY,tocolor(137,217,249,yuz),{1,1,1,1})
				dxDrawRoundedRectangle(195*scaleX,595*scaleY,(silahhasar / 150) * 195*scaleX,5*scaleY,tocolor(137,217,249,ikiyuzellibes),{1,1,1,1})
				--ekhak
				-- drawRoundedGradientRectangle(200*scaleX,615*scaleY,15*scaleX,15*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					-- color1 = {255,255,255, 100}, color2 = {50,50,50,100}, }, rotation = 110, },yuz,false)
				-- dxDrawText("Ek Hak #f9d989(+30₺)",220*scaleX,615*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),0.6,asoMont8,"left","top",true,true,false,true)
				-- drawRoundedGradientRectangle(200*scaleX,635*scaleY,150*scaleX,20*scaleY,{radius = 1,offset = {x = 50,y = 100},color={
					-- color1 = {215,215,215, 100}, color2 = {255,255,255,100}, }, rotation = 90, },yuz,false)
				-- drawRoundedGradientRectangle(350*scaleX,635*scaleY,20*scaleX,20*scaleY,{radius = 1,offset = {x = 50,y = 100},color={
					-- color1 = {229,197,107, 100}, color2 = {249,217,137,100}, }, rotation = 90, },yuz,false)
				-- dxDrawText("BU URUN TESTTEDIR!",220*scaleX,635*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),0.6,asoMont8,"left","top",true,true,false,true)
				--satınal/test
				drawRoundedGradientRectangle(185*scaleX,670*scaleY,215*scaleX,30*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {229,197,107, 100}, color2 = {249,217,137,100}, }, rotation = 90, },yuz,false)
				-- drawRoundedGradientRectangle(350*scaleX,670*scaleY,50*scaleX,30*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					-- color1 = {215,215,215, 100}, color2 = {255,255,255,100}, }, rotation = 90, },yuz,false)
				dxDrawText(silahfiyat.."₺ şimdi satın al",290*scaleX,673*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),0.9,asoMont8,"center","top",true,true,false,true)
				-- dxDrawText("TEST",375*scaleX,673*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),0.9,asoMont8,"center","top",true,true,false,true)
				if mouse(185*scaleX,670*scaleY,165*scaleX,30*scaleY) then
					drawRoundedGradientRectangle(185*scaleX,670*scaleY,215*scaleX,30*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {229,197,107, 100}, color2 = {249,217,137,100}, }, rotation = 90, },yuz,false)
					dxDrawText(silahfiyat.."₺ şimdi satın al",290*scaleX,673*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),0.9,asoMont8,"center","top",true,true,false,true)
					if getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
						triggerServerEvent("shop.gun",localPlayer,silahid,silahfiyat)
					end
				end
			elseif page == "Para" then
				drawRoundedGradientRectangle(180*scaleX,240*scaleY,400*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {249,217,137,100}, }, rotation = 110, },yuz,false)
				dxDrawRoundedRectangle(190*scaleX,250*scaleY,135*scaleX,35*scaleY,tocolor(137,217,249,yuz),{0.3,0.3,0.3,0.3})
				dxDrawText("PARA CEVIR",220*scaleX,255*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont6)
				dxDrawText("SICAK TEKLIF",565*scaleX,253.5*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont6,"right")
				dxDrawText("Bakiye çevirmelerinizde %5 ekstra",565*scaleX,280*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
				dxDrawText("Kaçırılmaz fırsat!",565*scaleX,295*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
				dxDrawText("bakiye yüklemek için www.starisroleplay.com",565*scaleX,340*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
				
				drawRoundedGradientRectangle(180*scaleX,372*scaleY,400*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {249,217,137,100}, }, rotation = 110, },yuz,false)
				dxDrawRoundedRectangle(190*scaleX,382*scaleY,135*scaleX,35*scaleY,tocolor(137,217,249,yuz),{0.3,0.3,0.3,0.3})
				dxDrawText("YENI EŞYA!",220*scaleX,387*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont6)
				dxDrawText("OOC BAKIYE ITEMI",565*scaleX,385.5*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont6,"right")
				dxDrawText("Yeni ooc bakiye kullanma eşyası!",565*scaleX,412*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
				dxDrawText("Kaçırılmaz fırsat!",565*scaleX,427*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
				dxDrawText("bakiye yüklemek için www.starisroleplay.com",565*scaleX,472*scaleY,nil,nil,tocolor(200,200,200,ikiyuzellibes),1,asofont,"right")
				addX = 0
				for k,v in ipairs(icPage) do
					drawRoundedGradientRectangle(585*scaleX+addX,240*scaleY,195*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
						color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
					if not panelVanDurum and mouse(585*scaleX+addX,240*scaleY,195*scaleX,127*scaleY) then
						drawRoundedGradientRectangle(585*scaleX+addX,240*scaleY,195*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
						color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
						if getKeyState("mouse1") then
							panelVan(v[2].."$ IC",v[1],"shop.icpara",v[2])
						end
					end
					dxDrawImage(650.5*scaleX+addX,270*scaleY,75*scaleX,75*scaleY,":items/images/134.png",0,0,0,tocolor(255,255,255,ikiyuzellibes))
					dxDrawText(exports.creative_global:formatMoney(v[1]).."#00ffc0₺",690*scaleX+addX,345*scaleY,nil,nil,tocolor(255,255,255,ikiyuzonbes),0.8,asoMont8,"center","top",true,true,false,true)
					dxDrawText(v[2],595*scaleX+addX,245*scaleY,nil,nil,tocolor(255,255,255,ikiyuzonbes),1,asoMont5,"left","top",true,true,false,true)
					addX = addX + 205 * scaleX
				end
				addX = 0
				for k,v in ipairs(oocPage) do
					drawRoundedGradientRectangle(585*scaleX+addX,372*scaleY,195*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
						color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
					if not panelVanDurum and mouse(585*scaleX+addX,372*scaleY,195*scaleX,127*scaleY) then
						drawRoundedGradientRectangle(585*scaleX+addX,372*scaleY,195*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
						color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
						if getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
							panelVan(v[2],v[1],"shop.oocpara",v[3])
						end
					end
					dxDrawImage(650.5*scaleX+addX,402*scaleY,75*scaleX,75*scaleY,":items/images/"..v[3]..".png",0,0,0,tocolor(255,255,255,ikiyuzellibes))
					dxDrawText(exports.creative_global:formatMoney(v[1]).."#00ffc0₺",690*scaleX+addX,477*scaleY,nil,nil,tocolor(255,255,255,ikiyuzonbes),0.8,asoMont8,"center","top",true,true,false,true)
					dxDrawText(v[2],595*scaleX+addX,377*scaleY,nil,nil,tocolor(255,255,255,ikiyuzonbes),1,asoMont5,"left","top",true,true,false,true)
					addX = addX + 205 * scaleX
				end
			elseif page == "Etiket" then

				addX = 0
				addY = 0
				counter = 0
				drawRoundedGradientRectangle(180*scaleX,240*scaleY,1010*scaleX,50*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
				dxDrawRoundedRectangle(190*scaleX,247.5*scaleY,35*scaleX,35*scaleY,tocolor(200,200,200,yuz),{0.3,0.3,0.3,0.3})
				dxDrawImage(195*scaleX,252.5*scaleY,25*scaleX,25*scaleY,"files/pages/tag.png")
				dxDrawText("Etiket Listesi;",230*scaleX,255*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont8)
				addX = 0
				addY = 0
				counter = 0
				createScrollBar(1185*scaleX,305*scaleY,5*scaleX,400*scaleY, #etiketPage, 3, scrollEtiket)
				for k,v in ipairs(etiketPage) do
					if k > scrollEtiket and counter < 12 then
						drawRoundedGradientRectangle(180*scaleX+addX,305*scaleY+addY,235*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
							color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
						if not panelVanDurum and mouse(180*scaleX+addX,305*scaleY+addY,235*scaleX,127*scaleY) then
							drawRoundedGradientRectangle(180*scaleX+addX,305*scaleY+addY,235*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
							color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
							if getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
                            panelVan(v[1],v[3],"etiketvercanimbenim",v[4])
							end
						end
						dxDrawImage(255*scaleX+addX,335*scaleY+addY,80*scaleX,75*scaleY,v[2],0,0,0,tocolor(255,255,255,ikiyuzellibes))
						dxDrawText(exports.creative_global:formatMoney(v[3]).."#00ffc0₺",300*scaleX+addX,410*scaleY+addY,nil,nil,tocolor(255,255,255,ikiyuzonbes),0.8,asoMont8,"center","top",true,true,false,true)
						dxDrawText(v[1],295*scaleX+addX,310*scaleY+addY,nil,nil,tocolor(255,255,255,ikiyuzonbes),1,asoMont5,"center","top",true,true,false,true)
						addX = addX + 245 * scaleX
						counter = counter + 1
						if counter % 4 == 0 then
							addX = 0
							addY = addY + 137*scaleY
						end
					end
				end	
			elseif page == "Handling" then
				drawRoundedGradientRectangle(180*scaleX,240*scaleY,1010*scaleX,50*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
					color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
				dxDrawRoundedRectangle(190*scaleX,247.5*scaleY,35*scaleX,35*scaleY,tocolor(200,200,200,yuz),{0.3,0.3,0.3,0.3})
				dxDrawImage(195*scaleX,252.5*scaleY,25*scaleX,25*scaleY,"files/pages/fast.png")
				dxDrawText("Handling Listesi;",230*scaleX,255*scaleY,nil,nil,tocolor(255,255,255,ikiyuzellibes),1,asoMont8)
				addX = 0
				addY = 0
				counter = 0
				-- createScrollBar(1185*scaleX,305*scaleY,5*scaleX,400*scaleY, #etiketPage, 3, scrollEtiket)
				for k,v in ipairs(handPage) do
					if k > scrollHand and counter < 12 then
						drawRoundedGradientRectangle(180*scaleX+addX,305*scaleY+addY,235*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
							color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
						if not panelVanDurum and mouse(180*scaleX+addX,305*scaleY+addY,235*scaleX,127*scaleY) then
							drawRoundedGradientRectangle(180*scaleX+addX,305*scaleY+addY,235*scaleX,127*scaleY,{radius = 3,offset = {x = 50,y = 100},color={
							color1 = {150,150,150, 100}, color2 = {200,200,200,100}, }, rotation = 100, },yuz,false)
							if getKeyState("mouse1") then
                            panelVan(v.urun,v.fiyat,v.event)
							end
						end
						dxDrawImage(255*scaleX+addX,335*scaleY+addY,80*scaleX,75*scaleY,"files/stage/"..v.image..".png",0,0,0,tocolor(255,255,255,ikiyuzellibes))
						dxDrawText(exports.creative_global:formatMoney(v.fiyat).."#00ffc0₺",300*scaleX+addX,410*scaleY+addY,nil,nil,tocolor(255,255,255,ikiyuzonbes),0.8,asoMont8,"center","top",true,true,false,true)
						dxDrawText(v.urun,295*scaleX+addX,310*scaleY+addY,nil,nil,tocolor(255,255,255,ikiyuzonbes),1,asoMont5,"center","top",true,true,false,true)
						addX = addX + 245 * scaleX
						counter = counter + 1
						if counter % 4 == 0 then
							addX = 0
							addY = addY + 137*scaleY
						end
					end
				end
			end
			if not panelVanDurum and getKeyState("mouse2") and click+300 <= getTickCount() then click = getTickCount() close() end
        end, 0, 0)
	else
		close()
    end
end
bindKey("F6","down",asoOOCMarket)
addCommandHandler("market",asoOOCMarket)
addEvent("creative.market.panel",true)
addEventHandler("creative.market.panel",getRootElement(),asoOOCMarket)
-- asoOOCMarket()

function panelVan(urun,fiyat,event,etiket)
	if not isTimer(panelVanRender) then
		panelVanTick = getTickCount()
		panelVanDurum = true
		panelVanRender = setTimer(function()
			alpha = interpolateBetween(0, 0, 0, 150, 0, 0, (getTickCount() - panelVanTick) / 350, "OutQuad")
			alpha2 = interpolateBetween(0, 0, 0, 255, 0, 0, (getTickCount() - panelVanTick) / 350, "OutQuad")
			dxDrawRectangle(0,0,sx,sy,tocolor(0,0,0,alpha))
			drawRoundedGradientRectangle(515*scaleX,325*scaleY,325*scaleX,150*scaleY,{radius = 5,offset = {x = 50,y = 100},color={
				color1 = {100,100,100, 100}, color2 = {249,217,137,100}, }, rotation = 120, },alpha2,false)
			dxDrawText(urun,525*scaleX,330*scaleY,nil,nil,tocolor(235,235,235,alpha2),1,asoMont8)
			dxDrawText(exports.creative_global:formatMoney(fiyat).."#00ffc0₺",825*scaleX,330*scaleY,nil,nil,tocolor(235,235,235,alpha2),1,asoMont8,"right","top",true,true,false,true)
			dxDrawText("Bu ürünü satın almak istediğinize\nemin misiniz?",525*scaleX,365*scaleY,nil,nil,tocolor(200,200,200,alpha2),0.7,asoMont8)
			dxDrawRoundedRectangle(635*scaleX,435*scaleY,100*scaleX,25*scaleY,mouse(635*scaleX,435*scaleY,100*scaleX,25*scaleY) and tocolor(137,137,217,alpha) or tocolor(200,200,200,alpha),{0.3,0.3,0.3,0.3})
			dxDrawText("Hayır, teşekkürler.",640*scaleX,437.5*scaleY,nil,nil,tocolor(235,235,235,alpha2),0.7,asoMont8)
			if mouse(635*scaleX,435*scaleY,100*scaleX,25*scaleY) then
				if getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
					killTimer(panelVanRender)
					panelVanDurum = false
				end
			end
			dxDrawRoundedRectangle(525*scaleX,435*scaleY,100*scaleX,25*scaleY,tocolor(137,217,249,alpha),{0.3,0.3,0.3,0.3})
			dxDrawText("Evet, eminim.",540*scaleX,437.5*scaleY,nil,nil,tocolor(235,235,235,alpha2),0.7,asoMont8)
			if mouse(525*scaleX,435*scaleY,100*scaleX,25*scaleY) and (getElementData(localPlayer,"bakiyeMiktar")or 0) >= fiyat then
				dxDrawRoundedRectangle(525*scaleX,435*scaleY,100*scaleX,25*scaleY,tocolor(137,217,249,alpha),{0.3,0.3,0.3,0.3})
				dxDrawText("Evet, eminim.",540*scaleX,437.5*scaleY,nil,nil,tocolor(235,235,235,alpha2),0.7,asoMont8)
				if getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
			        if etiket then 
						triggerServerEvent(event,localPlayer,etiket,fiyat,urun)
						killTimer(panelVanRender)
						panelVanDurum = false
					else 
						triggerServerEvent(event,localPlayer,fiyat)
						killTimer(panelVanRender)
						panelVanDurum = false
					end 
				end
			end
		end,0,0)
	end
end

function panelVip(urun,fiyat,event)
	if not isTimer(panelVipRender) then
		panelVipTick = getTickCount()
		panelVipDurum = true
		gun = 7
		panelVipRender = setTimer(function()
			alpha = interpolateBetween(0, 0, 0, 150, 0, 0, (getTickCount() - panelVipTick) / 350, "OutQuad")
			alpha2 = interpolateBetween(0, 0, 0, 255, 0, 0, (getTickCount() - panelVipTick) / 350, "OutQuad")
			dxDrawRectangle(0,0,sx,sy,tocolor(0,0,0,alpha))
			drawRoundedGradientRectangle(515*scaleX,325*scaleY,325*scaleX,150*scaleY,{radius = 5,offset = {x = 50,y = 100},color={
				color1 = {100,100,100, 100}, color2 = {249,217,137,100}, }, rotation = 120, },alpha2,false)
			dxDrawText(urun,525*scaleX,330*scaleY,nil,nil,tocolor(235,235,235,alpha2),1,asoMont8)
			dxDrawText(exports.creative_global:formatMoney(fiyat*gun).."#00ffc0₺",825*scaleX,330*scaleY,nil,nil,tocolor(235,235,235,alpha2),1,asoMont8,"right","top",true,true,false,true)
			dxDrawText("Bu ürünü satın almak istediğinize\nemin misiniz?",525*scaleX,365*scaleY,nil,nil,tocolor(200,200,200,alpha2),0.7,asoMont8)
			dxDrawText("Gün Seçin",780*scaleX,415*scaleY,nil,nil,tocolor(255,255,255,alpha),0.7,asoMont8)
			dxDrawRoundedRectangle(745*scaleX,435*scaleY,25*scaleX,25*scaleY,gun==7 and tocolor(175,175,175) or tocolor(137,137,137,alpha))
			dxDrawText("7",752.5*scaleX,433*scaleY,nil,nil,tocolor(255,255,255,alpha),1,asoMont8)
			if mouse(745*scaleX,435*scaleY,25*scaleX,25*scaleY) and getKeyState("mouse1") then gun = 7 end
			dxDrawRoundedRectangle(775*scaleX,435*scaleY,25*scaleX,25*scaleY,gun==14 and tocolor(175,175,175) or tocolor(137,137,137,alpha))
			dxDrawText("14",780*scaleX,433*scaleY,nil,nil,tocolor(255,255,255,alpha),1,asoMont8)
			if mouse(775*scaleX,435*scaleY,25*scaleX,25*scaleY) and getKeyState("mouse1") then gun = 14 end
			dxDrawRoundedRectangle(805*scaleX,435*scaleY,25*scaleX,25*scaleY,gun==21 and tocolor(175,175,175) or tocolor(137,137,137,alpha))
			dxDrawText("21",810.5*scaleX,433*scaleY,nil,nil,tocolor(255,255,255,alpha),1,asoMont8)
			if mouse(805*scaleX,435*scaleY,25*scaleX,25*scaleY) and getKeyState("mouse1") then gun = 21 end
			dxDrawRoundedRectangle(635*scaleX,435*scaleY,100*scaleX,25*scaleY,mouse(635*scaleX,435*scaleY,100*scaleX,25*scaleY) and tocolor(137,137,217,alpha) or tocolor(200,200,200,alpha),{0.3,0.3,0.3,0.3})
			dxDrawText("Hayır, teşekkürler.",640*scaleX,437.5*scaleY,nil,nil,tocolor(235,235,235,alpha2),0.7,asoMont8)
			if mouse(635*scaleX,435*scaleY,100*scaleX,25*scaleY) and getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
				killTimer(panelVipRender)
				panelVipDurum = false
			end
			dxDrawRoundedRectangle(525*scaleX,435*scaleY,100*scaleX,25*scaleY,tocolor(137,217,249,alpha),{0.3,0.3,0.3,0.3})
			dxDrawText("Evet, eminim.",540*scaleX,437.5*scaleY,nil,nil,tocolor(235,235,235,alpha2),0.7,asoMont8)
			if mouse(525*scaleX,435*scaleY,100*scaleX,25*scaleY) and (getElementData(localPlayer,"bakiye")or 0) >= fiyat*gun then
				dxDrawRoundedRectangle(525*scaleX,435*scaleY,100*scaleX,25*scaleY,tocolor(137,217,249,alpha),{0.3,0.3,0.3,0.3})
				dxDrawText("Evet, eminim.",540*scaleX,437.5*scaleY,nil,nil,tocolor(235,235,235,alpha2),0.7,asoMont8)
				if getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
					triggerServerEvent("shop.vip",localPlayer,fiyat*gun,gun,event)
					killTimer(panelVanRender)
					panelVanDurum = false
				end
			end
		end,0,0)
	end
end


local cartexturelinkbox 
local cartexturecaridbox 

function aractexture(urun,fiyat,event)
	if not isTimer(texturerender) then
			paneltexture = getTickCount()
			panelVanDurum = true
			
			cartexturelinkbox = createEditBox(525*scaleX,360*scaleY,0.8,asoMont8,35,"Texture Link",220,220,220,255,false,false,false)
			cartexturecaridbox = createEditBox(525*scaleX,390*scaleY,0.8,asoMont8,7,"Araç ID",220,220,220,255,false,false,true)
			
			texturerender = setTimer(function()
			
			local link = tostring(getEditBoxText(cartexturelinkbox))
			local aracid = tonumber(getEditBoxText(cartexturecaridbox))
			local carsss = getPedOccupiedVehicle(localPlayer)
			if not carsss then 
			exports.creative_infobox:addBox("error","Araçta değilsin.")
					deleteEditBox(cartexturecaridbox)
					deleteEditBox(cartexturelinkbox)					
					-- close()
					killTimer(texturerender)
					panelVanDurum = false
			return end
			local modelid = getElementModel(carsss)
			local texturenames = texturename(modelid)
			if not texturenames then 
			exports.creative_infobox:addBox("error","Araç texture eklemek için uygun bir araç değil.")
			deleteEditBox(cartexturecaridbox)
			deleteEditBox(cartexturelinkbox)					
			killTimer(texturerender)
			panelVanDurum = false
			return end
			alpha = interpolateBetween(0, 0, 0, 150, 0, 0, (getTickCount() - paneltexture) / 350, "OutQuad")
			alpha2 = interpolateBetween(0, 0, 0, 255, 0, 0, (getTickCount() - paneltexture) / 350, "OutQuad")
			
			dxDrawRectangle(0,0,sx,sy,tocolor(0,0,0,alpha))
			
			drawRoundedGradientRectangle(515*scaleX,325*scaleY,325*scaleX,150*scaleY,{radius = 5,offset = {x = 50,y = 100},color={
			color1 = {100,100,100, 100}, color2 = {249,217,137,100}, }, rotation = 120, },alpha2,false)
			
			dxDrawText(urun,525*scaleX,330*scaleY,nil,nil,tocolor(235,235,235,alpha2),1,asoMont8)
			dxDrawText(exports.creative_global:formatMoney(fiyat).."#00ffc0₺",825*scaleX,330*scaleY,nil,nil,tocolor(235,235,235,alpha2),1,asoMont8,"right","top",true,true,false,true)
			dxDrawRoundedRectangle(525*scaleX,395*scaleY,210*scaleX,25*scaleY,mouse(525*scaleX,395*scaleY,210*scaleX,25*scaleY) and tocolor(220,220,220,alpha) or tocolor(200,200,200,alpha),{0.3,0.3,0.3,0.3})
			dxDrawRoundedRectangle(525*scaleX,365*scaleY,210*scaleX,25*scaleY,mouse(525*scaleX,365*scaleY,210*scaleX,25*scaleY) and tocolor(220,220,220,alpha) or tocolor(200,200,200,alpha),{0.3,0.3,0.3,0.3})
			
			dxDrawRoundedRectangle(635*scaleX,425*scaleY,100*scaleX,25*scaleY,mouse(635*scaleX,425*scaleY,100*scaleX,25*scaleY) and tocolor(137,137,217,alpha) or tocolor(200,200,200,alpha),{0.3,0.3,0.3,0.3})
			dxDrawText("Vazgeç",665*scaleX,427.5*scaleY,nil,nil,tocolor(235,235,235,alpha2),0.7,asoMont8)
			dxDrawText("Örnek Link : i.hizliresim.com/evqm70e.jpeg",525*scaleX,453*scaleY,nil,nil,tocolor(235,235,235,alpha2),0.7,asoMont8)
			
			if mouse(635*scaleX,425*scaleY,100*scaleX,25*scaleY) then
				if getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
					deleteEditBox(cartexturecaridbox)
					deleteEditBox(cartexturelinkbox)					
					close()
					killTimer(texturerender)
					panelVanDurum = false
				end
			end
			
			dxDrawRoundedRectangle(525*scaleX,425*scaleY,100*scaleX,25*scaleY,tocolor(137,217,249,alpha),{0.3,0.3,0.3,0.3})
			dxDrawText("Satın Al",555*scaleX,427.5*scaleY,nil,nil,tocolor(235,235,235,alpha2),0.7,asoMont8)
			
			if mouse(525*scaleX,425*scaleY,100*scaleX,25*scaleY) and (getElementData(localPlayer,"bakiyeMiktar")or 0) >= fiyat then
				dxDrawRoundedRectangle(525*scaleX,425*scaleY,100*scaleX,25*scaleY,tocolor(137,217,249,alpha),{0.3,0.3,0.3,0.3})
				dxDrawText("Satın Al",555*scaleX,427.5*scaleY,nil,nil,tocolor(255,255,255,alpha2),0.7,asoMont8)
				if getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
					triggerServerEvent(event,localPlayer, aracid, link,texturenames)
					deleteEditBox(cartexturecaridbox)
					deleteEditBox(cartexturelinkbox)
					killTimer(texturerender)
					panelVanDurum = false
				    close()
				end
			end
		end,0,0)
	end
end



function close()
    showCursor(false)
    panelDurum = nil
    setElementData(localPlayer, "hudkapa", false)
    setElementData(localPlayer,"oocmarket",false)
	page = nil
    showCursor(false)
    showChat(true)
	killTimer(oocshopRender)
	if isTimer(panelVanRender) then killTimer(panelVanRender) end
	if isTimer(panelVipRender) then killTimer(panelVipRender) end
	panelVanDurum = nil
	panelVipDurum = nil
end

function yaziliDegisim(tur,event,price)
	if not isTimer(renderYazi) then
		textBox = nil
		close()
		setElementData(localPlayer,"oocmarket",true)
		if tur == "telno" then
			mainText = "Telefon Numarası"
			secText = "Lütfen aşağıya telefon numarası giriniz."
			boxText = "9999-9999"
		elseif tur == "isim" then
			mainText = "Karakter Ismi"
			secText = "Lütfen aşağıya karakter isminizi giriniz."
			boxText = "Andrew_Jolie"
		elseif tur == "kadi" then
			mainText = "Kullanıcı Adı"
			secText = "Lütfen aşağıya kullanıcı adınızı giriniz."
			boxText = "asobyo0"
		end
		local paneltexture = getTickCount()
		textBox = createEditBox(525*scaleX,392*scaleY,1,asoMont12,36,boxText,255,255,255,ikiyuzellibes,false,false,false)
		renderYazi = setTimer(function()
			showChat(false)			
			alpha = interpolateBetween(0, 0, 0, 150, 0, 0, (getTickCount() - paneltexture) / 350, "OutQuad")
			alpha2 = interpolateBetween(0, 0, 0, 255, 0, 0, (getTickCount() - paneltexture) / 350, "OutQuad")
			
			dxDrawRectangle(0,0,sx,sy,tocolor(0,0,0,alpha))
			
			drawRoundedGradientRectangle(515*scaleX,325*scaleY,325*scaleX,150*scaleY,{radius = 5,offset = {x = 50,y = 100},color={
			color1 = {100,100,100, 100}, color2 = {249,217,137,100}, }, rotation = 120, },alpha2,false)
			
			dxDrawText(mainText,525*scaleX,330*scaleY,nil,nil,tocolor(235,235,235,alpha2),1,asoMont8)
			dxDrawText(exports.creative_global:formatMoney(price).."#00ffc0₺",825*scaleX,330*scaleY,nil,nil,tocolor(235,235,235,alpha2),1,asoMont8,"right","top",true,true,false,true)
			dxDrawRoundedRectangle(525*scaleX,395*scaleY,210*scaleX,25*scaleY,mouse(525*scaleX,395*scaleY,210*scaleX,25*scaleY) and tocolor(220,220,220,alpha) or tocolor(200,200,200,alpha),{0.3,0.3,0.3,0.3})

			dxDrawRoundedRectangle(635*scaleX,425*scaleY,100*scaleX,25*scaleY,mouse(635*scaleX,425*scaleY,100*scaleX,25*scaleY) and tocolor(137,137,217,alpha) or tocolor(200,200,200,alpha),{0.3,0.3,0.3,0.3})
			dxDrawText("Vazgeç",665*scaleX,427.5*scaleY,nil,nil,tocolor(235,235,235,alpha2),0.7,asoMont8)
			dxDrawText(secText,525*scaleX,360*scaleY,nil,nil,tocolor(235,235,235,alpha2),0.7,asoMont8)
			
			if mouse(635*scaleX,425*scaleY,100*scaleX,25*scaleY) then
				if getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
					deleteEditBox(textBox)
				setElementData(localPlayer,"oocmarket",false)
				killTimer(renderYazi)
				showChat(true)
				end
			end			
			dxDrawRoundedRectangle(525*scaleX,425*scaleY,100*scaleX,25*scaleY,tocolor(137,217,249,alpha),{0.3,0.3,0.3,0.3})
			dxDrawText("Satın Al",555*scaleX,427.5*scaleY,nil,nil,tocolor(235,235,235,alpha2),0.7,asoMont8)
			
			if mouse(525*scaleX,425*scaleY,100*scaleX,25*scaleY) and (getElementData(localPlayer,"bakiyeMiktar")or 0) >= price then
				dxDrawRoundedRectangle(525*scaleX,425*scaleY,100*scaleX,25*scaleY,tocolor(137,217,249,alpha),{0.3,0.3,0.3,0.3})
				dxDrawText("Satın Al",555*scaleX,427.5*scaleY,nil,nil,tocolor(255,255,255,alpha2),0.7,asoMont8)
				if getKeyState("mouse1") and click+300 <= getTickCount() then click = getTickCount()
					triggerServerEvent(event,localPlayer,localPlayer,getEditBoxText(textBox),price)
				deleteEditBox(textBox)
				guiSetInputMode("allow_bind")
				setElementData(localPlayer,"oocmarket",false)
				killTimer(renderYazi)
				showChat(true)
				end
			end
			
		end,0,0)
	end
end
addEvent("shop.yaziPanel",true)
addEventHandler("shop.yaziPanel",root,yaziliDegisim)

function up()
    if isTimer(oocshopRender) then
        if scrollMain > 0 then
			if page == "Genel" then
				scrollMain = scrollMain - 3
			end
		elseif scrollVehicle > 0 then
			if page == "Araçlar" then
				scrollVehicle = scrollVehicle - 3
			end
		elseif scrollGun > 0 then
			if page == "Silah" then
				scrollGun = scrollGun - 3
			end
        elseif scrollEtiket > 0 then
			if page == "Etiket" then
				scrollEtiket = scrollEtiket - 3
			end		
		end
    end
end
function down()
    if isTimer(oocshopRender) then
		if page == "Genel" then
			if scrollMain <= #mainPage - 6 then
				scrollMain = scrollMain + 3
			end
		elseif page == "Araçlar" then
			if scrollVehicle <= #aracPage - 6 then
				scrollVehicle = scrollVehicle + 3
			end
		elseif page == "Silah" then
			if scrollGun <= #silahPage - 6 then
				scrollGun = scrollGun + 3
			end
		elseif page == "Etiket" then
			if scrollEtiket <= #etiketPage - 12 then
				scrollEtiket = scrollEtiket + 3
			end		
		end
    end
end
bindKey("mouse_wheel_up", "down", up)
bindKey("mouse_wheel_down", "down", down)

function createScrollBar(x, y, w, h, total, maxShow, currentShow, color, color2)
    if(total> maxShow) then
        dxDrawRoundedRectangle(x, y, w, h, color or tocolor(175,175,175,100),{1,1,1,1})
        dxDrawRoundedRectangle(x , y+((currentShow)*(h/(total))), w, h/math.max((total/maxShow),1),color2 or tocolor(137,217,249,100),{1,1,1,1})
    end
end

local gradients = {}
function rgbToString(color)
    return table.concat({color[1], color[2], color[3]}, ",")
end
function drawRoundedGradientRectangle(x, y, w, h, array,alpha,postgui)
    local alpha = alpha or 255
    local key = string.format("%d%d%d%d%d%d%s%s%d", w, h, array.radius, array.radius, array.offset.x, array.offset.y, rgbToString(array.color.color1), rgbToString(array.color.color2), array.rotation)
    if not gradients[key] then
        local svgData = string.format([[
            <svg width="%d" height="%d" xmlns="http://www.w3.org/2000/svg">
                <defs>
                    <linearGradient id="grad1" x1="0%%" x2="100%%" y1="0%%" y2="0%%" gradientTransform="rotate(%d)">
                        <stop offset="%d%%" stop-color="rgb(%s)" />
                        <stop offset="%d%%" stop-color="rgb(%s)" />
                    </linearGradient>
                </defs>
                <rect width="%d" height="%d" rx="%d" ry="%d" fill="url(#grad1)" />
            </svg>
        ]], w, h, array.rotation, array.offset.x, rgbToString(array.color.color1), array.offset.y, rgbToString(array.color.color2), w, h, array.radius, array.radius)
        
        gradients[key] = svgCreate(w, h, svgData)
    end
    return dxDrawImage(x, y, w, h, gradients[key], 0, 0, 0, tocolor(255, 255, 255, alpha))
end
function mouse( x, y, width, height)
	if ( not isCursorShowing( ) ) then
		return false
	end
	local sx, sy = guiGetScreenSize ( )
	local cx, cy = getCursorPosition ( )
	local cx, cy = ( cx * sx ), ( cy * sy )
	
	return ( ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) ) 
end
function requestRoundRectangleShader(withoutFilled)
	local woF = not withoutFilled and ""
	return [[
	texture sourceTexture;
	float4 color = float4(1,1,1,1);
	bool textureLoad = false;
	bool textureRotated = false;
	float4 isRelative = 1;
	float4 radius = 0.25;
	float borderSoft = 0.01;
	bool colorOverwritten = true;
	]]..(woF or [[
	float2 borderThickness = float2(0.2,0.2);
	float radiusMultipler = 0.95;
	]])..[[
	SamplerState tSampler
	{
		Texture = sourceTexture;
		MinFilter = Linear;
		MagFilter = Linear;
		MipFilter = Linear;
	};
	float4 rndRect(float2 tex: TEXCOORD0, float4 _color : COLOR0):COLOR0{
		float4 result = textureLoad?tex2D(tSampler,textureRotated?tex.yx:tex)*color:color;
		float alp = 1;
		float2 tex_bk = tex;
		float2 dx = ddx(tex);
		float2 dy = ddy(tex);
		float2 dd = float2(length(float2(dx.x,dy.x)),length(float2(dx.y,dy.y)));
		float a = dd.x/dd.y;
		float2 center = 0.5*float2(1/(a<=1?a:1),a<=1?1:a);
		float4 nRadius;
		float aA = borderSoft*100;
		if(a<=1){
			tex.x /= a;
			aA *= dd.y;
			nRadius = float4(isRelative.x==1?radius.x/2:radius.x*dd.y,isRelative.y==1?radius.y/2:radius.y*dd.y,isRelative.z==1?radius.z/2:radius.z*dd.y,isRelative.w==1?radius.w/2:radius.w*dd.y);
		}
		else{
			tex.y *= a;
			aA *= dd.x;
			nRadius = float4(isRelative.x==1?radius.x/2:radius.x*dd.x,isRelative.y==1?radius.y/2:radius.y*dd.x,isRelative.z==1?radius.z/2:radius.z*dd.x,isRelative.w==1?radius.w/2:radius.w*dd.x);
		}
		float2 fixedPos = tex-center;
		float2 corner[] = {center-nRadius.x,center-nRadius.y,center-nRadius.z,center-nRadius.w};
		//LTCorner
		if(-fixedPos.x >= corner[0].x && -fixedPos.y >= corner[0].y)
		{
			float dis = distance(-fixedPos,corner[0]);
			alp = 1-(dis-nRadius.x+aA)/aA;
		}
		//RTCorner
		if(fixedPos.x >= corner[1].x && -fixedPos.y >= corner[1].y)
		{
			float dis = distance(float2(fixedPos.x,-fixedPos.y),corner[1]);
			alp = 1-(dis-nRadius.y+aA)/aA;
		}
		//RBCorner
		if(fixedPos.x >= corner[2].x && fixedPos.y >= corner[2].y)
		{
			float dis = distance(float2(fixedPos.x,fixedPos.y),corner[2]);
			alp = 1-(dis-nRadius.z+aA)/aA;
		}
		//LBCorner
		if(-fixedPos.x >= corner[3].x && fixedPos.y >= corner[3].y)
		{
			float dis = distance(float2(-fixedPos.x,fixedPos.y),corner[3]);
			alp = 1-(dis-nRadius.w+aA)/aA;
		}
		if (fixedPos.y <= 0 && -fixedPos.x <= corner[0].x && fixedPos.x <= corner[1].x && (nRadius[0] || nRadius[1])){
			alp = (fixedPos.y+center.y)/aA;
		}else if (fixedPos.y >= 0 && -fixedPos.x <= corner[3].x && fixedPos.x <= corner[2].x && (nRadius[2] || nRadius[3])){
			alp = (-fixedPos.y+center.y)/aA;
		}else if (fixedPos.x <= 0 && -fixedPos.y <= corner[0].y && fixedPos.y <= corner[3].y && (nRadius[0] || nRadius[3])){
			alp = (fixedPos.x+center.x)/aA;
		}else if (fixedPos.x >= 0 && -fixedPos.y <= corner[1].y && fixedPos.y <= corner[2].y && (nRadius[1] || nRadius[2])){
			alp = (-fixedPos.x+center.x)/aA;
		}
		alp = clamp(alp,0,1);
		]]..(woF or [[
		float2 newborderThickness = borderThickness*dd*100;
		tex_bk = tex_bk+tex_bk*newborderThickness;
		dx = ddx(tex_bk);
		dy = ddy(tex_bk);
		dd = float2(length(float2(dx.x,dy.x)),length(float2(dx.y,dy.y)));
		a = dd.x/dd.y;
		center = 0.5*float2(1/(a<=1?a:1),a<=1?1:a);
		aA = borderSoft*100;
		if(a<=1){
			tex_bk.x /= a;
			aA *= dd.y;
			nRadius = float4(isRelative.x==1?radius.x/2:radius.x*dd.y,isRelative.y==1?radius.y/2:radius.y*dd.y,isRelative.z==1?radius.z/2:radius.z*dd.y,isRelative.w==1?radius.w/2:radius.w*dd.y);
		}
		else{
			tex_bk.y *= a;
			aA *= dd.x;
			nRadius = float4(isRelative.x==1?radius.x/2:radius.x*dd.x,isRelative.y==1?radius.y/2:radius.y*dd.x,isRelative.z==1?radius.z/2:radius.z*dd.x,isRelative.w==1?radius.w/2:radius.w*dd.x);
		}
		fixedPos = (tex_bk-center*(newborderThickness+1));
		float4 nRadiusHalf = nRadius*radiusMultipler;
		corner[0] = center-nRadiusHalf.x;
		corner[1] = center-nRadiusHalf.y;
		corner[2] = center-nRadiusHalf.z;
		corner[3] = center-nRadiusHalf.w;
		//LTCorner
		float nAlp = 0;
		if(-fixedPos.x >= corner[0].x && -fixedPos.y >= corner[0].y)
		{
			float dis = distance(-fixedPos,corner[0]);
			nAlp = (dis-nRadiusHalf.x+aA)/aA;
		}
		//RTCorner
		if(fixedPos.x >= corner[1].x && -fixedPos.y >= corner[1].y)
		{
			float dis = distance(float2(fixedPos.x,-fixedPos.y),corner[1]);
			nAlp = (dis-nRadiusHalf.y+aA)/aA;
		}
		//RBCorner
		if(fixedPos.x >= corner[2].x && fixedPos.y >= corner[2].y)
		{
			float dis = distance(float2(fixedPos.x,fixedPos.y),corner[2]);
			nAlp = (dis-nRadiusHalf.z+aA)/aA;
		}
		//LBCorner
		if(-fixedPos.x >= corner[3].x && fixedPos.y >= corner[3].y)
		{
			float dis = distance(float2(-fixedPos.x,fixedPos.y),corner[3]);
			nAlp = (dis-nRadiusHalf.w+aA)/aA;
		}
		if (fixedPos.y <= 0 && -fixedPos.x <= corner[0].x && fixedPos.x <= corner[1].x && (nRadiusHalf[0] || nRadiusHalf[1])){
			nAlp = 1-(fixedPos.y+center.y)/aA;
		}else if (fixedPos.y >= 0 && -fixedPos.x <= corner[3].x && fixedPos.x <= corner[2].x && (nRadiusHalf[2] || nRadiusHalf[3])){
			nAlp = 1-(-fixedPos.y+center.y)/aA;
		}else if (fixedPos.x <= 0 && -fixedPos.y <= corner[0].y && fixedPos.y <= corner[3].y && (nRadiusHalf[0] || nRadiusHalf[3])){
			nAlp = 1-(fixedPos.x+center.x)/aA;
		}else if (fixedPos.x >= 0 && -fixedPos.y <= corner[1].y && fixedPos.y <= corner[2].y && (nRadiusHalf[1] || nRadiusHalf[2])){
			nAlp = 1-(-fixedPos.x+center.x)/aA;
		}
		alp *= clamp(nAlp,0,1);
		]])..[[
		result.rgb = colorOverwritten?result.rgb:_color.rgb;
		result.a *= _color.a*alp;
		return result;
	}
	
	
	technique rndRectTech
	{
		pass P0
		{
			PixelShader = compile ps_2_a rndRect();
		}
	}
    ]]
end
local roundedRectangleShaders = {};
function dxDrawRoundedRectangle(x, y, width, height, color, radius, isFilled)
    local color = color or tocolor(24, 24, 24);
    local radius = radius or { 0.2, 0.2, 0.2, 0.2 };
    local isFilled = isFilled or false;

    local rgba = { bitExtract(color, 0, 8), bitExtract(color, 8, 8), bitExtract(color, 16, 8), bitExtract(color, 24, 8) };
    local key = table.concat(rgba, '') .. tostring(radius[1]);

    if (not roundedRectangleShaders[key]) then 
        roundedRectangleShaders[key] = {
            shader = dxCreateShader(requestRoundRectangleShader(isFilled)),
            lastTick = getTickCount(),
        };

        dxSetShaderValue(roundedRectangleShaders[key].shader, 'color', rgba[1] / 255, rgba[2] / 255, rgba[3] / 255, rgba[4] / 255);
        dxSetShaderValue(roundedRectangleShaders[key].shader, 'radius', radius[1], radius[2], radius[3], radius[4]);
    end 

    roundedRectangleShaders[key].lastTick = getTickCount();
    dxDrawImage(x, y, width, height, roundedRectangleShaders[key].shader, 0, 0, 0);
end

setTimer(function()
    for k,v in pairs(roundedRectangleShaders) do 
        if (not v.lastTick or (v.lastTick + 10000) < getTickCount()) then 
            if (v.shader and isElement(v.shader)) then 
                destroyElement(v.shader);
            end 

            roundedRectangleShaders[k] = nil;
        end 
    end 
end, 10000, 0);

addEventHandler('onClientResourceStop', resourceRoot, function()
    for k,v in pairs(roundedRectangleShaders) do 
        if (v.shader and isElement(v.shader)) then 
            destroyElement(v.shader);
        end 

        roundedRectangleShaders[k] = nil;
    end 
end);

function aracZirhKoruma(attacker, weapon, bodypart)
	local veh = getPedOccupiedVehicle(localPlayer)
	if veh then
		if getElementData(veh,"aracZirh") == 1 then
			if getElementHealth(veh) > 300 then
			cancelEvent()
			end
		end
	end
end
addEventHandler("onClientPlayerDamage", localPlayer, aracZirhKoruma)


function texturename(modelid)
    local textures = engineGetModelTextureNames(tonumber(modelid))
    if not textures then
        return false 
    end
    for index, value in ipairs(textures) do
        if string.find(value, "remap") or string.find(value, "#") then
            return value
        end
    end
    return false 
end


local tick = getTickCount()
function isClicked()
if buypaneldurum then return end 
  if getKeyState("mouse1") and tick < getTickCount() then 
      tick = getTickCount()+500 
      return true
    end
  return false
end


local tick2 = getTickCount()
function isClicked2()
  if getKeyState("mouse1") and tick2 < getTickCount() then 
      tick2 = getTickCount()+500 
      return true
    end
  return false
end


local buyviptimer = false
local vipdaybox = false



function vipbuy(viplevel,vipdayprice)
local sx,sy = guiGetScreenSize()
local panelWidth, panelHeight = 1920, 1080
local scaleX, scaleY = sx/panelWidth, sy/panelHeight

if isTimer(buyviptimer) then return end 
buypaneldurum = true
panelVanDurum = true
panelVipTick = getTickCount()

vipdaybox = createEditBox(1050 * scaleX  , 633 * scaleY,1,useFont("BebasRegular",15 * scaleX),3,"Gün Sayısı",200,200,200,255,false,false,true)

buyviptimer = setTimer(function()



guiSetInputMode("no_binds")
local day = tonumber(getEditBoxText(vipdaybox)) or 0 
local fiyat = math.floor(day * vipdayprice)

alpha = interpolateBetween(0, 0, 0, 230, 0, 0, (getTickCount() - panelVipTick) / 350, "OutQuad")
rectangle2(0,0,sx,sy,tocolor(0,0,0,alpha),{0.0,0.0,0.0,0.0})
rectangle2(735 * scaleX  , 500 * scaleY  , 450 * scaleX , 200 *scaleY,tocolor(110,110,110,170),{0.1,0.1,0.1,0.1}) 

drawRoundedGradientRectanglee(735 * scaleX  , 500 * scaleY  , 450 * scaleX , 200 *scaleY, {
radius = 14,
offset = {x = 0, y = 100},
color  = {
color1 = {249,217,137}, 
color2 = {0,0,0},   
},
rotation = 50,
}, 255, 0.4, "right-to-left", 10000, true) 

if not  mousePos2(755 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY) then 
rectangle2(755 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY,tocolor(249,217,137,100),{0.3,0.3,0.3,0.3}) 
else
if isClicked2() then 
setTimer(function()
panelVanDurum = false
buypaneldurum = false
end , 500 , 1 )
deleteEditBox(vipdaybox)
guiSetInputMode("allow_binds")
killTimer(buyviptimer)
triggerServerEvent("creativevipver",localPlayer,viplevel,day)
end 
rectangle2(755 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY,tocolor(249,217,137,120),{0.3,0.3,0.3,0.3}) 
end 


if not  mousePos2(900 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY) then 
rectangle2(900 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY,tocolor(140,140,140,200),{0.3,0.3,0.3,0.3}) 
else
if isClicked2() then 
setTimer(function()
panelVanDurum = false
buypaneldurum = false
end , 500 , 1 )
deleteEditBox(vipdaybox)
guiSetInputMode("allow_binds")
killTimer(buyviptimer)
end
rectangle2(900 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY,tocolor(140,140,140,255),{0.3,0.3,0.3,0.3}) 
end


if not  mousePos2(1045 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY) then 
rectangle2(1045 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY,tocolor(140,140,140,200),{0.3,0.3,0.3,0.3}) 
else
rectangle2(1045 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY,tocolor(140,140,140,255),{0.3,0.3,0.3,0.3}) 
end 


dxDrawText("#f9d989VIP #afafafAboneliği Arayüzü",760 * scaleX  , 510 * scaleY,nil,nil ,tocolor(200,200,200,255),1,useFont("BebasRegular",20 * scaleX) ,"left","top",true,true,true,true)	
dxDrawText("Satın Al",788 * scaleX  , 643 * scaleY,nil,nil ,tocolor(200,200,200,255),1,useFont("BebasRegular",15 * scaleX) ,"left","top",true,true,true,true)	
dxDrawText("Vazgeç",934 * scaleX  , 643 * scaleY,nil,nil ,tocolor(200,200,200,255),1,useFont("BebasRegular",15 * scaleX) ,"left","top",true,true,true,true)	
dxDrawText("#f9d989"..fiyat.." ₺ #afafafkarşılığında  #f9d989"..day.." #afafaf günlük  #f9d989VIP "..viplevel.."  #afafafaboneliği satın almak istediğinize\nemin misiniz?",960 * scaleX  , 560 * scaleY,nil,nil ,tocolor(175,175,175,255),1,useFont("BebasRegular",14 * scaleX) ,"center","top",true,true,true,true)	

end , 0 , 0 )

end 



local changevehplatetimer = false
local changevehplatebox = false
local changevehplatebox2 = false

function buychangevehplate(price)
local sx,sy = guiGetScreenSize()
local panelWidth, panelHeight = 1920, 1080
local scaleX, scaleY = sx/panelWidth, sy/panelHeight


if isTimer(changevehplatetimer) then return end 
buypaneldurum = true
panelVanDurum = true
panelVipTick = getTickCount()

changevehplatebox = createEditBox(810 * scaleX  , 573 * scaleY,1,useFont("BebasRegular",15 * scaleX),10,"Araç ID",200,200,200,255,false,false,true)

changevehplatebox2 = createEditBox(980 * scaleX  , 573 * scaleY,1,useFont("BebasRegular",15 * scaleX),10,"Plaka",200,200,200,255,false,false,false)

changevehplatetimer = setTimer(function()

guiSetInputMode("no_binds")

local aracid = tonumber(getEditBoxText(changevehplatebox))
local newplaka = getEditBoxText(changevehplatebox2)


alpha = interpolateBetween(0, 0, 0, 230, 0, 0, (getTickCount() - panelVipTick) / 350, "OutQuad")

rectangle2(0,0,sx,sy,tocolor(0,0,0,alpha),{0.0,0.0,0.0,0.0})


rectangle2(800 * scaleX  , 500 * scaleY  , 350 * scaleX , 200 *scaleY,tocolor(100,100,100,255),{0.1,0.1,0.1,0.1}) 

drawRoundedGradientRectanglee(800 * scaleX  , 500 * scaleY  , 350 * scaleX , 200 *scaleY, {
radius = 10,
offset = {x = 0, y = 100},
color  = {
color1 = {249,217,137}, 
color2 = {0,0,0},   
},
rotation = 50,
}, 255, 0.4, "right-to-left", 10000, true) 

if not  mousePos2(810 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY) then 
rectangle2(810 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY,tocolor(249,217,137,100),{0.3,0.3,0.3,0.3}) 
else
if isClicked2() then 
setTimer(function()
panelVanDurum = false
buypaneldurum = false
end , 500 , 1 )
deleteEditBox(changevehplatebox)
deleteEditBox(changevehplatebox2)
guiSetInputMode("allow_binds")
killTimer(changevehplatetimer)
triggerServerEvent("shop.carplate",localPlayer,newplaka,aracid)
close()
end 
rectangle2(810 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY,tocolor(249,217,137,120),{0.3,0.3,0.3,0.3}) 
end 


if not  mousePos2(940 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY) then 
rectangle2(940 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY,tocolor(140,140,140,200),{0.3,0.3,0.3,0.3}) 
else
if isClicked2() then 
setTimer(function()
panelVanDurum = false
buypaneldurum = false
end , 500 , 1 )
deleteEditBox(changevehplatebox)
deleteEditBox(changevehplatebox2)
guiSetInputMode("allow_binds")
killTimer(changevehplatetimer)
end
rectangle2(940 * scaleX  , 640 * scaleY  , 120 * scaleX , 35 *scaleY,tocolor(140,140,140,255),{0.3,0.3,0.3,0.3}) 
end


if not  mousePos2(810 * scaleX  , 580 * scaleY  , 160 * scaleX , 35 *scaleY) then 
rectangle2(810 * scaleX  , 580 * scaleY  , 160 * scaleX , 35 *scaleY,tocolor(140,140,140,200),{0.3,0.3,0.3,0.3}) 
else
rectangle2(810 * scaleX  , 580 * scaleY  , 160 * scaleX , 35 *scaleY,tocolor(140,140,140,255),{0.3,0.3,0.3,0.3}) 
end 
if not  mousePos2(980 * scaleX  , 580 * scaleY  , 160 * scaleX , 35 *scaleY) then 
rectangle2(980 * scaleX  , 580 * scaleY  , 160 * scaleX , 35 *scaleY,tocolor(140,140,140,200),{0.3,0.3,0.3,0.3}) 
else
rectangle2(980 * scaleX  , 580 * scaleY  , 160 * scaleX , 35 *scaleY,tocolor(140,140,140,255),{0.3,0.3,0.3,0.3}) 
end

dxDrawText("#f9d989Plaka #afafafDeğiştirme Paneli",810 * scaleX  , 510 * scaleY,nil,nil ,tocolor(200,200,200,255),1,useFont("BebasRegular",20 * scaleX) ,"left","top",true,true,true,true)	
dxDrawText("Satın Al",842 * scaleX  , 643 * scaleY,nil,nil ,tocolor(200,200,200,255),1,useFont("BebasRegular",15 * scaleX) ,"left","top",true,true,true,true)	
dxDrawText("Vazgeç",975 * scaleX  , 643 * scaleY,nil,nil ,tocolor(200,200,200,255),1,useFont("BebasRegular",15 * scaleX) ,"left","top",true,true,true,true)	
dxDrawText(""..price.." ₺",1095 * scaleX  , 510 * scaleY,nil,nil ,tocolor(249,217,137,100),1,useFont("BebasRegular",19 * scaleX) ,"left","top",true,true,true,true)	


end , 0 , 0 )

end 





function useFont(font, size)
    size = size or 15
    if font then
        return exports.creative_library:getFont(font, size)
    end
end



function requestRoundRectangleShader(withoutFilled)
	local woF = not withoutFilled and ""
	return [[
	texture sourceTexture;
	float4 color = float4(1,1,1,1);
	bool textureLoad = false;
	bool textureRotated = false;
	float4 isRelative = 1;
	float4 radius = 0.25;
	float borderSoft = 0.01;
	bool colorOverwritten = true;
	]]..(woF or [[
	float2 borderThickness = float2(0.01,0.01);
	float radiusMultipler = 0.95;
	]])..[[
	SamplerState tSampler
	{
		Texture = sourceTexture;
		MinFilter = Linear;
		MagFilter = Linear;
		MipFilter = Linear;
	};
	float4 rndRect(float2 tex: TEXCOORD0, float4 _color : COLOR0):COLOR0{
		float4 result = textureLoad?tex2D(tSampler,textureRotated?tex.yx:tex)*color:color;
		float alp = 1;
		float2 tex_bk = tex;
		float2 dx = ddx(tex);
		float2 dy = ddy(tex);
		float2 dd = float2(length(float2(dx.x,dy.x)),length(float2(dx.y,dy.y)));
		float a = dd.x/dd.y;
		float2 center = 0.5*float2(1/(a<=1?a:1),a<=1?1:a);
		float4 nRadius;
		float aA = borderSoft*100;
		if(a<=1){
			tex.x /= a;
			aA *= dd.y;
			nRadius = float4(isRelative.x==1?radius.x/2:radius.x*dd.y,isRelative.y==1?radius.y/2:radius.y*dd.y,isRelative.z==1?radius.z/2:radius.z*dd.y,isRelative.w==1?radius.w/2:radius.w*dd.y);
		}
		else{
			tex.y *= a;
			aA *= dd.x;
			nRadius = float4(isRelative.x==1?radius.x/2:radius.x*dd.x,isRelative.y==1?radius.y/2:radius.y*dd.x,isRelative.z==1?radius.z/2:radius.z*dd.x,isRelative.w==1?radius.w/2:radius.w*dd.x);
		}
		float2 fixedPos = tex-center;
		float2 corner[] = {center-nRadius.x,center-nRadius.y,center-nRadius.z,center-nRadius.w};
		//LTCorner
		if(-fixedPos.x >= corner[0].x && -fixedPos.y >= corner[0].y)
		{
			float dis = distance(-fixedPos,corner[0]);
			alp = 1-(dis-nRadius.x+aA)/aA;
		}
		//RTCorner
		if(fixedPos.x >= corner[1].x && -fixedPos.y >= corner[1].y)
		{
			float dis = distance(float2(fixedPos.x,-fixedPos.y),corner[1]);
			alp = 1-(dis-nRadius.y+aA)/aA;
		}
		//RBCorner
		if(fixedPos.x >= corner[2].x && fixedPos.y >= corner[2].y)
		{
			float dis = distance(float2(fixedPos.x,fixedPos.y),corner[2]);
			alp = 1-(dis-nRadius.z+aA)/aA;
		}
		//LBCorner
		if(-fixedPos.x >= corner[3].x && fixedPos.y >= corner[3].y)
		{
			float dis = distance(float2(-fixedPos.x,fixedPos.y),corner[3]);
			alp = 1-(dis-nRadius.w+aA)/aA;
		}
		if (fixedPos.y <= 0 && -fixedPos.x <= corner[0].x && fixedPos.x <= corner[1].x && (nRadius[0] || nRadius[1])){
			alp = (fixedPos.y+center.y)/aA;
		}else if (fixedPos.y >= 0 && -fixedPos.x <= corner[3].x && fixedPos.x <= corner[2].x && (nRadius[2] || nRadius[3])){
			alp = (-fixedPos.y+center.y)/aA;
		}else if (fixedPos.x <= 0 && -fixedPos.y <= corner[0].y && fixedPos.y <= corner[3].y && (nRadius[0] || nRadius[3])){
			alp = (fixedPos.x+center.x)/aA;
		}else if (fixedPos.x >= 0 && -fixedPos.y <= corner[1].y && fixedPos.y <= corner[2].y && (nRadius[1] || nRadius[2])){
			alp = (-fixedPos.x+center.x)/aA;
		}
		alp = clamp(alp,0,1);
		]]..(woF or [[
		float2 newborderThickness = borderThickness*dd*100;
		tex_bk = tex_bk+tex_bk*newborderThickness;
		dx = ddx(tex_bk);
		dy = ddy(tex_bk);
		dd = float2(length(float2(dx.x,dy.x)),length(float2(dx.y,dy.y)));
		a = dd.x/dd.y;
		center = 0.5*float2(1/(a<=1?a:1),a<=1?1:a);
		aA = borderSoft*100;
		if(a<=1){
			tex_bk.x /= a;
			aA *= dd.y;
			nRadius = float4(isRelative.x==1?radius.x/2:radius.x*dd.y,isRelative.y==1?radius.y/2:radius.y*dd.y,isRelative.z==1?radius.z/2:radius.z*dd.y,isRelative.w==1?radius.w/2:radius.w*dd.y);
		}
		else{
			tex_bk.y *= a;
			aA *= dd.x;
			nRadius = float4(isRelative.x==1?radius.x/2:radius.x*dd.x,isRelative.y==1?radius.y/2:radius.y*dd.x,isRelative.z==1?radius.z/2:radius.z*dd.x,isRelative.w==1?radius.w/2:radius.w*dd.x);
		}
		fixedPos = (tex_bk-center*(newborderThickness+1));
		float4 nRadiusHalf = nRadius*radiusMultipler;
		corner[0] = center-nRadiusHalf.x;
		corner[1] = center-nRadiusHalf.y;
		corner[2] = center-nRadiusHalf.z;
		corner[3] = center-nRadiusHalf.w;
		//LTCorner
		float nAlp = 0;
		if(-fixedPos.x >= corner[0].x && -fixedPos.y >= corner[0].y)
		{
			float dis = distance(-fixedPos,corner[0]);
			nAlp = (dis-nRadiusHalf.x+aA)/aA;
		}
		//RTCorner
		if(fixedPos.x >= corner[1].x && -fixedPos.y >= corner[1].y)
		{
			float dis = distance(float2(fixedPos.x,-fixedPos.y),corner[1]);
			nAlp = (dis-nRadiusHalf.y+aA)/aA;
		}
		//RBCorner
		if(fixedPos.x >= corner[2].x && fixedPos.y >= corner[2].y)
		{
			float dis = distance(float2(fixedPos.x,fixedPos.y),corner[2]);
			nAlp = (dis-nRadiusHalf.z+aA)/aA;
		}
		//LBCorner
		if(-fixedPos.x >= corner[3].x && fixedPos.y >= corner[3].y)
		{
			float dis = distance(float2(-fixedPos.x,fixedPos.y),corner[3]);
			nAlp = (dis-nRadiusHalf.w+aA)/aA;
		}
		if (fixedPos.y <= 0 && -fixedPos.x <= corner[0].x && fixedPos.x <= corner[1].x && (nRadiusHalf[0] || nRadiusHalf[1])){
			nAlp = 1-(fixedPos.y+center.y)/aA;
		}else if (fixedPos.y >= 0 && -fixedPos.x <= corner[3].x && fixedPos.x <= corner[2].x && (nRadiusHalf[2] || nRadiusHalf[3])){
			nAlp = 1-(-fixedPos.y+center.y)/aA;
		}else if (fixedPos.x <= 0 && -fixedPos.y <= corner[0].y && fixedPos.y <= corner[3].y && (nRadiusHalf[0] || nRadiusHalf[3])){
			nAlp = 1-(fixedPos.x+center.x)/aA;
		}else if (fixedPos.x >= 0 && -fixedPos.y <= corner[1].y && fixedPos.y <= corner[2].y && (nRadiusHalf[1] || nRadiusHalf[2])){
			nAlp = 1-(-fixedPos.x+center.x)/aA;
		}
		alp *= clamp(nAlp,0,1);
		]])..[[
		result.rgb = colorOverwritten?result.rgb:_color.rgb;
		result.a *= _color.a*alp;
		return result;
	}
	
	
	technique rndRectTech
	{
		pass P0
		{
			PixelShader = compile ps_2_a rndRect();
		}
	}
    ]]
end

local roundedRectangleShaders = {};
function rectangle(x, y, width, height, color, radius, isFilled)
    local color = color or tocolor(24, 24, 24);
    local radius = radius or { 0.2, 0.2, 0.2, 0.2 };
    local isFilled = isFilled or false;

    local rgba = { bitExtract(color, 16, 8), bitExtract(color, 8, 8), bitExtract(color, 0, 8), bitExtract(color, 24, 8) };

	-- local rgba = { bitExtract(color, 0, 8), bitExtract(color, 8, 8), bitExtract(color, 16, 8), bitExtract(color, 24, 8) };
    local key = table.concat(rgba, '') .. tostring(radius[1]);

    if (not roundedRectangleShaders[key]) then 
        roundedRectangleShaders[key] = {
            shader = dxCreateShader(requestRoundRectangleShader(isFilled)),
            lastTick = getTickCount(),
        };

        dxSetShaderValue(roundedRectangleShaders[key].shader, 'color', rgba[1] / 255, rgba[2] / 255, rgba[3] / 255, rgba[4] / 255);
        dxSetShaderValue(roundedRectangleShaders[key].shader, 'radius', radius[1], radius[2], radius[3], radius[4]);
    end 

    roundedRectangleShaders[key].lastTick = getTickCount();
    dxDrawImage(x, y, width, height, roundedRectangleShaders[key].shader, 0, 0, 0 );
end


function rectangle2(x, y, width, height, color, radius, isFilled)
    local color = color or tocolor(24, 24, 24);
    local radius = radius or { 0.2, 0.2, 0.2, 0.2 };
    local isFilled = isFilled or false;

    local rgba = { bitExtract(color, 16, 8), bitExtract(color, 8, 8), bitExtract(color, 0, 8), bitExtract(color, 24, 8) };

	-- local rgba = { bitExtract(color, 0, 8), bitExtract(color, 8, 8), bitExtract(color, 16, 8), bitExtract(color, 24, 8) };
    local key = table.concat(rgba, '') .. tostring(radius[1]);

    if (not roundedRectangleShaders[key]) then 
        roundedRectangleShaders[key] = {
            shader = dxCreateShader(requestRoundRectangleShader(isFilled)),
            lastTick = getTickCount(),
        };

        dxSetShaderValue(roundedRectangleShaders[key].shader, 'color', rgba[1] / 255, rgba[2] / 255, rgba[3] / 255, rgba[4] / 255);
        dxSetShaderValue(roundedRectangleShaders[key].shader, 'radius', radius[1], radius[2], radius[3], radius[4]);
    end 

    roundedRectangleShaders[key].lastTick = getTickCount();
    dxDrawImage(x, y, width, height, roundedRectangleShaders[key].shader, 0, 0, 0 , tocolor(255,255,255,255),true);
end


local gradients = {}
function rgbToString(color)
    return table.concat({color[1], color[2], color[3]}, ",")
end

function drawRoundedGradientRectanglee(x, y, w, h, array, alpha, startOpacity, direction, fadeLength, postgui)
    local alpha = alpha or 255
    local startOpacity = startOpacity or 1  
    local direction = direction or "left-to-right"  
    local fadeLength = fadeLength or 100 

    local x1, y1, x2, y2 = "0%", "0%", "100%", "0%"  
    if direction == "right-to-left" then
        x1, y1, x2, y2 = "100%", "0%", "0%", "0%"
    elseif direction == "top-to-bottom" then
        x1, y1, x2, y2 = "0%", "0%", "0%", "100%"
    elseif direction == "bottom-to-top" then
        x1, y1, x2, y2 = "0%", "100%", "0%", "0%"
    end

    local key = string.format("%d%d%d%d%d%d%s%s%d%f%s%d", w, h, array.radius, array.radius, array.offset.x, array.offset.y, rgbToString(array.color.color1), rgbToString(array.color.color2), array.rotation, startOpacity, direction, fadeLength)
    if not gradients[key] then
        local svgData = string.format([[
            <svg width="%d" height="%d" xmlns="http://www.w3.org/2000/svg">
                <defs>
                    <linearGradient id="grad1" x1="%s" y1="%s" x2="%s" y2="%s" gradientTransform="rotate(%d)">
                        <stop offset="0%%" stop-color="rgb(%s)" stop-opacity="%f" />
                        <stop offset="%d%%" stop-color="rgb(%s)" stop-opacity="0" />
                    </linearGradient>
                </defs>
                <rect width="%d" height="%d" rx="%d" ry="%d" fill="url(#grad1)" />
            </svg>
        ]], w, h, x1, y1, x2, y2, array.rotation, rgbToString(array.color.color1), startOpacity, fadeLength, rgbToString(array.color.color2), w, h, array.radius, array.radius)
        
        gradients[key] = svgCreate(w, h, svgData)
    end
    return dxDrawImage(x, y, w, h, gradients[key], 0, 0, 0, tocolor(255, 255, 255, alpha), postgui or false)
end

function mousePos2 ( x, y, width, height )
    if ( not isCursorShowing( ) ) then
        return false
    end
    local sx, sy = guiGetScreenSize ( )
    local cx, cy = getCursorPosition ( )
    local cx, cy = ( cx * sx ), ( cy * sy )
    
    return ( ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) )
end