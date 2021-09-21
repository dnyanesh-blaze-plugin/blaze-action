# Container image that runs your code
FROM dnyaneshwarnagre/blazemeter:1.1

CMD pwsh /Blazemeter-run.ps1 -apikey $env:INPUT_APIKEY -apisecret $env:INPUT_APISECRET -testidinput $env:INPUT_TESTID -showtaillog 'true' -inputallfiles  '/github/workspace/Supporting Files' -uploadfilechk 'true' -workspaceid $env:INPUT_WORKSPACEID -datamodelid $env:INPUT_DATAMODELID -modeldata $env:INPUT_MODELDATA