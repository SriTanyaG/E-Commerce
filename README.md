
# 🛍️ Full-Featured E-Commerce Web Application

This is a comprehensive full-stack e-commerce platform built with **Node.js**, **Express.js**, and **Supabase (PostgreSQL)**. It powers essential e-commerce features such as product listings, cart management, wishlists, user authentication, and order processing.

---

## 🚀 Features

- 🔐 **User Authentication**: Secure registration and login using hashed passwords (bcrypt)
- 🛒 **Shopping Cart**: Add, update, and remove items
- 💖 **Wishlist**: Save products for later
- 📦 **Product Management**: Browse and search product listings
- 💰 **Checkout System**: Order placement and basic billing
- 📊 **Excel Integration**: Load product/user data from `.xlsx` files
- 🎨 **Static Frontend Integration**: Serves HTML pages from the `public/` folder

---

## 🧱 Tech Stack

| Technology    | Purpose                          |
|---------------|----------------------------------|
| Node.js       | Runtime environment              |
| Express.js    | Web framework                    |
| Supabase      | PostgreSQL cloud database        |
| bcryptjs      | Password encryption              |
| dotenv        | Environment variable management  |
| body-parser   | Parsing HTTP request bodies      |

---

## 📁 Project Structure

```
dbms 2/
├── app.js                 # Main application server
├── prod.js                # Production config (optional)
├── Ecommerce.xlsx         # Product/user data (Excel format)
├── public/                # Static HTML files (frontend)
│   ├── index.html         # Home page
│   ├── login.html         # Login page
│   └── register.html      # Registration page
├── package.json           # Project metadata
├── package-lock.json      # Dependency lock file
├── archive.zip            # (Extra data/resources)
├── kaglle.zip             # (Extra data/resources)
├── node_modules/          # Installed dependencies
```

---

## ⚙️ Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/dbms-ecommerce.git
cd dbms-ecommerce
```

### 2. Install Dependencies

```bash
npm install
```

## 🗃️ Database Setup (Supabase)

This project uses **Supabase** as the cloud PostgreSQL database. Supabase provides a free tier with 500MB database storage and is perfect for development and small-scale production applications.

### Database Setup Steps:

1. **Create Supabase Account:**
   - Go to [supabase.com](https://supabase.com)
   - Sign up with GitHub (recommended)
   - Create a new project

2. **Create Database Schema:**
   - Go to **SQL Editor** in Supabase dashboard
   - Copy and paste the SQL from `database/schema.sql`
   - Run the query to create all tables

3. **Import Product Data (CSV):**
   - Supabase has a built-in CSV import feature
   - Go to **Table Editor** → **products** table
   - Click **"Import data"** → **"Import CSV"**
   - Upload `Ecommerce.csv` file
   - Map columns and import
   - ✅ Product data imported from Kaggle dataset!

4. **Get Connection String:**
   - Go to **Settings** → **Database**
   - Copy the **Connection string** (URI format)
   - Add it to your `.env` file:
     ```
     DB_USER=YOUR_USERNAME
     DB_HOST=YOUR_HOST
     DB_DATABASE=DB_NAME
     DB_PASSWORD=YOUR_PASSWORD
     DB_PORT=PORT
     ```

> **Note:** The `.env` file is gitignored. Copy from `.env.example` and fill in your actual credentials.

### 4. Start the Server

```bash
node app.js
```

Visit: `http://localhost:3001`

---

## 🔌 API Overview

| Method | Endpoint        | Description                          |
|--------|------------------|--------------------------------------|
| GET    | `/`              | Home page                            |
| GET    | `/login`         | Login page                           |
| GET    | `/register`      | Registration page                    |
| POST   | `/register`      | Handle user registration             |
| POST   | `/login`         | Authenticate user                    |
| POST   | `/add-to-cart`   | Add item to shopping cart            |
| GET    | `/cart`          | View user's shopping cart            |
| POST   | `/wishlist`      | Add item to wishlist                 |
| GET    | `/wishlist`      | View wishlist                        |
| POST   | `/checkout`      | Complete order                       |

> Many of these endpoints interact with the database and serve static content or redirect appropriately.

---

## 📊 Data Source

- **Product Data**: The `Ecommerce.csv` file contains product data imported from **Kaggle**
- **Import Method**: Data was directly imported using **Supabase's CSV import feature**
  - Go to Supabase Table Editor
  - Select `products` table
  - Click "Import data" → "Import CSV"
  - Upload `Ecommerce.csv`
  - Map columns and import
- The CSV file is included in the repository for reference and re-import if needed.

---

## 📦 Future Ideas

- ✅ Admin dashboard for product/order management
- ✅ Full CRUD APIs for products and users
- ✅ Email notifications
- ✅ Payment gateway integration (Stripe, Razorpay, etc.)
- ✅ Token-based authentication (JWT)
- ✅ Pagination & search filtering

---
