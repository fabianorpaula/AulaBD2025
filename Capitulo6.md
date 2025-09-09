# 📖 Capítulo 6 — Relacionamentos e Chave Estrangeira (FK)

## Introdução
No nosso RPG, as tabelas não vivem isoladas: personagens **pertencem** a uma classe, mochilas **pertencem** a um personagem etc. Para modelar essas conexões, usamos **relacionamentos** e **chaves estrangeiras (Foreign Keys / FK)**.

Neste capítulo você vai:
- Relembrar os **tipos de relacionamento** (1:1, 1:N, N:N) com exemplos de RPG.
- **Criar a tabela `classe`** do zero (nova tabela do mundo).
- **Alterar a tabela `personagem` existente** para incluir uma FK que aponte para `classe` (não vamos recriar `personagem`).
- Popular `classe` e **atribuir classes aos personagens** sem usar `JOIN` ainda.

> **Lembrete**: As aulas são contínuas. A tabela `personagem` **já existe** dos capítulos anteriores. Aqui faremos **apenas as alterações necessárias** para funcionar com relacionamentos.

---

## Tipos de Relacionamentos (com exemplos de RPG)

1) **Um-para-Um (1:1)**  
   *Ex.:* Um `personagem` tem **uma** `mochila`, e cada `mochila` pertence a **um** `personagem`.

2) **Um-para-Muitos (1:N)**  
   *Ex.:* Uma `classe` pode ter **muitos** `personagem`.
   Já cada `personagem` pertence a **uma** `classe`.

3) **Muitos-para-Muitos (N:N)**  
   *Ex.:* `personagem` e `item`: vários personagens podem ter vários itens.  
   (Mais à frente veremos como modelar com uma tabela intermediária.)

---

## Passo a passo — criando `classe` e ligando a `personagem`

### 1) Criar a nova tabela `classe`
```sql
CREATE TABLE `classe` (
  `id_classe` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `NomeClasse` VARCHAR(60) NOT NULL,
  `DescricaoClasse` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id_classe`)
) CHARACTER SET utf8mb4;
```
**Explicação simples:**
- `id_classe` → identificador único (PK) da classe.
- `NomeClasse` → nome da classe (ex.: Mago, Cavaleiro...).
- `DescricaoClasse` → texto opcional com detalhes.

### 2) Alterar a tabela `personagem` existente
> **Não vamos recriar `personagem`**. Apenas adicionaremos a coluna de vínculo e a restrição FK.
```sql
ALTER TABLE `personagem`
  ADD COLUMN `id_classe` INT UNSIGNED NULL AFTER `id_personagem`;

ALTER TABLE `personagem`
  ADD CONSTRAINT `fk_personagem_classe`
  FOREIGN KEY (`id_classe`) REFERENCES `classe`(`id_classe`)
  ON DELETE SET NULL
  ON UPDATE CASCADE;
```
**Por que assim?**
- `id_classe` será a **chave estrangeira** em `personagem`.
- `ON DELETE SET NULL` → se a classe for removida, o personagem **não some**; apenas fica sem classe (campo vira `NULL`).
- `ON UPDATE CASCADE` → se o `id_classe` mudar, a alteração é propagada.

### 3) Popular `classe` com alguns registros
```sql
INSERT INTO `classe` (`NomeClasse`, `DescricaoClasse`) VALUES
 ('Cavaleiro', 'Usa armadura pesada'),
 ('Mago',      'Usa magia para atacar'),
 ('Arqueiro',  'Ataca à distância'),
 ('Curandeiro','Recupera os aliados');
```

### 4) Atribuir uma classe aos personagens (sem JOIN)
> Por enquanto, use **IDs conhecidos** ou filtros simples no `WHERE`.
```sql
-- Ex.: definir Selene como Mago (id_classe = 2)
UPDATE `personagem`
SET `id_classe` = 2
WHERE `Nome` = 'Selene';

-- Ex.: definir Kael como Arqueiro (id_classe = 3)
UPDATE `personagem`
SET `id_classe` = 3
WHERE `Nome` = 'Kael';
```

### 5) Conferir com consultas simples
```sql
-- Ver todas as classes
SELECT * FROM `classe`;

