Author fullName: 'startup script'.
StandardFileStream stdout nextPutAll: 'foo', String crlf.
CommandLineArguments compile: 'optionAt: aString ifPresent: aBlock
   (self optionAt: aString ifAbsent: [ nil ]) ifNotNil: [:optionValue|
      aBlock value: optionValue ]'.

CommandLineArguments default optionAt: 'imagelaunch-dir' ifPresent: [:dir|
StandardFileStream stdout nextPutAll: dir asString, String crlf.
   dir asFileReference allFiles do: [ :file|
StandardFileStream stdout nextPutAll: file asString, String crlf.
      Compiler
         evaluate: file readStream contentsOfEntireFile
         for: CommandLineArguments default
         logged: false.
]].
