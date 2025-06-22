///?Conceito Básico de Recursão
///?Exemplo: Função Fatorial

///?O cálculo do fatorial de um número é um exemplo clássico de recursão. O fatorial de n
///?(denotado como n!) é o produto de todos os inteiros positivos menores ou iguais a n.
///?A definição recursiva do fatorial é:

///?n! = n * (n-1)!
///?Base: 0! = 1

int fatorial(int n) {
  if (n <= 1) {
    return n;
  } else {
    return n * fatorial(n - 1);
  }
}

void main() {
  print(fatorial(5)); // Saída: 120
}
