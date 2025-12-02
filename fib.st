Object subclass: Fibonacci [].

Fibonacci class extend [
  | Sequence | 

  initialize [
    Sequence := OrderedCollection with: 0 with: 1.
  ]

	generateFirst: n [
    | size |

    Sequence ifNil: [ self initialize ].

    size := Sequence size.

    (n <= size) ifTrue: [
      ^ Sequence copyFrom: 1 to: n
    ].

		(size + 1) to: n do: [:i | 
      Sequence add: ((Sequence at: (i - 1)) + (Sequence at: (i - 2))).
		].
		^ Sequence
	]
].

Fibonacci initialize.

| numbers n |
Transcript show: 'Digite a quantidade de dígitos de fibonacci que você deseja: '; flush.
n := (FileStream stdin nextLine) asInteger.
numbers := Fibonacci generateFirst: n.
numbers printNl.
