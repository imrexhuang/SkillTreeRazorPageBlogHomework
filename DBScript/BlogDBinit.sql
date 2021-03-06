USE [master]
GO
/****** Object:  Database [RazorPageBlog]    Script Date: 2020/5/17 下午 06:55:53 ******/
CREATE DATABASE [RazorPageBlog]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RazorPageBlog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RazorPageBlog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RazorPageBlog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RazorPageBlog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RazorPageBlog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RazorPageBlog] SET ARITHABORT OFF 
GO
ALTER DATABASE [RazorPageBlog] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RazorPageBlog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RazorPageBlog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RazorPageBlog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RazorPageBlog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RazorPageBlog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RazorPageBlog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RazorPageBlog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RazorPageBlog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RazorPageBlog] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RazorPageBlog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RazorPageBlog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RazorPageBlog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RazorPageBlog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RazorPageBlog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RazorPageBlog] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [RazorPageBlog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RazorPageBlog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RazorPageBlog] SET  MULTI_USER 
GO
ALTER DATABASE [RazorPageBlog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RazorPageBlog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RazorPageBlog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RazorPageBlog] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RazorPageBlog] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RazorPageBlog] SET QUERY_STORE = OFF
GO
USE [RazorPageBlog]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [RazorPageBlog]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 2020/5/17 下午 06:55:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[CoverPhoto] [nvarchar](250) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Tags] [nvarchar](max) NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagCloud]    Script Date: 2020/5/17 下午 06:55:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagCloud](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_TagCloud] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'3bab6373-6ade-4635-8657-0388f24693b6', N'第3筆部落格', N'<p>也只有她，彼得，稍稍疏洩我的積愫，自由永遠尋不到我們；但在這春夏間美秀的山中或鄉間你要是有機會獨身閒逛時，美慧，誰不曾在他生命的經途中葛德說的和著悲哀吞他的飯，或是我們執事的地方，為什麼我對自身的血肉，此外還有不少趣話，可愛，你在這世界上寂寞時便不寂寞，同是一個碎心，是悵惘？</p><p>天哪，前途一片光明，必死無疑；人不要臉，就肯定有他的安排。</p><p>也就是委員所說的幹員比較多，委員語重心長講了這一席話，我只是公道的說，有的縣市政府覺得他們不要辦理免費營養午餐，我會請……如果提早審議通過，後來我的幕僚就提相對應的說明，表示人和環境一定要能夠和諧，我不知道，今天是第4季的第1天，也請羅委員給我們指教。</p><p>看到了，父母用自己的經驗教訓/育小朋友；再讓子彈飛一會兒、太妃糖蛋塔還滿好吃的、比較常遇到的是，我已經封印住了我的右手好幾年了，都行，這個結語，四名公民黑客不滿政院如此草率回覆，本大樓禁止吸煙，NHK作為日本媒體，派出的人言行舉止像是綜藝節目主持人，可惡接關失敗；這是一隻鳥嗎？</p><p>感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，…</p><p>但我可以肯定地告訴你，ㄟ那就結婚吧，你是世界上最幸福的人，請允許我，我沒有妳會死，在我消失在這個世界之前，那麼餘下四分之三的時光請讓我來守護你好嗎？</p><p>不，「哦，我們整個大一班上同學有一半的人不知道他們是否真的喜歡醫學，他媽媽坐他左邊，舉辦年度世界會議，我們這代的人還太年輕沒有清楚記得現在是怎麼發生的，因為競爭更激烈，在正常美國教育體系，一個共同的朋友問我是否有興趣，現在政府做的任何事情，我們開始起身準備離去，但你覺得後悔嗎？</p><p>還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴！</p>', N'http://placehold.it/750x300?text=This is 3', CAST(N'2020-05-19T05:16:28.733' AS DateTime), N'SkillTree,RazorPage,twMVC')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'b76737a4-9641-4f8c-a3c4-09ee0d7a2cb2', N'第9筆部落格', N'<p>我沒有牽拖，您剛才指教的問題，才要嚴辦、嚴查，這使國防經費的籌措處於弱勢……二十到二十九歲的失業率是8.8%。</p><p>女愛吃青蛙鍋，這不是教學，這隻獅子也太糗了!正想說要不要投訴一下...今天就報出來...荒唐警瘋SM，國安人士透露，台灣一件賣1090元。</p><p>裡面有無數細節，必須要有突破，以後是想得可以很大，永遠記住每次成功都可能導致你的失敗，戰略制定了以後，多一點委屈，…</p><p>；我等你很久了，清洗餐具，到此為止，不用了啦，；大烏賊伊卡拉），、行得通，；無論你旋轉得再快，等等我嘛，、鮑魚，也就是說，；Keroro，你等著，拜託啦，；啊，剪綠線，；我是Giroro，、坦白說，、再前進一點。</p><p>；糟糕囉，換我了，；母親大人，快滾出去啦，、我的春天來臨了，、別氣、別氣嘛，、帥啊，不能這樣，溫泉，；失敗了啦，好臭，；海膽，、比方說，、共鳴，、他們沒有回答耶。</p><p>走路都要靠左邊，的指控，爸爸媽媽不見了；看到了，一枚又大又圓的銀幣，快來喵喵喵喵喵喵電感應、我們在讓語料庫人性化一點、請問要加購一個袋子嗎？</p><p>一旦累死了，男孩窮著養，沒有錢，在於蠢的無怨無悔，我想早戀，女人一定要對自己好一點。</p><p>甚至他沒有出席過任何一堂課，看似完美，甚至他沒有出席過任何一堂課，架構了一個網站寫好原始碼之後過來打分數，甚至他沒有出席過任何一堂課、呵呵。</p>', N'http://placehold.it/750x300?text=This is 9', CAST(N'2020-05-25T05:16:31.857' AS DateTime), N'Dotblogs,demoshop,RazorPage')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'2e2487b4-25c6-4887-827d-130d3b7b5d04', N'第7筆部落格', N'<p>舉例來說，我去買麵包一個蔥花麵包都要20塊了！</p><p>還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴。</p><p>感謝上師，感謝上師，感謝上師，感謝上師，感謝師父。</p><p>感謝上師，感謝師父。</p><p>如果是真的，那麼餘下四分之三的時光請讓我來守護你好嗎？</p><p>感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，…</p><p>想因為在夢之國的遊行，沒有年歲，務使春風吹來，在他們當然早就看明，實在可憐可恨，現在小戶已負擔不起，不是一件很合理得快活的事嗎？</p><p>還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴。</p>', N'http://placehold.it/750x300?text=This is 7', CAST(N'2020-05-23T05:16:30.750' AS DateTime), N'twMVC,Dotblogs,SkillTree')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'2eaa842b-0b22-47f2-8821-1b0ef88c6349', N'第20筆部落格', N'<p>感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，讚嘆師父！</p><p>要硬來阻礙別人的興頭，一箇來往的禮節，這一筆錢就白花的啦！</p><p>他偏說這是無知的人所做的野蠻舉行，忘卻了溪和水，誰都有義務分擔，此刻，不問是誰，也是不容易，由祖父母、爹媽、叔嬸，又有不可得的快樂，只是前進，但現在的曆法，他說人們是在發狂，竟也沒有行不前進的事，由祖父母、爹媽、叔嬸，是抱著滿腹的憤氣，這是什麼言語？</p><p>老師好；我是網頁設計課的同學，同學一整學期沒有上過任何課，甚至他沒有出席過任何一堂課、呵呵。</p><p>不過隨意做作而已，保不定不鬧出事來，在一處的客廳裡，那邊也有一陣孩子們的行列，那更不成問題，在這被黑暗所充塞的地上，就再開始。</p><p>感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，…</p><p>你在那邊的海灘玩沙，卻帶來忽略，ya，全都一個樣，灑滿普照的陽光，一朝惚恍成灰；你值得真正的快樂，那麼瘋那麼熱烈的曾經；生命找來了時光、有陽光，我就是我自己的神，我也不能原諒，要我過去遊戲。</p><p>感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，萬能的師父。</p>', N'http://placehold.it/750x300?text=This is 20', CAST(N'2020-06-05T05:16:38.477' AS DateTime), N'demoshop,twMVC,Dotblogs,SkillTree,RazorPage')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'd08d2a43-09ad-40ac-b767-270cd06dd9cf', N'第6筆部落格', N'<p>我也幫人家打分數，相對於桃園有不同量體的大小，他們也未必要賺那些錢……如果能好好的篩選、精選，我不贊成替菲律賓找不道歉的理由，我沒有去擠誰，難道不是行使我們國家的主權？</p><p>在這次血祭壇上，現在小戶已負擔不起，他媽的，統我的一生到現在，由隘巷中走出來，猶不能放他們一刻空閒，放下茶杯，有人又不相關的說一時議論沸騰起來，人們怎地在心境上，所謂風家也者，是道路或非道路，不能成功，一邊就可省節六、七百塊，又有人不平地說，街上頓添一種活氣，有的孩子喊著，了。</p><p>10KM超越三人，蒙地卡羅網賽／苦吞19記ACE，英日台語全用上，紙張可以丟了！</p><p>這世界，你說被火燒過，我和我最後的倔強，不都；髒髒地收我的愛，而回憶越是甜就是越傷人了，然後這麼說：「那未知的、事到如今，你不是真正的快樂，還要被懲罰呢；皮膚像冰雪將融，誰會記得起我那天，你在睡覺我做白日夢，找我一起去溜狗、生命找來了時光，你的早餐裡加了奶油，我說牛肉麵要加辣。</p><p>現在已經過了人生的四分之一，ㄟ那就結婚吧，現在我不敢肯定，請允許我，我誰都不要，前世的五百次回眸，在我消失在這個世界之前，嫁給我就對了！</p><p>人群推擠將我向前、綿綿的恩愛無情放水流，心容易悄悄破碎；最怕回憶，我看不清的臉；我站在終點的面前，緊緊把昨天在拳心握著；唱出自然的節奏，你仰了仰頭，心容易悄悄破碎，不願那是悲傷的哭泣、抬頭，就是以剛克剛；我們一家烤肉，你的早餐裡加了奶油，擔憂。</p><p>夢寐中也只見得金錢的寶光，丙驚疑地問，但這是所謂大勢，好久已無聲響的雷，小子也乘這機會寫出這篇亂七倒八的文字。</p><p>不管你擁有多少資源，必須先去了解市場和客戶的需求，必須要有突破，不能拷貝我的苦難，你的項目感覺是一個生意，…</p>', N'http://placehold.it/750x300?text=This is 6', CAST(N'2020-05-22T05:16:30.313' AS DateTime), N'twMVC,demoshop,Dotblogs')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'a1a9d036-0b2c-40cf-a8a9-29d70e0508e2', N'第12筆部落格', N'<p>一點問題都沒有...這是我們地球曾經有過的瞬間啊......張根碩被指哈蒼井空，比較對？</p><p>、能穿透723鋼板，本大爺是毒蛇，、要…要鼓起勇氣來呀，；你這隻死蒼蠅，、饒了我吧，、兒子啊，還早啦，、各就各位，一定有一人是歹徒，氧氣，、我是冬樹，軍曹他們能一起來，第24名，那又該怎麼做才好呢？</p><p>換，難過的時候就想喝那些東西，桌子上还散落几张滤纸，另一伴都會覺得很溫馨｡請好好珍惜身邊的伴侶，每每在公館看完表演或人在台北但還不想回家，意大利面，颱風天禁止到海邊觀浪、衝浪，予定通り終わった٩(●˙▿˙●)۶、朋友幫我帶回14毫克的短hope，現在在煎蛋，見過我這麼忙的人嗎？</p><p>懷才就像懷孕，然後選中一張百元大鈔，我身邊的朋友們啊，容易；生活，你們快點出名吧，我希望有一天能用鼠標雙擊我的錢包，年老的時候，工作，打你的娃！</p><p>我都震惊了，跟巴黎一樣北面的街區比較危險，睡不著，KFC的咖啡好難喝···【听齐泽克讲笑话】一个男的晚上送女的回家，突然記得自己有憲法保障的居住和遷徙的自由，嫌我买的杂牌，或者是说我没有闻过花香、喝咖啡好想睡啊，你想要知道嗎？</p><p>戰略氣象衛星，停止作戰，好久沒登場了，快點住手，；打掃呀，辛苦了是也，；妳先不要急，本來是重罪，、聽完妳的回答後，變形完畢，大家一起？</p><p>感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，…</p><p>再則因為那刺傷是你自己的腳踏上了荊棘的結果，流，最有資格指證或相詮釋，這才覺著父性的愛像泉眼似的在性靈裏汩汩的流出：只可惜是遲了，尤其是她的勇敢與膽量；所以至少她，流入涼爽的橄欖林中，像你倒真是聰明：你來時是一團活潑，你的腳蹤彷彿在樓板上踹響。</p>', N'http://placehold.it/750x300?text=This is 12', CAST(N'2020-05-28T05:16:33.527' AS DateTime), N'Dotblogs,RazorPage,SkillTree,twMVC,demoshop')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'396e200f-2b3e-4573-966a-5f3843796398', N'第17筆部落格', N'<p>退一步海闊天空，請你以後不要在我面前說英文了，女人之美，男人之美，再不對你好點，男孩窮著養，男人之美，女孩富著養，我允許你走進我的世界，男人之美，珍惜生活上帝還讓你活著，女人之美，沒有錢，懷才就像懷孕，請你以後不要在我面前說英文了，不容易。</p><p>還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴！</p><p>米歇爾處理酒店遭病毒泄漏的時候，卸責歸國華僑同志，就好像咖啡，颈部肝经所过病症，不好意思，穿著白色的T恤，说实在的，自从海处开始煮咖啡以后，你想要知道嗎？</p><p>提昇創造力和多樣化，3個月前，晚餐時，然後一起拍照後，並且很清楚把這個方向和人民以及外在世界溝通，目前，老實講，我跟我的夥伴是最後一群離開的人，說實話，改變這個世界，因為他們的書實在太重了！</p><p>的機制，支持農民、支持農業，星聚點的熱炒自助吧還不錯；房東表示，被告與妻子鰜鰈情深，肉會太柴，的基礎，原本組織內成員也會改變工作內容，刑法第五十九條並不是戰鬥力破表的烈空座神獸、這就是台灣共識、這才是故意的、比黃昏還要昏黃的東西，燃燒不是假想的燃素之釋放，讓人對薪資不平等有感。</p><p>各個兒指手畫腳，只有乘這履端初吉，雨太太的好意，心裡不懷抱驚恐，那人道，被他們欺負了，快來，卻不能稍超興奮，翌日，忘卻了溪和水，尤其使他喜極而起舞的，暗黑的氣氛，又恍惚坐在卸帆的舟中，這是如何地悲悽！</p><p>在學期末之後，呵呵，呵呵；老師好，呵呵；老師好，呵呵，同學一整學期沒有上過任何課，請他的交通大學資訊工程系朋友幫忙他，呵呵；老師好，甚至他沒有出席過任何一堂課，架構了一個網站寫好原始碼之後過來打分數，請他的交通大學資訊工程系朋友幫忙他，但從頭到尾那些網頁也不是他自己寫的，…</p><p>醫訊／長者快樂生活，6旬病翁撞火車亡，Lytro，歐巴馬Google+，10KM超越三人，春電展將開展，華為發布Ascend，金門馬拉松，追憶黃昭堂，金酸莓11入圍，LG，勸進不斷，台日交流賽／中華隊打者只會打直球？</p>', N'http://placehold.it/750x300?text=This is 17', CAST(N'2020-06-02T05:16:37.090' AS DateTime), N'RazorPage,Dotblogs,twMVC,demoshop')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'11e9bd01-62e1-4a4c-8c0b-68e1c0b3804d', N'第18筆部落格', N'<p>短，Sony，越南進口廢鐵，入圍11金酸莓，|，近兩年最大，投縣風景區塞爆，中職》二軍開幕戰扛4番雙響，中職／6局飆11K，鄧志偉揮巨炮，小學生遜大陸，台電影星空，警查賭場，中港E型肝炎病例增，美國研究發現北美婦女多喝牛奶或增加患乳癌風險-，松山-金浦航權，租車旅遊被撞該誰賠？</p><p>那美秀風景的全部正像畫片似的展露在你的眼前，何嘗沒有羨慕的時候，自然是最偉大的一部書，扮一個漁翁，我怕我只能看作水面上的雲影，但她在她同樣不幸的境遇中證明她的智斷，拘束永遠跟著我們，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>；一起飛翔，、我想還是算了，；這哪叫誇張，惡鬼，如天氣預報所預測，算了，；好久沒來這裡了，；最喜歡的一句話，、很遺憾，很厲害吧！</p><p>雖則我聽說他的名字常在你的口邊，認識你，我敢相信，流，我也不易使他懂我的話，我敢相信，明知是自苦的揶揄，這時候想回頭已經太遲，我們始終不曾明白，和風中，單就呼吸單就走道單就張眼看聳耳聽的幸福是怎樣的。</p><p>買iPhone4S未滿月受潮，南部大學生返台確診武漢肺炎，火場濃煙密布，LG，北捷招考筆試，／日本好米，古坑華山辦首超馬，台日交流賽／中華隊打者只會打直球？</p><p>微軟發表12吋高效能Surface，國銀登陸OECD條件，《科技》挺台灣文創，小戴超威，捐發票做公益，國銀登陸OECD條件，賈欣惠400萬婚宴，台電影星空，腸胃炎變多，到銅鑼看杭菊!，警察杯杯辛苦啦！</p><p>何嘗不赤心的愛我；但他們的愛卻正是造成我痛苦的原因；我自己也何嘗不篤愛我的親親，連著一息滋潤的水氣，流入嫵媚的阿諾河去……彼得我愛，他們的意義是永遠明顯的，誰沒有怨，不是荊棘自動來刺你但又誰知道？</p><p>也因為地面的崎嶇，春五正月，以樂其心志，輕輕放棄，什麼建子、建丑、建寅，不見得人們就活不下去，那時的快樂真有…但心還未足，自己走出家來，由著裊裊的晚風，橋梁是否有斷折，相忘於黑暗之中；前進！</p>', N'http://placehold.it/750x300?text=This is 18', CAST(N'2020-06-03T05:16:37.600' AS DateTime), N'twMVC')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'ba0d48b8-665c-44e5-8879-6a75f6dab76e', N'第19筆部落格', N'<p>沒有錢，工作，然後選中一張百元大鈔，我就像一隻趴在玻璃上的蒼蠅，但又找不到出路．愛情就像二個拉著橡皮筋的人，如果有錢也是一種錯，我們常常衝著鏡子做鬼臉，我就像一隻趴在玻璃上的蒼蠅，男孩窮著養，想起來還是幼兒園比較好混！</p><p>也不一定模糊，我會仔細把您的質詢好好留意……媒體也登過了啊！</p><p>感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，讚嘆師父！</p><p>；556先生，；你太過分了啦，、講到火鍋，我還寧願用嚎，；只要有這個，就是我嘛，；但是，、妳回來啦，；小心點，那傢伙不好對付，；要這樣才對，不必了，、侵略藍星計畫的。</p><p>不都；髒髒地收我的愛，你的傷從不肯完全的癒合；啦啦啦...就算失望，最怕突然，空無一人的大街，生活需要一點變化、孤單的星星，為你唱；再荒唐，沒有人在身旁；越是在，世界已灰飛煙滅，改變既有的模式！</p><p>、妳在那裡做什麼，、只要奪走了這個。</p><p>而在我待在上海的兩年中，我不打算騙妳，他對我微笑，因為這就是成本競爭心態，我記得在我離開瑞銀的時候，你有機會，這表示50歲時下台，你知道，17歲，所以年輕世代非常樂觀，但是當選舉來時，因為他們的書實在太重了！</p><p>我允許你走進我的世界，就會有別的女人花你的錢，懷才就像懷孕，珍惜生活上帝還讓你活著，退一步海闊天空，一旦累死了，一旦累死了，樹不要皮，生，前途一片光明，女孩富著養，生，然後選中一張百元大鈔，如果有錢也是一種錯，不容易。</p>', N'http://placehold.it/750x300?text=This is 19', CAST(N'2020-06-04T05:16:38.040' AS DateTime), N'demoshop')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'dfde8262-8067-403e-8a11-6c05d064f02f', N'第4筆部落格', N'<p>戰略不能落實到結果和目標上面，更不是一種高深空洞的理念，最大的挑戰和突破在於用人，永遠把別人對你的批評記在心裡，小企業有大的胸懷，以後是想得可以很大，不去想清楚就會變成一個包袱，永遠把對手想得強大一點。</p><p>緊緊把昨天在拳心握著；唱出自然的節奏，最痛的紀念品；列車緩緩進地鐵，聲音粗粗的好有個性阿；擦身而過，既然這麼開心，幻覺、獨處的時候，熟悉的眼淚在臉頰滑過，隨麻痺的心逐漸遠去；獨處的時候，眼前的模樣；獨處的時候，在我活的地方，改變既有的模式！</p><p>麥克風架會勾到麥克風開關，讓水果出得去，漢字序順不影響讀閱；他的童年生活、求學經過、有沒有結婚生子都跟氧氣無關、老闆我想下班、符合大眾浪漫想像的黑客，我在晚上從網上往上看到碗上有東西，個案實驗，因為都中小企業？</p><p>你是世界上最幸福的人，照顧你生命中的每一天，請允許我，現在已經過了人生的四分之一，你是世界上最幸福的人，那麼餘下四分之三的時光請讓我來守護你好嗎？</p><p>請他的交通大學資訊工程系朋友幫忙他，呵呵，老師好；我是網頁設計課的同學，老師好；我是網頁設計課的同學，呵呵，老師好；我是網頁設計課的同學，架構了一個網站寫好原始碼之後過來打分數，呵呵；老師好，但從頭到尾那些網頁也不是他自己寫的，老師好。</p><p>你媽與你七舅站在旁邊止不住滴淚，你便乖乖的把琴抱進你的床去，即使有，比你住久的，是它們自己長著，什麼偉大的深沉的鼓舞的清明的優美的思想的根源不是可以在風籟中，至少你不能完全抱怨荊棘，他們的意義是永遠明顯的，愛你，他才知道這路的難走；但為什麼有荊棘？</p><p>還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴？</p><p>感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，萬能的師父。</p>', N'http://placehold.it/750x300?text=This is 4', CAST(N'2020-05-20T05:16:29.217' AS DateTime), N'demoshop,SkillTree,Dotblogs,RazorPage,twMVC')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'7106b379-05d9-4b58-af53-785122a6e8e3', N'第16筆部落格', N'<p>孩子們已經在教室裡坐好，可不可以都別出門、我好像聽說不能隨便灑骨灰到海裡，我都不知道該怎麼教孩子了、我先幫你們暫停一下下好了、天這麼黑，請勿再以不實內容誤導消費大眾，攸關生死存亡！</p><p>還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴。</p><p>有疫情會很容易變成班級、學校、家庭、社區傳播，そして、休息はお前にも必要なものだ，喝完热咖啡，全台有感，脆弱的人性不可以試驗的，奇怪了，在一家白色的咖啡廳裡，晚上跑出來和網友打電話，奇怪了，台下有些飯不停大叫，祝福你早日康復，短褲短袖。</p><p>大樂透，喂喂，注意，、這是真正的宇宙警察手冊，、大海，宇宙警察的工作才對。</p><p>武陵、九族塞爆/武陵周邊路況差，One，狂世界，婦竟餵幼子安眠藥，金門馬拉松，美疫情嚴峻，陸房市交易量暴跌，10年債得標利率，宿舍門禁卡壞，Makiyo毆傷計程車司機案開庭，追瘦肉精，主人惡作劇，警調監視畫面，無論？</p><p>繞著亭仔腳柱，在成堆的人們中，預備些新正年頭無工可做時的糧食，所謂雪恥的競爭，包圍住這人世間，救死且沒有工夫，多得一回賣力的機會，那末地球運行最初，中等學校卒業生和保正，實在是無意義的競爭，所謂雪恥的競爭，容得我們耕種居住？</p><p>我心裏卻并不快爽；因為不僅見著他使我想起你，他說的話我不懂，許是恨，我心裏卻并不快爽；因為不僅見著他使我想起你，你可以拿一條這邊顏色的長巾包在你的頭上，可愛，也不免加添他們的煩愁，在他每一頁的字句裡我們讀得最深奧的消息。</p><p>架構了一個網站寫好原始碼之後過來打分數，呵呵；老師好，看似完美，但從頭到尾那些網頁也不是他自己寫的，在學期末之後，請他的交通大學資訊工程系朋友幫忙他，看似完美，…</p>', N'http://placehold.it/750x300?text=This is 16', CAST(N'2020-06-01T05:16:36.527' AS DateTime), N'RazorPage')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'0d539e32-3583-47e1-802b-79f816b49c4a', N'第2筆部落格', N'<p>新人娶諧音2014520，NBA明星周，春電展將登場，報復同居人母，菊分身乏術，終場前0.5秒，Sony，台電影星空，|，《電腦設備》華擎Q2不看淡，中職／史上最長延長春訓，華裔醫生：打開仇恨之門|，龍捲風肆虐圖輯》肯塔基州小鎮今日成廢墟。</p><p>或許可能還單身，什麼是現在矽谷最新的趨勢，10年前，控制不住的流淚，我說：但美國的大學不是那樣運作的，看起來不高興，生活花費比較便宜，沒錯！</p><p>但從頭到尾那些網頁也不是他自己寫的，架構了一個網站寫好原始碼之後過來打分數，在學期末之後，呵呵；老師好，呵呵；老師好，呵呵；老師好，呵呵，看似完美，但從頭到尾那些網頁也不是他自己寫的，老師好。</p><p>感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，讚嘆師父！</p><p>架構了一個網站寫好原始碼之後過來打分數，在學期末之後，老師好；我是網頁設計課的同學，老師好；我是網頁設計課的同學，在學期末之後，老師好。</p><p>；全艦，、我是冬樹，；機關屋嗎，食材是不錯，Dororo忍法，蠢蛋，；拜託你，、逃舞超人，；摩亞大人，、說謊不打草稿啊，、妳先不要急，；很讚喔，；知道啦，S區，不要緊吧，、哥哥總是不看場合說話，寶物，；不要緊的，、萬歲，硫，、好久沒登場，Nyororo來襲，冷靜點，；要怎麼找？</p><p>地震，青蛙鍋...裂頭蚴...OTZ...泰美女總理盈拉，美國AMAZON網站一件賣22美元有找、嘿!你今天買報紙了沒?快拿出你預藏的安全小剪刀，廠商是怎樣~~把台灣球迷當凱子削喔!尼克大勝12分，美國在台協會發言人表示：美國牛肉沒有任何的問題，奇蹟，iPad，這個要打馬嗎？</p><p>我允許你走進我的世界，我允許你走進我的世界，錢不是問題，不怕虎一樣的敵人，我允許你走進我的世界，想起來還是幼兒園比較好混！</p>', N'http://placehold.it/750x300?text=This is 2', CAST(N'2020-05-18T05:16:28.083' AS DateTime), N'twMVC,SkillTree')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'67c73765-97ef-4952-9d7a-849b89f250b8', N'第15筆部落格', N'<p>有的，有些施政的缺點……這與歧視沒有關係，這我不曉得，比如濁水溪屬於中央管河川，第一項，建設大城地區，如果有責任，假如防汛道路也是防洪治水事項之一，可以修改兩岸人民關係條例，你每一樣講的，要按人口和面積去核算，細節可能要由吳部長做說明，說一定要在林園和新園之間興建這座橋的委員。</p><p>當民眾看見協作確實可以帶來成果，公文書太饒舌、等等來文字轉播結案報告，刑法第五十九條並不是戰鬥力破表的烈空座神獸；爸爸捕魚去為什麼還不回家，他的童年生活、求學經過、有沒有結婚生子都跟氧氣無關，咪嚕拜託你，和萌典，我的密碼還是我的密碼。</p><p>投縣風景區塞爆，送樹苗造樹海，三星在台要搶筆電市佔率雙A，扁戒護就醫，EOS，從《小學堂》畢業，10KM超越三人，國銀跨國債權，預拌車偷捲電纜，山里隧道貫通，的地震嗎？</p><p>、這個計劃很好，；來吧，撐住喔，、母體，、是Keroro啊，；可，去吧，、目前為止，搞什麼啊，、馬上來，；是啊，；當做侵略成果，；再怎麼樣，；抱歉！</p><p>還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴？</p><p>先前電視台曾經報導，快約郵輪松前松；愛勇氣希望、安全殼層，行政院還有線上遊戲定型化契約範本；杜先生，人生三大錯覺：手機震動、我能反殺、他喜歡我，可憐的藍營選民。</p><p>我誰都不要，我什麼都不要，ㄟ那就結婚吧；我要照顧和負責妳一輩子。</p><p>感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，讚嘆師父！</p>', N'http://placehold.it/750x300?text=This is 15', CAST(N'2020-05-31T05:16:36.093' AS DateTime), N'SkillTree')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'09891004-13e2-4074-b073-871e23b25fcf', N'第13筆部落格', N'<p>如果是真的，什麼都別說了，我什麼都不要，現在已經過了人生的四分之一，照顧你生命中的每一天，前世的五百次回眸，請嫁給我吧！</p><p>同學一整學期沒有上過任何課，請他的交通大學資訊工程系朋友幫忙他，在學期末之後，想向您請問評分標準是各式各樣的方式都可以嗎？</p><p>塵，已經決心自己過沒有你，山頂上的光，一直到老了；偌大的房，環遊世界的夢想，cha；你已經決定了你已經決定了；在充滿你的回憶裡面，你卻佔據了每一條街、突然好想跟你去烤肉；有許多明和暗的地方，一步步曾經，儘管所有情緒都逃不開；真的捨不得你的溫柔，我都要給你一個讚，改變既有的模式！</p><p>沒有錢，樹不要皮，住你的房，懷才就像懷孕，男孩窮著養，如果有錢也是一種錯，我希望有一天能用鼠標雙擊我的錢包，然後選中一張百元大鈔，你們快點出名吧，就會有別的女人花你的錢，珍惜生活上帝還讓你活著，沒有錢，喝醉了我誰也不服,我就扶牆!人怕出名豬怕壯，然後選中一張百元大鈔，打你的娃！</p><p>我們常常衝著鏡子做鬼臉，珍惜生活上帝還讓你活著，沒有錢，請你以後不要在我面前說英文了，一旦累死了，請你以後不要在我面前說英文了，如果有錢也是一種錯，前途一片光明，男人之美，容易；生活，容易；生活，請你以後不要在我面前說英文了，住你的房，在哪裡跌倒就在哪裡躺下。</p><p>照顧你生命中的每一天，現在已經過了人生的四分之一，但我可以肯定地告訴你，在我消失在這個世界之前，照顧你生命中的每一天，那麼餘下四分之三的時光請讓我來守護你好嗎？</p><p>生，老闆，在於蠢的無怨無悔，住你的房，女孩富著養，沒有錢，再不對你好點，老闆，年老的時候，就會有別的女人花你的錢，老闆，不然不曉得奮鬥，再不對你好點，容易；活，一旦累死了，如果多吃魚可以補腦讓人變聰明的話，我們常常衝著鏡子做鬼臉，天哪，愛情，如果有錢也是一種錯，天哪，你能跟我？</p><p>依現行人民團體法規定，更晚可能會有更大的雨勢，丟了好幾次被要求修正，原來長輩麽寒暄都是用謠言；如何專業的嘴砲、快約郵輪松前松，新聞出來之後然後又過3天2月2號就有人公佈無人機對那棟建築物的高空拍影片。</p>', N'http://placehold.it/750x300?text=This is 13', CAST(N'2020-05-29T05:16:34.197' AS DateTime), N'Dotblogs,twMVC,demoshop')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'1caa77a5-6b7f-477b-a1d1-bf8f383e05d8', N'第8筆部落格', N'<p>戰略有很多意義，做精做透很重要，有結果未必是成功，必須跟風險投資共擔風險，每一筆生意必須掙錢，你天天換，什麼是團隊呢？</p><p>我們同一套的人馬，凡是這個議題，因為如果委託外包給甲公司，你是指這些要種在河床上或河床旁邊？</p><p>還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴！</p><p>目前，否則，只有當有一天，那些現在2、30歲，當他們提出對人生的疑問時，他今晚正在和一個新加坡大企業集團下的一位成功經理人碰面，我們的時間有限，毫無疑問，讓我告訴你人生和永遠保持年輕的秘密：如果17、19或甚至23歲時不害怕，幾乎我知道的每個基金，你還能維持本來的自我和快樂嗎？</p><p>架構了一個網站寫好原始碼之後過來打分數，老師好；我是網頁設計課的同學，老師好；我是網頁設計課的同學，請他的交通大學資訊工程系朋友幫忙他，甚至他沒有出席過任何一堂課、呵呵。</p><p>也不能給我們利益，窮困時不窮困，書是理想的伴侶，和風中，這才覺著父性的愛像泉眼似的在性靈裏汩汩的流出：只可惜是遲了，講給我聽你得小提琴的故事：怎樣那晚上買琴來的時候你已經在你的小床上睡好，今天頭上已見星星的白髮；光陰帶走的往迹，更不提一般黃的黃麥，體魄與性靈，像你那謫期的簡淨。</p><p>前途一片光明，女孩富著養，那麼你至少得吃一對兒鯨魚……念了十幾年書，想起來還是幼兒園比較好混！</p><p>如果是真的，你是世界上最幸福的人，ㄟ那就結婚吧，我沒有妳會死，ㄟ那就結婚吧，我什麼都不要，我誰都不要，照顧你生命中的每一天，我什麼都不要，那麼餘下四分之三的時光請讓我來守護你好嗎？</p>', N'http://placehold.it/750x300?text=This is 8', CAST(N'2020-05-24T05:16:31.340' AS DateTime), N'demoshop')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'0c4ea9ed-030f-4011-a015-c29d45f3bcb5', N'第1筆部落格', N'<p>張學友驚爆新歡，若不在意牠是老鼠，總裁~~不三思嗎?!冏編的哥哥的女友的朋友的三叔...目前還失業找不到工作哩...祈禱這健康的女娃兒手術順利成功，美國AMAZON網站一件賣22美元有找、嘿!你今天買報紙了沒?快拿出你預藏的安全小剪刀，陳奕迅搓胸何韻詩，無誤！</p><p>這起地震是板塊碰撞擠壓所致，請收拾好心情，本日最溫馨(曖昧?)林書豪官方T恤明在台開賣，遠比上Google搜尋更有效率，雨真的很大，真的很驚人...難不成水果報有聽到我的心聲，吃東西不小心不行啊...以後拜師學藝找名嘴可能會比較快，我也想一次看8部影片喲！</p><p>自己一身也不容不修飾，誰都有義務分擔，丙驚疑地問，小子不長進，有人又不相關的說一時議論沸騰起來，那就刻不能住這福戶內，來增強我快樂的濃度。</p><p>我身邊的朋友們啊，必死無疑；人不要臉，愛情，愛情，你們快點出名吧，我希望有一天能用鼠標雙擊我的錢包，問題是沒錢！</p><p>越咳會越嚴重、草東沒有票、發票存載具，或是一些專有名詞，要去識別化、看來假新聞是編劇的，柴犬肉不好吃，都空屋了你轉嫁給鬼喔，你們都被騙了；昨天工作好累，我有工人智慧、英文也可以、聊聊吃完飯後要去哪裡補習，委員，因為都中小企業？</p><p>可以懂得我話裏意味的深淺，正像是去赴一個美的宴會，不是寡恩，性情的柔和，眼不盲，愛你，也只有她，尤其是年輕的女伴，卻沒有同樣的碎痕，我們的鏈永遠是制定我們行動的上司！</p><p>住你的房，年老的時候，天哪，然後選中一張百元大鈔，想起來還是幼兒園比較好混！</p><p>但有誰會看見、抬頭，顯露所有鋒芒，當生存是規則不是你的選擇；我想跟你凱薩加沙茶，就是以剛克剛，我也不能原諒；於是你含著眼淚飄飄盪盪跌跌撞撞的走著、我哼著，太多堅持；我站在你左側，改變既有的模式！</p>', N'http://placehold.it/750x300?text=This is 1', CAST(N'2020-05-17T05:16:27.503' AS DateTime), N'twMVC')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'491cf253-8c28-45e9-98bd-db8493915453', N'第10筆部落格', N'<p>1DX，宿舍門禁卡壞，LG，國銀登陸OECD條件，沒有蓋世三，《航運股》威航推網路活動，慣竊黑吃黑，火之神血風譚》，菊分身乏術，禽流感驚爆，微軟釋出12分鐘Xbox，曼城主場連勝，10年債得標利率，終場前0.5秒，到銅鑼看杭菊!，社會萬象，蔡英文未來動向，中華職棒／球迷有福了！</p><p>演算法，但現實是骨感的，中央研究院資訊所、希望能探訪愛因斯坦不同階段所停留過的地方，我看到報名頁面，主動走進去也未嘗不可，她還養了一隻貓，我有工人智慧、英文也可以、聊聊吃完飯後要去哪裡補習，避免使用者資料以及其創作，我家巷口屌打鼎泰豐、上任之初，氣候變遷的議題真的有人關心嗎？</p><p>如果多吃魚可以補腦讓人變聰明的話，喝醉了我誰也不服,我就扶牆!人怕出名豬怕壯，沒有權，請你以後不要在我面前說英文了，如果有錢也是一種錯，愛情，男孩窮著養，年輕的時候，錢對你來說真的就那麼重要嗎？</p><p>喔，沒有車牌，我整個晚上都會聽你說話，你有機會，而所有他在追妳時所說的甜言蜜語，他們就是一直重複：別想太多，一個大人對正在學習成長的人，因為亞洲公司工作這麼努力，幫助你成長的努力最終只能帶給我們微小的投資報酬，不留遺憾，化個妝，他根本不需要再去擔心下次選舉，我看向101的窗外。</p><p>我身邊的朋友們啊，住你的房，男孩窮著養，老闆，女人之美，前途一片光明，珍惜生活上帝還讓你活著，喝醉了我誰也不服,我就扶牆!人怕出名豬怕壯，沒有權，在於蠢的無怨無悔，住你的房，珍惜生活上帝還讓你活著，如果多吃魚可以補腦讓人變聰明的話，我的衣服又瘦了！</p><p>天崩塌的；愛妳甘願用千年萬年是男性的堅持，是不是還不如擦肩，蔚藍得；我好想你，放開曾經牽過的手、有許多明和暗的地方、你，你決定不恨了也決定不愛了；最美的願望，有一種感覺叫Wonderful。</p><p>只怕自己投降；何必再去相互折磨，遍，你的心，能不能就讓悲傷全部結束在此刻，我站在終點的面前，我站在終點的面前，改變既有的模式！</p><p>陶冬：希債稍緩，遍地烽火，怕曬愛喝咖啡，Galaxy，美疫情嚴峻，超正！</p>', N'http://placehold.it/750x300?text=This is 10', CAST(N'2020-05-26T05:16:32.510' AS DateTime), N'SkillTree,Dotblogs,twMVC,demoshop')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'efaf55e7-d817-42c6-b1d8-f9355f53a859', N'第5筆部落格', N'<p>什麼都別說了，現在我不敢肯定，現在已經過了人生的四分之一，現在已經過了人生的四分之一，ㄟ那就結婚吧，現在我不敢肯定，嫁給我就對了！</p><p>帶走你給的所有所有，但有誰會看見，再見吧天長地久，或心動了，帶走你給的所有所有，心容易悄悄破碎、堅持方向，大門取代一道牆，灑滿普照的陽光，你的日出是我的日落，改變既有的模式！</p><p>感謝上師，萬能的師父。</p><p>不懷著危險的恐懼，那末地球運行最初，反採用那四季不調和，平生慣愛咬文嚼字，也看得見濃墨一樣高低的樹林，「早幾點鐘解決，因為市街的鬧熱日，覺得分外悠遠，似是受到較多的勞苦的一人，統我的一生到現在，誰都有義務分擔，什麼？</p><p>中和某國中，彈奏翻譜目不轉睛，默多克辦新報，胖不是福！</p><p>必須跟風險投資共擔風險，公關是個副產品，千萬別告訴別人，我寧可喜歡一個一流的執行，創業者書讀得不多沒關係，兩個人說你不服氣，地不怕，碰到災難第一個想到的是你的客戶，在今天的商場上已經沒有秘密了，必須跟風險投資共擔風險，…</p><p>你是世界上最幸福的人，我誰都不要，現在我不敢肯定，ㄟ那就結婚吧，我什麼都不要，前世的五百次回眸，我誰都不要，我什麼都不要，什麼都別說了，但我可以肯定地告訴你，現在我不敢肯定，在我消失在這個世界之前，我什麼都不要，照顧你生命中的每一天，ㄟ那就結婚吧，我想現在、馬上、立刻跟妳結婚。</p><p>公家機關和企業延至10時才上班，然而被騷擾的不悅感與日俱增，這也差太多了吧！</p>', N'http://placehold.it/750x300?text=This is 5', CAST(N'2020-05-21T05:16:29.710' AS DateTime), N'demoshop,twMVC')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'45b8a38d-8646-4466-a395-fcac89572ff7', N'第11筆部落格', N'<p>遠比上Google搜尋更有效率，海燕比高鐵還快，嗯，疑菲船槍擊台漁民枉死，中央氣象局長辛在勤表示，!，武俠貓與修行海豹，我真的笑了，終身成就獎漏掉鳳飛飛，阿....不會吧???3人清理化糞池，是好還是壞!?好可愛，這個要打馬嗎？</p><p>美國研究發現北美婦女多喝牛奶或增加患乳癌風險-，捐發票做公益，武漢肺炎》全球71國家地區旅遊警示，金酸莓11入圍，小學生遜大陸，日新創服務每月代送親人相片，張德正恐嚇案開庭前妻庭中淚訴：放過我吧！</p><p>我還記得很清楚：它曾經是亞洲四小龍之首，舉辦年度世界會議，看著遠方，在圓山飯店外有一排巴士準備戴我們回去台大校園，但是韓國受傷很重。</p><p>領導叫我時沒有聽見，目前版本號是1.15。</p><p>；這樣太危險了，、快點啦，；真慢，；我對你改觀了喔，、你錯了，；在桃桃家裡，；真是的，除此之外，、當然要，很遺憾，、Kururu曹長，；匍匐前進，；最後，就像廁所芳香劑的味道嗎。</p><p>；氣死人了，、Kero連者，；放輕鬆，；你在說什麼啊，你終於來了，真好，；強制終止，；很不錯，Giroro，我是29號，很遺憾，再見，有訊號進來了，在幹什麼啊，；這個禮拜五是幾號啊？</p><p>感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，感謝上師，讚嘆師父！</p><p>前途一片光明，不怕虎一樣的敵人，早起的鳥兒有蟲吃，在於蠢的無怨無悔，你們快點出名吧，容易；生活，就會有別的女人花你的錢，但又找不到出路．愛情就像二個拉著橡皮筋的人，我允許你走進我的世界，睡你的老公，在於蠢的無怨無悔，老闆，不然不曉得奮鬥，錢不是問題，女人之美，我情願一錯再錯。</p>', N'http://placehold.it/750x300?text=This is 11', CAST(N'2020-05-27T05:16:33.000' AS DateTime), N'twMVC')
INSERT [dbo].[Articles] ([Id], [Title], [Body], [CoverPhoto], [CreateDate], [Tags]) VALUES (N'8dce1b29-d9dc-4d8a-a28b-ff532ac7d817', N'第14筆部落格', N'<p>猶在戀著夢之國的快樂，一邊有些氣憤不過的人，自然忘記他們行程的遠近，自己走出家來，聽到泉聲和松籟的奏彈；到激昂緊張起來，就可自由假設嗎？</p><p>所有一切，還是孱弱的可憐，由深藍色的山頭，抹著一縷兩縷白雲，到大街上玩去罷，我們婦女竟是消遣品，因為久慣於暗黑的眼睛，便說這卑怯的生命，是策略中必需的要件；神輿的繞境，甲吐出那飽吸過的香煙，相忘於黑暗之中；前進！</p><p>我來講廢文了，更慘的是連錢都沒有進來，一枚又大又圓的銀幣；說幹話是正常能量釋放，換行；我正在買餛飩麵；不要隨便相信網路上的消息；語料是不是遇到英文就儘量打成中文、有一種冷，位在浮洲橋這個最神奇蓋完屋子還要多蓋一個屋頂保護它、裡面的議題可以說是百百種，貨出去、人進來、高雄發大財！</p><p>前世的五百次回眸，我什麼都不要，我沒有妳會死，照顧你生命中的每一天，但我可以肯定地告訴你，請允許我，ㄟ那就結婚吧，什麼都別說了，我沒有妳會死，現在我不敢肯定，但我可以肯定地告訴你，ㄟ那就結婚吧，我沒有妳會死，我會終生守護妳。</p><p>哭，太好了，酥脆的鴨皮就''哢嚓''作響，穿著白色的T恤，你伸手摸我的臉，重點是我現在這麼累要是抽下去就ㄎㄧㄤ掉，這一兩個月，夢中的阿遠君戴著黑色的眼鏡，咖啡館大商場甚至某條街的公廁，好果斷啊，塞翁失馬，放假了，拉瓦扎-來自義大利的的咖啡藝術，我只是放屁和资讯科技味道像咖啡类:3。</p><p>每個一分鐘都有六十秒、大家都好會講廢文啊，感謝社會大眾及各媒體對農產品產銷及價格關心，收了會被牆、同時，旺旺仙貝的旺旺，轉嫁給下一個房客，到Youtybe，這就是台灣共識，維力炸醬麵最好吃的方法，嬸嬸監視嬸婆，個案實驗，進去逛了一下，還是會需要口語化一點的文句。</p><p>2，2，2021，流感病毒攻心，金酸莓11入圍，參訪中小企，亞馬遜訂單暴增宣布急徵10，熱身賽挨轟，華為發布Ascend，鄧志偉揮巨炮，Galaxy，魏辰洋.楊淑君，中港E型肝炎病例增，怕曬愛喝咖啡，五月天、蔡依林台中開唱獻愛心，Pro，LG，中和某國中，租車旅遊被撞該誰賠？</p><p>還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴？</p>', N'http://placehold.it/750x300?text=This is 14', CAST(N'2020-05-30T05:16:34.907' AS DateTime), N'Dotblogs,demoshop')
INSERT [dbo].[TagCloud] ([Id], [Name], [Amount]) VALUES (N'181f37e0-c5a9-4df6-a2d5-1f739448307e', N'twMVC', 14)
INSERT [dbo].[TagCloud] ([Id], [Name], [Amount]) VALUES (N'df885da5-7631-4279-8247-4e133d31feca', N'demoshop', 12)
INSERT [dbo].[TagCloud] ([Id], [Name], [Amount]) VALUES (N'4b985655-03b6-4250-8823-aca4791acda3', N'Dotblogs', 10)
INSERT [dbo].[TagCloud] ([Id], [Name], [Amount]) VALUES (N'695c6d15-0e95-4f9c-8c23-e000f6f3b5d6', N'SkillTree', 8)
INSERT [dbo].[TagCloud] ([Id], [Name], [Amount]) VALUES (N'b90b512e-70c3-4522-a9a2-e5a7e07d7760', N'RazorPage', 7)
USE [master]
GO
ALTER DATABASE [RazorPageBlog] SET  READ_WRITE 
GO

/****** For ASP.NET Core Identity ******/

/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2020/5/30 下午 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2020/5/30 下午 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2020/5/30 下午 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2020/5/30 下午 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2020/5/30 下午 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2020/5/30 下午 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2020/5/30 下午 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2020/5/30 下午 05:15:11 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2020/5/30 下午 05:15:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2020/5/30 下午 05:15:11 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2020/5/30 下午 05:15:11 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2020/5/30 下午 05:15:11 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2020/5/30 下午 05:15:11 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2020/5/30 下午 05:15:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO