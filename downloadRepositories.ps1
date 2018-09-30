$repositories = 
                ("\googggggg", "https://github.com/CBC-CSIT316-F18/googaloo.git", "test1"),
                ("\scccccccccc", "https://github.com/TyckoFranklin/Schedulize.git", "test2")
$localPath = (Get-Item -Path ".\").FullName

foreach ($repository in $repositories) {
    if( -Not (Test-Path -Path ($localPath + $repository[0]) ) )
    {
        New-Item -ItemType directory -Path ($localPath + $repository[0])
    }
   cd ($localPath + $repository[0])
   & git clone $repository[1] $repository[2]
   cd $localPath
 }
