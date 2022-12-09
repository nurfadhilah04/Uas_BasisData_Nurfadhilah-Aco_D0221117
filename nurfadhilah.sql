--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: barang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    harga integer,
    stok integer,
    id_supplier integer
);


ALTER TABLE public.barang OWNER TO postgres;

--
-- Name: barang_id_barang_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.barang_id_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.barang_id_barang_seq OWNER TO postgres;

--
-- Name: barang_id_barang_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.barang_id_barang_seq OWNED BY public.barang.id_barang;


--
-- Name: jualan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jualan (
    id_jualan integer NOT NULL,
    nama_jualan character varying(50),
    harga integer,
    stok integer,
    id_supplier integer
);


ALTER TABLE public.jualan OWNER TO postgres;

--
-- Name: jualan_id_jualan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jualan_id_jualan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jualan_id_jualan_seq OWNER TO postgres;

--
-- Name: jualan_id_jualan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jualan_id_jualan_seq OWNED BY public.jualan.id_jualan;


--
-- Name: pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelanggan (
    id_pelanggan integer NOT NULL,
    nama_pelanggan character varying(50),
    phone character(15),
    alamat character varying(30)
);


ALTER TABLE public.pelanggan OWNER TO postgres;

--
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pelanggan_id_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelanggan_id_pelanggan_seq OWNER TO postgres;

--
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pelanggan_id_pelanggan_seq OWNED BY public.pelanggan.id_pelanggan;


--
-- Name: pembayaran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pembayaran (
    nomor_pembayaran integer NOT NULL,
    id_pelanggan integer,
    id_barang integer,
    tgl_bayar date,
    jnl_barang integer,
    total_bayar integer
);


ALTER TABLE public.pembayaran OWNER TO postgres;

--
-- Name: pembayaran_nomor_pembayaran_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pembayaran_nomor_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pembayaran_nomor_pembayaran_seq OWNER TO postgres;

--
-- Name: pembayaran_nomor_pembayaran_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pembayaran_nomor_pembayaran_seq OWNED BY public.pembayaran.nomor_pembayaran;


--
-- Name: pembeli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(50),
    phone character(15),
    alamat character varying(30)
);


ALTER TABLE public.pembeli OWNER TO postgres;

--
-- Name: pembeli_id_pembeli_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pembeli_id_pembeli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pembeli_id_pembeli_seq OWNER TO postgres;

--
-- Name: pembeli_id_pembeli_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pembeli_id_pembeli_seq OWNED BY public.pembeli.id_pembeli;


--
-- Name: supplier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30),
    phone character(15),
    alamat character varying(100)
);


ALTER TABLE public.supplier OWNER TO postgres;

--
-- Name: supplier_id_supplier_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.supplier_id_supplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_id_supplier_seq OWNER TO postgres;

--
-- Name: supplier_id_supplier_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.supplier_id_supplier_seq OWNED BY public.supplier.id_supplier;


--
-- Name: barang id_barang; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang ALTER COLUMN id_barang SET DEFAULT nextval('public.barang_id_barang_seq'::regclass);


--
-- Name: jualan id_jualan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jualan ALTER COLUMN id_jualan SET DEFAULT nextval('public.jualan_id_jualan_seq'::regclass);


--
-- Name: pelanggan id_pelanggan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan ALTER COLUMN id_pelanggan SET DEFAULT nextval('public.pelanggan_id_pelanggan_seq'::regclass);


--
-- Name: pembayaran nomor_pembayaran; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembayaran ALTER COLUMN nomor_pembayaran SET DEFAULT nextval('public.pembayaran_nomor_pembayaran_seq'::regclass);


--
-- Name: pembeli id_pembeli; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembeli ALTER COLUMN id_pembeli SET DEFAULT nextval('public.pembeli_id_pembeli_seq'::regclass);


--
-- Name: supplier id_supplier; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier ALTER COLUMN id_supplier SET DEFAULT nextval('public.supplier_id_supplier_seq'::regclass);


--
-- Data for Name: barang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
40003	Beras	5000	50	22088
\.


