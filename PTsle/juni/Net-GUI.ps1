###############################
# Datum: 23.3.23
# Autor: MMustermann
# Titel: PowerShell-GUI
###############################

Clear-Host

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Variablen
#IP_ADRESSE
#$ipaddress = (Test-Connection -ComputerName (Hostname) -count 1).IPV4Address.IPAddressToString
$ipaddress = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Select-Object -Property IpAddress).IPAddress
#Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Select-Object -ExpandProperty IpAddress

#SUBNETZMASKE
$networkAdapterConf = Get-WmiObject win32_NetworkAdapterConfiguration | Where-Object { $_.IPEnabled -eq $true } | Select-Object -first 1
$subnet = $networkAdapterConf.IPSubnet

#MAC-ADRESSE
$macaddress = $networkAdapterConf.MACAddress

#Gateway
$gateway = $networkAdapterConf.DefaultIPGateway

$dnsServers = $networkAdapterConf.DNSServerSearchOrder

# Proxy
$proxy = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
$proxyServer, $proxyPort = $proxy.ProxyServer -split ":"
$proxyOverride = $proxy.ProxyOverride -split ";"
$proxyStatus = $proxy.ProxyEnable



# Funktionen

function create-label() {
    param(
        $text,
        $fromleft,
        $fromtop,
        $width = 120,
        $height = 20
    )

    $lbl = New-Object System.Windows.Forms.Label
    $lbl.Text = $text
    $lbl.Location = New-Object System.Drawing.Size($fromleft, $fromtop)
    $lbl.Size = New-Object System.Drawing.Size($width, $height)
    $lbl.BackColor = "white"
    $lbl.TextAlign = "middleCenter"
    $lbl.Font = "Comic Sans,9"

    return $lbl
}


function create-textbox() {
    
    param(
        $text,
        $fromleft,
        $fromtop,
        $width = 120,
        $height = 20
    )

    $tbx = New-Object System.Windows.Forms.TextBox
    $tbx.Text = $text
    $tbx.Location = New-Object System.Drawing.Size($fromleft, $fromtop)
    $tbx.Size = New-Object System.Drawing.Size($width, $height)
    $tbx.BackColor = "white"
    $tbx.Font = "Comic Sans,10 "
   
    return $tbx


}

function toggle-enable() {
    param(
        $checkbox,
        $toggleItems,
        [boolean]$reverse = $false
    )
    
    $enable = $checkbox.Value.Checked -xor $reverse

    foreach ($item in $toggleItems) {
        $item.Value.Enabled = $enable
    
    }


}

 
function check-regex() {
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        $string,
        [Parameter(Mandatory = $true, Position = 1)]
        [ValidateSet("IPv4", "MAC", "Port")]
        $format
    )

    switch ($format) {
        "IPv4" { return $string -match "^(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])(\.(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])){3}$" }
        "MAC" { return $string -match "^((([0-9A-F]{2})[-:]){5})[0-9A-F]{2}$" }
        "Port" { return [int32]$string -in (255..65535) }
    
    
    }
}   
  


# Formular erzeugen

$frmNet = New-Object System.Windows.Forms.Form
$frmNet.Size = New-Object System.Drawing.Size(700, 600)
$frmNet.Text = "Netzwerk-Einstellungen"
#$frmNet.Location = New-Object System.Drawing.Size(50,60)
$frmNet.StartPosition = "CenterScreen"
#$frmNet.WindowState = "Maximized" # Maximiert
#$frmNet.FormBorderStyle = "None"
$icon = "$PSScriptroot\images\network.ico"
$image = [System.Drawing.Image]::FromFile("$PSScriptroot\images\bfw_bckgrnd_700_500.png")
$frmNet.BackgroundImage = $image
$frmNet.Icon = $icon
$frmNet.Topmost = $true
$frmNet.FormBorderStyle = "Fixed3d"

