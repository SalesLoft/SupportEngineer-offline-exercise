--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.9
-- Dumped by pg_dump version 9.6.17

-- Started on 2020-06-02 01:50:46 UTC

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
-- TOC entry 1 (class 3079 OID 12393)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2235 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 200 (class 1259 OID 16507)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 186 (class 1259 OID 16388)
-- Name: books; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.books (
    id bigint NOT NULL,
    title character varying,
    author character varying,
    publisher character varying,
    genre character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 185 (class 1259 OID 16386)
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2236 (class 0 OID 0)
-- Dependencies: 185
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- TOC entry 188 (class 1259 OID 16399)
-- Name: bookshelves; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bookshelves (
    id bigint NOT NULL,
    rating character varying,
    times_read integer,
    engineer_id bigint,
    book_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 187 (class 1259 OID 16397)
-- Name: bookshelves_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bookshelves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2237 (class 0 OID 0)
-- Dependencies: 187
-- Name: bookshelves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bookshelves_id_seq OWNED BY public.bookshelves.id;


--
-- TOC entry 190 (class 1259 OID 16412)
-- Name: countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries (
    id bigint NOT NULL,
    name character varying,
    capital character varying,
    region character varying,
    population integer,
    area integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 189 (class 1259 OID 16410)
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2238 (class 0 OID 0)
-- Dependencies: 189
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- TOC entry 192 (class 1259 OID 16423)
-- Name: engineer_programming_languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.engineer_programming_languages (
    id bigint NOT NULL,
    proficency character varying,
    repositories integer,
    engineer_id bigint,
    programming_language_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 191 (class 1259 OID 16421)
-- Name: engineer_programming_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.engineer_programming_languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2239 (class 0 OID 0)
-- Dependencies: 191
-- Name: engineer_programming_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.engineer_programming_languages_id_seq OWNED BY public.engineer_programming_languages.id;


--
-- TOC entry 194 (class 1259 OID 16436)
-- Name: engineers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.engineers (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    age integer,
    email character varying,
    country_id bigint,
    team_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 193 (class 1259 OID 16434)
-- Name: engineers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.engineers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2240 (class 0 OID 0)
-- Dependencies: 193
-- Name: engineers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.engineers_id_seq OWNED BY public.engineers.id;


--
-- TOC entry 196 (class 1259 OID 16449)
-- Name: programming_languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.programming_languages (
    id bigint NOT NULL,
    name character varying,
    category character varying,
    date_of_birth integer,
    inventor character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 195 (class 1259 OID 16447)
-- Name: programming_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.programming_languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2241 (class 0 OID 0)
-- Dependencies: 195
-- Name: programming_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.programming_languages_id_seq OWNED BY public.programming_languages.id;


--
-- TOC entry 199 (class 1259 OID 16499)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- TOC entry 198 (class 1259 OID 16460)
-- Name: teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teams (
    id bigint NOT NULL,
    name character varying,
    floor integer,
    features_shipped integer,
    current_bugs integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 197 (class 1259 OID 16458)
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2242 (class 0 OID 0)
-- Dependencies: 197
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- TOC entry 2058 (class 2604 OID 16391)
-- Name: books id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- TOC entry 2059 (class 2604 OID 16402)
-- Name: bookshelves id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bookshelves ALTER COLUMN id SET DEFAULT nextval('public.bookshelves_id_seq'::regclass);


--
-- TOC entry 2060 (class 2604 OID 16415)
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- TOC entry 2061 (class 2604 OID 16426)
-- Name: engineer_programming_languages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.engineer_programming_languages ALTER COLUMN id SET DEFAULT nextval('public.engineer_programming_languages_id_seq'::regclass);


--
-- TOC entry 2062 (class 2604 OID 16439)
-- Name: engineers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.engineers ALTER COLUMN id SET DEFAULT nextval('public.engineers_id_seq'::regclass);


--
-- TOC entry 2063 (class 2604 OID 16452)
-- Name: programming_languages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.programming_languages ALTER COLUMN id SET DEFAULT nextval('public.programming_languages_id_seq'::regclass);


--
-- TOC entry 2064 (class 2604 OID 16463)
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- TOC entry 2227 (class 0 OID 16507)
-- Dependencies: 200
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-06-02 00:49:57.5979	2020-06-02 00:49:57.5979
\.


--
-- TOC entry 2213 (class 0 OID 16388)
-- Dependencies: 186
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.books (id, title, author, publisher, genre, created_at, updated_at) FROM stdin;
1	The Glory and the Dream	Alita Renner DVM	NavPress	Mythology	2020-06-02 00:49:57.979457	2020-06-02 00:49:57.979457
2	Waiting for the Barbarians	Milo Terry MD	Pan Books	Horror	2020-06-02 00:49:57.983938	2020-06-02 00:49:57.983938
3	Number the Stars	Nancy Fadel	Legend Books	Suspense/Thriller	2020-06-02 00:49:57.987706	2020-06-02 00:49:57.987706
4	The Yellow Meads of Asphodel	Britteny Barrows	Black Sparrow Books	Biography/Autobiography	2020-06-02 00:49:57.991555	2020-06-02 00:49:57.991555
5	Such, Such Were the Joys	Cheryl Morar	Chambers Harrap	Short story	2020-06-02 00:49:57.995273	2020-06-02 00:49:57.995273
6	To Sail Beyond the Sunset	Chelsey Schumm MD	Cambridge University Press	Speech	2020-06-02 00:49:57.999541	2020-06-02 00:49:57.999541
7	A Time to Kill	Xavier Kuvalis	Open Court Publishing Company	Western	2020-06-02 00:49:58.003701	2020-06-02 00:49:58.003701
8	No Longer at Ease	Tasia Windler	Ten Speed Press	Tall tale	2020-06-02 00:49:58.007748	2020-06-02 00:49:58.007748
9	Edna O'Brien	Miki Koss	HarperCollins	Crime/Detective	2020-06-02 00:49:58.011668	2020-06-02 00:49:58.011668
10	A Confederacy of Dunces	Mr. John Mosciski	Macmillan Publishers	Legend	2020-06-02 00:49:58.015497	2020-06-02 00:49:58.015497
11	No Country for Old Men	Ahmad Blanda	Emerald Group Publishing	Mythology	2020-06-02 00:49:58.019865	2020-06-02 00:49:58.019865
12	The Man Within	Kassandra Gulgowski	Parachute Publishing	Comic/Graphic Novel	2020-06-02 00:49:58.023418	2020-06-02 00:49:58.023418
13	Behold the Man	Mrs. Cruz Jacobson	Libertas Academica	Narrative nonfiction	2020-06-02 00:49:58.02682	2020-06-02 00:49:58.02682
14	The Curious Incident of the Dog in the Night-Time	Lin Koch V	Da Capo Press	Mystery	2020-06-02 00:49:58.030376	2020-06-02 00:49:58.030376
15	Fame Is the Spur	Rhett Reinger	Vintage Books at Random House	Fairy tale	2020-06-02 00:49:58.034019	2020-06-02 00:49:58.034019
16	Tender Is the Night	Kristan Kautzer	Leafwood Publishers	Fable	2020-06-02 00:49:58.03762	2020-06-02 00:49:58.03762
17	Now Sleeps the Crimson Petal	Kyle Miller	University of Michigan Press	Narrative nonfiction	2020-06-02 00:49:58.041273	2020-06-02 00:49:58.041273
18	The Moving Finger	Neomi Gerhold	Parachute Publishing	Mystery	2020-06-02 00:49:58.045076	2020-06-02 00:49:58.045076
19	Many Waters	Rosita Pfannerstill	Harvill Press at Random House	Fantasy	2020-06-02 00:49:58.048821	2020-06-02 00:49:58.048821
20	Far From the Madding Crowd	Miss Ollie Hessel	André Deutsch	Fiction in verse	2020-06-02 00:49:58.052628	2020-06-02 00:49:58.052628
21	Death Be Not Proud	Jamaal Runolfsson	E. P. Dutton	Short story	2020-06-02 00:49:58.056295	2020-06-02 00:49:58.056295
22	Noli Me Tangere	Coretta Skiles	Bella Books	Legend	2020-06-02 00:49:58.060175	2020-06-02 00:49:58.060175
23	The Little Foxes	Edmundo Hyatt	Seagull Books	Historical fiction	2020-06-02 00:49:58.064454	2020-06-02 00:49:58.064454
24	The Moving Finger	Nanette Greenfelder MD	Library of America	Fiction narrative	2020-06-02 00:49:58.068965	2020-06-02 00:49:58.068965
25	An Acceptable Time	Ulysses Quigley	Haynes Manuals	Science fiction	2020-06-02 00:49:58.073012	2020-06-02 00:49:58.073012
26	After Many a Summer Dies the Swan	Tonia Feest III	T & T Clark	Realistic fiction	2020-06-02 00:49:58.076716	2020-06-02 00:49:58.076716
27	Consider Phlebas	Brice Crooks	Booktrope	Humor	2020-06-02 00:49:58.080392	2020-06-02 00:49:58.080392
28	The Moving Finger	Elana Muller	Firebrand Books	Legend	2020-06-02 00:49:58.084029	2020-06-02 00:49:58.084029
29	The Monkey's Raincoat	Elliott Koelpin	Parachute Publishing	Realistic fiction	2020-06-02 00:49:58.087895	2020-06-02 00:49:58.087895
30	Terrible Swift Sword	Cruz Jacobs	Fairview Press	Speech	2020-06-02 00:49:58.091539	2020-06-02 00:49:58.091539
31	As I Lay Dying	Roderick Stracke	George Newnes	Historical fiction	2020-06-02 00:49:58.095277	2020-06-02 00:49:58.095277
32	Look Homeward, Angel	Miss Toi DuBuque	Velazquez Press	Fiction in verse	2020-06-02 00:49:58.099678	2020-06-02 00:49:58.099678
33	An Evil Cradling	Frankie Leuschke	Viking Press	Crime/Detective	2020-06-02 00:49:58.105023	2020-06-02 00:49:58.105023
34	A Handful of Dust	Jenifer Hegmann	Athabasca University Press	Speech	2020-06-02 00:49:58.110086	2020-06-02 00:49:58.110086
35	Antic Hay	Breana Marquardt	G. P. Putnam's Sons	Essay	2020-06-02 00:49:58.11426	2020-06-02 00:49:58.11426
36	Time To Murder And Create	Dr. Jacob Lehner	Adis International	Western	2020-06-02 00:49:58.117926	2020-06-02 00:49:58.117926
37	Alone on a Wide, Wide Sea	Delois Schimmel	Holt McDougal	Short story	2020-06-02 00:49:58.121875	2020-06-02 00:49:58.121875
38	Gone with the Wind	Will Rogahn	NavPress	Metafiction	2020-06-02 00:49:58.125303	2020-06-02 00:49:58.125303
39	O Jerusalem!	Darell Becker	J. M. Dent	Speech	2020-06-02 00:49:58.128829	2020-06-02 00:49:58.128829
40	The Doors of Perception	Grant Heller	DAW Books	Mythopoeia	2020-06-02 00:49:58.132343	2020-06-02 00:49:58.132343
41	The Golden Apples of the Sun	Tommy Reichert	George H. Doran Company	Horror	2020-06-02 00:49:58.135844	2020-06-02 00:49:58.135844
42	Dulce et Decorum Est	Cherish Stokes	Caister Academic Press	Folklore	2020-06-02 00:49:58.139356	2020-06-02 00:49:58.139356
43	The Line of Beauty	Rocco Leannon	United States Government Publishing Office	Textbook	2020-06-02 00:49:58.142849	2020-06-02 00:49:58.142849
44	To Your Scattered Bodies Go	Stephan Ward	Jarrolds Publishing	Biography/Autobiography	2020-06-02 00:49:58.146803	2020-06-02 00:49:58.146803
45	Dance Dance Dance	Mrs. Cliff Rohan	Shuter & Shooter Publishers	Short story	2020-06-02 00:49:58.150908	2020-06-02 00:49:58.150908
46	No Longer at Ease	Dr. Lindsey Kreiger	Tate Publishing & Enterprises	Historical fiction	2020-06-02 00:49:58.156508	2020-06-02 00:49:58.156508
47	That Hideous Strength	Concepcion Hackett	Banner of Truth Trust	Mythology	2020-06-02 00:49:58.160856	2020-06-02 00:49:58.160856
48	The Mermaids Singing	Mana Rice	Earthscan	Folklore	2020-06-02 00:49:58.166865	2020-06-02 00:49:58.166865
49	Dance Dance Dance	Maurice Stark	Atlantic Books	Horror	2020-06-02 00:49:58.171634	2020-06-02 00:49:58.171634
50	The Way Through the Woods	Kami Rodriguez	University of Michigan Press	Crime/Detective	2020-06-02 00:49:58.175395	2020-06-02 00:49:58.175395
51	This Side of Paradise	Cornell Ryan	Shire Books	Fantasy	2020-06-02 00:49:58.179329	2020-06-02 00:49:58.179329
52	Gone with the Wind	Dr. Angelena McClure	Anvil Press Poetry	Fanfiction	2020-06-02 00:49:58.183419	2020-06-02 00:49:58.183419
53	Jesting Pilate	Shanika Wilkinson II	Lethe Press	Reference book	2020-06-02 00:49:58.187958	2020-06-02 00:49:58.187958
54	In a Glass Darkly	Suk Klocko	Manning Publications	Mythology	2020-06-02 00:49:58.192059	2020-06-02 00:49:58.192059
55	Stranger in a Strange Land	Maxima Gibson	Atlantic Books	Fiction in verse	2020-06-02 00:49:58.19687	2020-06-02 00:49:58.19687
56	Look to Windward	Reyes Tillman	New Directions Publishing	Fable	2020-06-02 00:49:58.201139	2020-06-02 00:49:58.201139
57	In Dubious Battle	Bethel Spencer	Jarrolds Publishing	Horror	2020-06-02 00:49:58.20542	2020-06-02 00:49:58.20542
58	No Country for Old Men	Classie Monahan	Brill Publishers	Fiction narrative	2020-06-02 00:49:58.210457	2020-06-02 00:49:58.210457
59	Beneath the Bleeding	Miquel VonRueden Jr.	New Directions Publishing	Fantasy	2020-06-02 00:49:58.215266	2020-06-02 00:49:58.215266
60	Cover Her Face	Antonia Kassulke	St. Martin's Press	Tall tale	2020-06-02 00:49:58.224076	2020-06-02 00:49:58.224076
61	Oh! To be in England	Jaime Kautzer	Atlas Press	Western	2020-06-02 00:49:58.228867	2020-06-02 00:49:58.228867
62	This Lime Tree Bower	Kristofer Armstrong	Carcanet Press	Horror	2020-06-02 00:49:58.233546	2020-06-02 00:49:58.233546
63	The Torment of Others	Deshawn D'Amore	Elsevier	Fanfiction	2020-06-02 00:49:58.238425	2020-06-02 00:49:58.238425
64	The Skull Beneath the Skin	Kimber Bruen	Virago Press	Narrative nonfiction	2020-06-02 00:49:58.243048	2020-06-02 00:49:58.243048
65	Alone on a Wide, Wide Sea	Marquetta Padberg	Boydell & Brewer	Textbook	2020-06-02 00:49:58.247727	2020-06-02 00:49:58.247727
66	For Whom the Bell Tolls	Wendy Barrows	Verso Books	Fairy tale	2020-06-02 00:49:58.252642	2020-06-02 00:49:58.252642
67	The Wealth of Nations	Mr. Tory Miller	Book Works	Humor	2020-06-02 00:49:58.257079	2020-06-02 00:49:58.257079
68	This Side of Paradise	Sabine Hirthe	Atheneum Books	Textbook	2020-06-02 00:49:58.261677	2020-06-02 00:49:58.261677
69	Françoise Sagan	Krystina Bahringer	Fearless Books	Tall tale	2020-06-02 00:49:58.265922	2020-06-02 00:49:58.265922
70	Tender Is the Night	Bernard Dietrich	Orion Books	Essay	2020-06-02 00:49:58.27054	2020-06-02 00:49:58.27054
71	Vile Bodies	Arica Herzog	McFarland & Company	Biography/Autobiography	2020-06-02 00:49:58.276731	2020-06-02 00:49:58.276731
72	A Confederacy of Dunces	Rey Parker	Library of America	Essay	2020-06-02 00:49:58.28212	2020-06-02 00:49:58.28212
73	To Say Nothing of the Dog	Jewel Schroeder	Holland Park Press	Folklore	2020-06-02 00:49:58.290142	2020-06-02 00:49:58.290142
74	Jesting Pilate	Mr. Dee Mayert	Eel Pie Publishing	Narrative nonfiction	2020-06-02 00:49:58.296324	2020-06-02 00:49:58.296324
75	Infinite Jest	Marcellus Schinner	Library of America	Crime/Detective	2020-06-02 00:49:58.303612	2020-06-02 00:49:58.303612
76	Paths of Glory	Gerald Yundt	Chatto and Windus	Western	2020-06-02 00:49:58.310082	2020-06-02 00:49:58.310082
77	Gone with the Wind	Mr. Claud Marvin	Addison-Wesley	Mythology	2020-06-02 00:49:58.316413	2020-06-02 00:49:58.316413
78	Bury My Heart at Wounded Knee	Mrs. Hilario Orn	Nonesuch Press	Fiction narrative	2020-06-02 00:49:58.322653	2020-06-02 00:49:58.322653
79	Fear and Trembling	Tifany Carter Jr.	Random House	Science fiction	2020-06-02 00:49:58.328429	2020-06-02 00:49:58.328429
80	Such, Such Were the Joys	Ramiro Morar	Allen Ltd	Fable	2020-06-02 00:49:58.334208	2020-06-02 00:49:58.334208
81	To Say Nothing of the Dog	Miss Hipolito Gleason	Chronicle Books	Mystery	2020-06-02 00:49:58.339773	2020-06-02 00:49:58.339773
82	A Passage to India	Yadira Berge	Butterworth-Heinemann	Mythology	2020-06-02 00:49:58.345492	2020-06-02 00:49:58.345492
83	Surprised by Joy	Gerri Bartell	New Holland Publishers	Fanfiction	2020-06-02 00:49:58.350458	2020-06-02 00:49:58.350458
84	The Grapes of Wrath	Norris Kiehn	Velazquez Press	Biography/Autobiography	2020-06-02 00:49:58.354926	2020-06-02 00:49:58.354926
85	The Violent Bear It Away	Stacey Waelchi	Nonesuch Press	Narrative nonfiction	2020-06-02 00:49:58.359343	2020-06-02 00:49:58.359343
86	An Instant In The Wind	Mrs. Domenic Hackett	Harcourt Trade Publishers	Classic	2020-06-02 00:49:58.363701	2020-06-02 00:49:58.363701
87	For Whom the Bell Tolls	Charita Jones II	Adis International	Comic/Graphic Novel	2020-06-02 00:49:58.368062	2020-06-02 00:49:58.368062
88	The Grapes of Wrath	Mr. Luigi Morar	Reed Publishing	Fairy tale	2020-06-02 00:49:58.372433	2020-06-02 00:49:58.372433
89	The Wind's Twelve Quarters	Miss King McKenzie	Athabasca University Press	Comic/Graphic Novel	2020-06-02 00:49:58.37673	2020-06-02 00:49:58.37673
90	Clouds of Witness	Mrs. Wes Hudson	Pathfinder Press	Humor	2020-06-02 00:49:58.381062	2020-06-02 00:49:58.381062
91	The Monkey's Raincoat	Jeromy Ruecker	Focal Press	Tall tale	2020-06-02 00:49:58.385431	2020-06-02 00:49:58.385431
92	An Acceptable Time	Royce Bruen	Pen and Sword Books	Classic	2020-06-02 00:49:58.389705	2020-06-02 00:49:58.389705
93	Now Sleeps the Crimson Petal	Tawana Von	Kensington Books	Mythology	2020-06-02 00:49:58.394157	2020-06-02 00:49:58.394157
94	In Death Ground	Alissa O'Conner	George H. Doran Company	Western	2020-06-02 00:49:58.398701	2020-06-02 00:49:58.398701
95	Recalled to Life	Israel Kirlin	Bantam Books	Fable	2020-06-02 00:49:58.403311	2020-06-02 00:49:58.403311
96	Fear and Trembling	Elizabet Volkman	Nauka	Comic/Graphic Novel	2020-06-02 00:49:58.407832	2020-06-02 00:49:58.407832
97	Vile Bodies	Dr. Wai Will	Mapin Publishing	Fanfiction	2020-06-02 00:49:58.41212	2020-06-02 00:49:58.41212
98	The Moon by Night	Collette Ferry	Harvill Press at Random House	Fairy tale	2020-06-02 00:49:58.416628	2020-06-02 00:49:58.416628
99	Cabbages and Kings	Siu Hudson	Cloverdale Corporation	Short story	2020-06-02 00:49:58.421083	2020-06-02 00:49:58.421083
100	Dance Dance Dance	Kellye Funk	Cambridge University Press	Horror	2020-06-02 00:49:58.425576	2020-06-02 00:49:58.425576
101	The Doors of Perception	Luvenia Yundt	Mainstream Publishing	Legend	2020-06-02 00:49:58.430019	2020-06-02 00:49:58.430019
102	In Death Ground	Rachell Walker	Eerdmans Publishing	Mythology	2020-06-02 00:49:58.434448	2020-06-02 00:49:58.434448
103	Dance Dance Dance	Kelley Shields	New English Library	Western	2020-06-02 00:49:58.438869	2020-06-02 00:49:58.438869
104	A Swiftly Tilting Planet	Garth Stamm	O'Reilly Media	Fanfiction	2020-06-02 00:49:58.443357	2020-06-02 00:49:58.443357
105	The Last Enemy	Dalton Erdman	Pathfinder Press	Narrative nonfiction	2020-06-02 00:49:58.447798	2020-06-02 00:49:58.447798
106	Ego Dominus Tuus	Malcolm Howe	Parragon	Essay	2020-06-02 00:49:58.452304	2020-06-02 00:49:58.452304
107	Number the Stars	Mr. Gregory Cruickshank	Newnes	Comic/Graphic Novel	2020-06-02 00:49:58.456711	2020-06-02 00:49:58.456711
108	Arms and the Man	Jeffery Emmerich	New Holland Publishers	Fiction narrative	2020-06-02 00:49:58.461118	2020-06-02 00:49:58.461118
109	The Last Enemy	Lura Zieme	Churchill Livingstone	Classic	2020-06-02 00:49:58.465715	2020-06-02 00:49:58.465715
110	Everything is Illuminated	Norman Paucek	Viking Press	Speech	2020-06-02 00:49:58.470107	2020-06-02 00:49:58.470107
111	A Monstrous Regiment of Women	Diego Harber II	Orchard Books	Fanfiction	2020-06-02 00:49:58.477555	2020-06-02 00:49:58.477555
112	What's Become of Waring	Matt Shanahan DDS	Gefen Publishing House	Fiction narrative	2020-06-02 00:49:58.482177	2020-06-02 00:49:58.482177
113	Rosemary Sutcliff	Tiffaney Gulgowski I	André Deutsch	Textbook	2020-06-02 00:49:58.486755	2020-06-02 00:49:58.486755
114	Cover Her Face	Jerlene Langosh Jr.	Tate Publishing & Enterprises	Reference book	2020-06-02 00:49:58.491316	2020-06-02 00:49:58.491316
115	By Grand Central Station I Sat Down and Wept	Anita Schmitt	University of Michigan Press	Fanfiction	2020-06-02 00:49:58.495714	2020-06-02 00:49:58.495714
116	Jacob Have I Loved	Ms. Marinda Welch	Pantheon Books at Random House	Tall tale	2020-06-02 00:49:58.500155	2020-06-02 00:49:58.500155
117	If I Forget Thee Jerusalem	Ms. Antonio Zboncak	Leafwood Publishers	Classic	2020-06-02 00:49:58.504877	2020-06-02 00:49:58.504877
118	The Grapes of Wrath	Shavon Sawayn	New Holland Publishers	Science fiction	2020-06-02 00:49:58.509601	2020-06-02 00:49:58.509601
119	In a Glass Darkly	Breann Paucek	HarperTrophy	Science fiction	2020-06-02 00:49:58.514095	2020-06-02 00:49:58.514095
120	A Swiftly Tilting Planet	Ila Bernier	Charles Scribner's Sons	Crime/Detective	2020-06-02 00:49:58.518846	2020-06-02 00:49:58.518846
121	O Pioneers!	Wilton Baumbach	Cengage Learning	Mythology	2020-06-02 00:49:58.52355	2020-06-02 00:49:58.52355
122	The World, the Flesh and the Devil	Lora Marvin	Churchill Livingstone	Fiction narrative	2020-06-02 00:49:58.527868	2020-06-02 00:49:58.527868
123	The Cricket on the Hearth	Kurt Kulas	Tate Publishing & Enterprises	Short story	2020-06-02 00:49:58.532871	2020-06-02 00:49:58.532871
124	In a Glass Darkly	Micaela Jaskolski	Mandrake of Oxford	Crime/Detective	2020-06-02 00:49:58.541846	2020-06-02 00:49:58.541846
125	The Man Within	Nicki Berge	Naiad Press	Fiction narrative	2020-06-02 00:49:58.5487	2020-06-02 00:49:58.5487
126	No Highway	Jaleesa Cruickshank MD	Bloomsbury Publishing Plc	Fable	2020-06-02 00:49:58.558446	2020-06-02 00:49:58.558446
127	Frequent Hearses	Dallas Bailey	Edupedia Publications	Reference book	2020-06-02 00:49:58.56542	2020-06-02 00:49:58.56542
128	Ah, Wilderness!	Riley Kiehn	Pecan Grove Press	Mythology	2020-06-02 00:49:58.573418	2020-06-02 00:49:58.573418
129	Shall not Perish	Dulce Langworth	Kogan Page	Mystery	2020-06-02 00:49:58.579929	2020-06-02 00:49:58.579929
130	Time of our Darkness	Gwenn Champlin MD	Fairview Press	Fiction narrative	2020-06-02 00:49:58.587306	2020-06-02 00:49:58.587306
131	The Moon by Night	Patrica Skiles	McFarland & Company	Narrative nonfiction	2020-06-02 00:49:58.593618	2020-06-02 00:49:58.593618
132	The Moving Finger	Trent Jakubowski	Hawthorne Books	Mythology	2020-06-02 00:49:58.600086	2020-06-02 00:49:58.600086
133	Wildfire at Midnight	Ben Lindgren	Booktrope	Crime/Detective	2020-06-02 00:49:58.610165	2020-06-02 00:49:58.610165
134	A Confederacy of Dunces	Ian Heathcote	D. Appleton & Company	Crime/Detective	2020-06-02 00:49:58.616747	2020-06-02 00:49:58.616747
135	Some Buried Caesar	Clifford Wiza	No Starch Press	Mythopoeia	2020-06-02 00:49:58.624046	2020-06-02 00:49:58.624046
136	That Hideous Strength	Simonne Zulauf	Carcanet Press	Speech	2020-06-02 00:49:58.63002	2020-06-02 00:49:58.63002
137	The Parliament of Man	Beau Becker	Borgo Press	Mythology	2020-06-02 00:49:58.636761	2020-06-02 00:49:58.636761
138	Nectar in a Sieve	Shannon Grady	Carnegie Mellon University Press	Legend	2020-06-02 00:49:58.644112	2020-06-02 00:49:58.644112
139	Unweaving the Rainbow	Leonor Ryan	Ziff Davis Media	Mystery	2020-06-02 00:49:58.655574	2020-06-02 00:49:58.655574
140	The Way of All Flesh	Pearlene Price	Charles Scribner's Sons	Fiction in verse	2020-06-02 00:49:58.66187	2020-06-02 00:49:58.66187
141	Paths of Glory	Lou Mitchell I	Shoemaker & Hoard Publishers	Reference book	2020-06-02 00:49:58.668382	2020-06-02 00:49:58.668382
142	In a Glass Darkly	Chara Bauch	Cisco Press	Speech	2020-06-02 00:49:58.675487	2020-06-02 00:49:58.675487
143	A Time to Kill	Ms. Riley Goldner	Tate Publishing & Enterprises	Horror	2020-06-02 00:49:58.681461	2020-06-02 00:49:58.681461
144	A Time to Kill	Miss Shonta Lang	Chambers Harrap	Essay	2020-06-02 00:49:58.689569	2020-06-02 00:49:58.689569
145	Consider the Lilies	Carissa Herman	Kodansha	Fantasy	2020-06-02 00:49:58.69733	2020-06-02 00:49:58.69733
146	Paths of Glory	Stanford Steuber II	Liberty Fund	Folklore	2020-06-02 00:49:58.70635	2020-06-02 00:49:58.70635
147	Jesting Pilate	Minh Brakus	Manor House Publishing	Humor	2020-06-02 00:49:58.712734	2020-06-02 00:49:58.712734
148	O Jerusalem!	Gilberto Stroman	HarperCollins	Folklore	2020-06-02 00:49:58.720824	2020-06-02 00:49:58.720824
149	Sleep the Brave	Mr. Loyd O'Hara	Sams Publishing	Reference book	2020-06-02 00:49:58.72792	2020-06-02 00:49:58.72792
150	When the Green Woods Laugh	Jarrod Torphy	Pen and Sword Books	Legend	2020-06-02 00:49:58.735538	2020-06-02 00:49:58.735538
151	Dulce et Decorum Est	Mr. Carroll Denesik	Holland Park Press	Comic/Graphic Novel	2020-06-02 00:49:58.743663	2020-06-02 00:49:58.743663
152	Of Human Bondage	Odilia Satterfield Sr.	Mapin Publishing	Textbook	2020-06-02 00:49:58.750315	2020-06-02 00:49:58.750315
153	The Mermaids Singing	Mrs. Porfirio Herman	Random House	Narrative nonfiction	2020-06-02 00:49:58.758579	2020-06-02 00:49:58.758579
154	A Darkling Plain	Phil Kohler III	Tartarus Press	Textbook	2020-06-02 00:49:58.764984	2020-06-02 00:49:58.764984
155	To Your Scattered Bodies Go	Sang Kirlin	Carcanet Press	Science fiction	2020-06-02 00:49:58.772972	2020-06-02 00:49:58.772972
156	Frequent Hearses	Sam Harvey	Signet Books	Fanfiction	2020-06-02 00:49:58.780545	2020-06-02 00:49:58.780545
157	Shall not Perish	Mrs. Stefan Konopelski	Nonesuch Press	Suspense/Thriller	2020-06-02 00:49:58.787662	2020-06-02 00:49:58.787662
158	Mr Standfast	Odessa McClure	D. Reidel	Historical fiction	2020-06-02 00:49:58.793906	2020-06-02 00:49:58.793906
159	Have His Carcase	Freddy Abernathy	Allen Ltd	Fairy tale	2020-06-02 00:49:58.800361	2020-06-02 00:49:58.800361
160	For a Breath I Tarry	Maire Heathcote III	Harvard University Press	Fiction narrative	2020-06-02 00:49:58.80914	2020-06-02 00:49:58.80914
161	A Glass of Blessings	Forest Keeling	Papadakis Publisher	Short story	2020-06-02 00:49:58.815465	2020-06-02 00:49:58.815465
162	Oh! To be in England	Ms. Margarite Spinka	DAW Books	Textbook	2020-06-02 00:49:58.82321	2020-06-02 00:49:58.82321
163	Of Human Bondage	Gerald Sporer	Harvard University Press	Folklore	2020-06-02 00:49:58.829737	2020-06-02 00:49:58.829737
164	Of Human Bondage	Asuncion Hoppe	Berkley Books	Western	2020-06-02 00:49:58.83722	2020-06-02 00:49:58.83722
165	Behold the Man	Ms. Denisse Gerhold	Zed Books	Mythology	2020-06-02 00:49:58.844329	2020-06-02 00:49:58.844329
166	The Mermaids Singing	Cary Quigley	Shambhala Publications	Mystery	2020-06-02 00:49:58.85056	2020-06-02 00:49:58.85056
167	In a Dry Season	Bryan Cummings	Cambridge University Press	Folklore	2020-06-02 00:49:58.858156	2020-06-02 00:49:58.858156
168	Nine Coaches Waiting	China Erdman	Naiad Press	Classic	2020-06-02 00:49:58.86433	2020-06-02 00:49:58.86433
169	Look Homeward, Angel	Mr. Sage Lind	New Village Press	Textbook	2020-06-02 00:49:58.871462	2020-06-02 00:49:58.871462
170	Absalom, Absalom!	Cory Langosh	Virago Press	Mythopoeia	2020-06-02 00:49:58.877575	2020-06-02 00:49:58.877575
171	Those Barren Leaves, Thrones, Dominations	Isidra Hettinger	Marion Boyars Publishers	Fiction narrative	2020-06-02 00:49:58.883437	2020-06-02 00:49:58.883437
172	Recalled to Life	Dorsey Stanton	Cengage Learning	Historical fiction	2020-06-02 00:49:58.890337	2020-06-02 00:49:58.890337
173	Down to a Sunless Sea	Elinore McLaughlin Jr.	Random House	Comic/Graphic Novel	2020-06-02 00:49:58.896395	2020-06-02 00:49:58.896395
174	Tiger! Tiger!	Mr. Vince Trantow	G-Unit Books	Fable	2020-06-02 00:49:58.903296	2020-06-02 00:49:58.903296
175	Françoise Sagan	Dorethea Terry	McClelland and Stewart	Folklore	2020-06-02 00:49:58.910154	2020-06-02 00:49:58.910154
176	The Other Side of Silence	Mr. Randolph Schmitt	Hachette Book Group USA	Humor	2020-06-02 00:49:58.916753	2020-06-02 00:49:58.916753
177	Have His Carcase	Joe Larkin	Ballantine Books	Fanfiction	2020-06-02 00:49:58.923889	2020-06-02 00:49:58.923889
178	No Longer at Ease	Napoleon O'Conner	G-Unit Books	Humor	2020-06-02 00:49:58.929607	2020-06-02 00:49:58.929607
179	To Say Nothing of the Dog	Raul Schinner	Bloomsbury Publishing Plc	Tall tale	2020-06-02 00:49:58.935937	2020-06-02 00:49:58.935937
180	The Grapes of Wrath	Ms. Jackie Lindgren	HarperCollins	Speech	2020-06-02 00:49:58.942403	2020-06-02 00:49:58.942403
181	To Sail Beyond the Sunset	Ms. Shawn Strosin	Library of America	Biography/Autobiography	2020-06-02 00:49:58.948199	2020-06-02 00:49:58.948199
182	Some Buried Caesar	Mrs. Dewitt Bartoletti	Libertas Academica	Folklore	2020-06-02 00:49:58.955296	2020-06-02 00:49:58.955296
183	This Lime Tree Bower	Mrs. Ronnie Harber	Orchard Books	Folklore	2020-06-02 00:49:58.961154	2020-06-02 00:49:58.961154
184	A Time to Kill	Irina Flatley DDS	Tartarus Press	Reference book	2020-06-02 00:49:58.967195	2020-06-02 00:49:58.967195
185	Blood's a Rover	Rupert Parker	New English Library	Mythology	2020-06-02 00:49:58.974616	2020-06-02 00:49:58.974616
186	A Passage to India	Venessa Mante	Flame Tree Publishing	Suspense/Thriller	2020-06-02 00:49:58.980369	2020-06-02 00:49:58.980369
187	The Skull Beneath the Skin	Oren Pouros III	Hawthorne Books	Humor	2020-06-02 00:49:58.986579	2020-06-02 00:49:58.986579
188	The Golden Apples of the Sun	Rafael Reichel Jr.	Tachyon Publications	Folklore	2020-06-02 00:49:58.993487	2020-06-02 00:49:58.993487
189	A Many-Splendoured Thing	Troy Leuschke Sr.	United States Government Publishing Office	Fantasy	2020-06-02 00:49:58.999409	2020-06-02 00:49:58.999409
190	Surprised by Joy	Lynn Armstrong	Happy House	Legend	2020-06-02 00:49:59.006377	2020-06-02 00:49:59.006377
191	The Wings of the Dove	Ramon Larkin PhD	Zed Books	Reference book	2020-06-02 00:49:59.012067	2020-06-02 00:49:59.012067
192	Dying of the Light	Prudence Huel	Matthias Media	Textbook	2020-06-02 00:49:59.017788	2020-06-02 00:49:59.017788
193	In a Dry Season	Dr. Rhett O'Keefe	Bloomsbury Publishing Plc	Crime/Detective	2020-06-02 00:49:59.024369	2020-06-02 00:49:59.024369
194	Eyeless in Gaza	Vicente Rolfson	Andrews McMeel Publishing	Horror	2020-06-02 00:49:59.030105	2020-06-02 00:49:59.030105
195	A Monstrous Regiment of Women	Hermelinda King	Kogan Page	Comic/Graphic Novel	2020-06-02 00:49:59.036408	2020-06-02 00:49:59.036408
196	Nectar in a Sieve	Janene Hagenes	Secker & Warburg	Essay	2020-06-02 00:49:59.043088	2020-06-02 00:49:59.043088
197	The Moving Toyshop	Porter Crona	New English Library	Historical fiction	2020-06-02 00:49:59.049093	2020-06-02 00:49:59.049093
198	By Grand Central Station I Sat Down and Wept	Antone Ferry	Adis International	Fiction narrative	2020-06-02 00:49:59.056809	2020-06-02 00:49:59.056809
199	That Good Night	Garrett Cummings	Charles Scribner's Sons	Historical fiction	2020-06-02 00:49:59.062811	2020-06-02 00:49:59.062811
200	No Country for Old Men	Enid Schneider	Focal Press	Suspense/Thriller	2020-06-02 00:49:59.069195	2020-06-02 00:49:59.069195
201	The Glory and the Dream	Alita Renner DVM	NavPress	Mythology	2020-06-02 00:49:59.076034	2020-06-02 00:49:59.076034
202	Waiting for the Barbarians	Milo Terry MD	Pan Books	Horror	2020-06-02 00:49:59.081934	2020-06-02 00:49:59.081934
203	Number the Stars	Nancy Fadel	Legend Books	Suspense/Thriller	2020-06-02 00:49:59.088777	2020-06-02 00:49:59.088777
204	The Yellow Meads of Asphodel	Britteny Barrows	Black Sparrow Books	Biography/Autobiography	2020-06-02 00:49:59.094615	2020-06-02 00:49:59.094615
205	Such, Such Were the Joys	Cheryl Morar	Chambers Harrap	Short story	2020-06-02 00:49:59.100349	2020-06-02 00:49:59.100349
206	To Sail Beyond the Sunset	Chelsey Schumm MD	Cambridge University Press	Speech	2020-06-02 00:49:59.109027	2020-06-02 00:49:59.109027
207	A Time to Kill	Xavier Kuvalis	Open Court Publishing Company	Western	2020-06-02 00:49:59.116944	2020-06-02 00:49:59.116944
208	No Longer at Ease	Tasia Windler	Ten Speed Press	Tall tale	2020-06-02 00:49:59.124141	2020-06-02 00:49:59.124141
209	Edna O'Brien	Miki Koss	HarperCollins	Crime/Detective	2020-06-02 00:49:59.130042	2020-06-02 00:49:59.130042
210	A Confederacy of Dunces	Mr. John Mosciski	Macmillan Publishers	Legend	2020-06-02 00:49:59.136548	2020-06-02 00:49:59.136548
211	No Country for Old Men	Ahmad Blanda	Emerald Group Publishing	Mythology	2020-06-02 00:49:59.143353	2020-06-02 00:49:59.143353
212	The Man Within	Kassandra Gulgowski	Parachute Publishing	Comic/Graphic Novel	2020-06-02 00:49:59.152716	2020-06-02 00:49:59.152716
213	Behold the Man	Mrs. Cruz Jacobson	Libertas Academica	Narrative nonfiction	2020-06-02 00:49:59.159607	2020-06-02 00:49:59.159607
214	The Curious Incident of the Dog in the Night-Time	Lin Koch V	Da Capo Press	Mystery	2020-06-02 00:49:59.165114	2020-06-02 00:49:59.165114
215	Fame Is the Spur	Rhett Reinger	Vintage Books at Random House	Fairy tale	2020-06-02 00:49:59.172034	2020-06-02 00:49:59.172034
216	Tender Is the Night	Kristan Kautzer	Leafwood Publishers	Fable	2020-06-02 00:49:59.178053	2020-06-02 00:49:59.178053
217	Now Sleeps the Crimson Petal	Kyle Miller	University of Michigan Press	Narrative nonfiction	2020-06-02 00:49:59.183774	2020-06-02 00:49:59.183774
218	The Moving Finger	Neomi Gerhold	Parachute Publishing	Mystery	2020-06-02 00:49:59.191384	2020-06-02 00:49:59.191384
219	Many Waters	Rosita Pfannerstill	Harvill Press at Random House	Fantasy	2020-06-02 00:49:59.196982	2020-06-02 00:49:59.196982
220	Far From the Madding Crowd	Miss Ollie Hessel	André Deutsch	Fiction in verse	2020-06-02 00:49:59.203177	2020-06-02 00:49:59.203177
221	Death Be Not Proud	Jamaal Runolfsson	E. P. Dutton	Short story	2020-06-02 00:49:59.209622	2020-06-02 00:49:59.209622
222	Noli Me Tangere	Coretta Skiles	Bella Books	Legend	2020-06-02 00:49:59.215394	2020-06-02 00:49:59.215394
223	The Little Foxes	Edmundo Hyatt	Seagull Books	Historical fiction	2020-06-02 00:49:59.222399	2020-06-02 00:49:59.222399
224	The Moving Finger	Nanette Greenfelder MD	Library of America	Fiction narrative	2020-06-02 00:49:59.228381	2020-06-02 00:49:59.228381
225	An Acceptable Time	Ulysses Quigley	Haynes Manuals	Science fiction	2020-06-02 00:49:59.234024	2020-06-02 00:49:59.234024
226	After Many a Summer Dies the Swan	Tonia Feest III	T & T Clark	Realistic fiction	2020-06-02 00:49:59.241118	2020-06-02 00:49:59.241118
227	Consider Phlebas	Brice Crooks	Booktrope	Humor	2020-06-02 00:49:59.247025	2020-06-02 00:49:59.247025
228	The Moving Finger	Elana Muller	Firebrand Books	Legend	2020-06-02 00:49:59.253625	2020-06-02 00:49:59.253625
229	The Monkey's Raincoat	Elliott Koelpin	Parachute Publishing	Realistic fiction	2020-06-02 00:49:59.259919	2020-06-02 00:49:59.259919
230	Terrible Swift Sword	Cruz Jacobs	Fairview Press	Speech	2020-06-02 00:49:59.265859	2020-06-02 00:49:59.265859
231	As I Lay Dying	Roderick Stracke	George Newnes	Historical fiction	2020-06-02 00:49:59.272592	2020-06-02 00:49:59.272592
232	Look Homeward, Angel	Miss Toi DuBuque	Velazquez Press	Fiction in verse	2020-06-02 00:49:59.27858	2020-06-02 00:49:59.27858
233	An Evil Cradling	Frankie Leuschke	Viking Press	Crime/Detective	2020-06-02 00:49:59.284422	2020-06-02 00:49:59.284422
234	A Handful of Dust	Jenifer Hegmann	Athabasca University Press	Speech	2020-06-02 00:49:59.291596	2020-06-02 00:49:59.291596
235	Antic Hay	Breana Marquardt	G. P. Putnam's Sons	Essay	2020-06-02 00:49:59.297837	2020-06-02 00:49:59.297837
236	Time To Murder And Create	Dr. Jacob Lehner	Adis International	Western	2020-06-02 00:49:59.304467	2020-06-02 00:49:59.304467
237	Alone on a Wide, Wide Sea	Delois Schimmel	Holt McDougal	Short story	2020-06-02 00:49:59.310894	2020-06-02 00:49:59.310894
238	Gone with the Wind	Will Rogahn	NavPress	Metafiction	2020-06-02 00:49:59.316687	2020-06-02 00:49:59.316687
239	O Jerusalem!	Darell Becker	J. M. Dent	Speech	2020-06-02 00:49:59.323498	2020-06-02 00:49:59.323498
240	The Doors of Perception	Grant Heller	DAW Books	Mythopoeia	2020-06-02 00:49:59.329106	2020-06-02 00:49:59.329106
241	The Golden Apples of the Sun	Tommy Reichert	George H. Doran Company	Horror	2020-06-02 00:49:59.334733	2020-06-02 00:49:59.334733
242	Dulce et Decorum Est	Cherish Stokes	Caister Academic Press	Folklore	2020-06-02 00:49:59.34174	2020-06-02 00:49:59.34174
243	The Line of Beauty	Rocco Leannon	United States Government Publishing Office	Textbook	2020-06-02 00:49:59.348314	2020-06-02 00:49:59.348314
244	To Your Scattered Bodies Go	Stephan Ward	Jarrolds Publishing	Biography/Autobiography	2020-06-02 00:49:59.35433	2020-06-02 00:49:59.35433
245	Dance Dance Dance	Mrs. Cliff Rohan	Shuter & Shooter Publishers	Short story	2020-06-02 00:49:59.360842	2020-06-02 00:49:59.360842
246	No Longer at Ease	Dr. Lindsey Kreiger	Tate Publishing & Enterprises	Historical fiction	2020-06-02 00:49:59.366621	2020-06-02 00:49:59.366621
247	That Hideous Strength	Concepcion Hackett	Banner of Truth Trust	Mythology	2020-06-02 00:49:59.37309	2020-06-02 00:49:59.37309
248	The Mermaids Singing	Mana Rice	Earthscan	Folklore	2020-06-02 00:49:59.37963	2020-06-02 00:49:59.37963
249	Dance Dance Dance	Maurice Stark	Atlantic Books	Horror	2020-06-02 00:49:59.385601	2020-06-02 00:49:59.385601
250	The Way Through the Woods	Kami Rodriguez	University of Michigan Press	Crime/Detective	2020-06-02 00:49:59.391941	2020-06-02 00:49:59.391941
251	This Side of Paradise	Cornell Ryan	Shire Books	Fantasy	2020-06-02 00:49:59.398122	2020-06-02 00:49:59.398122
252	Gone with the Wind	Dr. Angelena McClure	Anvil Press Poetry	Fanfiction	2020-06-02 00:49:59.40457	2020-06-02 00:49:59.40457
253	Jesting Pilate	Shanika Wilkinson II	Lethe Press	Reference book	2020-06-02 00:49:59.411754	2020-06-02 00:49:59.411754
254	In a Glass Darkly	Suk Klocko	Manning Publications	Mythology	2020-06-02 00:49:59.417883	2020-06-02 00:49:59.417883
255	Stranger in a Strange Land	Maxima Gibson	Atlantic Books	Fiction in verse	2020-06-02 00:49:59.424223	2020-06-02 00:49:59.424223
256	Look to Windward	Reyes Tillman	New Directions Publishing	Fable	2020-06-02 00:49:59.430869	2020-06-02 00:49:59.430869
257	In Dubious Battle	Bethel Spencer	Jarrolds Publishing	Horror	2020-06-02 00:49:59.43704	2020-06-02 00:49:59.43704
258	No Country for Old Men	Classie Monahan	Brill Publishers	Fiction narrative	2020-06-02 00:49:59.443045	2020-06-02 00:49:59.443045
259	Beneath the Bleeding	Miquel VonRueden Jr.	New Directions Publishing	Fantasy	2020-06-02 00:49:59.448849	2020-06-02 00:49:59.448849
260	Cover Her Face	Antonia Kassulke	St. Martin's Press	Tall tale	2020-06-02 00:49:59.455061	2020-06-02 00:49:59.455061
261	Oh! To be in England	Jaime Kautzer	Atlas Press	Western	2020-06-02 00:49:59.461738	2020-06-02 00:49:59.461738
262	This Lime Tree Bower	Kristofer Armstrong	Carcanet Press	Horror	2020-06-02 00:49:59.467572	2020-06-02 00:49:59.467572
263	The Torment of Others	Deshawn D'Amore	Elsevier	Fanfiction	2020-06-02 00:49:59.474098	2020-06-02 00:49:59.474098
264	The Skull Beneath the Skin	Kimber Bruen	Virago Press	Narrative nonfiction	2020-06-02 00:49:59.481033	2020-06-02 00:49:59.481033
265	Alone on a Wide, Wide Sea	Marquetta Padberg	Boydell & Brewer	Textbook	2020-06-02 00:49:59.487441	2020-06-02 00:49:59.487441
266	For Whom the Bell Tolls	Wendy Barrows	Verso Books	Fairy tale	2020-06-02 00:49:59.494381	2020-06-02 00:49:59.494381
267	The Wealth of Nations	Mr. Tory Miller	Book Works	Humor	2020-06-02 00:49:59.500206	2020-06-02 00:49:59.500206
268	This Side of Paradise	Sabine Hirthe	Atheneum Books	Textbook	2020-06-02 00:49:59.506145	2020-06-02 00:49:59.506145
269	Françoise Sagan	Krystina Bahringer	Fearless Books	Tall tale	2020-06-02 00:49:59.51306	2020-06-02 00:49:59.51306
270	Tender Is the Night	Bernard Dietrich	Orion Books	Essay	2020-06-02 00:49:59.519103	2020-06-02 00:49:59.519103
271	Vile Bodies	Arica Herzog	McFarland & Company	Biography/Autobiography	2020-06-02 00:49:59.525395	2020-06-02 00:49:59.525395
272	A Confederacy of Dunces	Rey Parker	Library of America	Essay	2020-06-02 00:49:59.531066	2020-06-02 00:49:59.531066
273	To Say Nothing of the Dog	Jewel Schroeder	Holland Park Press	Folklore	2020-06-02 00:49:59.53705	2020-06-02 00:49:59.53705
274	Jesting Pilate	Mr. Dee Mayert	Eel Pie Publishing	Narrative nonfiction	2020-06-02 00:49:59.543666	2020-06-02 00:49:59.543666
275	Infinite Jest	Marcellus Schinner	Library of America	Crime/Detective	2020-06-02 00:49:59.549863	2020-06-02 00:49:59.549863
276	Paths of Glory	Gerald Yundt	Chatto and Windus	Western	2020-06-02 00:49:59.55619	2020-06-02 00:49:59.55619
277	Gone with the Wind	Mr. Claud Marvin	Addison-Wesley	Mythology	2020-06-02 00:49:59.562907	2020-06-02 00:49:59.562907
278	Bury My Heart at Wounded Knee	Mrs. Hilario Orn	Nonesuch Press	Fiction narrative	2020-06-02 00:49:59.569028	2020-06-02 00:49:59.569028
279	Fear and Trembling	Tifany Carter Jr.	Random House	Science fiction	2020-06-02 00:49:59.575176	2020-06-02 00:49:59.575176
280	Such, Such Were the Joys	Ramiro Morar	Allen Ltd	Fable	2020-06-02 00:49:59.581541	2020-06-02 00:49:59.581541
281	To Say Nothing of the Dog	Miss Hipolito Gleason	Chronicle Books	Mystery	2020-06-02 00:49:59.588984	2020-06-02 00:49:59.588984
282	A Passage to India	Yadira Berge	Butterworth-Heinemann	Mythology	2020-06-02 00:49:59.595046	2020-06-02 00:49:59.595046
283	Surprised by Joy	Gerri Bartell	New Holland Publishers	Fanfiction	2020-06-02 00:49:59.600978	2020-06-02 00:49:59.600978
284	The Grapes of Wrath	Norris Kiehn	Velazquez Press	Biography/Autobiography	2020-06-02 00:49:59.607197	2020-06-02 00:49:59.607197
285	The Violent Bear It Away	Stacey Waelchi	Nonesuch Press	Narrative nonfiction	2020-06-02 00:49:59.61685	2020-06-02 00:49:59.61685
286	An Instant In The Wind	Mrs. Domenic Hackett	Harcourt Trade Publishers	Classic	2020-06-02 00:49:59.623659	2020-06-02 00:49:59.623659
287	For Whom the Bell Tolls	Charita Jones II	Adis International	Comic/Graphic Novel	2020-06-02 00:49:59.630134	2020-06-02 00:49:59.630134
288	The Grapes of Wrath	Mr. Luigi Morar	Reed Publishing	Fairy tale	2020-06-02 00:49:59.636325	2020-06-02 00:49:59.636325
289	The Wind's Twelve Quarters	Miss King McKenzie	Athabasca University Press	Comic/Graphic Novel	2020-06-02 00:49:59.643101	2020-06-02 00:49:59.643101
290	Clouds of Witness	Mrs. Wes Hudson	Pathfinder Press	Humor	2020-06-02 00:49:59.649354	2020-06-02 00:49:59.649354
291	The Monkey's Raincoat	Jeromy Ruecker	Focal Press	Tall tale	2020-06-02 00:49:59.655138	2020-06-02 00:49:59.655138
292	An Acceptable Time	Royce Bruen	Pen and Sword Books	Classic	2020-06-02 00:49:59.660863	2020-06-02 00:49:59.660863
293	Now Sleeps the Crimson Petal	Tawana Von	Kensington Books	Mythology	2020-06-02 00:49:59.666185	2020-06-02 00:49:59.666185
294	In Death Ground	Alissa O'Conner	George H. Doran Company	Western	2020-06-02 00:49:59.671659	2020-06-02 00:49:59.671659
295	Recalled to Life	Israel Kirlin	Bantam Books	Fable	2020-06-02 00:49:59.676426	2020-06-02 00:49:59.676426
296	Fear and Trembling	Elizabet Volkman	Nauka	Comic/Graphic Novel	2020-06-02 00:49:59.680843	2020-06-02 00:49:59.680843
297	Vile Bodies	Dr. Wai Will	Mapin Publishing	Fanfiction	2020-06-02 00:49:59.685295	2020-06-02 00:49:59.685295
298	The Moon by Night	Collette Ferry	Harvill Press at Random House	Fairy tale	2020-06-02 00:49:59.689698	2020-06-02 00:49:59.689698
299	Cabbages and Kings	Siu Hudson	Cloverdale Corporation	Short story	2020-06-02 00:49:59.694115	2020-06-02 00:49:59.694115
300	Dance Dance Dance	Kellye Funk	Cambridge University Press	Horror	2020-06-02 00:49:59.698468	2020-06-02 00:49:59.698468
301	The Doors of Perception	Luvenia Yundt	Mainstream Publishing	Legend	2020-06-02 00:49:59.702751	2020-06-02 00:49:59.702751
302	In Death Ground	Rachell Walker	Eerdmans Publishing	Mythology	2020-06-02 00:49:59.707084	2020-06-02 00:49:59.707084
303	Dance Dance Dance	Kelley Shields	New English Library	Western	2020-06-02 00:49:59.711596	2020-06-02 00:49:59.711596
304	A Swiftly Tilting Planet	Garth Stamm	O'Reilly Media	Fanfiction	2020-06-02 00:49:59.716082	2020-06-02 00:49:59.716082
305	The Last Enemy	Dalton Erdman	Pathfinder Press	Narrative nonfiction	2020-06-02 00:49:59.721439	2020-06-02 00:49:59.721439
306	Ego Dominus Tuus	Malcolm Howe	Parragon	Essay	2020-06-02 00:49:59.726425	2020-06-02 00:49:59.726425
307	Number the Stars	Mr. Gregory Cruickshank	Newnes	Comic/Graphic Novel	2020-06-02 00:49:59.731075	2020-06-02 00:49:59.731075
308	Arms and the Man	Jeffery Emmerich	New Holland Publishers	Fiction narrative	2020-06-02 00:49:59.735528	2020-06-02 00:49:59.735528
309	The Last Enemy	Lura Zieme	Churchill Livingstone	Classic	2020-06-02 00:49:59.74005	2020-06-02 00:49:59.74005
310	Everything is Illuminated	Norman Paucek	Viking Press	Speech	2020-06-02 00:49:59.744625	2020-06-02 00:49:59.744625
311	A Monstrous Regiment of Women	Diego Harber II	Orchard Books	Fanfiction	2020-06-02 00:49:59.749099	2020-06-02 00:49:59.749099
312	What's Become of Waring	Matt Shanahan DDS	Gefen Publishing House	Fiction narrative	2020-06-02 00:49:59.753772	2020-06-02 00:49:59.753772
313	Rosemary Sutcliff	Tiffaney Gulgowski I	André Deutsch	Textbook	2020-06-02 00:49:59.758338	2020-06-02 00:49:59.758338
314	Cover Her Face	Jerlene Langosh Jr.	Tate Publishing & Enterprises	Reference book	2020-06-02 00:49:59.763681	2020-06-02 00:49:59.763681
315	By Grand Central Station I Sat Down and Wept	Anita Schmitt	University of Michigan Press	Fanfiction	2020-06-02 00:49:59.768837	2020-06-02 00:49:59.768837
316	Jacob Have I Loved	Ms. Marinda Welch	Pantheon Books at Random House	Tall tale	2020-06-02 00:49:59.774027	2020-06-02 00:49:59.774027
317	If I Forget Thee Jerusalem	Ms. Antonio Zboncak	Leafwood Publishers	Classic	2020-06-02 00:49:59.779503	2020-06-02 00:49:59.779503
318	The Grapes of Wrath	Shavon Sawayn	New Holland Publishers	Science fiction	2020-06-02 00:49:59.784521	2020-06-02 00:49:59.784521
319	In a Glass Darkly	Breann Paucek	HarperTrophy	Science fiction	2020-06-02 00:49:59.789436	2020-06-02 00:49:59.789436
320	A Swiftly Tilting Planet	Ila Bernier	Charles Scribner's Sons	Crime/Detective	2020-06-02 00:49:59.794474	2020-06-02 00:49:59.794474
321	O Pioneers!	Wilton Baumbach	Cengage Learning	Mythology	2020-06-02 00:49:59.799297	2020-06-02 00:49:59.799297
322	The World, the Flesh and the Devil	Lora Marvin	Churchill Livingstone	Fiction narrative	2020-06-02 00:49:59.804514	2020-06-02 00:49:59.804514
323	The Cricket on the Hearth	Kurt Kulas	Tate Publishing & Enterprises	Short story	2020-06-02 00:49:59.810003	2020-06-02 00:49:59.810003
324	In a Glass Darkly	Micaela Jaskolski	Mandrake of Oxford	Crime/Detective	2020-06-02 00:49:59.814988	2020-06-02 00:49:59.814988
325	The Man Within	Nicki Berge	Naiad Press	Fiction narrative	2020-06-02 00:49:59.820354	2020-06-02 00:49:59.820354
326	No Highway	Jaleesa Cruickshank MD	Bloomsbury Publishing Plc	Fable	2020-06-02 00:49:59.824975	2020-06-02 00:49:59.824975
327	Frequent Hearses	Dallas Bailey	Edupedia Publications	Reference book	2020-06-02 00:49:59.83015	2020-06-02 00:49:59.83015
328	Ah, Wilderness!	Riley Kiehn	Pecan Grove Press	Mythology	2020-06-02 00:49:59.834856	2020-06-02 00:49:59.834856
329	Shall not Perish	Dulce Langworth	Kogan Page	Mystery	2020-06-02 00:49:59.840343	2020-06-02 00:49:59.840343
330	Time of our Darkness	Gwenn Champlin MD	Fairview Press	Fiction narrative	2020-06-02 00:49:59.845881	2020-06-02 00:49:59.845881
331	The Moon by Night	Patrica Skiles	McFarland & Company	Narrative nonfiction	2020-06-02 00:49:59.850568	2020-06-02 00:49:59.850568
332	The Moving Finger	Trent Jakubowski	Hawthorne Books	Mythology	2020-06-02 00:49:59.855736	2020-06-02 00:49:59.855736
333	Wildfire at Midnight	Ben Lindgren	Booktrope	Crime/Detective	2020-06-02 00:49:59.860559	2020-06-02 00:49:59.860559
334	A Confederacy of Dunces	Ian Heathcote	D. Appleton & Company	Crime/Detective	2020-06-02 00:49:59.8656	2020-06-02 00:49:59.8656
335	Some Buried Caesar	Clifford Wiza	No Starch Press	Mythopoeia	2020-06-02 00:49:59.870711	2020-06-02 00:49:59.870711
336	That Hideous Strength	Simonne Zulauf	Carcanet Press	Speech	2020-06-02 00:49:59.875049	2020-06-02 00:49:59.875049
337	The Parliament of Man	Beau Becker	Borgo Press	Mythology	2020-06-02 00:49:59.880002	2020-06-02 00:49:59.880002
338	Nectar in a Sieve	Shannon Grady	Carnegie Mellon University Press	Legend	2020-06-02 00:49:59.88447	2020-06-02 00:49:59.88447
339	Unweaving the Rainbow	Leonor Ryan	Ziff Davis Media	Mystery	2020-06-02 00:49:59.889147	2020-06-02 00:49:59.889147
340	The Way of All Flesh	Pearlene Price	Charles Scribner's Sons	Fiction in verse	2020-06-02 00:49:59.894329	2020-06-02 00:49:59.894329
341	Paths of Glory	Lou Mitchell I	Shoemaker & Hoard Publishers	Reference book	2020-06-02 00:49:59.899285	2020-06-02 00:49:59.899285
342	In a Glass Darkly	Chara Bauch	Cisco Press	Speech	2020-06-02 00:49:59.905022	2020-06-02 00:49:59.905022
343	A Time to Kill	Ms. Riley Goldner	Tate Publishing & Enterprises	Horror	2020-06-02 00:49:59.910102	2020-06-02 00:49:59.910102
344	A Time to Kill	Miss Shonta Lang	Chambers Harrap	Essay	2020-06-02 00:49:59.915321	2020-06-02 00:49:59.915321
345	Consider the Lilies	Carissa Herman	Kodansha	Fantasy	2020-06-02 00:49:59.920308	2020-06-02 00:49:59.920308
346	Paths of Glory	Stanford Steuber II	Liberty Fund	Folklore	2020-06-02 00:49:59.932684	2020-06-02 00:49:59.932684
347	Jesting Pilate	Minh Brakus	Manor House Publishing	Humor	2020-06-02 00:49:59.93857	2020-06-02 00:49:59.93857
348	O Jerusalem!	Gilberto Stroman	HarperCollins	Folklore	2020-06-02 00:49:59.944083	2020-06-02 00:49:59.944083
349	Sleep the Brave	Mr. Loyd O'Hara	Sams Publishing	Reference book	2020-06-02 00:49:59.949549	2020-06-02 00:49:59.949549
350	When the Green Woods Laugh	Jarrod Torphy	Pen and Sword Books	Legend	2020-06-02 00:49:59.954917	2020-06-02 00:49:59.954917
351	Dulce et Decorum Est	Mr. Carroll Denesik	Holland Park Press	Comic/Graphic Novel	2020-06-02 00:49:59.959926	2020-06-02 00:49:59.959926
352	Of Human Bondage	Odilia Satterfield Sr.	Mapin Publishing	Textbook	2020-06-02 00:49:59.964372	2020-06-02 00:49:59.964372
353	The Mermaids Singing	Mrs. Porfirio Herman	Random House	Narrative nonfiction	2020-06-02 00:49:59.968995	2020-06-02 00:49:59.968995
354	A Darkling Plain	Phil Kohler III	Tartarus Press	Textbook	2020-06-02 00:49:59.973404	2020-06-02 00:49:59.973404
355	To Your Scattered Bodies Go	Sang Kirlin	Carcanet Press	Science fiction	2020-06-02 00:49:59.977705	2020-06-02 00:49:59.977705
356	Frequent Hearses	Sam Harvey	Signet Books	Fanfiction	2020-06-02 00:49:59.982131	2020-06-02 00:49:59.982131
357	Shall not Perish	Mrs. Stefan Konopelski	Nonesuch Press	Suspense/Thriller	2020-06-02 00:49:59.986591	2020-06-02 00:49:59.986591
358	Mr Standfast	Odessa McClure	D. Reidel	Historical fiction	2020-06-02 00:49:59.9911	2020-06-02 00:49:59.9911
359	Have His Carcase	Freddy Abernathy	Allen Ltd	Fairy tale	2020-06-02 00:49:59.995503	2020-06-02 00:49:59.995503
360	For a Breath I Tarry	Maire Heathcote III	Harvard University Press	Fiction narrative	2020-06-02 00:49:59.999952	2020-06-02 00:49:59.999952
361	A Glass of Blessings	Forest Keeling	Papadakis Publisher	Short story	2020-06-02 00:50:00.004554	2020-06-02 00:50:00.004554
362	Oh! To be in England	Ms. Margarite Spinka	DAW Books	Textbook	2020-06-02 00:50:00.008985	2020-06-02 00:50:00.008985
363	Of Human Bondage	Gerald Sporer	Harvard University Press	Folklore	2020-06-02 00:50:00.013455	2020-06-02 00:50:00.013455
364	Of Human Bondage	Asuncion Hoppe	Berkley Books	Western	2020-06-02 00:50:00.017719	2020-06-02 00:50:00.017719
365	Behold the Man	Ms. Denisse Gerhold	Zed Books	Mythology	2020-06-02 00:50:00.022357	2020-06-02 00:50:00.022357
366	The Mermaids Singing	Cary Quigley	Shambhala Publications	Mystery	2020-06-02 00:50:00.026765	2020-06-02 00:50:00.026765
367	In a Dry Season	Bryan Cummings	Cambridge University Press	Folklore	2020-06-02 00:50:00.031128	2020-06-02 00:50:00.031128
368	Nine Coaches Waiting	China Erdman	Naiad Press	Classic	2020-06-02 00:50:00.035708	2020-06-02 00:50:00.035708
369	Look Homeward, Angel	Mr. Sage Lind	New Village Press	Textbook	2020-06-02 00:50:00.040344	2020-06-02 00:50:00.040344
370	Absalom, Absalom!	Cory Langosh	Virago Press	Mythopoeia	2020-06-02 00:50:00.045317	2020-06-02 00:50:00.045317
371	Those Barren Leaves, Thrones, Dominations	Isidra Hettinger	Marion Boyars Publishers	Fiction narrative	2020-06-02 00:50:00.0499	2020-06-02 00:50:00.0499
372	Recalled to Life	Dorsey Stanton	Cengage Learning	Historical fiction	2020-06-02 00:50:00.054641	2020-06-02 00:50:00.054641
373	Down to a Sunless Sea	Elinore McLaughlin Jr.	Random House	Comic/Graphic Novel	2020-06-02 00:50:00.060398	2020-06-02 00:50:00.060398
374	Tiger! Tiger!	Mr. Vince Trantow	G-Unit Books	Fable	2020-06-02 00:50:00.065435	2020-06-02 00:50:00.065435
375	Françoise Sagan	Dorethea Terry	McClelland and Stewart	Folklore	2020-06-02 00:50:00.070134	2020-06-02 00:50:00.070134
376	The Other Side of Silence	Mr. Randolph Schmitt	Hachette Book Group USA	Humor	2020-06-02 00:50:00.08104	2020-06-02 00:50:00.08104
377	Have His Carcase	Joe Larkin	Ballantine Books	Fanfiction	2020-06-02 00:50:00.08753	2020-06-02 00:50:00.08753
378	No Longer at Ease	Napoleon O'Conner	G-Unit Books	Humor	2020-06-02 00:50:00.095508	2020-06-02 00:50:00.095508
379	To Say Nothing of the Dog	Raul Schinner	Bloomsbury Publishing Plc	Tall tale	2020-06-02 00:50:00.101626	2020-06-02 00:50:00.101626
380	The Grapes of Wrath	Ms. Jackie Lindgren	HarperCollins	Speech	2020-06-02 00:50:00.108678	2020-06-02 00:50:00.108678
381	To Sail Beyond the Sunset	Ms. Shawn Strosin	Library of America	Biography/Autobiography	2020-06-02 00:50:00.118103	2020-06-02 00:50:00.118103
382	Some Buried Caesar	Mrs. Dewitt Bartoletti	Libertas Academica	Folklore	2020-06-02 00:50:00.125611	2020-06-02 00:50:00.125611
383	This Lime Tree Bower	Mrs. Ronnie Harber	Orchard Books	Folklore	2020-06-02 00:50:00.132259	2020-06-02 00:50:00.132259
384	A Time to Kill	Irina Flatley DDS	Tartarus Press	Reference book	2020-06-02 00:50:00.13799	2020-06-02 00:50:00.13799
385	Blood's a Rover	Rupert Parker	New English Library	Mythology	2020-06-02 00:50:00.143747	2020-06-02 00:50:00.143747
386	A Passage to India	Venessa Mante	Flame Tree Publishing	Suspense/Thriller	2020-06-02 00:50:00.149357	2020-06-02 00:50:00.149357
387	The Skull Beneath the Skin	Oren Pouros III	Hawthorne Books	Humor	2020-06-02 00:50:00.154816	2020-06-02 00:50:00.154816
388	The Golden Apples of the Sun	Rafael Reichel Jr.	Tachyon Publications	Folklore	2020-06-02 00:50:00.160205	2020-06-02 00:50:00.160205
389	A Many-Splendoured Thing	Troy Leuschke Sr.	United States Government Publishing Office	Fantasy	2020-06-02 00:50:00.166001	2020-06-02 00:50:00.166001
390	Surprised by Joy	Lynn Armstrong	Happy House	Legend	2020-06-02 00:50:00.171473	2020-06-02 00:50:00.171473
391	The Wings of the Dove	Ramon Larkin PhD	Zed Books	Reference book	2020-06-02 00:50:00.178746	2020-06-02 00:50:00.178746
392	Dying of the Light	Prudence Huel	Matthias Media	Textbook	2020-06-02 00:50:00.184604	2020-06-02 00:50:00.184604
393	In a Dry Season	Dr. Rhett O'Keefe	Bloomsbury Publishing Plc	Crime/Detective	2020-06-02 00:50:00.191006	2020-06-02 00:50:00.191006
394	Eyeless in Gaza	Vicente Rolfson	Andrews McMeel Publishing	Horror	2020-06-02 00:50:00.19804	2020-06-02 00:50:00.19804
395	A Monstrous Regiment of Women	Hermelinda King	Kogan Page	Comic/Graphic Novel	2020-06-02 00:50:00.203889	2020-06-02 00:50:00.203889
396	Nectar in a Sieve	Janene Hagenes	Secker & Warburg	Essay	2020-06-02 00:50:00.212059	2020-06-02 00:50:00.212059
397	The Moving Toyshop	Porter Crona	New English Library	Historical fiction	2020-06-02 00:50:00.21815	2020-06-02 00:50:00.21815
398	By Grand Central Station I Sat Down and Wept	Antone Ferry	Adis International	Fiction narrative	2020-06-02 00:50:00.225762	2020-06-02 00:50:00.225762
399	That Good Night	Garrett Cummings	Charles Scribner's Sons	Historical fiction	2020-06-02 00:50:00.23303	2020-06-02 00:50:00.23303
400	No Country for Old Men	Enid Schneider	Focal Press	Suspense/Thriller	2020-06-02 00:50:00.239154	2020-06-02 00:50:00.239154
401	No Country for Old Men	Theron Jaskolski	Ladybird Books	Biography/Autobiography	2020-06-02 00:50:00.248635	2020-06-02 00:50:00.248635
402	The Far-Distant Oxus	Dr. Kaye Kreiger	Burns & Oates	Horror	2020-06-02 00:50:00.255007	2020-06-02 00:50:00.255007
403	Blithe Spirit	Loren Kub PhD	Hachette Book Group USA	Classic	2020-06-02 00:50:00.263889	2020-06-02 00:50:00.263889
404	It's a Battlefield	Macy Schowalter	Jarrolds Publishing	Fanfiction	2020-06-02 00:50:00.270159	2020-06-02 00:50:00.270159
405	Recalled to Life	Carey Thiel MD	Nauka	Fiction narrative	2020-06-02 00:50:00.279189	2020-06-02 00:50:00.279189
406	The Other Side of Silence	Rusty Rutherford	Mark Batty Publisher	Science fiction	2020-06-02 00:50:00.285699	2020-06-02 00:50:00.285699
407	The Wind's Twelve Quarters	Afton Langworth	Tachyon Publications	Narrative nonfiction	2020-06-02 00:50:00.294058	2020-06-02 00:50:00.294058
408	The Stars' Tennis Balls	Haley Weber	Ten Speed Press	Speech	2020-06-02 00:50:00.300639	2020-06-02 00:50:00.300639
409	Quo Vadis	Beulah Streich	University of Alaska Press	Textbook	2020-06-02 00:50:00.308159	2020-06-02 00:50:00.308159
410	The Far-Distant Oxus	Linwood Johns	Fearless Books	Speech	2020-06-02 00:50:00.316184	2020-06-02 00:50:00.316184
411	Wildfire at Midnight	Jewell Blanda	Applewood Books	Fiction in verse	2020-06-02 00:50:00.32257	2020-06-02 00:50:00.32257
412	Shall not Perish	Quintin Homenick	Oberon Books	Narrative nonfiction	2020-06-02 00:50:00.332078	2020-06-02 00:50:00.332078
413	Look to Windward	Porter Sanford	Mapin Publishing	Mythology	2020-06-02 00:50:00.338646	2020-06-02 00:50:00.338646
414	Recalled to Life	Luke Nicolas	Tachyon Publications	Fairy tale	2020-06-02 00:50:00.347368	2020-06-02 00:50:00.347368
415	Jacob Have I Loved	Miss Alex Macejkovic	University of Nebraska Press	Reference book	2020-06-02 00:50:00.353667	2020-06-02 00:50:00.353667
416	To Your Scattered Bodies Go	Lashay Hilll	Libertas Academica	Fanfiction	2020-06-02 00:50:00.364916	2020-06-02 00:50:00.364916
417	Let Us Now Praise Famous Men	Maxie Littel	Tammi	Realistic fiction	2020-06-02 00:50:00.372919	2020-06-02 00:50:00.372919
418	Blue Remembered Earth	Abel Anderson	Golden Cockerel Press	Essay	2020-06-02 00:50:00.382389	2020-06-02 00:50:00.382389
419	The Parliament of Man	Ms. Laquanda Herman	Scholastic Press	Horror	2020-06-02 00:50:00.390202	2020-06-02 00:50:00.390202
420	The Millstone	Rico Brown V	Hachette Book Group USA	Horror	2020-06-02 00:50:00.396967	2020-06-02 00:50:00.396967
421	No Highway	Chong Bayer III	Ten Speed Press	Mythopoeia	2020-06-02 00:50:00.403664	2020-06-02 00:50:00.403664
422	A Many-Splendoured Thing	Donovan Bins	Virgin Publishing	Comic/Graphic Novel	2020-06-02 00:50:00.411354	2020-06-02 00:50:00.411354
423	Let Us Now Praise Famous Men	Miss Candelaria Miller	Verso Books	Short story	2020-06-02 00:50:00.417388	2020-06-02 00:50:00.417388
424	In Dubious Battle	Esteban Bartell	Anova Books	Fanfiction	2020-06-02 00:50:00.423595	2020-06-02 00:50:00.423595
425	The Widening Gyre	Dr. Melynda Blanda	Blackie and Son Limited	Crime/Detective	2020-06-02 00:50:00.429119	2020-06-02 00:50:00.429119
426	Let Us Now Praise Famous Men	Luciano Hermann	Harcourt Assessment	Narrative nonfiction	2020-06-02 00:50:00.434693	2020-06-02 00:50:00.434693
427	A Passage to India	Mallie Schroeder Sr.	Schocken Books	Reference book	2020-06-02 00:50:00.440039	2020-06-02 00:50:00.440039
428	Nectar in a Sieve	Bernardo Bartell	BBC Books	Western	2020-06-02 00:50:00.44512	2020-06-02 00:50:00.44512
429	No Highway	Tatum Ritchie	Peace Hill Press	Classic	2020-06-02 00:50:00.449683	2020-06-02 00:50:00.449683
430	The Little Foxes	Suzann Stokes V	Dalkey Archive Press	Classic	2020-06-02 00:50:00.454017	2020-06-02 00:50:00.454017
431	I Sing the Body Electric	Waylon Harber	New English Library	Suspense/Thriller	2020-06-02 00:50:00.458431	2020-06-02 00:50:00.458431
432	The Needle's Eye	Dorinda Morar	Canongate Books	Western	2020-06-02 00:50:00.462815	2020-06-02 00:50:00.462815
433	It's a Battlefield	Lisabeth Brown	Unfinished Monument Press	Fanfiction	2020-06-02 00:50:00.467102	2020-06-02 00:50:00.467102
434	Of Human Bondage	Louisa Hackett DDS	New Holland Publishers	Folklore	2020-06-02 00:50:00.471307	2020-06-02 00:50:00.471307
435	Tiger! Tiger!	Keneth Von	John Blake Publishing	Reference book	2020-06-02 00:50:00.478063	2020-06-02 00:50:00.478063
436	The Proper Study	Alecia Gutkowski Jr.	Harvill Press at Random House	Fiction in verse	2020-06-02 00:50:00.483672	2020-06-02 00:50:00.483672
437	For Whom the Bell Tolls	Aisha Abernathy	Central European University Press	Biography/Autobiography	2020-06-02 00:50:00.488881	2020-06-02 00:50:00.488881
438	Great Work of Time	Arlene Grimes	Schocken Books	Fiction narrative	2020-06-02 00:50:00.493567	2020-06-02 00:50:00.493567
439	Cabbages and Kings	Leonarda Trantow	Tachyon Publications	Fable	2020-06-02 00:50:00.49793	2020-06-02 00:50:00.49793
440	I Know Why the Caged Bird Sings	Cathey Conn	HMSO	Comic/Graphic Novel	2020-06-02 00:50:00.503142	2020-06-02 00:50:00.503142
441	Arms and the Man	Janette Hansen	Harcourt Trade Publishers	Humor	2020-06-02 00:50:00.508119	2020-06-02 00:50:00.508119
442	The Far-Distant Oxus	Angelia Baumbach	Cambridge University Press	Realistic fiction	2020-06-02 00:50:00.512593	2020-06-02 00:50:00.512593
443	Frequent Hearses	Maxwell Haley	Cloverdale Corporation	Mystery	2020-06-02 00:50:00.517348	2020-06-02 00:50:00.517348
444	Jesting Pilate	Carisa Ruecker	Churchill Livingstone	Historical fiction	2020-06-02 00:50:00.521999	2020-06-02 00:50:00.521999
445	Fame Is the Spur	Shelby Collins	Caister Academic Press	Mystery	2020-06-02 00:50:00.526605	2020-06-02 00:50:00.526605
446	A Swiftly Tilting Planet	Clair Gleason	E. P. Dutton	Suspense/Thriller	2020-06-02 00:50:00.531122	2020-06-02 00:50:00.531122
447	The Heart Is a Lonely Hunter	Marva Erdman	University of Nebraska Press	Crime/Detective	2020-06-02 00:50:00.535593	2020-06-02 00:50:00.535593
448	Recalled to Life	Mr. Macy Langworth	Borgo Press	Humor	2020-06-02 00:50:00.540324	2020-06-02 00:50:00.540324
449	Fair Stood the Wind for France	Deon Turcotte	Ziff Davis Media	Science fiction	2020-06-02 00:50:00.544561	2020-06-02 00:50:00.544561
450	To Say Nothing of the Dog	Wilber Schneider	D. Appleton & Company	Fantasy	2020-06-02 00:50:00.548732	2020-06-02 00:50:00.548732
451	A Time to Kill	Terence Friesen	Black Dog Publishing	Essay	2020-06-02 00:50:00.553036	2020-06-02 00:50:00.553036
452	A Catskill Eagle	Miss Scottie Stark	University of California Press	Speech	2020-06-02 00:50:00.557301	2020-06-02 00:50:00.557301
453	A Darkling Plain	Jean Kilback Jr.	Cengage Learning	Speech	2020-06-02 00:50:00.561392	2020-06-02 00:50:00.561392
454	The Wives of Bath	Mr. Curt Kunde	Imperial War Museum	Fable	2020-06-02 00:50:00.565405	2020-06-02 00:50:00.565405
455	Noli Me Tangere	Lonny Keeling IV	Cambridge University Press	Historical fiction	2020-06-02 00:50:00.569648	2020-06-02 00:50:00.569648
456	The Golden Apples of the Sun	Patrica Stiedemann	Atlantic Books	Fantasy	2020-06-02 00:50:00.573724	2020-06-02 00:50:00.573724
457	Tender Is the Night	Alejandro Schowalter Jr.	McFarland & Company	Realistic fiction	2020-06-02 00:50:00.577912	2020-06-02 00:50:00.577912
458	A Many-Splendoured Thing	Diann Beahan	Harcourt Trade Publishers	Fantasy	2020-06-02 00:50:00.582118	2020-06-02 00:50:00.582118
459	To a God Unknown	Marion Schamberger MD	Flame Tree Publishing	Folklore	2020-06-02 00:50:00.58651	2020-06-02 00:50:00.58651
460	Fear and Trembling	Joycelyn Weber	Peace Hill Press	Suspense/Thriller	2020-06-02 00:50:00.590986	2020-06-02 00:50:00.590986
461	Cover Her Face	Dr. Angelia Kerluke	Central European University Press	Legend	2020-06-02 00:50:00.595305	2020-06-02 00:50:00.595305
462	In a Glass Darkly	Thersa Hamill IV	Broadview Press	Reference book	2020-06-02 00:50:00.599519	2020-06-02 00:50:00.599519
463	Those Barren Leaves, Thrones, Dominations	Sunny Jerde	D. Reidel	Suspense/Thriller	2020-06-02 00:50:00.603952	2020-06-02 00:50:00.603952
464	An Acceptable Time	Lindy Hickle	Unfinished Monument Press	Folklore	2020-06-02 00:50:00.60852	2020-06-02 00:50:00.60852
465	Paths of Glory	Sha Bergstrom DDS	Marshall Pickering	Suspense/Thriller	2020-06-02 00:50:00.613283	2020-06-02 00:50:00.613283
466	O Jerusalem!	Eloy Hammes	Mascot Books	Western	2020-06-02 00:50:00.618743	2020-06-02 00:50:00.618743
467	No Highway	Ms. Tonita Wolff	Horizon Scientific Press	Metafiction	2020-06-02 00:50:00.623384	2020-06-02 00:50:00.623384
468	A Monstrous Regiment of Women	Ms. Ciara Miller	George Newnes	Science fiction	2020-06-02 00:50:00.627814	2020-06-02 00:50:00.627814
469	Little Hands Clapping	Fred Mertz	Tammi	Fiction in verse	2020-06-02 00:50:00.632137	2020-06-02 00:50:00.632137
470	A Many-Splendoured Thing	Estela Rogahn	Harcourt Assessment	Fairy tale	2020-06-02 00:50:00.63651	2020-06-02 00:50:00.63651
471	No Highway	Luci Monahan	University of Chicago Press	Fanfiction	2020-06-02 00:50:00.640739	2020-06-02 00:50:00.640739
472	The Way of All Flesh	Dario Bartell	Indiana University Press	Realistic fiction	2020-06-02 00:50:00.645492	2020-06-02 00:50:00.645492
473	O Pioneers!	Francisco Stiedemann	Virgin Publishing	Humor	2020-06-02 00:50:00.649876	2020-06-02 00:50:00.649876
474	Absalom, Absalom!	Renaldo Hilll	Taunton Press	Historical fiction	2020-06-02 00:50:00.654157	2020-06-02 00:50:00.654157
475	Nectar in a Sieve	Antonio Purdy	Jarrolds Publishing	Legend	2020-06-02 00:50:00.658524	2020-06-02 00:50:00.658524
476	A Farewell to Arms	Eldon Kuvalis	Pen and Sword Books	Speech	2020-06-02 00:50:00.662933	2020-06-02 00:50:00.662933
477	A Passage to India	Augustine Durgan IV	O'Reilly Media	Historical fiction	2020-06-02 00:50:00.667326	2020-06-02 00:50:00.667326
478	Shall not Perish	Willy Skiles	Harlequin Enterprises Ltd	Reference book	2020-06-02 00:50:00.671664	2020-06-02 00:50:00.671664
479	Terrible Swift Sword	Vivien Homenick	Tarpaulin Sky Press	Science fiction	2020-06-02 00:50:00.676466	2020-06-02 00:50:00.676466
480	Dying of the Light	Robin Schuster III	University of California Press	Folklore	2020-06-02 00:50:00.681051	2020-06-02 00:50:00.681051
481	Jacob Have I Loved	Tommie Schuster	Open Court Publishing Company	Reference book	2020-06-02 00:50:00.685621	2020-06-02 00:50:00.685621
482	What's Become of Waring	Eloy Kovacek	Kensington Books	Tall tale	2020-06-02 00:50:00.692408	2020-06-02 00:50:00.692408
483	A Glass of Blessings	Mathilde Huel MD	Unfinished Monument Press	Mythology	2020-06-02 00:50:00.697702	2020-06-02 00:50:00.697702
484	Many Waters	Mrs. Sidney Feest	Edupedia Publications	Legend	2020-06-02 00:50:00.703062	2020-06-02 00:50:00.703062
485	The Green Bay Tree	Jeremiah Mitchell	Paulist Press	Fiction in verse	2020-06-02 00:50:00.71039	2020-06-02 00:50:00.71039
486	The Soldier's Art	Bree Cummings III	Mandrake of Oxford	Horror	2020-06-02 00:50:00.716038	2020-06-02 00:50:00.716038
487	Beneath the Bleeding	Garnet Zieme	Faber and Faber	Fable	2020-06-02 00:50:00.722021	2020-06-02 00:50:00.722021
488	If Not Now, When?	Francisco Blanda DDS	University of Michigan Press	Mythopoeia	2020-06-02 00:50:00.727848	2020-06-02 00:50:00.727848
489	To Sail Beyond the Sunset	Pat Luettgen	Chick Publications	Mystery	2020-06-02 00:50:00.733145	2020-06-02 00:50:00.733145
490	The Heart Is a Lonely Hunter	Wilson Sauer PhD	John Blake Publishing	Classic	2020-06-02 00:50:00.739313	2020-06-02 00:50:00.739313
491	That Hideous Strength	Renetta Connelly	Da Capo Press	Fable	2020-06-02 00:50:00.746692	2020-06-02 00:50:00.746692
492	Wildfire at Midnight	Michale DuBuque	Scholastic Press	Realistic fiction	2020-06-02 00:50:00.752876	2020-06-02 00:50:00.752876
493	Vanity Fair	Erwin Jaskolski	Hodder Headline	Legend	2020-06-02 00:50:00.761108	2020-06-02 00:50:00.761108
494	Cabbages and Kings	Long Auer Jr.	Carcanet Press	Speech	2020-06-02 00:50:00.767642	2020-06-02 00:50:00.767642
495	In Death Ground	Octavio Hoppe	Chronicle Books	Fiction narrative	2020-06-02 00:50:00.77542	2020-06-02 00:50:00.77542
496	Fair Stood the Wind for France	Mel Morar	Hawthorne Books	Horror	2020-06-02 00:50:00.781931	2020-06-02 00:50:00.781931
497	Ah, Wilderness!	Rey Stoltenberg	Eel Pie Publishing	Humor	2020-06-02 00:50:00.788402	2020-06-02 00:50:00.788402
498	The Waste Land	Merlyn Kuvalis	Barrie & Jenkins	Humor	2020-06-02 00:50:00.796358	2020-06-02 00:50:00.796358
499	It's a Battlefield	Bobby MacGyver	HarperPrism	Mystery	2020-06-02 00:50:00.802416	2020-06-02 00:50:00.802416
500	Of Mice and Men	Tenisha Kohler	Mandrake Press	Narrative nonfiction	2020-06-02 00:50:00.810123	2020-06-02 00:50:00.810123
501	The Mirror Crack'd from Side to Side	Mrs. Beverley Wolff	Da Capo Press	Fairy tale	2020-06-02 00:50:00.816351	2020-06-02 00:50:00.816351
502	As I Lay Dying	Linette MacGyver	Hawthorne Books	Folklore	2020-06-02 00:50:00.822782	2020-06-02 00:50:00.822782
503	Specimen Days	Shala Kub	Shoemaker & Hoard Publishers	Narrative nonfiction	2020-06-02 00:50:00.828917	2020-06-02 00:50:00.828917
504	I Will Fear No Evil	Mrs. Lucius Thiel	Golden Cockerel Press	Metafiction	2020-06-02 00:50:00.834931	2020-06-02 00:50:00.834931
505	Alone on a Wide, Wide Sea	Ronnie Bosco III	Newnes	Mythopoeia	2020-06-02 00:50:00.842924	2020-06-02 00:50:00.842924
506	In a Dry Season	Mr. Walker Schmitt	Lethe Press	Tall tale	2020-06-02 00:50:00.84914	2020-06-02 00:50:00.84914
507	The Mermaids Singing	Ms. Jen Fadel	Book Works	Fiction narrative	2020-06-02 00:50:00.855983	2020-06-02 00:50:00.855983
508	As I Lay Dying	Kenton Nienow	Black Library	Humor	2020-06-02 00:50:00.863513	2020-06-02 00:50:00.863513
509	Beneath the Bleeding	Bradford Grady IV	Haynes Manuals	Mythology	2020-06-02 00:50:00.869567	2020-06-02 00:50:00.869567
510	The Grapes of Wrath	Claudio Funk V	Legend Books	Mythology	2020-06-02 00:50:00.877039	2020-06-02 00:50:00.877039
511	Antic Hay	Perry Lang	Gay Men's Press	Textbook	2020-06-02 00:50:00.882827	2020-06-02 00:50:00.882827
512	Ring of Bright Water	Sherita Bergstrom	Canongate Books	Fiction in verse	2020-06-02 00:50:00.888864	2020-06-02 00:50:00.888864
513	Clouds of Witness	Marcos Ondricka	Holt McDougal	Narrative nonfiction	2020-06-02 00:50:00.894724	2020-06-02 00:50:00.894724
514	Consider the Lilies	Hugo Brekke Sr.	Kensington Books	Horror	2020-06-02 00:50:00.900125	2020-06-02 00:50:00.900125
515	A Scanner Darkly	Chantal Schaden IV	Manchester University Press	Mystery	2020-06-02 00:50:00.90699	2020-06-02 00:50:00.90699
516	The Line of Beauty	Karon Zieme	University of Nebraska Press	Metafiction	2020-06-02 00:50:00.9143	2020-06-02 00:50:00.9143
517	A Confederacy of Dunces	Ms. Mellie Runolfsson	Chronicle Books	Folklore	2020-06-02 00:50:00.920392	2020-06-02 00:50:00.920392
518	Nectar in a Sieve	Guy Howe	Tartarus Press	Biography/Autobiography	2020-06-02 00:50:00.927676	2020-06-02 00:50:00.927676
519	Many Waters	Toby Nienow DDS	Marshall Cavendish	Crime/Detective	2020-06-02 00:50:00.933778	2020-06-02 00:50:00.933778
520	Such, Such Were the Joys	Dr. Cameron Baumbach	Pantheon Books at Random House	Textbook	2020-06-02 00:50:00.939897	2020-06-02 00:50:00.939897
521	Paths of Glory	Mervin Schuster I	Bowes & Bowes	Fable	2020-06-02 00:50:00.947023	2020-06-02 00:50:00.947023
522	Jesting Pilate	Ms. Lanita Cartwright	Harvard University Press	Classic	2020-06-02 00:50:00.952779	2020-06-02 00:50:00.952779
523	The Millstone	Mr. Sherill Moen	Atheneum Publishers	Humor	2020-06-02 00:50:00.960197	2020-06-02 00:50:00.960197
524	Behold the Man	Setsuko Collier	Seagull Books	Crime/Detective	2020-06-02 00:50:00.966086	2020-06-02 00:50:00.966086
525	The Way Through the Woods	Jordon Denesik	HarperTrophy	Biography/Autobiography	2020-06-02 00:50:00.97215	2020-06-02 00:50:00.97215
526	Vanity Fair	Trey Jacobson	Penguin Books	Fable	2020-06-02 00:50:00.978116	2020-06-02 00:50:00.978116
527	That Hideous Strength	Mr. Davis Howe	Carcanet Press	Tall tale	2020-06-02 00:50:00.983872	2020-06-02 00:50:00.983872
528	To Say Nothing of the Dog	Kendall Jerde	Hodder Headline	Historical fiction	2020-06-02 00:50:00.98976	2020-06-02 00:50:00.98976
529	Such, Such Were the Joys	Reid Pfeffer III	New Directions Publishing	Essay	2020-06-02 00:50:00.997108	2020-06-02 00:50:00.997108
530	Cabbages and Kings	Thaddeus Shields	Flame Tree Publishing	Fable	2020-06-02 00:50:01.00601	2020-06-02 00:50:01.00601
531	The Daffodil Sky	Natashia Kutch	Oberon Books	Fiction in verse	2020-06-02 00:50:01.011999	2020-06-02 00:50:01.011999
532	What's Become of Waring	Roselee Rutherford	Anova Books	Suspense/Thriller	2020-06-02 00:50:01.017833	2020-06-02 00:50:01.017833
533	Blood's a Rover	Wilbur Bernhard	St. Martin's Press	Science fiction	2020-06-02 00:50:01.023373	2020-06-02 00:50:01.023373
534	Shall not Perish	Bunny Cummings	Virgin Publishing	Fantasy	2020-06-02 00:50:01.028658	2020-06-02 00:50:01.028658
535	Cabbages and Kings	Doug Satterfield	McFarland & Company	Tall tale	2020-06-02 00:50:01.033579	2020-06-02 00:50:01.033579
536	The Way Through the Woods	Armando Hudson I	Harry N. Abrams, Inc.	Comic/Graphic Novel	2020-06-02 00:50:01.038021	2020-06-02 00:50:01.038021
537	A Glass of Blessings	Marian Glover Jr.	No Starch Press	Fable	2020-06-02 00:50:01.04252	2020-06-02 00:50:01.04252
538	Tirra Lirra by the River	Luna Kirlin	Ballantine Books	Western	2020-06-02 00:50:01.046869	2020-06-02 00:50:01.046869
539	The Painted Veil	Mr. Kacie Raynor	Holt McDougal	Textbook	2020-06-02 00:50:01.051333	2020-06-02 00:50:01.051333
540	The Way of All Flesh	Dorie Hodkiewicz	Virago Press	Folklore	2020-06-02 00:50:01.055564	2020-06-02 00:50:01.055564
541	Now Sleeps the Crimson Petal	Gwyn Breitenberg	G-Unit Books	Fiction narrative	2020-06-02 00:50:01.059957	2020-06-02 00:50:01.059957
542	Ring of Bright Water	Manda Feil	Charles Scribner's Sons	Narrative nonfiction	2020-06-02 00:50:01.064414	2020-06-02 00:50:01.064414
543	Vanity Fair	Carol Murazik	Palgrave Macmillan	Mythology	2020-06-02 00:50:01.069206	2020-06-02 00:50:01.069206
544	Precious Bane	Rodrigo Mohr DVM	McClelland and Stewart	Essay	2020-06-02 00:50:01.075743	2020-06-02 00:50:01.075743
545	To Sail Beyond the Sunset	Earl West	McFarland & Company	Mystery	2020-06-02 00:50:01.080516	2020-06-02 00:50:01.080516
546	Ah, Wilderness!	Erminia Lueilwitz	Palgrave Macmillan	Classic	2020-06-02 00:50:01.084806	2020-06-02 00:50:01.084806
547	The Heart Is Deceitful Above All Things	Frieda Quitzon	Broadview Press	Fanfiction	2020-06-02 00:50:01.089152	2020-06-02 00:50:01.089152
548	Behold the Man	Dr. Neil Reinger	Blue Ribbon Books	Fairy tale	2020-06-02 00:50:01.093485	2020-06-02 00:50:01.093485
549	If I Forget Thee Jerusalem	Dr. Lauren Reichel	Peace Hill Press	Narrative nonfiction	2020-06-02 00:50:01.097875	2020-06-02 00:50:01.097875
550	Mr Standfast	Billy Nicolas	Ignatius Press	Comic/Graphic Novel	2020-06-02 00:50:01.102304	2020-06-02 00:50:01.102304
551	Dulce et Decorum Est	Charlie Balistreri	Blue Ribbon Books	Realistic fiction	2020-06-02 00:50:01.106583	2020-06-02 00:50:01.106583
552	Tiger! Tiger!	Leonel Shanahan	Palgrave Macmillan	Reference book	2020-06-02 00:50:01.110977	2020-06-02 00:50:01.110977
553	Blue Remembered Earth	Joan Crist	Legend Books	Mythology	2020-06-02 00:50:01.115289	2020-06-02 00:50:01.115289
554	Nectar in a Sieve	Barney Bogisich	Jaico Publishing House	Horror	2020-06-02 00:50:01.120833	2020-06-02 00:50:01.120833
555	Far From the Madding Crowd	Chang Spencer II	Harvill Press at Random House	Fantasy	2020-06-02 00:50:01.126327	2020-06-02 00:50:01.126327
556	A Many-Splendoured Thing	Maple Mraz	Parragon	Mystery	2020-06-02 00:50:01.13069	2020-06-02 00:50:01.13069
557	If Not Now, When?	Anderson Rutherford II	Boydell & Brewer	Classic	2020-06-02 00:50:01.135165	2020-06-02 00:50:01.135165
558	Far From the Madding Crowd	Sandi Gerlach	Mapin Publishing	Mythology	2020-06-02 00:50:01.139613	2020-06-02 00:50:01.139613
559	O Jerusalem!	Glenn Bruen	Verso Books	Fairy tale	2020-06-02 00:50:01.1439	2020-06-02 00:50:01.1439
560	Eyeless in Gaza	Darrin Borer IV	Cloverdale Corporation	Mystery	2020-06-02 00:50:01.148359	2020-06-02 00:50:01.148359
561	The Needle's Eye	Mr. Prince Powlowski	Emerald Group Publishing	Reference book	2020-06-02 00:50:01.152699	2020-06-02 00:50:01.152699
562	Oh! To be in England	Kina Smith	Taylor & Francis	Science fiction	2020-06-02 00:50:01.156962	2020-06-02 00:50:01.156962
563	In Death Ground	Jacinto Batz I	McGraw-Hill Education	Reference book	2020-06-02 00:50:01.161292	2020-06-02 00:50:01.161292
564	That Hideous Strength	See Prosacco	Pavilion Books	Humor	2020-06-02 00:50:01.165713	2020-06-02 00:50:01.165713
565	Eyeless in Gaza	Elliott Price	University of Nebraska Press	Western	2020-06-02 00:50:01.169992	2020-06-02 00:50:01.169992
566	If Not Now, When?	Christal Gerhold	Kogan Page	Essay	2020-06-02 00:50:01.174544	2020-06-02 00:50:01.174544
567	An Evil Cradling	Yer Willms	Focal Press	Fairy tale	2020-06-02 00:50:01.17888	2020-06-02 00:50:01.17888
568	A Farewell to Arms	Mrs. Thurman Hilpert	Bloomsbury Publishing Plc	Short story	2020-06-02 00:50:01.183062	2020-06-02 00:50:01.183062
569	The Golden Apples of the Sun	Jami Reichel	Borgo Press	Comic/Graphic Novel	2020-06-02 00:50:01.187394	2020-06-02 00:50:01.187394
570	Alone on a Wide, Wide Sea	Calvin Lubowitz	No Starch Press	Narrative nonfiction	2020-06-02 00:50:01.191587	2020-06-02 00:50:01.191587
571	Consider Phlebas	Hong Cummings	Kensington Books	Historical fiction	2020-06-02 00:50:01.195976	2020-06-02 00:50:01.195976
572	The Needle's Eye	Marcy Casper	Pecan Grove Press	Essay	2020-06-02 00:50:01.200289	2020-06-02 00:50:01.200289
573	A Glass of Blessings	Cheri Smith IV	Black Library	Narrative nonfiction	2020-06-02 00:50:01.204516	2020-06-02 00:50:01.204516
574	Alone on a Wide, Wide Sea	Mr. Reuben Stanton	Manchester University Press	Tall tale	2020-06-02 00:50:01.208843	2020-06-02 00:50:01.208843
575	Eyeless in Gaza	Mrs. Letisha D'Amore	Berkley Books	Mythopoeia	2020-06-02 00:50:01.213271	2020-06-02 00:50:01.213271
576	Vanity Fair	Miss Garth Krajcik	Macmillan Publishers	Comic/Graphic Novel	2020-06-02 00:50:01.217597	2020-06-02 00:50:01.217597
577	Blood's a Rover	Magaret Nienow III	FabJob	Tall tale	2020-06-02 00:50:01.22189	2020-06-02 00:50:01.22189
578	If Not Now, When?	Teodoro Kiehn PhD	Charles Scribner's Sons	Fiction narrative	2020-06-02 00:50:01.226459	2020-06-02 00:50:01.226459
579	Dying of the Light	Sharon Corwin	Harper & Brothers	Science fiction	2020-06-02 00:50:01.230726	2020-06-02 00:50:01.230726
580	The Wings of the Dove	Michelina Mayert	Pecan Grove Press	Crime/Detective	2020-06-02 00:50:01.23507	2020-06-02 00:50:01.23507
581	Waiting for the Barbarians	Miss Leanne Macejkovic	Bloodaxe Books	Narrative nonfiction	2020-06-02 00:50:01.239337	2020-06-02 00:50:01.239337
582	The Golden Bowl	Dwayne Kreiger	Matthias Media	Mythopoeia	2020-06-02 00:50:01.243579	2020-06-02 00:50:01.243579
583	Edna O'Brien	Ryan O'Hara	Paulist Press	Folklore	2020-06-02 00:50:01.247816	2020-06-02 00:50:01.247816
584	A Many-Splendoured Thing	Apolonia Davis	John Blake Publishing	Legend	2020-06-02 00:50:01.252286	2020-06-02 00:50:01.252286
585	A Handful of Dust	Abdul Gorczany	Left Book Club	Realistic fiction	2020-06-02 00:50:01.25658	2020-06-02 00:50:01.25658
586	A Confederacy of Dunces	Cyndi Rice	University of Chicago Press	Short story	2020-06-02 00:50:01.260841	2020-06-02 00:50:01.260841
587	After Many a Summer Dies the Swan	Yuk Schaden	Orchard Books	Science fiction	2020-06-02 00:50:01.265009	2020-06-02 00:50:01.265009
588	The Heart Is a Lonely Hunter	Dewey Littel Jr.	Book Works	Fable	2020-06-02 00:50:01.269429	2020-06-02 00:50:01.269429
589	The Widening Gyre	Shawnta Goodwin	St. Martin's Press	Classic	2020-06-02 00:50:01.273904	2020-06-02 00:50:01.273904
590	Fame Is the Spur	Eldora Rippin	Pavilion Books	Horror	2020-06-02 00:50:01.278519	2020-06-02 00:50:01.278519
591	Beneath the Bleeding	Basil Wunsch V	Hay House	Crime/Detective	2020-06-02 00:50:01.283337	2020-06-02 00:50:01.283337
592	What's Become of Waring	Adriane Bins	Gay Men's Press	Speech	2020-06-02 00:50:01.287744	2020-06-02 00:50:01.287744
593	I Sing the Body Electric	Allen Witting	Marion Boyars Publishers	Biography/Autobiography	2020-06-02 00:50:01.292139	2020-06-02 00:50:01.292139
594	A Swiftly Tilting Planet	Remedios Murazik	Harry N. Abrams, Inc.	Biography/Autobiography	2020-06-02 00:50:01.296684	2020-06-02 00:50:01.296684
595	The World, the Flesh and the Devil	Milo Stracke	New English Library	Mystery	2020-06-02 00:50:01.301073	2020-06-02 00:50:01.301073
596	Blue Remembered Earth	Minnie Williamson	D. Reidel	Fantasy	2020-06-02 00:50:01.305463	2020-06-02 00:50:01.305463
597	Consider Phlebas	Thomasena Howell	D. Appleton & Company	Narrative nonfiction	2020-06-02 00:50:01.309889	2020-06-02 00:50:01.309889
598	Wildfire at Midnight	Lynell Cronin Sr.	Bloomsbury Publishing Plc	Science fiction	2020-06-02 00:50:01.314152	2020-06-02 00:50:01.314152
599	Everything is Illuminated	Mrs. Tad Effertz	Marshall Pickering	Comic/Graphic Novel	2020-06-02 00:50:01.318632	2020-06-02 00:50:01.318632
600	This Side of Paradise	Lilly Goodwin	Macmillan Publishers	Fable	2020-06-02 00:50:01.323161	2020-06-02 00:50:01.323161
601	Ah, Wilderness!	Phillip Keeling	Ziff Davis Media	Fairy tale	2020-06-02 00:50:01.3276	2020-06-02 00:50:01.3276
602	Consider the Lilies	Dallas Ledner	Kogan Page	Realistic fiction	2020-06-02 00:50:01.332183	2020-06-02 00:50:01.332183
603	Down to a Sunless Sea	Von Crooks II	Gay Men's Press	Fantasy	2020-06-02 00:50:01.336741	2020-06-02 00:50:01.336741
604	Let Us Now Praise Famous Men	Miss Jamison Strosin	Mainstream Publishing	Essay	2020-06-02 00:50:01.341182	2020-06-02 00:50:01.341182
605	For a Breath I Tarry	Mrs. Carlo Spencer	Black Dog Publishing	Tall tale	2020-06-02 00:50:01.345596	2020-06-02 00:50:01.345596
606	The Parliament of Man	Jamar Fisher	University of Nebraska Press	Fairy tale	2020-06-02 00:50:01.350053	2020-06-02 00:50:01.350053
607	No Longer at Ease	Wes Larson	Mapin Publishing	Classic	2020-06-02 00:50:01.354417	2020-06-02 00:50:01.354417
608	Postern of Fate	Pia Muller	Libertas Academica	Fable	2020-06-02 00:50:01.358683	2020-06-02 00:50:01.358683
609	Cabbages and Kings	Alease Cruickshank	G. P. Putnam's Sons	Essay	2020-06-02 00:50:01.362866	2020-06-02 00:50:01.362866
610	The Millstone	Sina Bashirian	G. P. Putnam's Sons	Short story	2020-06-02 00:50:01.367208	2020-06-02 00:50:01.367208
611	Stranger in a Strange Land	Wm Crona	Mainstream Publishing	Mystery	2020-06-02 00:50:01.37144	2020-06-02 00:50:01.37144
612	For Whom the Bell Tolls	Mrs. Zofia Klein	Booktrope	Fiction narrative	2020-06-02 00:50:01.375703	2020-06-02 00:50:01.375703
613	This Lime Tree Bower	Mrs. Geralyn Rempel	T & T Clark	Fanfiction	2020-06-02 00:50:01.380148	2020-06-02 00:50:01.380148
614	Precious Bane	Mana Schimmel	Penguin Books	Western	2020-06-02 00:50:01.384491	2020-06-02 00:50:01.384491
615	Jacob Have I Loved	Kelley Grady	Macmillan Publishers	Crime/Detective	2020-06-02 00:50:01.388841	2020-06-02 00:50:01.388841
616	Precious Bane	Doris Streich Sr.	Tartarus Press	Historical fiction	2020-06-02 00:50:01.393197	2020-06-02 00:50:01.393197
617	A Swiftly Tilting Planet	Lennie Lesch	John Blake Publishing	Folklore	2020-06-02 00:50:01.397626	2020-06-02 00:50:01.397626
618	Jesting Pilate	Claudio Grant	Black Dog Publishing	Essay	2020-06-02 00:50:01.402472	2020-06-02 00:50:01.402472
619	Many Waters	Lizabeth Hegmann PhD	George Newnes	Textbook	2020-06-02 00:50:01.407355	2020-06-02 00:50:01.407355
620	The Curious Incident of the Dog in the Night-Time	Angella Dibbert V	Chatto and Windus	Mythology	2020-06-02 00:50:01.412185	2020-06-02 00:50:01.412185
621	To a God Unknown	Arnulfo Robel	Barrie & Jenkins	Fairy tale	2020-06-02 00:50:01.41679	2020-06-02 00:50:01.41679
622	A Monstrous Regiment of Women	Annette Christiansen	Bloomsbury Publishing Plc	Historical fiction	2020-06-02 00:50:01.421431	2020-06-02 00:50:01.421431
623	Butter In a Lordly Dish	Carmine Gerlach	G-Unit Books	Fanfiction	2020-06-02 00:50:01.426026	2020-06-02 00:50:01.426026
624	Frequent Hearses	Stacey Renner	Book Works	Realistic fiction	2020-06-02 00:50:01.430699	2020-06-02 00:50:01.430699
625	Recalled to Life	Valentine O'Reilly	Macmillan Publishers	Western	2020-06-02 00:50:01.435498	2020-06-02 00:50:01.435498
626	The World, the Flesh and the Devil	Carey Gusikowski	Matthias Media	Essay	2020-06-02 00:50:01.44008	2020-06-02 00:50:01.44008
627	Those Barren Leaves, Thrones, Dominations	Catrina Bartell IV	Virago Press	Realistic fiction	2020-06-02 00:50:01.44472	2020-06-02 00:50:01.44472
628	Bury My Heart at Wounded Knee	Rickey VonRueden	Booktrope	Horror	2020-06-02 00:50:01.449346	2020-06-02 00:50:01.449346
629	Some Buried Caesar	Mrs. Chung Purdy	Holt McDougal	Reference book	2020-06-02 00:50:01.453818	2020-06-02 00:50:01.453818
630	For a Breath I Tarry	Noble Boyer III	George H. Doran Company	Fiction narrative	2020-06-02 00:50:01.458477	2020-06-02 00:50:01.458477
631	As I Lay Dying	Gordon Prosacco MD	Newnes	Tall tale	2020-06-02 00:50:01.463036	2020-06-02 00:50:01.463036
632	In a Dry Season	Tamisha Batz	NavPress	Legend	2020-06-02 00:50:01.467644	2020-06-02 00:50:01.467644
633	If I Forget Thee Jerusalem	Herschel Schamberger	BBC Books	Folklore	2020-06-02 00:50:01.4723	2020-06-02 00:50:01.4723
634	What's Become of Waring	Teofila Gerlach	Atlantic Books	Suspense/Thriller	2020-06-02 00:50:01.476792	2020-06-02 00:50:01.476792
635	Mother Night	Floyd Murphy	D. Reidel	Crime/Detective	2020-06-02 00:50:01.481495	2020-06-02 00:50:01.481495
636	Specimen Days	Fermina Sanford	Atlantic Books	Fairy tale	2020-06-02 00:50:01.486043	2020-06-02 00:50:01.486043
637	For Whom the Bell Tolls	Lannie Wiza II	Tate Publishing & Enterprises	Comic/Graphic Novel	2020-06-02 00:50:01.490831	2020-06-02 00:50:01.490831
638	By Grand Central Station I Sat Down and Wept	Seymour Rowe	SAGE Publications	Crime/Detective	2020-06-02 00:50:01.495477	2020-06-02 00:50:01.495477
639	Tirra Lirra by the River	Josh Marquardt	Holt McDougal	Reference book	2020-06-02 00:50:01.499804	2020-06-02 00:50:01.499804
640	Fear and Trembling	Jenice Hamill	John Blake Publishing	Biography/Autobiography	2020-06-02 00:50:01.504319	2020-06-02 00:50:01.504319
641	Now Sleeps the Crimson Petal	Forrest Lynch	Jaico Publishing House	Reference book	2020-06-02 00:50:01.508603	2020-06-02 00:50:01.508603
642	Alone on a Wide, Wide Sea	Rolando Legros	Nauka	Classic	2020-06-02 00:50:01.513007	2020-06-02 00:50:01.513007
643	The Parliament of Man	Wallace Macejkovic	Manchester University Press	Short story	2020-06-02 00:50:01.517491	2020-06-02 00:50:01.517491
644	The Violent Bear It Away	Mrs. Willy Strosin	Mandrake of Oxford	Western	2020-06-02 00:50:01.522333	2020-06-02 00:50:01.522333
645	If Not Now, When?	Walker Lowe	Scholastic Press	Tall tale	2020-06-02 00:50:01.526891	2020-06-02 00:50:01.526891
646	Surprised by Joy	Monte Wilderman	Leaf Books	Biography/Autobiography	2020-06-02 00:50:01.531441	2020-06-02 00:50:01.531441
647	As I Lay Dying	Dennis Jones III	Burns & Oates	Suspense/Thriller	2020-06-02 00:50:01.536681	2020-06-02 00:50:01.536681
648	To Say Nothing of the Dog	Eliseo Hayes	Shambhala Publications	Comic/Graphic Novel	2020-06-02 00:50:01.543351	2020-06-02 00:50:01.543351
649	The Soldier's Art	Ms. Jermaine Stehr	NavPress	Science fiction	2020-06-02 00:50:01.548668	2020-06-02 00:50:01.548668
650	The Golden Bowl	Erna Schneider	Libertas Academica	Fanfiction	2020-06-02 00:50:01.553832	2020-06-02 00:50:01.553832
651	Mother Night	Mrs. Lyle Legros	Imperial War Museum	Biography/Autobiography	2020-06-02 00:50:01.559194	2020-06-02 00:50:01.559194
652	A Monstrous Regiment of Women	Tesha Yost	Mascot Books	Realistic fiction	2020-06-02 00:50:01.563926	2020-06-02 00:50:01.563926
653	Time of our Darkness	Denver Johnson	Mainstream Publishing	Mythology	2020-06-02 00:50:01.568528	2020-06-02 00:50:01.568528
654	A Time to Kill	Mr. Mckenzie Kessler	Vintage Books	Narrative nonfiction	2020-06-02 00:50:01.574116	2020-06-02 00:50:01.574116
655	Far From the Madding Crowd	Ruthann Dibbert	G-Unit Books	Metafiction	2020-06-02 00:50:01.580784	2020-06-02 00:50:01.580784
656	Brandy of the Damned	Kasey Green	Left Book Club	Mythopoeia	2020-06-02 00:50:01.586141	2020-06-02 00:50:01.586141
657	The Monkey's Raincoat	Rodrick Heathcote III	Oberon Books	Fanfiction	2020-06-02 00:50:01.593332	2020-06-02 00:50:01.593332
658	Fair Stood the Wind for France	Luigi Zulauf	Edupedia Publications	Historical fiction	2020-06-02 00:50:01.599323	2020-06-02 00:50:01.599323
659	Noli Me Tangere	Frederic Robel	Emerald Group Publishing	Essay	2020-06-02 00:50:01.605519	2020-06-02 00:50:01.605519
660	The Skull Beneath the Skin	Samual Goldner	Bellevue Literary Press	Short story	2020-06-02 00:50:01.613004	2020-06-02 00:50:01.613004
661	Blithe Spirit	Hana Senger	Karadi Tales	Historical fiction	2020-06-02 00:50:01.619276	2020-06-02 00:50:01.619276
662	Jacob Have I Loved	Robt Hyatt	Felony & Mayhem Press	Fiction in verse	2020-06-02 00:50:01.62867	2020-06-02 00:50:01.62867
663	If Not Now, When?	Cody O'Kon II	Berkley Books	Short story	2020-06-02 00:50:01.635773	2020-06-02 00:50:01.635773
664	By Grand Central Station I Sat Down and Wept	Mrs. Leeanna Frami	Carlton Books	Fiction narrative	2020-06-02 00:50:01.643167	2020-06-02 00:50:01.643167
665	Far From the Madding Crowd	Vincenza Jaskolski	Voyager Books	Humor	2020-06-02 00:50:01.649528	2020-06-02 00:50:01.649528
666	This Side of Paradise	Darlena Hoeger	Nauka	Speech	2020-06-02 00:50:01.655626	2020-06-02 00:50:01.655626
667	The Lathe of Heaven	Ms. Charita Friesen	New Holland Publishers	Mythology	2020-06-02 00:50:01.663115	2020-06-02 00:50:01.663115
668	Stranger in a Strange Land	Roosevelt Yundt	New Holland Publishers	Science fiction	2020-06-02 00:50:01.669383	2020-06-02 00:50:01.669383
669	A Swiftly Tilting Planet	Dr. Hong Blanda	Random House	Narrative nonfiction	2020-06-02 00:50:01.6767	2020-06-02 00:50:01.6767
670	The House of Mirth	Lucas Zemlak Jr.	Shambhala Publications	Folklore	2020-06-02 00:50:01.682872	2020-06-02 00:50:01.682872
671	Those Barren Leaves, Thrones, Dominations	Mr. Joaquin Treutel	Charles Scribner's Sons	Narrative nonfiction	2020-06-02 00:50:01.68903	2020-06-02 00:50:01.68903
672	This Side of Paradise	Eugene Collier	Carlton Publishing Group	Fairy tale	2020-06-02 00:50:01.695039	2020-06-02 00:50:01.695039
673	His Dark Materials	Reed Moen	Godwit Press	Textbook	2020-06-02 00:50:01.701192	2020-06-02 00:50:01.701192
674	Brandy of the Damned	Rosena Heaney	Bloodaxe Books	Fiction in verse	2020-06-02 00:50:01.710102	2020-06-02 00:50:01.710102
675	The Other Side of Silence	Luciano Lind	Adis International	Speech	2020-06-02 00:50:01.716892	2020-06-02 00:50:01.716892
676	Paths of Glory	Julian Kertzmann	Academic Press	Western	2020-06-02 00:50:01.724969	2020-06-02 00:50:01.724969
677	Blue Remembered Earth	Sal Fahey	Etruscan Press	Crime/Detective	2020-06-02 00:50:01.732683	2020-06-02 00:50:01.732683
678	I Know Why the Caged Bird Sings	Anton Bergstrom	Marshall Pickering	Metafiction	2020-06-02 00:50:01.741028	2020-06-02 00:50:01.741028
679	Paths of Glory	Lavada Heidenreich	Carlton Publishing Group	Suspense/Thriller	2020-06-02 00:50:01.750352	2020-06-02 00:50:01.750352
680	In Death Ground	George Schiller	Shire Books	Narrative nonfiction	2020-06-02 00:50:01.757062	2020-06-02 00:50:01.757062
681	Dying of the Light	Mrs. Waylon Champlin	G. P. Putnam's Sons	Fiction in verse	2020-06-02 00:50:01.763017	2020-06-02 00:50:01.763017
682	A Monstrous Regiment of Women	Mrs. Dominick Lubowitz	HarperTrophy	Suspense/Thriller	2020-06-02 00:50:01.769044	2020-06-02 00:50:01.769044
683	The Lathe of Heaven	Brain West	Kogan Page	Humor	2020-06-02 00:50:01.776853	2020-06-02 00:50:01.776853
684	Behold the Man	Jordan Morissette V	David & Charles	Mythopoeia	2020-06-02 00:50:01.783394	2020-06-02 00:50:01.783394
685	The Last Enemy	Danna Powlowski	Harcourt Assessment	Reference book	2020-06-02 00:50:01.790364	2020-06-02 00:50:01.790364
686	A Handful of Dust	Lou Hartmann DDS	Zondervan	Reference book	2020-06-02 00:50:01.798027	2020-06-02 00:50:01.798027
687	All the King's Men	Alphonse Cremin	Orion Books	Crime/Detective	2020-06-02 00:50:01.803935	2020-06-02 00:50:01.803935
688	Eyeless in Gaza	Anton Rodriguez Jr.	Verso Books	Fanfiction	2020-06-02 00:50:01.811179	2020-06-02 00:50:01.811179
689	Jesting Pilate	Mr. Ian Kutch	Atlantic Books	Science fiction	2020-06-02 00:50:01.817192	2020-06-02 00:50:01.817192
690	I Sing the Body Electric	Amiee Schiller	Zondervan	Legend	2020-06-02 00:50:01.823196	2020-06-02 00:50:01.823196
691	Blood's a Rover	Rocco Hand	Mandrake Press	Speech	2020-06-02 00:50:01.829124	2020-06-02 00:50:01.829124
692	To a God Unknown	Julius Hammes V	Salt Publishing	Essay	2020-06-02 00:50:01.83474	2020-06-02 00:50:01.83474
693	For a Breath I Tarry	Dorthea Crist	Nonesuch Press	Reference book	2020-06-02 00:50:01.840732	2020-06-02 00:50:01.840732
694	The Widening Gyre	Catherina Huels II	Ellora's Cave	Short story	2020-06-02 00:50:01.848145	2020-06-02 00:50:01.848145
695	For a Breath I Tarry	Delmar Corkery	Matthias Media	Short story	2020-06-02 00:50:01.854158	2020-06-02 00:50:01.854158
696	Pale Kings and Princes	Raul Heathcote	Boydell & Brewer	Humor	2020-06-02 00:50:01.861738	2020-06-02 00:50:01.861738
697	Wildfire at Midnight	Foster O'Kon	Hamish Hamilton	Fairy tale	2020-06-02 00:50:01.867787	2020-06-02 00:50:01.867787
698	Terrible Swift Sword	Drucilla Lueilwitz	Lion Hudson	Metafiction	2020-06-02 00:50:01.8741	2020-06-02 00:50:01.8741
699	Consider Phlebas	Donald Wunsch	Gefen Publishing House	Fantasy	2020-06-02 00:50:01.881731	2020-06-02 00:50:01.881731
700	A Passage to India	Dr. Jina Blick	Peace Hill Press	Tall tale	2020-06-02 00:50:01.887635	2020-06-02 00:50:01.887635
701	A Passage to India	Cristobal Schumm	Martinus Nijhoff Publishers	Speech	2020-06-02 00:50:01.894087	2020-06-02 00:50:01.894087
702	Stranger in a Strange Land	Maribel Watsica	Hodder & Stoughton	Legend	2020-06-02 00:50:01.902817	2020-06-02 00:50:01.902817
703	Specimen Days	Edmund Murazik	Leaf Books	Comic/Graphic Novel	2020-06-02 00:50:01.910665	2020-06-02 00:50:01.910665
704	By Grand Central Station I Sat Down and Wept	Victor Quigley DVM	Central European University Press	Historical fiction	2020-06-02 00:50:01.9174	2020-06-02 00:50:01.9174
705	The Grapes of Wrath	Celesta Pouros	ECW Press	Science fiction	2020-06-02 00:50:01.923623	2020-06-02 00:50:01.923623
706	Little Hands Clapping	Nancie Little	Emerald Group Publishing	Science fiction	2020-06-02 00:50:01.930993	2020-06-02 00:50:01.930993
707	Such, Such Were the Joys	Ebonie Runolfsson	John Blake Publishing	Short story	2020-06-02 00:50:01.936852	2020-06-02 00:50:01.936852
708	Death Be Not Proud	Milda Gibson	McClelland and Stewart	Mystery	2020-06-02 00:50:01.943208	2020-06-02 00:50:01.943208
709	An Instant In The Wind	Dr. Wilbur Runolfsdottir	University of Michigan Press	Classic	2020-06-02 00:50:01.949056	2020-06-02 00:50:01.949056
710	Frequent Hearses	Mrs. Tobie Collier	Velazquez Press	Fiction narrative	2020-06-02 00:50:01.954761	2020-06-02 00:50:01.954761
711	Blithe Spirit	Mrs. Lissette McKenzie	McGraw Hill Financial	Humor	2020-06-02 00:50:01.96167	2020-06-02 00:50:01.96167
712	Look to Windward	Mrs. Milo Dare	Random House	Narrative nonfiction	2020-06-02 00:50:01.967578	2020-06-02 00:50:01.967578
713	Moab Is My Washpot	Wes Gislason	Manor House Publishing	Crime/Detective	2020-06-02 00:50:01.973528	2020-06-02 00:50:01.973528
714	The Way Through the Woods	Cornell Spinka	D. Appleton & Company	Short story	2020-06-02 00:50:01.979319	2020-06-02 00:50:01.979319
715	The Little Foxes	Genie Jast	Casemate Publishers	Fantasy	2020-06-02 00:50:01.984982	2020-06-02 00:50:01.984982
716	Behold the Man	Kaitlyn Brekke	Bloomsbury Publishing Plc	Short story	2020-06-02 00:50:01.990883	2020-06-02 00:50:01.990883
717	To Sail Beyond the Sunset	Mohammed Reinger	Carcanet Press	Fantasy	2020-06-02 00:50:01.997933	2020-06-02 00:50:01.997933
718	The Green Bay Tree	Gale Hoeger	Berkley Books	Short story	2020-06-02 00:50:02.003625	2020-06-02 00:50:02.003625
719	Vile Bodies	Donny Greenholt	NavPress	Speech	2020-06-02 00:50:02.010777	2020-06-02 00:50:02.010777
720	The Skull Beneath the Skin	Kris Satterfield	Taunton Press	Horror	2020-06-02 00:50:02.017287	2020-06-02 00:50:02.017287
721	Many Waters	Chi McGlynn	Pathfinder Press	Legend	2020-06-02 00:50:02.02335	2020-06-02 00:50:02.02335
722	It's a Battlefield	Leesa Robel	Dalkey Archive Press	Realistic fiction	2020-06-02 00:50:02.029207	2020-06-02 00:50:02.029207
723	Things Fall Apart	Owen Kiehn	Airiti Press	Humor	2020-06-02 00:50:02.034829	2020-06-02 00:50:02.034829
724	The Moon by Night	Fairy Boehm	Andrews McMeel Publishing	Suspense/Thriller	2020-06-02 00:50:02.040742	2020-06-02 00:50:02.040742
725	That Hideous Strength	Mr. Moshe Oberbrunner	Broadview Press	Mythology	2020-06-02 00:50:02.047624	2020-06-02 00:50:02.047624
726	Quo Vadis	Lois Quigley	Hachette Book Group USA	Fanfiction	2020-06-02 00:50:02.053426	2020-06-02 00:50:02.053426
727	Precious Bane	Alfredo Mills	Medknow Publications	Short story	2020-06-02 00:50:02.060976	2020-06-02 00:50:02.060976
728	The Man Within	Romana Jenkins	University of Michigan Press	Mythopoeia	2020-06-02 00:50:02.067116	2020-06-02 00:50:02.067116
729	The Heart Is a Lonely Hunter	Santo Roberts IV	Jaico Publishing House	Reference book	2020-06-02 00:50:02.07359	2020-06-02 00:50:02.07359
730	The Wings of the Dove	Lynsey Erdman	Simon & Schuster	Short story	2020-06-02 00:50:02.080698	2020-06-02 00:50:02.080698
731	Arms and the Man	Weldon Schuster Jr.	Atheneum Publishers	Classic	2020-06-02 00:50:02.086808	2020-06-02 00:50:02.086808
732	Wildfire at Midnight	Dora Willms	Shambhala Publications	Essay	2020-06-02 00:50:02.093542	2020-06-02 00:50:02.093542
733	Ah, Wilderness!	Miss Migdalia Sporer	Fairview Press	Realistic fiction	2020-06-02 00:50:02.099513	2020-06-02 00:50:02.099513
734	The Golden Bowl	Madelaine Hodkiewicz	Edupedia Publications	Fanfiction	2020-06-02 00:50:02.105396	2020-06-02 00:50:02.105396
735	A Glass of Blessings	Alane Leannon MD	Flame Tree Publishing	Horror	2020-06-02 00:50:02.111979	2020-06-02 00:50:02.111979
736	Clouds of Witness	Efrain Dickens	Tachyon Publications	Fairy tale	2020-06-02 00:50:02.117713	2020-06-02 00:50:02.117713
737	Precious Bane	Kathyrn Gutmann	Brill	Historical fiction	2020-06-02 00:50:02.12432	2020-06-02 00:50:02.12432
738	Quo Vadis	Willy King	Mandrake Press	Historical fiction	2020-06-02 00:50:02.133459	2020-06-02 00:50:02.133459
739	Death Be Not Proud	Maddie Gaylord Jr.	Peace Hill Press	Suspense/Thriller	2020-06-02 00:50:02.139961	2020-06-02 00:50:02.139961
740	The Grapes of Wrath	Teri Thompson	Simon & Schuster	Textbook	2020-06-02 00:50:02.14689	2020-06-02 00:50:02.14689
741	The Wives of Bath	Mr. Arnulfo Rosenbaum	Farrar, Straus & Giroux	Tall tale	2020-06-02 00:50:02.152732	2020-06-02 00:50:02.152732
742	The Last Enemy	Hubert Fadel III	Tammi	Historical fiction	2020-06-02 00:50:02.159046	2020-06-02 00:50:02.159046
743	The Sun Also Rises	Hilda Klein I	Hackett Publishing Company	Historical fiction	2020-06-02 00:50:02.164979	2020-06-02 00:50:02.164979
744	Many Waters	Deon Lang	Sidgwick & Jackson	Fanfiction	2020-06-02 00:50:02.171151	2020-06-02 00:50:02.171151
745	The Proper Study	Enoch Deckow	Chronicle Books	Humor	2020-06-02 00:50:02.177995	2020-06-02 00:50:02.177995
746	All Passion Spent	Nathanael Johns	Chronicle Books	Fable	2020-06-02 00:50:02.184096	2020-06-02 00:50:02.184096
747	All the King's Men	Miss Kacy Kunze	Shoemaker & Hoard Publishers	Essay	2020-06-02 00:50:02.190032	2020-06-02 00:50:02.190032
748	Paths of Glory	Jacinta Strosin	Blue Ribbon Books	Horror	2020-06-02 00:50:02.195859	2020-06-02 00:50:02.195859
749	The Stars' Tennis Balls	Jorge Christiansen	McClelland and Stewart	Narrative nonfiction	2020-06-02 00:50:02.201379	2020-06-02 00:50:02.201379
750	Carrion Comfort	Rusty Johnson	University of Michigan Press	Short story	2020-06-02 00:50:02.207337	2020-06-02 00:50:02.207337
751	The Doors of Perception	Effie Leannon	Fairview Press	Science fiction	2020-06-02 00:50:02.21415	2020-06-02 00:50:02.21415
752	Recalled to Life	Andrea Carroll	Harvard University Press	Biography/Autobiography	2020-06-02 00:50:02.220331	2020-06-02 00:50:02.220331
753	The Waste Land	Charis Schuppe	Simon & Schuster	Historical fiction	2020-06-02 00:50:02.226568	2020-06-02 00:50:02.226568
754	Dance Dance Dance	Marica Berge	Andrews McMeel Publishing	Metafiction	2020-06-02 00:50:02.233004	2020-06-02 00:50:02.233004
755	A Glass of Blessings	Jeanine Bode Sr.	Harvard University Press	Fantasy	2020-06-02 00:50:02.239421	2020-06-02 00:50:02.239421
756	Have His Carcase	Bridget Reichert MD	Harlequin Enterprises Ltd	Fairy tale	2020-06-02 00:50:02.24574	2020-06-02 00:50:02.24574
757	A Scanner Darkly	Odell Goodwin	Holt McDougal	Short story	2020-06-02 00:50:02.25155	2020-06-02 00:50:02.25155
758	The Painted Veil	Ms. Gerald Cormier	Berkley Books	Mystery	2020-06-02 00:50:02.257401	2020-06-02 00:50:02.257401
759	Clouds of Witness	Pasquale Lehner	Holland Park Press	Fiction in verse	2020-06-02 00:50:02.263862	2020-06-02 00:50:02.263862
760	Ah, Wilderness!	Hertha Lang	Ace Books	Short story	2020-06-02 00:50:02.269763	2020-06-02 00:50:02.269763
761	Waiting for the Barbarians	Columbus Morar	Victor Gollancz Ltd	Fantasy	2020-06-02 00:50:02.27632	2020-06-02 00:50:02.27632
762	If Not Now, When?	Grisel Mosciski	Pavilion Books	Humor	2020-06-02 00:50:02.283004	2020-06-02 00:50:02.283004
763	A Glass of Blessings	Davis Jenkins Jr.	Black Dog Publishing	Western	2020-06-02 00:50:02.289123	2020-06-02 00:50:02.289123
764	The Moving Toyshop	Pedro Kutch	HarperCollins	Fanfiction	2020-06-02 00:50:02.295394	2020-06-02 00:50:02.295394
765	Dying of the Light	Rosendo Carter	Packt Publishing	Comic/Graphic Novel	2020-06-02 00:50:02.301052	2020-06-02 00:50:02.301052
766	A Handful of Dust	Carmen Schiller	Elsevier	Horror	2020-06-02 00:50:02.306944	2020-06-02 00:50:02.306944
767	Far From the Madding Crowd	Renato Dach	Orchard Books	Metafiction	2020-06-02 00:50:02.314218	2020-06-02 00:50:02.314218
768	All Passion Spent	Mora Ritchie	No Starch Press	Short story	2020-06-02 00:50:02.320311	2020-06-02 00:50:02.320311
769	O Jerusalem!	Racquel Lemke	Parachute Publishing	Fanfiction	2020-06-02 00:50:02.326662	2020-06-02 00:50:02.326662
770	The Proper Study	Emory Wintheiser Jr.	Viking Press	Fanfiction	2020-06-02 00:50:02.333405	2020-06-02 00:50:02.333405
771	Fear and Trembling	Desmond Hessel	Elsevier	Reference book	2020-06-02 00:50:02.339428	2020-06-02 00:50:02.339428
772	A Darkling Plain	Marc Barrows	Mandrake Press	Realistic fiction	2020-06-02 00:50:02.345965	2020-06-02 00:50:02.345965
773	In Death Ground	Cleotilde Simonis Jr.	Black Sparrow Books	Narrative nonfiction	2020-06-02 00:50:02.351918	2020-06-02 00:50:02.351918
774	Where Angels Fear to Tread	Edith Lebsack II	O'Reilly Media	Classic	2020-06-02 00:50:02.357952	2020-06-02 00:50:02.357952
775	That Hideous Strength	Rhonda Kirlin	Libertas Academica	Suspense/Thriller	2020-06-02 00:50:02.364656	2020-06-02 00:50:02.364656
776	The Golden Apples of the Sun	Yon Romaguera II	University of Chicago Press	Folklore	2020-06-02 00:50:02.37064	2020-06-02 00:50:02.37064
777	No Highway	Leah Daugherty	Pathfinder Press	Western	2020-06-02 00:50:02.376633	2020-06-02 00:50:02.376633
778	The Last Temptation	Hisako O'Reilly DVM	Chatto and Windus	Biography/Autobiography	2020-06-02 00:50:02.383171	2020-06-02 00:50:02.383171
779	Death Be Not Proud	Andre Harber	Dedalus Books	Horror	2020-06-02 00:50:02.389431	2020-06-02 00:50:02.389431
780	Fear and Trembling	Hunter Bogan	Chambers Harrap	Comic/Graphic Novel	2020-06-02 00:50:02.362284	2020-06-02 00:50:02.362284
781	A Summer Bird-Cage	Danial Padberg	Left Book Club	Short story	2020-06-02 00:50:02.371472	2020-06-02 00:50:02.371472
782	Things Fall Apart	Tami Macejkovic	G-Unit Books	Suspense/Thriller	2020-06-02 00:50:02.378086	2020-06-02 00:50:02.378086
783	The Grapes of Wrath	Mr. Russell Hermiston	David & Charles	Metafiction	2020-06-02 00:50:02.384685	2020-06-02 00:50:02.384685
784	Waiting for the Barbarians	Mollie Raynor	Atheneum Books	Biography/Autobiography	2020-06-02 00:50:02.390958	2020-06-02 00:50:02.390958
785	Beneath the Bleeding	Bridgette Rutherford	Gefen Publishing House	Textbook	2020-06-02 00:50:02.397754	2020-06-02 00:50:02.397754
786	The Other Side of Silence	Willy Baumbach	Ten Speed Press	Legend	2020-06-02 00:50:02.403709	2020-06-02 00:50:02.403709
787	The Golden Bowl	Andra Cronin	BBC Books	Humor	2020-06-02 00:50:02.409293	2020-06-02 00:50:02.409293
788	Now Sleeps the Crimson Petal	Jan Wisoky	Vintage Books	Suspense/Thriller	2020-06-02 00:50:02.414691	2020-06-02 00:50:02.414691
789	The Millstone	Sydney Mohr	Harvest House	Science fiction	2020-06-02 00:50:02.420289	2020-06-02 00:50:02.420289
790	A Passage to India	Hosea Funk	Golden Cockerel Press	Comic/Graphic Novel	2020-06-02 00:50:02.425729	2020-06-02 00:50:02.425729
791	Beneath the Bleeding	Trent Hilpert V	Taylor & Francis	Short story	2020-06-02 00:50:02.431106	2020-06-02 00:50:02.431106
792	Paths of Glory	Lan Bins Sr.	Virago Press	Crime/Detective	2020-06-02 00:50:02.435632	2020-06-02 00:50:02.435632
793	Jesting Pilate	Valrie Gulgowski DDS	Zondervan	Western	2020-06-02 00:50:02.440476	2020-06-02 00:50:02.440476
794	Of Human Bondage	Santiago Cassin II	Pathfinder Press	Mystery	2020-06-02 00:50:02.446123	2020-06-02 00:50:02.446123
795	Time To Murder And Create	Maximo Abbott IV	Cambridge University Press	Fantasy	2020-06-02 00:50:02.45175	2020-06-02 00:50:02.45175
796	To Your Scattered Bodies Go	Leopoldo Hessel	Martinus Nijhoff Publishers	Fiction narrative	2020-06-02 00:50:02.457656	2020-06-02 00:50:02.457656
797	Tender Is the Night	Mr. Arla Schultz	Bantam Spectra	Tall tale	2020-06-02 00:50:02.464031	2020-06-02 00:50:02.464031
798	In Dubious Battle	Elena Greenholt	Marshall Pickering	Fairy tale	2020-06-02 00:50:02.46997	2020-06-02 00:50:02.46997
799	Françoise Sagan	Luis Buckridge	Pathfinder Press	Short story	2020-06-02 00:50:02.47732	2020-06-02 00:50:02.47732
800	Now Sleeps the Crimson Petal	Lorenza Ratke	Victor Gollancz Ltd	Reference book	2020-06-02 00:50:02.484652	2020-06-02 00:50:02.484652
\.


--
-- TOC entry 2243 (class 0 OID 0)
-- Dependencies: 185
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.books_id_seq', 800, true);


--
-- TOC entry 2215 (class 0 OID 16399)
-- Dependencies: 188
-- Data for Name: bookshelves; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bookshelves (id, rating, times_read, engineer_id, book_id, created_at, updated_at) FROM stdin;
1	79	3	1	23	2020-06-02 00:50:06.600159	2020-06-02 00:50:06.600159
2	57	5	1	178	2020-06-02 00:50:06.612938	2020-06-02 00:50:06.612938
3	42	5	1	342	2020-06-02 00:50:06.625632	2020-06-02 00:50:06.625632
4	63	3	1	599	2020-06-02 00:50:06.637435	2020-06-02 00:50:06.637435
5	35	4	2	163	2020-06-02 00:50:06.649538	2020-06-02 00:50:06.649538
6	60	5	2	387	2020-06-02 00:50:06.661647	2020-06-02 00:50:06.661647
7	52	4	2	138	2020-06-02 00:50:06.673205	2020-06-02 00:50:06.673205
8	79	3	2	533	2020-06-02 00:50:06.684967	2020-06-02 00:50:06.684967
9	59	3	2	293	2020-06-02 00:50:06.696569	2020-06-02 00:50:06.696569
10	70	2	2	142	2020-06-02 00:50:06.707818	2020-06-02 00:50:06.707818
11	30	3	3	350	2020-06-02 00:50:06.717572	2020-06-02 00:50:06.717572
12	24	2	3	92	2020-06-02 00:50:06.726816	2020-06-02 00:50:06.726816
13	86	3	4	560	2020-06-02 00:50:06.73596	2020-06-02 00:50:06.73596
14	83	3	4	84	2020-06-02 00:50:06.745295	2020-06-02 00:50:06.745295
15	8	2	4	407	2020-06-02 00:50:06.754858	2020-06-02 00:50:06.754858
16	62	5	4	267	2020-06-02 00:50:06.764999	2020-06-02 00:50:06.764999
17	8	2	4	117	2020-06-02 00:50:06.774624	2020-06-02 00:50:06.774624
18	15	4	4	244	2020-06-02 00:50:06.784624	2020-06-02 00:50:06.784624
19	50	1	4	286	2020-06-02 00:50:06.794146	2020-06-02 00:50:06.794146
20	51	2	4	168	2020-06-02 00:50:06.804221	2020-06-02 00:50:06.804221
21	45	3	4	357	2020-06-02 00:50:06.814148	2020-06-02 00:50:06.814148
22	64	5	5	390	2020-06-02 00:50:06.823529	2020-06-02 00:50:06.823529
23	96	4	5	243	2020-06-02 00:50:06.832938	2020-06-02 00:50:06.832938
24	31	4	5	368	2020-06-02 00:50:06.842507	2020-06-02 00:50:06.842507
25	61	4	5	419	2020-06-02 00:50:06.852104	2020-06-02 00:50:06.852104
26	86	1	5	424	2020-06-02 00:50:06.862042	2020-06-02 00:50:06.862042
27	99	3	5	248	2020-06-02 00:50:06.871619	2020-06-02 00:50:06.871619
28	27	1	5	373	2020-06-02 00:50:06.881868	2020-06-02 00:50:06.881868
29	77	4	6	394	2020-06-02 00:50:06.895133	2020-06-02 00:50:06.895133
30	76	5	6	346	2020-06-02 00:50:06.905214	2020-06-02 00:50:06.905214
31	53	4	6	390	2020-06-02 00:50:06.913817	2020-06-02 00:50:06.913817
32	73	3	6	554	2020-06-02 00:50:06.923392	2020-06-02 00:50:06.923392
33	74	5	6	497	2020-06-02 00:50:06.93293	2020-06-02 00:50:06.93293
34	90	1	7	248	2020-06-02 00:50:06.943029	2020-06-02 00:50:06.943029
35	81	2	7	546	2020-06-02 00:50:06.952115	2020-06-02 00:50:06.952115
36	12	4	7	129	2020-06-02 00:50:06.961226	2020-06-02 00:50:06.961226
37	33	2	7	270	2020-06-02 00:50:06.970535	2020-06-02 00:50:06.970535
38	42	2	7	33	2020-06-02 00:50:06.979802	2020-06-02 00:50:06.979802
39	52	4	7	152	2020-06-02 00:50:06.988978	2020-06-02 00:50:06.988978
40	50	4	7	451	2020-06-02 00:50:06.998037	2020-06-02 00:50:06.998037
41	32	4	7	435	2020-06-02 00:50:07.007804	2020-06-02 00:50:07.007804
42	27	4	7	197	2020-06-02 00:50:07.016831	2020-06-02 00:50:07.016831
43	12	3	8	135	2020-06-02 00:50:07.026437	2020-06-02 00:50:07.026437
44	96	5	8	161	2020-06-02 00:50:07.036607	2020-06-02 00:50:07.036607
45	72	5	8	223	2020-06-02 00:50:07.046555	2020-06-02 00:50:07.046555
46	62	1	8	167	2020-06-02 00:50:07.0559	2020-06-02 00:50:07.0559
47	47	3	9	436	2020-06-02 00:50:07.065462	2020-06-02 00:50:07.065462
48	56	3	9	7	2020-06-02 00:50:07.075045	2020-06-02 00:50:07.075045
49	75	4	9	575	2020-06-02 00:50:07.084231	2020-06-02 00:50:07.084231
50	58	5	10	359	2020-06-02 00:50:07.093921	2020-06-02 00:50:07.093921
51	90	4	10	338	2020-06-02 00:50:07.103207	2020-06-02 00:50:07.103207
52	68	5	10	356	2020-06-02 00:50:07.112455	2020-06-02 00:50:07.112455
53	26	4	10	12	2020-06-02 00:50:07.122467	2020-06-02 00:50:07.122467
54	22	2	10	541	2020-06-02 00:50:07.132298	2020-06-02 00:50:07.132298
55	27	4	10	585	2020-06-02 00:50:07.142223	2020-06-02 00:50:07.142223
56	91	4	10	411	2020-06-02 00:50:07.152242	2020-06-02 00:50:07.152242
57	57	3	10	451	2020-06-02 00:50:07.161969	2020-06-02 00:50:07.161969
58	84	5	11	43	2020-06-02 00:50:07.171699	2020-06-02 00:50:07.171699
59	66	2	12	82	2020-06-02 00:50:07.181586	2020-06-02 00:50:07.181586
60	17	3	12	115	2020-06-02 00:50:07.19126	2020-06-02 00:50:07.19126
61	31	5	12	78	2020-06-02 00:50:07.200801	2020-06-02 00:50:07.200801
62	33	5	12	414	2020-06-02 00:50:07.209937	2020-06-02 00:50:07.209937
63	89	1	12	497	2020-06-02 00:50:07.219216	2020-06-02 00:50:07.219216
64	57	5	13	133	2020-06-02 00:50:07.228521	2020-06-02 00:50:07.228521
65	36	3	13	496	2020-06-02 00:50:07.237883	2020-06-02 00:50:07.237883
66	59	4	13	241	2020-06-02 00:50:07.247073	2020-06-02 00:50:07.247073
67	25	1	13	595	2020-06-02 00:50:07.256272	2020-06-02 00:50:07.256272
68	77	2	13	500	2020-06-02 00:50:07.265309	2020-06-02 00:50:07.265309
69	95	2	13	567	2020-06-02 00:50:07.274006	2020-06-02 00:50:07.274006
70	2	2	14	389	2020-06-02 00:50:07.283093	2020-06-02 00:50:07.283093
71	7	4	14	187	2020-06-02 00:50:07.29203	2020-06-02 00:50:07.29203
72	52	5	14	3	2020-06-02 00:50:07.300844	2020-06-02 00:50:07.300844
73	75	5	14	582	2020-06-02 00:50:07.310387	2020-06-02 00:50:07.310387
74	94	1	15	197	2020-06-02 00:50:07.319909	2020-06-02 00:50:07.319909
75	57	5	15	488	2020-06-02 00:50:07.328576	2020-06-02 00:50:07.328576
76	16	1	15	153	2020-06-02 00:50:07.337584	2020-06-02 00:50:07.337584
77	32	5	16	325	2020-06-02 00:50:07.346495	2020-06-02 00:50:07.346495
78	80	4	16	106	2020-06-02 00:50:07.355435	2020-06-02 00:50:07.355435
79	94	2	16	166	2020-06-02 00:50:07.364539	2020-06-02 00:50:07.364539
80	83	1	16	242	2020-06-02 00:50:07.373308	2020-06-02 00:50:07.373308
81	27	5	16	386	2020-06-02 00:50:07.38298	2020-06-02 00:50:07.38298
82	39	2	16	182	2020-06-02 00:50:07.409274	2020-06-02 00:50:07.409274
83	36	2	16	169	2020-06-02 00:50:07.426093	2020-06-02 00:50:07.426093
84	82	1	17	260	2020-06-02 00:50:07.442288	2020-06-02 00:50:07.442288
85	36	2	17	279	2020-06-02 00:50:07.459246	2020-06-02 00:50:07.459246
86	5	4	17	527	2020-06-02 00:50:07.47314	2020-06-02 00:50:07.47314
87	14	1	17	399	2020-06-02 00:50:07.485499	2020-06-02 00:50:07.485499
88	10	1	17	275	2020-06-02 00:50:07.49692	2020-06-02 00:50:07.49692
89	43	1	17	108	2020-06-02 00:50:07.507839	2020-06-02 00:50:07.507839
90	11	3	17	120	2020-06-02 00:50:07.518244	2020-06-02 00:50:07.518244
91	1	1	17	265	2020-06-02 00:50:07.529481	2020-06-02 00:50:07.529481
92	96	3	17	552	2020-06-02 00:50:07.540256	2020-06-02 00:50:07.540256
93	40	2	17	33	2020-06-02 00:50:07.551106	2020-06-02 00:50:07.551106
94	77	1	18	242	2020-06-02 00:50:07.562187	2020-06-02 00:50:07.562187
95	38	1	18	215	2020-06-02 00:50:07.570878	2020-06-02 00:50:07.570878
96	93	4	18	487	2020-06-02 00:50:07.580044	2020-06-02 00:50:07.580044
97	70	3	18	26	2020-06-02 00:50:07.588517	2020-06-02 00:50:07.588517
98	69	2	18	472	2020-06-02 00:50:07.597156	2020-06-02 00:50:07.597156
99	39	1	18	246	2020-06-02 00:50:07.60581	2020-06-02 00:50:07.60581
100	80	3	18	371	2020-06-02 00:50:07.614074	2020-06-02 00:50:07.614074
101	88	5	18	103	2020-06-02 00:50:07.622406	2020-06-02 00:50:07.622406
102	64	4	18	286	2020-06-02 00:50:07.630574	2020-06-02 00:50:07.630574
103	10	4	18	229	2020-06-02 00:50:07.638918	2020-06-02 00:50:07.638918
104	36	3	19	520	2020-06-02 00:50:07.647119	2020-06-02 00:50:07.647119
105	72	3	19	290	2020-06-02 00:50:07.655176	2020-06-02 00:50:07.655176
106	5	5	19	16	2020-06-02 00:50:07.663427	2020-06-02 00:50:07.663427
107	55	3	19	50	2020-06-02 00:50:07.671741	2020-06-02 00:50:07.671741
108	15	5	19	75	2020-06-02 00:50:07.680006	2020-06-02 00:50:07.680006
109	71	5	19	538	2020-06-02 00:50:07.688412	2020-06-02 00:50:07.688412
110	35	5	19	434	2020-06-02 00:50:07.696852	2020-06-02 00:50:07.696852
111	70	3	19	388	2020-06-02 00:50:07.705289	2020-06-02 00:50:07.705289
112	36	5	19	385	2020-06-02 00:50:07.713401	2020-06-02 00:50:07.713401
113	33	5	19	441	2020-06-02 00:50:07.721764	2020-06-02 00:50:07.721764
114	41	3	20	589	2020-06-02 00:50:07.730157	2020-06-02 00:50:07.730157
115	9	2	20	511	2020-06-02 00:50:07.738637	2020-06-02 00:50:07.738637
116	10	3	20	510	2020-06-02 00:50:07.746782	2020-06-02 00:50:07.746782
117	52	2	20	247	2020-06-02 00:50:07.755095	2020-06-02 00:50:07.755095
118	55	3	20	319	2020-06-02 00:50:07.763549	2020-06-02 00:50:07.763549
119	89	4	21	237	2020-06-02 00:50:07.773435	2020-06-02 00:50:07.773435
120	91	2	22	222	2020-06-02 00:50:07.782943	2020-06-02 00:50:07.782943
121	42	2	22	338	2020-06-02 00:50:07.791715	2020-06-02 00:50:07.791715
122	58	5	23	310	2020-06-02 00:50:07.800548	2020-06-02 00:50:07.800548
123	25	3	23	215	2020-06-02 00:50:07.809473	2020-06-02 00:50:07.809473
124	54	2	23	107	2020-06-02 00:50:07.818049	2020-06-02 00:50:07.818049
125	41	4	23	79	2020-06-02 00:50:07.827102	2020-06-02 00:50:07.827102
126	57	5	23	353	2020-06-02 00:50:07.83572	2020-06-02 00:50:07.83572
127	52	4	23	273	2020-06-02 00:50:07.84458	2020-06-02 00:50:07.84458
128	16	3	24	67	2020-06-02 00:50:07.853158	2020-06-02 00:50:07.853158
129	32	5	24	504	2020-06-02 00:50:07.861901	2020-06-02 00:50:07.861901
130	14	3	24	106	2020-06-02 00:50:07.870253	2020-06-02 00:50:07.870253
131	53	3	24	204	2020-06-02 00:50:07.883393	2020-06-02 00:50:07.883393
132	100	3	24	127	2020-06-02 00:50:07.892911	2020-06-02 00:50:07.892911
133	24	3	25	139	2020-06-02 00:50:07.901736	2020-06-02 00:50:07.901736
134	23	3	25	114	2020-06-02 00:50:07.911442	2020-06-02 00:50:07.911442
135	52	3	25	363	2020-06-02 00:50:07.919953	2020-06-02 00:50:07.919953
136	31	2	25	357	2020-06-02 00:50:07.9291	2020-06-02 00:50:07.9291
137	100	3	25	257	2020-06-02 00:50:07.937142	2020-06-02 00:50:07.937142
138	53	3	25	107	2020-06-02 00:50:07.946432	2020-06-02 00:50:07.946432
139	78	2	25	407	2020-06-02 00:50:07.956279	2020-06-02 00:50:07.956279
140	72	2	25	397	2020-06-02 00:50:07.965262	2020-06-02 00:50:07.965262
141	52	3	25	218	2020-06-02 00:50:07.974007	2020-06-02 00:50:07.974007
142	14	2	26	138	2020-06-02 00:50:07.982442	2020-06-02 00:50:07.982442
143	22	1	26	76	2020-06-02 00:50:07.991115	2020-06-02 00:50:07.991115
144	48	3	27	95	2020-06-02 00:50:07.999772	2020-06-02 00:50:07.999772
145	27	2	27	54	2020-06-02 00:50:08.008775	2020-06-02 00:50:08.008775
146	97	3	27	88	2020-06-02 00:50:08.017105	2020-06-02 00:50:08.017105
147	37	4	27	210	2020-06-02 00:50:08.025852	2020-06-02 00:50:08.025852
148	19	2	27	320	2020-06-02 00:50:08.033975	2020-06-02 00:50:08.033975
149	72	2	27	334	2020-06-02 00:50:08.042892	2020-06-02 00:50:08.042892
150	84	2	27	398	2020-06-02 00:50:08.051739	2020-06-02 00:50:08.051739
151	90	3	27	563	2020-06-02 00:50:08.060119	2020-06-02 00:50:08.060119
152	46	5	27	574	2020-06-02 00:50:08.068745	2020-06-02 00:50:08.068745
153	86	2	27	423	2020-06-02 00:50:08.077276	2020-06-02 00:50:08.077276
154	63	5	28	298	2020-06-02 00:50:08.085614	2020-06-02 00:50:08.085614
155	49	2	29	583	2020-06-02 00:50:08.094102	2020-06-02 00:50:08.094102
156	32	1	29	480	2020-06-02 00:50:08.102905	2020-06-02 00:50:08.102905
157	51	5	29	307	2020-06-02 00:50:08.111537	2020-06-02 00:50:08.111537
158	81	2	29	25	2020-06-02 00:50:08.119505	2020-06-02 00:50:08.119505
159	63	3	29	4	2020-06-02 00:50:08.128048	2020-06-02 00:50:08.128048
160	4	3	29	562	2020-06-02 00:50:08.136627	2020-06-02 00:50:08.136627
161	42	1	30	383	2020-06-02 00:50:08.144757	2020-06-02 00:50:08.144757
162	62	5	30	189	2020-06-02 00:50:08.153265	2020-06-02 00:50:08.153265
163	48	2	30	89	2020-06-02 00:50:08.161965	2020-06-02 00:50:08.161965
164	28	5	30	439	2020-06-02 00:50:08.170785	2020-06-02 00:50:08.170785
165	59	5	30	250	2020-06-02 00:50:08.1796	2020-06-02 00:50:08.1796
166	83	1	30	597	2020-06-02 00:50:08.189075	2020-06-02 00:50:08.189075
167	23	4	30	412	2020-06-02 00:50:08.197806	2020-06-02 00:50:08.197806
168	28	2	31	332	2020-06-02 00:50:08.206208	2020-06-02 00:50:08.206208
169	13	4	31	288	2020-06-02 00:50:08.214816	2020-06-02 00:50:08.214816
170	10	4	31	10	2020-06-02 00:50:08.223179	2020-06-02 00:50:08.223179
171	66	5	31	426	2020-06-02 00:50:08.231554	2020-06-02 00:50:08.231554
172	34	5	31	197	2020-06-02 00:50:08.239875	2020-06-02 00:50:08.239875
173	55	2	31	390	2020-06-02 00:50:08.24829	2020-06-02 00:50:08.24829
174	86	1	32	265	2020-06-02 00:50:08.257459	2020-06-02 00:50:08.257459
175	68	4	33	592	2020-06-02 00:50:08.265878	2020-06-02 00:50:08.265878
176	28	5	33	160	2020-06-02 00:50:08.274045	2020-06-02 00:50:08.274045
177	48	4	33	206	2020-06-02 00:50:08.282216	2020-06-02 00:50:08.282216
178	25	3	33	66	2020-06-02 00:50:08.292915	2020-06-02 00:50:08.292915
179	61	4	34	47	2020-06-02 00:50:08.301906	2020-06-02 00:50:08.301906
180	90	5	34	157	2020-06-02 00:50:08.310965	2020-06-02 00:50:08.310965
181	61	1	34	64	2020-06-02 00:50:08.319792	2020-06-02 00:50:08.319792
182	20	1	34	189	2020-06-02 00:50:08.328697	2020-06-02 00:50:08.328697
183	47	1	34	165	2020-06-02 00:50:08.338001	2020-06-02 00:50:08.338001
184	41	3	35	286	2020-06-02 00:50:08.346699	2020-06-02 00:50:08.346699
185	68	3	35	386	2020-06-02 00:50:08.354964	2020-06-02 00:50:08.354964
186	93	2	35	64	2020-06-02 00:50:08.363698	2020-06-02 00:50:08.363698
187	32	1	35	207	2020-06-02 00:50:08.371758	2020-06-02 00:50:08.371758
188	94	5	35	563	2020-06-02 00:50:08.38091	2020-06-02 00:50:08.38091
189	82	4	35	238	2020-06-02 00:50:08.389751	2020-06-02 00:50:08.389751
190	11	1	35	421	2020-06-02 00:50:08.398578	2020-06-02 00:50:08.398578
191	99	1	35	72	2020-06-02 00:50:08.406929	2020-06-02 00:50:08.406929
192	59	4	36	550	2020-06-02 00:50:08.415714	2020-06-02 00:50:08.415714
193	98	3	36	202	2020-06-02 00:50:08.424001	2020-06-02 00:50:08.424001
194	55	4	36	549	2020-06-02 00:50:08.432283	2020-06-02 00:50:08.432283
195	20	5	36	149	2020-06-02 00:50:08.441632	2020-06-02 00:50:08.441632
196	33	3	36	242	2020-06-02 00:50:08.450893	2020-06-02 00:50:08.450893
197	3	4	36	239	2020-06-02 00:50:08.464583	2020-06-02 00:50:08.464583
198	6	2	36	176	2020-06-02 00:50:08.480965	2020-06-02 00:50:08.480965
199	81	3	36	485	2020-06-02 00:50:08.493727	2020-06-02 00:50:08.493727
200	14	2	37	21	2020-06-02 00:50:08.505875	2020-06-02 00:50:08.505875
201	48	1	37	190	2020-06-02 00:50:08.515744	2020-06-02 00:50:08.515744
202	4	5	37	219	2020-06-02 00:50:08.525686	2020-06-02 00:50:08.525686
203	6	1	37	375	2020-06-02 00:50:08.537467	2020-06-02 00:50:08.537467
204	4	3	37	75	2020-06-02 00:50:08.550568	2020-06-02 00:50:08.550568
205	38	1	37	100	2020-06-02 00:50:08.561092	2020-06-02 00:50:08.561092
206	64	5	37	255	2020-06-02 00:50:08.571892	2020-06-02 00:50:08.571892
207	58	4	37	150	2020-06-02 00:50:08.581135	2020-06-02 00:50:08.581135
208	71	1	37	460	2020-06-02 00:50:08.590247	2020-06-02 00:50:08.590247
209	32	5	38	38	2020-06-02 00:50:08.599996	2020-06-02 00:50:08.599996
210	11	1	39	302	2020-06-02 00:50:08.609533	2020-06-02 00:50:08.609533
211	91	2	39	81	2020-06-02 00:50:08.619186	2020-06-02 00:50:08.619186
212	7	2	39	582	2020-06-02 00:50:08.629074	2020-06-02 00:50:08.629074
213	96	3	39	329	2020-06-02 00:50:08.638178	2020-06-02 00:50:08.638178
214	11	5	39	323	2020-06-02 00:50:08.646917	2020-06-02 00:50:08.646917
215	51	2	39	517	2020-06-02 00:50:08.655894	2020-06-02 00:50:08.655894
216	98	4	39	335	2020-06-02 00:50:08.664756	2020-06-02 00:50:08.664756
217	75	5	40	320	2020-06-02 00:50:08.673422	2020-06-02 00:50:08.673422
218	22	5	40	286	2020-06-02 00:50:08.683592	2020-06-02 00:50:08.683592
219	82	3	40	537	2020-06-02 00:50:08.694171	2020-06-02 00:50:08.694171
220	69	3	40	299	2020-06-02 00:50:08.703949	2020-06-02 00:50:08.703949
221	59	4	40	59	2020-06-02 00:50:08.714651	2020-06-02 00:50:08.714651
222	16	3	40	60	2020-06-02 00:50:08.722933	2020-06-02 00:50:08.722933
223	91	4	40	123	2020-06-02 00:50:08.732039	2020-06-02 00:50:08.732039
224	44	5	40	47	2020-06-02 00:50:08.741186	2020-06-02 00:50:08.741186
225	73	5	40	427	2020-06-02 00:50:08.750148	2020-06-02 00:50:08.750148
226	23	3	41	351	2020-06-02 00:50:08.759296	2020-06-02 00:50:08.759296
227	16	2	41	311	2020-06-02 00:50:08.768171	2020-06-02 00:50:08.768171
228	3	3	41	476	2020-06-02 00:50:08.777049	2020-06-02 00:50:08.777049
229	55	4	42	578	2020-06-02 00:50:08.786553	2020-06-02 00:50:08.786553
230	62	1	42	573	2020-06-02 00:50:08.796028	2020-06-02 00:50:08.796028
231	92	3	42	586	2020-06-02 00:50:08.80626	2020-06-02 00:50:08.80626
232	99	1	42	89	2020-06-02 00:50:08.817174	2020-06-02 00:50:08.817174
233	35	3	42	48	2020-06-02 00:50:08.826852	2020-06-02 00:50:08.826852
234	79	3	42	151	2020-06-02 00:50:08.835888	2020-06-02 00:50:08.835888
235	44	2	43	259	2020-06-02 00:50:08.845099	2020-06-02 00:50:08.845099
236	90	4	43	305	2020-06-02 00:50:08.854927	2020-06-02 00:50:08.854927
237	71	4	43	320	2020-06-02 00:50:08.8639	2020-06-02 00:50:08.8639
238	33	3	43	85	2020-06-02 00:50:08.872887	2020-06-02 00:50:08.872887
239	2	1	44	95	2020-06-02 00:50:08.884092	2020-06-02 00:50:08.884092
240	57	2	44	462	2020-06-02 00:50:08.895142	2020-06-02 00:50:08.895142
241	78	4	44	413	2020-06-02 00:50:08.904048	2020-06-02 00:50:08.904048
242	71	1	44	401	2020-06-02 00:50:08.912968	2020-06-02 00:50:08.912968
243	38	5	44	234	2020-06-02 00:50:08.922528	2020-06-02 00:50:08.922528
244	76	3	44	184	2020-06-02 00:50:08.931936	2020-06-02 00:50:08.931936
245	71	4	44	121	2020-06-02 00:50:08.941202	2020-06-02 00:50:08.941202
246	48	2	44	572	2020-06-02 00:50:08.950767	2020-06-02 00:50:08.950767
247	79	5	45	518	2020-06-02 00:50:08.960068	2020-06-02 00:50:08.960068
248	20	3	45	599	2020-06-02 00:50:08.969514	2020-06-02 00:50:08.969514
249	98	5	45	374	2020-06-02 00:50:08.978279	2020-06-02 00:50:08.978279
250	46	5	45	587	2020-06-02 00:50:08.986958	2020-06-02 00:50:08.986958
251	85	3	45	87	2020-06-02 00:50:08.995919	2020-06-02 00:50:08.995919
252	80	5	45	459	2020-06-02 00:50:09.00512	2020-06-02 00:50:09.00512
253	60	2	45	71	2020-06-02 00:50:09.013846	2020-06-02 00:50:09.013846
254	26	2	45	309	2020-06-02 00:50:09.023033	2020-06-02 00:50:09.023033
255	47	2	45	70	2020-06-02 00:50:09.031854	2020-06-02 00:50:09.031854
256	45	2	46	440	2020-06-02 00:50:09.040876	2020-06-02 00:50:09.040876
257	79	5	46	371	2020-06-02 00:50:09.049457	2020-06-02 00:50:09.049457
258	68	2	46	580	2020-06-02 00:50:09.05814	2020-06-02 00:50:09.05814
259	64	4	46	3	2020-06-02 00:50:09.067201	2020-06-02 00:50:09.067201
260	46	2	46	459	2020-06-02 00:50:09.076162	2020-06-02 00:50:09.076162
261	86	3	46	298	2020-06-02 00:50:09.087252	2020-06-02 00:50:09.087252
262	15	5	47	244	2020-06-02 00:50:09.096216	2020-06-02 00:50:09.096216
263	44	4	47	410	2020-06-02 00:50:09.10524	2020-06-02 00:50:09.10524
264	2	3	47	453	2020-06-02 00:50:09.114529	2020-06-02 00:50:09.114529
265	38	3	47	396	2020-06-02 00:50:09.124102	2020-06-02 00:50:09.124102
266	13	5	47	89	2020-06-02 00:50:09.133721	2020-06-02 00:50:09.133721
267	22	5	47	233	2020-06-02 00:50:09.142811	2020-06-02 00:50:09.142811
268	38	5	48	364	2020-06-02 00:50:09.151574	2020-06-02 00:50:09.151574
269	51	4	49	292	2020-06-02 00:50:09.160856	2020-06-02 00:50:09.160856
270	35	3	49	33	2020-06-02 00:50:09.169798	2020-06-02 00:50:09.169798
271	65	1	49	37	2020-06-02 00:50:09.178818	2020-06-02 00:50:09.178818
272	80	2	49	423	2020-06-02 00:50:09.187968	2020-06-02 00:50:09.187968
273	12	1	49	359	2020-06-02 00:50:09.197167	2020-06-02 00:50:09.197167
274	5	3	49	503	2020-06-02 00:50:09.20657	2020-06-02 00:50:09.20657
275	34	2	49	419	2020-06-02 00:50:09.215638	2020-06-02 00:50:09.215638
276	69	1	50	184	2020-06-02 00:50:09.224825	2020-06-02 00:50:09.224825
277	13	1	51	157	2020-06-02 00:50:09.23458	2020-06-02 00:50:09.23458
278	26	3	51	327	2020-06-02 00:50:09.244463	2020-06-02 00:50:09.244463
279	94	4	51	337	2020-06-02 00:50:09.253998	2020-06-02 00:50:09.253998
280	86	4	51	60	2020-06-02 00:50:09.265946	2020-06-02 00:50:09.265946
281	96	1	51	135	2020-06-02 00:50:09.276992	2020-06-02 00:50:09.276992
282	81	5	51	387	2020-06-02 00:50:09.287418	2020-06-02 00:50:09.287418
283	89	4	52	406	2020-06-02 00:50:09.29823	2020-06-02 00:50:09.29823
284	11	2	52	250	2020-06-02 00:50:09.308888	2020-06-02 00:50:09.308888
285	27	3	52	23	2020-06-02 00:50:09.319513	2020-06-02 00:50:09.319513
286	74	2	53	159	2020-06-02 00:50:09.330168	2020-06-02 00:50:09.330168
287	61	5	53	580	2020-06-02 00:50:09.340868	2020-06-02 00:50:09.340868
288	59	1	53	182	2020-06-02 00:50:09.35115	2020-06-02 00:50:09.35115
289	72	4	53	157	2020-06-02 00:50:09.362032	2020-06-02 00:50:09.362032
290	8	5	53	400	2020-06-02 00:50:09.374059	2020-06-02 00:50:09.374059
291	41	1	53	255	2020-06-02 00:50:09.38641	2020-06-02 00:50:09.38641
292	42	1	53	534	2020-06-02 00:50:09.396871	2020-06-02 00:50:09.396871
293	10	2	54	205	2020-06-02 00:50:09.407902	2020-06-02 00:50:09.407902
294	73	1	54	454	2020-06-02 00:50:09.418644	2020-06-02 00:50:09.418644
295	86	3	54	32	2020-06-02 00:50:09.429158	2020-06-02 00:50:09.429158
296	9	5	54	97	2020-06-02 00:50:09.439431	2020-06-02 00:50:09.439431
297	61	3	54	358	2020-06-02 00:50:09.450459	2020-06-02 00:50:09.450459
298	1	5	55	324	2020-06-02 00:50:09.460772	2020-06-02 00:50:09.460772
299	29	2	55	185	2020-06-02 00:50:09.47162	2020-06-02 00:50:09.47162
300	100	2	56	317	2020-06-02 00:50:09.480707	2020-06-02 00:50:09.480707
301	91	2	56	412	2020-06-02 00:50:09.48988	2020-06-02 00:50:09.48988
302	22	3	56	453	2020-06-02 00:50:09.499215	2020-06-02 00:50:09.499215
303	85	3	56	62	2020-06-02 00:50:09.508995	2020-06-02 00:50:09.508995
304	8	4	56	409	2020-06-02 00:50:09.518201	2020-06-02 00:50:09.518201
305	7	2	56	148	2020-06-02 00:50:09.527164	2020-06-02 00:50:09.527164
306	14	1	56	318	2020-06-02 00:50:09.536593	2020-06-02 00:50:09.536593
307	92	1	56	401	2020-06-02 00:50:09.545498	2020-06-02 00:50:09.545498
308	46	5	57	348	2020-06-02 00:50:09.554481	2020-06-02 00:50:09.554481
309	6	3	57	324	2020-06-02 00:50:09.563284	2020-06-02 00:50:09.563284
310	77	2	57	421	2020-06-02 00:50:09.572447	2020-06-02 00:50:09.572447
311	11	3	58	252	2020-06-02 00:50:09.581448	2020-06-02 00:50:09.581448
312	57	1	58	114	2020-06-02 00:50:09.590699	2020-06-02 00:50:09.590699
313	74	2	58	135	2020-06-02 00:50:09.599947	2020-06-02 00:50:09.599947
314	59	2	58	427	2020-06-02 00:50:09.608623	2020-06-02 00:50:09.608623
315	69	3	58	564	2020-06-02 00:50:09.61762	2020-06-02 00:50:09.61762
316	12	4	58	407	2020-06-02 00:50:09.62603	2020-06-02 00:50:09.62603
317	37	2	58	113	2020-06-02 00:50:09.635851	2020-06-02 00:50:09.635851
318	98	1	59	329	2020-06-02 00:50:09.644895	2020-06-02 00:50:09.644895
319	55	1	59	378	2020-06-02 00:50:09.653904	2020-06-02 00:50:09.653904
320	68	4	59	463	2020-06-02 00:50:09.662633	2020-06-02 00:50:09.662633
321	98	3	59	12	2020-06-02 00:50:09.671841	2020-06-02 00:50:09.671841
322	79	5	59	67	2020-06-02 00:50:09.68103	2020-06-02 00:50:09.68103
323	99	4	59	434	2020-06-02 00:50:09.6901	2020-06-02 00:50:09.6901
324	35	2	60	266	2020-06-02 00:50:09.699025	2020-06-02 00:50:09.699025
325	56	1	61	76	2020-06-02 00:50:09.707917	2020-06-02 00:50:09.707917
326	62	1	61	353	2020-06-02 00:50:09.71709	2020-06-02 00:50:09.71709
327	50	1	61	431	2020-06-02 00:50:09.726138	2020-06-02 00:50:09.726138
328	4	5	61	249	2020-06-02 00:50:09.734275	2020-06-02 00:50:09.734275
329	2	1	61	297	2020-06-02 00:50:09.743053	2020-06-02 00:50:09.743053
330	64	1	61	188	2020-06-02 00:50:09.751717	2020-06-02 00:50:09.751717
331	2	5	61	483	2020-06-02 00:50:09.760864	2020-06-02 00:50:09.760864
332	27	5	62	481	2020-06-02 00:50:09.769825	2020-06-02 00:50:09.769825
333	77	4	62	59	2020-06-02 00:50:09.779197	2020-06-02 00:50:09.779197
334	12	4	62	338	2020-06-02 00:50:09.788238	2020-06-02 00:50:09.788238
335	68	1	62	255	2020-06-02 00:50:09.797176	2020-06-02 00:50:09.797176
336	66	3	62	273	2020-06-02 00:50:09.806271	2020-06-02 00:50:09.806271
337	43	3	63	300	2020-06-02 00:50:09.814915	2020-06-02 00:50:09.814915
338	41	3	63	255	2020-06-02 00:50:09.823702	2020-06-02 00:50:09.823702
339	52	3	63	579	2020-06-02 00:50:09.833207	2020-06-02 00:50:09.833207
340	7	4	63	326	2020-06-02 00:50:09.842154	2020-06-02 00:50:09.842154
341	48	2	63	296	2020-06-02 00:50:09.851442	2020-06-02 00:50:09.851442
342	71	1	63	302	2020-06-02 00:50:09.860598	2020-06-02 00:50:09.860598
343	88	1	63	540	2020-06-02 00:50:09.869429	2020-06-02 00:50:09.869429
344	41	5	63	59	2020-06-02 00:50:09.879641	2020-06-02 00:50:09.879641
345	9	3	63	317	2020-06-02 00:50:09.88964	2020-06-02 00:50:09.88964
346	22	2	63	455	2020-06-02 00:50:09.900112	2020-06-02 00:50:09.900112
347	89	2	64	568	2020-06-02 00:50:09.909043	2020-06-02 00:50:09.909043
348	13	1	64	434	2020-06-02 00:50:09.918113	2020-06-02 00:50:09.918113
349	34	2	64	567	2020-06-02 00:50:09.927039	2020-06-02 00:50:09.927039
350	12	3	65	95	2020-06-02 00:50:09.936051	2020-06-02 00:50:09.936051
351	14	5	65	239	2020-06-02 00:50:09.944897	2020-06-02 00:50:09.944897
352	100	3	66	63	2020-06-02 00:50:09.95405	2020-06-02 00:50:09.95405
353	92	3	66	563	2020-06-02 00:50:09.96295	2020-06-02 00:50:09.96295
354	75	2	66	2	2020-06-02 00:50:09.971807	2020-06-02 00:50:09.971807
355	74	4	67	318	2020-06-02 00:50:09.980406	2020-06-02 00:50:09.980406
356	30	3	67	143	2020-06-02 00:50:09.98941	2020-06-02 00:50:09.98941
357	90	3	67	57	2020-06-02 00:50:09.998034	2020-06-02 00:50:09.998034
358	80	1	67	262	2020-06-02 00:50:10.007251	2020-06-02 00:50:10.007251
359	79	3	67	178	2020-06-02 00:50:10.016258	2020-06-02 00:50:10.016258
360	2	1	67	587	2020-06-02 00:50:10.025123	2020-06-02 00:50:10.025123
361	86	4	67	77	2020-06-02 00:50:10.034176	2020-06-02 00:50:10.034176
362	9	4	68	13	2020-06-02 00:50:10.045292	2020-06-02 00:50:10.045292
363	18	5	68	482	2020-06-02 00:50:10.054203	2020-06-02 00:50:10.054203
364	46	2	68	214	2020-06-02 00:50:10.06296	2020-06-02 00:50:10.06296
365	2	1	68	122	2020-06-02 00:50:10.071814	2020-06-02 00:50:10.071814
366	57	5	68	51	2020-06-02 00:50:10.08146	2020-06-02 00:50:10.08146
367	81	5	68	503	2020-06-02 00:50:10.090164	2020-06-02 00:50:10.090164
368	45	1	68	71	2020-06-02 00:50:10.098975	2020-06-02 00:50:10.098975
369	3	1	69	158	2020-06-02 00:50:10.107504	2020-06-02 00:50:10.107504
370	19	4	69	29	2020-06-02 00:50:10.11648	2020-06-02 00:50:10.11648
371	32	4	69	506	2020-06-02 00:50:10.125557	2020-06-02 00:50:10.125557
372	12	5	69	110	2020-06-02 00:50:10.134584	2020-06-02 00:50:10.134584
373	50	5	69	89	2020-06-02 00:50:10.14404	2020-06-02 00:50:10.14404
374	11	1	69	45	2020-06-02 00:50:10.153247	2020-06-02 00:50:10.153247
375	85	5	69	395	2020-06-02 00:50:10.161968	2020-06-02 00:50:10.161968
376	66	2	70	86	2020-06-02 00:50:10.17093	2020-06-02 00:50:10.17093
377	81	3	71	270	2020-06-02 00:50:10.179868	2020-06-02 00:50:10.179868
378	2	2	71	152	2020-06-02 00:50:10.188724	2020-06-02 00:50:10.188724
379	73	2	71	232	2020-06-02 00:50:10.197433	2020-06-02 00:50:10.197433
380	55	4	72	117	2020-06-02 00:50:10.206149	2020-06-02 00:50:10.206149
381	90	3	72	329	2020-06-02 00:50:10.214813	2020-06-02 00:50:10.214813
382	43	3	73	220	2020-06-02 00:50:10.223475	2020-06-02 00:50:10.223475
383	58	1	74	402	2020-06-02 00:50:10.232382	2020-06-02 00:50:10.232382
384	37	1	74	335	2020-06-02 00:50:10.241439	2020-06-02 00:50:10.241439
385	95	4	74	338	2020-06-02 00:50:10.250593	2020-06-02 00:50:10.250593
386	62	1	74	165	2020-06-02 00:50:10.259439	2020-06-02 00:50:10.259439
387	75	2	74	192	2020-06-02 00:50:10.268821	2020-06-02 00:50:10.268821
388	13	2	74	406	2020-06-02 00:50:10.281574	2020-06-02 00:50:10.281574
389	67	5	74	117	2020-06-02 00:50:10.29126	2020-06-02 00:50:10.29126
390	93	3	74	470	2020-06-02 00:50:10.300448	2020-06-02 00:50:10.300448
391	23	4	75	322	2020-06-02 00:50:10.310241	2020-06-02 00:50:10.310241
392	96	5	75	396	2020-06-02 00:50:10.31915	2020-06-02 00:50:10.31915
393	97	5	75	427	2020-06-02 00:50:10.32782	2020-06-02 00:50:10.32782
394	59	2	75	451	2020-06-02 00:50:10.337439	2020-06-02 00:50:10.337439
395	27	4	75	159	2020-06-02 00:50:10.346684	2020-06-02 00:50:10.346684
396	10	4	75	267	2020-06-02 00:50:10.356434	2020-06-02 00:50:10.356434
397	74	4	75	456	2020-06-02 00:50:10.365555	2020-06-02 00:50:10.365555
398	5	4	75	249	2020-06-02 00:50:10.374988	2020-06-02 00:50:10.374988
399	64	4	76	318	2020-06-02 00:50:10.385951	2020-06-02 00:50:10.385951
400	1	3	76	565	2020-06-02 00:50:10.396138	2020-06-02 00:50:10.396138
401	45	4	76	527	2020-06-02 00:50:10.405556	2020-06-02 00:50:10.405556
402	7	3	76	585	2020-06-02 00:50:10.414502	2020-06-02 00:50:10.414502
403	18	2	76	108	2020-06-02 00:50:10.423698	2020-06-02 00:50:10.423698
404	38	3	76	10	2020-06-02 00:50:10.432631	2020-06-02 00:50:10.432631
405	26	5	76	312	2020-06-02 00:50:10.441641	2020-06-02 00:50:10.441641
406	60	5	76	455	2020-06-02 00:50:10.450583	2020-06-02 00:50:10.450583
407	43	1	76	422	2020-06-02 00:50:10.461201	2020-06-02 00:50:10.461201
408	5	1	76	567	2020-06-02 00:50:10.471551	2020-06-02 00:50:10.471551
409	92	3	77	324	2020-06-02 00:50:10.481157	2020-06-02 00:50:10.481157
410	66	3	77	404	2020-06-02 00:50:10.492178	2020-06-02 00:50:10.492178
411	35	1	78	385	2020-06-02 00:50:10.502139	2020-06-02 00:50:10.502139
412	16	2	78	525	2020-06-02 00:50:10.511393	2020-06-02 00:50:10.511393
413	40	5	78	480	2020-06-02 00:50:10.520294	2020-06-02 00:50:10.520294
414	83	1	78	440	2020-06-02 00:50:10.529206	2020-06-02 00:50:10.529206
415	91	2	78	192	2020-06-02 00:50:10.538188	2020-06-02 00:50:10.538188
416	18	4	78	217	2020-06-02 00:50:10.547421	2020-06-02 00:50:10.547421
417	13	5	78	36	2020-06-02 00:50:10.556723	2020-06-02 00:50:10.556723
418	94	1	78	279	2020-06-02 00:50:10.56618	2020-06-02 00:50:10.56618
419	60	2	78	582	2020-06-02 00:50:10.574917	2020-06-02 00:50:10.574917
420	70	4	79	58	2020-06-02 00:50:10.583956	2020-06-02 00:50:10.583956
421	67	2	79	165	2020-06-02 00:50:10.595027	2020-06-02 00:50:10.595027
422	4	4	79	404	2020-06-02 00:50:10.603904	2020-06-02 00:50:10.603904
423	91	2	79	580	2020-06-02 00:50:10.613097	2020-06-02 00:50:10.613097
424	57	5	79	521	2020-06-02 00:50:10.622196	2020-06-02 00:50:10.622196
425	5	4	79	55	2020-06-02 00:50:10.630945	2020-06-02 00:50:10.630945
426	40	1	79	529	2020-06-02 00:50:10.640425	2020-06-02 00:50:10.640425
427	42	2	79	402	2020-06-02 00:50:10.648912	2020-06-02 00:50:10.648912
428	56	5	79	319	2020-06-02 00:50:10.657522	2020-06-02 00:50:10.657522
429	62	1	80	169	2020-06-02 00:50:10.66645	2020-06-02 00:50:10.66645
430	79	3	80	571	2020-06-02 00:50:10.67591	2020-06-02 00:50:10.67591
431	7	1	81	384	2020-06-02 00:50:10.684273	2020-06-02 00:50:10.684273
432	45	2	81	134	2020-06-02 00:50:10.694608	2020-06-02 00:50:10.694608
433	73	1	81	448	2020-06-02 00:50:10.703994	2020-06-02 00:50:10.703994
434	53	1	81	514	2020-06-02 00:50:10.712561	2020-06-02 00:50:10.712561
435	11	3	81	492	2020-06-02 00:50:10.721243	2020-06-02 00:50:10.721243
436	41	1	81	398	2020-06-02 00:50:10.729809	2020-06-02 00:50:10.729809
437	96	1	82	542	2020-06-02 00:50:10.738459	2020-06-02 00:50:10.738459
438	70	1	82	101	2020-06-02 00:50:10.747572	2020-06-02 00:50:10.747572
439	99	5	82	129	2020-06-02 00:50:10.756453	2020-06-02 00:50:10.756453
440	13	2	82	174	2020-06-02 00:50:10.765764	2020-06-02 00:50:10.765764
441	26	2	82	132	2020-06-02 00:50:10.774707	2020-06-02 00:50:10.774707
442	13	2	83	113	2020-06-02 00:50:10.783567	2020-06-02 00:50:10.783567
443	74	5	83	71	2020-06-02 00:50:10.792999	2020-06-02 00:50:10.792999
444	95	3	84	576	2020-06-02 00:50:10.801999	2020-06-02 00:50:10.801999
445	84	2	84	98	2020-06-02 00:50:10.811584	2020-06-02 00:50:10.811584
446	63	4	84	164	2020-06-02 00:50:10.820166	2020-06-02 00:50:10.820166
447	42	5	84	382	2020-06-02 00:50:10.828774	2020-06-02 00:50:10.828774
448	30	1	85	435	2020-06-02 00:50:10.837943	2020-06-02 00:50:10.837943
449	22	3	85	398	2020-06-02 00:50:10.847357	2020-06-02 00:50:10.847357
450	63	1	85	235	2020-06-02 00:50:10.856755	2020-06-02 00:50:10.856755
451	53	3	85	336	2020-06-02 00:50:10.866312	2020-06-02 00:50:10.866312
452	73	4	85	60	2020-06-02 00:50:10.87555	2020-06-02 00:50:10.87555
453	17	3	85	52	2020-06-02 00:50:10.885841	2020-06-02 00:50:10.885841
454	69	2	85	555	2020-06-02 00:50:10.896947	2020-06-02 00:50:10.896947
455	28	2	85	25	2020-06-02 00:50:10.906108	2020-06-02 00:50:10.906108
456	28	4	85	63	2020-06-02 00:50:10.914692	2020-06-02 00:50:10.914692
457	99	3	85	594	2020-06-02 00:50:10.923528	2020-06-02 00:50:10.923528
458	47	2	86	396	2020-06-02 00:50:10.932102	2020-06-02 00:50:10.932102
459	55	1	86	584	2020-06-02 00:50:10.940958	2020-06-02 00:50:10.940958
460	84	3	86	229	2020-06-02 00:50:10.950183	2020-06-02 00:50:10.950183
461	32	2	86	204	2020-06-02 00:50:10.9591	2020-06-02 00:50:10.9591
462	98	1	86	141	2020-06-02 00:50:10.968426	2020-06-02 00:50:10.968426
463	19	5	87	217	2020-06-02 00:50:10.977455	2020-06-02 00:50:10.977455
464	8	3	87	279	2020-06-02 00:50:10.988866	2020-06-02 00:50:10.988866
465	86	4	87	459	2020-06-02 00:50:10.99784	2020-06-02 00:50:10.99784
466	70	1	87	183	2020-06-02 00:50:11.00655	2020-06-02 00:50:11.00655
467	90	5	88	79	2020-06-02 00:50:11.016182	2020-06-02 00:50:11.016182
468	95	2	88	321	2020-06-02 00:50:11.025437	2020-06-02 00:50:11.025437
469	80	4	88	175	2020-06-02 00:50:11.034435	2020-06-02 00:50:11.034435
470	1	1	88	413	2020-06-02 00:50:11.04358	2020-06-02 00:50:11.04358
471	3	1	88	150	2020-06-02 00:50:11.052514	2020-06-02 00:50:11.052514
472	84	3	88	125	2020-06-02 00:50:11.061566	2020-06-02 00:50:11.061566
473	92	5	89	509	2020-06-02 00:50:11.070405	2020-06-02 00:50:11.070405
474	21	2	90	120	2020-06-02 00:50:11.079671	2020-06-02 00:50:11.079671
475	25	2	90	317	2020-06-02 00:50:11.088821	2020-06-02 00:50:11.088821
476	81	4	90	157	2020-06-02 00:50:11.097832	2020-06-02 00:50:11.097832
477	37	5	90	565	2020-06-02 00:50:11.108828	2020-06-02 00:50:11.108828
478	2	4	90	340	2020-06-02 00:50:11.117963	2020-06-02 00:50:11.117963
479	30	2	90	251	2020-06-02 00:50:11.12684	2020-06-02 00:50:11.12684
480	16	2	90	420	2020-06-02 00:50:11.13573	2020-06-02 00:50:11.13573
481	22	4	90	18	2020-06-02 00:50:11.145561	2020-06-02 00:50:11.145561
482	37	1	91	549	2020-06-02 00:50:11.154522	2020-06-02 00:50:11.154522
483	34	2	91	587	2020-06-02 00:50:11.163545	2020-06-02 00:50:11.163545
484	98	3	92	407	2020-06-02 00:50:11.17222	2020-06-02 00:50:11.17222
485	92	1	92	125	2020-06-02 00:50:11.181467	2020-06-02 00:50:11.181467
486	78	5	92	251	2020-06-02 00:50:11.189989	2020-06-02 00:50:11.189989
487	25	2	93	303	2020-06-02 00:50:11.199213	2020-06-02 00:50:11.199213
488	2	5	93	469	2020-06-02 00:50:11.208251	2020-06-02 00:50:11.208251
489	21	5	93	373	2020-06-02 00:50:11.217083	2020-06-02 00:50:11.217083
490	88	1	93	197	2020-06-02 00:50:11.226168	2020-06-02 00:50:11.226168
491	36	1	93	368	2020-06-02 00:50:11.235263	2020-06-02 00:50:11.235263
492	39	4	93	488	2020-06-02 00:50:11.244071	2020-06-02 00:50:11.244071
493	59	1	93	239	2020-06-02 00:50:11.254256	2020-06-02 00:50:11.254256
494	60	3	93	40	2020-06-02 00:50:11.263479	2020-06-02 00:50:11.263479
495	79	3	94	308	2020-06-02 00:50:11.273203	2020-06-02 00:50:11.273203
496	6	2	94	285	2020-06-02 00:50:11.282198	2020-06-02 00:50:11.282198
497	12	5	94	9	2020-06-02 00:50:11.290913	2020-06-02 00:50:11.290913
498	97	4	94	551	2020-06-02 00:50:11.30002	2020-06-02 00:50:11.30002
499	11	3	94	105	2020-06-02 00:50:11.309412	2020-06-02 00:50:11.309412
500	6	2	94	21	2020-06-02 00:50:11.318428	2020-06-02 00:50:11.318428
501	67	1	95	36	2020-06-02 00:50:11.327456	2020-06-02 00:50:11.327456
502	34	1	95	20	2020-06-02 00:50:11.33669	2020-06-02 00:50:11.33669
503	31	1	95	161	2020-06-02 00:50:11.345058	2020-06-02 00:50:11.345058
504	64	3	95	348	2020-06-02 00:50:11.353899	2020-06-02 00:50:11.353899
505	92	3	95	341	2020-06-02 00:50:11.362432	2020-06-02 00:50:11.362432
506	49	3	95	39	2020-06-02 00:50:11.372607	2020-06-02 00:50:11.372607
507	15	3	95	518	2020-06-02 00:50:11.382666	2020-06-02 00:50:11.382666
508	37	3	96	315	2020-06-02 00:50:11.392651	2020-06-02 00:50:11.392651
509	91	5	96	328	2020-06-02 00:50:11.401527	2020-06-02 00:50:11.401527
510	77	4	96	405	2020-06-02 00:50:11.410476	2020-06-02 00:50:11.410476
511	88	1	97	526	2020-06-02 00:50:11.419818	2020-06-02 00:50:11.419818
512	89	2	97	500	2020-06-02 00:50:11.4288	2020-06-02 00:50:11.4288
513	80	4	97	241	2020-06-02 00:50:11.438038	2020-06-02 00:50:11.438038
514	49	3	97	544	2020-06-02 00:50:11.447262	2020-06-02 00:50:11.447262
515	39	3	97	64	2020-06-02 00:50:11.456126	2020-06-02 00:50:11.456126
516	3	3	97	523	2020-06-02 00:50:11.465474	2020-06-02 00:50:11.465474
517	74	4	97	322	2020-06-02 00:50:11.47445	2020-06-02 00:50:11.47445
518	28	4	97	79	2020-06-02 00:50:11.483412	2020-06-02 00:50:11.483412
519	31	4	97	547	2020-06-02 00:50:11.49243	2020-06-02 00:50:11.49243
520	58	2	97	185	2020-06-02 00:50:11.501432	2020-06-02 00:50:11.501432
521	3	1	98	160	2020-06-02 00:50:11.510533	2020-06-02 00:50:11.510533
522	47	3	98	161	2020-06-02 00:50:11.519553	2020-06-02 00:50:11.519553
523	87	1	98	49	2020-06-02 00:50:11.52839	2020-06-02 00:50:11.52839
524	59	2	98	362	2020-06-02 00:50:11.537576	2020-06-02 00:50:11.537576
525	16	2	98	75	2020-06-02 00:50:11.546684	2020-06-02 00:50:11.546684
526	96	4	99	365	2020-06-02 00:50:11.555223	2020-06-02 00:50:11.555223
527	38	4	100	246	2020-06-02 00:50:11.564172	2020-06-02 00:50:11.564172
528	75	4	100	397	2020-06-02 00:50:11.575164	2020-06-02 00:50:11.575164
529	57	5	100	100	2020-06-02 00:50:11.584521	2020-06-02 00:50:11.584521
530	25	2	100	125	2020-06-02 00:50:11.593278	2020-06-02 00:50:11.593278
531	29	2	100	447	2020-06-02 00:50:11.601866	2020-06-02 00:50:11.601866
532	38	4	100	351	2020-06-02 00:50:11.611056	2020-06-02 00:50:11.611056
533	28	3	100	386	2020-06-02 00:50:11.619868	2020-06-02 00:50:11.619868
534	76	5	100	47	2020-06-02 00:50:11.628444	2020-06-02 00:50:11.628444
535	1	4	100	308	2020-06-02 00:50:11.638781	2020-06-02 00:50:11.638781
536	24	2	101	17	2020-06-02 00:50:11.648691	2020-06-02 00:50:11.648691
537	26	1	101	129	2020-06-02 00:50:11.657968	2020-06-02 00:50:11.657968
538	24	1	101	112	2020-06-02 00:50:11.667043	2020-06-02 00:50:11.667043
539	70	1	101	130	2020-06-02 00:50:11.67715	2020-06-02 00:50:11.67715
540	64	2	101	396	2020-06-02 00:50:11.686162	2020-06-02 00:50:11.686162
541	15	1	101	134	2020-06-02 00:50:11.695133	2020-06-02 00:50:11.695133
542	80	2	101	493	2020-06-02 00:50:11.70525	2020-06-02 00:50:11.70525
543	81	1	101	293	2020-06-02 00:50:11.714552	2020-06-02 00:50:11.714552
544	89	2	101	478	2020-06-02 00:50:11.723421	2020-06-02 00:50:11.723421
545	56	3	102	147	2020-06-02 00:50:11.732057	2020-06-02 00:50:11.732057
546	81	4	102	123	2020-06-02 00:50:11.740945	2020-06-02 00:50:11.740945
547	89	4	102	553	2020-06-02 00:50:11.749913	2020-06-02 00:50:11.749913
548	100	2	102	59	2020-06-02 00:50:11.759535	2020-06-02 00:50:11.759535
549	100	5	103	374	2020-06-02 00:50:11.768906	2020-06-02 00:50:11.768906
550	49	2	103	107	2020-06-02 00:50:11.777594	2020-06-02 00:50:11.777594
551	5	2	103	240	2020-06-02 00:50:11.786577	2020-06-02 00:50:11.786577
552	89	5	104	181	2020-06-02 00:50:11.795079	2020-06-02 00:50:11.795079
553	18	1	104	370	2020-06-02 00:50:11.804067	2020-06-02 00:50:11.804067
554	64	2	104	92	2020-06-02 00:50:11.812886	2020-06-02 00:50:11.812886
555	31	1	104	337	2020-06-02 00:50:11.821568	2020-06-02 00:50:11.821568
556	50	1	104	427	2020-06-02 00:50:11.83045	2020-06-02 00:50:11.83045
557	96	2	104	236	2020-06-02 00:50:11.83953	2020-06-02 00:50:11.83953
558	63	5	104	599	2020-06-02 00:50:11.850509	2020-06-02 00:50:11.850509
559	53	5	104	546	2020-06-02 00:50:11.86059	2020-06-02 00:50:11.86059
560	71	4	104	187	2020-06-02 00:50:11.869537	2020-06-02 00:50:11.869537
561	77	2	104	235	2020-06-02 00:50:11.87971	2020-06-02 00:50:11.87971
562	96	3	105	280	2020-06-02 00:50:11.890048	2020-06-02 00:50:11.890048
563	66	4	105	326	2020-06-02 00:50:11.89859	2020-06-02 00:50:11.89859
564	37	4	105	132	2020-06-02 00:50:11.908438	2020-06-02 00:50:11.908438
565	63	4	105	444	2020-06-02 00:50:11.917247	2020-06-02 00:50:11.917247
566	58	4	105	74	2020-06-02 00:50:11.926307	2020-06-02 00:50:11.926307
567	44	3	105	560	2020-06-02 00:50:11.934831	2020-06-02 00:50:11.934831
568	61	4	105	536	2020-06-02 00:50:11.944713	2020-06-02 00:50:11.944713
569	93	1	105	196	2020-06-02 00:50:11.954249	2020-06-02 00:50:11.954249
570	92	2	106	271	2020-06-02 00:50:11.965463	2020-06-02 00:50:11.965463
571	74	2	106	324	2020-06-02 00:50:11.976567	2020-06-02 00:50:11.976567
572	10	5	106	426	2020-06-02 00:50:11.987075	2020-06-02 00:50:11.987075
573	94	2	107	535	2020-06-02 00:50:11.997418	2020-06-02 00:50:11.997418
574	79	3	107	505	2020-06-02 00:50:12.006654	2020-06-02 00:50:12.006654
575	92	1	107	62	2020-06-02 00:50:12.01548	2020-06-02 00:50:12.01548
576	18	5	108	314	2020-06-02 00:50:12.024259	2020-06-02 00:50:12.024259
577	82	5	108	437	2020-06-02 00:50:12.035429	2020-06-02 00:50:12.035429
578	2	5	108	432	2020-06-02 00:50:12.045039	2020-06-02 00:50:12.045039
579	68	5	108	433	2020-06-02 00:50:12.054399	2020-06-02 00:50:12.054399
580	75	4	108	393	2020-06-02 00:50:12.06344	2020-06-02 00:50:12.06344
581	60	5	108	62	2020-06-02 00:50:12.07162	2020-06-02 00:50:12.07162
582	16	3	108	194	2020-06-02 00:50:12.079774	2020-06-02 00:50:12.079774
583	86	2	108	95	2020-06-02 00:50:12.088166	2020-06-02 00:50:12.088166
584	11	1	108	186	2020-06-02 00:50:12.09623	2020-06-02 00:50:12.09623
585	45	3	109	458	2020-06-02 00:50:12.104564	2020-06-02 00:50:12.104564
586	45	2	109	552	2020-06-02 00:50:12.113085	2020-06-02 00:50:12.113085
587	14	5	109	309	2020-06-02 00:50:12.122248	2020-06-02 00:50:12.122248
588	97	3	109	598	2020-06-02 00:50:12.130593	2020-06-02 00:50:12.130593
589	21	2	110	53	2020-06-02 00:50:12.139931	2020-06-02 00:50:12.139931
590	79	2	111	77	2020-06-02 00:50:12.148732	2020-06-02 00:50:12.148732
591	27	5	112	593	2020-06-02 00:50:12.157077	2020-06-02 00:50:12.157077
592	74	2	112	371	2020-06-02 00:50:12.165121	2020-06-02 00:50:12.165121
593	31	5	112	505	2020-06-02 00:50:12.173231	2020-06-02 00:50:12.173231
594	32	1	112	572	2020-06-02 00:50:12.182179	2020-06-02 00:50:12.182179
595	56	1	112	270	2020-06-02 00:50:12.192041	2020-06-02 00:50:12.192041
596	81	2	112	441	2020-06-02 00:50:12.201706	2020-06-02 00:50:12.201706
597	68	2	112	586	2020-06-02 00:50:12.210222	2020-06-02 00:50:12.210222
598	100	1	112	313	2020-06-02 00:50:12.218555	2020-06-02 00:50:12.218555
599	31	1	113	216	2020-06-02 00:50:12.226525	2020-06-02 00:50:12.226525
600	92	4	113	136	2020-06-02 00:50:12.234607	2020-06-02 00:50:12.234607
601	43	3	113	484	2020-06-02 00:50:12.243039	2020-06-02 00:50:12.243039
602	46	3	113	306	2020-06-02 00:50:12.25156	2020-06-02 00:50:12.25156
603	44	5	113	561	2020-06-02 00:50:12.259632	2020-06-02 00:50:12.259632
604	6	2	113	465	2020-06-02 00:50:12.268448	2020-06-02 00:50:12.268448
605	83	2	113	205	2020-06-02 00:50:12.276905	2020-06-02 00:50:12.276905
606	52	1	113	176	2020-06-02 00:50:12.284842	2020-06-02 00:50:12.284842
607	59	2	114	576	2020-06-02 00:50:12.293158	2020-06-02 00:50:12.293158
608	64	1	114	60	2020-06-02 00:50:12.301131	2020-06-02 00:50:12.301131
609	69	1	114	597	2020-06-02 00:50:12.309178	2020-06-02 00:50:12.309178
610	37	4	114	556	2020-06-02 00:50:12.317715	2020-06-02 00:50:12.317715
611	8	1	114	360	2020-06-02 00:50:12.325783	2020-06-02 00:50:12.325783
612	40	4	114	364	2020-06-02 00:50:12.333827	2020-06-02 00:50:12.333827
613	62	3	114	191	2020-06-02 00:50:12.342438	2020-06-02 00:50:12.342438
614	74	5	114	72	2020-06-02 00:50:12.350988	2020-06-02 00:50:12.350988
615	22	5	115	360	2020-06-02 00:50:12.359853	2020-06-02 00:50:12.359853
616	31	1	115	196	2020-06-02 00:50:12.368589	2020-06-02 00:50:12.368589
617	83	1	115	73	2020-06-02 00:50:12.377113	2020-06-02 00:50:12.377113
618	23	4	115	35	2020-06-02 00:50:12.386266	2020-06-02 00:50:12.386266
619	49	1	115	125	2020-06-02 00:50:12.395736	2020-06-02 00:50:12.395736
620	51	2	115	540	2020-06-02 00:50:12.404846	2020-06-02 00:50:12.404846
621	60	4	115	406	2020-06-02 00:50:12.413771	2020-06-02 00:50:12.413771
622	99	2	115	388	2020-06-02 00:50:12.425725	2020-06-02 00:50:12.425725
623	59	1	115	486	2020-06-02 00:50:12.435032	2020-06-02 00:50:12.435032
624	48	2	116	17	2020-06-02 00:50:12.444729	2020-06-02 00:50:12.444729
625	2	3	116	468	2020-06-02 00:50:12.454907	2020-06-02 00:50:12.454907
626	93	1	116	398	2020-06-02 00:50:12.463961	2020-06-02 00:50:12.463961
627	92	3	116	418	2020-06-02 00:50:12.472775	2020-06-02 00:50:12.472775
628	25	1	116	184	2020-06-02 00:50:12.481752	2020-06-02 00:50:12.481752
629	82	1	116	352	2020-06-02 00:50:12.490428	2020-06-02 00:50:12.490428
630	60	5	117	204	2020-06-02 00:50:12.49905	2020-06-02 00:50:12.49905
631	19	5	117	560	2020-06-02 00:50:12.50783	2020-06-02 00:50:12.50783
632	41	4	117	413	2020-06-02 00:50:12.517179	2020-06-02 00:50:12.517179
633	84	5	117	33	2020-06-02 00:50:12.526548	2020-06-02 00:50:12.526548
634	4	4	118	29	2020-06-02 00:50:12.535983	2020-06-02 00:50:12.535983
635	68	5	118	327	2020-06-02 00:50:12.545056	2020-06-02 00:50:12.545056
636	40	4	118	116	2020-06-02 00:50:12.554273	2020-06-02 00:50:12.554273
637	9	4	118	208	2020-06-02 00:50:12.563477	2020-06-02 00:50:12.563477
638	5	1	119	311	2020-06-02 00:50:12.572567	2020-06-02 00:50:12.572567
639	18	5	119	329	2020-06-02 00:50:12.582285	2020-06-02 00:50:12.582285
640	89	4	119	75	2020-06-02 00:50:12.591407	2020-06-02 00:50:12.591407
641	89	5	119	469	2020-06-02 00:50:12.599542	2020-06-02 00:50:12.599542
642	45	2	119	561	2020-06-02 00:50:12.607727	2020-06-02 00:50:12.607727
643	5	5	119	139	2020-06-02 00:50:12.616566	2020-06-02 00:50:12.616566
644	78	4	120	211	2020-06-02 00:50:12.626401	2020-06-02 00:50:12.626401
645	87	3	121	546	2020-06-02 00:50:12.635572	2020-06-02 00:50:12.635572
646	27	4	121	357	2020-06-02 00:50:12.644607	2020-06-02 00:50:12.644607
647	35	2	121	169	2020-06-02 00:50:12.652926	2020-06-02 00:50:12.652926
648	75	1	121	232	2020-06-02 00:50:12.661882	2020-06-02 00:50:12.661882
649	21	5	121	145	2020-06-02 00:50:12.670468	2020-06-02 00:50:12.670468
650	70	4	121	478	2020-06-02 00:50:12.6796	2020-06-02 00:50:12.6796
651	75	2	121	382	2020-06-02 00:50:12.689635	2020-06-02 00:50:12.689635
652	6	2	122	356	2020-06-02 00:50:12.699456	2020-06-02 00:50:12.699456
653	40	2	122	317	2020-06-02 00:50:12.707931	2020-06-02 00:50:12.707931
654	92	1	122	216	2020-06-02 00:50:12.716298	2020-06-02 00:50:12.716298
655	48	1	122	22	2020-06-02 00:50:12.724419	2020-06-02 00:50:12.724419
656	50	1	122	238	2020-06-02 00:50:12.73324	2020-06-02 00:50:12.73324
657	31	5	122	231	2020-06-02 00:50:12.74208	2020-06-02 00:50:12.74208
658	84	3	123	450	2020-06-02 00:50:12.750951	2020-06-02 00:50:12.750951
659	17	5	123	170	2020-06-02 00:50:12.759658	2020-06-02 00:50:12.759658
660	74	1	123	279	2020-06-02 00:50:12.769136	2020-06-02 00:50:12.769136
661	15	5	123	320	2020-06-02 00:50:12.777572	2020-06-02 00:50:12.777572
662	40	4	123	99	2020-06-02 00:50:12.786634	2020-06-02 00:50:12.786634
663	25	2	124	268	2020-06-02 00:50:12.797717	2020-06-02 00:50:12.797717
664	58	3	124	329	2020-06-02 00:50:12.809942	2020-06-02 00:50:12.809942
665	94	2	124	171	2020-06-02 00:50:12.820632	2020-06-02 00:50:12.820632
666	32	2	124	368	2020-06-02 00:50:12.831155	2020-06-02 00:50:12.831155
667	46	5	124	200	2020-06-02 00:50:12.840287	2020-06-02 00:50:12.840287
668	97	4	124	500	2020-06-02 00:50:12.849601	2020-06-02 00:50:12.849601
669	93	1	124	156	2020-06-02 00:50:12.858656	2020-06-02 00:50:12.858656
670	37	4	125	316	2020-06-02 00:50:12.867596	2020-06-02 00:50:12.867596
671	46	1	125	465	2020-06-02 00:50:12.87679	2020-06-02 00:50:12.87679
672	49	4	125	269	2020-06-02 00:50:12.88626	2020-06-02 00:50:12.88626
673	33	1	126	364	2020-06-02 00:50:12.895287	2020-06-02 00:50:12.895287
674	24	1	126	496	2020-06-02 00:50:12.90354	2020-06-02 00:50:12.90354
675	61	2	126	154	2020-06-02 00:50:12.911795	2020-06-02 00:50:12.911795
676	56	5	126	255	2020-06-02 00:50:12.921012	2020-06-02 00:50:12.921012
677	59	2	126	237	2020-06-02 00:50:12.929862	2020-06-02 00:50:12.929862
678	4	3	126	579	2020-06-02 00:50:12.93902	2020-06-02 00:50:12.93902
679	96	5	126	311	2020-06-02 00:50:12.948116	2020-06-02 00:50:12.948116
680	95	1	127	457	2020-06-02 00:50:12.956738	2020-06-02 00:50:12.956738
681	84	5	127	24	2020-06-02 00:50:12.966118	2020-06-02 00:50:12.966118
682	39	3	127	465	2020-06-02 00:50:12.975198	2020-06-02 00:50:12.975198
683	42	2	127	106	2020-06-02 00:50:12.983853	2020-06-02 00:50:12.983853
684	64	2	127	505	2020-06-02 00:50:12.992413	2020-06-02 00:50:12.992413
685	80	2	128	546	2020-06-02 00:50:13.000513	2020-06-02 00:50:13.000513
686	84	2	128	184	2020-06-02 00:50:13.008907	2020-06-02 00:50:13.008907
687	18	4	128	80	2020-06-02 00:50:13.01815	2020-06-02 00:50:13.01815
688	12	4	128	148	2020-06-02 00:50:13.026872	2020-06-02 00:50:13.026872
689	28	5	128	446	2020-06-02 00:50:13.034938	2020-06-02 00:50:13.034938
690	25	3	128	117	2020-06-02 00:50:13.043976	2020-06-02 00:50:13.043976
691	42	5	129	469	2020-06-02 00:50:13.053286	2020-06-02 00:50:13.053286
692	92	4	129	251	2020-06-02 00:50:13.061998	2020-06-02 00:50:13.061998
693	70	4	129	33	2020-06-02 00:50:13.071027	2020-06-02 00:50:13.071027
694	58	3	129	202	2020-06-02 00:50:13.080216	2020-06-02 00:50:13.080216
695	12	1	129	432	2020-06-02 00:50:13.089755	2020-06-02 00:50:13.089755
696	56	4	129	511	2020-06-02 00:50:13.098968	2020-06-02 00:50:13.098968
697	96	4	130	299	2020-06-02 00:50:13.107597	2020-06-02 00:50:13.107597
698	85	5	130	326	2020-06-02 00:50:13.117008	2020-06-02 00:50:13.117008
699	2	1	130	353	2020-06-02 00:50:13.125506	2020-06-02 00:50:13.125506
700	18	4	131	425	2020-06-02 00:50:13.134582	2020-06-02 00:50:13.134582
701	39	1	131	312	2020-06-02 00:50:13.14338	2020-06-02 00:50:13.14338
702	80	2	131	514	2020-06-02 00:50:13.153101	2020-06-02 00:50:13.153101
703	6	2	131	562	2020-06-02 00:50:13.164037	2020-06-02 00:50:13.164037
704	48	3	131	153	2020-06-02 00:50:13.173195	2020-06-02 00:50:13.173195
705	52	3	131	415	2020-06-02 00:50:13.182193	2020-06-02 00:50:13.182193
706	99	3	131	253	2020-06-02 00:50:13.191214	2020-06-02 00:50:13.191214
707	29	3	131	5	2020-06-02 00:50:13.200039	2020-06-02 00:50:13.200039
708	23	1	131	46	2020-06-02 00:50:13.209485	2020-06-02 00:50:13.209485
709	37	5	132	431	2020-06-02 00:50:13.218865	2020-06-02 00:50:13.218865
710	3	2	132	68	2020-06-02 00:50:13.228162	2020-06-02 00:50:13.228162
711	60	4	133	119	2020-06-02 00:50:13.237823	2020-06-02 00:50:13.237823
712	93	1	134	501	2020-06-02 00:50:13.247073	2020-06-02 00:50:13.247073
713	12	1	134	549	2020-06-02 00:50:13.256542	2020-06-02 00:50:13.256542
714	13	4	134	395	2020-06-02 00:50:13.265865	2020-06-02 00:50:13.265865
715	83	5	135	75	2020-06-02 00:50:13.275209	2020-06-02 00:50:13.275209
716	68	3	135	322	2020-06-02 00:50:13.283965	2020-06-02 00:50:13.283965
717	43	4	135	174	2020-06-02 00:50:13.292357	2020-06-02 00:50:13.292357
718	69	2	135	62	2020-06-02 00:50:13.300685	2020-06-02 00:50:13.300685
719	21	2	135	285	2020-06-02 00:50:13.310156	2020-06-02 00:50:13.310156
720	86	1	135	540	2020-06-02 00:50:13.319134	2020-06-02 00:50:13.319134
721	2	4	135	326	2020-06-02 00:50:13.328882	2020-06-02 00:50:13.328882
722	92	3	135	5	2020-06-02 00:50:13.339501	2020-06-02 00:50:13.339501
723	51	3	135	117	2020-06-02 00:50:13.352983	2020-06-02 00:50:13.352983
724	35	4	136	95	2020-06-02 00:50:13.364394	2020-06-02 00:50:13.364394
725	22	2	136	110	2020-06-02 00:50:13.376051	2020-06-02 00:50:13.376051
726	50	3	136	34	2020-06-02 00:50:13.391973	2020-06-02 00:50:13.391973
727	99	5	136	305	2020-06-02 00:50:13.405435	2020-06-02 00:50:13.405435
728	27	3	136	462	2020-06-02 00:50:13.417138	2020-06-02 00:50:13.417138
729	86	5	137	541	2020-06-02 00:50:13.429263	2020-06-02 00:50:13.429263
730	90	5	137	570	2020-06-02 00:50:13.440472	2020-06-02 00:50:13.440472
731	62	1	137	89	2020-06-02 00:50:13.452439	2020-06-02 00:50:13.452439
732	55	2	137	288	2020-06-02 00:50:13.466585	2020-06-02 00:50:13.466585
733	56	3	137	252	2020-06-02 00:50:13.478682	2020-06-02 00:50:13.478682
734	69	4	137	63	2020-06-02 00:50:13.490561	2020-06-02 00:50:13.490561
735	90	2	138	283	2020-06-02 00:50:13.501949	2020-06-02 00:50:13.501949
736	94	4	138	51	2020-06-02 00:50:13.513947	2020-06-02 00:50:13.513947
737	52	3	139	300	2020-06-02 00:50:13.525474	2020-06-02 00:50:13.525474
738	56	3	139	350	2020-06-02 00:50:13.537086	2020-06-02 00:50:13.537086
739	44	1	139	35	2020-06-02 00:50:13.554914	2020-06-02 00:50:13.554914
740	34	4	139	176	2020-06-02 00:50:13.567414	2020-06-02 00:50:13.567414
741	47	4	139	131	2020-06-02 00:50:13.577692	2020-06-02 00:50:13.577692
742	28	5	139	230	2020-06-02 00:50:13.587286	2020-06-02 00:50:13.587286
743	6	4	139	107	2020-06-02 00:50:13.595294	2020-06-02 00:50:13.595294
744	47	3	139	312	2020-06-02 00:50:13.603721	2020-06-02 00:50:13.603721
745	48	3	139	243	2020-06-02 00:50:13.612385	2020-06-02 00:50:13.612385
746	87	3	140	417	2020-06-02 00:50:13.620494	2020-06-02 00:50:13.620494
747	10	3	140	430	2020-06-02 00:50:13.628453	2020-06-02 00:50:13.628453
748	57	1	140	305	2020-06-02 00:50:13.636797	2020-06-02 00:50:13.636797
749	46	1	140	585	2020-06-02 00:50:13.645789	2020-06-02 00:50:13.645789
750	29	2	140	581	2020-06-02 00:50:13.654131	2020-06-02 00:50:13.654131
751	88	1	140	443	2020-06-02 00:50:13.662295	2020-06-02 00:50:13.662295
752	95	1	140	509	2020-06-02 00:50:13.670736	2020-06-02 00:50:13.670736
753	4	4	140	403	2020-06-02 00:50:13.679069	2020-06-02 00:50:13.679069
754	44	2	141	130	2020-06-02 00:50:13.687501	2020-06-02 00:50:13.687501
755	7	2	141	533	2020-06-02 00:50:13.696031	2020-06-02 00:50:13.696031
756	22	5	142	47	2020-06-02 00:50:13.704778	2020-06-02 00:50:13.704778
757	14	1	142	435	2020-06-02 00:50:13.714295	2020-06-02 00:50:13.714295
758	65	1	142	163	2020-06-02 00:50:13.724021	2020-06-02 00:50:13.724021
759	60	3	142	372	2020-06-02 00:50:13.734982	2020-06-02 00:50:13.734982
760	67	1	142	335	2020-06-02 00:50:13.74488	2020-06-02 00:50:13.74488
761	85	4	142	126	2020-06-02 00:50:13.75527	2020-06-02 00:50:13.75527
762	45	1	142	547	2020-06-02 00:50:13.764643	2020-06-02 00:50:13.764643
763	84	5	142	418	2020-06-02 00:50:13.77345	2020-06-02 00:50:13.77345
764	37	2	142	254	2020-06-02 00:50:13.783388	2020-06-02 00:50:13.783388
765	12	2	143	148	2020-06-02 00:50:13.792372	2020-06-02 00:50:13.792372
766	52	5	143	229	2020-06-02 00:50:13.801011	2020-06-02 00:50:13.801011
767	53	5	144	103	2020-06-02 00:50:13.809604	2020-06-02 00:50:13.809604
768	3	5	144	127	2020-06-02 00:50:13.818423	2020-06-02 00:50:13.818423
769	74	4	144	419	2020-06-02 00:50:13.827775	2020-06-02 00:50:13.827775
770	40	2	144	11	2020-06-02 00:50:13.837784	2020-06-02 00:50:13.837784
771	70	5	144	138	2020-06-02 00:50:13.845993	2020-06-02 00:50:13.845993
772	80	1	145	15	2020-06-02 00:50:13.85439	2020-06-02 00:50:13.85439
773	50	5	145	456	2020-06-02 00:50:13.862689	2020-06-02 00:50:13.862689
774	59	4	145	106	2020-06-02 00:50:13.870389	2020-06-02 00:50:13.870389
775	85	5	145	578	2020-06-02 00:50:13.877518	2020-06-02 00:50:13.877518
776	87	1	145	217	2020-06-02 00:50:13.884839	2020-06-02 00:50:13.884839
777	23	1	145	478	2020-06-02 00:50:13.892617	2020-06-02 00:50:13.892617
778	76	3	145	16	2020-06-02 00:50:13.900537	2020-06-02 00:50:13.900537
779	15	3	145	475	2020-06-02 00:50:13.907932	2020-06-02 00:50:13.907932
780	39	1	146	231	2020-06-02 00:50:13.91556	2020-06-02 00:50:13.91556
781	21	1	146	155	2020-06-02 00:50:13.92337	2020-06-02 00:50:13.92337
782	73	2	147	516	2020-06-02 00:50:13.930504	2020-06-02 00:50:13.930504
783	18	1	147	142	2020-06-02 00:50:13.938583	2020-06-02 00:50:13.938583
784	41	5	147	360	2020-06-02 00:50:13.947442	2020-06-02 00:50:13.947442
785	47	4	147	532	2020-06-02 00:50:13.955381	2020-06-02 00:50:13.955381
786	64	5	147	250	2020-06-02 00:50:13.962962	2020-06-02 00:50:13.962962
787	72	5	147	218	2020-06-02 00:50:13.970167	2020-06-02 00:50:13.970167
788	96	1	147	414	2020-06-02 00:50:13.97729	2020-06-02 00:50:13.97729
789	54	3	147	485	2020-06-02 00:50:13.984795	2020-06-02 00:50:13.984795
790	63	2	147	66	2020-06-02 00:50:13.993075	2020-06-02 00:50:13.993075
791	50	2	148	75	2020-06-02 00:50:14.000989	2020-06-02 00:50:14.000989
792	87	5	148	379	2020-06-02 00:50:14.008293	2020-06-02 00:50:14.008293
793	47	2	148	552	2020-06-02 00:50:14.015417	2020-06-02 00:50:14.015417
794	15	2	148	138	2020-06-02 00:50:14.022935	2020-06-02 00:50:14.022935
795	3	2	148	28	2020-06-02 00:50:14.03046	2020-06-02 00:50:14.03046
796	62	5	148	398	2020-06-02 00:50:14.037968	2020-06-02 00:50:14.037968
797	52	4	148	596	2020-06-02 00:50:14.045353	2020-06-02 00:50:14.045353
798	2	3	149	110	2020-06-02 00:50:14.052446	2020-06-02 00:50:14.052446
799	89	1	149	376	2020-06-02 00:50:14.059403	2020-06-02 00:50:14.059403
800	47	3	149	572	2020-06-02 00:50:14.066501	2020-06-02 00:50:14.066501
801	55	2	149	252	2020-06-02 00:50:14.073663	2020-06-02 00:50:14.073663
802	9	2	149	279	2020-06-02 00:50:14.080949	2020-06-02 00:50:14.080949
803	74	4	149	489	2020-06-02 00:50:14.087938	2020-06-02 00:50:14.087938
804	86	3	149	265	2020-06-02 00:50:14.095272	2020-06-02 00:50:14.095272
805	98	2	150	147	2020-06-02 00:50:14.102724	2020-06-02 00:50:14.102724
806	66	2	150	574	2020-06-02 00:50:14.11012	2020-06-02 00:50:14.11012
807	80	2	150	175	2020-06-02 00:50:14.117547	2020-06-02 00:50:14.117547
808	25	3	150	148	2020-06-02 00:50:14.12509	2020-06-02 00:50:14.12509
809	31	2	150	150	2020-06-02 00:50:14.132155	2020-06-02 00:50:14.132155
810	14	2	150	438	2020-06-02 00:50:14.139389	2020-06-02 00:50:14.139389
811	93	2	150	507	2020-06-02 00:50:14.146689	2020-06-02 00:50:14.146689
812	44	3	150	368	2020-06-02 00:50:14.15442	2020-06-02 00:50:14.15442
813	66	4	151	232	2020-06-02 00:50:14.161846	2020-06-02 00:50:14.161846
814	10	1	151	20	2020-06-02 00:50:14.169872	2020-06-02 00:50:14.169872
815	61	1	152	107	2020-06-02 00:50:14.177776	2020-06-02 00:50:14.177776
816	73	5	152	438	2020-06-02 00:50:14.187641	2020-06-02 00:50:14.187641
817	67	1	152	123	2020-06-02 00:50:14.195185	2020-06-02 00:50:14.195185
818	51	1	152	119	2020-06-02 00:50:14.202998	2020-06-02 00:50:14.202998
819	86	4	152	261	2020-06-02 00:50:14.210168	2020-06-02 00:50:14.210168
820	80	4	152	114	2020-06-02 00:50:14.217942	2020-06-02 00:50:14.217942
821	27	2	152	177	2020-06-02 00:50:14.225428	2020-06-02 00:50:14.225428
822	80	1	152	247	2020-06-02 00:50:14.232689	2020-06-02 00:50:14.232689
823	13	1	152	75	2020-06-02 00:50:14.240301	2020-06-02 00:50:14.240301
824	21	1	153	86	2020-06-02 00:50:14.247642	2020-06-02 00:50:14.247642
825	32	3	153	130	2020-06-02 00:50:14.255123	2020-06-02 00:50:14.255123
826	82	2	153	252	2020-06-02 00:50:14.262657	2020-06-02 00:50:14.262657
827	4	3	153	525	2020-06-02 00:50:14.271055	2020-06-02 00:50:14.271055
828	52	4	153	600	2020-06-02 00:50:14.278461	2020-06-02 00:50:14.278461
829	70	3	153	373	2020-06-02 00:50:14.286265	2020-06-02 00:50:14.286265
830	58	1	153	431	2020-06-02 00:50:14.293421	2020-06-02 00:50:14.293421
831	69	3	153	456	2020-06-02 00:50:14.301054	2020-06-02 00:50:14.301054
832	77	1	153	44	2020-06-02 00:50:14.308509	2020-06-02 00:50:14.308509
833	75	5	154	349	2020-06-02 00:50:14.315782	2020-06-02 00:50:14.315782
834	17	1	154	136	2020-06-02 00:50:14.323069	2020-06-02 00:50:14.323069
835	74	2	154	491	2020-06-02 00:50:14.330422	2020-06-02 00:50:14.330422
836	49	2	154	563	2020-06-02 00:50:14.337629	2020-06-02 00:50:14.337629
837	7	3	154	172	2020-06-02 00:50:14.344745	2020-06-02 00:50:14.344745
838	50	1	154	47	2020-06-02 00:50:14.352429	2020-06-02 00:50:14.352429
839	8	3	154	266	2020-06-02 00:50:14.359934	2020-06-02 00:50:14.359934
840	30	4	154	547	2020-06-02 00:50:14.367067	2020-06-02 00:50:14.367067
841	14	1	154	90	2020-06-02 00:50:14.37499	2020-06-02 00:50:14.37499
842	68	2	154	32	2020-06-02 00:50:14.382914	2020-06-02 00:50:14.382914
843	52	1	155	220	2020-06-02 00:50:14.39147	2020-06-02 00:50:14.39147
844	87	4	155	304	2020-06-02 00:50:14.39946	2020-06-02 00:50:14.39946
845	28	2	155	287	2020-06-02 00:50:14.40739	2020-06-02 00:50:14.40739
846	48	3	155	468	2020-06-02 00:50:14.419008	2020-06-02 00:50:14.419008
847	20	3	155	439	2020-06-02 00:50:14.428053	2020-06-02 00:50:14.428053
848	72	1	155	502	2020-06-02 00:50:14.436183	2020-06-02 00:50:14.436183
849	97	2	155	212	2020-06-02 00:50:14.444645	2020-06-02 00:50:14.444645
850	8	2	156	274	2020-06-02 00:50:14.452239	2020-06-02 00:50:14.452239
851	17	1	156	530	2020-06-02 00:50:14.459692	2020-06-02 00:50:14.459692
852	75	5	156	328	2020-06-02 00:50:14.466782	2020-06-02 00:50:14.466782
853	48	3	156	408	2020-06-02 00:50:14.474573	2020-06-02 00:50:14.474573
854	84	1	156	90	2020-06-02 00:50:14.483709	2020-06-02 00:50:14.483709
855	86	4	156	433	2020-06-02 00:50:14.491729	2020-06-02 00:50:14.491729
856	8	3	156	213	2020-06-02 00:50:14.499103	2020-06-02 00:50:14.499103
857	31	5	156	519	2020-06-02 00:50:14.506774	2020-06-02 00:50:14.506774
858	27	2	157	338	2020-06-02 00:50:14.514712	2020-06-02 00:50:14.514712
859	96	5	157	232	2020-06-02 00:50:14.5222	2020-06-02 00:50:14.5222
860	48	1	157	214	2020-06-02 00:50:14.529187	2020-06-02 00:50:14.529187
861	98	1	157	552	2020-06-02 00:50:14.537015	2020-06-02 00:50:14.537015
862	21	5	157	119	2020-06-02 00:50:14.545238	2020-06-02 00:50:14.545238
863	9	3	157	529	2020-06-02 00:50:14.55314	2020-06-02 00:50:14.55314
864	24	5	157	388	2020-06-02 00:50:14.560508	2020-06-02 00:50:14.560508
865	42	1	157	143	2020-06-02 00:50:14.567964	2020-06-02 00:50:14.567964
866	42	3	157	489	2020-06-02 00:50:14.575998	2020-06-02 00:50:14.575998
867	2	3	158	132	2020-06-02 00:50:14.58457	2020-06-02 00:50:14.58457
868	13	4	159	273	2020-06-02 00:50:14.592389	2020-06-02 00:50:14.592389
869	61	1	159	101	2020-06-02 00:50:14.600427	2020-06-02 00:50:14.600427
870	63	3	159	152	2020-06-02 00:50:14.607951	2020-06-02 00:50:14.607951
871	23	2	160	430	2020-06-02 00:50:14.615178	2020-06-02 00:50:14.615178
872	75	2	160	22	2020-06-02 00:50:14.622018	2020-06-02 00:50:14.622018
873	74	3	160	419	2020-06-02 00:50:14.629272	2020-06-02 00:50:14.629272
874	79	3	160	93	2020-06-02 00:50:14.636901	2020-06-02 00:50:14.636901
875	78	1	160	124	2020-06-02 00:50:14.644403	2020-06-02 00:50:14.644403
876	8	4	160	264	2020-06-02 00:50:14.65163	2020-06-02 00:50:14.65163
877	19	3	161	154	2020-06-02 00:50:14.660517	2020-06-02 00:50:14.660517
878	95	1	161	513	2020-06-02 00:50:14.667974	2020-06-02 00:50:14.667974
879	10	5	162	336	2020-06-02 00:50:14.67583	2020-06-02 00:50:14.67583
880	95	1	162	466	2020-06-02 00:50:14.683603	2020-06-02 00:50:14.683603
881	53	5	162	364	2020-06-02 00:50:14.690573	2020-06-02 00:50:14.690573
882	9	4	162	10	2020-06-02 00:50:14.697387	2020-06-02 00:50:14.697387
883	48	4	163	433	2020-06-02 00:50:14.70478	2020-06-02 00:50:14.70478
884	36	1	163	250	2020-06-02 00:50:14.714041	2020-06-02 00:50:14.714041
885	76	2	163	328	2020-06-02 00:50:14.722172	2020-06-02 00:50:14.722172
886	89	3	163	562	2020-06-02 00:50:14.72894	2020-06-02 00:50:14.72894
887	50	4	164	324	2020-06-02 00:50:14.735676	2020-06-02 00:50:14.735676
888	51	4	164	573	2020-06-02 00:50:14.742917	2020-06-02 00:50:14.742917
889	83	5	164	166	2020-06-02 00:50:14.752977	2020-06-02 00:50:14.752977
890	83	4	164	118	2020-06-02 00:50:14.760253	2020-06-02 00:50:14.760253
891	84	1	164	181	2020-06-02 00:50:14.767798	2020-06-02 00:50:14.767798
892	28	3	164	356	2020-06-02 00:50:14.775595	2020-06-02 00:50:14.775595
893	89	5	164	323	2020-06-02 00:50:14.78297	2020-06-02 00:50:14.78297
894	84	4	164	50	2020-06-02 00:50:14.790557	2020-06-02 00:50:14.790557
895	71	4	164	269	2020-06-02 00:50:14.79877	2020-06-02 00:50:14.79877
896	15	2	165	172	2020-06-02 00:50:14.807763	2020-06-02 00:50:14.807763
897	47	2	165	343	2020-06-02 00:50:14.816582	2020-06-02 00:50:14.816582
898	90	2	165	93	2020-06-02 00:50:14.825254	2020-06-02 00:50:14.825254
899	56	1	165	99	2020-06-02 00:50:14.833676	2020-06-02 00:50:14.833676
900	100	1	165	415	2020-06-02 00:50:14.842279	2020-06-02 00:50:14.842279
901	13	4	165	136	2020-06-02 00:50:14.85045	2020-06-02 00:50:14.85045
902	9	1	165	489	2020-06-02 00:50:14.859122	2020-06-02 00:50:14.859122
903	48	4	166	549	2020-06-02 00:50:14.867556	2020-06-02 00:50:14.867556
904	69	1	166	150	2020-06-02 00:50:14.876274	2020-06-02 00:50:14.876274
905	87	5	166	379	2020-06-02 00:50:14.88583	2020-06-02 00:50:14.88583
906	21	5	166	143	2020-06-02 00:50:14.894277	2020-06-02 00:50:14.894277
907	8	1	167	230	2020-06-02 00:50:14.902426	2020-06-02 00:50:14.902426
908	66	5	167	273	2020-06-02 00:50:14.910789	2020-06-02 00:50:14.910789
909	81	4	167	283	2020-06-02 00:50:14.918885	2020-06-02 00:50:14.918885
910	13	1	167	539	2020-06-02 00:50:14.926879	2020-06-02 00:50:14.926879
911	61	3	167	504	2020-06-02 00:50:14.935894	2020-06-02 00:50:14.935894
912	64	4	167	244	2020-06-02 00:50:14.94379	2020-06-02 00:50:14.94379
913	78	4	167	548	2020-06-02 00:50:14.952176	2020-06-02 00:50:14.952176
914	60	3	168	316	2020-06-02 00:50:14.960815	2020-06-02 00:50:14.960815
915	96	4	168	338	2020-06-02 00:50:14.970121	2020-06-02 00:50:14.970121
916	5	2	168	31	2020-06-02 00:50:14.979086	2020-06-02 00:50:14.979086
917	59	5	168	178	2020-06-02 00:50:14.987748	2020-06-02 00:50:14.987748
918	45	5	168	474	2020-06-02 00:50:14.996189	2020-06-02 00:50:14.996189
919	90	3	168	501	2020-06-02 00:50:15.003993	2020-06-02 00:50:15.003993
920	4	2	168	246	2020-06-02 00:50:15.012421	2020-06-02 00:50:15.012421
921	82	1	168	364	2020-06-02 00:50:15.02165	2020-06-02 00:50:15.02165
922	36	1	169	144	2020-06-02 00:50:15.030397	2020-06-02 00:50:15.030397
923	56	5	169	58	2020-06-02 00:50:15.038737	2020-06-02 00:50:15.038737
924	86	2	169	255	2020-06-02 00:50:15.047459	2020-06-02 00:50:15.047459
925	39	3	169	404	2020-06-02 00:50:15.05619	2020-06-02 00:50:15.05619
926	36	3	169	395	2020-06-02 00:50:15.064455	2020-06-02 00:50:15.064455
927	49	4	170	46	2020-06-02 00:50:15.072394	2020-06-02 00:50:15.072394
928	57	3	170	487	2020-06-02 00:50:15.080302	2020-06-02 00:50:15.080302
929	29	1	170	491	2020-06-02 00:50:15.088923	2020-06-02 00:50:15.088923
930	23	2	170	532	2020-06-02 00:50:15.097788	2020-06-02 00:50:15.097788
931	21	1	170	56	2020-06-02 00:50:15.105767	2020-06-02 00:50:15.105767
932	1	2	171	374	2020-06-02 00:50:15.114241	2020-06-02 00:50:15.114241
933	33	5	171	543	2020-06-02 00:50:15.123522	2020-06-02 00:50:15.123522
934	24	3	171	215	2020-06-02 00:50:15.131592	2020-06-02 00:50:15.131592
935	12	4	172	299	2020-06-02 00:50:15.139878	2020-06-02 00:50:15.139878
936	35	4	173	411	2020-06-02 00:50:15.147814	2020-06-02 00:50:15.147814
937	38	4	173	329	2020-06-02 00:50:15.156595	2020-06-02 00:50:15.156595
938	25	4	173	255	2020-06-02 00:50:15.165976	2020-06-02 00:50:15.165976
939	81	2	173	118	2020-06-02 00:50:15.174631	2020-06-02 00:50:15.174631
940	72	3	173	378	2020-06-02 00:50:15.182856	2020-06-02 00:50:15.182856
941	43	3	173	12	2020-06-02 00:50:15.191126	2020-06-02 00:50:15.191126
942	45	2	173	6	2020-06-02 00:50:15.199419	2020-06-02 00:50:15.199419
943	24	1	174	9	2020-06-02 00:50:15.208588	2020-06-02 00:50:15.208588
944	20	2	174	547	2020-06-02 00:50:15.218506	2020-06-02 00:50:15.218506
945	33	4	174	330	2020-06-02 00:50:15.227971	2020-06-02 00:50:15.227971
946	7	4	174	442	2020-06-02 00:50:15.239537	2020-06-02 00:50:15.239537
947	39	4	174	154	2020-06-02 00:50:15.248465	2020-06-02 00:50:15.248465
948	51	4	174	138	2020-06-02 00:50:15.258196	2020-06-02 00:50:15.258196
949	94	1	174	484	2020-06-02 00:50:15.267534	2020-06-02 00:50:15.267534
950	17	2	175	169	2020-06-02 00:50:15.275932	2020-06-02 00:50:15.275932
951	100	3	175	179	2020-06-02 00:50:15.283781	2020-06-02 00:50:15.283781
952	79	5	175	109	2020-06-02 00:50:15.291826	2020-06-02 00:50:15.291826
953	41	5	175	218	2020-06-02 00:50:15.299724	2020-06-02 00:50:15.299724
954	37	1	175	244	2020-06-02 00:50:15.307538	2020-06-02 00:50:15.307538
955	28	5	175	321	2020-06-02 00:50:15.315109	2020-06-02 00:50:15.315109
956	20	3	175	55	2020-06-02 00:50:15.323018	2020-06-02 00:50:15.323018
957	50	2	176	415	2020-06-02 00:50:15.330508	2020-06-02 00:50:15.330508
958	23	2	176	556	2020-06-02 00:50:15.33839	2020-06-02 00:50:15.33839
959	53	1	176	223	2020-06-02 00:50:15.34622	2020-06-02 00:50:15.34622
960	43	4	176	496	2020-06-02 00:50:15.353974	2020-06-02 00:50:15.353974
961	69	4	176	381	2020-06-02 00:50:15.361618	2020-06-02 00:50:15.361618
962	76	4	176	599	2020-06-02 00:50:15.369518	2020-06-02 00:50:15.369518
963	16	1	177	527	2020-06-02 00:50:15.377781	2020-06-02 00:50:15.377781
964	27	5	177	525	2020-06-02 00:50:15.386205	2020-06-02 00:50:15.386205
965	25	1	178	414	2020-06-02 00:50:15.395507	2020-06-02 00:50:15.395507
966	80	3	178	34	2020-06-02 00:50:15.403493	2020-06-02 00:50:15.403493
967	79	3	178	349	2020-06-02 00:50:15.411407	2020-06-02 00:50:15.411407
968	54	2	178	491	2020-06-02 00:50:15.420583	2020-06-02 00:50:15.420583
969	45	3	178	577	2020-06-02 00:50:15.429093	2020-06-02 00:50:15.429093
970	100	1	179	3	2020-06-02 00:50:15.43726	2020-06-02 00:50:15.43726
971	91	3	179	58	2020-06-02 00:50:15.446415	2020-06-02 00:50:15.446415
972	91	5	180	104	2020-06-02 00:50:15.454952	2020-06-02 00:50:15.454952
973	89	2	180	181	2020-06-02 00:50:15.465673	2020-06-02 00:50:15.465673
974	49	3	180	270	2020-06-02 00:50:15.475979	2020-06-02 00:50:15.475979
975	73	3	180	595	2020-06-02 00:50:15.485523	2020-06-02 00:50:15.485523
976	59	1	180	19	2020-06-02 00:50:15.49456	2020-06-02 00:50:15.49456
977	63	4	180	542	2020-06-02 00:50:15.50369	2020-06-02 00:50:15.50369
978	94	3	180	240	2020-06-02 00:50:15.511602	2020-06-02 00:50:15.511602
979	53	3	180	455	2020-06-02 00:50:15.519904	2020-06-02 00:50:15.519904
980	28	2	181	463	2020-06-02 00:50:15.527878	2020-06-02 00:50:15.527878
981	59	2	181	307	2020-06-02 00:50:15.536069	2020-06-02 00:50:15.536069
982	18	3	181	481	2020-06-02 00:50:15.544775	2020-06-02 00:50:15.544775
983	40	1	181	312	2020-06-02 00:50:15.553521	2020-06-02 00:50:15.553521
984	86	4	181	506	2020-06-02 00:50:15.561292	2020-06-02 00:50:15.561292
985	91	1	181	86	2020-06-02 00:50:15.569237	2020-06-02 00:50:15.569237
986	20	1	182	148	2020-06-02 00:50:15.576941	2020-06-02 00:50:15.576941
987	60	4	182	225	2020-06-02 00:50:15.584742	2020-06-02 00:50:15.584742
988	41	4	182	342	2020-06-02 00:50:15.592701	2020-06-02 00:50:15.592701
989	36	5	183	344	2020-06-02 00:50:15.600594	2020-06-02 00:50:15.600594
990	67	3	183	6	2020-06-02 00:50:15.608454	2020-06-02 00:50:15.608454
991	5	2	184	348	2020-06-02 00:50:15.616475	2020-06-02 00:50:15.616475
992	85	1	184	397	2020-06-02 00:50:15.624273	2020-06-02 00:50:15.624273
993	91	3	184	555	2020-06-02 00:50:15.633647	2020-06-02 00:50:15.633647
994	14	5	184	355	2020-06-02 00:50:15.642411	2020-06-02 00:50:15.642411
995	43	2	184	336	2020-06-02 00:50:15.650593	2020-06-02 00:50:15.650593
996	6	4	184	35	2020-06-02 00:50:15.660146	2020-06-02 00:50:15.660146
997	4	1	185	255	2020-06-02 00:50:15.668738	2020-06-02 00:50:15.668738
998	5	3	185	124	2020-06-02 00:50:15.676715	2020-06-02 00:50:15.676715
999	20	2	185	464	2020-06-02 00:50:15.684968	2020-06-02 00:50:15.684968
1000	45	5	185	589	2020-06-02 00:50:15.694252	2020-06-02 00:50:15.694252
1001	70	5	185	380	2020-06-02 00:50:15.704476	2020-06-02 00:50:15.704476
1002	44	2	185	437	2020-06-02 00:50:15.712404	2020-06-02 00:50:15.712404
1003	10	3	185	278	2020-06-02 00:50:15.720623	2020-06-02 00:50:15.720623
1004	31	5	185	404	2020-06-02 00:50:15.728556	2020-06-02 00:50:15.728556
1005	68	3	186	531	2020-06-02 00:50:15.736893	2020-06-02 00:50:15.736893
1006	90	2	186	597	2020-06-02 00:50:15.746235	2020-06-02 00:50:15.746235
1007	83	4	186	429	2020-06-02 00:50:15.755987	2020-06-02 00:50:15.755987
1008	37	1	186	93	2020-06-02 00:50:15.764679	2020-06-02 00:50:15.764679
1009	9	5	187	36	2020-06-02 00:50:15.773833	2020-06-02 00:50:15.773833
1010	32	3	187	477	2020-06-02 00:50:15.781605	2020-06-02 00:50:15.781605
1011	40	2	187	422	2020-06-02 00:50:15.789718	2020-06-02 00:50:15.789718
1012	4	1	188	432	2020-06-02 00:50:15.79738	2020-06-02 00:50:15.79738
1013	9	4	188	273	2020-06-02 00:50:15.805986	2020-06-02 00:50:15.805986
1014	51	4	188	398	2020-06-02 00:50:15.815867	2020-06-02 00:50:15.815867
1015	12	3	188	600	2020-06-02 00:50:15.825152	2020-06-02 00:50:15.825152
1016	98	4	188	589	2020-06-02 00:50:15.833731	2020-06-02 00:50:15.833731
1017	51	1	188	407	2020-06-02 00:50:15.842364	2020-06-02 00:50:15.842364
1018	34	2	188	566	2020-06-02 00:50:15.85053	2020-06-02 00:50:15.85053
1019	10	1	188	505	2020-06-02 00:50:15.859129	2020-06-02 00:50:15.859129
1020	6	2	188	169	2020-06-02 00:50:15.867987	2020-06-02 00:50:15.867987
1021	93	2	189	389	2020-06-02 00:50:15.87711	2020-06-02 00:50:15.87711
1022	15	5	189	13	2020-06-02 00:50:15.88654	2020-06-02 00:50:15.88654
1023	54	1	189	288	2020-06-02 00:50:15.895469	2020-06-02 00:50:15.895469
1024	15	3	189	54	2020-06-02 00:50:15.903785	2020-06-02 00:50:15.903785
1025	53	2	189	407	2020-06-02 00:50:15.911832	2020-06-02 00:50:15.911832
1026	96	2	189	92	2020-06-02 00:50:15.919728	2020-06-02 00:50:15.919728
1027	89	3	189	408	2020-06-02 00:50:15.929382	2020-06-02 00:50:15.929382
1028	98	3	189	346	2020-06-02 00:50:15.939	2020-06-02 00:50:15.939
1029	43	5	190	338	2020-06-02 00:50:15.946952	2020-06-02 00:50:15.946952
1030	67	3	190	441	2020-06-02 00:50:15.955444	2020-06-02 00:50:15.955444
1031	22	4	190	156	2020-06-02 00:50:15.963901	2020-06-02 00:50:15.963901
1032	73	1	190	327	2020-06-02 00:50:15.972802	2020-06-02 00:50:15.972802
1033	18	5	190	12	2020-06-02 00:50:15.980997	2020-06-02 00:50:15.980997
1034	5	2	190	6	2020-06-02 00:50:15.990182	2020-06-02 00:50:15.990182
1035	91	4	190	275	2020-06-02 00:50:15.999121	2020-06-02 00:50:15.999121
1036	28	4	190	582	2020-06-02 00:50:16.006997	2020-06-02 00:50:16.006997
1037	22	5	191	106	2020-06-02 00:50:16.015113	2020-06-02 00:50:16.015113
1038	91	4	191	543	2020-06-02 00:50:16.023155	2020-06-02 00:50:16.023155
1039	82	3	191	202	2020-06-02 00:50:16.035519	2020-06-02 00:50:16.035519
1040	95	4	191	436	2020-06-02 00:50:16.044371	2020-06-02 00:50:16.044371
1041	19	2	191	496	2020-06-02 00:50:16.052057	2020-06-02 00:50:16.052057
1042	77	2	191	563	2020-06-02 00:50:16.059717	2020-06-02 00:50:16.059717
1043	40	2	191	385	2020-06-02 00:50:16.067261	2020-06-02 00:50:16.067261
1044	39	1	191	512	2020-06-02 00:50:16.074976	2020-06-02 00:50:16.074976
1045	12	5	191	534	2020-06-02 00:50:16.08328	2020-06-02 00:50:16.08328
1046	86	5	191	174	2020-06-02 00:50:16.091374	2020-06-02 00:50:16.091374
1047	3	4	192	130	2020-06-02 00:50:16.099073	2020-06-02 00:50:16.099073
1048	78	2	192	115	2020-06-02 00:50:16.106702	2020-06-02 00:50:16.106702
1049	32	4	192	117	2020-06-02 00:50:16.114428	2020-06-02 00:50:16.114428
1050	23	3	192	92	2020-06-02 00:50:16.122881	2020-06-02 00:50:16.122881
1051	44	4	192	365	2020-06-02 00:50:16.132735	2020-06-02 00:50:16.132735
1052	42	5	192	324	2020-06-02 00:50:16.140718	2020-06-02 00:50:16.140718
1053	8	2	193	472	2020-06-02 00:50:16.148757	2020-06-02 00:50:16.148757
1054	57	3	193	289	2020-06-02 00:50:16.156461	2020-06-02 00:50:16.156461
1055	8	3	194	243	2020-06-02 00:50:16.165406	2020-06-02 00:50:16.165406
1056	60	1	194	11	2020-06-02 00:50:16.174365	2020-06-02 00:50:16.174365
1057	52	1	194	287	2020-06-02 00:50:16.182124	2020-06-02 00:50:16.182124
1058	32	3	195	151	2020-06-02 00:50:16.190357	2020-06-02 00:50:16.190357
1059	84	3	196	366	2020-06-02 00:50:16.198217	2020-06-02 00:50:16.198217
1060	32	3	196	232	2020-06-02 00:50:16.205811	2020-06-02 00:50:16.205811
1061	17	1	196	282	2020-06-02 00:50:16.213652	2020-06-02 00:50:16.213652
1062	3	5	196	285	2020-06-02 00:50:16.22169	2020-06-02 00:50:16.22169
1063	100	3	197	468	2020-06-02 00:50:16.22929	2020-06-02 00:50:16.22929
1064	85	1	197	438	2020-06-02 00:50:16.237364	2020-06-02 00:50:16.237364
1065	72	5	198	148	2020-06-02 00:50:16.245042	2020-06-02 00:50:16.245042
1066	5	1	198	380	2020-06-02 00:50:16.252942	2020-06-02 00:50:16.252942
1067	51	4	199	367	2020-06-02 00:50:16.261395	2020-06-02 00:50:16.261395
1068	81	5	199	310	2020-06-02 00:50:16.269929	2020-06-02 00:50:16.269929
1069	65	5	199	7	2020-06-02 00:50:16.278103	2020-06-02 00:50:16.278103
1070	67	1	199	462	2020-06-02 00:50:16.286369	2020-06-02 00:50:16.286369
1071	37	5	199	75	2020-06-02 00:50:16.294583	2020-06-02 00:50:16.294583
1072	53	3	199	220	2020-06-02 00:50:16.30294	2020-06-02 00:50:16.30294
1073	41	1	199	402	2020-06-02 00:50:16.311002	2020-06-02 00:50:16.311002
1074	87	4	199	208	2020-06-02 00:50:16.319059	2020-06-02 00:50:16.319059
1075	52	1	199	346	2020-06-02 00:50:16.327034	2020-06-02 00:50:16.327034
1076	59	1	200	51	2020-06-02 00:50:16.334842	2020-06-02 00:50:16.334842
1077	97	4	200	258	2020-06-02 00:50:16.342536	2020-06-02 00:50:16.342536
1078	98	3	200	505	2020-06-02 00:50:16.350428	2020-06-02 00:50:16.350428
1079	64	1	200	210	2020-06-02 00:50:16.358398	2020-06-02 00:50:16.358398
1080	66	4	200	445	2020-06-02 00:50:16.366501	2020-06-02 00:50:16.366501
1081	2	5	200	498	2020-06-02 00:50:16.374287	2020-06-02 00:50:16.374287
1082	12	3	200	265	2020-06-02 00:50:16.382659	2020-06-02 00:50:16.382659
1083	2	1	1	749	2020-06-02 00:50:16.391446	2020-06-02 00:50:16.391446
1084	64	5	1	419	2020-06-02 00:50:16.399188	2020-06-02 00:50:16.399188
1085	16	1	1	436	2020-06-02 00:50:16.407007	2020-06-02 00:50:16.407007
1086	24	2	1	171	2020-06-02 00:50:16.414926	2020-06-02 00:50:16.414926
1087	14	1	1	799	2020-06-02 00:50:16.423093	2020-06-02 00:50:16.423093
1088	48	3	1	421	2020-06-02 00:50:16.431068	2020-06-02 00:50:16.431068
1089	90	4	1	561	2020-06-02 00:50:16.438568	2020-06-02 00:50:16.438568
1090	39	2	2	474	2020-06-02 00:50:16.446286	2020-06-02 00:50:16.446286
1091	1	1	3	398	2020-06-02 00:50:16.453896	2020-06-02 00:50:16.453896
1092	61	3	3	573	2020-06-02 00:50:16.46359	2020-06-02 00:50:16.46359
1093	59	2	3	340	2020-06-02 00:50:16.472506	2020-06-02 00:50:16.472506
1094	34	4	3	213	2020-06-02 00:50:16.481564	2020-06-02 00:50:16.481564
1095	44	5	3	406	2020-06-02 00:50:16.491924	2020-06-02 00:50:16.491924
1096	49	3	4	766	2020-06-02 00:50:16.500142	2020-06-02 00:50:16.500142
1097	98	5	4	600	2020-06-02 00:50:16.508425	2020-06-02 00:50:16.508425
1098	54	2	4	273	2020-06-02 00:50:16.517867	2020-06-02 00:50:16.517867
1099	66	2	4	661	2020-06-02 00:50:16.52729	2020-06-02 00:50:16.52729
1100	82	4	4	324	2020-06-02 00:50:16.535489	2020-06-02 00:50:16.535489
1101	69	4	5	402	2020-06-02 00:50:16.543977	2020-06-02 00:50:16.543977
1102	39	5	6	239	2020-06-02 00:50:16.552376	2020-06-02 00:50:16.552376
1103	19	3	6	62	2020-06-02 00:50:16.560791	2020-06-02 00:50:16.560791
1104	37	2	6	387	2020-06-02 00:50:16.569416	2020-06-02 00:50:16.569416
1105	36	1	6	19	2020-06-02 00:50:16.577264	2020-06-02 00:50:16.577264
1106	72	1	6	512	2020-06-02 00:50:16.585143	2020-06-02 00:50:16.585143
1107	48	1	7	553	2020-06-02 00:50:16.593225	2020-06-02 00:50:16.593225
1108	72	3	7	316	2020-06-02 00:50:16.601111	2020-06-02 00:50:16.601111
1109	16	1	7	168	2020-06-02 00:50:16.609509	2020-06-02 00:50:16.609509
1110	21	2	7	542	2020-06-02 00:50:16.618009	2020-06-02 00:50:16.618009
1111	21	2	8	195	2020-06-02 00:50:16.626052	2020-06-02 00:50:16.626052
1112	77	3	8	712	2020-06-02 00:50:16.634425	2020-06-02 00:50:16.634425
1113	83	3	8	436	2020-06-02 00:50:16.642899	2020-06-02 00:50:16.642899
1114	33	5	8	542	2020-06-02 00:50:16.651466	2020-06-02 00:50:16.651466
1115	86	4	8	106	2020-06-02 00:50:16.660226	2020-06-02 00:50:16.660226
1116	92	2	8	89	2020-06-02 00:50:16.668639	2020-06-02 00:50:16.668639
1117	23	5	8	742	2020-06-02 00:50:16.677137	2020-06-02 00:50:16.677137
1118	10	2	9	543	2020-06-02 00:50:16.685722	2020-06-02 00:50:16.685722
1119	29	1	9	666	2020-06-02 00:50:16.693709	2020-06-02 00:50:16.693709
1120	11	3	9	612	2020-06-02 00:50:16.70182	2020-06-02 00:50:16.70182
1121	45	2	9	221	2020-06-02 00:50:16.710038	2020-06-02 00:50:16.710038
1122	97	2	9	767	2020-06-02 00:50:16.718109	2020-06-02 00:50:16.718109
1123	55	4	9	65	2020-06-02 00:50:16.725936	2020-06-02 00:50:16.725936
1124	5	4	9	205	2020-06-02 00:50:16.734797	2020-06-02 00:50:16.734797
1125	18	1	9	177	2020-06-02 00:50:16.743127	2020-06-02 00:50:16.743127
1126	76	5	9	619	2020-06-02 00:50:16.754987	2020-06-02 00:50:16.754987
1127	34	5	9	496	2020-06-02 00:50:16.764577	2020-06-02 00:50:16.764577
1128	45	3	10	138	2020-06-02 00:50:16.773632	2020-06-02 00:50:16.773632
1129	3	3	10	53	2020-06-02 00:50:16.781755	2020-06-02 00:50:16.781755
1130	26	1	11	597	2020-06-02 00:50:16.78963	2020-06-02 00:50:16.78963
1131	58	5	11	228	2020-06-02 00:50:16.797588	2020-06-02 00:50:16.797588
1132	27	5	11	226	2020-06-02 00:50:16.805732	2020-06-02 00:50:16.805732
1133	93	2	11	334	2020-06-02 00:50:16.814081	2020-06-02 00:50:16.814081
1134	33	5	11	311	2020-06-02 00:50:16.823404	2020-06-02 00:50:16.823404
1135	61	1	11	707	2020-06-02 00:50:16.833646	2020-06-02 00:50:16.833646
1136	87	1	11	756	2020-06-02 00:50:16.84137	2020-06-02 00:50:16.84137
1137	5	2	11	437	2020-06-02 00:50:16.849164	2020-06-02 00:50:16.849164
1138	53	1	11	615	2020-06-02 00:50:16.857228	2020-06-02 00:50:16.857228
1139	74	2	12	127	2020-06-02 00:50:16.865909	2020-06-02 00:50:16.865909
1140	5	3	12	515	2020-06-02 00:50:16.874147	2020-06-02 00:50:16.874147
1141	57	4	12	179	2020-06-02 00:50:16.883416	2020-06-02 00:50:16.883416
1142	14	1	12	164	2020-06-02 00:50:16.89283	2020-06-02 00:50:16.89283
1143	88	2	12	618	2020-06-02 00:50:16.901439	2020-06-02 00:50:16.901439
1144	98	5	13	628	2020-06-02 00:50:16.909717	2020-06-02 00:50:16.909717
1145	33	1	13	757	2020-06-02 00:50:16.917845	2020-06-02 00:50:16.917845
1146	48	1	13	17	2020-06-02 00:50:16.926388	2020-06-02 00:50:16.926388
1147	65	2	13	533	2020-06-02 00:50:16.934283	2020-06-02 00:50:16.934283
1148	92	3	13	532	2020-06-02 00:50:16.9428	2020-06-02 00:50:16.9428
1149	3	4	13	192	2020-06-02 00:50:16.950963	2020-06-02 00:50:16.950963
1150	56	5	13	733	2020-06-02 00:50:16.959449	2020-06-02 00:50:16.959449
1151	37	4	13	78	2020-06-02 00:50:16.967839	2020-06-02 00:50:16.967839
1152	8	5	13	89	2020-06-02 00:50:16.976773	2020-06-02 00:50:16.976773
1153	32	3	14	269	2020-06-02 00:50:16.984846	2020-06-02 00:50:16.984846
1154	59	2	14	588	2020-06-02 00:50:16.993058	2020-06-02 00:50:16.993058
1155	26	3	15	576	2020-06-02 00:50:17.001007	2020-06-02 00:50:17.001007
1156	57	3	15	266	2020-06-02 00:50:17.009573	2020-06-02 00:50:17.009573
1157	80	3	15	486	2020-06-02 00:50:17.017925	2020-06-02 00:50:17.017925
1158	92	2	15	297	2020-06-02 00:50:17.026519	2020-06-02 00:50:17.026519
1159	35	5	15	639	2020-06-02 00:50:17.034593	2020-06-02 00:50:17.034593
1160	52	1	15	225	2020-06-02 00:50:17.043649	2020-06-02 00:50:17.043649
1161	78	1	16	461	2020-06-02 00:50:17.051806	2020-06-02 00:50:17.051806
1162	94	5	16	411	2020-06-02 00:50:17.059993	2020-06-02 00:50:17.059993
1163	19	2	16	518	2020-06-02 00:50:17.069299	2020-06-02 00:50:17.069299
1164	99	3	16	101	2020-06-02 00:50:17.077971	2020-06-02 00:50:17.077971
1165	97	3	17	768	2020-06-02 00:50:17.086972	2020-06-02 00:50:17.086972
1166	81	5	17	289	2020-06-02 00:50:17.095871	2020-06-02 00:50:17.095871
1167	40	1	17	733	2020-06-02 00:50:17.104448	2020-06-02 00:50:17.104448
1168	4	1	17	448	2020-06-02 00:50:17.112953	2020-06-02 00:50:17.112953
1169	61	4	17	685	2020-06-02 00:50:17.121513	2020-06-02 00:50:17.121513
1170	93	5	18	479	2020-06-02 00:50:17.12957	2020-06-02 00:50:17.12957
1171	10	1	18	511	2020-06-02 00:50:17.138085	2020-06-02 00:50:17.138085
1172	6	5	18	561	2020-06-02 00:50:17.146852	2020-06-02 00:50:17.146852
1173	36	1	18	374	2020-06-02 00:50:17.155134	2020-06-02 00:50:17.155134
1174	95	2	18	14	2020-06-02 00:50:17.163086	2020-06-02 00:50:17.163086
1175	87	1	19	754	2020-06-02 00:50:17.170954	2020-06-02 00:50:17.170954
1176	3	5	19	193	2020-06-02 00:50:17.178879	2020-06-02 00:50:17.178879
1177	70	5	19	714	2020-06-02 00:50:17.187427	2020-06-02 00:50:17.187427
1178	4	2	20	307	2020-06-02 00:50:17.195859	2020-06-02 00:50:17.195859
1179	57	1	20	396	2020-06-02 00:50:17.204271	2020-06-02 00:50:17.204271
1180	16	5	21	303	2020-06-02 00:50:17.213259	2020-06-02 00:50:17.213259
1181	58	3	21	330	2020-06-02 00:50:17.221413	2020-06-02 00:50:17.221413
1182	23	5	21	694	2020-06-02 00:50:17.229528	2020-06-02 00:50:17.229528
1183	77	1	21	472	2020-06-02 00:50:17.23776	2020-06-02 00:50:17.23776
1184	88	5	22	760	2020-06-02 00:50:17.245724	2020-06-02 00:50:17.245724
1185	52	2	22	372	2020-06-02 00:50:17.254098	2020-06-02 00:50:17.254098
1186	76	4	22	542	2020-06-02 00:50:17.262506	2020-06-02 00:50:17.262506
1187	91	3	22	660	2020-06-02 00:50:17.27099	2020-06-02 00:50:17.27099
1188	28	3	22	771	2020-06-02 00:50:17.279117	2020-06-02 00:50:17.279117
1189	69	2	23	701	2020-06-02 00:50:17.287036	2020-06-02 00:50:17.287036
1190	6	5	23	231	2020-06-02 00:50:17.295266	2020-06-02 00:50:17.295266
1191	86	2	23	64	2020-06-02 00:50:17.303117	2020-06-02 00:50:17.303117
1192	75	2	23	127	2020-06-02 00:50:17.311088	2020-06-02 00:50:17.311088
1193	23	3	23	646	2020-06-02 00:50:17.318834	2020-06-02 00:50:17.318834
1194	21	2	24	683	2020-06-02 00:50:17.326955	2020-06-02 00:50:17.326955
1195	66	1	24	519	2020-06-02 00:50:17.334498	2020-06-02 00:50:17.334498
1196	47	4	24	498	2020-06-02 00:50:17.342241	2020-06-02 00:50:17.342241
1197	20	5	24	696	2020-06-02 00:50:17.350083	2020-06-02 00:50:17.350083
1198	3	2	24	446	2020-06-02 00:50:17.358577	2020-06-02 00:50:17.358577
1199	35	2	24	63	2020-06-02 00:50:17.366934	2020-06-02 00:50:17.366934
1200	45	4	24	250	2020-06-02 00:50:17.374667	2020-06-02 00:50:17.374667
1201	66	1	24	785	2020-06-02 00:50:17.382478	2020-06-02 00:50:17.382478
1202	81	2	25	538	2020-06-02 00:50:17.391112	2020-06-02 00:50:17.391112
1203	94	5	25	47	2020-06-02 00:50:17.399812	2020-06-02 00:50:17.399812
1204	68	1	25	325	2020-06-02 00:50:17.40844	2020-06-02 00:50:17.40844
1205	12	2	25	104	2020-06-02 00:50:17.417518	2020-06-02 00:50:17.417518
1206	25	3	26	610	2020-06-02 00:50:17.426134	2020-06-02 00:50:17.426134
1207	86	5	26	576	2020-06-02 00:50:17.438698	2020-06-02 00:50:17.438698
1208	92	1	26	641	2020-06-02 00:50:17.448067	2020-06-02 00:50:17.448067
1209	65	2	26	437	2020-06-02 00:50:17.457161	2020-06-02 00:50:17.457161
1210	42	2	27	216	2020-06-02 00:50:17.466106	2020-06-02 00:50:17.466106
1211	82	1	27	697	2020-06-02 00:50:17.47386	2020-06-02 00:50:17.47386
1212	94	2	27	35	2020-06-02 00:50:17.481762	2020-06-02 00:50:17.481762
1213	50	5	27	333	2020-06-02 00:50:17.489594	2020-06-02 00:50:17.489594
1214	13	2	27	10	2020-06-02 00:50:17.497367	2020-06-02 00:50:17.497367
1215	47	2	27	294	2020-06-02 00:50:17.505045	2020-06-02 00:50:17.505045
1216	16	2	28	561	2020-06-02 00:50:17.513492	2020-06-02 00:50:17.513492
1217	76	1	28	181	2020-06-02 00:50:17.522269	2020-06-02 00:50:17.522269
1218	67	2	28	775	2020-06-02 00:50:17.532568	2020-06-02 00:50:17.532568
1219	66	2	28	719	2020-06-02 00:50:17.542055	2020-06-02 00:50:17.542055
1220	57	1	28	648	2020-06-02 00:50:17.552831	2020-06-02 00:50:17.552831
1221	74	1	28	71	2020-06-02 00:50:17.561856	2020-06-02 00:50:17.561856
1222	27	2	28	537	2020-06-02 00:50:17.57074	2020-06-02 00:50:17.57074
1223	4	2	28	57	2020-06-02 00:50:17.579005	2020-06-02 00:50:17.579005
1224	35	2	28	44	2020-06-02 00:50:17.588261	2020-06-02 00:50:17.588261
1225	12	5	28	217	2020-06-02 00:50:17.596505	2020-06-02 00:50:17.596505
1226	45	1	29	367	2020-06-02 00:50:17.605708	2020-06-02 00:50:17.605708
1227	89	2	29	119	2020-06-02 00:50:17.61374	2020-06-02 00:50:17.61374
1228	35	5	29	709	2020-06-02 00:50:17.622102	2020-06-02 00:50:17.622102
1229	11	3	29	273	2020-06-02 00:50:17.629829	2020-06-02 00:50:17.629829
1230	62	3	30	436	2020-06-02 00:50:17.637757	2020-06-02 00:50:17.637757
1231	59	2	30	506	2020-06-02 00:50:17.645377	2020-06-02 00:50:17.645377
1232	68	3	30	243	2020-06-02 00:50:17.65429	2020-06-02 00:50:17.65429
1233	31	5	30	335	2020-06-02 00:50:17.662651	2020-06-02 00:50:17.662651
1234	3	5	30	445	2020-06-02 00:50:17.671101	2020-06-02 00:50:17.671101
1235	36	5	30	713	2020-06-02 00:50:17.679044	2020-06-02 00:50:17.679044
1236	11	4	30	255	2020-06-02 00:50:17.687284	2020-06-02 00:50:17.687284
1237	36	3	30	708	2020-06-02 00:50:17.695215	2020-06-02 00:50:17.695215
1238	72	3	30	422	2020-06-02 00:50:17.7044	2020-06-02 00:50:17.7044
1239	80	4	30	392	2020-06-02 00:50:17.713583	2020-06-02 00:50:17.713583
1240	63	5	31	167	2020-06-02 00:50:17.721655	2020-06-02 00:50:17.721655
1241	38	1	31	573	2020-06-02 00:50:17.729375	2020-06-02 00:50:17.729375
1242	68	1	31	108	2020-06-02 00:50:17.737112	2020-06-02 00:50:17.737112
1243	96	3	31	645	2020-06-02 00:50:17.747101	2020-06-02 00:50:17.747101
1244	75	4	31	295	2020-06-02 00:50:17.756585	2020-06-02 00:50:17.756585
1245	85	2	31	560	2020-06-02 00:50:17.765556	2020-06-02 00:50:17.765556
1246	76	3	31	312	2020-06-02 00:50:17.774733	2020-06-02 00:50:17.774733
1247	96	1	31	79	2020-06-02 00:50:17.782734	2020-06-02 00:50:17.782734
1248	87	4	31	474	2020-06-02 00:50:17.790619	2020-06-02 00:50:17.790619
1249	79	3	31	767	2020-06-02 00:50:17.79857	2020-06-02 00:50:17.79857
1250	33	4	32	487	2020-06-02 00:50:17.806785	2020-06-02 00:50:17.806785
1251	73	1	32	369	2020-06-02 00:50:17.815088	2020-06-02 00:50:17.815088
1252	84	1	32	198	2020-06-02 00:50:17.824021	2020-06-02 00:50:17.824021
1253	23	5	32	446	2020-06-02 00:50:17.832806	2020-06-02 00:50:17.832806
1254	4	2	33	371	2020-06-02 00:50:17.841776	2020-06-02 00:50:17.841776
1255	25	3	33	722	2020-06-02 00:50:17.849776	2020-06-02 00:50:17.849776
1256	40	4	33	637	2020-06-02 00:50:17.858402	2020-06-02 00:50:17.858402
1257	94	4	34	199	2020-06-02 00:50:17.86672	2020-06-02 00:50:17.86672
1258	97	3	34	344	2020-06-02 00:50:17.874218	2020-06-02 00:50:17.874218
1259	36	3	34	685	2020-06-02 00:50:17.881863	2020-06-02 00:50:17.881863
1260	62	1	34	597	2020-06-02 00:50:17.891073	2020-06-02 00:50:17.891073
1261	5	2	34	617	2020-06-02 00:50:17.904119	2020-06-02 00:50:17.904119
1262	86	4	34	131	2020-06-02 00:50:17.911965	2020-06-02 00:50:17.911965
1263	30	5	34	140	2020-06-02 00:50:17.919991	2020-06-02 00:50:17.919991
1264	43	2	34	340	2020-06-02 00:50:17.929239	2020-06-02 00:50:17.929239
1265	82	4	34	350	2020-06-02 00:50:17.937547	2020-06-02 00:50:17.937547
1266	63	4	35	356	2020-06-02 00:50:17.946811	2020-06-02 00:50:17.946811
1267	47	1	35	517	2020-06-02 00:50:17.954579	2020-06-02 00:50:17.954579
1268	43	1	35	485	2020-06-02 00:50:17.96259	2020-06-02 00:50:17.96259
1269	49	4	35	699	2020-06-02 00:50:17.970754	2020-06-02 00:50:17.970754
1270	81	1	35	23	2020-06-02 00:50:17.978902	2020-06-02 00:50:17.978902
1271	79	3	35	467	2020-06-02 00:50:17.986287	2020-06-02 00:50:17.986287
1272	76	2	36	776	2020-06-02 00:50:17.993531	2020-06-02 00:50:17.993531
1273	53	3	36	628	2020-06-02 00:50:18.000973	2020-06-02 00:50:18.000973
1274	77	5	36	490	2020-06-02 00:50:18.008197	2020-06-02 00:50:18.008197
1275	5	2	36	32	2020-06-02 00:50:18.016107	2020-06-02 00:50:18.016107
1276	22	1	36	526	2020-06-02 00:50:18.023943	2020-06-02 00:50:18.023943
1277	89	5	36	781	2020-06-02 00:50:18.031642	2020-06-02 00:50:18.031642
1278	97	4	36	651	2020-06-02 00:50:18.038936	2020-06-02 00:50:18.038936
1279	98	2	37	119	2020-06-02 00:50:18.04655	2020-06-02 00:50:18.04655
1280	43	1	37	279	2020-06-02 00:50:18.054391	2020-06-02 00:50:18.054391
1281	89	4	37	182	2020-06-02 00:50:18.062423	2020-06-02 00:50:18.062423
1282	40	5	37	618	2020-06-02 00:50:18.070068	2020-06-02 00:50:18.070068
1283	24	4	37	311	2020-06-02 00:50:18.080053	2020-06-02 00:50:18.080053
1284	62	5	37	5	2020-06-02 00:50:18.087536	2020-06-02 00:50:18.087536
1285	84	5	37	779	2020-06-02 00:50:18.095161	2020-06-02 00:50:18.095161
1286	39	1	37	373	2020-06-02 00:50:18.102207	2020-06-02 00:50:18.102207
1287	33	3	37	82	2020-06-02 00:50:18.109622	2020-06-02 00:50:18.109622
1288	6	2	37	225	2020-06-02 00:50:18.116509	2020-06-02 00:50:18.116509
1289	78	2	38	387	2020-06-02 00:50:18.123559	2020-06-02 00:50:18.123559
1290	18	4	38	120	2020-06-02 00:50:18.131095	2020-06-02 00:50:18.131095
1291	32	4	38	298	2020-06-02 00:50:18.138295	2020-06-02 00:50:18.138295
1292	69	1	39	372	2020-06-02 00:50:18.145528	2020-06-02 00:50:18.145528
1293	37	4	40	190	2020-06-02 00:50:18.152747	2020-06-02 00:50:18.152747
1294	65	2	40	44	2020-06-02 00:50:18.159816	2020-06-02 00:50:18.159816
1295	46	3	40	737	2020-06-02 00:50:18.167101	2020-06-02 00:50:18.167101
1296	56	4	40	628	2020-06-02 00:50:18.17473	2020-06-02 00:50:18.17473
1297	24	3	40	798	2020-06-02 00:50:18.181668	2020-06-02 00:50:18.181668
1298	23	4	40	507	2020-06-02 00:50:18.189059	2020-06-02 00:50:18.189059
1299	84	1	40	796	2020-06-02 00:50:18.196554	2020-06-02 00:50:18.196554
1300	61	2	40	132	2020-06-02 00:50:18.204906	2020-06-02 00:50:18.204906
1301	48	1	40	437	2020-06-02 00:50:18.213006	2020-06-02 00:50:18.213006
1302	50	3	41	16	2020-06-02 00:50:18.221141	2020-06-02 00:50:18.221141
1303	100	5	41	69	2020-06-02 00:50:18.228694	2020-06-02 00:50:18.228694
1304	13	3	41	661	2020-06-02 00:50:18.237256	2020-06-02 00:50:18.237256
1305	98	2	41	267	2020-06-02 00:50:18.245873	2020-06-02 00:50:18.245873
1306	16	2	41	563	2020-06-02 00:50:18.254165	2020-06-02 00:50:18.254165
1307	44	5	41	230	2020-06-02 00:50:18.261705	2020-06-02 00:50:18.261705
1308	58	2	41	352	2020-06-02 00:50:18.268938	2020-06-02 00:50:18.268938
1309	18	5	41	14	2020-06-02 00:50:18.27723	2020-06-02 00:50:18.27723
1310	15	2	42	248	2020-06-02 00:50:18.285682	2020-06-02 00:50:18.285682
1311	35	3	42	475	2020-06-02 00:50:18.294133	2020-06-02 00:50:18.294133
1312	11	2	42	584	2020-06-02 00:50:18.302193	2020-06-02 00:50:18.302193
1313	18	5	42	64	2020-06-02 00:50:18.310213	2020-06-02 00:50:18.310213
1314	87	3	42	786	2020-06-02 00:50:18.318114	2020-06-02 00:50:18.318114
1315	10	5	42	461	2020-06-02 00:50:18.326069	2020-06-02 00:50:18.326069
1316	98	1	42	597	2020-06-02 00:50:18.333953	2020-06-02 00:50:18.333953
1317	78	1	42	343	2020-06-02 00:50:18.342233	2020-06-02 00:50:18.342233
1318	11	1	43	67	2020-06-02 00:50:18.350481	2020-06-02 00:50:18.350481
1319	25	2	43	384	2020-06-02 00:50:18.359064	2020-06-02 00:50:18.359064
1320	87	5	44	186	2020-06-02 00:50:18.366953	2020-06-02 00:50:18.366953
1321	60	5	44	419	2020-06-02 00:50:18.375416	2020-06-02 00:50:18.375416
1322	38	5	44	466	2020-06-02 00:50:18.38449	2020-06-02 00:50:18.38449
1323	59	2	44	207	2020-06-02 00:50:18.394258	2020-06-02 00:50:18.394258
1324	74	3	45	105	2020-06-02 00:50:18.403111	2020-06-02 00:50:18.403111
1325	78	5	45	652	2020-06-02 00:50:18.415038	2020-06-02 00:50:18.415038
1326	88	2	45	707	2020-06-02 00:50:18.4243	2020-06-02 00:50:18.4243
1327	30	4	45	536	2020-06-02 00:50:18.432808	2020-06-02 00:50:18.432808
1328	77	1	45	663	2020-06-02 00:50:18.44075	2020-06-02 00:50:18.44075
1329	96	2	46	658	2020-06-02 00:50:18.448767	2020-06-02 00:50:18.448767
1330	59	4	46	569	2020-06-02 00:50:18.456399	2020-06-02 00:50:18.456399
1331	67	1	46	197	2020-06-02 00:50:18.464915	2020-06-02 00:50:18.464915
1332	31	4	46	650	2020-06-02 00:50:18.473163	2020-06-02 00:50:18.473163
1333	22	4	46	367	2020-06-02 00:50:18.481426	2020-06-02 00:50:18.481426
1334	86	2	46	277	2020-06-02 00:50:18.489769	2020-06-02 00:50:18.489769
1335	92	3	46	193	2020-06-02 00:50:18.497752	2020-06-02 00:50:18.497752
1336	72	3	46	60	2020-06-02 00:50:18.505766	2020-06-02 00:50:18.505766
1337	75	5	46	40	2020-06-02 00:50:18.513695	2020-06-02 00:50:18.513695
1338	95	2	47	209	2020-06-02 00:50:18.521759	2020-06-02 00:50:18.521759
1339	72	1	47	736	2020-06-02 00:50:18.529945	2020-06-02 00:50:18.529945
1340	28	2	47	751	2020-06-02 00:50:18.537952	2020-06-02 00:50:18.537952
1341	99	2	47	308	2020-06-02 00:50:18.54642	2020-06-02 00:50:18.54642
1342	40	2	47	287	2020-06-02 00:50:18.555198	2020-06-02 00:50:18.555198
1343	98	1	48	401	2020-06-02 00:50:18.563866	2020-06-02 00:50:18.563866
1344	23	4	48	264	2020-06-02 00:50:18.572861	2020-06-02 00:50:18.572861
1345	15	3	48	711	2020-06-02 00:50:18.581081	2020-06-02 00:50:18.581081
1346	74	5	48	396	2020-06-02 00:50:18.589422	2020-06-02 00:50:18.589422
1347	45	2	48	557	2020-06-02 00:50:18.597915	2020-06-02 00:50:18.597915
1348	23	2	48	367	2020-06-02 00:50:18.607006	2020-06-02 00:50:18.607006
1349	87	2	48	17	2020-06-02 00:50:18.616019	2020-06-02 00:50:18.616019
1350	50	2	49	714	2020-06-02 00:50:18.624869	2020-06-02 00:50:18.624869
1351	29	1	49	370	2020-06-02 00:50:18.633592	2020-06-02 00:50:18.633592
1352	63	4	50	179	2020-06-02 00:50:18.643147	2020-06-02 00:50:18.643147
1353	42	4	50	437	2020-06-02 00:50:18.654277	2020-06-02 00:50:18.654277
1354	37	3	50	287	2020-06-02 00:50:18.663563	2020-06-02 00:50:18.663563
1355	59	2	50	470	2020-06-02 00:50:18.672451	2020-06-02 00:50:18.672451
1356	91	1	50	748	2020-06-02 00:50:18.680679	2020-06-02 00:50:18.680679
1357	56	4	51	269	2020-06-02 00:50:18.689436	2020-06-02 00:50:18.689436
1358	61	3	51	770	2020-06-02 00:50:18.698032	2020-06-02 00:50:18.698032
1359	2	5	51	92	2020-06-02 00:50:18.706041	2020-06-02 00:50:18.706041
1360	20	2	51	418	2020-06-02 00:50:18.714073	2020-06-02 00:50:18.714073
1361	60	4	51	198	2020-06-02 00:50:18.721745	2020-06-02 00:50:18.721745
1362	48	2	52	89	2020-06-02 00:50:18.72946	2020-06-02 00:50:18.72946
1363	82	2	52	314	2020-06-02 00:50:18.737153	2020-06-02 00:50:18.737153
1364	28	4	52	321	2020-06-02 00:50:18.746442	2020-06-02 00:50:18.746442
1365	7	5	52	627	2020-06-02 00:50:18.755582	2020-06-02 00:50:18.755582
1366	22	4	52	629	2020-06-02 00:50:18.763439	2020-06-02 00:50:18.763439
1367	71	4	52	318	2020-06-02 00:50:18.771067	2020-06-02 00:50:18.771067
1368	82	5	52	424	2020-06-02 00:50:18.779072	2020-06-02 00:50:18.779072
1369	23	3	52	206	2020-06-02 00:50:18.787098	2020-06-02 00:50:18.787098
1370	70	4	52	380	2020-06-02 00:50:18.795834	2020-06-02 00:50:18.795834
1371	28	4	53	385	2020-06-02 00:50:18.804486	2020-06-02 00:50:18.804486
1372	38	5	53	541	2020-06-02 00:50:18.812623	2020-06-02 00:50:18.812623
1373	16	3	53	532	2020-06-02 00:50:18.821958	2020-06-02 00:50:18.821958
1374	34	5	53	349	2020-06-02 00:50:18.832017	2020-06-02 00:50:18.832017
1375	14	5	53	14	2020-06-02 00:50:18.842198	2020-06-02 00:50:18.842198
1376	100	3	53	536	2020-06-02 00:50:18.850552	2020-06-02 00:50:18.850552
1377	65	5	53	242	2020-06-02 00:50:18.858842	2020-06-02 00:50:18.858842
1378	5	4	54	308	2020-06-02 00:50:18.86681	2020-06-02 00:50:18.86681
1379	49	4	54	689	2020-06-02 00:50:18.874703	2020-06-02 00:50:18.874703
1380	82	2	55	99	2020-06-02 00:50:18.882915	2020-06-02 00:50:18.882915
1381	59	5	55	790	2020-06-02 00:50:18.89243	2020-06-02 00:50:18.89243
1382	13	5	55	552	2020-06-02 00:50:18.90153	2020-06-02 00:50:18.90153
1383	88	4	55	659	2020-06-02 00:50:18.9099	2020-06-02 00:50:18.9099
1384	87	5	55	338	2020-06-02 00:50:18.917977	2020-06-02 00:50:18.917977
1385	44	1	55	207	2020-06-02 00:50:18.925943	2020-06-02 00:50:18.925943
1386	80	3	55	573	2020-06-02 00:50:18.933813	2020-06-02 00:50:18.933813
1387	92	5	55	730	2020-06-02 00:50:18.942027	2020-06-02 00:50:18.942027
1388	96	4	55	738	2020-06-02 00:50:18.95102	2020-06-02 00:50:18.95102
1389	21	4	55	266	2020-06-02 00:50:18.9603	2020-06-02 00:50:18.9603
1390	62	2	56	123	2020-06-02 00:50:18.968705	2020-06-02 00:50:18.968705
1391	82	5	56	71	2020-06-02 00:50:18.976643	2020-06-02 00:50:18.976643
1392	45	2	57	319	2020-06-02 00:50:18.984889	2020-06-02 00:50:18.984889
1393	63	2	57	168	2020-06-02 00:50:18.994011	2020-06-02 00:50:18.994011
1394	28	4	57	784	2020-06-02 00:50:19.003024	2020-06-02 00:50:19.003024
1395	18	4	57	643	2020-06-02 00:50:19.011638	2020-06-02 00:50:19.011638
1396	47	3	57	671	2020-06-02 00:50:19.01944	2020-06-02 00:50:19.01944
1397	63	3	57	624	2020-06-02 00:50:19.027371	2020-06-02 00:50:19.027371
1398	75	2	57	18	2020-06-02 00:50:19.035468	2020-06-02 00:50:19.035468
1399	82	4	57	629	2020-06-02 00:50:19.043784	2020-06-02 00:50:19.043784
1400	67	1	57	746	2020-06-02 00:50:19.05219	2020-06-02 00:50:19.05219
1401	70	3	58	798	2020-06-02 00:50:19.060385	2020-06-02 00:50:19.060385
1402	36	3	58	700	2020-06-02 00:50:19.068169	2020-06-02 00:50:19.068169
1403	45	5	58	784	2020-06-02 00:50:19.076235	2020-06-02 00:50:19.076235
1404	8	4	58	25	2020-06-02 00:50:19.084064	2020-06-02 00:50:19.084064
1405	48	1	58	15	2020-06-02 00:50:19.092128	2020-06-02 00:50:19.092128
1406	52	5	58	188	2020-06-02 00:50:19.100293	2020-06-02 00:50:19.100293
1407	85	3	59	278	2020-06-02 00:50:19.108434	2020-06-02 00:50:19.108434
1408	42	4	59	359	2020-06-02 00:50:19.116927	2020-06-02 00:50:19.116927
1409	27	2	59	563	2020-06-02 00:50:19.124736	2020-06-02 00:50:19.124736
1410	66	2	59	406	2020-06-02 00:50:19.132454	2020-06-02 00:50:19.132454
1411	55	4	60	637	2020-06-02 00:50:19.140406	2020-06-02 00:50:19.140406
1412	90	2	60	183	2020-06-02 00:50:19.14819	2020-06-02 00:50:19.14819
1413	25	4	60	192	2020-06-02 00:50:19.156783	2020-06-02 00:50:19.156783
1414	79	4	60	343	2020-06-02 00:50:19.164962	2020-06-02 00:50:19.164962
1415	27	2	60	218	2020-06-02 00:50:19.173186	2020-06-02 00:50:19.173186
1416	46	2	60	210	2020-06-02 00:50:19.181272	2020-06-02 00:50:19.181272
1417	64	2	61	730	2020-06-02 00:50:19.189717	2020-06-02 00:50:19.189717
1418	97	4	61	492	2020-06-02 00:50:19.198101	2020-06-02 00:50:19.198101
1419	54	1	62	347	2020-06-02 00:50:19.209461	2020-06-02 00:50:19.209461
1420	29	5	62	282	2020-06-02 00:50:19.220141	2020-06-02 00:50:19.220141
1421	94	2	62	653	2020-06-02 00:50:19.229496	2020-06-02 00:50:19.229496
1422	47	2	62	60	2020-06-02 00:50:19.238042	2020-06-02 00:50:19.238042
1423	74	3	62	477	2020-06-02 00:50:19.246681	2020-06-02 00:50:19.246681
1424	74	5	62	132	2020-06-02 00:50:19.255899	2020-06-02 00:50:19.255899
1425	72	3	62	390	2020-06-02 00:50:19.264116	2020-06-02 00:50:19.264116
1426	7	3	62	115	2020-06-02 00:50:19.272826	2020-06-02 00:50:19.272826
1427	23	2	62	31	2020-06-02 00:50:19.281491	2020-06-02 00:50:19.281491
1428	12	2	63	176	2020-06-02 00:50:19.289499	2020-06-02 00:50:19.289499
1429	20	4	63	138	2020-06-02 00:50:19.297749	2020-06-02 00:50:19.297749
1430	24	5	64	596	2020-06-02 00:50:19.305206	2020-06-02 00:50:19.305206
1431	86	3	64	799	2020-06-02 00:50:19.313766	2020-06-02 00:50:19.313766
1432	60	4	64	113	2020-06-02 00:50:19.321713	2020-06-02 00:50:19.321713
1433	90	4	64	151	2020-06-02 00:50:19.329432	2020-06-02 00:50:19.329432
1434	48	3	65	125	2020-06-02 00:50:19.337252	2020-06-02 00:50:19.337252
1435	56	2	65	213	2020-06-02 00:50:19.345243	2020-06-02 00:50:19.345243
1436	76	4	65	418	2020-06-02 00:50:19.353464	2020-06-02 00:50:19.353464
1437	69	5	65	595	2020-06-02 00:50:19.361795	2020-06-02 00:50:19.361795
1438	63	5	65	89	2020-06-02 00:50:19.370158	2020-06-02 00:50:19.370158
1439	78	3	65	204	2020-06-02 00:50:19.378618	2020-06-02 00:50:19.378618
1440	67	4	65	305	2020-06-02 00:50:19.387444	2020-06-02 00:50:19.387444
1441	56	3	65	291	2020-06-02 00:50:19.396558	2020-06-02 00:50:19.396558
1442	44	5	66	333	2020-06-02 00:50:19.404928	2020-06-02 00:50:19.404928
1443	19	5	66	520	2020-06-02 00:50:19.41343	2020-06-02 00:50:19.41343
1444	49	2	67	258	2020-06-02 00:50:19.422052	2020-06-02 00:50:19.422052
1445	87	2	67	17	2020-06-02 00:50:19.430199	2020-06-02 00:50:19.430199
1446	79	3	67	290	2020-06-02 00:50:19.438534	2020-06-02 00:50:19.438534
1447	75	3	67	152	2020-06-02 00:50:19.446546	2020-06-02 00:50:19.446546
1448	69	3	67	376	2020-06-02 00:50:19.455526	2020-06-02 00:50:19.455526
1449	69	2	67	151	2020-06-02 00:50:19.464656	2020-06-02 00:50:19.464656
1450	58	5	68	538	2020-06-02 00:50:19.474058	2020-06-02 00:50:19.474058
1451	30	2	68	312	2020-06-02 00:50:19.482922	2020-06-02 00:50:19.482922
1452	9	3	68	173	2020-06-02 00:50:19.491782	2020-06-02 00:50:19.491782
1453	97	4	68	744	2020-06-02 00:50:19.500406	2020-06-02 00:50:19.500406
1454	18	3	68	252	2020-06-02 00:50:19.507962	2020-06-02 00:50:19.507962
1455	73	3	68	497	2020-06-02 00:50:19.517274	2020-06-02 00:50:19.517274
1456	54	2	69	268	2020-06-02 00:50:19.525746	2020-06-02 00:50:19.525746
1457	9	3	69	230	2020-06-02 00:50:19.533904	2020-06-02 00:50:19.533904
1458	70	2	69	80	2020-06-02 00:50:19.541959	2020-06-02 00:50:19.541959
1459	37	5	69	48	2020-06-02 00:50:19.549808	2020-06-02 00:50:19.549808
1460	12	3	69	297	2020-06-02 00:50:19.558168	2020-06-02 00:50:19.558168
1461	86	3	69	83	2020-06-02 00:50:19.566636	2020-06-02 00:50:19.566636
1462	31	2	69	560	2020-06-02 00:50:19.574403	2020-06-02 00:50:19.574403
1463	42	2	69	382	2020-06-02 00:50:19.582684	2020-06-02 00:50:19.582684
1464	46	4	69	632	2020-06-02 00:50:19.591136	2020-06-02 00:50:19.591136
1465	50	5	70	343	2020-06-02 00:50:19.59945	2020-06-02 00:50:19.59945
1466	36	4	70	383	2020-06-02 00:50:19.607616	2020-06-02 00:50:19.607616
1467	6	5	70	322	2020-06-02 00:50:19.61636	2020-06-02 00:50:19.61636
1468	73	1	70	728	2020-06-02 00:50:19.625174	2020-06-02 00:50:19.625174
1469	82	3	70	495	2020-06-02 00:50:19.634209	2020-06-02 00:50:19.634209
1470	50	4	70	431	2020-06-02 00:50:19.642822	2020-06-02 00:50:19.642822
1471	9	3	70	114	2020-06-02 00:50:19.6514	2020-06-02 00:50:19.6514
1472	51	3	70	739	2020-06-02 00:50:19.660132	2020-06-02 00:50:19.660132
1473	61	2	71	362	2020-06-02 00:50:19.668446	2020-06-02 00:50:19.668446
1474	57	1	71	245	2020-06-02 00:50:19.67691	2020-06-02 00:50:19.67691
1475	78	5	71	246	2020-06-02 00:50:19.685251	2020-06-02 00:50:19.685251
1476	90	4	71	59	2020-06-02 00:50:19.693505	2020-06-02 00:50:19.693505
1477	41	2	71	617	2020-06-02 00:50:19.701384	2020-06-02 00:50:19.701384
1478	26	3	71	188	2020-06-02 00:50:19.711546	2020-06-02 00:50:19.711546
1479	85	4	72	242	2020-06-02 00:50:19.722112	2020-06-02 00:50:19.722112
1480	24	1	72	530	2020-06-02 00:50:19.7323	2020-06-02 00:50:19.7323
1481	69	1	72	175	2020-06-02 00:50:19.743607	2020-06-02 00:50:19.743607
1482	44	1	73	525	2020-06-02 00:50:19.753473	2020-06-02 00:50:19.753473
1483	78	1	74	769	2020-06-02 00:50:19.764169	2020-06-02 00:50:19.764169
1484	6	4	74	316	2020-06-02 00:50:19.773068	2020-06-02 00:50:19.773068
1485	37	2	74	29	2020-06-02 00:50:19.782592	2020-06-02 00:50:19.782592
1486	11	5	74	616	2020-06-02 00:50:19.791745	2020-06-02 00:50:19.791745
1487	12	4	74	285	2020-06-02 00:50:19.800933	2020-06-02 00:50:19.800933
1488	8	1	74	155	2020-06-02 00:50:19.809669	2020-06-02 00:50:19.809669
1489	79	1	74	531	2020-06-02 00:50:19.817651	2020-06-02 00:50:19.817651
1490	43	3	75	731	2020-06-02 00:50:19.825891	2020-06-02 00:50:19.825891
1491	65	3	75	37	2020-06-02 00:50:19.834073	2020-06-02 00:50:19.834073
1492	10	5	75	153	2020-06-02 00:50:19.842238	2020-06-02 00:50:19.842238
1493	18	2	75	378	2020-06-02 00:50:19.850062	2020-06-02 00:50:19.850062
1494	94	2	75	158	2020-06-02 00:50:19.858015	2020-06-02 00:50:19.858015
1495	10	1	75	773	2020-06-02 00:50:19.865823	2020-06-02 00:50:19.865823
1496	33	3	75	729	2020-06-02 00:50:19.874197	2020-06-02 00:50:19.874197
1497	8	1	75	223	2020-06-02 00:50:19.882546	2020-06-02 00:50:19.882546
1498	70	5	75	503	2020-06-02 00:50:19.891559	2020-06-02 00:50:19.891559
1499	56	1	75	17	2020-06-02 00:50:19.900191	2020-06-02 00:50:19.900191
1500	59	1	76	692	2020-06-02 00:50:19.908527	2020-06-02 00:50:19.908527
1501	20	2	76	599	2020-06-02 00:50:19.916394	2020-06-02 00:50:19.916394
1502	78	5	76	706	2020-06-02 00:50:19.924157	2020-06-02 00:50:19.924157
1503	41	2	76	299	2020-06-02 00:50:19.932136	2020-06-02 00:50:19.932136
1504	75	1	76	627	2020-06-02 00:50:19.940028	2020-06-02 00:50:19.940028
1505	61	5	76	541	2020-06-02 00:50:19.948168	2020-06-02 00:50:19.948168
1506	37	4	76	555	2020-06-02 00:50:19.956448	2020-06-02 00:50:19.956448
1507	36	3	76	431	2020-06-02 00:50:19.964034	2020-06-02 00:50:19.964034
1508	36	1	77	542	2020-06-02 00:50:19.97187	2020-06-02 00:50:19.97187
1509	38	2	77	186	2020-06-02 00:50:19.979878	2020-06-02 00:50:19.979878
1510	90	2	77	732	2020-06-02 00:50:19.989611	2020-06-02 00:50:19.989611
1511	22	1	77	497	2020-06-02 00:50:19.998283	2020-06-02 00:50:19.998283
1512	70	2	77	748	2020-06-02 00:50:20.006101	2020-06-02 00:50:20.006101
1513	89	4	77	455	2020-06-02 00:50:20.014418	2020-06-02 00:50:20.014418
1514	39	4	77	180	2020-06-02 00:50:20.022502	2020-06-02 00:50:20.022502
1515	71	4	77	200	2020-06-02 00:50:20.030528	2020-06-02 00:50:20.030528
1516	70	2	77	214	2020-06-02 00:50:20.038202	2020-06-02 00:50:20.038202
1517	88	5	78	326	2020-06-02 00:50:20.046724	2020-06-02 00:50:20.046724
1518	11	4	78	425	2020-06-02 00:50:20.055418	2020-06-02 00:50:20.055418
1519	20	2	78	94	2020-06-02 00:50:20.064622	2020-06-02 00:50:20.064622
1520	66	2	78	697	2020-06-02 00:50:20.073609	2020-06-02 00:50:20.073609
1521	76	4	78	275	2020-06-02 00:50:20.082781	2020-06-02 00:50:20.082781
1522	46	1	79	612	2020-06-02 00:50:20.091421	2020-06-02 00:50:20.091421
1523	53	3	79	457	2020-06-02 00:50:20.09979	2020-06-02 00:50:20.09979
1524	38	3	79	176	2020-06-02 00:50:20.107758	2020-06-02 00:50:20.107758
1525	60	3	79	594	2020-06-02 00:50:20.115915	2020-06-02 00:50:20.115915
1526	52	1	79	26	2020-06-02 00:50:20.124083	2020-06-02 00:50:20.124083
1527	67	1	79	766	2020-06-02 00:50:20.132177	2020-06-02 00:50:20.132177
1528	79	1	79	36	2020-06-02 00:50:20.140062	2020-06-02 00:50:20.140062
1529	6	1	79	297	2020-06-02 00:50:20.148394	2020-06-02 00:50:20.148394
1530	15	5	80	148	2020-06-02 00:50:20.156768	2020-06-02 00:50:20.156768
1531	47	5	80	617	2020-06-02 00:50:20.164682	2020-06-02 00:50:20.164682
1532	7	2	80	616	2020-06-02 00:50:20.17359	2020-06-02 00:50:20.17359
1533	58	5	80	348	2020-06-02 00:50:20.182814	2020-06-02 00:50:20.182814
1534	29	5	80	321	2020-06-02 00:50:20.191419	2020-06-02 00:50:20.191419
1535	42	1	80	397	2020-06-02 00:50:20.199404	2020-06-02 00:50:20.199404
1536	53	4	81	287	2020-06-02 00:50:20.207436	2020-06-02 00:50:20.207436
1537	66	1	81	646	2020-06-02 00:50:20.215758	2020-06-02 00:50:20.215758
1538	59	4	81	342	2020-06-02 00:50:20.223972	2020-06-02 00:50:20.223972
1539	75	3	82	514	2020-06-02 00:50:20.23517	2020-06-02 00:50:20.23517
1540	67	4	82	781	2020-06-02 00:50:20.2434	2020-06-02 00:50:20.2434
1541	86	4	82	675	2020-06-02 00:50:20.251922	2020-06-02 00:50:20.251922
1542	34	5	83	719	2020-06-02 00:50:20.260886	2020-06-02 00:50:20.260886
1543	93	3	83	489	2020-06-02 00:50:20.269867	2020-06-02 00:50:20.269867
1544	59	5	83	237	2020-06-02 00:50:20.27808	2020-06-02 00:50:20.27808
1545	63	3	83	577	2020-06-02 00:50:20.28711	2020-06-02 00:50:20.28711
1546	93	5	83	769	2020-06-02 00:50:20.298128	2020-06-02 00:50:20.298128
1547	31	1	83	63	2020-06-02 00:50:20.30777	2020-06-02 00:50:20.30777
1548	33	3	83	510	2020-06-02 00:50:20.31596	2020-06-02 00:50:20.31596
1549	67	3	83	676	2020-06-02 00:50:20.324267	2020-06-02 00:50:20.324267
1550	66	4	84	675	2020-06-02 00:50:20.33213	2020-06-02 00:50:20.33213
1551	39	5	84	713	2020-06-02 00:50:20.340246	2020-06-02 00:50:20.340246
1552	42	4	84	453	2020-06-02 00:50:20.348867	2020-06-02 00:50:20.348867
1553	60	2	85	10	2020-06-02 00:50:20.358152	2020-06-02 00:50:20.358152
1554	30	4	85	504	2020-06-02 00:50:20.367146	2020-06-02 00:50:20.367146
1555	44	5	85	286	2020-06-02 00:50:20.375809	2020-06-02 00:50:20.375809
1556	64	3	86	790	2020-06-02 00:50:20.38415	2020-06-02 00:50:20.38415
1557	80	2	86	468	2020-06-02 00:50:20.393234	2020-06-02 00:50:20.393234
1558	100	4	86	409	2020-06-02 00:50:20.402193	2020-06-02 00:50:20.402193
1559	1	4	86	113	2020-06-02 00:50:20.410833	2020-06-02 00:50:20.410833
1560	80	5	86	3	2020-06-02 00:50:20.419229	2020-06-02 00:50:20.419229
1561	18	1	86	478	2020-06-02 00:50:20.427392	2020-06-02 00:50:20.427392
1562	95	4	86	276	2020-06-02 00:50:20.435268	2020-06-02 00:50:20.435268
1563	5	5	86	519	2020-06-02 00:50:20.443807	2020-06-02 00:50:20.443807
1564	3	3	86	476	2020-06-02 00:50:20.452466	2020-06-02 00:50:20.452466
1565	24	1	86	175	2020-06-02 00:50:20.460919	2020-06-02 00:50:20.460919
1566	88	2	87	34	2020-06-02 00:50:20.469734	2020-06-02 00:50:20.469734
1567	68	5	87	793	2020-06-02 00:50:20.477956	2020-06-02 00:50:20.477956
1568	9	1	87	556	2020-06-02 00:50:20.486857	2020-06-02 00:50:20.486857
1569	52	4	87	261	2020-06-02 00:50:20.495145	2020-06-02 00:50:20.495145
1570	39	3	88	668	2020-06-02 00:50:20.503162	2020-06-02 00:50:20.503162
1571	100	5	88	789	2020-06-02 00:50:20.510693	2020-06-02 00:50:20.510693
1572	60	1	88	51	2020-06-02 00:50:20.518811	2020-06-02 00:50:20.518811
1573	15	2	88	348	2020-06-02 00:50:20.527467	2020-06-02 00:50:20.527467
1574	90	5	88	187	2020-06-02 00:50:20.535662	2020-06-02 00:50:20.535662
1575	92	3	88	444	2020-06-02 00:50:20.544	2020-06-02 00:50:20.544
1576	59	5	88	523	2020-06-02 00:50:20.552418	2020-06-02 00:50:20.552418
1577	88	2	88	215	2020-06-02 00:50:20.561558	2020-06-02 00:50:20.561558
1578	65	1	88	722	2020-06-02 00:50:20.570043	2020-06-02 00:50:20.570043
1579	76	1	88	162	2020-06-02 00:50:20.578087	2020-06-02 00:50:20.578087
1580	46	2	89	406	2020-06-02 00:50:20.586296	2020-06-02 00:50:20.586296
1581	13	5	89	539	2020-06-02 00:50:20.59495	2020-06-02 00:50:20.59495
1582	60	5	90	607	2020-06-02 00:50:20.603435	2020-06-02 00:50:20.603435
1583	22	5	90	542	2020-06-02 00:50:20.611442	2020-06-02 00:50:20.611442
1584	71	1	90	439	2020-06-02 00:50:20.619539	2020-06-02 00:50:20.619539
1585	99	2	90	563	2020-06-02 00:50:20.627723	2020-06-02 00:50:20.627723
1586	72	1	90	487	2020-06-02 00:50:20.63588	2020-06-02 00:50:20.63588
1587	44	3	90	136	2020-06-02 00:50:20.644173	2020-06-02 00:50:20.644173
1588	42	5	90	85	2020-06-02 00:50:20.655109	2020-06-02 00:50:20.655109
1589	30	3	91	429	2020-06-02 00:50:20.664434	2020-06-02 00:50:20.664434
1590	90	4	91	223	2020-06-02 00:50:20.672661	2020-06-02 00:50:20.672661
1591	13	4	91	604	2020-06-02 00:50:20.681278	2020-06-02 00:50:20.681278
1592	30	5	91	116	2020-06-02 00:50:20.692168	2020-06-02 00:50:20.692168
1593	65	2	92	289	2020-06-02 00:50:20.70079	2020-06-02 00:50:20.70079
1594	88	5	92	601	2020-06-02 00:50:20.70913	2020-06-02 00:50:20.70913
1595	16	4	92	96	2020-06-02 00:50:20.717892	2020-06-02 00:50:20.717892
1596	63	2	92	313	2020-06-02 00:50:20.726605	2020-06-02 00:50:20.726605
1597	22	4	92	13	2020-06-02 00:50:20.734968	2020-06-02 00:50:20.734968
1598	85	1	92	797	2020-06-02 00:50:20.743119	2020-06-02 00:50:20.743119
1599	35	4	92	574	2020-06-02 00:50:20.752156	2020-06-02 00:50:20.752156
1600	42	5	92	231	2020-06-02 00:50:20.761267	2020-06-02 00:50:20.761267
1601	41	1	93	164	2020-06-02 00:50:20.769902	2020-06-02 00:50:20.769902
1602	56	5	93	461	2020-06-02 00:50:20.778045	2020-06-02 00:50:20.778045
1603	31	3	93	69	2020-06-02 00:50:20.786905	2020-06-02 00:50:20.786905
1604	40	4	93	314	2020-06-02 00:50:20.79487	2020-06-02 00:50:20.79487
1605	31	1	93	250	2020-06-02 00:50:20.802767	2020-06-02 00:50:20.802767
1606	61	5	93	690	2020-06-02 00:50:20.811126	2020-06-02 00:50:20.811126
1607	34	1	93	176	2020-06-02 00:50:20.819577	2020-06-02 00:50:20.819577
1608	49	3	93	629	2020-06-02 00:50:20.82864	2020-06-02 00:50:20.82864
1609	1	3	93	297	2020-06-02 00:50:20.83708	2020-06-02 00:50:20.83708
1610	61	2	93	502	2020-06-02 00:50:20.845305	2020-06-02 00:50:20.845305
1611	12	1	94	167	2020-06-02 00:50:20.854004	2020-06-02 00:50:20.854004
1612	66	3	94	635	2020-06-02 00:50:20.862906	2020-06-02 00:50:20.862906
1613	43	5	94	593	2020-06-02 00:50:20.871816	2020-06-02 00:50:20.871816
1614	39	1	94	158	2020-06-02 00:50:20.880535	2020-06-02 00:50:20.880535
1615	14	5	94	753	2020-06-02 00:50:20.889266	2020-06-02 00:50:20.889266
1616	15	3	94	427	2020-06-02 00:50:20.899035	2020-06-02 00:50:20.899035
1617	99	1	94	276	2020-06-02 00:50:20.908529	2020-06-02 00:50:20.908529
1618	36	2	94	580	2020-06-02 00:50:20.91816	2020-06-02 00:50:20.91816
1619	16	4	94	115	2020-06-02 00:50:20.927395	2020-06-02 00:50:20.927395
1620	9	3	94	778	2020-06-02 00:50:20.937417	2020-06-02 00:50:20.937417
1621	71	1	95	559	2020-06-02 00:50:20.947126	2020-06-02 00:50:20.947126
1622	62	5	95	343	2020-06-02 00:50:20.956968	2020-06-02 00:50:20.956968
1623	54	1	95	781	2020-06-02 00:50:20.966971	2020-06-02 00:50:20.966971
1624	28	5	95	417	2020-06-02 00:50:20.977428	2020-06-02 00:50:20.977428
1625	68	2	95	556	2020-06-02 00:50:20.988105	2020-06-02 00:50:20.988105
1626	28	5	95	689	2020-06-02 00:50:20.998897	2020-06-02 00:50:20.998897
1627	34	4	95	568	2020-06-02 00:50:21.008373	2020-06-02 00:50:21.008373
1628	71	3	95	552	2020-06-02 00:50:21.01774	2020-06-02 00:50:21.01774
1629	75	3	95	388	2020-06-02 00:50:21.027504	2020-06-02 00:50:21.027504
1630	90	4	96	142	2020-06-02 00:50:21.037214	2020-06-02 00:50:21.037214
1631	76	4	97	697	2020-06-02 00:50:21.046641	2020-06-02 00:50:21.046641
1632	20	5	97	127	2020-06-02 00:50:21.05549	2020-06-02 00:50:21.05549
1633	18	3	97	610	2020-06-02 00:50:21.064613	2020-06-02 00:50:21.064613
1634	52	4	97	698	2020-06-02 00:50:21.073784	2020-06-02 00:50:21.073784
1635	11	1	97	44	2020-06-02 00:50:21.08342	2020-06-02 00:50:21.08342
1636	59	4	97	231	2020-06-02 00:50:21.092826	2020-06-02 00:50:21.092826
1637	48	1	97	780	2020-06-02 00:50:21.102034	2020-06-02 00:50:21.102034
1638	98	2	98	710	2020-06-02 00:50:21.112449	2020-06-02 00:50:21.112449
1639	52	5	98	165	2020-06-02 00:50:21.122688	2020-06-02 00:50:21.122688
1640	43	3	98	69	2020-06-02 00:50:21.131862	2020-06-02 00:50:21.131862
1641	94	2	98	27	2020-06-02 00:50:21.141535	2020-06-02 00:50:21.141535
1642	94	2	98	143	2020-06-02 00:50:21.161959	2020-06-02 00:50:21.161959
1643	77	3	98	331	2020-06-02 00:50:21.174023	2020-06-02 00:50:21.174023
1644	79	1	98	602	2020-06-02 00:50:21.183646	2020-06-02 00:50:21.183646
1645	93	4	98	8	2020-06-02 00:50:21.193785	2020-06-02 00:50:21.193785
1646	38	2	98	727	2020-06-02 00:50:21.202192	2020-06-02 00:50:21.202192
1647	58	4	99	665	2020-06-02 00:50:21.210435	2020-06-02 00:50:21.210435
1648	56	1	99	350	2020-06-02 00:50:21.218376	2020-06-02 00:50:21.218376
1649	8	3	100	71	2020-06-02 00:50:21.226425	2020-06-02 00:50:21.226425
1650	80	2	100	142	2020-06-02 00:50:21.234438	2020-06-02 00:50:21.234438
1651	3	1	100	219	2020-06-02 00:50:21.242441	2020-06-02 00:50:21.242441
1652	89	1	100	759	2020-06-02 00:50:21.250854	2020-06-02 00:50:21.250854
1653	98	1	101	581	2020-06-02 00:50:21.259947	2020-06-02 00:50:21.259947
1654	10	4	101	126	2020-06-02 00:50:21.268845	2020-06-02 00:50:21.268845
1655	62	5	101	525	2020-06-02 00:50:21.277445	2020-06-02 00:50:21.277445
1656	98	3	101	482	2020-06-02 00:50:21.286269	2020-06-02 00:50:21.286269
1657	29	1	101	383	2020-06-02 00:50:21.294593	2020-06-02 00:50:21.294593
1658	99	2	101	662	2020-06-02 00:50:21.302765	2020-06-02 00:50:21.302765
1659	76	2	101	540	2020-06-02 00:50:21.311121	2020-06-02 00:50:21.311121
1660	18	2	101	373	2020-06-02 00:50:21.31881	2020-06-02 00:50:21.31881
1661	46	1	102	95	2020-06-02 00:50:21.326413	2020-06-02 00:50:21.326413
1662	16	1	102	248	2020-06-02 00:50:21.333892	2020-06-02 00:50:21.333892
1663	70	1	103	315	2020-06-02 00:50:21.341762	2020-06-02 00:50:21.341762
1664	80	5	103	725	2020-06-02 00:50:21.349766	2020-06-02 00:50:21.349766
1665	79	3	103	58	2020-06-02 00:50:21.357972	2020-06-02 00:50:21.357972
1666	18	4	103	137	2020-06-02 00:50:21.365902	2020-06-02 00:50:21.365902
1667	6	3	104	110	2020-06-02 00:50:21.373809	2020-06-02 00:50:21.373809
1668	80	2	104	219	2020-06-02 00:50:21.381938	2020-06-02 00:50:21.381938
1669	80	5	104	645	2020-06-02 00:50:21.390752	2020-06-02 00:50:21.390752
1670	23	3	104	483	2020-06-02 00:50:21.399698	2020-06-02 00:50:21.399698
1671	52	2	104	385	2020-06-02 00:50:21.407902	2020-06-02 00:50:21.407902
1672	81	2	104	50	2020-06-02 00:50:21.415699	2020-06-02 00:50:21.415699
1673	16	1	105	178	2020-06-02 00:50:21.4241	2020-06-02 00:50:21.4241
1674	98	3	106	42	2020-06-02 00:50:21.432277	2020-06-02 00:50:21.432277
1675	84	4	106	372	2020-06-02 00:50:21.440047	2020-06-02 00:50:21.440047
1676	62	5	106	553	2020-06-02 00:50:21.447766	2020-06-02 00:50:21.447766
1677	33	2	106	572	2020-06-02 00:50:21.455752	2020-06-02 00:50:21.455752
1678	37	1	106	77	2020-06-02 00:50:21.463494	2020-06-02 00:50:21.463494
1679	70	1	107	247	2020-06-02 00:50:21.473139	2020-06-02 00:50:21.473139
1680	84	5	108	149	2020-06-02 00:50:21.482204	2020-06-02 00:50:21.482204
1681	46	1	109	567	2020-06-02 00:50:21.492069	2020-06-02 00:50:21.492069
1682	70	4	109	648	2020-06-02 00:50:21.502514	2020-06-02 00:50:21.502514
1683	90	3	109	236	2020-06-02 00:50:21.513743	2020-06-02 00:50:21.513743
1684	34	3	109	399	2020-06-02 00:50:21.525661	2020-06-02 00:50:21.525661
1685	28	4	109	149	2020-06-02 00:50:21.538838	2020-06-02 00:50:21.538838
1686	42	3	109	625	2020-06-02 00:50:21.548363	2020-06-02 00:50:21.548363
1687	51	2	109	797	2020-06-02 00:50:21.558227	2020-06-02 00:50:21.558227
1688	19	1	109	712	2020-06-02 00:50:21.56744	2020-06-02 00:50:21.56744
1689	31	3	109	329	2020-06-02 00:50:21.576268	2020-06-02 00:50:21.576268
1690	24	5	110	715	2020-06-02 00:50:21.584947	2020-06-02 00:50:21.584947
1691	3	2	110	612	2020-06-02 00:50:21.592841	2020-06-02 00:50:21.592841
1692	68	5	110	212	2020-06-02 00:50:21.600972	2020-06-02 00:50:21.600972
1693	99	4	110	409	2020-06-02 00:50:21.608991	2020-06-02 00:50:21.608991
1694	2	5	110	592	2020-06-02 00:50:21.617295	2020-06-02 00:50:21.617295
1695	83	2	110	479	2020-06-02 00:50:21.626175	2020-06-02 00:50:21.626175
1696	39	1	110	786	2020-06-02 00:50:21.634976	2020-06-02 00:50:21.634976
1697	34	4	110	293	2020-06-02 00:50:21.644027	2020-06-02 00:50:21.644027
1698	7	5	111	362	2020-06-02 00:50:21.652432	2020-06-02 00:50:21.652432
1699	88	2	111	417	2020-06-02 00:50:21.660544	2020-06-02 00:50:21.660544
1700	36	3	111	645	2020-06-02 00:50:21.668816	2020-06-02 00:50:21.668816
1701	70	1	111	594	2020-06-02 00:50:21.676767	2020-06-02 00:50:21.676767
1702	14	4	111	411	2020-06-02 00:50:21.684749	2020-06-02 00:50:21.684749
1703	64	2	111	535	2020-06-02 00:50:21.693031	2020-06-02 00:50:21.693031
1704	16	2	111	721	2020-06-02 00:50:21.701208	2020-06-02 00:50:21.701208
1705	80	4	111	705	2020-06-02 00:50:21.709231	2020-06-02 00:50:21.709231
1706	32	4	111	102	2020-06-02 00:50:21.717403	2020-06-02 00:50:21.717403
1707	63	3	112	620	2020-06-02 00:50:21.7254	2020-06-02 00:50:21.7254
1708	59	5	112	454	2020-06-02 00:50:21.734449	2020-06-02 00:50:21.734449
1709	22	2	112	543	2020-06-02 00:50:21.74269	2020-06-02 00:50:21.74269
1710	44	4	112	143	2020-06-02 00:50:21.793611	2020-06-02 00:50:21.793611
1711	30	4	112	108	2020-06-02 00:50:21.804679	2020-06-02 00:50:21.804679
1712	38	4	112	374	2020-06-02 00:50:21.815034	2020-06-02 00:50:21.815034
1713	65	3	112	561	2020-06-02 00:50:21.823782	2020-06-02 00:50:21.823782
1714	11	4	112	446	2020-06-02 00:50:21.831938	2020-06-02 00:50:21.831938
1715	62	3	112	153	2020-06-02 00:50:21.840429	2020-06-02 00:50:21.840429
1716	99	2	112	644	2020-06-02 00:50:21.849256	2020-06-02 00:50:21.849256
1717	73	5	113	229	2020-06-02 00:50:21.857239	2020-06-02 00:50:21.857239
1718	9	2	113	603	2020-06-02 00:50:21.865915	2020-06-02 00:50:21.865915
1719	37	2	113	799	2020-06-02 00:50:21.875024	2020-06-02 00:50:21.875024
1720	94	1	113	605	2020-06-02 00:50:21.883778	2020-06-02 00:50:21.883778
1721	11	5	113	746	2020-06-02 00:50:21.893567	2020-06-02 00:50:21.893567
1722	29	3	113	706	2020-06-02 00:50:21.902928	2020-06-02 00:50:21.902928
1723	62	2	113	668	2020-06-02 00:50:21.911254	2020-06-02 00:50:21.911254
1724	33	3	113	724	2020-06-02 00:50:21.919931	2020-06-02 00:50:21.919931
1725	11	4	113	116	2020-06-02 00:50:21.928095	2020-06-02 00:50:21.928095
1726	56	4	114	492	2020-06-02 00:50:21.936117	2020-06-02 00:50:21.936117
1727	58	5	115	722	2020-06-02 00:50:21.943934	2020-06-02 00:50:21.943934
1728	57	3	116	412	2020-06-02 00:50:21.951966	2020-06-02 00:50:21.951966
1729	30	3	116	115	2020-06-02 00:50:21.95973	2020-06-02 00:50:21.95973
1730	55	2	117	438	2020-06-02 00:50:21.967515	2020-06-02 00:50:21.967515
1731	10	4	117	758	2020-06-02 00:50:21.975218	2020-06-02 00:50:21.975218
1732	67	3	117	475	2020-06-02 00:50:21.983015	2020-06-02 00:50:21.983015
1733	27	2	117	586	2020-06-02 00:50:21.991116	2020-06-02 00:50:21.991116
1734	53	3	117	678	2020-06-02 00:50:21.999504	2020-06-02 00:50:21.999504
1735	23	1	118	141	2020-06-02 00:50:22.009059	2020-06-02 00:50:22.009059
1736	12	2	118	799	2020-06-02 00:50:22.018232	2020-06-02 00:50:22.018232
1737	25	5	118	262	2020-06-02 00:50:22.026995	2020-06-02 00:50:22.026995
1738	32	1	118	78	2020-06-02 00:50:22.036431	2020-06-02 00:50:22.036431
1739	83	4	119	643	2020-06-02 00:50:22.045043	2020-06-02 00:50:22.045043
1740	4	4	119	597	2020-06-02 00:50:22.05299	2020-06-02 00:50:22.05299
1741	89	1	119	314	2020-06-02 00:50:22.060984	2020-06-02 00:50:22.060984
1742	72	3	119	591	2020-06-02 00:50:22.069299	2020-06-02 00:50:22.069299
1743	92	2	120	287	2020-06-02 00:50:22.077392	2020-06-02 00:50:22.077392
1744	37	2	120	752	2020-06-02 00:50:22.086549	2020-06-02 00:50:22.086549
1745	92	3	120	702	2020-06-02 00:50:22.095757	2020-06-02 00:50:22.095757
1746	55	5	120	322	2020-06-02 00:50:22.104941	2020-06-02 00:50:22.104941
1747	44	1	120	238	2020-06-02 00:50:22.113814	2020-06-02 00:50:22.113814
1748	28	4	120	614	2020-06-02 00:50:22.123287	2020-06-02 00:50:22.123287
1749	77	3	120	583	2020-06-02 00:50:22.131282	2020-06-02 00:50:22.131282
1750	17	1	120	327	2020-06-02 00:50:22.139476	2020-06-02 00:50:22.139476
1751	77	1	121	119	2020-06-02 00:50:22.147799	2020-06-02 00:50:22.147799
1752	38	5	122	67	2020-06-02 00:50:22.156625	2020-06-02 00:50:22.156625
1753	99	5	122	644	2020-06-02 00:50:22.165016	2020-06-02 00:50:22.165016
1754	1	5	122	305	2020-06-02 00:50:22.174223	2020-06-02 00:50:22.174223
1755	47	5	123	626	2020-06-02 00:50:22.182425	2020-06-02 00:50:22.182425
1756	8	3	123	111	2020-06-02 00:50:22.19141	2020-06-02 00:50:22.19141
1757	12	1	124	251	2020-06-02 00:50:22.199195	2020-06-02 00:50:22.199195
1758	81	3	124	518	2020-06-02 00:50:22.207045	2020-06-02 00:50:22.207045
1759	56	4	124	58	2020-06-02 00:50:22.215395	2020-06-02 00:50:22.215395
1760	59	2	124	753	2020-06-02 00:50:22.223254	2020-06-02 00:50:22.223254
1761	79	2	124	632	2020-06-02 00:50:22.232585	2020-06-02 00:50:22.232585
1762	34	4	124	63	2020-06-02 00:50:22.240946	2020-06-02 00:50:22.240946
1763	74	2	124	738	2020-06-02 00:50:22.249558	2020-06-02 00:50:22.249558
1764	19	5	124	93	2020-06-02 00:50:22.258539	2020-06-02 00:50:22.258539
1765	6	3	125	196	2020-06-02 00:50:22.267644	2020-06-02 00:50:22.267644
1766	64	1	125	709	2020-06-02 00:50:22.276721	2020-06-02 00:50:22.276721
1767	71	3	125	70	2020-06-02 00:50:22.285598	2020-06-02 00:50:22.285598
1768	44	2	125	698	2020-06-02 00:50:22.293724	2020-06-02 00:50:22.293724
1769	20	3	125	710	2020-06-02 00:50:22.301804	2020-06-02 00:50:22.301804
1770	74	2	126	571	2020-06-02 00:50:22.309494	2020-06-02 00:50:22.309494
1771	6	2	126	316	2020-06-02 00:50:22.317162	2020-06-02 00:50:22.317162
1772	25	5	126	708	2020-06-02 00:50:22.325005	2020-06-02 00:50:22.325005
1773	67	5	126	483	2020-06-02 00:50:22.332672	2020-06-02 00:50:22.332672
1774	58	1	126	347	2020-06-02 00:50:22.340091	2020-06-02 00:50:22.340091
1775	11	3	126	389	2020-06-02 00:50:22.34778	2020-06-02 00:50:22.34778
1776	60	3	126	505	2020-06-02 00:50:22.355768	2020-06-02 00:50:22.355768
1777	43	2	127	103	2020-06-02 00:50:22.36409	2020-06-02 00:50:22.36409
1778	89	3	127	23	2020-06-02 00:50:22.371978	2020-06-02 00:50:22.371978
1779	36	3	128	619	2020-06-02 00:50:22.380125	2020-06-02 00:50:22.380125
1780	18	3	128	666	2020-06-02 00:50:22.388507	2020-06-02 00:50:22.388507
1781	57	3	128	770	2020-06-02 00:50:22.398909	2020-06-02 00:50:22.398909
1782	74	5	128	230	2020-06-02 00:50:22.407614	2020-06-02 00:50:22.407614
1783	20	2	128	583	2020-06-02 00:50:22.416754	2020-06-02 00:50:22.416754
1784	38	4	128	616	2020-06-02 00:50:22.425707	2020-06-02 00:50:22.425707
1785	53	3	129	748	2020-06-02 00:50:22.433856	2020-06-02 00:50:22.433856
1786	5	4	129	421	2020-06-02 00:50:22.442108	2020-06-02 00:50:22.442108
1787	32	3	129	78	2020-06-02 00:50:22.449897	2020-06-02 00:50:22.449897
1788	78	3	129	36	2020-06-02 00:50:22.457857	2020-06-02 00:50:22.457857
1789	79	4	129	671	2020-06-02 00:50:22.471709	2020-06-02 00:50:22.471709
1790	86	4	129	617	2020-06-02 00:50:22.481287	2020-06-02 00:50:22.481287
1791	51	5	129	153	2020-06-02 00:50:22.490421	2020-06-02 00:50:22.490421
1792	49	3	129	107	2020-06-02 00:50:22.499429	2020-06-02 00:50:22.499429
1793	17	2	129	561	2020-06-02 00:50:22.507395	2020-06-02 00:50:22.507395
1794	90	4	129	530	2020-06-02 00:50:22.5152	2020-06-02 00:50:22.5152
1795	10	2	130	218	2020-06-02 00:50:22.523205	2020-06-02 00:50:22.523205
1796	23	3	130	474	2020-06-02 00:50:22.532029	2020-06-02 00:50:22.532029
1797	71	2	130	569	2020-06-02 00:50:22.540478	2020-06-02 00:50:22.540478
1798	98	1	131	611	2020-06-02 00:50:22.548984	2020-06-02 00:50:22.548984
1799	18	1	131	277	2020-06-02 00:50:22.557892	2020-06-02 00:50:22.557892
1800	67	5	131	236	2020-06-02 00:50:22.566794	2020-06-02 00:50:22.566794
1801	83	2	131	713	2020-06-02 00:50:22.575827	2020-06-02 00:50:22.575827
1802	88	4	131	248	2020-06-02 00:50:22.583739	2020-06-02 00:50:22.583739
1803	27	2	131	764	2020-06-02 00:50:22.592034	2020-06-02 00:50:22.592034
1804	97	3	131	69	2020-06-02 00:50:22.600819	2020-06-02 00:50:22.600819
1805	31	5	131	435	2020-06-02 00:50:22.609646	2020-06-02 00:50:22.609646
1806	30	1	131	298	2020-06-02 00:50:22.618547	2020-06-02 00:50:22.618547
1807	33	4	131	56	2020-06-02 00:50:22.627237	2020-06-02 00:50:22.627237
1808	87	2	132	26	2020-06-02 00:50:22.636187	2020-06-02 00:50:22.636187
1809	27	4	132	3	2020-06-02 00:50:22.644178	2020-06-02 00:50:22.644178
1810	57	3	132	260	2020-06-02 00:50:22.652168	2020-06-02 00:50:22.652168
1811	100	5	133	246	2020-06-02 00:50:22.660929	2020-06-02 00:50:22.660929
1812	19	3	133	467	2020-06-02 00:50:22.66887	2020-06-02 00:50:22.66887
1813	4	2	133	440	2020-06-02 00:50:22.676737	2020-06-02 00:50:22.676737
1814	10	5	133	14	2020-06-02 00:50:22.685436	2020-06-02 00:50:22.685436
1815	20	5	133	266	2020-06-02 00:50:22.693976	2020-06-02 00:50:22.693976
1816	1	1	133	139	2020-06-02 00:50:22.702567	2020-06-02 00:50:22.702567
1817	39	3	133	412	2020-06-02 00:50:22.710109	2020-06-02 00:50:22.710109
1818	66	5	134	286	2020-06-02 00:50:22.717791	2020-06-02 00:50:22.717791
1819	28	3	134	533	2020-06-02 00:50:22.72592	2020-06-02 00:50:22.72592
1820	60	2	134	624	2020-06-02 00:50:22.7336	2020-06-02 00:50:22.7336
1821	84	4	135	298	2020-06-02 00:50:22.742446	2020-06-02 00:50:22.742446
1822	15	4	136	153	2020-06-02 00:50:22.750915	2020-06-02 00:50:22.750915
1823	45	1	136	431	2020-06-02 00:50:22.759443	2020-06-02 00:50:22.759443
1824	85	4	136	594	2020-06-02 00:50:22.767465	2020-06-02 00:50:22.767465
1825	86	2	136	182	2020-06-02 00:50:22.776418	2020-06-02 00:50:22.776418
1826	80	4	136	749	2020-06-02 00:50:22.785581	2020-06-02 00:50:22.785581
1827	83	3	136	696	2020-06-02 00:50:22.793822	2020-06-02 00:50:22.793822
1828	88	1	136	260	2020-06-02 00:50:22.80198	2020-06-02 00:50:22.80198
1829	26	5	136	267	2020-06-02 00:50:22.810126	2020-06-02 00:50:22.810126
1830	55	5	136	625	2020-06-02 00:50:22.818394	2020-06-02 00:50:22.818394
1831	3	2	136	645	2020-06-02 00:50:22.826604	2020-06-02 00:50:22.826604
1832	60	3	137	354	2020-06-02 00:50:22.835275	2020-06-02 00:50:22.835275
1833	81	1	137	618	2020-06-02 00:50:22.843167	2020-06-02 00:50:22.843167
1834	53	1	137	460	2020-06-02 00:50:22.850898	2020-06-02 00:50:22.850898
1835	68	5	137	477	2020-06-02 00:50:22.858691	2020-06-02 00:50:22.858691
1836	81	2	137	647	2020-06-02 00:50:22.866573	2020-06-02 00:50:22.866573
1837	91	2	137	400	2020-06-02 00:50:22.87563	2020-06-02 00:50:22.87563
1838	32	1	137	697	2020-06-02 00:50:22.883727	2020-06-02 00:50:22.883727
1839	43	1	138	381	2020-06-02 00:50:22.892007	2020-06-02 00:50:22.892007
1840	42	5	138	39	2020-06-02 00:50:22.901437	2020-06-02 00:50:22.901437
1841	18	3	138	679	2020-06-02 00:50:22.909671	2020-06-02 00:50:22.909671
1842	49	2	139	539	2020-06-02 00:50:22.920123	2020-06-02 00:50:22.920123
1843	10	5	139	444	2020-06-02 00:50:22.929948	2020-06-02 00:50:22.929948
1844	15	3	139	508	2020-06-02 00:50:22.938183	2020-06-02 00:50:22.938183
1845	90	5	139	635	2020-06-02 00:50:22.94594	2020-06-02 00:50:22.94594
1846	97	5	139	769	2020-06-02 00:50:22.953608	2020-06-02 00:50:22.953608
1847	86	2	139	633	2020-06-02 00:50:22.962403	2020-06-02 00:50:22.962403
1848	95	5	139	618	2020-06-02 00:50:22.970985	2020-06-02 00:50:22.970985
1849	84	2	139	2	2020-06-02 00:50:22.97906	2020-06-02 00:50:22.97906
1850	1	4	140	150	2020-06-02 00:50:22.987012	2020-06-02 00:50:22.987012
1851	33	3	140	36	2020-06-02 00:50:22.996263	2020-06-02 00:50:22.996263
1852	73	5	140	491	2020-06-02 00:50:23.004745	2020-06-02 00:50:23.004745
1853	71	5	140	469	2020-06-02 00:50:23.013449	2020-06-02 00:50:23.013449
1854	29	4	140	398	2020-06-02 00:50:23.021986	2020-06-02 00:50:23.021986
1855	54	5	140	600	2020-06-02 00:50:23.029986	2020-06-02 00:50:23.029986
1856	19	4	140	347	2020-06-02 00:50:23.038071	2020-06-02 00:50:23.038071
1857	18	3	140	388	2020-06-02 00:50:23.047086	2020-06-02 00:50:23.047086
1858	1	1	141	567	2020-06-02 00:50:23.055437	2020-06-02 00:50:23.055437
1859	96	2	142	598	2020-06-02 00:50:23.063433	2020-06-02 00:50:23.063433
1860	29	3	143	419	2020-06-02 00:50:23.071422	2020-06-02 00:50:23.071422
1861	4	4	143	627	2020-06-02 00:50:23.079182	2020-06-02 00:50:23.079182
1862	92	5	143	667	2020-06-02 00:50:23.087075	2020-06-02 00:50:23.087075
1863	86	5	143	218	2020-06-02 00:50:23.094996	2020-06-02 00:50:23.094996
1864	79	2	143	729	2020-06-02 00:50:23.102735	2020-06-02 00:50:23.102735
1865	82	2	143	636	2020-06-02 00:50:23.110407	2020-06-02 00:50:23.110407
1866	87	1	143	213	2020-06-02 00:50:23.118401	2020-06-02 00:50:23.118401
1867	53	2	144	441	2020-06-02 00:50:23.126428	2020-06-02 00:50:23.126428
1868	65	3	144	543	2020-06-02 00:50:23.13463	2020-06-02 00:50:23.13463
1869	69	1	144	172	2020-06-02 00:50:23.142993	2020-06-02 00:50:23.142993
1870	23	4	144	283	2020-06-02 00:50:23.151398	2020-06-02 00:50:23.151398
1871	19	1	144	164	2020-06-02 00:50:23.159737	2020-06-02 00:50:23.159737
1872	79	2	144	730	2020-06-02 00:50:23.167864	2020-06-02 00:50:23.167864
1873	80	5	144	679	2020-06-02 00:50:23.175891	2020-06-02 00:50:23.175891
1874	99	1	144	528	2020-06-02 00:50:23.184023	2020-06-02 00:50:23.184023
1875	13	3	144	220	2020-06-02 00:50:23.192559	2020-06-02 00:50:23.192559
1876	13	2	145	760	2020-06-02 00:50:23.201267	2020-06-02 00:50:23.201267
1877	50	4	145	368	2020-06-02 00:50:23.209427	2020-06-02 00:50:23.209427
1878	51	1	145	555	2020-06-02 00:50:23.217787	2020-06-02 00:50:23.217787
1879	71	4	145	70	2020-06-02 00:50:23.226009	2020-06-02 00:50:23.226009
1880	52	1	145	59	2020-06-02 00:50:23.234127	2020-06-02 00:50:23.234127
1881	60	3	145	637	2020-06-02 00:50:23.243377	2020-06-02 00:50:23.243377
1882	17	4	145	381	2020-06-02 00:50:23.251649	2020-06-02 00:50:23.251649
1883	40	1	146	494	2020-06-02 00:50:23.260199	2020-06-02 00:50:23.260199
1884	90	3	146	721	2020-06-02 00:50:23.268777	2020-06-02 00:50:23.268777
1885	12	1	146	454	2020-06-02 00:50:23.277033	2020-06-02 00:50:23.277033
1886	94	5	146	434	2020-06-02 00:50:23.286178	2020-06-02 00:50:23.286178
1887	5	4	146	755	2020-06-02 00:50:23.294986	2020-06-02 00:50:23.294986
1888	53	1	146	274	2020-06-02 00:50:23.302962	2020-06-02 00:50:23.302962
1889	54	5	146	749	2020-06-02 00:50:23.310693	2020-06-02 00:50:23.310693
1890	6	1	146	30	2020-06-02 00:50:23.318708	2020-06-02 00:50:23.318708
1891	92	2	146	678	2020-06-02 00:50:23.326269	2020-06-02 00:50:23.326269
1892	76	4	147	3	2020-06-02 00:50:23.334572	2020-06-02 00:50:23.334572
1893	48	5	147	616	2020-06-02 00:50:23.34357	2020-06-02 00:50:23.34357
1894	4	1	147	390	2020-06-02 00:50:23.352426	2020-06-02 00:50:23.352426
1895	29	1	147	529	2020-06-02 00:50:23.360776	2020-06-02 00:50:23.360776
1896	70	2	147	46	2020-06-02 00:50:23.369829	2020-06-02 00:50:23.369829
1897	13	2	147	149	2020-06-02 00:50:23.378948	2020-06-02 00:50:23.378948
1898	37	4	148	713	2020-06-02 00:50:23.38801	2020-06-02 00:50:23.38801
1899	82	4	148	266	2020-06-02 00:50:23.397514	2020-06-02 00:50:23.397514
1900	80	2	148	790	2020-06-02 00:50:23.405783	2020-06-02 00:50:23.405783
1901	46	5	148	414	2020-06-02 00:50:23.413891	2020-06-02 00:50:23.413891
1902	73	5	148	662	2020-06-02 00:50:23.422013	2020-06-02 00:50:23.422013
1903	89	2	148	110	2020-06-02 00:50:23.429914	2020-06-02 00:50:23.429914
1904	8	4	148	461	2020-06-02 00:50:23.438004	2020-06-02 00:50:23.438004
1905	22	5	148	64	2020-06-02 00:50:23.446152	2020-06-02 00:50:23.446152
1906	100	5	148	122	2020-06-02 00:50:23.455186	2020-06-02 00:50:23.455186
1907	65	5	149	140	2020-06-02 00:50:23.464136	2020-06-02 00:50:23.464136
1908	27	3	150	117	2020-06-02 00:50:23.473001	2020-06-02 00:50:23.473001
1909	54	5	150	355	2020-06-02 00:50:23.483431	2020-06-02 00:50:23.483431
1910	39	1	150	720	2020-06-02 00:50:23.491852	2020-06-02 00:50:23.491852
1911	71	1	150	688	2020-06-02 00:50:23.500762	2020-06-02 00:50:23.500762
1912	89	5	150	272	2020-06-02 00:50:23.508708	2020-06-02 00:50:23.508708
1913	13	5	150	669	2020-06-02 00:50:23.517301	2020-06-02 00:50:23.517301
1914	35	3	150	734	2020-06-02 00:50:23.525882	2020-06-02 00:50:23.525882
1915	79	5	151	738	2020-06-02 00:50:23.534178	2020-06-02 00:50:23.534178
1916	35	4	151	119	2020-06-02 00:50:23.542071	2020-06-02 00:50:23.542071
1917	95	3	151	757	2020-06-02 00:50:23.549674	2020-06-02 00:50:23.549674
1918	6	4	151	157	2020-06-02 00:50:23.557699	2020-06-02 00:50:23.557699
1919	86	5	152	395	2020-06-02 00:50:23.56609	2020-06-02 00:50:23.56609
1920	15	2	152	757	2020-06-02 00:50:23.574046	2020-06-02 00:50:23.574046
1921	58	1	152	118	2020-06-02 00:50:23.581938	2020-06-02 00:50:23.581938
1922	3	5	152	548	2020-06-02 00:50:23.590156	2020-06-02 00:50:23.590156
1923	93	3	152	755	2020-06-02 00:50:23.598627	2020-06-02 00:50:23.598627
1924	95	4	152	783	2020-06-02 00:50:23.607068	2020-06-02 00:50:23.607068
1925	57	3	152	224	2020-06-02 00:50:23.616494	2020-06-02 00:50:23.616494
1926	53	5	152	570	2020-06-02 00:50:23.630244	2020-06-02 00:50:23.630244
1927	98	1	152	68	2020-06-02 00:50:23.639997	2020-06-02 00:50:23.639997
1928	33	4	152	675	2020-06-02 00:50:23.648498	2020-06-02 00:50:23.648498
1929	93	2	153	35	2020-06-02 00:50:23.656598	2020-06-02 00:50:23.656598
1930	56	3	153	455	2020-06-02 00:50:23.664734	2020-06-02 00:50:23.664734
1931	75	1	154	33	2020-06-02 00:50:23.673019	2020-06-02 00:50:23.673019
1932	15	5	154	368	2020-06-02 00:50:23.681666	2020-06-02 00:50:23.681666
1933	37	2	155	474	2020-06-02 00:50:23.68997	2020-06-02 00:50:23.68997
1934	7	1	155	165	2020-06-02 00:50:23.698012	2020-06-02 00:50:23.698012
1935	10	1	155	777	2020-06-02 00:50:23.706155	2020-06-02 00:50:23.706155
1936	98	5	155	462	2020-06-02 00:50:23.713768	2020-06-02 00:50:23.713768
1937	46	4	155	608	2020-06-02 00:50:23.722049	2020-06-02 00:50:23.722049
1938	2	2	156	648	2020-06-02 00:50:23.730007	2020-06-02 00:50:23.730007
1939	37	2	156	54	2020-06-02 00:50:23.73794	2020-06-02 00:50:23.73794
1940	61	2	156	136	2020-06-02 00:50:23.745836	2020-06-02 00:50:23.745836
1941	68	5	156	747	2020-06-02 00:50:23.753979	2020-06-02 00:50:23.753979
1942	35	5	156	316	2020-06-02 00:50:23.761909	2020-06-02 00:50:23.761909
1943	54	4	156	199	2020-06-02 00:50:23.770201	2020-06-02 00:50:23.770201
1944	67	2	156	319	2020-06-02 00:50:23.779419	2020-06-02 00:50:23.779419
1945	68	5	156	1	2020-06-02 00:50:23.788436	2020-06-02 00:50:23.788436
1946	95	5	156	799	2020-06-02 00:50:23.796619	2020-06-02 00:50:23.796619
1947	26	1	157	782	2020-06-02 00:50:23.804758	2020-06-02 00:50:23.804758
1948	98	2	157	132	2020-06-02 00:50:23.812749	2020-06-02 00:50:23.812749
1949	21	3	157	185	2020-06-02 00:50:23.821019	2020-06-02 00:50:23.821019
1950	63	4	157	469	2020-06-02 00:50:23.831463	2020-06-02 00:50:23.831463
1951	86	4	157	428	2020-06-02 00:50:23.840961	2020-06-02 00:50:23.840961
1952	54	5	157	319	2020-06-02 00:50:23.85	2020-06-02 00:50:23.85
1953	70	2	158	124	2020-06-02 00:50:23.85887	2020-06-02 00:50:23.85887
1954	27	4	158	349	2020-06-02 00:50:23.866962	2020-06-02 00:50:23.866962
1955	7	4	158	380	2020-06-02 00:50:23.874707	2020-06-02 00:50:23.874707
1956	85	5	158	637	2020-06-02 00:50:23.882487	2020-06-02 00:50:23.882487
1957	9	4	158	587	2020-06-02 00:50:23.890766	2020-06-02 00:50:23.890766
1958	54	1	158	459	2020-06-02 00:50:23.899818	2020-06-02 00:50:23.899818
1959	100	2	158	505	2020-06-02 00:50:23.908222	2020-06-02 00:50:23.908222
1960	22	2	158	592	2020-06-02 00:50:23.916289	2020-06-02 00:50:23.916289
1961	83	3	158	231	2020-06-02 00:50:23.924189	2020-06-02 00:50:23.924189
1962	81	5	159	213	2020-06-02 00:50:23.93195	2020-06-02 00:50:23.93195
1963	12	3	159	382	2020-06-02 00:50:23.939611	2020-06-02 00:50:23.939611
1964	20	1	159	599	2020-06-02 00:50:23.947386	2020-06-02 00:50:23.947386
1965	5	2	159	787	2020-06-02 00:50:23.955141	2020-06-02 00:50:23.955141
1966	24	3	159	738	2020-06-02 00:50:23.962889	2020-06-02 00:50:23.962889
1967	34	1	159	455	2020-06-02 00:50:23.971649	2020-06-02 00:50:23.971649
1968	67	2	159	222	2020-06-02 00:50:23.979502	2020-06-02 00:50:23.979502
1969	70	5	159	478	2020-06-02 00:50:23.987418	2020-06-02 00:50:23.987418
1970	56	5	160	379	2020-06-02 00:50:23.995745	2020-06-02 00:50:23.995745
1971	14	3	160	445	2020-06-02 00:50:24.003705	2020-06-02 00:50:24.003705
1972	38	5	160	153	2020-06-02 00:50:24.011534	2020-06-02 00:50:24.011534
1973	42	5	160	556	2020-06-02 00:50:24.019541	2020-06-02 00:50:24.019541
1974	7	1	160	483	2020-06-02 00:50:24.027425	2020-06-02 00:50:24.027425
1975	49	1	160	59	2020-06-02 00:50:24.035655	2020-06-02 00:50:24.035655
1976	39	4	160	320	2020-06-02 00:50:24.044578	2020-06-02 00:50:24.044578
1977	45	2	160	145	2020-06-02 00:50:24.053411	2020-06-02 00:50:24.053411
1978	56	5	160	480	2020-06-02 00:50:24.062104	2020-06-02 00:50:24.062104
1979	80	4	161	714	2020-06-02 00:50:24.070864	2020-06-02 00:50:24.070864
1980	98	4	161	292	2020-06-02 00:50:24.079533	2020-06-02 00:50:24.079533
1981	48	2	162	723	2020-06-02 00:50:24.088026	2020-06-02 00:50:24.088026
1982	89	2	162	582	2020-06-02 00:50:24.096762	2020-06-02 00:50:24.096762
1983	2	1	162	388	2020-06-02 00:50:24.105606	2020-06-02 00:50:24.105606
1984	2	5	162	149	2020-06-02 00:50:24.114294	2020-06-02 00:50:24.114294
1985	90	5	162	331	2020-06-02 00:50:24.121915	2020-06-02 00:50:24.121915
1986	53	3	162	11	2020-06-02 00:50:24.12962	2020-06-02 00:50:24.12962
1987	7	4	162	225	2020-06-02 00:50:24.137411	2020-06-02 00:50:24.137411
1988	63	5	162	436	2020-06-02 00:50:24.145085	2020-06-02 00:50:24.145085
1989	87	1	163	34	2020-06-02 00:50:24.152965	2020-06-02 00:50:24.152965
1990	34	3	164	697	2020-06-02 00:50:24.160936	2020-06-02 00:50:24.160936
1991	94	2	164	34	2020-06-02 00:50:24.168745	2020-06-02 00:50:24.168745
1992	92	1	164	550	2020-06-02 00:50:24.177421	2020-06-02 00:50:24.177421
1993	49	5	164	192	2020-06-02 00:50:24.185556	2020-06-02 00:50:24.185556
1994	99	1	164	321	2020-06-02 00:50:24.194229	2020-06-02 00:50:24.194229
1995	55	3	164	331	2020-06-02 00:50:24.202587	2020-06-02 00:50:24.202587
1996	1	1	164	583	2020-06-02 00:50:24.210868	2020-06-02 00:50:24.210868
1997	30	3	164	674	2020-06-02 00:50:24.218406	2020-06-02 00:50:24.218406
1998	44	2	164	3	2020-06-02 00:50:24.226423	2020-06-02 00:50:24.226423
1999	99	1	165	694	2020-06-02 00:50:24.234299	2020-06-02 00:50:24.234299
2000	94	5	165	292	2020-06-02 00:50:24.243086	2020-06-02 00:50:24.243086
2001	33	4	165	82	2020-06-02 00:50:24.25184	2020-06-02 00:50:24.25184
2002	19	2	165	7	2020-06-02 00:50:24.260698	2020-06-02 00:50:24.260698
2003	80	3	165	453	2020-06-02 00:50:24.26984	2020-06-02 00:50:24.26984
2004	27	4	166	167	2020-06-02 00:50:24.278463	2020-06-02 00:50:24.278463
2005	76	4	166	271	2020-06-02 00:50:24.287486	2020-06-02 00:50:24.287486
2006	98	4	166	87	2020-06-02 00:50:24.295984	2020-06-02 00:50:24.295984
2007	68	2	166	775	2020-06-02 00:50:24.303841	2020-06-02 00:50:24.303841
2008	30	3	166	234	2020-06-02 00:50:24.312416	2020-06-02 00:50:24.312416
2009	53	4	167	599	2020-06-02 00:50:24.320831	2020-06-02 00:50:24.320831
2010	69	3	167	554	2020-06-02 00:50:24.329426	2020-06-02 00:50:24.329426
2011	53	1	167	23	2020-06-02 00:50:24.337428	2020-06-02 00:50:24.337428
2012	98	1	167	676	2020-06-02 00:50:24.345006	2020-06-02 00:50:24.345006
2013	89	4	167	609	2020-06-02 00:50:24.352592	2020-06-02 00:50:24.352592
2014	31	3	167	462	2020-06-02 00:50:24.360441	2020-06-02 00:50:24.360441
2015	57	4	167	114	2020-06-02 00:50:24.368422	2020-06-02 00:50:24.368422
2016	14	2	167	520	2020-06-02 00:50:24.377202	2020-06-02 00:50:24.377202
2017	45	4	168	477	2020-06-02 00:50:24.385771	2020-06-02 00:50:24.385771
2018	8	3	169	481	2020-06-02 00:50:24.394761	2020-06-02 00:50:24.394761
2019	68	1	169	454	2020-06-02 00:50:24.404417	2020-06-02 00:50:24.404417
2020	78	1	169	582	2020-06-02 00:50:24.413277	2020-06-02 00:50:24.413277
2021	57	3	169	746	2020-06-02 00:50:24.421621	2020-06-02 00:50:24.421621
2022	90	4	169	764	2020-06-02 00:50:24.430083	2020-06-02 00:50:24.430083
2023	26	4	169	610	2020-06-02 00:50:24.437804	2020-06-02 00:50:24.437804
2024	63	4	169	340	2020-06-02 00:50:24.445746	2020-06-02 00:50:24.445746
2025	49	2	169	174	2020-06-02 00:50:24.453403	2020-06-02 00:50:24.453403
2026	66	1	169	769	2020-06-02 00:50:24.461177	2020-06-02 00:50:24.461177
2027	55	2	169	54	2020-06-02 00:50:24.469362	2020-06-02 00:50:24.469362
2028	66	1	170	774	2020-06-02 00:50:24.47749	2020-06-02 00:50:24.47749
2029	70	2	170	191	2020-06-02 00:50:24.485465	2020-06-02 00:50:24.485465
2030	5	4	170	666	2020-06-02 00:50:24.493627	2020-06-02 00:50:24.493627
2031	20	5	171	96	2020-06-02 00:50:24.502069	2020-06-02 00:50:24.502069
2032	82	1	171	767	2020-06-02 00:50:24.510402	2020-06-02 00:50:24.510402
2033	96	5	172	723	2020-06-02 00:50:24.518403	2020-06-02 00:50:24.518403
2034	9	5	172	692	2020-06-02 00:50:24.526418	2020-06-02 00:50:24.526418
2035	1	3	172	720	2020-06-02 00:50:24.534963	2020-06-02 00:50:24.534963
2036	15	5	172	169	2020-06-02 00:50:24.543204	2020-06-02 00:50:24.543204
2037	7	1	172	381	2020-06-02 00:50:24.551554	2020-06-02 00:50:24.551554
2038	16	5	172	572	2020-06-02 00:50:24.559895	2020-06-02 00:50:24.559895
2039	19	2	173	254	2020-06-02 00:50:24.568621	2020-06-02 00:50:24.568621
2040	5	5	173	204	2020-06-02 00:50:24.576616	2020-06-02 00:50:24.576616
2041	36	4	173	158	2020-06-02 00:50:24.585894	2020-06-02 00:50:24.585894
2042	68	1	173	137	2020-06-02 00:50:24.594495	2020-06-02 00:50:24.594495
2043	81	3	173	790	2020-06-02 00:50:24.60281	2020-06-02 00:50:24.60281
2044	14	5	173	758	2020-06-02 00:50:24.61187	2020-06-02 00:50:24.61187
2045	29	1	173	598	2020-06-02 00:50:24.620576	2020-06-02 00:50:24.620576
2046	22	2	173	677	2020-06-02 00:50:24.629119	2020-06-02 00:50:24.629119
2047	88	3	173	117	2020-06-02 00:50:24.637903	2020-06-02 00:50:24.637903
2048	64	3	174	221	2020-06-02 00:50:24.646137	2020-06-02 00:50:24.646137
2049	61	4	175	552	2020-06-02 00:50:24.654845	2020-06-02 00:50:24.654845
2050	73	1	175	793	2020-06-02 00:50:24.664617	2020-06-02 00:50:24.664617
2051	82	2	175	713	2020-06-02 00:50:24.673142	2020-06-02 00:50:24.673142
2052	65	5	175	785	2020-06-02 00:50:24.681392	2020-06-02 00:50:24.681392
2053	3	5	176	732	2020-06-02 00:50:24.689638	2020-06-02 00:50:24.689638
2054	12	2	176	395	2020-06-02 00:50:24.701735	2020-06-02 00:50:24.701735
2055	33	1	176	619	2020-06-02 00:50:24.711931	2020-06-02 00:50:24.711931
2056	91	4	176	207	2020-06-02 00:50:24.719512	2020-06-02 00:50:24.719512
2057	70	1	176	310	2020-06-02 00:50:24.727386	2020-06-02 00:50:24.727386
2058	21	3	176	402	2020-06-02 00:50:24.736758	2020-06-02 00:50:24.736758
2059	95	2	176	503	2020-06-02 00:50:24.745087	2020-06-02 00:50:24.745087
2060	48	3	176	781	2020-06-02 00:50:24.753271	2020-06-02 00:50:24.753271
2061	70	1	177	717	2020-06-02 00:50:24.762548	2020-06-02 00:50:24.762548
2062	30	5	177	654	2020-06-02 00:50:24.77067	2020-06-02 00:50:24.77067
2063	61	1	177	439	2020-06-02 00:50:24.778966	2020-06-02 00:50:24.778966
2064	17	1	177	341	2020-06-02 00:50:24.786741	2020-06-02 00:50:24.786741
2065	71	5	177	644	2020-06-02 00:50:24.795134	2020-06-02 00:50:24.795134
2066	85	4	177	168	2020-06-02 00:50:24.803257	2020-06-02 00:50:24.803257
2067	52	4	177	376	2020-06-02 00:50:24.812015	2020-06-02 00:50:24.812015
2068	15	5	178	50	2020-06-02 00:50:24.820732	2020-06-02 00:50:24.820732
2069	36	5	178	388	2020-06-02 00:50:24.82878	2020-06-02 00:50:24.82878
2070	94	2	178	65	2020-06-02 00:50:24.836987	2020-06-02 00:50:24.836987
2071	32	1	179	522	2020-06-02 00:50:24.845115	2020-06-02 00:50:24.845115
2072	36	3	179	684	2020-06-02 00:50:24.853118	2020-06-02 00:50:24.853118
2073	48	5	180	405	2020-06-02 00:50:24.863925	2020-06-02 00:50:24.863925
2074	82	4	180	78	2020-06-02 00:50:24.873021	2020-06-02 00:50:24.873021
2075	1	2	180	449	2020-06-02 00:50:24.881941	2020-06-02 00:50:24.881941
2076	69	2	180	233	2020-06-02 00:50:24.89012	2020-06-02 00:50:24.89012
2077	13	5	181	717	2020-06-02 00:50:24.899089	2020-06-02 00:50:24.899089
2078	1	3	181	528	2020-06-02 00:50:24.907895	2020-06-02 00:50:24.907895
2079	93	3	182	281	2020-06-02 00:50:24.916402	2020-06-02 00:50:24.916402
2080	16	5	182	664	2020-06-02 00:50:24.924179	2020-06-02 00:50:24.924179
2081	89	2	182	14	2020-06-02 00:50:24.931911	2020-06-02 00:50:24.931911
2082	98	5	182	478	2020-06-02 00:50:24.93976	2020-06-02 00:50:24.93976
2083	93	5	182	552	2020-06-02 00:50:24.947264	2020-06-02 00:50:24.947264
2084	71	4	182	584	2020-06-02 00:50:24.955152	2020-06-02 00:50:24.955152
2085	27	2	182	11	2020-06-02 00:50:24.963193	2020-06-02 00:50:24.963193
2086	81	3	183	590	2020-06-02 00:50:24.971221	2020-06-02 00:50:24.971221
2087	13	3	183	440	2020-06-02 00:50:24.979399	2020-06-02 00:50:24.979399
2088	62	5	183	81	2020-06-02 00:50:24.987193	2020-06-02 00:50:24.987193
2089	78	2	184	373	2020-06-02 00:50:24.995225	2020-06-02 00:50:24.995225
2090	53	5	184	144	2020-06-02 00:50:25.003286	2020-06-02 00:50:25.003286
2091	7	3	184	749	2020-06-02 00:50:25.012249	2020-06-02 00:50:25.012249
2092	59	3	184	398	2020-06-02 00:50:25.021371	2020-06-02 00:50:25.021371
2093	68	5	184	274	2020-06-02 00:50:25.030664	2020-06-02 00:50:25.030664
2094	97	1	184	430	2020-06-02 00:50:25.039993	2020-06-02 00:50:25.039993
2095	75	3	184	512	2020-06-02 00:50:25.048921	2020-06-02 00:50:25.048921
2096	80	5	185	214	2020-06-02 00:50:25.058039	2020-06-02 00:50:25.058039
2097	46	2	185	141	2020-06-02 00:50:25.066888	2020-06-02 00:50:25.066888
2098	51	4	185	130	2020-06-02 00:50:25.07589	2020-06-02 00:50:25.07589
2099	54	3	185	275	2020-06-02 00:50:25.084546	2020-06-02 00:50:25.084546
2100	17	1	185	111	2020-06-02 00:50:25.09328	2020-06-02 00:50:25.09328
2101	84	2	186	274	2020-06-02 00:50:25.102263	2020-06-02 00:50:25.102263
2102	22	5	186	480	2020-06-02 00:50:25.111876	2020-06-02 00:50:25.111876
2103	5	5	186	155	2020-06-02 00:50:25.121697	2020-06-02 00:50:25.121697
2104	62	2	186	304	2020-06-02 00:50:25.130553	2020-06-02 00:50:25.130553
2105	24	5	186	677	2020-06-02 00:50:25.139425	2020-06-02 00:50:25.139425
2106	30	5	187	92	2020-06-02 00:50:25.147781	2020-06-02 00:50:25.147781
2107	13	3	187	717	2020-06-02 00:50:25.156925	2020-06-02 00:50:25.156925
2108	15	5	187	200	2020-06-02 00:50:25.166154	2020-06-02 00:50:25.166154
2109	37	4	187	706	2020-06-02 00:50:25.175396	2020-06-02 00:50:25.175396
2110	30	2	187	329	2020-06-02 00:50:25.184299	2020-06-02 00:50:25.184299
2111	18	1	187	290	2020-06-02 00:50:25.193252	2020-06-02 00:50:25.193252
2112	58	5	188	724	2020-06-02 00:50:25.201916	2020-06-02 00:50:25.201916
2113	100	2	189	471	2020-06-02 00:50:25.210796	2020-06-02 00:50:25.210796
2114	6	5	189	172	2020-06-02 00:50:25.220366	2020-06-02 00:50:25.220366
2115	21	1	189	337	2020-06-02 00:50:25.229268	2020-06-02 00:50:25.229268
2116	16	2	189	544	2020-06-02 00:50:25.237849	2020-06-02 00:50:25.237849
2117	67	1	189	342	2020-06-02 00:50:25.246248	2020-06-02 00:50:25.246248
2118	72	3	189	411	2020-06-02 00:50:25.254784	2020-06-02 00:50:25.254784
2119	65	3	190	151	2020-06-02 00:50:25.263546	2020-06-02 00:50:25.263546
2120	71	3	191	449	2020-06-02 00:50:25.272922	2020-06-02 00:50:25.272922
2121	82	4	191	455	2020-06-02 00:50:25.281941	2020-06-02 00:50:25.281941
2122	60	3	191	661	2020-06-02 00:50:25.290954	2020-06-02 00:50:25.290954
2123	76	3	192	643	2020-06-02 00:50:25.300117	2020-06-02 00:50:25.300117
2124	61	5	192	15	2020-06-02 00:50:25.308806	2020-06-02 00:50:25.308806
2125	24	2	192	332	2020-06-02 00:50:25.317553	2020-06-02 00:50:25.317553
2126	16	5	192	523	2020-06-02 00:50:25.327015	2020-06-02 00:50:25.327015
2127	22	4	192	618	2020-06-02 00:50:25.336618	2020-06-02 00:50:25.336618
2128	20	1	192	793	2020-06-02 00:50:25.345244	2020-06-02 00:50:25.345244
2129	19	4	192	652	2020-06-02 00:50:25.354257	2020-06-02 00:50:25.354257
2130	99	2	192	479	2020-06-02 00:50:25.363023	2020-06-02 00:50:25.363023
2131	65	4	192	367	2020-06-02 00:50:25.371932	2020-06-02 00:50:25.371932
2132	22	1	193	139	2020-06-02 00:50:25.380981	2020-06-02 00:50:25.380981
2133	33	3	193	176	2020-06-02 00:50:25.389768	2020-06-02 00:50:25.389768
2134	97	2	193	69	2020-06-02 00:50:25.398843	2020-06-02 00:50:25.398843
2135	66	5	193	21	2020-06-02 00:50:25.408525	2020-06-02 00:50:25.408525
2136	1	1	194	313	2020-06-02 00:50:25.417727	2020-06-02 00:50:25.417727
2137	47	2	194	644	2020-06-02 00:50:25.426531	2020-06-02 00:50:25.426531
2138	4	4	194	248	2020-06-02 00:50:25.435891	2020-06-02 00:50:25.435891
2139	9	2	195	289	2020-06-02 00:50:25.445026	2020-06-02 00:50:25.445026
2140	29	3	195	367	2020-06-02 00:50:25.453862	2020-06-02 00:50:25.453862
2141	63	4	195	635	2020-06-02 00:50:25.463016	2020-06-02 00:50:25.463016
2142	12	5	195	310	2020-06-02 00:50:25.471922	2020-06-02 00:50:25.471922
2143	9	3	195	257	2020-06-02 00:50:25.481193	2020-06-02 00:50:25.481193
2144	72	3	195	369	2020-06-02 00:50:25.490107	2020-06-02 00:50:25.490107
2145	62	1	196	21	2020-06-02 00:50:25.499556	2020-06-02 00:50:25.499556
2146	2	5	196	548	2020-06-02 00:50:25.508542	2020-06-02 00:50:25.508542
2147	20	1	196	184	2020-06-02 00:50:25.517499	2020-06-02 00:50:25.517499
2148	86	2	196	74	2020-06-02 00:50:25.526444	2020-06-02 00:50:25.526444
2149	18	4	196	140	2020-06-02 00:50:25.535089	2020-06-02 00:50:25.535089
2150	63	5	196	656	2020-06-02 00:50:25.543625	2020-06-02 00:50:25.543625
2151	59	2	196	529	2020-06-02 00:50:25.552219	2020-06-02 00:50:25.552219
2152	92	4	197	300	2020-06-02 00:50:25.563792	2020-06-02 00:50:25.563792
2153	38	2	197	30	2020-06-02 00:50:25.575115	2020-06-02 00:50:25.575115
2154	58	3	197	302	2020-06-02 00:50:25.585455	2020-06-02 00:50:25.585455
2155	48	5	197	225	2020-06-02 00:50:25.594427	2020-06-02 00:50:25.594427
2156	73	4	197	590	2020-06-02 00:50:25.603425	2020-06-02 00:50:25.603425
2157	59	2	198	43	2020-06-02 00:50:25.6137	2020-06-02 00:50:25.6137
2158	84	2	199	136	2020-06-02 00:50:25.624113	2020-06-02 00:50:25.624113
2159	97	2	199	8	2020-06-02 00:50:25.633523	2020-06-02 00:50:25.633523
2160	45	1	199	485	2020-06-02 00:50:25.642282	2020-06-02 00:50:25.642282
2161	42	2	199	357	2020-06-02 00:50:25.651435	2020-06-02 00:50:25.651435
2162	26	3	199	751	2020-06-02 00:50:25.66072	2020-06-02 00:50:25.66072
2163	24	4	199	627	2020-06-02 00:50:25.669922	2020-06-02 00:50:25.669922
2164	34	3	199	275	2020-06-02 00:50:25.679292	2020-06-02 00:50:25.679292
2165	91	3	200	441	2020-06-02 00:50:25.688505	2020-06-02 00:50:25.688505
2166	50	5	200	482	2020-06-02 00:50:25.697526	2020-06-02 00:50:25.697526
2167	38	1	200	697	2020-06-02 00:50:25.706779	2020-06-02 00:50:25.706779
2168	89	4	200	312	2020-06-02 00:50:25.71605	2020-06-02 00:50:25.71605
2169	9	1	200	584	2020-06-02 00:50:25.72551	2020-06-02 00:50:25.72551
2170	79	5	200	630	2020-06-02 00:50:25.734396	2020-06-02 00:50:25.734396
2171	25	1	200	164	2020-06-02 00:50:25.743578	2020-06-02 00:50:25.743578
2172	47	1	200	756	2020-06-02 00:50:25.753982	2020-06-02 00:50:25.753982
2173	46	2	200	739	2020-06-02 00:50:25.771438	2020-06-02 00:50:25.771438
2174	98	5	201	657	2020-06-02 00:50:25.782782	2020-06-02 00:50:25.782782
2175	43	3	201	702	2020-06-02 00:50:25.793375	2020-06-02 00:50:25.793375
2176	56	5	201	146	2020-06-02 00:50:25.803645	2020-06-02 00:50:25.803645
2177	82	3	201	12	2020-06-02 00:50:25.813081	2020-06-02 00:50:25.813081
2178	19	5	202	53	2020-06-02 00:50:25.82232	2020-06-02 00:50:25.82232
2179	13	3	202	463	2020-06-02 00:50:25.837576	2020-06-02 00:50:25.837576
2180	78	2	202	283	2020-06-02 00:50:25.848078	2020-06-02 00:50:25.848078
2181	26	3	202	3	2020-06-02 00:50:25.858011	2020-06-02 00:50:25.858011
2182	94	1	203	78	2020-06-02 00:50:25.869488	2020-06-02 00:50:25.869488
2183	38	3	203	730	2020-06-02 00:50:25.8805	2020-06-02 00:50:25.8805
2184	46	4	204	677	2020-06-02 00:50:25.890548	2020-06-02 00:50:25.890548
2185	88	4	204	49	2020-06-02 00:50:25.900894	2020-06-02 00:50:25.900894
2186	77	1	204	646	2020-06-02 00:50:25.911388	2020-06-02 00:50:25.911388
2187	67	5	204	699	2020-06-02 00:50:25.920622	2020-06-02 00:50:25.920622
2188	37	2	204	594	2020-06-02 00:50:25.929689	2020-06-02 00:50:25.929689
2189	35	2	204	137	2020-06-02 00:50:25.938955	2020-06-02 00:50:25.938955
2190	5	2	204	173	2020-06-02 00:50:25.947974	2020-06-02 00:50:25.947974
2191	60	4	204	508	2020-06-02 00:50:25.957836	2020-06-02 00:50:25.957836
2192	22	3	205	625	2020-06-02 00:50:25.967497	2020-06-02 00:50:25.967497
2193	37	2	205	419	2020-06-02 00:50:25.976913	2020-06-02 00:50:25.976913
2194	45	4	205	648	2020-06-02 00:50:25.986371	2020-06-02 00:50:25.986371
2195	46	3	205	576	2020-06-02 00:50:25.995848	2020-06-02 00:50:25.995848
2196	42	2	206	169	2020-06-02 00:50:26.005531	2020-06-02 00:50:26.005531
2197	30	2	206	660	2020-06-02 00:50:26.014936	2020-06-02 00:50:26.014936
2198	2	5	206	613	2020-06-02 00:50:26.024088	2020-06-02 00:50:26.024088
2199	40	5	206	478	2020-06-02 00:50:26.03465	2020-06-02 00:50:26.03465
2200	71	3	206	492	2020-06-02 00:50:26.043972	2020-06-02 00:50:26.043972
2201	52	5	206	706	2020-06-02 00:50:26.052914	2020-06-02 00:50:26.052914
2202	12	2	206	390	2020-06-02 00:50:26.061508	2020-06-02 00:50:26.061508
2203	49	1	206	433	2020-06-02 00:50:26.070948	2020-06-02 00:50:26.070948
2204	67	5	207	642	2020-06-02 00:50:26.080115	2020-06-02 00:50:26.080115
2205	29	5	207	598	2020-06-02 00:50:26.089185	2020-06-02 00:50:26.089185
2206	80	3	207	593	2020-06-02 00:50:26.09798	2020-06-02 00:50:26.09798
2207	8	2	207	6	2020-06-02 00:50:26.106867	2020-06-02 00:50:26.106867
2208	99	4	207	98	2020-06-02 00:50:26.11586	2020-06-02 00:50:26.11586
2209	40	5	207	19	2020-06-02 00:50:26.124934	2020-06-02 00:50:26.124934
2210	37	2	207	619	2020-06-02 00:50:26.133924	2020-06-02 00:50:26.133924
2211	77	2	207	254	2020-06-02 00:50:26.142809	2020-06-02 00:50:26.142809
2212	62	2	208	748	2020-06-02 00:50:26.151439	2020-06-02 00:50:26.151439
2213	13	1	208	9	2020-06-02 00:50:26.16052	2020-06-02 00:50:26.16052
2214	33	4	208	98	2020-06-02 00:50:26.169593	2020-06-02 00:50:26.169593
2215	55	4	208	302	2020-06-02 00:50:26.178546	2020-06-02 00:50:26.178546
2216	37	5	208	610	2020-06-02 00:50:26.187413	2020-06-02 00:50:26.187413
2217	75	2	208	398	2020-06-02 00:50:26.19609	2020-06-02 00:50:26.19609
2218	86	3	209	204	2020-06-02 00:50:26.205006	2020-06-02 00:50:26.205006
2219	54	3	209	362	2020-06-02 00:50:26.214548	2020-06-02 00:50:26.214548
2220	64	3	209	40	2020-06-02 00:50:26.224094	2020-06-02 00:50:26.224094
2221	91	2	209	682	2020-06-02 00:50:26.232954	2020-06-02 00:50:26.232954
2222	86	4	209	433	2020-06-02 00:50:26.241519	2020-06-02 00:50:26.241519
2223	67	4	209	428	2020-06-02 00:50:26.251491	2020-06-02 00:50:26.251491
2224	87	3	209	180	2020-06-02 00:50:26.261168	2020-06-02 00:50:26.261168
2225	83	2	209	74	2020-06-02 00:50:26.271185	2020-06-02 00:50:26.271185
2226	5	4	209	742	2020-06-02 00:50:26.280646	2020-06-02 00:50:26.280646
2227	23	5	210	593	2020-06-02 00:50:26.290189	2020-06-02 00:50:26.290189
2228	7	3	210	428	2020-06-02 00:50:26.29992	2020-06-02 00:50:26.29992
2229	31	2	211	723	2020-06-02 00:50:26.30874	2020-06-02 00:50:26.30874
2230	58	4	211	586	2020-06-02 00:50:26.317254	2020-06-02 00:50:26.317254
2231	63	4	211	178	2020-06-02 00:50:26.325618	2020-06-02 00:50:26.325618
2232	70	5	212	650	2020-06-02 00:50:26.33421	2020-06-02 00:50:26.33421
2233	9	5	212	240	2020-06-02 00:50:26.342406	2020-06-02 00:50:26.342406
2234	36	1	213	187	2020-06-02 00:50:26.350822	2020-06-02 00:50:26.350822
2235	71	5	213	273	2020-06-02 00:50:26.359993	2020-06-02 00:50:26.359993
2236	24	4	213	214	2020-06-02 00:50:26.369475	2020-06-02 00:50:26.369475
2237	98	4	213	787	2020-06-02 00:50:26.379185	2020-06-02 00:50:26.379185
2238	2	1	213	510	2020-06-02 00:50:26.389126	2020-06-02 00:50:26.389126
2239	85	3	214	727	2020-06-02 00:50:26.398465	2020-06-02 00:50:26.398465
2240	34	2	214	530	2020-06-02 00:50:26.408267	2020-06-02 00:50:26.408267
2241	11	5	214	570	2020-06-02 00:50:26.416868	2020-06-02 00:50:26.416868
2242	86	5	214	119	2020-06-02 00:50:26.425182	2020-06-02 00:50:26.425182
2243	19	5	215	709	2020-06-02 00:50:26.433532	2020-06-02 00:50:26.433532
2244	57	1	215	439	2020-06-02 00:50:26.441753	2020-06-02 00:50:26.441753
2245	33	5	215	556	2020-06-02 00:50:26.450055	2020-06-02 00:50:26.450055
2246	60	3	216	626	2020-06-02 00:50:26.458144	2020-06-02 00:50:26.458144
2247	64	1	216	245	2020-06-02 00:50:26.466355	2020-06-02 00:50:26.466355
2248	95	4	216	92	2020-06-02 00:50:26.47765	2020-06-02 00:50:26.47765
2249	14	5	216	306	2020-06-02 00:50:26.487145	2020-06-02 00:50:26.487145
2250	12	3	216	456	2020-06-02 00:50:26.496443	2020-06-02 00:50:26.496443
2251	62	3	216	277	2020-06-02 00:50:26.505716	2020-06-02 00:50:26.505716
2252	89	1	216	325	2020-06-02 00:50:26.514888	2020-06-02 00:50:26.514888
2253	27	1	217	757	2020-06-02 00:50:26.524017	2020-06-02 00:50:26.524017
2254	44	4	217	584	2020-06-02 00:50:26.532767	2020-06-02 00:50:26.532767
2255	1	3	218	107	2020-06-02 00:50:26.541598	2020-06-02 00:50:26.541598
2256	74	5	218	629	2020-06-02 00:50:26.551681	2020-06-02 00:50:26.551681
2257	46	1	218	561	2020-06-02 00:50:26.560145	2020-06-02 00:50:26.560145
2258	76	4	218	572	2020-06-02 00:50:26.568414	2020-06-02 00:50:26.568414
2259	82	3	218	310	2020-06-02 00:50:26.576947	2020-06-02 00:50:26.576947
2260	26	4	219	590	2020-06-02 00:50:26.585659	2020-06-02 00:50:26.585659
2261	19	2	219	61	2020-06-02 00:50:26.594119	2020-06-02 00:50:26.594119
2262	97	1	219	656	2020-06-02 00:50:26.602649	2020-06-02 00:50:26.602649
2263	80	2	219	557	2020-06-02 00:50:26.610756	2020-06-02 00:50:26.610756
2264	28	2	219	326	2020-06-02 00:50:26.619383	2020-06-02 00:50:26.619383
2265	51	4	219	531	2020-06-02 00:50:26.627798	2020-06-02 00:50:26.627798
2266	20	2	220	221	2020-06-02 00:50:26.63615	2020-06-02 00:50:26.63615
2267	68	1	220	229	2020-06-02 00:50:26.644565	2020-06-02 00:50:26.644565
2268	19	2	220	730	2020-06-02 00:50:26.653075	2020-06-02 00:50:26.653075
2269	71	2	220	135	2020-06-02 00:50:26.66176	2020-06-02 00:50:26.66176
2270	35	5	220	549	2020-06-02 00:50:26.670768	2020-06-02 00:50:26.670768
2271	42	2	220	648	2020-06-02 00:50:26.679743	2020-06-02 00:50:26.679743
2272	84	1	220	73	2020-06-02 00:50:26.688417	2020-06-02 00:50:26.688417
2273	99	5	220	757	2020-06-02 00:50:26.696755	2020-06-02 00:50:26.696755
2274	75	3	220	676	2020-06-02 00:50:26.706856	2020-06-02 00:50:26.706856
2275	1	5	220	25	2020-06-02 00:50:26.715693	2020-06-02 00:50:26.715693
2276	2	5	221	34	2020-06-02 00:50:26.724228	2020-06-02 00:50:26.724228
2277	5	2	221	378	2020-06-02 00:50:26.733093	2020-06-02 00:50:26.733093
2278	80	3	221	772	2020-06-02 00:50:26.741492	2020-06-02 00:50:26.741492
2279	49	3	221	640	2020-06-02 00:50:26.750196	2020-06-02 00:50:26.750196
2280	58	2	222	364	2020-06-02 00:50:26.759147	2020-06-02 00:50:26.759147
2281	99	2	222	140	2020-06-02 00:50:26.768156	2020-06-02 00:50:26.768156
2282	1	3	222	359	2020-06-02 00:50:26.776962	2020-06-02 00:50:26.776962
2283	28	1	223	246	2020-06-02 00:50:26.78647	2020-06-02 00:50:26.78647
2284	100	3	223	516	2020-06-02 00:50:26.795422	2020-06-02 00:50:26.795422
2285	7	3	223	181	2020-06-02 00:50:26.808704	2020-06-02 00:50:26.808704
2286	92	4	223	309	2020-06-02 00:50:26.81906	2020-06-02 00:50:26.81906
2287	30	2	223	364	2020-06-02 00:50:26.828608	2020-06-02 00:50:26.828608
2288	68	4	223	214	2020-06-02 00:50:26.836778	2020-06-02 00:50:26.836778
2289	17	3	223	738	2020-06-02 00:50:26.845648	2020-06-02 00:50:26.845648
2290	4	1	224	72	2020-06-02 00:50:26.853885	2020-06-02 00:50:26.853885
2291	4	2	224	338	2020-06-02 00:50:26.861951	2020-06-02 00:50:26.861951
2292	19	3	224	238	2020-06-02 00:50:26.870282	2020-06-02 00:50:26.870282
2293	9	4	224	590	2020-06-02 00:50:26.8784	2020-06-02 00:50:26.8784
2294	67	2	224	758	2020-06-02 00:50:26.88641	2020-06-02 00:50:26.88641
2295	21	4	224	729	2020-06-02 00:50:26.895107	2020-06-02 00:50:26.895107
2296	90	4	224	47	2020-06-02 00:50:26.904125	2020-06-02 00:50:26.904125
2297	18	4	224	703	2020-06-02 00:50:26.913405	2020-06-02 00:50:26.913405
2298	13	4	224	362	2020-06-02 00:50:26.921474	2020-06-02 00:50:26.921474
2299	78	1	225	731	2020-06-02 00:50:26.930643	2020-06-02 00:50:26.930643
2300	39	3	226	554	2020-06-02 00:50:26.939506	2020-06-02 00:50:26.939506
2301	74	1	226	249	2020-06-02 00:50:26.948472	2020-06-02 00:50:26.948472
2302	70	2	226	299	2020-06-02 00:50:26.957426	2020-06-02 00:50:26.957426
2303	80	3	226	33	2020-06-02 00:50:26.96646	2020-06-02 00:50:26.96646
2304	51	3	226	132	2020-06-02 00:50:26.975548	2020-06-02 00:50:26.975548
2305	48	3	226	230	2020-06-02 00:50:26.984003	2020-06-02 00:50:26.984003
2306	62	5	227	396	2020-06-02 00:50:26.992708	2020-06-02 00:50:26.992708
2307	31	5	227	609	2020-06-02 00:50:27.000937	2020-06-02 00:50:27.000937
2308	1	5	227	623	2020-06-02 00:50:27.009278	2020-06-02 00:50:27.009278
2309	93	5	227	7	2020-06-02 00:50:27.019169	2020-06-02 00:50:27.019169
2310	39	1	227	427	2020-06-02 00:50:27.028219	2020-06-02 00:50:27.028219
2311	23	4	227	318	2020-06-02 00:50:27.036825	2020-06-02 00:50:27.036825
2312	40	3	227	639	2020-06-02 00:50:27.046013	2020-06-02 00:50:27.046013
2313	86	5	228	755	2020-06-02 00:50:27.054846	2020-06-02 00:50:27.054846
2314	54	3	228	505	2020-06-02 00:50:27.065074	2020-06-02 00:50:27.065074
2315	88	5	228	421	2020-06-02 00:50:27.07484	2020-06-02 00:50:27.07484
2316	76	2	228	563	2020-06-02 00:50:27.083794	2020-06-02 00:50:27.083794
2317	64	4	228	764	2020-06-02 00:50:27.096386	2020-06-02 00:50:27.096386
2318	4	2	228	121	2020-06-02 00:50:27.112488	2020-06-02 00:50:27.112488
2319	6	4	229	44	2020-06-02 00:50:27.126695	2020-06-02 00:50:27.126695
2320	56	2	229	519	2020-06-02 00:50:27.141264	2020-06-02 00:50:27.141264
2321	45	4	230	709	2020-06-02 00:50:27.156518	2020-06-02 00:50:27.156518
2322	77	4	230	503	2020-06-02 00:50:27.168446	2020-06-02 00:50:27.168446
2323	7	3	230	693	2020-06-02 00:50:27.181717	2020-06-02 00:50:27.181717
2324	51	5	230	122	2020-06-02 00:50:27.192591	2020-06-02 00:50:27.192591
2325	98	3	230	250	2020-06-02 00:50:27.203581	2020-06-02 00:50:27.203581
2326	28	4	230	775	2020-06-02 00:50:27.215646	2020-06-02 00:50:27.215646
2327	29	3	230	696	2020-06-02 00:50:27.227649	2020-06-02 00:50:27.227649
2328	42	1	231	707	2020-06-02 00:50:27.237651	2020-06-02 00:50:27.237651
2329	98	3	231	149	2020-06-02 00:50:27.247735	2020-06-02 00:50:27.247735
2330	81	1	231	246	2020-06-02 00:50:27.259622	2020-06-02 00:50:27.259622
2331	18	2	231	148	2020-06-02 00:50:27.270148	2020-06-02 00:50:27.270148
2332	34	3	231	162	2020-06-02 00:50:27.280116	2020-06-02 00:50:27.280116
2333	97	3	231	227	2020-06-02 00:50:27.289567	2020-06-02 00:50:27.289567
2334	36	1	231	190	2020-06-02 00:50:27.299173	2020-06-02 00:50:27.299173
2335	43	3	231	226	2020-06-02 00:50:27.3083	2020-06-02 00:50:27.3083
2336	35	3	231	576	2020-06-02 00:50:27.317692	2020-06-02 00:50:27.317692
2337	70	3	232	247	2020-06-02 00:50:27.326815	2020-06-02 00:50:27.326815
2338	28	2	232	662	2020-06-02 00:50:27.33597	2020-06-02 00:50:27.33597
2339	71	1	233	448	2020-06-02 00:50:27.345434	2020-06-02 00:50:27.345434
2340	6	3	233	174	2020-06-02 00:50:27.354446	2020-06-02 00:50:27.354446
2341	73	4	233	512	2020-06-02 00:50:27.362774	2020-06-02 00:50:27.362774
2342	94	1	234	468	2020-06-02 00:50:27.370939	2020-06-02 00:50:27.370939
2343	82	1	234	357	2020-06-02 00:50:27.379061	2020-06-02 00:50:27.379061
2344	31	1	234	52	2020-06-02 00:50:27.387231	2020-06-02 00:50:27.387231
2345	90	1	234	20	2020-06-02 00:50:27.395542	2020-06-02 00:50:27.395542
2346	24	1	234	755	2020-06-02 00:50:27.404574	2020-06-02 00:50:27.404574
2347	84	2	234	30	2020-06-02 00:50:27.412807	2020-06-02 00:50:27.412807
2348	18	4	235	193	2020-06-02 00:50:27.421731	2020-06-02 00:50:27.421731
2349	31	1	235	375	2020-06-02 00:50:27.43075	2020-06-02 00:50:27.43075
2350	92	2	236	289	2020-06-02 00:50:27.439917	2020-06-02 00:50:27.439917
2351	71	1	236	68	2020-06-02 00:50:27.448832	2020-06-02 00:50:27.448832
2352	47	1	236	28	2020-06-02 00:50:27.456893	2020-06-02 00:50:27.456893
2353	85	3	236	458	2020-06-02 00:50:27.465102	2020-06-02 00:50:27.465102
2354	43	2	236	576	2020-06-02 00:50:27.47367	2020-06-02 00:50:27.47367
2355	47	1	236	413	2020-06-02 00:50:27.48222	2020-06-02 00:50:27.48222
2356	45	5	237	629	2020-06-02 00:50:27.490472	2020-06-02 00:50:27.490472
2357	6	3	237	475	2020-06-02 00:50:27.499253	2020-06-02 00:50:27.499253
2358	59	2	237	34	2020-06-02 00:50:27.507795	2020-06-02 00:50:27.507795
2359	90	2	237	332	2020-06-02 00:50:27.516561	2020-06-02 00:50:27.516561
2360	66	2	237	377	2020-06-02 00:50:27.525897	2020-06-02 00:50:27.525897
2361	26	5	237	511	2020-06-02 00:50:27.535688	2020-06-02 00:50:27.535688
2362	14	2	237	737	2020-06-02 00:50:27.545039	2020-06-02 00:50:27.545039
2363	7	1	237	253	2020-06-02 00:50:27.554107	2020-06-02 00:50:27.554107
2364	92	4	237	402	2020-06-02 00:50:27.562704	2020-06-02 00:50:27.562704
2365	100	5	238	619	2020-06-02 00:50:27.57137	2020-06-02 00:50:27.57137
2366	17	2	238	114	2020-06-02 00:50:27.580076	2020-06-02 00:50:27.580076
2367	63	3	238	709	2020-06-02 00:50:27.591027	2020-06-02 00:50:27.591027
2368	48	3	238	365	2020-06-02 00:50:27.60059	2020-06-02 00:50:27.60059
2369	43	4	238	36	2020-06-02 00:50:27.611306	2020-06-02 00:50:27.611306
2370	84	5	238	34	2020-06-02 00:50:27.624762	2020-06-02 00:50:27.624762
2371	58	4	238	90	2020-06-02 00:50:27.639239	2020-06-02 00:50:27.639239
2372	62	1	238	412	2020-06-02 00:50:27.65373	2020-06-02 00:50:27.65373
2373	61	1	238	15	2020-06-02 00:50:27.669518	2020-06-02 00:50:27.669518
2374	82	1	239	776	2020-06-02 00:50:27.685454	2020-06-02 00:50:27.685454
2375	22	5	239	97	2020-06-02 00:50:27.706842	2020-06-02 00:50:27.706842
2376	33	3	239	742	2020-06-02 00:50:27.724549	2020-06-02 00:50:27.724549
2377	84	4	239	378	2020-06-02 00:50:27.741621	2020-06-02 00:50:27.741621
2378	52	2	239	563	2020-06-02 00:50:27.757159	2020-06-02 00:50:27.757159
2379	98	1	239	774	2020-06-02 00:50:27.771743	2020-06-02 00:50:27.771743
2380	23	4	239	496	2020-06-02 00:50:27.788291	2020-06-02 00:50:27.788291
2381	46	4	239	365	2020-06-02 00:50:27.805448	2020-06-02 00:50:27.805448
2382	77	3	239	447	2020-06-02 00:50:27.820325	2020-06-02 00:50:27.820325
2383	18	5	239	396	2020-06-02 00:50:27.833906	2020-06-02 00:50:27.833906
2384	33	3	240	753	2020-06-02 00:50:27.850119	2020-06-02 00:50:27.850119
2385	65	2	241	486	2020-06-02 00:50:27.865518	2020-06-02 00:50:27.865518
2386	42	2	241	633	2020-06-02 00:50:27.881578	2020-06-02 00:50:27.881578
2387	55	5	241	724	2020-06-02 00:50:27.897617	2020-06-02 00:50:27.897617
2388	8	1	241	301	2020-06-02 00:50:27.912672	2020-06-02 00:50:27.912672
2389	25	3	241	502	2020-06-02 00:50:27.928549	2020-06-02 00:50:27.928549
2390	80	1	242	36	2020-06-02 00:50:27.938755	2020-06-02 00:50:27.938755
2391	37	1	242	642	2020-06-02 00:50:27.948191	2020-06-02 00:50:27.948191
2392	61	1	242	596	2020-06-02 00:50:27.957605	2020-06-02 00:50:27.957605
2393	30	5	242	210	2020-06-02 00:50:27.966443	2020-06-02 00:50:27.966443
2394	23	4	242	52	2020-06-02 00:50:27.974252	2020-06-02 00:50:27.974252
2395	58	5	242	631	2020-06-02 00:50:27.982081	2020-06-02 00:50:27.982081
2396	69	2	242	754	2020-06-02 00:50:27.990352	2020-06-02 00:50:27.990352
2397	50	5	242	233	2020-06-02 00:50:27.998382	2020-06-02 00:50:27.998382
2398	89	2	243	697	2020-06-02 00:50:28.006618	2020-06-02 00:50:28.006618
2399	51	3	243	263	2020-06-02 00:50:28.014609	2020-06-02 00:50:28.014609
2400	87	1	243	100	2020-06-02 00:50:28.022467	2020-06-02 00:50:28.022467
2401	18	5	243	394	2020-06-02 00:50:28.03209	2020-06-02 00:50:28.03209
2402	17	4	243	402	2020-06-02 00:50:28.040842	2020-06-02 00:50:28.040842
2403	49	4	244	379	2020-06-02 00:50:28.050249	2020-06-02 00:50:28.050249
2404	83	2	245	1	2020-06-02 00:50:28.062233	2020-06-02 00:50:28.062233
2405	37	1	245	568	2020-06-02 00:50:28.075681	2020-06-02 00:50:28.075681
2406	7	1	245	333	2020-06-02 00:50:28.09121	2020-06-02 00:50:28.09121
2407	22	4	245	139	2020-06-02 00:50:28.106472	2020-06-02 00:50:28.106472
2408	95	2	245	452	2020-06-02 00:50:28.121282	2020-06-02 00:50:28.121282
2409	69	4	245	553	2020-06-02 00:50:28.134683	2020-06-02 00:50:28.134683
2410	81	1	245	140	2020-06-02 00:50:28.148592	2020-06-02 00:50:28.148592
2411	36	2	246	216	2020-06-02 00:50:28.159859	2020-06-02 00:50:28.159859
2412	73	2	246	175	2020-06-02 00:50:28.170453	2020-06-02 00:50:28.170453
2413	71	4	246	517	2020-06-02 00:50:28.182952	2020-06-02 00:50:28.182952
2414	62	5	246	36	2020-06-02 00:50:28.194166	2020-06-02 00:50:28.194166
2415	62	2	246	92	2020-06-02 00:50:28.205411	2020-06-02 00:50:28.205411
2416	40	4	247	381	2020-06-02 00:50:28.214764	2020-06-02 00:50:28.214764
2417	86	5	247	577	2020-06-02 00:50:28.226603	2020-06-02 00:50:28.226603
2418	27	5	247	18	2020-06-02 00:50:28.235995	2020-06-02 00:50:28.235995
2419	64	4	247	344	2020-06-02 00:50:28.246431	2020-06-02 00:50:28.246431
2420	38	5	247	643	2020-06-02 00:50:28.256266	2020-06-02 00:50:28.256266
2421	80	2	247	771	2020-06-02 00:50:28.265512	2020-06-02 00:50:28.265512
2422	16	5	247	438	2020-06-02 00:50:28.274932	2020-06-02 00:50:28.274932
2423	43	1	247	348	2020-06-02 00:50:28.283977	2020-06-02 00:50:28.283977
2424	31	5	247	514	2020-06-02 00:50:28.293416	2020-06-02 00:50:28.293416
2425	49	4	248	200	2020-06-02 00:50:28.302409	2020-06-02 00:50:28.302409
2426	35	4	248	249	2020-06-02 00:50:28.310579	2020-06-02 00:50:28.310579
2427	51	2	248	302	2020-06-02 00:50:28.318823	2020-06-02 00:50:28.318823
2428	64	4	248	477	2020-06-02 00:50:28.326986	2020-06-02 00:50:28.326986
2429	32	2	248	283	2020-06-02 00:50:28.334948	2020-06-02 00:50:28.334948
2430	76	3	248	375	2020-06-02 00:50:28.343046	2020-06-02 00:50:28.343046
2431	21	4	248	789	2020-06-02 00:50:28.351104	2020-06-02 00:50:28.351104
2432	18	5	248	536	2020-06-02 00:50:28.358692	2020-06-02 00:50:28.358692
2433	23	3	249	760	2020-06-02 00:50:28.367073	2020-06-02 00:50:28.367073
2434	6	5	249	610	2020-06-02 00:50:28.375131	2020-06-02 00:50:28.375131
2435	23	1	249	726	2020-06-02 00:50:28.383215	2020-06-02 00:50:28.383215
2436	69	1	250	216	2020-06-02 00:50:28.391084	2020-06-02 00:50:28.391084
2437	89	1	250	257	2020-06-02 00:50:28.399429	2020-06-02 00:50:28.399429
2438	57	2	250	742	2020-06-02 00:50:28.408146	2020-06-02 00:50:28.408146
2439	1	5	251	497	2020-06-02 00:50:28.416728	2020-06-02 00:50:28.416728
2440	74	4	251	128	2020-06-02 00:50:28.424784	2020-06-02 00:50:28.424784
2441	30	4	251	549	2020-06-02 00:50:28.432676	2020-06-02 00:50:28.432676
2442	45	4	251	373	2020-06-02 00:50:28.440559	2020-06-02 00:50:28.440559
2443	44	1	251	305	2020-06-02 00:50:28.448269	2020-06-02 00:50:28.448269
2444	8	4	251	722	2020-06-02 00:50:28.456426	2020-06-02 00:50:28.456426
2445	92	5	251	513	2020-06-02 00:50:28.464527	2020-06-02 00:50:28.464527
2446	76	4	251	79	2020-06-02 00:50:28.472737	2020-06-02 00:50:28.472737
2447	62	3	252	630	2020-06-02 00:50:28.481013	2020-06-02 00:50:28.481013
2448	26	5	252	128	2020-06-02 00:50:28.488951	2020-06-02 00:50:28.488951
2449	47	1	252	51	2020-06-02 00:50:28.497208	2020-06-02 00:50:28.497208
2450	11	1	252	650	2020-06-02 00:50:28.505221	2020-06-02 00:50:28.505221
2451	98	1	252	254	2020-06-02 00:50:28.513503	2020-06-02 00:50:28.513503
2452	13	2	252	547	2020-06-02 00:50:28.522174	2020-06-02 00:50:28.522174
2453	78	5	252	378	2020-06-02 00:50:28.531121	2020-06-02 00:50:28.531121
2454	88	3	252	498	2020-06-02 00:50:28.538992	2020-06-02 00:50:28.538992
2455	14	1	252	481	2020-06-02 00:50:28.546808	2020-06-02 00:50:28.546808
2456	7	3	253	54	2020-06-02 00:50:28.5547	2020-06-02 00:50:28.5547
2457	14	4	253	300	2020-06-02 00:50:28.562956	2020-06-02 00:50:28.562956
2458	56	3	253	790	2020-06-02 00:50:28.571828	2020-06-02 00:50:28.571828
2459	69	2	253	301	2020-06-02 00:50:28.580167	2020-06-02 00:50:28.580167
2460	66	4	253	708	2020-06-02 00:50:28.588523	2020-06-02 00:50:28.588523
2461	85	1	253	275	2020-06-02 00:50:28.596422	2020-06-02 00:50:28.596422
2462	45	4	253	452	2020-06-02 00:50:28.60437	2020-06-02 00:50:28.60437
2463	83	5	253	675	2020-06-02 00:50:28.612547	2020-06-02 00:50:28.612547
2464	97	5	253	78	2020-06-02 00:50:28.620507	2020-06-02 00:50:28.620507
2465	63	4	254	256	2020-06-02 00:50:28.62841	2020-06-02 00:50:28.62841
2466	12	1	254	538	2020-06-02 00:50:28.63623	2020-06-02 00:50:28.63623
2467	1	1	254	127	2020-06-02 00:50:28.644685	2020-06-02 00:50:28.644685
2468	13	4	254	358	2020-06-02 00:50:28.654814	2020-06-02 00:50:28.654814
2469	64	2	255	18	2020-06-02 00:50:28.663744	2020-06-02 00:50:28.663744
2470	68	2	256	208	2020-06-02 00:50:28.67261	2020-06-02 00:50:28.67261
2471	92	4	256	682	2020-06-02 00:50:28.682385	2020-06-02 00:50:28.682385
2472	59	2	256	669	2020-06-02 00:50:28.690191	2020-06-02 00:50:28.690191
2473	66	5	256	13	2020-06-02 00:50:28.697389	2020-06-02 00:50:28.697389
2474	8	3	256	703	2020-06-02 00:50:28.704806	2020-06-02 00:50:28.704806
2475	16	2	256	496	2020-06-02 00:50:28.711959	2020-06-02 00:50:28.711959
2476	32	1	256	692	2020-06-02 00:50:28.719371	2020-06-02 00:50:28.719371
2477	30	1	256	155	2020-06-02 00:50:28.726416	2020-06-02 00:50:28.726416
2478	11	4	256	519	2020-06-02 00:50:28.734199	2020-06-02 00:50:28.734199
2479	99	3	257	485	2020-06-02 00:50:28.742098	2020-06-02 00:50:28.742098
2480	31	4	257	178	2020-06-02 00:50:28.750087	2020-06-02 00:50:28.750087
2481	87	1	257	620	2020-06-02 00:50:28.757895	2020-06-02 00:50:28.757895
2482	66	1	257	679	2020-06-02 00:50:28.765203	2020-06-02 00:50:28.765203
2483	98	1	257	5	2020-06-02 00:50:28.772982	2020-06-02 00:50:28.772982
2484	24	3	257	506	2020-06-02 00:50:28.780182	2020-06-02 00:50:28.780182
2485	38	4	257	395	2020-06-02 00:50:28.788072	2020-06-02 00:50:28.788072
2486	60	3	258	8	2020-06-02 00:50:28.800134	2020-06-02 00:50:28.800134
2487	33	5	258	348	2020-06-02 00:50:28.809224	2020-06-02 00:50:28.809224
2488	18	3	258	436	2020-06-02 00:50:28.818103	2020-06-02 00:50:28.818103
2489	62	2	258	369	2020-06-02 00:50:28.825635	2020-06-02 00:50:28.825635
2490	49	3	258	703	2020-06-02 00:50:28.832865	2020-06-02 00:50:28.832865
2491	68	4	259	275	2020-06-02 00:50:28.840029	2020-06-02 00:50:28.840029
2492	69	1	259	635	2020-06-02 00:50:28.847821	2020-06-02 00:50:28.847821
2493	89	4	259	397	2020-06-02 00:50:28.855152	2020-06-02 00:50:28.855152
2494	22	1	259	336	2020-06-02 00:50:28.862169	2020-06-02 00:50:28.862169
2495	27	1	259	42	2020-06-02 00:50:28.869138	2020-06-02 00:50:28.869138
2496	85	3	259	330	2020-06-02 00:50:28.876373	2020-06-02 00:50:28.876373
2497	79	3	259	436	2020-06-02 00:50:28.883759	2020-06-02 00:50:28.883759
2498	77	5	259	574	2020-06-02 00:50:28.891977	2020-06-02 00:50:28.891977
2499	71	3	260	509	2020-06-02 00:50:28.899867	2020-06-02 00:50:28.899867
2500	73	1	260	744	2020-06-02 00:50:28.908087	2020-06-02 00:50:28.908087
2501	68	1	260	300	2020-06-02 00:50:28.915491	2020-06-02 00:50:28.915491
2502	83	3	260	474	2020-06-02 00:50:28.922561	2020-06-02 00:50:28.922561
2503	6	3	260	700	2020-06-02 00:50:28.929696	2020-06-02 00:50:28.929696
2504	54	4	261	455	2020-06-02 00:50:28.938068	2020-06-02 00:50:28.938068
2505	48	5	261	320	2020-06-02 00:50:28.945278	2020-06-02 00:50:28.945278
2506	38	4	261	590	2020-06-02 00:50:28.95226	2020-06-02 00:50:28.95226
2507	53	5	261	164	2020-06-02 00:50:28.959915	2020-06-02 00:50:28.959915
2508	96	1	261	66	2020-06-02 00:50:28.967786	2020-06-02 00:50:28.967786
2509	77	3	261	229	2020-06-02 00:50:28.975173	2020-06-02 00:50:28.975173
2510	91	5	261	459	2020-06-02 00:50:28.982612	2020-06-02 00:50:28.982612
2511	78	3	261	469	2020-06-02 00:50:28.990267	2020-06-02 00:50:28.990267
2512	48	4	262	21	2020-06-02 00:50:28.999148	2020-06-02 00:50:28.999148
2513	72	5	263	371	2020-06-02 00:50:29.007111	2020-06-02 00:50:29.007111
2514	23	5	263	84	2020-06-02 00:50:29.014819	2020-06-02 00:50:29.014819
2515	48	5	263	638	2020-06-02 00:50:29.022456	2020-06-02 00:50:29.022456
2516	52	2	263	116	2020-06-02 00:50:29.029916	2020-06-02 00:50:29.029916
2517	94	5	264	643	2020-06-02 00:50:29.037616	2020-06-02 00:50:29.037616
2518	54	4	264	558	2020-06-02 00:50:29.044929	2020-06-02 00:50:29.044929
2519	10	3	264	130	2020-06-02 00:50:29.052615	2020-06-02 00:50:29.052615
2520	4	5	264	636	2020-06-02 00:50:29.060491	2020-06-02 00:50:29.060491
2521	14	4	264	754	2020-06-02 00:50:29.068632	2020-06-02 00:50:29.068632
2522	20	3	264	492	2020-06-02 00:50:29.076118	2020-06-02 00:50:29.076118
2523	5	2	265	428	2020-06-02 00:50:29.083794	2020-06-02 00:50:29.083794
2524	84	5	266	69	2020-06-02 00:50:29.091258	2020-06-02 00:50:29.091258
2525	61	2	266	2	2020-06-02 00:50:29.098428	2020-06-02 00:50:29.098428
2526	33	2	266	472	2020-06-02 00:50:29.105737	2020-06-02 00:50:29.105737
2527	95	1	266	80	2020-06-02 00:50:29.112978	2020-06-02 00:50:29.112978
2528	80	1	266	724	2020-06-02 00:50:29.121625	2020-06-02 00:50:29.121625
2529	26	4	266	455	2020-06-02 00:50:29.128963	2020-06-02 00:50:29.128963
2530	74	1	266	485	2020-06-02 00:50:29.13654	2020-06-02 00:50:29.13654
2531	54	4	266	243	2020-06-02 00:50:29.144043	2020-06-02 00:50:29.144043
2532	14	4	266	799	2020-06-02 00:50:29.151272	2020-06-02 00:50:29.151272
2533	78	3	266	693	2020-06-02 00:50:29.159065	2020-06-02 00:50:29.159065
2534	64	4	267	582	2020-06-02 00:50:29.167713	2020-06-02 00:50:29.167713
2535	84	4	267	728	2020-06-02 00:50:29.175024	2020-06-02 00:50:29.175024
2536	51	5	267	37	2020-06-02 00:50:29.182116	2020-06-02 00:50:29.182116
2537	76	3	267	514	2020-06-02 00:50:29.189742	2020-06-02 00:50:29.189742
2538	73	1	267	763	2020-06-02 00:50:29.196838	2020-06-02 00:50:29.196838
2539	65	5	268	684	2020-06-02 00:50:29.204445	2020-06-02 00:50:29.204445
2540	69	5	268	354	2020-06-02 00:50:29.212232	2020-06-02 00:50:29.212232
2541	78	1	268	182	2020-06-02 00:50:29.219189	2020-06-02 00:50:29.219189
2542	28	3	268	67	2020-06-02 00:50:29.226424	2020-06-02 00:50:29.226424
2543	58	2	269	530	2020-06-02 00:50:29.233669	2020-06-02 00:50:29.233669
2544	28	2	269	446	2020-06-02 00:50:29.241116	2020-06-02 00:50:29.241116
2545	45	5	269	263	2020-06-02 00:50:29.247963	2020-06-02 00:50:29.247963
2546	72	3	269	323	2020-06-02 00:50:29.255671	2020-06-02 00:50:29.255671
2547	44	3	269	371	2020-06-02 00:50:29.262846	2020-06-02 00:50:29.262846
2548	37	1	269	132	2020-06-02 00:50:29.270416	2020-06-02 00:50:29.270416
2549	100	1	270	327	2020-06-02 00:50:29.277626	2020-06-02 00:50:29.277626
2550	99	4	270	663	2020-06-02 00:50:29.285133	2020-06-02 00:50:29.285133
2551	68	5	270	131	2020-06-02 00:50:29.292696	2020-06-02 00:50:29.292696
2552	9	3	270	69	2020-06-02 00:50:29.300676	2020-06-02 00:50:29.300676
2553	59	2	271	231	2020-06-02 00:50:29.308133	2020-06-02 00:50:29.308133
2554	42	2	271	400	2020-06-02 00:50:29.315564	2020-06-02 00:50:29.315564
2555	52	1	271	767	2020-06-02 00:50:29.322992	2020-06-02 00:50:29.322992
2556	57	2	271	15	2020-06-02 00:50:29.33027	2020-06-02 00:50:29.33027
2557	46	4	271	308	2020-06-02 00:50:29.337727	2020-06-02 00:50:29.337727
2558	100	4	271	660	2020-06-02 00:50:29.344928	2020-06-02 00:50:29.344928
2559	39	1	271	770	2020-06-02 00:50:29.353285	2020-06-02 00:50:29.353285
2560	71	4	271	689	2020-06-02 00:50:29.361235	2020-06-02 00:50:29.361235
2561	42	2	271	365	2020-06-02 00:50:29.369304	2020-06-02 00:50:29.369304
2562	71	3	271	509	2020-06-02 00:50:29.376748	2020-06-02 00:50:29.376748
2563	77	1	272	116	2020-06-02 00:50:29.384612	2020-06-02 00:50:29.384612
2564	79	5	272	38	2020-06-02 00:50:29.392171	2020-06-02 00:50:29.392171
2565	50	1	272	161	2020-06-02 00:50:29.39973	2020-06-02 00:50:29.39973
2566	60	3	272	302	2020-06-02 00:50:29.408126	2020-06-02 00:50:29.408126
2567	62	4	272	533	2020-06-02 00:50:29.415904	2020-06-02 00:50:29.415904
2568	72	2	272	273	2020-06-02 00:50:29.423448	2020-06-02 00:50:29.423448
2569	70	3	272	153	2020-06-02 00:50:29.430877	2020-06-02 00:50:29.430877
2570	43	1	272	569	2020-06-02 00:50:29.438221	2020-06-02 00:50:29.438221
2571	91	1	272	131	2020-06-02 00:50:29.445397	2020-06-02 00:50:29.445397
2572	13	4	273	289	2020-06-02 00:50:29.452811	2020-06-02 00:50:29.452811
2573	42	1	273	198	2020-06-02 00:50:29.460385	2020-06-02 00:50:29.460385
2574	71	4	273	795	2020-06-02 00:50:29.467836	2020-06-02 00:50:29.467836
2575	18	4	273	621	2020-06-02 00:50:29.475551	2020-06-02 00:50:29.475551
2576	64	1	273	557	2020-06-02 00:50:29.482779	2020-06-02 00:50:29.482779
2577	88	2	273	204	2020-06-02 00:50:29.494656	2020-06-02 00:50:29.494656
2578	27	3	274	321	2020-06-02 00:50:29.503673	2020-06-02 00:50:29.503673
2579	59	2	275	427	2020-06-02 00:50:29.512107	2020-06-02 00:50:29.512107
2580	93	5	275	428	2020-06-02 00:50:29.51994	2020-06-02 00:50:29.51994
2581	59	3	275	561	2020-06-02 00:50:29.527927	2020-06-02 00:50:29.527927
2582	3	1	275	681	2020-06-02 00:50:29.534988	2020-06-02 00:50:29.534988
2583	14	2	275	545	2020-06-02 00:50:29.54224	2020-06-02 00:50:29.54224
2584	93	2	275	218	2020-06-02 00:50:29.549438	2020-06-02 00:50:29.549438
2585	30	5	275	240	2020-06-02 00:50:29.556806	2020-06-02 00:50:29.556806
2586	59	1	275	750	2020-06-02 00:50:29.564062	2020-06-02 00:50:29.564062
2587	1	4	276	63	2020-06-02 00:50:29.57227	2020-06-02 00:50:29.57227
2588	72	1	276	574	2020-06-02 00:50:29.579425	2020-06-02 00:50:29.579425
2589	39	4	276	480	2020-06-02 00:50:29.586621	2020-06-02 00:50:29.586621
2590	29	3	276	576	2020-06-02 00:50:29.59362	2020-06-02 00:50:29.59362
2591	4	1	277	656	2020-06-02 00:50:29.60075	2020-06-02 00:50:29.60075
2592	53	3	277	167	2020-06-02 00:50:29.607982	2020-06-02 00:50:29.607982
2593	73	5	277	11	2020-06-02 00:50:29.615812	2020-06-02 00:50:29.615812
2594	90	5	277	309	2020-06-02 00:50:29.624151	2020-06-02 00:50:29.624151
2595	32	4	277	618	2020-06-02 00:50:29.631813	2020-06-02 00:50:29.631813
2596	71	5	277	241	2020-06-02 00:50:29.638952	2020-06-02 00:50:29.638952
2597	98	5	277	780	2020-06-02 00:50:29.646228	2020-06-02 00:50:29.646228
2598	77	2	277	599	2020-06-02 00:50:29.654916	2020-06-02 00:50:29.654916
2599	78	2	278	742	2020-06-02 00:50:29.66249	2020-06-02 00:50:29.66249
2600	84	1	279	295	2020-06-02 00:50:29.669738	2020-06-02 00:50:29.669738
2601	86	4	279	298	2020-06-02 00:50:29.678106	2020-06-02 00:50:29.678106
2602	62	2	279	328	2020-06-02 00:50:29.685636	2020-06-02 00:50:29.685636
2603	24	2	279	20	2020-06-02 00:50:29.69289	2020-06-02 00:50:29.69289
2604	21	4	279	447	2020-06-02 00:50:29.700216	2020-06-02 00:50:29.700216
2605	54	4	280	676	2020-06-02 00:50:29.70867	2020-06-02 00:50:29.70867
2606	11	3	281	635	2020-06-02 00:50:29.715907	2020-06-02 00:50:29.715907
2607	98	4	281	441	2020-06-02 00:50:29.724707	2020-06-02 00:50:29.724707
2608	1	4	281	158	2020-06-02 00:50:29.733033	2020-06-02 00:50:29.733033
2609	36	3	282	585	2020-06-02 00:50:29.740796	2020-06-02 00:50:29.740796
2610	74	2	282	111	2020-06-02 00:50:29.748067	2020-06-02 00:50:29.748067
2611	31	2	282	25	2020-06-02 00:50:29.755594	2020-06-02 00:50:29.755594
2612	79	5	283	154	2020-06-02 00:50:29.762762	2020-06-02 00:50:29.762762
2613	24	1	283	426	2020-06-02 00:50:29.76988	2020-06-02 00:50:29.76988
2614	76	2	283	770	2020-06-02 00:50:29.777391	2020-06-02 00:50:29.777391
2615	68	5	283	48	2020-06-02 00:50:29.784604	2020-06-02 00:50:29.784604
2616	79	4	283	205	2020-06-02 00:50:29.791596	2020-06-02 00:50:29.791596
2617	88	4	283	354	2020-06-02 00:50:29.798867	2020-06-02 00:50:29.798867
2618	16	3	283	27	2020-06-02 00:50:29.806178	2020-06-02 00:50:29.806178
2619	47	1	283	343	2020-06-02 00:50:29.813247	2020-06-02 00:50:29.813247
2620	57	3	283	118	2020-06-02 00:50:29.820668	2020-06-02 00:50:29.820668
2621	51	4	284	141	2020-06-02 00:50:29.828045	2020-06-02 00:50:29.828045
2622	78	1	284	191	2020-06-02 00:50:29.834912	2020-06-02 00:50:29.834912
2623	37	4	284	284	2020-06-02 00:50:29.842155	2020-06-02 00:50:29.842155
2624	60	1	285	438	2020-06-02 00:50:29.849421	2020-06-02 00:50:29.849421
2625	39	2	285	81	2020-06-02 00:50:29.857226	2020-06-02 00:50:29.857226
2626	67	4	285	421	2020-06-02 00:50:29.864265	2020-06-02 00:50:29.864265
2627	23	5	285	341	2020-06-02 00:50:29.871719	2020-06-02 00:50:29.871719
2628	76	1	285	760	2020-06-02 00:50:29.878904	2020-06-02 00:50:29.878904
2629	53	2	286	631	2020-06-02 00:50:29.886148	2020-06-02 00:50:29.886148
2630	27	4	286	51	2020-06-02 00:50:29.893198	2020-06-02 00:50:29.893198
2631	84	4	286	799	2020-06-02 00:50:29.900773	2020-06-02 00:50:29.900773
2632	68	2	286	139	2020-06-02 00:50:29.9091	2020-06-02 00:50:29.9091
2633	29	5	286	455	2020-06-02 00:50:29.916632	2020-06-02 00:50:29.916632
2634	21	5	286	387	2020-06-02 00:50:29.92493	2020-06-02 00:50:29.92493
2635	13	2	286	339	2020-06-02 00:50:29.933039	2020-06-02 00:50:29.933039
2636	30	2	287	83	2020-06-02 00:50:29.940877	2020-06-02 00:50:29.940877
2637	16	4	287	329	2020-06-02 00:50:29.948229	2020-06-02 00:50:29.948229
2638	43	3	287	732	2020-06-02 00:50:29.955412	2020-06-02 00:50:29.955412
2639	65	2	287	632	2020-06-02 00:50:29.962434	2020-06-02 00:50:29.962434
2640	88	1	287	112	2020-06-02 00:50:29.969842	2020-06-02 00:50:29.969842
2641	91	3	287	708	2020-06-02 00:50:29.976994	2020-06-02 00:50:29.976994
2642	14	5	287	249	2020-06-02 00:50:29.984363	2020-06-02 00:50:29.984363
2643	97	4	287	152	2020-06-02 00:50:29.991929	2020-06-02 00:50:29.991929
2644	31	3	287	55	2020-06-02 00:50:29.999452	2020-06-02 00:50:29.999452
2645	64	4	287	680	2020-06-02 00:50:30.006779	2020-06-02 00:50:30.006779
2646	63	4	288	558	2020-06-02 00:50:30.014533	2020-06-02 00:50:30.014533
2647	50	1	288	513	2020-06-02 00:50:30.02183	2020-06-02 00:50:30.02183
2648	78	2	288	421	2020-06-02 00:50:30.028824	2020-06-02 00:50:30.028824
2649	86	1	289	234	2020-06-02 00:50:30.035941	2020-06-02 00:50:30.035941
2650	68	3	289	396	2020-06-02 00:50:30.043285	2020-06-02 00:50:30.043285
2651	43	2	289	485	2020-06-02 00:50:30.050428	2020-06-02 00:50:30.050428
2652	32	3	289	139	2020-06-02 00:50:30.057822	2020-06-02 00:50:30.057822
2653	89	3	289	175	2020-06-02 00:50:30.06537	2020-06-02 00:50:30.06537
2654	62	5	289	739	2020-06-02 00:50:30.072788	2020-06-02 00:50:30.072788
2655	91	5	289	706	2020-06-02 00:50:30.08007	2020-06-02 00:50:30.08007
2656	62	5	289	279	2020-06-02 00:50:30.087388	2020-06-02 00:50:30.087388
2657	63	5	290	160	2020-06-02 00:50:30.094554	2020-06-02 00:50:30.094554
2658	91	5	290	272	2020-06-02 00:50:30.101822	2020-06-02 00:50:30.101822
2659	17	2	290	453	2020-06-02 00:50:30.109277	2020-06-02 00:50:30.109277
2660	98	2	290	788	2020-06-02 00:50:30.116883	2020-06-02 00:50:30.116883
2661	45	3	290	238	2020-06-02 00:50:30.127602	2020-06-02 00:50:30.127602
2662	48	2	290	677	2020-06-02 00:50:30.136249	2020-06-02 00:50:30.136249
2663	76	3	290	162	2020-06-02 00:50:30.143532	2020-06-02 00:50:30.143532
2664	10	2	290	624	2020-06-02 00:50:30.151094	2020-06-02 00:50:30.151094
2665	98	3	290	368	2020-06-02 00:50:30.158199	2020-06-02 00:50:30.158199
2666	37	3	290	607	2020-06-02 00:50:30.165782	2020-06-02 00:50:30.165782
2667	37	5	291	547	2020-06-02 00:50:30.173413	2020-06-02 00:50:30.173413
2668	59	5	291	709	2020-06-02 00:50:30.180968	2020-06-02 00:50:30.180968
2669	87	5	291	318	2020-06-02 00:50:30.188427	2020-06-02 00:50:30.188427
2670	21	1	292	258	2020-06-02 00:50:30.19658	2020-06-02 00:50:30.19658
2671	68	4	292	542	2020-06-02 00:50:30.204103	2020-06-02 00:50:30.204103
2672	14	4	292	50	2020-06-02 00:50:30.212062	2020-06-02 00:50:30.212062
2673	62	5	292	139	2020-06-02 00:50:30.21929	2020-06-02 00:50:30.21929
2674	47	1	293	447	2020-06-02 00:50:30.22694	2020-06-02 00:50:30.22694
2675	26	2	294	588	2020-06-02 00:50:30.234762	2020-06-02 00:50:30.234762
2676	89	3	294	228	2020-06-02 00:50:30.242741	2020-06-02 00:50:30.242741
2677	92	5	294	123	2020-06-02 00:50:30.250382	2020-06-02 00:50:30.250382
2678	100	5	295	404	2020-06-02 00:50:30.257751	2020-06-02 00:50:30.257751
2679	94	1	295	705	2020-06-02 00:50:30.264884	2020-06-02 00:50:30.264884
2680	73	3	295	140	2020-06-02 00:50:30.272534	2020-06-02 00:50:30.272534
2681	81	1	296	188	2020-06-02 00:50:30.279748	2020-06-02 00:50:30.279748
2682	26	3	296	697	2020-06-02 00:50:30.287452	2020-06-02 00:50:30.287452
2683	76	4	296	208	2020-06-02 00:50:30.294769	2020-06-02 00:50:30.294769
2684	65	2	296	616	2020-06-02 00:50:30.302422	2020-06-02 00:50:30.302422
2685	70	3	296	192	2020-06-02 00:50:30.309564	2020-06-02 00:50:30.309564
2686	44	1	296	650	2020-06-02 00:50:30.316975	2020-06-02 00:50:30.316975
2687	94	2	296	452	2020-06-02 00:50:30.326926	2020-06-02 00:50:30.326926
2688	76	3	296	544	2020-06-02 00:50:30.335115	2020-06-02 00:50:30.335115
2689	28	1	297	347	2020-06-02 00:50:30.344547	2020-06-02 00:50:30.344547
2690	3	4	297	575	2020-06-02 00:50:30.359694	2020-06-02 00:50:30.359694
2691	86	1	297	595	2020-06-02 00:50:30.371691	2020-06-02 00:50:30.371691
2692	18	4	297	644	2020-06-02 00:50:30.38531	2020-06-02 00:50:30.38531
2693	6	1	297	564	2020-06-02 00:50:30.399781	2020-06-02 00:50:30.399781
2694	54	2	297	2	2020-06-02 00:50:30.415467	2020-06-02 00:50:30.415467
2695	3	3	297	282	2020-06-02 00:50:30.429475	2020-06-02 00:50:30.429475
2696	22	2	297	703	2020-06-02 00:50:30.443603	2020-06-02 00:50:30.443603
2697	70	1	297	517	2020-06-02 00:50:30.456554	2020-06-02 00:50:30.456554
2698	42	5	298	321	2020-06-02 00:50:30.469222	2020-06-02 00:50:30.469222
2699	21	4	298	723	2020-06-02 00:50:30.485525	2020-06-02 00:50:30.485525
2700	3	2	298	590	2020-06-02 00:50:30.499691	2020-06-02 00:50:30.499691
2701	42	2	298	143	2020-06-02 00:50:30.512019	2020-06-02 00:50:30.512019
2702	30	1	298	311	2020-06-02 00:50:30.526306	2020-06-02 00:50:30.526306
2703	63	5	298	232	2020-06-02 00:50:30.540143	2020-06-02 00:50:30.540143
2704	91	4	298	676	2020-06-02 00:50:30.553292	2020-06-02 00:50:30.553292
2705	7	3	298	419	2020-06-02 00:50:30.566401	2020-06-02 00:50:30.566401
2706	44	4	299	210	2020-06-02 00:50:30.577926	2020-06-02 00:50:30.577926
2707	31	4	300	291	2020-06-02 00:50:30.589942	2020-06-02 00:50:30.589942
2708	96	1	300	167	2020-06-02 00:50:30.603131	2020-06-02 00:50:30.603131
2709	44	5	300	96	2020-06-02 00:50:30.614763	2020-06-02 00:50:30.614763
2710	94	3	300	707	2020-06-02 00:50:30.624105	2020-06-02 00:50:30.624105
2711	22	2	300	633	2020-06-02 00:50:30.63372	2020-06-02 00:50:30.63372
2712	27	2	300	581	2020-06-02 00:50:30.642548	2020-06-02 00:50:30.642548
2713	58	5	300	313	2020-06-02 00:50:30.651715	2020-06-02 00:50:30.651715
2714	85	3	300	352	2020-06-02 00:50:30.660439	2020-06-02 00:50:30.660439
2715	50	2	301	87	2020-06-02 00:50:30.668019	2020-06-02 00:50:30.668019
2716	44	2	301	293	2020-06-02 00:50:30.675369	2020-06-02 00:50:30.675369
2717	6	2	301	690	2020-06-02 00:50:30.683456	2020-06-02 00:50:30.683456
2718	60	1	301	782	2020-06-02 00:50:30.690744	2020-06-02 00:50:30.690744
2719	57	4	301	595	2020-06-02 00:50:30.697944	2020-06-02 00:50:30.697944
2720	54	4	301	605	2020-06-02 00:50:30.70544	2020-06-02 00:50:30.70544
2721	55	2	301	775	2020-06-02 00:50:30.712868	2020-06-02 00:50:30.712868
2722	16	4	301	719	2020-06-02 00:50:30.720427	2020-06-02 00:50:30.720427
2723	50	5	301	523	2020-06-02 00:50:30.7283	2020-06-02 00:50:30.7283
2724	75	5	302	769	2020-06-02 00:50:30.735569	2020-06-02 00:50:30.735569
2725	33	2	303	648	2020-06-02 00:50:30.742918	2020-06-02 00:50:30.742918
2726	34	5	303	441	2020-06-02 00:50:30.750828	2020-06-02 00:50:30.750828
2727	24	1	303	427	2020-06-02 00:50:30.758064	2020-06-02 00:50:30.758064
2728	19	5	303	528	2020-06-02 00:50:30.765437	2020-06-02 00:50:30.765437
2729	83	2	303	600	2020-06-02 00:50:30.772866	2020-06-02 00:50:30.772866
2730	40	5	304	57	2020-06-02 00:50:30.780454	2020-06-02 00:50:30.780454
2731	98	2	304	58	2020-06-02 00:50:30.788252	2020-06-02 00:50:30.788252
2732	68	3	304	230	2020-06-02 00:50:30.795922	2020-06-02 00:50:30.795922
2733	98	4	305	620	2020-06-02 00:50:30.803547	2020-06-02 00:50:30.803547
2734	9	5	305	539	2020-06-02 00:50:30.811221	2020-06-02 00:50:30.811221
2735	65	3	305	188	2020-06-02 00:50:30.81897	2020-06-02 00:50:30.81897
2736	34	2	305	143	2020-06-02 00:50:30.826679	2020-06-02 00:50:30.826679
2737	72	5	305	625	2020-06-02 00:50:30.834248	2020-06-02 00:50:30.834248
2738	58	1	305	184	2020-06-02 00:50:30.841607	2020-06-02 00:50:30.841607
2739	68	2	305	574	2020-06-02 00:50:30.848995	2020-06-02 00:50:30.848995
2740	13	2	305	268	2020-06-02 00:50:30.860016	2020-06-02 00:50:30.860016
2741	27	5	305	102	2020-06-02 00:50:30.869795	2020-06-02 00:50:30.869795
2742	48	1	306	204	2020-06-02 00:50:30.880608	2020-06-02 00:50:30.880608
2743	52	2	306	463	2020-06-02 00:50:30.890688	2020-06-02 00:50:30.890688
2744	68	2	306	649	2020-06-02 00:50:30.899899	2020-06-02 00:50:30.899899
2745	36	4	306	309	2020-06-02 00:50:30.909294	2020-06-02 00:50:30.909294
2746	37	5	306	456	2020-06-02 00:50:30.917408	2020-06-02 00:50:30.917408
2747	20	1	306	621	2020-06-02 00:50:30.924864	2020-06-02 00:50:30.924864
2748	11	2	306	565	2020-06-02 00:50:30.932166	2020-06-02 00:50:30.932166
2749	19	5	306	635	2020-06-02 00:50:30.939519	2020-06-02 00:50:30.939519
2750	37	3	306	448	2020-06-02 00:50:30.946966	2020-06-02 00:50:30.946966
2751	90	5	306	752	2020-06-02 00:50:30.95441	2020-06-02 00:50:30.95441
2752	43	4	307	84	2020-06-02 00:50:30.961406	2020-06-02 00:50:30.961406
2753	77	2	307	259	2020-06-02 00:50:30.968769	2020-06-02 00:50:30.968769
2754	63	4	307	40	2020-06-02 00:50:30.975936	2020-06-02 00:50:30.975936
2755	10	3	307	304	2020-06-02 00:50:30.983242	2020-06-02 00:50:30.983242
2756	37	5	307	224	2020-06-02 00:50:30.99087	2020-06-02 00:50:30.99087
2757	76	4	307	672	2020-06-02 00:50:30.998161	2020-06-02 00:50:30.998161
2758	96	4	307	242	2020-06-02 00:50:31.005632	2020-06-02 00:50:31.005632
2759	61	2	307	303	2020-06-02 00:50:31.012965	2020-06-02 00:50:31.012965
2760	26	5	307	335	2020-06-02 00:50:31.020422	2020-06-02 00:50:31.020422
2761	86	2	307	134	2020-06-02 00:50:31.027693	2020-06-02 00:50:31.027693
2762	92	5	308	490	2020-06-02 00:50:31.035219	2020-06-02 00:50:31.035219
2763	46	2	308	753	2020-06-02 00:50:31.042952	2020-06-02 00:50:31.042952
2764	92	5	308	650	2020-06-02 00:50:31.051214	2020-06-02 00:50:31.051214
2765	34	5	308	277	2020-06-02 00:50:31.058398	2020-06-02 00:50:31.058398
2766	55	1	308	413	2020-06-02 00:50:31.065772	2020-06-02 00:50:31.065772
2767	71	5	309	162	2020-06-02 00:50:31.072945	2020-06-02 00:50:31.072945
2768	82	3	309	230	2020-06-02 00:50:31.080255	2020-06-02 00:50:31.080255
2769	47	2	309	496	2020-06-02 00:50:31.087422	2020-06-02 00:50:31.087422
2770	21	1	309	468	2020-06-02 00:50:31.095251	2020-06-02 00:50:31.095251
2771	67	4	309	82	2020-06-02 00:50:31.102538	2020-06-02 00:50:31.102538
2772	76	1	309	589	2020-06-02 00:50:31.109779	2020-06-02 00:50:31.109779
2773	72	3	309	117	2020-06-02 00:50:31.117015	2020-06-02 00:50:31.117015
2774	65	1	309	777	2020-06-02 00:50:31.125524	2020-06-02 00:50:31.125524
2775	9	5	310	477	2020-06-02 00:50:31.133388	2020-06-02 00:50:31.133388
2776	35	1	310	540	2020-06-02 00:50:31.141558	2020-06-02 00:50:31.141558
2777	4	3	310	239	2020-06-02 00:50:31.14909	2020-06-02 00:50:31.14909
2778	15	4	310	550	2020-06-02 00:50:31.156947	2020-06-02 00:50:31.156947
2779	24	3	310	505	2020-06-02 00:50:31.164354	2020-06-02 00:50:31.164354
2780	96	2	311	608	2020-06-02 00:50:31.172024	2020-06-02 00:50:31.172024
2781	90	1	311	476	2020-06-02 00:50:31.179538	2020-06-02 00:50:31.179538
2782	86	5	312	528	2020-06-02 00:50:31.187134	2020-06-02 00:50:31.187134
2783	17	5	312	57	2020-06-02 00:50:31.194841	2020-06-02 00:50:31.194841
2784	11	3	312	283	2020-06-02 00:50:31.202453	2020-06-02 00:50:31.202453
2785	37	5	312	125	2020-06-02 00:50:31.210163	2020-06-02 00:50:31.210163
2786	43	5	312	411	2020-06-02 00:50:31.217625	2020-06-02 00:50:31.217625
2787	29	4	312	569	2020-06-02 00:50:31.225422	2020-06-02 00:50:31.225422
2788	97	5	313	654	2020-06-02 00:50:31.233176	2020-06-02 00:50:31.233176
2789	86	5	313	62	2020-06-02 00:50:31.241574	2020-06-02 00:50:31.241574
2790	44	5	313	595	2020-06-02 00:50:31.24936	2020-06-02 00:50:31.24936
2791	18	3	313	606	2020-06-02 00:50:31.257251	2020-06-02 00:50:31.257251
2792	67	3	314	231	2020-06-02 00:50:31.265058	2020-06-02 00:50:31.265058
2793	62	4	314	256	2020-06-02 00:50:31.272611	2020-06-02 00:50:31.272611
2794	42	2	314	754	2020-06-02 00:50:31.280433	2020-06-02 00:50:31.280433
2795	39	2	314	207	2020-06-02 00:50:31.288362	2020-06-02 00:50:31.288362
2796	11	4	314	68	2020-06-02 00:50:31.2964	2020-06-02 00:50:31.2964
2797	94	5	314	189	2020-06-02 00:50:31.303901	2020-06-02 00:50:31.303901
2798	94	3	314	44	2020-06-02 00:50:31.311423	2020-06-02 00:50:31.311423
2799	100	3	314	159	2020-06-02 00:50:31.318989	2020-06-02 00:50:31.318989
2800	35	5	314	130	2020-06-02 00:50:31.32703	2020-06-02 00:50:31.32703
2801	10	5	314	730	2020-06-02 00:50:31.334601	2020-06-02 00:50:31.334601
2802	28	3	315	520	2020-06-02 00:50:31.342478	2020-06-02 00:50:31.342478
2803	31	5	315	63	2020-06-02 00:50:31.349969	2020-06-02 00:50:31.349969
2804	99	3	315	28	2020-06-02 00:50:31.357416	2020-06-02 00:50:31.357416
2805	5	3	315	448	2020-06-02 00:50:31.365175	2020-06-02 00:50:31.365175
2806	10	1	315	687	2020-06-02 00:50:31.372846	2020-06-02 00:50:31.372846
2807	33	3	315	743	2020-06-02 00:50:31.380696	2020-06-02 00:50:31.380696
2808	39	3	315	487	2020-06-02 00:50:31.388055	2020-06-02 00:50:31.388055
2809	50	3	315	379	2020-06-02 00:50:31.395445	2020-06-02 00:50:31.395445
2810	8	4	315	336	2020-06-02 00:50:31.403434	2020-06-02 00:50:31.403434
2811	13	4	315	186	2020-06-02 00:50:31.411982	2020-06-02 00:50:31.411982
2812	89	4	316	489	2020-06-02 00:50:31.420066	2020-06-02 00:50:31.420066
2813	53	4	316	643	2020-06-02 00:50:31.427519	2020-06-02 00:50:31.427519
2814	94	2	316	464	2020-06-02 00:50:31.439181	2020-06-02 00:50:31.439181
2815	33	2	317	286	2020-06-02 00:50:31.448044	2020-06-02 00:50:31.448044
2816	64	5	317	337	2020-06-02 00:50:31.456155	2020-06-02 00:50:31.456155
2817	3	3	317	315	2020-06-02 00:50:31.463821	2020-06-02 00:50:31.463821
2818	8	2	317	431	2020-06-02 00:50:31.471718	2020-06-02 00:50:31.471718
2819	30	1	318	242	2020-06-02 00:50:31.479841	2020-06-02 00:50:31.479841
2820	55	5	318	212	2020-06-02 00:50:31.487809	2020-06-02 00:50:31.487809
2821	59	3	318	357	2020-06-02 00:50:31.495101	2020-06-02 00:50:31.495101
2822	94	1	318	69	2020-06-02 00:50:31.502535	2020-06-02 00:50:31.502535
2823	35	4	318	421	2020-06-02 00:50:31.510142	2020-06-02 00:50:31.510142
2824	94	2	318	409	2020-06-02 00:50:31.517425	2020-06-02 00:50:31.517425
2825	74	4	318	684	2020-06-02 00:50:31.52492	2020-06-02 00:50:31.52492
2826	42	4	318	323	2020-06-02 00:50:31.532512	2020-06-02 00:50:31.532512
2827	40	3	318	381	2020-06-02 00:50:31.540197	2020-06-02 00:50:31.540197
2828	29	4	318	390	2020-06-02 00:50:31.547528	2020-06-02 00:50:31.547528
2829	87	4	319	790	2020-06-02 00:50:31.55537	2020-06-02 00:50:31.55537
2830	72	2	319	11	2020-06-02 00:50:31.562782	2020-06-02 00:50:31.562782
2831	65	5	319	323	2020-06-02 00:50:31.570083	2020-06-02 00:50:31.570083
2832	24	1	319	576	2020-06-02 00:50:31.577538	2020-06-02 00:50:31.577538
2833	16	1	319	451	2020-06-02 00:50:31.585082	2020-06-02 00:50:31.585082
2834	29	1	320	374	2020-06-02 00:50:31.592893	2020-06-02 00:50:31.592893
2835	54	2	320	421	2020-06-02 00:50:31.600623	2020-06-02 00:50:31.600623
2836	42	5	320	49	2020-06-02 00:50:31.608015	2020-06-02 00:50:31.608015
2837	36	2	320	273	2020-06-02 00:50:31.615199	2020-06-02 00:50:31.615199
2838	3	4	320	747	2020-06-02 00:50:31.622805	2020-06-02 00:50:31.622805
2839	40	2	320	477	2020-06-02 00:50:31.630692	2020-06-02 00:50:31.630692
2840	15	2	321	679	2020-06-02 00:50:31.638436	2020-06-02 00:50:31.638436
2841	86	2	321	474	2020-06-02 00:50:31.647287	2020-06-02 00:50:31.647287
2842	97	3	321	693	2020-06-02 00:50:31.656082	2020-06-02 00:50:31.656082
2843	52	4	321	511	2020-06-02 00:50:31.664876	2020-06-02 00:50:31.664876
2844	52	2	321	570	2020-06-02 00:50:31.673466	2020-06-02 00:50:31.673466
2845	84	3	321	759	2020-06-02 00:50:31.681073	2020-06-02 00:50:31.681073
2846	48	4	321	609	2020-06-02 00:50:31.68957	2020-06-02 00:50:31.68957
2847	29	3	321	190	2020-06-02 00:50:31.697864	2020-06-02 00:50:31.697864
2848	50	3	322	332	2020-06-02 00:50:31.707077	2020-06-02 00:50:31.707077
2849	66	5	322	386	2020-06-02 00:50:31.716513	2020-06-02 00:50:31.716513
2850	36	2	322	227	2020-06-02 00:50:31.726112	2020-06-02 00:50:31.726112
2851	44	4	322	454	2020-06-02 00:50:31.736104	2020-06-02 00:50:31.736104
2852	60	2	323	799	2020-06-02 00:50:31.7467	2020-06-02 00:50:31.7467
2853	78	1	323	652	2020-06-02 00:50:31.761379	2020-06-02 00:50:31.761379
2854	65	3	323	542	2020-06-02 00:50:31.77231	2020-06-02 00:50:31.77231
2855	23	5	324	565	2020-06-02 00:50:31.782922	2020-06-02 00:50:31.782922
2856	24	2	324	747	2020-06-02 00:50:31.793528	2020-06-02 00:50:31.793528
2857	80	2	325	663	2020-06-02 00:50:31.805065	2020-06-02 00:50:31.805065
2858	97	1	325	131	2020-06-02 00:50:31.815604	2020-06-02 00:50:31.815604
2859	63	5	325	615	2020-06-02 00:50:31.826943	2020-06-02 00:50:31.826943
2860	95	2	325	740	2020-06-02 00:50:31.837431	2020-06-02 00:50:31.837431
2861	80	5	326	132	2020-06-02 00:50:31.847959	2020-06-02 00:50:31.847959
2862	5	5	327	315	2020-06-02 00:50:31.85848	2020-06-02 00:50:31.85848
2863	72	3	327	373	2020-06-02 00:50:31.869376	2020-06-02 00:50:31.869376
2864	19	2	327	442	2020-06-02 00:50:31.880211	2020-06-02 00:50:31.880211
2865	76	5	327	595	2020-06-02 00:50:31.890844	2020-06-02 00:50:31.890844
2866	68	3	327	133	2020-06-02 00:50:31.901163	2020-06-02 00:50:31.901163
2867	82	3	327	668	2020-06-02 00:50:31.912299	2020-06-02 00:50:31.912299
2868	16	2	327	542	2020-06-02 00:50:31.922204	2020-06-02 00:50:31.922204
2869	46	3	328	519	2020-06-02 00:50:31.932059	2020-06-02 00:50:31.932059
2870	43	3	328	591	2020-06-02 00:50:31.942	2020-06-02 00:50:31.942
2871	61	2	328	319	2020-06-02 00:50:31.952605	2020-06-02 00:50:31.952605
2872	92	4	328	567	2020-06-02 00:50:31.962854	2020-06-02 00:50:31.962854
2873	88	4	328	727	2020-06-02 00:50:31.972735	2020-06-02 00:50:31.972735
2874	49	4	328	768	2020-06-02 00:50:31.98288	2020-06-02 00:50:31.98288
2875	26	2	329	441	2020-06-02 00:50:31.993198	2020-06-02 00:50:31.993198
2876	97	4	329	520	2020-06-02 00:50:32.00316	2020-06-02 00:50:32.00316
2877	31	2	329	742	2020-06-02 00:50:32.01351	2020-06-02 00:50:32.01351
2878	100	1	329	20	2020-06-02 00:50:32.023374	2020-06-02 00:50:32.023374
2879	12	3	330	381	2020-06-02 00:50:32.033138	2020-06-02 00:50:32.033138
2880	29	3	330	216	2020-06-02 00:50:32.043019	2020-06-02 00:50:32.043019
2881	100	5	330	753	2020-06-02 00:50:32.052645	2020-06-02 00:50:32.052645
2882	66	1	330	297	2020-06-02 00:50:32.061407	2020-06-02 00:50:32.061407
2883	88	5	331	352	2020-06-02 00:50:32.084578	2020-06-02 00:50:32.084578
2884	58	2	331	93	2020-06-02 00:50:32.095175	2020-06-02 00:50:32.095175
2885	75	3	331	112	2020-06-02 00:50:32.104123	2020-06-02 00:50:32.104123
2886	60	2	331	357	2020-06-02 00:50:32.113236	2020-06-02 00:50:32.113236
2887	46	1	331	590	2020-06-02 00:50:32.121949	2020-06-02 00:50:32.121949
2888	50	5	331	246	2020-06-02 00:50:32.129887	2020-06-02 00:50:32.129887
2889	45	1	332	698	2020-06-02 00:50:32.137204	2020-06-02 00:50:32.137204
2890	4	2	332	48	2020-06-02 00:50:32.144889	2020-06-02 00:50:32.144889
2891	80	5	332	496	2020-06-02 00:50:32.152178	2020-06-02 00:50:32.152178
2892	81	4	332	101	2020-06-02 00:50:32.159498	2020-06-02 00:50:32.159498
2893	30	2	332	773	2020-06-02 00:50:32.166402	2020-06-02 00:50:32.166402
2894	79	2	332	564	2020-06-02 00:50:32.174135	2020-06-02 00:50:32.174135
2895	6	4	332	655	2020-06-02 00:50:32.181276	2020-06-02 00:50:32.181276
2896	45	2	332	41	2020-06-02 00:50:32.188401	2020-06-02 00:50:32.188401
2897	70	3	332	385	2020-06-02 00:50:32.195702	2020-06-02 00:50:32.195702
2898	21	5	333	344	2020-06-02 00:50:32.202771	2020-06-02 00:50:32.202771
2899	77	1	334	724	2020-06-02 00:50:32.210024	2020-06-02 00:50:32.210024
2900	75	3	334	721	2020-06-02 00:50:32.217391	2020-06-02 00:50:32.217391
2901	92	5	334	347	2020-06-02 00:50:32.224631	2020-06-02 00:50:32.224631
2902	91	4	334	364	2020-06-02 00:50:32.231861	2020-06-02 00:50:32.231861
2903	25	3	334	281	2020-06-02 00:50:32.239424	2020-06-02 00:50:32.239424
2904	36	5	334	613	2020-06-02 00:50:32.246562	2020-06-02 00:50:32.246562
2905	34	3	334	540	2020-06-02 00:50:32.25384	2020-06-02 00:50:32.25384
2906	11	5	334	649	2020-06-02 00:50:32.261905	2020-06-02 00:50:32.261905
2907	49	5	334	411	2020-06-02 00:50:32.269772	2020-06-02 00:50:32.269772
2908	65	4	334	121	2020-06-02 00:50:32.277041	2020-06-02 00:50:32.277041
2909	57	5	335	289	2020-06-02 00:50:32.283972	2020-06-02 00:50:32.283972
2910	30	2	335	641	2020-06-02 00:50:32.291215	2020-06-02 00:50:32.291215
2911	22	5	335	32	2020-06-02 00:50:32.298418	2020-06-02 00:50:32.298418
2912	10	1	335	391	2020-06-02 00:50:32.306604	2020-06-02 00:50:32.306604
2913	24	5	335	430	2020-06-02 00:50:32.313828	2020-06-02 00:50:32.313828
2914	39	3	335	232	2020-06-02 00:50:32.320898	2020-06-02 00:50:32.320898
2915	56	5	335	748	2020-06-02 00:50:32.327942	2020-06-02 00:50:32.327942
2916	18	5	335	425	2020-06-02 00:50:32.335133	2020-06-02 00:50:32.335133
2917	57	3	336	196	2020-06-02 00:50:32.342045	2020-06-02 00:50:32.342045
2918	53	2	336	756	2020-06-02 00:50:32.349431	2020-06-02 00:50:32.349431
2919	56	3	336	509	2020-06-02 00:50:32.356762	2020-06-02 00:50:32.356762
2920	74	4	336	616	2020-06-02 00:50:32.329732	2020-06-02 00:50:32.329732
2921	21	5	336	776	2020-06-02 00:50:32.338428	2020-06-02 00:50:32.338428
2922	25	2	337	723	2020-06-02 00:50:32.346598	2020-06-02 00:50:32.346598
2923	67	1	337	173	2020-06-02 00:50:32.353921	2020-06-02 00:50:32.353921
2924	76	4	338	311	2020-06-02 00:50:32.361335	2020-06-02 00:50:32.361335
2925	16	3	338	26	2020-06-02 00:50:32.369465	2020-06-02 00:50:32.369465
2926	41	2	338	193	2020-06-02 00:50:32.377854	2020-06-02 00:50:32.377854
2927	58	1	338	118	2020-06-02 00:50:32.385053	2020-06-02 00:50:32.385053
2928	41	3	338	786	2020-06-02 00:50:32.39292	2020-06-02 00:50:32.39292
2929	76	3	338	572	2020-06-02 00:50:32.400795	2020-06-02 00:50:32.400795
2930	6	1	338	172	2020-06-02 00:50:32.407964	2020-06-02 00:50:32.407964
2931	77	1	339	410	2020-06-02 00:50:32.415206	2020-06-02 00:50:32.415206
2932	34	2	339	791	2020-06-02 00:50:32.422367	2020-06-02 00:50:32.422367
2933	98	3	339	762	2020-06-02 00:50:32.429182	2020-06-02 00:50:32.429182
2934	35	2	340	193	2020-06-02 00:50:32.437454	2020-06-02 00:50:32.437454
2935	26	3	340	459	2020-06-02 00:50:32.445695	2020-06-02 00:50:32.445695
2936	59	2	340	176	2020-06-02 00:50:32.453043	2020-06-02 00:50:32.453043
2937	43	1	340	70	2020-06-02 00:50:32.460364	2020-06-02 00:50:32.460364
2938	60	1	340	119	2020-06-02 00:50:32.467614	2020-06-02 00:50:32.467614
2939	30	2	340	561	2020-06-02 00:50:32.474787	2020-06-02 00:50:32.474787
2940	31	5	340	502	2020-06-02 00:50:32.482098	2020-06-02 00:50:32.482098
2941	31	5	341	770	2020-06-02 00:50:32.489293	2020-06-02 00:50:32.489293
2942	27	5	342	410	2020-06-02 00:50:32.497035	2020-06-02 00:50:32.497035
2943	73	2	342	305	2020-06-02 00:50:32.504217	2020-06-02 00:50:32.504217
2944	16	5	342	594	2020-06-02 00:50:32.51127	2020-06-02 00:50:32.51127
2945	92	1	342	216	2020-06-02 00:50:32.518698	2020-06-02 00:50:32.518698
2946	72	2	342	625	2020-06-02 00:50:32.525785	2020-06-02 00:50:32.525785
2947	68	5	342	75	2020-06-02 00:50:32.53279	2020-06-02 00:50:32.53279
2948	19	4	342	226	2020-06-02 00:50:32.540144	2020-06-02 00:50:32.540144
2949	46	2	342	10	2020-06-02 00:50:32.547234	2020-06-02 00:50:32.547234
2950	23	3	342	596	2020-06-02 00:50:32.554535	2020-06-02 00:50:32.554535
2951	19	1	342	692	2020-06-02 00:50:32.561583	2020-06-02 00:50:32.561583
2952	58	2	343	526	2020-06-02 00:50:32.568981	2020-06-02 00:50:32.568981
2953	7	1	344	429	2020-06-02 00:50:32.576463	2020-06-02 00:50:32.576463
2954	58	4	344	332	2020-06-02 00:50:32.584124	2020-06-02 00:50:32.584124
2955	84	3	345	71	2020-06-02 00:50:32.591924	2020-06-02 00:50:32.591924
2956	41	3	345	221	2020-06-02 00:50:32.59944	2020-06-02 00:50:32.59944
2957	25	5	345	289	2020-06-02 00:50:32.607366	2020-06-02 00:50:32.607366
2958	24	2	345	382	2020-06-02 00:50:32.614644	2020-06-02 00:50:32.614644
2959	96	5	345	388	2020-06-02 00:50:32.622109	2020-06-02 00:50:32.622109
2960	44	3	346	287	2020-06-02 00:50:32.629447	2020-06-02 00:50:32.629447
2961	56	1	346	307	2020-06-02 00:50:32.636787	2020-06-02 00:50:32.636787
2962	75	1	346	156	2020-06-02 00:50:32.644105	2020-06-02 00:50:32.644105
2963	55	4	346	765	2020-06-02 00:50:32.65147	2020-06-02 00:50:32.65147
2964	71	5	346	782	2020-06-02 00:50:32.658591	2020-06-02 00:50:32.658591
2965	85	5	346	234	2020-06-02 00:50:32.665793	2020-06-02 00:50:32.665793
2966	63	2	346	47	2020-06-02 00:50:32.673324	2020-06-02 00:50:32.673324
2967	18	5	346	10	2020-06-02 00:50:32.682354	2020-06-02 00:50:32.682354
2968	12	3	346	523	2020-06-02 00:50:32.690807	2020-06-02 00:50:32.690807
2969	49	5	347	189	2020-06-02 00:50:32.697905	2020-06-02 00:50:32.697905
2970	15	3	347	478	2020-06-02 00:50:32.705128	2020-06-02 00:50:32.705128
2971	70	3	347	767	2020-06-02 00:50:32.712648	2020-06-02 00:50:32.712648
2972	70	2	347	222	2020-06-02 00:50:32.720263	2020-06-02 00:50:32.720263
2973	57	3	347	19	2020-06-02 00:50:32.727801	2020-06-02 00:50:32.727801
2974	58	5	347	116	2020-06-02 00:50:32.734914	2020-06-02 00:50:32.734914
2975	22	3	348	268	2020-06-02 00:50:32.742119	2020-06-02 00:50:32.742119
2976	53	4	349	728	2020-06-02 00:50:32.749363	2020-06-02 00:50:32.749363
2977	66	3	349	678	2020-06-02 00:50:32.756606	2020-06-02 00:50:32.756606
2978	94	3	349	129	2020-06-02 00:50:32.763626	2020-06-02 00:50:32.763626
2979	76	5	349	497	2020-06-02 00:50:32.770925	2020-06-02 00:50:32.770925
2980	77	3	349	27	2020-06-02 00:50:32.778006	2020-06-02 00:50:32.778006
2981	75	4	349	206	2020-06-02 00:50:32.78625	2020-06-02 00:50:32.78625
2982	84	3	349	712	2020-06-02 00:50:32.795103	2020-06-02 00:50:32.795103
2983	59	1	349	393	2020-06-02 00:50:32.80364	2020-06-02 00:50:32.80364
2984	36	1	349	665	2020-06-02 00:50:32.81322	2020-06-02 00:50:32.81322
2985	37	1	349	752	2020-06-02 00:50:32.822011	2020-06-02 00:50:32.822011
2986	95	5	350	581	2020-06-02 00:50:32.830381	2020-06-02 00:50:32.830381
2987	12	3	350	722	2020-06-02 00:50:32.83769	2020-06-02 00:50:32.83769
2988	38	4	350	536	2020-06-02 00:50:32.844785	2020-06-02 00:50:32.844785
2989	60	2	350	10	2020-06-02 00:50:32.851861	2020-06-02 00:50:32.851861
2990	21	4	350	540	2020-06-02 00:50:32.858968	2020-06-02 00:50:32.858968
2991	23	2	350	363	2020-06-02 00:50:32.866388	2020-06-02 00:50:32.866388
2992	58	2	350	635	2020-06-02 00:50:32.874545	2020-06-02 00:50:32.874545
2993	16	5	350	696	2020-06-02 00:50:32.882581	2020-06-02 00:50:32.882581
2994	41	5	350	351	2020-06-02 00:50:32.889884	2020-06-02 00:50:32.889884
2995	38	5	350	710	2020-06-02 00:50:32.897199	2020-06-02 00:50:32.897199
2996	91	2	351	518	2020-06-02 00:50:32.904229	2020-06-02 00:50:32.904229
2997	72	5	351	78	2020-06-02 00:50:32.913461	2020-06-02 00:50:32.913461
2998	2	5	351	683	2020-06-02 00:50:32.925764	2020-06-02 00:50:32.925764
2999	53	4	351	197	2020-06-02 00:50:32.935315	2020-06-02 00:50:32.935315
3000	59	4	351	525	2020-06-02 00:50:32.945737	2020-06-02 00:50:32.945737
3001	80	5	351	517	2020-06-02 00:50:32.955399	2020-06-02 00:50:32.955399
3002	54	3	351	502	2020-06-02 00:50:32.964226	2020-06-02 00:50:32.964226
3003	47	3	351	113	2020-06-02 00:50:32.972607	2020-06-02 00:50:32.972607
3004	5	2	351	270	2020-06-02 00:50:32.980146	2020-06-02 00:50:32.980146
3005	47	3	352	542	2020-06-02 00:50:32.988132	2020-06-02 00:50:32.988132
3006	11	4	352	159	2020-06-02 00:50:32.995685	2020-06-02 00:50:32.995685
3007	85	2	353	9	2020-06-02 00:50:33.003414	2020-06-02 00:50:33.003414
3008	37	5	353	472	2020-06-02 00:50:33.010956	2020-06-02 00:50:33.010956
3009	57	3	353	384	2020-06-02 00:50:33.018069	2020-06-02 00:50:33.018069
3010	47	5	354	577	2020-06-02 00:50:33.025745	2020-06-02 00:50:33.025745
3011	6	2	354	87	2020-06-02 00:50:33.033181	2020-06-02 00:50:33.033181
3012	15	4	354	704	2020-06-02 00:50:33.041595	2020-06-02 00:50:33.041595
3013	74	2	354	304	2020-06-02 00:50:33.049461	2020-06-02 00:50:33.049461
3014	52	3	354	105	2020-06-02 00:50:33.057236	2020-06-02 00:50:33.057236
3015	92	4	354	129	2020-06-02 00:50:33.064773	2020-06-02 00:50:33.064773
3016	85	2	354	424	2020-06-02 00:50:33.072152	2020-06-02 00:50:33.072152
3017	36	1	354	83	2020-06-02 00:50:33.079348	2020-06-02 00:50:33.079348
3018	97	3	355	30	2020-06-02 00:50:33.086971	2020-06-02 00:50:33.086971
3019	34	4	356	725	2020-06-02 00:50:33.094214	2020-06-02 00:50:33.094214
3020	83	2	356	592	2020-06-02 00:50:33.101862	2020-06-02 00:50:33.101862
3021	66	4	356	216	2020-06-02 00:50:33.109603	2020-06-02 00:50:33.109603
3022	81	1	357	691	2020-06-02 00:50:33.117444	2020-06-02 00:50:33.117444
3023	63	2	357	226	2020-06-02 00:50:33.12475	2020-06-02 00:50:33.12475
3024	51	2	357	306	2020-06-02 00:50:33.131662	2020-06-02 00:50:33.131662
3025	69	2	357	604	2020-06-02 00:50:33.139198	2020-06-02 00:50:33.139198
3026	48	4	357	574	2020-06-02 00:50:33.146734	2020-06-02 00:50:33.146734
3027	66	2	357	285	2020-06-02 00:50:33.154193	2020-06-02 00:50:33.154193
3028	46	2	357	732	2020-06-02 00:50:33.161925	2020-06-02 00:50:33.161925
3029	60	3	357	799	2020-06-02 00:50:33.168892	2020-06-02 00:50:33.168892
3030	86	2	357	46	2020-06-02 00:50:33.176412	2020-06-02 00:50:33.176412
3031	98	3	358	725	2020-06-02 00:50:33.183668	2020-06-02 00:50:33.183668
3032	53	1	358	128	2020-06-02 00:50:33.191025	2020-06-02 00:50:33.191025
3033	2	5	358	719	2020-06-02 00:50:33.198674	2020-06-02 00:50:33.198674
3034	20	1	358	436	2020-06-02 00:50:33.207055	2020-06-02 00:50:33.207055
3035	79	3	358	98	2020-06-02 00:50:33.215634	2020-06-02 00:50:33.215634
3036	19	2	359	738	2020-06-02 00:50:33.222972	2020-06-02 00:50:33.222972
3037	33	4	359	403	2020-06-02 00:50:33.23009	2020-06-02 00:50:33.23009
3038	20	1	359	58	2020-06-02 00:50:33.237221	2020-06-02 00:50:33.237221
3039	35	3	359	489	2020-06-02 00:50:33.24457	2020-06-02 00:50:33.24457
3040	78	4	359	637	2020-06-02 00:50:33.251603	2020-06-02 00:50:33.251603
3041	86	2	359	105	2020-06-02 00:50:33.258914	2020-06-02 00:50:33.258914
3042	12	5	359	791	2020-06-02 00:50:33.266142	2020-06-02 00:50:33.266142
3043	3	2	360	669	2020-06-02 00:50:33.273579	2020-06-02 00:50:33.273579
3044	38	3	360	529	2020-06-02 00:50:33.280807	2020-06-02 00:50:33.280807
3045	50	1	360	65	2020-06-02 00:50:33.287875	2020-06-02 00:50:33.287875
3046	54	4	360	248	2020-06-02 00:50:33.295025	2020-06-02 00:50:33.295025
3047	90	5	361	651	2020-06-02 00:50:33.302079	2020-06-02 00:50:33.302079
3048	78	3	361	763	2020-06-02 00:50:33.309895	2020-06-02 00:50:33.309895
3049	13	2	361	577	2020-06-02 00:50:33.317007	2020-06-02 00:50:33.317007
3050	32	1	361	602	2020-06-02 00:50:33.324635	2020-06-02 00:50:33.324635
3051	75	3	361	671	2020-06-02 00:50:33.331665	2020-06-02 00:50:33.331665
3052	3	5	361	20	2020-06-02 00:50:33.338954	2020-06-02 00:50:33.338954
3053	74	3	361	494	2020-06-02 00:50:33.346612	2020-06-02 00:50:33.346612
3054	22	1	361	436	2020-06-02 00:50:33.354187	2020-06-02 00:50:33.354187
3055	20	4	361	104	2020-06-02 00:50:33.362279	2020-06-02 00:50:33.362279
3056	14	5	362	674	2020-06-02 00:50:33.371164	2020-06-02 00:50:33.371164
3057	15	4	362	734	2020-06-02 00:50:33.379538	2020-06-02 00:50:33.379538
3058	10	2	362	45	2020-06-02 00:50:33.387193	2020-06-02 00:50:33.387193
3059	96	3	362	657	2020-06-02 00:50:33.394245	2020-06-02 00:50:33.394245
3060	99	4	362	731	2020-06-02 00:50:33.401747	2020-06-02 00:50:33.401747
3061	70	2	363	661	2020-06-02 00:50:33.409949	2020-06-02 00:50:33.409949
3062	5	3	363	160	2020-06-02 00:50:33.416869	2020-06-02 00:50:33.416869
3063	64	2	363	277	2020-06-02 00:50:33.424063	2020-06-02 00:50:33.424063
3064	98	4	363	632	2020-06-02 00:50:33.432039	2020-06-02 00:50:33.432039
3065	5	1	363	751	2020-06-02 00:50:33.439449	2020-06-02 00:50:33.439449
3066	81	5	363	359	2020-06-02 00:50:33.447614	2020-06-02 00:50:33.447614
3067	23	5	363	212	2020-06-02 00:50:33.455399	2020-06-02 00:50:33.455399
3068	3	1	363	73	2020-06-02 00:50:33.462474	2020-06-02 00:50:33.462474
3069	5	1	363	318	2020-06-02 00:50:33.469445	2020-06-02 00:50:33.469445
3070	15	5	364	400	2020-06-02 00:50:33.476851	2020-06-02 00:50:33.476851
3071	37	1	364	390	2020-06-02 00:50:33.485023	2020-06-02 00:50:33.485023
3072	30	3	364	538	2020-06-02 00:50:33.49261	2020-06-02 00:50:33.49261
3073	51	4	364	411	2020-06-02 00:50:33.499867	2020-06-02 00:50:33.499867
3074	74	4	365	308	2020-06-02 00:50:33.507014	2020-06-02 00:50:33.507014
3075	63	5	365	288	2020-06-02 00:50:33.51478	2020-06-02 00:50:33.51478
3076	3	1	365	692	2020-06-02 00:50:33.523054	2020-06-02 00:50:33.523054
3077	3	5	365	126	2020-06-02 00:50:33.530934	2020-06-02 00:50:33.530934
3078	40	5	365	546	2020-06-02 00:50:33.539432	2020-06-02 00:50:33.539432
3079	23	5	366	436	2020-06-02 00:50:33.548022	2020-06-02 00:50:33.548022
3080	70	1	366	689	2020-06-02 00:50:33.556434	2020-06-02 00:50:33.556434
3081	63	1	366	678	2020-06-02 00:50:33.565036	2020-06-02 00:50:33.565036
3082	73	5	366	185	2020-06-02 00:50:33.573452	2020-06-02 00:50:33.573452
3083	65	3	366	634	2020-06-02 00:50:33.581719	2020-06-02 00:50:33.581719
3084	69	4	366	413	2020-06-02 00:50:33.590186	2020-06-02 00:50:33.590186
3085	69	1	366	276	2020-06-02 00:50:33.604194	2020-06-02 00:50:33.604194
3086	59	3	367	355	2020-06-02 00:50:33.613172	2020-06-02 00:50:33.613172
3087	86	1	367	710	2020-06-02 00:50:33.621763	2020-06-02 00:50:33.621763
3088	81	4	367	180	2020-06-02 00:50:33.630137	2020-06-02 00:50:33.630137
3089	17	3	367	493	2020-06-02 00:50:33.638228	2020-06-02 00:50:33.638228
3090	63	1	368	277	2020-06-02 00:50:33.646296	2020-06-02 00:50:33.646296
3091	11	3	368	711	2020-06-02 00:50:33.655185	2020-06-02 00:50:33.655185
3092	37	3	368	236	2020-06-02 00:50:33.663357	2020-06-02 00:50:33.663357
3093	6	1	368	601	2020-06-02 00:50:33.67161	2020-06-02 00:50:33.67161
3094	66	1	368	153	2020-06-02 00:50:33.680346	2020-06-02 00:50:33.680346
3095	46	4	368	182	2020-06-02 00:50:33.690253	2020-06-02 00:50:33.690253
3096	80	4	369	389	2020-06-02 00:50:33.698887	2020-06-02 00:50:33.698887
3097	9	2	369	666	2020-06-02 00:50:33.70701	2020-06-02 00:50:33.70701
3098	10	1	369	527	2020-06-02 00:50:33.715215	2020-06-02 00:50:33.715215
3099	99	5	369	454	2020-06-02 00:50:33.7234	2020-06-02 00:50:33.7234
3100	97	5	369	292	2020-06-02 00:50:33.731872	2020-06-02 00:50:33.731872
3101	93	1	369	142	2020-06-02 00:50:33.740604	2020-06-02 00:50:33.740604
3102	47	1	369	42	2020-06-02 00:50:33.749091	2020-06-02 00:50:33.749091
3103	49	1	369	457	2020-06-02 00:50:33.75708	2020-06-02 00:50:33.75708
3104	13	3	369	220	2020-06-02 00:50:33.764946	2020-06-02 00:50:33.764946
3105	44	5	369	193	2020-06-02 00:50:33.773731	2020-06-02 00:50:33.773731
3106	41	3	370	397	2020-06-02 00:50:33.783024	2020-06-02 00:50:33.783024
3107	93	2	370	524	2020-06-02 00:50:33.792782	2020-06-02 00:50:33.792782
3108	16	1	371	757	2020-06-02 00:50:33.802138	2020-06-02 00:50:33.802138
3109	25	5	371	19	2020-06-02 00:50:33.81133	2020-06-02 00:50:33.81133
3110	85	5	372	338	2020-06-02 00:50:33.820779	2020-06-02 00:50:33.820779
3111	5	1	372	395	2020-06-02 00:50:33.829767	2020-06-02 00:50:33.829767
3112	57	3	372	275	2020-06-02 00:50:33.83876	2020-06-02 00:50:33.83876
3113	86	1	372	389	2020-06-02 00:50:33.848152	2020-06-02 00:50:33.848152
3114	37	5	372	504	2020-06-02 00:50:33.858764	2020-06-02 00:50:33.858764
3115	6	3	372	616	2020-06-02 00:50:33.868295	2020-06-02 00:50:33.868295
3116	43	4	372	511	2020-06-02 00:50:33.878547	2020-06-02 00:50:33.878547
3117	42	3	372	468	2020-06-02 00:50:33.888054	2020-06-02 00:50:33.888054
3118	100	4	372	501	2020-06-02 00:50:33.89703	2020-06-02 00:50:33.89703
3119	76	5	372	760	2020-06-02 00:50:33.906728	2020-06-02 00:50:33.906728
3120	18	3	373	554	2020-06-02 00:50:33.916123	2020-06-02 00:50:33.916123
3121	85	3	373	564	2020-06-02 00:50:33.925187	2020-06-02 00:50:33.925187
3122	11	3	373	67	2020-06-02 00:50:33.934421	2020-06-02 00:50:33.934421
3123	62	3	373	552	2020-06-02 00:50:33.943534	2020-06-02 00:50:33.943534
3124	3	1	374	421	2020-06-02 00:50:33.952294	2020-06-02 00:50:33.952294
3125	79	2	374	506	2020-06-02 00:50:33.96124	2020-06-02 00:50:33.96124
3126	30	2	374	443	2020-06-02 00:50:33.970072	2020-06-02 00:50:33.970072
3127	57	1	374	600	2020-06-02 00:50:33.979091	2020-06-02 00:50:33.979091
3128	48	2	374	267	2020-06-02 00:50:33.988145	2020-06-02 00:50:33.988145
3129	92	5	375	168	2020-06-02 00:50:33.997079	2020-06-02 00:50:33.997079
3130	12	2	375	42	2020-06-02 00:50:34.006037	2020-06-02 00:50:34.006037
3131	7	4	375	494	2020-06-02 00:50:34.015099	2020-06-02 00:50:34.015099
3132	7	3	375	13	2020-06-02 00:50:34.024057	2020-06-02 00:50:34.024057
3133	87	3	375	436	2020-06-02 00:50:34.033014	2020-06-02 00:50:34.033014
3134	10	2	375	636	2020-06-02 00:50:34.042103	2020-06-02 00:50:34.042103
3135	15	4	375	504	2020-06-02 00:50:34.050993	2020-06-02 00:50:34.050993
3136	64	5	376	553	2020-06-02 00:50:34.060018	2020-06-02 00:50:34.060018
3137	68	1	376	126	2020-06-02 00:50:34.069389	2020-06-02 00:50:34.069389
3138	100	2	376	434	2020-06-02 00:50:34.078401	2020-06-02 00:50:34.078401
3139	78	5	376	185	2020-06-02 00:50:34.087701	2020-06-02 00:50:34.087701
3140	15	3	376	601	2020-06-02 00:50:34.096755	2020-06-02 00:50:34.096755
3141	90	1	376	311	2020-06-02 00:50:34.10575	2020-06-02 00:50:34.10575
3142	27	2	376	615	2020-06-02 00:50:34.114618	2020-06-02 00:50:34.114618
3143	90	4	376	738	2020-06-02 00:50:34.12357	2020-06-02 00:50:34.12357
3144	3	2	376	237	2020-06-02 00:50:34.132451	2020-06-02 00:50:34.132451
3145	75	3	377	793	2020-06-02 00:50:34.141952	2020-06-02 00:50:34.141952
3146	1	3	378	619	2020-06-02 00:50:34.150999	2020-06-02 00:50:34.150999
3147	14	1	378	257	2020-06-02 00:50:34.159732	2020-06-02 00:50:34.159732
3148	17	1	378	307	2020-06-02 00:50:34.168686	2020-06-02 00:50:34.168686
3149	18	1	378	754	2020-06-02 00:50:34.177602	2020-06-02 00:50:34.177602
3150	48	4	378	374	2020-06-02 00:50:34.186438	2020-06-02 00:50:34.186438
3151	48	3	378	197	2020-06-02 00:50:34.195083	2020-06-02 00:50:34.195083
3152	95	5	378	702	2020-06-02 00:50:34.203883	2020-06-02 00:50:34.203883
3153	51	3	379	617	2020-06-02 00:50:34.212785	2020-06-02 00:50:34.212785
3154	23	4	379	764	2020-06-02 00:50:34.221841	2020-06-02 00:50:34.221841
3155	80	1	379	506	2020-06-02 00:50:34.230579	2020-06-02 00:50:34.230579
3156	98	3	379	279	2020-06-02 00:50:34.239451	2020-06-02 00:50:34.239451
3157	45	5	379	519	2020-06-02 00:50:34.248183	2020-06-02 00:50:34.248183
3158	46	2	379	162	2020-06-02 00:50:34.257035	2020-06-02 00:50:34.257035
3159	26	3	379	333	2020-06-02 00:50:34.266012	2020-06-02 00:50:34.266012
3160	98	3	380	302	2020-06-02 00:50:34.27577	2020-06-02 00:50:34.27577
3161	92	4	380	500	2020-06-02 00:50:34.28472	2020-06-02 00:50:34.28472
3162	76	4	380	278	2020-06-02 00:50:34.293472	2020-06-02 00:50:34.293472
3163	51	4	380	21	2020-06-02 00:50:34.302247	2020-06-02 00:50:34.302247
3164	9	1	380	788	2020-06-02 00:50:34.311001	2020-06-02 00:50:34.311001
3165	21	1	380	142	2020-06-02 00:50:34.319607	2020-06-02 00:50:34.319607
3166	23	5	380	154	2020-06-02 00:50:34.328678	2020-06-02 00:50:34.328678
3167	22	1	381	570	2020-06-02 00:50:34.337393	2020-06-02 00:50:34.337393
3168	67	5	381	741	2020-06-02 00:50:34.346698	2020-06-02 00:50:34.346698
3169	82	2	381	540	2020-06-02 00:50:34.355806	2020-06-02 00:50:34.355806
3170	7	3	381	295	2020-06-02 00:50:34.364584	2020-06-02 00:50:34.364584
3171	57	4	381	717	2020-06-02 00:50:34.374047	2020-06-02 00:50:34.374047
3172	63	5	381	471	2020-06-02 00:50:34.383826	2020-06-02 00:50:34.383826
3173	9	3	381	184	2020-06-02 00:50:34.393013	2020-06-02 00:50:34.393013
3174	84	5	382	355	2020-06-02 00:50:34.402015	2020-06-02 00:50:34.402015
3175	81	4	382	789	2020-06-02 00:50:34.411112	2020-06-02 00:50:34.411112
3176	66	2	382	748	2020-06-02 00:50:34.420092	2020-06-02 00:50:34.420092
3177	10	4	383	256	2020-06-02 00:50:34.429028	2020-06-02 00:50:34.429028
3178	26	2	383	784	2020-06-02 00:50:34.438065	2020-06-02 00:50:34.438065
3179	36	3	383	641	2020-06-02 00:50:34.44697	2020-06-02 00:50:34.44697
3180	80	4	383	397	2020-06-02 00:50:34.456002	2020-06-02 00:50:34.456002
3181	16	3	383	456	2020-06-02 00:50:34.464878	2020-06-02 00:50:34.464878
3182	11	4	383	648	2020-06-02 00:50:34.481288	2020-06-02 00:50:34.481288
3183	31	1	384	662	2020-06-02 00:50:34.500464	2020-06-02 00:50:34.500464
3184	9	2	385	104	2020-06-02 00:50:34.512209	2020-06-02 00:50:34.512209
3185	4	4	385	205	2020-06-02 00:50:34.522728	2020-06-02 00:50:34.522728
3186	90	5	385	286	2020-06-02 00:50:34.532666	2020-06-02 00:50:34.532666
3187	3	3	385	782	2020-06-02 00:50:34.541862	2020-06-02 00:50:34.541862
3188	92	4	386	514	2020-06-02 00:50:34.552001	2020-06-02 00:50:34.552001
3189	61	4	386	677	2020-06-02 00:50:34.559685	2020-06-02 00:50:34.559685
3190	84	2	386	655	2020-06-02 00:50:34.567603	2020-06-02 00:50:34.567603
3191	77	5	386	195	2020-06-02 00:50:34.575549	2020-06-02 00:50:34.575549
3192	76	4	386	213	2020-06-02 00:50:34.583569	2020-06-02 00:50:34.583569
3193	61	5	386	658	2020-06-02 00:50:34.592063	2020-06-02 00:50:34.592063
3194	94	2	386	595	2020-06-02 00:50:34.600522	2020-06-02 00:50:34.600522
3195	96	5	386	122	2020-06-02 00:50:34.608682	2020-06-02 00:50:34.608682
3196	23	3	387	626	2020-06-02 00:50:34.616605	2020-06-02 00:50:34.616605
3197	81	4	387	621	2020-06-02 00:50:34.625637	2020-06-02 00:50:34.625637
3198	64	5	387	341	2020-06-02 00:50:34.633892	2020-06-02 00:50:34.633892
3199	92	4	387	27	2020-06-02 00:50:34.641687	2020-06-02 00:50:34.641687
3200	73	4	387	30	2020-06-02 00:50:34.64964	2020-06-02 00:50:34.64964
3201	1	4	388	432	2020-06-02 00:50:34.658144	2020-06-02 00:50:34.658144
3202	80	2	388	672	2020-06-02 00:50:34.667728	2020-06-02 00:50:34.667728
3203	80	5	388	87	2020-06-02 00:50:34.676319	2020-06-02 00:50:34.676319
3204	53	1	388	533	2020-06-02 00:50:34.684687	2020-06-02 00:50:34.684687
3205	28	2	388	680	2020-06-02 00:50:34.692266	2020-06-02 00:50:34.692266
3206	91	2	388	402	2020-06-02 00:50:34.700188	2020-06-02 00:50:34.700188
3207	67	4	388	26	2020-06-02 00:50:34.70799	2020-06-02 00:50:34.70799
3208	31	1	388	381	2020-06-02 00:50:34.716441	2020-06-02 00:50:34.716441
3209	39	2	389	144	2020-06-02 00:50:34.724542	2020-06-02 00:50:34.724542
3210	58	2	390	444	2020-06-02 00:50:34.732259	2020-06-02 00:50:34.732259
3211	14	4	390	773	2020-06-02 00:50:34.740946	2020-06-02 00:50:34.740946
3212	17	1	390	760	2020-06-02 00:50:34.7489	2020-06-02 00:50:34.7489
3213	50	4	390	518	2020-06-02 00:50:34.756716	2020-06-02 00:50:34.756716
3214	80	4	390	312	2020-06-02 00:50:34.76716	2020-06-02 00:50:34.76716
3215	30	4	390	343	2020-06-02 00:50:34.776825	2020-06-02 00:50:34.776825
3216	28	5	390	161	2020-06-02 00:50:34.785564	2020-06-02 00:50:34.785564
3217	18	5	391	598	2020-06-02 00:50:34.793996	2020-06-02 00:50:34.793996
3218	7	5	391	517	2020-06-02 00:50:34.802723	2020-06-02 00:50:34.802723
3219	26	3	392	562	2020-06-02 00:50:34.812585	2020-06-02 00:50:34.812585
3220	9	1	392	105	2020-06-02 00:50:34.821715	2020-06-02 00:50:34.821715
3221	41	4	392	24	2020-06-02 00:50:34.831072	2020-06-02 00:50:34.831072
3222	1	3	392	386	2020-06-02 00:50:34.840006	2020-06-02 00:50:34.840006
3223	93	1	392	765	2020-06-02 00:50:34.849296	2020-06-02 00:50:34.849296
3224	99	1	392	574	2020-06-02 00:50:34.858684	2020-06-02 00:50:34.858684
3225	57	1	392	343	2020-06-02 00:50:34.867878	2020-06-02 00:50:34.867878
3226	8	1	392	501	2020-06-02 00:50:34.878632	2020-06-02 00:50:34.878632
3227	49	5	392	672	2020-06-02 00:50:34.888105	2020-06-02 00:50:34.888105
3228	18	5	392	406	2020-06-02 00:50:34.897112	2020-06-02 00:50:34.897112
3229	81	3	393	657	2020-06-02 00:50:34.906016	2020-06-02 00:50:34.906016
3230	31	5	393	314	2020-06-02 00:50:34.915344	2020-06-02 00:50:34.915344
3231	75	1	393	110	2020-06-02 00:50:34.926734	2020-06-02 00:50:34.926734
3232	19	2	393	656	2020-06-02 00:50:34.935949	2020-06-02 00:50:34.935949
3233	40	3	393	136	2020-06-02 00:50:34.94468	2020-06-02 00:50:34.94468
3234	20	1	394	764	2020-06-02 00:50:34.953623	2020-06-02 00:50:34.953623
3235	22	2	394	124	2020-06-02 00:50:34.963193	2020-06-02 00:50:34.963193
3236	37	5	394	195	2020-06-02 00:50:34.972404	2020-06-02 00:50:34.972404
3237	49	2	394	405	2020-06-02 00:50:34.981687	2020-06-02 00:50:34.981687
3238	68	1	395	523	2020-06-02 00:50:34.991284	2020-06-02 00:50:34.991284
3239	20	4	395	332	2020-06-02 00:50:35.000407	2020-06-02 00:50:35.000407
3240	86	2	395	245	2020-06-02 00:50:35.009796	2020-06-02 00:50:35.009796
3241	13	2	395	472	2020-06-02 00:50:35.019544	2020-06-02 00:50:35.019544
3242	98	4	395	630	2020-06-02 00:50:35.029234	2020-06-02 00:50:35.029234
3243	22	1	396	616	2020-06-02 00:50:35.039261	2020-06-02 00:50:35.039261
3244	61	1	396	471	2020-06-02 00:50:35.049039	2020-06-02 00:50:35.049039
3245	86	5	397	755	2020-06-02 00:50:35.058084	2020-06-02 00:50:35.058084
3246	13	3	397	309	2020-06-02 00:50:35.06745	2020-06-02 00:50:35.06745
3247	12	1	397	192	2020-06-02 00:50:35.076739	2020-06-02 00:50:35.076739
3248	3	3	397	710	2020-06-02 00:50:35.086039	2020-06-02 00:50:35.086039
3249	19	4	397	634	2020-06-02 00:50:35.095286	2020-06-02 00:50:35.095286
3250	61	4	397	792	2020-06-02 00:50:35.104355	2020-06-02 00:50:35.104355
3251	23	1	397	230	2020-06-02 00:50:35.113283	2020-06-02 00:50:35.113283
3252	44	4	398	468	2020-06-02 00:50:35.123026	2020-06-02 00:50:35.123026
3253	76	2	398	792	2020-06-02 00:50:35.132661	2020-06-02 00:50:35.132661
3254	16	3	398	629	2020-06-02 00:50:35.142923	2020-06-02 00:50:35.142923
3255	93	1	398	88	2020-06-02 00:50:35.153057	2020-06-02 00:50:35.153057
3256	62	1	398	90	2020-06-02 00:50:35.162325	2020-06-02 00:50:35.162325
3257	75	2	398	176	2020-06-02 00:50:35.17175	2020-06-02 00:50:35.17175
3258	60	5	398	246	2020-06-02 00:50:35.180693	2020-06-02 00:50:35.180693
3259	79	2	398	720	2020-06-02 00:50:35.190207	2020-06-02 00:50:35.190207
3260	46	2	398	285	2020-06-02 00:50:35.199328	2020-06-02 00:50:35.199328
3261	28	2	398	781	2020-06-02 00:50:35.209019	2020-06-02 00:50:35.209019
3262	83	5	399	441	2020-06-02 00:50:35.218032	2020-06-02 00:50:35.218032
3263	66	2	399	471	2020-06-02 00:50:35.226992	2020-06-02 00:50:35.226992
3264	8	3	399	548	2020-06-02 00:50:35.236039	2020-06-02 00:50:35.236039
3265	29	1	399	358	2020-06-02 00:50:35.246462	2020-06-02 00:50:35.246462
3266	22	4	400	602	2020-06-02 00:50:35.25586	2020-06-02 00:50:35.25586
3267	45	2	400	766	2020-06-02 00:50:35.265734	2020-06-02 00:50:35.265734
3268	13	2	400	486	2020-06-02 00:50:35.275687	2020-06-02 00:50:35.275687
3269	99	1	400	755	2020-06-02 00:50:35.285195	2020-06-02 00:50:35.285195
3270	76	4	400	495	2020-06-02 00:50:35.294755	2020-06-02 00:50:35.294755
3271	86	1	400	301	2020-06-02 00:50:35.304539	2020-06-02 00:50:35.304539
3272	82	4	400	274	2020-06-02 00:50:35.313881	2020-06-02 00:50:35.313881
\.


--
-- TOC entry 2244 (class 0 OID 0)
-- Dependencies: 187
-- Name: bookshelves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bookshelves_id_seq', 3272, true);


--
-- TOC entry 2217 (class 0 OID 16412)
-- Dependencies: 190
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countries (id, name, capital, region, population, area, created_at, updated_at) FROM stdin;
1	Bermuda	Hamilton	Americas	64237	54	2020-06-02 00:50:02.512523	2020-06-02 00:50:02.512523
2	Chile	Santiago	Americas	18006407	756102	2020-06-02 00:50:02.519836	2020-06-02 00:50:02.519836
3	East Timor	Dili	Asia	1212107	14874	2020-06-02 00:50:02.526301	2020-06-02 00:50:02.526301
4	Rwanda	Kigali	Africa	11262564	26338	2020-06-02 00:50:02.532984	2020-06-02 00:50:02.532984
5	Oman	Muscat	Asia	4185440	309500	2020-06-02 00:50:02.53946	2020-06-02 00:50:02.53946
6	Qatar	Doha	Asia	2120129	11586	2020-06-02 00:50:02.546061	2020-06-02 00:50:02.546061
7	Guernsey	St. Peter Port	Europe	65150	78	2020-06-02 00:50:02.55221	2020-06-02 00:50:02.55221
8	Panama	Panama City	Americas	3764166	75417	2020-06-02 00:50:02.558316	2020-06-02 00:50:02.558316
9	Saint Helena	Jamestown	Africa	4255	\N	2020-06-02 00:50:02.56516	2020-06-02 00:50:02.56516
10	Netherlands	Amsterdam	Europe	16916000	41850	2020-06-02 00:50:02.571866	2020-06-02 00:50:02.571866
11	Jamaica	Kingston	Americas	2717991	10991	2020-06-02 00:50:02.578543	2020-06-02 00:50:02.578543
12	Cook Islands	Avarua	Oceania	14974	236	2020-06-02 00:50:02.584747	2020-06-02 00:50:02.584747
13	Central African Republic	Bangui	Africa	4900000	622984	2020-06-02 00:50:02.592831	2020-06-02 00:50:02.592831
14	Lesotho	Maseru	Africa	2135000	30355	2020-06-02 00:50:02.600848	2020-06-02 00:50:02.600848
15	Israel	Jerusalem	Asia	8371600	20770	2020-06-02 00:50:02.606814	2020-06-02 00:50:02.606814
16	New Caledonia	Nouméa	Oceania	268767	18575	2020-06-02 00:50:02.612946	2020-06-02 00:50:02.612946
17	Maldives	Malé	Asia	341256	300	2020-06-02 00:50:02.618639	2020-06-02 00:50:02.618639
18	Guatemala	Guatemala City	Americas	16176133	108889	2020-06-02 00:50:02.624846	2020-06-02 00:50:02.624846
19	Sri Lanka	Colombo	Asia	20675000	65610	2020-06-02 00:50:02.631012	2020-06-02 00:50:02.631012
20	Democratic Republic of the Congo	Kinshasa	Africa	77267000	2344858	2020-06-02 00:50:02.637157	2020-06-02 00:50:02.637157
21	Sierra Leone	Freetown	Africa	6453000	71740	2020-06-02 00:50:02.642922	2020-06-02 00:50:02.642922
22	Christmas Island	Flying Fish Cove	Oceania	2072	135	2020-06-02 00:50:02.649216	2020-06-02 00:50:02.649216
23	France	Paris	Europe	66186000	640679	2020-06-02 00:50:02.65472	2020-06-02 00:50:02.65472
24	United Kingdom	London	Europe	64800000	242900	2020-06-02 00:50:02.660131	2020-06-02 00:50:02.660131
25	Burundi	Bujumbura	Africa	9823827	27834	2020-06-02 00:50:02.666054	2020-06-02 00:50:02.666054
26	Greenland	Nuuk	Americas	56114	2166086	2020-06-02 00:50:02.671563	2020-06-02 00:50:02.671563
27	Kyrgyzstan	Bishkek	Asia	5944400	199951	2020-06-02 00:50:02.677158	2020-06-02 00:50:02.677158
28	Tonga	Nuku'alofa	Oceania	103252	747	2020-06-02 00:50:02.682888	2020-06-02 00:50:02.682888
29	Tajikistan	Dushanbe	Asia	8354000	143100	2020-06-02 00:50:02.688429	2020-06-02 00:50:02.688429
30	Spain	Madrid	Europe	46439864	505992	2020-06-02 00:50:02.693969	2020-06-02 00:50:02.693969
31	Martinique	Fort-de-France	Americas	381326	\N	2020-06-02 00:50:02.69978	2020-06-02 00:50:02.69978
32	Niger	Niamey	Africa	19899000	1267000	2020-06-02 00:50:02.70498	2020-06-02 00:50:02.70498
33	Madagascar	Antananarivo	Africa	22434363	587041	2020-06-02 00:50:02.71091	2020-06-02 00:50:02.71091
34	French Southern and Antarctic Lands	Port-aux-Français	Africa	140	7747	2020-06-02 00:50:02.716911	2020-06-02 00:50:02.716911
35	Moldova	Chișinău	Europe	3555200	33846	2020-06-02 00:50:02.722912	2020-06-02 00:50:02.722912
36	Bouvet Island			0	49	2020-06-02 00:50:02.729133	2020-06-02 00:50:02.729133
37	Aruba	Oranjestad	Americas	107394	180	2020-06-02 00:50:02.734626	2020-06-02 00:50:02.734626
38	Montserrat	Plymouth	Americas	4922	102	2020-06-02 00:50:02.741386	2020-06-02 00:50:02.741386
39	Tokelau	Fakaofo	Oceania	1411	12	2020-06-02 00:50:02.748745	2020-06-02 00:50:02.748745
40	Isle of Man	Douglas	Europe	84497	572	2020-06-02 00:50:02.755104	2020-06-02 00:50:02.755104
41	Pitcairn Islands	Adamstown	Oceania	56	47	2020-06-02 00:50:02.76211	2020-06-02 00:50:02.76211
42	Poland	Warsaw	Europe	38484000	312679	2020-06-02 00:50:02.768238	2020-06-02 00:50:02.768238
43	Venezuela	Caracas	Americas	30620404	916445	2020-06-02 00:50:02.77471	2020-06-02 00:50:02.77471
44	Saint Lucia	Castries	Americas	185000	616	2020-06-02 00:50:02.780709	2020-06-02 00:50:02.780709
45	Canada	Ottawa	Americas	35749600	9984670	2020-06-02 00:50:02.786622	2020-06-02 00:50:02.786622
46	Bhutan	Thimphu	Asia	763920	38394	2020-06-02 00:50:02.793545	2020-06-02 00:50:02.793545
47	South Georgia	King Edward Point	Americas	30	\N	2020-06-02 00:50:02.800102	2020-06-02 00:50:02.800102
48	Mali	Bamako	Africa	17600000	1240192	2020-06-02 00:50:02.806616	2020-06-02 00:50:02.806616
49	Malaysia	Kuala Lumpur	Asia	30678800	330803	2020-06-02 00:50:02.812785	2020-06-02 00:50:02.812785
50	Saint Martin	Marigot	Americas	36979	53	2020-06-02 00:50:02.8187	2020-06-02 00:50:02.8187
51	Burundi	Bujumbura	Africa	9823827	27834	2020-06-02 00:50:02.824761	2020-06-02 00:50:02.824761
52	Greenland	Nuuk	Americas	56114	2166086	2020-06-02 00:50:02.831656	2020-06-02 00:50:02.831656
53	Malawi	Lilongwe	Africa	16310431	118484	2020-06-02 00:50:02.837812	2020-06-02 00:50:02.837812
54	Liberia	Monrovia	Africa	4503000	111369	2020-06-02 00:50:02.847699	2020-06-02 00:50:02.847699
55	Israel	Jerusalem	Asia	8371600	20770	2020-06-02 00:50:02.854027	2020-06-02 00:50:02.854027
56	French Polynesia	Papeetē	Oceania	268270	4167	2020-06-02 00:50:02.860431	2020-06-02 00:50:02.860431
57	Nigeria	Abuja	Africa	182202000	923768	2020-06-02 00:50:02.867471	2020-06-02 00:50:02.867471
58	United Arab Emirates	Abu Dhabi	Asia	9157000	83600	2020-06-02 00:50:02.874158	2020-06-02 00:50:02.874158
59	Brunei	Bandar Seri Begawan	Asia	393372	5765	2020-06-02 00:50:02.881506	2020-06-02 00:50:02.881506
60	French Southern and Antarctic Lands	Port-aux-Français	Africa	140	7747	2020-06-02 00:50:02.88771	2020-06-02 00:50:02.88771
61	Latvia	Riga	Europe	1980700	64559	2020-06-02 00:50:02.894117	2020-06-02 00:50:02.894117
62	Guadeloupe	Basse-Terre	Americas	403750	\N	2020-06-02 00:50:02.900129	2020-06-02 00:50:02.900129
63	Panama	Panama City	Americas	3764166	75417	2020-06-02 00:50:02.905776	2020-06-02 00:50:02.905776
64	Poland	Warsaw	Europe	38484000	312679	2020-06-02 00:50:02.911655	2020-06-02 00:50:02.911655
65	Mongolia	Ulan Bator	Asia	3031099	1564110	2020-06-02 00:50:02.917311	2020-06-02 00:50:02.917311
66	Algeria	Algiers	Africa	39500000	2381741	2020-06-02 00:50:02.923064	2020-06-02 00:50:02.923064
67	Monaco	Monaco	Europe	37800	2	2020-06-02 00:50:02.929834	2020-06-02 00:50:02.929834
68	Switzerland	Bern	Europe	8256000	41284	2020-06-02 00:50:02.935702	2020-06-02 00:50:02.935702
69	India	New Delhi	Asia	1275840000	3287590	2020-06-02 00:50:02.942541	2020-06-02 00:50:02.942541
70	Guernsey	St. Peter Port	Europe	65150	78	2020-06-02 00:50:02.949504	2020-06-02 00:50:02.949504
71	Niger	Niamey	Africa	19899000	1267000	2020-06-02 00:50:02.955248	2020-06-02 00:50:02.955248
72	Sierra Leone	Freetown	Africa	6453000	71740	2020-06-02 00:50:02.96093	2020-06-02 00:50:02.96093
73	Republic of Ireland	Dublin	Europe	6378000	70273	2020-06-02 00:50:02.966619	2020-06-02 00:50:02.966619
74	Tanzania	Dodoma	Africa	53470000	945087	2020-06-02 00:50:02.972291	2020-06-02 00:50:02.972291
75	Germany	Berlin	Europe	81083600	357114	2020-06-02 00:50:02.978579	2020-06-02 00:50:02.978579
76	Saint Pierre and Miquelon	Saint-Pierre	Americas	6069	242	2020-06-02 00:50:02.984716	2020-06-02 00:50:02.984716
77	Marshall Islands	Majuro	Oceania	56086	181	2020-06-02 00:50:02.990533	2020-06-02 00:50:02.990533
78	Uruguay	Montevideo	Americas	3415866	181034	2020-06-02 00:50:02.996852	2020-06-02 00:50:02.996852
79	Philippines	Manila	Asia	101920000	342353	2020-06-02 00:50:03.002726	2020-06-02 00:50:03.002726
80	Faroe Islands	Tórshavn	Europe	48846	1393	2020-06-02 00:50:03.008697	2020-06-02 00:50:03.008697
81	Jersey	Saint Helier	Europe	99000	116	2020-06-02 00:50:03.015477	2020-06-02 00:50:03.015477
82	Spain	Madrid	Europe	46439864	505992	2020-06-02 00:50:03.021298	2020-06-02 00:50:03.021298
83	Saint Lucia	Castries	Americas	185000	616	2020-06-02 00:50:03.027937	2020-06-02 00:50:03.027937
84	Guyana	Georgetown	Americas	746900	214969	2020-06-02 00:50:03.034141	2020-06-02 00:50:03.034141
85	Lithuania	Vilnius	Europe	2900787	65300	2020-06-02 00:50:03.039977	2020-06-02 00:50:03.039977
86	Albania	Tirana	Europe	2893005	28748	2020-06-02 00:50:03.046591	2020-06-02 00:50:03.046591
87	Serbia	Belgrade	Europe	7114393	88361	2020-06-02 00:50:03.05247	2020-06-02 00:50:03.05247
88	Iran	Tehran	Asia	78572500	1648195	2020-06-02 00:50:03.058462	2020-06-02 00:50:03.058462
89	Brazil	Brasília	Americas	204772000	8515767	2020-06-02 00:50:03.065185	2020-06-02 00:50:03.065185
90	Denmark	Copenhagen	Europe	5678348	43094	2020-06-02 00:50:03.071314	2020-06-02 00:50:03.071314
91	Bolivia	Sucre	Americas	11410651	1098581	2020-06-02 00:50:03.078275	2020-06-02 00:50:03.078275
92	Lebanon	Beirut	Asia	4104000	10452	2020-06-02 00:50:03.084471	2020-06-02 00:50:03.084471
93	Ivory Coast	Yamoussoukro	Africa	22671331	322463	2020-06-02 00:50:03.090615	2020-06-02 00:50:03.090615
94	Guinea	Conakry	Africa	10628972	245857	2020-06-02 00:50:03.09784	2020-06-02 00:50:03.09784
95	Malaysia	Kuala Lumpur	Asia	30678800	330803	2020-06-02 00:50:03.103577	2020-06-02 00:50:03.103577
96	Tunisia	Tunis	Africa	10982754	163610	2020-06-02 00:50:03.109425	2020-06-02 00:50:03.109425
97	Comoros	Moroni	Africa	784745	1862	2020-06-02 00:50:03.116135	2020-06-02 00:50:03.116135
98	Andorra	Andorra la Vella	Europe	76949	468	2020-06-02 00:50:03.122199	2020-06-02 00:50:03.122199
99	Northern Mariana Islands	Saipan	Oceania	53883	464	2020-06-02 00:50:03.128756	2020-06-02 00:50:03.128756
100	The Gambia	Banjul	Africa	1882450	11295	2020-06-02 00:50:03.135073	2020-06-02 00:50:03.135073
\.


--
-- TOC entry 2245 (class 0 OID 0)
-- Dependencies: 189
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.countries_id_seq', 100, true);


--
-- TOC entry 2219 (class 0 OID 16423)
-- Dependencies: 192
-- Data for Name: engineer_programming_languages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.engineer_programming_languages (id, proficency, repositories, engineer_id, programming_language_id, created_at, updated_at) FROM stdin;
1	2	71	1	6	2020-06-02 00:50:35.38367	2020-06-02 00:50:35.38367
2	5	9	1	8	2020-06-02 00:50:35.394427	2020-06-02 00:50:35.394427
3	4	61	2	1	2020-06-02 00:50:35.403578	2020-06-02 00:50:35.403578
4	4	27	2	2	2020-06-02 00:50:35.413133	2020-06-02 00:50:35.413133
5	1	90	2	7	2020-06-02 00:50:35.422289	2020-06-02 00:50:35.422289
6	2	41	3	2	2020-06-02 00:50:35.431764	2020-06-02 00:50:35.431764
7	3	14	3	8	2020-06-02 00:50:35.440721	2020-06-02 00:50:35.440721
8	5	8	3	3	2020-06-02 00:50:35.455168	2020-06-02 00:50:35.455168
9	2	52	3	1	2020-06-02 00:50:35.465846	2020-06-02 00:50:35.465846
10	4	96	4	3	2020-06-02 00:50:35.474748	2020-06-02 00:50:35.474748
11	3	86	4	5	2020-06-02 00:50:35.484089	2020-06-02 00:50:35.484089
12	4	78	4	4	2020-06-02 00:50:35.495139	2020-06-02 00:50:35.495139
13	2	40	5	3	2020-06-02 00:50:35.506947	2020-06-02 00:50:35.506947
14	1	21	5	8	2020-06-02 00:50:35.517166	2020-06-02 00:50:35.517166
15	2	73	5	4	2020-06-02 00:50:35.526183	2020-06-02 00:50:35.526183
16	4	66	5	5	2020-06-02 00:50:35.535289	2020-06-02 00:50:35.535289
17	3	15	6	2	2020-06-02 00:50:35.544197	2020-06-02 00:50:35.544197
18	2	39	7	3	2020-06-02 00:50:35.553334	2020-06-02 00:50:35.553334
19	3	93	7	6	2020-06-02 00:50:35.56433	2020-06-02 00:50:35.56433
20	1	35	8	3	2020-06-02 00:50:35.573593	2020-06-02 00:50:35.573593
21	3	71	9	1	2020-06-02 00:50:35.583641	2020-06-02 00:50:35.583641
22	5	62	9	3	2020-06-02 00:50:35.593152	2020-06-02 00:50:35.593152
23	4	32	9	8	2020-06-02 00:50:35.602264	2020-06-02 00:50:35.602264
24	1	90	9	4	2020-06-02 00:50:35.611145	2020-06-02 00:50:35.611145
25	3	15	10	1	2020-06-02 00:50:35.620581	2020-06-02 00:50:35.620581
26	1	28	10	4	2020-06-02 00:50:35.629586	2020-06-02 00:50:35.629586
27	5	41	10	2	2020-06-02 00:50:35.638613	2020-06-02 00:50:35.638613
28	3	99	11	7	2020-06-02 00:50:35.647597	2020-06-02 00:50:35.647597
29	4	31	11	1	2020-06-02 00:50:35.656783	2020-06-02 00:50:35.656783
30	5	41	11	4	2020-06-02 00:50:35.665783	2020-06-02 00:50:35.665783
31	2	98	12	3	2020-06-02 00:50:35.675272	2020-06-02 00:50:35.675272
32	3	91	12	6	2020-06-02 00:50:35.684271	2020-06-02 00:50:35.684271
33	1	47	13	4	2020-06-02 00:50:35.693473	2020-06-02 00:50:35.693473
34	1	34	13	8	2020-06-02 00:50:35.702604	2020-06-02 00:50:35.702604
35	1	41	13	3	2020-06-02 00:50:35.711591	2020-06-02 00:50:35.711591
36	1	71	13	6	2020-06-02 00:50:35.720608	2020-06-02 00:50:35.720608
37	2	22	14	1	2020-06-02 00:50:35.729619	2020-06-02 00:50:35.729619
38	4	91	14	7	2020-06-02 00:50:35.739452	2020-06-02 00:50:35.739452
39	4	78	14	4	2020-06-02 00:50:35.751645	2020-06-02 00:50:35.751645
40	2	43	15	1	2020-06-02 00:50:35.76072	2020-06-02 00:50:35.76072
41	3	51	15	2	2020-06-02 00:50:35.771717	2020-06-02 00:50:35.771717
42	3	5	16	1	2020-06-02 00:50:35.781598	2020-06-02 00:50:35.781598
43	4	84	17	5	2020-06-02 00:50:35.791573	2020-06-02 00:50:35.791573
44	5	6	17	2	2020-06-02 00:50:35.800605	2020-06-02 00:50:35.800605
45	1	47	17	7	2020-06-02 00:50:35.810023	2020-06-02 00:50:35.810023
46	1	93	18	6	2020-06-02 00:50:35.818778	2020-06-02 00:50:35.818778
47	4	63	19	4	2020-06-02 00:50:35.828275	2020-06-02 00:50:35.828275
48	2	12	19	2	2020-06-02 00:50:35.838334	2020-06-02 00:50:35.838334
49	2	88	19	1	2020-06-02 00:50:35.847586	2020-06-02 00:50:35.847586
50	3	42	20	5	2020-06-02 00:50:35.856333	2020-06-02 00:50:35.856333
51	1	9	20	1	2020-06-02 00:50:35.865408	2020-06-02 00:50:35.865408
52	5	1	21	6	2020-06-02 00:50:35.874898	2020-06-02 00:50:35.874898
53	1	91	21	5	2020-06-02 00:50:35.884836	2020-06-02 00:50:35.884836
54	4	2	21	2	2020-06-02 00:50:35.894771	2020-06-02 00:50:35.894771
55	3	98	21	1	2020-06-02 00:50:35.904478	2020-06-02 00:50:35.904478
56	5	36	22	1	2020-06-02 00:50:35.914018	2020-06-02 00:50:35.914018
57	5	68	23	1	2020-06-02 00:50:35.923173	2020-06-02 00:50:35.923173
58	2	23	24	6	2020-06-02 00:50:35.931985	2020-06-02 00:50:35.931985
59	4	85	24	3	2020-06-02 00:50:35.940736	2020-06-02 00:50:35.940736
60	2	42	24	2	2020-06-02 00:50:35.949579	2020-06-02 00:50:35.949579
61	5	99	24	8	2020-06-02 00:50:35.958431	2020-06-02 00:50:35.958431
62	2	3	25	8	2020-06-02 00:50:35.967267	2020-06-02 00:50:35.967267
63	2	79	26	8	2020-06-02 00:50:35.976112	2020-06-02 00:50:35.976112
64	2	7	26	1	2020-06-02 00:50:35.985129	2020-06-02 00:50:35.985129
65	1	90	26	6	2020-06-02 00:50:35.994062	2020-06-02 00:50:35.994062
66	5	75	27	7	2020-06-02 00:50:36.002992	2020-06-02 00:50:36.002992
67	2	55	27	8	2020-06-02 00:50:36.012001	2020-06-02 00:50:36.012001
68	3	42	28	8	2020-06-02 00:50:36.020766	2020-06-02 00:50:36.020766
69	1	56	28	4	2020-06-02 00:50:36.029406	2020-06-02 00:50:36.029406
70	2	73	28	3	2020-06-02 00:50:36.037685	2020-06-02 00:50:36.037685
71	2	61	29	1	2020-06-02 00:50:36.046145	2020-06-02 00:50:36.046145
72	1	43	29	6	2020-06-02 00:50:36.054953	2020-06-02 00:50:36.054953
73	1	16	29	2	2020-06-02 00:50:36.063687	2020-06-02 00:50:36.063687
74	1	26	30	1	2020-06-02 00:50:36.072364	2020-06-02 00:50:36.072364
75	3	39	30	3	2020-06-02 00:50:36.081553	2020-06-02 00:50:36.081553
76	3	62	30	6	2020-06-02 00:50:36.090539	2020-06-02 00:50:36.090539
77	3	52	30	2	2020-06-02 00:50:36.099677	2020-06-02 00:50:36.099677
78	5	51	31	8	2020-06-02 00:50:36.108763	2020-06-02 00:50:36.108763
79	5	83	32	1	2020-06-02 00:50:36.117617	2020-06-02 00:50:36.117617
80	3	16	33	1	2020-06-02 00:50:36.126587	2020-06-02 00:50:36.126587
81	5	85	33	4	2020-06-02 00:50:36.135575	2020-06-02 00:50:36.135575
82	2	52	34	1	2020-06-02 00:50:36.144336	2020-06-02 00:50:36.144336
83	1	21	34	4	2020-06-02 00:50:36.153468	2020-06-02 00:50:36.153468
84	1	25	34	6	2020-06-02 00:50:36.163712	2020-06-02 00:50:36.163712
85	4	73	35	2	2020-06-02 00:50:36.173094	2020-06-02 00:50:36.173094
86	1	44	35	7	2020-06-02 00:50:36.182197	2020-06-02 00:50:36.182197
87	5	4	36	5	2020-06-02 00:50:36.190993	2020-06-02 00:50:36.190993
88	5	57	36	3	2020-06-02 00:50:36.199773	2020-06-02 00:50:36.199773
89	5	45	37	6	2020-06-02 00:50:36.208684	2020-06-02 00:50:36.208684
90	2	93	37	8	2020-06-02 00:50:36.21767	2020-06-02 00:50:36.21767
91	2	18	38	2	2020-06-02 00:50:36.226279	2020-06-02 00:50:36.226279
92	4	48	38	4	2020-06-02 00:50:36.235128	2020-06-02 00:50:36.235128
93	2	51	38	7	2020-06-02 00:50:36.243451	2020-06-02 00:50:36.243451
94	5	32	39	4	2020-06-02 00:50:36.25265	2020-06-02 00:50:36.25265
95	3	28	39	8	2020-06-02 00:50:36.26136	2020-06-02 00:50:36.26136
96	5	72	39	7	2020-06-02 00:50:36.270278	2020-06-02 00:50:36.270278
97	4	34	40	2	2020-06-02 00:50:36.279431	2020-06-02 00:50:36.279431
98	2	3	40	3	2020-06-02 00:50:36.288611	2020-06-02 00:50:36.288611
99	4	54	40	6	2020-06-02 00:50:36.298121	2020-06-02 00:50:36.298121
100	5	12	40	4	2020-06-02 00:50:36.307244	2020-06-02 00:50:36.307244
101	3	7	41	8	2020-06-02 00:50:36.316085	2020-06-02 00:50:36.316085
102	5	57	41	7	2020-06-02 00:50:36.32496	2020-06-02 00:50:36.32496
103	5	24	41	1	2020-06-02 00:50:36.33347	2020-06-02 00:50:36.33347
104	5	92	41	6	2020-06-02 00:50:36.342109	2020-06-02 00:50:36.342109
105	4	56	42	5	2020-06-02 00:50:36.351112	2020-06-02 00:50:36.351112
106	4	44	42	1	2020-06-02 00:50:36.359988	2020-06-02 00:50:36.359988
107	3	2	42	4	2020-06-02 00:50:36.368588	2020-06-02 00:50:36.368588
108	3	43	43	6	2020-06-02 00:50:36.378599	2020-06-02 00:50:36.378599
109	2	64	43	2	2020-06-02 00:50:36.38769	2020-06-02 00:50:36.38769
110	3	90	43	3	2020-06-02 00:50:36.39657	2020-06-02 00:50:36.39657
111	4	13	44	2	2020-06-02 00:50:36.404875	2020-06-02 00:50:36.404875
112	3	10	44	5	2020-06-02 00:50:36.413593	2020-06-02 00:50:36.413593
113	5	27	45	2	2020-06-02 00:50:36.422256	2020-06-02 00:50:36.422256
114	3	24	46	2	2020-06-02 00:50:36.431277	2020-06-02 00:50:36.431277
115	5	93	46	7	2020-06-02 00:50:36.440444	2020-06-02 00:50:36.440444
116	5	71	47	1	2020-06-02 00:50:36.449431	2020-06-02 00:50:36.449431
117	1	13	48	8	2020-06-02 00:50:36.459595	2020-06-02 00:50:36.459595
118	4	36	48	3	2020-06-02 00:50:36.468967	2020-06-02 00:50:36.468967
119	4	84	49	7	2020-06-02 00:50:36.477582	2020-06-02 00:50:36.477582
120	5	52	49	8	2020-06-02 00:50:36.486431	2020-06-02 00:50:36.486431
121	5	99	50	1	2020-06-02 00:50:36.495131	2020-06-02 00:50:36.495131
122	5	24	50	3	2020-06-02 00:50:36.504175	2020-06-02 00:50:36.504175
123	3	62	50	8	2020-06-02 00:50:36.513288	2020-06-02 00:50:36.513288
124	4	79	51	4	2020-06-02 00:50:36.523318	2020-06-02 00:50:36.523318
125	4	23	51	6	2020-06-02 00:50:36.53437	2020-06-02 00:50:36.53437
126	1	63	52	6	2020-06-02 00:50:36.543904	2020-06-02 00:50:36.543904
127	5	21	53	4	2020-06-02 00:50:36.555051	2020-06-02 00:50:36.555051
128	3	5	53	8	2020-06-02 00:50:36.564132	2020-06-02 00:50:36.564132
129	3	52	54	1	2020-06-02 00:50:36.572865	2020-06-02 00:50:36.572865
130	5	11	54	2	2020-06-02 00:50:36.581733	2020-06-02 00:50:36.581733
131	1	73	55	3	2020-06-02 00:50:36.591071	2020-06-02 00:50:36.591071
132	5	89	55	4	2020-06-02 00:50:36.599774	2020-06-02 00:50:36.599774
133	1	89	56	7	2020-06-02 00:50:36.607959	2020-06-02 00:50:36.607959
134	1	100	56	1	2020-06-02 00:50:36.616421	2020-06-02 00:50:36.616421
135	3	31	57	8	2020-06-02 00:50:36.62484	2020-06-02 00:50:36.62484
136	4	76	57	7	2020-06-02 00:50:36.633433	2020-06-02 00:50:36.633433
137	5	55	58	8	2020-06-02 00:50:36.641881	2020-06-02 00:50:36.641881
138	4	88	58	1	2020-06-02 00:50:36.650163	2020-06-02 00:50:36.650163
139	5	66	58	3	2020-06-02 00:50:36.659196	2020-06-02 00:50:36.659196
140	1	70	59	1	2020-06-02 00:50:36.668298	2020-06-02 00:50:36.668298
141	1	34	59	8	2020-06-02 00:50:36.677749	2020-06-02 00:50:36.677749
142	3	26	59	2	2020-06-02 00:50:36.68678	2020-06-02 00:50:36.68678
143	3	45	60	6	2020-06-02 00:50:36.696142	2020-06-02 00:50:36.696142
144	5	40	61	1	2020-06-02 00:50:36.705029	2020-06-02 00:50:36.705029
145	1	38	61	7	2020-06-02 00:50:36.713399	2020-06-02 00:50:36.713399
146	5	73	62	3	2020-06-02 00:50:36.72162	2020-06-02 00:50:36.72162
147	2	18	63	8	2020-06-02 00:50:36.729456	2020-06-02 00:50:36.729456
148	4	43	64	2	2020-06-02 00:50:36.737606	2020-06-02 00:50:36.737606
149	5	33	64	3	2020-06-02 00:50:36.745731	2020-06-02 00:50:36.745731
150	1	19	65	4	2020-06-02 00:50:36.75407	2020-06-02 00:50:36.75407
151	5	24	65	7	2020-06-02 00:50:36.76258	2020-06-02 00:50:36.76258
152	4	26	65	5	2020-06-02 00:50:36.7708	2020-06-02 00:50:36.7708
153	5	94	66	6	2020-06-02 00:50:36.779559	2020-06-02 00:50:36.779559
154	3	11	67	3	2020-06-02 00:50:36.787598	2020-06-02 00:50:36.787598
155	2	16	67	6	2020-06-02 00:50:36.796146	2020-06-02 00:50:36.796146
156	5	59	68	3	2020-06-02 00:50:36.805133	2020-06-02 00:50:36.805133
157	3	66	68	2	2020-06-02 00:50:36.813266	2020-06-02 00:50:36.813266
158	3	61	69	2	2020-06-02 00:50:36.822204	2020-06-02 00:50:36.822204
159	3	42	69	1	2020-06-02 00:50:36.831356	2020-06-02 00:50:36.831356
160	5	35	69	8	2020-06-02 00:50:36.83986	2020-06-02 00:50:36.83986
161	3	10	69	4	2020-06-02 00:50:36.848395	2020-06-02 00:50:36.848395
162	5	31	70	3	2020-06-02 00:50:36.856671	2020-06-02 00:50:36.856671
163	5	47	70	7	2020-06-02 00:50:36.864944	2020-06-02 00:50:36.864944
164	2	55	71	7	2020-06-02 00:50:36.873739	2020-06-02 00:50:36.873739
165	3	41	71	5	2020-06-02 00:50:36.883192	2020-06-02 00:50:36.883192
166	3	48	71	3	2020-06-02 00:50:36.891616	2020-06-02 00:50:36.891616
167	2	66	72	6	2020-06-02 00:50:36.899933	2020-06-02 00:50:36.899933
168	2	28	72	1	2020-06-02 00:50:36.90858	2020-06-02 00:50:36.90858
169	2	6	72	2	2020-06-02 00:50:36.91788	2020-06-02 00:50:36.91788
170	5	61	72	4	2020-06-02 00:50:36.932179	2020-06-02 00:50:36.932179
171	3	50	73	5	2020-06-02 00:50:36.942319	2020-06-02 00:50:36.942319
172	3	61	73	6	2020-06-02 00:50:36.951478	2020-06-02 00:50:36.951478
173	5	20	73	4	2020-06-02 00:50:36.961183	2020-06-02 00:50:36.961183
174	4	81	73	2	2020-06-02 00:50:36.96965	2020-06-02 00:50:36.96965
175	2	59	74	4	2020-06-02 00:50:36.978832	2020-06-02 00:50:36.978832
176	3	53	74	8	2020-06-02 00:50:36.987807	2020-06-02 00:50:36.987807
177	3	59	75	8	2020-06-02 00:50:36.996655	2020-06-02 00:50:36.996655
178	2	28	75	2	2020-06-02 00:50:37.005437	2020-06-02 00:50:37.005437
179	1	50	75	6	2020-06-02 00:50:37.01362	2020-06-02 00:50:37.01362
180	2	6	76	5	2020-06-02 00:50:37.021763	2020-06-02 00:50:37.021763
181	1	77	76	6	2020-06-02 00:50:37.029775	2020-06-02 00:50:37.029775
182	5	99	76	2	2020-06-02 00:50:37.037883	2020-06-02 00:50:37.037883
183	1	23	77	7	2020-06-02 00:50:37.046014	2020-06-02 00:50:37.046014
184	5	81	77	4	2020-06-02 00:50:37.054159	2020-06-02 00:50:37.054159
185	1	56	77	5	2020-06-02 00:50:37.062972	2020-06-02 00:50:37.062972
186	4	25	78	6	2020-06-02 00:50:37.071426	2020-06-02 00:50:37.071426
187	2	15	78	2	2020-06-02 00:50:37.080745	2020-06-02 00:50:37.080745
188	5	98	78	4	2020-06-02 00:50:37.089765	2020-06-02 00:50:37.089765
189	2	38	78	1	2020-06-02 00:50:37.098615	2020-06-02 00:50:37.098615
190	4	37	79	6	2020-06-02 00:50:37.106464	2020-06-02 00:50:37.106464
191	3	21	80	7	2020-06-02 00:50:37.116589	2020-06-02 00:50:37.116589
192	2	91	80	1	2020-06-02 00:50:37.124986	2020-06-02 00:50:37.124986
193	1	41	80	5	2020-06-02 00:50:37.133213	2020-06-02 00:50:37.133213
194	1	30	81	2	2020-06-02 00:50:37.141142	2020-06-02 00:50:37.141142
195	5	90	82	4	2020-06-02 00:50:37.149566	2020-06-02 00:50:37.149566
196	3	75	82	6	2020-06-02 00:50:37.157944	2020-06-02 00:50:37.157944
197	5	20	82	5	2020-06-02 00:50:37.168206	2020-06-02 00:50:37.168206
198	5	66	82	7	2020-06-02 00:50:37.177615	2020-06-02 00:50:37.177615
199	4	46	83	2	2020-06-02 00:50:37.186363	2020-06-02 00:50:37.186363
200	5	5	84	3	2020-06-02 00:50:37.194584	2020-06-02 00:50:37.194584
201	5	36	84	1	2020-06-02 00:50:37.202789	2020-06-02 00:50:37.202789
202	4	84	85	7	2020-06-02 00:50:37.211357	2020-06-02 00:50:37.211357
203	4	61	85	2	2020-06-02 00:50:37.21957	2020-06-02 00:50:37.21957
204	4	2	86	6	2020-06-02 00:50:37.227565	2020-06-02 00:50:37.227565
205	4	93	86	1	2020-06-02 00:50:37.23573	2020-06-02 00:50:37.23573
206	5	56	87	5	2020-06-02 00:50:37.243912	2020-06-02 00:50:37.243912
207	3	51	87	1	2020-06-02 00:50:37.251976	2020-06-02 00:50:37.251976
208	4	48	88	8	2020-06-02 00:50:37.260802	2020-06-02 00:50:37.260802
209	4	42	88	7	2020-06-02 00:50:37.269604	2020-06-02 00:50:37.269604
210	1	21	89	4	2020-06-02 00:50:37.278428	2020-06-02 00:50:37.278428
211	5	75	89	5	2020-06-02 00:50:37.286899	2020-06-02 00:50:37.286899
212	2	10	89	7	2020-06-02 00:50:37.296192	2020-06-02 00:50:37.296192
213	2	14	90	2	2020-06-02 00:50:37.305467	2020-06-02 00:50:37.305467
214	2	78	91	3	2020-06-02 00:50:37.315731	2020-06-02 00:50:37.315731
215	1	79	92	4	2020-06-02 00:50:37.325344	2020-06-02 00:50:37.325344
216	5	56	92	6	2020-06-02 00:50:37.33429	2020-06-02 00:50:37.33429
217	2	24	93	7	2020-06-02 00:50:37.342764	2020-06-02 00:50:37.342764
218	2	46	94	6	2020-06-02 00:50:37.350918	2020-06-02 00:50:37.350918
219	1	84	94	5	2020-06-02 00:50:37.359968	2020-06-02 00:50:37.359968
220	3	78	95	7	2020-06-02 00:50:37.368928	2020-06-02 00:50:37.368928
221	5	7	95	6	2020-06-02 00:50:37.378124	2020-06-02 00:50:37.378124
222	5	85	95	4	2020-06-02 00:50:37.387256	2020-06-02 00:50:37.387256
223	1	45	96	7	2020-06-02 00:50:37.395386	2020-06-02 00:50:37.395386
224	1	21	96	1	2020-06-02 00:50:37.403438	2020-06-02 00:50:37.403438
225	1	71	97	6	2020-06-02 00:50:37.411785	2020-06-02 00:50:37.411785
226	1	37	98	1	2020-06-02 00:50:37.42004	2020-06-02 00:50:37.42004
227	1	84	98	6	2020-06-02 00:50:37.428168	2020-06-02 00:50:37.428168
228	2	60	98	2	2020-06-02 00:50:37.437034	2020-06-02 00:50:37.437034
229	5	50	99	6	2020-06-02 00:50:37.446297	2020-06-02 00:50:37.446297
230	3	46	99	5	2020-06-02 00:50:37.455999	2020-06-02 00:50:37.455999
231	2	39	100	4	2020-06-02 00:50:37.466218	2020-06-02 00:50:37.466218
232	4	68	101	3	2020-06-02 00:50:37.476046	2020-06-02 00:50:37.476046
233	3	20	101	1	2020-06-02 00:50:37.485335	2020-06-02 00:50:37.485335
234	3	9	101	5	2020-06-02 00:50:37.495106	2020-06-02 00:50:37.495106
235	2	10	102	1	2020-06-02 00:50:37.503452	2020-06-02 00:50:37.503452
236	1	5	102	6	2020-06-02 00:50:37.511602	2020-06-02 00:50:37.511602
237	1	20	103	8	2020-06-02 00:50:37.520843	2020-06-02 00:50:37.520843
238	3	66	104	1	2020-06-02 00:50:37.52985	2020-06-02 00:50:37.52985
239	3	74	104	4	2020-06-02 00:50:37.538743	2020-06-02 00:50:37.538743
240	3	19	104	3	2020-06-02 00:50:37.546896	2020-06-02 00:50:37.546896
241	3	20	105	3	2020-06-02 00:50:37.555043	2020-06-02 00:50:37.555043
242	3	21	105	7	2020-06-02 00:50:37.563573	2020-06-02 00:50:37.563573
243	5	51	105	5	2020-06-02 00:50:37.572462	2020-06-02 00:50:37.572462
244	1	26	106	2	2020-06-02 00:50:37.582337	2020-06-02 00:50:37.582337
245	1	50	107	3	2020-06-02 00:50:37.592974	2020-06-02 00:50:37.592974
246	1	58	107	8	2020-06-02 00:50:37.602589	2020-06-02 00:50:37.602589
247	4	22	107	6	2020-06-02 00:50:37.611592	2020-06-02 00:50:37.611592
248	5	72	107	1	2020-06-02 00:50:37.620558	2020-06-02 00:50:37.620558
249	4	52	108	2	2020-06-02 00:50:37.630205	2020-06-02 00:50:37.630205
250	4	13	108	7	2020-06-02 00:50:37.63974	2020-06-02 00:50:37.63974
251	5	9	108	8	2020-06-02 00:50:37.648017	2020-06-02 00:50:37.648017
252	3	6	108	3	2020-06-02 00:50:37.656159	2020-06-02 00:50:37.656159
253	3	81	109	2	2020-06-02 00:50:37.665098	2020-06-02 00:50:37.665098
254	1	51	109	5	2020-06-02 00:50:37.673662	2020-06-02 00:50:37.673662
255	4	24	110	4	2020-06-02 00:50:37.682206	2020-06-02 00:50:37.682206
256	1	79	111	6	2020-06-02 00:50:37.690985	2020-06-02 00:50:37.690985
257	1	80	112	8	2020-06-02 00:50:37.69961	2020-06-02 00:50:37.69961
258	4	13	113	6	2020-06-02 00:50:37.70809	2020-06-02 00:50:37.70809
259	5	89	114	5	2020-06-02 00:50:37.716086	2020-06-02 00:50:37.716086
260	3	6	115	8	2020-06-02 00:50:37.724443	2020-06-02 00:50:37.724443
261	5	37	115	5	2020-06-02 00:50:37.732689	2020-06-02 00:50:37.732689
262	1	43	115	2	2020-06-02 00:50:37.740978	2020-06-02 00:50:37.740978
263	5	85	116	2	2020-06-02 00:50:37.749111	2020-06-02 00:50:37.749111
264	2	61	117	3	2020-06-02 00:50:37.757392	2020-06-02 00:50:37.757392
265	2	42	117	2	2020-06-02 00:50:37.76747	2020-06-02 00:50:37.76747
266	1	95	118	5	2020-06-02 00:50:37.775826	2020-06-02 00:50:37.775826
267	1	83	119	1	2020-06-02 00:50:37.783598	2020-06-02 00:50:37.783598
268	4	82	120	5	2020-06-02 00:50:37.791645	2020-06-02 00:50:37.791645
269	4	81	120	3	2020-06-02 00:50:37.799905	2020-06-02 00:50:37.799905
270	4	33	120	1	2020-06-02 00:50:37.807778	2020-06-02 00:50:37.807778
271	2	77	121	5	2020-06-02 00:50:37.815601	2020-06-02 00:50:37.815601
272	5	84	122	3	2020-06-02 00:50:37.823616	2020-06-02 00:50:37.823616
273	4	70	122	6	2020-06-02 00:50:37.832065	2020-06-02 00:50:37.832065
274	2	21	122	7	2020-06-02 00:50:37.840152	2020-06-02 00:50:37.840152
275	4	57	123	8	2020-06-02 00:50:37.848003	2020-06-02 00:50:37.848003
276	1	62	123	6	2020-06-02 00:50:37.855971	2020-06-02 00:50:37.855971
277	4	75	124	3	2020-06-02 00:50:37.864097	2020-06-02 00:50:37.864097
278	1	91	124	1	2020-06-02 00:50:37.872267	2020-06-02 00:50:37.872267
279	5	36	124	2	2020-06-02 00:50:37.881568	2020-06-02 00:50:37.881568
280	5	50	125	2	2020-06-02 00:50:37.890378	2020-06-02 00:50:37.890378
281	5	14	125	3	2020-06-02 00:50:37.898405	2020-06-02 00:50:37.898405
282	2	69	126	7	2020-06-02 00:50:37.906562	2020-06-02 00:50:37.906562
283	2	59	126	4	2020-06-02 00:50:37.914588	2020-06-02 00:50:37.914588
284	3	58	126	8	2020-06-02 00:50:37.923589	2020-06-02 00:50:37.923589
285	2	61	126	1	2020-06-02 00:50:37.932659	2020-06-02 00:50:37.932659
286	2	64	127	5	2020-06-02 00:50:37.941731	2020-06-02 00:50:37.941731
287	2	20	127	8	2020-06-02 00:50:37.950427	2020-06-02 00:50:37.950427
288	1	2	127	7	2020-06-02 00:50:37.959717	2020-06-02 00:50:37.959717
289	1	49	128	3	2020-06-02 00:50:37.96791	2020-06-02 00:50:37.96791
290	3	62	128	7	2020-06-02 00:50:37.975726	2020-06-02 00:50:37.975726
291	4	38	129	3	2020-06-02 00:50:37.983667	2020-06-02 00:50:37.983667
292	3	44	130	2	2020-06-02 00:50:37.99193	2020-06-02 00:50:37.99193
293	2	16	131	5	2020-06-02 00:50:38.000004	2020-06-02 00:50:38.000004
294	4	78	132	6	2020-06-02 00:50:38.008043	2020-06-02 00:50:38.008043
295	3	15	132	8	2020-06-02 00:50:38.016122	2020-06-02 00:50:38.016122
296	1	87	133	7	2020-06-02 00:50:38.024102	2020-06-02 00:50:38.024102
297	2	98	133	4	2020-06-02 00:50:38.032165	2020-06-02 00:50:38.032165
298	3	18	134	8	2020-06-02 00:50:38.040291	2020-06-02 00:50:38.040291
299	2	60	134	3	2020-06-02 00:50:38.04863	2020-06-02 00:50:38.04863
300	4	94	134	2	2020-06-02 00:50:38.057349	2020-06-02 00:50:38.057349
301	5	92	135	6	2020-06-02 00:50:38.065461	2020-06-02 00:50:38.065461
302	2	44	136	8	2020-06-02 00:50:38.07359	2020-06-02 00:50:38.07359
303	2	72	136	6	2020-06-02 00:50:38.081943	2020-06-02 00:50:38.081943
304	3	93	136	7	2020-06-02 00:50:38.090942	2020-06-02 00:50:38.090942
305	4	75	136	3	2020-06-02 00:50:38.099449	2020-06-02 00:50:38.099449
306	5	92	137	3	2020-06-02 00:50:38.107689	2020-06-02 00:50:38.107689
307	4	1	138	4	2020-06-02 00:50:38.115937	2020-06-02 00:50:38.115937
308	2	54	139	2	2020-06-02 00:50:38.124053	2020-06-02 00:50:38.124053
309	2	51	139	3	2020-06-02 00:50:38.132659	2020-06-02 00:50:38.132659
310	4	2	140	3	2020-06-02 00:50:38.140955	2020-06-02 00:50:38.140955
311	3	24	141	1	2020-06-02 00:50:38.149987	2020-06-02 00:50:38.149987
312	5	81	141	8	2020-06-02 00:50:38.158962	2020-06-02 00:50:38.158962
313	3	17	141	2	2020-06-02 00:50:38.167381	2020-06-02 00:50:38.167381
314	1	87	142	1	2020-06-02 00:50:38.176375	2020-06-02 00:50:38.176375
315	2	38	143	2	2020-06-02 00:50:38.185342	2020-06-02 00:50:38.185342
316	4	9	143	6	2020-06-02 00:50:38.193818	2020-06-02 00:50:38.193818
317	3	38	143	1	2020-06-02 00:50:38.20256	2020-06-02 00:50:38.20256
318	1	3	144	8	2020-06-02 00:50:38.21079	2020-06-02 00:50:38.21079
319	1	41	144	4	2020-06-02 00:50:38.219936	2020-06-02 00:50:38.219936
320	4	49	144	1	2020-06-02 00:50:38.227833	2020-06-02 00:50:38.227833
321	5	44	145	4	2020-06-02 00:50:38.236161	2020-06-02 00:50:38.236161
322	4	79	146	7	2020-06-02 00:50:38.24386	2020-06-02 00:50:38.24386
323	1	36	146	8	2020-06-02 00:50:38.252243	2020-06-02 00:50:38.252243
324	5	50	147	4	2020-06-02 00:50:38.261038	2020-06-02 00:50:38.261038
325	4	42	147	7	2020-06-02 00:50:38.269539	2020-06-02 00:50:38.269539
326	4	49	147	2	2020-06-02 00:50:38.278558	2020-06-02 00:50:38.278558
327	2	51	148	6	2020-06-02 00:50:38.287676	2020-06-02 00:50:38.287676
328	3	1	149	3	2020-06-02 00:50:38.296587	2020-06-02 00:50:38.296587
329	1	88	150	1	2020-06-02 00:50:38.305596	2020-06-02 00:50:38.305596
330	1	76	150	8	2020-06-02 00:50:38.313706	2020-06-02 00:50:38.313706
331	2	18	151	5	2020-06-02 00:50:38.327944	2020-06-02 00:50:38.327944
332	3	65	151	4	2020-06-02 00:50:38.339363	2020-06-02 00:50:38.339363
333	1	93	152	6	2020-06-02 00:50:38.349772	2020-06-02 00:50:38.349772
334	4	30	152	2	2020-06-02 00:50:38.359053	2020-06-02 00:50:38.359053
335	3	89	153	3	2020-06-02 00:50:38.367657	2020-06-02 00:50:38.367657
336	1	5	153	5	2020-06-02 00:50:38.376361	2020-06-02 00:50:38.376361
337	3	88	153	7	2020-06-02 00:50:38.385758	2020-06-02 00:50:38.385758
338	5	14	154	3	2020-06-02 00:50:38.394697	2020-06-02 00:50:38.394697
339	2	27	155	6	2020-06-02 00:50:38.402984	2020-06-02 00:50:38.402984
340	5	70	155	2	2020-06-02 00:50:38.411632	2020-06-02 00:50:38.411632
341	1	8	156	7	2020-06-02 00:50:38.419803	2020-06-02 00:50:38.419803
342	2	97	156	3	2020-06-02 00:50:38.428297	2020-06-02 00:50:38.428297
343	3	23	157	2	2020-06-02 00:50:38.436396	2020-06-02 00:50:38.436396
344	2	100	158	3	2020-06-02 00:50:38.444923	2020-06-02 00:50:38.444923
345	5	21	158	2	2020-06-02 00:50:38.454194	2020-06-02 00:50:38.454194
346	5	78	158	4	2020-06-02 00:50:38.46225	2020-06-02 00:50:38.46225
347	3	45	159	5	2020-06-02 00:50:38.470744	2020-06-02 00:50:38.470744
348	5	81	159	1	2020-06-02 00:50:38.478591	2020-06-02 00:50:38.478591
349	4	86	159	6	2020-06-02 00:50:38.486381	2020-06-02 00:50:38.486381
350	2	56	160	6	2020-06-02 00:50:38.494564	2020-06-02 00:50:38.494564
351	3	41	160	8	2020-06-02 00:50:38.50323	2020-06-02 00:50:38.50323
352	5	10	161	4	2020-06-02 00:50:38.511549	2020-06-02 00:50:38.511549
353	4	67	161	7	2020-06-02 00:50:38.520067	2020-06-02 00:50:38.520067
354	5	90	162	2	2020-06-02 00:50:38.529048	2020-06-02 00:50:38.529048
355	5	74	162	3	2020-06-02 00:50:38.537623	2020-06-02 00:50:38.537623
356	4	47	163	7	2020-06-02 00:50:38.546126	2020-06-02 00:50:38.546126
357	4	19	164	8	2020-06-02 00:50:38.555595	2020-06-02 00:50:38.555595
358	3	61	164	6	2020-06-02 00:50:38.564002	2020-06-02 00:50:38.564002
359	2	30	164	4	2020-06-02 00:50:38.572613	2020-06-02 00:50:38.572613
360	5	80	164	7	2020-06-02 00:50:38.581014	2020-06-02 00:50:38.581014
361	2	74	165	1	2020-06-02 00:50:38.59022	2020-06-02 00:50:38.59022
362	5	9	165	2	2020-06-02 00:50:38.599296	2020-06-02 00:50:38.599296
363	2	97	166	6	2020-06-02 00:50:38.60783	2020-06-02 00:50:38.60783
364	1	54	166	2	2020-06-02 00:50:38.616722	2020-06-02 00:50:38.616722
365	5	21	167	3	2020-06-02 00:50:38.625614	2020-06-02 00:50:38.625614
366	1	100	167	7	2020-06-02 00:50:38.634356	2020-06-02 00:50:38.634356
367	2	73	168	3	2020-06-02 00:50:38.642852	2020-06-02 00:50:38.642852
368	2	33	168	7	2020-06-02 00:50:38.651244	2020-06-02 00:50:38.651244
369	1	8	168	8	2020-06-02 00:50:38.659285	2020-06-02 00:50:38.659285
370	4	68	169	8	2020-06-02 00:50:38.66801	2020-06-02 00:50:38.66801
371	4	56	170	6	2020-06-02 00:50:38.676439	2020-06-02 00:50:38.676439
372	3	13	170	1	2020-06-02 00:50:38.685062	2020-06-02 00:50:38.685062
373	4	55	171	3	2020-06-02 00:50:38.693475	2020-06-02 00:50:38.693475
374	1	17	171	1	2020-06-02 00:50:38.701615	2020-06-02 00:50:38.701615
375	4	13	171	5	2020-06-02 00:50:38.709937	2020-06-02 00:50:38.709937
376	1	98	172	7	2020-06-02 00:50:38.718581	2020-06-02 00:50:38.718581
377	3	88	172	5	2020-06-02 00:50:38.727341	2020-06-02 00:50:38.727341
378	1	43	172	4	2020-06-02 00:50:38.73695	2020-06-02 00:50:38.73695
379	3	52	172	2	2020-06-02 00:50:38.746036	2020-06-02 00:50:38.746036
380	2	5	173	6	2020-06-02 00:50:38.755015	2020-06-02 00:50:38.755015
381	2	89	173	1	2020-06-02 00:50:38.764114	2020-06-02 00:50:38.764114
382	1	30	173	7	2020-06-02 00:50:38.774994	2020-06-02 00:50:38.774994
383	1	61	174	1	2020-06-02 00:50:38.783392	2020-06-02 00:50:38.783392
384	2	59	175	7	2020-06-02 00:50:38.79158	2020-06-02 00:50:38.79158
385	5	16	175	4	2020-06-02 00:50:38.800345	2020-06-02 00:50:38.800345
386	5	23	176	2	2020-06-02 00:50:38.809606	2020-06-02 00:50:38.809606
387	2	20	176	4	2020-06-02 00:50:38.81804	2020-06-02 00:50:38.81804
388	4	8	176	7	2020-06-02 00:50:38.828163	2020-06-02 00:50:38.828163
389	1	10	177	2	2020-06-02 00:50:38.837668	2020-06-02 00:50:38.837668
390	2	12	177	5	2020-06-02 00:50:38.847127	2020-06-02 00:50:38.847127
391	1	13	177	7	2020-06-02 00:50:38.856639	2020-06-02 00:50:38.856639
392	3	11	178	5	2020-06-02 00:50:38.86535	2020-06-02 00:50:38.86535
393	4	47	179	8	2020-06-02 00:50:38.875002	2020-06-02 00:50:38.875002
394	3	88	179	1	2020-06-02 00:50:38.884585	2020-06-02 00:50:38.884585
395	4	88	180	7	2020-06-02 00:50:38.892918	2020-06-02 00:50:38.892918
396	2	94	180	4	2020-06-02 00:50:38.900893	2020-06-02 00:50:38.900893
397	4	75	180	3	2020-06-02 00:50:38.908927	2020-06-02 00:50:38.908927
398	2	15	181	7	2020-06-02 00:50:38.916929	2020-06-02 00:50:38.916929
399	1	24	182	3	2020-06-02 00:50:38.925585	2020-06-02 00:50:38.925585
400	1	13	182	8	2020-06-02 00:50:38.93378	2020-06-02 00:50:38.93378
401	1	30	183	2	2020-06-02 00:50:38.941959	2020-06-02 00:50:38.941959
402	3	27	183	3	2020-06-02 00:50:38.95081	2020-06-02 00:50:38.95081
403	5	71	183	6	2020-06-02 00:50:38.959639	2020-06-02 00:50:38.959639
404	4	100	184	1	2020-06-02 00:50:38.968874	2020-06-02 00:50:38.968874
405	2	63	184	2	2020-06-02 00:50:38.977328	2020-06-02 00:50:38.977328
406	5	75	185	5	2020-06-02 00:50:38.986716	2020-06-02 00:50:38.986716
407	1	61	185	8	2020-06-02 00:50:38.995243	2020-06-02 00:50:38.995243
408	2	82	185	7	2020-06-02 00:50:39.003577	2020-06-02 00:50:39.003577
409	3	71	186	8	2020-06-02 00:50:39.011753	2020-06-02 00:50:39.011753
410	3	63	186	4	2020-06-02 00:50:39.019816	2020-06-02 00:50:39.019816
411	4	7	186	3	2020-06-02 00:50:39.027919	2020-06-02 00:50:39.027919
412	1	35	187	6	2020-06-02 00:50:39.036004	2020-06-02 00:50:39.036004
413	5	51	188	7	2020-06-02 00:50:39.043791	2020-06-02 00:50:39.043791
414	1	81	189	1	2020-06-02 00:50:39.051601	2020-06-02 00:50:39.051601
415	2	70	189	6	2020-06-02 00:50:39.059946	2020-06-02 00:50:39.059946
416	1	91	190	5	2020-06-02 00:50:39.067794	2020-06-02 00:50:39.067794
417	4	95	191	5	2020-06-02 00:50:39.076006	2020-06-02 00:50:39.076006
418	1	4	191	8	2020-06-02 00:50:39.084983	2020-06-02 00:50:39.084983
419	3	78	191	7	2020-06-02 00:50:39.093273	2020-06-02 00:50:39.093273
420	1	42	191	3	2020-06-02 00:50:39.101301	2020-06-02 00:50:39.101301
421	1	82	192	4	2020-06-02 00:50:39.109691	2020-06-02 00:50:39.109691
422	1	55	193	2	2020-06-02 00:50:39.11875	2020-06-02 00:50:39.11875
423	5	60	193	3	2020-06-02 00:50:39.127707	2020-06-02 00:50:39.127707
424	4	58	193	5	2020-06-02 00:50:39.137056	2020-06-02 00:50:39.137056
425	2	34	194	4	2020-06-02 00:50:39.145242	2020-06-02 00:50:39.145242
426	4	6	195	2	2020-06-02 00:50:39.153322	2020-06-02 00:50:39.153322
427	2	61	195	1	2020-06-02 00:50:39.161584	2020-06-02 00:50:39.161584
428	4	12	195	3	2020-06-02 00:50:39.169591	2020-06-02 00:50:39.169591
429	2	58	195	4	2020-06-02 00:50:39.177743	2020-06-02 00:50:39.177743
430	3	2	196	3	2020-06-02 00:50:39.186054	2020-06-02 00:50:39.186054
431	3	58	196	8	2020-06-02 00:50:39.194096	2020-06-02 00:50:39.194096
432	5	17	197	1	2020-06-02 00:50:39.202296	2020-06-02 00:50:39.202296
433	2	53	197	7	2020-06-02 00:50:39.210884	2020-06-02 00:50:39.210884
434	1	7	197	5	2020-06-02 00:50:39.218916	2020-06-02 00:50:39.218916
435	1	33	198	2	2020-06-02 00:50:39.226745	2020-06-02 00:50:39.226745
436	2	32	198	8	2020-06-02 00:50:39.234574	2020-06-02 00:50:39.234574
437	2	53	199	3	2020-06-02 00:50:39.242468	2020-06-02 00:50:39.242468
438	2	33	199	8	2020-06-02 00:50:39.250473	2020-06-02 00:50:39.250473
439	2	21	199	6	2020-06-02 00:50:39.258869	2020-06-02 00:50:39.258869
440	2	20	200	5	2020-06-02 00:50:39.267	2020-06-02 00:50:39.267
441	1	58	200	8	2020-06-02 00:50:39.277642	2020-06-02 00:50:39.277642
442	2	87	200	1	2020-06-02 00:50:39.286003	2020-06-02 00:50:39.286003
443	4	67	1	14	2020-06-02 00:50:39.294362	2020-06-02 00:50:39.294362
444	4	83	1	12	2020-06-02 00:50:39.302606	2020-06-02 00:50:39.302606
445	1	43	2	11	2020-06-02 00:50:39.312051	2020-06-02 00:50:39.312051
446	1	5	3	4	2020-06-02 00:50:39.321168	2020-06-02 00:50:39.321168
447	1	53	4	7	2020-06-02 00:50:39.330129	2020-06-02 00:50:39.330129
448	1	58	5	1	2020-06-02 00:50:39.338022	2020-06-02 00:50:39.338022
449	4	78	5	13	2020-06-02 00:50:39.346451	2020-06-02 00:50:39.346451
450	2	52	5	10	2020-06-02 00:50:39.355163	2020-06-02 00:50:39.355163
451	5	77	5	16	2020-06-02 00:50:39.363794	2020-06-02 00:50:39.363794
452	3	10	6	11	2020-06-02 00:50:39.372054	2020-06-02 00:50:39.372054
453	3	74	6	12	2020-06-02 00:50:39.380672	2020-06-02 00:50:39.380672
454	5	75	6	1	2020-06-02 00:50:39.389734	2020-06-02 00:50:39.389734
455	4	75	7	11	2020-06-02 00:50:39.398285	2020-06-02 00:50:39.398285
456	2	74	8	9	2020-06-02 00:50:39.407579	2020-06-02 00:50:39.407579
457	2	65	9	10	2020-06-02 00:50:39.416333	2020-06-02 00:50:39.416333
458	5	77	10	5	2020-06-02 00:50:39.424941	2020-06-02 00:50:39.424941
459	4	43	10	10	2020-06-02 00:50:39.432923	2020-06-02 00:50:39.432923
460	1	34	11	11	2020-06-02 00:50:39.440693	2020-06-02 00:50:39.440693
461	1	57	11	9	2020-06-02 00:50:39.448732	2020-06-02 00:50:39.448732
462	2	35	12	7	2020-06-02 00:50:39.457299	2020-06-02 00:50:39.457299
463	3	1	13	2	2020-06-02 00:50:39.465957	2020-06-02 00:50:39.465957
464	5	83	13	16	2020-06-02 00:50:39.474697	2020-06-02 00:50:39.474697
465	4	17	14	8	2020-06-02 00:50:39.483713	2020-06-02 00:50:39.483713
466	1	91	14	10	2020-06-02 00:50:39.493075	2020-06-02 00:50:39.493075
467	2	44	15	15	2020-06-02 00:50:39.501755	2020-06-02 00:50:39.501755
468	2	78	15	9	2020-06-02 00:50:39.510055	2020-06-02 00:50:39.510055
469	2	89	16	2	2020-06-02 00:50:39.519401	2020-06-02 00:50:39.519401
470	2	1	16	16	2020-06-02 00:50:39.529473	2020-06-02 00:50:39.529473
471	4	100	16	10	2020-06-02 00:50:39.538107	2020-06-02 00:50:39.538107
472	5	17	17	10	2020-06-02 00:50:39.546898	2020-06-02 00:50:39.546898
473	4	63	17	14	2020-06-02 00:50:39.555278	2020-06-02 00:50:39.555278
474	5	26	17	8	2020-06-02 00:50:39.563455	2020-06-02 00:50:39.563455
475	5	67	18	16	2020-06-02 00:50:39.571723	2020-06-02 00:50:39.571723
476	5	70	19	8	2020-06-02 00:50:39.579783	2020-06-02 00:50:39.579783
477	4	48	19	10	2020-06-02 00:50:39.588043	2020-06-02 00:50:39.588043
478	1	55	20	7	2020-06-02 00:50:39.596818	2020-06-02 00:50:39.596818
479	2	49	20	11	2020-06-02 00:50:39.604964	2020-06-02 00:50:39.604964
480	4	10	20	14	2020-06-02 00:50:39.613407	2020-06-02 00:50:39.613407
481	2	46	21	9	2020-06-02 00:50:39.6217	2020-06-02 00:50:39.6217
482	4	80	21	13	2020-06-02 00:50:39.636629	2020-06-02 00:50:39.636629
483	1	88	22	8	2020-06-02 00:50:39.647941	2020-06-02 00:50:39.647941
484	1	32	22	12	2020-06-02 00:50:39.658549	2020-06-02 00:50:39.658549
485	1	70	23	13	2020-06-02 00:50:39.668787	2020-06-02 00:50:39.668787
486	2	49	24	14	2020-06-02 00:50:39.678274	2020-06-02 00:50:39.678274
487	3	15	25	11	2020-06-02 00:50:39.68661	2020-06-02 00:50:39.68661
488	5	41	26	14	2020-06-02 00:50:39.694739	2020-06-02 00:50:39.694739
489	4	29	26	16	2020-06-02 00:50:39.703144	2020-06-02 00:50:39.703144
490	4	60	27	16	2020-06-02 00:50:39.710927	2020-06-02 00:50:39.710927
491	2	24	27	2	2020-06-02 00:50:39.719079	2020-06-02 00:50:39.719079
492	4	90	27	13	2020-06-02 00:50:39.727707	2020-06-02 00:50:39.727707
493	2	50	28	14	2020-06-02 00:50:39.738057	2020-06-02 00:50:39.738057
494	4	21	29	7	2020-06-02 00:50:39.748582	2020-06-02 00:50:39.748582
495	4	61	29	16	2020-06-02 00:50:39.758317	2020-06-02 00:50:39.758317
496	5	64	29	13	2020-06-02 00:50:39.767691	2020-06-02 00:50:39.767691
497	5	51	30	7	2020-06-02 00:50:39.776338	2020-06-02 00:50:39.776338
498	2	39	31	13	2020-06-02 00:50:39.785111	2020-06-02 00:50:39.785111
499	3	97	31	10	2020-06-02 00:50:39.793468	2020-06-02 00:50:39.793468
500	1	50	31	12	2020-06-02 00:50:39.802789	2020-06-02 00:50:39.802789
501	2	73	31	1	2020-06-02 00:50:39.810932	2020-06-02 00:50:39.810932
502	5	57	32	8	2020-06-02 00:50:39.818855	2020-06-02 00:50:39.818855
503	4	48	33	13	2020-06-02 00:50:39.827666	2020-06-02 00:50:39.827666
504	1	86	33	7	2020-06-02 00:50:39.837124	2020-06-02 00:50:39.837124
505	5	81	33	8	2020-06-02 00:50:39.846923	2020-06-02 00:50:39.846923
506	1	68	33	2	2020-06-02 00:50:39.855466	2020-06-02 00:50:39.855466
507	1	35	34	15	2020-06-02 00:50:39.863416	2020-06-02 00:50:39.863416
508	5	33	35	16	2020-06-02 00:50:39.871282	2020-06-02 00:50:39.871282
509	4	6	35	14	2020-06-02 00:50:39.879664	2020-06-02 00:50:39.879664
510	1	94	36	14	2020-06-02 00:50:39.88925	2020-06-02 00:50:39.88925
511	2	60	37	13	2020-06-02 00:50:39.900471	2020-06-02 00:50:39.900471
512	2	74	37	9	2020-06-02 00:50:39.91141	2020-06-02 00:50:39.91141
513	2	78	37	12	2020-06-02 00:50:39.920312	2020-06-02 00:50:39.920312
514	5	95	37	11	2020-06-02 00:50:39.92805	2020-06-02 00:50:39.92805
515	4	19	38	9	2020-06-02 00:50:39.93607	2020-06-02 00:50:39.93607
516	5	52	38	5	2020-06-02 00:50:39.944784	2020-06-02 00:50:39.944784
517	5	70	39	3	2020-06-02 00:50:39.953704	2020-06-02 00:50:39.953704
518	2	50	40	10	2020-06-02 00:50:39.962666	2020-06-02 00:50:39.962666
519	4	82	40	11	2020-06-02 00:50:39.971125	2020-06-02 00:50:39.971125
520	1	14	41	5	2020-06-02 00:50:39.978958	2020-06-02 00:50:39.978958
521	3	85	41	11	2020-06-02 00:50:39.986782	2020-06-02 00:50:39.986782
522	5	64	41	2	2020-06-02 00:50:39.994811	2020-06-02 00:50:39.994811
523	3	62	42	9	2020-06-02 00:50:40.002577	2020-06-02 00:50:40.002577
524	3	28	42	8	2020-06-02 00:50:40.010239	2020-06-02 00:50:40.010239
525	1	56	42	2	2020-06-02 00:50:40.018228	2020-06-02 00:50:40.018228
526	3	96	42	3	2020-06-02 00:50:40.026787	2020-06-02 00:50:40.026787
527	3	27	43	7	2020-06-02 00:50:40.035283	2020-06-02 00:50:40.035283
528	3	14	43	1	2020-06-02 00:50:40.043316	2020-06-02 00:50:40.043316
529	4	2	43	12	2020-06-02 00:50:40.051545	2020-06-02 00:50:40.051545
530	3	25	43	16	2020-06-02 00:50:40.059595	2020-06-02 00:50:40.059595
531	4	47	44	9	2020-06-02 00:50:40.06765	2020-06-02 00:50:40.06765
532	3	12	44	7	2020-06-02 00:50:40.075601	2020-06-02 00:50:40.075601
533	4	72	45	16	2020-06-02 00:50:40.083326	2020-06-02 00:50:40.083326
534	1	4	45	12	2020-06-02 00:50:40.091339	2020-06-02 00:50:40.091339
535	5	62	46	4	2020-06-02 00:50:40.099164	2020-06-02 00:50:40.099164
536	1	99	46	9	2020-06-02 00:50:40.107048	2020-06-02 00:50:40.107048
537	5	20	46	10	2020-06-02 00:50:40.114895	2020-06-02 00:50:40.114895
538	5	86	46	1	2020-06-02 00:50:40.122581	2020-06-02 00:50:40.122581
539	5	12	47	2	2020-06-02 00:50:40.130667	2020-06-02 00:50:40.130667
540	2	69	48	12	2020-06-02 00:50:40.138544	2020-06-02 00:50:40.138544
541	1	87	48	10	2020-06-02 00:50:40.14622	2020-06-02 00:50:40.14622
542	1	24	48	1	2020-06-02 00:50:40.154026	2020-06-02 00:50:40.154026
543	3	68	49	14	2020-06-02 00:50:40.16191	2020-06-02 00:50:40.16191
544	4	65	49	2	2020-06-02 00:50:40.170115	2020-06-02 00:50:40.170115
545	3	60	49	16	2020-06-02 00:50:40.178299	2020-06-02 00:50:40.178299
546	4	5	50	12	2020-06-02 00:50:40.186423	2020-06-02 00:50:40.186423
547	4	51	52	11	2020-06-02 00:50:40.194345	2020-06-02 00:50:40.194345
548	2	10	52	4	2020-06-02 00:50:40.202248	2020-06-02 00:50:40.202248
549	4	70	52	16	2020-06-02 00:50:40.210357	2020-06-02 00:50:40.210357
550	3	76	52	2	2020-06-02 00:50:40.21877	2020-06-02 00:50:40.21877
551	1	82	53	2	2020-06-02 00:50:40.226862	2020-06-02 00:50:40.226862
552	4	40	53	16	2020-06-02 00:50:40.234899	2020-06-02 00:50:40.234899
553	3	56	54	4	2020-06-02 00:50:40.242881	2020-06-02 00:50:40.242881
554	3	19	54	15	2020-06-02 00:50:40.250922	2020-06-02 00:50:40.250922
555	4	21	55	6	2020-06-02 00:50:40.258576	2020-06-02 00:50:40.258576
556	5	47	55	16	2020-06-02 00:50:40.266257	2020-06-02 00:50:40.266257
557	2	3	55	2	2020-06-02 00:50:40.274856	2020-06-02 00:50:40.274856
558	4	82	56	2	2020-06-02 00:50:40.285031	2020-06-02 00:50:40.285031
559	5	73	56	9	2020-06-02 00:50:40.293577	2020-06-02 00:50:40.293577
560	2	16	57	3	2020-06-02 00:50:40.301623	2020-06-02 00:50:40.301623
561	1	31	57	12	2020-06-02 00:50:40.309587	2020-06-02 00:50:40.309587
562	5	90	58	13	2020-06-02 00:50:40.317573	2020-06-02 00:50:40.317573
563	2	86	58	14	2020-06-02 00:50:40.326092	2020-06-02 00:50:40.326092
564	2	47	58	10	2020-06-02 00:50:40.333943	2020-06-02 00:50:40.333943
565	4	44	58	16	2020-06-02 00:50:40.341991	2020-06-02 00:50:40.341991
566	2	80	59	3	2020-06-02 00:50:40.349702	2020-06-02 00:50:40.349702
567	4	30	60	12	2020-06-02 00:50:40.357684	2020-06-02 00:50:40.357684
568	4	55	60	3	2020-06-02 00:50:40.365688	2020-06-02 00:50:40.365688
569	2	69	61	12	2020-06-02 00:50:40.373973	2020-06-02 00:50:40.373973
570	4	72	61	8	2020-06-02 00:50:40.383152	2020-06-02 00:50:40.383152
571	2	78	62	12	2020-06-02 00:50:40.391283	2020-06-02 00:50:40.391283
572	3	57	62	16	2020-06-02 00:50:40.399257	2020-06-02 00:50:40.399257
573	1	72	63	15	2020-06-02 00:50:40.407104	2020-06-02 00:50:40.407104
574	4	55	63	13	2020-06-02 00:50:40.415108	2020-06-02 00:50:40.415108
575	2	39	63	12	2020-06-02 00:50:40.423313	2020-06-02 00:50:40.423313
576	5	20	64	10	2020-06-02 00:50:40.430889	2020-06-02 00:50:40.430889
577	1	68	66	15	2020-06-02 00:50:40.4386	2020-06-02 00:50:40.4386
578	2	6	66	13	2020-06-02 00:50:40.446815	2020-06-02 00:50:40.446815
579	5	55	66	8	2020-06-02 00:50:40.456799	2020-06-02 00:50:40.456799
580	1	31	66	12	2020-06-02 00:50:40.467074	2020-06-02 00:50:40.467074
581	1	87	67	15	2020-06-02 00:50:40.475586	2020-06-02 00:50:40.475586
582	3	70	67	4	2020-06-02 00:50:40.483959	2020-06-02 00:50:40.483959
583	4	59	67	9	2020-06-02 00:50:40.492635	2020-06-02 00:50:40.492635
584	1	45	68	1	2020-06-02 00:50:40.501789	2020-06-02 00:50:40.501789
585	3	29	69	14	2020-06-02 00:50:40.510536	2020-06-02 00:50:40.510536
586	5	30	69	12	2020-06-02 00:50:40.518554	2020-06-02 00:50:40.518554
587	3	91	69	3	2020-06-02 00:50:40.527061	2020-06-02 00:50:40.527061
588	5	94	70	1	2020-06-02 00:50:40.535145	2020-06-02 00:50:40.535145
589	2	15	70	14	2020-06-02 00:50:40.543063	2020-06-02 00:50:40.543063
590	1	83	71	13	2020-06-02 00:50:40.55091	2020-06-02 00:50:40.55091
591	4	49	71	4	2020-06-02 00:50:40.558734	2020-06-02 00:50:40.558734
592	4	63	71	10	2020-06-02 00:50:40.566964	2020-06-02 00:50:40.566964
593	3	70	71	9	2020-06-02 00:50:40.575296	2020-06-02 00:50:40.575296
594	4	24	72	8	2020-06-02 00:50:40.583133	2020-06-02 00:50:40.583133
595	1	62	72	5	2020-06-02 00:50:40.590915	2020-06-02 00:50:40.590915
596	4	62	73	9	2020-06-02 00:50:40.598567	2020-06-02 00:50:40.598567
597	3	4	74	7	2020-06-02 00:50:40.607133	2020-06-02 00:50:40.607133
598	5	51	74	2	2020-06-02 00:50:40.615534	2020-06-02 00:50:40.615534
599	1	72	75	16	2020-06-02 00:50:40.623939	2020-06-02 00:50:40.623939
600	3	84	75	13	2020-06-02 00:50:40.631796	2020-06-02 00:50:40.631796
601	4	4	75	11	2020-06-02 00:50:40.640352	2020-06-02 00:50:40.640352
602	5	80	76	16	2020-06-02 00:50:40.648553	2020-06-02 00:50:40.648553
603	5	45	76	13	2020-06-02 00:50:40.6566	2020-06-02 00:50:40.6566
604	2	98	76	8	2020-06-02 00:50:40.664652	2020-06-02 00:50:40.664652
605	3	33	77	10	2020-06-02 00:50:40.674009	2020-06-02 00:50:40.674009
606	4	38	77	14	2020-06-02 00:50:40.683341	2020-06-02 00:50:40.683341
607	2	7	77	8	2020-06-02 00:50:40.692115	2020-06-02 00:50:40.692115
608	5	12	78	5	2020-06-02 00:50:40.700968	2020-06-02 00:50:40.700968
609	3	42	78	10	2020-06-02 00:50:40.709988	2020-06-02 00:50:40.709988
610	5	40	79	10	2020-06-02 00:50:40.718308	2020-06-02 00:50:40.718308
611	5	68	80	14	2020-06-02 00:50:40.726443	2020-06-02 00:50:40.726443
612	4	46	80	4	2020-06-02 00:50:40.734241	2020-06-02 00:50:40.734241
613	5	79	81	3	2020-06-02 00:50:40.743086	2020-06-02 00:50:40.743086
614	1	1	81	14	2020-06-02 00:50:40.751331	2020-06-02 00:50:40.751331
615	1	100	82	8	2020-06-02 00:50:40.759735	2020-06-02 00:50:40.759735
616	1	25	83	10	2020-06-02 00:50:40.76856	2020-06-02 00:50:40.76856
617	1	18	84	12	2020-06-02 00:50:40.77707	2020-06-02 00:50:40.77707
618	4	97	85	12	2020-06-02 00:50:40.786047	2020-06-02 00:50:40.786047
619	5	26	85	8	2020-06-02 00:50:40.794433	2020-06-02 00:50:40.794433
620	4	42	85	5	2020-06-02 00:50:40.802771	2020-06-02 00:50:40.802771
621	5	45	86	4	2020-06-02 00:50:40.81102	2020-06-02 00:50:40.81102
622	4	63	86	10	2020-06-02 00:50:40.819109	2020-06-02 00:50:40.819109
623	1	68	86	9	2020-06-02 00:50:40.831858	2020-06-02 00:50:40.831858
624	5	29	86	5	2020-06-02 00:50:40.841382	2020-06-02 00:50:40.841382
625	5	21	87	13	2020-06-02 00:50:40.852057	2020-06-02 00:50:40.852057
626	4	69	87	10	2020-06-02 00:50:40.861421	2020-06-02 00:50:40.861421
627	1	55	87	2	2020-06-02 00:50:40.870343	2020-06-02 00:50:40.870343
628	3	79	87	16	2020-06-02 00:50:40.88021	2020-06-02 00:50:40.88021
629	4	77	88	11	2020-06-02 00:50:40.889959	2020-06-02 00:50:40.889959
630	2	33	88	6	2020-06-02 00:50:40.898611	2020-06-02 00:50:40.898611
631	5	61	89	2	2020-06-02 00:50:40.906595	2020-06-02 00:50:40.906595
632	5	5	90	4	2020-06-02 00:50:40.915616	2020-06-02 00:50:40.915616
633	3	61	90	7	2020-06-02 00:50:40.924045	2020-06-02 00:50:40.924045
634	4	4	90	1	2020-06-02 00:50:40.932289	2020-06-02 00:50:40.932289
635	4	16	91	10	2020-06-02 00:50:40.940599	2020-06-02 00:50:40.940599
636	5	61	91	8	2020-06-02 00:50:40.950176	2020-06-02 00:50:40.950176
637	3	59	91	2	2020-06-02 00:50:40.958261	2020-06-02 00:50:40.958261
638	2	68	91	16	2020-06-02 00:50:40.966136	2020-06-02 00:50:40.966136
639	4	31	92	7	2020-06-02 00:50:40.974272	2020-06-02 00:50:40.974272
640	4	42	93	14	2020-06-02 00:50:40.982435	2020-06-02 00:50:40.982435
641	4	73	93	10	2020-06-02 00:50:40.991862	2020-06-02 00:50:40.991862
642	3	7	93	15	2020-06-02 00:50:41.000929	2020-06-02 00:50:41.000929
643	4	9	94	14	2020-06-02 00:50:41.009043	2020-06-02 00:50:41.009043
644	5	80	96	11	2020-06-02 00:50:41.01695	2020-06-02 00:50:41.01695
645	5	27	97	10	2020-06-02 00:50:41.024574	2020-06-02 00:50:41.024574
646	2	59	97	13	2020-06-02 00:50:41.032687	2020-06-02 00:50:41.032687
647	2	16	98	16	2020-06-02 00:50:41.04166	2020-06-02 00:50:41.04166
648	4	9	98	12	2020-06-02 00:50:41.050706	2020-06-02 00:50:41.050706
649	1	55	99	4	2020-06-02 00:50:41.059194	2020-06-02 00:50:41.059194
650	2	29	99	3	2020-06-02 00:50:41.067257	2020-06-02 00:50:41.067257
651	5	47	100	1	2020-06-02 00:50:41.075246	2020-06-02 00:50:41.075246
652	1	36	100	6	2020-06-02 00:50:41.083679	2020-06-02 00:50:41.083679
653	1	46	100	16	2020-06-02 00:50:41.091699	2020-06-02 00:50:41.091699
654	3	74	101	7	2020-06-02 00:50:41.099473	2020-06-02 00:50:41.099473
655	2	81	101	13	2020-06-02 00:50:41.107604	2020-06-02 00:50:41.107604
656	4	3	101	14	2020-06-02 00:50:41.115287	2020-06-02 00:50:41.115287
657	3	94	102	5	2020-06-02 00:50:41.123302	2020-06-02 00:50:41.123302
658	4	43	102	8	2020-06-02 00:50:41.131263	2020-06-02 00:50:41.131263
659	1	64	103	16	2020-06-02 00:50:41.139288	2020-06-02 00:50:41.139288
660	1	5	103	5	2020-06-02 00:50:41.146926	2020-06-02 00:50:41.146926
661	4	84	104	2	2020-06-02 00:50:41.15469	2020-06-02 00:50:41.15469
662	3	64	104	5	2020-06-02 00:50:41.163189	2020-06-02 00:50:41.163189
663	5	23	105	2	2020-06-02 00:50:41.172001	2020-06-02 00:50:41.172001
664	1	81	105	12	2020-06-02 00:50:41.18103	2020-06-02 00:50:41.18103
665	4	83	106	16	2020-06-02 00:50:41.188926	2020-06-02 00:50:41.188926
666	5	7	106	1	2020-06-02 00:50:41.197708	2020-06-02 00:50:41.197708
667	1	51	106	15	2020-06-02 00:50:41.206685	2020-06-02 00:50:41.206685
668	1	73	106	14	2020-06-02 00:50:41.215669	2020-06-02 00:50:41.215669
669	4	8	108	4	2020-06-02 00:50:41.223602	2020-06-02 00:50:41.223602
670	3	35	109	14	2020-06-02 00:50:41.23199	2020-06-02 00:50:41.23199
671	3	93	109	15	2020-06-02 00:50:41.239752	2020-06-02 00:50:41.239752
672	4	47	109	10	2020-06-02 00:50:41.247529	2020-06-02 00:50:41.247529
673	5	74	110	16	2020-06-02 00:50:41.255578	2020-06-02 00:50:41.255578
674	4	17	111	1	2020-06-02 00:50:41.263294	2020-06-02 00:50:41.263294
675	1	81	111	2	2020-06-02 00:50:41.271697	2020-06-02 00:50:41.271697
676	5	50	111	10	2020-06-02 00:50:41.279582	2020-06-02 00:50:41.279582
677	2	37	111	16	2020-06-02 00:50:41.288901	2020-06-02 00:50:41.288901
678	1	1	113	13	2020-06-02 00:50:41.297285	2020-06-02 00:50:41.297285
679	1	31	114	11	2020-06-02 00:50:41.30555	2020-06-02 00:50:41.30555
680	5	41	114	2	2020-06-02 00:50:41.313826	2020-06-02 00:50:41.313826
681	1	45	115	7	2020-06-02 00:50:41.322135	2020-06-02 00:50:41.322135
682	4	25	115	4	2020-06-02 00:50:41.330193	2020-06-02 00:50:41.330193
683	5	50	115	13	2020-06-02 00:50:41.339141	2020-06-02 00:50:41.339141
684	1	27	116	7	2020-06-02 00:50:41.34827	2020-06-02 00:50:41.34827
685	1	60	116	15	2020-06-02 00:50:41.357293	2020-06-02 00:50:41.357293
686	1	69	117	8	2020-06-02 00:50:41.366471	2020-06-02 00:50:41.366471
687	2	53	117	10	2020-06-02 00:50:41.375715	2020-06-02 00:50:41.375715
688	3	24	117	9	2020-06-02 00:50:41.385608	2020-06-02 00:50:41.385608
689	5	39	117	1	2020-06-02 00:50:41.395178	2020-06-02 00:50:41.395178
690	1	10	118	10	2020-06-02 00:50:41.4044	2020-06-02 00:50:41.4044
691	1	35	118	7	2020-06-02 00:50:41.413474	2020-06-02 00:50:41.413474
692	4	54	118	13	2020-06-02 00:50:41.422585	2020-06-02 00:50:41.422585
693	5	77	119	13	2020-06-02 00:50:41.431989	2020-06-02 00:50:41.431989
694	5	12	120	2	2020-06-02 00:50:41.441097	2020-06-02 00:50:41.441097
695	3	41	120	11	2020-06-02 00:50:41.450138	2020-06-02 00:50:41.450138
696	5	99	120	4	2020-06-02 00:50:41.459703	2020-06-02 00:50:41.459703
697	4	48	121	10	2020-06-02 00:50:41.469188	2020-06-02 00:50:41.469188
698	1	23	122	11	2020-06-02 00:50:41.478287	2020-06-02 00:50:41.478287
699	2	29	123	16	2020-06-02 00:50:41.48775	2020-06-02 00:50:41.48775
700	5	86	123	2	2020-06-02 00:50:41.496997	2020-06-02 00:50:41.496997
701	2	18	123	7	2020-06-02 00:50:41.506024	2020-06-02 00:50:41.506024
702	1	86	124	7	2020-06-02 00:50:41.515191	2020-06-02 00:50:41.515191
703	2	74	125	11	2020-06-02 00:50:41.524125	2020-06-02 00:50:41.524125
704	1	70	126	11	2020-06-02 00:50:41.533012	2020-06-02 00:50:41.533012
705	1	68	127	4	2020-06-02 00:50:41.542091	2020-06-02 00:50:41.542091
706	4	70	128	1	2020-06-02 00:50:41.551265	2020-06-02 00:50:41.551265
707	4	60	128	12	2020-06-02 00:50:41.56027	2020-06-02 00:50:41.56027
708	3	17	129	10	2020-06-02 00:50:41.569709	2020-06-02 00:50:41.569709
709	3	1	130	11	2020-06-02 00:50:41.579054	2020-06-02 00:50:41.579054
710	4	92	130	15	2020-06-02 00:50:41.588132	2020-06-02 00:50:41.588132
711	5	37	130	5	2020-06-02 00:50:41.597166	2020-06-02 00:50:41.597166
712	4	52	131	13	2020-06-02 00:50:41.606295	2020-06-02 00:50:41.606295
713	4	39	131	8	2020-06-02 00:50:41.615462	2020-06-02 00:50:41.615462
714	5	13	131	4	2020-06-02 00:50:41.624806	2020-06-02 00:50:41.624806
715	4	6	132	11	2020-06-02 00:50:41.634764	2020-06-02 00:50:41.634764
716	5	47	132	16	2020-06-02 00:50:41.644733	2020-06-02 00:50:41.644733
717	5	11	132	12	2020-06-02 00:50:41.65585	2020-06-02 00:50:41.65585
718	5	46	133	8	2020-06-02 00:50:41.665306	2020-06-02 00:50:41.665306
719	3	62	133	3	2020-06-02 00:50:41.674712	2020-06-02 00:50:41.674712
720	4	10	133	13	2020-06-02 00:50:41.684605	2020-06-02 00:50:41.684605
721	2	73	133	10	2020-06-02 00:50:41.6942	2020-06-02 00:50:41.6942
722	4	50	134	13	2020-06-02 00:50:41.703621	2020-06-02 00:50:41.703621
723	2	51	134	11	2020-06-02 00:50:41.712691	2020-06-02 00:50:41.712691
724	2	4	134	1	2020-06-02 00:50:41.721988	2020-06-02 00:50:41.721988
725	4	7	135	10	2020-06-02 00:50:41.731763	2020-06-02 00:50:41.731763
726	4	20	135	4	2020-06-02 00:50:41.741387	2020-06-02 00:50:41.741387
727	3	30	135	8	2020-06-02 00:50:41.750622	2020-06-02 00:50:41.750622
728	1	76	136	10	2020-06-02 00:50:41.759787	2020-06-02 00:50:41.759787
729	4	62	137	12	2020-06-02 00:50:41.769287	2020-06-02 00:50:41.769287
730	2	40	137	8	2020-06-02 00:50:41.778614	2020-06-02 00:50:41.778614
731	5	50	138	14	2020-06-02 00:50:41.788271	2020-06-02 00:50:41.788271
732	2	28	138	5	2020-06-02 00:50:41.798753	2020-06-02 00:50:41.798753
733	4	88	138	8	2020-06-02 00:50:41.808589	2020-06-02 00:50:41.808589
734	1	36	139	16	2020-06-02 00:50:41.818621	2020-06-02 00:50:41.818621
735	5	55	139	4	2020-06-02 00:50:41.827796	2020-06-02 00:50:41.827796
736	1	42	140	16	2020-06-02 00:50:41.83714	2020-06-02 00:50:41.83714
737	1	44	140	14	2020-06-02 00:50:41.846326	2020-06-02 00:50:41.846326
738	3	54	140	5	2020-06-02 00:50:41.855437	2020-06-02 00:50:41.855437
739	1	24	141	14	2020-06-02 00:50:41.865172	2020-06-02 00:50:41.865172
740	5	25	141	12	2020-06-02 00:50:41.874697	2020-06-02 00:50:41.874697
741	5	98	142	11	2020-06-02 00:50:41.884621	2020-06-02 00:50:41.884621
742	3	33	143	4	2020-06-02 00:50:41.894769	2020-06-02 00:50:41.894769
743	3	70	145	15	2020-06-02 00:50:41.904212	2020-06-02 00:50:41.904212
744	2	52	145	10	2020-06-02 00:50:41.91335	2020-06-02 00:50:41.91335
745	1	14	146	14	2020-06-02 00:50:41.92246	2020-06-02 00:50:41.92246
746	3	55	146	16	2020-06-02 00:50:41.932156	2020-06-02 00:50:41.932156
747	5	10	147	6	2020-06-02 00:50:41.943701	2020-06-02 00:50:41.943701
748	2	93	148	12	2020-06-02 00:50:41.95359	2020-06-02 00:50:41.95359
749	4	15	148	15	2020-06-02 00:50:41.963403	2020-06-02 00:50:41.963403
750	1	4	149	4	2020-06-02 00:50:41.97376	2020-06-02 00:50:41.97376
751	3	34	149	5	2020-06-02 00:50:41.983333	2020-06-02 00:50:41.983333
752	1	56	150	5	2020-06-02 00:50:41.992808	2020-06-02 00:50:41.992808
753	4	1	150	2	2020-06-02 00:50:42.002542	2020-06-02 00:50:42.002542
754	2	23	151	14	2020-06-02 00:50:42.012019	2020-06-02 00:50:42.012019
755	2	53	151	7	2020-06-02 00:50:42.025858	2020-06-02 00:50:42.025858
756	4	49	152	5	2020-06-02 00:50:42.036074	2020-06-02 00:50:42.036074
757	3	62	153	15	2020-06-02 00:50:42.045751	2020-06-02 00:50:42.045751
758	2	38	153	2	2020-06-02 00:50:42.056301	2020-06-02 00:50:42.056301
759	2	56	154	14	2020-06-02 00:50:42.065699	2020-06-02 00:50:42.065699
760	4	46	154	11	2020-06-02 00:50:42.074978	2020-06-02 00:50:42.074978
761	4	94	154	16	2020-06-02 00:50:42.084152	2020-06-02 00:50:42.084152
762	3	33	155	10	2020-06-02 00:50:42.0936	2020-06-02 00:50:42.0936
763	5	11	155	4	2020-06-02 00:50:42.102808	2020-06-02 00:50:42.102808
764	4	44	155	8	2020-06-02 00:50:42.112094	2020-06-02 00:50:42.112094
765	2	11	156	5	2020-06-02 00:50:42.121128	2020-06-02 00:50:42.121128
766	3	85	156	9	2020-06-02 00:50:42.12998	2020-06-02 00:50:42.12998
767	2	87	156	6	2020-06-02 00:50:42.139034	2020-06-02 00:50:42.139034
768	5	23	157	12	2020-06-02 00:50:42.147973	2020-06-02 00:50:42.147973
769	5	24	158	1	2020-06-02 00:50:42.156772	2020-06-02 00:50:42.156772
770	2	21	158	15	2020-06-02 00:50:42.16612	2020-06-02 00:50:42.16612
771	1	51	159	3	2020-06-02 00:50:42.175152	2020-06-02 00:50:42.175152
772	3	35	160	5	2020-06-02 00:50:42.184138	2020-06-02 00:50:42.184138
773	2	23	160	14	2020-06-02 00:50:42.193313	2020-06-02 00:50:42.193313
774	4	58	161	12	2020-06-02 00:50:42.20243	2020-06-02 00:50:42.20243
775	1	69	161	6	2020-06-02 00:50:42.211251	2020-06-02 00:50:42.211251
776	5	53	161	11	2020-06-02 00:50:42.221003	2020-06-02 00:50:42.221003
777	1	59	162	7	2020-06-02 00:50:42.230136	2020-06-02 00:50:42.230136
778	2	17	162	1	2020-06-02 00:50:42.239558	2020-06-02 00:50:42.239558
779	1	52	163	10	2020-06-02 00:50:42.248585	2020-06-02 00:50:42.248585
780	4	76	164	11	2020-06-02 00:50:42.257412	2020-06-02 00:50:42.257412
781	1	77	164	16	2020-06-02 00:50:42.266195	2020-06-02 00:50:42.266195
782	2	47	165	13	2020-06-02 00:50:42.27577	2020-06-02 00:50:42.27577
783	2	79	165	10	2020-06-02 00:50:42.285176	2020-06-02 00:50:42.285176
784	4	52	166	15	2020-06-02 00:50:42.294892	2020-06-02 00:50:42.294892
785	2	42	166	16	2020-06-02 00:50:42.30376	2020-06-02 00:50:42.30376
786	2	90	166	13	2020-06-02 00:50:42.312569	2020-06-02 00:50:42.312569
787	3	17	167	16	2020-06-02 00:50:42.321669	2020-06-02 00:50:42.321669
788	4	81	168	4	2020-06-02 00:50:42.330957	2020-06-02 00:50:42.330957
789	4	14	168	2	2020-06-02 00:50:42.340033	2020-06-02 00:50:42.340033
790	5	61	168	10	2020-06-02 00:50:42.34897	2020-06-02 00:50:42.34897
791	4	79	169	9	2020-06-02 00:50:42.35804	2020-06-02 00:50:42.35804
792	4	45	169	11	2020-06-02 00:50:42.367413	2020-06-02 00:50:42.367413
793	5	83	169	1	2020-06-02 00:50:42.376452	2020-06-02 00:50:42.376452
794	3	99	169	6	2020-06-02 00:50:42.386648	2020-06-02 00:50:42.386648
795	4	72	170	4	2020-06-02 00:50:42.395782	2020-06-02 00:50:42.395782
796	5	39	170	12	2020-06-02 00:50:42.404769	2020-06-02 00:50:42.404769
797	4	24	171	8	2020-06-02 00:50:42.414123	2020-06-02 00:50:42.414123
798	4	68	171	6	2020-06-02 00:50:42.423464	2020-06-02 00:50:42.423464
799	1	62	171	13	2020-06-02 00:50:42.432783	2020-06-02 00:50:42.432783
800	4	92	172	16	2020-06-02 00:50:42.442119	2020-06-02 00:50:42.442119
801	3	68	172	11	2020-06-02 00:50:42.451202	2020-06-02 00:50:42.451202
802	2	15	173	11	2020-06-02 00:50:42.460477	2020-06-02 00:50:42.460477
803	2	5	174	4	2020-06-02 00:50:42.47004	2020-06-02 00:50:42.47004
804	2	95	175	9	2020-06-02 00:50:42.479299	2020-06-02 00:50:42.479299
805	3	97	175	2	2020-06-02 00:50:42.489134	2020-06-02 00:50:42.489134
806	3	63	176	1	2020-06-02 00:50:42.498206	2020-06-02 00:50:42.498206
807	4	32	176	12	2020-06-02 00:50:42.507461	2020-06-02 00:50:42.507461
808	5	59	176	14	2020-06-02 00:50:42.517197	2020-06-02 00:50:42.517197
809	4	20	177	12	2020-06-02 00:50:42.527605	2020-06-02 00:50:42.527605
810	2	20	178	9	2020-06-02 00:50:42.537176	2020-06-02 00:50:42.537176
811	2	84	178	1	2020-06-02 00:50:42.546669	2020-06-02 00:50:42.546669
812	2	41	178	2	2020-06-02 00:50:42.555333	2020-06-02 00:50:42.555333
813	3	7	179	15	2020-06-02 00:50:42.564787	2020-06-02 00:50:42.564787
814	5	2	180	6	2020-06-02 00:50:42.574584	2020-06-02 00:50:42.574584
815	4	86	180	13	2020-06-02 00:50:42.58362	2020-06-02 00:50:42.58362
816	3	10	180	2	2020-06-02 00:50:42.592593	2020-06-02 00:50:42.592593
817	3	68	180	16	2020-06-02 00:50:42.60154	2020-06-02 00:50:42.60154
818	1	81	181	1	2020-06-02 00:50:42.610789	2020-06-02 00:50:42.610789
819	5	81	181	10	2020-06-02 00:50:42.620329	2020-06-02 00:50:42.620329
820	4	50	181	15	2020-06-02 00:50:42.629332	2020-06-02 00:50:42.629332
821	5	33	181	8	2020-06-02 00:50:42.638103	2020-06-02 00:50:42.638103
822	3	69	182	9	2020-06-02 00:50:42.64745	2020-06-02 00:50:42.64745
823	3	50	182	4	2020-06-02 00:50:42.656816	2020-06-02 00:50:42.656816
824	5	44	182	12	2020-06-02 00:50:42.666127	2020-06-02 00:50:42.666127
825	1	68	183	5	2020-06-02 00:50:42.675386	2020-06-02 00:50:42.675386
826	5	2	184	16	2020-06-02 00:50:42.685023	2020-06-02 00:50:42.685023
827	4	69	184	10	2020-06-02 00:50:42.694175	2020-06-02 00:50:42.694175
828	5	96	184	15	2020-06-02 00:50:42.705243	2020-06-02 00:50:42.705243
829	2	86	185	15	2020-06-02 00:50:42.714692	2020-06-02 00:50:42.714692
830	1	16	185	11	2020-06-02 00:50:42.723768	2020-06-02 00:50:42.723768
831	5	86	185	4	2020-06-02 00:50:42.733294	2020-06-02 00:50:42.733294
832	4	51	186	9	2020-06-02 00:50:42.74239	2020-06-02 00:50:42.74239
833	2	83	186	11	2020-06-02 00:50:42.751106	2020-06-02 00:50:42.751106
834	3	2	187	14	2020-06-02 00:50:42.761736	2020-06-02 00:50:42.761736
835	1	13	187	12	2020-06-02 00:50:42.772247	2020-06-02 00:50:42.772247
836	4	53	187	5	2020-06-02 00:50:42.783652	2020-06-02 00:50:42.783652
837	1	44	187	3	2020-06-02 00:50:42.796077	2020-06-02 00:50:42.796077
838	4	99	188	1	2020-06-02 00:50:42.806827	2020-06-02 00:50:42.806827
839	5	66	189	16	2020-06-02 00:50:42.818661	2020-06-02 00:50:42.818661
840	5	56	189	2	2020-06-02 00:50:42.829787	2020-06-02 00:50:42.829787
841	4	16	189	3	2020-06-02 00:50:42.840398	2020-06-02 00:50:42.840398
842	3	74	189	8	2020-06-02 00:50:42.850457	2020-06-02 00:50:42.850457
843	3	81	190	2	2020-06-02 00:50:42.860642	2020-06-02 00:50:42.860642
844	3	29	190	12	2020-06-02 00:50:42.870162	2020-06-02 00:50:42.870162
845	1	30	190	4	2020-06-02 00:50:42.879894	2020-06-02 00:50:42.879894
846	2	99	191	15	2020-06-02 00:50:42.890184	2020-06-02 00:50:42.890184
847	4	42	192	11	2020-06-02 00:50:42.900026	2020-06-02 00:50:42.900026
848	2	51	192	7	2020-06-02 00:50:42.909446	2020-06-02 00:50:42.909446
849	5	95	193	11	2020-06-02 00:50:42.918767	2020-06-02 00:50:42.918767
850	5	98	193	9	2020-06-02 00:50:42.92799	2020-06-02 00:50:42.92799
851	4	50	194	15	2020-06-02 00:50:42.937053	2020-06-02 00:50:42.937053
852	1	30	194	7	2020-06-02 00:50:42.946414	2020-06-02 00:50:42.946414
853	2	94	196	14	2020-06-02 00:50:42.955578	2020-06-02 00:50:42.955578
854	2	63	196	13	2020-06-02 00:50:42.964334	2020-06-02 00:50:42.964334
855	3	27	197	8	2020-06-02 00:50:42.973432	2020-06-02 00:50:42.973432
856	2	4	197	14	2020-06-02 00:50:42.982613	2020-06-02 00:50:42.982613
857	1	94	197	3	2020-06-02 00:50:42.991559	2020-06-02 00:50:42.991559
858	3	76	198	16	2020-06-02 00:50:43.000853	2020-06-02 00:50:43.000853
859	5	50	198	5	2020-06-02 00:50:43.010173	2020-06-02 00:50:43.010173
860	2	16	198	12	2020-06-02 00:50:43.019121	2020-06-02 00:50:43.019121
861	2	6	198	9	2020-06-02 00:50:43.028048	2020-06-02 00:50:43.028048
862	1	98	199	11	2020-06-02 00:50:43.037234	2020-06-02 00:50:43.037234
863	5	75	199	16	2020-06-02 00:50:43.046723	2020-06-02 00:50:43.046723
864	5	52	200	10	2020-06-02 00:50:43.055885	2020-06-02 00:50:43.055885
865	3	14	200	11	2020-06-02 00:50:43.065311	2020-06-02 00:50:43.065311
866	3	10	200	12	2020-06-02 00:50:43.074539	2020-06-02 00:50:43.074539
867	5	73	200	15	2020-06-02 00:50:43.083474	2020-06-02 00:50:43.083474
868	4	18	201	2	2020-06-02 00:50:43.092761	2020-06-02 00:50:43.092761
869	3	72	202	10	2020-06-02 00:50:43.102246	2020-06-02 00:50:43.102246
870	4	9	203	3	2020-06-02 00:50:43.111841	2020-06-02 00:50:43.111841
871	3	5	203	14	2020-06-02 00:50:43.121106	2020-06-02 00:50:43.121106
872	3	81	203	16	2020-06-02 00:50:43.130249	2020-06-02 00:50:43.130249
873	4	54	204	5	2020-06-02 00:50:43.140234	2020-06-02 00:50:43.140234
874	5	32	204	10	2020-06-02 00:50:43.149723	2020-06-02 00:50:43.149723
875	1	56	204	7	2020-06-02 00:50:43.15877	2020-06-02 00:50:43.15877
876	3	46	205	10	2020-06-02 00:50:43.168318	2020-06-02 00:50:43.168318
877	2	35	205	14	2020-06-02 00:50:43.17766	2020-06-02 00:50:43.17766
878	1	40	206	8	2020-06-02 00:50:43.191438	2020-06-02 00:50:43.191438
879	4	22	206	10	2020-06-02 00:50:43.202805	2020-06-02 00:50:43.202805
880	2	70	206	9	2020-06-02 00:50:43.212752	2020-06-02 00:50:43.212752
881	2	45	206	11	2020-06-02 00:50:43.222269	2020-06-02 00:50:43.222269
882	4	22	207	13	2020-06-02 00:50:43.231427	2020-06-02 00:50:43.231427
883	2	17	207	14	2020-06-02 00:50:43.240712	2020-06-02 00:50:43.240712
884	2	99	208	2	2020-06-02 00:50:43.24984	2020-06-02 00:50:43.24984
885	5	77	208	4	2020-06-02 00:50:43.259014	2020-06-02 00:50:43.259014
886	3	58	208	12	2020-06-02 00:50:43.268425	2020-06-02 00:50:43.268425
887	2	23	209	3	2020-06-02 00:50:43.277698	2020-06-02 00:50:43.277698
888	4	28	209	2	2020-06-02 00:50:43.286842	2020-06-02 00:50:43.286842
889	2	18	210	10	2020-06-02 00:50:43.295955	2020-06-02 00:50:43.295955
890	3	8	210	16	2020-06-02 00:50:43.305151	2020-06-02 00:50:43.305151
891	2	9	210	9	2020-06-02 00:50:43.314713	2020-06-02 00:50:43.314713
892	1	26	211	7	2020-06-02 00:50:43.323774	2020-06-02 00:50:43.323774
893	5	98	212	5	2020-06-02 00:50:43.332716	2020-06-02 00:50:43.332716
894	4	33	213	11	2020-06-02 00:50:43.341932	2020-06-02 00:50:43.341932
895	2	5	214	15	2020-06-02 00:50:43.351099	2020-06-02 00:50:43.351099
896	4	78	214	16	2020-06-02 00:50:43.360007	2020-06-02 00:50:43.360007
897	4	88	215	4	2020-06-02 00:50:43.368983	2020-06-02 00:50:43.368983
898	3	48	215	7	2020-06-02 00:50:43.377989	2020-06-02 00:50:43.377989
899	5	36	216	15	2020-06-02 00:50:43.38792	2020-06-02 00:50:43.38792
900	2	90	216	16	2020-06-02 00:50:43.39821	2020-06-02 00:50:43.39821
901	2	7	216	5	2020-06-02 00:50:43.407426	2020-06-02 00:50:43.407426
902	4	19	217	12	2020-06-02 00:50:43.416683	2020-06-02 00:50:43.416683
903	3	6	218	9	2020-06-02 00:50:43.425767	2020-06-02 00:50:43.425767
904	4	23	218	8	2020-06-02 00:50:43.435133	2020-06-02 00:50:43.435133
905	4	95	218	7	2020-06-02 00:50:43.444534	2020-06-02 00:50:43.444534
906	5	56	218	2	2020-06-02 00:50:43.454377	2020-06-02 00:50:43.454377
907	4	19	219	5	2020-06-02 00:50:43.465548	2020-06-02 00:50:43.465548
908	5	87	219	11	2020-06-02 00:50:43.475328	2020-06-02 00:50:43.475328
909	4	5	220	7	2020-06-02 00:50:43.484596	2020-06-02 00:50:43.484596
910	2	99	221	9	2020-06-02 00:50:43.493555	2020-06-02 00:50:43.493555
911	5	86	222	10	2020-06-02 00:50:43.502539	2020-06-02 00:50:43.502539
912	5	11	223	4	2020-06-02 00:50:43.513392	2020-06-02 00:50:43.513392
913	1	85	223	15	2020-06-02 00:50:43.523141	2020-06-02 00:50:43.523141
914	1	55	223	14	2020-06-02 00:50:43.53227	2020-06-02 00:50:43.53227
915	5	48	224	5	2020-06-02 00:50:43.541794	2020-06-02 00:50:43.541794
916	3	79	224	7	2020-06-02 00:50:43.551557	2020-06-02 00:50:43.551557
917	2	16	224	15	2020-06-02 00:50:43.562109	2020-06-02 00:50:43.562109
918	5	69	225	3	2020-06-02 00:50:43.572481	2020-06-02 00:50:43.572481
919	2	8	225	12	2020-06-02 00:50:43.583091	2020-06-02 00:50:43.583091
920	1	47	225	7	2020-06-02 00:50:43.59314	2020-06-02 00:50:43.59314
921	5	63	226	2	2020-06-02 00:50:43.602327	2020-06-02 00:50:43.602327
922	4	100	226	5	2020-06-02 00:50:43.61156	2020-06-02 00:50:43.61156
923	3	55	226	12	2020-06-02 00:50:43.620197	2020-06-02 00:50:43.620197
924	3	43	226	9	2020-06-02 00:50:43.629133	2020-06-02 00:50:43.629133
925	3	91	227	6	2020-06-02 00:50:43.638602	2020-06-02 00:50:43.638602
926	1	10	227	3	2020-06-02 00:50:43.648015	2020-06-02 00:50:43.648015
927	5	44	227	4	2020-06-02 00:50:43.656951	2020-06-02 00:50:43.656951
928	2	86	228	10	2020-06-02 00:50:43.666019	2020-06-02 00:50:43.666019
929	4	94	228	5	2020-06-02 00:50:43.676169	2020-06-02 00:50:43.676169
930	3	18	229	11	2020-06-02 00:50:43.685888	2020-06-02 00:50:43.685888
931	1	10	229	3	2020-06-02 00:50:43.694854	2020-06-02 00:50:43.694854
932	5	71	229	10	2020-06-02 00:50:43.704853	2020-06-02 00:50:43.704853
933	5	46	229	16	2020-06-02 00:50:43.714634	2020-06-02 00:50:43.714634
934	1	50	230	12	2020-06-02 00:50:43.726175	2020-06-02 00:50:43.726175
935	1	16	230	13	2020-06-02 00:50:43.737225	2020-06-02 00:50:43.737225
936	4	33	230	11	2020-06-02 00:50:43.747029	2020-06-02 00:50:43.747029
937	3	16	231	9	2020-06-02 00:50:43.756799	2020-06-02 00:50:43.756799
938	1	57	231	10	2020-06-02 00:50:43.765967	2020-06-02 00:50:43.765967
939	1	66	232	9	2020-06-02 00:50:43.775476	2020-06-02 00:50:43.775476
940	5	92	232	15	2020-06-02 00:50:43.784782	2020-06-02 00:50:43.784782
941	4	86	232	10	2020-06-02 00:50:43.794397	2020-06-02 00:50:43.794397
942	3	74	233	16	2020-06-02 00:50:43.803601	2020-06-02 00:50:43.803601
943	1	48	233	13	2020-06-02 00:50:43.812578	2020-06-02 00:50:43.812578
944	1	87	234	1	2020-06-02 00:50:43.821795	2020-06-02 00:50:43.821795
945	2	52	234	4	2020-06-02 00:50:43.83105	2020-06-02 00:50:43.83105
946	3	7	234	6	2020-06-02 00:50:43.840182	2020-06-02 00:50:43.840182
947	4	18	235	9	2020-06-02 00:50:43.849449	2020-06-02 00:50:43.849449
948	4	39	235	5	2020-06-02 00:50:43.858756	2020-06-02 00:50:43.858756
949	1	10	236	3	2020-06-02 00:50:43.867603	2020-06-02 00:50:43.867603
950	5	37	236	11	2020-06-02 00:50:43.876268	2020-06-02 00:50:43.876268
951	3	29	236	7	2020-06-02 00:50:43.885799	2020-06-02 00:50:43.885799
952	2	28	237	14	2020-06-02 00:50:43.895753	2020-06-02 00:50:43.895753
953	5	28	237	13	2020-06-02 00:50:43.905678	2020-06-02 00:50:43.905678
954	2	74	237	15	2020-06-02 00:50:43.914611	2020-06-02 00:50:43.914611
955	1	30	238	12	2020-06-02 00:50:43.923593	2020-06-02 00:50:43.923593
956	1	14	238	5	2020-06-02 00:50:43.932438	2020-06-02 00:50:43.932438
957	2	94	238	8	2020-06-02 00:50:43.941215	2020-06-02 00:50:43.941215
958	2	44	238	16	2020-06-02 00:50:43.950209	2020-06-02 00:50:43.950209
959	5	90	239	7	2020-06-02 00:50:43.959259	2020-06-02 00:50:43.959259
960	3	38	239	5	2020-06-02 00:50:43.968219	2020-06-02 00:50:43.968219
961	1	1	239	11	2020-06-02 00:50:43.977178	2020-06-02 00:50:43.977178
962	5	13	240	8	2020-06-02 00:50:43.986176	2020-06-02 00:50:43.986176
963	5	35	240	9	2020-06-02 00:50:43.994718	2020-06-02 00:50:43.994718
964	2	6	241	11	2020-06-02 00:50:44.003263	2020-06-02 00:50:44.003263
965	3	49	241	7	2020-06-02 00:50:44.012675	2020-06-02 00:50:44.012675
966	1	39	241	16	2020-06-02 00:50:44.021359	2020-06-02 00:50:44.021359
967	1	77	241	8	2020-06-02 00:50:44.030152	2020-06-02 00:50:44.030152
968	1	26	242	12	2020-06-02 00:50:44.039089	2020-06-02 00:50:44.039089
969	5	84	243	14	2020-06-02 00:50:44.048172	2020-06-02 00:50:44.048172
970	2	30	243	9	2020-06-02 00:50:44.05697	2020-06-02 00:50:44.05697
971	1	35	244	9	2020-06-02 00:50:44.065993	2020-06-02 00:50:44.065993
972	4	21	245	15	2020-06-02 00:50:44.074979	2020-06-02 00:50:44.074979
973	4	3	245	13	2020-06-02 00:50:44.083726	2020-06-02 00:50:44.083726
974	3	44	245	2	2020-06-02 00:50:44.092595	2020-06-02 00:50:44.092595
975	3	79	246	1	2020-06-02 00:50:44.101397	2020-06-02 00:50:44.101397
976	1	96	246	7	2020-06-02 00:50:44.110175	2020-06-02 00:50:44.110175
977	4	42	246	16	2020-06-02 00:50:44.11958	2020-06-02 00:50:44.11958
978	4	11	247	4	2020-06-02 00:50:44.128543	2020-06-02 00:50:44.128543
979	5	58	248	15	2020-06-02 00:50:44.137252	2020-06-02 00:50:44.137252
980	4	78	248	9	2020-06-02 00:50:44.145966	2020-06-02 00:50:44.145966
981	4	72	248	6	2020-06-02 00:50:44.154608	2020-06-02 00:50:44.154608
982	2	100	249	6	2020-06-02 00:50:44.163382	2020-06-02 00:50:44.163382
983	2	26	249	2	2020-06-02 00:50:44.172717	2020-06-02 00:50:44.172717
984	2	41	250	16	2020-06-02 00:50:44.181565	2020-06-02 00:50:44.181565
985	1	74	251	4	2020-06-02 00:50:44.190778	2020-06-02 00:50:44.190778
986	5	5	251	1	2020-06-02 00:50:44.200143	2020-06-02 00:50:44.200143
987	1	63	252	13	2020-06-02 00:50:44.20896	2020-06-02 00:50:44.20896
988	1	98	252	16	2020-06-02 00:50:44.217676	2020-06-02 00:50:44.217676
989	3	72	252	4	2020-06-02 00:50:44.227104	2020-06-02 00:50:44.227104
990	3	64	252	6	2020-06-02 00:50:44.23638	2020-06-02 00:50:44.23638
991	4	92	253	4	2020-06-02 00:50:44.245759	2020-06-02 00:50:44.245759
992	3	54	253	6	2020-06-02 00:50:44.255168	2020-06-02 00:50:44.255168
993	3	61	253	8	2020-06-02 00:50:44.269217	2020-06-02 00:50:44.269217
994	3	80	254	2	2020-06-02 00:50:44.279973	2020-06-02 00:50:44.279973
995	1	29	255	14	2020-06-02 00:50:44.290867	2020-06-02 00:50:44.290867
996	5	58	255	4	2020-06-02 00:50:44.301205	2020-06-02 00:50:44.301205
997	2	17	255	10	2020-06-02 00:50:44.309559	2020-06-02 00:50:44.309559
998	5	1	256	14	2020-06-02 00:50:44.318108	2020-06-02 00:50:44.318108
999	2	65	256	6	2020-06-02 00:50:44.327326	2020-06-02 00:50:44.327326
1000	1	56	256	13	2020-06-02 00:50:44.336601	2020-06-02 00:50:44.336601
1001	3	74	257	15	2020-06-02 00:50:44.345612	2020-06-02 00:50:44.345612
1002	1	24	258	6	2020-06-02 00:50:44.354611	2020-06-02 00:50:44.354611
1003	1	97	258	16	2020-06-02 00:50:44.363771	2020-06-02 00:50:44.363771
1004	2	70	258	14	2020-06-02 00:50:44.372791	2020-06-02 00:50:44.372791
1005	4	40	259	14	2020-06-02 00:50:44.382306	2020-06-02 00:50:44.382306
1006	4	98	259	3	2020-06-02 00:50:44.392167	2020-06-02 00:50:44.392167
1007	4	18	260	16	2020-06-02 00:50:44.401281	2020-06-02 00:50:44.401281
1008	5	88	261	14	2020-06-02 00:50:44.410047	2020-06-02 00:50:44.410047
1009	1	61	262	2	2020-06-02 00:50:44.418815	2020-06-02 00:50:44.418815
1010	2	28	262	14	2020-06-02 00:50:44.427573	2020-06-02 00:50:44.427573
1011	4	23	262	3	2020-06-02 00:50:44.436398	2020-06-02 00:50:44.436398
1012	5	47	263	2	2020-06-02 00:50:44.445477	2020-06-02 00:50:44.445477
1013	4	60	263	12	2020-06-02 00:50:44.454384	2020-06-02 00:50:44.454384
1014	3	56	263	3	2020-06-02 00:50:44.464145	2020-06-02 00:50:44.464145
1015	2	95	264	12	2020-06-02 00:50:44.473104	2020-06-02 00:50:44.473104
1016	3	95	265	16	2020-06-02 00:50:44.482048	2020-06-02 00:50:44.482048
1017	3	22	266	2	2020-06-02 00:50:44.491209	2020-06-02 00:50:44.491209
1018	4	30	266	4	2020-06-02 00:50:44.500584	2020-06-02 00:50:44.500584
1019	2	79	267	2	2020-06-02 00:50:44.509415	2020-06-02 00:50:44.509415
1020	4	84	267	15	2020-06-02 00:50:44.520013	2020-06-02 00:50:44.520013
1021	4	84	268	4	2020-06-02 00:50:44.529195	2020-06-02 00:50:44.529195
1022	4	68	268	2	2020-06-02 00:50:44.53811	2020-06-02 00:50:44.53811
1023	1	72	268	8	2020-06-02 00:50:44.546995	2020-06-02 00:50:44.546995
1024	5	58	269	8	2020-06-02 00:50:44.556128	2020-06-02 00:50:44.556128
1025	2	7	269	5	2020-06-02 00:50:44.564584	2020-06-02 00:50:44.564584
1026	2	53	270	4	2020-06-02 00:50:44.573268	2020-06-02 00:50:44.573268
1027	4	29	270	12	2020-06-02 00:50:44.582474	2020-06-02 00:50:44.582474
1028	4	77	270	1	2020-06-02 00:50:44.59145	2020-06-02 00:50:44.59145
1029	4	36	271	10	2020-06-02 00:50:44.600773	2020-06-02 00:50:44.600773
1030	1	48	272	14	2020-06-02 00:50:44.609661	2020-06-02 00:50:44.609661
1031	3	95	272	9	2020-06-02 00:50:44.619101	2020-06-02 00:50:44.619101
1032	1	10	272	8	2020-06-02 00:50:44.62843	2020-06-02 00:50:44.62843
1033	5	76	273	5	2020-06-02 00:50:44.637581	2020-06-02 00:50:44.637581
1034	4	94	273	15	2020-06-02 00:50:44.646369	2020-06-02 00:50:44.646369
1035	1	51	273	7	2020-06-02 00:50:44.654719	2020-06-02 00:50:44.654719
1036	2	24	274	11	2020-06-02 00:50:44.663616	2020-06-02 00:50:44.663616
1037	1	19	274	3	2020-06-02 00:50:44.672562	2020-06-02 00:50:44.672562
1038	4	29	275	8	2020-06-02 00:50:44.681435	2020-06-02 00:50:44.681435
1039	5	91	275	2	2020-06-02 00:50:44.690624	2020-06-02 00:50:44.690624
1040	2	33	275	11	2020-06-02 00:50:44.699461	2020-06-02 00:50:44.699461
1041	1	74	276	11	2020-06-02 00:50:44.708086	2020-06-02 00:50:44.708086
1042	4	45	276	1	2020-06-02 00:50:44.717386	2020-06-02 00:50:44.717386
1043	3	35	276	13	2020-06-02 00:50:44.726157	2020-06-02 00:50:44.726157
1044	4	33	276	7	2020-06-02 00:50:44.735648	2020-06-02 00:50:44.735648
1045	5	52	277	10	2020-06-02 00:50:44.746449	2020-06-02 00:50:44.746449
1046	5	53	277	16	2020-06-02 00:50:44.757185	2020-06-02 00:50:44.757185
1047	4	91	278	14	2020-06-02 00:50:44.773412	2020-06-02 00:50:44.773412
1048	5	41	278	10	2020-06-02 00:50:44.786608	2020-06-02 00:50:44.786608
1049	3	68	279	11	2020-06-02 00:50:44.796453	2020-06-02 00:50:44.796453
1050	1	77	279	4	2020-06-02 00:50:44.805831	2020-06-02 00:50:44.805831
1051	4	29	279	7	2020-06-02 00:50:44.814397	2020-06-02 00:50:44.814397
1052	5	57	279	1	2020-06-02 00:50:44.82369	2020-06-02 00:50:44.82369
1053	5	100	280	3	2020-06-02 00:50:44.832668	2020-06-02 00:50:44.832668
1054	4	71	281	3	2020-06-02 00:50:44.842082	2020-06-02 00:50:44.842082
1055	3	1	282	6	2020-06-02 00:50:44.851266	2020-06-02 00:50:44.851266
1056	5	17	282	5	2020-06-02 00:50:44.86127	2020-06-02 00:50:44.86127
1057	5	3	282	16	2020-06-02 00:50:44.870614	2020-06-02 00:50:44.870614
1058	4	92	283	5	2020-06-02 00:50:44.880204	2020-06-02 00:50:44.880204
1059	1	52	283	3	2020-06-02 00:50:44.890024	2020-06-02 00:50:44.890024
1060	4	43	283	9	2020-06-02 00:50:44.899439	2020-06-02 00:50:44.899439
1061	1	41	284	2	2020-06-02 00:50:44.909194	2020-06-02 00:50:44.909194
1062	3	98	284	7	2020-06-02 00:50:44.918667	2020-06-02 00:50:44.918667
1063	5	64	284	11	2020-06-02 00:50:44.927933	2020-06-02 00:50:44.927933
1064	3	52	284	4	2020-06-02 00:50:44.936759	2020-06-02 00:50:44.936759
1065	3	43	285	2	2020-06-02 00:50:44.945744	2020-06-02 00:50:44.945744
1066	3	47	285	9	2020-06-02 00:50:44.954717	2020-06-02 00:50:44.954717
1067	5	32	285	1	2020-06-02 00:50:44.963402	2020-06-02 00:50:44.963402
1068	1	62	286	9	2020-06-02 00:50:44.972292	2020-06-02 00:50:44.972292
1069	1	55	286	3	2020-06-02 00:50:44.981205	2020-06-02 00:50:44.981205
1070	1	91	286	2	2020-06-02 00:50:44.990294	2020-06-02 00:50:44.990294
1071	5	58	287	10	2020-06-02 00:50:44.99937	2020-06-02 00:50:44.99937
1072	2	72	287	7	2020-06-02 00:50:45.008425	2020-06-02 00:50:45.008425
1073	3	17	288	7	2020-06-02 00:50:45.017792	2020-06-02 00:50:45.017792
1074	4	77	288	6	2020-06-02 00:50:45.026988	2020-06-02 00:50:45.026988
1075	4	96	288	15	2020-06-02 00:50:45.036084	2020-06-02 00:50:45.036084
1076	1	57	288	11	2020-06-02 00:50:45.045114	2020-06-02 00:50:45.045114
1077	2	44	289	4	2020-06-02 00:50:45.054579	2020-06-02 00:50:45.054579
1078	4	65	289	16	2020-06-02 00:50:45.063268	2020-06-02 00:50:45.063268
1079	4	82	289	11	2020-06-02 00:50:45.072036	2020-06-02 00:50:45.072036
1080	1	19	289	10	2020-06-02 00:50:45.081034	2020-06-02 00:50:45.081034
1081	1	84	290	5	2020-06-02 00:50:45.08972	2020-06-02 00:50:45.08972
1082	1	90	291	11	2020-06-02 00:50:45.099101	2020-06-02 00:50:45.099101
1083	3	14	292	8	2020-06-02 00:50:45.108323	2020-06-02 00:50:45.108323
1084	3	95	293	2	2020-06-02 00:50:45.11747	2020-06-02 00:50:45.11747
1085	5	58	293	9	2020-06-02 00:50:45.126298	2020-06-02 00:50:45.126298
1086	4	44	294	13	2020-06-02 00:50:45.135098	2020-06-02 00:50:45.135098
1087	5	91	294	5	2020-06-02 00:50:45.14431	2020-06-02 00:50:45.14431
1088	1	82	295	13	2020-06-02 00:50:45.153186	2020-06-02 00:50:45.153186
1089	4	2	295	10	2020-06-02 00:50:45.163322	2020-06-02 00:50:45.163322
1090	3	35	296	9	2020-06-02 00:50:45.173212	2020-06-02 00:50:45.173212
1091	2	75	297	9	2020-06-02 00:50:45.182785	2020-06-02 00:50:45.182785
1092	1	33	297	6	2020-06-02 00:50:45.192216	2020-06-02 00:50:45.192216
1093	5	29	298	3	2020-06-02 00:50:45.20127	2020-06-02 00:50:45.20127
1094	1	57	299	14	2020-06-02 00:50:45.210566	2020-06-02 00:50:45.210566
1095	3	25	300	10	2020-06-02 00:50:45.219742	2020-06-02 00:50:45.219742
1096	5	66	300	13	2020-06-02 00:50:45.228721	2020-06-02 00:50:45.228721
1097	4	10	300	1	2020-06-02 00:50:45.238199	2020-06-02 00:50:45.238199
1098	2	55	300	14	2020-06-02 00:50:45.247617	2020-06-02 00:50:45.247617
1099	2	43	301	2	2020-06-02 00:50:45.256884	2020-06-02 00:50:45.256884
1100	4	6	301	12	2020-06-02 00:50:45.266357	2020-06-02 00:50:45.266357
1101	4	64	301	10	2020-06-02 00:50:45.281326	2020-06-02 00:50:45.281326
1102	3	95	302	6	2020-06-02 00:50:45.291622	2020-06-02 00:50:45.291622
1103	5	45	302	14	2020-06-02 00:50:45.301619	2020-06-02 00:50:45.301619
1104	5	18	302	7	2020-06-02 00:50:45.311184	2020-06-02 00:50:45.311184
1105	2	18	303	1	2020-06-02 00:50:45.320356	2020-06-02 00:50:45.320356
1106	4	14	304	12	2020-06-02 00:50:45.33021	2020-06-02 00:50:45.33021
1107	4	51	304	2	2020-06-02 00:50:45.340083	2020-06-02 00:50:45.340083
1108	3	23	304	1	2020-06-02 00:50:45.35006	2020-06-02 00:50:45.35006
1109	2	48	304	3	2020-06-02 00:50:45.359711	2020-06-02 00:50:45.359711
1110	2	67	305	2	2020-06-02 00:50:45.369325	2020-06-02 00:50:45.369325
1111	1	70	305	1	2020-06-02 00:50:45.378706	2020-06-02 00:50:45.378706
1112	1	67	305	3	2020-06-02 00:50:45.388612	2020-06-02 00:50:45.388612
1113	2	34	305	6	2020-06-02 00:50:45.399009	2020-06-02 00:50:45.399009
1114	2	86	306	11	2020-06-02 00:50:45.408578	2020-06-02 00:50:45.408578
1115	1	53	306	3	2020-06-02 00:50:45.417872	2020-06-02 00:50:45.417872
1116	1	47	307	13	2020-06-02 00:50:45.427448	2020-06-02 00:50:45.427448
1117	1	1	307	9	2020-06-02 00:50:45.437057	2020-06-02 00:50:45.437057
1118	5	3	307	11	2020-06-02 00:50:45.446399	2020-06-02 00:50:45.446399
1119	5	69	308	16	2020-06-02 00:50:45.4558	2020-06-02 00:50:45.4558
1120	1	21	308	12	2020-06-02 00:50:45.465739	2020-06-02 00:50:45.465739
1121	2	59	308	5	2020-06-02 00:50:45.475556	2020-06-02 00:50:45.475556
1122	5	93	309	1	2020-06-02 00:50:45.484798	2020-06-02 00:50:45.484798
1123	4	22	310	8	2020-06-02 00:50:45.493595	2020-06-02 00:50:45.493595
1124	1	18	310	2	2020-06-02 00:50:45.502895	2020-06-02 00:50:45.502895
1125	3	98	310	14	2020-06-02 00:50:45.512112	2020-06-02 00:50:45.512112
1126	1	28	310	16	2020-06-02 00:50:45.521095	2020-06-02 00:50:45.521095
1127	2	85	311	8	2020-06-02 00:50:45.530296	2020-06-02 00:50:45.530296
1128	5	96	311	1	2020-06-02 00:50:45.539566	2020-06-02 00:50:45.539566
1129	4	78	312	12	2020-06-02 00:50:45.548706	2020-06-02 00:50:45.548706
1130	5	67	312	8	2020-06-02 00:50:45.558234	2020-06-02 00:50:45.558234
1131	2	34	313	1	2020-06-02 00:50:45.567813	2020-06-02 00:50:45.567813
1132	5	64	313	12	2020-06-02 00:50:45.577226	2020-06-02 00:50:45.577226
1133	2	5	314	7	2020-06-02 00:50:45.587795	2020-06-02 00:50:45.587795
1134	1	31	314	11	2020-06-02 00:50:45.597102	2020-06-02 00:50:45.597102
1135	2	74	314	14	2020-06-02 00:50:45.606164	2020-06-02 00:50:45.606164
1136	3	34	315	4	2020-06-02 00:50:45.615764	2020-06-02 00:50:45.615764
1137	1	87	315	11	2020-06-02 00:50:45.62531	2020-06-02 00:50:45.62531
1138	3	8	315	5	2020-06-02 00:50:45.635295	2020-06-02 00:50:45.635295
1139	5	76	316	8	2020-06-02 00:50:45.644793	2020-06-02 00:50:45.644793
1140	3	100	316	15	2020-06-02 00:50:45.654619	2020-06-02 00:50:45.654619
1141	1	90	317	1	2020-06-02 00:50:45.664193	2020-06-02 00:50:45.664193
1142	5	7	318	2	2020-06-02 00:50:45.673805	2020-06-02 00:50:45.673805
1143	4	58	319	5	2020-06-02 00:50:45.683288	2020-06-02 00:50:45.683288
1144	2	12	319	16	2020-06-02 00:50:45.693996	2020-06-02 00:50:45.693996
1145	2	72	319	14	2020-06-02 00:50:45.704302	2020-06-02 00:50:45.704302
1146	1	61	319	2	2020-06-02 00:50:45.715907	2020-06-02 00:50:45.715907
1147	2	68	320	5	2020-06-02 00:50:45.726861	2020-06-02 00:50:45.726861
1148	3	56	320	2	2020-06-02 00:50:45.737066	2020-06-02 00:50:45.737066
1149	3	29	320	16	2020-06-02 00:50:45.746774	2020-06-02 00:50:45.746774
1150	2	73	321	2	2020-06-02 00:50:45.756731	2020-06-02 00:50:45.756731
1151	2	82	321	13	2020-06-02 00:50:45.767911	2020-06-02 00:50:45.767911
1152	5	82	322	9	2020-06-02 00:50:45.779603	2020-06-02 00:50:45.779603
1153	5	58	323	4	2020-06-02 00:50:45.790706	2020-06-02 00:50:45.790706
1154	4	13	323	5	2020-06-02 00:50:45.802242	2020-06-02 00:50:45.802242
1155	4	87	324	6	2020-06-02 00:50:45.814196	2020-06-02 00:50:45.814196
1156	4	35	324	1	2020-06-02 00:50:45.826177	2020-06-02 00:50:45.826177
1157	2	8	324	11	2020-06-02 00:50:45.839123	2020-06-02 00:50:45.839123
1158	3	55	324	12	2020-06-02 00:50:45.851663	2020-06-02 00:50:45.851663
1159	4	21	325	12	2020-06-02 00:50:45.864225	2020-06-02 00:50:45.864225
1160	2	54	325	1	2020-06-02 00:50:45.875899	2020-06-02 00:50:45.875899
1161	4	43	325	8	2020-06-02 00:50:45.887421	2020-06-02 00:50:45.887421
1162	5	13	326	16	2020-06-02 00:50:45.898606	2020-06-02 00:50:45.898606
1163	5	94	326	14	2020-06-02 00:50:45.908334	2020-06-02 00:50:45.908334
1164	2	13	326	5	2020-06-02 00:50:45.918325	2020-06-02 00:50:45.918325
1165	3	91	327	12	2020-06-02 00:50:45.929633	2020-06-02 00:50:45.929633
1166	5	70	327	6	2020-06-02 00:50:45.941133	2020-06-02 00:50:45.941133
1167	4	97	328	1	2020-06-02 00:50:45.951942	2020-06-02 00:50:45.951942
1168	2	24	329	4	2020-06-02 00:50:45.962755	2020-06-02 00:50:45.962755
1169	1	5	329	16	2020-06-02 00:50:45.972986	2020-06-02 00:50:45.972986
1170	5	17	329	7	2020-06-02 00:50:45.981945	2020-06-02 00:50:45.981945
1171	4	53	330	2	2020-06-02 00:50:45.991803	2020-06-02 00:50:45.991803
1172	1	6	330	14	2020-06-02 00:50:46.001711	2020-06-02 00:50:46.001711
1173	1	72	331	6	2020-06-02 00:50:46.011811	2020-06-02 00:50:46.011811
1174	5	85	331	2	2020-06-02 00:50:46.02147	2020-06-02 00:50:46.02147
1175	2	77	331	1	2020-06-02 00:50:46.032207	2020-06-02 00:50:46.032207
1176	3	81	331	4	2020-06-02 00:50:46.042027	2020-06-02 00:50:46.042027
1177	3	97	332	4	2020-06-02 00:50:46.052101	2020-06-02 00:50:46.052101
1178	5	79	332	2	2020-06-02 00:50:46.060572	2020-06-02 00:50:46.060572
1179	4	36	333	6	2020-06-02 00:50:46.068608	2020-06-02 00:50:46.068608
1180	1	63	334	15	2020-06-02 00:50:46.077006	2020-06-02 00:50:46.077006
1181	4	32	335	11	2020-06-02 00:50:46.085568	2020-06-02 00:50:46.085568
1182	3	61	335	4	2020-06-02 00:50:46.093585	2020-06-02 00:50:46.093585
1183	4	96	336	15	2020-06-02 00:50:46.101609	2020-06-02 00:50:46.101609
1184	1	18	336	6	2020-06-02 00:50:46.109945	2020-06-02 00:50:46.109945
1185	1	38	336	12	2020-06-02 00:50:46.118223	2020-06-02 00:50:46.118223
1186	1	58	336	2	2020-06-02 00:50:46.12611	2020-06-02 00:50:46.12611
1187	2	100	337	14	2020-06-02 00:50:46.134247	2020-06-02 00:50:46.134247
1188	3	15	337	7	2020-06-02 00:50:46.142453	2020-06-02 00:50:46.142453
1189	1	77	337	11	2020-06-02 00:50:46.150399	2020-06-02 00:50:46.150399
1190	1	34	338	14	2020-06-02 00:50:46.159174	2020-06-02 00:50:46.159174
1191	4	97	338	3	2020-06-02 00:50:46.166963	2020-06-02 00:50:46.166963
1192	4	9	338	1	2020-06-02 00:50:46.175289	2020-06-02 00:50:46.175289
1193	4	53	338	13	2020-06-02 00:50:46.18357	2020-06-02 00:50:46.18357
1194	3	88	339	9	2020-06-02 00:50:46.19168	2020-06-02 00:50:46.19168
1195	3	44	339	3	2020-06-02 00:50:46.200404	2020-06-02 00:50:46.200404
1196	1	46	340	8	2020-06-02 00:50:46.208579	2020-06-02 00:50:46.208579
1197	3	24	340	9	2020-06-02 00:50:46.216747	2020-06-02 00:50:46.216747
1198	4	47	341	14	2020-06-02 00:50:46.225167	2020-06-02 00:50:46.225167
1199	4	98	341	7	2020-06-02 00:50:46.233062	2020-06-02 00:50:46.233062
1200	4	91	342	7	2020-06-02 00:50:46.24095	2020-06-02 00:50:46.24095
1201	2	41	342	8	2020-06-02 00:50:46.251307	2020-06-02 00:50:46.251307
1202	5	68	343	12	2020-06-02 00:50:46.259893	2020-06-02 00:50:46.259893
1203	1	6	343	10	2020-06-02 00:50:46.267996	2020-06-02 00:50:46.267996
1204	5	91	343	8	2020-06-02 00:50:46.276228	2020-06-02 00:50:46.276228
1205	3	7	343	14	2020-06-02 00:50:46.284589	2020-06-02 00:50:46.284589
1206	3	19	344	10	2020-06-02 00:50:46.292612	2020-06-02 00:50:46.292612
1207	5	12	344	6	2020-06-02 00:50:46.301061	2020-06-02 00:50:46.301061
1208	3	42	344	13	2020-06-02 00:50:46.309186	2020-06-02 00:50:46.309186
1209	4	1	345	4	2020-06-02 00:50:46.317402	2020-06-02 00:50:46.317402
1210	5	74	345	11	2020-06-02 00:50:46.325476	2020-06-02 00:50:46.325476
1211	3	6	345	6	2020-06-02 00:50:46.333701	2020-06-02 00:50:46.333701
1212	1	14	346	5	2020-06-02 00:50:46.342218	2020-06-02 00:50:46.342218
1213	1	25	347	7	2020-06-02 00:50:46.350941	2020-06-02 00:50:46.350941
1214	1	22	347	11	2020-06-02 00:50:46.36003	2020-06-02 00:50:46.36003
1215	3	55	347	14	2020-06-02 00:50:46.368344	2020-06-02 00:50:46.368344
1216	4	68	348	13	2020-06-02 00:50:46.377049	2020-06-02 00:50:46.377049
1217	5	70	348	12	2020-06-02 00:50:46.386811	2020-06-02 00:50:46.386811
1218	4	3	349	8	2020-06-02 00:50:46.395605	2020-06-02 00:50:46.395605
1219	5	91	349	1	2020-06-02 00:50:46.404243	2020-06-02 00:50:46.404243
1220	3	38	349	14	2020-06-02 00:50:46.412849	2020-06-02 00:50:46.412849
1221	1	67	350	5	2020-06-02 00:50:46.421272	2020-06-02 00:50:46.421272
1222	2	18	350	8	2020-06-02 00:50:46.429416	2020-06-02 00:50:46.429416
1223	3	62	350	10	2020-06-02 00:50:46.437207	2020-06-02 00:50:46.437207
1224	3	19	350	13	2020-06-02 00:50:46.445541	2020-06-02 00:50:46.445541
1225	3	23	351	4	2020-06-02 00:50:46.453975	2020-06-02 00:50:46.453975
1226	4	91	351	14	2020-06-02 00:50:46.463031	2020-06-02 00:50:46.463031
1227	4	31	351	2	2020-06-02 00:50:46.471593	2020-06-02 00:50:46.471593
1228	2	86	351	5	2020-06-02 00:50:46.480639	2020-06-02 00:50:46.480639
1229	2	2	352	16	2020-06-02 00:50:46.488925	2020-06-02 00:50:46.488925
1230	1	71	353	15	2020-06-02 00:50:46.496927	2020-06-02 00:50:46.496927
1231	5	5	353	12	2020-06-02 00:50:46.505602	2020-06-02 00:50:46.505602
1232	3	90	353	4	2020-06-02 00:50:46.515336	2020-06-02 00:50:46.515336
1233	5	1	354	1	2020-06-02 00:50:46.524013	2020-06-02 00:50:46.524013
1234	2	100	355	6	2020-06-02 00:50:46.532767	2020-06-02 00:50:46.532767
1235	5	48	355	3	2020-06-02 00:50:46.541021	2020-06-02 00:50:46.541021
1236	1	97	355	12	2020-06-02 00:50:46.549782	2020-06-02 00:50:46.549782
1237	4	9	356	2	2020-06-02 00:50:46.559164	2020-06-02 00:50:46.559164
1238	2	29	356	13	2020-06-02 00:50:46.56818	2020-06-02 00:50:46.56818
1239	4	23	356	6	2020-06-02 00:50:46.57719	2020-06-02 00:50:46.57719
1240	2	73	357	10	2020-06-02 00:50:46.587014	2020-06-02 00:50:46.587014
1241	1	45	357	5	2020-06-02 00:50:46.596727	2020-06-02 00:50:46.596727
1242	5	54	357	9	2020-06-02 00:50:46.606616	2020-06-02 00:50:46.606616
1243	2	10	357	3	2020-06-02 00:50:46.616117	2020-06-02 00:50:46.616117
1244	2	33	358	2	2020-06-02 00:50:46.625115	2020-06-02 00:50:46.625115
1245	1	5	359	14	2020-06-02 00:50:46.634113	2020-06-02 00:50:46.634113
1246	3	11	359	5	2020-06-02 00:50:46.643016	2020-06-02 00:50:46.643016
1247	1	83	360	9	2020-06-02 00:50:46.652165	2020-06-02 00:50:46.652165
1248	2	22	360	3	2020-06-02 00:50:46.661028	2020-06-02 00:50:46.661028
1249	5	14	360	13	2020-06-02 00:50:46.670137	2020-06-02 00:50:46.670137
1250	2	33	361	14	2020-06-02 00:50:46.679119	2020-06-02 00:50:46.679119
1251	3	24	362	5	2020-06-02 00:50:46.688097	2020-06-02 00:50:46.688097
1252	4	49	362	13	2020-06-02 00:50:46.697136	2020-06-02 00:50:46.697136
1253	2	63	363	15	2020-06-02 00:50:46.706387	2020-06-02 00:50:46.706387
1254	3	78	364	5	2020-06-02 00:50:46.716193	2020-06-02 00:50:46.716193
1255	4	5	364	3	2020-06-02 00:50:46.726814	2020-06-02 00:50:46.726814
1256	2	48	365	10	2020-06-02 00:50:46.736202	2020-06-02 00:50:46.736202
1257	4	17	365	12	2020-06-02 00:50:46.74615	2020-06-02 00:50:46.74615
1258	1	22	365	4	2020-06-02 00:50:46.755193	2020-06-02 00:50:46.755193
1259	4	49	366	11	2020-06-02 00:50:46.764403	2020-06-02 00:50:46.764403
1260	4	7	366	2	2020-06-02 00:50:46.773672	2020-06-02 00:50:46.773672
1261	5	52	367	10	2020-06-02 00:50:46.782964	2020-06-02 00:50:46.782964
1262	5	39	367	11	2020-06-02 00:50:46.792031	2020-06-02 00:50:46.792031
1263	2	30	367	12	2020-06-02 00:50:46.801214	2020-06-02 00:50:46.801214
1264	2	97	367	6	2020-06-02 00:50:46.810606	2020-06-02 00:50:46.810606
1265	1	87	368	4	2020-06-02 00:50:46.819891	2020-06-02 00:50:46.819891
1266	1	84	368	3	2020-06-02 00:50:46.82932	2020-06-02 00:50:46.82932
1267	4	93	368	8	2020-06-02 00:50:46.838721	2020-06-02 00:50:46.838721
1268	3	38	369	13	2020-06-02 00:50:46.847778	2020-06-02 00:50:46.847778
1269	5	30	370	7	2020-06-02 00:50:46.857025	2020-06-02 00:50:46.857025
1270	1	37	370	6	2020-06-02 00:50:46.866376	2020-06-02 00:50:46.866376
1271	4	92	371	2	2020-06-02 00:50:46.875619	2020-06-02 00:50:46.875619
1272	3	22	371	6	2020-06-02 00:50:46.885219	2020-06-02 00:50:46.885219
1273	3	78	371	5	2020-06-02 00:50:46.897373	2020-06-02 00:50:46.897373
1274	3	27	372	1	2020-06-02 00:50:46.907285	2020-06-02 00:50:46.907285
1275	2	98	373	6	2020-06-02 00:50:46.916647	2020-06-02 00:50:46.916647
1276	4	73	373	5	2020-06-02 00:50:46.925756	2020-06-02 00:50:46.925756
1277	3	81	373	13	2020-06-02 00:50:46.934731	2020-06-02 00:50:46.934731
1278	5	42	374	16	2020-06-02 00:50:46.943945	2020-06-02 00:50:46.943945
1279	1	51	374	13	2020-06-02 00:50:46.953147	2020-06-02 00:50:46.953147
1280	5	23	374	6	2020-06-02 00:50:46.962164	2020-06-02 00:50:46.962164
1281	4	71	375	3	2020-06-02 00:50:46.971119	2020-06-02 00:50:46.971119
1282	2	33	376	11	2020-06-02 00:50:46.98015	2020-06-02 00:50:46.98015
1283	3	53	377	5	2020-06-02 00:50:46.98923	2020-06-02 00:50:46.98923
1284	4	99	377	7	2020-06-02 00:50:46.998718	2020-06-02 00:50:46.998718
1285	3	81	377	13	2020-06-02 00:50:47.008096	2020-06-02 00:50:47.008096
1286	4	56	377	4	2020-06-02 00:50:47.0173	2020-06-02 00:50:47.0173
1287	3	55	378	4	2020-06-02 00:50:47.026258	2020-06-02 00:50:47.026258
1288	2	15	379	3	2020-06-02 00:50:47.035177	2020-06-02 00:50:47.035177
1289	5	95	380	8	2020-06-02 00:50:47.043998	2020-06-02 00:50:47.043998
1290	5	92	380	11	2020-06-02 00:50:47.053199	2020-06-02 00:50:47.053199
1291	2	27	381	7	2020-06-02 00:50:47.062295	2020-06-02 00:50:47.062295
1292	2	92	381	9	2020-06-02 00:50:47.071417	2020-06-02 00:50:47.071417
1293	5	43	382	7	2020-06-02 00:50:47.080198	2020-06-02 00:50:47.080198
1294	3	7	382	2	2020-06-02 00:50:47.089073	2020-06-02 00:50:47.089073
1295	2	32	382	15	2020-06-02 00:50:47.098094	2020-06-02 00:50:47.098094
1296	1	26	383	6	2020-06-02 00:50:47.107374	2020-06-02 00:50:47.107374
1297	3	73	383	11	2020-06-02 00:50:47.116183	2020-06-02 00:50:47.116183
1298	4	91	383	8	2020-06-02 00:50:47.124999	2020-06-02 00:50:47.124999
1299	4	7	384	13	2020-06-02 00:50:47.133887	2020-06-02 00:50:47.133887
1300	1	61	384	4	2020-06-02 00:50:47.142939	2020-06-02 00:50:47.142939
1301	5	89	384	5	2020-06-02 00:50:47.152351	2020-06-02 00:50:47.152351
1302	1	45	384	8	2020-06-02 00:50:47.161752	2020-06-02 00:50:47.161752
1303	4	36	385	11	2020-06-02 00:50:47.171109	2020-06-02 00:50:47.171109
1304	3	92	385	12	2020-06-02 00:50:47.18013	2020-06-02 00:50:47.18013
1305	4	4	386	5	2020-06-02 00:50:47.18915	2020-06-02 00:50:47.18915
1306	5	98	386	2	2020-06-02 00:50:47.198308	2020-06-02 00:50:47.198308
1307	4	73	386	8	2020-06-02 00:50:47.20766	2020-06-02 00:50:47.20766
1308	1	50	386	9	2020-06-02 00:50:47.217032	2020-06-02 00:50:47.217032
1309	4	78	387	2	2020-06-02 00:50:47.226282	2020-06-02 00:50:47.226282
1310	3	66	387	16	2020-06-02 00:50:47.235812	2020-06-02 00:50:47.235812
1311	4	50	388	5	2020-06-02 00:50:47.245201	2020-06-02 00:50:47.245201
1312	1	94	388	11	2020-06-02 00:50:47.254026	2020-06-02 00:50:47.254026
1313	1	66	388	2	2020-06-02 00:50:47.263278	2020-06-02 00:50:47.263278
1314	3	2	389	5	2020-06-02 00:50:47.272728	2020-06-02 00:50:47.272728
1315	1	69	389	14	2020-06-02 00:50:47.281699	2020-06-02 00:50:47.281699
1316	5	82	389	2	2020-06-02 00:50:47.290464	2020-06-02 00:50:47.290464
1317	4	66	389	16	2020-06-02 00:50:47.299941	2020-06-02 00:50:47.299941
1318	4	45	390	5	2020-06-02 00:50:47.308853	2020-06-02 00:50:47.308853
1319	5	86	390	13	2020-06-02 00:50:47.318105	2020-06-02 00:50:47.318105
1320	1	70	390	10	2020-06-02 00:50:47.327374	2020-06-02 00:50:47.327374
1321	1	24	391	13	2020-06-02 00:50:47.336635	2020-06-02 00:50:47.336635
1322	5	41	392	5	2020-06-02 00:50:47.345765	2020-06-02 00:50:47.345765
1323	5	8	393	16	2020-06-02 00:50:47.354613	2020-06-02 00:50:47.354613
1324	5	84	394	16	2020-06-02 00:50:47.363302	2020-06-02 00:50:47.363302
1325	4	55	394	4	2020-06-02 00:50:47.372224	2020-06-02 00:50:47.372224
1326	1	68	394	9	2020-06-02 00:50:47.381146	2020-06-02 00:50:47.381146
1327	4	22	394	3	2020-06-02 00:50:47.390931	2020-06-02 00:50:47.390931
1328	3	57	395	3	2020-06-02 00:50:47.400586	2020-06-02 00:50:47.400586
1329	2	83	395	4	2020-06-02 00:50:47.409867	2020-06-02 00:50:47.409867
1330	3	41	395	1	2020-06-02 00:50:47.418721	2020-06-02 00:50:47.418721
1331	4	78	396	2	2020-06-02 00:50:47.427744	2020-06-02 00:50:47.427744
1332	4	65	396	12	2020-06-02 00:50:47.436623	2020-06-02 00:50:47.436623
1333	3	73	396	8	2020-06-02 00:50:47.445399	2020-06-02 00:50:47.445399
1334	4	23	397	5	2020-06-02 00:50:47.454316	2020-06-02 00:50:47.454316
1335	1	43	397	15	2020-06-02 00:50:47.463601	2020-06-02 00:50:47.463601
1336	1	43	398	14	2020-06-02 00:50:47.472808	2020-06-02 00:50:47.472808
1337	3	96	398	5	2020-06-02 00:50:47.481945	2020-06-02 00:50:47.481945
1338	3	24	398	3	2020-06-02 00:50:47.491042	2020-06-02 00:50:47.491042
1339	5	94	398	1	2020-06-02 00:50:47.500092	2020-06-02 00:50:47.500092
1340	4	19	399	3	2020-06-02 00:50:47.509108	2020-06-02 00:50:47.509108
1341	2	69	399	14	2020-06-02 00:50:47.517698	2020-06-02 00:50:47.517698
1342	4	77	400	7	2020-06-02 00:50:47.52657	2020-06-02 00:50:47.52657
\.


--
-- TOC entry 2246 (class 0 OID 0)
-- Dependencies: 191
-- Name: engineer_programming_languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.engineer_programming_languages_id_seq', 1342, true);


--
-- TOC entry 2221 (class 0 OID 16436)
-- Dependencies: 194
-- Data for Name: engineers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.engineers (id, first_name, last_name, age, email, country_id, team_id, created_at, updated_at) FROM stdin;
1	Earnest	Simonis	66	Earnest.Simonis@salesloft.com	33	4	2020-06-02 00:50:03.198051	2020-06-02 00:50:03.198051
2	Tami	Thompson	62	Tami.Thompson@salesloft.com	1	6	2020-06-02 00:50:03.208833	2020-06-02 00:50:03.208833
3	Royal	Mante	32	Royal.Mante@salesloft.com	11	3	2020-06-02 00:50:03.219277	2020-06-02 00:50:03.219277
4	Aron	Wilkinson	25	Aron.Wilkinson@salesloft.com	45	6	2020-06-02 00:50:03.230215	2020-06-02 00:50:03.230215
5	Jess	Prosacco	36	Jess.Prosacco@salesloft.com	36	9	2020-06-02 00:50:03.240337	2020-06-02 00:50:03.240337
6	Keturah	Rogahn	49	Keturah.Rogahn@salesloft.com	13	3	2020-06-02 00:50:03.250158	2020-06-02 00:50:03.250158
7	Sharyn	Dare	44	Sharyn.Dare@salesloft.com	26	5	2020-06-02 00:50:03.260166	2020-06-02 00:50:03.260166
8	Maurice	Crist	50	Maurice.Crist@salesloft.com	16	8	2020-06-02 00:50:03.270841	2020-06-02 00:50:03.270841
9	Melodee	Grady	65	Melodee.Grady@salesloft.com	31	4	2020-06-02 00:50:03.28192	2020-06-02 00:50:03.28192
10	Gregg	Hauck	57	Gregg.Hauck@salesloft.com	20	7	2020-06-02 00:50:03.292473	2020-06-02 00:50:03.292473
11	Lindsay	Mitchell	48	Lindsay.Mitchell@salesloft.com	47	4	2020-06-02 00:50:03.303176	2020-06-02 00:50:03.303176
12	Roland	Pouros	18	Roland.Pouros@salesloft.com	29	3	2020-06-02 00:50:03.314466	2020-06-02 00:50:03.314466
13	Emmie	Reynolds	25	Emmie.Reynolds@salesloft.com	43	2	2020-06-02 00:50:03.324643	2020-06-02 00:50:03.324643
14	Lyle	Ondricka	69	Lyle.Ondricka@salesloft.com	29	2	2020-06-02 00:50:03.334252	2020-06-02 00:50:03.334252
15	Amos	Abernathy	51	Amos.Abernathy@salesloft.com	1	9	2020-06-02 00:50:03.344961	2020-06-02 00:50:03.344961
16	Migdalia	Koss	27	Migdalia.Koss@salesloft.com	22	5	2020-06-02 00:50:03.355909	2020-06-02 00:50:03.355909
17	Brant	Vandervort	48	Brant.Vandervort@salesloft.com	48	4	2020-06-02 00:50:03.366748	2020-06-02 00:50:03.366748
18	Cordelia	Kessler	39	Cordelia.Kessler@salesloft.com	16	1	2020-06-02 00:50:03.378107	2020-06-02 00:50:03.378107
19	Taylor	Torp	33	Taylor.Torp@salesloft.com	39	4	2020-06-02 00:50:03.389143	2020-06-02 00:50:03.389143
20	Stacie	Purdy	63	Stacie.Purdy@salesloft.com	13	1	2020-06-02 00:50:03.400258	2020-06-02 00:50:03.400258
21	Eddy	Heathcote	51	Eddy.Heathcote@salesloft.com	49	4	2020-06-02 00:50:03.410614	2020-06-02 00:50:03.410614
22	Burton	Veum	50	Burton.Veum@salesloft.com	48	3	2020-06-02 00:50:03.421419	2020-06-02 00:50:03.421419
23	Diane	Keebler	42	Diane.Keebler@salesloft.com	34	5	2020-06-02 00:50:03.431168	2020-06-02 00:50:03.431168
24	Noble	Spinka	38	Noble.Spinka@salesloft.com	25	1	2020-06-02 00:50:03.441166	2020-06-02 00:50:03.441166
25	Nathanael	Lang	27	Nathanael.Lang@salesloft.com	40	7	2020-06-02 00:50:03.452413	2020-06-02 00:50:03.452413
26	Lavonia	Rippin	66	Lavonia.Rippin@salesloft.com	30	1	2020-06-02 00:50:03.463802	2020-06-02 00:50:03.463802
27	Florinda	Kuhic	33	Florinda.Kuhic@salesloft.com	43	5	2020-06-02 00:50:03.473952	2020-06-02 00:50:03.473952
28	Pearl	Ernser	54	Pearl.Ernser@salesloft.com	42	5	2020-06-02 00:50:03.483491	2020-06-02 00:50:03.483491
29	Evan	Volkman	30	Evan.Volkman@salesloft.com	7	1	2020-06-02 00:50:03.495504	2020-06-02 00:50:03.495504
30	Wiley	Bergstrom	20	Wiley.Bergstrom@salesloft.com	47	2	2020-06-02 00:50:03.5063	2020-06-02 00:50:03.5063
31	Deonna	Hodkiewicz	39	Deonna.Hodkiewicz@salesloft.com	38	4	2020-06-02 00:50:03.516309	2020-06-02 00:50:03.516309
32	Bill	Frami	51	Bill.Frami@salesloft.com	14	2	2020-06-02 00:50:03.52612	2020-06-02 00:50:03.52612
33	Sacha	Daugherty	70	Sacha.Daugherty@salesloft.com	39	4	2020-06-02 00:50:03.535878	2020-06-02 00:50:03.535878
34	Ming	Wilkinson	68	Ming.Wilkinson@salesloft.com	9	8	2020-06-02 00:50:03.544126	2020-06-02 00:50:03.544126
35	Hanh	Towne	34	Hanh.Towne@salesloft.com	8	8	2020-06-02 00:50:03.551543	2020-06-02 00:50:03.551543
36	Georgie	Jenkins	26	Georgie.Jenkins@salesloft.com	36	2	2020-06-02 00:50:03.559827	2020-06-02 00:50:03.559827
37	Reva	Beier	31	Reva.Beier@salesloft.com	3	8	2020-06-02 00:50:03.567549	2020-06-02 00:50:03.567549
38	Kelly	Abernathy	35	Kelly.Abernathy@salesloft.com	14	1	2020-06-02 00:50:03.575035	2020-06-02 00:50:03.575035
39	Lazaro	Bartell	21	Lazaro.Bartell@salesloft.com	16	6	2020-06-02 00:50:03.582614	2020-06-02 00:50:03.582614
40	Michale	Thompson	23	Michale.Thompson@salesloft.com	23	2	2020-06-02 00:50:03.590513	2020-06-02 00:50:03.590513
41	Marshall	Parisian	67	Marshall.Parisian@salesloft.com	34	4	2020-06-02 00:50:03.599039	2020-06-02 00:50:03.599039
42	Billy	Robel	27	Billy.Robel@salesloft.com	15	5	2020-06-02 00:50:03.609891	2020-06-02 00:50:03.609891
43	Annmarie	Torphy	29	Annmarie.Torphy@salesloft.com	36	4	2020-06-02 00:50:03.61718	2020-06-02 00:50:03.61718
44	Sammy	Gerlach	57	Sammy.Gerlach@salesloft.com	5	8	2020-06-02 00:50:03.624851	2020-06-02 00:50:03.624851
45	Shannon	MacGyver	30	Shannon.MacGyver@salesloft.com	18	4	2020-06-02 00:50:03.632278	2020-06-02 00:50:03.632278
46	Carola	Hane	65	Carola.Hane@salesloft.com	43	7	2020-06-02 00:50:03.639485	2020-06-02 00:50:03.639485
47	Cornelius	Lemke	45	Cornelius.Lemke@salesloft.com	33	8	2020-06-02 00:50:03.646831	2020-06-02 00:50:03.646831
48	Sherley	Zboncak	35	Sherley.Zboncak@salesloft.com	16	6	2020-06-02 00:50:03.654459	2020-06-02 00:50:03.654459
49	Dreama	Simonis	49	Dreama.Simonis@salesloft.com	38	7	2020-06-02 00:50:03.661897	2020-06-02 00:50:03.661897
50	Nick	Wyman	58	Nick.Wyman@salesloft.com	1	8	2020-06-02 00:50:03.66943	2020-06-02 00:50:03.66943
51	Oliver	Bruen	69	Oliver.Bruen@salesloft.com	33	7	2020-06-02 00:50:03.677716	2020-06-02 00:50:03.677716
52	Heidy	Dickinson	69	Heidy.Dickinson@salesloft.com	2	5	2020-06-02 00:50:03.685279	2020-06-02 00:50:03.685279
53	Peter	Rowe	59	Peter.Rowe@salesloft.com	37	6	2020-06-02 00:50:03.692772	2020-06-02 00:50:03.692772
54	Birgit	Dickens	52	Birgit.Dickens@salesloft.com	39	9	2020-06-02 00:50:03.700024	2020-06-02 00:50:03.700024
55	Werner	Rosenbaum	37	Werner.Rosenbaum@salesloft.com	10	4	2020-06-02 00:50:03.707166	2020-06-02 00:50:03.707166
56	Dale	Kutch	65	Dale.Kutch@salesloft.com	38	4	2020-06-02 00:50:03.714293	2020-06-02 00:50:03.714293
57	Granville	Dibbert	70	Granville.Dibbert@salesloft.com	41	8	2020-06-02 00:50:03.721528	2020-06-02 00:50:03.721528
58	Olin	O'Reilly	40	Olin.O'Reilly@salesloft.com	47	7	2020-06-02 00:50:03.728937	2020-06-02 00:50:03.728937
59	Anglea	Runte	23	Anglea.Runte@salesloft.com	29	6	2020-06-02 00:50:03.736934	2020-06-02 00:50:03.736934
60	Colby	Fay	18	Colby.Fay@salesloft.com	14	5	2020-06-02 00:50:03.744601	2020-06-02 00:50:03.744601
61	Cleveland	Towne	42	Cleveland.Towne@salesloft.com	11	9	2020-06-02 00:50:03.752661	2020-06-02 00:50:03.752661
62	Deedee	Corwin	64	Deedee.Corwin@salesloft.com	15	3	2020-06-02 00:50:03.760541	2020-06-02 00:50:03.760541
63	Wilfred	Mills	38	Wilfred.Mills@salesloft.com	15	7	2020-06-02 00:50:03.768205	2020-06-02 00:50:03.768205
64	Riva	Littel	36	Riva.Littel@salesloft.com	9	1	2020-06-02 00:50:03.776093	2020-06-02 00:50:03.776093
65	Delmer	Beatty	52	Delmer.Beatty@salesloft.com	34	9	2020-06-02 00:50:03.783907	2020-06-02 00:50:03.783907
66	Merry	Lebsack	44	Merry.Lebsack@salesloft.com	19	6	2020-06-02 00:50:03.792035	2020-06-02 00:50:03.792035
67	Chad	Sawayn	34	Chad.Sawayn@salesloft.com	4	8	2020-06-02 00:50:03.800791	2020-06-02 00:50:03.800791
68	Jerald	Ortiz	51	Jerald.Ortiz@salesloft.com	19	1	2020-06-02 00:50:03.808646	2020-06-02 00:50:03.808646
69	Thad	Sauer	64	Thad.Sauer@salesloft.com	19	2	2020-06-02 00:50:03.816279	2020-06-02 00:50:03.816279
70	Bulah	Quigley	41	Bulah.Quigley@salesloft.com	49	5	2020-06-02 00:50:03.824156	2020-06-02 00:50:03.824156
71	Joel	Altenwerth	48	Joel.Altenwerth@salesloft.com	4	4	2020-06-02 00:50:03.831714	2020-06-02 00:50:03.831714
72	Abby	Nolan	57	Abby.Nolan@salesloft.com	42	5	2020-06-02 00:50:03.839448	2020-06-02 00:50:03.839448
73	Ricki	Beahan	38	Ricki.Beahan@salesloft.com	41	5	2020-06-02 00:50:03.849945	2020-06-02 00:50:03.849945
74	Orlando	Stiedemann	65	Orlando.Stiedemann@salesloft.com	33	8	2020-06-02 00:50:03.859033	2020-06-02 00:50:03.859033
75	Holley	Morar	51	Holley.Morar@salesloft.com	45	9	2020-06-02 00:50:03.867634	2020-06-02 00:50:03.867634
76	Solomon	Barton	30	Solomon.Barton@salesloft.com	18	3	2020-06-02 00:50:03.875555	2020-06-02 00:50:03.875555
77	Cordell	Hahn	54	Cordell.Hahn@salesloft.com	7	4	2020-06-02 00:50:03.883521	2020-06-02 00:50:03.883521
78	Kelsie	Deckow	44	Kelsie.Deckow@salesloft.com	47	8	2020-06-02 00:50:03.891509	2020-06-02 00:50:03.891509
79	Odis	Yost	36	Odis.Yost@salesloft.com	10	2	2020-06-02 00:50:03.899619	2020-06-02 00:50:03.899619
80	Rosette	Pollich	54	Rosette.Pollich@salesloft.com	49	4	2020-06-02 00:50:03.907292	2020-06-02 00:50:03.907292
81	Mia	Kshlerin	28	Mia.Kshlerin@salesloft.com	35	7	2020-06-02 00:50:03.914791	2020-06-02 00:50:03.914791
82	Monika	Waters	68	Monika.Waters@salesloft.com	12	9	2020-06-02 00:50:03.922248	2020-06-02 00:50:03.922248
83	Elliott	Price	67	Elliott.Price@salesloft.com	5	4	2020-06-02 00:50:03.930117	2020-06-02 00:50:03.930117
84	Bert	Smitham	30	Bert.Smitham@salesloft.com	31	1	2020-06-02 00:50:03.937857	2020-06-02 00:50:03.937857
85	Tomas	Gulgowski	21	Tomas.Gulgowski@salesloft.com	21	8	2020-06-02 00:50:03.945541	2020-06-02 00:50:03.945541
86	Xavier	Feil	26	Xavier.Feil@salesloft.com	2	4	2020-06-02 00:50:03.953674	2020-06-02 00:50:03.953674
87	Deidre	Crona	36	Deidre.Crona@salesloft.com	48	2	2020-06-02 00:50:03.961417	2020-06-02 00:50:03.961417
88	Nick	Konopelski	46	Nick.Konopelski@salesloft.com	41	9	2020-06-02 00:50:03.969156	2020-06-02 00:50:03.969156
89	Theodora	Schimmel	69	Theodora.Schimmel@salesloft.com	28	5	2020-06-02 00:50:03.976935	2020-06-02 00:50:03.976935
90	Roy	Hane	27	Roy.Hane@salesloft.com	42	2	2020-06-02 00:50:03.98473	2020-06-02 00:50:03.98473
91	Tyrell	Wehner	51	Tyrell.Wehner@salesloft.com	7	7	2020-06-02 00:50:03.993053	2020-06-02 00:50:03.993053
92	Hugh	Okuneva	29	Hugh.Okuneva@salesloft.com	19	1	2020-06-02 00:50:04.001498	2020-06-02 00:50:04.001498
93	Mui	Schuppe	33	Mui.Schuppe@salesloft.com	1	8	2020-06-02 00:50:04.009546	2020-06-02 00:50:04.009546
94	Hilton	Hand	68	Hilton.Hand@salesloft.com	1	3	2020-06-02 00:50:04.017533	2020-06-02 00:50:04.017533
95	Matthew	Lakin	55	Matthew.Lakin@salesloft.com	18	5	2020-06-02 00:50:04.025757	2020-06-02 00:50:04.025757
96	Hettie	Stroman	21	Hettie.Stroman@salesloft.com	8	7	2020-06-02 00:50:04.033951	2020-06-02 00:50:04.033951
97	Sabrina	Morissette	56	Sabrina.Morissette@salesloft.com	16	5	2020-06-02 00:50:04.041733	2020-06-02 00:50:04.041733
98	Madge	Grant	43	Madge.Grant@salesloft.com	50	9	2020-06-02 00:50:04.049854	2020-06-02 00:50:04.049854
99	Christina	Zieme	29	Christina.Zieme@salesloft.com	47	3	2020-06-02 00:50:04.058001	2020-06-02 00:50:04.058001
100	Gwenn	Hirthe	23	Gwenn.Hirthe@salesloft.com	11	7	2020-06-02 00:50:04.066957	2020-06-02 00:50:04.066957
101	Jesse	Johnson	69	Jesse.Johnson@salesloft.com	27	6	2020-06-02 00:50:04.074898	2020-06-02 00:50:04.074898
102	Garret	Steuber	19	Garret.Steuber@salesloft.com	4	6	2020-06-02 00:50:04.082724	2020-06-02 00:50:04.082724
103	Janene	Moen	32	Janene.Moen@salesloft.com	3	8	2020-06-02 00:50:04.090558	2020-06-02 00:50:04.090558
104	Margart	Buckridge	20	Margart.Buckridge@salesloft.com	38	3	2020-06-02 00:50:04.098941	2020-06-02 00:50:04.098941
105	Leigha	Schuster	21	Leigha.Schuster@salesloft.com	20	9	2020-06-02 00:50:04.107006	2020-06-02 00:50:04.107006
106	Chang	Kessler	41	Chang.Kessler@salesloft.com	10	2	2020-06-02 00:50:04.115294	2020-06-02 00:50:04.115294
107	Luke	Prosacco	22	Luke.Prosacco@salesloft.com	27	1	2020-06-02 00:50:04.123563	2020-06-02 00:50:04.123563
108	Amos	Hilpert	26	Amos.Hilpert@salesloft.com	34	1	2020-06-02 00:50:04.134872	2020-06-02 00:50:04.134872
109	Rodrigo	Schroeder	26	Rodrigo.Schroeder@salesloft.com	41	3	2020-06-02 00:50:04.145072	2020-06-02 00:50:04.145072
110	Bruce	Douglas	20	Bruce.Douglas@salesloft.com	42	8	2020-06-02 00:50:04.154517	2020-06-02 00:50:04.154517
111	Collin	Fay	59	Collin.Fay@salesloft.com	18	1	2020-06-02 00:50:04.164263	2020-06-02 00:50:04.164263
112	Merrill	D'Amore	18	Merrill.D'Amore@salesloft.com	42	3	2020-06-02 00:50:04.173599	2020-06-02 00:50:04.173599
113	Reva	Schiller	54	Reva.Schiller@salesloft.com	3	6	2020-06-02 00:50:04.183154	2020-06-02 00:50:04.183154
114	Erick	Swaniawski	26	Erick.Swaniawski@salesloft.com	29	8	2020-06-02 00:50:04.19174	2020-06-02 00:50:04.19174
115	Lavada	Zemlak	24	Lavada.Zemlak@salesloft.com	33	8	2020-06-02 00:50:04.200024	2020-06-02 00:50:04.200024
116	Scott	Emmerich	53	Scott.Emmerich@salesloft.com	26	8	2020-06-02 00:50:04.207581	2020-06-02 00:50:04.207581
117	Twila	Leuschke	31	Twila.Leuschke@salesloft.com	19	9	2020-06-02 00:50:04.215522	2020-06-02 00:50:04.215522
118	Bettyann	Hickle	23	Bettyann.Hickle@salesloft.com	34	9	2020-06-02 00:50:04.223558	2020-06-02 00:50:04.223558
119	Bradley	Gleason	61	Bradley.Gleason@salesloft.com	21	8	2020-06-02 00:50:04.231742	2020-06-02 00:50:04.231742
120	Sherie	O'Kon	28	Sherie.O'Kon@salesloft.com	50	9	2020-06-02 00:50:04.239804	2020-06-02 00:50:04.239804
121	Carey	Senger	67	Carey.Senger@salesloft.com	36	5	2020-06-02 00:50:04.249674	2020-06-02 00:50:04.249674
122	Nettie	Pfannerstill	66	Nettie.Pfannerstill@salesloft.com	17	7	2020-06-02 00:50:04.258536	2020-06-02 00:50:04.258536
123	Janett	Beier	66	Janett.Beier@salesloft.com	50	5	2020-06-02 00:50:04.266183	2020-06-02 00:50:04.266183
124	Bea	O'Keefe	58	Bea.O'Keefe@salesloft.com	13	4	2020-06-02 00:50:04.273907	2020-06-02 00:50:04.273907
125	Lewis	Nolan	22	Lewis.Nolan@salesloft.com	48	4	2020-06-02 00:50:04.281393	2020-06-02 00:50:04.281393
126	Rita	Rau	37	Rita.Rau@salesloft.com	12	8	2020-06-02 00:50:04.289015	2020-06-02 00:50:04.289015
127	Kitty	Wilkinson	36	Kitty.Wilkinson@salesloft.com	22	6	2020-06-02 00:50:04.296649	2020-06-02 00:50:04.296649
128	Elisha	Muller	63	Elisha.Muller@salesloft.com	41	5	2020-06-02 00:50:04.304032	2020-06-02 00:50:04.304032
129	Colton	Gerlach	43	Colton.Gerlach@salesloft.com	48	5	2020-06-02 00:50:04.311875	2020-06-02 00:50:04.311875
130	Gilberte	Schmitt	20	Gilberte.Schmitt@salesloft.com	28	7	2020-06-02 00:50:04.319518	2020-06-02 00:50:04.319518
131	Anibal	Bailey	32	Anibal.Bailey@salesloft.com	43	4	2020-06-02 00:50:04.327068	2020-06-02 00:50:04.327068
132	Max	Schaefer	33	Max.Schaefer@salesloft.com	22	6	2020-06-02 00:50:04.33456	2020-06-02 00:50:04.33456
133	Leta	Lynch	33	Leta.Lynch@salesloft.com	29	5	2020-06-02 00:50:04.342299	2020-06-02 00:50:04.342299
134	Amira	Dicki	38	Amira.Dicki@salesloft.com	31	3	2020-06-02 00:50:04.350026	2020-06-02 00:50:04.350026
135	Thomas	Gerhold	37	Thomas.Gerhold@salesloft.com	35	9	2020-06-02 00:50:04.357557	2020-06-02 00:50:04.357557
136	Alanna	Barrows	43	Alanna.Barrows@salesloft.com	32	4	2020-06-02 00:50:04.365277	2020-06-02 00:50:04.365277
137	Jed	MacGyver	31	Jed.MacGyver@salesloft.com	4	6	2020-06-02 00:50:04.37344	2020-06-02 00:50:04.37344
138	Juan	Reichel	63	Juan.Reichel@salesloft.com	26	6	2020-06-02 00:50:04.381603	2020-06-02 00:50:04.381603
139	Dallas	O'Keefe	26	Dallas.O'Keefe@salesloft.com	43	1	2020-06-02 00:50:04.389473	2020-06-02 00:50:04.389473
140	Homer	Schaefer	31	Homer.Schaefer@salesloft.com	27	2	2020-06-02 00:50:04.397316	2020-06-02 00:50:04.397316
141	Classie	Reichert	63	Classie.Reichert@salesloft.com	36	3	2020-06-02 00:50:04.40519	2020-06-02 00:50:04.40519
142	Florentino	Flatley	49	Florentino.Flatley@salesloft.com	28	5	2020-06-02 00:50:04.413685	2020-06-02 00:50:04.413685
143	Blake	Mertz	65	Blake.Mertz@salesloft.com	46	2	2020-06-02 00:50:04.422146	2020-06-02 00:50:04.422146
144	Dean	Metz	24	Dean.Metz@salesloft.com	49	8	2020-06-02 00:50:04.430537	2020-06-02 00:50:04.430537
145	Laurena	Harvey	51	Laurena.Harvey@salesloft.com	19	5	2020-06-02 00:50:04.438977	2020-06-02 00:50:04.438977
146	Young	Torp	52	Young.Torp@salesloft.com	48	9	2020-06-02 00:50:04.450485	2020-06-02 00:50:04.450485
147	Margarett	Hackett	29	Margarett.Hackett@salesloft.com	34	7	2020-06-02 00:50:04.462888	2020-06-02 00:50:04.462888
148	Jarrett	Heaney	19	Jarrett.Heaney@salesloft.com	28	1	2020-06-02 00:50:04.473475	2020-06-02 00:50:04.473475
149	Josefina	Herman	55	Josefina.Herman@salesloft.com	1	8	2020-06-02 00:50:04.482597	2020-06-02 00:50:04.482597
150	Jacob	Cremin	53	Jacob.Cremin@salesloft.com	34	4	2020-06-02 00:50:04.493336	2020-06-02 00:50:04.493336
151	Kristan	Weissnat	29	Kristan.Weissnat@salesloft.com	1	8	2020-06-02 00:50:04.50352	2020-06-02 00:50:04.50352
152	Virgil	Gottlieb	47	Virgil.Gottlieb@salesloft.com	2	3	2020-06-02 00:50:04.513207	2020-06-02 00:50:04.513207
153	Edie	Mraz	70	Edie.Mraz@salesloft.com	26	9	2020-06-02 00:50:04.522629	2020-06-02 00:50:04.522629
154	Coral	Marquardt	28	Coral.Marquardt@salesloft.com	43	3	2020-06-02 00:50:04.531612	2020-06-02 00:50:04.531612
155	Randolph	Thompson	40	Randolph.Thompson@salesloft.com	25	3	2020-06-02 00:50:04.540264	2020-06-02 00:50:04.540264
156	So	Baumbach	48	So.Baumbach@salesloft.com	12	1	2020-06-02 00:50:04.548946	2020-06-02 00:50:04.548946
157	Marla	Conn	46	Marla.Conn@salesloft.com	49	2	2020-06-02 00:50:04.558194	2020-06-02 00:50:04.558194
158	Alfonzo	Williamson	37	Alfonzo.Williamson@salesloft.com	5	9	2020-06-02 00:50:04.567449	2020-06-02 00:50:04.567449
159	Lala	VonRueden	55	Lala.VonRueden@salesloft.com	4	8	2020-06-02 00:50:04.57634	2020-06-02 00:50:04.57634
160	Heriberto	Littel	32	Heriberto.Littel@salesloft.com	29	9	2020-06-02 00:50:04.584995	2020-06-02 00:50:04.584995
161	Lynell	Homenick	42	Lynell.Homenick@salesloft.com	25	2	2020-06-02 00:50:04.594114	2020-06-02 00:50:04.594114
162	Claude	Walter	60	Claude.Walter@salesloft.com	18	9	2020-06-02 00:50:04.603529	2020-06-02 00:50:04.603529
163	Kam	Dickens	37	Kam.Dickens@salesloft.com	20	2	2020-06-02 00:50:04.612436	2020-06-02 00:50:04.612436
164	Eugenio	Ruecker	54	Eugenio.Ruecker@salesloft.com	44	7	2020-06-02 00:50:04.621075	2020-06-02 00:50:04.621075
165	Marybelle	Kuvalis	66	Marybelle.Kuvalis@salesloft.com	20	3	2020-06-02 00:50:04.629801	2020-06-02 00:50:04.629801
166	Brittney	Stracke	30	Brittney.Stracke@salesloft.com	9	8	2020-06-02 00:50:04.638638	2020-06-02 00:50:04.638638
167	Oren	Abernathy	23	Oren.Abernathy@salesloft.com	28	8	2020-06-02 00:50:04.646516	2020-06-02 00:50:04.646516
168	Myrtice	Franecki	39	Myrtice.Franecki@salesloft.com	34	4	2020-06-02 00:50:04.65329	2020-06-02 00:50:04.65329
169	Enrique	Zemlak	64	Enrique.Zemlak@salesloft.com	46	5	2020-06-02 00:50:04.659948	2020-06-02 00:50:04.659948
170	Janette	Stiedemann	28	Janette.Stiedemann@salesloft.com	28	9	2020-06-02 00:50:04.669784	2020-06-02 00:50:04.669784
171	Nita	Stoltenberg	22	Nita.Stoltenberg@salesloft.com	27	7	2020-06-02 00:50:04.677805	2020-06-02 00:50:04.677805
172	Zachariah	Bosco	53	Zachariah.Bosco@salesloft.com	42	5	2020-06-02 00:50:04.685717	2020-06-02 00:50:04.685717
173	Juliet	Veum	33	Juliet.Veum@salesloft.com	34	7	2020-06-02 00:50:04.692611	2020-06-02 00:50:04.692611
174	Luciano	Tremblay	45	Luciano.Tremblay@salesloft.com	12	8	2020-06-02 00:50:04.699687	2020-06-02 00:50:04.699687
175	Pedro	Hahn	19	Pedro.Hahn@salesloft.com	10	3	2020-06-02 00:50:04.707072	2020-06-02 00:50:04.707072
176	Adella	Stamm	62	Adella.Stamm@salesloft.com	22	7	2020-06-02 00:50:04.714426	2020-06-02 00:50:04.714426
177	Charlena	Bashirian	30	Charlena.Bashirian@salesloft.com	48	2	2020-06-02 00:50:04.721917	2020-06-02 00:50:04.721917
178	Johnie	Hickle	60	Johnie.Hickle@salesloft.com	17	2	2020-06-02 00:50:04.729269	2020-06-02 00:50:04.729269
179	Maryjo	Morar	19	Maryjo.Morar@salesloft.com	38	8	2020-06-02 00:50:04.73695	2020-06-02 00:50:04.73695
180	Celesta	Kub	36	Celesta.Kub@salesloft.com	44	2	2020-06-02 00:50:04.743599	2020-06-02 00:50:04.743599
181	Fidel	Hagenes	23	Fidel.Hagenes@salesloft.com	50	1	2020-06-02 00:50:04.750389	2020-06-02 00:50:04.750389
182	Max	Raynor	62	Max.Raynor@salesloft.com	8	9	2020-06-02 00:50:04.757389	2020-06-02 00:50:04.757389
183	Homer	Ratke	62	Homer.Ratke@salesloft.com	44	5	2020-06-02 00:50:04.763959	2020-06-02 00:50:04.763959
184	Zelda	Bechtelar	46	Zelda.Bechtelar@salesloft.com	43	8	2020-06-02 00:50:04.770812	2020-06-02 00:50:04.770812
185	Reagan	Moen	39	Reagan.Moen@salesloft.com	25	1	2020-06-02 00:50:04.777502	2020-06-02 00:50:04.777502
186	Margrett	Lockman	21	Margrett.Lockman@salesloft.com	50	4	2020-06-02 00:50:04.78487	2020-06-02 00:50:04.78487
187	Shanda	Krajcik	55	Shanda.Krajcik@salesloft.com	7	2	2020-06-02 00:50:04.791982	2020-06-02 00:50:04.791982
188	Ted	MacGyver	31	Ted.MacGyver@salesloft.com	18	4	2020-06-02 00:50:04.800261	2020-06-02 00:50:04.800261
189	Yong	Jaskolski	55	Yong.Jaskolski@salesloft.com	12	8	2020-06-02 00:50:04.807444	2020-06-02 00:50:04.807444
190	Jen	Bergnaum	40	Jen.Bergnaum@salesloft.com	45	7	2020-06-02 00:50:04.814475	2020-06-02 00:50:04.814475
191	Abel	Gleichner	45	Abel.Gleichner@salesloft.com	36	2	2020-06-02 00:50:04.821215	2020-06-02 00:50:04.821215
192	Wilbur	Murphy	28	Wilbur.Murphy@salesloft.com	44	3	2020-06-02 00:50:04.828045	2020-06-02 00:50:04.828045
193	Fidelia	Hane	18	Fidelia.Hane@salesloft.com	21	4	2020-06-02 00:50:04.834906	2020-06-02 00:50:04.834906
194	Raymundo	Effertz	56	Raymundo.Effertz@salesloft.com	20	3	2020-06-02 00:50:04.842259	2020-06-02 00:50:04.842259
195	Andy	Yost	31	Andy.Yost@salesloft.com	36	9	2020-06-02 00:50:04.849159	2020-06-02 00:50:04.849159
196	Arturo	Schowalter	65	Arturo.Schowalter@salesloft.com	30	4	2020-06-02 00:50:04.856411	2020-06-02 00:50:04.856411
197	Mabel	Schuster	61	Mabel.Schuster@salesloft.com	42	6	2020-06-02 00:50:04.863134	2020-06-02 00:50:04.863134
198	Lise	Feest	29	Lise.Feest@salesloft.com	10	7	2020-06-02 00:50:04.870931	2020-06-02 00:50:04.870931
199	Rebecka	Steuber	70	Rebecka.Steuber@salesloft.com	25	9	2020-06-02 00:50:04.878783	2020-06-02 00:50:04.878783
200	Filiberto	Tromp	46	Filiberto.Tromp@salesloft.com	42	3	2020-06-02 00:50:04.886553	2020-06-02 00:50:04.886553
201	Jerri	Rippin	70	Jerri.Rippin@salesloft.com	83	7	2020-06-02 00:50:04.893488	2020-06-02 00:50:04.893488
202	Alec	Macejkovic	63	Alec.Macejkovic@salesloft.com	38	2	2020-06-02 00:50:04.900429	2020-06-02 00:50:04.900429
203	Mellissa	Crooks	34	Mellissa.Crooks@salesloft.com	10	8	2020-06-02 00:50:04.907259	2020-06-02 00:50:04.907259
204	Yuko	Dare	30	Yuko.Dare@salesloft.com	57	12	2020-06-02 00:50:04.91452	2020-06-02 00:50:04.91452
205	Will	Metz	20	Will.Metz@salesloft.com	85	4	2020-06-02 00:50:04.921506	2020-06-02 00:50:04.921506
206	Arnold	Halvorson	68	Arnold.Halvorson@salesloft.com	73	13	2020-06-02 00:50:04.928493	2020-06-02 00:50:04.928493
207	Curt	Hilll	55	Curt.Hilll@salesloft.com	52	13	2020-06-02 00:50:04.936413	2020-06-02 00:50:04.936413
208	Shon	Larkin	28	Shon.Larkin@salesloft.com	36	8	2020-06-02 00:50:04.944105	2020-06-02 00:50:04.944105
209	Maxwell	Tillman	40	Maxwell.Tillman@salesloft.com	39	3	2020-06-02 00:50:04.951901	2020-06-02 00:50:04.951901
210	Delora	Mohr	43	Delora.Mohr@salesloft.com	88	16	2020-06-02 00:50:04.959269	2020-06-02 00:50:04.959269
211	Davis	Champlin	35	Davis.Champlin@salesloft.com	96	7	2020-06-02 00:50:04.966818	2020-06-02 00:50:04.966818
212	Tamesha	Rolfson	64	Tamesha.Rolfson@salesloft.com	20	5	2020-06-02 00:50:04.974509	2020-06-02 00:50:04.974509
213	Vaughn	Considine	39	Vaughn.Considine@salesloft.com	91	10	2020-06-02 00:50:04.981869	2020-06-02 00:50:04.981869
214	Terence	Von	25	Terence.Von@salesloft.com	51	14	2020-06-02 00:50:04.989056	2020-06-02 00:50:04.989056
215	Antony	Ankunding	69	Antony.Ankunding@salesloft.com	49	14	2020-06-02 00:50:04.996513	2020-06-02 00:50:04.996513
216	Tom	Bartell	25	Tom.Bartell@salesloft.com	24	18	2020-06-02 00:50:05.004535	2020-06-02 00:50:05.004535
217	Georgie	Gusikowski	45	Georgie.Gusikowski@salesloft.com	98	11	2020-06-02 00:50:05.011967	2020-06-02 00:50:05.011967
218	Olin	Kessler	37	Olin.Kessler@salesloft.com	10	8	2020-06-02 00:50:05.01942	2020-06-02 00:50:05.01942
219	Joe	Krajcik	28	Joe.Krajcik@salesloft.com	6	5	2020-06-02 00:50:05.027415	2020-06-02 00:50:05.027415
220	Randa	Friesen	63	Randa.Friesen@salesloft.com	61	9	2020-06-02 00:50:05.035245	2020-06-02 00:50:05.035245
221	Mauricio	Streich	18	Mauricio.Streich@salesloft.com	56	7	2020-06-02 00:50:05.044082	2020-06-02 00:50:05.044082
222	Hortense	Howe	29	Hortense.Howe@salesloft.com	20	10	2020-06-02 00:50:05.055521	2020-06-02 00:50:05.055521
223	Agustin	Fisher	60	Agustin.Fisher@salesloft.com	84	10	2020-06-02 00:50:05.064728	2020-06-02 00:50:05.064728
224	Maura	Wuckert	49	Maura.Wuckert@salesloft.com	59	5	2020-06-02 00:50:05.073847	2020-06-02 00:50:05.073847
225	Ron	Wolf	68	Ron.Wolf@salesloft.com	34	3	2020-06-02 00:50:05.082983	2020-06-02 00:50:05.082983
226	Collin	Herzog	21	Collin.Herzog@salesloft.com	36	1	2020-06-02 00:50:05.091771	2020-06-02 00:50:05.091771
227	Jackelyn	Berge	41	Jackelyn.Berge@salesloft.com	81	10	2020-06-02 00:50:05.103501	2020-06-02 00:50:05.103501
228	Marlon	Hahn	42	Marlon.Hahn@salesloft.com	50	1	2020-06-02 00:50:05.113773	2020-06-02 00:50:05.113773
229	Pilar	Batz	43	Pilar.Batz@salesloft.com	41	6	2020-06-02 00:50:05.122598	2020-06-02 00:50:05.122598
230	Pedro	Nitzsche	32	Pedro.Nitzsche@salesloft.com	93	3	2020-06-02 00:50:05.131519	2020-06-02 00:50:05.131519
231	Rosendo	Heidenreich	29	Rosendo.Heidenreich@salesloft.com	83	15	2020-06-02 00:50:05.140317	2020-06-02 00:50:05.140317
232	Lupe	Keeling	31	Lupe.Keeling@salesloft.com	8	8	2020-06-02 00:50:05.14945	2020-06-02 00:50:05.14945
233	Roscoe	Kerluke	19	Roscoe.Kerluke@salesloft.com	68	8	2020-06-02 00:50:05.158072	2020-06-02 00:50:05.158072
234	Romeo	Hammes	22	Romeo.Hammes@salesloft.com	54	15	2020-06-02 00:50:05.167141	2020-06-02 00:50:05.167141
235	Hyon	Hauck	44	Hyon.Hauck@salesloft.com	20	11	2020-06-02 00:50:05.177682	2020-06-02 00:50:05.177682
236	Cyrus	Dooley	52	Cyrus.Dooley@salesloft.com	53	4	2020-06-02 00:50:05.187249	2020-06-02 00:50:05.187249
237	Mario	Hudson	47	Mario.Hudson@salesloft.com	93	15	2020-06-02 00:50:05.19632	2020-06-02 00:50:05.19632
238	Blaine	Veum	66	Blaine.Veum@salesloft.com	67	10	2020-06-02 00:50:05.204788	2020-06-02 00:50:05.204788
239	Cesar	Kemmer	66	Cesar.Kemmer@salesloft.com	62	9	2020-06-02 00:50:05.213607	2020-06-02 00:50:05.213607
240	Allen	Nicolas	48	Allen.Nicolas@salesloft.com	94	6	2020-06-02 00:50:05.222331	2020-06-02 00:50:05.222331
241	Maurice	Gutkowski	20	Maurice.Gutkowski@salesloft.com	39	12	2020-06-02 00:50:05.231567	2020-06-02 00:50:05.231567
242	Elijah	Gottlieb	41	Elijah.Gottlieb@salesloft.com	58	1	2020-06-02 00:50:05.240952	2020-06-02 00:50:05.240952
243	Bryon	Howell	42	Bryon.Howell@salesloft.com	69	13	2020-06-02 00:50:05.253368	2020-06-02 00:50:05.253368
244	Geoffrey	Prohaska	55	Geoffrey.Prohaska@salesloft.com	86	16	2020-06-02 00:50:05.264711	2020-06-02 00:50:05.264711
245	Kai	Nikolaus	44	Kai.Nikolaus@salesloft.com	58	3	2020-06-02 00:50:05.273702	2020-06-02 00:50:05.273702
246	Miki	Predovic	49	Miki.Predovic@salesloft.com	40	6	2020-06-02 00:50:05.282139	2020-06-02 00:50:05.282139
247	Valentina	Wyman	35	Valentina.Wyman@salesloft.com	52	10	2020-06-02 00:50:05.289672	2020-06-02 00:50:05.289672
248	Wyatt	Sauer	58	Wyatt.Sauer@salesloft.com	96	13	2020-06-02 00:50:05.296899	2020-06-02 00:50:05.296899
249	Tom	Spinka	37	Tom.Spinka@salesloft.com	8	8	2020-06-02 00:50:05.30477	2020-06-02 00:50:05.30477
250	Jc	Harber	37	Jc.Harber@salesloft.com	87	16	2020-06-02 00:50:05.311636	2020-06-02 00:50:05.311636
251	Karry	Crooks	67	Karry.Crooks@salesloft.com	72	6	2020-06-02 00:50:05.318611	2020-06-02 00:50:05.318611
252	Jeramy	Schumm	57	Jeramy.Schumm@salesloft.com	82	8	2020-06-02 00:50:05.325549	2020-06-02 00:50:05.325549
253	Sherrill	Renner	49	Sherrill.Renner@salesloft.com	7	6	2020-06-02 00:50:05.332321	2020-06-02 00:50:05.332321
254	Lawerence	Hegmann	64	Lawerence.Hegmann@salesloft.com	97	1	2020-06-02 00:50:05.339654	2020-06-02 00:50:05.339654
255	Barb	Bartell	56	Barb.Bartell@salesloft.com	58	8	2020-06-02 00:50:05.348418	2020-06-02 00:50:05.348418
256	Clementina	Yost	32	Clementina.Yost@salesloft.com	34	4	2020-06-02 00:50:05.357486	2020-06-02 00:50:05.357486
257	Jarvis	Stiedemann	23	Jarvis.Stiedemann@salesloft.com	5	18	2020-06-02 00:50:05.366968	2020-06-02 00:50:05.366968
258	Henry	Hudson	37	Henry.Hudson@salesloft.com	47	15	2020-06-02 00:50:05.375983	2020-06-02 00:50:05.375983
259	Odessa	Padberg	64	Odessa.Padberg@salesloft.com	51	18	2020-06-02 00:50:05.385431	2020-06-02 00:50:05.385431
260	Krystyna	Lubowitz	65	Krystyna.Lubowitz@salesloft.com	62	10	2020-06-02 00:50:05.39375	2020-06-02 00:50:05.39375
261	Joann	Krajcik	38	Joann.Krajcik@salesloft.com	90	14	2020-06-02 00:50:05.40083	2020-06-02 00:50:05.40083
262	Cherly	Satterfield	30	Cherly.Satterfield@salesloft.com	55	17	2020-06-02 00:50:05.40763	2020-06-02 00:50:05.40763
263	Domenic	Veum	48	Domenic.Veum@salesloft.com	8	1	2020-06-02 00:50:05.414478	2020-06-02 00:50:05.414478
264	Oma	Schultz	56	Oma.Schultz@salesloft.com	25	17	2020-06-02 00:50:05.42132	2020-06-02 00:50:05.42132
265	Maritza	Powlowski	48	Maritza.Powlowski@salesloft.com	2	9	2020-06-02 00:50:05.428087	2020-06-02 00:50:05.428087
266	Peter	Bartoletti	69	Peter.Bartoletti@salesloft.com	72	12	2020-06-02 00:50:05.435061	2020-06-02 00:50:05.435061
267	Jasper	Shields	55	Jasper.Shields@salesloft.com	4	3	2020-06-02 00:50:05.442008	2020-06-02 00:50:05.442008
268	Stuart	Waelchi	37	Stuart.Waelchi@salesloft.com	42	1	2020-06-02 00:50:05.451027	2020-06-02 00:50:05.451027
269	Isiah	Klocko	21	Isiah.Klocko@salesloft.com	44	8	2020-06-02 00:50:05.461973	2020-06-02 00:50:05.461973
270	Martha	Hintz	58	Martha.Hintz@salesloft.com	24	10	2020-06-02 00:50:05.471838	2020-06-02 00:50:05.471838
271	Rolando	Gislason	65	Rolando.Gislason@salesloft.com	82	4	2020-06-02 00:50:05.480412	2020-06-02 00:50:05.480412
272	Pearle	Toy	56	Pearle.Toy@salesloft.com	100	15	2020-06-02 00:50:05.488255	2020-06-02 00:50:05.488255
273	Rickey	Barrows	37	Rickey.Barrows@salesloft.com	63	3	2020-06-02 00:50:05.495776	2020-06-02 00:50:05.495776
274	Herbert	Oberbrunner	54	Herbert.Oberbrunner@salesloft.com	50	9	2020-06-02 00:50:05.502631	2020-06-02 00:50:05.502631
275	Genesis	Russel	35	Genesis.Russel@salesloft.com	67	12	2020-06-02 00:50:05.509526	2020-06-02 00:50:05.509526
276	Danial	Rosenbaum	34	Danial.Rosenbaum@salesloft.com	54	18	2020-06-02 00:50:05.516899	2020-06-02 00:50:05.516899
277	Shelby	Stehr	18	Shelby.Stehr@salesloft.com	90	7	2020-06-02 00:50:05.523851	2020-06-02 00:50:05.523851
278	Lazaro	Lubowitz	59	Lazaro.Lubowitz@salesloft.com	64	12	2020-06-02 00:50:05.531373	2020-06-02 00:50:05.531373
279	Carol	Sporer	29	Carol.Sporer@salesloft.com	58	18	2020-06-02 00:50:05.542018	2020-06-02 00:50:05.542018
280	Leo	Konopelski	69	Leo.Konopelski@salesloft.com	61	11	2020-06-02 00:50:05.550584	2020-06-02 00:50:05.550584
281	Cecilia	Torphy	56	Cecilia.Torphy@salesloft.com	14	10	2020-06-02 00:50:05.560222	2020-06-02 00:50:05.560222
282	Levi	Morar	39	Levi.Morar@salesloft.com	6	15	2020-06-02 00:50:05.570093	2020-06-02 00:50:05.570093
283	Chris	Hayes	33	Chris.Hayes@salesloft.com	23	17	2020-06-02 00:50:05.57957	2020-06-02 00:50:05.57957
284	Tommie	Waelchi	56	Tommie.Waelchi@salesloft.com	26	12	2020-06-02 00:50:05.588796	2020-06-02 00:50:05.588796
285	Jefferey	Casper	53	Jefferey.Casper@salesloft.com	54	15	2020-06-02 00:50:05.59831	2020-06-02 00:50:05.59831
286	Amelia	Hessel	30	Amelia.Hessel@salesloft.com	22	4	2020-06-02 00:50:05.606119	2020-06-02 00:50:05.606119
287	Cristobal	Howell	46	Cristobal.Howell@salesloft.com	30	18	2020-06-02 00:50:05.614217	2020-06-02 00:50:05.614217
288	Alessandra	Doyle	32	Alessandra.Doyle@salesloft.com	15	9	2020-06-02 00:50:05.621506	2020-06-02 00:50:05.621506
289	Keva	Feeney	47	Keva.Feeney@salesloft.com	95	4	2020-06-02 00:50:05.628885	2020-06-02 00:50:05.628885
290	Dorothea	Zemlak	24	Dorothea.Zemlak@salesloft.com	63	17	2020-06-02 00:50:05.637149	2020-06-02 00:50:05.637149
291	Matthew	Batz	55	Matthew.Batz@salesloft.com	2	8	2020-06-02 00:50:05.644604	2020-06-02 00:50:05.644604
292	Murray	West	59	Murray.West@salesloft.com	13	9	2020-06-02 00:50:05.652405	2020-06-02 00:50:05.652405
293	Reginald	Zemlak	65	Reginald.Zemlak@salesloft.com	41	16	2020-06-02 00:50:05.659915	2020-06-02 00:50:05.659915
294	Tanner	Collier	48	Tanner.Collier@salesloft.com	98	18	2020-06-02 00:50:05.667632	2020-06-02 00:50:05.667632
295	Trudi	Schmeler	18	Trudi.Schmeler@salesloft.com	17	8	2020-06-02 00:50:05.676406	2020-06-02 00:50:05.676406
296	Joanie	Barton	39	Joanie.Barton@salesloft.com	57	3	2020-06-02 00:50:05.68452	2020-06-02 00:50:05.68452
297	Beatrice	Hansen	28	Beatrice.Hansen@salesloft.com	23	10	2020-06-02 00:50:05.692226	2020-06-02 00:50:05.692226
298	Lilly	Hermann	50	Lilly.Hermann@salesloft.com	62	13	2020-06-02 00:50:05.699851	2020-06-02 00:50:05.699851
299	Vance	Schroeder	28	Vance.Schroeder@salesloft.com	53	3	2020-06-02 00:50:05.707263	2020-06-02 00:50:05.707263
300	Mitchell	Mosciski	64	Mitchell.Mosciski@salesloft.com	79	2	2020-06-02 00:50:05.714524	2020-06-02 00:50:05.714524
301	Toi	Schaden	55	Toi.Schaden@salesloft.com	66	1	2020-06-02 00:50:05.72226	2020-06-02 00:50:05.72226
302	Alida	Kassulke	48	Alida.Kassulke@salesloft.com	64	16	2020-06-02 00:50:05.730232	2020-06-02 00:50:05.730232
303	Freeman	Bednar	69	Freeman.Bednar@salesloft.com	61	12	2020-06-02 00:50:05.738064	2020-06-02 00:50:05.738064
304	Paulene	Halvorson	24	Paulene.Halvorson@salesloft.com	62	5	2020-06-02 00:50:05.746243	2020-06-02 00:50:05.746243
305	Melvin	Ankunding	55	Melvin.Ankunding@salesloft.com	85	3	2020-06-02 00:50:05.756444	2020-06-02 00:50:05.756444
306	Demarcus	Legros	34	Demarcus.Legros@salesloft.com	85	7	2020-06-02 00:50:05.764948	2020-06-02 00:50:05.764948
307	Charise	Ankunding	41	Charise.Ankunding@salesloft.com	98	11	2020-06-02 00:50:05.772636	2020-06-02 00:50:05.772636
308	Cristal	Kris	41	Cristal.Kris@salesloft.com	46	10	2020-06-02 00:50:05.780104	2020-06-02 00:50:05.780104
309	Temple	Pagac	63	Temple.Pagac@salesloft.com	62	2	2020-06-02 00:50:05.78789	2020-06-02 00:50:05.78789
310	Annalee	Parker	37	Annalee.Parker@salesloft.com	52	4	2020-06-02 00:50:05.795542	2020-06-02 00:50:05.795542
311	Carmine	Gleichner	50	Carmine.Gleichner@salesloft.com	90	11	2020-06-02 00:50:05.803446	2020-06-02 00:50:05.803446
312	Ligia	Morissette	19	Ligia.Morissette@salesloft.com	89	5	2020-06-02 00:50:05.810915	2020-06-02 00:50:05.810915
313	Ilana	Kris	35	Ilana.Kris@salesloft.com	4	8	2020-06-02 00:50:05.818636	2020-06-02 00:50:05.818636
314	Gilberto	Cassin	30	Gilberto.Cassin@salesloft.com	82	9	2020-06-02 00:50:05.826518	2020-06-02 00:50:05.826518
315	Lasonya	Ullrich	20	Lasonya.Ullrich@salesloft.com	61	15	2020-06-02 00:50:05.834436	2020-06-02 00:50:05.834436
316	Nolan	Cummerata	35	Nolan.Cummerata@salesloft.com	42	13	2020-06-02 00:50:05.842044	2020-06-02 00:50:05.842044
317	Dessie	Littel	56	Dessie.Littel@salesloft.com	45	9	2020-06-02 00:50:05.849948	2020-06-02 00:50:05.849948
318	Brendan	Volkman	70	Brendan.Volkman@salesloft.com	23	3	2020-06-02 00:50:05.85799	2020-06-02 00:50:05.85799
319	Jamal	O'Reilly	23	Jamal.O'Reilly@salesloft.com	10	3	2020-06-02 00:50:05.867702	2020-06-02 00:50:05.867702
320	Devin	Tromp	21	Devin.Tromp@salesloft.com	44	3	2020-06-02 00:50:05.881584	2020-06-02 00:50:05.881584
321	Megan	Berge	51	Megan.Berge@salesloft.com	60	16	2020-06-02 00:50:05.890554	2020-06-02 00:50:05.890554
322	Melisa	Waters	34	Melisa.Waters@salesloft.com	59	4	2020-06-02 00:50:05.898437	2020-06-02 00:50:05.898437
323	Darrin	Kuvalis	34	Darrin.Kuvalis@salesloft.com	85	1	2020-06-02 00:50:05.906248	2020-06-02 00:50:05.906248
324	Lucas	Feeney	39	Lucas.Feeney@salesloft.com	8	3	2020-06-02 00:50:05.913951	2020-06-02 00:50:05.913951
325	Zachary	Cummings	22	Zachary.Cummings@salesloft.com	33	14	2020-06-02 00:50:05.92153	2020-06-02 00:50:05.92153
326	Jordon	Greenholt	68	Jordon.Greenholt@salesloft.com	10	4	2020-06-02 00:50:05.929237	2020-06-02 00:50:05.929237
327	Calista	Walsh	39	Calista.Walsh@salesloft.com	88	7	2020-06-02 00:50:05.939105	2020-06-02 00:50:05.939105
328	Coleman	Runolfsdottir	53	Coleman.Runolfsdottir@salesloft.com	61	2	2020-06-02 00:50:05.947801	2020-06-02 00:50:05.947801
329	Gayle	Homenick	21	Gayle.Homenick@salesloft.com	26	5	2020-06-02 00:50:05.956618	2020-06-02 00:50:05.956618
330	Williams	Roberts	67	Williams.Roberts@salesloft.com	73	9	2020-06-02 00:50:05.964842	2020-06-02 00:50:05.964842
331	Alexandria	Ryan	46	Alexandria.Ryan@salesloft.com	65	11	2020-06-02 00:50:05.973116	2020-06-02 00:50:05.973116
332	Luciana	MacGyver	54	Luciana.MacGyver@salesloft.com	84	1	2020-06-02 00:50:05.981657	2020-06-02 00:50:05.981657
333	Brittanie	Lind	65	Brittanie.Lind@salesloft.com	2	6	2020-06-02 00:50:05.989633	2020-06-02 00:50:05.989633
334	Gilberto	Hyatt	48	Gilberto.Hyatt@salesloft.com	100	15	2020-06-02 00:50:05.997561	2020-06-02 00:50:05.997561
335	Roni	Boyer	19	Roni.Boyer@salesloft.com	15	6	2020-06-02 00:50:06.005454	2020-06-02 00:50:06.005454
336	Stephnie	Halvorson	63	Stephnie.Halvorson@salesloft.com	60	11	2020-06-02 00:50:06.013216	2020-06-02 00:50:06.013216
337	Ervin	Murphy	49	Ervin.Murphy@salesloft.com	90	11	2020-06-02 00:50:06.021154	2020-06-02 00:50:06.021154
338	Lois	Mosciski	69	Lois.Mosciski@salesloft.com	50	17	2020-06-02 00:50:06.028818	2020-06-02 00:50:06.028818
339	Sook	Heathcote	30	Sook.Heathcote@salesloft.com	59	15	2020-06-02 00:50:06.036935	2020-06-02 00:50:06.036935
340	Arnoldo	Huels	20	Arnoldo.Huels@salesloft.com	96	13	2020-06-02 00:50:06.044962	2020-06-02 00:50:06.044962
341	Porter	Gulgowski	66	Porter.Gulgowski@salesloft.com	4	4	2020-06-02 00:50:06.053089	2020-06-02 00:50:06.053089
342	India	Bins	38	India.Bins@salesloft.com	23	14	2020-06-02 00:50:06.061071	2020-06-02 00:50:06.061071
343	Carlyn	Frami	45	Carlyn.Frami@salesloft.com	68	6	2020-06-02 00:50:06.069256	2020-06-02 00:50:06.069256
344	Rodney	Parisian	42	Rodney.Parisian@salesloft.com	90	13	2020-06-02 00:50:06.077258	2020-06-02 00:50:06.077258
345	Cleotilde	Hansen	63	Cleotilde.Hansen@salesloft.com	94	11	2020-06-02 00:50:06.086487	2020-06-02 00:50:06.086487
346	Zonia	Dach	65	Zonia.Dach@salesloft.com	14	15	2020-06-02 00:50:06.09454	2020-06-02 00:50:06.09454
347	Nikole	Hansen	28	Nikole.Hansen@salesloft.com	45	5	2020-06-02 00:50:06.10261	2020-06-02 00:50:06.10261
348	Melisa	Kunze	44	Melisa.Kunze@salesloft.com	52	9	2020-06-02 00:50:06.11088	2020-06-02 00:50:06.11088
349	Rosaura	Beahan	67	Rosaura.Beahan@salesloft.com	56	16	2020-06-02 00:50:06.120787	2020-06-02 00:50:06.120787
350	Robbie	Sanford	40	Robbie.Sanford@salesloft.com	43	16	2020-06-02 00:50:06.129529	2020-06-02 00:50:06.129529
351	Malcom	Kling	46	Malcom.Kling@salesloft.com	71	9	2020-06-02 00:50:06.138395	2020-06-02 00:50:06.138395
352	Loni	Hodkiewicz	40	Loni.Hodkiewicz@salesloft.com	59	11	2020-06-02 00:50:06.147121	2020-06-02 00:50:06.147121
353	Russell	Bogan	35	Russell.Bogan@salesloft.com	90	16	2020-06-02 00:50:06.157047	2020-06-02 00:50:06.157047
354	Heath	Dicki	56	Heath.Dicki@salesloft.com	74	3	2020-06-02 00:50:06.167146	2020-06-02 00:50:06.167146
355	Rubin	Pacocha	26	Rubin.Pacocha@salesloft.com	34	7	2020-06-02 00:50:06.176645	2020-06-02 00:50:06.176645
356	Danilo	Fisher	65	Danilo.Fisher@salesloft.com	54	18	2020-06-02 00:50:06.186163	2020-06-02 00:50:06.186163
357	Stasia	Kuhic	48	Stasia.Kuhic@salesloft.com	85	11	2020-06-02 00:50:06.196007	2020-06-02 00:50:06.196007
358	Brant	Friesen	47	Brant.Friesen@salesloft.com	22	8	2020-06-02 00:50:06.205943	2020-06-02 00:50:06.205943
359	Jerome	Dicki	54	Jerome.Dicki@salesloft.com	76	3	2020-06-02 00:50:06.214922	2020-06-02 00:50:06.214922
360	Rhonda	Paucek	35	Rhonda.Paucek@salesloft.com	38	12	2020-06-02 00:50:06.22324	2020-06-02 00:50:06.22324
361	Mollie	Nicolas	51	Mollie.Nicolas@salesloft.com	6	13	2020-06-02 00:50:06.231006	2020-06-02 00:50:06.231006
362	Joie	McGlynn	33	Joie.McGlynn@salesloft.com	44	4	2020-06-02 00:50:06.239698	2020-06-02 00:50:06.239698
363	Janelle	Vandervort	53	Janelle.Vandervort@salesloft.com	63	6	2020-06-02 00:50:06.249279	2020-06-02 00:50:06.249279
364	Kaycee	Okuneva	55	Kaycee.Okuneva@salesloft.com	49	5	2020-06-02 00:50:06.259588	2020-06-02 00:50:06.259588
365	Genny	Stiedemann	19	Genny.Stiedemann@salesloft.com	17	4	2020-06-02 00:50:06.26904	2020-06-02 00:50:06.26904
366	Wm	Koelpin	19	Wm.Koelpin@salesloft.com	36	18	2020-06-02 00:50:06.279665	2020-06-02 00:50:06.279665
367	Nestor	Jaskolski	64	Nestor.Jaskolski@salesloft.com	26	11	2020-06-02 00:50:06.291321	2020-06-02 00:50:06.291321
368	Waylon	Daniel	57	Waylon.Daniel@salesloft.com	6	11	2020-06-02 00:50:06.302527	2020-06-02 00:50:06.302527
369	Justin	Beier	52	Justin.Beier@salesloft.com	53	6	2020-06-02 00:50:06.312556	2020-06-02 00:50:06.312556
370	Vincenzo	Oberbrunner	24	Vincenzo.Oberbrunner@salesloft.com	10	14	2020-06-02 00:50:06.322979	2020-06-02 00:50:06.322979
371	Dionna	Pouros	39	Dionna.Pouros@salesloft.com	47	6	2020-06-02 00:50:06.333533	2020-06-02 00:50:06.333533
372	Sonny	Parisian	36	Sonny.Parisian@salesloft.com	91	3	2020-06-02 00:50:06.34242	2020-06-02 00:50:06.34242
373	Youlanda	Bechtelar	35	Youlanda.Bechtelar@salesloft.com	63	8	2020-06-02 00:50:06.350033	2020-06-02 00:50:06.350033
374	Malcom	Jenkins	67	Malcom.Jenkins@salesloft.com	28	10	2020-06-02 00:50:06.357645	2020-06-02 00:50:06.357645
375	Ngan	Goyette	43	Ngan.Goyette@salesloft.com	74	2	2020-06-02 00:50:06.365216	2020-06-02 00:50:06.365216
376	Mina	Grimes	54	Mina.Grimes@salesloft.com	28	4	2020-06-02 00:50:06.372955	2020-06-02 00:50:06.372955
377	Melisa	Bartell	21	Melisa.Bartell@salesloft.com	62	7	2020-06-02 00:50:06.382077	2020-06-02 00:50:06.382077
378	Bev	Zulauf	55	Bev.Zulauf@salesloft.com	13	18	2020-06-02 00:50:06.390489	2020-06-02 00:50:06.390489
379	Rodolfo	Koch	67	Rodolfo.Koch@salesloft.com	69	16	2020-06-02 00:50:06.398295	2020-06-02 00:50:06.398295
380	Franklin	Harris	67	Franklin.Harris@salesloft.com	100	16	2020-06-02 00:50:06.406054	2020-06-02 00:50:06.406054
381	Barb	Kuhlman	67	Barb.Kuhlman@salesloft.com	14	5	2020-06-02 00:50:06.413623	2020-06-02 00:50:06.413623
382	Alfonso	Kuhic	24	Alfonso.Kuhic@salesloft.com	15	2	2020-06-02 00:50:06.42092	2020-06-02 00:50:06.42092
383	Carroll	Fritsch	34	Carroll.Fritsch@salesloft.com	87	6	2020-06-02 00:50:06.428405	2020-06-02 00:50:06.428405
384	Hollis	Weissnat	52	Hollis.Weissnat@salesloft.com	54	8	2020-06-02 00:50:06.436903	2020-06-02 00:50:06.436903
385	Laurence	Howell	67	Laurence.Howell@salesloft.com	18	4	2020-06-02 00:50:06.444607	2020-06-02 00:50:06.444607
386	Lashonda	Steuber	65	Lashonda.Steuber@salesloft.com	18	4	2020-06-02 00:50:06.454544	2020-06-02 00:50:06.454544
387	Elliot	Wilderman	24	Elliot.Wilderman@salesloft.com	24	10	2020-06-02 00:50:06.463212	2020-06-02 00:50:06.463212
388	Michal	Olson	27	Michal.Olson@salesloft.com	75	5	2020-06-02 00:50:06.471554	2020-06-02 00:50:06.471554
389	Eldridge	Schaden	42	Eldridge.Schaden@salesloft.com	23	18	2020-06-02 00:50:06.479432	2020-06-02 00:50:06.479432
390	Bobbie	Kautzer	70	Bobbie.Kautzer@salesloft.com	29	17	2020-06-02 00:50:06.48701	2020-06-02 00:50:06.48701
391	Rafael	Schaefer	40	Rafael.Schaefer@salesloft.com	51	4	2020-06-02 00:50:06.495176	2020-06-02 00:50:06.495176
392	Tyler	Emmerich	62	Tyler.Emmerich@salesloft.com	61	6	2020-06-02 00:50:06.502926	2020-06-02 00:50:06.502926
393	Frederica	Schowalter	28	Frederica.Schowalter@salesloft.com	34	13	2020-06-02 00:50:06.510832	2020-06-02 00:50:06.510832
394	Chu	Parker	29	Chu.Parker@salesloft.com	59	10	2020-06-02 00:50:06.519116	2020-06-02 00:50:06.519116
395	Harmony	Corwin	60	Harmony.Corwin@salesloft.com	93	10	2020-06-02 00:50:06.527556	2020-06-02 00:50:06.527556
396	Rudolph	Wolff	35	Rudolph.Wolff@salesloft.com	2	3	2020-06-02 00:50:06.535799	2020-06-02 00:50:06.535799
397	Fay	Beier	33	Fay.Beier@salesloft.com	81	13	2020-06-02 00:50:06.543944	2020-06-02 00:50:06.543944
398	Amelia	Casper	63	Amelia.Casper@salesloft.com	30	18	2020-06-02 00:50:06.552259	2020-06-02 00:50:06.552259
399	Tameika	Gerlach	29	Tameika.Gerlach@salesloft.com	65	11	2020-06-02 00:50:06.560537	2020-06-02 00:50:06.560537
400	Viviana	Kuvalis	22	Viviana.Kuvalis@salesloft.com	56	10	2020-06-02 00:50:06.568787	2020-06-02 00:50:06.568787
\.


--
-- TOC entry 2247 (class 0 OID 0)
-- Dependencies: 193
-- Name: engineers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.engineers_id_seq', 400, true);


--
-- TOC entry 2223 (class 0 OID 16449)
-- Dependencies: 196
-- Data for Name: programming_languages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.programming_languages (id, name, category, date_of_birth, inventor, created_at, updated_at) FROM stdin;
1	Ruby	Object Oriented	1995	Yukihiro Matsumoto	2020-06-02 00:49:57.810878	2020-06-02 00:49:57.810878
2	Elixir	Functional	2011	José Valim	2020-06-02 00:49:57.817437	2020-06-02 00:49:57.817437
3	JavaScript	Prototype	1995	Brendan Eich	2020-06-02 00:49:57.822141	2020-06-02 00:49:57.822141
4	Java	Object Oriented	1995	James Gosling	2020-06-02 00:49:57.826878	2020-06-02 00:49:57.826878
5	C#	Object Oriented	2000	Anders Hejlsberg	2020-06-02 00:49:57.831741	2020-06-02 00:49:57.831741
6	F#	Functional	2005	Don Syme	2020-06-02 00:49:57.836741	2020-06-02 00:49:57.836741
7	Haskell	Functional	1990	Lennart Augustsson	2020-06-02 00:49:57.841431	2020-06-02 00:49:57.841431
8	Erlang	Functional	1986	Joe Armstrong	2020-06-02 00:49:57.84619	2020-06-02 00:49:57.84619
9	Ruby	Object Oriented	1995	Yukihiro Matsumoto	2020-06-02 00:49:57.851442	2020-06-02 00:49:57.851442
10	Elixir	Functional	2011	José Valim	2020-06-02 00:49:57.85605	2020-06-02 00:49:57.85605
11	JavaScript	Prototype	1995	Brendan Eich	2020-06-02 00:49:57.861003	2020-06-02 00:49:57.861003
12	Java	Object Oriented	1995	James Gosling	2020-06-02 00:49:57.865772	2020-06-02 00:49:57.865772
13	C#	Object Oriented	2000	Anders Hejlsberg	2020-06-02 00:49:57.870399	2020-06-02 00:49:57.870399
14	F#	Functional	2005	Don Syme	2020-06-02 00:49:57.874785	2020-06-02 00:49:57.874785
15	Haskell	Functional	1990	Lennart Augustsson	2020-06-02 00:49:57.878811	2020-06-02 00:49:57.878811
16	Erlang	Functional	1986	Joe Armstrong	2020-06-02 00:49:57.882589	2020-06-02 00:49:57.882589
\.


--
-- TOC entry 2248 (class 0 OID 0)
-- Dependencies: 195
-- Name: programming_languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.programming_languages_id_seq', 16, true);


--
-- TOC entry 2226 (class 0 OID 16499)
-- Dependencies: 199
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.schema_migrations (version) FROM stdin;
20181103012847
20181102202301
20181102185252
20181102145954
20181102185014
20181102145955
20181009144102
\.


--
-- TOC entry 2225 (class 0 OID 16460)
-- Dependencies: 198
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.teams (id, name, floor, features_shipped, current_bugs, created_at, updated_at) FROM stdin;
1	CCR	22	84	34	2020-06-02 00:49:57.901604	2020-06-02 00:49:57.901604
2	HSA	23	69	33	2020-06-02 00:49:57.905785	2020-06-02 00:49:57.905785
3	DM	22	47	37	2020-06-02 00:49:57.909517	2020-06-02 00:49:57.909517
4	CZ9	22	73	8	2020-06-02 00:49:57.913154	2020-06-02 00:49:57.913154
5	LFE	24	68	36	2020-06-02 00:49:57.916808	2020-06-02 00:49:57.916808
6	LTT	22	53	27	2020-06-02 00:49:57.920357	2020-06-02 00:49:57.920357
7	CLD	22	91	20	2020-06-02 00:49:57.923728	2020-06-02 00:49:57.923728
8	SES	23	43	1	2020-06-02 00:49:57.927154	2020-06-02 00:49:57.927154
9	Dops	22	41	16	2020-06-02 00:49:57.931167	2020-06-02 00:49:57.931167
10	CCR	22	43	27	2020-06-02 00:49:57.934689	2020-06-02 00:49:57.934689
11	HSA	23	67	0	2020-06-02 00:49:57.938249	2020-06-02 00:49:57.938249
12	DM	22	95	37	2020-06-02 00:49:57.941842	2020-06-02 00:49:57.941842
13	CZ9	22	49	14	2020-06-02 00:49:57.945394	2020-06-02 00:49:57.945394
14	LFE	24	54	31	2020-06-02 00:49:57.948989	2020-06-02 00:49:57.948989
15	LTT	22	79	28	2020-06-02 00:49:57.952599	2020-06-02 00:49:57.952599
16	CLD	22	83	36	2020-06-02 00:49:57.956262	2020-06-02 00:49:57.956262
17	SES	23	81	22	2020-06-02 00:49:57.959856	2020-06-02 00:49:57.959856
18	Dops	22	96	36	2020-06-02 00:49:57.963362	2020-06-02 00:49:57.963362
\.


--
-- TOC entry 2249 (class 0 OID 0)
-- Dependencies: 197
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.teams_id_seq', 18, true);


--
-- TOC entry 2088 (class 2606 OID 16514)
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 2066 (class 2606 OID 16396)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- TOC entry 2068 (class 2606 OID 16407)
-- Name: bookshelves bookshelves_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bookshelves
    ADD CONSTRAINT bookshelves_pkey PRIMARY KEY (id);


--
-- TOC entry 2072 (class 2606 OID 16420)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 2074 (class 2606 OID 16431)
-- Name: engineer_programming_languages engineer_programming_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.engineer_programming_languages
    ADD CONSTRAINT engineer_programming_languages_pkey PRIMARY KEY (id);


--
-- TOC entry 2078 (class 2606 OID 16444)
-- Name: engineers engineers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.engineers
    ADD CONSTRAINT engineers_pkey PRIMARY KEY (id);


--
-- TOC entry 2082 (class 2606 OID 16457)
-- Name: programming_languages programming_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.programming_languages
    ADD CONSTRAINT programming_languages_pkey PRIMARY KEY (id);


--
-- TOC entry 2086 (class 2606 OID 16506)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 2084 (class 2606 OID 16468)
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- TOC entry 2069 (class 1259 OID 16408)
-- Name: index_bookshelves_on_book_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_bookshelves_on_book_id ON public.bookshelves USING btree (book_id);


--
-- TOC entry 2070 (class 1259 OID 16409)
-- Name: index_bookshelves_on_engineer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_bookshelves_on_engineer_id ON public.bookshelves USING btree (engineer_id);


--
-- TOC entry 2075 (class 1259 OID 16432)
-- Name: index_engineer_programming_languages_on_engineer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_engineer_programming_languages_on_engineer_id ON public.engineer_programming_languages USING btree (engineer_id);


--
-- TOC entry 2076 (class 1259 OID 16433)
-- Name: index_engineer_programming_languages_on_programming_language_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_engineer_programming_languages_on_programming_language_id ON public.engineer_programming_languages USING btree (programming_language_id);


--
-- TOC entry 2079 (class 1259 OID 16445)
-- Name: index_engineers_on_country_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_engineers_on_country_id ON public.engineers USING btree (country_id);


--
-- TOC entry 2080 (class 1259 OID 16446)
-- Name: index_engineers_on_team_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_engineers_on_team_id ON public.engineers USING btree (team_id);


--
-- TOC entry 2090 (class 2606 OID 16474)
-- Name: bookshelves fk_rails_13dec3ee94; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bookshelves
    ADD CONSTRAINT fk_rails_13dec3ee94 FOREIGN KEY (engineer_id) REFERENCES public.engineers(id);


--
-- TOC entry 2091 (class 2606 OID 16479)
-- Name: engineer_programming_languages fk_rails_3a4377ed71; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.engineer_programming_languages
    ADD CONSTRAINT fk_rails_3a4377ed71 FOREIGN KEY (engineer_id) REFERENCES public.engineers(id);


--
-- TOC entry 2093 (class 2606 OID 16489)
-- Name: engineers fk_rails_48c685314b; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.engineers
    ADD CONSTRAINT fk_rails_48c685314b FOREIGN KEY (country_id) REFERENCES public.countries(id);


--
-- TOC entry 2094 (class 2606 OID 16494)
-- Name: engineers fk_rails_5c44cd68ac; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.engineers
    ADD CONSTRAINT fk_rails_5c44cd68ac FOREIGN KEY (team_id) REFERENCES public.teams(id);


--
-- TOC entry 2092 (class 2606 OID 16484)
-- Name: engineer_programming_languages fk_rails_888c6565a8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.engineer_programming_languages
    ADD CONSTRAINT fk_rails_888c6565a8 FOREIGN KEY (programming_language_id) REFERENCES public.programming_languages(id);


--
-- TOC entry 2089 (class 2606 OID 16469)
-- Name: bookshelves fk_rails_9a6539777c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bookshelves
    ADD CONSTRAINT fk_rails_9a6539777c FOREIGN KEY (book_id) REFERENCES public.books(id);


-- Completed on 2020-06-02 01:50:46 UTC

--
-- PostgreSQL database dump complete
--

