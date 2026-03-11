-- Criar tabela de pedidos médicos no Supabase
-- Execute este SQL no SQL Editor do Supabase:
-- https://supabase.com/dashboard/project/abzetdlvxjkxwrckfmeu/sql

CREATE TABLE IF NOT EXISTS pedidos_medicos (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    nome_paciente TEXT,
    nome_mae TEXT,
    telefone TEXT,
    cpf TEXT,
    data_nasc DATE,
    genero TEXT,
    convenio TEXT,
    inscricao TEXT,
    dados_complementares TEXT,
    numero_frascos TEXT,
    exames_selecionados TEXT[],
    pedido_base64 TEXT,  -- screenshot do pedido médico completo em base64 (PNG)
    data_hora_salvamento TIMESTAMPTZ DEFAULT now(),
    created_at TIMESTAMPTZ DEFAULT now()
);

-- Habilitar acesso anônimo para inserção (RLS)
ALTER TABLE pedidos_medicos ENABLE ROW LEVEL SECURITY;

-- Política: qualquer pessoa pode inserir
DROP POLICY IF EXISTS "Allow insert for all" ON pedidos_medicos;
CREATE POLICY "Allow insert for all" ON pedidos_medicos
    FOR INSERT WITH CHECK (true);

-- Política: somente usuários autenticados podem consultar (opcional)
-- Se quiser liberar leitura pública, descomente a linha abaixo:
-- CREATE POLICY "Allow select for all" ON pedidos_medicos FOR SELECT USING (true);

-- Se a tabela JÁ EXISTIA antes, rode só esta linha para adicionar a coluna:
-- ALTER TABLE pedidos_medicos ADD COLUMN IF NOT EXISTS pedido_base64 TEXT;
