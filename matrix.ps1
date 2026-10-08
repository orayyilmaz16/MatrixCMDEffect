# Pencere başlığı ve rengi
$host.UI.RawUI.WindowTitle = "Gelişmiş Matrix Efekti"
[Console]::ForegroundColor = "Green"
[Console]::BackgroundColor = "Black"
[Console]::Clear()

# Ekranı otomatik tam ekran (Maximize) yapma
$WindowsAPI = Add-Type -MemberDefinition @"
    [DllImport("user32.dll")] public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
    [DllImport("kernel32.dll")] public static extern IntPtr GetConsoleWindow();
"@ -Name "Win32" -Namespace "Win32API" -PassThru
$hwnd = $WindowsAPI::GetConsoleWindow()
$WindowsAPI::ShowWindow($hwnd, 3)

# Ekran boyutlarını al
$h = [Console]::WindowHeight
$w = [Console]::WindowWidth
$cols = New-Object int[] $w
for($i=0; $i -lt $w; $i++) { $cols[$i] = Get-Random -Min 1 -Max $h }

# Karakter havuzu
$chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+-=[]{}|;:,.<>/?'
[Console]::CursorVisible = $false

# Sonsuz Matrix Döngüsü
while($true) {
    for($i=0; $i -lt $w; $i++) {
        $r = Get-Random -Min 0 -Max $chars.Length
        $c = $chars[$r]
        $y = $cols[$i]
        
        if($y -ge 0 -and $y -lt $h) {
            [Console]::SetCursorPosition($i, $y)
            [Console]::Write($c)
        }
        
        $cols[$i]++
        
        # Sütun sona geldiğinde veya rastgele sıfırla
        if($cols[$i] -ge $h -or (Get-Random -Min 0 -Max 100) -gt 98) {
            $cols[$i] = 0
            if((Get-Random -Min 0 -Max 100) -gt 92) {
                [Console]::SetCursorPosition($i, (Get-Random -Min 0 -Max $h))
                [Console]::Write(' ')
            }
        }
    }
    Start-Sleep -Milliseconds 10  # Akış hızı (Düşürürseniz hızlanır)
}