# buttons
$button1 = New-Object System.Windows.Forms.Button
$button1.Text = "shut down"
$button1.Location = New-Object System.Drawing.Point(200, 300)
$button1.Size = New-Object System.Drawing.Size(100, 30)
$button1.BackColor = [System.Drawing.Color]::Red

$button1.Add_Click({
        $Message = "Button was clicked!`nShutting down"
        [System.Windows.Forms.MessageBox]::Show($Message)
        $frmNet.Close()
    })
$button2 = New-Object System.Windows.Forms.Button
$button2.Text = "show"
$button2.Location = New-Object System.Drawing.Point(400, 300)
$button2.Size = New-Object System.Drawing.Size(100, 30)
$button2.BackColor = [System.Drawing.Color]::green

$button2.Add_Click({
        $Message = "All Infos!!`n"
        $Message += "IP: " + $tbxIP.Text + "`n"
        $Message += "Standard Gateway: $($tbxGateway.Text)`n"
        $Message += "proxiserver: $($tbxProxyServer.Text)`n"
        $Message += "sub: $($tbxSubnet.Text)`n"
        $Message += "dhcp: $($chbDHCP.Checked )`n"
        $Message += "proxy port: $($tbxProxyPort.Text)`n"
        $Message += "MAC: " + $tbxMacAddress.Text + "`n"  
        $Message += "DNs:$($cmbDNS.Text)`n"
        $Message += "PROXyAusnahme:$($cmbProxyAusnahmen.Text)`n"
        $Message += "eingeschaltet:$($chbProxyStatus.Checked )`n"
        [System.Windows.Forms.MessageBox]::Show($Message)
    })

$frmNet.Controls.Add($button1)
$frmNet.Controls.Add($button2)
# Label erzeugen

$lblHeader = New-Object System.Windows.Forms.Label
$lblHeader.Text = "Netzwerk-Einstellungen"
$lblHeader.Location = New-Object System.Drawing.Size(100, 20)
$lblHeader.Size = New-Object System.Drawing.Size(500, 40)
$lblHeader.BackColor = "#fbc100"
$lblHeader.TextAlign = "middleCenter"
$lblHeader.Font = "Comic Sans,14 "
$frmNet.Controls.Add($lblHeader)

# Label Ip-Adresse
$lblIP = create-label -text "IP-Address" -fromleft 120 -fromtop 60 
$frmNet.Controls.Add($lblIP)

# Textbox IP-Adresse
$tbxIP = create-textbox -text $ipaddress -fromleft 100 -fromtop 80
#$tbxIP.Enabled = $false
$frmNet.Controls.Add($tbxIP)

# Label Subnetzmaske
$lblSubnet = create-label -text "Subnetzmaske" -fromleft 120 -fromtop 120
$frmNet.Controls.Add($lblSubnet)

# Textbox Subnetzmaske
$tbxSubnet = create-textbox -text $subnet -fromleft 100 -fromtop 140
$frmNet.Controls.Add($tbxSubnet)

# Label Subnetzmaske
$lblMacAddress = create-label -text "Mac-Adresse" -fromleft 120 -fromtop 180
$frmNet.Controls.Add($lblMacAddress)

# Textbox Subnetzmaske
$tbxMacAddress = create-textbox -text $macaddress -fromleft 100 -fromtop 200
$frmNet.Controls.Add($tbxMacAddress)


# Label Standard-Gateway
$lblGateway = create-label -text "Standard-Gateway" -fromleft 240 -fromtop 60
$frmNet.Controls.Add($lblGateway)

# Textbox Standard-Gateway
$tbxGateway = create-textbox -text $gateway -fromleft 240 -fromtop 80
$frmNet.Controls.Add($tbxGateway)

# LabelDHCP
$lblDHCP = create-label -text "DHCP" -fromleft 240 -fromtop 120
$frmNet.Controls.Add($lblDHCP)

