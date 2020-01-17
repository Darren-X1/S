常用机场
===

# DlerCloud     [全局代理访问](https://dleris.best/auth/register?affid=56105)     [国内访问](https://dleris.best/auth/register?affid=56105)

##### 套餐介绍

| Pass Bronze  | Pass Silver | Pass Gold | Pass Platinum | Pass Diamond |
| :---------: | :--------:| :--------: | :----------: | :----------: |
| ￥228.00 / 年 | ￥98.00 / 季 <br> ￥328.00 / 年 | ￥488.00 / 年 | ￥688.00 / 年 | ￥888.00 / 年 |
| 国际标准- Global | 国际标准 - Global <br/>大陆中继 - BGP <br/> 中国大陆 - BGP | 国际标准 - Global <br>大陆中继 - BGP <br> 中国大陆 - BGP <br> 国际专线 - IPLC | 国际标准 - Global <br> 大陆中继 - BGP <br> 中国大陆 - BGP <br> 国际专线 - IPLC <br> 大陆优化节点 - Pro | 国际标准 - Global <br> 大陆中继 - BGP <br> 中国大陆 - BGP <br> 国际专线 - IPLC <br> 大陆优化 - Pro |
| 同时在线 / IP：2 <br>高速数据传输 / GiB / 月：100 <br>低速数据传输 / GiB / 月： | 同时在线 / IP：3<br> 高速数据传输 / GiB / 月：240<br> 低速数据传输 / GiB / 月：∞ | 同时在线 / IP：4<br> 高速数据传输 / GiB / 月：400<br> 低速数据传输 / GiB / 月：∞ | 同时在线 / IP：5<br> 高速数据传输 / GiB / 月：800<br> 低速数据传输 / GiB / 月：∞ | 同时在线 / IP：6<br> 高速数据传输 / GiB / 月：1200<br> 低速数据传输 / GiB / 月：∞ |
| 包含：SS 、 Vmess 协议节点 | 包含：SS 、 Vmess 协议节点 | 包含：SS 、 SSR 、 Vmess 协议节点 | 包含：SS 、 SSR 、 Vmess 协议节点 | 包含：SS 、 SSR 、 Vmess 协议节点 |

##### Surge配置内容

