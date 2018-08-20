$script:Actions = data {
    @{
        Hide = 0
        ShowNormal = 1
        ShowMinimized = 2
        ShowMaximized = 3
        Maximize = 3
        ShowNormalNoActivate = 4
        Show = 5
        Minimize = 6
        ShowMinNoActivate = 7
        ShowNoActivate = 8
        Restore = 9
        ShowDefault = 10
        ForceMinimized = 11
    };
};

Set-Alias -Name 'NativeConsoleActions' -Value $script:Actions;

Add-Type -Name 'Window' -Namespace 'Console' -MemberDefinition @"
    [DllImport("Kernel32.dll")]
    public static extern IntPtr GetConsoleWindow();

    [DllImport("user32.dll")]
    public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
"@;

function Show-Console {
    [System.IntPtr] $consolePointer = [Console.Window]::GetConsoleWindow();

    [Console.Window]::ShowWindow($consolePointer, $script:Actions.ShowNormalNoActivate);
};

function Hide-Console {
    [System.IntPtr] $consolePointer = [Console.Window]::GetConsoleWindow();

    [Console.Window]::ShowWindow($consolePointer, $script:Actions.Hide);
};

function Resize-Console {
    param(
        [int32] $ConsoleState
    )
    [System.IntPtr] $consolePointer = [Console.Window]::GetConsoleWindow();

    [Console.Window]::ShowWindow($consolePointer, $ConsoleState);
};

Export-ModuleMember -Function 'Show-Console';
Export-ModuleMember -Function 'Hide-Console';
Export-ModuleMember -Function 'Resize-Console';
Export-ModuleMember -Alias -Name 'NativeConsoleActions';