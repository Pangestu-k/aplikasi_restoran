CREATE TABLE transaksi (
    id_transaksi varchar(9) PRIMARY KEY NOT NULL,
    id_user varchar(9),
    id_order varchar(9),
    tanggal date,
    total_bayar int
);

CREATE TABLE userr (
    id_user varchar(9) PRIMARY KEY NOT NULL,
    username varchar(30),
    password varchar(9),
    nama_user varchar(30),
    id_level varchar(9)
);

  CREATE TYPE status_order AS ENUM('selesai','belum');
  
CREATE TABLE orderr(
	id_order varchar(9) PRIMARY KEY NOT NULL,
    no_meja int,
    tanggal date,
    id_user varchar(9),
    keterangan varchar(9),
    status_order status_order
);

CREATE TABLE level(
	id_level varchar(9) PRIMARY KEY NOT NULL,
    nama_level varchar(30)
);

CREATE TYPE sto AS ENUM('selesai','belum');

CREATE TABLE detail_order(
	id_detail_order varchar(9) PRIMARY KEY NOT NULL,
    id_order varchar(9),
    id_masakan varchar(9),
    keterangan text,
    status_detail_order sto
);

CREATE TYPE stok AS ENUM('tersedia','habis');
CREATE TABLE masakan(
	id_masakan varchar(9) PRIMARY KEY NOT NULL,
    nama_masakan varchar(30),
    harga int,
    status_masakan stok
);