```
[General]
loglevel = notify
skip-proxy = 192.168.0.0/16, 193.168.0.0/24, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, 17.0.0.0/8, 127.0.0.1, localhost, *.local
bypass-system = true
internet-test-url = http://www.qualcomm.cn/generate_204
proxy-test-url = http://www.qualcomm.cn/generate_204
test-timeout = 3
dns-server = system, 119.29.29.29, 208.67.222.222, 1.2.4.8, 182.254.116.116,
allow-wifi-access = true
ipv6 = false
external-controller-access = 112233@0.0.0.0:6170
http-listen = 0.0.0.0:5881
socks5-listen = 0.0.0.0:5882
wifi-access-http-port = 5883
wifi-access-socks5-port = 5884
use-default-policy-if-wifi-not-primary = true
shared-jsvm-context = true
show-error-page-for-reject = true
[Proxy]
♺♳♴♵♶♷♸♹

[Proxy Group]
♺PROXY = select, 🇭🇰Dler-IPLC,🇭🇰Dler-BGP,🇯🇵Dler-Relay,🇺🇳Dler-Relay,🇺🇳Dler-Bronze,👤Personal
🇭🇰Dler-IPLC = url-test, policy-path=https://dler.cloud/subscribe/😄token😄?protocols=ss&list=surge&class=gold&area=hk, update-interval=0, url=http://www.qualcomm.cn/generate_204, interval = 600, tolerance = 50
🇭🇰Dler-BGP = url-test, policy-path=https://dler.cloud/subscribe/😄token😄?protocols=ss&list=surge&class=silver&area=hk, update-interval=0, url=http://www.qualcomm.cn/generate_204, interval = 600, tolerance = 50
🇯🇵Dler-Relay = url-test, policy-path=https://dler.cloud/subscribe/😄token😄?protocols=ss&list=surge&type=relay&area=jp, update-interval=0, url=http://www.qualcomm.cn/generate_204, interval = 600, tolerance = 50
🇺🇳Dler-Relay = select, policy-path=https://dler.cloud/subscribe/😄token😄?protocols=ss&list=surge&type=relay&noarea=hk+jp&noisp=back, update-interval=0
🇺🇳Dler-Bronze = select, policy-path=https://dler.cloud/subscribe/😄token😄?protocols=ss&list=surge&class=bronze, update-interval=0
🇨🇳Dler-Back = select, policy-path=https://dler.cloud/subscribe/😄token😄?protocols=ss&list=surge&isp=back, update-interval=0
# 🏳️Dler-Vmess = select, policy-path=https://dler.cloud/subscribe/😄token😄?protocols=vmess&list=surge&class=gold, update-interval=0
👤Personal = fallback, policy-path=https://gist.githubusercontent.com/Darren-X1/😄token😄/raw/Personal, update-interval=0, url=http://www.qualcomm.cn/generate_204
♳Final = select,♺PROXY,DIRECT
♴GlobalTV = select,DIRECT,♺PROXY
♵AsianTV = select,DIRECT,♴GlobalTV,♺PROXY
♶AdBlock = select,REJECT-TINYGIF,REJECT,DIRECT
♷Domestic = select,DIRECT,♺PROXY
♸Speedtest = select,♺PROXY,DIRECT
♹Telegram = url-test, policy-path=https://dler.cloud/subscribe/😄token😄?protocols=ss&list=surge&noclass=bronze&area=sg+us, update-interval=0, url=http://www.qualcomm.cn/generate_204, interval = 600, tolerance = 50
Apple = select,DIRECT,♺PROXY
ⓌWiFi = ssid, default = ♳Final, cellular = ♳Final

[Rule]
# Rulesets
RULE-SET,SYSTEM,Apple
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Apple.list,Apple
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Reject.list,♶AdBlock
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/AsianTV.list,♵AsianTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/GlobalTV.list,♴GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Telegram.list,♹Telegram
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Speedtest.list,♸Speedtest
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Netease%20Music.list,DIRECT
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Proxy.list,♺PROXY
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Domestic.list,♷Domestic
RULE-SET,LAN,DIRECT
DOMAIN,dler.cloud,DIRECT
DOMAIN-KEYWORD,announce,DIRECT
DOMAIN-KEYWORD,torrent,DIRECT
DOMAIN-KEYWORD,tracker,DIRECT
DOMAIN-SUFFIX,smtp,DIRECT
URL-REGEX,(Subject|HELO|SMTP),DIRECT
URL-REGEX,(api|ps|sv|offnavi|newvector|ulog.imap|newloc)(.map|).(baidu|n.shifen).com,DIRECT
URL-REGEX,(.+.|^)(360|so|qihoo|360safe|qhimg|360totalsecurity|yunpan).(cn|com),DIRECT
URL-REGEX,(.+.)?(torrent|announce.php?passkey=|tracker|BitTorrent|bt_key|ed2k|find_node|get_peers|info_hash|magnet:|peer_id=|sandai|Thunder|XLLiveUD|xunlei)(..+)?,DIRECT
IP-CIDR,1.1.1.1/24,DIRECT,no-resolve
GEOIP,CN,DIRECT
FINAL,♳Final,dns-failed

[Snell Server]
interface = 0.0.0.0
port = 5886
psk = bwh123456
obfs = off

[SSID Setting]
"X-iPhone" cellular-mode=true

[URL Rewrite]
# TikTok (By Choler & Paris ^_^)
(?<=(carrier|account|sys)_region=)CN JP 307
(?<=(carrier|account|sys|sim)_region=)cn in 307

# > Google_Service_HTTPS_Jump
^https?://(www.)?g.cn https://www.google.com 302
^https?://(www.)?google.cn https://www.google.com 302



[MITM]
skip-server-cert-verify = true
tcp-connection = false

hostname= api*.tiktokv.com, api*.amemv.com, *.tiktokcdn.com, api*.musical.ly, api.m.jd.com

enable = true
ca-passphrase = UNCLEWANG
ca-p12 = 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
```