# Checkbox
$chbDHCP = New-Object System.Windows.Forms.CheckBox
$chbDHCP.Location = New-Object System.Drawing.Size(240, 140)
$chbDHCP.BackColor = "white"
$chbDHCP.checked = [bool]::Parse($networkAdapterConf.DHCPEnabled)
$chbDHCP.Text = "eingeschaltet"
$chbDHCP.Add_Click({
        $toggle_DHCP = ([ref]$tbxIP), ([ref]$tbxSubnet), ([ref]$tbxGateway)
        toggle-enable -checkbox ([ref]$chbDHCP) -toggleItems $toggle_DHCP -reverse $true
    })
$frmNet.Controls.Add($chbDHCP)

# LabelDNS-Server
$lblDNS = create-label -text "DnS_Server" -fromleft 240 -fromtop 180
$frmNet.Controls.Add($lblDNS)

# Combobox DNS-Server
$cmbDNS = New-Object System.Windows.Forms.ComboBox
$cmbDNS.Location = New-Object System.Drawing.Size(240, 200)
$cmbDNS.BackColor = "white"
foreach ($dnsServer in $dnsServers) {
    $cmbDNS.Items.Add($dnsServer) | Out-Null
}
if ($cmbDNS.items.count -gt 0) {
    $cmbDNS.SelectedIndex = 0 
}
$frmNet.Controls.Add($cmbDNS)


# Label ProxyServer
$lblProxyServer = create-label -text "Proxy-Server" -fromleft 420 -fromtop 60
$frmNet.Controls.Add($lblProxyServer)

# Textbox ProxyServer
$tbxProxyServer = create-textbox -text $ProxyServer -fromleft 420 -fromtop 80
$frmNet.Controls.Add($tbxProxyServer)

# Label ProxyPort
$lblProxyPort = create-label -text "ProxyPort" -fromleft 420 -fromtop 120
$frmNet.Controls.Add($lblProxyPort)

# Textbox ProxyPort
$tbxProxyPort = create-textbox -text $proxyPort -fromleft 420 -fromtop 140
$frmNet.Controls.Add($tbxProxyPort)

# Label ProxyAusnahmen
$lblProxyAusnahmen = create-label -text "ProxyAusnahmen" -fromleft 420 -fromtop 180
$frmNet.Controls.Add($lblProxyAusnahmen)

# Combobox ProxyAusnahmen
$cmbProxyAusnahmen = New-Object System.Windows.Forms.ComboBox
$cmbProxyAusnahmen.Size = New-Object System.Drawing.Size(120, 20)
$cmbProxyAusnahmen.Location = New-Object System.Drawing.Size(420, 200)
foreach ($ausnahme in $proxyOverride) {
    $cmbProxyAusnahmen.items.Add($ausnahme) | Out-Null
}
if ($cmbProxyAusnahmen.items.Count -gt 0) {
    $cmbProxyAusnahmen.SelectedIndex = 0
}
$frmNet.Controls.Add($cmbProxyAusnahmen)

# Proxy-Status

# LabelProxy-Status
$lblProxyStatus = create-label -text "Proxy-Status" -fromleft 420 -fromtop 240
$frmNet.Controls.Add($lblProxyStatus)

# Checkbox Proxystatus
$chbProxyStatus = New-Object System.Windows.Forms.CheckBox
$chbProxyStatus.Location = New-Object System.Drawing.Size(420, 260)
$chbProxyStatus.BackColor = "Transparent"
$chbProxyStatus.checked = $proxyStatus
$chbProxyStatus.Text = "eingeschaltet"
$chbProxyStatus.Add_Click({
        $toggle_Proxy = ([ref]$tbxProxyServer), ([ref]$tbxProxyPort), ([ref]$cmbProxyAusnahmen)
        toggle-enable -checkbox ([ref]$chbProxyStatus) -toggleItems $toggle_Proxy 
    })
if (!$chbProxyStatus.checked) {
    toggle-enable -checkbox ([ref]$chbProxyStatus) -toggleItems $toggle_Proxy 
}
$frmNet.Controls.Add($chbProxyStatus)


$frmNet.ShowDialog()

