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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(255) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 13, 1);
INSERT INTO public.games VALUES (2, 708, 144);
INSERT INTO public.games VALUES (3, 232, 146);
INSERT INTO public.games VALUES (4, 527, 147);
INSERT INTO public.games VALUES (5, 20, 148);
INSERT INTO public.games VALUES (6, 858, 151);
INSERT INTO public.games VALUES (7, 764, 154);
INSERT INTO public.games VALUES (8, 577, 155);
INSERT INTO public.games VALUES (9, 116, 159);
INSERT INTO public.games VALUES (10, 907, 160);
INSERT INTO public.games VALUES (11, 17, 158);
INSERT INTO public.games VALUES (12, 46, 161);
INSERT INTO public.games VALUES (13, 129, 162);
INSERT INTO public.games VALUES (14, 633, 163);
INSERT INTO public.games VALUES (15, 44, 164);
INSERT INTO public.games VALUES (16, 865, 165);
INSERT INTO public.games VALUES (17, 52, 166);
INSERT INTO public.games VALUES (18, 490, 169);
INSERT INTO public.games VALUES (19, 152, 172);
INSERT INTO public.games VALUES (20, 584, 173);
INSERT INTO public.games VALUES (21, 91, 177);
INSERT INTO public.games VALUES (22, 970, 178);
INSERT INTO public.games VALUES (23, 279, 179);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'pop');
INSERT INTO public.users VALUES (2, 'user_1686221696559');
INSERT INTO public.users VALUES (3, 'user_1686221696558');
INSERT INTO public.users VALUES (4, 'user_1686221900338');
INSERT INTO public.users VALUES (5, 'user_1686221900337');
INSERT INTO public.users VALUES (6, 'user_1686222083132');
INSERT INTO public.users VALUES (7, 'user_1686222083131');
INSERT INTO public.users VALUES (8, 'user_1686222264760');
INSERT INTO public.users VALUES (9, 'user_1686222264759');
INSERT INTO public.users VALUES (10, 'user_1686222278360');
INSERT INTO public.users VALUES (11, 'user_1686222278359');
INSERT INTO public.users VALUES (12, 'user_1686222355931');
INSERT INTO public.users VALUES (13, 'user_1686222355930');
INSERT INTO public.users VALUES (14, 'user_1686222474117');
INSERT INTO public.users VALUES (15, 'user_1686222474116');
INSERT INTO public.users VALUES (16, 'user_1686222485078');
INSERT INTO public.users VALUES (17, 'user_1686222485077');
INSERT INTO public.users VALUES (18, 'user_1686222493777');
INSERT INTO public.users VALUES (19, 'user_1686222493776');
INSERT INTO public.users VALUES (20, 'user_1686222504025');
INSERT INTO public.users VALUES (21, 'user_1686222504024');
INSERT INTO public.users VALUES (22, 'user_1686222558961');
INSERT INTO public.users VALUES (23, 'user_1686222558960');
INSERT INTO public.users VALUES (24, '');
INSERT INTO public.users VALUES (25, 'user_1686222741696');
INSERT INTO public.users VALUES (26, 'user_1686222741695');
INSERT INTO public.users VALUES (27, 'user_1686222755615');
INSERT INTO public.users VALUES (28, 'user_1686222755614');
INSERT INTO public.users VALUES (29, 'user_1686222846952');
INSERT INTO public.users VALUES (30, 'user_1686222846951');
INSERT INTO public.users VALUES (31, 'user_1686222865190');
INSERT INTO public.users VALUES (32, 'user_1686222865189');
INSERT INTO public.users VALUES (33, 'user_1686222873381');
INSERT INTO public.users VALUES (34, 'user_1686222873380');
INSERT INTO public.users VALUES (35, 'ip');
INSERT INTO public.users VALUES (36, 'user_1686222887866');
INSERT INTO public.users VALUES (37, 'user_1686222887865');
INSERT INTO public.users VALUES (38, 'user_1686223037482');
INSERT INTO public.users VALUES (39, 'user_1686223037481');
INSERT INTO public.users VALUES (40, 'user_1686223046088');
INSERT INTO public.users VALUES (41, 'user_1686223046087');
INSERT INTO public.users VALUES (42, 'user_1686223159429');
INSERT INTO public.users VALUES (43, 'user_1686223159428');
INSERT INTO public.users VALUES (44, 'user_1686224515918');
INSERT INTO public.users VALUES (45, 'user_1686224515917');
INSERT INTO public.users VALUES (46, 'user_1686224638049');
INSERT INTO public.users VALUES (47, 'user_1686224638048');
INSERT INTO public.users VALUES (48, 'user_1686224655378');
INSERT INTO public.users VALUES (49, 'user_1686224655377');
INSERT INTO public.users VALUES (50, 'user_1686224724022');
INSERT INTO public.users VALUES (51, 'user_1686224724021');
INSERT INTO public.users VALUES (52, 'user_1686224867716');
INSERT INTO public.users VALUES (53, 'user_1686224867715');
INSERT INTO public.users VALUES (54, 'user_1686225072013');
INSERT INTO public.users VALUES (55, 'user_1686225072012');
INSERT INTO public.users VALUES (56, 'user_1686225104871');
INSERT INTO public.users VALUES (57, 'user_1686225104870');
INSERT INTO public.users VALUES (58, 'user_1686225134553');
INSERT INTO public.users VALUES (59, 'user_1686225134552');
INSERT INTO public.users VALUES (60, 'user_1686225366385');
INSERT INTO public.users VALUES (61, 'user_1686225366384');
INSERT INTO public.users VALUES (62, 'user_1686225413690');
INSERT INTO public.users VALUES (64, 'user_1686225413689');
INSERT INTO public.users VALUES (69, 'user_1686225529881');
INSERT INTO public.users VALUES (71, 'user_1686225529880');
INSERT INTO public.users VALUES (76, 'user_1686225542578');
INSERT INTO public.users VALUES (78, 'user_1686225542577');
INSERT INTO public.users VALUES (84, 'user_1686225551638');
INSERT INTO public.users VALUES (86, 'user_1686225551637');
INSERT INTO public.users VALUES (91, 'user_1686225607517');
INSERT INTO public.users VALUES (93, 'user_1686225607516');
INSERT INTO public.users VALUES (101, 'user_1686225685871');
INSERT INTO public.users VALUES (102, 'user_1686225685870');
INSERT INTO public.users VALUES (103, 'user_1686225706362');
INSERT INTO public.users VALUES (104, 'user_1686225706361');
INSERT INTO public.users VALUES (105, 'user_1686225721847');
INSERT INTO public.users VALUES (106, 'user_1686225721846');
INSERT INTO public.users VALUES (108, 'user_1686228829127');
INSERT INTO public.users VALUES (109, 'user_1686228829126');
INSERT INTO public.users VALUES (110, 'user_1686228843328');
INSERT INTO public.users VALUES (111, 'user_1686228843327');
INSERT INTO public.users VALUES (112, 'user_1686228864514');
INSERT INTO public.users VALUES (113, 'user_1686228864513');
INSERT INTO public.users VALUES (114, 'pip');
INSERT INTO public.users VALUES (115, 'user_1686228869067');
INSERT INTO public.users VALUES (116, 'user_1686228869066');
INSERT INTO public.users VALUES (117, 'user_1686228874283');
INSERT INTO public.users VALUES (118, 'user_1686228874282');
INSERT INTO public.users VALUES (119, 'user_1686228884080');
INSERT INTO public.users VALUES (120, 'user_1686228884079');
INSERT INTO public.users VALUES (121, 'user_1686228932660');
INSERT INTO public.users VALUES (122, 'user_1686228932659');
INSERT INTO public.users VALUES (123, 'user_1686228946958');
INSERT INTO public.users VALUES (124, 'user_1686228946957');
INSERT INTO public.users VALUES (125, 'user_1686229016811');
INSERT INTO public.users VALUES (126, 'user_1686229016810');
INSERT INTO public.users VALUES (127, 'user_1686229054354');
INSERT INTO public.users VALUES (128, 'user_1686229054353');
INSERT INTO public.users VALUES (129, 'user_1686229087653');
INSERT INTO public.users VALUES (130, 'user_1686229087652');
INSERT INTO public.users VALUES (131, 'user_1686229100631');
INSERT INTO public.users VALUES (132, 'user_1686229100630');
INSERT INTO public.users VALUES (133, 'user_1686229110622');
INSERT INTO public.users VALUES (134, 'user_1686229110621');
INSERT INTO public.users VALUES (135, 'pol');
INSERT INTO public.users VALUES (136, 'user_1686229327531');
INSERT INTO public.users VALUES (137, 'user_1686229327530');
INSERT INTO public.users VALUES (138, 'user_1686229615252');
INSERT INTO public.users VALUES (139, 'user_1686229615251');
INSERT INTO public.users VALUES (140, 'lol');
INSERT INTO public.users VALUES (141, 'user_1686229634193');
INSERT INTO public.users VALUES (142, 'user_1686229634192');
INSERT INTO public.users VALUES (143, 'user_1686229676910');
INSERT INTO public.users VALUES (144, 'user_1686229676909');
INSERT INTO public.users VALUES (145, 'user_1686229691960');
INSERT INTO public.users VALUES (146, 'user_1686229691959');
INSERT INTO public.users VALUES (147, 'user_1686229716168');
INSERT INTO public.users VALUES (148, 'user_1686229716167');
INSERT INTO public.users VALUES (149, 'user_1686229797831');
INSERT INTO public.users VALUES (150, 'user_1686229797830');
INSERT INTO public.users VALUES (151, 'user_1686229825232');
INSERT INTO public.users VALUES (152, 'user_1686229825231');
INSERT INTO public.users VALUES (153, 'pui');
INSERT INTO public.users VALUES (154, 'user_1686229840093');
INSERT INTO public.users VALUES (155, 'user_1686229840092');
INSERT INTO public.users VALUES (156, 'user_1686229848551');
INSERT INTO public.users VALUES (157, 'user_1686229848550');
INSERT INTO public.users VALUES (158, 'put');
INSERT INTO public.users VALUES (159, 'user_1686229870048');
INSERT INTO public.users VALUES (160, 'user_1686229870047');
INSERT INTO public.users VALUES (161, 'user_1686229904610');
INSERT INTO public.users VALUES (162, 'user_1686229904609');
INSERT INTO public.users VALUES (163, 'user_1686229923908');
INSERT INTO public.users VALUES (164, 'user_1686229923907');
INSERT INTO public.users VALUES (165, 'user_1686230075160');
INSERT INTO public.users VALUES (166, 'user_1686230075159');
INSERT INTO public.users VALUES (167, 'user_1686230103876');
INSERT INTO public.users VALUES (168, 'user_1686230103875');
INSERT INTO public.users VALUES (169, 'user_1686230127579');
INSERT INTO public.users VALUES (170, 'user_1686230127578');
INSERT INTO public.users VALUES (171, 'user_1686230143195');
INSERT INTO public.users VALUES (172, 'user_1686230143194');
INSERT INTO public.users VALUES (173, 'user_1686230153649');
INSERT INTO public.users VALUES (174, 'user_1686230153648');
INSERT INTO public.users VALUES (175, 'uit');
INSERT INTO public.users VALUES (176, 'user_1686230170880');
INSERT INTO public.users VALUES (177, 'user_1686230170879');
INSERT INTO public.users VALUES (178, 'user_1686230180271');
INSERT INTO public.users VALUES (179, 'user_1686230180270');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 23, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 179, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

