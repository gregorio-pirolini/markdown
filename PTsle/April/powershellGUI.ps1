<#
datum 23-03-2023
powershell gui
#>

Clear-Host

# add class  #group from class 
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# new object
$frmNet = New-Object System.Windows.Forms.Form
# set size
$frmNet.Size = New-Object System.Drawing.Size(700, 600)
# set title
$frmNet.Text = "netzwerk-Einstellungen"
#position 50 60
#$frmNet.Location = New-Object System.Drawing.Size(50, 60)

# position centered
$frmNet.StartPosition = "CenterScreen"
# add an icon
$frmNet.Icon = "$PSScriptRoot\network.ico"
# maximieren
#$frmNet.WindowState = "maximized"
# add border
$frmNet.FormBorderStyle = "Fixed3d"
$image = [System.Drawing.Image]::FromFile("$PSScriptRoot\bg.png")
$frmNet.BackgroundImage = $image
#Show on top
$frmNet.Topmost = $true
#not scalable
# $frmNet.MaximizeBox = $false
# $frmNet.MinimizeBox = $false

# Label erzeugen
$lblHeader = New-Object System.Windows.Forms.Label
$lblHeader.Text = 'Netzwerk-Einstellungen'
$lblHeader.Location = New-Object System.Drawing.Size(100, 20)
$lblHeader.size = New-Object System.Drawing.Size(500, 40)
$lblHeader.BackColor = "#ff0000"
$lblHeader.TextAlign = "middleCenter"
$lblHeader.Font = "Arial,14"
$frmNet.Controls.add($lblHeader)
# show the object
$frmNet.ShowDialog()

