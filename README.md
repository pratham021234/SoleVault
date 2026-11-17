# 👟 SoleVault - The Culture of Collecting

**A Full-Stack Sneaker Resale & Marketplace Platform**

SoleVault is a full-stack sneaker marketplace built with **Java Spring Boot, React, and MySQL / MariaDB**. Designed for sneaker enthusiasts, collectors, buyers, and independent sellers, it provides a centralized platform to discover sneakers, create listings, manage purchases, chat with sellers, exchange sneakers via trade proposals, and track orders.

![SoleVault](https://img.shields.io/badge/Project-SoleVault-black)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.3.5-brightgreen)
![React](https://img.shields.io/badge/React-18.2-blue)
![Java](https://img.shields.io/badge/Java-21-orange)
![MySQL](https://img.shields.io/badge/MySQL-8.0%20%2F%20MariaDB%2013-blue)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

## 📋 Project Information

| Attribute | Details |
|---|---|
| **Project Name** | SoleVault |
| **Category** | Full-Stack Web Application (E-Commerce & Resale Marketplace) |
| **Frontend** | React 18, Vite 5, Tailwind CSS, Lucide React |
| **Backend** | Java 21, Spring Boot 3.3.5, Spring Security, JWT |
| **Database** | MySQL 8.0 / MariaDB 13.0 |
| **ORM** | Hibernate / Spring Data JPA |
| **Authentication** | Stateless JWT (JSON Web Token) + BCrypt Password Hashing |
| **Repository** | [github.com/pratham021234/SoleVault](https://github.com/pratham021234/SoleVault) |

---

## ✨ Key Features

### 🛍️ Sneaker Marketplace & Discovery
- **Explore & Filter**: Browse sneakers with dynamic instant filtering by brand (**Nike, Adidas, New Balance, Puma, Converse, Vans**) and condition (**New, Like New, Used**).
- **Search**: Search sneakers instantly by model name and brand.
- **Product Details**: Multi-angle image galleries with depth hover effects, sizing, color, condition, pricing, and seller profiles.
- **Create & Manage Listings**: Sellers can create new sneaker listings, upload images, manage stock, and edit/delete listings.
- **Multi-Currency Support**: Instant toggle between **USD ($)** and **INR (₹)** with persistent user preference.

### 🔐 Authentication & Profile Management
- **Registration & Login**: Secure user onboarding with JWT token generation.
- **Password Security**: Passwords encrypted using industry-standard **BCrypt** hashing.
- **Role-Based Access**: User and Seller roles with protected routes and actions.
- **User Profiles**: Profile picture upload, personal biography, address, and seller mode toggle.

### 🛒 Shopping Cart & Orders
- **Cart Management**: Add sneakers to cart, modify quantities, and maintain persistent cart state.
- **Checkout Flow**: Complete receiver details, delivery address, and order placement.
- **Order Tracking**: Order lifecycle management with real-time status transitions (`PENDING` → `CONFIRMED` → `SHIPPED` → `DELIVERED` / `CANCELLED`).
- **Seller Dashboard**: Analytics for sellers displaying total active listings, order volume, and revenue.

### 💬 Buyer-Seller Messaging System
- **Direct Messaging**: Chat between buyers and sellers directly on sneaker listings.
- **Media Attachments**: Support for sharing photos, videos, and audio clips (up to 10MB).
- **Read Receipts & Unread Badges**: Real-time message status indicators (sent / read) and unread count alerts.

### 🔄 Sneaker Trade System
- **Trade Proposals**: Submit exchange proposals by selecting an offered sneaker in return for a requested listing.
- **Manage Requests**: View incoming and outgoing proposals with Accept and Decline actions.

### ⭐ Community Reviews & Ratings
- **Ratings & Reviews**: 5-star rating system with user comments for marketplace sneakers.
- **Favorites & Wishlist**: Bookmark favorite sneakers with quick-access wishlist view.

---

## 🛠️ Architecture & Tech Stack

### Architecture Overview

```text
                        SoleVault Platform
                                |
                   React Frontend Application (Port 3000)
                   [React Router, Context API, Axios, Tailwind]
                                |
                      REST APIs (HTTP / JSON)
                                |
                  Spring Boot Application (Port 8000)
       ┌────────────────────────┼────────────────────────┐
  Controllers                Services                 Security
  [REST Endpoints]     [Business Logic Layer]    [JWT Filter & BCrypt]
       └────────────────────────┼────────────────────────┘
                                |
                     Spring Data JPA & Hibernate
                                |
                   MariaDB / MySQL (Port 3306)
                   Database: `sneaker_store`
```

### Technology Breakdown

- **Frontend**:
  - React 18.2.0 (Component Architecture)
  - Vite 5 (Build tool & HMR dev server)
  - Tailwind CSS 3.3.6 (Minimalist dark/light styling)
  - Lucide React (Clean icon set)
  - Axios (HTTP client with JWT interceptors)
- **Backend**:
  - Spring Boot 3.3.5 (RESTful Web Services)
  - Spring Data JPA & Hibernate 6 (ORM)
  - Spring Security + JJWT 0.11.5 (Stateless Authentication)
  - OWASP Java HTML Sanitizer (XSS Protection)
  - Gradle 8.10.2 (Build & dependency management)
- **Database**:
  - MariaDB 13.0 / MySQL 8.0 on port 3306
  - Automatic schema migration (`ddl-auto=update`)

---

## 🚀 Quick Start Guide

### Prerequisites
- **Java JDK 21**
- **Node.js 18+** & npm
- **MySQL 8.0** or **MariaDB 13.0** (running on port 3306)

---

### One-Click Startup (Windows)

We provide preconfigured scripts in the project root:

1. **Start Everything**:
   Double-click `start-solevault.bat` (or run it in terminal):
   ```cmd
   start-solevault.bat
   ```
   *This automatically starts MariaDB, the Spring Boot backend, the Vite frontend, and opens [http://localhost:3000](http://localhost:3000) in your browser.*

2. **Stop Everything**:
   Double-click `stop-solevault.bat`:
   ```cmd
   stop-solevault.bat
   ```

---

### Manual Startup

#### Step 1: Start the Database
Ensure MySQL or MariaDB is running on port 3306 and create the database:
```sql
CREATE DATABASE IF NOT EXISTS sneaker_store;
```

#### Step 2: Start the Backend
```bash
cd backend
gradlew.bat bootRun
```
*Backend runs on: `http://localhost:8000`*

#### Step 3: Start the Frontend
```bash
cd frontend
npm install
npm run dev
```
*Frontend runs on: `http://localhost:3000`*

---

## 📡 REST API Reference

### Authentication (`/api/auth`)
| Method | Endpoint | Description | Auth Required |
|---|---|---|---|
| `POST` | `/api/auth/register` | Register new user account | No |
| `POST` | `/api/auth/login` | Authenticate and obtain JWT | No |
| `POST` | `/api/auth/guest` | Guest session authentication | No |

### Sneakers (`/api/sneakers`)
| Method | Endpoint | Description | Auth Required |
|---|---|---|---|
| `GET` | `/api/sneakers/all` | Retrieve all available sneakers | No |
| `GET` | `/api/sneakers/{id}` | Get sneaker details by ID | No |
| `GET` | `/api/sneakers/my-sneakers` | Get logged-in seller's listings | Yes |
| `POST` | `/api/sneakers` | Create a new sneaker listing | Yes |
| `PUT` | `/api/sneakers/{id}` | Update existing listing | Yes |
| `DELETE` | `/api/sneakers/{id}` | Remove a listing | Yes |

### Orders (`/api/orders`)
| Method | Endpoint | Description | Auth Required |
|---|---|---|---|
| `POST` | `/api/orders` | Place a sneaker purchase order | Yes |
| `GET` | `/api/orders/my-orders` | Retrieve user order history | Yes |
| `PATCH` | `/api/orders/{id}/status` | Update order fulfillment status | Yes |

### Messaging (`/api/messages`)
| Method | Endpoint | Description | Auth Required |
|---|---|---|---|
| `POST` | `/api/messages` | Send direct message (text or media) | Yes |
| `GET` | `/api/messages/conversation/{userId}` | Get conversation history | Yes |
| `GET` | `/api/messages/partners` | Get active conversation partners | Yes |
| `GET` | `/api/messages/unread-count` | Get unread message counter | Yes |

### Trades (`/api/trades`)
| Method | Endpoint | Description | Auth Required |
|---|---|---|---|
| `POST` | `/api/trades` | Propose a sneaker trade | Yes |
| `GET` | `/api/trades/received` | Get incoming trade proposals | Yes |
| `GET` | `/api/trades/sent` | Get sent trade proposals | Yes |
| `PATCH` | `/api/trades/{id}/accept` | Accept exchange proposal | Yes |
| `PATCH` | `/api/trades/{id}/decline` | Decline exchange proposal | Yes |

---

## 🗄️ Database Schema

The database `sneaker_store` includes the following core tables:
- **`users`**: Account credentials, hashed password, profile details, and seller flag.
- **`user_roles`**: Authority mapping (`ROLE_USER`, `ROLE_SELLER`).
- **`sneakers`**: Product name, brand, condition, size, price, stock, and seller FK.
- **`sneaker_images`**: Collection of images mapped to each sneaker.
- **`orders`**: Buyer ID, seller ID, sneaker ID, pricing, shipping address, status.
- **`messages`**: Direct chat records with text, media URL, MIME type, size, and read state.
- **`trades`**: Proposer, owner, offered sneaker, requested sneaker, status.
- **`reviews`**: Ratings (1-5 stars) and user feedback comments.
- **`favorites`**: User wishlist associations.

---

## 👨‍💻 Author & Project Credits

- **Developer**: Pratham Dhakate
- **Project**: SoleVault
- **Repository**: [github.com/pratham021234/SoleVault](https://github.com/pratham021234/SoleVault)
