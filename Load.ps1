#PARAMS!!!
$MidiIn = 0
$MidiOut = 1

$lcli = ".\logue-cli\logue-cli-win64-0.07-2b\logue-cli.exe"

$UnitList = @(
    @{Slot = 0; Unit = ".\cathedral_theatre_haze_mist\cathedral_xd.prlgunit"},
    @{Slot = 1; Unit = ".\cathedral_theatre_haze_mist\haze_xd.prlgunit"},
    @{Slot = 2; Unit = ".\cathedral_theatre_haze_mist\mist_xd.prlgunit"},
    @{Slot = 3; Unit = ".\cathedral_theatre_haze_mist\theatre_xd.prlgunit"},
    @{Slot = 4; Unit = ".\breathe_sniff\breathe_xd.prlgunit"},
    @{Slot = 5; Unit = ".\breathe_sniff\sniff_xd.prlgunit"},
    @{Slot = 1; Unit = ".\eurorack_nutekt-digital\mo2_add.ntkdigunit"},
    @{Slot = 2; Unit = ".\eurorack_nutekt-digital\mo2_fm.ntkdigunit"},
    @{Slot = 3; Unit = ".\eurorack_nutekt-digital\mo2_grn.ntkdigunit"},
    @{Slot = 4; Unit = ".\eurorack_nutekt-digital\mo2_string.ntkdigunit"},
    @{Slot = 5; Unit = ".\eurorack_nutekt-digital\mo2_va.ntkdigunit"},
    @{Slot = 6; Unit = ".\eurorack_nutekt-digital\modal_strike.ntkdigunit"},
    @{Slot = 7; Unit = ".\eurorack_nutekt-digital\modal_strike_16_nolimit.ntkdigunit"},
    @{Slot = 8; Unit = ".\eurorack_nutekt-digital\modal_strike_24_nolimit.ntkdigunit"},
    @{Slot = 9; Unit = ".\soundmangling\DRONE_User_Oscillator\drone.ntkdigunit"},
    @{Slot = 0; Unit = ".\SineVibes\KorgTime110\NTS-1\Time.ntkdigunit"}
)

$UnitList | % {
    & $lcli load -i $MidiIn -o $MidiOut -s $_.Slot -u (Join-Path $PSScriptRoot $_.Unit)
}