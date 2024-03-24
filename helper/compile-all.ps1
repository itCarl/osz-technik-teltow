$base = $PSScriptRoot

# search all .tex files in all /Berichtshefter/LaTeX directories and sub-directories
# exclude templates
$files = Get-ChildItem -Recurse "$($base)\..\*" -Include *.tex | ? { $_.FullName -inotmatch 'templates' }
$total = ( $files | Measure-Object).Count
$j = 0

foreach ($f in $files)
{
    $name = $f.fullname.Split("\")
    $filename = $name[-1]
    $path = $f.fullname.replace("\$($filename)","")

    #Write-Output $f.fullname
    #Write-Output $path
    #Write-Output $filename

    $j++
    Write-Progress -Activity "Compiling LaTeX files... $filename" `
        -PercentComplete (($j*100)/$total) `
        -Status "$(([math]::Round((($j)/$total * 100),0))) %"

    Set-Location $path
    latexmk -pdf -quiet $f.fullname
    Set-Location ..

    Write-Output "Successfully compiled file $($filename)..."
}

#return to script location
Set-Location $base
