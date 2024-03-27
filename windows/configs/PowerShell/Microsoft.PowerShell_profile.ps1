oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/catppuccin_macchiato.omp.json" | Invoke-Expression
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-Alias ls lsd
Set-Alias vim nvim