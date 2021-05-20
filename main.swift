struct Pessoa  {
    var nome: String
    var idade: Int
}

extension Pessoa: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self.nome = value
        self.idade = 0
    }
}

extension Pessoa: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.nome = ""
        self.idade = value
    }
}

var pessoa: Pessoa = "Lucas"
print(pessoa)

pessoa = Pessoa(27)
print(pessoa)
