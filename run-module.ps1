
<# 
.SYNOPSIS

.DESCRIPTION

.PARAMETER  <Parameter-Name>

.EXAMPLE

.INPUTS

.OUTPUTS

.NOTES

   Author: Brian Pedigo

   Created: <date>

.LINK

    
    
#>

$Current = ($env:PSmodulePath).split(";")[0] +"\"

$All = ($env:PSmodulePath).split(";")[1] 

$CurrentList = Get-ChildItem $Current -recurse | where-object {$_.extension -eq ".psm1"} 

$Allist = Get-ChildItem  $All -recurse | where-object {$_.extension -eq ".psm1"} 

foreach( $i in $CurrentList) {

write $i

}

foreach( $j in $Allist) {
 
 write $j
 
 }