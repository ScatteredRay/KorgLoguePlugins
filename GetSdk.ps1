
# From here: https://github.com/korginc/logue-sdk/blob/master/tools/logue-cli/get_logue_cli_msys64.sh
$ARCHIVE_URL="http://cdn.storage.korg.com/korg_SDK/logue-cli-win64-0.07-2b.zip"
$ARCHIVE_SHA1="3ee94cebce383fb1319425aaa7abf4b30b1c1269"
$ARCHIVE_NAME="logue-cli-win64-0.07-2b.zip"

$OutPath = $ARCHIVE_NAME

Invoke-WebRequest -Uri $ARCHIVE_URL -OutFile $OutPath
$Hash = (Get-FileHash -Algorithm SHA1 -Path $OutPath).Hash

if($ARCHIVE_SHA1.ToLower() -eq $Hash.ToLower()) {
    Write-Host "Hash Matched"
    Expand-Archive $OutPath -DestinationPath (Join-Path $PSScriptRoot "logue-cli")
}
else {
    Write-Host "Hash match failure"
}