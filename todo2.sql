--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: todos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE todos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    priority integer,
    create_at timestamp without time zone,
    completed_at timestamp without time zone
);


--
-- Name: todos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE todos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: todos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE todos_id_seq OWNED BY todos.id;


--
-- Name: todos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY todos ALTER COLUMN id SET DEFAULT nextval('todos_id_seq'::regclass);


--
-- Data for Name: todos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY todos (id, title, priority, create_at, completed_at) FROM stdin;
1	learn sql	1	2017-09-05 13:56:20.857138	2017-09-05 13:56:20.857138
2	learn HTML	5	2017-09-05 13:57:57.720439	2017-09-05 13:57:57.720439
3	read javascript book	2	2017-09-05 13:58:29.091125	2017-09-05 13:58:29.091125
4	learn CSS flexbox	3	2017-09-05 13:59:25.498876	2017-09-05 13:59:25.498876
6	Do homework	1	2017-09-05 14:00:04.021055	2017-09-05 14:00:04.021055
7	Do homework	1	2017-09-05 14:03:01.366785	\N
8	Prepare final project	1	2017-09-05 14:03:26.261339	\N
9	photoshop	3	2017-09-06 11:27:43.810614	\N
10	Illustrator	3	2017-09-06 11:28:07.842102	\N
11	take photo	2	2017-09-06 11:36:51.199842	2017-09-06 11:36:51.199842
12	clean house	5	2017-09-06 11:37:20.231162	2017-09-06 11:37:20.231162
13	write more code	1	2017-09-06 11:37:56.445625	\N
14	make website	1	2017-09-06 11:38:14.213591	\N
15	design themem	3	2017-09-06 11:38:29.285229	\N
16	more exercise	2	2017-09-06 11:38:48.476946	\N
17	donate and helping people	2	2017-09-06 11:39:17.284199	\N
18	drawing a book	4	2017-09-06 11:39:37.827462	\N
19	apply jobs	1	2017-09-06 11:40:26.601509	2017-09-06 11:40:26.601509
20	get interview	1	2017-09-06 11:40:57.67547	\N
21	Keep learning	3	2017-09-06 11:42:55.019153	2017-09-06 11:42:55.019153
\.


--
-- Name: todos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('todos_id_seq', 21, true);


--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

