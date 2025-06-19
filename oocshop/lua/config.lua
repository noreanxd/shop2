pages = {{"Genel","main"},{"VIP","vip"},{"Araçlar","drive"},{"Silah","rifle"},{"Para","gem"},{"Etiket","tag"},{"Handling","fast"}}

mainPage = {
	{urun="Karakter İsim Değişikliği",fiyat=35, event="shop.karakterisimdegistir", image="kismidegis"},
	{urun="Kullanıcı Adı Değişikliği",fiyat=35, event="shop.kadidegistir", image="kadidegis"},
	{urun="Ek Araç Slotu",fiyat=30, event="shop.aracslot", image="ekarac"},
	{urun="Araç Texture",fiyat=100, event="shop.setVehicleTexture", image="cartexture" , type = 1},
	{urun="Ek Ev Slotu",fiyat=30, event="shop.evslot", image="ekev"},
	{urun="10 Oyun Saati",fiyat=35, event="shop.oyunsaat", image="oyunsaati"},
	{urun="Cam Filmi",fiyat=35, event="shop.camfilm", image="camfilm"},
	{urun="Silah Tamir Kiti",fiyat=35, event="shop.silahtamir", image="stk"},
	{urun="OOC Hapis Kaldırma",fiyat=35, event="shop.oochapis", image="jail"},
	{urun="IC Hapis Kaldırma",fiyat=35, event="shop.ichapis", image="jail"},
	{urun="Özel Telefon Numarası",fiyat=35, event="shop.privateno", image="privateno"},
	{urun="Özel Araç Plakası",fiyat=40, event="shop.carplate", image="plate" , type = 2},
}

vipPage = {
	{urun="VIP 1", fiyat=30, event=1, image="vip1", r1=238,g1=238,b1=238, bilgi="● İsminin altında bulunan VIP 1 iconu.\n● Mesleklerde fazladan gelir.\n● Saatlik + $100 para bonusu.\n● Bandana takabilme özelliği.\n● Kar Maskesi takabilme özelliği.\n● PM Kapatma & Açma.\n● Hızlı /reklam özelliği."},
	{urun="VIP 2", fiyat=50, event=2, image="vip2", r1=120,g1=100,b1=1, bilgi="● İsminin altında bulunan VIP 2 iconu.\n● Mesleklerde fazladan gelir.\n● Saatlik + $200 para bonusu.\n● Bandana takabilme özelliği.\n● Kar Maskesi takabilme özelliği.\n● AK-47 silahını kullanabilme özelliği.\n● PM Kapatma & Açma.\n● Hızlı /reklam özelliği."},
	{urun="VIP 3", fiyat=80, event=3, image="vip3", r1=50,g1=190,b1=240, bilgi="● İsminin altında bulunan VIP 3 iconu.\n● Mesleklerde fazladan gelir.\n● Saatlik + $300 para bonusu.\n● Bandana takabilme özelliği.\n● Kar Maskesi takabilme özelliği.\n● AK-47 silahını kullanabilme özelliği.\n● M4 silahını kullanabilme özelliği.\n● PM Kapatma & Açma.\n● Hızlı /reklam özelliği.\n● Ücretsiz araç tamir."},
	{urun="VIP 4", fiyat=100, event=4, image="vip4", r1=20,g1=232,b1=193, bilgi="● İsminin altında bulunan VIP 4 iconu.\n● Mesleklerde fazladan gelir.\n● Saatlik + $400 para bonusu.\n● Bandana takabilme özelliği.\n● Kar Maskesi takabilme özelliği.\n● AK-47 silahını kullanabilme özelliği.\n● M4 silahını kullanabilme özelliği.\n● PM Kapatma & Açma.\n● Hızlı /reklam özelliği.\n● Ücretsiz araç tamir.\n● Otomatik saatlik bonus özelliği.\n● Sınırsız Tamir Kiti Kullanımı (/tamirkit)"},
}


etiketPage = {
    {"Yıldız Etiketi","files/etiket/1.png",100,1},
    {"Crosshair Etiketi","files/etiket/2.png",100,2},
    {"Warning Etiketi","files/etiket/3.png",100,3},
    {"Maymun Etiketi","files/etiket/4.png",100,4},
    {"Gül Etiketi","files/etiket/5.png",100,5},
    {"Cadı Etiketi","files/etiket/6.png",100,6},
    {"Keleş Etiketi","files/etiket/7.png",100,7},
    {"M4 Etiketi","files/etiket/8.png",100,8},
    {"Uzi Etiketi","files/etiket/9.png",100,9},
    {"Colt Etiketi","files/etiket/10.png",100,10},
    {"Baykuş Etiketi","files/etiket/11.png",100,11},
    {"Beyzbol Sopası Etiketi","files/etiket/12.png",100,12},
    {"Taç Etiketi","files/etiket/13.png",100,13},
    {"Mor Taç Etiketi","files/etiket/14.png",100,14},
    {"Anonymous Etiketi","files/etiket/15.png",100,15},
    {"Boks Eldiveni Etiketi","files/etiket/16.png",100,16},
    {"Ninja Etiketi","files/etiket/17.png",100,17},
    {"Anime Kız Etiketi #1","files/etiket/18.png",100,18},
    {"Öfke Etiketi","files/etiket/19.png",100,19},
    {"Bıyık Etiketi","files/etiket/20.png",100,20},
    {"Ateş Etiketi","files/etiket/21.png",100,21},
    {"Nah Etiketi","files/etiket/22.png",100,22},
    {"Anime Kız Etiketi #2","files/etiket/23.png",100,23},
    {"Anime Erkek Etiketi","files/etiket/24.png",100,24},
    {"Kartal Etiketi","files/etiket/25.png",100,25}
}

