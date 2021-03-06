	
	//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: RCDNS.idl
//  Source: RCDNS.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPRCDNS_ICE
#define ROBOCOMPRCDNS_ICE

module RoboCompRCDNS
{
	["cpp:comparable"]
	struct ipInfo{
		string publicIP;
		string privateIP;
		string hostName;
	};
	["cpp:comparable"]
	struct DNSdata{
		ipInfo host;
		string idComp;
		int port;
	};
	sequence <DNSdata> DnsHostsSeq;
	interface rcdns
	{
		int giveMePort(string idComp, ipInfo hostInfo);
		int getComponentPort(string idComp, string host);
		string getComponentId(int port, string host);
		string getComponentHostNameById(string idComp);
		string getComponentHostNameByPort(int port);
		DnsHostsSeq getAllCompsHost(string host);
		DnsHostsSeq getAllComps();
	};
};

#endif
