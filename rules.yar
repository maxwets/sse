rule bitcoins
{
	strings:
		$str = "Give me bitcoins!" xor wide ascii
		$hex = { 47 69 76 65 20 6D 65 20 62 69 74 63 6F 69 6E 73 21 }
		$give = "Give" xor wide ascii
		$me = "me" xor wide ascii
		$bitcoins = "bitcoins" xor wide ascii

	condition:
		$str or $hex or ($give and $me and $bitcoins)
}

rule secret
{
	strings:
		$str = "/root/secret" xor wide ascii
		$root = "root" xor wide ascii
		$secret = "secret" xor wide ascii
		$remove = "remove" fullword ascii
		$rm = "rm" fullword ascii
		$ul = "unlink" fullword ascii
		
	condition:
		( ($rm or $ul or $remove) and ( ($root and $secret) or $str ) )
}

rule sudoers
{
	strings:
		$str = "/etc/sudoers" xor wide ascii
		$etc = "etc" xor wide ascii
		$sudoers = "sudoers" xor wide ascii
		$open = "open" fullword ascii
		$fopen = "fopen" fullword ascii
		$fwrite = "fwrite" fullword ascii

	condition:
		($open or $fopen or $fwrite) and ( $str or ( $etc and $sudoers ) )
}


rule function_names
{
	strings:
		$malware = "malware" nocase
		$virus = "virus" nocase
		$malicious = "malicious" nocase
		$evil = "evil" nocase

	condition:
		any of them

}
