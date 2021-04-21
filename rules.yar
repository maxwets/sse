rule bitcoins
{
	strings:
		$str = "Give me bitcoins!" xor
		$wide = "Give me bitcoins!" wide ascii
		$xorwide = "Give me bitcoins!" xor wide ascii

		$hex = { 47 69 76 65 20 6D 65 20 62 69 74 63 6F 69 6E 73 21 }

		// seperate words
		$give = "Give"
		$me = "me"
		$bitcoins = "bitcoins"

	condition:
		$str or $wide or $xorwide or $hex or ($give and $me and $bitcoins)
}

rule secret
{
	strings:
		$str = "/root/secret" fullword
	
	condition:
		$str
}

rule sudoers
{
	strings:
		$str = "/etc/sudoers" fullword

	condition:
		$str
}
