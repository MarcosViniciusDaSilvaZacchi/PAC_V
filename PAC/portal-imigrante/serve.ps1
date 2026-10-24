param([int]$Port = 5500)

$Root = Split-Path -Parent $MyInvocation.MyCommand.Definition
$Prefix = "http://localhost:$Port/"

$Listener = New-Object System.Net.HttpListener
$Listener.Prefixes.Add($Prefix)
$Listener.Start()
Write-Host "Servidor HTTP rodando em $Prefix"

while ($Listener.IsListening) {
    $Context = $Listener.GetContext()
    $Request = $Context.Request
    $Response = $Context.Response

    $UrlPath = $Request.Url.LocalPath.TrimStart('/')
    if ([string]::IsNullOrWhiteSpace($UrlPath) -or $UrlPath -eq "/") {
        $UrlPath = "index.html"
    }

    $FilePath = Join-Path $Root $UrlPath

    if (Test-Path $FilePath -PathType Leaf) {
        $Ext = [System.IO.Path]::GetExtension($FilePath).ToLower()
        switch ($Ext) {
            ".html" { $ContentType = "text/html; charset=utf-8" }
            ".png"  { $ContentType = "image/png" }
            ".jpg"  { $ContentType = "image/jpeg" }
            ".css"  { $ContentType = "text/css" }
            ".js"   { $ContentType = "application/javascript" }
            default { $ContentType = "application/octet-stream" }
        }

        $Bytes = [System.IO.File]::ReadAllBytes($FilePath)
        $Response.ContentType = $ContentType
        $Response.ContentLength64 = $Bytes.Length
        $Response.StatusCode = 200
        $Response.OutputStream.Write($Bytes, 0, $Bytes.Length)
    } else {
        $Response.StatusCode = 404
        $Buffer = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found")
        $Response.OutputStream.Write($Buffer, 0, $Buffer.Length)
    }

    $Response.OutputStream.Close()
}
