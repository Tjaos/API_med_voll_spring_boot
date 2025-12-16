-- 1. adiciona a coluna
ALTER TABLE medicos
ADD COLUMN telefone VARCHAR(20);

-- 2. garante valor para registros antigos
UPDATE medicos
SET telefone = '000000000'
WHERE telefone IS NULL;

-- 3. aplica a restrição
ALTER TABLE medicos
ALTER COLUMN telefone SET NOT NULL;
