$urls = @{
    '1_daejeon_station.jpg' = 'https://picsum.photos/seed/station/800/600.jpg'
    '3_daecheongho.jpg' = 'https://picsum.photos/seed/lake/800/600.jpg'
    '4_jeongjiyong.jpg' = 'https://picsum.photos/seed/hanok/800/600.jpg'
    '6_sikjangsan.jpg' = 'https://picsum.photos/seed/mountain/800/600.jpg'
}

foreach ($k in $urls.Keys) {
    Write-Host "Downloading $k..."
    Invoke-WebRequest -Uri $urls[$k] -OutFile "images\$k"
}
