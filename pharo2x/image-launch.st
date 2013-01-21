"bootstrap helper class"
(Smalltalk at: #CommandLineArguments ifAbsent: [ nil ]) 
   ifNotNil: [ 
      imageLaunchPath := CommandLineArguments default arguments second.
      (imageLaunchPath, '/bin/StartScript.st') asFileReference fileIn ]
   ifNil: [ 
      imageLaunchPath := CommandLine uniqueInstance allParameters second.
      ((FileDirectory default ) readOnlyFileNamed: imageLaunchPath,'/bin/StartScript.st') fileIn ].
(Smalltalk at: #StartScript) start: imageLaunchPath
