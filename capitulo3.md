# 📖 Capítulo 3 — Adicionando Atributos de Batalha (ALTER TABLE)

**Introdução**  
Até aqui, os heróis têm apenas **identidade**: Nome, Raça e Idade.  
Agora vamos adicionar os **atributos de combate** que tornam cada personagem único em batalha: `Força`, `Defesa` e `Vida`.  
Para isso, usamos o comando `ALTER TABLE` para modificar a estrutura da tabela já existente.

---

### ALTER TABLE — adicionando colunas
```sql
ALTER TABLE personagem
ADD COLUMN Força  INT NOT NULL,
ADD COLUMN Defesa INT NOT NULL,
ADD COLUMN Vida   INT NOT NULL;
```

**O que cada coluna representa**  
- **Força** → poder ofensivo do personagem.  
- **Defesa** → capacidade de resistir a ataques.  
- **Vida** → energia vital, pontos que determinam se o personagem ainda está de pé.  

---

### Exemplos de uso
```sql
-- Atualizar personagens existentes com atributos básicos de combate
UPDATE personagem
SET Força = 26, Defesa = 10, Vida = 100
WHERE Nome = 'Miguel';

UPDATE personagem
SET Força = 18, Defesa = 12, Vida = 120
WHERE Nome = 'Aria';
```

---



✍️ Produzido por **Professor Fabiano de Paula**  
🔗 GitHub — [fabianorpaula](https://github.com/fabianorpaula)
