-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 04 月 11 日 15:15
-- 服务器版本: 5.1.54
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `lds_blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `typecho_comments`
--

CREATE TABLE IF NOT EXISTS `typecho_comments` (
  `coid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0',
  `created` int(10) unsigned DEFAULT '0',
  `author` varchar(200) DEFAULT NULL,
  `authorId` int(10) unsigned DEFAULT '0',
  `ownerId` int(10) unsigned DEFAULT '0',
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `text` text,
  `type` varchar(16) DEFAULT 'comment',
  `status` varchar(16) DEFAULT 'approved',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`coid`),
  KEY `cid` (`cid`),
  KEY `created` (`created`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1330 ;

--
-- 转存表中的数据 `typecho_comments`
--

INSERT INTO `typecho_comments` (`coid`, `cid`, `created`, `author`, `authorId`, `ownerId`, `mail`, `url`, `ip`, `agent`, `text`, `type`, `status`, `parent`) VALUES
(9, 6, 1295020454, 'pser', 0, 1, 'ADMIN@KISSPS.COM', 'http://kissps.com', '211.64.30.10', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', '写博客么  哈哈哈  快搬家到mysdut.com吧     \n  加个友链', 'comment', 'approved', 0),
(6, 3, 1292575082, 'root', 1, 1, 'ldshuang@gmail.com', 'http://lds.isdut.info', '222.206.75.227', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.9 (KHTML, like Gecko) Maxthon/3.0 Safari/533.9', 'test', 'comment', 'approved', 0),
(8, 6, 1295019942, 'pser', 0, 1, 'ADMIN@KISSPS.COM', 'http://kissps.com', '10.110.2.214', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', '啊哈  这个比较好玩，收藏啦！', 'comment', 'approved', 0),
(12, 6, 1295356719, 'root', 1, 1, 'ldshuang@gmail.com', 'http://lds.isdut.info', '124.134.13.134', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.237 Safari/534.10', '<a href="#comment-9">@pser</a>\n加了', 'comment', 'approved', 9),
(1280, 31, 1299659270, 'Rming', 0, 1, 'admin@kissps.com', 'http://kissps.com', '61.179.159.145', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.107 Safari/534.13', '哈哈     换了域名？还是绑定了两个域名  还是用自己的域名吧', 'comment', 'approved', 0),
(1281, 31, 1299763215, 'lds', 0, 1, 'ldshuang@gmail.com', NULL, '222.206.75.227', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '两个啊', 'comment', 'approved', 0),
(1293, 92, 1313414203, '奶牛', 0, 1, 'nenew.net@gmail.com', 'http://www.nenew.net', '123.134.199.6', 'Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0', 'nautilus还有好几个插件，比如图片转换啊，管理员打开目录啊，也都还蛮好用滴~~~', 'comment', 'approved', 0),
(1284, 64, 1300931042, 'OSMSG', 0, 1, 'shiyicanghai@gmail.com', 'http://www.osmsg.com', '124.236.240.37', 'Mozilla/5.0 (X11; Linux i686; rv:2.0) Gecko/20100101 Firefox/4.0', '觉得“代码大全”和“修改代码的艺术”最好', 'comment', 'approved', 0),
(1285, 41, 1300931489, 'Linux 常用系统信息查看命令  : OSMSG', 0, 1, NULL, 'http://www.osmsg.com/2011/03/linux-view-the-command/', '217.69.173.118', 'The Incutio XML-RPC PHP Library -- WordPress/3.1', '[...]消息来自：osser[...]', 'pingback', 'approved', 0),
(1286, 69, 1303702882, '灵亦', 0, 1, 'lingyired@gmail.com', 'http://www.ubuntusoft.com/', '14.209.98.245', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Ubuntu/10.04 Chromium/10.0.648.205 Chrome/10.0.648.205 Safari/534.16', '不敢冒险，直接在虚拟机体验了。。', 'comment', 'approved', 0),
(1287, 69, 1303871351, 'OSMSG开源资讯', 0, 1, 'shiyicanghai@gmail.com', 'http://www.osmsg.com', '123.180.87.186', 'Mozilla/5.0 (X11; Linux i686; rv:2.0) Gecko/20100101 Firefox/4.0', 'debian6中。。。对于新技术新特性没有那么高要求，稳定够用即可。', 'comment', 'approved', 0),
(1321, 79, 1323807130, 'backlinks', 0, 1, 'jaysonstevensen84@gmail.com', 'http://xrumerservice.org', '46.109.206.109', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.1.4322; Alexa Toolbar; (R1 1.5))', '[ 小墙判断这是 Spam! ]\nGet up to 100000 forum backlinks with our backlinks service & massive targeted traffic Get incredible web traffic using superb backlink blast today. We can post your marketing post up to 100’000 forums worldwide, get thousands of backlinks and amazing targeted online web traffic in very short time. Most affordable and most powerful service for web traffic and backlinks in the world!!!! Your post will be published up to 100000 forums worldwide your website or blog will get instant traffic and massive increase in seo rankings just after few days or weeks so your site will get targeted long term traffic from search engines. Order now: <a href=http://xrumerservice.org>backlinks</a>', 'comment', 'spam', 0),
(1322, 94, 1324479074, 'ertvdk', 0, 1, 'hxaazh@ixdvpe.com', 'http://rjzrnjoswcts.com/', '176.65.164.111', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '[ 小墙判断这是 Spam! ]\nn2g3nX  <a href="http://gjqsoqahdnwm.com/">gjqsoqahdnwm</a>, [url=http://xtymjttfqlqf.com/]xtymjttfqlqf[/url], [link=http://guocnvmxsagp.com/]guocnvmxsagp[/link], http://ewndguuoeion.com/', 'comment', 'spam', 0),
(1323, 64, 1325275136, 'yficeodpcrk', 0, 1, 'llzoyb@ztygwi.com', 'http://nxzldveiwjfv.com/', '85.25.95.90', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '[ 小墙判断这是 Spam! ]\nsuqMGi  <a href="http://nyomnkubqtso.com/">nyomnkubqtso</a>, [url=http://lwwcxsoiswwc.com/]lwwcxsoiswwc[/url], [link=http://xofcsaqdwbpe.com/]xofcsaqdwbpe[/link], http://dsmaxbdztvax.com/', 'comment', 'spam', 0),
(1324, 79, 1325585913, 'backlinks', 0, 1, 'johndoe119996@gmail.com', 'http://xrumerservice.org', '46.109.192.45', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; KKman2.0)', '[ 小墙判断这是 Spam! ]\nMost powerful&cost effective SEO and website traffic service in world get up to 100’000 forum backlinks now! Get great web traffic using best backlink service today. We can post your custom post up to 100’000 forums around the web, get thousands of backlinks and incredible targeted web traffic in very short time. Most affordable and most powerful service for web traffic and backlinks in the world!!!! Your post will be published up to 100000 forums worldwide your website or blog will get instant traffic and massive increase in seo rankings just after few days or weeks so your site will get targeted long term traffic from search engines. Order now: <a href=http://xrumerservice.org>backlinks</a>', 'comment', 'spam', 0),
(1325, 79, 1327858089, 'backlinks service', 0, 1, 'jaohnsdoe1458963@gmail.com', 'http://xrumerservice.org', '46.109.200.165', 'Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 6.0 ; .NET CLR 2.0.50215; SL Commerce Client v1.0; Tablet PC 2.0', '[ 小墙判断这是 Spam! ]\nBest backlinks and website traffic service - we publish your custom message up to 100''000 forums worldwide price starting only from $29 Get incredible online web traffic using superb backlink service available. We can post your custom post up to 100’000 forums around the web, get insane amount of backlinks and amazing targeted online web traffic in very short time. Most affordable and most powerful service for web traffic and backlinks in the world!!!! Your post will be published up to 100000 forums worldwide your website or blog will get instant traffic and massive increase in seo rankings just after few days or weeks so your site will get targeted long term traffic from search engines. Order now: <a href=http://xrumerservice.org>backlinks</a>', 'comment', 'spam', 0),
(1326, 7, 1328083791, 'chicleLig', 0, 1, 'goenglish@titkinaq.info', 'http://www.google.com/', '62.75.181.210', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)', '[ 小墙判断这是 Spam! ]\nGo to <a href=http://www.google.com/>Google</a> English.    \r\nhttp://www.google.com/', 'comment', 'spam', 0),
(1327, 79, 1329730930, 'foollorma', 0, 1, 'jasonandersonnntm@gmail.com', 'http://xrumerservice.org', '46.109.202.149', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; FunWebProducts; .NET CLR 1.1.4322; PeoplePal 6.2)', '[ 小墙判断这是 Spam! ]\nGet up to 100000 forum backlinks with our backlinks service & massive targeted traffic Get large web traffic using amazing backlink blast available. We can post your custom message up to 100’000 forums worldwide, get insane amount of backlinks and large targeted online web traffic in very short time. Most affordable and most powerful service for web traffic and backlinks in the world!!!! Your post will be published up to 100000 forums worldwide your website or blog will get instant traffic and massive increase in seo rankings just after few days or weeks so your site will get targeted long term traffic from search engines. Order now: <a href=http://xrumerservice.org>backlink service</a>', 'comment', 'spam', 0),
(1328, 79, 1331684575, 'foollorma', 0, 1, 'ricardoandersonnntm@gmail.com', 'http://xrumerservice.org', '46.109.198.20', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '[ 小墙判断这是 Spam! ]\nGet up to 100000 forum backlinks with our backlinks service & massive targeted traffic Get amazing web traffic using superb backlink service today. We are able post your marketing message up to 100’000 forums around the web, get thousands of backlinks and incredible targeted online web traffic in shortest time. Most affordable and most powerful service for web traffic and backlinks in the world!!!! Your post will be published up to 100000 forums worldwide your website or blog will get instant traffic and massive increase in seo rankings just after few days or weeks so your site will get targeted long term traffic from search engines. Order now: <a href=http://xrumerservice.org>backlinks</a>', 'comment', 'spam', 0),
(1329, 64, 1332213522, 'ufmupgqvrh', 0, 1, 'bxanvq@cbczzw.com', 'http://olnkxpplzkam.com/', '217.172.180.18', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '[ 小墙判断这是 Spam! ]\nKulOVb  <a href="http://errwmpjjuvge.com/">errwmpjjuvge</a>, [url=http://jhealnabbzjq.com/]jhealnabbzjq[/url], [link=http://grzgkihbmjhp.com/]grzgkihbmjhp[/link], http://wgcugkkrdzqr.com/', 'comment', 'spam', 0);

-- --------------------------------------------------------

--
-- 表的结构 `typecho_contents`
--

CREATE TABLE IF NOT EXISTS `typecho_contents` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `modified` int(10) unsigned DEFAULT '0',
  `text` text,
  `order` int(10) unsigned DEFAULT '0',
  `authorId` int(10) unsigned DEFAULT '0',
  `template` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT 'post',
  `status` varchar(16) DEFAULT 'publish',
  `password` varchar(32) DEFAULT NULL,
  `commentsNum` int(10) unsigned DEFAULT '0',
  `allowComment` char(1) DEFAULT '0',
  `allowPing` char(1) DEFAULT '0',
  `allowFeed` char(1) DEFAULT '0',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `slug` (`slug`),
  KEY `created` (`created`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- 转存表中的数据 `typecho_contents`
--

INSERT INTO `typecho_contents` (`cid`, `title`, `slug`, `created`, `modified`, `text`, `order`, `authorId`, `template`, `type`, `status`, `password`, `commentsNum`, `allowComment`, `allowPing`, `allowFeed`, `parent`) VALUES
(6, 'wget 抓取整站', '6', 1292934676, 1300578565, '<code>\r\n wget -r -p -np -k http://doc.code365.net/Manual/FreeBSD_Arch_HandBook/\r\n</code>\r\n<pre>\r\n-r  递归\r\n-p,  --page-requisites（页面必需元素）\r\n-np, --no-parent（不追溯至父级）\r\n-k  将下载的HTML页面中的链接转换为相对链接即本地链接\r\n</pre>\r\n找了几个wget技巧，发一下。\r\n<pre>\r\n$ wget -r -np -nd http://example.com/packages/\r\n这条命令可以下载 http://example.com 网站上 packages 目录中的所有文件。其中，-np 的作用是不遍历父目录，-nd 表示不在本机重新创建目录结构。\r\n\r\n$ wget -r -np -nd --accept=iso http://example.com/centos-5/i386/\r\n与上一条命令相似，但多加了一个 --accept=iso 选项，这指示 wget 仅下载 i386 目录中所有扩展名为 iso 的文件。你也可以指定多个扩展名，只需用逗号分隔即可。\r\n\r\n$ wget -i filename.txt\r\n此命令常用于批量下载的情形，把所有需要下载文件的地址放到 filename.txt 中，然后 wget 就会自动为你下载所有文件了。\r\n\r\n$ wget -c http://example.com/really-big-file.iso\r\n这里所指定的 -c 选项的作用为断点续传。\r\n\r\n$ wget -m -k (-H) http://www.example.com/\r\n该命令可用来镜像一个网站，wget 将对链接进行转换。如果网站中的图像是放在另外的站点，那么可以使用 -H 选项\r\n</pre>\r\n', 0, 1, NULL, 'post', 'publish', NULL, 3, '1', '1', '1', 0),
(3, 'Shell脚本,批量生成Linux用户', '3', 1292472124, 1292480599, ' \r\n一个简单的Shell脚本，作用是批量生成Linux用户。\r\n<pre>\r\n#!/bin/bash\r\nfor name in tom jerry joe jane\r\ndo\r\n      useradd $name\r\n      echo redhat | passwd --stdin $name\r\ndone\r\n</pre>\r\n自己使用的时候，用自己需要的帐户名列表替换掉这个代码范例里的\r\ntom jerry joe jane等字段即可。密码都是redhat,自己更改。', 0, 1, NULL, 'post', 'publish', NULL, 1, '1', '1', '1', 0),
(7, 'Gun/screen 学习笔记', '7', 1292999444, 1309324051, '		 \r\n	启动screen，在终端里直接输入screen.\r\n    <code>[lds@localhost ~]$ screen</code>\r\n   改命令将启动一个在screen里运行的新shell,可以在这个shell里工作，比如要编译一个大型软件，在编译的时候你可以         按下ctrl+A,然后再按下d键，此时，就断开了screen的连接，回到原来的shell 。\r\n	查看 screen 有哪些命令\r\n       <code> ctrl+A ? </code>  \r\n常用的一些键绑定\r\n<pre>                \r\nC-a ?	显示所有键绑定信息\r\nC-a w	显示所有窗口列表\r\nC-a C-a	切换到之前显示的窗口\r\nC-a c	创建一个新的运行shell的窗口并切换到该窗口\r\nC-a n	切换到下一个窗口\r\nC-a p	切换到前一个窗口(与C-a n相对)\r\nC-a 0..9	切换到窗口0..9\r\nC-a a	发送 C-a到当前窗口\r\nC-a d	暂时断开screen会话\r\nC-a k	杀掉当前窗口\r\nC-a [	进入拷贝/回滚模式\r\n</pre>\r\n 	查看当前有哪些screen 连接 \r\n	<code>\r\n	[lds@localhost ~]$ screen -list <br>\r\n     There are screens on: <br>\r\n	18942.pts-6.localhost	(Detached)<br>\r\n	23829.pts-1.localhost	(Detached)<br>http://www.google.com.hk/\r\n      2 Sockets in /var/run/screen/S-lds.<br>\r\n	</code>	\r\n  此时有有两个screen会话，前面的数字是里程pid，使用screen -r 重新连接这个screen 会话，如果有多个会话，用screen -r pid  连接。\r\n<pre>\r\n[lds@localhost ~]$ screen -list\r\nThere is a screen on:\r\n	23829.pts-1.localhost	(Detached)\r\n1 Socket in /var/run/screen/S-lds.\r\n\r\n[lds@localhost ~]$ screen -r 23829\r\n</pre>\r\n\r\n给会话添加一个别名\r\n<code>screen -S name </code>用\r\n<code>screen -r name</code>\r\n就可以恢复会话。\r\n一张图screen 命令图\r\n <a href="http://blog.osser.me/index.php/attachment/24/" title="screen.png"><img src="http://blog.osser.me/usr/uploads/2011/01/2453423667.png" alt="screen.png" /></a>\r\n ', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(24, 'screen.png', 'screen-png', 1295356589, 1295356589, 'a:5:{s:4:"name";s:10:"screen.png";s:4:"path";s:35:"/usr/uploads/2011/01/2453423667.png";s:4:"size";i:77565;s:4:"type";s:3:"png";s:4:"mime";s:9:"image/png";}', 1, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 7),
(27, 'gvim在window下全屏', '27', 1297419799, 1297419916, '<a href="http://lds.isdut.info/tmp/gvimfullscreen.dll">下载gvimfullscreen.dll</a>\r\n将dll文件放到和gvim.exe相同的文件下，在配置文件vimrc中添加下面的配置\r\n<pre>\r\n"启动全屏<F11>键\r\nmap <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>\r\n</pre>', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(28, '个人的vimrc', '28', 1298773627, 1298773627, '<pre>\r\n"=================================\r\n"" default settings {{{\r\n"=================================\r\n\r\nif has("win32")\r\n	source $VIMRUNTIME/vimrc_example.vim\r\n	source $VIMRUNTIME/mswin.vim\r\n	behave mswin\r\nelse\r\nendif\r\n" }}}\r\n\r\n"" diff {{{\r\nset diffexpr=MyDiff()\r\nfunction MyDiff()\r\n	let opt = ''-a --binary ''\r\n	if &diffopt =~ ''icase'' | let opt = opt . ''-i '' | endif\r\n	if &diffopt =~ ''iwhite'' | let opt = opt . ''-b '' | endif\r\n	let arg1 = v:fname_in\r\n	if arg1 =~ '' '' | let arg1 = ''"'' . arg1 . ''"'' | endif\r\n	let arg2 = v:fname_new\r\n	if arg2 =~ '' '' | let arg2 = ''"'' . arg2 . ''"'' | endif\r\n	let arg3 = v:fname_out\r\n	if arg3 =~ '' '' | let arg3 = ''"'' . arg3 . ''"'' | endif\r\n	let eq = ''''\r\n	if $VIMRUNTIME =~ '' ''\r\n		if &sh =~ ''\\<cmd''\r\n			let cmd = ''""'' . $VIMRUNTIME . ''\\diff"''\r\n			let eq = ''"''\r\n		else\r\n			let cmd = substitute($VIMRUNTIME, '' '', ''" '', '''') . ''\\diff"''\r\n		endif\r\n	else\r\n		let cmd = $VIMRUNTIME . ''\\diff''\r\n	endif\r\n	silent execute ''!'' . cmd . '' '' . opt . arg1 . '' '' . arg2 . '' > '' . arg3 . eq\r\nendfunction\r\n" }}}\r\n\r\n\r\n"" 中文帮助 {{{\r\n"set helplang=cn\r\n" }}}\r\n\r\n"" 解决乱码 {{{\r\nset encoding=utf-8\r\nset termencoding=utf-8\r\nset fileencoding=chinese\r\n\r\nif has("win32")\r\n	" 指定菜单语言\r\n	" set langmenu=none\r\n	" 解决菜单乱码\r\n	set langmenu=zh_CN.utf-8\r\n	language messages zh_CN.utf-8\r\n	source $VIMRUNTIME/delmenu.vim\r\n	source $VIMRUNTIME/menu.vim\r\n	set ambiwidth=double\r\nendif\r\n" }}}\r\n\r\n"=================================\r\n" vimwiki插件的配置文件 \r\n"=================================\r\nlet g:vimwiki_use_mouse = 1\r\nlet g:vimwiki_list = [{''path'': ''/home/lds/vimwiki/'',\r\n\\ ''path_html'': ''/home/lds/vimwiki/html/'',\r\n\\ ''html_header'': ''/home/lds/vimwiki/template/header.tpl'',}]\r\nsource $VIMRUNTIME/vimrc_example.vim\r\nsource $VIMRUNTIME/mswin.vim\r\n"=================================\r\n"F3打开关闭菜单栏，工具栏\r\n"=================================\r\n" 隐藏工具栏\r\n	set guioptions-=T\r\n	" 隐藏菜单栏\r\n	set guioptions-=m\r\n	" 隐藏左边滚动条\r\n	set guioptions-=l\r\n	set guioptions-=L\r\n	" 隐藏右边滚动条\r\n	set guioptions-=r\r\n	set guioptions-=R\r\n\r\nmap <silent> <F3> :if &guioptions =~# ''T'' <Bar>\r\n        \\set guioptions-=T <Bar>\r\n        \\set guioptions-=m <bar>\r\n    \\else <Bar>\r\n        \\set guioptions+=T <Bar>\r\n        \\set guioptions+=m <Bar>\r\n    \\endif<CR>\r\n"=================================\r\n"字体\r\n"=================================\r\nset guifont=YaHei\\ Consolas\\ Hybrid:h11\r\nset guifont=Consolas:h11\r\n	"set guifont=Courier_New:h11:cANSI\r\n    "set guifont=Microsoft_YaHei_Mono:h11:cANSI\r\n    "set guifont=monaco:h11:cANSI\r\n    "set guifont=Consola:h11:cANSI\r\n    "set guifont=DajaVu:h11:cANSI\r\n    "set guifont=Lucida\\ Console:h11:cANSI\r\n    "set guifontwide=YouYuan:h11:cGB2312\r\n\r\n"=================================\r\n"常用 \r\n"=================================\r\ncolorscheme molokai\r\nset nocompatible\r\nset nu \r\nset showtabline=1\r\nsetlocal noswapfile\r\nset tabstop=4\r\nset softtabstop=4\r\nset shiftwidth=4\r\nset cindent\r\nset autoindent\r\nsyntax on\r\nset foldcolumn=2 ""折叠\r\n"" 不要备份文件\r\nset nobackup\r\n"" common {{{\r\n" 启动的时候不显示那个援助索马里儿童的提示\r\nset shortmess=atI\r\n" 通过使用: commands命令，告诉我们文件的哪一行被改变过\r\nset report=0\r\n" 不让vim发出讨厌的滴滴声\r\n" set noerrorbells\r\n" 在被分割的窗口间显示空白，便于阅读\r\nset fillchars=vert:\\ ,stl:\\ ,stlnc:\\\r\n" Enable syntax hl\r\nsyntax enable\r\n" 高亮显示匹配的括号\r\nset showmatch\r\n" 匹配括号高亮的时间（单位是十分之一秒）\r\nset matchtime=5\r\n" 在搜索的时候忽略大小写\r\nset ignorecase smartcase\r\n" 不要高亮被搜索的句子（phrases）\r\n set nohlsearch\r\n" 高亮搜索关键字\r\nset hlsearch\r\n" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）\r\nset incsearch\r\n" :set list 显示内容\r\nset listchars=tab:\\|\\ ,trail:.,extends:>,precedes:<,eol:$\r\n" 光标移动到buffer的顶部和底部时保持3行距离\r\nset scrolloff=3\r\n" 不要闪烁\r\n" set novisualbell\r\n" 总是显示状态行\r\nset laststatus=2\r\n" 自动格式化\r\n" set formatoptions=tcrqn\r\n" 正确处理中文字符的折行和拼接\r\nset formatoptions+=mM\r\n" set formatoptions+=tcroqn2mBM1\r\n" 继承前一行的缩进方式，特别适用于多行注释\r\nset autoindent\r\n" 为C程序提供自动缩进\r\nset smartindent\r\n" 使用C样式的缩进\r\nset cindent\r\n" 制表符为4\r\nset tabstop=4\r\n" 统一缩进为4\r\nset softtabstop=4\r\nset shiftwidth=4\r\n" 不要用空格代替制表符\r\nset noexpandtab\r\n" 不要换行\r\n" set nowrap\r\n" 在行和段开始处使用制表符\r\nset smarttab\r\n"" 断行设置\r\n" 不要在单词中间断行\r\nset lbr\r\n" }}}\r\n\r\n"=================================\r\n"新建个窗口<F4>竖直新建\r\n"map <F4> :vne <cr>\r\n"横着新建\r\n"map <F5> :sp <cr>\r\n\r\n"=================================\r\n"在标签页中切换，\r\n"<F5>为上一个标签页\r\n:map <F5> :tabprevious<CR>\r\n:imap <F5> <ESC>:tabprevious<CR>i\r\n"<F6>为下一个标签页\r\n:map <F6> :tabnext<CR>\r\n:imap <F6> <ESC>:tabnext<CR>i\r\n\r\n"=================================\r\n"插件vimim相关配置\r\n:let g:vimim_static_input_style=0\r\nset nocompatible\r\nset guifontwide=NSimSun-18030,NSimSun\r\nset ambiwidth=double\r\nset noloadplugins\r\nruntime! plugin/vimim.vim\r\n"=================================\r\n"进行版权声明的设置\r\n"添加或更新头\r\n"=================================\r\nmap <F2> :call TitleDet()<cr>''s\r\nfunction AddTitle()\r\n    call append(0,"/*==================================================================")\r\n    call append(1,"#")\r\n    call append(2,"# Author: lidashuang lidashuang@gmail.com")\r\n    call append(3,"#")\r\n    call append(4,"# QQ : 524778989")\r\n    call append(5,"#")\r\n    call append(6,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))\r\n    call append(7,"#")\r\n    call append(8,"# Filename: ".expand("%:t"))\r\n    call append(9,"#")\r\n    call append(10,"# Description: ")\r\n    call append(11,"#")\r\n    call append(12,"==================================================================*/")\r\n    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None\r\nendf\r\n"更新最近修改时间和文件名\r\nfunction UpdateTitle()\r\n    normal m''\r\n    execute ''/# *Last modified:/s@:.*$@\\=strftime(":\\t%Y-%m-%d %H:%M")@''\r\n    normal ''''\r\n    normal mk\r\n    execute ''/# *Filename:/s@:.*$@\\=":\\t\\t".expand("%:t")@''\r\n    execute "noh"\r\n    normal ''k\r\n    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None\r\nendfunction\r\n"判断前10行代码里面，是否有Last modified这个单词，\r\n"如果没有的话，代表没有添加过作者信息，需要新添加；\r\n"如果有的话，那么只需要更新即可\r\nfunction TitleDet()\r\n    let n=1\r\n    "默认为添加\r\n    while n < 10\r\n        let line = getline(n)\r\n        if line =~ ''^\\#\\s*\\S*Last\\smodified:\\S*.*$''\r\n            call UpdateTitle()\r\n            return\r\n        endif\r\n        let n = n + 1\r\n    endwhile\r\n    call AddTitle()\r\nendfunction\r\n"=================================\r\n"启动全屏<F11>键\r\n"=================================\r\nmap <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> \r\n"win下启动全屏 \r\nif has(''gui_running'') && has("win32")\r\n    au GUIEnter * simalt ~x\r\nendif\r\n</pre>\r\n', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(23, 'linux 下解压大于2g的zip文件', '23', 1294840271, 1295356630, '在rhel5下用zip解压一个28g的zip文件，\r\n<pre>\r\nArchive:  rhel5_5.zip\r\n  End-of-central-directory signature not found.  Either this file is not\r\n  a zipfile, or it constitutes one disk of a multi-part archive.  In the\r\n  latter case the central directory and zipfile comment will be found on\r\n  the last disk(s) of this archive.\r\nunzip:  cannot find zipfile directory in one of rhel5_5.zip or\r\n        rhel5_5.zip.zip, and cannot find rhel5_5.zip.ZIP, period.\r\n</pre>\r\n查了一下，由于C库中long类型数据所能表示的文件偏移在32位机子上只能有2G。\r\n所以要用7zip。\r\n下载p7zip: 地址\r\n<code>http://sourceforge.net/projects/p7zip/files/p7zip/</code>\r\n解压该文件 \r\n执行 ./install.sh\r\n安装完之后，解压。\r\n解压命令\r\n<code>7za x rhel5_5.zip </code>\r\n7zip是一个非常强大的工具，可以解压缩很多linux的文档格式，还有自己的格式，压缩率很高。\r\n安装完，会安装7za这个程序，通过这个实用工具对文件进行解压缩。在linux，7zip可以解压zip . tar.\r\ntar.bz2 等格式。\r\n在linux下的常用命令\r\n<pre>\r\na  在压缩包里添加文件\r\nd 从压缩里删除文件\r\nx 解压文件\r\nl 列出压缩包里的文件\r\n</pre>\r\n', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(25, '几个常用的shell快捷键', '25', 1295845572, 1297144475, '<pre>\r\nCtrl + a 可以快速切换到命令行开始处 \r\nCtrl + e 切换到命令行末尾 \r\nCtrl + r 在历史命令中查找 \r\nCtrl + u 删除光标所在位置之前的所有字符 \r\nCtrl + k 删除光标所在位置之后的所有字符 \r\nctrl + w 删除光标之前的一个单词 \r\nCtrl + d 结束当前输入、退出shell \r\nctrl + s 可用来停留在当前屏\r\nctrl + q 恢复刷屏 \r\nctrl + l 清屏\r\n</pre>', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(30, 'lynx.png', 'lynx-png', 1299164572, 1299164572, 'a:5:{s:4:"name";s:8:"lynx.png";s:4:"path";s:35:"/usr/uploads/2011/03/3500068335.png";s:4:"size";i:220055;s:4:"type";s:3:"png";s:4:"mime";s:9:"image/png";}', 1, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 31),
(31, '试了下lynx', '31', 1299164586, 1309323565, '<h4>终端下的浏览器，没广告，没图片，只是文字。</h4>有图\r\n\r\n <a href="http://blog.osser.me/index.php/attachment/30/" title="lynx.png"><img src="http://blog.osser.me/usr/uploads/2011/03/3500068335.png" alt="lynx.png" /></a>\r\n', 0, 1, NULL, 'post', 'publish', NULL, 2, '1', '1', '1', 0),
(32, 'linux下刻录镜像', '32', 1299911793, 1300136920, '在命令行下可以用cdrecord刻录光盘镜像，今天刻录了张debian的光盘，用以下的命令\r\n<pre>\r\n cdrecord -v speed=4 dev=1,0,0 /data/iso/debian-6.0.0-i386-CD-1.iso\r\n</pre>\r\n\r\ndev=1,0,0这个参数可以用\r\n<pre>\r\ndrecord -scanbus\r\n这个命令得到，\r\n</pre>\r\n\r\n<pre>\r\nlds@lidashuang:~$ cdrecord -scanbus\r\nscsibus1:\r\n	1,0,0	100) ''Optiarc '' ''DVD RW AD-7700S '' ''A815'' Removable CD-ROM\r\n	1,1,0	101) *\r\n	1,2,0	102) *\r\n	1,3,0	103) *\r\n	1,4,0	104) *\r\n	1,5,0	105) *\r\n	1,6,0	106) *\r\n	1,7,0	107) *\r\n</pre>\r\n一些参数解释\r\n<pre>\r\n\r\n-v 指详细方式\r\n-eject 在完成写任务后弹出盘\r\n-speed 指定写速度（8）\r\n-dev 是从 cdrecord -scanbus 获得的设备号（0,1,0）\r\n最后一个是所烧录的映像的名称（test.iso）\r\n</pre>\r\n参考<a href="http://www.ibm.com/developerworks/cn/linux/l-cdburn/index.html" target="_blank">在 Linux 上烧录 CD</a>', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(75, 'Pacman 升级错误 :: madwifi: requires kernel26<2.6.39', '75', 1309008844, 1309008844, '<pre>\r\nerror: failed to prepare transaction (could not satisfy dependencies) :: madwifi: requires kernel26<2.6.39\r\n</pre>\r\n解决方法\r\n<pre>\r\n[lds@lds ~]$sudo pacman -R madwifi\r\n[lds@lds ~]$sudo pacman -Syu\r\n\r\n</pre>', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(34, 'Screenshot-2.png', 'Screenshot-2-png', 1299937102, 1299937102, 'a:5:{s:4:"name";s:16:"Screenshot-2.png";s:4:"path";s:35:"/usr/uploads/2011/03/3090679777.png";s:4:"size";i:45200;s:4:"type";s:3:"png";s:4:"mime";s:9:"image/png";}', 2, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 36),
(35, 'Screenshot-1.png', 'Screenshot-1-png', 1299937156, 1299937156, 'a:5:{s:4:"name";s:16:"Screenshot-1.png";s:4:"path";s:35:"/usr/uploads/2011/03/2356765646.png";s:4:"size";i:38579;s:4:"type";s:3:"png";s:4:"mime";s:9:"image/png";}', 1, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 36),
(36, 'fedora13升级到fedora14', '36', 1299937178, 1299937239, '今天把fedora 13 升级到fedora14了。以下是升级过程,记录一下。\r\n安装更新包\r\n<pre>\r\nyum update \r\n</pre>\r\n清除缓存\r\n<pre>\r\nyum clean all \r\n</pre>\r\n安装预升级\r\n<pre>\r\nyum install preupgrade\r\n</pre>\r\n最后\r\n<pre>\r\npreupgrade  \r\n</pre>\r\n开始升级\r\n<a href="http://osser.me/index.php/attachment/34/" title="Screenshot-2.png"><img src="http://osser.me/usr/uploads/2011/03/3090679777.png" alt="Screenshot-2.png" /></a>\r\n升级完成\r\n<a href="http://osser.me/index.php/attachment/35/" title="Screenshot-1.png"><img src="http://osser.me/usr/uploads/2011/03/2356765646.png" alt="Screenshot-1.png" /></a>\r\n', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(37, 'nmon1.jpg', 'nmon1-jpg', 1300138458, 1300138458, 'a:5:{s:4:"name";s:9:"nmon1.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/2768556865.jpg";s:4:"size";i:46708;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 2, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 38),
(38, '服务器性能监控', '38', 1300138472, 1300139013, '   最近几天一直找web服务器运行慢的原因，找到了nmon。Nmon 是一款工作在服务器本地的实时监控软件，比top命令更强大，可以监控内核状态、系统负载、虚拟内存、NFS 等。还可以用 Nmon 来录制数据，并通过另一个分析工具 Nmon Analyser 生成监控统计报告。\r\n    使用比较方便，不用安装，直接下载，解压就可以用\r\n<pre>\r\n[root@www nmon]# wget http://nmon.sourceforge.net/docs/nmon_x86_12a.zip\r\n[root@www nmon]# unzip nmon_x86_12a.zip \r\n[root@www nmon]# chmod u+x nmon_power_rhel55_14f\r\n</pre>\r\n<a href="http://osser.me/index.php/attachment/37/" title="nmon1.jpg"><img src="http://osser.me/usr/uploads/2011/03/2768556865.jpg" alt="nmon1.jpg" /></a>\r\n\r\n<a href="http://osser.me/index.php/attachment/39/" title="nmon2.jpg"><img src="http://osser.me/usr/uploads/2011/03/505158090.jpg" alt="nmon2.jpg" /></a>\r\n相关命令使用可以查看帮助。\r\n比如\r\n<pre>\r\nc 可以查看cpu状态\r\n-c取消查看\r\nk 可以查看内核状态\r\n-k取消\r\nh帮助 \r\n</pre>     \r\n\r\n', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(39, 'nmon2.jpg', 'nmon2-jpg', 1300138990, 1300138990, 'a:5:{s:4:"name";s:9:"nmon2.jpg";s:4:"path";s:34:"/usr/uploads/2011/03/505158090.jpg";s:4:"size";i:67296;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 1, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 38),
(94, 'cpio解压缩', '94', 1314351705, 1314351705, '<p style="margin-top: 5px; margin-right: auto; margin-bottom: 5px; margin-left: auto; text-indent: 0px; padding: 0px;">下载了 10201_database_linux_x86_64.cpio.gz 文件，解压方法如下：</p>\r\n<p id="" style="margin-top: 5px; margin-right: auto; margin-bottom: 5px; margin-left: auto; text-indent: 0px; padding: 0px;">1. gunzip 10201_database_linux_x86_64.cpio.gz<br style="padding: 0px; margin: 0px;" />得到10201_database_linux_x86_64.cpio文件</p>\r\n<p id="aeaoofnhgocdbnbeljkmbjdmhbcokfdb-mousedown" style="margin-top: 5px; margin-right: auto; margin-bottom: 5px; margin-left: auto; text-indent: 0px; padding: 0px;">2. cpio -idmv &lt;10201_database_linux_x86_64.cpio<br style="padding: 0px; margin: 0px;" />即可在当前目录下解压出来</p>', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(92, '右键添加 open in terminal ', '92', 1312081112, 1312118398, '<div style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;"><strong>安装</strong><strong>nautilus-open-terminal &nbsp; 这个软件包就可以了</strong></div>\r\n<div style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;"><strong>sudo pacman -S nautilus-open-terminal &nbsp;&nbsp;<br />&nbsp;<a title="2011-07-31-211622_426x358_scrot.png" href="http://blog.osser.me/attachment/93/"><img src="http://blog.osser.me/usr/uploads/2011/07/1662679649.png" alt="2011-07-31-211622_426x358_scrot.png" /></a></strong></div>', 0, 1, NULL, 'post', 'publish', NULL, 1, '1', '1', '1', 0),
(41, 'Linux常用系统信息查看命令', '41', 1300486660, 1300486783, '系统\r\n<pre>\r\n# uname -a               # 查看内核/操作系统/CPU信息\r\n# head -n 1 /etc/issue   # 查看操作系统版本\r\n# cat /proc/cpuinfo      # 查看CPU信息\r\n# hostname               # 查看计算机名\r\n# lspci -tv              # 列出所有PCI设备\r\n# lsusb -tv              # 列出所有USB设备\r\n# lsmod                  # 列出加载的内核模块\r\n# env                    # 查看环境变量\r\n</pre>\r\n资源\r\n<pre>\r\n# free -m                # 查看内存使用量和交换区使用量\r\n# df -h                  # 查看各分区使用情况\r\n# du -sh <目录名>        # 查看指定目录的大小\r\n# grep MemTotal /proc/meminfo   # 查看内存总量\r\n# grep MemFree /proc/meminfo    # 查看空闲内存量\r\n# uptime                 # 查看系统运行时间、用户数、负载\r\n# cat /proc/loadavg      # 查看系统负载\r\n</pre>\r\n磁盘和分区\r\n<pre>\r\n# mount | column -t      # 查看挂接的分区状态\r\n# fdisk -l               # 查看所有分区\r\n# swapon -s              # 查看所有交换分区\r\n# hdparm -i /dev/hda     # 查看磁盘参数(仅适用于IDE设备)\r\n# dmesg | grep IDE       # 查看启动时IDE设备检测状况\r\n</pre>\r\n网络\r\n<pre>\r\n# ifconfig               # 查看所有网络接口的属性\r\n# iptables -L            # 查看防火墙设置\r\n# route -n               # 查看路由表\r\n# netstat -lntp          # 查看所有监听端口\r\n# netstat -antp          # 查看所有已经建立的连接\r\n# netstat -s             # 查看网络统计信息\r\n</pre>\r\n进程\r\n<pre>\r\n# ps -ef                 # 查看所有进程\r\n# top                    # 实时显示进程状态\r\n</pre>\r\n用户\r\n<pre>\r\n# w                      # 查看活动用户\r\n# id <用户名>            # 查看指定用户信息\r\n# last                   # 查看用户登录日志\r\n# cut -d: -f1 /etc/passwd   # 查看系统所有用户\r\n# cut -d: -f1 /etc/group    # 查看系统所有组\r\n# crontab -l             # 查看当前用户的计划任务\r\n</pre>\r\n服务\r\n<pre>\r\n# chkconfig --list       # 列出所有系统服务\r\n# chkconfig --list | grep on    # 列出所有启动的系统服务\r\n</pre>\r\n程序\r\n<pre>\r\n# rpm -qa                   # 查看所有安装的软件包\r\n﻿# rpm -qa|grep vim       # 查看安装的某个软件包\r\n</pre>\r\n取自<a href="http://www.ha97.com/book/unixtoolbox_zh_CN.html" target="_blank">UNIX TOOLBOX - 中文版</a>', 0, 1, NULL, 'post', 'publish', NULL, 1, '1', '1', '1', 0),
(42, 'code.jpg', 'code-jpg', 1300749856, 1300749856, 'a:5:{s:4:"name";s:8:"code.jpg";s:4:"path";s:33:"/usr/uploads/2011/03/60710368.jpg";s:4:"size";i:27075;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 21, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(43, '2.jpg', '2-jpg', 1300750329, 1300750329, 'a:5:{s:4:"name";s:5:"2.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/3782097427.jpg";s:4:"size";i:19801;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 20, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(44, '3.jpg', '3-jpg', 1300750330, 1300750330, 'a:5:{s:4:"name";s:5:"3.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/3945881164.jpg";s:4:"size";i:50220;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 19, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(45, '4.jpg', '4-jpg', 1300750332, 1300750332, 'a:5:{s:4:"name";s:5:"4.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/1614484414.jpg";s:4:"size";i:50376;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 18, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(46, '5.jpg', '5-jpg', 1300750333, 1300750333, 'a:5:{s:4:"name";s:5:"5.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/3149116482.jpg";s:4:"size";i:31587;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 17, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(47, '6.jpg', '6-jpg', 1300750348, 1300750348, 'a:5:{s:4:"name";s:5:"6.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/2007674001.jpg";s:4:"size";i:20089;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 15, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(48, '7.jpg', '7-jpg', 1300750348, 1300750348, 'a:5:{s:4:"name";s:5:"7.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/1041682431.jpg";s:4:"size";i:8682;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 16, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(49, '8.jpg', '8-jpg', 1300750349, 1300750349, 'a:5:{s:4:"name";s:5:"8.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/1409910637.jpg";s:4:"size";i:44637;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 14, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(50, '9.jpg', '9-jpg', 1300750375, 1300750375, 'a:5:{s:4:"name";s:5:"9.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/2223166385.jpg";s:4:"size";i:33720;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 13, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(51, '10.jpg', '10-jpg', 1300750386, 1300750386, 'a:5:{s:4:"name";s:6:"10.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/2388852908.jpg";s:4:"size";i:34011;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 12, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(52, '11.jpg', '11-jpg', 1300750387, 1300750387, 'a:5:{s:4:"name";s:6:"11.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/1008027534.jpg";s:4:"size";i:10125;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 11, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(53, '12.jpg', '12-jpg', 1300750388, 1300750388, 'a:5:{s:4:"name";s:6:"12.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/1883870399.jpg";s:4:"size";i:8940;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 10, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(54, '13.jpg', '13-jpg', 1300750405, 1300750405, 'a:5:{s:4:"name";s:6:"13.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/4149158423.jpg";s:4:"size";i:9974;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 9, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(55, '14.jpg', '14-jpg', 1300750413, 1300750413, 'a:5:{s:4:"name";s:6:"14.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/3178094397.jpg";s:4:"size";i:7561;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 8, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(56, '15.jpg', '15-jpg', 1300750414, 1300750414, 'a:5:{s:4:"name";s:6:"15.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/1057426525.jpg";s:4:"size";i:22507;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 7, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(57, '16.jpg', '16-jpg', 1300750430, 1300750430, 'a:5:{s:4:"name";s:6:"16.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/4085089309.jpg";s:4:"size";i:14532;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 6, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(58, '17.jpg', '17-jpg', 1300750444, 1300750444, 'a:5:{s:4:"name";s:6:"17.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/1017009818.jpg";s:4:"size";i:14072;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 5, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(59, '18.jpg', '18-jpg', 1300750453, 1300750453, 'a:5:{s:4:"name";s:6:"18.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/1789975008.jpg";s:4:"size";i:26070;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 4, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(61, '19.jpg', '19-jpg', 1300750481, 1300750481, 'a:5:{s:4:"name";s:6:"19.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/2095929827.jpg";s:4:"size";i:5522;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 3, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(62, '20.jpg', '20-jpg', 1300750487, 1300750487, 'a:5:{s:4:"name";s:6:"20.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/1597103100.jpg";s:4:"size";i:19511;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 2, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(63, '21.jpg', '21-jpg', 1300750494, 1300750494, 'a:5:{s:4:"name";s:6:"21.jpg";s:4:"path";s:35:"/usr/uploads/2011/03/2517664300.jpg";s:4:"size";i:22042;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 1, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 64),
(64, '程序员最应该读的图书（中译版）', '64', 1300750860, 1300752833, '来自StackOverflow上的投票，stackoverflow 是著名的计算机专业相关的问答社区。调查原文地址  \r\n\r\nhttp://stackoverflow.com/questions/1711/what-is-the-single-most-influential-book-every-programmer-should-read \r\n取前20名。找了下中译本，\r\n自己只有其中的两本，要多看书了。\r\n\r\n1. 代码大全（第2版）\r\n作者 : [美] 史蒂夫·迈克康奈尔\r\n出版社 : 电子工业出版社\r\n<a href="http://blog.osser.me/index.php/attachment/42/" title="code.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/60710368.jpg" alt="code.jpg" width="250px" height="300px" /></a>\r\n	\r\n 2. 程序员修炼之道\r\n作者 : Andrew Hunt/David Thomas\r\n出版社 : 电子工业出版社\r\n<a href="http://blog.osser.me/index.php/attachment/43/" title="2.jpg" ><img src="http://blog.osser.me/usr/uploads/2011/03/3782097427.jpg" alt="2.jpg" width="250px" height="300px" /></a>\r\n3. 计算机程序的构造和解释(原书第2版)\r\n作者 : Harold Abelson/Gerald Jay Sussman/Julie Sussman\r\n出版社 : 机械工业出版社\r\n<a href="http://blog.osser.me/index.php/attachment/44/" title="3.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/3945881164.jpg" alt="3.jpg" width="250px" height="300px" /></a>\r\n4. C程序设计语言（第2版・新版）\r\n作者 : 克尼汉\r\n出版社 : 机械工业出版社\r\n<a href="http://blog.osser.me/index.php/attachment/45/" title="4.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/1614484414.jpg" alt="4.jpg" width="250px" height="300px" /></a>\r\n5. 算法导论\r\n作者 : [美] Thomas H.Cormen/Charles E.Leiserson/Ronald L.Rivest/Clifford Stein\r\n出版社 : 机械工业出版社\r\n\r\n<a href="http://blog.osser.me/index.php/attachment/46/" title="5.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/3149116482.jpg" alt="5.jpg" width="250px" height="300px" /></a>\r\n	\r\n 6. 重构：改善既有代码的设计/图灵程序设计丛书\r\n作者 : Martin Fowler\r\n出版社 : 人民邮电出版社\r\n\r\n<a href="http://blog.osser.me/index.php/attachment/47/" title="6.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/2007674001.jpg" alt="6.jpg" width="250px" height="300px" /></a>\r\n 7. 人月神话\r\n作者 : （美）布鲁克斯　著，汪颖　译\r\n出版社 : 清华大学出版社\r\n<a href="http://blog.osser.me/index.php/attachment/48/" title="7.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/1041682431.jpg" alt="7.jpg" width="250px" height="300px" /></a>\r\n 8. 设计模式\r\n作者 : [美] Erich Gamma/Richard Helm/Ralph Johnson/John Vlissides\r\n出版社 : 机械工业出版社\r\n<a href="http://blog.osser.me/index.php/attachment/49/" title="8.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/1409910637.jpg" alt="8.jpg" width="250px" height="300px" /></a>\r\n 9. 计算机程序设计艺术（第1卷）\r\n作者 : [美] Donald E. Knuth\r\n出版社 : 清华大学出版社\r\n<a href="http://blog.osser.me/index.php/attachment/50/" title="9.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/2223166385.jpg" alt="9.jpg" width="250px" height="300px"/></a>\r\n 10. 编译原理\r\n作者 : Alfred V. Aho/Monica S.Lam/Ravi Sethi/Jeffrey D. Ullman\r\n出版社 : 机械工业出版社\r\n<a href="http://blog.osser.me/index.php/attachment/51/" title="10.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/2388852908.jpg" alt="10.jpg" width="250px" height="300px" /></a>\r\n11. Head First 设计模式（中文版）\r\n作者 : （美）弗里曼（Freeman，E.）　等著，Oreily Taiwan公司　译，UML China　改编\r\n出版社 : 中国电力出版社\r\n<a href="http://blog.osser.me/index.php/attachment/52/" title="11.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/1008027534.jpg" alt="11.jpg"width="250px" height="300px" /></a>\r\n 12. 哥德尔 艾舍尔 巴赫\r\n作者 : [美]侯世达/Douglas Hofstadter\r\n出版社 : 商务印书馆\r\n<a href="http://blog.osser.me/index.php/attachment/53/" title="12.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/1883870399.jpg" alt="12.jpg" width="250px" height="300px"/></a>\r\n 13. Effective C++改善程序与设计的55个具体做法（中文第三版）\r\n作者 : Scott Meyers\r\n出版社 : 电子工业出版社\r\n<a href="http://blog.osser.me/index.php/attachment/54/" title="13.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/4149158423.jpg" alt="13.jpg" width="250px" height="300px"/></a>\r\n 14. More Effective C++中文版\r\n作者 : （美）迈耶斯 著，侯捷 译\r\n出版社 : 中国电力出版社\r\n<a href="http://blog.osser.me/index.php/attachment/55/" title="14.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/3178094397.jpg" alt="14.jpg" width="250px" height="300px"/></a>\r\n 15. 编程珠玑(第2版)\r\n作者 : Jon Bentley\r\n出版社 : 人民邮电出版社\r\n<a href="http://blog.osser.me/index.php/attachment/56/" title="15.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/1057426525.jpg" alt="15.jpg" width="250px" height="300px" /></a>\r\n 16. 万里任禅游\r\n作者 : (美)罗伯特·M·波西格\r\n出版社 : 重庆出版社\r\n<a href="http://blog.osser.me/index.php/attachment/57/" title="16.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/4085089309.jpg" alt="16.jpg" width="250px" height="300px"/></a>\r\n 17. 编码\r\n作者 : [美] 佩措尔德 (Charles Petzold)\r\n出版社 : 电子工业出版社\r\n<a href="http://blog.osser.me/index.php/attachment/58/" title="17.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/1017009818.jpg" alt="17.jpg" width="250px" height="300px"/></a>\r\n 18. 修改代码的艺术\r\n作者 : Michael Feathers\r\n出版社 : 人民邮电出版社\r\n<a href="http://blog.osser.me/index.php/attachment/59/" title="18.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/1789975008.jpg" alt="18.jpg" width="250px" height="300px" /></a>\r\n 19. 人件(第2版)\r\n作者 : Tom DeMarco/Timothy Lister\r\n出版社 : 清华大学出版社\r\n<a href="http://blog.osser.me/index.php/attachment/61/" title="19.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/2095929827.jpg" alt="19.jpg" width="250px" height="300px" /></a>\r\n 20. 代码整洁之道\r\n作者 : （美）马丁 著，韩磊 译\r\n出版社 : 人民邮电出版社\r\n<a href="http://blog.osser.me/index.php/attachment/62/" title="20.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/1597103100.jpg" alt="20.jpg" width="250px" height="300px"/></a>\r\n 21. 编程人生\r\n作者 : Peter Seibel\r\n出版社 : 人民邮电出版社\r\n\r\n <a href="http://blog.osser.me/index.php/attachment/63/" title="21.jpg"><img src="http://blog.osser.me/usr/uploads/2011/03/2517664300.jpg" alt="21.jpg" width="250px" height="300px" /></a>\r\n\r\n', 0, 1, NULL, 'post', 'publish', NULL, 1, '1', '1', '1', 0),
(66, 'lftp 常用命令', '66', 1301841405, 1301841405, '所有的lftp终端内的命令，都可以用\r\n<pre>\r\nlftp :~> help COMMAND_NAME\r\n</pre>\r\n的方式来查看帮助信息。\r\n另外，lftp支持tab自动补全，记不得命令时，使用tab键，就可以看到可能的选项。\r\n\r\n1丶登录ftp\r\n<pre>\r\n$ lftp username:password@ftp_site:port\r\n</pre>\r\n也可以先不带用户名登录，然后在lftp终端下用login命令来用指定账号登录，密码不显示。\r\n或者先不带任何参数运行lftp，然后在lftp终端下用open命令来登录ftp服务器，详情请参考帮助。\r\n\r\n2丶查看文件与改变目录\r\n<pre>\r\nlftp username@ftp.example.com:/> ls\r\nlftp username@ftp.example.com:/> cd FTP_DIR\r\n</pre>\r\n在lftp终端中，前面带一个l的命令例如lcd，指的是local，就是在本机的操作。而对应的没有这个l的，都是对ftp服务器的操作。\r\n还有就是要执行本地console命令，也可以用前面带一个!的方式。这样，配合起来，远程ftp服务器、本地的操作都很方便。\r\n例如，查看ftp上所有的以mp3为扩展名的文件：\r\n<pre>\r\nlftp username@ftp.example.com:/> find . -name "*.mp3"\r\n</pre>\r\n3丶下载\r\nget当然是可以的，但是还可以：\r\n<pre>\r\nlftp username@ftp.example.com:/> mget -c *.pdf\r\n</pre>\r\n它表示把所有的pdf文件以允许断点续传的方式下载。m代表multi\r\n再看一个例子\r\n<pre>\r\nlftp username@ftp.example.com:/> mirror FTP_DIR\r\n</pre>\r\n这表示将FTP_DIR目录整个的下载下来，子目录也会自动复制，这可以理解为镜像目录。\r\n还是例子\r\n<pre>\r\nlftp username@ftp.example.com:/> pget -c -n 10 FTP_FILE\r\n</pre>\r\n表示最多10个线程以允许断点续传的方式下载FTP_FILE，c表示断点续传\r\n线程可以通过设置pget:default-n的值而使用默认值。\r\n\r\n4丶上传\r\n相应的有put，mput，mirror，都是对上传的操作命令，和下载类似。\r\n看下面这个例子\r\n<pre>\r\nlftp username@ftp.example.com:/> mirror -R LOCAL_DIR\r\n</pre>\r\n将本地目录以迭代（包括子目录）的方式上传到ftp服务器，即为反向镜像。\r\n\r\n5丶模式设置\r\n<pre>\r\nlftp username@ftp.example.com:/> set ftp:charset utf8\r\n</pre>\r\n远程ftp服务器使用的字符编码为utf8，所以要在这里这样设置。\r\n<pre>\r\nlftp username@ftp.example.com:/> set file:charset utf8\r\n</pre>\r\n本地环境的字符编码为utf8,因此这里也要这样设置。\r\n以上两项若设置不当，则会出现乱码。\r\n其实不管是哪种服务端软件哪一种客户端软件，出现乱码均为以上两项未设置妥当。\r\n<pre>\r\nlftp username@ftp.example.com:/> set ftp:passive-mode 1\r\n</pre>\r\n使用被动模式登录，有些ftp服务器要求必须使用被动模式或者主动模式才可以登录，这个开关就是设置这个的。0代表不用被动模式。\r\n\r\n6丶书签\r\n其实命令行也可以有书签，在lftp终端提示符下：\r\n<pre>\r\nlftp username@ftp.example.com:/> bookmark add FTP_SERVER_NAME\r\n</pre>\r\n按以上命令就可以把当前正在浏览的ftp服务器用FTP_SERVER_NAME作为标签储存起来。以后在console下，直接\r\n<pre>\r\n$ lftp FTP_SERVER_NAME\r\n</pre>\r\n就可以自动填好用户名，密码，进入对应的目录了。\r\n<pre>\r\nlftp username@ftp.example.com:/> bookmark edit\r\n</pre>\r\n以上命令会调用编辑器手动修改书签。当然，也可以看到，这个书签其实就是个简单的文本文件。密码，用户名都可以看到。\r\n\r\n7丶后台任务\r\n这算是lftp最大的特色，可以理解为lftp内置了一个微型的shell\r\n\r\n＊添加后台任务\r\n缺省情况下，按 Ctrl+z,正在执行的任务将转为后台执行\r\n也可以在命令行末尾加&符号使任务在后台执行。\r\n<pre>\r\nlftp username@ftp.example.com:/> queue get textfile.txt\r\n</pre>\r\n表示向后台任务中添加一个新的任务\r\n<pre>\r\nlftp username@ftp.example.com:/> queue start\r\n</pre>\r\n要执行完这句才开始的，不然可就一直是任务队列而已。\r\n\r\n*查看后台任务\r\n<pre>\r\nlftp username@ftp.example.com:/> jobs -v\r\n</pre>\r\n这将显示后台所有的任务，包括任务状态。\r\n\r\n*删除后台任务\r\n<pre>\r\nlftp username@ftp.example.com:/> wait 3\r\n</pre>\r\n这将把后台任务当中的3号转为当前执行的状态，并从后台删除这个任务。\r\n有一点需要说明一下，fg命令与wait命令等同。\r\n\r\n但你要慎重执行下面这个语句，它将清空整个后台任务队列。\r\n<pre>\r\nlftp username@ftp.example.com:/> kill all\r\n</pre>', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(67, 'Screenshot-1.png', 'Screenshot-1-png-1', 1302631043, 1302631043, 'a:5:{s:4:"name";s:16:"Screenshot-1.png";s:4:"path";s:35:"/usr/uploads/2011/04/1839843717.png";s:4:"size";i:45419;s:4:"type";s:3:"png";s:4:"mime";s:9:"image/png";}', 1, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 68),
(68, 'vim 目录文件浏览插件', '68', 1302631148, 1309323522, '找了一款vim的文件浏览插件NERD tree\r\n <a href="http://blog.osser.me/index.php/attachment/67/" title="Screenshot-1.png"><img src="http://blog.osser.me/usr/uploads/2011/04/1839843717.png" alt="Screenshot-1.png" /></a>\r\n下载地址\r\nhttp://www.vim.org/scripts/script.php?script_id=1658\r\n\r\n放到.vim文件下就安装好了。\r\n常用命令\r\n<pre>\r\no        打开关闭文件或者目录\r\n \r\nt        在标签页中打开\r\n \r\nT        在后台标签页中打开\r\n \r\n!        执行此文件\r\n \r\np        到上层目录\r\n \r\nP        到根目录\r\n \r\nK        到第一个节点\r\n \r\nJ        到最后一个节点\r\n \r\nu        打开上层目录\r\n \r\nm        显示文件系统菜单（添加、删除、移动操作）\r\n \r\n?        帮助\r\n \r\nq        关闭\r\n \r\nr        刷新窗口\r\n \r\nctrl + ww 在窗口之间切换，最有一个w可换成h, j, k, l\r\n</pre>', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(69, 'gnome 3试用', '69', 1302708085, 1309323500, '没事，在自己的笔记本上安装了gnome 3。系统是ubuntu 10.10 ，\r\n玩了一下，感觉方便了不少。虚拟桌面好像没了，没找到在哪。\r\n还算稳定，没死机，不知道为什么chrome和火狐不能切换。\r\n<pre>\r\nUbuntu 10.10安装Gnome3方法：\r\n\r\nsudo add-apt-repository ppa:ubuntu-desktop/gnome3-builds\r\nsudo apt-get update\r\nsudo apt-get install gnome3-session\r\n</pre>\r\n <a href="http://blog.osser.me/index.php/attachment/70/" title="Screenshot-3.png"><img src="http://blog.osser.me/usr/uploads/2011/04/3979855558.png" alt="Screenshot-3.png" /></a>', 0, 1, NULL, 'post', 'publish', NULL, 2, '1', '1', '1', 0),
(70, 'Screenshot-3.png', 'Screenshot-3-png', 1302708338, 1302708338, 'a:5:{s:4:"name";s:16:"Screenshot-3.png";s:4:"path";s:35:"/usr/uploads/2011/04/3979855558.png";s:4:"size";i:313163;s:4:"type";s:3:"png";s:4:"mime";s:9:"image/png";}', 1, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 69),
(71, 'haskell ', '71', 1306026393, 1309706497, '最近对函数式编程语言比较感兴趣。开始学习haskell， 第一步，搭建环境 haskell编译器是GHC和hugs， archlinux 下安装GHC\r\n<pre>sudo pacman -S  ghc \r\n</pre>\r\n打开终端，输入 ghci,进入haskell的环境\r\n<pre>[lds@lds ~]$ ghci \r\nGHCi, version 7.0.2: http://www.haskell.org/ghc/  :? for help\r\nLoading package ghc-prim ... linking ... done.\r\nLoading package integer-gmp ... linking ... done.\r\nLoading package base ... linking ... done.\r\nLoading package ffi-1.0 ... linking ... done.\r\nPrelude&gt; \r\n</pre>\r\nok，现在就可以玩了\r\n<pre>Prelude&gt; 2+15\r\n17\r\nPrelude&gt; 3+4\r\n7\r\nPrelude&gt; 1+3\r\n4\r\nPrelude&gt; \r\n</pre>', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0);
INSERT INTO `typecho_contents` (`cid`, `title`, `slug`, `created`, `modified`, `text`, `order`, `authorId`, `template`, `type`, `status`, `password`, `commentsNum`, `allowComment`, `allowPing`, `allowFeed`, `parent`) VALUES
(74, '                     （转载）不要困在自己建造的盒子里——写给.NET程序员', '74', 1306370839, 1307462200, '来源：http://www.cnblogs.com/leoo2sk/archive/2011/02/24/dotnet-box.html\r\n\r\nCreative Commons License本文基于<a href="http://creativecommons.org/licenses/by-nc/3.0/deed.zh">署名-非商业性使用 3.0许可协议</a>发布，欢迎转载，演绎，但是必须保留本文的署名<a href="http://leoo2sk.cnblogs.com/">张洋</a>（包含链接），且不得用户商业目的。\r\n\r\n     在给这篇文章起标题的时候，我斟酌了很久，因为我个人是反对使用“.NET程序员”、 “C++程序员”或“PHP程序员”这类简单粗暴的方式为程序员做划分的。但是客观确实存在一个现象，就是很多程序员会为自己设置一个无形的界限，将自己 与某种语言或平台硬绑定到一起，例如我这里所指的“.NET程序员”。请注意这与“术业有专攻”是不同概念的，有自己专攻的平台或领域这很正常，但是有很 多人偏执地将自己与某个语言或平台紧紧捆绑，而忘记了自己首先是一名程序员，然后才使用某种语言，他们偏执于平台并陶醉于自己建立的盒子里，而不愿主动去 接触一些盒子外的事物，最终使得自己无法进步。\r\n\r\n从我个人的观点看，本文中“.NET程序员”是指具有如下特点的程序员群体：\r\n\r\n      学习、工作的技术范围均局限于.NET平台及衍生，对.NET之外的技术没有主动接触或学习的欲望。\r\n     不断学习各种.NET平台上的库或框架，如ADO.NET，ASP.NET MVC，WPF，Silverlight，WCF，WP，EF，NHibernate……\r\n    工作无法脱离Visual Studio，习惯于图形化的工作环境。\r\n    时常抱怨微软的技术更新太快，微软开发平台包办太多以至于自己身价贬值。\r\n    对面向对象、设计模式、软件架构等东西具有极大的热情，宁可花大量时间编造各种“设计模式小故事”也不愿花点时间了解一点新鲜的东西（如Unix下的IPC）。\r\n    对Java颇有微词，觉得C我根本用不到，至于PHP？它能做到的.NET都能做到，认为用Linux的大多在装逼，而Lisp、Lua、Eiffel神马的都是浮云，我管它们干什么。\r\n    认为面向对象语言就是程序设计语言的代名词，命令式编程深入骨髓，不太了解函数式语言或契约式语言是什么。\r\n    用.NET很多年了，但感觉自己没什么突破，没什么进步，成天就搞些增删改查的劳什子。\r\n    经常讨论或思考.NET或Java或C或其它语言哪个好，搞哪个更挣钱这种问题。\r\n    \r\n     如果您有超过3项符合上述特征，我想我们可以聊一聊，因为据我的观察，感觉博客园上这类朋友还是挺多的。\r\n希望我能做到旁观者清\r\n \r\n      有一个事实我想先和大家澄清一下，其实.NET只是我的业余爱好。 由于博客园主要偏重于.NET平台，且园子里的朋友对面向对象、架构之类的颇感兴趣，所以我写了很多关于.NET及架构方面的文章（如果您注意观察，会发 现我博客里这类文章正减少并趋于消失），其实相对于设计、架构这类东西，我个人更感兴趣的是具体的科学与技术，例如各种编程语言的原理、应用及实现扩展， 操作系统原理，网络编程，通信协议，算法与数据结构，数据挖掘，机器学习，分布式等等；语言方面我比较喜欢的是PHP、Python、Lisp等；而编程 方面我更推崇Unix下的编程哲学和编程方法；我爱vim胜过VS无数倍。\r\n\r\n因此，.NET和C#我一直是作为业余爱好来发展的，希望这没有让任何人觉得沮丧。很多朋友加我QQ或MSN问我关于.NET的问题，我经常答不上 来，很多人或许觉得我不近人情，但我其实是真的答不上来。例如我在博客中写过一系列关于ASP.NET MVC的文章，很多人是冲那系列文章加我的，但是其实ASP.NET MVC我只在beta版时摆弄过两个星期，然后就再也没有碰过，所以后来很多朋友问我想关问题我是真的答不上来。\r\n\r\n所以，在博客园这个以.NET和架构之类为主的社区，我算是半个旁观者吧，我看到园子里很多朋友都把自己禁锢在自己创造的盒子里，所以我希望以旁观者的身份，给这些朋友提几个建议。\r\n每半年接触并学习一门语言\r\n\r\n有许多人通常觉得只要把一门语言学会学精就行，这个想法我觉得对了一半。一个程序员应该有一门精通的语言，但是还要不断学习新的语言（当然不能太频繁），倒不是为了以防哪天万一用到这门语言，而是接触学习不同的语言会拓展程序员的视野。\r\n\r\n如果你一直用C#，试试Lisp，你会惊叹于还有这样写程序的方式，嗯？看来我得去学学Lamda演算；试试Python，你会惊讶于还有如此小巧 优美的东西；试试Lua，你会发现原来语言还能嵌入其它语言，要不要为WOW写个外挂试试？试试Eiffel，你会发现还有契约式编程这种方法，嗯？什 么？Java上有iContract，那我要不要为.NET实现一个？随着这种学习过程，你的思维自然就被拓展开了，而不是满脑子的Class、 Object、MVC、OO……\r\n\r\n其实学习语言不一定是学习没听说过的，许多您听到耳朵长茧却从来没有深入学习的“老朋友”，如C、PHP，如果您细心学下来，也会得到许多意外的收获。\r\n\r\n例如在学C的过程中，你会发现不可能脱离Unix环境而把C学好，你会接触POSIX和System V，你会主动深入学习进程、线程、信号、I/O、IPC，你会接触TCP/IP协议。你会发现要学好C还要理解计算机组成原理，你还会发现原来还有大小端这个东西。\r\n\r\n深入学习PHP，你会发现PHP远不仅仅是一个做Web的脚本语言那么简单，你会了解到它SAPI、PHP Compiler和Zend Engine的优美结构，你会发现有opcode，你会发现PHP浑身都是扩展点，你可以扩展功能，扩展Compiler和Zend Engine，甚至可以完全实现自己的编译和运行逻辑。你会了解APC是如何缓存opcode，APD是如何跟踪PHP的运行。\r\n\r\n每次学习一门语言，你会发现这不是一门语言，而是一个崭新的新大陆，里面有太多让人兴奋和新奇的东西，而如果你执意禁锢在“.NET盒子”里，你就永远不会知道这些。\r\n主动突破自己 接受更多挑战\r\n\r\n如果什么东西都是用到才学，代码都是有用才写，那我只能非常抱歉的说你还不是个程序员，而只是个代码工人。程序员应该有主动出击的意识，应该对自己未接触的领域有无限向往。幸运的是，互联网上的财富实在太多了，你应该尽其所能去接触学习未知的东西，而不要总想我学习这个东西能不能换来钱给孩子买尿布和奶粉。你可以有很多借口，但是我想说，借口想找总是有的，时间想找也总是有的，还是看自己到底要什么。不要一边躺在盒子里一边又抱怨自己没有进步。\r\n\r\n例如Google Publication， 这里有世界最优秀的Google工程师们理论和实践的总结，来读读这些伟大的论文吧，看看这个伟大的公司和一群伟大的人都干了些什么，了解一下Map Reduce是怎么回事，如果了解了你自然想去试试Hadoop，还有Bigtable和GFS，哦！太震撼了，原来存储数据也有这么多讲究，不是放硬盘 里或通过Insert插入数据库就行了。也许这些英文论文读起来很困难，但是我想一周一篇的要求并不高（我现在仍然保持着一周读两篇论文的习惯）。要知 道，最新、最严谨的东西都在论文里，如果你只是通过书本或社区学习，那么你永远不会知道今天在计算机科学与技术的领域又发生了哪些令人震撼的事情，出现了 哪些新奇的东西。\r\n\r\n不要太懒惰，你写增删改查写累了吗？Come on！有没有想过自己写一个小型的httpd？当然你需要先去学习HTTP协议（rfc2612）， 试试能不能写一个PHP的SAPI扩展令你的httpd处理PHP脚本。有没有想过自己用lex和yacc实现一个自己的小语言，也不是完全没用，也许你 已经对你的领域业务逻辑烂熟于胸，那么去实现一个自己的领域语言吧。啊！我要去学习编译原理、形式语言与自动机……咦，这东西还挺有意思的，去看看计算理 论去……如果到了这里，你已经开始接触计算机的数学本质了，而你的层次将会得到升华。\r\n\r\n学习就是这样，主动突破自己，给自己一些挑战性的任务，生活才有趣。成天困在.NET的盒子里，我们还有脸称自己为程序员吗？\r\n脱离IDE 玩玩纯文本与shell\r\n\r\n从没用过IDE的程序员可能是悲剧，但从没脱离过IDE的程序员绝对是悲剧！\r\n\r\n你有没有觉得自己越来越不像个“编程序”的而越来越像“堆程序”的。好的，即使在工作时你离不开IDE，那么业余时间让你的IDE滚蛋，等等，你改用Notepad？气死我了你！试试vim或Emacs， 体验一下用纯文本写程序，用gcc编译连接的乐趣。你会发现“yyp”比“选中一行，Ctrl+C，点击下一行起始位置，Ctrl+V”简单的多，你会发 现按一下“0”比按20次“左箭头”省事的多。等源程序多了，也许你会想去学习Makefile的写法。你会莫名其妙地发现自己更懂编译和连接过程了。\r\n\r\n相信我，用纯文本和shell写程序比用IDE酷多了，想吸引女孩子吗？你去问问你们班或你们公司最漂亮的女生，她也会这么想。重要的是，这种酷不是“装B”的酷，而是有效率的酷。什么？你已经受不了IDE了……\r\n接受更多的编程哲学与学习方式\r\n\r\n注意我是用的“接受”而不是用“改变”，你不需要改变什么，写.NET程序很好，不过你可以适当吸取一下其它领域的编程哲学与学习方式。可 以说Windows（特别是.NET）程序员和Unix程序员思考问题的方式大不相同，如果现在需要一辆汽车，Windows程序员会建立一个从冶铁到装 配的“All in one”汽车制造基地；而Unix程序员会去分别建立采矿场、冶铁厂、设计公司、材料制造厂、机械制造厂和装配厂。我不想讨论他们各自的优缺点（因为很容 易陷入无谓的宗教纷争），但是对于你来说，了解一些其它的编程哲学对你没有坏处。\r\n\r\n另外就是学习方式，例如你要学习PHP，请千万不要去书店购买各种《21天精通PHP》或《PHP编程宝典》，你应该首先打开Google，找到 PHP官网，然后去官方文档哪里寻找学习资源。网上还有各种wiki，mailing lists和社区，请不要放弃这些资源。然后同时你可以去Amazon看书评，然后小心而谨慎地选择一本相关的书籍（影印版最优，翻译版其次）。\r\n\r\n一个人想突破自己不容易，关键在于自己有没有突破的意愿。衷心希望有一天，您的脑中不再被ASP.NET，ASP.NET MVC，WCF，WPF，ADO.NET，Silverlight，EF……而占满，如果到了那一天，你会发现，咦？！我.NET的水平也大幅提升了！', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(76, 'IMG_2522.JPG', 'IMG_2522-JPG', 1309325788, 1309325788, 'a:5:{s:4:"name";s:12:"IMG_2522.JPG";s:4:"path";s:35:"/usr/uploads/2011/06/3936007188.jpg";s:4:"size";i:549211;s:4:"type";s:3:"jpg";s:4:"mime";s:10:"image/jpeg";}', 2, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 92),
(93, '2011-07-31-211622_426x358_scrot.png', '2011-07-31-211622_426x358_scrot-png', 1312118375, 1312118375, 'a:5:{s:4:"name";s:35:"2011-07-31-211622_426x358_scrot.png";s:4:"path";s:35:"/usr/uploads/2011/07/1662679649.png";s:4:"size";i:31821;s:4:"type";s:3:"png";s:4:"mime";s:9:"image/png";}', 1, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 92),
(79, 'archlinux 装五笔输入法  ', '80', 1309456363, 1309484508, '用arch以来，一直没把五笔输入法装上，今天终于ok了\r\n方法：\r\n<pre>\r\n一、安装ibus\r\n#pacman -S ibus\r\n二、安装ibus-table\r\n#pacman -S ibus-table\r\n三、安装yaourt\r\n1.添加Yaourt源至您的 /etc/pacman.conf\r\ni686架构\r\n［archlinuxfr]\r\nServer = http://repo.archlinux.fr/i686\r\nx86-64架构\r\n［archlinuxfr]\r\nServer = http://repo.archlinux.fr/x86_64\r\n同步并安装：\r\n#pacman -Syu yaourt\r\n四、安装五笔输入法\r\n#yaourt ibus-table-wubi\r\n</pre>\r\n之前用这个方法一直有各种各样的问题，今天人品好，终于装成了。估计因为是考完试了，人品', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(81, 'zsh', '81', 1309487401, 1309536920, '试用zsh，简单记下笔记\r\n修改默认shell\r\n<pre>\r\n    vim /etc/passwd\r\n    找到自己，修改后边的/bin/bash为/bin/zsh\r\n    9 lds:x:1000:1000::/home/lds:/bin/zsh\r\n</pre>\r\n还可能用chsh命令\r\n<pre>\r\nlds% chsh\r\nPassword: \r\nChanging the login shell for lds\r\nEnter the new value, or press ENTER for the default\r\n	Login Shell [/bin/zsh]: /bin/zsh\r\n\r\n表示应该在更改 (y/n)? 提示后，通过输入 y 进行更改。然后，当出现 为？ 提示符后，添加您想要的 shell 的名称，如同以下示例所示：\r\n\r\n 更改 (y/n)？ > y\r\n为？ > /usr/bin/csh\r\n</pre>\r\n创建配置文件，不然每次登陆都会提示。\r\n<pre>\r\nlds% touch ~/.zshrc\r\n</pre>\r\n一些简单的配置\r\n<pre>\r\n开启补全\r\n% autoload -U compinit\r\n% compinit\r\n\r\n开启纠错功能\r\n% setopt correctall\r\n\r\n开启高级命令提示符功能\r\n% autoload -U promptinit\r\n% promptinit\r\n\r\n 一个简单的自定义提示符\r\n% export PS1="[Test Prompt] > "\r\n[Test Prompt] >\r\n能够创建自定义的文本提示符一定很不错，与此同时zsh也提供了许多的转义序列来允许你把系统信息插入到提示符里。一些可用的转义序列如下：\r\n\r\n转义序列	打印效果\r\n%T	系统时间（时：分）\r\n%*	系统时间（时：分：秒）\r\n%D	系统日期（年-月-日）\r\n%n	你的用户名\r\n%B - %b	开始到结束使用粗体打印\r\n%U - %u	开始到结束使用下划线打印\r\n%d	你目前的工作目录\r\n%~	你目前的工作目录相对于～的相对路径\r\n%M	计算机的主机名\r\n%m	计算机的主机名（在第一个句号之前截断）\r\n%l	你当前的tty\r\n\r\n</pre>\r\nlinuxtoy.org上的一个配置文件，下载\r\nhttp://i.linuxtoy.org/i/2008/08/zshrctar.gz\r\n配置文件效果\r\n<a href="http://blog.osser.me/index.php/attachment/84/" title="zsh.png"><img src="http://blog.osser.me/usr/uploads/2011/07/1989809101.png" alt="zsh.png" /></a>\r\n相关资料\r\nhttp://www.gentoo.org/doc/zh_cn/zsh.xml#savingsettings\r\nhttp://linuxtoy.org/archives/zsh.html', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(85, 'shell行编辑', '85', 1309536849, 1309581064, '         shell支持命令行编辑，就是在输入命令的时候可以对输入的命令进行查找删除等。linux很多软件都有这个功能，是因为<a href="http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html">The GNU Readline Library</a>.详细的说明可以man readline。\r\n      一些常用的行编辑命令，\r\n<pre>\r\n    ctrl+r 可以搜索历史命令，很常用的一个\r\n    ctrl+a 到行首\r\n    ctrl+e 到行尾\r\n    ctrl+u 删除到行首\r\n    ctrl+k 删除到行尾\r\n    ctrl+l 类似 clear 命令效果\r\n    ctrl+y 粘贴\r\n    ctrl+d 删除光标所在位置的字符\r\n    ctrl+h 删除光标左方位置的字符\r\n    ctrl+b 向左移动一个字符\r\n    ctrl+f  向右移动一个字符\r\n    M+f    向右移动一个单词\r\n</pre>\r\nbash中支持两种编辑模式，vi和emacs，查看现在的编辑模式\r\n<pre>\r\n$ set -o | grep emacs    \r\n$ emacs             off\r\n</pre>\r\n可以用以下命令找开emacs模式。\r\n<pre>\r\nset -o emacs\r\n</pre>\r\nvi模式\r\n<pre>set -o vi</pre>\r\n在shell下执行这个命令之后，就可以用vi的命令了。\r\n \r\n', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(86, 'shell中的exec', '86', 1309624856, 1309627381, 'exec命令可以将任何文件和任何文件描述符关联。文件描述符也是文件句柄。一般在文件读写的时候都会将一个文件和一个数字关联起来，利用数字读写文件。linux下的常用的三个文件描述符是0，1，2<br />\r\n<ul>\r\n<li>标准输入 (STDIN) &nbsp; &nbsp; 0</li>\r\n<li>标准输出 (STDOUT) 1</li>\r\n<li>标准错误 (STDERR) 2</li>\r\n</ul>\r\n<br />可以将一个数字和一个文件关联，也可以将重定向一个文件描述符到另一个文件描述符。<br />比如下面的shell 脚本<br />\r\n<pre class="prettyprint linenums bush:bash" lang="bash">$ exec 4&gt;out.txt\r\n$ exec 5&gt;&amp;4\r\n$ exec 1&gt;&amp;5\r\n$ ls</pre>\r\n&nbsp;<br />上面的例子中，第一句是将4 语out.txt关联，打开一个文件来写。每二句将5重定向一个文件描述符到另一个文件描述符4，第三名将1重定向到5，其实就是标准输出重定向到了out.txt。<br />&nbsp;', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(84, 'zsh.png', 'zsh-png', 1309488575, 1309488575, 'a:5:{s:4:"name";s:7:"zsh.png";s:4:"path";s:35:"/usr/uploads/2011/07/1989809101.png";s:4:"size";i:6076;s:4:"type";s:3:"png";s:4:"mime";s:9:"image/png";}', 1, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 81),
(87, 'shell内建命令', '87', 1309970855, 1309971764, '用户输入命令之后，shell一般fork，在子shell中执行命令。内建命令不是这样的。&nbsp;执行内建命令相当于调用Shell进程中的一个函数，并不创建新的进程。<span style="color: #ffffff; font-family: Monaco, Courier, monospace;"><span class="Apple-style-span" style="white-space: pre;"><br /></span></span>如何查看命令是否为内建命令？<br />可以用type命令<br />\r\n<div><span style="font-size: medium;"><span style="font-size: medium;">&nbsp; &nbsp;<strong>type - write a description of command type<br /></strong></span></span>\r\n<ul>\r\n<li><span class="Apple-style-span" style="font-weight: normal;">不加参数，会显示命令是内建命令还是外部命令。&nbsp;</span></li>\r\n</ul>\r\n</div>\r\n<div>\r\n<pre class="prettyprint linenums bush:bash" lang="bash">$type echo \r\necho is a shell builtin\r\n \r\n</pre>\r\n</div>\r\n<ul>\r\n<li>&nbsp;－t 参数，返回值</li>\r\n</ul>\r\n<div><span style="font-size: small;"><span style="font-size: small;">&nbsp; &nbsp; &nbsp; &nbsp;file&nbsp;&nbsp;&nbsp; ：表示为外部指令；<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alias&nbsp;&nbsp; ：表示该指令为命令别名所设定的名称；<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; builtin ：表示该指令为 bash 内建的指令功能；<br /></span></span>\r\n<pre class="prettyprint linenums bush:bash" lang="bash">$type -t ls \r\nalias\r\n$type -t alias\r\nbuiltin\r\n$type -t chmod \r\nfile\r\n</pre>\r\n<br />－a 会将命令PATH 路径显示出来。<br /><br />几个shell中的内建命令<br /><br />\r\n<ul>\r\n<li>Bash内建命令：</li>\r\n</ul>\r\nalias, bind, builtin, command, declare, echo, enable, help, let, local, logout, printf, read, shopt, type, typeset, ulimit and unalias.&nbsp;<br /><br />\r\n<ul>\r\n<li>特殊内建命令：</li>\r\n<li>\r\n<p>当Bash在POSIX模式运行，特殊内建命令和其他内建命令有3个方面的区别：</p>\r\n<div class="orderedlist"><ol type="1">\r\n<li>\r\n<p>特殊内建命令在shell函数在命令查找期间先被找到。</p>\r\n</li>\r\n<li>\r\n<p>如果一个特殊内建命令返回一个错误状态，一个非交互shell就会退出。</p>\r\n</li>\r\n<li>\r\n<p>在命令完成后在该命令之前的赋值语句仍然在shell环境中起作用。</p>\r\n</li>\r\n</ol></div>\r\n<p>POSIX特殊内建命令是：:, ., break, continue, eval, exec, exit, export, readonly, return, set, shift, trap，&nbsp;unset. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n</li>\r\n</ul>\r\n&nbsp;</div>', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(88, 'mutt+getmail+msmtp', '88', 1309982770, 1309982770, 'linux下的太多东西可以折腾了，最过对mutt很感兴趣。配置不好配置。一步一步来，先把msmtp配置好了。<br />配置文件：<br />\r\n<pre class="prettyprint linenums bush:bash" lang="bash"># Default value for all following accounts\r\ndefaults\r\n#      tls on\r\n    tls_trust_file /etc/ssl/certs/ca-certificates.crt\r\n#   keepbcc on\r\n#    logfile ~/log/msmtp.log\r\n\r\n# Gmail\r\naccount gmail\r\n    host smtp.gmail.com\r\n    port 587\r\n    auth on\r\n    tls on\r\n\r\naccount ldshuang@gmail.com : gmail\r\n    from ldshuang@gmail.com\r\n    user "ldshuang@gmail.com"\r\n    password "you passwd"\r\n\r\n# Another mail service\r\n#account another_mailbox@domain.com\r\n#    host smtp.domain.com\r\n#    auth on\r\n#    from another_mailbox@domain.com\r\n#    user "another_mailbox"\r\n#    password "another_secret"\r\n\r\n# Default account\r\naccount default : ldshuang@gmail.com</pre>\r\n&nbsp;用 <span style="color: #ff0102;">$msmtp --host=smtp.gmail.com --serverinfo</span>&nbsp;&nbsp;&nbsp; 测试gmail是否支持TLS加密。<br />&nbsp;在终端里 <br />\r\n<pre class="prettyprint linenums bush:bash" lang="bash">$ msmtp ldshuang@gmail.com</pre>\r\n&nbsp;测试。按ctrl+d结束，发送邮件。', 0, 1, NULL, 'post', 'publish', NULL, 0, '1', '1', '1', 0),
(96, 'tabbar.png', 'tabbar-png', 1315329033, 1315329033, 'a:5:{s:4:"name";s:10:"tabbar.png";s:4:"path";s:35:"/usr/uploads/2011/09/4109407707.png";s:4:"size";i:10424;s:4:"type";s:3:"png";s:4:"mime";s:9:"image/png";}', 3, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 0),
(97, 'snimate.png', 'snimate-png', 1315329283, 1315329283, 'a:5:{s:4:"name";s:11:"snimate.png";s:4:"path";s:34:"/usr/uploads/2011/09/506612377.png";s:4:"size";i:7996;s:4:"type";s:3:"png";s:4:"mime";s:9:"image/png";}', 2, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 0),
(98, 'nerdtree.png', 'nerdtree-png', 1315329400, 1315329400, 'a:5:{s:4:"name";s:12:"nerdtree.png";s:4:"path";s:34:"/usr/uploads/2011/09/415803832.png";s:4:"size";i:17888;s:4:"type";s:3:"png";s:4:"mime";s:9:"image/png";}', 1, 1, NULL, 'attachment', 'publish', NULL, 0, '1', '0', '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `typecho_metas`
--

CREATE TABLE IF NOT EXISTS `typecho_metas` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `count` int(10) unsigned DEFAULT '0',
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- 转存表中的数据 `typecho_metas`
--

INSERT INTO `typecho_metas` (`mid`, `name`, `slug`, `type`, `description`, `count`, `order`) VALUES
(4, 'linux', 'linux', 'category', NULL, 18, 1),
(2, 'shell', 'shell', 'tag', NULL, 4, 0),
(3, 'shell linux', 'shell-linux', 'tag', NULL, 1, 0),
(10, 'linux 7zip 解压缩', 'linux-7zip-解压缩', 'tag', NULL, 1, 0),
(8, 'linux wget', 'linux-wget', 'tag', NULL, 0, 0),
(9, 'linxu screen', 'linxu-screen', 'tag', NULL, 1, 0),
(11, 'vim', 'vim', 'category', 'vim gvim vimrc', 3, 2),
(12, 'vim vimrc setting', 'vim-vimrc-setting', 'tag', NULL, 1, 0),
(13, 'linux 终端 lynx', 'linux-终端-lynx', 'tag', NULL, 1, 0),
(14, 'tool', 'tool', 'category', '一些工具', 4, 3),
(15, 'linux  刻录 cd', 'linux--刻录-cd', 'tag', NULL, 1, 0),
(16, 'linux fedora yum 源', 'linux-fedora-yum-源', 'tag', NULL, 0, 0),
(17, 'fedora linux 升级', 'fedora-linux-升级', 'tag', NULL, 1, 0),
(18, 'linux server tool', 'linux-server-tool', 'tag', NULL, 0, 0),
(20, 'linux server tool mysql', 'linux-server-tool-mysql', 'tag', NULL, 0, 0),
(19, 'server ', 'server', 'category', NULL, 0, 4),
(48, 'terminal', 'terminal', 'tag', NULL, 1, 0),
(21, 'linux 命令 commond system', 'linux-命令-commond-system', 'tag', NULL, 1, 0),
(22, 'linux wget 技巧', 'linux-wget-技巧', 'tag', NULL, 1, 0),
(23, 'programe book', 'programe-book', 'tag', NULL, 1, 0),
(24, 'book', 'book', 'category', NULL, 1, 5),
(25, 'lftp 命令 手册', 'lftp-命令-手册', 'tag', NULL, 1, 0),
(26, 'vim nerd tree 插件', 'vim-nerd-tree-插件', 'tag', NULL, 1, 0),
(27, 'ubuntu gnome 3', 'ubuntu-gnome-3', 'tag', NULL, 1, 0),
(28, 'fb haskell', 'fb-haskell', 'tag', NULL, 1, 0),
(29, 'haskell ', 'haskell', 'category', '函数式编程语言', 1, 6),
(30, 'ubuntu  error', 'ubuntu--error', 'tag', NULL, 0, 0),
(32, '程序员 转载', '程序员-转载', 'tag', NULL, 1, 0),
(31, 'ubuntu', 'ubuntu', 'category', NULL, 0, 7),
(33, '技术收藏与分享', '分享', 'category', NULL, 1, 8),
(34, 'group', 'group', 'category', NULL, 0, 9),
(49, 'cpio', 'cpio', 'tag', NULL, 1, 0),
(35, 'group', 'group', 'tag', NULL, 0, 0),
(36, '老师', '老师', 'tag', NULL, 0, 0),
(37, 'archlinux', 'archlinux', 'tag', NULL, 1, 0),
(38, '五笔输入法', '五笔输入法', 'tag', NULL, 1, 0),
(39, 'zsh', 'zsh', 'tag', NULL, 1, 0),
(40, 'cli', 'cli', 'tag', NULL, 1, 0),
(41, 'shell学习笔记', 'shell学习笔记', 'category', NULL, 4, 10),
(42, 'linux', 'linux', 'tag', NULL, 4, 0),
(43, 'msmtp', 'msmtp', 'tag', NULL, 1, 0),
(44, 'mutt', 'mutt', 'tag', NULL, 1, 0),
(45, 'mail', 'mail', 'tag', NULL, 1, 0),
(46, 'mysql', 'mysql', 'tag', NULL, 0, 0),
(47, 'mysql', 'mysql', 'category', NULL, 0, 11),
(50, 'vim', 'vim', 'tag', NULL, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `typecho_options`
--

CREATE TABLE IF NOT EXISTS `typecho_options` (
  `name` varchar(32) NOT NULL,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`name`,`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `typecho_options`
--

INSERT INTO `typecho_options` (`name`, `user`, `value`) VALUES
('theme', 0, 'default'),
('timezone', 0, '28800'),
('charset', 0, 'UTF-8'),
('contentType', 0, 'text/html'),
('gzip', 0, '0'),
('generator', 0, 'Typecho 0.8/10.8.15'),
('title', 0, 'lidashuang''blog'),
('description', 0, ' '),
('keywords', 0, 'lidashuang,blog,'),
('rewrite', 0, '1'),
('frontPage', 0, 'recent'),
('commentsRequireMail', 0, '1'),
('commentsRequireURL', 0, '0'),
('commentsRequireModeration', 0, '0'),
('plugins', 0, 'a:2:{s:9:"activated";a:2:{s:8:"AntiSpam";a:1:{s:7:"handles";a:1:{s:23:"Widget_Feedback:comment";a:1:{i:0;a:2:{i:0;s:15:"AntiSpam_Plugin";i:1;s:6:"filter";}}}}s:7:"TinyMCE";a:1:{s:7:"handles";a:4:{s:31:"admin/write-post.php:richEditor";a:1:{i:0;a:2:{i:0;s:14:"TinyMCE_Plugin";i:1;s:6:"render";}}s:31:"admin/write-page.php:richEditor";a:1:{i:0;a:2:{i:0;s:14:"TinyMCE_Plugin";i:1;s:6:"render";}}s:21:"Widget_Archive:header";a:1:{i:0;a:2:{i:0;s:14:"TinyMCE_Plugin";i:1;s:6:"header";}}s:21:"Widget_Archive:footer";a:1:{i:0;a:2:{i:0;s:14:"TinyMCE_Plugin";i:1;s:6:"footer";}}}}}s:7:"handles";a:5:{s:23:"Widget_Feedback:comment";a:1:{i:0;a:2:{i:0;s:15:"AntiSpam_Plugin";i:1;s:6:"filter";}}s:31:"admin/write-post.php:richEditor";a:1:{i:0;a:2:{i:0;s:14:"TinyMCE_Plugin";i:1;s:6:"render";}}s:31:"admin/write-page.php:richEditor";a:1:{i:0;a:2:{i:0;s:14:"TinyMCE_Plugin";i:1;s:6:"render";}}s:21:"Widget_Archive:header";a:1:{i:0;a:2:{i:0;s:14:"TinyMCE_Plugin";i:1;s:6:"header";}}s:21:"Widget_Archive:footer";a:1:{i:0;a:2:{i:0;s:14:"TinyMCE_Plugin";i:1;s:6:"footer";}}}}'),
('commentDateFormat', 0, 'F jS, Y \\a\\t h:i a'),
('siteUrl', 0, 'http://blog.osser.me'),
('defaultCategory', 0, '1'),
('allowRegister', 0, '0'),
('defaultAllowComment', 0, '1'),
('defaultAllowPing', 0, '1'),
('defaultAllowFeed', 0, '1'),
('pageSize', 0, '5'),
('postsListSize', 0, '10'),
('commentsListSize', 0, '10'),
('commentsHTMLTagAllowed', 0, NULL),
('postDateFormat', 0, 'Y-m-d'),
('feedFullText', 0, '0'),
('editorSize', 0, '350'),
('autoSave', 0, '0'),
('commentsMaxNestingLevels', 0, '5'),
('commentsPostTimeout', 0, '6048000'),
('commentsUrlNofollow', 0, '1'),
('commentsShowUrl', 0, '1'),
('commentsPageBreak', 0, '0'),
('commentsThreaded', 0, '1'),
('commentsPageSize', 0, '20'),
('commentsPageDisplay', 0, 'last'),
('commentsOrder', 0, 'ASC'),
('commentsCheckReferer', 0, '1'),
('commentsAutoClose', 0, '0'),
('commentsPostIntervalEnable', 0, '1'),
('commentsPostInterval', 0, '600'),
('commentsShowCommentOnly', 0, '0'),
('commentsAvatar', 0, '1'),
('commentsAvatarRating', 0, 'G'),
('routingTable', 0, 'a:24:{i:0;a:23:{s:5:"index";a:6:{s:3:"url";s:1:"/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:8:"|^[/]?$|";s:6:"format";s:1:"/";s:6:"params";a:0:{}}s:2:"do";a:6:{s:3:"url";s:22:"/action/[action:alpha]";s:6:"widget";s:9:"Widget_Do";s:6:"action";s:6:"action";s:4:"regx";s:32:"|^/action/([_0-9a-zA-Z-]+)[/]?$|";s:6:"format";s:10:"/action/%s";s:6:"params";a:1:{i:0;s:6:"action";}}s:4:"post";a:6:{s:3:"url";s:24:"/archives/[cid:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:26:"|^/archives/([0-9]+)[/]?$|";s:6:"format";s:13:"/archives/%s/";s:6:"params";a:1:{i:0;s:3:"cid";}}s:10:"attachment";a:6:{s:3:"url";s:26:"/attachment/[cid:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:28:"|^/attachment/([0-9]+)[/]?$|";s:6:"format";s:15:"/attachment/%s/";s:6:"params";a:1:{i:0;s:3:"cid";}}s:8:"category";a:6:{s:3:"url";s:17:"/category/[slug]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:25:"|^/category/([^/]+)[/]?$|";s:6:"format";s:13:"/category/%s/";s:6:"params";a:1:{i:0;s:4:"slug";}}s:3:"tag";a:6:{s:3:"url";s:12:"/tag/[slug]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:20:"|^/tag/([^/]+)[/]?$|";s:6:"format";s:8:"/tag/%s/";s:6:"params";a:1:{i:0;s:4:"slug";}}s:6:"author";a:6:{s:3:"url";s:22:"/author/[uid:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:24:"|^/author/([0-9]+)[/]?$|";s:6:"format";s:11:"/author/%s/";s:6:"params";a:1:{i:0;s:3:"uid";}}s:6:"search";a:6:{s:3:"url";s:19:"/search/[keywords]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:23:"|^/search/([^/]+)[/]?$|";s:6:"format";s:11:"/search/%s/";s:6:"params";a:1:{i:0;s:8:"keywords";}}s:10:"index_page";a:6:{s:3:"url";s:21:"/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:22:"|^/page/([0-9]+)[/]?$|";s:6:"format";s:9:"/page/%s/";s:6:"params";a:1:{i:0;s:4:"page";}}s:13:"category_page";a:6:{s:3:"url";s:32:"/category/[slug]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:34:"|^/category/([^/]+)/([0-9]+)[/]?$|";s:6:"format";s:16:"/category/%s/%s/";s:6:"params";a:2:{i:0;s:4:"slug";i:1;s:4:"page";}}s:8:"tag_page";a:6:{s:3:"url";s:27:"/tag/[slug]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:29:"|^/tag/([^/]+)/([0-9]+)[/]?$|";s:6:"format";s:11:"/tag/%s/%s/";s:6:"params";a:2:{i:0;s:4:"slug";i:1;s:4:"page";}}s:11:"author_page";a:6:{s:3:"url";s:37:"/author/[uid:digital]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:33:"|^/author/([0-9]+)/([0-9]+)[/]?$|";s:6:"format";s:14:"/author/%s/%s/";s:6:"params";a:2:{i:0;s:3:"uid";i:1;s:4:"page";}}s:11:"search_page";a:6:{s:3:"url";s:34:"/search/[keywords]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:32:"|^/search/([^/]+)/([0-9]+)[/]?$|";s:6:"format";s:14:"/search/%s/%s/";s:6:"params";a:2:{i:0;s:8:"keywords";i:1;s:4:"page";}}s:12:"archive_year";a:6:{s:3:"url";s:18:"/[year:digital:4]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:19:"|^/([0-9]{4})[/]?$|";s:6:"format";s:4:"/%s/";s:6:"params";a:1:{i:0;s:4:"year";}}s:13:"archive_month";a:6:{s:3:"url";s:36:"/[year:digital:4]/[month:digital:2]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:30:"|^/([0-9]{4})/([0-9]{2})[/]?$|";s:6:"format";s:7:"/%s/%s/";s:6:"params";a:2:{i:0;s:4:"year";i:1;s:5:"month";}}s:11:"archive_day";a:6:{s:3:"url";s:52:"/[year:digital:4]/[month:digital:2]/[day:digital:2]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:41:"|^/([0-9]{4})/([0-9]{2})/([0-9]{2})[/]?$|";s:6:"format";s:10:"/%s/%s/%s/";s:6:"params";a:3:{i:0;s:4:"year";i:1;s:5:"month";i:2;s:3:"day";}}s:17:"archive_year_page";a:6:{s:3:"url";s:38:"/[year:digital:4]/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:33:"|^/([0-9]{4})/page/([0-9]+)[/]?$|";s:6:"format";s:12:"/%s/page/%s/";s:6:"params";a:2:{i:0;s:4:"year";i:1;s:4:"page";}}s:18:"archive_month_page";a:6:{s:3:"url";s:56:"/[year:digital:4]/[month:digital:2]/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:44:"|^/([0-9]{4})/([0-9]{2})/page/([0-9]+)[/]?$|";s:6:"format";s:15:"/%s/%s/page/%s/";s:6:"params";a:3:{i:0;s:4:"year";i:1;s:5:"month";i:2;s:4:"page";}}s:16:"archive_day_page";a:6:{s:3:"url";s:72:"/[year:digital:4]/[month:digital:2]/[day:digital:2]/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:55:"|^/([0-9]{4})/([0-9]{2})/([0-9]{2})/page/([0-9]+)[/]?$|";s:6:"format";s:18:"/%s/%s/%s/page/%s/";s:6:"params";a:4:{i:0;s:4:"year";i:1;s:5:"month";i:2;s:3:"day";i:3;s:4:"page";}}s:12:"comment_page";a:6:{s:3:"url";s:53:"[permalink:string]/comment-page-[commentPage:digital]";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:34:"|^(.+)/comment-page-([0-9]+)[/]?$|";s:6:"format";s:18:"%s/comment-page-%s";s:6:"params";a:2:{i:0;s:9:"permalink";i:1;s:11:"commentPage";}}s:4:"feed";a:6:{s:3:"url";s:20:"/feed[feed:string:0]";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:4:"feed";s:4:"regx";s:17:"|^/feed(.*)[/]?$|";s:6:"format";s:7:"/feed%s";s:6:"params";a:1:{i:0;s:4:"feed";}}s:8:"feedback";a:6:{s:3:"url";s:31:"[permalink:string]/[type:alpha]";s:6:"widget";s:15:"Widget_Feedback";s:6:"action";s:6:"action";s:4:"regx";s:29:"|^(.+)/([_0-9a-zA-Z-]+)[/]?$|";s:6:"format";s:5:"%s/%s";s:6:"params";a:2:{i:0;s:9:"permalink";i:1;s:4:"type";}}s:4:"page";a:6:{s:3:"url";s:12:"/[slug].html";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";s:4:"regx";s:22:"|^/([^/]+)\\.html[/]?$|";s:6:"format";s:8:"/%s.html";s:6:"params";a:1:{i:0;s:4:"slug";}}}s:5:"index";a:3:{s:3:"url";s:1:"/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:2:"do";a:3:{s:3:"url";s:22:"/action/[action:alpha]";s:6:"widget";s:9:"Widget_Do";s:6:"action";s:6:"action";}s:4:"post";a:3:{s:3:"url";s:24:"/archives/[cid:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:10:"attachment";a:3:{s:3:"url";s:26:"/attachment/[cid:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:8:"category";a:3:{s:3:"url";s:17:"/category/[slug]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:3:"tag";a:3:{s:3:"url";s:12:"/tag/[slug]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:6:"author";a:3:{s:3:"url";s:22:"/author/[uid:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:6:"search";a:3:{s:3:"url";s:19:"/search/[keywords]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:10:"index_page";a:3:{s:3:"url";s:21:"/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:13:"category_page";a:3:{s:3:"url";s:32:"/category/[slug]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:8:"tag_page";a:3:{s:3:"url";s:27:"/tag/[slug]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:11:"author_page";a:3:{s:3:"url";s:37:"/author/[uid:digital]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:11:"search_page";a:3:{s:3:"url";s:34:"/search/[keywords]/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:12:"archive_year";a:3:{s:3:"url";s:18:"/[year:digital:4]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:13:"archive_month";a:3:{s:3:"url";s:36:"/[year:digital:4]/[month:digital:2]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:11:"archive_day";a:3:{s:3:"url";s:52:"/[year:digital:4]/[month:digital:2]/[day:digital:2]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:17:"archive_year_page";a:3:{s:3:"url";s:38:"/[year:digital:4]/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:18:"archive_month_page";a:3:{s:3:"url";s:56:"/[year:digital:4]/[month:digital:2]/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:16:"archive_day_page";a:3:{s:3:"url";s:72:"/[year:digital:4]/[month:digital:2]/[day:digital:2]/page/[page:digital]/";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:12:"comment_page";a:3:{s:3:"url";s:53:"[permalink:string]/comment-page-[commentPage:digital]";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}s:4:"feed";a:3:{s:3:"url";s:20:"/feed[feed:string:0]";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:4:"feed";}s:8:"feedback";a:3:{s:3:"url";s:31:"[permalink:string]/[type:alpha]";s:6:"widget";s:15:"Widget_Feedback";s:6:"action";s:6:"action";}s:4:"page";a:3:{s:3:"url";s:12:"/[slug].html";s:6:"widget";s:14:"Widget_Archive";s:6:"action";s:6:"render";}}'),
('actionTable', 0, 'a:0:{}'),
('panelTable', 0, 'a:0:{}'),
('attachmentTypes', 0, '@image@,@media@,@doc@'),
('autoSave', 1, '1'),
('defaultAllowComment', 1, '1'),
('defaultAllowPing', 1, '1'),
('defaultAllowFeed', 1, '1'),
('theme:default', 0, 'a:2:{s:7:"logoUrl";N;s:12:"sidebarBlock";a:5:{i:0;s:15:"ShowRecentPosts";i:1;s:18:"ShowRecentComments";i:2;s:12:"ShowCategory";i:3;s:11:"ShowArchive";i:4;s:9:"ShowOther";}}'),
('editorSize', 1, '342'),
('plugin:TinyMCE', 0, 'a:7:{s:4:"mode";s:1:"1";s:10:"Editormode";s:1:"0";s:11:"EditorPorBR";s:1:"0";s:10:"JQueryMode";s:1:"1";s:9:"JQueryUrl";s:112:"<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>\r\n";s:11:"prettifyCss";s:8:"prettify";s:9:"extendCss";s:0:"";}');

-- --------------------------------------------------------

--
-- 表的结构 `typecho_relationships`
--

CREATE TABLE IF NOT EXISTS `typecho_relationships` (
  `cid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `typecho_relationships`
--

INSERT INTO `typecho_relationships` (`cid`, `mid`) VALUES
(3, 3),
(3, 4),
(6, 4),
(6, 22),
(7, 4),
(7, 9),
(23, 4),
(23, 10),
(25, 4),
(27, 11),
(28, 11),
(28, 12),
(31, 13),
(31, 14),
(32, 4),
(32, 15),
(36, 4),
(36, 17),
(38, 4),
(38, 14),
(41, 4),
(41, 21),
(64, 23),
(64, 24),
(66, 4),
(66, 14),
(66, 25),
(68, 11),
(68, 26),
(69, 4),
(69, 27),
(71, 28),
(71, 29),
(74, 32),
(74, 33),
(75, 4),
(79, 37),
(79, 38),
(81, 2),
(81, 4),
(81, 39),
(81, 40),
(81, 41),
(85, 2),
(85, 4),
(85, 41),
(86, 2),
(86, 4),
(86, 41),
(86, 42),
(87, 2),
(87, 4),
(87, 41),
(87, 42),
(88, 4),
(88, 14),
(88, 42),
(88, 43),
(88, 44),
(88, 45),
(92, 48),
(94, 4),
(94, 42),
(94, 49);

-- --------------------------------------------------------

--
-- 表的结构 `typecho_users`
--

CREATE TABLE IF NOT EXISTS `typecho_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `screenName` varchar(32) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `activated` int(10) unsigned DEFAULT '0',
  `logged` int(10) unsigned DEFAULT '0',
  `group` varchar(16) DEFAULT 'visitor',
  `authCode` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `typecho_users`
--

INSERT INTO `typecho_users` (`uid`, `name`, `password`, `mail`, `url`, `screenName`, `created`, `activated`, `logged`, `group`, `authCode`) VALUES
(1, 'root', '$T$L9E6RcL9k9b1bf953e2a85f5ab70854f9f9b0e986', 'ldshuang@gmail.com', 'http://blog.osser.me', 'lidashuang', 1292469675, 1321809261, 1320210566, 'administrator', 'ef5533e78a451fa958e8893acd3dd2129cae6fd6');
