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
    guesses integer NOT NULL,
    u_id integer
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
    u_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 85, 1);
INSERT INTO public.games VALUES (2, 200, 2);
INSERT INTO public.games VALUES (3, 196, 2);
INSERT INTO public.games VALUES (4, 446, 1);
INSERT INTO public.games VALUES (5, 359, 1);
INSERT INTO public.games VALUES (6, 585, 1);
INSERT INTO public.games VALUES (7, 20, 3);
INSERT INTO public.games VALUES (8, 815, 4);
INSERT INTO public.games VALUES (9, 719, 4);
INSERT INTO public.games VALUES (10, 449, 5);
INSERT INTO public.games VALUES (11, 993, 5);
INSERT INTO public.games VALUES (12, 123, 4);
INSERT INTO public.games VALUES (13, 854, 4);
INSERT INTO public.games VALUES (14, 13, 4);
INSERT INTO public.games VALUES (15, 367, 6);
INSERT INTO public.games VALUES (16, 481, 6);
INSERT INTO public.games VALUES (17, 246, 7);
INSERT INTO public.games VALUES (18, 898, 7);
INSERT INTO public.games VALUES (19, 90, 6);
INSERT INTO public.games VALUES (20, 280, 6);
INSERT INTO public.games VALUES (21, 651, 6);
INSERT INTO public.games VALUES (22, 287, 8);
INSERT INTO public.games VALUES (23, 589, 8);
INSERT INTO public.games VALUES (24, 802, 9);
INSERT INTO public.games VALUES (25, 961, 9);
INSERT INTO public.games VALUES (26, 547, 8);
INSERT INTO public.games VALUES (27, 420, 8);
INSERT INTO public.games VALUES (28, 372, 8);
INSERT INTO public.games VALUES (29, 251, 10);
INSERT INTO public.games VALUES (30, 104, 10);
INSERT INTO public.games VALUES (31, 543, 11);
INSERT INTO public.games VALUES (32, 654, 11);
INSERT INTO public.games VALUES (33, 1000, 10);
INSERT INTO public.games VALUES (34, 289, 10);
INSERT INTO public.games VALUES (35, 246, 10);
INSERT INTO public.games VALUES (36, 185, 12);
INSERT INTO public.games VALUES (37, 312, 12);
INSERT INTO public.games VALUES (38, 678, 13);
INSERT INTO public.games VALUES (39, 498, 13);
INSERT INTO public.games VALUES (40, 866, 12);
INSERT INTO public.games VALUES (41, 548, 12);
INSERT INTO public.games VALUES (42, 207, 12);
INSERT INTO public.games VALUES (43, 666, 14);
INSERT INTO public.games VALUES (44, 230, 14);
INSERT INTO public.games VALUES (45, 201, 15);
INSERT INTO public.games VALUES (46, 723, 15);
INSERT INTO public.games VALUES (47, 228, 14);
INSERT INTO public.games VALUES (48, 300, 14);
INSERT INTO public.games VALUES (49, 938, 14);
INSERT INTO public.games VALUES (50, 147, 16);
INSERT INTO public.games VALUES (51, 766, 16);
INSERT INTO public.games VALUES (52, 116, 17);
INSERT INTO public.games VALUES (53, 494, 17);
INSERT INTO public.games VALUES (54, 512, 16);
INSERT INTO public.games VALUES (55, 358, 16);
INSERT INTO public.games VALUES (56, 571, 16);
INSERT INTO public.games VALUES (57, 617, 18);
INSERT INTO public.games VALUES (58, 329, 18);
INSERT INTO public.games VALUES (59, 228, 19);
INSERT INTO public.games VALUES (60, 700, 19);
INSERT INTO public.games VALUES (61, 703, 18);
INSERT INTO public.games VALUES (62, 213, 18);
INSERT INTO public.games VALUES (63, 743, 18);
INSERT INTO public.games VALUES (64, 98, 20);
INSERT INTO public.games VALUES (65, 352, 20);
INSERT INTO public.games VALUES (66, 848, 21);
INSERT INTO public.games VALUES (67, 218, 21);
INSERT INTO public.games VALUES (68, 491, 20);
INSERT INTO public.games VALUES (69, 557, 20);
INSERT INTO public.games VALUES (70, 899, 20);
INSERT INTO public.games VALUES (71, 866, 22);
INSERT INTO public.games VALUES (72, 518, 22);
INSERT INTO public.games VALUES (73, 551, 23);
INSERT INTO public.games VALUES (74, 35, 23);
INSERT INTO public.games VALUES (75, 1000, 22);
INSERT INTO public.games VALUES (76, 397, 22);
INSERT INTO public.games VALUES (77, 490, 22);
INSERT INTO public.games VALUES (78, 326, 24);
INSERT INTO public.games VALUES (79, 120, 24);
INSERT INTO public.games VALUES (80, 252, 25);
INSERT INTO public.games VALUES (81, 629, 25);
INSERT INTO public.games VALUES (82, 844, 24);
INSERT INTO public.games VALUES (83, 800, 24);
INSERT INTO public.games VALUES (84, 7, 24);
INSERT INTO public.games VALUES (85, 629, 26);
INSERT INTO public.games VALUES (86, 799, 26);
INSERT INTO public.games VALUES (87, 375, 27);
INSERT INTO public.games VALUES (88, 229, 27);
INSERT INTO public.games VALUES (89, 326, 26);
INSERT INTO public.games VALUES (90, 584, 26);
INSERT INTO public.games VALUES (91, 632, 26);
INSERT INTO public.games VALUES (92, 569, 28);
INSERT INTO public.games VALUES (93, 987, 28);
INSERT INTO public.games VALUES (94, 623, 29);
INSERT INTO public.games VALUES (95, 449, 29);
INSERT INTO public.games VALUES (96, 657, 28);
INSERT INTO public.games VALUES (97, 554, 28);
INSERT INTO public.games VALUES (98, 330, 28);
INSERT INTO public.games VALUES (99, 80, 30);
INSERT INTO public.games VALUES (100, 988, 30);
INSERT INTO public.games VALUES (101, 380, 31);
INSERT INTO public.games VALUES (102, 945, 31);
INSERT INTO public.games VALUES (103, 639, 30);
INSERT INTO public.games VALUES (104, 408, 30);
INSERT INTO public.games VALUES (105, 881, 30);
INSERT INTO public.games VALUES (106, 762, 32);
INSERT INTO public.games VALUES (107, 725, 32);
INSERT INTO public.games VALUES (108, 384, 33);
INSERT INTO public.games VALUES (109, 235, 33);
INSERT INTO public.games VALUES (110, 640, 32);
INSERT INTO public.games VALUES (111, 490, 32);
INSERT INTO public.games VALUES (112, 663, 32);
INSERT INTO public.games VALUES (113, 721, 34);
INSERT INTO public.games VALUES (114, 220, 34);
INSERT INTO public.games VALUES (115, 990, 35);
INSERT INTO public.games VALUES (116, 980, 35);
INSERT INTO public.games VALUES (117, 597, 34);
INSERT INTO public.games VALUES (118, 832, 34);
INSERT INTO public.games VALUES (119, 53, 34);
INSERT INTO public.games VALUES (120, 92, 36);
INSERT INTO public.games VALUES (121, 153, 36);
INSERT INTO public.games VALUES (122, 113, 37);
INSERT INTO public.games VALUES (123, 1001, 37);
INSERT INTO public.games VALUES (124, 818, 36);
INSERT INTO public.games VALUES (125, 896, 36);
INSERT INTO public.games VALUES (126, 967, 36);
INSERT INTO public.games VALUES (127, 386, 38);
INSERT INTO public.games VALUES (128, 627, 38);
INSERT INTO public.games VALUES (129, 920, 39);
INSERT INTO public.games VALUES (130, 563, 39);
INSERT INTO public.games VALUES (131, 207, 38);
INSERT INTO public.games VALUES (132, 991, 38);
INSERT INTO public.games VALUES (133, 72, 38);
INSERT INTO public.games VALUES (134, 360, 40);
INSERT INTO public.games VALUES (135, 199, 40);
INSERT INTO public.games VALUES (136, 636, 41);
INSERT INTO public.games VALUES (137, 621, 41);
INSERT INTO public.games VALUES (138, 174, 40);
INSERT INTO public.games VALUES (139, 294, 40);
INSERT INTO public.games VALUES (140, 787, 40);
INSERT INTO public.games VALUES (141, 857, 42);
INSERT INTO public.games VALUES (142, 748, 42);
INSERT INTO public.games VALUES (143, 191, 43);
INSERT INTO public.games VALUES (144, 317, 43);
INSERT INTO public.games VALUES (145, 282, 42);
INSERT INTO public.games VALUES (146, 162, 42);
INSERT INTO public.games VALUES (147, 800, 42);
INSERT INTO public.games VALUES (148, 12, 44);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1674956623176');
INSERT INTO public.users VALUES (2, 'user_1674956623175');
INSERT INTO public.users VALUES (3, 'Arjan');
INSERT INTO public.users VALUES (4, 'user_1674956793935');
INSERT INTO public.users VALUES (5, 'user_1674956793934');
INSERT INTO public.users VALUES (6, 'user_1674956855630');
INSERT INTO public.users VALUES (7, 'user_1674956855629');
INSERT INTO public.users VALUES (8, 'user_1674956912867');
INSERT INTO public.users VALUES (9, 'user_1674956912866');
INSERT INTO public.users VALUES (10, 'user_1674956992609');
INSERT INTO public.users VALUES (11, 'user_1674956992608');
INSERT INTO public.users VALUES (12, 'user_1674957131251');
INSERT INTO public.users VALUES (13, 'user_1674957131250');
INSERT INTO public.users VALUES (14, 'user_1674957141591');
INSERT INTO public.users VALUES (15, 'user_1674957141590');
INSERT INTO public.users VALUES (16, 'user_1674957148198');
INSERT INTO public.users VALUES (17, 'user_1674957148197');
INSERT INTO public.users VALUES (18, 'user_1674957168730');
INSERT INTO public.users VALUES (19, 'user_1674957168729');
INSERT INTO public.users VALUES (20, 'user_1674957428066');
INSERT INTO public.users VALUES (21, 'user_1674957428065');
INSERT INTO public.users VALUES (22, 'user_1674957432977');
INSERT INTO public.users VALUES (23, 'user_1674957432976');
INSERT INTO public.users VALUES (24, 'user_1674957911683');
INSERT INTO public.users VALUES (25, 'user_1674957911682');
INSERT INTO public.users VALUES (26, 'user_1674957971544');
INSERT INTO public.users VALUES (27, 'user_1674957971543');
INSERT INTO public.users VALUES (28, 'user_1674958628620');
INSERT INTO public.users VALUES (29, 'user_1674958628619');
INSERT INTO public.users VALUES (30, 'user_1674958730778');
INSERT INTO public.users VALUES (31, 'user_1674958730777');
INSERT INTO public.users VALUES (32, 'user_1674958762297');
INSERT INTO public.users VALUES (33, 'user_1674958762296');
INSERT INTO public.users VALUES (34, 'user_1674958767413');
INSERT INTO public.users VALUES (35, 'user_1674958767412');
INSERT INTO public.users VALUES (36, 'user_1674958789681');
INSERT INTO public.users VALUES (37, 'user_1674958789680');
INSERT INTO public.users VALUES (38, 'user_1674958814135');
INSERT INTO public.users VALUES (39, 'user_1674958814134');
INSERT INTO public.users VALUES (40, 'user_1674958886749');
INSERT INTO public.users VALUES (41, 'user_1674958886748');
INSERT INTO public.users VALUES (42, 'user_1674959224977');
INSERT INTO public.users VALUES (43, 'user_1674959224976');
INSERT INTO public.users VALUES (44, 'arjan');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 148, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 44, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

