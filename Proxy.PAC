
function FindProxyForURL(url, host)

{
  if (isResolvable(host))
    return "DIRECT";
  else
    return "PROXY 172.16.211.253:10001";
}