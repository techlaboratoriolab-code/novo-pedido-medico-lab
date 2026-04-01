module.exports = function handler(req, res) {
    if (req.method && req.method !== 'GET') {
        res.status(405).json({ error: 'Method not allowed' });
        return;
    }

    const supabaseUrl = process.env.SUPABASE_URL;
    const supabaseAnonKey = process.env.SUPABASE_ANON_KEY || process.env.SUPABASE_KEY;

    if (!supabaseUrl || !supabaseAnonKey) {
        res.status(500).json({
            error: 'Supabase env vars não configuradas no servidor (SUPABASE_URL e SUPABASE_ANON_KEY ou SUPABASE_KEY).'
        });
        return;
    }

    res.status(200).json({
        supabaseUrl,
        supabaseAnonKey
    });
};