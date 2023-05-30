Invoke-Expression (&starship init powershell)

Set-Alias vi "C:\Program Files (x86)\Vim\vim82\vim.exe"
Set-Alias vim "C:\Program Files (x86)\Vim\vim82\vim.exe"

function lsCommand {
    C:\Users\yurisi\.cargo\bin\exa.exe -a $args
}

sal ls lsCommand

function touch {
   New-Item -type file $args
}


function exp {
    if($args){
        Invoke-Item $args
    }else{
        Invoke-Item .
    } 
}

Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineOption -HistoryNoDuplicates
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key "Ctrl+f" -Function ForwardWord