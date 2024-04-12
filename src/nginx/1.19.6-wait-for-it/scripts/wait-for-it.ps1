param(
    [string]$address,
    [int]$timeout = 10, # 默认超时时间为10秒
    [int]$Interval = 5 # 默认间隔时间为5秒
    
)

function Test-Connection {
    param(
        [string]$IpAddress,
        [int]$Port,
        [int]$WaitTimeout
    )
    try {
        $tcpClient = New-Object System.Net.Sockets.TcpClient
        $asyncResult = $tcpClient.BeginConnect($IpAddress, $Port, $null, $null)
        $result = $asyncResult.AsyncWaitHandle.WaitOne($WaitTimeout * 1000, $false)
        $tcpClient.Close()
        return $result
    }
    catch {
        return $false
    }
}

$addressArr = $address.Split(':')
$IpAddress = $addressArr[0]
$Port = $addressArr[1]
$WaitTimeout = $timeout


while ($true) {
    $result = Test-Connection -IpAddress $IpAddress -Port $Port -WaitTimeout $WaitTimeout
    if ($result) {
        Write-Host "${IpAddress}:$Port is accessible."
        break
    }
    else {
        Write-Host "${IpAddress}:$Port is not accessible. Retrying in $Interval seconds..."
        Start-Sleep -Seconds $Interval
    }
}