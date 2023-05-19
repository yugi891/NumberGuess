--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1684477758725', 1, 882);
INSERT INTO public.users VALUES (3, 'user_1684477758724', 1, 168);
INSERT INTO public.users VALUES (4, 'user_1684477779109', 1, 142);
INSERT INTO public.users VALUES (5, 'user_1684477779108', 1, 125);
INSERT INTO public.users VALUES (6, 'user_1684477807690', 1, 997);
INSERT INTO public.users VALUES (7, 'user_1684477807689', 1, 900);
INSERT INTO public.users VALUES (8, 'user_1684477819321', 1, 731);
INSERT INTO public.users VALUES (9, 'user_1684477819320', 1, 619);
INSERT INTO public.users VALUES (10, 'user_1684477831287', 1, 231);
INSERT INTO public.users VALUES (11, 'user_1684477831286', 1, 319);
INSERT INTO public.users VALUES (12, 'user_1684477844866', 1, 824);
INSERT INTO public.users VALUES (13, 'user_1684477844865', 1, 415);
INSERT INTO public.users VALUES (14, 'user_1684477863850', 1, 83);
INSERT INTO public.users VALUES (15, 'user_1684477863849', 1, 953);
INSERT INTO public.users VALUES (16, 'user_1684479570275', 1, 273);
INSERT INTO public.users VALUES (17, 'user_1684479570274', 1, 703);
INSERT INTO public.users VALUES (18, 'user_1684479584805', 1, 529);
INSERT INTO public.users VALUES (19, 'user_1684479584804', 1, 537);
INSERT INTO public.users VALUES (20, 'user_1684479602172', 1, 608);
INSERT INTO public.users VALUES (21, 'user_1684479602171', 1, 725);
INSERT INTO public.users VALUES (22, 'user_1684479672425', 1, 790);
INSERT INTO public.users VALUES (23, 'user_1684479672424', 1, 239);
INSERT INTO public.users VALUES (24, 'user_1684479674352', 1, 218);
INSERT INTO public.users VALUES (25, 'user_1684479674351', 1, 416);
INSERT INTO public.users VALUES (26, 'user_1684479686811', 1, 295);
INSERT INTO public.users VALUES (27, 'user_1684479686810', 1, 87);
INSERT INTO public.users VALUES (28, 'user_1684479697425', 1, 379);
INSERT INTO public.users VALUES (29, 'user_1684479697424', 1, 2);
INSERT INTO public.users VALUES (30, 'user_1684481671657', 1, 124);
INSERT INTO public.users VALUES (31, 'user_1684481671656', 1, 124);
INSERT INTO public.users VALUES (1, 'Yugi', 2, 4);
INSERT INTO public.users VALUES (33, 'user_1684483976246', 2, 345);
INSERT INTO public.users VALUES (75, 'user_1684484760707', 2, 404);
INSERT INTO public.users VALUES (32, 'user_1684483976247', 5, 440);
INSERT INTO public.users VALUES (57, 'user_1684484397900', 2, 529);
INSERT INTO public.users VALUES (35, 'user_1684484205745', 2, 515);
INSERT INTO public.users VALUES (34, 'user_1684484205746', 5, 56);
INSERT INTO public.users VALUES (56, 'user_1684484397901', 5, 91);
INSERT INTO public.users VALUES (37, 'user_1684484225441', 2, 821);
INSERT INTO public.users VALUES (74, 'user_1684484760708', 5, 20);
INSERT INTO public.users VALUES (36, 'user_1684484225442', 4, 260);
INSERT INTO public.users VALUES (39, 'user_1684484248014', 2, 556);
INSERT INTO public.users VALUES (59, 'user_1684484491213', 2, 217);
INSERT INTO public.users VALUES (38, 'user_1684484248015', 5, 143);
INSERT INTO public.users VALUES (41, 'user_1684484297113', 2, 165);
INSERT INTO public.users VALUES (58, 'user_1684484491214', 5, 455);
INSERT INTO public.users VALUES (40, 'user_1684484297114', 5, 30);
INSERT INTO public.users VALUES (43, 'user_1684484327494', 2, 106);
INSERT INTO public.users VALUES (61, 'user_1684484502632', 2, 290);
INSERT INTO public.users VALUES (42, 'user_1684484327495', 5, 37);
INSERT INTO public.users VALUES (77, 'user_1684484774749', 2, 2);
INSERT INTO public.users VALUES (45, 'user_1684484341448', 2, 701);
INSERT INTO public.users VALUES (60, 'user_1684484502633', 5, 310);
INSERT INTO public.users VALUES (44, 'user_1684484341449', 5, 101);
INSERT INTO public.users VALUES (47, 'user_1684484352405', 2, 223);
INSERT INTO public.users VALUES (83, 'user_1684485179066', 5, 83);
INSERT INTO public.users VALUES (46, 'user_1684484352406', 5, 44);
INSERT INTO public.users VALUES (63, 'user_1684484521976', 2, 66);
INSERT INTO public.users VALUES (49, 'user_1684484356990', 2, 620);
INSERT INTO public.users VALUES (76, 'user_1684484774750', 5, 22);
INSERT INTO public.users VALUES (48, 'user_1684484356991', 5, 64);
INSERT INTO public.users VALUES (62, 'user_1684484521977', 5, 86);
INSERT INTO public.users VALUES (51, 'user_1684484378280', 2, 34);
INSERT INTO public.users VALUES (50, 'user_1684484378281', 5, 182);
INSERT INTO public.users VALUES (53, 'user_1684484383058', 2, 367);
INSERT INTO public.users VALUES (65, 'user_1684484614474', 2, 402);
INSERT INTO public.users VALUES (52, 'user_1684484383059', 5, 9);
INSERT INTO public.users VALUES (79, 'user_1684484787187', 2, 863);
INSERT INTO public.users VALUES (55, 'user_1684484387804', 2, 409);
INSERT INTO public.users VALUES (64, 'user_1684484614475', 5, 37);
INSERT INTO public.users VALUES (54, 'user_1684484387805', 5, 43);
INSERT INTO public.users VALUES (67, 'user_1684484688634', 2, 222);
INSERT INTO public.users VALUES (78, 'user_1684484787188', 5, 279);
INSERT INTO public.users VALUES (66, 'user_1684484688635', 5, 97);
INSERT INTO public.users VALUES (69, 'user_1684484706499', 2, 591);
INSERT INTO public.users VALUES (68, 'user_1684484706500', 5, 62);
INSERT INTO public.users VALUES (81, 'user_1684484803930', 2, 140);
INSERT INTO public.users VALUES (71, 'user_1684484729930', 2, 359);
INSERT INTO public.users VALUES (85, 'user_1684485288187', 5, 487);
INSERT INTO public.users VALUES (70, 'user_1684484729931', 5, 404);
INSERT INTO public.users VALUES (80, 'user_1684484803931', 5, 406);
INSERT INTO public.users VALUES (73, 'user_1684484745824', 2, 246);
INSERT INTO public.users VALUES (72, 'user_1684484745825', 5, 534);
INSERT INTO public.users VALUES (87, 'user_1684485314165', 5, 196);
INSERT INTO public.users VALUES (89, 'user_1684485396019', 5, 64);
INSERT INTO public.users VALUES (84, 'user_1684485179065', 2, 585);
INSERT INTO public.users VALUES (86, 'user_1684485288186', 2, 534);
INSERT INTO public.users VALUES (88, 'user_1684485314164', 2, 122);
INSERT INTO public.users VALUES (90, 'user_1684485396018', 2, 292);
INSERT INTO public.users VALUES (82, 'user_1684485160149', 3, 595);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 90, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

