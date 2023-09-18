$smbsess = get-smbsession
$smbsess.count
if ($smbsess.count -gt 15)
{
	$smbsess | where NumOpens -eq 0 | Close-SmbSession -Force
}
