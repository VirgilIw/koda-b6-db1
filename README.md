1. Library Database

Database sederhana untuk sistem perpustakaan yang menyimpan:

Data buku

Kategori buku

Rak buku

Peminjam

Petugas

Transaksi peminjaman

- ERD (Entity Relationship Diagram)
🗂 Penjelasan Relasi

1 Category bisa memiliki banyak Books

1 Bookshelf bisa menyimpan banyak Books

1 Book bisa memiliki banyak riwayat peminjaman

1 Borrower bisa melakukan banyak transaksi

1 Officer bisa menangani banyak transaksi

- Struktur Tabel
- Books

Menyimpan data buku.

id (Primary Key)

name

author

category_id (Foreign Key)

bookshelf_id (Foreign Key)

- Category

Menyimpan kategori buku.

- Bookshelf

Menyimpan informasi rak buku.

- Borrower

Menyimpan data peminjam.

- Officer

Menyimpan data petugas.

- Borrow_Transaction

Menyimpan data transaksi peminjaman buku.

- Tujuan Database

Database ini dibuat untuk:

Mengelola data buku

Mencatat transaksi peminjaman

Menjaga relasi antar data menggunakan foreign key

Menerapkan konsep relasi one-to-many
![database library use mermaid](<img width="1069" height="621" alt="Screenshot from 2026-02-20 13-49-56" src="https://github.com/user-attachments/assets/46eb7e4e-22d4-4642-8c15-d88eac62dba9" />
)   