--
-- Data for Name: jualan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jualan (id_jualan, nama_jualan, harga, stok, id_supplier) FROM stdin;
49007	Beras	80000	70	4339
40007	Gula	9900	80	39
4007	Mentega	900	90	40009
9007	Gandung	10	900	4639
47	Micin	99	30	4099
4087	Masako	9000	50	9
7	Odol	1000	40	6739
9017	Tissu	890	290	4390
490	Minuman	899	67	1439
1007	Ladaku	800	760	99
400	Slay	100000	10000	339
478007	Rokok	1000	9000	40909
4945	Batre	60000	300	839
9875	Kopi	6100	8900	40939
4909	Garam	78000	770	339
\.


--
-- Data for Name: pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelanggan (id_pelanggan, nama_pelanggan, phone, alamat) FROM stdin;
2345	fadilah	97640864477    	Sendana
\.


--
-- Data for Name: pembayaran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pembayaran (nomor_pembayaran, id_pelanggan, id_barang, tgl_bayar, jnl_barang, total_bayar) FROM stdin;
2890000	22233	40000	2027-10-22	50	3000
\.


--
-- Data for Name: pembeli; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pembeli (id_pembeli, nama_pembeli, phone, alamat) FROM stdin;
2456	Nurfadhilah	0864231678833  	Sendana
966	Nur	086412678833   	Majene
2096	Berlian	086423109833   	Mamasa
2006	Rahma	Tinambuang     	Tinambung
2896	Nurul	086098657883   	Wono
8456	Fajra	0864231678093  	Napo
1806	Ratnaa	086423167093   	Tinambungg
9456	Fani	083431678833   	Campa
9056	Sofia	094231678833   	Wonomulyo
7456	Fitri	086428678833   	Polman
2056	Taya	086423978833   	Wonomul
2490	Handa	0864231670833  	Mamaju
1356	Nina	086425688093   	Kalimantan
976	Amael	08158788093    	Polmann
4856	Dina	08097688093    	Sendanaa
\.


--
-- Data for Name: supplier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supplier (id_supplier, nama_supplier, phone, alamat) FROM stdin;
333333	PT INDA	085341476293   	Sendana
3333	PT INDAH PERMATA	08653268478    	Majene
3334	PT NANDA SARI	08653546874    	Majene
3399	PT NAN	086535409774   	Mamasa
9334	PT SARI	086535400874   	Pamboang
33094	PT NANI	086535460974   	Tinambuang
3304	PT ARI	08653546084    	Banggae
3384	PT NARI	08653509874    	Poniang
3309	PT PERMATA SARI	086535460974   	Polman
39879	PT NANDA SALON	086535469074   	Makassar
3909	PT HASANUDDIN	086535460094   	Pasangkayu
9809	PT ACO MA	086535460974   	Mamaju
30789	PT HASMIRA MA	086535460874   	Parepare
1209	PT RESKI MA	08653098674    	Maros
312349	PT ICAL MA	0156288394     	GOA
\.


--
-- Name: barang_id_barang_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.barang_id_barang_seq', 1, false);


--
-- Name: jualan_id_jualan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jualan_id_jualan_seq', 1, false);


--
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pelanggan_id_pelanggan_seq', 1, false);


--
-- Name: pembayaran_nomor_pembayaran_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pembayaran_nomor_pembayaran_seq', 1, false);


--
-- Name: pembeli_id_pembeli_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pembeli_id_pembeli_seq', 1, false);


--
-- Name: supplier_id_supplier_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.supplier_id_supplier_seq', 1, false);


--
-- Name: barang barang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);


--
-- Name: jualan jualan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jualan
    ADD CONSTRAINT jualan_pkey PRIMARY KEY (id_jualan);


--
-- Name: pelanggan pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id_pelanggan);


--
-- Name: pembayaran pembayaran_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (nomor_pembayaran);


--
-- Name: pembeli pembeli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);


--
-- Name: supplier supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);


--
-- PostgreSQL database dump complete
--