-- Ver os personagens que já têm classe associada (id_classe não nulo)
SELECT `id_personagem`, `Nome`, `id_classe`
FROM `personagem`
WHERE `id_classe` IS NOT NULL;

-- Ver os personagens que ainda não têm classe
SELECT `id_personagem`, `Nome`
FROM `personagem`
WHERE `id_classe` IS NULL;
```

---

## 📝 Tarefas de Assimilação — Capítulo 6  
> **Reforço:** Não recrie `personagem`. Apenas altere o que for pedido e trabalhe com a nova tabela `classe`.

1. Crie a tabela `classe` com PK `id_classe` (auto incremento, unsigned).
2. Insira as classes **Berserker** ("Sua fúria aumenta a força") e **Ilusionista** ("Manipula a mente do inimigo").
3. Liste todas as classes cadastradas.
4. Adicione a coluna `id_classe` (INT UNSIGNED, permite NULL) na tabela `personagem` existente.
5. Crie a **FK** `fk_personagem_classe` ligando `personagem.id_classe` a `classe.id_classe` com `ON DELETE SET NULL` e `ON UPDATE CASCADE`.
6. Atribua `id_classe = 1` para um personagem à sua escolha usando `WHERE Nome = ...`.
7. Atribua `id_classe = 2` para um personagem **Humano** específico (escolha pelo `Nome`).
8. Liste apenas `id_personagem`, `Nome` e `id_classe` dos personagens que **já têm** classe definida.
9. Liste os personagens que **ainda não têm** `id_classe` definida.
10. Insira mais **duas** novas classes de sua preferência e mostre o conteúdo completo da tabela `classe` novamente.

---

## ✅ Respostas esperadas

1. **Criar `classe`**
```sql
CREATE TABLE `classe` (
  `id_classe` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `NomeClasse` VARCHAR(60) NOT NULL,
  `DescricaoClasse` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id_classe`)
) CHARACTER SET utf8mb4;
```

2. **Inserir Berserker e Ilusionista**
```sql
INSERT INTO `classe` (`NomeClasse`, `DescricaoClasse`) VALUES
 ('Berserker',  'Sua fúria aumenta a força'),
 ('Ilusionista','Manipula a mente do inimigo');
```

3. **Listar classes**
```sql
SELECT * FROM `classe`;
```

4. **Adicionar `id_classe` à `personagem`**
```sql
ALTER TABLE `personagem`
  ADD COLUMN `id_classe` INT UNSIGNED NULL AFTER `id_personagem`;
```

5. **Criar a FK**
```sql
ALTER TABLE `personagem`
  ADD CONSTRAINT `fk_personagem_classe`
  FOREIGN KEY (`id_classe`) REFERENCES `classe`(`id_classe`)
  ON DELETE SET NULL
  ON UPDATE CASCADE;
```

6. **Atribuir `id_classe = 1` a um personagem pelo nome**
```sql
UPDATE `personagem`
SET `id_classe` = 1
WHERE `Nome` = 'Kael';
```

7. **Atribuir `id_classe = 2` a um humano específico**
```sql
UPDATE `personagem`
SET `id_classe` = 2
WHERE `Nome` = 'Selene' AND `Raça` = 'Humana';
```

8. **Listar quem já tem classe**
```sql
SELECT `id_personagem`, `Nome`, `id_classe`
FROM `personagem`
WHERE `id_classe` IS NOT NULL;
```

9. **Listar quem ainda não tem classe**
```sql
SELECT `id_personagem`, `Nome`
FROM `personagem`
WHERE `id_classe` IS NULL;
```

10. **Inserir mais duas classes e listar tudo**
```sql
INSERT INTO `classe` (`NomeClasse`, `DescricaoClasse`) VALUES
  ('Paladino', 'Equilíbrio entre defesa e cura'),
  ('Assassino', 'Ataques furtivos e críticos');

SELECT * FROM `classe`;
```

---

✍️ Produzido por **Professor Fabiano de Paula**  
🔗 GitHub — [fabianorpaula](https://github.com/fabianorpaula)

