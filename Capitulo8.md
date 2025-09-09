# 📖 Capítulo 8 — Criando a Tabela Mochila (Relacionamento com Personagem)

## Introdução

Agora que já temos **personagens**, **classes** e **itens**, precisamos de um espaço para que os personagens guardem seus itens. Esse espaço será representado pela **tabela `mochila`**.

Aqui vamos revisar:
- Como criar uma nova tabela.
- Como relacionar essa tabela com `personagem` usando **Foreign Key**.
- Diferença entre **1:1** e **1:N** neste contexto.

---

## Conceito

- Cada personagem pode ter **apenas uma mochila**.  
- Cada mochila pertence a **um único personagem**.  
- Esse é um relacionamento **1:1 (um para um)**.

Se um personagem for apagado, sua mochila também deve desaparecer. Para isso usamos a cláusula:
```sql
ON DELETE CASCADE
```

---

## Estrutura da tabela `mochila`

```sql
CREATE TABLE `mochila` (
  `id_mochila` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_personagem` INT UNSIGNED NOT NULL,
  `capacidade_slots` INT UNSIGNED DEFAULT 20,
  `capacidade_peso` FLOAT DEFAULT 100,
  PRIMARY KEY (`id_mochila`),
  UNIQUE KEY `uk_mochila_personagem` (`id_personagem`),
  FOREIGN KEY (`id_personagem`) REFERENCES `personagem` (`id_personagem`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) CHARACTER SET utf8mb4;
```

### Explicação
- **`id_mochila`** → PK da mochila (identificador único).
- **`id_personagem`** → FK que conecta a mochila a um personagem.
- **`capacidade_slots`** → número máximo de itens que cabem na mochila (padrão: 20).
- **`capacidade_peso`** → peso máximo que a mochila aguenta (padrão: 100).
- **`UNIQUE KEY (id_personagem)`** → garante que cada personagem tenha **no máximo 1 mochila**.
- **`ON DELETE CASCADE`** → se o personagem for apagado, a mochila também será.

---

## Inserindo mochilas

```sql
-- Criar mochila para o personagem com id = 1
INSERT INTO `mochila` (id_personagem, capacidade_slots, capacidade_peso)
VALUES (1, 25, 120);

-- Criar mochila para o personagem com id = 2 (usando valores padrão)
INSERT INTO `mochila` (id_personagem)
VALUES (2);
```

---

## Consultando mochilas

```sql
-- Ver todas as mochilas
SELECT * FROM `mochila`;

-- Ver apenas id_personagem e capacidade
SELECT id_personagem, capacidade_slots, capacidade_peso FROM `mochila`;

-- Ver mochilas com capacidade maior que 20 slots
SELECT * FROM `mochila` WHERE capacidade_slots > 20;
```

---

## 📝 Tarefas de Assimilação — Capítulo 8

1. Crie a tabela `mochila` com a FK para `personagem`.
2. Insira uma mochila para o personagem com `id_personagem = 3`.
3. Insira uma mochila para o personagem com `id_personagem = 4`, com capacidade de 30 slots e 150 de peso.
4. Liste todas as mochilas cadastradas.
5. Liste apenas `id_personagem` e `capacidade_slots`.
6. Mostre todas as mochilas com `capacidade_peso > 120`.
7. Mostre todas as mochilas com `capacidade_slots = 20` (padrão).
8. Explique a diferença entre `ON DELETE CASCADE` e `ON DELETE SET NULL`.
9. Explique por que usamos `UNIQUE KEY (id_personagem)` na mochila.
10. Explique por que esse relacionamento é considerado **1:1**.

---

## ✅ Respostas esperadas

1. **Criar tabela**
```sql
CREATE TABLE mochila (...);
```

2. **Inserir para personagem 3**
```sql
INSERT INTO mochila (id_personagem) VALUES (3);
```

3. **Inserir para personagem 4**
```sql
INSERT INTO mochila (id_personagem, capacidade_slots, capacidade_peso)
VALUES (4, 30, 150);
```

4. **Listar todas**
```sql
SELECT * FROM mochila;
```

5. **Listar apenas id_personagem e slots**
```sql
SELECT id_personagem, capacidade_slots FROM mochila;
```

6. **Mochilas com peso > 120**
```sql
SELECT * FROM mochila WHERE capacidade_peso > 120;
```

7. **Mochilas com 20 slots**
```sql
SELECT * FROM mochila WHERE capacidade_slots = 20;
```

8. **Explicação**  
- `ON DELETE CASCADE` → apaga a mochila junto com o personagem.  
- `ON DELETE SET NULL` → deixaria a mochila sem dono (`id_personagem = NULL`).

9. **Explicação**  
Porque cada personagem pode ter **apenas uma mochila**. Se não fosse `UNIQUE`, poderíamos cadastrar várias mochilas para o mesmo personagem.

10. **Explicação**  
O relacionamento é **1:1** porque cada personagem se liga a no máximo **uma** mochila, e cada mochila pertence a exatamente **um** personagem.

---

✍️ Produzido por **Professor Fabiano de Paula**  
🔗 GitHub — [fabianorpaula](https://github.com/fabianorpaula)

