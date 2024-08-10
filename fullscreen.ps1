Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

public class WindowUtils
{
    [DllImport("user32.dll")]
    public static extern IntPtr GetForegroundWindow();

    [DllImport("user32.dll")]
    public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);

    public const int SW_MAXIMIZE = 3;
    public const int SW_RESTORE = 9;

    public static void ToggleFullscreen()
    {
        IntPtr hWnd = GetForegroundWindow();
        ShowWindow(hWnd, SW_MAXIMIZE);
    }
}
"@

[WindowUtils]::ToggleFullscreen()
