Author fullName: 'startup script'.
CommandLineArguments compile: 'optionAt: aString ifPresent: aBlock
   (self optionAt: aString ifAbsent: [ nil ]) ifNotNil: [:optionValue|
      aBlock value: optionValue ]'.

CommandLineArguments default optionAt: 'imagelaunch-dir' ifPresent: [:dir|
   dir asFileReference allFiles do: [ :file|
      Compiler
         evaluate: file readStream contentsOfEntireFile
         for: CommandLineArguments default
         logged: false.
]].
