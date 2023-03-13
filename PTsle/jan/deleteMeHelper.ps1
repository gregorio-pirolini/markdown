function test-this{
param(
    [Alias("n","nam")]
    [parameter (Mandatory = $true)]
    [ValidateScript({($_ -eq "greg") -or ($_ -eq "gregorio")})]
 
    [string]$name,
    [Alias("i","iid")]
    [int]$id,
    [Alias("s","sw")]
    [switch] $switch
)

if($switch){
    "switch is on"
}else{
    "switch is off"
}


"Hello {0} your number is {1} and {2}" -f $name,$id,$switch
}
test-this -nam "gregorio" -iid 13 -s