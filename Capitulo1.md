
# 📘 Curso Prático de SQL para RPG: Criando e Manipulando Personagens

Aprenda SQL passo a passo montando o “mundo” do seu RPG: você cria o banco, define a tabela de personagens, consulta dados e, por fim, adiciona e evolui heróis.  
Cada capítulo traz **introdução**, **código formatado** e **explicação detalhada** dos elementos SQL usados.

---

# 📖 Capítulo 1 — Criando o Mundo (Banco e Tabela)

## Introdução

Antes de existirem heróis, precisamos do **mundo** onde viverão. Esse mundo é o **banco de dados**.  
Dentro dele criaremos a primeira versão da tabela `personagem` **apenas com identidade**: `Nome`, `Raça` e `Idade`.  
(*Atributos de batalha como `Força`, `Defesa` e `Vida` virão depois.*)

---

## 1) Criar o banco e entrar nele

```sql
CREATE DATABASE jogo;
USE jogo;
```

- `CREATE DATABASE jogo;` → cria o banco chamado **jogo**
- `USE jogo;` → define que os próximos comandos atuarão dentro do banco **jogo**

---

## 2) Criar a tabela `personagem` (versão inicial — apenas identidade)

```sql
CREATE TABLE personagem (
  Nome  VARCHAR(50) NOT NULL,
  Raça  VARCHAR(30) NOT NULL,
  Idade INT         NOT NULL
) CHARACTER SET utf8mb4;
```

### 💡 Detalhes linha a linha:

- `Nome VARCHAR(50) NOT NULL` → texto de até 50 caracteres; obrigatório
- `Raça VARCHAR(30) NOT NULL` → texto de até 30 caracteres (ex: Elfo, Orc, Humano…); obrigatório
- `Idade INT NOT NULL` → idade em anos; obrigatório
- `CHARACTER SET utf8mb4` → garante suporte a acentos e emojis

---

## 3) Exemplos iniciais

```sql
-- Inserindo personagens iniciais (sem atributos de batalha ainda)
INSERT INTO personagem (Nome, Raça, Idade)
VALUES ('Miguel', 'Orc', 29);

INSERT INTO personagem (Nome, Raça, Idade)
VALUES ('Aria', 'Elfa', 120);
```

---

## 📝 Tarefas de Assimilação — Capítulo 1

### ✅ 1. Crie um banco de dados chamado `aventura`.

```sql
CREATE DATABASE aventura;
```

### ✅ 2. Acesse o banco `aventura`.

```sql
USE aventura;
```

### ✅ 3. Crie uma tabela chamada `monstro`

```sql
CREATE TABLE monstro (
  Nome VARCHAR(40) NOT NULL,
  Tipo VARCHAR(20) NOT NULL,
  Idade INT NOT NULL
) CHARACTER SET utf8mb4;
```

### ✅ 4. Diferença entre `CHAR` e `VARCHAR`

- `CHAR(n)` → sempre ocupa n posições (mesmo que o conteúdo seja menor).
- `VARCHAR(n)` → ocupa apenas o necessário até o limite n.

### ✅ 5. Por que usamos `NOT NULL`?

- Para garantir que os campos **não fiquem vazios** (valores obrigatórios).

### ✅ 6. Crie a tabela `jogador`

```sql
CREATE TABLE jogador (
  Nome VARCHAR(50) NOT NULL,
  Classe VARCHAR(30) NOT NULL
);
```

### ✅ 7. Insira um personagem humano

```sql
INSERT INTO personagem (Nome, Raça, Idade)
VALUES ('João', 'Humano', 25);
```

### ✅ 8. Insira um personagem elfo

```sql
INSERT INTO personagem (Nome, Raça, Idade)
VALUES ('Elandra', 'Elfa', 200);
```

### ✅ 9. Comando para selecionar o banco

```sql
USE nome_do_banco;
```

### ✅ 10. Por que `utf8mb4`?

- Suporta todos os caracteres Unicode, incluindo **emojis**, enquanto `utf8` padrão não.

---

✍️ Produzido por **Professor Fabiano de Paula**  
🔗 GitHub — [fabianorpaula](https://github.com/fabianorpaula)
