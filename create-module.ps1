<# 
.SYNOPSIS
    Creates a new model. You can choose to create it for all users or just the
    current user. 
    
.DESCRIPTION

.PARAMETER  -filename  -all -edit

.EXAMPLE
    create-module filename Luna -all -edit

.INPUTS

.OUTPUTS

.NOTES

   Author: Brian Pedigo

   Created: March 2015

.LINK

    https://github.com/Bpedigo
    
#>

Param (
[string]$FileName,
[switch]$all,
[switch]$edit)


$header = @"

<# 
.SYNOPSIS

.DESCRIPTION

.PARAMETER  <Parameter-Name>

.EXAMPLE

.INPUTS

.OUTPUTS

.NOTES

   Author: <name>

   Created: <date>

.LINK

    
    
#>


"@





###PUBLIC VOID MAIN ([stirng]arg0, [boolean]arg1, [boolean]arg2)


    if($fileName.length -lt 0 ) {

        cls
        write "Useage is create-module -filename (name) "
        read-host
        cls
    }

    elseif($all -and $edit ) {
    
        
        $NewDir = ($env:PSmodulePath).split(";")[1] + $FileName
        mkdir $NewDir
        $NewMod = $NewDir + "\" + $FileName +".psm1"
        $header >> $NewMod
        ise "$NewMod"
        
        
        
    }
    elseif($all) {
    
        
         $NewDir = ($env:PSmodulePath).split(";")[1] + $FileName
         mkdir $NewDir
         $NewMod = $NewDir + "\" + $FileName +".psm1"
         $header >> $NewMod
    } 
    elseif($edit) {
    
         $NewDir = ($env:PSmodulePath).split(";")[0] + "\" + $FileName
         mkdir $NewDir
         $NewMod = $NewDir + "\" + $FileName +".psm1"
         $header >> $NewMod
         ise "$NewMod"
    
    
    }
    else {
    
       
        $NewDir = ($env:PSmodulePath).split(";")[0] + "\" + $FileName
        mkdir $NewDir
        $NewMod = $NewDir + "\" + $FileName +".psm1"
        $header >> $NewMod
    }

