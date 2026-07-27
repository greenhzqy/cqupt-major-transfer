# Setup GitHub Pages
$headers = @{
    'Accept' = 'application/vnd.github+json'
    'X-GitHub-Api-Version' = '2022-11-28'
}
$body = '{"source":{"branch":"main","path":"/knowledge-base"},"build_type":"legacy"}'

try {
    $response = Invoke-RestMethod -Uri 'https://api.github.com/repos/greenhzqy/cqupt-major-transfer/pages' -Method Post -Headers $headers -Body $body -ContentType 'application/json'
    Write-Output "Pages configured: $response"
} catch {
    Write-Output "Need auth. Error: " + $_.Exception.Message
}
