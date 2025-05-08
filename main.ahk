#Requires AutoHotkey v2.0
#include 'libs/FindText.ahk' ; Include the AHK library for additional functions

; ------------------------ UI ------------------------

; ------------------------Variables------------------------
global SelectedEnchant := "NotSelected" ; Default Value | DropDownList1


; -----------------------------------------------------




myGui := Gui("AlwaysOnTop")
myGui.SetFont("Bold cWhite")
myGui.BackColor := "0x000000"  ; Set background to black for contrast
myGui.Add("GroupBox", "x16 y8 w174 h58 cWhite", "ENCHANT")
myGui.SetFont("Bold cWhite")
DropDownList1 := myGui.Add("DropDownList", "x24 y32 w154", ["Teamup", "Looter", "Bubbler"])
DropDownList1.OnEvent("Change", SELECT)

myGui.SetFont("Bold cWhite")
myGui.Add("GroupBox", "x16 y72 w173 h69 cWhite", "Hotkeys")
myGui.Add("Text", "x24 y88 w120 h23 +0x200 cWhite", "F1 - START")
myGui.Add("Text", "x24 y112 w120 h23 +0x200 cWhite", "F2 - STOP")
myGui.Add("GroupBox", "x216 y8 w217 h132 cWhite", "Logs")
Edit1 := myGui.Add("Edit", "x224 y24 w201 h107 +E0x20000 +Background cBlack")
myGui.OnEvent('Close', (*) => ExitApp())
myGui.Title := "mangoguards [AUTO ENCHANT]"
myGui.Show("w449 h226")

logmesssage(msg) 
{
    global Edit1 
    Edit1.Value := msg . "`n" . Edit1.Value
}


SELECT(*)
{
    global SelectedEnchant
     SelectedEnchant := DropDownList1.Text ; Get the selected value from the dropdown list
   
}


; ------------------------ Hotkeys ------------------------
F1::Start()
F2::ExitApp
; -----------------------------------------------------

