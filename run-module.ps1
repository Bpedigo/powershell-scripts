﻿
<# 
.SYNOPSIS
    simple scripte to show what modules are available for use.
    Also, a short line to remind the user how to import the module.
    
.DESCRIPTION

.PARAMETER  <Parameter-Name>

.EXAMPLE
    run-module
    
.INPUTS

.OUTPUTS

.NOTES

   Author: Brian Pedigo

   Created: <date>

.LINK

    
    
#>

get-module -listAvailable
write-host "`n`n`n"
write-host "To run a module type import-module < Module's Name > -PassThru" -foregroundColor black -background white
