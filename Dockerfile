# Container image that runs your code
FROM blazerunner/blazemeter:1.2
#FROM dnyaneshwarnagre/blazemeter:1.4.7

CMD pwsh /Blazemeter-run.ps1 -apikey $env:INPUT_APIKEY -apisecret $env:INPUT_APISECRET -testidinput $env:INPUT_TESTID -showtaillog 'true' -inputallfiles  '/github/workspace/Supporting Files' -workspaceid $env:INPUT_WORKSPACEID -datamodelid $env:INPUT_DATAMODELID -modeldata $env:INPUT_MODELDATA -Uploadfilechk 'true' -createtest $env:INPUT_CREATETEST -inputstartfile $env:INPUT_INPUTSTARTFILE -testname $env:INPUT_TESTNAME -projectid $env:INPUT_PROJECTID -ContinuePipeline $env:INPUT_CONTINUEPIPELINE -jmeterproperties $env:jmeterproperties
