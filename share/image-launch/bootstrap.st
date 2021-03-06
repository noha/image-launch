Author fullName: 'startup script'.
CommandLineArguments compile: 'optionAt: aString ifPresent: aBlock
   (self optionAt: aString ifAbsent: [ nil ]) ifNotNil: [:optionValue|
      aBlock value: optionValue ]'.

CommandLineArguments default optionAt: 'imagelaunch-dir' ifPresent: [:dir|
   dir asFileReference allFiles sort do: [ :file|
      (Smalltalk at: #Compiler ifAbsent: [ Smalltalk compiler ])
         evaluate: file contents
         for: CommandLineArguments default
         logged: false.
]].
