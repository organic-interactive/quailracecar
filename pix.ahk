Loop, 500
{
	if GetKeyState("F2", "P")
		break
	Send {Return}
	Sleep, 2000
	Send {Return}
	Sleep, 5000
	Send !{PrintScreen}
	Send <#r
	Sleep, 100
	Send, mspaint
	Sleep, 200
	Send {Return}
	Sleep, 300
	Send ^v
	Sleep, 100
	Send ^s
	Sleep, 100
	timestamp := 31536000*(A_YYYY-1970) + (A_Yday+Floor((A_YYYY-1972)/4))*86400 + A_Hour*3600 + A_Min*60 + A_Sec
	Send, %timestamp%
	Sleep, 300
	Send {Return}
	Sleep, 100
	Send !{F4}
	Sleep, 10000
}