# 📖 Capítulo 5 — Chave Primária (Primary Key)

## Introdução

Toda tabela precisa de uma forma de **identificar unicamente** cada linha.  
É para isso que serve a **Primary Key** (PK).  
Ela garante três coisas importantes:

1. **Unicidade** → não permite dois registros iguais.  
2. **Não nulo** → não pode ser vazio (NULL).  
3. **Identidade oficial** → serve de referência para relacionamentos (ex: inventário do personagem).

No nosso caso, cada personagem precisa de um **número único** para ser identificado.  
Esse número é o **`id_personagem`**.

---

## Criando uma Primary Key

### Estrutura da tabela com PK

```sql
CREATE TABLE personagem (
  id_personagem INT UNSIGNED NOT NULL AUTO_INCREMENT,
  Nome  VARCHAR(50) NOT NULL,
  Raça  VARCHAR(30) NOT NULL,
  Idade INT NOT NULL,
  PRIMARY KEY (id_personagem)
) CHARACTER SET utf8mb4;
```

### O que cada parte significa?
- **`id_personagem`** → coluna criada só para identificar cada personagem.  
- **`INT UNSIGNED`** → número inteiro sem sinal (não permite negativo).  
- **`AUTO_INCREMENT`** → cada novo personagem recebe automaticamente o próximo número (1, 2, 3...).  
- **`PRIMARY KEY`** → define que essa coluna é a identidade única da tabela.  

---

## Exemplo prático

```sql
INSERT INTO personagem (Nome, Raça, Idade)
VALUES ('Miguel', 'Orc', 29);

INSERT INTO personagem (Nome, Raça, Idade)
VALUES ('Aria', 'Elfa', 120);
```

Se rodarmos esses dois `INSERT`, o banco automaticamente vai gerar:

| id_personagem | Nome   | Raça | Idade |
|---------------|--------|------|-------|
| 1             | Miguel | Orc  | 29    |
| 2             | Aria   | Elfa | 120   |

---

## Consultando pelo ID

```sql
-- Buscar o personagem com id = 1
SELECT * FROM personagem WHERE id_personagem = 1;

-- Buscar o personagem com id = 2
SELECT * FROM personagem WHERE id_personagem = 2;
```

Isso é muito útil porque o **ID nunca se repete** e sempre aponta para um personagem específico.  
Diferente do `Nome`, que pode ter repetidos (ex: dois "João").

---

## 📝 Tarefas de Assimilação — Capítulo 5

1. Crie a tabela `personagem` com a coluna `id_personagem` como chave primária.  
   ```sql
   CREATE TABLE personagem (
     id_personagem INT UNSIGNED NOT NULL AUTO_INCREMENT,
     Nome VARCHAR(50) NOT NULL,
     Raça VARCHAR(30) NOT NULL,
     Idade INT NOT NULL,
     PRIMARY KEY (id_personagem)
   );
   ```

2. Insira 3 personagens diferentes e veja como o `id_personagem` é preenchido automaticamente.  
   ```sql
   INSERT INTO personagem (Nome, Raça, Idade)
   VALUES ('Brom', 'Anão', 65),
          ('Selene', 'Humana', 24),
          ('Thorgar', 'Orc', 31);
   ```

3. Faça uma busca pelo personagem de `id_personagem = 2`.  
   ```sql
   SELECT * FROM personagem WHERE id_personagem = 2;
   ```

4. Insira outro personagem e verifique se o `id_personagem` foi incrementado.  
   ```sql
   INSERT INTO personagem (Nome, Raça, Idade)
   VALUES ('Lyria', 'Elfa', 210);

   SELECT * FROM personagem;
   ```

5. Explique por que não é recomendado usar `Nome` como chave primária.  
   **Resposta**: Porque nomes podem se repetir (ex.: dois personagens chamados "João"). A Primary Key deve ser única e estável, por isso usamos um número sequencial (`id_personagem`).

---

✍️ Produzido por **Professor Fabiano de Paula**  
🔗 GitHub — [fabianorpaula](https://github.com/fabianorpaula)