-- aracPage = {
--   gta    vehlib 		name                       				 cost  	resim               motor(0-15 arası) hız fren(0-15 arası)
    -- {487,413,"Helikopter", 			"Super",	2077,	370,	"files/vehs/350z.png", 	 15, 284, 3},
    -- {602,175,"Ferrari  488 GTB",	"Super",	2077,	175, 	"files/vehs/agera.png",5, 355, 1},
    -- {439,445,"Nissan Silvia S15", 	"Super",	2077,	265, 	"files/vehs/aventador.png", 8, 315, 7},
	-- {487,413,"Helikopter", 			"Super",	2077,	370,	"files/vehs/bugatti.png",	 5, 325, 8},
    -- {602,175,"Ferrari  488 GTB",	"Super",	2077,	175, 	"files/vehs/drafter.png",3, 375, 5},
    -- {439,445,"Nissan Silvia S15", 	"Super",	2077,	265, 	"files/vehs/ducati.png", 1, 152, 15},
	-- {487,413,"Helikopter", 			"Classic",	2077,	370,	"files/vehs/ferrari.png",	 9, 255, 12},
    -- {602,175,"Ferrari  488 GTB",	"Classic",	2077,  	175, 	"files/vehs/gallardo.png",8, 265, 5},
    -- {439,445,"Nissan Silvia S15",	"Classic",	2077, 	265, 	"files/vehs/h2r.png", 11, 290, 6},
-- }

aracPage = {
--   gta   vehlib               name                      category  cost  top speed resim                         motor  hız   fren
    {546, 35, "Audi",            "RS7",  2077, 150, "files/vehs/audi rs7.png",         10, 300, 6},
    {502, 82, "BMW",             "G82 M4",  2077, 150, "files/vehs/bmw g82.png",          12, 280, 5},
    {439, 26, "Ferrari",         "Donate",  2077, 240, "files/vehs/ferrari.png",       14, 320, 7},
    {579, 56, "Mercedes G65",    "Donate",  2077, 190, "files/vehs/g63.png",          9,  260, 4},
    {494, 81, "Nissan GTR",      "Donate",  2077, 120, "files/vehs/gtr.png",          15, 350, 5},
    {411, 83, "Lamborghini",     "Donate",  2077, 240, "files/vehs/lambo.png",        8,  280, 3},
    {506, 87, "McLaren",         "Donate",  2077, 210, "files/vehs/mclaren.png",     7,  250, 5},
    {461, 5, "Kawasaki",        "Donate",  2077, 100, "files/vehs/motor.png",      13, 340, 8},
    {527, 14, "Ford Mustang",   "Donate",  2077, 110, "files/vehs/mustang gt.png",      10, 300, 7},
    {602, 10, "Pegassi",        "Donate",  2077, 170, "files/vehs/pegassi.png",       15, 400, 10},
    {576, 68, "Porche",    "911",  2077, 170, "files/vehs/porche.png",        7,  200, 3},
    {479, 902, "Rolls Royce",   "Donate",  2077, 210, "files/vehs/rolls royce.png",        12, 330, 8},
    {545, 21, "Toyota Supra",  "Donate",  2077, 120, "files/vehs/supra.png",        12, 330, 8},
}


silahPage = {
	--id 	name 	type 						fiyat	range(0-15),	kesinlik,	hassar
	{33,	"Rifle", 		"Kurmalı",			250, 	15, 			15, 		110},
	{31,	"M4", 			"Ağır Makineli",	350, 	13, 			13, 		150},
	{30,	"Ak-47", 		"Ağır Makineli",	250, 	12, 			12, 		150},
	{29,	"Mp-5", 		"Hafif Makineli",	200, 	8, 				8, 			90},
	{32,	"Tec-9", 		"Hafif Makineli",	175, 	8, 				8, 			55},
	{28,	"Uzi", 			"Hafif Makineli",	150, 	7, 				7, 			55},
	{25,	"Shotgun", 		"Pompalı",			250, 	4, 				4, 			23},
	{24,	"Deagle", 		"Tabanca",			100, 	6, 				6, 			50},
	{23,	"Silenced", 	"Tabanca",			75, 	4, 				4, 			40},
	{22,	"Colt-45", 		"Tabanca",			50, 	3, 				3, 			35},
}

icPage = {
	--fiyat, 	ıcpara
	{10, 1000},
	{25, 2500},
	{50, 5000},
}

oocPage = {
	--fiyat, 	ıcpara
	{14, "10₺ Bakiye",		583},
	{60, "50₺ Bakiye",		584},
	{110, "100₺ Bakiye",	585},
}

handPage = {
	-- {urun="Stage 1",fiyat=50, event="hd.st1", image="st1"},
	-- {urun="Stage 2",fiyat=85, event="hd.st2", image="st2"},
	-- {urun="Stage 3",fiyat=120, event="hd.st3", image="st3"},
	-- {urun="Araç Zırh",fiyat=300, event="hd.zirh", image="zirh"},
}