; ------------------------ Start Functions ------------------------
Check := "|<>*178$304.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw0zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzU1zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs00003zzzzzzzzzzzzy03zzzzzzzzzzzzzzzzzzzzzzzzzzzzzy000003zzzzzzzzzzzzs0Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzk00000DzzzzzzzzzzzzU0zzzzzzzzzzzzzzzzzzw1zzzzzzzzzz000000Tzzzzzzzzzzzy03zzzzzzzzzzzzzzzzzzU3zzzzzzzzzw000001zzzzzzzzzzzzs0Dzzzzzzzzzzzzzzzzzw07zzzzzzzzzk000007zzzzzzzzzzzzU0zzzzzzzzzzzzzzzzzzk0Tzzzzzzzzz000000Tzzzzzzzzzzzy03zzzzzzzzzzzzzzzzzz01zzzzzzzzzw000001zzzzzzzzzzzzs0Dzzzzzzzzzzzzzzzzzw07zzzzzzzzzk000007zzzzzzzzzzzzU0zzzzzzzzzzzzzzzzzzk0Tzzzzzzzzz000000zzzzzzzzzzzzy03zzzzzzzzzzzzzzzzzz01zzzzzzzzzw000007zzzzzzzzzzzzs0Dzzzzzzzzzzzzzzzzzw07zzzzzzzzzk0DzzzzzzzzzzzzzzzzU0zzzzzzzzzzzzzzzzzzk0Tzzzzzzzzz01zzzzzzzzzzzzzzzzy03zzzzzzzzzzzzzzzzzz01zzzzzzzzzw07zzzzzzzzzzzzzkzzs0Dzzzzzzzzzzzzzzzzzw07zzzk1zzzzk0Tzzzzk3w0Tzzzk07zU0y0zzzzk3w0zk3w0Tzw0007zs00Tzzz01zzzzy07U0Tzzw007y03U0Tzzw03U1y07U0TzU000Dy000Tzzw07zzzzs0800zzz000Ds0800zzz00407s0800zw0000TU000zzzk0TzzzzU0001zzs000DU0001zzs0000TU0001zk0001y0001zzz0000Dzy00003zz0000S00003zz00001y00003z00007k0007zzw00007zs00007zs0001s00007zs00007s00007w0000T0000zzzk0000TzU0000Dz00007U0000Dz00000TU0000Dk0001s0003zzz00001zy00000Ts0000S00000zs00001y00000T00007U000Tzzw00003zs00001zU0003s00001zU00007s00001w0000S07y3zzzk0000DzU00003w0000DU00007w00000TU00003s0003s0TzTzzz00000zy00000Dk0001y00000Dk00001y00000Dk000TU1zzzzzw00003zs01y00z00TkDs01y00z00TU07s01y00zw07zy01zzzzzk0000TzU0Dw03s03zVzU0Dw03s03z00TU0Dw03zk0Tzs00Dzzzz00001zy01zs07U0Tzzy01zs0DU0Ty01y01zs07z01zzk007zzzw0000Dzs0DzU0S01zzzs0DzU0S03zs07s0DzU0Tw07zz0003zzzk0003zzU0zz01s0DzzzU0zz01s0Dzk0TU0zz01zk0Tzw0007zzz01zzzzy03zw07U0zzzy03zw07U0zz01y03zw07z01zzs000Dzzw07zzzzs0Dzk0S03zzzs0Dzk0S03zw07s0Dzk0Tw07zzk000Tzzk0TzzzzU0zz01s0DzzzU0zz01s0DzU0TU0zz01zk0TzzU001zzz01zzzzy03zw07U0Tzzy03zw07U0Ty01y03zw07z01zzzU003zzw07zzzzs0Dzk0S01zxzs0Dzk0S01zk07s0Dzk0Tw07zzzU00Dzzk0TzzzzU0zz01s01z1zU0zz01s01y00TU0zz01zk0Tzzzk00zzz00zzzzy03zw07k03k3y03zw07k01U01y03zw07z00zzxzy03zzw000003s0Dzk0T00007s0Dzk0T000007s0Dzk0Tw00Dz0zw0Dzzk00000DU0zz01y0000DU0zz01y00000TU0zz01zk00Ds0zk0zzz000000S03zw07s0000S03zw07s00001y03zw07zU00TU0M03zzw000001s0Dzk0Tk0001s0Dzk0Tk00007s0Dzk0Ty001w0000Dzzk000007U0zz01z00007U0zz01zU0000TU0zz01zs007k0001zzz000000S03zw07y0000S03zw07y00001y03zw07zk00T00007zzw000001s0Dzk0Tw0003s0Dzk0Tw00007s0Dzk0Tz001w0000Tzzk000007U0zz01zw000TU0zz01zw0000TU0zz01zy007s0003zzz000000y07zw0Dzs003y07zw0Dzs01U1y07zw0Dzy00Tk000Tzzy000003w0Tzs0zzs00zw0Tzs0zzs0S0Dw0Tzs0zzw03zk007zzzy00000zw7zzsDzzw0Tzs7zzsDzzwDz3zw7zzsDzzz0Tzs01zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzU"
Bubbler := "|<>*123$116.000000000000000000000000000000000000000000000000000000000007k007k7k7k000040A00Dzk03y3y3y00007k7k07zy00lUlUlU0003y3y01U1k0AMAMAM0000lUlU0M0A03737360000AQMM0603yDlwlwlVzDz336601VsTrwTwTwNzzzssn300My6DX0D0D6s3W666kk06D3Xkk1k1lw0M1VlsM01X0swA0A0AS060MAC600MsCD311117VlVy33X006DVXkksEsFsQMT0MEk01XwMQAC4C4S06C060M00MS6733V3V7UnX00k600601U0k0k0ksTsk0A3001U0w0A0A0A606A01Uk00M0DU307071k1X00MM0060CQNl3l3sT0sk03C000zz3zzzrznyzzw00z0007z0CwzkzkT7yQ003U00000000000000000000000000000000000000008"
TeamV := "|<>*126$119.000000000000000000000000000000000000000000000000000000000000Dzk0000000400001U303zzs0000000z3w00DUDU7zzs0000003yDs00vUzUA00k0000006AMk01X1X0M01U000000A8lk037660zVzz1zrzjUMFXzk66AA0z7zzbzzzzUkX7zsCAkk06Cs3wFl3XVV6AEsABVU0ANU3U1U03X2AM0sMS600Mq060300364Mk0kMQA00lgCA06006A8lUVUksk01XsQMwAACAMNX3VUkVU037k0lsMsQMkr6731U6006DU3VklkslVwAC61UA00AP3z01XVlVUUM0M30k00Mq070373X3U1k0k31U00la0C06C76307U3066001X70z6QSSA3UT7Q06Q001y7zbzzzzs3zqDk0Dk001s7y3zCD701yAQ007000000000000000Mk000000000000000000lU000000000000000001n0000000000000000001y0000000000000000001k000008"
Looter:= "|<>*129$91.80000000000060ATU00003k0000DUDhk00003w0000CsCw800001X00006ACC400001VU000336720Ds7wkwzbzVVX3V0TyDzsTzzzskn3EUQ1i0s1k74AABVcEA0S080k1U667VY8A0C040E0k31Vkm462311UMQ8/Ukkl237VXkkwC4DUA8MVVXklsMS066060MEzksMQAD07201UA8Ts0A063VzV00kA4060D07UE0kU0A62030DU7kA0ME066101sCQ7QD0QM01X0zzjy7z7zzzw00z0DzVw0y0yDww00700000000000000000000000000000000000000000000000000000000000000U"
Warning := "|<>*156$67.0000000000000000000000000000000000000000000000000000000000C0000000000TU000000000QM000000000Q6000000000A3000000000A0k0000000060M000000007060SDU7y003030TzwTzU01U0kMQ6Q0Q01U0MA01w0700k0C400s01U0k03200Q00M0M61l00A00A0M30MU0C0s60A3kAE7y0y10A1s387z0y0U6001Y31U00k6000S1Uk00M3000D0kM00M30003UMA3zw1U001kA30zi1UDz0M61U030kC1kA30s00UM60M61UA00MA6063Uk300M73033ks0s0Q1z00zjs0Dzw0D00D3k01zs00000000000000000000000000000000000000000000000000000000000000000002"
; -------------------------Variables-------------------------
Start()
{
    global SelectedEnchant
    logmesssage("Selected enchant: " SelectedEnchant)

    if FindText(&X, &Y, 960-150000, 229-150000, 960+150000, 229+150000, 0, 0, Check) {
        logmesssage("Monitor Supported")

       

    } else {
        logmesssage("[WARNING] Your monitor might NOT support this macro")
        MsgBox("[WARNING] Your monitor doesn't seem to support this macro. Please check your monitor settings.")
        ExitApp
    }
    
    loop {
        if (SelectedEnchant = "Teamup") {
            if FindText(&X, &Y, 589-150000, 667-150000, 589+150000, 667+150000, 0, 0, TeamV)
            {
                logmesssage("[Found Teamup enchant]")
                Sleep(1000)
                break
            } 
            else if FindText(&X, &Y, 589-150000, 667-150000, 589+150000, 667+150000, 0, 0, Warning)
            {
                logmesssage("Warning Ui Closing")
                BetterClick(860, 660)
                Sleep(1000)
            } 
            else {
             
                BetterClick(626, 854)
                Sleep(500)
            }
        }
        else if (SelectedEnchant = "Looter") {
            if FindText(&X, &Y, 578-150000, 668-150000, 578+150000, 668+150000, 0, 0, Looter)
            {
                logmesssage("[Found Looter enchant]")
                Sleep(1000)
                break
            }
            else if FindText(&X, &Y, 589-150000, 667-150000, 589+150000, 667+150000, 0, 0, Warning)
            {
                logmesssage("Warning Ui Closing")
                BetterClick(860, 660)
                Sleep(1000)
            }
            else {
               
                BetterClick(626, 854)
                Sleep(500)
            }
        }
        else if (SelectedEnchant = "Bubbler") {
            if FindText(&X, &Y, 573-150000, 665-150000, 573+150000, 665+150000, 0, 0, Bubbler)
                {
                    logmesssage("[Found Bubbler enchant]")
                    Sleep(1000)
                    break
                }
                else if FindText(&X, &Y, 589-150000, 667-150000, 589+150000, 667+150000, 0, 0, Warning)
                {
                    logmesssage("[Warning Ui Closing]")
                    BetterClick(860, 660)
                    Sleep(1000)
                }
                else {
                    
                    BetterClick(626, 854)
                    Sleep(500)
                }
        }
    }
}

BetterClick(x, y) {
    MouseMove(x, y)
    Sleep(10)
    MouseMove(1, 0, , "R")
    Sleep(20)
    MouseClick("Left", -1, 0, , , , "R")
    Sleep(50)
}
