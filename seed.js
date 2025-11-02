const xlsx = require("xlsx");
const { Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "EcommerceM",
  password: "2850",
  port: 5432,
});

async function importExcel() {
  const workbook = xlsx.readFile("Ecommerce.xlsx");
  const sheet = workbook.Sheets[workbook.SheetNames[0]];
  const rows = xlsx.utils.sheet_to_json(sheet);

  for (const r of rows) {
    try {
      await pool.query(
        `INSERT INTO products (uniq_id, product_name, retail_price, discounted_price, image, description)
         VALUES ($1, $2, $3, $4, $5, $6)
         ON CONFLICT (uniq_id) DO NOTHING`,
        [
          r.uniq_id,
          r.product_name,
          r.retail_price,
          r.discounted_price,
          r.image, 
          r.description,
        ]
      );
    } catch (err) {
      console.error("❌ Error inserting:", r.product_name, err.message);
    }
  }

  console.log("✅ All Excel rows imported successfully!");
  await pool.end();
}

importExcel();
