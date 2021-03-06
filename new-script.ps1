<# 
.SYNOPSIS
    Creates a new blank PowerShell scirpt file with a description built in and 
    opens the ISE
    
.DESCRIPTION

.PARAMETER  -filename

.EXAMPLE
    new-script

.INPUTS

.OUTPUTS

.NOTES

   Author: Brian Pedigo

   Created: March 2015

.LINK

    https://github.com/Bpedigo
    
#>

Param ([string]$FileName)

$header = @"

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


"@

if($FileName.length -eq 0) {
    
    cls
    write "Opps the useage is PS> new-scirpt FILENAME"
    read-host
    cls

}

$dir = (pwd).path

$script = $dir + "\" + $FileName +".ps1"

$header >> $script 

ise $script
