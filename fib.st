Object subclass: Fibonacci [

	generateFirst: n [
		| list |
		list := OrderedCollection with: 0 with: 1.
		3 to: n do: [:i | 
			list add: ((list at: (i - 1)) + (list at: (i - 2))).
		].
		^ list
	]
].

| fib numbers n |
Transcript show: 'Digite a quantidade de dígitos de fibonacci que você deseja: '; flush.
n := (FileStream stdin nextLine) asInteger.
fib := Fibonacci new.
numbers := fib generateFirst: n.
numbers printNl.
