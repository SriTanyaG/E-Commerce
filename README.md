
# 🛍️ Full-Featured E-Commerce Web Application (Backend)

This is a comprehensive backend for a full-fledged e-commerce platform built with **Node.js**, **Express.js**, and **PostgreSQL**. It powers essential e-commerce features such as product listings, cart management, wishlists, user authentication, and order processing.

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
| PostgreSQL    | Database                         |
| bcryptjs      | Password encryption              |
| xlsx          | Excel data import/export         |
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

### 3. Configure PostgreSQL

Make sure PostgreSQL is installed and running. Create a database (e.g., `EcommerceM`), and update your `app.js`:

```js
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'EcommerceM',
  password: 'your_password',
  port: 5432,
});
```

> Note: You can import product or user data from `Ecommerce.xlsx` if needed using the `xlsx` library.

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

## 📊 Excel Data (Optional)

- The `Ecommerce.xlsx` file can be used to seed the database with products or users.
- The `xlsx` package is already included in dependencies for parsing.

---

## 📦 Future Ideas

- ✅ Admin dashboard for product/order management
- ✅ Full CRUD APIs for products and users
- ✅ Email notifications
- ✅ Payment gateway integration (Stripe, Razorpay, etc.)
- ✅ Token-based authentication (JWT)
- ✅ Pagination & search filtering

---

## 📝 License

This project is licensed under the [MIT License](LICENSE).
