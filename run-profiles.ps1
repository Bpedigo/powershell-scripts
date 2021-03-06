<# 
.SYNOPSIS
    Creates a new blank PowerShell profile with a description built in and 
    opens the ISE
    
.DESCRIPTION

.PARAMETER  <-all>

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




    $optionA = Test-Path $profile
    $optionB = Test-Path $profile.AllUsersAllHosts


        cls
        
        write "Current user has a powershell profile:  $optionA`n"
        
        write "All users have a powershell profile:   $optionB`n"
        
        read-host
        
        if(($optionA) -and ($optionB)) {
        
            cls
            exit
        
        }
        
        $choice = read-host "Would you like to create a new profile?(y/n)"
        
        if(($choice -ne "y") -and ($choice -ne "n")) {
        
            write "not a vaild choice!"
            
         }
         elseif($choice -eq "y") {
            
            cls
            write "1- current user profile"
            write "2- all users profile"
            
            $opt = read-host "enter choice:"
         
         }
         else {
            
            exit
         }
         
         
         if($opt -eq 1 ) {
            
            New-item –type file –force $profile
            $optionD = Test-Path $profile
            cls
            write "A new current user profile created: $optionD"
            read-host
            cls
         
         
         }
         elseif($opt -eq 2) {
            
            New-item –type file –force $profile.AllUsersAllHosts
            $optionC = Test-Path $profile.AllUsersAllHosts
            cls
            write "A new All Users all Hosts profile created: $optionC"
            read-host
            cls
         
         
         }
         
         
         
         
        
        
        
        
        
       






<#

    if(($optionA) -and ($optionB)) {

        cls
        write "Current user has a powershell profile:  $optionA"
        write "All users have a powershell profile:   $optionB"
        read-host
        cls
    }
    elseif(($optionA) -and (!$optionB) -and (!$all)) {

        cls
        write "Current user has a powershell profile:  $optionA"
        write "All users have a powershell profile:   $optionB"
        read-host
        cls
     }   
    elseif(($all) -and (!$optionB)) {
        
        #new-item -file $profile.ALLUsersAllHosts -force
        New-item –type file –force $profile.AllUsersAllHosts
        $optionC = Test-Path $profile.AllUsersAllHosts
        cls
        write "A new All Users all Hosts profile created: $optionC"
        read-host
        cls
        
     }
     elseif(!$optionA){
     
        #new-item -file $profile -force
        New-item –type file –force $profile
        $optionD = Test-Path $profile
        cls
        write "A new current user profile created: $optionD"
        read-host
        cls
        
      }
      
 #>       
     
      
           
