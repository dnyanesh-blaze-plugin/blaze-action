# Container image that runs your code
FROM dnyaneshwarnagre/blazemeter:1.0

CMD pwsh /Blazemeter-run.ps1 -apikey $env:INPUT_APIKEY -apisecret $env:INPUT_APISECRET -testidinput $env:INPUT_TESTID -showtaillog 'true' -inputallfiles  '/github/workspace/Supporting Files' -uploadfilechk 'true'