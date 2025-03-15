import { getConnection } from '@/lib/db';

export async function GET() {
    try {
        const connection = await getConnection();
        const [rows] = await connection.execute(`SELECT * FROM view_popular_regions;`);
        await connection.end();

        return new Response(JSON.stringify(rows), {
            status: 200,
            headers: { 'Content-Type': 'application/json' },
        });
    } catch (error) {
        return new Response(JSON.stringify({ error: error.message }), {
            status: 500,
            headers: { 'Content-Type': 'application/json' },
        });
    }
}