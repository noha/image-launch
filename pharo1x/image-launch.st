"bootstrap helper class"
imageLaunchPath := CommandLine uniqueInstance allParameters second.
((FileDirectory default ) readOnlyFileNamed: imageLaunchPath,'/pharo1x/StartScript.st') fileIn.
(Smalltalk at: #StartScript) start: imageLaunchPath
