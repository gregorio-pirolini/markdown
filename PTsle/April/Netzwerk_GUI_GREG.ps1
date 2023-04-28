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


# Funktionen


function toggle() {
   
    if ($chbDHCP.Checked) {
        $chbDHCP.Text = "checked is on"
        $tbxIP.Enabled = $false
        $tbxSubnet.Enabled = $false
        $tbxMacAddress.Enabled = $false
        $tbxGateWay.Enabled = $false
        $tbxIP.BackColor = "black"
        $tbxSubnet.BackColor = "black"
        $tbxMacAddress.BackColor = "black"
        $tbxGateWay.BackColor = "black"
    }
    else {
        $chbDHCP.Text = "checked is off"
        $tbxIP.Enabled = $true
        $tbxSubnet.Enabled = $true
        $tbxMacAddress.Enabled = $true
        $tbxGateWay.Enabled = $true

        $tbxIP.BackColor = "white"
        $tbxSubnet.BackColor = "white"
        $tbxSubnet.BackColor = "white"
        $tbxGateWay.BackColor = "white"
    }
   
}


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
$chbDHCP.Add_Click({ toggle })

$chbDHCP.Text = "eingeschaltet"
$frmNet.Controls.Add($chbDHCP)

# LabelDNS-Server
$lblDNS = create-label -text "DnS_Server" -fromleft 240 -fromtop 180
$frmNet.Controls.Add($lblDNS)

# Combobox DNS-Server
$cmbDNS = New-Object System.Windows.Forms.ComboBox
$cmbDNS.Location = New-Object System.Drawing.Size(240, 200)
$cmbDNS.BackColor = "white"
foreach ($dnsServer in $dnsServers) {
    $cmbDNS.Items.Add($dnsServer)
}
if ($cmbDNS.items.count -gt 0) {
    $cmbDNS.SelectedIndex = 0
}
$frmNet.Controls.Add($cmbDNS)


$frmNet.ShowDialog()