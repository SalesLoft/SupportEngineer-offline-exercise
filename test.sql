BEGIN;

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO postgres;

--
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE books (
    id bigint NOT NULL,
    title character varying,
    author character varying,
    publisher character varying,
    genre character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE books OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE books_id_seq OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE books_id_seq OWNED BY books.id;


--
-- Name: bookshelves; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bookshelves (
    id bigint NOT NULL,
    rating character varying,
    times_read integer,
    engineer_id bigint,
    book_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE bookshelves OWNER TO postgres;

--
-- Name: bookshelves_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bookshelves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookshelves_id_seq OWNER TO postgres;

--
-- Name: bookshelves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bookshelves_id_seq OWNED BY bookshelves.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE countries (
    id bigint NOT NULL,
    name character varying,
    capital character varying,
    region character varying,
    population integer,
    area integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE countries OWNER TO postgres;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE countries_id_seq OWNER TO postgres;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE countries_id_seq OWNED BY countries.id;


--
-- Name: engineer_programming_languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE engineer_programming_languages (
    id bigint NOT NULL,
    proficency character varying,
    repositories integer,
    engineer_id bigint,
    programming_language_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE engineer_programming_languages OWNER TO postgres;

--
-- Name: engineer_programming_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE engineer_programming_languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE engineer_programming_languages_id_seq OWNER TO postgres;

--
-- Name: engineer_programming_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE engineer_programming_languages_id_seq OWNED BY engineer_programming_languages.id;


--
-- Name: engineers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE engineers (
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


ALTER TABLE engineers OWNER TO postgres;

--
-- Name: engineers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE engineers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE engineers_id_seq OWNER TO postgres;

--
-- Name: engineers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE engineers_id_seq OWNED BY engineers.id;


--
-- Name: programming_languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE programming_languages (
    id bigint NOT NULL,
    name character varying,
    category character varying,
    date_of_birth integer,
    inventor character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE programming_languages OWNER TO postgres;

--
-- Name: programming_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE programming_languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE programming_languages_id_seq OWNER TO postgres;

--
-- Name: programming_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE programming_languages_id_seq OWNED BY programming_languages.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE teams (
    id bigint NOT NULL,
    name character varying,
    floor integer,
    features_shipped integer,
    current_bugs integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE teams OWNER TO postgres;

--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE teams_id_seq OWNER TO postgres;

--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE teams_id_seq OWNED BY teams.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY books ALTER COLUMN id SET DEFAULT nextval('books_id_seq'::regclass);


--
-- Name: bookshelves id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bookshelves ALTER COLUMN id SET DEFAULT nextval('bookshelves_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countries ALTER COLUMN id SET DEFAULT nextval('countries_id_seq'::regclass);


--
-- Name: engineer_programming_languages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY engineer_programming_languages ALTER COLUMN id SET DEFAULT nextval('engineer_programming_languages_id_seq'::regclass);


--
-- Name: engineers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY engineers ALTER COLUMN id SET DEFAULT nextval('engineers_id_seq'::regclass);


--
-- Name: programming_languages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY programming_languages ALTER COLUMN id SET DEFAULT nextval('programming_languages_id_seq'::regclass);


--
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY teams ALTER COLUMN id SET DEFAULT nextval('teams_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-06-16 12:40:03.87557	2020-06-16 12:40:03.87557
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY books (id, title, author, publisher, genre, created_at, updated_at) FROM stdin;
1	The Glory and the Dream	Alita Renner DVM	NavPress	Mythology	2020-06-16 12:40:04.329186	2020-06-16 12:40:04.329186
2	Waiting for the Barbarians	Milo Terry MD	Pan Books	Horror	2020-06-16 12:40:04.33228	2020-06-16 12:40:04.33228
3	Number the Stars	Nancy Fadel	Legend Books	Suspense/Thriller	2020-06-16 12:40:04.333833	2020-06-16 12:40:04.333833
4	The Yellow Meads of Asphodel	Britteny Barrows	Black Sparrow Books	Biography/Autobiography	2020-06-16 12:40:04.335251	2020-06-16 12:40:04.335251
5	Such, Such Were the Joys	Cheryl Morar	Chambers Harrap	Short story	2020-06-16 12:40:04.336652	2020-06-16 12:40:04.336652
6	To Sail Beyond the Sunset	Chelsey Schumm MD	Cambridge University Press	Speech	2020-06-16 12:40:04.338095	2020-06-16 12:40:04.338095
7	A Time to Kill	Xavier Kuvalis	Open Court Publishing Company	Western	2020-06-16 12:40:04.339444	2020-06-16 12:40:04.339444
8	No Longer at Ease	Tasia Windler	Ten Speed Press	Tall tale	2020-06-16 12:40:04.340851	2020-06-16 12:40:04.340851
9	Edna O'Brien	Miki Koss	HarperCollins	Crime/Detective	2020-06-16 12:40:04.342253	2020-06-16 12:40:04.342253
10	A Confederacy of Dunces	Mr. John Mosciski	Macmillan Publishers	Legend	2020-06-16 12:40:04.343625	2020-06-16 12:40:04.343625
11	No Country for Old Men	Ahmad Blanda	Emerald Group Publishing	Mythology	2020-06-16 12:40:04.345078	2020-06-16 12:40:04.345078
12	The Man Within	Kassandra Gulgowski	Parachute Publishing	Comic/Graphic Novel	2020-06-16 12:40:04.34643	2020-06-16 12:40:04.34643
13	Behold the Man	Mrs. Cruz Jacobson	Libertas Academica	Narrative nonfiction	2020-06-16 12:40:04.347758	2020-06-16 12:40:04.347758
14	The Curious Incident of the Dog in the Night-Time	Lin Koch V	Da Capo Press	Mystery	2020-06-16 12:40:04.349225	2020-06-16 12:40:04.349225
15	Fame Is the Spur	Rhett Reinger	Vintage Books at Random House	Fairy tale	2020-06-16 12:40:04.350586	2020-06-16 12:40:04.350586
16	Tender Is the Night	Kristan Kautzer	Leafwood Publishers	Fable	2020-06-16 12:40:04.351998	2020-06-16 12:40:04.351998
17	Now Sleeps the Crimson Petal	Kyle Miller	University of Michigan Press	Narrative nonfiction	2020-06-16 12:40:04.353347	2020-06-16 12:40:04.353347
18	The Moving Finger	Neomi Gerhold	Parachute Publishing	Mystery	2020-06-16 12:40:04.354678	2020-06-16 12:40:04.354678
19	Many Waters	Rosita Pfannerstill	Harvill Press at Random House	Fantasy	2020-06-16 12:40:04.355977	2020-06-16 12:40:04.355977
20	Far From the Madding Crowd	Miss Ollie Hessel	André Deutsch	Fiction in verse	2020-06-16 12:40:04.357403	2020-06-16 12:40:04.357403
21	Death Be Not Proud	Jamaal Runolfsson	E. P. Dutton	Short story	2020-06-16 12:40:04.35889	2020-06-16 12:40:04.35889
22	Noli Me Tangere	Coretta Skiles	Bella Books	Legend	2020-06-16 12:40:04.360237	2020-06-16 12:40:04.360237
23	The Little Foxes	Edmundo Hyatt	Seagull Books	Historical fiction	2020-06-16 12:40:04.361715	2020-06-16 12:40:04.361715
24	The Moving Finger	Nanette Greenfelder MD	Library of America	Fiction narrative	2020-06-16 12:40:04.363129	2020-06-16 12:40:04.363129
25	An Acceptable Time	Ulysses Quigley	Haynes Manuals	Science fiction	2020-06-16 12:40:04.364556	2020-06-16 12:40:04.364556
26	After Many a Summer Dies the Swan	Tonia Feest III	T & T Clark	Realistic fiction	2020-06-16 12:40:04.365997	2020-06-16 12:40:04.365997
27	Consider Phlebas	Brice Crooks	Booktrope	Humor	2020-06-16 12:40:04.367366	2020-06-16 12:40:04.367366
28	The Moving Finger	Elana Muller	Firebrand Books	Legend	2020-06-16 12:40:04.368835	2020-06-16 12:40:04.368835
29	The Monkey's Raincoat	Elliott Koelpin	Parachute Publishing	Realistic fiction	2020-06-16 12:40:04.37279	2020-06-16 12:40:04.37279
30	Terrible Swift Sword	Cruz Jacobs	Fairview Press	Speech	2020-06-16 12:40:04.374331	2020-06-16 12:40:04.374331
31	As I Lay Dying	Roderick Stracke	George Newnes	Historical fiction	2020-06-16 12:40:04.375693	2020-06-16 12:40:04.375693
32	Look Homeward, Angel	Miss Toi DuBuque	Velazquez Press	Fiction in verse	2020-06-16 12:40:04.377108	2020-06-16 12:40:04.377108
33	An Evil Cradling	Frankie Leuschke	Viking Press	Crime/Detective	2020-06-16 12:40:04.378676	2020-06-16 12:40:04.378676
34	A Handful of Dust	Jenifer Hegmann	Athabasca University Press	Speech	2020-06-16 12:40:04.380153	2020-06-16 12:40:04.380153
35	Antic Hay	Breana Marquardt	G. P. Putnam's Sons	Essay	2020-06-16 12:40:04.381529	2020-06-16 12:40:04.381529
36	Time To Murder And Create	Dr. Jacob Lehner	Adis International	Western	2020-06-16 12:40:04.383072	2020-06-16 12:40:04.383072
37	Alone on a Wide, Wide Sea	Delois Schimmel	Holt McDougal	Short story	2020-06-16 12:40:04.384669	2020-06-16 12:40:04.384669
38	Gone with the Wind	Will Rogahn	NavPress	Metafiction	2020-06-16 12:40:04.386107	2020-06-16 12:40:04.386107
39	O Jerusalem!	Darell Becker	J. M. Dent	Speech	2020-06-16 12:40:04.387521	2020-06-16 12:40:04.387521
40	The Doors of Perception	Grant Heller	DAW Books	Mythopoeia	2020-06-16 12:40:04.388983	2020-06-16 12:40:04.388983
41	The Golden Apples of the Sun	Tommy Reichert	George H. Doran Company	Horror	2020-06-16 12:40:04.390319	2020-06-16 12:40:04.390319
42	Dulce et Decorum Est	Cherish Stokes	Caister Academic Press	Folklore	2020-06-16 12:40:04.391687	2020-06-16 12:40:04.391687
43	The Line of Beauty	Rocco Leannon	United States Government Publishing Office	Textbook	2020-06-16 12:40:04.393262	2020-06-16 12:40:04.393262
44	To Your Scattered Bodies Go	Stephan Ward	Jarrolds Publishing	Biography/Autobiography	2020-06-16 12:40:04.394776	2020-06-16 12:40:04.394776
45	Dance Dance Dance	Mrs. Cliff Rohan	Shuter & Shooter Publishers	Short story	2020-06-16 12:40:04.396234	2020-06-16 12:40:04.396234
46	No Longer at Ease	Dr. Lindsey Kreiger	Tate Publishing & Enterprises	Historical fiction	2020-06-16 12:40:04.397768	2020-06-16 12:40:04.397768
47	That Hideous Strength	Concepcion Hackett	Banner of Truth Trust	Mythology	2020-06-16 12:40:04.399195	2020-06-16 12:40:04.399195
48	The Mermaids Singing	Mana Rice	Earthscan	Folklore	2020-06-16 12:40:04.400661	2020-06-16 12:40:04.400661
49	Dance Dance Dance	Maurice Stark	Atlantic Books	Horror	2020-06-16 12:40:04.402093	2020-06-16 12:40:04.402093
50	The Way Through the Woods	Kami Rodriguez	University of Michigan Press	Crime/Detective	2020-06-16 12:40:04.403467	2020-06-16 12:40:04.403467
51	This Side of Paradise	Cornell Ryan	Shire Books	Fantasy	2020-06-16 12:40:04.404868	2020-06-16 12:40:04.404868
52	Gone with the Wind	Dr. Angelena McClure	Anvil Press Poetry	Fanfiction	2020-06-16 12:40:04.406362	2020-06-16 12:40:04.406362
53	Jesting Pilate	Shanika Wilkinson II	Lethe Press	Reference book	2020-06-16 12:40:04.407938	2020-06-16 12:40:04.407938
54	In a Glass Darkly	Suk Klocko	Manning Publications	Mythology	2020-06-16 12:40:04.409396	2020-06-16 12:40:04.409396
55	Stranger in a Strange Land	Maxima Gibson	Atlantic Books	Fiction in verse	2020-06-16 12:40:04.410761	2020-06-16 12:40:04.410761
56	Look to Windward	Reyes Tillman	New Directions Publishing	Fable	2020-06-16 12:40:04.412219	2020-06-16 12:40:04.412219
57	In Dubious Battle	Bethel Spencer	Jarrolds Publishing	Horror	2020-06-16 12:40:04.413648	2020-06-16 12:40:04.413648
58	No Country for Old Men	Classie Monahan	Brill Publishers	Fiction narrative	2020-06-16 12:40:04.415053	2020-06-16 12:40:04.415053
59	Beneath the Bleeding	Miquel VonRueden Jr.	New Directions Publishing	Fantasy	2020-06-16 12:40:04.416372	2020-06-16 12:40:04.416372
60	Cover Her Face	Antonia Kassulke	St. Martin's Press	Tall tale	2020-06-16 12:40:04.417915	2020-06-16 12:40:04.417915
61	Oh! To be in England	Jaime Kautzer	Atlas Press	Western	2020-06-16 12:40:04.419259	2020-06-16 12:40:04.419259
62	This Lime Tree Bower	Kristofer Armstrong	Carcanet Press	Horror	2020-06-16 12:40:04.420672	2020-06-16 12:40:04.420672
63	The Torment of Others	Deshawn D'Amore	Elsevier	Fanfiction	2020-06-16 12:40:04.422037	2020-06-16 12:40:04.422037
64	The Skull Beneath the Skin	Kimber Bruen	Virago Press	Narrative nonfiction	2020-06-16 12:40:04.423466	2020-06-16 12:40:04.423466
65	Alone on a Wide, Wide Sea	Marquetta Padberg	Boydell & Brewer	Textbook	2020-06-16 12:40:04.425012	2020-06-16 12:40:04.425012
66	For Whom the Bell Tolls	Wendy Barrows	Verso Books	Fairy tale	2020-06-16 12:40:04.426357	2020-06-16 12:40:04.426357
67	The Wealth of Nations	Mr. Tory Miller	Book Works	Humor	2020-06-16 12:40:04.427874	2020-06-16 12:40:04.427874
68	This Side of Paradise	Sabine Hirthe	Atheneum Books	Textbook	2020-06-16 12:40:04.429687	2020-06-16 12:40:04.429687
69	Françoise Sagan	Krystina Bahringer	Fearless Books	Tall tale	2020-06-16 12:40:04.43122	2020-06-16 12:40:04.43122
70	Tender Is the Night	Bernard Dietrich	Orion Books	Essay	2020-06-16 12:40:04.4326	2020-06-16 12:40:04.4326
71	Vile Bodies	Arica Herzog	McFarland & Company	Biography/Autobiography	2020-06-16 12:40:04.43413	2020-06-16 12:40:04.43413
72	A Confederacy of Dunces	Rey Parker	Library of America	Essay	2020-06-16 12:40:04.435537	2020-06-16 12:40:04.435537
73	To Say Nothing of the Dog	Jewel Schroeder	Holland Park Press	Folklore	2020-06-16 12:40:04.436925	2020-06-16 12:40:04.436925
74	Jesting Pilate	Mr. Dee Mayert	Eel Pie Publishing	Narrative nonfiction	2020-06-16 12:40:04.43838	2020-06-16 12:40:04.43838
75	Infinite Jest	Marcellus Schinner	Library of America	Crime/Detective	2020-06-16 12:40:04.439978	2020-06-16 12:40:04.439978
76	Paths of Glory	Gerald Yundt	Chatto and Windus	Western	2020-06-16 12:40:04.441481	2020-06-16 12:40:04.441481
77	Gone with the Wind	Mr. Claud Marvin	Addison-Wesley	Mythology	2020-06-16 12:40:04.442919	2020-06-16 12:40:04.442919
78	Bury My Heart at Wounded Knee	Mrs. Hilario Orn	Nonesuch Press	Fiction narrative	2020-06-16 12:40:04.444549	2020-06-16 12:40:04.444549
79	Fear and Trembling	Tifany Carter Jr.	Random House	Science fiction	2020-06-16 12:40:04.446161	2020-06-16 12:40:04.446161
80	Such, Such Were the Joys	Ramiro Morar	Allen Ltd	Fable	2020-06-16 12:40:04.447694	2020-06-16 12:40:04.447694
81	To Say Nothing of the Dog	Miss Hipolito Gleason	Chronicle Books	Mystery	2020-06-16 12:40:04.449136	2020-06-16 12:40:04.449136
82	A Passage to India	Yadira Berge	Butterworth-Heinemann	Mythology	2020-06-16 12:40:04.450543	2020-06-16 12:40:04.450543
83	Surprised by Joy	Gerri Bartell	New Holland Publishers	Fanfiction	2020-06-16 12:40:04.452039	2020-06-16 12:40:04.452039
84	The Grapes of Wrath	Norris Kiehn	Velazquez Press	Biography/Autobiography	2020-06-16 12:40:04.453489	2020-06-16 12:40:04.453489
85	The Violent Bear It Away	Stacey Waelchi	Nonesuch Press	Narrative nonfiction	2020-06-16 12:40:04.454836	2020-06-16 12:40:04.454836
86	An Instant In The Wind	Mrs. Domenic Hackett	Harcourt Trade Publishers	Classic	2020-06-16 12:40:04.456288	2020-06-16 12:40:04.456288
87	For Whom the Bell Tolls	Charita Jones II	Adis International	Comic/Graphic Novel	2020-06-16 12:40:04.457676	2020-06-16 12:40:04.457676
88	The Grapes of Wrath	Mr. Luigi Morar	Reed Publishing	Fairy tale	2020-06-16 12:40:04.459018	2020-06-16 12:40:04.459018
89	The Wind's Twelve Quarters	Miss King McKenzie	Athabasca University Press	Comic/Graphic Novel	2020-06-16 12:40:04.460381	2020-06-16 12:40:04.460381
90	Clouds of Witness	Mrs. Wes Hudson	Pathfinder Press	Humor	2020-06-16 12:40:04.461876	2020-06-16 12:40:04.461876
91	The Monkey's Raincoat	Jeromy Ruecker	Focal Press	Tall tale	2020-06-16 12:40:04.463258	2020-06-16 12:40:04.463258
92	An Acceptable Time	Royce Bruen	Pen and Sword Books	Classic	2020-06-16 12:40:04.464561	2020-06-16 12:40:04.464561
93	Now Sleeps the Crimson Petal	Tawana Von	Kensington Books	Mythology	2020-06-16 12:40:04.465942	2020-06-16 12:40:04.465942
94	In Death Ground	Alissa O'Conner	George H. Doran Company	Western	2020-06-16 12:40:04.46728	2020-06-16 12:40:04.46728
95	Recalled to Life	Israel Kirlin	Bantam Books	Fable	2020-06-16 12:40:04.468586	2020-06-16 12:40:04.468586
96	Fear and Trembling	Elizabet Volkman	Nauka	Comic/Graphic Novel	2020-06-16 12:40:04.469855	2020-06-16 12:40:04.469855
97	Vile Bodies	Dr. Wai Will	Mapin Publishing	Fanfiction	2020-06-16 12:40:04.471137	2020-06-16 12:40:04.471137
98	The Moon by Night	Collette Ferry	Harvill Press at Random House	Fairy tale	2020-06-16 12:40:04.472545	2020-06-16 12:40:04.472545
99	Cabbages and Kings	Siu Hudson	Cloverdale Corporation	Short story	2020-06-16 12:40:04.473903	2020-06-16 12:40:04.473903
100	Dance Dance Dance	Kellye Funk	Cambridge University Press	Horror	2020-06-16 12:40:04.47519	2020-06-16 12:40:04.47519
101	The Doors of Perception	Luvenia Yundt	Mainstream Publishing	Legend	2020-06-16 12:40:04.476607	2020-06-16 12:40:04.476607
102	In Death Ground	Rachell Walker	Eerdmans Publishing	Mythology	2020-06-16 12:40:04.47803	2020-06-16 12:40:04.47803
103	Dance Dance Dance	Kelley Shields	New English Library	Western	2020-06-16 12:40:04.479468	2020-06-16 12:40:04.479468
104	A Swiftly Tilting Planet	Garth Stamm	O'Reilly Media	Fanfiction	2020-06-16 12:40:04.480983	2020-06-16 12:40:04.480983
105	The Last Enemy	Dalton Erdman	Pathfinder Press	Narrative nonfiction	2020-06-16 12:40:04.482448	2020-06-16 12:40:04.482448
106	Ego Dominus Tuus	Malcolm Howe	Parragon	Essay	2020-06-16 12:40:04.484006	2020-06-16 12:40:04.484006
107	Number the Stars	Mr. Gregory Cruickshank	Newnes	Comic/Graphic Novel	2020-06-16 12:40:04.485441	2020-06-16 12:40:04.485441
108	Arms and the Man	Jeffery Emmerich	New Holland Publishers	Fiction narrative	2020-06-16 12:40:04.487152	2020-06-16 12:40:04.487152
109	The Last Enemy	Lura Zieme	Churchill Livingstone	Classic	2020-06-16 12:40:04.488902	2020-06-16 12:40:04.488902
110	Everything is Illuminated	Norman Paucek	Viking Press	Speech	2020-06-16 12:40:04.490636	2020-06-16 12:40:04.490636
111	A Monstrous Regiment of Women	Diego Harber II	Orchard Books	Fanfiction	2020-06-16 12:40:04.492332	2020-06-16 12:40:04.492332
112	What's Become of Waring	Matt Shanahan DDS	Gefen Publishing House	Fiction narrative	2020-06-16 12:40:04.49422	2020-06-16 12:40:04.49422
113	Rosemary Sutcliff	Tiffaney Gulgowski I	André Deutsch	Textbook	2020-06-16 12:40:04.496072	2020-06-16 12:40:04.496072
114	Cover Her Face	Jerlene Langosh Jr.	Tate Publishing & Enterprises	Reference book	2020-06-16 12:40:04.497947	2020-06-16 12:40:04.497947
115	By Grand Central Station I Sat Down and Wept	Anita Schmitt	University of Michigan Press	Fanfiction	2020-06-16 12:40:04.499803	2020-06-16 12:40:04.499803
116	Jacob Have I Loved	Ms. Marinda Welch	Pantheon Books at Random House	Tall tale	2020-06-16 12:40:04.50146	2020-06-16 12:40:04.50146
117	If I Forget Thee Jerusalem	Ms. Antonio Zboncak	Leafwood Publishers	Classic	2020-06-16 12:40:04.503154	2020-06-16 12:40:04.503154
118	The Grapes of Wrath	Shavon Sawayn	New Holland Publishers	Science fiction	2020-06-16 12:40:04.504816	2020-06-16 12:40:04.504816
119	In a Glass Darkly	Breann Paucek	HarperTrophy	Science fiction	2020-06-16 12:40:04.506577	2020-06-16 12:40:04.506577
120	A Swiftly Tilting Planet	Ila Bernier	Charles Scribner's Sons	Crime/Detective	2020-06-16 12:40:04.508241	2020-06-16 12:40:04.508241
121	O Pioneers!	Wilton Baumbach	Cengage Learning	Mythology	2020-06-16 12:40:04.50991	2020-06-16 12:40:04.50991
122	The World, the Flesh and the Devil	Lora Marvin	Churchill Livingstone	Fiction narrative	2020-06-16 12:40:04.511831	2020-06-16 12:40:04.511831
123	The Cricket on the Hearth	Kurt Kulas	Tate Publishing & Enterprises	Short story	2020-06-16 12:40:04.513524	2020-06-16 12:40:04.513524
124	In a Glass Darkly	Micaela Jaskolski	Mandrake of Oxford	Crime/Detective	2020-06-16 12:40:04.515241	2020-06-16 12:40:04.515241
125	The Man Within	Nicki Berge	Naiad Press	Fiction narrative	2020-06-16 12:40:04.516827	2020-06-16 12:40:04.516827
126	No Highway	Jaleesa Cruickshank MD	Bloomsbury Publishing Plc	Fable	2020-06-16 12:40:04.518515	2020-06-16 12:40:04.518515
127	Frequent Hearses	Dallas Bailey	Edupedia Publications	Reference book	2020-06-16 12:40:04.520128	2020-06-16 12:40:04.520128
128	Ah, Wilderness!	Riley Kiehn	Pecan Grove Press	Mythology	2020-06-16 12:40:04.521827	2020-06-16 12:40:04.521827
129	Shall not Perish	Dulce Langworth	Kogan Page	Mystery	2020-06-16 12:40:04.523461	2020-06-16 12:40:04.523461
130	Time of our Darkness	Gwenn Champlin MD	Fairview Press	Fiction narrative	2020-06-16 12:40:04.52519	2020-06-16 12:40:04.52519
131	The Moon by Night	Patrica Skiles	McFarland & Company	Narrative nonfiction	2020-06-16 12:40:04.526891	2020-06-16 12:40:04.526891
132	The Moving Finger	Trent Jakubowski	Hawthorne Books	Mythology	2020-06-16 12:40:04.528949	2020-06-16 12:40:04.528949
133	Wildfire at Midnight	Ben Lindgren	Booktrope	Crime/Detective	2020-06-16 12:40:04.530787	2020-06-16 12:40:04.530787
134	A Confederacy of Dunces	Ian Heathcote	D. Appleton & Company	Crime/Detective	2020-06-16 12:40:04.532646	2020-06-16 12:40:04.532646
135	Some Buried Caesar	Clifford Wiza	No Starch Press	Mythopoeia	2020-06-16 12:40:04.534427	2020-06-16 12:40:04.534427
136	That Hideous Strength	Simonne Zulauf	Carcanet Press	Speech	2020-06-16 12:40:04.536247	2020-06-16 12:40:04.536247
137	The Parliament of Man	Beau Becker	Borgo Press	Mythology	2020-06-16 12:40:04.537948	2020-06-16 12:40:04.537948
138	Nectar in a Sieve	Shannon Grady	Carnegie Mellon University Press	Legend	2020-06-16 12:40:04.53972	2020-06-16 12:40:04.53972
139	Unweaving the Rainbow	Leonor Ryan	Ziff Davis Media	Mystery	2020-06-16 12:40:04.541638	2020-06-16 12:40:04.541638
140	The Way of All Flesh	Pearlene Price	Charles Scribner's Sons	Fiction in verse	2020-06-16 12:40:04.543325	2020-06-16 12:40:04.543325
141	Paths of Glory	Lou Mitchell I	Shoemaker & Hoard Publishers	Reference book	2020-06-16 12:40:04.545306	2020-06-16 12:40:04.545306
142	In a Glass Darkly	Chara Bauch	Cisco Press	Speech	2020-06-16 12:40:04.547133	2020-06-16 12:40:04.547133
143	A Time to Kill	Ms. Riley Goldner	Tate Publishing & Enterprises	Horror	2020-06-16 12:40:04.549027	2020-06-16 12:40:04.549027
144	A Time to Kill	Miss Shonta Lang	Chambers Harrap	Essay	2020-06-16 12:40:04.550882	2020-06-16 12:40:04.550882
145	Consider the Lilies	Carissa Herman	Kodansha	Fantasy	2020-06-16 12:40:04.55278	2020-06-16 12:40:04.55278
146	Paths of Glory	Stanford Steuber II	Liberty Fund	Folklore	2020-06-16 12:40:04.554536	2020-06-16 12:40:04.554536
147	Jesting Pilate	Minh Brakus	Manor House Publishing	Humor	2020-06-16 12:40:04.556384	2020-06-16 12:40:04.556384
148	O Jerusalem!	Gilberto Stroman	HarperCollins	Folklore	2020-06-16 12:40:04.558168	2020-06-16 12:40:04.558168
149	Sleep the Brave	Mr. Loyd O'Hara	Sams Publishing	Reference book	2020-06-16 12:40:04.560113	2020-06-16 12:40:04.560113
150	When the Green Woods Laugh	Jarrod Torphy	Pen and Sword Books	Legend	2020-06-16 12:40:04.562013	2020-06-16 12:40:04.562013
151	Dulce et Decorum Est	Mr. Carroll Denesik	Holland Park Press	Comic/Graphic Novel	2020-06-16 12:40:04.563874	2020-06-16 12:40:04.563874
152	Of Human Bondage	Odilia Satterfield Sr.	Mapin Publishing	Textbook	2020-06-16 12:40:04.565593	2020-06-16 12:40:04.565593
153	The Mermaids Singing	Mrs. Porfirio Herman	Random House	Narrative nonfiction	2020-06-16 12:40:04.567364	2020-06-16 12:40:04.567364
154	A Darkling Plain	Phil Kohler III	Tartarus Press	Textbook	2020-06-16 12:40:04.569198	2020-06-16 12:40:04.569198
155	To Your Scattered Bodies Go	Sang Kirlin	Carcanet Press	Science fiction	2020-06-16 12:40:04.57105	2020-06-16 12:40:04.57105
156	Frequent Hearses	Sam Harvey	Signet Books	Fanfiction	2020-06-16 12:40:04.572802	2020-06-16 12:40:04.572802
157	Shall not Perish	Mrs. Stefan Konopelski	Nonesuch Press	Suspense/Thriller	2020-06-16 12:40:04.574629	2020-06-16 12:40:04.574629
158	Mr Standfast	Odessa McClure	D. Reidel	Historical fiction	2020-06-16 12:40:04.576364	2020-06-16 12:40:04.576364
159	Have His Carcase	Freddy Abernathy	Allen Ltd	Fairy tale	2020-06-16 12:40:04.578305	2020-06-16 12:40:04.578305
160	For a Breath I Tarry	Maire Heathcote III	Harvard University Press	Fiction narrative	2020-06-16 12:40:04.582796	2020-06-16 12:40:04.582796
161	A Glass of Blessings	Forest Keeling	Papadakis Publisher	Short story	2020-06-16 12:40:04.584452	2020-06-16 12:40:04.584452
162	Oh! To be in England	Ms. Margarite Spinka	DAW Books	Textbook	2020-06-16 12:40:04.585918	2020-06-16 12:40:04.585918
163	Of Human Bondage	Gerald Sporer	Harvard University Press	Folklore	2020-06-16 12:40:04.587512	2020-06-16 12:40:04.587512
164	Of Human Bondage	Asuncion Hoppe	Berkley Books	Western	2020-06-16 12:40:04.588961	2020-06-16 12:40:04.588961
165	Behold the Man	Ms. Denisse Gerhold	Zed Books	Mythology	2020-06-16 12:40:04.590517	2020-06-16 12:40:04.590517
166	The Mermaids Singing	Cary Quigley	Shambhala Publications	Mystery	2020-06-16 12:40:04.592006	2020-06-16 12:40:04.592006
167	In a Dry Season	Bryan Cummings	Cambridge University Press	Folklore	2020-06-16 12:40:04.593571	2020-06-16 12:40:04.593571
168	Nine Coaches Waiting	China Erdman	Naiad Press	Classic	2020-06-16 12:40:04.595318	2020-06-16 12:40:04.595318
169	Look Homeward, Angel	Mr. Sage Lind	New Village Press	Textbook	2020-06-16 12:40:04.596818	2020-06-16 12:40:04.596818
170	Absalom, Absalom!	Cory Langosh	Virago Press	Mythopoeia	2020-06-16 12:40:04.598437	2020-06-16 12:40:04.598437
171	Those Barren Leaves, Thrones, Dominations	Isidra Hettinger	Marion Boyars Publishers	Fiction narrative	2020-06-16 12:40:04.599976	2020-06-16 12:40:04.599976
172	Recalled to Life	Dorsey Stanton	Cengage Learning	Historical fiction	2020-06-16 12:40:04.601448	2020-06-16 12:40:04.601448
173	Down to a Sunless Sea	Elinore McLaughlin Jr.	Random House	Comic/Graphic Novel	2020-06-16 12:40:04.60299	2020-06-16 12:40:04.60299
174	Tiger! Tiger!	Mr. Vince Trantow	G-Unit Books	Fable	2020-06-16 12:40:04.604432	2020-06-16 12:40:04.604432
175	Françoise Sagan	Dorethea Terry	McClelland and Stewart	Folklore	2020-06-16 12:40:04.606031	2020-06-16 12:40:04.606031
176	The Other Side of Silence	Mr. Randolph Schmitt	Hachette Book Group USA	Humor	2020-06-16 12:40:04.607804	2020-06-16 12:40:04.607804
177	Have His Carcase	Joe Larkin	Ballantine Books	Fanfiction	2020-06-16 12:40:04.609773	2020-06-16 12:40:04.609773
178	No Longer at Ease	Napoleon O'Conner	G-Unit Books	Humor	2020-06-16 12:40:04.61183	2020-06-16 12:40:04.61183
179	To Say Nothing of the Dog	Raul Schinner	Bloomsbury Publishing Plc	Tall tale	2020-06-16 12:40:04.613357	2020-06-16 12:40:04.613357
180	The Grapes of Wrath	Ms. Jackie Lindgren	HarperCollins	Speech	2020-06-16 12:40:04.614713	2020-06-16 12:40:04.614713
181	To Sail Beyond the Sunset	Ms. Shawn Strosin	Library of America	Biography/Autobiography	2020-06-16 12:40:04.616343	2020-06-16 12:40:04.616343
182	Some Buried Caesar	Mrs. Dewitt Bartoletti	Libertas Academica	Folklore	2020-06-16 12:40:04.617824	2020-06-16 12:40:04.617824
183	This Lime Tree Bower	Mrs. Ronnie Harber	Orchard Books	Folklore	2020-06-16 12:40:04.619222	2020-06-16 12:40:04.619222
184	A Time to Kill	Irina Flatley DDS	Tartarus Press	Reference book	2020-06-16 12:40:04.620638	2020-06-16 12:40:04.620638
185	Blood's a Rover	Rupert Parker	New English Library	Mythology	2020-06-16 12:40:04.621924	2020-06-16 12:40:04.621924
186	A Passage to India	Venessa Mante	Flame Tree Publishing	Suspense/Thriller	2020-06-16 12:40:04.623454	2020-06-16 12:40:04.623454
187	The Skull Beneath the Skin	Oren Pouros III	Hawthorne Books	Humor	2020-06-16 12:40:04.624837	2020-06-16 12:40:04.624837
188	The Golden Apples of the Sun	Rafael Reichel Jr.	Tachyon Publications	Folklore	2020-06-16 12:40:04.626138	2020-06-16 12:40:04.626138
189	A Many-Splendoured Thing	Troy Leuschke Sr.	United States Government Publishing Office	Fantasy	2020-06-16 12:40:04.627865	2020-06-16 12:40:04.627865
190	Surprised by Joy	Lynn Armstrong	Happy House	Legend	2020-06-16 12:40:04.629699	2020-06-16 12:40:04.629699
191	The Wings of the Dove	Ramon Larkin PhD	Zed Books	Reference book	2020-06-16 12:40:04.631385	2020-06-16 12:40:04.631385
192	Dying of the Light	Prudence Huel	Matthias Media	Textbook	2020-06-16 12:40:04.63295	2020-06-16 12:40:04.63295
193	In a Dry Season	Dr. Rhett O'Keefe	Bloomsbury Publishing Plc	Crime/Detective	2020-06-16 12:40:04.634483	2020-06-16 12:40:04.634483
194	Eyeless in Gaza	Vicente Rolfson	Andrews McMeel Publishing	Horror	2020-06-16 12:40:04.635778	2020-06-16 12:40:04.635778
195	A Monstrous Regiment of Women	Hermelinda King	Kogan Page	Comic/Graphic Novel	2020-06-16 12:40:04.637051	2020-06-16 12:40:04.637051
196	Nectar in a Sieve	Janene Hagenes	Secker & Warburg	Essay	2020-06-16 12:40:04.638321	2020-06-16 12:40:04.638321
197	The Moving Toyshop	Porter Crona	New English Library	Historical fiction	2020-06-16 12:40:04.639508	2020-06-16 12:40:04.639508
198	By Grand Central Station I Sat Down and Wept	Antone Ferry	Adis International	Fiction narrative	2020-06-16 12:40:04.640814	2020-06-16 12:40:04.640814
199	That Good Night	Garrett Cummings	Charles Scribner's Sons	Historical fiction	2020-06-16 12:40:04.64209	2020-06-16 12:40:04.64209
200	No Country for Old Men	Enid Schneider	Focal Press	Suspense/Thriller	2020-06-16 12:40:04.643358	2020-06-16 12:40:04.643358
201	The Glory and the Dream	Alita Renner DVM	NavPress	Mythology	2020-06-16 12:40:04.644826	2020-06-16 12:40:04.644826
202	Waiting for the Barbarians	Milo Terry MD	Pan Books	Horror	2020-06-16 12:40:04.64643	2020-06-16 12:40:04.64643
203	Number the Stars	Nancy Fadel	Legend Books	Suspense/Thriller	2020-06-16 12:40:04.64796	2020-06-16 12:40:04.64796
204	The Yellow Meads of Asphodel	Britteny Barrows	Black Sparrow Books	Biography/Autobiography	2020-06-16 12:40:04.649369	2020-06-16 12:40:04.649369
205	Such, Such Were the Joys	Cheryl Morar	Chambers Harrap	Short story	2020-06-16 12:40:04.651338	2020-06-16 12:40:04.651338
206	To Sail Beyond the Sunset	Chelsey Schumm MD	Cambridge University Press	Speech	2020-06-16 12:40:04.653183	2020-06-16 12:40:04.653183
207	A Time to Kill	Xavier Kuvalis	Open Court Publishing Company	Western	2020-06-16 12:40:04.654748	2020-06-16 12:40:04.654748
208	No Longer at Ease	Tasia Windler	Ten Speed Press	Tall tale	2020-06-16 12:40:04.656246	2020-06-16 12:40:04.656246
209	Edna O'Brien	Miki Koss	HarperCollins	Crime/Detective	2020-06-16 12:40:04.657715	2020-06-16 12:40:04.657715
210	A Confederacy of Dunces	Mr. John Mosciski	Macmillan Publishers	Legend	2020-06-16 12:40:04.659064	2020-06-16 12:40:04.659064
211	No Country for Old Men	Ahmad Blanda	Emerald Group Publishing	Mythology	2020-06-16 12:40:04.660471	2020-06-16 12:40:04.660471
212	The Man Within	Kassandra Gulgowski	Parachute Publishing	Comic/Graphic Novel	2020-06-16 12:40:04.66182	2020-06-16 12:40:04.66182
213	Behold the Man	Mrs. Cruz Jacobson	Libertas Academica	Narrative nonfiction	2020-06-16 12:40:04.66328	2020-06-16 12:40:04.66328
214	The Curious Incident of the Dog in the Night-Time	Lin Koch V	Da Capo Press	Mystery	2020-06-16 12:40:04.664941	2020-06-16 12:40:04.664941
215	Fame Is the Spur	Rhett Reinger	Vintage Books at Random House	Fairy tale	2020-06-16 12:40:04.666511	2020-06-16 12:40:04.666511
216	Tender Is the Night	Kristan Kautzer	Leafwood Publishers	Fable	2020-06-16 12:40:04.668	2020-06-16 12:40:04.668
217	Now Sleeps the Crimson Petal	Kyle Miller	University of Michigan Press	Narrative nonfiction	2020-06-16 12:40:04.669578	2020-06-16 12:40:04.669578
218	The Moving Finger	Neomi Gerhold	Parachute Publishing	Mystery	2020-06-16 12:40:04.670952	2020-06-16 12:40:04.670952
219	Many Waters	Rosita Pfannerstill	Harvill Press at Random House	Fantasy	2020-06-16 12:40:04.672205	2020-06-16 12:40:04.672205
220	Far From the Madding Crowd	Miss Ollie Hessel	André Deutsch	Fiction in verse	2020-06-16 12:40:04.673441	2020-06-16 12:40:04.673441
221	Death Be Not Proud	Jamaal Runolfsson	E. P. Dutton	Short story	2020-06-16 12:40:04.674643	2020-06-16 12:40:04.674643
222	Noli Me Tangere	Coretta Skiles	Bella Books	Legend	2020-06-16 12:40:04.675984	2020-06-16 12:40:04.675984
223	The Little Foxes	Edmundo Hyatt	Seagull Books	Historical fiction	2020-06-16 12:40:04.677293	2020-06-16 12:40:04.677293
224	The Moving Finger	Nanette Greenfelder MD	Library of America	Fiction narrative	2020-06-16 12:40:04.678614	2020-06-16 12:40:04.678614
225	An Acceptable Time	Ulysses Quigley	Haynes Manuals	Science fiction	2020-06-16 12:40:04.67998	2020-06-16 12:40:04.67998
226	After Many a Summer Dies the Swan	Tonia Feest III	T & T Clark	Realistic fiction	2020-06-16 12:40:04.681201	2020-06-16 12:40:04.681201
227	Consider Phlebas	Brice Crooks	Booktrope	Humor	2020-06-16 12:40:04.682459	2020-06-16 12:40:04.682459
228	The Moving Finger	Elana Muller	Firebrand Books	Legend	2020-06-16 12:40:04.683743	2020-06-16 12:40:04.683743
229	The Monkey's Raincoat	Elliott Koelpin	Parachute Publishing	Realistic fiction	2020-06-16 12:40:04.685043	2020-06-16 12:40:04.685043
230	Terrible Swift Sword	Cruz Jacobs	Fairview Press	Speech	2020-06-16 12:40:04.686422	2020-06-16 12:40:04.686422
231	As I Lay Dying	Roderick Stracke	George Newnes	Historical fiction	2020-06-16 12:40:04.687641	2020-06-16 12:40:04.687641
232	Look Homeward, Angel	Miss Toi DuBuque	Velazquez Press	Fiction in verse	2020-06-16 12:40:04.688818	2020-06-16 12:40:04.688818
233	An Evil Cradling	Frankie Leuschke	Viking Press	Crime/Detective	2020-06-16 12:40:04.690048	2020-06-16 12:40:04.690048
234	A Handful of Dust	Jenifer Hegmann	Athabasca University Press	Speech	2020-06-16 12:40:04.691348	2020-06-16 12:40:04.691348
235	Antic Hay	Breana Marquardt	G. P. Putnam's Sons	Essay	2020-06-16 12:40:04.692599	2020-06-16 12:40:04.692599
236	Time To Murder And Create	Dr. Jacob Lehner	Adis International	Western	2020-06-16 12:40:04.693834	2020-06-16 12:40:04.693834
237	Alone on a Wide, Wide Sea	Delois Schimmel	Holt McDougal	Short story	2020-06-16 12:40:04.695209	2020-06-16 12:40:04.695209
238	Gone with the Wind	Will Rogahn	NavPress	Metafiction	2020-06-16 12:40:04.69644	2020-06-16 12:40:04.69644
239	O Jerusalem!	Darell Becker	J. M. Dent	Speech	2020-06-16 12:40:04.69776	2020-06-16 12:40:04.69776
240	The Doors of Perception	Grant Heller	DAW Books	Mythopoeia	2020-06-16 12:40:04.699132	2020-06-16 12:40:04.699132
241	The Golden Apples of the Sun	Tommy Reichert	George H. Doran Company	Horror	2020-06-16 12:40:04.700861	2020-06-16 12:40:04.700861
242	Dulce et Decorum Est	Cherish Stokes	Caister Academic Press	Folklore	2020-06-16 12:40:04.702424	2020-06-16 12:40:04.702424
243	The Line of Beauty	Rocco Leannon	United States Government Publishing Office	Textbook	2020-06-16 12:40:04.703716	2020-06-16 12:40:04.703716
244	To Your Scattered Bodies Go	Stephan Ward	Jarrolds Publishing	Biography/Autobiography	2020-06-16 12:40:04.705038	2020-06-16 12:40:04.705038
245	Dance Dance Dance	Mrs. Cliff Rohan	Shuter & Shooter Publishers	Short story	2020-06-16 12:40:04.70632	2020-06-16 12:40:04.70632
246	No Longer at Ease	Dr. Lindsey Kreiger	Tate Publishing & Enterprises	Historical fiction	2020-06-16 12:40:04.707572	2020-06-16 12:40:04.707572
247	That Hideous Strength	Concepcion Hackett	Banner of Truth Trust	Mythology	2020-06-16 12:40:04.708833	2020-06-16 12:40:04.708833
248	The Mermaids Singing	Mana Rice	Earthscan	Folklore	2020-06-16 12:40:04.710109	2020-06-16 12:40:04.710109
249	Dance Dance Dance	Maurice Stark	Atlantic Books	Horror	2020-06-16 12:40:04.711334	2020-06-16 12:40:04.711334
250	The Way Through the Woods	Kami Rodriguez	University of Michigan Press	Crime/Detective	2020-06-16 12:40:04.712559	2020-06-16 12:40:04.712559
251	This Side of Paradise	Cornell Ryan	Shire Books	Fantasy	2020-06-16 12:40:04.713769	2020-06-16 12:40:04.713769
252	Gone with the Wind	Dr. Angelena McClure	Anvil Press Poetry	Fanfiction	2020-06-16 12:40:04.715107	2020-06-16 12:40:04.715107
253	Jesting Pilate	Shanika Wilkinson II	Lethe Press	Reference book	2020-06-16 12:40:04.71628	2020-06-16 12:40:04.71628
254	In a Glass Darkly	Suk Klocko	Manning Publications	Mythology	2020-06-16 12:40:04.717497	2020-06-16 12:40:04.717497
255	Stranger in a Strange Land	Maxima Gibson	Atlantic Books	Fiction in verse	2020-06-16 12:40:04.718644	2020-06-16 12:40:04.718644
256	Look to Windward	Reyes Tillman	New Directions Publishing	Fable	2020-06-16 12:40:04.71981	2020-06-16 12:40:04.71981
257	In Dubious Battle	Bethel Spencer	Jarrolds Publishing	Horror	2020-06-16 12:40:04.721059	2020-06-16 12:40:04.721059
258	No Country for Old Men	Classie Monahan	Brill Publishers	Fiction narrative	2020-06-16 12:40:04.722141	2020-06-16 12:40:04.722141
259	Beneath the Bleeding	Miquel VonRueden Jr.	New Directions Publishing	Fantasy	2020-06-16 12:40:04.723264	2020-06-16 12:40:04.723264
260	Cover Her Face	Antonia Kassulke	St. Martin's Press	Tall tale	2020-06-16 12:40:04.724387	2020-06-16 12:40:04.724387
261	Oh! To be in England	Jaime Kautzer	Atlas Press	Western	2020-06-16 12:40:04.725441	2020-06-16 12:40:04.725441
262	This Lime Tree Bower	Kristofer Armstrong	Carcanet Press	Horror	2020-06-16 12:40:04.726589	2020-06-16 12:40:04.726589
263	The Torment of Others	Deshawn D'Amore	Elsevier	Fanfiction	2020-06-16 12:40:04.72767	2020-06-16 12:40:04.72767
264	The Skull Beneath the Skin	Kimber Bruen	Virago Press	Narrative nonfiction	2020-06-16 12:40:04.728783	2020-06-16 12:40:04.728783
265	Alone on a Wide, Wide Sea	Marquetta Padberg	Boydell & Brewer	Textbook	2020-06-16 12:40:04.729908	2020-06-16 12:40:04.729908
266	For Whom the Bell Tolls	Wendy Barrows	Verso Books	Fairy tale	2020-06-16 12:40:04.731023	2020-06-16 12:40:04.731023
267	The Wealth of Nations	Mr. Tory Miller	Book Works	Humor	2020-06-16 12:40:04.732206	2020-06-16 12:40:04.732206
268	This Side of Paradise	Sabine Hirthe	Atheneum Books	Textbook	2020-06-16 12:40:04.733563	2020-06-16 12:40:04.733563
269	Françoise Sagan	Krystina Bahringer	Fearless Books	Tall tale	2020-06-16 12:40:04.734734	2020-06-16 12:40:04.734734
270	Tender Is the Night	Bernard Dietrich	Orion Books	Essay	2020-06-16 12:40:04.735955	2020-06-16 12:40:04.735955
271	Vile Bodies	Arica Herzog	McFarland & Company	Biography/Autobiography	2020-06-16 12:40:04.737119	2020-06-16 12:40:04.737119
272	A Confederacy of Dunces	Rey Parker	Library of America	Essay	2020-06-16 12:40:04.738299	2020-06-16 12:40:04.738299
273	To Say Nothing of the Dog	Jewel Schroeder	Holland Park Press	Folklore	2020-06-16 12:40:04.739529	2020-06-16 12:40:04.739529
274	Jesting Pilate	Mr. Dee Mayert	Eel Pie Publishing	Narrative nonfiction	2020-06-16 12:40:04.740634	2020-06-16 12:40:04.740634
275	Infinite Jest	Marcellus Schinner	Library of America	Crime/Detective	2020-06-16 12:40:04.741771	2020-06-16 12:40:04.741771
276	Paths of Glory	Gerald Yundt	Chatto and Windus	Western	2020-06-16 12:40:04.742926	2020-06-16 12:40:04.742926
277	Gone with the Wind	Mr. Claud Marvin	Addison-Wesley	Mythology	2020-06-16 12:40:04.744088	2020-06-16 12:40:04.744088
278	Bury My Heart at Wounded Knee	Mrs. Hilario Orn	Nonesuch Press	Fiction narrative	2020-06-16 12:40:04.745238	2020-06-16 12:40:04.745238
279	Fear and Trembling	Tifany Carter Jr.	Random House	Science fiction	2020-06-16 12:40:04.746532	2020-06-16 12:40:04.746532
280	Such, Such Were the Joys	Ramiro Morar	Allen Ltd	Fable	2020-06-16 12:40:04.747756	2020-06-16 12:40:04.747756
281	To Say Nothing of the Dog	Miss Hipolito Gleason	Chronicle Books	Mystery	2020-06-16 12:40:04.751509	2020-06-16 12:40:04.751509
282	A Passage to India	Yadira Berge	Butterworth-Heinemann	Mythology	2020-06-16 12:40:04.752907	2020-06-16 12:40:04.752907
283	Surprised by Joy	Gerri Bartell	New Holland Publishers	Fanfiction	2020-06-16 12:40:04.75451	2020-06-16 12:40:04.75451
284	The Grapes of Wrath	Norris Kiehn	Velazquez Press	Biography/Autobiography	2020-06-16 12:40:04.756109	2020-06-16 12:40:04.756109
285	The Violent Bear It Away	Stacey Waelchi	Nonesuch Press	Narrative nonfiction	2020-06-16 12:40:04.757596	2020-06-16 12:40:04.757596
286	An Instant In The Wind	Mrs. Domenic Hackett	Harcourt Trade Publishers	Classic	2020-06-16 12:40:04.75908	2020-06-16 12:40:04.75908
287	For Whom the Bell Tolls	Charita Jones II	Adis International	Comic/Graphic Novel	2020-06-16 12:40:04.760422	2020-06-16 12:40:04.760422
288	The Grapes of Wrath	Mr. Luigi Morar	Reed Publishing	Fairy tale	2020-06-16 12:40:04.761719	2020-06-16 12:40:04.761719
289	The Wind's Twelve Quarters	Miss King McKenzie	Athabasca University Press	Comic/Graphic Novel	2020-06-16 12:40:04.762989	2020-06-16 12:40:04.762989
290	Clouds of Witness	Mrs. Wes Hudson	Pathfinder Press	Humor	2020-06-16 12:40:04.764258	2020-06-16 12:40:04.764258
291	The Monkey's Raincoat	Jeromy Ruecker	Focal Press	Tall tale	2020-06-16 12:40:04.765503	2020-06-16 12:40:04.765503
292	An Acceptable Time	Royce Bruen	Pen and Sword Books	Classic	2020-06-16 12:40:04.766789	2020-06-16 12:40:04.766789
293	Now Sleeps the Crimson Petal	Tawana Von	Kensington Books	Mythology	2020-06-16 12:40:04.767912	2020-06-16 12:40:04.767912
294	In Death Ground	Alissa O'Conner	George H. Doran Company	Western	2020-06-16 12:40:04.769003	2020-06-16 12:40:04.769003
295	Recalled to Life	Israel Kirlin	Bantam Books	Fable	2020-06-16 12:40:04.77005	2020-06-16 12:40:04.77005
296	Fear and Trembling	Elizabet Volkman	Nauka	Comic/Graphic Novel	2020-06-16 12:40:04.77117	2020-06-16 12:40:04.77117
297	Vile Bodies	Dr. Wai Will	Mapin Publishing	Fanfiction	2020-06-16 12:40:04.772196	2020-06-16 12:40:04.772196
298	The Moon by Night	Collette Ferry	Harvill Press at Random House	Fairy tale	2020-06-16 12:40:04.773324	2020-06-16 12:40:04.773324
299	Cabbages and Kings	Siu Hudson	Cloverdale Corporation	Short story	2020-06-16 12:40:04.774433	2020-06-16 12:40:04.774433
300	Dance Dance Dance	Kellye Funk	Cambridge University Press	Horror	2020-06-16 12:40:04.775512	2020-06-16 12:40:04.775512
301	The Doors of Perception	Luvenia Yundt	Mainstream Publishing	Legend	2020-06-16 12:40:04.776648	2020-06-16 12:40:04.776648
302	In Death Ground	Rachell Walker	Eerdmans Publishing	Mythology	2020-06-16 12:40:04.77772	2020-06-16 12:40:04.77772
303	Dance Dance Dance	Kelley Shields	New English Library	Western	2020-06-16 12:40:04.778812	2020-06-16 12:40:04.778812
304	A Swiftly Tilting Planet	Garth Stamm	O'Reilly Media	Fanfiction	2020-06-16 12:40:04.780052	2020-06-16 12:40:04.780052
305	The Last Enemy	Dalton Erdman	Pathfinder Press	Narrative nonfiction	2020-06-16 12:40:04.781201	2020-06-16 12:40:04.781201
306	Ego Dominus Tuus	Malcolm Howe	Parragon	Essay	2020-06-16 12:40:04.782375	2020-06-16 12:40:04.782375
307	Number the Stars	Mr. Gregory Cruickshank	Newnes	Comic/Graphic Novel	2020-06-16 12:40:04.783598	2020-06-16 12:40:04.783598
308	Arms and the Man	Jeffery Emmerich	New Holland Publishers	Fiction narrative	2020-06-16 12:40:04.78475	2020-06-16 12:40:04.78475
309	The Last Enemy	Lura Zieme	Churchill Livingstone	Classic	2020-06-16 12:40:04.785858	2020-06-16 12:40:04.785858
310	Everything is Illuminated	Norman Paucek	Viking Press	Speech	2020-06-16 12:40:04.787074	2020-06-16 12:40:04.787074
311	A Monstrous Regiment of Women	Diego Harber II	Orchard Books	Fanfiction	2020-06-16 12:40:04.788257	2020-06-16 12:40:04.788257
312	What's Become of Waring	Matt Shanahan DDS	Gefen Publishing House	Fiction narrative	2020-06-16 12:40:04.789391	2020-06-16 12:40:04.789391
313	Rosemary Sutcliff	Tiffaney Gulgowski I	André Deutsch	Textbook	2020-06-16 12:40:04.790528	2020-06-16 12:40:04.790528
314	Cover Her Face	Jerlene Langosh Jr.	Tate Publishing & Enterprises	Reference book	2020-06-16 12:40:04.791598	2020-06-16 12:40:04.791598
315	By Grand Central Station I Sat Down and Wept	Anita Schmitt	University of Michigan Press	Fanfiction	2020-06-16 12:40:04.792643	2020-06-16 12:40:04.792643
316	Jacob Have I Loved	Ms. Marinda Welch	Pantheon Books at Random House	Tall tale	2020-06-16 12:40:04.793723	2020-06-16 12:40:04.793723
317	If I Forget Thee Jerusalem	Ms. Antonio Zboncak	Leafwood Publishers	Classic	2020-06-16 12:40:04.794762	2020-06-16 12:40:04.794762
318	The Grapes of Wrath	Shavon Sawayn	New Holland Publishers	Science fiction	2020-06-16 12:40:04.795885	2020-06-16 12:40:04.795885
319	In a Glass Darkly	Breann Paucek	HarperTrophy	Science fiction	2020-06-16 12:40:04.796984	2020-06-16 12:40:04.796984
320	A Swiftly Tilting Planet	Ila Bernier	Charles Scribner's Sons	Crime/Detective	2020-06-16 12:40:04.798186	2020-06-16 12:40:04.798186
321	O Pioneers!	Wilton Baumbach	Cengage Learning	Mythology	2020-06-16 12:40:04.799959	2020-06-16 12:40:04.799959
322	The World, the Flesh and the Devil	Lora Marvin	Churchill Livingstone	Fiction narrative	2020-06-16 12:40:04.801471	2020-06-16 12:40:04.801471
323	The Cricket on the Hearth	Kurt Kulas	Tate Publishing & Enterprises	Short story	2020-06-16 12:40:04.802626	2020-06-16 12:40:04.802626
324	In a Glass Darkly	Micaela Jaskolski	Mandrake of Oxford	Crime/Detective	2020-06-16 12:40:04.803938	2020-06-16 12:40:04.803938
325	The Man Within	Nicki Berge	Naiad Press	Fiction narrative	2020-06-16 12:40:04.805065	2020-06-16 12:40:04.805065
326	No Highway	Jaleesa Cruickshank MD	Bloomsbury Publishing Plc	Fable	2020-06-16 12:40:04.806249	2020-06-16 12:40:04.806249
327	Frequent Hearses	Dallas Bailey	Edupedia Publications	Reference book	2020-06-16 12:40:04.807394	2020-06-16 12:40:04.807394
328	Ah, Wilderness!	Riley Kiehn	Pecan Grove Press	Mythology	2020-06-16 12:40:04.808468	2020-06-16 12:40:04.808468
329	Shall not Perish	Dulce Langworth	Kogan Page	Mystery	2020-06-16 12:40:04.809688	2020-06-16 12:40:04.809688
330	Time of our Darkness	Gwenn Champlin MD	Fairview Press	Fiction narrative	2020-06-16 12:40:04.810861	2020-06-16 12:40:04.810861
331	The Moon by Night	Patrica Skiles	McFarland & Company	Narrative nonfiction	2020-06-16 12:40:04.811983	2020-06-16 12:40:04.811983
332	The Moving Finger	Trent Jakubowski	Hawthorne Books	Mythology	2020-06-16 12:40:04.813209	2020-06-16 12:40:04.813209
333	Wildfire at Midnight	Ben Lindgren	Booktrope	Crime/Detective	2020-06-16 12:40:04.814332	2020-06-16 12:40:04.814332
334	A Confederacy of Dunces	Ian Heathcote	D. Appleton & Company	Crime/Detective	2020-06-16 12:40:04.815539	2020-06-16 12:40:04.815539
335	Some Buried Caesar	Clifford Wiza	No Starch Press	Mythopoeia	2020-06-16 12:40:04.817249	2020-06-16 12:40:04.817249
336	That Hideous Strength	Simonne Zulauf	Carcanet Press	Speech	2020-06-16 12:40:04.818683	2020-06-16 12:40:04.818683
337	The Parliament of Man	Beau Becker	Borgo Press	Mythology	2020-06-16 12:40:04.819856	2020-06-16 12:40:04.819856
338	Nectar in a Sieve	Shannon Grady	Carnegie Mellon University Press	Legend	2020-06-16 12:40:04.82092	2020-06-16 12:40:04.82092
339	Unweaving the Rainbow	Leonor Ryan	Ziff Davis Media	Mystery	2020-06-16 12:40:04.822021	2020-06-16 12:40:04.822021
340	The Way of All Flesh	Pearlene Price	Charles Scribner's Sons	Fiction in verse	2020-06-16 12:40:04.823159	2020-06-16 12:40:04.823159
341	Paths of Glory	Lou Mitchell I	Shoemaker & Hoard Publishers	Reference book	2020-06-16 12:40:04.824407	2020-06-16 12:40:04.824407
342	In a Glass Darkly	Chara Bauch	Cisco Press	Speech	2020-06-16 12:40:04.825467	2020-06-16 12:40:04.825467
343	A Time to Kill	Ms. Riley Goldner	Tate Publishing & Enterprises	Horror	2020-06-16 12:40:04.826528	2020-06-16 12:40:04.826528
344	A Time to Kill	Miss Shonta Lang	Chambers Harrap	Essay	2020-06-16 12:40:04.827606	2020-06-16 12:40:04.827606
345	Consider the Lilies	Carissa Herman	Kodansha	Fantasy	2020-06-16 12:40:04.828664	2020-06-16 12:40:04.828664
346	Paths of Glory	Stanford Steuber II	Liberty Fund	Folklore	2020-06-16 12:40:04.829756	2020-06-16 12:40:04.829756
347	Jesting Pilate	Minh Brakus	Manor House Publishing	Humor	2020-06-16 12:40:04.830799	2020-06-16 12:40:04.830799
348	O Jerusalem!	Gilberto Stroman	HarperCollins	Folklore	2020-06-16 12:40:04.831884	2020-06-16 12:40:04.831884
349	Sleep the Brave	Mr. Loyd O'Hara	Sams Publishing	Reference book	2020-06-16 12:40:04.832971	2020-06-16 12:40:04.832971
350	When the Green Woods Laugh	Jarrod Torphy	Pen and Sword Books	Legend	2020-06-16 12:40:04.834181	2020-06-16 12:40:04.834181
351	Dulce et Decorum Est	Mr. Carroll Denesik	Holland Park Press	Comic/Graphic Novel	2020-06-16 12:40:04.83532	2020-06-16 12:40:04.83532
352	Of Human Bondage	Odilia Satterfield Sr.	Mapin Publishing	Textbook	2020-06-16 12:40:04.836471	2020-06-16 12:40:04.836471
353	The Mermaids Singing	Mrs. Porfirio Herman	Random House	Narrative nonfiction	2020-06-16 12:40:04.837628	2020-06-16 12:40:04.837628
354	A Darkling Plain	Phil Kohler III	Tartarus Press	Textbook	2020-06-16 12:40:04.838785	2020-06-16 12:40:04.838785
355	To Your Scattered Bodies Go	Sang Kirlin	Carcanet Press	Science fiction	2020-06-16 12:40:04.839824	2020-06-16 12:40:04.839824
356	Frequent Hearses	Sam Harvey	Signet Books	Fanfiction	2020-06-16 12:40:04.840929	2020-06-16 12:40:04.840929
357	Shall not Perish	Mrs. Stefan Konopelski	Nonesuch Press	Suspense/Thriller	2020-06-16 12:40:04.842053	2020-06-16 12:40:04.842053
358	Mr Standfast	Odessa McClure	D. Reidel	Historical fiction	2020-06-16 12:40:04.843132	2020-06-16 12:40:04.843132
359	Have His Carcase	Freddy Abernathy	Allen Ltd	Fairy tale	2020-06-16 12:40:04.844215	2020-06-16 12:40:04.844215
360	For a Breath I Tarry	Maire Heathcote III	Harvard University Press	Fiction narrative	2020-06-16 12:40:04.845359	2020-06-16 12:40:04.845359
361	A Glass of Blessings	Forest Keeling	Papadakis Publisher	Short story	2020-06-16 12:40:04.846423	2020-06-16 12:40:04.846423
362	Oh! To be in England	Ms. Margarite Spinka	DAW Books	Textbook	2020-06-16 12:40:04.847466	2020-06-16 12:40:04.847466
363	Of Human Bondage	Gerald Sporer	Harvard University Press	Folklore	2020-06-16 12:40:04.848627	2020-06-16 12:40:04.848627
364	Of Human Bondage	Asuncion Hoppe	Berkley Books	Western	2020-06-16 12:40:04.849716	2020-06-16 12:40:04.849716
365	Behold the Man	Ms. Denisse Gerhold	Zed Books	Mythology	2020-06-16 12:40:04.850748	2020-06-16 12:40:04.850748
366	The Mermaids Singing	Cary Quigley	Shambhala Publications	Mystery	2020-06-16 12:40:04.851899	2020-06-16 12:40:04.851899
367	In a Dry Season	Bryan Cummings	Cambridge University Press	Folklore	2020-06-16 12:40:04.852942	2020-06-16 12:40:04.852942
368	Nine Coaches Waiting	China Erdman	Naiad Press	Classic	2020-06-16 12:40:04.854002	2020-06-16 12:40:04.854002
369	Look Homeward, Angel	Mr. Sage Lind	New Village Press	Textbook	2020-06-16 12:40:04.855048	2020-06-16 12:40:04.855048
370	Absalom, Absalom!	Cory Langosh	Virago Press	Mythopoeia	2020-06-16 12:40:04.856374	2020-06-16 12:40:04.856374
371	Those Barren Leaves, Thrones, Dominations	Isidra Hettinger	Marion Boyars Publishers	Fiction narrative	2020-06-16 12:40:04.857624	2020-06-16 12:40:04.857624
372	Recalled to Life	Dorsey Stanton	Cengage Learning	Historical fiction	2020-06-16 12:40:04.858699	2020-06-16 12:40:04.858699
373	Down to a Sunless Sea	Elinore McLaughlin Jr.	Random House	Comic/Graphic Novel	2020-06-16 12:40:04.859772	2020-06-16 12:40:04.859772
374	Tiger! Tiger!	Mr. Vince Trantow	G-Unit Books	Fable	2020-06-16 12:40:04.860919	2020-06-16 12:40:04.860919
375	Françoise Sagan	Dorethea Terry	McClelland and Stewart	Folklore	2020-06-16 12:40:04.861982	2020-06-16 12:40:04.861982
376	The Other Side of Silence	Mr. Randolph Schmitt	Hachette Book Group USA	Humor	2020-06-16 12:40:04.862987	2020-06-16 12:40:04.862987
377	Have His Carcase	Joe Larkin	Ballantine Books	Fanfiction	2020-06-16 12:40:04.864202	2020-06-16 12:40:04.864202
378	No Longer at Ease	Napoleon O'Conner	G-Unit Books	Humor	2020-06-16 12:40:04.865252	2020-06-16 12:40:04.865252
379	To Say Nothing of the Dog	Raul Schinner	Bloomsbury Publishing Plc	Tall tale	2020-06-16 12:40:04.866304	2020-06-16 12:40:04.866304
380	The Grapes of Wrath	Ms. Jackie Lindgren	HarperCollins	Speech	2020-06-16 12:40:04.86752	2020-06-16 12:40:04.86752
381	To Sail Beyond the Sunset	Ms. Shawn Strosin	Library of America	Biography/Autobiography	2020-06-16 12:40:04.868586	2020-06-16 12:40:04.868586
382	Some Buried Caesar	Mrs. Dewitt Bartoletti	Libertas Academica	Folklore	2020-06-16 12:40:04.869655	2020-06-16 12:40:04.869655
383	This Lime Tree Bower	Mrs. Ronnie Harber	Orchard Books	Folklore	2020-06-16 12:40:04.87074	2020-06-16 12:40:04.87074
384	A Time to Kill	Irina Flatley DDS	Tartarus Press	Reference book	2020-06-16 12:40:04.871861	2020-06-16 12:40:04.871861
385	Blood's a Rover	Rupert Parker	New English Library	Mythology	2020-06-16 12:40:04.873001	2020-06-16 12:40:04.873001
386	A Passage to India	Venessa Mante	Flame Tree Publishing	Suspense/Thriller	2020-06-16 12:40:04.874096	2020-06-16 12:40:04.874096
387	The Skull Beneath the Skin	Oren Pouros III	Hawthorne Books	Humor	2020-06-16 12:40:04.875156	2020-06-16 12:40:04.875156
388	The Golden Apples of the Sun	Rafael Reichel Jr.	Tachyon Publications	Folklore	2020-06-16 12:40:04.876248	2020-06-16 12:40:04.876248
389	A Many-Splendoured Thing	Troy Leuschke Sr.	United States Government Publishing Office	Fantasy	2020-06-16 12:40:04.8775	2020-06-16 12:40:04.8775
390	Surprised by Joy	Lynn Armstrong	Happy House	Legend	2020-06-16 12:40:04.878709	2020-06-16 12:40:04.878709
391	The Wings of the Dove	Ramon Larkin PhD	Zed Books	Reference book	2020-06-16 12:40:04.879827	2020-06-16 12:40:04.879827
392	Dying of the Light	Prudence Huel	Matthias Media	Textbook	2020-06-16 12:40:04.881127	2020-06-16 12:40:04.881127
393	In a Dry Season	Dr. Rhett O'Keefe	Bloomsbury Publishing Plc	Crime/Detective	2020-06-16 12:40:04.882335	2020-06-16 12:40:04.882335
394	Eyeless in Gaza	Vicente Rolfson	Andrews McMeel Publishing	Horror	2020-06-16 12:40:04.883575	2020-06-16 12:40:04.883575
395	A Monstrous Regiment of Women	Hermelinda King	Kogan Page	Comic/Graphic Novel	2020-06-16 12:40:04.886153	2020-06-16 12:40:04.886153
396	Nectar in a Sieve	Janene Hagenes	Secker & Warburg	Essay	2020-06-16 12:40:04.887625	2020-06-16 12:40:04.887625
397	The Moving Toyshop	Porter Crona	New English Library	Historical fiction	2020-06-16 12:40:04.889013	2020-06-16 12:40:04.889013
398	By Grand Central Station I Sat Down and Wept	Antone Ferry	Adis International	Fiction narrative	2020-06-16 12:40:04.890367	2020-06-16 12:40:04.890367
399	That Good Night	Garrett Cummings	Charles Scribner's Sons	Historical fiction	2020-06-16 12:40:04.891815	2020-06-16 12:40:04.891815
400	No Country for Old Men	Enid Schneider	Focal Press	Suspense/Thriller	2020-06-16 12:40:04.893183	2020-06-16 12:40:04.893183
401	No Country for Old Men	Theron Jaskolski	Ladybird Books	Biography/Autobiography	2020-06-16 12:40:04.894627	2020-06-16 12:40:04.894627
402	The Far-Distant Oxus	Dr. Kaye Kreiger	Burns & Oates	Horror	2020-06-16 12:40:04.896033	2020-06-16 12:40:04.896033
403	Blithe Spirit	Loren Kub PhD	Hachette Book Group USA	Classic	2020-06-16 12:40:04.897364	2020-06-16 12:40:04.897364
404	It's a Battlefield	Macy Schowalter	Jarrolds Publishing	Fanfiction	2020-06-16 12:40:04.898856	2020-06-16 12:40:04.898856
405	Recalled to Life	Carey Thiel MD	Nauka	Fiction narrative	2020-06-16 12:40:04.90015	2020-06-16 12:40:04.90015
406	The Other Side of Silence	Rusty Rutherford	Mark Batty Publisher	Science fiction	2020-06-16 12:40:04.901555	2020-06-16 12:40:04.901555
407	The Wind's Twelve Quarters	Afton Langworth	Tachyon Publications	Narrative nonfiction	2020-06-16 12:40:04.902878	2020-06-16 12:40:04.902878
408	The Stars' Tennis Balls	Haley Weber	Ten Speed Press	Speech	2020-06-16 12:40:04.90426	2020-06-16 12:40:04.90426
409	Quo Vadis	Beulah Streich	University of Alaska Press	Textbook	2020-06-16 12:40:04.905828	2020-06-16 12:40:04.905828
410	The Far-Distant Oxus	Linwood Johns	Fearless Books	Speech	2020-06-16 12:40:04.90717	2020-06-16 12:40:04.90717
411	Wildfire at Midnight	Jewell Blanda	Applewood Books	Fiction in verse	2020-06-16 12:40:04.908564	2020-06-16 12:40:04.908564
412	Shall not Perish	Quintin Homenick	Oberon Books	Narrative nonfiction	2020-06-16 12:40:04.909986	2020-06-16 12:40:04.909986
413	Look to Windward	Porter Sanford	Mapin Publishing	Mythology	2020-06-16 12:40:04.911359	2020-06-16 12:40:04.911359
414	Recalled to Life	Luke Nicolas	Tachyon Publications	Fairy tale	2020-06-16 12:40:04.912681	2020-06-16 12:40:04.912681
415	Jacob Have I Loved	Miss Alex Macejkovic	University of Nebraska Press	Reference book	2020-06-16 12:40:04.914127	2020-06-16 12:40:04.914127
416	To Your Scattered Bodies Go	Lashay Hilll	Libertas Academica	Fanfiction	2020-06-16 12:40:04.915469	2020-06-16 12:40:04.915469
417	Let Us Now Praise Famous Men	Maxie Littel	Tammi	Realistic fiction	2020-06-16 12:40:04.91682	2020-06-16 12:40:04.91682
418	Blue Remembered Earth	Abel Anderson	Golden Cockerel Press	Essay	2020-06-16 12:40:04.918074	2020-06-16 12:40:04.918074
419	The Parliament of Man	Ms. Laquanda Herman	Scholastic Press	Horror	2020-06-16 12:40:04.919355	2020-06-16 12:40:04.919355
420	The Millstone	Rico Brown V	Hachette Book Group USA	Horror	2020-06-16 12:40:04.920807	2020-06-16 12:40:04.920807
421	No Highway	Chong Bayer III	Ten Speed Press	Mythopoeia	2020-06-16 12:40:04.922136	2020-06-16 12:40:04.922136
422	A Many-Splendoured Thing	Donovan Bins	Virgin Publishing	Comic/Graphic Novel	2020-06-16 12:40:04.923453	2020-06-16 12:40:04.923453
423	Let Us Now Praise Famous Men	Miss Candelaria Miller	Verso Books	Short story	2020-06-16 12:40:04.924808	2020-06-16 12:40:04.924808
424	In Dubious Battle	Esteban Bartell	Anova Books	Fanfiction	2020-06-16 12:40:04.926122	2020-06-16 12:40:04.926122
425	The Widening Gyre	Dr. Melynda Blanda	Blackie and Son Limited	Crime/Detective	2020-06-16 12:40:04.927462	2020-06-16 12:40:04.927462
426	Let Us Now Praise Famous Men	Luciano Hermann	Harcourt Assessment	Narrative nonfiction	2020-06-16 12:40:04.928856	2020-06-16 12:40:04.928856
427	A Passage to India	Mallie Schroeder Sr.	Schocken Books	Reference book	2020-06-16 12:40:04.930231	2020-06-16 12:40:04.930231
428	Nectar in a Sieve	Bernardo Bartell	BBC Books	Western	2020-06-16 12:40:04.931567	2020-06-16 12:40:04.931567
429	No Highway	Tatum Ritchie	Peace Hill Press	Classic	2020-06-16 12:40:04.932834	2020-06-16 12:40:04.932834
430	The Little Foxes	Suzann Stokes V	Dalkey Archive Press	Classic	2020-06-16 12:40:04.93422	2020-06-16 12:40:04.93422
431	I Sing the Body Electric	Waylon Harber	New English Library	Suspense/Thriller	2020-06-16 12:40:04.935485	2020-06-16 12:40:04.935485
432	The Needle's Eye	Dorinda Morar	Canongate Books	Western	2020-06-16 12:40:04.93678	2020-06-16 12:40:04.93678
433	It's a Battlefield	Lisabeth Brown	Unfinished Monument Press	Fanfiction	2020-06-16 12:40:04.938379	2020-06-16 12:40:04.938379
434	Of Human Bondage	Louisa Hackett DDS	New Holland Publishers	Folklore	2020-06-16 12:40:04.939586	2020-06-16 12:40:04.939586
435	Tiger! Tiger!	Keneth Von	John Blake Publishing	Reference book	2020-06-16 12:40:04.940857	2020-06-16 12:40:04.940857
436	The Proper Study	Alecia Gutkowski Jr.	Harvill Press at Random House	Fiction in verse	2020-06-16 12:40:04.94228	2020-06-16 12:40:04.94228
437	For Whom the Bell Tolls	Aisha Abernathy	Central European University Press	Biography/Autobiography	2020-06-16 12:40:04.943591	2020-06-16 12:40:04.943591
438	Great Work of Time	Arlene Grimes	Schocken Books	Fiction narrative	2020-06-16 12:40:04.944939	2020-06-16 12:40:04.944939
439	Cabbages and Kings	Leonarda Trantow	Tachyon Publications	Fable	2020-06-16 12:40:04.946149	2020-06-16 12:40:04.946149
440	I Know Why the Caged Bird Sings	Cathey Conn	HMSO	Comic/Graphic Novel	2020-06-16 12:40:04.947324	2020-06-16 12:40:04.947324
441	Arms and the Man	Janette Hansen	Harcourt Trade Publishers	Humor	2020-06-16 12:40:04.948601	2020-06-16 12:40:04.948601
442	The Far-Distant Oxus	Angelia Baumbach	Cambridge University Press	Realistic fiction	2020-06-16 12:40:04.949713	2020-06-16 12:40:04.949713
443	Frequent Hearses	Maxwell Haley	Cloverdale Corporation	Mystery	2020-06-16 12:40:04.950814	2020-06-16 12:40:04.950814
444	Jesting Pilate	Carisa Ruecker	Churchill Livingstone	Historical fiction	2020-06-16 12:40:04.952081	2020-06-16 12:40:04.952081
445	Fame Is the Spur	Shelby Collins	Caister Academic Press	Mystery	2020-06-16 12:40:04.953372	2020-06-16 12:40:04.953372
446	A Swiftly Tilting Planet	Clair Gleason	E. P. Dutton	Suspense/Thriller	2020-06-16 12:40:04.954509	2020-06-16 12:40:04.954509
447	The Heart Is a Lonely Hunter	Marva Erdman	University of Nebraska Press	Crime/Detective	2020-06-16 12:40:04.955651	2020-06-16 12:40:04.955651
448	Recalled to Life	Mr. Macy Langworth	Borgo Press	Humor	2020-06-16 12:40:04.956866	2020-06-16 12:40:04.956866
449	Fair Stood the Wind for France	Deon Turcotte	Ziff Davis Media	Science fiction	2020-06-16 12:40:04.958039	2020-06-16 12:40:04.958039
450	To Say Nothing of the Dog	Wilber Schneider	D. Appleton & Company	Fantasy	2020-06-16 12:40:04.959125	2020-06-16 12:40:04.959125
451	A Time to Kill	Terence Friesen	Black Dog Publishing	Essay	2020-06-16 12:40:04.960333	2020-06-16 12:40:04.960333
452	A Catskill Eagle	Miss Scottie Stark	University of California Press	Speech	2020-06-16 12:40:04.961619	2020-06-16 12:40:04.961619
453	A Darkling Plain	Jean Kilback Jr.	Cengage Learning	Speech	2020-06-16 12:40:04.962802	2020-06-16 12:40:04.962802
454	The Wives of Bath	Mr. Curt Kunde	Imperial War Museum	Fable	2020-06-16 12:40:04.963914	2020-06-16 12:40:04.963914
455	Noli Me Tangere	Lonny Keeling IV	Cambridge University Press	Historical fiction	2020-06-16 12:40:04.965119	2020-06-16 12:40:04.965119
456	The Golden Apples of the Sun	Patrica Stiedemann	Atlantic Books	Fantasy	2020-06-16 12:40:04.966288	2020-06-16 12:40:04.966288
457	Tender Is the Night	Alejandro Schowalter Jr.	McFarland & Company	Realistic fiction	2020-06-16 12:40:04.967381	2020-06-16 12:40:04.967381
458	A Many-Splendoured Thing	Diann Beahan	Harcourt Trade Publishers	Fantasy	2020-06-16 12:40:04.968706	2020-06-16 12:40:04.968706
459	To a God Unknown	Marion Schamberger MD	Flame Tree Publishing	Folklore	2020-06-16 12:40:04.969829	2020-06-16 12:40:04.969829
460	Fear and Trembling	Joycelyn Weber	Peace Hill Press	Suspense/Thriller	2020-06-16 12:40:04.970952	2020-06-16 12:40:04.970952
461	Cover Her Face	Dr. Angelia Kerluke	Central European University Press	Legend	2020-06-16 12:40:04.972086	2020-06-16 12:40:04.972086
462	In a Glass Darkly	Thersa Hamill IV	Broadview Press	Reference book	2020-06-16 12:40:04.973112	2020-06-16 12:40:04.973112
463	Those Barren Leaves, Thrones, Dominations	Sunny Jerde	D. Reidel	Suspense/Thriller	2020-06-16 12:40:04.97425	2020-06-16 12:40:04.97425
464	An Acceptable Time	Lindy Hickle	Unfinished Monument Press	Folklore	2020-06-16 12:40:04.975281	2020-06-16 12:40:04.975281
465	Paths of Glory	Sha Bergstrom DDS	Marshall Pickering	Suspense/Thriller	2020-06-16 12:40:04.976324	2020-06-16 12:40:04.976324
466	O Jerusalem!	Eloy Hammes	Mascot Books	Western	2020-06-16 12:40:04.977409	2020-06-16 12:40:04.977409
467	No Highway	Ms. Tonita Wolff	Horizon Scientific Press	Metafiction	2020-06-16 12:40:04.978528	2020-06-16 12:40:04.978528
468	A Monstrous Regiment of Women	Ms. Ciara Miller	George Newnes	Science fiction	2020-06-16 12:40:04.979725	2020-06-16 12:40:04.979725
469	Little Hands Clapping	Fred Mertz	Tammi	Fiction in verse	2020-06-16 12:40:04.980903	2020-06-16 12:40:04.980903
470	A Many-Splendoured Thing	Estela Rogahn	Harcourt Assessment	Fairy tale	2020-06-16 12:40:04.981988	2020-06-16 12:40:04.981988
471	No Highway	Luci Monahan	University of Chicago Press	Fanfiction	2020-06-16 12:40:04.983093	2020-06-16 12:40:04.983093
472	The Way of All Flesh	Dario Bartell	Indiana University Press	Realistic fiction	2020-06-16 12:40:04.984259	2020-06-16 12:40:04.984259
473	O Pioneers!	Francisco Stiedemann	Virgin Publishing	Humor	2020-06-16 12:40:04.985301	2020-06-16 12:40:04.985301
474	Absalom, Absalom!	Renaldo Hilll	Taunton Press	Historical fiction	2020-06-16 12:40:04.986397	2020-06-16 12:40:04.986397
475	Nectar in a Sieve	Antonio Purdy	Jarrolds Publishing	Legend	2020-06-16 12:40:04.987636	2020-06-16 12:40:04.987636
476	A Farewell to Arms	Eldon Kuvalis	Pen and Sword Books	Speech	2020-06-16 12:40:04.988649	2020-06-16 12:40:04.988649
477	A Passage to India	Augustine Durgan IV	O'Reilly Media	Historical fiction	2020-06-16 12:40:04.989679	2020-06-16 12:40:04.989679
478	Shall not Perish	Willy Skiles	Harlequin Enterprises Ltd	Reference book	2020-06-16 12:40:04.991022	2020-06-16 12:40:04.991022
479	Terrible Swift Sword	Vivien Homenick	Tarpaulin Sky Press	Science fiction	2020-06-16 12:40:04.992227	2020-06-16 12:40:04.992227
480	Dying of the Light	Robin Schuster III	University of California Press	Folklore	2020-06-16 12:40:04.993363	2020-06-16 12:40:04.993363
481	Jacob Have I Loved	Tommie Schuster	Open Court Publishing Company	Reference book	2020-06-16 12:40:04.994513	2020-06-16 12:40:04.994513
482	What's Become of Waring	Eloy Kovacek	Kensington Books	Tall tale	2020-06-16 12:40:04.995567	2020-06-16 12:40:04.995567
483	A Glass of Blessings	Mathilde Huel MD	Unfinished Monument Press	Mythology	2020-06-16 12:40:04.996644	2020-06-16 12:40:04.996644
484	Many Waters	Mrs. Sidney Feest	Edupedia Publications	Legend	2020-06-16 12:40:04.997732	2020-06-16 12:40:04.997732
485	The Green Bay Tree	Jeremiah Mitchell	Paulist Press	Fiction in verse	2020-06-16 12:40:04.998899	2020-06-16 12:40:04.998899
486	The Soldier's Art	Bree Cummings III	Mandrake of Oxford	Horror	2020-06-16 12:40:05.000012	2020-06-16 12:40:05.000012
487	Beneath the Bleeding	Garnet Zieme	Faber and Faber	Fable	2020-06-16 12:40:05.001092	2020-06-16 12:40:05.001092
488	If Not Now, When?	Francisco Blanda DDS	University of Michigan Press	Mythopoeia	2020-06-16 12:40:05.002163	2020-06-16 12:40:05.002163
489	To Sail Beyond the Sunset	Pat Luettgen	Chick Publications	Mystery	2020-06-16 12:40:05.003293	2020-06-16 12:40:05.003293
490	The Heart Is a Lonely Hunter	Wilson Sauer PhD	John Blake Publishing	Classic	2020-06-16 12:40:05.00443	2020-06-16 12:40:05.00443
491	That Hideous Strength	Renetta Connelly	Da Capo Press	Fable	2020-06-16 12:40:05.005583	2020-06-16 12:40:05.005583
492	Wildfire at Midnight	Michale DuBuque	Scholastic Press	Realistic fiction	2020-06-16 12:40:05.006692	2020-06-16 12:40:05.006692
493	Vanity Fair	Erwin Jaskolski	Hodder Headline	Legend	2020-06-16 12:40:05.00778	2020-06-16 12:40:05.00778
494	Cabbages and Kings	Long Auer Jr.	Carcanet Press	Speech	2020-06-16 12:40:05.008825	2020-06-16 12:40:05.008825
495	In Death Ground	Octavio Hoppe	Chronicle Books	Fiction narrative	2020-06-16 12:40:05.010311	2020-06-16 12:40:05.010311
496	Fair Stood the Wind for France	Mel Morar	Hawthorne Books	Horror	2020-06-16 12:40:05.011525	2020-06-16 12:40:05.011525
497	Ah, Wilderness!	Rey Stoltenberg	Eel Pie Publishing	Humor	2020-06-16 12:40:05.012693	2020-06-16 12:40:05.012693
498	The Waste Land	Merlyn Kuvalis	Barrie & Jenkins	Humor	2020-06-16 12:40:05.013877	2020-06-16 12:40:05.013877
499	It's a Battlefield	Bobby MacGyver	HarperPrism	Mystery	2020-06-16 12:40:05.015112	2020-06-16 12:40:05.015112
500	Of Mice and Men	Tenisha Kohler	Mandrake Press	Narrative nonfiction	2020-06-16 12:40:05.017529	2020-06-16 12:40:05.017529
501	The Mirror Crack'd from Side to Side	Mrs. Beverley Wolff	Da Capo Press	Fairy tale	2020-06-16 12:40:05.018831	2020-06-16 12:40:05.018831
502	As I Lay Dying	Linette MacGyver	Hawthorne Books	Folklore	2020-06-16 12:40:05.020132	2020-06-16 12:40:05.020132
503	Specimen Days	Shala Kub	Shoemaker & Hoard Publishers	Narrative nonfiction	2020-06-16 12:40:05.02144	2020-06-16 12:40:05.02144
504	I Will Fear No Evil	Mrs. Lucius Thiel	Golden Cockerel Press	Metafiction	2020-06-16 12:40:05.022764	2020-06-16 12:40:05.022764
505	Alone on a Wide, Wide Sea	Ronnie Bosco III	Newnes	Mythopoeia	2020-06-16 12:40:05.024079	2020-06-16 12:40:05.024079
506	In a Dry Season	Mr. Walker Schmitt	Lethe Press	Tall tale	2020-06-16 12:40:05.025593	2020-06-16 12:40:05.025593
507	The Mermaids Singing	Ms. Jen Fadel	Book Works	Fiction narrative	2020-06-16 12:40:05.026972	2020-06-16 12:40:05.026972
508	As I Lay Dying	Kenton Nienow	Black Library	Humor	2020-06-16 12:40:05.03057	2020-06-16 12:40:05.03057
509	Beneath the Bleeding	Bradford Grady IV	Haynes Manuals	Mythology	2020-06-16 12:40:05.032167	2020-06-16 12:40:05.032167
510	The Grapes of Wrath	Claudio Funk V	Legend Books	Mythology	2020-06-16 12:40:05.033641	2020-06-16 12:40:05.033641
511	Antic Hay	Perry Lang	Gay Men's Press	Textbook	2020-06-16 12:40:05.035157	2020-06-16 12:40:05.035157
512	Ring of Bright Water	Sherita Bergstrom	Canongate Books	Fiction in verse	2020-06-16 12:40:05.036633	2020-06-16 12:40:05.036633
513	Clouds of Witness	Marcos Ondricka	Holt McDougal	Narrative nonfiction	2020-06-16 12:40:05.038066	2020-06-16 12:40:05.038066
514	Consider the Lilies	Hugo Brekke Sr.	Kensington Books	Horror	2020-06-16 12:40:05.03979	2020-06-16 12:40:05.03979
515	A Scanner Darkly	Chantal Schaden IV	Manchester University Press	Mystery	2020-06-16 12:40:05.041433	2020-06-16 12:40:05.041433
516	The Line of Beauty	Karon Zieme	University of Nebraska Press	Metafiction	2020-06-16 12:40:05.042983	2020-06-16 12:40:05.042983
517	A Confederacy of Dunces	Ms. Mellie Runolfsson	Chronicle Books	Folklore	2020-06-16 12:40:05.044594	2020-06-16 12:40:05.044594
518	Nectar in a Sieve	Guy Howe	Tartarus Press	Biography/Autobiography	2020-06-16 12:40:05.046014	2020-06-16 12:40:05.046014
519	Many Waters	Toby Nienow DDS	Marshall Cavendish	Crime/Detective	2020-06-16 12:40:05.047384	2020-06-16 12:40:05.047384
520	Such, Such Were the Joys	Dr. Cameron Baumbach	Pantheon Books at Random House	Textbook	2020-06-16 12:40:05.04882	2020-06-16 12:40:05.04882
521	Paths of Glory	Mervin Schuster I	Bowes & Bowes	Fable	2020-06-16 12:40:05.050321	2020-06-16 12:40:05.050321
522	Jesting Pilate	Ms. Lanita Cartwright	Harvard University Press	Classic	2020-06-16 12:40:05.051582	2020-06-16 12:40:05.051582
523	The Millstone	Mr. Sherill Moen	Atheneum Publishers	Humor	2020-06-16 12:40:05.052891	2020-06-16 12:40:05.052891
524	Behold the Man	Setsuko Collier	Seagull Books	Crime/Detective	2020-06-16 12:40:05.054418	2020-06-16 12:40:05.054418
525	The Way Through the Woods	Jordon Denesik	HarperTrophy	Biography/Autobiography	2020-06-16 12:40:05.055725	2020-06-16 12:40:05.055725
526	Vanity Fair	Trey Jacobson	Penguin Books	Fable	2020-06-16 12:40:05.057025	2020-06-16 12:40:05.057025
527	That Hideous Strength	Mr. Davis Howe	Carcanet Press	Tall tale	2020-06-16 12:40:05.058462	2020-06-16 12:40:05.058462
528	To Say Nothing of the Dog	Kendall Jerde	Hodder Headline	Historical fiction	2020-06-16 12:40:05.059829	2020-06-16 12:40:05.059829
529	Such, Such Were the Joys	Reid Pfeffer III	New Directions Publishing	Essay	2020-06-16 12:40:05.061112	2020-06-16 12:40:05.061112
530	Cabbages and Kings	Thaddeus Shields	Flame Tree Publishing	Fable	2020-06-16 12:40:05.068827	2020-06-16 12:40:05.068827
531	The Daffodil Sky	Natashia Kutch	Oberon Books	Fiction in verse	2020-06-16 12:40:05.073272	2020-06-16 12:40:05.073272
532	What's Become of Waring	Roselee Rutherford	Anova Books	Suspense/Thriller	2020-06-16 12:40:05.078285	2020-06-16 12:40:05.078285
533	Blood's a Rover	Wilbur Bernhard	St. Martin's Press	Science fiction	2020-06-16 12:40:05.08377	2020-06-16 12:40:05.08377
534	Shall not Perish	Bunny Cummings	Virgin Publishing	Fantasy	2020-06-16 12:40:05.086286	2020-06-16 12:40:05.086286
535	Cabbages and Kings	Doug Satterfield	McFarland & Company	Tall tale	2020-06-16 12:40:05.088616	2020-06-16 12:40:05.088616
536	The Way Through the Woods	Armando Hudson I	Harry N. Abrams, Inc.	Comic/Graphic Novel	2020-06-16 12:40:05.091008	2020-06-16 12:40:05.091008
537	A Glass of Blessings	Marian Glover Jr.	No Starch Press	Fable	2020-06-16 12:40:05.0933	2020-06-16 12:40:05.0933
538	Tirra Lirra by the River	Luna Kirlin	Ballantine Books	Western	2020-06-16 12:40:05.095474	2020-06-16 12:40:05.095474
539	The Painted Veil	Mr. Kacie Raynor	Holt McDougal	Textbook	2020-06-16 12:40:05.097724	2020-06-16 12:40:05.097724
540	The Way of All Flesh	Dorie Hodkiewicz	Virago Press	Folklore	2020-06-16 12:40:05.100012	2020-06-16 12:40:05.100012
541	Now Sleeps the Crimson Petal	Gwyn Breitenberg	G-Unit Books	Fiction narrative	2020-06-16 12:40:05.10216	2020-06-16 12:40:05.10216
542	Ring of Bright Water	Manda Feil	Charles Scribner's Sons	Narrative nonfiction	2020-06-16 12:40:05.104404	2020-06-16 12:40:05.104404
543	Vanity Fair	Carol Murazik	Palgrave Macmillan	Mythology	2020-06-16 12:40:05.106605	2020-06-16 12:40:05.106605
544	Precious Bane	Rodrigo Mohr DVM	McClelland and Stewart	Essay	2020-06-16 12:40:05.109013	2020-06-16 12:40:05.109013
545	To Sail Beyond the Sunset	Earl West	McFarland & Company	Mystery	2020-06-16 12:40:05.111061	2020-06-16 12:40:05.111061
546	Ah, Wilderness!	Erminia Lueilwitz	Palgrave Macmillan	Classic	2020-06-16 12:40:05.113256	2020-06-16 12:40:05.113256
547	The Heart Is Deceitful Above All Things	Frieda Quitzon	Broadview Press	Fanfiction	2020-06-16 12:40:05.115393	2020-06-16 12:40:05.115393
548	Behold the Man	Dr. Neil Reinger	Blue Ribbon Books	Fairy tale	2020-06-16 12:40:05.117139	2020-06-16 12:40:05.117139
549	If I Forget Thee Jerusalem	Dr. Lauren Reichel	Peace Hill Press	Narrative nonfiction	2020-06-16 12:40:05.119138	2020-06-16 12:40:05.119138
550	Mr Standfast	Billy Nicolas	Ignatius Press	Comic/Graphic Novel	2020-06-16 12:40:05.121325	2020-06-16 12:40:05.121325
551	Dulce et Decorum Est	Charlie Balistreri	Blue Ribbon Books	Realistic fiction	2020-06-16 12:40:05.123116	2020-06-16 12:40:05.123116
552	Tiger! Tiger!	Leonel Shanahan	Palgrave Macmillan	Reference book	2020-06-16 12:40:05.124855	2020-06-16 12:40:05.124855
553	Blue Remembered Earth	Joan Crist	Legend Books	Mythology	2020-06-16 12:40:05.126651	2020-06-16 12:40:05.126651
554	Nectar in a Sieve	Barney Bogisich	Jaico Publishing House	Horror	2020-06-16 12:40:05.128434	2020-06-16 12:40:05.128434
555	Far From the Madding Crowd	Chang Spencer II	Harvill Press at Random House	Fantasy	2020-06-16 12:40:05.130374	2020-06-16 12:40:05.130374
556	A Many-Splendoured Thing	Maple Mraz	Parragon	Mystery	2020-06-16 12:40:05.132367	2020-06-16 12:40:05.132367
557	If Not Now, When?	Anderson Rutherford II	Boydell & Brewer	Classic	2020-06-16 12:40:05.134267	2020-06-16 12:40:05.134267
558	Far From the Madding Crowd	Sandi Gerlach	Mapin Publishing	Mythology	2020-06-16 12:40:05.136335	2020-06-16 12:40:05.136335
559	O Jerusalem!	Glenn Bruen	Verso Books	Fairy tale	2020-06-16 12:40:05.138116	2020-06-16 12:40:05.138116
560	Eyeless in Gaza	Darrin Borer IV	Cloverdale Corporation	Mystery	2020-06-16 12:40:05.139828	2020-06-16 12:40:05.139828
561	The Needle's Eye	Mr. Prince Powlowski	Emerald Group Publishing	Reference book	2020-06-16 12:40:05.142037	2020-06-16 12:40:05.142037
562	Oh! To be in England	Kina Smith	Taylor & Francis	Science fiction	2020-06-16 12:40:05.144787	2020-06-16 12:40:05.144787
563	In Death Ground	Jacinto Batz I	McGraw-Hill Education	Reference book	2020-06-16 12:40:05.147435	2020-06-16 12:40:05.147435
564	That Hideous Strength	See Prosacco	Pavilion Books	Humor	2020-06-16 12:40:05.149586	2020-06-16 12:40:05.149586
565	Eyeless in Gaza	Elliott Price	University of Nebraska Press	Western	2020-06-16 12:40:05.151833	2020-06-16 12:40:05.151833
566	If Not Now, When?	Christal Gerhold	Kogan Page	Essay	2020-06-16 12:40:05.153937	2020-06-16 12:40:05.153937
567	An Evil Cradling	Yer Willms	Focal Press	Fairy tale	2020-06-16 12:40:05.156195	2020-06-16 12:40:05.156195
568	A Farewell to Arms	Mrs. Thurman Hilpert	Bloomsbury Publishing Plc	Short story	2020-06-16 12:40:05.158269	2020-06-16 12:40:05.158269
569	The Golden Apples of the Sun	Jami Reichel	Borgo Press	Comic/Graphic Novel	2020-06-16 12:40:05.160805	2020-06-16 12:40:05.160805
570	Alone on a Wide, Wide Sea	Calvin Lubowitz	No Starch Press	Narrative nonfiction	2020-06-16 12:40:05.163264	2020-06-16 12:40:05.163264
571	Consider Phlebas	Hong Cummings	Kensington Books	Historical fiction	2020-06-16 12:40:05.165548	2020-06-16 12:40:05.165548
572	The Needle's Eye	Marcy Casper	Pecan Grove Press	Essay	2020-06-16 12:40:05.167936	2020-06-16 12:40:05.167936
573	A Glass of Blessings	Cheri Smith IV	Black Library	Narrative nonfiction	2020-06-16 12:40:05.170052	2020-06-16 12:40:05.170052
574	Alone on a Wide, Wide Sea	Mr. Reuben Stanton	Manchester University Press	Tall tale	2020-06-16 12:40:05.172313	2020-06-16 12:40:05.172313
575	Eyeless in Gaza	Mrs. Letisha D'Amore	Berkley Books	Mythopoeia	2020-06-16 12:40:05.174492	2020-06-16 12:40:05.174492
576	Vanity Fair	Miss Garth Krajcik	Macmillan Publishers	Comic/Graphic Novel	2020-06-16 12:40:05.176809	2020-06-16 12:40:05.176809
577	Blood's a Rover	Magaret Nienow III	FabJob	Tall tale	2020-06-16 12:40:05.179088	2020-06-16 12:40:05.179088
578	If Not Now, When?	Teodoro Kiehn PhD	Charles Scribner's Sons	Fiction narrative	2020-06-16 12:40:05.181264	2020-06-16 12:40:05.181264
579	Dying of the Light	Sharon Corwin	Harper & Brothers	Science fiction	2020-06-16 12:40:05.18305	2020-06-16 12:40:05.18305
580	The Wings of the Dove	Michelina Mayert	Pecan Grove Press	Crime/Detective	2020-06-16 12:40:05.185011	2020-06-16 12:40:05.185011
581	Waiting for the Barbarians	Miss Leanne Macejkovic	Bloodaxe Books	Narrative nonfiction	2020-06-16 12:40:05.186876	2020-06-16 12:40:05.186876
582	The Golden Bowl	Dwayne Kreiger	Matthias Media	Mythopoeia	2020-06-16 12:40:05.188816	2020-06-16 12:40:05.188816
583	Edna O'Brien	Ryan O'Hara	Paulist Press	Folklore	2020-06-16 12:40:05.190681	2020-06-16 12:40:05.190681
584	A Many-Splendoured Thing	Apolonia Davis	John Blake Publishing	Legend	2020-06-16 12:40:05.192489	2020-06-16 12:40:05.192489
585	A Handful of Dust	Abdul Gorczany	Left Book Club	Realistic fiction	2020-06-16 12:40:05.194293	2020-06-16 12:40:05.194293
586	A Confederacy of Dunces	Cyndi Rice	University of Chicago Press	Short story	2020-06-16 12:40:05.196055	2020-06-16 12:40:05.196055
587	After Many a Summer Dies the Swan	Yuk Schaden	Orchard Books	Science fiction	2020-06-16 12:40:05.197789	2020-06-16 12:40:05.197789
588	The Heart Is a Lonely Hunter	Dewey Littel Jr.	Book Works	Fable	2020-06-16 12:40:05.199553	2020-06-16 12:40:05.199553
589	The Widening Gyre	Shawnta Goodwin	St. Martin's Press	Classic	2020-06-16 12:40:05.201267	2020-06-16 12:40:05.201267
590	Fame Is the Spur	Eldora Rippin	Pavilion Books	Horror	2020-06-16 12:40:05.20304	2020-06-16 12:40:05.20304
591	Beneath the Bleeding	Basil Wunsch V	Hay House	Crime/Detective	2020-06-16 12:40:05.204752	2020-06-16 12:40:05.204752
592	What's Become of Waring	Adriane Bins	Gay Men's Press	Speech	2020-06-16 12:40:05.206534	2020-06-16 12:40:05.206534
593	I Sing the Body Electric	Allen Witting	Marion Boyars Publishers	Biography/Autobiography	2020-06-16 12:40:05.208261	2020-06-16 12:40:05.208261
594	A Swiftly Tilting Planet	Remedios Murazik	Harry N. Abrams, Inc.	Biography/Autobiography	2020-06-16 12:40:05.210047	2020-06-16 12:40:05.210047
595	The World, the Flesh and the Devil	Milo Stracke	New English Library	Mystery	2020-06-16 12:40:05.211768	2020-06-16 12:40:05.211768
596	Blue Remembered Earth	Minnie Williamson	D. Reidel	Fantasy	2020-06-16 12:40:05.213558	2020-06-16 12:40:05.213558
597	Consider Phlebas	Thomasena Howell	D. Appleton & Company	Narrative nonfiction	2020-06-16 12:40:05.215308	2020-06-16 12:40:05.215308
598	Wildfire at Midnight	Lynell Cronin Sr.	Bloomsbury Publishing Plc	Science fiction	2020-06-16 12:40:05.217095	2020-06-16 12:40:05.217095
599	Everything is Illuminated	Mrs. Tad Effertz	Marshall Pickering	Comic/Graphic Novel	2020-06-16 12:40:05.220536	2020-06-16 12:40:05.220536
600	This Side of Paradise	Lilly Goodwin	Macmillan Publishers	Fable	2020-06-16 12:40:05.222287	2020-06-16 12:40:05.222287
601	Ah, Wilderness!	Phillip Keeling	Ziff Davis Media	Fairy tale	2020-06-16 12:40:05.224147	2020-06-16 12:40:05.224147
602	Consider the Lilies	Dallas Ledner	Kogan Page	Realistic fiction	2020-06-16 12:40:05.225904	2020-06-16 12:40:05.225904
603	Down to a Sunless Sea	Von Crooks II	Gay Men's Press	Fantasy	2020-06-16 12:40:05.227774	2020-06-16 12:40:05.227774
604	Let Us Now Praise Famous Men	Miss Jamison Strosin	Mainstream Publishing	Essay	2020-06-16 12:40:05.229645	2020-06-16 12:40:05.229645
605	For a Breath I Tarry	Mrs. Carlo Spencer	Black Dog Publishing	Tall tale	2020-06-16 12:40:05.231941	2020-06-16 12:40:05.231941
606	The Parliament of Man	Jamar Fisher	University of Nebraska Press	Fairy tale	2020-06-16 12:40:05.233644	2020-06-16 12:40:05.233644
607	No Longer at Ease	Wes Larson	Mapin Publishing	Classic	2020-06-16 12:40:05.235605	2020-06-16 12:40:05.235605
608	Postern of Fate	Pia Muller	Libertas Academica	Fable	2020-06-16 12:40:05.237519	2020-06-16 12:40:05.237519
609	Cabbages and Kings	Alease Cruickshank	G. P. Putnam's Sons	Essay	2020-06-16 12:40:05.239277	2020-06-16 12:40:05.239277
610	The Millstone	Sina Bashirian	G. P. Putnam's Sons	Short story	2020-06-16 12:40:05.241025	2020-06-16 12:40:05.241025
611	Stranger in a Strange Land	Wm Crona	Mainstream Publishing	Mystery	2020-06-16 12:40:05.245655	2020-06-16 12:40:05.245655
612	For Whom the Bell Tolls	Mrs. Zofia Klein	Booktrope	Fiction narrative	2020-06-16 12:40:05.247024	2020-06-16 12:40:05.247024
613	This Lime Tree Bower	Mrs. Geralyn Rempel	T & T Clark	Fanfiction	2020-06-16 12:40:05.248308	2020-06-16 12:40:05.248308
614	Precious Bane	Mana Schimmel	Penguin Books	Western	2020-06-16 12:40:05.249783	2020-06-16 12:40:05.249783
615	Jacob Have I Loved	Kelley Grady	Macmillan Publishers	Crime/Detective	2020-06-16 12:40:05.251191	2020-06-16 12:40:05.251191
616	Precious Bane	Doris Streich Sr.	Tartarus Press	Historical fiction	2020-06-16 12:40:05.252454	2020-06-16 12:40:05.252454
617	A Swiftly Tilting Planet	Lennie Lesch	John Blake Publishing	Folklore	2020-06-16 12:40:05.253706	2020-06-16 12:40:05.253706
618	Jesting Pilate	Claudio Grant	Black Dog Publishing	Essay	2020-06-16 12:40:05.254885	2020-06-16 12:40:05.254885
619	Many Waters	Lizabeth Hegmann PhD	George Newnes	Textbook	2020-06-16 12:40:05.256073	2020-06-16 12:40:05.256073
620	The Curious Incident of the Dog in the Night-Time	Angella Dibbert V	Chatto and Windus	Mythology	2020-06-16 12:40:05.257329	2020-06-16 12:40:05.257329
621	To a God Unknown	Arnulfo Robel	Barrie & Jenkins	Fairy tale	2020-06-16 12:40:05.258557	2020-06-16 12:40:05.258557
622	A Monstrous Regiment of Women	Annette Christiansen	Bloomsbury Publishing Plc	Historical fiction	2020-06-16 12:40:05.259763	2020-06-16 12:40:05.259763
623	Butter In a Lordly Dish	Carmine Gerlach	G-Unit Books	Fanfiction	2020-06-16 12:40:05.261029	2020-06-16 12:40:05.261029
624	Frequent Hearses	Stacey Renner	Book Works	Realistic fiction	2020-06-16 12:40:05.262217	2020-06-16 12:40:05.262217
625	Recalled to Life	Valentine O'Reilly	Macmillan Publishers	Western	2020-06-16 12:40:05.263401	2020-06-16 12:40:05.263401
626	The World, the Flesh and the Devil	Carey Gusikowski	Matthias Media	Essay	2020-06-16 12:40:05.264619	2020-06-16 12:40:05.264619
627	Those Barren Leaves, Thrones, Dominations	Catrina Bartell IV	Virago Press	Realistic fiction	2020-06-16 12:40:05.265804	2020-06-16 12:40:05.265804
628	Bury My Heart at Wounded Knee	Rickey VonRueden	Booktrope	Horror	2020-06-16 12:40:05.266906	2020-06-16 12:40:05.266906
629	Some Buried Caesar	Mrs. Chung Purdy	Holt McDougal	Reference book	2020-06-16 12:40:05.268185	2020-06-16 12:40:05.268185
630	For a Breath I Tarry	Noble Boyer III	George H. Doran Company	Fiction narrative	2020-06-16 12:40:05.269444	2020-06-16 12:40:05.269444
631	As I Lay Dying	Gordon Prosacco MD	Newnes	Tall tale	2020-06-16 12:40:05.27088	2020-06-16 12:40:05.27088
632	In a Dry Season	Tamisha Batz	NavPress	Legend	2020-06-16 12:40:05.272257	2020-06-16 12:40:05.272257
633	If I Forget Thee Jerusalem	Herschel Schamberger	BBC Books	Folklore	2020-06-16 12:40:05.273555	2020-06-16 12:40:05.273555
634	What's Become of Waring	Teofila Gerlach	Atlantic Books	Suspense/Thriller	2020-06-16 12:40:05.274819	2020-06-16 12:40:05.274819
635	Mother Night	Floyd Murphy	D. Reidel	Crime/Detective	2020-06-16 12:40:05.276012	2020-06-16 12:40:05.276012
636	Specimen Days	Fermina Sanford	Atlantic Books	Fairy tale	2020-06-16 12:40:05.277156	2020-06-16 12:40:05.277156
637	For Whom the Bell Tolls	Lannie Wiza II	Tate Publishing & Enterprises	Comic/Graphic Novel	2020-06-16 12:40:05.278269	2020-06-16 12:40:05.278269
638	By Grand Central Station I Sat Down and Wept	Seymour Rowe	SAGE Publications	Crime/Detective	2020-06-16 12:40:05.279393	2020-06-16 12:40:05.279393
639	Tirra Lirra by the River	Josh Marquardt	Holt McDougal	Reference book	2020-06-16 12:40:05.280455	2020-06-16 12:40:05.280455
640	Fear and Trembling	Jenice Hamill	John Blake Publishing	Biography/Autobiography	2020-06-16 12:40:05.281563	2020-06-16 12:40:05.281563
641	Now Sleeps the Crimson Petal	Forrest Lynch	Jaico Publishing House	Reference book	2020-06-16 12:40:05.28268	2020-06-16 12:40:05.28268
642	Alone on a Wide, Wide Sea	Rolando Legros	Nauka	Classic	2020-06-16 12:40:05.283822	2020-06-16 12:40:05.283822
643	The Parliament of Man	Wallace Macejkovic	Manchester University Press	Short story	2020-06-16 12:40:05.284978	2020-06-16 12:40:05.284978
644	The Violent Bear It Away	Mrs. Willy Strosin	Mandrake of Oxford	Western	2020-06-16 12:40:05.286126	2020-06-16 12:40:05.286126
645	If Not Now, When?	Walker Lowe	Scholastic Press	Tall tale	2020-06-16 12:40:05.287393	2020-06-16 12:40:05.287393
646	Surprised by Joy	Monte Wilderman	Leaf Books	Biography/Autobiography	2020-06-16 12:40:05.289095	2020-06-16 12:40:05.289095
647	As I Lay Dying	Dennis Jones III	Burns & Oates	Suspense/Thriller	2020-06-16 12:40:05.290672	2020-06-16 12:40:05.290672
648	To Say Nothing of the Dog	Eliseo Hayes	Shambhala Publications	Comic/Graphic Novel	2020-06-16 12:40:05.292237	2020-06-16 12:40:05.292237
649	The Soldier's Art	Ms. Jermaine Stehr	NavPress	Science fiction	2020-06-16 12:40:05.293574	2020-06-16 12:40:05.293574
650	The Golden Bowl	Erna Schneider	Libertas Academica	Fanfiction	2020-06-16 12:40:05.294864	2020-06-16 12:40:05.294864
651	Mother Night	Mrs. Lyle Legros	Imperial War Museum	Biography/Autobiography	2020-06-16 12:40:05.296101	2020-06-16 12:40:05.296101
652	A Monstrous Regiment of Women	Tesha Yost	Mascot Books	Realistic fiction	2020-06-16 12:40:05.29737	2020-06-16 12:40:05.29737
653	Time of our Darkness	Denver Johnson	Mainstream Publishing	Mythology	2020-06-16 12:40:05.299083	2020-06-16 12:40:05.299083
654	A Time to Kill	Mr. Mckenzie Kessler	Vintage Books	Narrative nonfiction	2020-06-16 12:40:05.300918	2020-06-16 12:40:05.300918
655	Far From the Madding Crowd	Ruthann Dibbert	G-Unit Books	Metafiction	2020-06-16 12:40:05.302306	2020-06-16 12:40:05.302306
656	Brandy of the Damned	Kasey Green	Left Book Club	Mythopoeia	2020-06-16 12:40:05.303654	2020-06-16 12:40:05.303654
657	The Monkey's Raincoat	Rodrick Heathcote III	Oberon Books	Fanfiction	2020-06-16 12:40:05.305004	2020-06-16 12:40:05.305004
658	Fair Stood the Wind for France	Luigi Zulauf	Edupedia Publications	Historical fiction	2020-06-16 12:40:05.306235	2020-06-16 12:40:05.306235
659	Noli Me Tangere	Frederic Robel	Emerald Group Publishing	Essay	2020-06-16 12:40:05.307537	2020-06-16 12:40:05.307537
660	The Skull Beneath the Skin	Samual Goldner	Bellevue Literary Press	Short story	2020-06-16 12:40:05.308818	2020-06-16 12:40:05.308818
661	Blithe Spirit	Hana Senger	Karadi Tales	Historical fiction	2020-06-16 12:40:05.310018	2020-06-16 12:40:05.310018
662	Jacob Have I Loved	Robt Hyatt	Felony & Mayhem Press	Fiction in verse	2020-06-16 12:40:05.311167	2020-06-16 12:40:05.311167
663	If Not Now, When?	Cody O'Kon II	Berkley Books	Short story	2020-06-16 12:40:05.312264	2020-06-16 12:40:05.312264
664	By Grand Central Station I Sat Down and Wept	Mrs. Leeanna Frami	Carlton Books	Fiction narrative	2020-06-16 12:40:05.31339	2020-06-16 12:40:05.31339
665	Far From the Madding Crowd	Vincenza Jaskolski	Voyager Books	Humor	2020-06-16 12:40:05.314616	2020-06-16 12:40:05.314616
666	This Side of Paradise	Darlena Hoeger	Nauka	Speech	2020-06-16 12:40:05.316298	2020-06-16 12:40:05.316298
667	The Lathe of Heaven	Ms. Charita Friesen	New Holland Publishers	Mythology	2020-06-16 12:40:05.318121	2020-06-16 12:40:05.318121
668	Stranger in a Strange Land	Roosevelt Yundt	New Holland Publishers	Science fiction	2020-06-16 12:40:05.319454	2020-06-16 12:40:05.319454
669	A Swiftly Tilting Planet	Dr. Hong Blanda	Random House	Narrative nonfiction	2020-06-16 12:40:05.3209	2020-06-16 12:40:05.3209
670	The House of Mirth	Lucas Zemlak Jr.	Shambhala Publications	Folklore	2020-06-16 12:40:05.322361	2020-06-16 12:40:05.322361
671	Those Barren Leaves, Thrones, Dominations	Mr. Joaquin Treutel	Charles Scribner's Sons	Narrative nonfiction	2020-06-16 12:40:05.323845	2020-06-16 12:40:05.323845
672	This Side of Paradise	Eugene Collier	Carlton Publishing Group	Fairy tale	2020-06-16 12:40:05.325258	2020-06-16 12:40:05.325258
673	His Dark Materials	Reed Moen	Godwit Press	Textbook	2020-06-16 12:40:05.32665	2020-06-16 12:40:05.32665
674	Brandy of the Damned	Rosena Heaney	Bloodaxe Books	Fiction in verse	2020-06-16 12:40:05.328101	2020-06-16 12:40:05.328101
675	The Other Side of Silence	Luciano Lind	Adis International	Speech	2020-06-16 12:40:05.329893	2020-06-16 12:40:05.329893
676	Paths of Glory	Julian Kertzmann	Academic Press	Western	2020-06-16 12:40:05.331576	2020-06-16 12:40:05.331576
677	Blue Remembered Earth	Sal Fahey	Etruscan Press	Crime/Detective	2020-06-16 12:40:05.332972	2020-06-16 12:40:05.332972
678	I Know Why the Caged Bird Sings	Anton Bergstrom	Marshall Pickering	Metafiction	2020-06-16 12:40:05.334413	2020-06-16 12:40:05.334413
679	Paths of Glory	Lavada Heidenreich	Carlton Publishing Group	Suspense/Thriller	2020-06-16 12:40:05.335814	2020-06-16 12:40:05.335814
680	In Death Ground	George Schiller	Shire Books	Narrative nonfiction	2020-06-16 12:40:05.337286	2020-06-16 12:40:05.337286
681	Dying of the Light	Mrs. Waylon Champlin	G. P. Putnam's Sons	Fiction in verse	2020-06-16 12:40:05.33869	2020-06-16 12:40:05.33869
682	A Monstrous Regiment of Women	Mrs. Dominick Lubowitz	HarperTrophy	Suspense/Thriller	2020-06-16 12:40:05.340109	2020-06-16 12:40:05.340109
683	The Lathe of Heaven	Brain West	Kogan Page	Humor	2020-06-16 12:40:05.34156	2020-06-16 12:40:05.34156
684	Behold the Man	Jordan Morissette V	David & Charles	Mythopoeia	2020-06-16 12:40:05.343004	2020-06-16 12:40:05.343004
685	The Last Enemy	Danna Powlowski	Harcourt Assessment	Reference book	2020-06-16 12:40:05.344368	2020-06-16 12:40:05.344368
686	A Handful of Dust	Lou Hartmann DDS	Zondervan	Reference book	2020-06-16 12:40:05.345755	2020-06-16 12:40:05.345755
687	All the King's Men	Alphonse Cremin	Orion Books	Crime/Detective	2020-06-16 12:40:05.347101	2020-06-16 12:40:05.347101
688	Eyeless in Gaza	Anton Rodriguez Jr.	Verso Books	Fanfiction	2020-06-16 12:40:05.34846	2020-06-16 12:40:05.34846
689	Jesting Pilate	Mr. Ian Kutch	Atlantic Books	Science fiction	2020-06-16 12:40:05.349897	2020-06-16 12:40:05.349897
690	I Sing the Body Electric	Amiee Schiller	Zondervan	Legend	2020-06-16 12:40:05.351788	2020-06-16 12:40:05.351788
691	Blood's a Rover	Rocco Hand	Mandrake Press	Speech	2020-06-16 12:40:05.361254	2020-06-16 12:40:05.361254
692	To a God Unknown	Julius Hammes V	Salt Publishing	Essay	2020-06-16 12:40:05.362809	2020-06-16 12:40:05.362809
693	For a Breath I Tarry	Dorthea Crist	Nonesuch Press	Reference book	2020-06-16 12:40:05.364048	2020-06-16 12:40:05.364048
694	The Widening Gyre	Catherina Huels II	Ellora's Cave	Short story	2020-06-16 12:40:05.365332	2020-06-16 12:40:05.365332
695	For a Breath I Tarry	Delmar Corkery	Matthias Media	Short story	2020-06-16 12:40:05.36669	2020-06-16 12:40:05.36669
696	Pale Kings and Princes	Raul Heathcote	Boydell & Brewer	Humor	2020-06-16 12:40:05.367864	2020-06-16 12:40:05.367864
697	Wildfire at Midnight	Foster O'Kon	Hamish Hamilton	Fairy tale	2020-06-16 12:40:05.369093	2020-06-16 12:40:05.369093
698	Terrible Swift Sword	Drucilla Lueilwitz	Lion Hudson	Metafiction	2020-06-16 12:40:05.370253	2020-06-16 12:40:05.370253
699	Consider Phlebas	Donald Wunsch	Gefen Publishing House	Fantasy	2020-06-16 12:40:05.371572	2020-06-16 12:40:05.371572
700	A Passage to India	Dr. Jina Blick	Peace Hill Press	Tall tale	2020-06-16 12:40:05.372872	2020-06-16 12:40:05.372872
701	A Passage to India	Cristobal Schumm	Martinus Nijhoff Publishers	Speech	2020-06-16 12:40:05.374072	2020-06-16 12:40:05.374072
702	Stranger in a Strange Land	Maribel Watsica	Hodder & Stoughton	Legend	2020-06-16 12:40:05.375301	2020-06-16 12:40:05.375301
703	Specimen Days	Edmund Murazik	Leaf Books	Comic/Graphic Novel	2020-06-16 12:40:05.376624	2020-06-16 12:40:05.376624
704	By Grand Central Station I Sat Down and Wept	Victor Quigley DVM	Central European University Press	Historical fiction	2020-06-16 12:40:05.377795	2020-06-16 12:40:05.377795
705	The Grapes of Wrath	Celesta Pouros	ECW Press	Science fiction	2020-06-16 12:40:05.379046	2020-06-16 12:40:05.379046
706	Little Hands Clapping	Nancie Little	Emerald Group Publishing	Science fiction	2020-06-16 12:40:05.380198	2020-06-16 12:40:05.380198
707	Such, Such Were the Joys	Ebonie Runolfsson	John Blake Publishing	Short story	2020-06-16 12:40:05.381296	2020-06-16 12:40:05.381296
708	Death Be Not Proud	Milda Gibson	McClelland and Stewart	Mystery	2020-06-16 12:40:05.382439	2020-06-16 12:40:05.382439
709	An Instant In The Wind	Dr. Wilbur Runolfsdottir	University of Michigan Press	Classic	2020-06-16 12:40:05.383584	2020-06-16 12:40:05.383584
710	Frequent Hearses	Mrs. Tobie Collier	Velazquez Press	Fiction narrative	2020-06-16 12:40:05.384673	2020-06-16 12:40:05.384673
711	Blithe Spirit	Mrs. Lissette McKenzie	McGraw Hill Financial	Humor	2020-06-16 12:40:05.385752	2020-06-16 12:40:05.385752
712	Look to Windward	Mrs. Milo Dare	Random House	Narrative nonfiction	2020-06-16 12:40:05.386881	2020-06-16 12:40:05.386881
713	Moab Is My Washpot	Wes Gislason	Manor House Publishing	Crime/Detective	2020-06-16 12:40:05.387949	2020-06-16 12:40:05.387949
714	The Way Through the Woods	Cornell Spinka	D. Appleton & Company	Short story	2020-06-16 12:40:05.389076	2020-06-16 12:40:05.389076
715	The Little Foxes	Genie Jast	Casemate Publishers	Fantasy	2020-06-16 12:40:05.390171	2020-06-16 12:40:05.390171
716	Behold the Man	Kaitlyn Brekke	Bloomsbury Publishing Plc	Short story	2020-06-16 12:40:05.391326	2020-06-16 12:40:05.391326
717	To Sail Beyond the Sunset	Mohammed Reinger	Carcanet Press	Fantasy	2020-06-16 12:40:05.392399	2020-06-16 12:40:05.392399
718	The Green Bay Tree	Gale Hoeger	Berkley Books	Short story	2020-06-16 12:40:05.393465	2020-06-16 12:40:05.393465
719	Vile Bodies	Donny Greenholt	NavPress	Speech	2020-06-16 12:40:05.394599	2020-06-16 12:40:05.394599
720	The Skull Beneath the Skin	Kris Satterfield	Taunton Press	Horror	2020-06-16 12:40:05.395696	2020-06-16 12:40:05.395696
721	Many Waters	Chi McGlynn	Pathfinder Press	Legend	2020-06-16 12:40:05.396855	2020-06-16 12:40:05.396855
722	It's a Battlefield	Leesa Robel	Dalkey Archive Press	Realistic fiction	2020-06-16 12:40:05.398097	2020-06-16 12:40:05.398097
723	Things Fall Apart	Owen Kiehn	Airiti Press	Humor	2020-06-16 12:40:05.399256	2020-06-16 12:40:05.399256
724	The Moon by Night	Fairy Boehm	Andrews McMeel Publishing	Suspense/Thriller	2020-06-16 12:40:05.400402	2020-06-16 12:40:05.400402
725	That Hideous Strength	Mr. Moshe Oberbrunner	Broadview Press	Mythology	2020-06-16 12:40:05.401635	2020-06-16 12:40:05.401635
726	Quo Vadis	Lois Quigley	Hachette Book Group USA	Fanfiction	2020-06-16 12:40:05.402794	2020-06-16 12:40:05.402794
727	Precious Bane	Alfredo Mills	Medknow Publications	Short story	2020-06-16 12:40:05.403997	2020-06-16 12:40:05.403997
728	The Man Within	Romana Jenkins	University of Michigan Press	Mythopoeia	2020-06-16 12:40:05.405136	2020-06-16 12:40:05.405136
729	The Heart Is a Lonely Hunter	Santo Roberts IV	Jaico Publishing House	Reference book	2020-06-16 12:40:05.406316	2020-06-16 12:40:05.406316
730	The Wings of the Dove	Lynsey Erdman	Simon & Schuster	Short story	2020-06-16 12:40:05.407558	2020-06-16 12:40:05.407558
731	Arms and the Man	Weldon Schuster Jr.	Atheneum Publishers	Classic	2020-06-16 12:40:05.408709	2020-06-16 12:40:05.408709
732	Wildfire at Midnight	Dora Willms	Shambhala Publications	Essay	2020-06-16 12:40:05.409806	2020-06-16 12:40:05.409806
733	Ah, Wilderness!	Miss Migdalia Sporer	Fairview Press	Realistic fiction	2020-06-16 12:40:05.410991	2020-06-16 12:40:05.410991
734	The Golden Bowl	Madelaine Hodkiewicz	Edupedia Publications	Fanfiction	2020-06-16 12:40:05.412061	2020-06-16 12:40:05.412061
735	A Glass of Blessings	Alane Leannon MD	Flame Tree Publishing	Horror	2020-06-16 12:40:05.413238	2020-06-16 12:40:05.413238
736	Clouds of Witness	Efrain Dickens	Tachyon Publications	Fairy tale	2020-06-16 12:40:05.414491	2020-06-16 12:40:05.414491
737	Precious Bane	Kathyrn Gutmann	Brill	Historical fiction	2020-06-16 12:40:05.415668	2020-06-16 12:40:05.415668
738	Quo Vadis	Willy King	Mandrake Press	Historical fiction	2020-06-16 12:40:05.416839	2020-06-16 12:40:05.416839
739	Death Be Not Proud	Maddie Gaylord Jr.	Peace Hill Press	Suspense/Thriller	2020-06-16 12:40:05.418078	2020-06-16 12:40:05.418078
740	The Grapes of Wrath	Teri Thompson	Simon & Schuster	Textbook	2020-06-16 12:40:05.419243	2020-06-16 12:40:05.419243
741	The Wives of Bath	Mr. Arnulfo Rosenbaum	Farrar, Straus & Giroux	Tall tale	2020-06-16 12:40:05.420412	2020-06-16 12:40:05.420412
742	The Last Enemy	Hubert Fadel III	Tammi	Historical fiction	2020-06-16 12:40:05.421704	2020-06-16 12:40:05.421704
743	The Sun Also Rises	Hilda Klein I	Hackett Publishing Company	Historical fiction	2020-06-16 12:40:05.422846	2020-06-16 12:40:05.422846
744	Many Waters	Deon Lang	Sidgwick & Jackson	Fanfiction	2020-06-16 12:40:05.423977	2020-06-16 12:40:05.423977
745	The Proper Study	Enoch Deckow	Chronicle Books	Humor	2020-06-16 12:40:05.425259	2020-06-16 12:40:05.425259
746	All Passion Spent	Nathanael Johns	Chronicle Books	Fable	2020-06-16 12:40:05.426428	2020-06-16 12:40:05.426428
747	All the King's Men	Miss Kacy Kunze	Shoemaker & Hoard Publishers	Essay	2020-06-16 12:40:05.427526	2020-06-16 12:40:05.427526
748	Paths of Glory	Jacinta Strosin	Blue Ribbon Books	Horror	2020-06-16 12:40:05.428705	2020-06-16 12:40:05.428705
749	The Stars' Tennis Balls	Jorge Christiansen	McClelland and Stewart	Narrative nonfiction	2020-06-16 12:40:05.429936	2020-06-16 12:40:05.429936
750	Carrion Comfort	Rusty Johnson	University of Michigan Press	Short story	2020-06-16 12:40:05.431025	2020-06-16 12:40:05.431025
751	The Doors of Perception	Effie Leannon	Fairview Press	Science fiction	2020-06-16 12:40:05.432235	2020-06-16 12:40:05.432235
752	Recalled to Life	Andrea Carroll	Harvard University Press	Biography/Autobiography	2020-06-16 12:40:05.433359	2020-06-16 12:40:05.433359
753	The Waste Land	Charis Schuppe	Simon & Schuster	Historical fiction	2020-06-16 12:40:05.434541	2020-06-16 12:40:05.434541
754	Dance Dance Dance	Marica Berge	Andrews McMeel Publishing	Metafiction	2020-06-16 12:40:05.435815	2020-06-16 12:40:05.435815
755	A Glass of Blessings	Jeanine Bode Sr.	Harvard University Press	Fantasy	2020-06-16 12:40:05.436968	2020-06-16 12:40:05.436968
756	Have His Carcase	Bridget Reichert MD	Harlequin Enterprises Ltd	Fairy tale	2020-06-16 12:40:05.438125	2020-06-16 12:40:05.438125
757	A Scanner Darkly	Odell Goodwin	Holt McDougal	Short story	2020-06-16 12:40:05.439385	2020-06-16 12:40:05.439385
758	The Painted Veil	Ms. Gerald Cormier	Berkley Books	Mystery	2020-06-16 12:40:05.44057	2020-06-16 12:40:05.44057
759	Clouds of Witness	Pasquale Lehner	Holland Park Press	Fiction in verse	2020-06-16 12:40:05.441684	2020-06-16 12:40:05.441684
760	Ah, Wilderness!	Hertha Lang	Ace Books	Short story	2020-06-16 12:40:05.442788	2020-06-16 12:40:05.442788
761	Waiting for the Barbarians	Columbus Morar	Victor Gollancz Ltd	Fantasy	2020-06-16 12:40:05.443979	2020-06-16 12:40:05.443979
762	If Not Now, When?	Grisel Mosciski	Pavilion Books	Humor	2020-06-16 12:40:05.445047	2020-06-16 12:40:05.445047
763	A Glass of Blessings	Davis Jenkins Jr.	Black Dog Publishing	Western	2020-06-16 12:40:05.44618	2020-06-16 12:40:05.44618
764	The Moving Toyshop	Pedro Kutch	HarperCollins	Fanfiction	2020-06-16 12:40:05.44732	2020-06-16 12:40:05.44732
765	Dying of the Light	Rosendo Carter	Packt Publishing	Comic/Graphic Novel	2020-06-16 12:40:05.448414	2020-06-16 12:40:05.448414
766	A Handful of Dust	Carmen Schiller	Elsevier	Horror	2020-06-16 12:40:05.449499	2020-06-16 12:40:05.449499
767	Far From the Madding Crowd	Renato Dach	Orchard Books	Metafiction	2020-06-16 12:40:05.450696	2020-06-16 12:40:05.450696
768	All Passion Spent	Mora Ritchie	No Starch Press	Short story	2020-06-16 12:40:05.451863	2020-06-16 12:40:05.451863
769	O Jerusalem!	Racquel Lemke	Parachute Publishing	Fanfiction	2020-06-16 12:40:05.453052	2020-06-16 12:40:05.453052
770	The Proper Study	Emory Wintheiser Jr.	Viking Press	Fanfiction	2020-06-16 12:40:05.454369	2020-06-16 12:40:05.454369
771	Fear and Trembling	Desmond Hessel	Elsevier	Reference book	2020-06-16 12:40:05.455512	2020-06-16 12:40:05.455512
772	A Darkling Plain	Marc Barrows	Mandrake Press	Realistic fiction	2020-06-16 12:40:05.456659	2020-06-16 12:40:05.456659
773	In Death Ground	Cleotilde Simonis Jr.	Black Sparrow Books	Narrative nonfiction	2020-06-16 12:40:05.457996	2020-06-16 12:40:05.457996
774	Where Angels Fear to Tread	Edith Lebsack II	O'Reilly Media	Classic	2020-06-16 12:40:05.459103	2020-06-16 12:40:05.459103
775	That Hideous Strength	Rhonda Kirlin	Libertas Academica	Suspense/Thriller	2020-06-16 12:40:05.460327	2020-06-16 12:40:05.460327
776	The Golden Apples of the Sun	Yon Romaguera II	University of Chicago Press	Folklore	2020-06-16 12:40:05.461661	2020-06-16 12:40:05.461661
777	No Highway	Leah Daugherty	Pathfinder Press	Western	2020-06-16 12:40:05.464216	2020-06-16 12:40:05.464216
778	The Last Temptation	Hisako O'Reilly DVM	Chatto and Windus	Biography/Autobiography	2020-06-16 12:40:05.465661	2020-06-16 12:40:05.465661
779	Death Be Not Proud	Andre Harber	Dedalus Books	Horror	2020-06-16 12:40:05.466835	2020-06-16 12:40:05.466835
780	Fear and Trembling	Hunter Bogan	Chambers Harrap	Comic/Graphic Novel	2020-06-16 12:40:05.467976	2020-06-16 12:40:05.467976
781	A Summer Bird-Cage	Danial Padberg	Left Book Club	Short story	2020-06-16 12:40:05.469146	2020-06-16 12:40:05.469146
782	Things Fall Apart	Tami Macejkovic	G-Unit Books	Suspense/Thriller	2020-06-16 12:40:05.470271	2020-06-16 12:40:05.470271
783	The Grapes of Wrath	Mr. Russell Hermiston	David & Charles	Metafiction	2020-06-16 12:40:05.47149	2020-06-16 12:40:05.47149
784	Waiting for the Barbarians	Mollie Raynor	Atheneum Books	Biography/Autobiography	2020-06-16 12:40:05.472645	2020-06-16 12:40:05.472645
785	Beneath the Bleeding	Bridgette Rutherford	Gefen Publishing House	Textbook	2020-06-16 12:40:05.473912	2020-06-16 12:40:05.473912
786	The Other Side of Silence	Willy Baumbach	Ten Speed Press	Legend	2020-06-16 12:40:05.475214	2020-06-16 12:40:05.475214
787	The Golden Bowl	Andra Cronin	BBC Books	Humor	2020-06-16 12:40:05.476408	2020-06-16 12:40:05.476408
788	Now Sleeps the Crimson Petal	Jan Wisoky	Vintage Books	Suspense/Thriller	2020-06-16 12:40:05.477592	2020-06-16 12:40:05.477592
789	The Millstone	Sydney Mohr	Harvest House	Science fiction	2020-06-16 12:40:05.478765	2020-06-16 12:40:05.478765
790	A Passage to India	Hosea Funk	Golden Cockerel Press	Comic/Graphic Novel	2020-06-16 12:40:05.479923	2020-06-16 12:40:05.479923
791	Beneath the Bleeding	Trent Hilpert V	Taylor & Francis	Short story	2020-06-16 12:40:05.481138	2020-06-16 12:40:05.481138
792	Paths of Glory	Lan Bins Sr.	Virago Press	Crime/Detective	2020-06-16 12:40:05.482316	2020-06-16 12:40:05.482316
793	Jesting Pilate	Valrie Gulgowski DDS	Zondervan	Western	2020-06-16 12:40:05.483428	2020-06-16 12:40:05.483428
794	Of Human Bondage	Santiago Cassin II	Pathfinder Press	Mystery	2020-06-16 12:40:05.484578	2020-06-16 12:40:05.484578
795	Time To Murder And Create	Maximo Abbott IV	Cambridge University Press	Fantasy	2020-06-16 12:40:05.48569	2020-06-16 12:40:05.48569
796	To Your Scattered Bodies Go	Leopoldo Hessel	Martinus Nijhoff Publishers	Fiction narrative	2020-06-16 12:40:05.486776	2020-06-16 12:40:05.486776
797	Tender Is the Night	Mr. Arla Schultz	Bantam Spectra	Tall tale	2020-06-16 12:40:05.487988	2020-06-16 12:40:05.487988
798	In Dubious Battle	Elena Greenholt	Marshall Pickering	Fairy tale	2020-06-16 12:40:05.489144	2020-06-16 12:40:05.489144
799	Françoise Sagan	Luis Buckridge	Pathfinder Press	Short story	2020-06-16 12:40:05.490337	2020-06-16 12:40:05.490337
800	Now Sleeps the Crimson Petal	Lorenza Ratke	Victor Gollancz Ltd	Reference book	2020-06-16 12:40:05.491676	2020-06-16 12:40:05.491676
\.


--
-- Data for Name: bookshelves; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bookshelves (id, rating, times_read, engineer_id, book_id, created_at, updated_at) FROM stdin;
1	79	3	1	23	2020-06-16 12:40:07.101028	2020-06-16 12:40:07.101028
2	57	5	1	178	2020-06-16 12:40:07.106934	2020-06-16 12:40:07.106934
3	42	5	1	342	2020-06-16 12:40:07.112566	2020-06-16 12:40:07.112566
4	63	3	1	599	2020-06-16 12:40:07.117217	2020-06-16 12:40:07.117217
5	35	4	2	163	2020-06-16 12:40:07.122568	2020-06-16 12:40:07.122568
6	60	5	2	387	2020-06-16 12:40:07.127927	2020-06-16 12:40:07.127927
7	52	4	2	138	2020-06-16 12:40:07.133209	2020-06-16 12:40:07.133209
8	79	3	2	533	2020-06-16 12:40:07.138194	2020-06-16 12:40:07.138194
9	59	3	2	293	2020-06-16 12:40:07.144401	2020-06-16 12:40:07.144401
10	70	2	2	142	2020-06-16 12:40:07.149657	2020-06-16 12:40:07.149657
11	30	3	3	350	2020-06-16 12:40:07.154867	2020-06-16 12:40:07.154867
12	24	2	3	92	2020-06-16 12:40:07.159927	2020-06-16 12:40:07.159927
13	86	3	4	560	2020-06-16 12:40:07.16515	2020-06-16 12:40:07.16515
14	83	3	4	84	2020-06-16 12:40:07.170291	2020-06-16 12:40:07.170291
15	8	2	4	407	2020-06-16 12:40:07.175473	2020-06-16 12:40:07.175473
16	62	5	4	267	2020-06-16 12:40:07.180533	2020-06-16 12:40:07.180533
17	8	2	4	117	2020-06-16 12:40:07.185528	2020-06-16 12:40:07.185528
18	15	4	4	244	2020-06-16 12:40:07.190889	2020-06-16 12:40:07.190889
19	50	1	4	286	2020-06-16 12:40:07.196374	2020-06-16 12:40:07.196374
20	51	2	4	168	2020-06-16 12:40:07.20064	2020-06-16 12:40:07.20064
21	45	3	4	357	2020-06-16 12:40:07.204662	2020-06-16 12:40:07.204662
22	64	5	5	390	2020-06-16 12:40:07.208672	2020-06-16 12:40:07.208672
23	96	4	5	243	2020-06-16 12:40:07.213087	2020-06-16 12:40:07.213087
24	31	4	5	368	2020-06-16 12:40:07.217311	2020-06-16 12:40:07.217311
25	61	4	5	419	2020-06-16 12:40:07.22215	2020-06-16 12:40:07.22215
26	86	1	5	424	2020-06-16 12:40:07.228763	2020-06-16 12:40:07.228763
27	99	3	5	248	2020-06-16 12:40:07.232597	2020-06-16 12:40:07.232597
28	27	1	5	373	2020-06-16 12:40:07.236182	2020-06-16 12:40:07.236182
29	77	4	6	394	2020-06-16 12:40:07.239754	2020-06-16 12:40:07.239754
30	76	5	6	346	2020-06-16 12:40:07.243369	2020-06-16 12:40:07.243369
31	53	4	6	390	2020-06-16 12:40:07.247054	2020-06-16 12:40:07.247054
32	73	3	6	554	2020-06-16 12:40:07.250504	2020-06-16 12:40:07.250504
33	74	5	6	497	2020-06-16 12:40:07.253926	2020-06-16 12:40:07.253926
34	90	1	7	248	2020-06-16 12:40:07.257295	2020-06-16 12:40:07.257295
35	81	2	7	546	2020-06-16 12:40:07.260764	2020-06-16 12:40:07.260764
36	12	4	7	129	2020-06-16 12:40:07.265704	2020-06-16 12:40:07.265704
37	33	2	7	270	2020-06-16 12:40:07.270908	2020-06-16 12:40:07.270908
38	42	2	7	33	2020-06-16 12:40:07.274984	2020-06-16 12:40:07.274984
39	52	4	7	152	2020-06-16 12:40:07.278473	2020-06-16 12:40:07.278473
40	50	4	7	451	2020-06-16 12:40:07.28159	2020-06-16 12:40:07.28159
41	32	4	7	435	2020-06-16 12:40:07.284602	2020-06-16 12:40:07.284602
42	27	4	7	197	2020-06-16 12:40:07.28763	2020-06-16 12:40:07.28763
43	12	3	8	135	2020-06-16 12:40:07.290707	2020-06-16 12:40:07.290707
44	96	5	8	161	2020-06-16 12:40:07.293485	2020-06-16 12:40:07.293485
45	72	5	8	223	2020-06-16 12:40:07.296306	2020-06-16 12:40:07.296306
46	62	1	8	167	2020-06-16 12:40:07.300094	2020-06-16 12:40:07.300094
47	47	3	9	436	2020-06-16 12:40:07.303093	2020-06-16 12:40:07.303093
48	56	3	9	7	2020-06-16 12:40:07.306374	2020-06-16 12:40:07.306374
49	75	4	9	575	2020-06-16 12:40:07.309461	2020-06-16 12:40:07.309461
50	58	5	10	359	2020-06-16 12:40:07.312631	2020-06-16 12:40:07.312631
51	90	4	10	338	2020-06-16 12:40:07.315975	2020-06-16 12:40:07.315975
52	68	5	10	356	2020-06-16 12:40:07.319753	2020-06-16 12:40:07.319753
53	26	4	10	12	2020-06-16 12:40:07.323134	2020-06-16 12:40:07.323134
54	22	2	10	541	2020-06-16 12:40:07.326417	2020-06-16 12:40:07.326417
55	27	4	10	585	2020-06-16 12:40:07.329522	2020-06-16 12:40:07.329522
56	91	4	10	411	2020-06-16 12:40:07.33257	2020-06-16 12:40:07.33257
57	57	3	10	451	2020-06-16 12:40:07.335726	2020-06-16 12:40:07.335726
58	84	5	11	43	2020-06-16 12:40:07.338662	2020-06-16 12:40:07.338662
59	66	2	12	82	2020-06-16 12:40:07.341582	2020-06-16 12:40:07.341582
60	17	3	12	115	2020-06-16 12:40:07.34456	2020-06-16 12:40:07.34456
61	31	5	12	78	2020-06-16 12:40:07.347749	2020-06-16 12:40:07.347749
62	33	5	12	414	2020-06-16 12:40:07.35096	2020-06-16 12:40:07.35096
63	89	1	12	497	2020-06-16 12:40:07.354382	2020-06-16 12:40:07.354382
64	57	5	13	133	2020-06-16 12:40:07.357912	2020-06-16 12:40:07.357912
65	36	3	13	496	2020-06-16 12:40:07.361495	2020-06-16 12:40:07.361495
66	59	4	13	241	2020-06-16 12:40:07.365171	2020-06-16 12:40:07.365171
67	25	1	13	595	2020-06-16 12:40:07.368664	2020-06-16 12:40:07.368664
68	77	2	13	500	2020-06-16 12:40:07.372277	2020-06-16 12:40:07.372277
69	95	2	13	567	2020-06-16 12:40:07.376393	2020-06-16 12:40:07.376393
70	2	2	14	389	2020-06-16 12:40:07.381036	2020-06-16 12:40:07.381036
71	7	4	14	187	2020-06-16 12:40:07.385132	2020-06-16 12:40:07.385132
72	52	5	14	3	2020-06-16 12:40:07.389933	2020-06-16 12:40:07.389933
73	75	5	14	582	2020-06-16 12:40:07.395143	2020-06-16 12:40:07.395143
74	94	1	15	197	2020-06-16 12:40:07.40034	2020-06-16 12:40:07.40034
75	57	5	15	488	2020-06-16 12:40:07.405248	2020-06-16 12:40:07.405248
76	16	1	15	153	2020-06-16 12:40:07.410103	2020-06-16 12:40:07.410103
77	32	5	16	325	2020-06-16 12:40:07.41542	2020-06-16 12:40:07.41542
78	80	4	16	106	2020-06-16 12:40:07.420644	2020-06-16 12:40:07.420644
79	94	2	16	166	2020-06-16 12:40:07.425923	2020-06-16 12:40:07.425923
80	83	1	16	242	2020-06-16 12:40:07.431257	2020-06-16 12:40:07.431257
81	27	5	16	386	2020-06-16 12:40:07.436432	2020-06-16 12:40:07.436432
82	39	2	16	182	2020-06-16 12:40:07.440677	2020-06-16 12:40:07.440677
83	36	2	16	169	2020-06-16 12:40:07.444963	2020-06-16 12:40:07.444963
84	82	1	17	260	2020-06-16 12:40:07.4561	2020-06-16 12:40:07.4561
85	36	2	17	279	2020-06-16 12:40:07.465982	2020-06-16 12:40:07.465982
86	5	4	17	527	2020-06-16 12:40:07.469572	2020-06-16 12:40:07.469572
87	14	1	17	399	2020-06-16 12:40:07.472817	2020-06-16 12:40:07.472817
88	10	1	17	275	2020-06-16 12:40:07.476703	2020-06-16 12:40:07.476703
89	43	1	17	108	2020-06-16 12:40:07.482013	2020-06-16 12:40:07.482013
90	11	3	17	120	2020-06-16 12:40:07.48704	2020-06-16 12:40:07.48704
91	1	1	17	265	2020-06-16 12:40:07.492098	2020-06-16 12:40:07.492098
92	96	3	17	552	2020-06-16 12:40:07.496617	2020-06-16 12:40:07.496617
93	40	2	17	33	2020-06-16 12:40:07.500869	2020-06-16 12:40:07.500869
94	77	1	18	242	2020-06-16 12:40:07.505521	2020-06-16 12:40:07.505521
95	38	1	18	215	2020-06-16 12:40:07.511047	2020-06-16 12:40:07.511047
96	93	4	18	487	2020-06-16 12:40:07.515763	2020-06-16 12:40:07.515763
97	70	3	18	26	2020-06-16 12:40:07.5198	2020-06-16 12:40:07.5198
98	69	2	18	472	2020-06-16 12:40:07.524423	2020-06-16 12:40:07.524423
99	39	1	18	246	2020-06-16 12:40:07.529431	2020-06-16 12:40:07.529431
100	80	3	18	371	2020-06-16 12:40:07.533854	2020-06-16 12:40:07.533854
101	88	5	18	103	2020-06-16 12:40:07.539169	2020-06-16 12:40:07.539169
102	64	4	18	286	2020-06-16 12:40:07.544318	2020-06-16 12:40:07.544318
103	10	4	18	229	2020-06-16 12:40:07.549511	2020-06-16 12:40:07.549511
104	36	3	19	520	2020-06-16 12:40:07.554724	2020-06-16 12:40:07.554724
105	72	3	19	290	2020-06-16 12:40:07.562262	2020-06-16 12:40:07.562262
106	5	5	19	16	2020-06-16 12:40:07.566578	2020-06-16 12:40:07.566578
107	55	3	19	50	2020-06-16 12:40:07.570777	2020-06-16 12:40:07.570777
108	15	5	19	75	2020-06-16 12:40:07.574668	2020-06-16 12:40:07.574668
109	71	5	19	538	2020-06-16 12:40:07.579353	2020-06-16 12:40:07.579353
110	35	5	19	434	2020-06-16 12:40:07.584203	2020-06-16 12:40:07.584203
111	70	3	19	388	2020-06-16 12:40:07.589388	2020-06-16 12:40:07.589388
112	36	5	19	385	2020-06-16 12:40:07.594722	2020-06-16 12:40:07.594722
113	33	5	19	441	2020-06-16 12:40:07.599929	2020-06-16 12:40:07.599929
114	41	3	20	589	2020-06-16 12:40:07.605183	2020-06-16 12:40:07.605183
115	9	2	20	511	2020-06-16 12:40:07.61055	2020-06-16 12:40:07.61055
116	10	3	20	510	2020-06-16 12:40:07.615846	2020-06-16 12:40:07.615846
117	52	2	20	247	2020-06-16 12:40:07.620724	2020-06-16 12:40:07.620724
118	55	3	20	319	2020-06-16 12:40:07.625937	2020-06-16 12:40:07.625937
119	89	4	21	237	2020-06-16 12:40:07.631233	2020-06-16 12:40:07.631233
120	91	2	22	222	2020-06-16 12:40:07.636435	2020-06-16 12:40:07.636435
121	42	2	22	338	2020-06-16 12:40:07.641686	2020-06-16 12:40:07.641686
122	58	5	23	310	2020-06-16 12:40:07.646834	2020-06-16 12:40:07.646834
123	25	3	23	215	2020-06-16 12:40:07.651922	2020-06-16 12:40:07.651922
124	54	2	23	107	2020-06-16 12:40:07.657046	2020-06-16 12:40:07.657046
125	41	4	23	79	2020-06-16 12:40:07.662202	2020-06-16 12:40:07.662202
126	57	5	23	353	2020-06-16 12:40:07.667496	2020-06-16 12:40:07.667496
127	52	4	23	273	2020-06-16 12:40:07.672582	2020-06-16 12:40:07.672582
128	16	3	24	67	2020-06-16 12:40:07.677155	2020-06-16 12:40:07.677155
129	32	5	24	504	2020-06-16 12:40:07.683454	2020-06-16 12:40:07.683454
130	14	3	24	106	2020-06-16 12:40:07.688583	2020-06-16 12:40:07.688583
131	53	3	24	204	2020-06-16 12:40:07.693832	2020-06-16 12:40:07.693832
132	100	3	24	127	2020-06-16 12:40:07.698893	2020-06-16 12:40:07.698893
133	24	3	25	139	2020-06-16 12:40:07.704272	2020-06-16 12:40:07.704272
134	23	3	25	114	2020-06-16 12:40:07.709356	2020-06-16 12:40:07.709356
135	52	3	25	363	2020-06-16 12:40:07.715548	2020-06-16 12:40:07.715548
136	31	2	25	357	2020-06-16 12:40:07.721047	2020-06-16 12:40:07.721047
137	100	3	25	257	2020-06-16 12:40:07.726471	2020-06-16 12:40:07.726471
138	53	3	25	107	2020-06-16 12:40:07.731782	2020-06-16 12:40:07.731782
139	78	2	25	407	2020-06-16 12:40:07.737012	2020-06-16 12:40:07.737012
140	72	2	25	397	2020-06-16 12:40:07.742319	2020-06-16 12:40:07.742319
141	52	3	25	218	2020-06-16 12:40:07.747546	2020-06-16 12:40:07.747546
142	14	2	26	138	2020-06-16 12:40:07.752759	2020-06-16 12:40:07.752759
143	22	1	26	76	2020-06-16 12:40:07.757902	2020-06-16 12:40:07.757902
144	48	3	27	95	2020-06-16 12:40:07.76313	2020-06-16 12:40:07.76313
145	27	2	27	54	2020-06-16 12:40:07.768411	2020-06-16 12:40:07.768411
146	97	3	27	88	2020-06-16 12:40:07.773902	2020-06-16 12:40:07.773902
147	37	4	27	210	2020-06-16 12:40:07.778344	2020-06-16 12:40:07.778344
148	19	2	27	320	2020-06-16 12:40:07.782118	2020-06-16 12:40:07.782118
149	72	2	27	334	2020-06-16 12:40:07.785257	2020-06-16 12:40:07.785257
150	84	2	27	398	2020-06-16 12:40:07.788395	2020-06-16 12:40:07.788395
151	90	3	27	563	2020-06-16 12:40:07.791274	2020-06-16 12:40:07.791274
152	46	5	27	574	2020-06-16 12:40:07.794416	2020-06-16 12:40:07.794416
153	86	2	27	423	2020-06-16 12:40:07.797757	2020-06-16 12:40:07.797757
154	63	5	28	298	2020-06-16 12:40:07.801787	2020-06-16 12:40:07.801787
155	49	2	29	583	2020-06-16 12:40:07.805098	2020-06-16 12:40:07.805098
156	32	1	29	480	2020-06-16 12:40:07.808666	2020-06-16 12:40:07.808666
157	51	5	29	307	2020-06-16 12:40:07.811938	2020-06-16 12:40:07.811938
158	81	2	29	25	2020-06-16 12:40:07.814946	2020-06-16 12:40:07.814946
159	63	3	29	4	2020-06-16 12:40:07.819036	2020-06-16 12:40:07.819036
160	4	3	29	562	2020-06-16 12:40:07.82242	2020-06-16 12:40:07.82242
161	42	1	30	383	2020-06-16 12:40:07.825767	2020-06-16 12:40:07.825767
162	62	5	30	189	2020-06-16 12:40:07.829112	2020-06-16 12:40:07.829112
163	48	2	30	89	2020-06-16 12:40:07.832397	2020-06-16 12:40:07.832397
164	28	5	30	439	2020-06-16 12:40:07.835969	2020-06-16 12:40:07.835969
165	59	5	30	250	2020-06-16 12:40:07.839383	2020-06-16 12:40:07.839383
166	83	1	30	597	2020-06-16 12:40:07.842783	2020-06-16 12:40:07.842783
167	23	4	30	412	2020-06-16 12:40:07.846066	2020-06-16 12:40:07.846066
168	28	2	31	332	2020-06-16 12:40:07.849034	2020-06-16 12:40:07.849034
169	13	4	31	288	2020-06-16 12:40:07.852174	2020-06-16 12:40:07.852174
170	10	4	31	10	2020-06-16 12:40:07.855677	2020-06-16 12:40:07.855677
171	66	5	31	426	2020-06-16 12:40:07.858898	2020-06-16 12:40:07.858898
172	34	5	31	197	2020-06-16 12:40:07.861898	2020-06-16 12:40:07.861898
173	55	2	31	390	2020-06-16 12:40:07.864876	2020-06-16 12:40:07.864876
174	86	1	32	265	2020-06-16 12:40:07.868025	2020-06-16 12:40:07.868025
175	68	4	33	592	2020-06-16 12:40:07.871547	2020-06-16 12:40:07.871547
176	28	5	33	160	2020-06-16 12:40:07.874974	2020-06-16 12:40:07.874974
177	48	4	33	206	2020-06-16 12:40:07.878648	2020-06-16 12:40:07.878648
178	25	3	33	66	2020-06-16 12:40:07.881936	2020-06-16 12:40:07.881936
179	61	4	34	47	2020-06-16 12:40:07.888221	2020-06-16 12:40:07.888221
180	90	5	34	157	2020-06-16 12:40:07.891452	2020-06-16 12:40:07.891452
181	61	1	34	64	2020-06-16 12:40:07.894774	2020-06-16 12:40:07.894774
182	20	1	34	189	2020-06-16 12:40:07.897871	2020-06-16 12:40:07.897871
183	47	1	34	165	2020-06-16 12:40:07.900925	2020-06-16 12:40:07.900925
184	41	3	35	286	2020-06-16 12:40:07.904153	2020-06-16 12:40:07.904153
185	68	3	35	386	2020-06-16 12:40:07.907496	2020-06-16 12:40:07.907496
186	93	2	35	64	2020-06-16 12:40:07.910876	2020-06-16 12:40:07.910876
187	32	1	35	207	2020-06-16 12:40:07.9144	2020-06-16 12:40:07.9144
188	94	5	35	563	2020-06-16 12:40:07.917994	2020-06-16 12:40:07.917994
189	82	4	35	238	2020-06-16 12:40:07.921722	2020-06-16 12:40:07.921722
190	11	1	35	421	2020-06-16 12:40:07.926074	2020-06-16 12:40:07.926074
191	99	1	35	72	2020-06-16 12:40:07.929671	2020-06-16 12:40:07.929671
192	59	4	36	550	2020-06-16 12:40:07.933467	2020-06-16 12:40:07.933467
193	98	3	36	202	2020-06-16 12:40:07.937567	2020-06-16 12:40:07.937567
194	55	4	36	549	2020-06-16 12:40:07.94137	2020-06-16 12:40:07.94137
195	20	5	36	149	2020-06-16 12:40:07.944968	2020-06-16 12:40:07.944968
196	33	3	36	242	2020-06-16 12:40:07.9484	2020-06-16 12:40:07.9484
197	3	4	36	239	2020-06-16 12:40:07.952048	2020-06-16 12:40:07.952048
198	6	2	36	176	2020-06-16 12:40:07.95602	2020-06-16 12:40:07.95602
199	81	3	36	485	2020-06-16 12:40:07.959626	2020-06-16 12:40:07.959626
200	14	2	37	21	2020-06-16 12:40:07.963342	2020-06-16 12:40:07.963342
201	48	1	37	190	2020-06-16 12:40:07.967534	2020-06-16 12:40:07.967534
202	4	5	37	219	2020-06-16 12:40:07.973199	2020-06-16 12:40:07.973199
203	6	1	37	375	2020-06-16 12:40:07.977233	2020-06-16 12:40:07.977233
204	4	3	37	75	2020-06-16 12:40:07.981436	2020-06-16 12:40:07.981436
205	38	1	37	100	2020-06-16 12:40:07.985677	2020-06-16 12:40:07.985677
206	64	5	37	255	2020-06-16 12:40:07.989621	2020-06-16 12:40:07.989621
207	58	4	37	150	2020-06-16 12:40:07.993709	2020-06-16 12:40:07.993709
208	71	1	37	460	2020-06-16 12:40:07.997863	2020-06-16 12:40:07.997863
209	32	5	38	38	2020-06-16 12:40:08.001903	2020-06-16 12:40:08.001903
210	11	1	39	302	2020-06-16 12:40:08.005904	2020-06-16 12:40:08.005904
211	91	2	39	81	2020-06-16 12:40:08.010163	2020-06-16 12:40:08.010163
212	7	2	39	582	2020-06-16 12:40:08.014887	2020-06-16 12:40:08.014887
213	96	3	39	329	2020-06-16 12:40:08.019262	2020-06-16 12:40:08.019262
214	11	5	39	323	2020-06-16 12:40:08.023575	2020-06-16 12:40:08.023575
215	51	2	39	517	2020-06-16 12:40:08.027655	2020-06-16 12:40:08.027655
216	98	4	39	335	2020-06-16 12:40:08.032295	2020-06-16 12:40:08.032295
217	75	5	40	320	2020-06-16 12:40:08.036446	2020-06-16 12:40:08.036446
218	22	5	40	286	2020-06-16 12:40:08.040727	2020-06-16 12:40:08.040727
219	82	3	40	537	2020-06-16 12:40:08.044549	2020-06-16 12:40:08.044549
220	69	3	40	299	2020-06-16 12:40:08.048367	2020-06-16 12:40:08.048367
221	59	4	40	59	2020-06-16 12:40:08.052082	2020-06-16 12:40:08.052082
222	16	3	40	60	2020-06-16 12:40:08.055532	2020-06-16 12:40:08.055532
223	91	4	40	123	2020-06-16 12:40:08.059004	2020-06-16 12:40:08.059004
224	44	5	40	47	2020-06-16 12:40:08.062533	2020-06-16 12:40:08.062533
225	73	5	40	427	2020-06-16 12:40:08.066014	2020-06-16 12:40:08.066014
226	23	3	41	351	2020-06-16 12:40:08.069456	2020-06-16 12:40:08.069456
227	16	2	41	311	2020-06-16 12:40:08.072844	2020-06-16 12:40:08.072844
228	3	3	41	476	2020-06-16 12:40:08.076324	2020-06-16 12:40:08.076324
229	55	4	42	578	2020-06-16 12:40:08.079786	2020-06-16 12:40:08.079786
230	62	1	42	573	2020-06-16 12:40:08.083539	2020-06-16 12:40:08.083539
231	92	3	42	586	2020-06-16 12:40:08.087101	2020-06-16 12:40:08.087101
232	99	1	42	89	2020-06-16 12:40:08.090477	2020-06-16 12:40:08.090477
233	35	3	42	48	2020-06-16 12:40:08.09404	2020-06-16 12:40:08.09404
234	79	3	42	151	2020-06-16 12:40:08.097505	2020-06-16 12:40:08.097505
235	44	2	43	259	2020-06-16 12:40:08.101371	2020-06-16 12:40:08.101371
236	90	4	43	305	2020-06-16 12:40:08.10493	2020-06-16 12:40:08.10493
237	71	4	43	320	2020-06-16 12:40:08.108543	2020-06-16 12:40:08.108543
238	33	3	43	85	2020-06-16 12:40:08.112053	2020-06-16 12:40:08.112053
239	2	1	44	95	2020-06-16 12:40:08.115482	2020-06-16 12:40:08.115482
240	57	2	44	462	2020-06-16 12:40:08.118939	2020-06-16 12:40:08.118939
241	78	4	44	413	2020-06-16 12:40:08.122597	2020-06-16 12:40:08.122597
242	71	1	44	401	2020-06-16 12:40:08.126146	2020-06-16 12:40:08.126146
243	38	5	44	234	2020-06-16 12:40:08.130173	2020-06-16 12:40:08.130173
244	76	3	44	184	2020-06-16 12:40:08.134492	2020-06-16 12:40:08.134492
245	71	4	44	121	2020-06-16 12:40:08.138838	2020-06-16 12:40:08.138838
246	48	2	44	572	2020-06-16 12:40:08.144022	2020-06-16 12:40:08.144022
247	79	5	45	518	2020-06-16 12:40:08.149916	2020-06-16 12:40:08.149916
248	20	3	45	599	2020-06-16 12:40:08.157246	2020-06-16 12:40:08.157246
249	98	5	45	374	2020-06-16 12:40:08.161407	2020-06-16 12:40:08.161407
250	46	5	45	587	2020-06-16 12:40:08.165841	2020-06-16 12:40:08.165841
251	85	3	45	87	2020-06-16 12:40:08.169972	2020-06-16 12:40:08.169972
252	80	5	45	459	2020-06-16 12:40:08.175365	2020-06-16 12:40:08.175365
253	60	2	45	71	2020-06-16 12:40:08.180568	2020-06-16 12:40:08.180568
254	26	2	45	309	2020-06-16 12:40:08.185791	2020-06-16 12:40:08.185791
255	47	2	45	70	2020-06-16 12:40:08.190142	2020-06-16 12:40:08.190142
256	45	2	46	440	2020-06-16 12:40:08.195446	2020-06-16 12:40:08.195446
257	79	5	46	371	2020-06-16 12:40:08.200247	2020-06-16 12:40:08.200247
258	68	2	46	580	2020-06-16 12:40:08.204643	2020-06-16 12:40:08.204643
259	64	4	46	3	2020-06-16 12:40:08.209474	2020-06-16 12:40:08.209474
260	46	2	46	459	2020-06-16 12:40:08.214809	2020-06-16 12:40:08.214809
261	86	3	46	298	2020-06-16 12:40:08.219971	2020-06-16 12:40:08.219971
262	15	5	47	244	2020-06-16 12:40:08.225482	2020-06-16 12:40:08.225482
263	44	4	47	410	2020-06-16 12:40:08.230698	2020-06-16 12:40:08.230698
264	2	3	47	453	2020-06-16 12:40:08.235638	2020-06-16 12:40:08.235638
265	38	3	47	396	2020-06-16 12:40:08.240283	2020-06-16 12:40:08.240283
266	13	5	47	89	2020-06-16 12:40:08.244442	2020-06-16 12:40:08.244442
267	22	5	47	233	2020-06-16 12:40:08.24835	2020-06-16 12:40:08.24835
268	38	5	48	364	2020-06-16 12:40:08.251873	2020-06-16 12:40:08.251873
269	51	4	49	292	2020-06-16 12:40:08.255419	2020-06-16 12:40:08.255419
270	35	3	49	33	2020-06-16 12:40:08.258932	2020-06-16 12:40:08.258932
271	65	1	49	37	2020-06-16 12:40:08.262002	2020-06-16 12:40:08.262002
272	80	2	49	423	2020-06-16 12:40:08.265239	2020-06-16 12:40:08.265239
273	12	1	49	359	2020-06-16 12:40:08.268549	2020-06-16 12:40:08.268549
274	5	3	49	503	2020-06-16 12:40:08.272016	2020-06-16 12:40:08.272016
275	34	2	49	419	2020-06-16 12:40:08.276193	2020-06-16 12:40:08.276193
276	69	1	50	184	2020-06-16 12:40:08.279772	2020-06-16 12:40:08.279772
277	13	1	51	157	2020-06-16 12:40:08.282917	2020-06-16 12:40:08.282917
278	26	3	51	327	2020-06-16 12:40:08.285901	2020-06-16 12:40:08.285901
279	94	4	51	337	2020-06-16 12:40:08.288827	2020-06-16 12:40:08.288827
280	86	4	51	60	2020-06-16 12:40:08.291636	2020-06-16 12:40:08.291636
281	96	1	51	135	2020-06-16 12:40:08.294565	2020-06-16 12:40:08.294565
282	81	5	51	387	2020-06-16 12:40:08.297665	2020-06-16 12:40:08.297665
283	89	4	52	406	2020-06-16 12:40:08.30143	2020-06-16 12:40:08.30143
284	11	2	52	250	2020-06-16 12:40:08.305271	2020-06-16 12:40:08.305271
285	27	3	52	23	2020-06-16 12:40:08.309416	2020-06-16 12:40:08.309416
286	74	2	53	159	2020-06-16 12:40:08.313616	2020-06-16 12:40:08.313616
287	61	5	53	580	2020-06-16 12:40:08.321328	2020-06-16 12:40:08.321328
288	59	1	53	182	2020-06-16 12:40:08.325235	2020-06-16 12:40:08.325235
289	72	4	53	157	2020-06-16 12:40:08.328674	2020-06-16 12:40:08.328674
290	8	5	53	400	2020-06-16 12:40:08.33219	2020-06-16 12:40:08.33219
291	41	1	53	255	2020-06-16 12:40:08.335503	2020-06-16 12:40:08.335503
292	42	1	53	534	2020-06-16 12:40:08.339125	2020-06-16 12:40:08.339125
293	10	2	54	205	2020-06-16 12:40:08.342962	2020-06-16 12:40:08.342962
294	73	1	54	454	2020-06-16 12:40:08.346255	2020-06-16 12:40:08.346255
295	86	3	54	32	2020-06-16 12:40:08.349412	2020-06-16 12:40:08.349412
296	9	5	54	97	2020-06-16 12:40:08.352395	2020-06-16 12:40:08.352395
297	61	3	54	358	2020-06-16 12:40:08.355331	2020-06-16 12:40:08.355331
298	1	5	55	324	2020-06-16 12:40:08.358478	2020-06-16 12:40:08.358478
299	29	2	55	185	2020-06-16 12:40:08.362629	2020-06-16 12:40:08.362629
300	100	2	56	317	2020-06-16 12:40:08.366434	2020-06-16 12:40:08.366434
301	91	2	56	412	2020-06-16 12:40:08.369887	2020-06-16 12:40:08.369887
302	22	3	56	453	2020-06-16 12:40:08.373121	2020-06-16 12:40:08.373121
303	85	3	56	62	2020-06-16 12:40:08.376146	2020-06-16 12:40:08.376146
304	8	4	56	409	2020-06-16 12:40:08.379529	2020-06-16 12:40:08.379529
305	7	2	56	148	2020-06-16 12:40:08.38276	2020-06-16 12:40:08.38276
306	14	1	56	318	2020-06-16 12:40:08.385787	2020-06-16 12:40:08.385787
307	92	1	56	401	2020-06-16 12:40:08.388879	2020-06-16 12:40:08.388879
308	46	5	57	348	2020-06-16 12:40:08.392249	2020-06-16 12:40:08.392249
309	6	3	57	324	2020-06-16 12:40:08.395699	2020-06-16 12:40:08.395699
310	77	2	57	421	2020-06-16 12:40:08.399312	2020-06-16 12:40:08.399312
311	11	3	58	252	2020-06-16 12:40:08.403077	2020-06-16 12:40:08.403077
312	57	1	58	114	2020-06-16 12:40:08.406699	2020-06-16 12:40:08.406699
313	74	2	58	135	2020-06-16 12:40:08.412076	2020-06-16 12:40:08.412076
314	59	2	58	427	2020-06-16 12:40:08.415444	2020-06-16 12:40:08.415444
315	69	3	58	564	2020-06-16 12:40:08.418823	2020-06-16 12:40:08.418823
316	12	4	58	407	2020-06-16 12:40:08.422126	2020-06-16 12:40:08.422126
317	37	2	58	113	2020-06-16 12:40:08.42712	2020-06-16 12:40:08.42712
318	98	1	59	329	2020-06-16 12:40:08.434608	2020-06-16 12:40:08.434608
319	55	1	59	378	2020-06-16 12:40:08.437687	2020-06-16 12:40:08.437687
320	68	4	59	463	2020-06-16 12:40:08.440733	2020-06-16 12:40:08.440733
321	98	3	59	12	2020-06-16 12:40:08.443593	2020-06-16 12:40:08.443593
322	79	5	59	67	2020-06-16 12:40:08.446259	2020-06-16 12:40:08.446259
323	99	4	59	434	2020-06-16 12:40:08.449114	2020-06-16 12:40:08.449114
324	35	2	60	266	2020-06-16 12:40:08.451849	2020-06-16 12:40:08.451849
325	56	1	61	76	2020-06-16 12:40:08.454645	2020-06-16 12:40:08.454645
326	62	1	61	353	2020-06-16 12:40:08.457721	2020-06-16 12:40:08.457721
327	50	1	61	431	2020-06-16 12:40:08.460604	2020-06-16 12:40:08.460604
328	4	5	61	249	2020-06-16 12:40:08.463601	2020-06-16 12:40:08.463601
329	2	1	61	297	2020-06-16 12:40:08.466535	2020-06-16 12:40:08.466535
330	64	1	61	188	2020-06-16 12:40:08.469602	2020-06-16 12:40:08.469602
331	2	5	61	483	2020-06-16 12:40:08.472757	2020-06-16 12:40:08.472757
332	27	5	62	481	2020-06-16 12:40:08.475745	2020-06-16 12:40:08.475745
333	77	4	62	59	2020-06-16 12:40:08.478819	2020-06-16 12:40:08.478819
334	12	4	62	338	2020-06-16 12:40:08.481857	2020-06-16 12:40:08.481857
335	68	1	62	255	2020-06-16 12:40:08.484839	2020-06-16 12:40:08.484839
336	66	3	62	273	2020-06-16 12:40:08.488105	2020-06-16 12:40:08.488105
337	43	3	63	300	2020-06-16 12:40:08.491522	2020-06-16 12:40:08.491522
338	41	3	63	255	2020-06-16 12:40:08.494485	2020-06-16 12:40:08.494485
339	52	3	63	579	2020-06-16 12:40:08.497517	2020-06-16 12:40:08.497517
340	7	4	63	326	2020-06-16 12:40:08.500431	2020-06-16 12:40:08.500431
341	48	2	63	296	2020-06-16 12:40:08.503704	2020-06-16 12:40:08.503704
342	71	1	63	302	2020-06-16 12:40:08.507248	2020-06-16 12:40:08.507248
343	88	1	63	540	2020-06-16 12:40:08.510645	2020-06-16 12:40:08.510645
344	41	5	63	59	2020-06-16 12:40:08.514132	2020-06-16 12:40:08.514132
345	9	3	63	317	2020-06-16 12:40:08.518372	2020-06-16 12:40:08.518372
346	22	2	63	455	2020-06-16 12:40:08.522501	2020-06-16 12:40:08.522501
347	89	2	64	568	2020-06-16 12:40:08.526601	2020-06-16 12:40:08.526601
348	13	1	64	434	2020-06-16 12:40:08.530447	2020-06-16 12:40:08.530447
349	34	2	64	567	2020-06-16 12:40:08.534474	2020-06-16 12:40:08.534474
350	12	3	65	95	2020-06-16 12:40:08.538141	2020-06-16 12:40:08.538141
351	14	5	65	239	2020-06-16 12:40:08.541901	2020-06-16 12:40:08.541901
352	100	3	66	63	2020-06-16 12:40:08.546178	2020-06-16 12:40:08.546178
353	92	3	66	563	2020-06-16 12:40:08.549874	2020-06-16 12:40:08.549874
354	75	2	66	2	2020-06-16 12:40:08.553452	2020-06-16 12:40:08.553452
355	74	4	67	318	2020-06-16 12:40:08.556587	2020-06-16 12:40:08.556587
356	30	3	67	143	2020-06-16 12:40:08.559981	2020-06-16 12:40:08.559981
357	90	3	67	57	2020-06-16 12:40:08.563446	2020-06-16 12:40:08.563446
358	80	1	67	262	2020-06-16 12:40:08.566693	2020-06-16 12:40:08.566693
359	79	3	67	178	2020-06-16 12:40:08.570164	2020-06-16 12:40:08.570164
360	2	1	67	587	2020-06-16 12:40:08.574489	2020-06-16 12:40:08.574489
361	86	4	67	77	2020-06-16 12:40:08.578563	2020-06-16 12:40:08.578563
362	9	4	68	13	2020-06-16 12:40:08.582126	2020-06-16 12:40:08.582126
363	18	5	68	482	2020-06-16 12:40:08.585885	2020-06-16 12:40:08.585885
364	46	2	68	214	2020-06-16 12:40:08.589474	2020-06-16 12:40:08.589474
365	2	1	68	122	2020-06-16 12:40:08.593007	2020-06-16 12:40:08.593007
366	57	5	68	51	2020-06-16 12:40:08.596474	2020-06-16 12:40:08.596474
367	81	5	68	503	2020-06-16 12:40:08.600137	2020-06-16 12:40:08.600137
368	45	1	68	71	2020-06-16 12:40:08.603802	2020-06-16 12:40:08.603802
369	3	1	69	158	2020-06-16 12:40:08.607624	2020-06-16 12:40:08.607624
370	19	4	69	29	2020-06-16 12:40:08.611293	2020-06-16 12:40:08.611293
371	32	4	69	506	2020-06-16 12:40:08.615024	2020-06-16 12:40:08.615024
372	12	5	69	110	2020-06-16 12:40:08.619493	2020-06-16 12:40:08.619493
373	50	5	69	89	2020-06-16 12:40:08.625758	2020-06-16 12:40:08.625758
374	11	1	69	45	2020-06-16 12:40:08.630022	2020-06-16 12:40:08.630022
375	85	5	69	395	2020-06-16 12:40:08.634499	2020-06-16 12:40:08.634499
376	66	2	70	86	2020-06-16 12:40:08.639566	2020-06-16 12:40:08.639566
377	81	3	71	270	2020-06-16 12:40:08.644267	2020-06-16 12:40:08.644267
378	2	2	71	152	2020-06-16 12:40:08.64848	2020-06-16 12:40:08.64848
379	73	2	71	232	2020-06-16 12:40:08.653121	2020-06-16 12:40:08.653121
380	55	4	72	117	2020-06-16 12:40:08.658173	2020-06-16 12:40:08.658173
381	90	3	72	329	2020-06-16 12:40:08.662377	2020-06-16 12:40:08.662377
382	43	3	73	220	2020-06-16 12:40:08.666274	2020-06-16 12:40:08.666274
383	58	1	74	402	2020-06-16 12:40:08.66983	2020-06-16 12:40:08.66983
384	37	1	74	335	2020-06-16 12:40:08.673312	2020-06-16 12:40:08.673312
385	95	4	74	338	2020-06-16 12:40:08.676971	2020-06-16 12:40:08.676971
386	62	1	74	165	2020-06-16 12:40:08.680715	2020-06-16 12:40:08.680715
387	75	2	74	192	2020-06-16 12:40:08.684321	2020-06-16 12:40:08.684321
388	13	2	74	406	2020-06-16 12:40:08.688114	2020-06-16 12:40:08.688114
389	67	5	74	117	2020-06-16 12:40:08.691825	2020-06-16 12:40:08.691825
390	93	3	74	470	2020-06-16 12:40:08.694913	2020-06-16 12:40:08.694913
391	23	4	75	322	2020-06-16 12:40:08.698419	2020-06-16 12:40:08.698419
392	96	5	75	396	2020-06-16 12:40:08.701638	2020-06-16 12:40:08.701638
393	97	5	75	427	2020-06-16 12:40:08.704902	2020-06-16 12:40:08.704902
394	59	2	75	451	2020-06-16 12:40:08.708143	2020-06-16 12:40:08.708143
395	27	4	75	159	2020-06-16 12:40:08.711165	2020-06-16 12:40:08.711165
396	10	4	75	267	2020-06-16 12:40:08.714188	2020-06-16 12:40:08.714188
397	74	4	75	456	2020-06-16 12:40:08.717438	2020-06-16 12:40:08.717438
398	5	4	75	249	2020-06-16 12:40:08.72071	2020-06-16 12:40:08.72071
399	64	4	76	318	2020-06-16 12:40:08.724203	2020-06-16 12:40:08.724203
400	1	3	76	565	2020-06-16 12:40:08.728065	2020-06-16 12:40:08.728065
401	45	4	76	527	2020-06-16 12:40:08.73196	2020-06-16 12:40:08.73196
402	7	3	76	585	2020-06-16 12:40:08.735629	2020-06-16 12:40:08.735629
403	18	2	76	108	2020-06-16 12:40:08.739299	2020-06-16 12:40:08.739299
404	38	3	76	10	2020-06-16 12:40:08.743244	2020-06-16 12:40:08.743244
405	26	5	76	312	2020-06-16 12:40:08.746799	2020-06-16 12:40:08.746799
406	60	5	76	455	2020-06-16 12:40:08.750354	2020-06-16 12:40:08.750354
407	43	1	76	422	2020-06-16 12:40:08.754976	2020-06-16 12:40:08.754976
408	5	1	76	567	2020-06-16 12:40:08.758425	2020-06-16 12:40:08.758425
409	92	3	77	324	2020-06-16 12:40:08.762543	2020-06-16 12:40:08.762543
410	66	3	77	404	2020-06-16 12:40:08.766203	2020-06-16 12:40:08.766203
411	35	1	78	385	2020-06-16 12:40:08.773833	2020-06-16 12:40:08.773833
412	16	2	78	525	2020-06-16 12:40:08.778142	2020-06-16 12:40:08.778142
413	40	5	78	480	2020-06-16 12:40:08.782742	2020-06-16 12:40:08.782742
414	83	1	78	440	2020-06-16 12:40:08.786327	2020-06-16 12:40:08.786327
415	91	2	78	192	2020-06-16 12:40:08.789615	2020-06-16 12:40:08.789615
416	18	4	78	217	2020-06-16 12:40:08.792451	2020-06-16 12:40:08.792451
417	13	5	78	36	2020-06-16 12:40:08.7953	2020-06-16 12:40:08.7953
418	94	1	78	279	2020-06-16 12:40:08.798052	2020-06-16 12:40:08.798052
419	60	2	78	582	2020-06-16 12:40:08.801455	2020-06-16 12:40:08.801455
420	70	4	79	58	2020-06-16 12:40:08.804319	2020-06-16 12:40:08.804319
421	67	2	79	165	2020-06-16 12:40:08.807232	2020-06-16 12:40:08.807232
422	4	4	79	404	2020-06-16 12:40:08.810227	2020-06-16 12:40:08.810227
423	91	2	79	580	2020-06-16 12:40:08.813582	2020-06-16 12:40:08.813582
424	57	5	79	521	2020-06-16 12:40:08.817462	2020-06-16 12:40:08.817462
425	5	4	79	55	2020-06-16 12:40:08.821121	2020-06-16 12:40:08.821121
426	40	1	79	529	2020-06-16 12:40:08.824673	2020-06-16 12:40:08.824673
427	42	2	79	402	2020-06-16 12:40:08.828286	2020-06-16 12:40:08.828286
428	56	5	79	319	2020-06-16 12:40:08.833576	2020-06-16 12:40:08.833576
429	62	1	80	169	2020-06-16 12:40:08.837428	2020-06-16 12:40:08.837428
430	79	3	80	571	2020-06-16 12:40:08.841305	2020-06-16 12:40:08.841305
431	7	1	81	384	2020-06-16 12:40:08.844741	2020-06-16 12:40:08.844741
432	45	2	81	134	2020-06-16 12:40:08.848075	2020-06-16 12:40:08.848075
433	73	1	81	448	2020-06-16 12:40:08.851292	2020-06-16 12:40:08.851292
434	53	1	81	514	2020-06-16 12:40:08.854452	2020-06-16 12:40:08.854452
435	11	3	81	492	2020-06-16 12:40:08.857659	2020-06-16 12:40:08.857659
436	41	1	81	398	2020-06-16 12:40:08.860741	2020-06-16 12:40:08.860741
437	96	1	82	542	2020-06-16 12:40:08.863815	2020-06-16 12:40:08.863815
438	70	1	82	101	2020-06-16 12:40:08.866974	2020-06-16 12:40:08.866974
439	99	5	82	129	2020-06-16 12:40:08.870103	2020-06-16 12:40:08.870103
440	13	2	82	174	2020-06-16 12:40:08.873287	2020-06-16 12:40:08.873287
441	26	2	82	132	2020-06-16 12:40:08.876445	2020-06-16 12:40:08.876445
442	13	2	83	113	2020-06-16 12:40:08.879301	2020-06-16 12:40:08.879301
443	74	5	83	71	2020-06-16 12:40:08.882331	2020-06-16 12:40:08.882331
444	95	3	84	576	2020-06-16 12:40:08.885403	2020-06-16 12:40:08.885403
445	84	2	84	98	2020-06-16 12:40:08.888717	2020-06-16 12:40:08.888717
446	63	4	84	164	2020-06-16 12:40:08.892162	2020-06-16 12:40:08.892162
447	42	5	84	382	2020-06-16 12:40:08.896291	2020-06-16 12:40:08.896291
448	30	1	85	435	2020-06-16 12:40:08.900079	2020-06-16 12:40:08.900079
449	22	3	85	398	2020-06-16 12:40:08.904105	2020-06-16 12:40:08.904105
450	63	1	85	235	2020-06-16 12:40:08.908256	2020-06-16 12:40:08.908256
451	53	3	85	336	2020-06-16 12:40:08.912258	2020-06-16 12:40:08.912258
452	73	4	85	60	2020-06-16 12:40:08.916368	2020-06-16 12:40:08.916368
453	17	3	85	52	2020-06-16 12:40:08.921059	2020-06-16 12:40:08.921059
454	69	2	85	555	2020-06-16 12:40:08.925111	2020-06-16 12:40:08.925111
455	28	2	85	25	2020-06-16 12:40:08.928671	2020-06-16 12:40:08.928671
456	28	4	85	63	2020-06-16 12:40:08.932491	2020-06-16 12:40:08.932491
457	99	3	85	594	2020-06-16 12:40:08.936316	2020-06-16 12:40:08.936316
458	47	2	86	396	2020-06-16 12:40:08.939957	2020-06-16 12:40:08.939957
459	55	1	86	584	2020-06-16 12:40:08.943655	2020-06-16 12:40:08.943655
460	84	3	86	229	2020-06-16 12:40:08.947718	2020-06-16 12:40:08.947718
461	32	2	86	204	2020-06-16 12:40:08.951851	2020-06-16 12:40:08.951851
462	98	1	86	141	2020-06-16 12:40:08.956032	2020-06-16 12:40:08.956032
463	19	5	87	217	2020-06-16 12:40:08.960343	2020-06-16 12:40:08.960343
464	8	3	87	279	2020-06-16 12:40:08.964592	2020-06-16 12:40:08.964592
465	86	4	87	459	2020-06-16 12:40:08.968877	2020-06-16 12:40:08.968877
466	70	1	87	183	2020-06-16 12:40:08.974068	2020-06-16 12:40:08.974068
467	90	5	88	79	2020-06-16 12:40:08.979305	2020-06-16 12:40:08.979305
468	95	2	88	321	2020-06-16 12:40:08.984	2020-06-16 12:40:08.984
469	80	4	88	175	2020-06-16 12:40:08.988242	2020-06-16 12:40:08.988242
470	1	1	88	413	2020-06-16 12:40:08.993242	2020-06-16 12:40:08.993242
471	3	1	88	150	2020-06-16 12:40:08.998527	2020-06-16 12:40:08.998527
472	84	3	88	125	2020-06-16 12:40:09.003713	2020-06-16 12:40:09.003713
473	92	5	89	509	2020-06-16 12:40:09.009001	2020-06-16 12:40:09.009001
474	21	2	90	120	2020-06-16 12:40:09.01437	2020-06-16 12:40:09.01437
475	25	2	90	317	2020-06-16 12:40:09.019314	2020-06-16 12:40:09.019314
476	81	4	90	157	2020-06-16 12:40:09.023315	2020-06-16 12:40:09.023315
477	37	5	90	565	2020-06-16 12:40:09.02695	2020-06-16 12:40:09.02695
478	2	4	90	340	2020-06-16 12:40:09.031141	2020-06-16 12:40:09.031141
479	30	2	90	251	2020-06-16 12:40:09.034742	2020-06-16 12:40:09.034742
480	16	2	90	420	2020-06-16 12:40:09.039828	2020-06-16 12:40:09.039828
481	22	4	90	18	2020-06-16 12:40:09.044014	2020-06-16 12:40:09.044014
482	37	1	91	549	2020-06-16 12:40:09.047731	2020-06-16 12:40:09.047731
483	34	2	91	587	2020-06-16 12:40:09.051367	2020-06-16 12:40:09.051367
484	98	3	92	407	2020-06-16 12:40:09.055173	2020-06-16 12:40:09.055173
485	92	1	92	125	2020-06-16 12:40:09.058945	2020-06-16 12:40:09.058945
486	78	5	92	251	2020-06-16 12:40:09.062472	2020-06-16 12:40:09.062472
487	25	2	93	303	2020-06-16 12:40:09.06621	2020-06-16 12:40:09.06621
488	2	5	93	469	2020-06-16 12:40:09.069837	2020-06-16 12:40:09.069837
489	21	5	93	373	2020-06-16 12:40:09.073232	2020-06-16 12:40:09.073232
490	88	1	93	197	2020-06-16 12:40:09.076856	2020-06-16 12:40:09.076856
491	36	1	93	368	2020-06-16 12:40:09.080492	2020-06-16 12:40:09.080492
492	39	4	93	488	2020-06-16 12:40:09.08402	2020-06-16 12:40:09.08402
493	59	1	93	239	2020-06-16 12:40:09.087509	2020-06-16 12:40:09.087509
494	60	3	93	40	2020-06-16 12:40:09.092262	2020-06-16 12:40:09.092262
495	79	3	94	308	2020-06-16 12:40:09.096808	2020-06-16 12:40:09.096808
496	6	2	94	285	2020-06-16 12:40:09.102089	2020-06-16 12:40:09.102089
497	12	5	94	9	2020-06-16 12:40:09.107344	2020-06-16 12:40:09.107344
498	97	4	94	551	2020-06-16 12:40:09.11255	2020-06-16 12:40:09.11255
499	11	3	94	105	2020-06-16 12:40:09.117839	2020-06-16 12:40:09.117839
500	6	2	94	21	2020-06-16 12:40:09.123167	2020-06-16 12:40:09.123167
501	67	1	95	36	2020-06-16 12:40:09.128012	2020-06-16 12:40:09.128012
502	34	1	95	20	2020-06-16 12:40:09.132189	2020-06-16 12:40:09.132189
503	31	1	95	161	2020-06-16 12:40:09.136109	2020-06-16 12:40:09.136109
504	64	3	95	348	2020-06-16 12:40:09.139706	2020-06-16 12:40:09.139706
505	92	3	95	341	2020-06-16 12:40:09.143308	2020-06-16 12:40:09.143308
506	49	3	95	39	2020-06-16 12:40:09.148165	2020-06-16 12:40:09.148165
507	15	3	95	518	2020-06-16 12:40:09.153207	2020-06-16 12:40:09.153207
508	37	3	96	315	2020-06-16 12:40:09.158311	2020-06-16 12:40:09.158311
509	91	5	96	328	2020-06-16 12:40:09.163573	2020-06-16 12:40:09.163573
510	77	4	96	405	2020-06-16 12:40:09.168388	2020-06-16 12:40:09.168388
511	88	1	97	526	2020-06-16 12:40:09.172808	2020-06-16 12:40:09.172808
512	89	2	97	500	2020-06-16 12:40:09.176943	2020-06-16 12:40:09.176943
513	80	4	97	241	2020-06-16 12:40:09.180639	2020-06-16 12:40:09.180639
514	49	3	97	544	2020-06-16 12:40:09.184315	2020-06-16 12:40:09.184315
515	39	3	97	64	2020-06-16 12:40:09.187664	2020-06-16 12:40:09.187664
516	3	3	97	523	2020-06-16 12:40:09.191408	2020-06-16 12:40:09.191408
517	74	4	97	322	2020-06-16 12:40:09.19557	2020-06-16 12:40:09.19557
518	28	4	97	79	2020-06-16 12:40:09.199868	2020-06-16 12:40:09.199868
519	31	4	97	547	2020-06-16 12:40:09.20401	2020-06-16 12:40:09.20401
520	58	2	97	185	2020-06-16 12:40:09.208257	2020-06-16 12:40:09.208257
521	3	1	98	160	2020-06-16 12:40:09.212083	2020-06-16 12:40:09.212083
522	47	3	98	161	2020-06-16 12:40:09.215915	2020-06-16 12:40:09.215915
523	87	1	98	49	2020-06-16 12:40:09.221226	2020-06-16 12:40:09.221226
524	59	2	98	362	2020-06-16 12:40:09.226592	2020-06-16 12:40:09.226592
525	16	2	98	75	2020-06-16 12:40:09.231124	2020-06-16 12:40:09.231124
526	96	4	99	365	2020-06-16 12:40:09.236053	2020-06-16 12:40:09.236053
527	38	4	100	246	2020-06-16 12:40:09.240818	2020-06-16 12:40:09.240818
528	75	4	100	397	2020-06-16 12:40:09.24519	2020-06-16 12:40:09.24519
529	57	5	100	100	2020-06-16 12:40:09.250752	2020-06-16 12:40:09.250752
530	25	2	100	125	2020-06-16 12:40:09.255224	2020-06-16 12:40:09.255224
531	29	2	100	447	2020-06-16 12:40:09.259	2020-06-16 12:40:09.259
532	38	4	100	351	2020-06-16 12:40:09.262753	2020-06-16 12:40:09.262753
533	28	3	100	386	2020-06-16 12:40:09.26647	2020-06-16 12:40:09.26647
534	76	5	100	47	2020-06-16 12:40:09.270127	2020-06-16 12:40:09.270127
535	1	4	100	308	2020-06-16 12:40:09.273897	2020-06-16 12:40:09.273897
536	24	2	101	17	2020-06-16 12:40:09.2776	2020-06-16 12:40:09.2776
537	26	1	101	129	2020-06-16 12:40:09.281422	2020-06-16 12:40:09.281422
538	24	1	101	112	2020-06-16 12:40:09.285392	2020-06-16 12:40:09.285392
539	70	1	101	130	2020-06-16 12:40:09.289262	2020-06-16 12:40:09.289262
540	64	2	101	396	2020-06-16 12:40:09.292689	2020-06-16 12:40:09.292689
541	15	1	101	134	2020-06-16 12:40:09.295672	2020-06-16 12:40:09.295672
542	80	2	101	493	2020-06-16 12:40:09.298682	2020-06-16 12:40:09.298682
543	81	1	101	293	2020-06-16 12:40:09.302272	2020-06-16 12:40:09.302272
544	89	2	101	478	2020-06-16 12:40:09.30549	2020-06-16 12:40:09.30549
545	56	3	102	147	2020-06-16 12:40:09.309154	2020-06-16 12:40:09.309154
546	81	4	102	123	2020-06-16 12:40:09.312625	2020-06-16 12:40:09.312625
547	89	4	102	553	2020-06-16 12:40:09.31658	2020-06-16 12:40:09.31658
548	100	2	102	59	2020-06-16 12:40:09.320285	2020-06-16 12:40:09.320285
549	100	5	103	374	2020-06-16 12:40:09.323934	2020-06-16 12:40:09.323934
550	49	2	103	107	2020-06-16 12:40:09.327331	2020-06-16 12:40:09.327331
551	5	2	103	240	2020-06-16 12:40:09.330638	2020-06-16 12:40:09.330638
552	89	5	104	181	2020-06-16 12:40:09.333888	2020-06-16 12:40:09.333888
553	18	1	104	370	2020-06-16 12:40:09.337087	2020-06-16 12:40:09.337087
554	64	2	104	92	2020-06-16 12:40:09.340731	2020-06-16 12:40:09.340731
555	31	1	104	337	2020-06-16 12:40:09.344333	2020-06-16 12:40:09.344333
556	50	1	104	427	2020-06-16 12:40:09.348339	2020-06-16 12:40:09.348339
557	96	2	104	236	2020-06-16 12:40:09.353749	2020-06-16 12:40:09.353749
558	63	5	104	599	2020-06-16 12:40:09.359966	2020-06-16 12:40:09.359966
559	53	5	104	546	2020-06-16 12:40:09.364953	2020-06-16 12:40:09.364953
560	71	4	104	187	2020-06-16 12:40:09.369228	2020-06-16 12:40:09.369228
561	77	2	104	235	2020-06-16 12:40:09.374762	2020-06-16 12:40:09.374762
562	96	3	105	280	2020-06-16 12:40:09.378384	2020-06-16 12:40:09.378384
563	66	4	105	326	2020-06-16 12:40:09.381913	2020-06-16 12:40:09.381913
564	37	4	105	132	2020-06-16 12:40:09.385419	2020-06-16 12:40:09.385419
565	63	4	105	444	2020-06-16 12:40:09.388543	2020-06-16 12:40:09.388543
566	58	4	105	74	2020-06-16 12:40:09.392461	2020-06-16 12:40:09.392461
567	44	3	105	560	2020-06-16 12:40:09.395959	2020-06-16 12:40:09.395959
568	61	4	105	536	2020-06-16 12:40:09.399143	2020-06-16 12:40:09.399143
569	93	1	105	196	2020-06-16 12:40:09.402444	2020-06-16 12:40:09.402444
570	92	2	106	271	2020-06-16 12:40:09.405724	2020-06-16 12:40:09.405724
571	74	2	106	324	2020-06-16 12:40:09.409164	2020-06-16 12:40:09.409164
572	10	5	106	426	2020-06-16 12:40:09.41236	2020-06-16 12:40:09.41236
573	94	2	107	535	2020-06-16 12:40:09.41678	2020-06-16 12:40:09.41678
574	79	3	107	505	2020-06-16 12:40:09.422116	2020-06-16 12:40:09.422116
575	92	1	107	62	2020-06-16 12:40:09.426137	2020-06-16 12:40:09.426137
576	18	5	108	314	2020-06-16 12:40:09.429912	2020-06-16 12:40:09.429912
577	82	5	108	437	2020-06-16 12:40:09.433352	2020-06-16 12:40:09.433352
578	2	5	108	432	2020-06-16 12:40:09.436871	2020-06-16 12:40:09.436871
579	68	5	108	433	2020-06-16 12:40:09.440879	2020-06-16 12:40:09.440879
580	75	4	108	393	2020-06-16 12:40:09.444694	2020-06-16 12:40:09.444694
581	60	5	108	62	2020-06-16 12:40:09.448871	2020-06-16 12:40:09.448871
582	16	3	108	194	2020-06-16 12:40:09.452954	2020-06-16 12:40:09.452954
583	86	2	108	95	2020-06-16 12:40:09.457289	2020-06-16 12:40:09.457289
584	11	1	108	186	2020-06-16 12:40:09.461159	2020-06-16 12:40:09.461159
585	45	3	109	458	2020-06-16 12:40:09.464965	2020-06-16 12:40:09.464965
586	45	2	109	552	2020-06-16 12:40:09.468646	2020-06-16 12:40:09.468646
587	14	5	109	309	2020-06-16 12:40:09.472536	2020-06-16 12:40:09.472536
588	97	3	109	598	2020-06-16 12:40:09.476617	2020-06-16 12:40:09.476617
589	21	2	110	53	2020-06-16 12:40:09.480257	2020-06-16 12:40:09.480257
590	79	2	111	77	2020-06-16 12:40:09.485576	2020-06-16 12:40:09.485576
591	27	5	112	593	2020-06-16 12:40:09.493116	2020-06-16 12:40:09.493116
592	74	2	112	371	2020-06-16 12:40:09.49679	2020-06-16 12:40:09.49679
593	31	5	112	505	2020-06-16 12:40:09.500117	2020-06-16 12:40:09.500117
594	32	1	112	572	2020-06-16 12:40:09.503548	2020-06-16 12:40:09.503548
595	56	1	112	270	2020-06-16 12:40:09.507507	2020-06-16 12:40:09.507507
596	81	2	112	441	2020-06-16 12:40:09.512405	2020-06-16 12:40:09.512405
597	68	2	112	586	2020-06-16 12:40:09.517201	2020-06-16 12:40:09.517201
598	100	1	112	313	2020-06-16 12:40:09.522767	2020-06-16 12:40:09.522767
599	31	1	113	216	2020-06-16 12:40:09.527671	2020-06-16 12:40:09.527671
600	92	4	113	136	2020-06-16 12:40:09.533271	2020-06-16 12:40:09.533271
601	43	3	113	484	2020-06-16 12:40:09.539954	2020-06-16 12:40:09.539954
602	46	3	113	306	2020-06-16 12:40:09.54703	2020-06-16 12:40:09.54703
603	44	5	113	561	2020-06-16 12:40:09.553333	2020-06-16 12:40:09.553333
604	6	2	113	465	2020-06-16 12:40:09.559106	2020-06-16 12:40:09.559106
605	83	2	113	205	2020-06-16 12:40:09.566481	2020-06-16 12:40:09.566481
606	52	1	113	176	2020-06-16 12:40:09.573367	2020-06-16 12:40:09.573367
607	59	2	114	576	2020-06-16 12:40:09.579952	2020-06-16 12:40:09.579952
608	64	1	114	60	2020-06-16 12:40:09.586489	2020-06-16 12:40:09.586489
609	69	1	114	597	2020-06-16 12:40:09.593573	2020-06-16 12:40:09.593573
610	37	4	114	556	2020-06-16 12:40:09.600726	2020-06-16 12:40:09.600726
611	8	1	114	360	2020-06-16 12:40:09.607213	2020-06-16 12:40:09.607213
612	40	4	114	364	2020-06-16 12:40:09.612508	2020-06-16 12:40:09.612508
613	62	3	114	191	2020-06-16 12:40:09.619003	2020-06-16 12:40:09.619003
614	74	5	114	72	2020-06-16 12:40:09.624742	2020-06-16 12:40:09.624742
615	22	5	115	360	2020-06-16 12:40:09.630295	2020-06-16 12:40:09.630295
616	31	1	115	196	2020-06-16 12:40:09.635501	2020-06-16 12:40:09.635501
617	83	1	115	73	2020-06-16 12:40:09.642298	2020-06-16 12:40:09.642298
618	23	4	115	35	2020-06-16 12:40:09.646275	2020-06-16 12:40:09.646275
619	49	1	115	125	2020-06-16 12:40:09.650188	2020-06-16 12:40:09.650188
620	51	2	115	540	2020-06-16 12:40:09.658369	2020-06-16 12:40:09.658369
621	60	4	115	406	2020-06-16 12:40:09.66546	2020-06-16 12:40:09.66546
622	99	2	115	388	2020-06-16 12:40:09.669297	2020-06-16 12:40:09.669297
623	59	1	115	486	2020-06-16 12:40:09.67315	2020-06-16 12:40:09.67315
624	48	2	116	17	2020-06-16 12:40:09.676963	2020-06-16 12:40:09.676963
625	2	3	116	468	2020-06-16 12:40:09.680738	2020-06-16 12:40:09.680738
626	93	1	116	398	2020-06-16 12:40:09.684535	2020-06-16 12:40:09.684535
627	92	3	116	418	2020-06-16 12:40:09.688127	2020-06-16 12:40:09.688127
628	25	1	116	184	2020-06-16 12:40:09.691963	2020-06-16 12:40:09.691963
629	82	1	116	352	2020-06-16 12:40:09.695363	2020-06-16 12:40:09.695363
630	60	5	117	204	2020-06-16 12:40:09.698808	2020-06-16 12:40:09.698808
631	19	5	117	560	2020-06-16 12:40:09.702125	2020-06-16 12:40:09.702125
632	41	4	117	413	2020-06-16 12:40:09.706156	2020-06-16 12:40:09.706156
633	84	5	117	33	2020-06-16 12:40:09.709546	2020-06-16 12:40:09.709546
634	4	4	118	29	2020-06-16 12:40:09.713201	2020-06-16 12:40:09.713201
635	68	5	118	327	2020-06-16 12:40:09.716785	2020-06-16 12:40:09.716785
636	40	4	118	116	2020-06-16 12:40:09.72096	2020-06-16 12:40:09.72096
637	9	4	118	208	2020-06-16 12:40:09.726549	2020-06-16 12:40:09.726549
638	5	1	119	311	2020-06-16 12:40:09.731065	2020-06-16 12:40:09.731065
639	18	5	119	329	2020-06-16 12:40:09.735755	2020-06-16 12:40:09.735755
640	89	4	119	75	2020-06-16 12:40:09.739906	2020-06-16 12:40:09.739906
641	89	5	119	469	2020-06-16 12:40:09.743664	2020-06-16 12:40:09.743664
642	45	2	119	561	2020-06-16 12:40:09.747212	2020-06-16 12:40:09.747212
643	5	5	119	139	2020-06-16 12:40:09.75078	2020-06-16 12:40:09.75078
644	78	4	120	211	2020-06-16 12:40:09.754394	2020-06-16 12:40:09.754394
645	87	3	121	546	2020-06-16 12:40:09.758194	2020-06-16 12:40:09.758194
646	27	4	121	357	2020-06-16 12:40:09.762369	2020-06-16 12:40:09.762369
647	35	2	121	169	2020-06-16 12:40:09.766598	2020-06-16 12:40:09.766598
648	75	1	121	232	2020-06-16 12:40:09.771318	2020-06-16 12:40:09.771318
649	21	5	121	145	2020-06-16 12:40:09.775104	2020-06-16 12:40:09.775104
650	70	4	121	478	2020-06-16 12:40:09.778929	2020-06-16 12:40:09.778929
651	75	2	121	382	2020-06-16 12:40:09.782625	2020-06-16 12:40:09.782625
652	6	2	122	356	2020-06-16 12:40:09.786601	2020-06-16 12:40:09.786601
653	40	2	122	317	2020-06-16 12:40:09.79014	2020-06-16 12:40:09.79014
654	92	1	122	216	2020-06-16 12:40:09.793304	2020-06-16 12:40:09.793304
655	48	1	122	22	2020-06-16 12:40:09.796297	2020-06-16 12:40:09.796297
656	50	1	122	238	2020-06-16 12:40:09.799618	2020-06-16 12:40:09.799618
657	31	5	122	231	2020-06-16 12:40:09.802875	2020-06-16 12:40:09.802875
658	84	3	123	450	2020-06-16 12:40:09.805957	2020-06-16 12:40:09.805957
659	17	5	123	170	2020-06-16 12:40:09.809504	2020-06-16 12:40:09.809504
660	74	1	123	279	2020-06-16 12:40:09.812858	2020-06-16 12:40:09.812858
661	15	5	123	320	2020-06-16 12:40:09.817304	2020-06-16 12:40:09.817304
662	40	4	123	99	2020-06-16 12:40:09.821068	2020-06-16 12:40:09.821068
663	25	2	124	268	2020-06-16 12:40:09.824444	2020-06-16 12:40:09.824444
664	58	3	124	329	2020-06-16 12:40:09.828	2020-06-16 12:40:09.828
665	94	2	124	171	2020-06-16 12:40:09.831296	2020-06-16 12:40:09.831296
666	32	2	124	368	2020-06-16 12:40:09.834644	2020-06-16 12:40:09.834644
667	46	5	124	200	2020-06-16 12:40:09.837985	2020-06-16 12:40:09.837985
668	97	4	124	500	2020-06-16 12:40:09.841174	2020-06-16 12:40:09.841174
669	93	1	124	156	2020-06-16 12:40:09.844328	2020-06-16 12:40:09.844328
670	37	4	125	316	2020-06-16 12:40:09.847593	2020-06-16 12:40:09.847593
671	46	1	125	465	2020-06-16 12:40:09.85107	2020-06-16 12:40:09.85107
672	49	4	125	269	2020-06-16 12:40:09.854582	2020-06-16 12:40:09.854582
673	33	1	126	364	2020-06-16 12:40:09.858262	2020-06-16 12:40:09.858262
674	24	1	126	496	2020-06-16 12:40:09.861816	2020-06-16 12:40:09.861816
675	61	2	126	154	2020-06-16 12:40:09.865525	2020-06-16 12:40:09.865525
676	56	5	126	255	2020-06-16 12:40:09.869428	2020-06-16 12:40:09.869428
677	59	2	126	237	2020-06-16 12:40:09.873007	2020-06-16 12:40:09.873007
678	4	3	126	579	2020-06-16 12:40:09.877953	2020-06-16 12:40:09.877953
679	96	5	126	311	2020-06-16 12:40:09.883075	2020-06-16 12:40:09.883075
680	95	1	127	457	2020-06-16 12:40:09.887805	2020-06-16 12:40:09.887805
681	84	5	127	24	2020-06-16 12:40:09.89204	2020-06-16 12:40:09.89204
682	39	3	127	465	2020-06-16 12:40:09.895733	2020-06-16 12:40:09.895733
683	42	2	127	106	2020-06-16 12:40:09.899475	2020-06-16 12:40:09.899475
684	64	2	127	505	2020-06-16 12:40:09.903183	2020-06-16 12:40:09.903183
685	80	2	128	546	2020-06-16 12:40:09.90873	2020-06-16 12:40:09.90873
686	84	2	128	184	2020-06-16 12:40:09.912495	2020-06-16 12:40:09.912495
687	18	4	128	80	2020-06-16 12:40:09.916911	2020-06-16 12:40:09.916911
688	12	4	128	148	2020-06-16 12:40:09.921439	2020-06-16 12:40:09.921439
689	28	5	128	446	2020-06-16 12:40:09.92649	2020-06-16 12:40:09.92649
690	25	3	128	117	2020-06-16 12:40:09.930891	2020-06-16 12:40:09.930891
691	42	5	129	469	2020-06-16 12:40:09.935053	2020-06-16 12:40:09.935053
692	92	4	129	251	2020-06-16 12:40:09.9396	2020-06-16 12:40:09.9396
693	70	4	129	33	2020-06-16 12:40:09.943814	2020-06-16 12:40:09.943814
694	58	3	129	202	2020-06-16 12:40:09.947541	2020-06-16 12:40:09.947541
695	12	1	129	432	2020-06-16 12:40:09.951272	2020-06-16 12:40:09.951272
696	56	4	129	511	2020-06-16 12:40:09.954878	2020-06-16 12:40:09.954878
697	96	4	130	299	2020-06-16 12:40:09.958441	2020-06-16 12:40:09.958441
698	85	5	130	326	2020-06-16 12:40:09.962212	2020-06-16 12:40:09.962212
699	2	1	130	353	2020-06-16 12:40:09.967082	2020-06-16 12:40:09.967082
700	18	4	131	425	2020-06-16 12:40:09.972239	2020-06-16 12:40:09.972239
701	39	1	131	312	2020-06-16 12:40:09.977555	2020-06-16 12:40:09.977555
702	80	2	131	514	2020-06-16 12:40:09.982695	2020-06-16 12:40:09.982695
703	6	2	131	562	2020-06-16 12:40:09.987023	2020-06-16 12:40:09.987023
704	48	3	131	153	2020-06-16 12:40:09.991076	2020-06-16 12:40:09.991076
705	52	3	131	415	2020-06-16 12:40:09.994729	2020-06-16 12:40:09.994729
706	99	3	131	253	2020-06-16 12:40:09.998526	2020-06-16 12:40:09.998526
707	29	3	131	5	2020-06-16 12:40:10.002245	2020-06-16 12:40:10.002245
708	23	1	131	46	2020-06-16 12:40:10.005463	2020-06-16 12:40:10.005463
709	37	5	132	431	2020-06-16 12:40:10.01059	2020-06-16 12:40:10.01059
710	3	2	132	68	2020-06-16 12:40:10.016462	2020-06-16 12:40:10.016462
711	60	4	133	119	2020-06-16 12:40:10.021291	2020-06-16 12:40:10.021291
712	93	1	134	501	2020-06-16 12:40:10.025608	2020-06-16 12:40:10.025608
713	12	1	134	549	2020-06-16 12:40:10.029912	2020-06-16 12:40:10.029912
714	13	4	134	395	2020-06-16 12:40:10.03379	2020-06-16 12:40:10.03379
715	83	5	135	75	2020-06-16 12:40:10.037891	2020-06-16 12:40:10.037891
716	68	3	135	322	2020-06-16 12:40:10.042278	2020-06-16 12:40:10.042278
717	43	4	135	174	2020-06-16 12:40:10.046683	2020-06-16 12:40:10.046683
718	69	2	135	62	2020-06-16 12:40:10.050943	2020-06-16 12:40:10.050943
719	21	2	135	285	2020-06-16 12:40:10.055459	2020-06-16 12:40:10.055459
720	86	1	135	540	2020-06-16 12:40:10.059923	2020-06-16 12:40:10.059923
721	2	4	135	326	2020-06-16 12:40:10.064358	2020-06-16 12:40:10.064358
722	92	3	135	5	2020-06-16 12:40:10.06864	2020-06-16 12:40:10.06864
723	51	3	135	117	2020-06-16 12:40:10.072169	2020-06-16 12:40:10.072169
724	35	4	136	95	2020-06-16 12:40:10.076184	2020-06-16 12:40:10.076184
725	22	2	136	110	2020-06-16 12:40:10.079825	2020-06-16 12:40:10.079825
726	50	3	136	34	2020-06-16 12:40:10.083437	2020-06-16 12:40:10.083437
727	99	5	136	305	2020-06-16 12:40:10.086961	2020-06-16 12:40:10.086961
728	27	3	136	462	2020-06-16 12:40:10.090439	2020-06-16 12:40:10.090439
729	86	5	137	541	2020-06-16 12:40:10.093875	2020-06-16 12:40:10.093875
730	90	5	137	570	2020-06-16 12:40:10.097431	2020-06-16 12:40:10.097431
731	62	1	137	89	2020-06-16 12:40:10.101144	2020-06-16 12:40:10.101144
732	55	2	137	288	2020-06-16 12:40:10.104594	2020-06-16 12:40:10.104594
733	56	3	137	252	2020-06-16 12:40:10.108858	2020-06-16 12:40:10.108858
734	69	4	137	63	2020-06-16 12:40:10.112126	2020-06-16 12:40:10.112126
735	90	2	138	283	2020-06-16 12:40:10.115431	2020-06-16 12:40:10.115431
736	94	4	138	51	2020-06-16 12:40:10.118541	2020-06-16 12:40:10.118541
737	52	3	139	300	2020-06-16 12:40:10.12149	2020-06-16 12:40:10.12149
738	56	3	139	350	2020-06-16 12:40:10.124423	2020-06-16 12:40:10.124423
739	44	1	139	35	2020-06-16 12:40:10.127418	2020-06-16 12:40:10.127418
740	34	4	139	176	2020-06-16 12:40:10.130298	2020-06-16 12:40:10.130298
741	47	4	139	131	2020-06-16 12:40:10.133428	2020-06-16 12:40:10.133428
742	28	5	139	230	2020-06-16 12:40:10.13644	2020-06-16 12:40:10.13644
743	6	4	139	107	2020-06-16 12:40:10.139381	2020-06-16 12:40:10.139381
744	47	3	139	312	2020-06-16 12:40:10.142889	2020-06-16 12:40:10.142889
745	48	3	139	243	2020-06-16 12:40:10.147002	2020-06-16 12:40:10.147002
746	87	3	140	417	2020-06-16 12:40:10.151992	2020-06-16 12:40:10.151992
747	10	3	140	430	2020-06-16 12:40:10.157168	2020-06-16 12:40:10.157168
748	57	1	140	305	2020-06-16 12:40:10.164914	2020-06-16 12:40:10.164914
749	46	1	140	585	2020-06-16 12:40:10.170015	2020-06-16 12:40:10.170015
750	29	2	140	581	2020-06-16 12:40:10.175393	2020-06-16 12:40:10.175393
751	88	1	140	443	2020-06-16 12:40:10.181087	2020-06-16 12:40:10.181087
752	95	1	140	509	2020-06-16 12:40:10.186691	2020-06-16 12:40:10.186691
753	4	4	140	403	2020-06-16 12:40:10.192471	2020-06-16 12:40:10.192471
754	44	2	141	130	2020-06-16 12:40:10.197858	2020-06-16 12:40:10.197858
755	7	2	141	533	2020-06-16 12:40:10.202079	2020-06-16 12:40:10.202079
756	22	5	142	47	2020-06-16 12:40:10.206405	2020-06-16 12:40:10.206405
757	14	1	142	435	2020-06-16 12:40:10.210666	2020-06-16 12:40:10.210666
758	65	1	142	163	2020-06-16 12:40:10.215004	2020-06-16 12:40:10.215004
759	60	3	142	372	2020-06-16 12:40:10.220173	2020-06-16 12:40:10.220173
760	67	1	142	335	2020-06-16 12:40:10.224931	2020-06-16 12:40:10.224931
761	85	4	142	126	2020-06-16 12:40:10.229677	2020-06-16 12:40:10.229677
762	45	1	142	547	2020-06-16 12:40:10.233876	2020-06-16 12:40:10.233876
763	84	5	142	418	2020-06-16 12:40:10.237876	2020-06-16 12:40:10.237876
764	37	2	142	254	2020-06-16 12:40:10.241935	2020-06-16 12:40:10.241935
765	12	2	143	148	2020-06-16 12:40:10.24581	2020-06-16 12:40:10.24581
766	52	5	143	229	2020-06-16 12:40:10.249669	2020-06-16 12:40:10.249669
767	53	5	144	103	2020-06-16 12:40:10.253337	2020-06-16 12:40:10.253337
768	3	5	144	127	2020-06-16 12:40:10.257046	2020-06-16 12:40:10.257046
769	74	4	144	419	2020-06-16 12:40:10.261183	2020-06-16 12:40:10.261183
770	40	2	144	11	2020-06-16 12:40:10.265047	2020-06-16 12:40:10.265047
771	70	5	144	138	2020-06-16 12:40:10.268688	2020-06-16 12:40:10.268688
772	80	1	145	15	2020-06-16 12:40:10.272346	2020-06-16 12:40:10.272346
773	50	5	145	456	2020-06-16 12:40:10.276462	2020-06-16 12:40:10.276462
774	59	4	145	106	2020-06-16 12:40:10.279998	2020-06-16 12:40:10.279998
775	85	5	145	578	2020-06-16 12:40:10.283856	2020-06-16 12:40:10.283856
776	87	1	145	217	2020-06-16 12:40:10.287591	2020-06-16 12:40:10.287591
777	23	1	145	478	2020-06-16 12:40:10.291356	2020-06-16 12:40:10.291356
778	76	3	145	16	2020-06-16 12:40:10.294374	2020-06-16 12:40:10.294374
779	15	3	145	475	2020-06-16 12:40:10.297358	2020-06-16 12:40:10.297358
780	39	1	146	231	2020-06-16 12:40:10.300564	2020-06-16 12:40:10.300564
781	21	1	146	155	2020-06-16 12:40:10.303412	2020-06-16 12:40:10.303412
782	73	2	147	516	2020-06-16 12:40:10.306303	2020-06-16 12:40:10.306303
783	18	1	147	142	2020-06-16 12:40:10.309245	2020-06-16 12:40:10.309245
784	41	5	147	360	2020-06-16 12:40:10.31246	2020-06-16 12:40:10.31246
785	47	4	147	532	2020-06-16 12:40:10.31597	2020-06-16 12:40:10.31597
786	64	5	147	250	2020-06-16 12:40:10.320379	2020-06-16 12:40:10.320379
787	72	5	147	218	2020-06-16 12:40:10.323788	2020-06-16 12:40:10.323788
788	96	1	147	414	2020-06-16 12:40:10.327123	2020-06-16 12:40:10.327123
789	54	3	147	485	2020-06-16 12:40:10.330344	2020-06-16 12:40:10.330344
790	63	2	147	66	2020-06-16 12:40:10.333563	2020-06-16 12:40:10.333563
791	50	2	148	75	2020-06-16 12:40:10.336775	2020-06-16 12:40:10.336775
792	87	5	148	379	2020-06-16 12:40:10.340276	2020-06-16 12:40:10.340276
793	47	2	148	552	2020-06-16 12:40:10.343295	2020-06-16 12:40:10.343295
794	15	2	148	138	2020-06-16 12:40:10.346361	2020-06-16 12:40:10.346361
795	3	2	148	28	2020-06-16 12:40:10.349448	2020-06-16 12:40:10.349448
796	62	5	148	398	2020-06-16 12:40:10.352626	2020-06-16 12:40:10.352626
797	52	4	148	596	2020-06-16 12:40:10.355598	2020-06-16 12:40:10.355598
798	2	3	149	110	2020-06-16 12:40:10.358747	2020-06-16 12:40:10.358747
799	89	1	149	376	2020-06-16 12:40:10.362248	2020-06-16 12:40:10.362248
800	47	3	149	572	2020-06-16 12:40:10.366084	2020-06-16 12:40:10.366084
801	55	2	149	252	2020-06-16 12:40:10.36969	2020-06-16 12:40:10.36969
802	9	2	149	279	2020-06-16 12:40:10.373458	2020-06-16 12:40:10.373458
803	74	4	149	489	2020-06-16 12:40:10.377135	2020-06-16 12:40:10.377135
804	86	3	149	265	2020-06-16 12:40:10.380573	2020-06-16 12:40:10.380573
805	98	2	150	147	2020-06-16 12:40:10.384556	2020-06-16 12:40:10.384556
806	66	2	150	574	2020-06-16 12:40:10.388445	2020-06-16 12:40:10.388445
807	80	2	150	175	2020-06-16 12:40:10.392247	2020-06-16 12:40:10.392247
808	25	3	150	148	2020-06-16 12:40:10.397874	2020-06-16 12:40:10.397874
809	31	2	150	150	2020-06-16 12:40:10.402078	2020-06-16 12:40:10.402078
810	14	2	150	438	2020-06-16 12:40:10.406099	2020-06-16 12:40:10.406099
811	93	2	150	507	2020-06-16 12:40:10.409881	2020-06-16 12:40:10.409881
812	44	3	150	368	2020-06-16 12:40:10.413621	2020-06-16 12:40:10.413621
813	66	4	151	232	2020-06-16 12:40:10.417177	2020-06-16 12:40:10.417177
814	10	1	151	20	2020-06-16 12:40:10.420859	2020-06-16 12:40:10.420859
815	61	1	152	107	2020-06-16 12:40:10.424463	2020-06-16 12:40:10.424463
816	73	5	152	438	2020-06-16 12:40:10.427941	2020-06-16 12:40:10.427941
817	67	1	152	123	2020-06-16 12:40:10.43158	2020-06-16 12:40:10.43158
818	51	1	152	119	2020-06-16 12:40:10.436329	2020-06-16 12:40:10.436329
819	86	4	152	261	2020-06-16 12:40:10.440206	2020-06-16 12:40:10.440206
820	80	4	152	114	2020-06-16 12:40:10.443664	2020-06-16 12:40:10.443664
821	27	2	152	177	2020-06-16 12:40:10.447467	2020-06-16 12:40:10.447467
822	80	1	152	247	2020-06-16 12:40:10.451157	2020-06-16 12:40:10.451157
823	13	1	152	75	2020-06-16 12:40:10.455555	2020-06-16 12:40:10.455555
824	21	1	153	86	2020-06-16 12:40:10.459821	2020-06-16 12:40:10.459821
825	32	3	153	130	2020-06-16 12:40:10.463944	2020-06-16 12:40:10.463944
826	82	2	153	252	2020-06-16 12:40:10.467922	2020-06-16 12:40:10.467922
827	4	3	153	525	2020-06-16 12:40:10.471492	2020-06-16 12:40:10.471492
828	52	4	153	600	2020-06-16 12:40:10.475075	2020-06-16 12:40:10.475075
829	70	3	153	373	2020-06-16 12:40:10.478579	2020-06-16 12:40:10.478579
830	58	1	153	431	2020-06-16 12:40:10.482095	2020-06-16 12:40:10.482095
831	69	3	153	456	2020-06-16 12:40:10.485651	2020-06-16 12:40:10.485651
832	77	1	153	44	2020-06-16 12:40:10.488732	2020-06-16 12:40:10.488732
833	75	5	154	349	2020-06-16 12:40:10.492107	2020-06-16 12:40:10.492107
834	17	1	154	136	2020-06-16 12:40:10.495577	2020-06-16 12:40:10.495577
835	74	2	154	491	2020-06-16 12:40:10.49954	2020-06-16 12:40:10.49954
836	49	2	154	563	2020-06-16 12:40:10.503881	2020-06-16 12:40:10.503881
837	7	3	154	172	2020-06-16 12:40:10.509262	2020-06-16 12:40:10.509262
838	50	1	154	47	2020-06-16 12:40:10.514606	2020-06-16 12:40:10.514606
839	8	3	154	266	2020-06-16 12:40:10.519574	2020-06-16 12:40:10.519574
840	30	4	154	547	2020-06-16 12:40:10.524596	2020-06-16 12:40:10.524596
841	14	1	154	90	2020-06-16 12:40:10.529629	2020-06-16 12:40:10.529629
842	68	2	154	32	2020-06-16 12:40:10.534006	2020-06-16 12:40:10.534006
843	52	1	155	220	2020-06-16 12:40:10.538148	2020-06-16 12:40:10.538148
844	87	4	155	304	2020-06-16 12:40:10.542371	2020-06-16 12:40:10.542371
845	28	2	155	287	2020-06-16 12:40:10.546568	2020-06-16 12:40:10.546568
846	48	3	155	468	2020-06-16 12:40:10.55154	2020-06-16 12:40:10.55154
847	20	3	155	439	2020-06-16 12:40:10.556737	2020-06-16 12:40:10.556737
848	72	1	155	502	2020-06-16 12:40:10.562026	2020-06-16 12:40:10.562026
849	97	2	155	212	2020-06-16 12:40:10.567301	2020-06-16 12:40:10.567301
850	8	2	156	274	2020-06-16 12:40:10.57259	2020-06-16 12:40:10.57259
851	17	1	156	530	2020-06-16 12:40:10.578011	2020-06-16 12:40:10.578011
852	75	5	156	328	2020-06-16 12:40:10.583339	2020-06-16 12:40:10.583339
853	48	3	156	408	2020-06-16 12:40:10.588457	2020-06-16 12:40:10.588457
854	84	1	156	90	2020-06-16 12:40:10.593724	2020-06-16 12:40:10.593724
855	86	4	156	433	2020-06-16 12:40:10.598996	2020-06-16 12:40:10.598996
856	8	3	156	213	2020-06-16 12:40:10.604223	2020-06-16 12:40:10.604223
857	31	5	156	519	2020-06-16 12:40:10.609468	2020-06-16 12:40:10.609468
858	27	2	157	338	2020-06-16 12:40:10.614795	2020-06-16 12:40:10.614795
859	96	5	157	232	2020-06-16 12:40:10.620164	2020-06-16 12:40:10.620164
860	48	1	157	214	2020-06-16 12:40:10.625338	2020-06-16 12:40:10.625338
861	98	1	157	552	2020-06-16 12:40:10.630798	2020-06-16 12:40:10.630798
862	21	5	157	119	2020-06-16 12:40:10.636068	2020-06-16 12:40:10.636068
863	9	3	157	529	2020-06-16 12:40:10.644066	2020-06-16 12:40:10.644066
864	24	5	157	388	2020-06-16 12:40:10.649802	2020-06-16 12:40:10.649802
865	42	1	157	143	2020-06-16 12:40:10.655569	2020-06-16 12:40:10.655569
866	42	3	157	489	2020-06-16 12:40:10.661039	2020-06-16 12:40:10.661039
867	2	3	158	132	2020-06-16 12:40:10.666211	2020-06-16 12:40:10.666211
868	13	4	159	273	2020-06-16 12:40:10.67149	2020-06-16 12:40:10.67149
869	61	1	159	101	2020-06-16 12:40:10.677069	2020-06-16 12:40:10.677069
870	63	3	159	152	2020-06-16 12:40:10.682401	2020-06-16 12:40:10.682401
871	23	2	160	430	2020-06-16 12:40:10.68678	2020-06-16 12:40:10.68678
872	75	2	160	22	2020-06-16 12:40:10.691496	2020-06-16 12:40:10.691496
873	74	3	160	419	2020-06-16 12:40:10.695602	2020-06-16 12:40:10.695602
874	79	3	160	93	2020-06-16 12:40:10.699813	2020-06-16 12:40:10.699813
875	78	1	160	124	2020-06-16 12:40:10.705155	2020-06-16 12:40:10.705155
876	8	4	160	264	2020-06-16 12:40:10.710302	2020-06-16 12:40:10.710302
877	19	3	161	154	2020-06-16 12:40:10.715051	2020-06-16 12:40:10.715051
878	95	1	161	513	2020-06-16 12:40:10.719809	2020-06-16 12:40:10.719809
879	10	5	162	336	2020-06-16 12:40:10.724449	2020-06-16 12:40:10.724449
880	95	1	162	466	2020-06-16 12:40:10.729769	2020-06-16 12:40:10.729769
881	53	5	162	364	2020-06-16 12:40:10.734871	2020-06-16 12:40:10.734871
882	9	4	162	10	2020-06-16 12:40:10.739807	2020-06-16 12:40:10.739807
883	48	4	163	433	2020-06-16 12:40:10.745016	2020-06-16 12:40:10.745016
884	36	1	163	250	2020-06-16 12:40:10.750325	2020-06-16 12:40:10.750325
885	76	2	163	328	2020-06-16 12:40:10.755467	2020-06-16 12:40:10.755467
886	89	3	163	562	2020-06-16 12:40:10.760942	2020-06-16 12:40:10.760942
887	50	4	164	324	2020-06-16 12:40:10.766234	2020-06-16 12:40:10.766234
888	51	4	164	573	2020-06-16 12:40:10.771261	2020-06-16 12:40:10.771261
889	83	5	164	166	2020-06-16 12:40:10.775461	2020-06-16 12:40:10.775461
890	83	4	164	118	2020-06-16 12:40:10.779746	2020-06-16 12:40:10.779746
891	84	1	164	181	2020-06-16 12:40:10.784017	2020-06-16 12:40:10.784017
892	28	3	164	356	2020-06-16 12:40:10.788519	2020-06-16 12:40:10.788519
893	89	5	164	323	2020-06-16 12:40:10.79306	2020-06-16 12:40:10.79306
894	84	4	164	50	2020-06-16 12:40:10.796784	2020-06-16 12:40:10.796784
895	71	4	164	269	2020-06-16 12:40:10.800711	2020-06-16 12:40:10.800711
896	15	2	165	172	2020-06-16 12:40:10.803725	2020-06-16 12:40:10.803725
897	47	2	165	343	2020-06-16 12:40:10.80674	2020-06-16 12:40:10.80674
898	90	2	165	93	2020-06-16 12:40:10.809748	2020-06-16 12:40:10.809748
899	56	1	165	99	2020-06-16 12:40:10.812761	2020-06-16 12:40:10.812761
900	100	1	165	415	2020-06-16 12:40:10.815955	2020-06-16 12:40:10.815955
901	13	4	165	136	2020-06-16 12:40:10.820225	2020-06-16 12:40:10.820225
902	9	1	165	489	2020-06-16 12:40:10.823723	2020-06-16 12:40:10.823723
903	48	4	166	549	2020-06-16 12:40:10.82713	2020-06-16 12:40:10.82713
904	69	1	166	150	2020-06-16 12:40:10.830472	2020-06-16 12:40:10.830472
905	87	5	166	379	2020-06-16 12:40:10.833732	2020-06-16 12:40:10.833732
906	21	5	166	143	2020-06-16 12:40:10.837054	2020-06-16 12:40:10.837054
907	8	1	167	230	2020-06-16 12:40:10.840312	2020-06-16 12:40:10.840312
908	66	5	167	273	2020-06-16 12:40:10.843511	2020-06-16 12:40:10.843511
909	81	4	167	283	2020-06-16 12:40:10.846722	2020-06-16 12:40:10.846722
910	13	1	167	539	2020-06-16 12:40:10.849984	2020-06-16 12:40:10.849984
911	61	3	167	504	2020-06-16 12:40:10.853077	2020-06-16 12:40:10.853077
912	64	4	167	244	2020-06-16 12:40:10.856205	2020-06-16 12:40:10.856205
913	78	4	167	548	2020-06-16 12:40:10.859256	2020-06-16 12:40:10.859256
914	60	3	168	316	2020-06-16 12:40:10.862318	2020-06-16 12:40:10.862318
915	96	4	168	338	2020-06-16 12:40:10.867022	2020-06-16 12:40:10.867022
916	5	2	168	31	2020-06-16 12:40:10.870148	2020-06-16 12:40:10.870148
917	59	5	168	178	2020-06-16 12:40:10.873489	2020-06-16 12:40:10.873489
918	45	5	168	474	2020-06-16 12:40:10.877923	2020-06-16 12:40:10.877923
919	90	3	168	501	2020-06-16 12:40:10.881997	2020-06-16 12:40:10.881997
920	4	2	168	246	2020-06-16 12:40:10.885694	2020-06-16 12:40:10.885694
921	82	1	168	364	2020-06-16 12:40:10.889391	2020-06-16 12:40:10.889391
922	36	1	169	144	2020-06-16 12:40:10.89292	2020-06-16 12:40:10.89292
923	56	5	169	58	2020-06-16 12:40:10.896572	2020-06-16 12:40:10.896572
924	86	2	169	255	2020-06-16 12:40:10.899936	2020-06-16 12:40:10.899936
925	39	3	169	404	2020-06-16 12:40:10.903033	2020-06-16 12:40:10.903033
926	36	3	169	395	2020-06-16 12:40:10.906063	2020-06-16 12:40:10.906063
927	49	4	170	46	2020-06-16 12:40:10.909002	2020-06-16 12:40:10.909002
928	57	3	170	487	2020-06-16 12:40:10.911969	2020-06-16 12:40:10.911969
929	29	1	170	491	2020-06-16 12:40:10.915035	2020-06-16 12:40:10.915035
930	23	2	170	532	2020-06-16 12:40:10.917875	2020-06-16 12:40:10.917875
931	21	1	170	56	2020-06-16 12:40:10.920902	2020-06-16 12:40:10.920902
932	1	2	171	374	2020-06-16 12:40:10.92386	2020-06-16 12:40:10.92386
933	33	5	171	543	2020-06-16 12:40:10.926929	2020-06-16 12:40:10.926929
934	24	3	171	215	2020-06-16 12:40:10.930193	2020-06-16 12:40:10.930193
935	12	4	172	299	2020-06-16 12:40:10.933545	2020-06-16 12:40:10.933545
936	35	4	173	411	2020-06-16 12:40:10.937092	2020-06-16 12:40:10.937092
937	38	4	173	329	2020-06-16 12:40:10.940536	2020-06-16 12:40:10.940536
938	25	4	173	255	2020-06-16 12:40:10.944146	2020-06-16 12:40:10.944146
939	81	2	173	118	2020-06-16 12:40:10.947834	2020-06-16 12:40:10.947834
940	72	3	173	378	2020-06-16 12:40:10.951429	2020-06-16 12:40:10.951429
941	43	3	173	12	2020-06-16 12:40:10.956519	2020-06-16 12:40:10.956519
942	45	2	173	6	2020-06-16 12:40:10.962182	2020-06-16 12:40:10.962182
943	24	1	174	9	2020-06-16 12:40:10.967712	2020-06-16 12:40:10.967712
944	20	2	174	547	2020-06-16 12:40:10.972882	2020-06-16 12:40:10.972882
945	33	4	174	330	2020-06-16 12:40:10.977904	2020-06-16 12:40:10.977904
946	7	4	174	442	2020-06-16 12:40:10.982534	2020-06-16 12:40:10.982534
947	39	4	174	154	2020-06-16 12:40:10.988132	2020-06-16 12:40:10.988132
948	51	4	174	138	2020-06-16 12:40:10.99337	2020-06-16 12:40:10.99337
949	94	1	174	484	2020-06-16 12:40:10.998474	2020-06-16 12:40:10.998474
950	17	2	175	169	2020-06-16 12:40:11.002564	2020-06-16 12:40:11.002564
951	100	3	175	179	2020-06-16 12:40:11.00696	2020-06-16 12:40:11.00696
952	79	5	175	109	2020-06-16 12:40:11.011651	2020-06-16 12:40:11.011651
953	41	5	175	218	2020-06-16 12:40:11.016848	2020-06-16 12:40:11.016848
954	37	1	175	244	2020-06-16 12:40:11.021815	2020-06-16 12:40:11.021815
955	28	5	175	321	2020-06-16 12:40:11.026133	2020-06-16 12:40:11.026133
956	20	3	175	55	2020-06-16 12:40:11.030409	2020-06-16 12:40:11.030409
957	50	2	176	415	2020-06-16 12:40:11.03474	2020-06-16 12:40:11.03474
958	23	2	176	556	2020-06-16 12:40:11.038327	2020-06-16 12:40:11.038327
959	53	1	176	223	2020-06-16 12:40:11.042086	2020-06-16 12:40:11.042086
960	43	4	176	496	2020-06-16 12:40:11.047361	2020-06-16 12:40:11.047361
961	69	4	176	381	2020-06-16 12:40:11.051584	2020-06-16 12:40:11.051584
962	76	4	176	599	2020-06-16 12:40:11.055308	2020-06-16 12:40:11.055308
963	16	1	177	527	2020-06-16 12:40:11.061343	2020-06-16 12:40:11.061343
964	27	5	177	525	2020-06-16 12:40:11.066009	2020-06-16 12:40:11.066009
965	25	1	178	414	2020-06-16 12:40:11.071086	2020-06-16 12:40:11.071086
966	80	3	178	34	2020-06-16 12:40:11.07574	2020-06-16 12:40:11.07574
967	79	3	178	349	2020-06-16 12:40:11.080123	2020-06-16 12:40:11.080123
968	54	2	178	491	2020-06-16 12:40:11.084199	2020-06-16 12:40:11.084199
969	45	3	178	577	2020-06-16 12:40:11.088165	2020-06-16 12:40:11.088165
970	100	1	179	3	2020-06-16 12:40:11.092646	2020-06-16 12:40:11.092646
971	91	3	179	58	2020-06-16 12:40:11.098171	2020-06-16 12:40:11.098171
972	91	5	180	104	2020-06-16 12:40:11.103667	2020-06-16 12:40:11.103667
973	89	2	180	181	2020-06-16 12:40:11.109175	2020-06-16 12:40:11.109175
974	49	3	180	270	2020-06-16 12:40:11.113461	2020-06-16 12:40:11.113461
975	73	3	180	595	2020-06-16 12:40:11.118083	2020-06-16 12:40:11.118083
976	59	1	180	19	2020-06-16 12:40:11.122555	2020-06-16 12:40:11.122555
977	63	4	180	542	2020-06-16 12:40:11.127543	2020-06-16 12:40:11.127543
978	94	3	180	240	2020-06-16 12:40:11.133176	2020-06-16 12:40:11.133176
979	53	3	180	455	2020-06-16 12:40:11.138717	2020-06-16 12:40:11.138717
980	28	2	181	463	2020-06-16 12:40:11.143163	2020-06-16 12:40:11.143163
981	59	2	181	307	2020-06-16 12:40:11.147445	2020-06-16 12:40:11.147445
982	18	3	181	481	2020-06-16 12:40:11.151485	2020-06-16 12:40:11.151485
983	40	1	181	312	2020-06-16 12:40:11.156462	2020-06-16 12:40:11.156462
984	86	4	181	506	2020-06-16 12:40:11.161021	2020-06-16 12:40:11.161021
985	91	1	181	86	2020-06-16 12:40:11.166314	2020-06-16 12:40:11.166314
986	20	1	182	148	2020-06-16 12:40:11.171207	2020-06-16 12:40:11.171207
987	60	4	182	225	2020-06-16 12:40:11.176162	2020-06-16 12:40:11.176162
988	41	4	182	342	2020-06-16 12:40:11.181341	2020-06-16 12:40:11.181341
989	36	5	183	344	2020-06-16 12:40:11.186229	2020-06-16 12:40:11.186229
990	67	3	183	6	2020-06-16 12:40:11.190991	2020-06-16 12:40:11.190991
991	5	2	184	348	2020-06-16 12:40:11.195893	2020-06-16 12:40:11.195893
992	85	1	184	397	2020-06-16 12:40:11.201726	2020-06-16 12:40:11.201726
993	91	3	184	555	2020-06-16 12:40:11.207128	2020-06-16 12:40:11.207128
994	14	5	184	355	2020-06-16 12:40:11.212286	2020-06-16 12:40:11.212286
995	43	2	184	336	2020-06-16 12:40:11.21703	2020-06-16 12:40:11.21703
996	6	4	184	35	2020-06-16 12:40:11.221979	2020-06-16 12:40:11.221979
997	4	1	185	255	2020-06-16 12:40:11.228786	2020-06-16 12:40:11.228786
998	5	3	185	124	2020-06-16 12:40:11.23567	2020-06-16 12:40:11.23567
999	20	2	185	464	2020-06-16 12:40:11.242649	2020-06-16 12:40:11.242649
1000	45	5	185	589	2020-06-16 12:40:11.249311	2020-06-16 12:40:11.249311
1001	70	5	185	380	2020-06-16 12:40:11.255736	2020-06-16 12:40:11.255736
1002	44	2	185	437	2020-06-16 12:40:11.261956	2020-06-16 12:40:11.261956
1003	10	3	185	278	2020-06-16 12:40:11.268658	2020-06-16 12:40:11.268658
1004	31	5	185	404	2020-06-16 12:40:11.274566	2020-06-16 12:40:11.274566
1005	68	3	186	531	2020-06-16 12:40:11.279673	2020-06-16 12:40:11.279673
1006	90	2	186	597	2020-06-16 12:40:11.284317	2020-06-16 12:40:11.284317
1007	83	4	186	429	2020-06-16 12:40:11.296211	2020-06-16 12:40:11.296211
1008	37	1	186	93	2020-06-16 12:40:11.300767	2020-06-16 12:40:11.300767
1009	9	5	187	36	2020-06-16 12:40:11.304183	2020-06-16 12:40:11.304183
1010	32	3	187	477	2020-06-16 12:40:11.307354	2020-06-16 12:40:11.307354
1011	40	2	187	422	2020-06-16 12:40:11.310578	2020-06-16 12:40:11.310578
1012	4	1	188	432	2020-06-16 12:40:11.313933	2020-06-16 12:40:11.313933
1013	9	4	188	273	2020-06-16 12:40:11.318013	2020-06-16 12:40:11.318013
1014	51	4	188	398	2020-06-16 12:40:11.321928	2020-06-16 12:40:11.321928
1015	12	3	188	600	2020-06-16 12:40:11.325422	2020-06-16 12:40:11.325422
1016	98	4	188	589	2020-06-16 12:40:11.328927	2020-06-16 12:40:11.328927
1017	51	1	188	407	2020-06-16 12:40:11.332222	2020-06-16 12:40:11.332222
1018	34	2	188	566	2020-06-16 12:40:11.335432	2020-06-16 12:40:11.335432
1019	10	1	188	505	2020-06-16 12:40:11.338743	2020-06-16 12:40:11.338743
1020	6	2	188	169	2020-06-16 12:40:11.342043	2020-06-16 12:40:11.342043
1021	93	2	189	389	2020-06-16 12:40:11.345392	2020-06-16 12:40:11.345392
1022	15	5	189	13	2020-06-16 12:40:11.349933	2020-06-16 12:40:11.349933
1023	54	1	189	288	2020-06-16 12:40:11.354709	2020-06-16 12:40:11.354709
1024	15	3	189	54	2020-06-16 12:40:11.359262	2020-06-16 12:40:11.359262
1025	53	2	189	407	2020-06-16 12:40:11.363278	2020-06-16 12:40:11.363278
1026	96	2	189	92	2020-06-16 12:40:11.367216	2020-06-16 12:40:11.367216
1027	89	3	189	408	2020-06-16 12:40:11.371114	2020-06-16 12:40:11.371114
1028	98	3	189	346	2020-06-16 12:40:11.374653	2020-06-16 12:40:11.374653
1029	43	5	190	338	2020-06-16 12:40:11.37902	2020-06-16 12:40:11.37902
1030	67	3	190	441	2020-06-16 12:40:11.383792	2020-06-16 12:40:11.383792
1031	22	4	190	156	2020-06-16 12:40:11.389137	2020-06-16 12:40:11.389137
1032	73	1	190	327	2020-06-16 12:40:11.394191	2020-06-16 12:40:11.394191
1033	18	5	190	12	2020-06-16 12:40:11.399153	2020-06-16 12:40:11.399153
1034	5	2	190	6	2020-06-16 12:40:11.404225	2020-06-16 12:40:11.404225
1035	91	4	190	275	2020-06-16 12:40:11.409508	2020-06-16 12:40:11.409508
1036	28	4	190	582	2020-06-16 12:40:11.414669	2020-06-16 12:40:11.414669
1037	22	5	191	106	2020-06-16 12:40:11.419784	2020-06-16 12:40:11.419784
1038	91	4	191	543	2020-06-16 12:40:11.42502	2020-06-16 12:40:11.42502
1039	82	3	191	202	2020-06-16 12:40:11.430148	2020-06-16 12:40:11.430148
1040	95	4	191	436	2020-06-16 12:40:11.435266	2020-06-16 12:40:11.435266
1041	19	2	191	496	2020-06-16 12:40:11.440436	2020-06-16 12:40:11.440436
1042	77	2	191	563	2020-06-16 12:40:11.445463	2020-06-16 12:40:11.445463
1043	40	2	191	385	2020-06-16 12:40:11.450675	2020-06-16 12:40:11.450675
1044	39	1	191	512	2020-06-16 12:40:11.456257	2020-06-16 12:40:11.456257
1045	12	5	191	534	2020-06-16 12:40:11.460547	2020-06-16 12:40:11.460547
1046	86	5	191	174	2020-06-16 12:40:11.464562	2020-06-16 12:40:11.464562
1047	3	4	192	130	2020-06-16 12:40:11.468139	2020-06-16 12:40:11.468139
1048	78	2	192	115	2020-06-16 12:40:11.471665	2020-06-16 12:40:11.471665
1049	32	4	192	117	2020-06-16 12:40:11.475098	2020-06-16 12:40:11.475098
1050	23	3	192	92	2020-06-16 12:40:11.478591	2020-06-16 12:40:11.478591
1051	44	4	192	365	2020-06-16 12:40:11.482246	2020-06-16 12:40:11.482246
1052	42	5	192	324	2020-06-16 12:40:11.485703	2020-06-16 12:40:11.485703
1053	8	2	193	472	2020-06-16 12:40:11.489076	2020-06-16 12:40:11.489076
1054	57	3	193	289	2020-06-16 12:40:11.492498	2020-06-16 12:40:11.492498
1055	8	3	194	243	2020-06-16 12:40:11.496038	2020-06-16 12:40:11.496038
1056	60	1	194	11	2020-06-16 12:40:11.499567	2020-06-16 12:40:11.499567
1057	52	1	194	287	2020-06-16 12:40:11.502981	2020-06-16 12:40:11.502981
1058	32	3	195	151	2020-06-16 12:40:11.506422	2020-06-16 12:40:11.506422
1059	84	3	196	366	2020-06-16 12:40:11.510065	2020-06-16 12:40:11.510065
1060	32	3	196	232	2020-06-16 12:40:11.513474	2020-06-16 12:40:11.513474
1061	17	1	196	282	2020-06-16 12:40:11.517201	2020-06-16 12:40:11.517201
1062	3	5	196	285	2020-06-16 12:40:11.521189	2020-06-16 12:40:11.521189
1063	100	3	197	468	2020-06-16 12:40:11.525338	2020-06-16 12:40:11.525338
1064	85	1	197	438	2020-06-16 12:40:11.52935	2020-06-16 12:40:11.52935
1065	72	5	198	148	2020-06-16 12:40:11.533561	2020-06-16 12:40:11.533561
1066	5	1	198	380	2020-06-16 12:40:11.537584	2020-06-16 12:40:11.537584
1067	51	4	199	367	2020-06-16 12:40:11.541776	2020-06-16 12:40:11.541776
1068	81	5	199	310	2020-06-16 12:40:11.545673	2020-06-16 12:40:11.545673
1069	65	5	199	7	2020-06-16 12:40:11.54911	2020-06-16 12:40:11.54911
1070	67	1	199	462	2020-06-16 12:40:11.552646	2020-06-16 12:40:11.552646
1071	37	5	199	75	2020-06-16 12:40:11.556156	2020-06-16 12:40:11.556156
1072	53	3	199	220	2020-06-16 12:40:11.559678	2020-06-16 12:40:11.559678
1073	41	1	199	402	2020-06-16 12:40:11.563349	2020-06-16 12:40:11.563349
1074	87	4	199	208	2020-06-16 12:40:11.566812	2020-06-16 12:40:11.566812
1075	52	1	199	346	2020-06-16 12:40:11.570323	2020-06-16 12:40:11.570323
1076	59	1	200	51	2020-06-16 12:40:11.573846	2020-06-16 12:40:11.573846
1077	97	4	200	258	2020-06-16 12:40:11.577382	2020-06-16 12:40:11.577382
1078	98	3	200	505	2020-06-16 12:40:11.580866	2020-06-16 12:40:11.580866
1079	64	1	200	210	2020-06-16 12:40:11.5843	2020-06-16 12:40:11.5843
1080	66	4	200	445	2020-06-16 12:40:11.587736	2020-06-16 12:40:11.587736
1081	2	5	200	498	2020-06-16 12:40:11.591998	2020-06-16 12:40:11.591998
1082	12	3	200	265	2020-06-16 12:40:11.596897	2020-06-16 12:40:11.596897
1083	2	1	1	749	2020-06-16 12:40:11.601718	2020-06-16 12:40:11.601718
1084	64	5	1	419	2020-06-16 12:40:11.606034	2020-06-16 12:40:11.606034
1085	16	1	1	436	2020-06-16 12:40:11.610368	2020-06-16 12:40:11.610368
1086	24	2	1	171	2020-06-16 12:40:11.614337	2020-06-16 12:40:11.614337
1087	14	1	1	799	2020-06-16 12:40:11.617832	2020-06-16 12:40:11.617832
1088	48	3	1	421	2020-06-16 12:40:11.621506	2020-06-16 12:40:11.621506
1089	90	4	1	561	2020-06-16 12:40:11.625233	2020-06-16 12:40:11.625233
1090	39	2	2	474	2020-06-16 12:40:11.628661	2020-06-16 12:40:11.628661
1091	1	1	3	398	2020-06-16 12:40:11.632019	2020-06-16 12:40:11.632019
1092	61	3	3	573	2020-06-16 12:40:11.635551	2020-06-16 12:40:11.635551
1093	59	2	3	340	2020-06-16 12:40:11.639012	2020-06-16 12:40:11.639012
1094	34	4	3	213	2020-06-16 12:40:11.642726	2020-06-16 12:40:11.642726
1095	44	5	3	406	2020-06-16 12:40:11.647507	2020-06-16 12:40:11.647507
1096	49	3	4	766	2020-06-16 12:40:11.652702	2020-06-16 12:40:11.652702
1097	98	5	4	600	2020-06-16 12:40:11.6575	2020-06-16 12:40:11.6575
1098	54	2	4	273	2020-06-16 12:40:11.662884	2020-06-16 12:40:11.662884
1099	66	2	4	661	2020-06-16 12:40:11.66814	2020-06-16 12:40:11.66814
1100	82	4	4	324	2020-06-16 12:40:11.672959	2020-06-16 12:40:11.672959
1101	69	4	5	402	2020-06-16 12:40:11.677106	2020-06-16 12:40:11.677106
1102	39	5	6	239	2020-06-16 12:40:11.68121	2020-06-16 12:40:11.68121
1103	19	3	6	62	2020-06-16 12:40:11.684821	2020-06-16 12:40:11.684821
1104	37	2	6	387	2020-06-16 12:40:11.688281	2020-06-16 12:40:11.688281
1105	36	1	6	19	2020-06-16 12:40:11.691366	2020-06-16 12:40:11.691366
1106	72	1	6	512	2020-06-16 12:40:11.694584	2020-06-16 12:40:11.694584
1107	48	1	7	553	2020-06-16 12:40:11.698006	2020-06-16 12:40:11.698006
1108	72	3	7	316	2020-06-16 12:40:11.701419	2020-06-16 12:40:11.701419
1109	16	1	7	168	2020-06-16 12:40:11.704313	2020-06-16 12:40:11.704313
1110	21	2	7	542	2020-06-16 12:40:11.707145	2020-06-16 12:40:11.707145
1111	21	2	8	195	2020-06-16 12:40:11.709872	2020-06-16 12:40:11.709872
1112	77	3	8	712	2020-06-16 12:40:11.71286	2020-06-16 12:40:11.71286
1113	83	3	8	436	2020-06-16 12:40:11.715888	2020-06-16 12:40:11.715888
1114	33	5	8	542	2020-06-16 12:40:11.719019	2020-06-16 12:40:11.719019
1115	86	4	8	106	2020-06-16 12:40:11.722131	2020-06-16 12:40:11.722131
1116	92	2	8	89	2020-06-16 12:40:11.72519	2020-06-16 12:40:11.72519
1117	23	5	8	742	2020-06-16 12:40:11.728191	2020-06-16 12:40:11.728191
1118	10	2	9	543	2020-06-16 12:40:11.731876	2020-06-16 12:40:11.731876
1119	29	1	9	666	2020-06-16 12:40:11.735203	2020-06-16 12:40:11.735203
1120	11	3	9	612	2020-06-16 12:40:11.738466	2020-06-16 12:40:11.738466
1121	45	2	9	221	2020-06-16 12:40:11.741724	2020-06-16 12:40:11.741724
1122	97	2	9	767	2020-06-16 12:40:11.744827	2020-06-16 12:40:11.744827
1123	55	4	9	65	2020-06-16 12:40:11.747943	2020-06-16 12:40:11.747943
1124	5	4	9	205	2020-06-16 12:40:11.751093	2020-06-16 12:40:11.751093
1125	18	1	9	177	2020-06-16 12:40:11.754545	2020-06-16 12:40:11.754545
1126	76	5	9	619	2020-06-16 12:40:11.758124	2020-06-16 12:40:11.758124
1127	34	5	9	496	2020-06-16 12:40:11.761811	2020-06-16 12:40:11.761811
1128	45	3	10	138	2020-06-16 12:40:11.766163	2020-06-16 12:40:11.766163
1129	3	3	10	53	2020-06-16 12:40:11.773139	2020-06-16 12:40:11.773139
1130	26	1	11	597	2020-06-16 12:40:11.777264	2020-06-16 12:40:11.777264
1131	58	5	11	228	2020-06-16 12:40:11.781087	2020-06-16 12:40:11.781087
1132	27	5	11	226	2020-06-16 12:40:11.78466	2020-06-16 12:40:11.78466
1133	93	2	11	334	2020-06-16 12:40:11.788403	2020-06-16 12:40:11.788403
1134	33	5	11	311	2020-06-16 12:40:11.79166	2020-06-16 12:40:11.79166
1135	61	1	11	707	2020-06-16 12:40:11.794709	2020-06-16 12:40:11.794709
1136	87	1	11	756	2020-06-16 12:40:11.797987	2020-06-16 12:40:11.797987
1137	5	2	11	437	2020-06-16 12:40:11.802139	2020-06-16 12:40:11.802139
1138	53	1	11	615	2020-06-16 12:40:11.805432	2020-06-16 12:40:11.805432
1139	74	2	12	127	2020-06-16 12:40:11.80859	2020-06-16 12:40:11.80859
1140	5	3	12	515	2020-06-16 12:40:11.81158	2020-06-16 12:40:11.81158
1141	57	4	12	179	2020-06-16 12:40:11.814719	2020-06-16 12:40:11.814719
1142	14	1	12	164	2020-06-16 12:40:11.818474	2020-06-16 12:40:11.818474
1143	88	2	12	618	2020-06-16 12:40:11.821821	2020-06-16 12:40:11.821821
1144	98	5	13	628	2020-06-16 12:40:11.825012	2020-06-16 12:40:11.825012
1145	33	1	13	757	2020-06-16 12:40:11.828216	2020-06-16 12:40:11.828216
1146	48	1	13	17	2020-06-16 12:40:11.831277	2020-06-16 12:40:11.831277
1147	65	2	13	533	2020-06-16 12:40:11.835119	2020-06-16 12:40:11.835119
1148	92	3	13	532	2020-06-16 12:40:11.838393	2020-06-16 12:40:11.838393
1149	3	4	13	192	2020-06-16 12:40:11.84179	2020-06-16 12:40:11.84179
1150	56	5	13	733	2020-06-16 12:40:11.845443	2020-06-16 12:40:11.845443
1151	37	4	13	78	2020-06-16 12:40:11.848888	2020-06-16 12:40:11.848888
1152	8	5	13	89	2020-06-16 12:40:11.852518	2020-06-16 12:40:11.852518
1153	32	3	14	269	2020-06-16 12:40:11.856361	2020-06-16 12:40:11.856361
1154	59	2	14	588	2020-06-16 12:40:11.861248	2020-06-16 12:40:11.861248
1155	26	3	15	576	2020-06-16 12:40:11.866347	2020-06-16 12:40:11.866347
1156	57	3	15	266	2020-06-16 12:40:11.870992	2020-06-16 12:40:11.870992
1157	80	3	15	486	2020-06-16 12:40:11.876081	2020-06-16 12:40:11.876081
1158	92	2	15	297	2020-06-16 12:40:11.881102	2020-06-16 12:40:11.881102
1159	35	5	15	639	2020-06-16 12:40:11.885578	2020-06-16 12:40:11.885578
1160	52	1	15	225	2020-06-16 12:40:11.889662	2020-06-16 12:40:11.889662
1161	78	1	16	461	2020-06-16 12:40:11.893055	2020-06-16 12:40:11.893055
1162	94	5	16	411	2020-06-16 12:40:11.896619	2020-06-16 12:40:11.896619
1163	19	2	16	518	2020-06-16 12:40:11.900996	2020-06-16 12:40:11.900996
1164	99	3	16	101	2020-06-16 12:40:11.905366	2020-06-16 12:40:11.905366
1165	97	3	17	768	2020-06-16 12:40:11.90924	2020-06-16 12:40:11.90924
1166	81	5	17	289	2020-06-16 12:40:11.913035	2020-06-16 12:40:11.913035
1167	40	1	17	733	2020-06-16 12:40:11.91656	2020-06-16 12:40:11.91656
1168	4	1	17	448	2020-06-16 12:40:11.920361	2020-06-16 12:40:11.920361
1169	61	4	17	685	2020-06-16 12:40:11.923947	2020-06-16 12:40:11.923947
1170	93	5	18	479	2020-06-16 12:40:11.927614	2020-06-16 12:40:11.927614
1171	10	1	18	511	2020-06-16 12:40:11.931607	2020-06-16 12:40:11.931607
1172	6	5	18	561	2020-06-16 12:40:11.935129	2020-06-16 12:40:11.935129
1173	36	1	18	374	2020-06-16 12:40:11.939068	2020-06-16 12:40:11.939068
1174	95	2	18	14	2020-06-16 12:40:11.943318	2020-06-16 12:40:11.943318
1175	87	1	19	754	2020-06-16 12:40:11.947366	2020-06-16 12:40:11.947366
1176	3	5	19	193	2020-06-16 12:40:11.951334	2020-06-16 12:40:11.951334
1177	70	5	19	714	2020-06-16 12:40:11.955374	2020-06-16 12:40:11.955374
1178	4	2	20	307	2020-06-16 12:40:11.959342	2020-06-16 12:40:11.959342
1179	57	1	20	396	2020-06-16 12:40:11.964265	2020-06-16 12:40:11.964265
1180	16	5	21	303	2020-06-16 12:40:11.969446	2020-06-16 12:40:11.969446
1181	58	3	21	330	2020-06-16 12:40:11.974516	2020-06-16 12:40:11.974516
1182	23	5	21	694	2020-06-16 12:40:11.979455	2020-06-16 12:40:11.979455
1183	77	1	21	472	2020-06-16 12:40:11.984925	2020-06-16 12:40:11.984925
1184	88	5	22	760	2020-06-16 12:40:11.99003	2020-06-16 12:40:11.99003
1185	52	2	22	372	2020-06-16 12:40:11.995171	2020-06-16 12:40:11.995171
1186	76	4	22	542	2020-06-16 12:40:12.000388	2020-06-16 12:40:12.000388
1187	91	3	22	660	2020-06-16 12:40:12.005608	2020-06-16 12:40:12.005608
1188	28	3	22	771	2020-06-16 12:40:12.010942	2020-06-16 12:40:12.010942
1189	69	2	23	701	2020-06-16 12:40:12.016167	2020-06-16 12:40:12.016167
1190	6	5	23	231	2020-06-16 12:40:12.021298	2020-06-16 12:40:12.021298
1191	86	2	23	64	2020-06-16 12:40:12.026477	2020-06-16 12:40:12.026477
1192	75	2	23	127	2020-06-16 12:40:12.031689	2020-06-16 12:40:12.031689
1193	23	3	23	646	2020-06-16 12:40:12.036931	2020-06-16 12:40:12.036931
1194	21	2	24	683	2020-06-16 12:40:12.0423	2020-06-16 12:40:12.0423
1195	66	1	24	519	2020-06-16 12:40:12.047152	2020-06-16 12:40:12.047152
1196	47	4	24	498	2020-06-16 12:40:12.051182	2020-06-16 12:40:12.051182
1197	20	5	24	696	2020-06-16 12:40:12.055209	2020-06-16 12:40:12.055209
1198	3	2	24	446	2020-06-16 12:40:12.058621	2020-06-16 12:40:12.058621
1199	35	2	24	63	2020-06-16 12:40:12.062217	2020-06-16 12:40:12.062217
1200	45	4	24	250	2020-06-16 12:40:12.065748	2020-06-16 12:40:12.065748
1201	66	1	24	785	2020-06-16 12:40:12.069609	2020-06-16 12:40:12.069609
1202	81	2	25	538	2020-06-16 12:40:12.073211	2020-06-16 12:40:12.073211
1203	94	5	25	47	2020-06-16 12:40:12.076781	2020-06-16 12:40:12.076781
1204	68	1	25	325	2020-06-16 12:40:12.080285	2020-06-16 12:40:12.080285
1205	12	2	25	104	2020-06-16 12:40:12.084211	2020-06-16 12:40:12.084211
1206	25	3	26	610	2020-06-16 12:40:12.089486	2020-06-16 12:40:12.089486
1207	86	5	26	576	2020-06-16 12:40:12.094912	2020-06-16 12:40:12.094912
1208	92	1	26	641	2020-06-16 12:40:12.100058	2020-06-16 12:40:12.100058
1209	65	2	26	437	2020-06-16 12:40:12.105215	2020-06-16 12:40:12.105215
1210	42	2	27	216	2020-06-16 12:40:12.109537	2020-06-16 12:40:12.109537
1211	82	1	27	697	2020-06-16 12:40:12.113672	2020-06-16 12:40:12.113672
1212	94	2	27	35	2020-06-16 12:40:12.118003	2020-06-16 12:40:12.118003
1213	50	5	27	333	2020-06-16 12:40:12.122139	2020-06-16 12:40:12.122139
1214	13	2	27	10	2020-06-16 12:40:12.12639	2020-06-16 12:40:12.12639
1215	47	2	27	294	2020-06-16 12:40:12.130093	2020-06-16 12:40:12.130093
1216	16	2	28	561	2020-06-16 12:40:12.13374	2020-06-16 12:40:12.13374
1217	76	1	28	181	2020-06-16 12:40:12.137158	2020-06-16 12:40:12.137158
1218	67	2	28	775	2020-06-16 12:40:12.140723	2020-06-16 12:40:12.140723
1219	66	2	28	719	2020-06-16 12:40:12.144665	2020-06-16 12:40:12.144665
1220	57	1	28	648	2020-06-16 12:40:12.148458	2020-06-16 12:40:12.148458
1221	74	1	28	71	2020-06-16 12:40:12.152095	2020-06-16 12:40:12.152095
1222	27	2	28	537	2020-06-16 12:40:12.15562	2020-06-16 12:40:12.15562
1223	4	2	28	57	2020-06-16 12:40:12.159124	2020-06-16 12:40:12.159124
1224	35	2	28	44	2020-06-16 12:40:12.162369	2020-06-16 12:40:12.162369
1225	12	5	28	217	2020-06-16 12:40:12.165985	2020-06-16 12:40:12.165985
1226	45	1	29	367	2020-06-16 12:40:12.169603	2020-06-16 12:40:12.169603
1227	89	2	29	119	2020-06-16 12:40:12.173563	2020-06-16 12:40:12.173563
1228	35	5	29	709	2020-06-16 12:40:12.177368	2020-06-16 12:40:12.177368
1229	11	3	29	273	2020-06-16 12:40:12.181019	2020-06-16 12:40:12.181019
1230	62	3	30	436	2020-06-16 12:40:12.18448	2020-06-16 12:40:12.18448
1231	59	2	30	506	2020-06-16 12:40:12.188196	2020-06-16 12:40:12.188196
1232	68	3	30	243	2020-06-16 12:40:12.192161	2020-06-16 12:40:12.192161
1233	31	5	30	335	2020-06-16 12:40:12.195934	2020-06-16 12:40:12.195934
1234	3	5	30	445	2020-06-16 12:40:12.200094	2020-06-16 12:40:12.200094
1235	36	5	30	713	2020-06-16 12:40:12.204386	2020-06-16 12:40:12.204386
1236	11	4	30	255	2020-06-16 12:40:12.208954	2020-06-16 12:40:12.208954
1237	36	3	30	708	2020-06-16 12:40:12.214136	2020-06-16 12:40:12.214136
1238	72	3	30	422	2020-06-16 12:40:12.219591	2020-06-16 12:40:12.219591
1239	80	4	30	392	2020-06-16 12:40:12.224722	2020-06-16 12:40:12.224722
1240	63	5	31	167	2020-06-16 12:40:12.228912	2020-06-16 12:40:12.228912
1241	38	1	31	573	2020-06-16 12:40:12.23416	2020-06-16 12:40:12.23416
1242	68	1	31	108	2020-06-16 12:40:12.239295	2020-06-16 12:40:12.239295
1243	96	3	31	645	2020-06-16 12:40:12.247119	2020-06-16 12:40:12.247119
1244	75	4	31	295	2020-06-16 12:40:12.250686	2020-06-16 12:40:12.250686
1245	85	2	31	560	2020-06-16 12:40:12.254382	2020-06-16 12:40:12.254382
1246	76	3	31	312	2020-06-16 12:40:12.257886	2020-06-16 12:40:12.257886
1247	96	1	31	79	2020-06-16 12:40:12.262001	2020-06-16 12:40:12.262001
1248	87	4	31	474	2020-06-16 12:40:12.265778	2020-06-16 12:40:12.265778
1249	79	3	31	767	2020-06-16 12:40:12.269373	2020-06-16 12:40:12.269373
1250	33	4	32	487	2020-06-16 12:40:12.272941	2020-06-16 12:40:12.272941
1251	73	1	32	369	2020-06-16 12:40:12.27655	2020-06-16 12:40:12.27655
1252	84	1	32	198	2020-06-16 12:40:12.280168	2020-06-16 12:40:12.280168
1253	23	5	32	446	2020-06-16 12:40:12.283771	2020-06-16 12:40:12.283771
1254	4	2	33	371	2020-06-16 12:40:12.28812	2020-06-16 12:40:12.28812
1255	25	3	33	722	2020-06-16 12:40:12.293582	2020-06-16 12:40:12.293582
1256	40	4	33	637	2020-06-16 12:40:12.303696	2020-06-16 12:40:12.303696
1257	94	4	34	199	2020-06-16 12:40:12.308628	2020-06-16 12:40:12.308628
1258	97	3	34	344	2020-06-16 12:40:12.313341	2020-06-16 12:40:12.313341
1259	36	3	34	685	2020-06-16 12:40:12.31857	2020-06-16 12:40:12.31857
1260	62	1	34	597	2020-06-16 12:40:12.322892	2020-06-16 12:40:12.322892
1261	5	2	34	617	2020-06-16 12:40:12.32744	2020-06-16 12:40:12.32744
1262	86	4	34	131	2020-06-16 12:40:12.331817	2020-06-16 12:40:12.331817
1263	30	5	34	140	2020-06-16 12:40:12.336368	2020-06-16 12:40:12.336368
1264	43	2	34	340	2020-06-16 12:40:12.340712	2020-06-16 12:40:12.340712
1265	82	4	34	350	2020-06-16 12:40:12.344975	2020-06-16 12:40:12.344975
1266	63	4	35	356	2020-06-16 12:40:12.349075	2020-06-16 12:40:12.349075
1267	47	1	35	517	2020-06-16 12:40:12.353439	2020-06-16 12:40:12.353439
1268	43	1	35	485	2020-06-16 12:40:12.35755	2020-06-16 12:40:12.35755
1269	49	4	35	699	2020-06-16 12:40:12.362708	2020-06-16 12:40:12.362708
1270	81	1	35	23	2020-06-16 12:40:12.366927	2020-06-16 12:40:12.366927
1271	79	3	35	467	2020-06-16 12:40:12.372247	2020-06-16 12:40:12.372247
1272	76	2	36	776	2020-06-16 12:40:12.37644	2020-06-16 12:40:12.37644
1273	53	3	36	628	2020-06-16 12:40:12.38028	2020-06-16 12:40:12.38028
1274	77	5	36	490	2020-06-16 12:40:12.383834	2020-06-16 12:40:12.383834
1275	5	2	36	32	2020-06-16 12:40:12.387458	2020-06-16 12:40:12.387458
1276	22	1	36	526	2020-06-16 12:40:12.391213	2020-06-16 12:40:12.391213
1277	89	5	36	781	2020-06-16 12:40:12.394952	2020-06-16 12:40:12.394952
1278	97	4	36	651	2020-06-16 12:40:12.398445	2020-06-16 12:40:12.398445
1279	98	2	37	119	2020-06-16 12:40:12.401997	2020-06-16 12:40:12.401997
1280	43	1	37	279	2020-06-16 12:40:12.406191	2020-06-16 12:40:12.406191
1281	89	4	37	182	2020-06-16 12:40:12.410733	2020-06-16 12:40:12.410733
1282	40	5	37	618	2020-06-16 12:40:12.414793	2020-06-16 12:40:12.414793
1283	24	4	37	311	2020-06-16 12:40:12.418363	2020-06-16 12:40:12.418363
1284	62	5	37	5	2020-06-16 12:40:12.42216	2020-06-16 12:40:12.42216
1285	84	5	37	779	2020-06-16 12:40:12.426012	2020-06-16 12:40:12.426012
1286	39	1	37	373	2020-06-16 12:40:12.430269	2020-06-16 12:40:12.430269
1287	33	3	37	82	2020-06-16 12:40:12.43463	2020-06-16 12:40:12.43463
1288	6	2	37	225	2020-06-16 12:40:12.43863	2020-06-16 12:40:12.43863
1289	78	2	38	387	2020-06-16 12:40:12.444589	2020-06-16 12:40:12.444589
1290	18	4	38	120	2020-06-16 12:40:12.447983	2020-06-16 12:40:12.447983
1291	32	4	38	298	2020-06-16 12:40:12.451176	2020-06-16 12:40:12.451176
1292	69	1	39	372	2020-06-16 12:40:12.454133	2020-06-16 12:40:12.454133
1293	37	4	40	190	2020-06-16 12:40:12.456979	2020-06-16 12:40:12.456979
1294	65	2	40	44	2020-06-16 12:40:12.459746	2020-06-16 12:40:12.459746
1295	46	3	40	737	2020-06-16 12:40:12.46253	2020-06-16 12:40:12.46253
1296	56	4	40	628	2020-06-16 12:40:12.465319	2020-06-16 12:40:12.465319
1297	24	3	40	798	2020-06-16 12:40:12.468463	2020-06-16 12:40:12.468463
1298	23	4	40	507	2020-06-16 12:40:12.471531	2020-06-16 12:40:12.471531
1299	84	1	40	796	2020-06-16 12:40:12.47448	2020-06-16 12:40:12.47448
1300	61	2	40	132	2020-06-16 12:40:12.477432	2020-06-16 12:40:12.477432
1301	48	1	40	437	2020-06-16 12:40:12.480267	2020-06-16 12:40:12.480267
1302	50	3	41	16	2020-06-16 12:40:12.48303	2020-06-16 12:40:12.48303
1303	100	5	41	69	2020-06-16 12:40:12.485885	2020-06-16 12:40:12.485885
1304	13	3	41	661	2020-06-16 12:40:12.48907	2020-06-16 12:40:12.48907
1305	98	2	41	267	2020-06-16 12:40:12.492708	2020-06-16 12:40:12.492708
1306	16	2	41	563	2020-06-16 12:40:12.496013	2020-06-16 12:40:12.496013
1307	44	5	41	230	2020-06-16 12:40:12.499048	2020-06-16 12:40:12.499048
1308	58	2	41	352	2020-06-16 12:40:12.502067	2020-06-16 12:40:12.502067
1309	18	5	41	14	2020-06-16 12:40:12.504907	2020-06-16 12:40:12.504907
1310	15	2	42	248	2020-06-16 12:40:12.507837	2020-06-16 12:40:12.507837
1311	35	3	42	475	2020-06-16 12:40:12.510707	2020-06-16 12:40:12.510707
1312	11	2	42	584	2020-06-16 12:40:12.513579	2020-06-16 12:40:12.513579
1313	18	5	42	64	2020-06-16 12:40:12.516896	2020-06-16 12:40:12.516896
1314	87	3	42	786	2020-06-16 12:40:12.520396	2020-06-16 12:40:12.520396
1315	10	5	42	461	2020-06-16 12:40:12.524101	2020-06-16 12:40:12.524101
1316	98	1	42	597	2020-06-16 12:40:12.527899	2020-06-16 12:40:12.527899
1317	78	1	42	343	2020-06-16 12:40:12.531662	2020-06-16 12:40:12.531662
1318	11	1	43	67	2020-06-16 12:40:12.535182	2020-06-16 12:40:12.535182
1319	25	2	43	384	2020-06-16 12:40:12.538581	2020-06-16 12:40:12.538581
1320	87	5	44	186	2020-06-16 12:40:12.542121	2020-06-16 12:40:12.542121
1321	60	5	44	419	2020-06-16 12:40:12.545464	2020-06-16 12:40:12.545464
1322	38	5	44	466	2020-06-16 12:40:12.549375	2020-06-16 12:40:12.549375
1323	59	2	44	207	2020-06-16 12:40:12.558796	2020-06-16 12:40:12.558796
1324	74	3	45	105	2020-06-16 12:40:12.561886	2020-06-16 12:40:12.561886
1325	78	5	45	652	2020-06-16 12:40:12.565076	2020-06-16 12:40:12.565076
1326	88	2	45	707	2020-06-16 12:40:12.567994	2020-06-16 12:40:12.567994
1327	30	4	45	536	2020-06-16 12:40:12.571067	2020-06-16 12:40:12.571067
1328	77	1	45	663	2020-06-16 12:40:12.574033	2020-06-16 12:40:12.574033
1329	96	2	46	658	2020-06-16 12:40:12.57711	2020-06-16 12:40:12.57711
1330	59	4	46	569	2020-06-16 12:40:12.580177	2020-06-16 12:40:12.580177
1331	67	1	46	197	2020-06-16 12:40:12.583223	2020-06-16 12:40:12.583223
1332	31	4	46	650	2020-06-16 12:40:12.586339	2020-06-16 12:40:12.586339
1333	22	4	46	367	2020-06-16 12:40:12.589427	2020-06-16 12:40:12.589427
1334	86	2	46	277	2020-06-16 12:40:12.592669	2020-06-16 12:40:12.592669
1335	92	3	46	193	2020-06-16 12:40:12.595849	2020-06-16 12:40:12.595849
1336	72	3	46	60	2020-06-16 12:40:12.599323	2020-06-16 12:40:12.599323
1337	75	5	46	40	2020-06-16 12:40:12.602303	2020-06-16 12:40:12.602303
1338	95	2	47	209	2020-06-16 12:40:12.60538	2020-06-16 12:40:12.60538
1339	72	1	47	736	2020-06-16 12:40:12.608427	2020-06-16 12:40:12.608427
1340	28	2	47	751	2020-06-16 12:40:12.611516	2020-06-16 12:40:12.611516
1341	99	2	47	308	2020-06-16 12:40:12.614924	2020-06-16 12:40:12.614924
1342	40	2	47	287	2020-06-16 12:40:12.618399	2020-06-16 12:40:12.618399
1343	98	1	48	401	2020-06-16 12:40:12.621421	2020-06-16 12:40:12.621421
1344	23	4	48	264	2020-06-16 12:40:12.624418	2020-06-16 12:40:12.624418
1345	15	3	48	711	2020-06-16 12:40:12.627591	2020-06-16 12:40:12.627591
1346	74	5	48	396	2020-06-16 12:40:12.630901	2020-06-16 12:40:12.630901
1347	45	2	48	557	2020-06-16 12:40:12.63418	2020-06-16 12:40:12.63418
1348	23	2	48	367	2020-06-16 12:40:12.637573	2020-06-16 12:40:12.637573
1349	87	2	48	17	2020-06-16 12:40:12.643381	2020-06-16 12:40:12.643381
1350	50	2	49	714	2020-06-16 12:40:12.646525	2020-06-16 12:40:12.646525
1351	29	1	49	370	2020-06-16 12:40:12.649941	2020-06-16 12:40:12.649941
1352	63	4	50	179	2020-06-16 12:40:12.653209	2020-06-16 12:40:12.653209
1353	42	4	50	437	2020-06-16 12:40:12.656285	2020-06-16 12:40:12.656285
1354	37	3	50	287	2020-06-16 12:40:12.659418	2020-06-16 12:40:12.659418
1355	59	2	50	470	2020-06-16 12:40:12.662442	2020-06-16 12:40:12.662442
1356	91	1	50	748	2020-06-16 12:40:12.6655	2020-06-16 12:40:12.6655
1357	56	4	51	269	2020-06-16 12:40:12.668514	2020-06-16 12:40:12.668514
1358	61	3	51	770	2020-06-16 12:40:12.671648	2020-06-16 12:40:12.671648
1359	2	5	51	92	2020-06-16 12:40:12.674785	2020-06-16 12:40:12.674785
1360	20	2	51	418	2020-06-16 12:40:12.677763	2020-06-16 12:40:12.677763
1361	60	4	51	198	2020-06-16 12:40:12.680937	2020-06-16 12:40:12.680937
1362	48	2	52	89	2020-06-16 12:40:12.684062	2020-06-16 12:40:12.684062
1363	82	2	52	314	2020-06-16 12:40:12.686978	2020-06-16 12:40:12.686978
1364	28	4	52	321	2020-06-16 12:40:12.690457	2020-06-16 12:40:12.690457
1365	7	5	52	627	2020-06-16 12:40:12.693657	2020-06-16 12:40:12.693657
1366	22	4	52	629	2020-06-16 12:40:12.696823	2020-06-16 12:40:12.696823
1367	71	4	52	318	2020-06-16 12:40:12.699955	2020-06-16 12:40:12.699955
1368	82	5	52	424	2020-06-16 12:40:12.702934	2020-06-16 12:40:12.702934
1369	23	3	52	206	2020-06-16 12:40:12.706035	2020-06-16 12:40:12.706035
1370	70	4	52	380	2020-06-16 12:40:12.709075	2020-06-16 12:40:12.709075
1371	28	4	53	385	2020-06-16 12:40:12.712067	2020-06-16 12:40:12.712067
1372	38	5	53	541	2020-06-16 12:40:12.715501	2020-06-16 12:40:12.715501
1373	16	3	53	532	2020-06-16 12:40:12.719295	2020-06-16 12:40:12.719295
1374	34	5	53	349	2020-06-16 12:40:12.722601	2020-06-16 12:40:12.722601
1375	14	5	53	14	2020-06-16 12:40:12.725854	2020-06-16 12:40:12.725854
1376	100	3	53	536	2020-06-16 12:40:12.728901	2020-06-16 12:40:12.728901
1377	65	5	53	242	2020-06-16 12:40:12.733729	2020-06-16 12:40:12.733729
1378	5	4	54	308	2020-06-16 12:40:12.738423	2020-06-16 12:40:12.738423
1379	49	4	54	689	2020-06-16 12:40:12.742986	2020-06-16 12:40:12.742986
1380	82	2	55	99	2020-06-16 12:40:12.74771	2020-06-16 12:40:12.74771
1381	59	5	55	790	2020-06-16 12:40:12.752013	2020-06-16 12:40:12.752013
1382	13	5	55	552	2020-06-16 12:40:12.756965	2020-06-16 12:40:12.756965
1383	88	4	55	659	2020-06-16 12:40:12.762301	2020-06-16 12:40:12.762301
1384	87	5	55	338	2020-06-16 12:40:12.76767	2020-06-16 12:40:12.76767
1385	44	1	55	207	2020-06-16 12:40:12.773144	2020-06-16 12:40:12.773144
1386	80	3	55	573	2020-06-16 12:40:12.778639	2020-06-16 12:40:12.778639
1387	92	5	55	730	2020-06-16 12:40:12.783942	2020-06-16 12:40:12.783942
1388	96	4	55	738	2020-06-16 12:40:12.789423	2020-06-16 12:40:12.789423
1389	21	4	55	266	2020-06-16 12:40:12.794726	2020-06-16 12:40:12.794726
1390	62	2	56	123	2020-06-16 12:40:12.800322	2020-06-16 12:40:12.800322
1391	82	5	56	71	2020-06-16 12:40:12.80532	2020-06-16 12:40:12.80532
1392	45	2	57	319	2020-06-16 12:40:12.809545	2020-06-16 12:40:12.809545
1393	63	2	57	168	2020-06-16 12:40:12.813251	2020-06-16 12:40:12.813251
1394	28	4	57	784	2020-06-16 12:40:12.816979	2020-06-16 12:40:12.816979
1395	18	4	57	643	2020-06-16 12:40:12.820615	2020-06-16 12:40:12.820615
1396	47	3	57	671	2020-06-16 12:40:12.823955	2020-06-16 12:40:12.823955
1397	63	3	57	624	2020-06-16 12:40:12.826885	2020-06-16 12:40:12.826885
1398	75	2	57	18	2020-06-16 12:40:12.830166	2020-06-16 12:40:12.830166
1399	82	4	57	629	2020-06-16 12:40:12.833735	2020-06-16 12:40:12.833735
1400	67	1	57	746	2020-06-16 12:40:12.837151	2020-06-16 12:40:12.837151
1401	70	3	58	798	2020-06-16 12:40:12.840298	2020-06-16 12:40:12.840298
1402	36	3	58	700	2020-06-16 12:40:12.844183	2020-06-16 12:40:12.844183
1403	45	5	58	784	2020-06-16 12:40:12.847844	2020-06-16 12:40:12.847844
1404	8	4	58	25	2020-06-16 12:40:12.851327	2020-06-16 12:40:12.851327
1405	48	1	58	15	2020-06-16 12:40:12.854939	2020-06-16 12:40:12.854939
1406	52	5	58	188	2020-06-16 12:40:12.858509	2020-06-16 12:40:12.858509
1407	85	3	59	278	2020-06-16 12:40:12.86205	2020-06-16 12:40:12.86205
1408	42	4	59	359	2020-06-16 12:40:12.865894	2020-06-16 12:40:12.865894
1409	27	2	59	563	2020-06-16 12:40:12.869838	2020-06-16 12:40:12.869838
1410	66	2	59	406	2020-06-16 12:40:12.873967	2020-06-16 12:40:12.873967
1411	55	4	60	637	2020-06-16 12:40:12.878177	2020-06-16 12:40:12.878177
1412	90	2	60	183	2020-06-16 12:40:12.882597	2020-06-16 12:40:12.882597
1413	25	4	60	192	2020-06-16 12:40:12.887081	2020-06-16 12:40:12.887081
1414	79	4	60	343	2020-06-16 12:40:12.891714	2020-06-16 12:40:12.891714
1415	27	2	60	218	2020-06-16 12:40:12.896058	2020-06-16 12:40:12.896058
1416	46	2	60	210	2020-06-16 12:40:12.899624	2020-06-16 12:40:12.899624
1417	64	2	61	730	2020-06-16 12:40:12.903206	2020-06-16 12:40:12.903206
1418	97	4	61	492	2020-06-16 12:40:12.908103	2020-06-16 12:40:12.908103
1419	54	1	62	347	2020-06-16 12:40:12.911896	2020-06-16 12:40:12.911896
1420	29	5	62	282	2020-06-16 12:40:12.915597	2020-06-16 12:40:12.915597
1421	94	2	62	653	2020-06-16 12:40:12.919351	2020-06-16 12:40:12.919351
1422	47	2	62	60	2020-06-16 12:40:12.923179	2020-06-16 12:40:12.923179
1423	74	3	62	477	2020-06-16 12:40:12.927287	2020-06-16 12:40:12.927287
1424	74	5	62	132	2020-06-16 12:40:12.931112	2020-06-16 12:40:12.931112
1425	72	3	62	390	2020-06-16 12:40:12.934942	2020-06-16 12:40:12.934942
1426	7	3	62	115	2020-06-16 12:40:12.938513	2020-06-16 12:40:12.938513
1427	23	2	62	31	2020-06-16 12:40:12.942124	2020-06-16 12:40:12.942124
1428	12	2	63	176	2020-06-16 12:40:12.945764	2020-06-16 12:40:12.945764
1429	20	4	63	138	2020-06-16 12:40:12.94953	2020-06-16 12:40:12.94953
1430	24	5	64	596	2020-06-16 12:40:12.953177	2020-06-16 12:40:12.953177
1431	86	3	64	799	2020-06-16 12:40:12.956783	2020-06-16 12:40:12.956783
1432	60	4	64	113	2020-06-16 12:40:12.960467	2020-06-16 12:40:12.960467
1433	90	4	64	151	2020-06-16 12:40:12.964342	2020-06-16 12:40:12.964342
1434	48	3	65	125	2020-06-16 12:40:12.967993	2020-06-16 12:40:12.967993
1435	56	2	65	213	2020-06-16 12:40:12.971763	2020-06-16 12:40:12.971763
1436	76	4	65	418	2020-06-16 12:40:12.976025	2020-06-16 12:40:12.976025
1437	69	5	65	595	2020-06-16 12:40:12.98089	2020-06-16 12:40:12.98089
1438	63	5	65	89	2020-06-16 12:40:12.985571	2020-06-16 12:40:12.985571
1439	78	3	65	204	2020-06-16 12:40:12.99059	2020-06-16 12:40:12.99059
1440	67	4	65	305	2020-06-16 12:40:12.995455	2020-06-16 12:40:12.995455
1441	56	3	65	291	2020-06-16 12:40:13.000498	2020-06-16 12:40:13.000498
1442	44	5	66	333	2020-06-16 12:40:13.004738	2020-06-16 12:40:13.004738
1443	19	5	66	520	2020-06-16 12:40:13.009169	2020-06-16 12:40:13.009169
1444	49	2	67	258	2020-06-16 12:40:13.014359	2020-06-16 12:40:13.014359
1445	87	2	67	17	2020-06-16 12:40:13.020245	2020-06-16 12:40:13.020245
1446	79	3	67	290	2020-06-16 12:40:13.026415	2020-06-16 12:40:13.026415
1447	75	3	67	152	2020-06-16 12:40:13.031097	2020-06-16 12:40:13.031097
1448	69	3	67	376	2020-06-16 12:40:13.039293	2020-06-16 12:40:13.039293
1449	69	2	67	151	2020-06-16 12:40:13.043601	2020-06-16 12:40:13.043601
1450	58	5	68	538	2020-06-16 12:40:13.048064	2020-06-16 12:40:13.048064
1451	30	2	68	312	2020-06-16 12:40:13.052078	2020-06-16 12:40:13.052078
1452	9	3	68	173	2020-06-16 12:40:13.055808	2020-06-16 12:40:13.055808
1453	97	4	68	744	2020-06-16 12:40:13.059493	2020-06-16 12:40:13.059493
1454	18	3	68	252	2020-06-16 12:40:13.063164	2020-06-16 12:40:13.063164
1455	73	3	68	497	2020-06-16 12:40:13.066977	2020-06-16 12:40:13.066977
1456	54	2	69	268	2020-06-16 12:40:13.070962	2020-06-16 12:40:13.070962
1457	9	3	69	230	2020-06-16 12:40:13.074842	2020-06-16 12:40:13.074842
1458	70	2	69	80	2020-06-16 12:40:13.078765	2020-06-16 12:40:13.078765
1459	37	5	69	48	2020-06-16 12:40:13.08292	2020-06-16 12:40:13.08292
1460	12	3	69	297	2020-06-16 12:40:13.086922	2020-06-16 12:40:13.086922
1461	86	3	69	83	2020-06-16 12:40:13.090824	2020-06-16 12:40:13.090824
1462	31	2	69	560	2020-06-16 12:40:13.095023	2020-06-16 12:40:13.095023
1463	42	2	69	382	2020-06-16 12:40:13.098983	2020-06-16 12:40:13.098983
1464	46	4	69	632	2020-06-16 12:40:13.102903	2020-06-16 12:40:13.102903
1465	50	5	70	343	2020-06-16 12:40:13.106931	2020-06-16 12:40:13.106931
1466	36	4	70	383	2020-06-16 12:40:13.111123	2020-06-16 12:40:13.111123
1467	6	5	70	322	2020-06-16 12:40:13.115088	2020-06-16 12:40:13.115088
1468	73	1	70	728	2020-06-16 12:40:13.119061	2020-06-16 12:40:13.119061
1469	82	3	70	495	2020-06-16 12:40:13.123614	2020-06-16 12:40:13.123614
1470	50	4	70	431	2020-06-16 12:40:13.128055	2020-06-16 12:40:13.128055
1471	9	3	70	114	2020-06-16 12:40:13.132354	2020-06-16 12:40:13.132354
1472	51	3	70	739	2020-06-16 12:40:13.136768	2020-06-16 12:40:13.136768
1473	61	2	71	362	2020-06-16 12:40:13.14112	2020-06-16 12:40:13.14112
1474	57	1	71	245	2020-06-16 12:40:13.145658	2020-06-16 12:40:13.145658
1475	78	5	71	246	2020-06-16 12:40:13.149727	2020-06-16 12:40:13.149727
1476	90	4	71	59	2020-06-16 12:40:13.153645	2020-06-16 12:40:13.153645
1477	41	2	71	617	2020-06-16 12:40:13.157537	2020-06-16 12:40:13.157537
1478	26	3	71	188	2020-06-16 12:40:13.161132	2020-06-16 12:40:13.161132
1479	85	4	72	242	2020-06-16 12:40:13.164651	2020-06-16 12:40:13.164651
1480	24	1	72	530	2020-06-16 12:40:13.168097	2020-06-16 12:40:13.168097
1481	69	1	72	175	2020-06-16 12:40:13.172033	2020-06-16 12:40:13.172033
1482	44	1	73	525	2020-06-16 12:40:13.175486	2020-06-16 12:40:13.175486
1483	78	1	74	769	2020-06-16 12:40:13.179889	2020-06-16 12:40:13.179889
1484	6	4	74	316	2020-06-16 12:40:13.183273	2020-06-16 12:40:13.183273
1485	37	2	74	29	2020-06-16 12:40:13.186603	2020-06-16 12:40:13.186603
1486	11	5	74	616	2020-06-16 12:40:13.190039	2020-06-16 12:40:13.190039
1487	12	4	74	285	2020-06-16 12:40:13.193213	2020-06-16 12:40:13.193213
1488	8	1	74	155	2020-06-16 12:40:13.196677	2020-06-16 12:40:13.196677
1489	79	1	74	531	2020-06-16 12:40:13.200158	2020-06-16 12:40:13.200158
1490	43	3	75	731	2020-06-16 12:40:13.203604	2020-06-16 12:40:13.203604
1491	65	3	75	37	2020-06-16 12:40:13.207159	2020-06-16 12:40:13.207159
1492	10	5	75	153	2020-06-16 12:40:13.210737	2020-06-16 12:40:13.210737
1493	18	2	75	378	2020-06-16 12:40:13.214271	2020-06-16 12:40:13.214271
1494	94	2	75	158	2020-06-16 12:40:13.217887	2020-06-16 12:40:13.217887
1495	10	1	75	773	2020-06-16 12:40:13.221823	2020-06-16 12:40:13.221823
1496	33	3	75	729	2020-06-16 12:40:13.2254	2020-06-16 12:40:13.2254
1497	8	1	75	223	2020-06-16 12:40:13.229501	2020-06-16 12:40:13.229501
1498	70	5	75	503	2020-06-16 12:40:13.233155	2020-06-16 12:40:13.233155
1499	56	1	75	17	2020-06-16 12:40:13.237467	2020-06-16 12:40:13.237467
1500	59	1	76	692	2020-06-16 12:40:13.241932	2020-06-16 12:40:13.241932
1501	20	2	76	599	2020-06-16 12:40:13.24612	2020-06-16 12:40:13.24612
1502	78	5	76	706	2020-06-16 12:40:13.250339	2020-06-16 12:40:13.250339
1503	41	2	76	299	2020-06-16 12:40:13.254714	2020-06-16 12:40:13.254714
1504	75	1	76	627	2020-06-16 12:40:13.259639	2020-06-16 12:40:13.259639
1505	61	5	76	541	2020-06-16 12:40:13.264891	2020-06-16 12:40:13.264891
1506	37	4	76	555	2020-06-16 12:40:13.270031	2020-06-16 12:40:13.270031
1507	36	3	76	431	2020-06-16 12:40:13.275293	2020-06-16 12:40:13.275293
1508	36	1	77	542	2020-06-16 12:40:13.280676	2020-06-16 12:40:13.280676
1509	38	2	77	186	2020-06-16 12:40:13.286339	2020-06-16 12:40:13.286339
1510	90	2	77	732	2020-06-16 12:40:13.291526	2020-06-16 12:40:13.291526
1511	22	1	77	497	2020-06-16 12:40:13.295929	2020-06-16 12:40:13.295929
1512	70	2	77	748	2020-06-16 12:40:13.300763	2020-06-16 12:40:13.300763
1513	89	4	77	455	2020-06-16 12:40:13.305314	2020-06-16 12:40:13.305314
1514	39	4	77	180	2020-06-16 12:40:13.310261	2020-06-16 12:40:13.310261
1515	71	4	77	200	2020-06-16 12:40:13.314343	2020-06-16 12:40:13.314343
1516	70	2	77	214	2020-06-16 12:40:13.318548	2020-06-16 12:40:13.318548
1517	88	5	78	326	2020-06-16 12:40:13.322043	2020-06-16 12:40:13.322043
1518	11	4	78	425	2020-06-16 12:40:13.325412	2020-06-16 12:40:13.325412
1519	20	2	78	94	2020-06-16 12:40:13.328741	2020-06-16 12:40:13.328741
1520	66	2	78	697	2020-06-16 12:40:13.332605	2020-06-16 12:40:13.332605
1521	76	4	78	275	2020-06-16 12:40:13.336208	2020-06-16 12:40:13.336208
1522	46	1	79	612	2020-06-16 12:40:13.339842	2020-06-16 12:40:13.339842
1523	53	3	79	457	2020-06-16 12:40:13.344246	2020-06-16 12:40:13.344246
1524	38	3	79	176	2020-06-16 12:40:13.348862	2020-06-16 12:40:13.348862
1525	60	3	79	594	2020-06-16 12:40:13.354085	2020-06-16 12:40:13.354085
1526	52	1	79	26	2020-06-16 12:40:13.358206	2020-06-16 12:40:13.358206
1527	67	1	79	766	2020-06-16 12:40:13.361875	2020-06-16 12:40:13.361875
1528	79	1	79	36	2020-06-16 12:40:13.36563	2020-06-16 12:40:13.36563
1529	6	1	79	297	2020-06-16 12:40:13.369327	2020-06-16 12:40:13.369327
1530	15	5	80	148	2020-06-16 12:40:13.372861	2020-06-16 12:40:13.372861
1531	47	5	80	617	2020-06-16 12:40:13.3766	2020-06-16 12:40:13.3766
1532	7	2	80	616	2020-06-16 12:40:13.380283	2020-06-16 12:40:13.380283
1533	58	5	80	348	2020-06-16 12:40:13.384078	2020-06-16 12:40:13.384078
1534	29	5	80	321	2020-06-16 12:40:13.388107	2020-06-16 12:40:13.388107
1535	42	1	80	397	2020-06-16 12:40:13.391933	2020-06-16 12:40:13.391933
1536	53	4	81	287	2020-06-16 12:40:13.395446	2020-06-16 12:40:13.395446
1537	66	1	81	646	2020-06-16 12:40:13.399198	2020-06-16 12:40:13.399198
1538	59	4	81	342	2020-06-16 12:40:13.402528	2020-06-16 12:40:13.402528
1539	75	3	82	514	2020-06-16 12:40:13.406323	2020-06-16 12:40:13.406323
1540	67	4	82	781	2020-06-16 12:40:13.413182	2020-06-16 12:40:13.413182
1541	86	4	82	675	2020-06-16 12:40:13.418803	2020-06-16 12:40:13.418803
1542	34	5	83	719	2020-06-16 12:40:13.424312	2020-06-16 12:40:13.424312
1543	93	3	83	489	2020-06-16 12:40:13.429408	2020-06-16 12:40:13.429408
1544	59	5	83	237	2020-06-16 12:40:13.433654	2020-06-16 12:40:13.433654
1545	63	3	83	577	2020-06-16 12:40:13.438	2020-06-16 12:40:13.438
1546	93	5	83	769	2020-06-16 12:40:13.442554	2020-06-16 12:40:13.442554
1547	31	1	83	63	2020-06-16 12:40:13.446823	2020-06-16 12:40:13.446823
1548	33	3	83	510	2020-06-16 12:40:13.451376	2020-06-16 12:40:13.451376
1549	67	3	83	676	2020-06-16 12:40:13.456194	2020-06-16 12:40:13.456194
1550	66	4	84	675	2020-06-16 12:40:13.460589	2020-06-16 12:40:13.460589
1551	39	5	84	713	2020-06-16 12:40:13.464833	2020-06-16 12:40:13.464833
1552	42	4	84	453	2020-06-16 12:40:13.468924	2020-06-16 12:40:13.468924
1553	60	2	85	10	2020-06-16 12:40:13.473606	2020-06-16 12:40:13.473606
1554	30	4	85	504	2020-06-16 12:40:13.478647	2020-06-16 12:40:13.478647
1555	44	5	85	286	2020-06-16 12:40:13.484967	2020-06-16 12:40:13.484967
1556	64	3	86	790	2020-06-16 12:40:13.490222	2020-06-16 12:40:13.490222
1557	80	2	86	468	2020-06-16 12:40:13.494853	2020-06-16 12:40:13.494853
1558	100	4	86	409	2020-06-16 12:40:13.500673	2020-06-16 12:40:13.500673
1559	1	4	86	113	2020-06-16 12:40:13.504089	2020-06-16 12:40:13.504089
1560	80	5	86	3	2020-06-16 12:40:13.507418	2020-06-16 12:40:13.507418
1561	18	1	86	478	2020-06-16 12:40:13.510416	2020-06-16 12:40:13.510416
1562	95	4	86	276	2020-06-16 12:40:13.513391	2020-06-16 12:40:13.513391
1563	5	5	86	519	2020-06-16 12:40:13.516065	2020-06-16 12:40:13.516065
1564	3	3	86	476	2020-06-16 12:40:13.519064	2020-06-16 12:40:13.519064
1565	24	1	86	175	2020-06-16 12:40:13.521928	2020-06-16 12:40:13.521928
1566	88	2	87	34	2020-06-16 12:40:13.525064	2020-06-16 12:40:13.525064
1567	68	5	87	793	2020-06-16 12:40:13.528144	2020-06-16 12:40:13.528144
1568	9	1	87	556	2020-06-16 12:40:13.531248	2020-06-16 12:40:13.531248
1569	52	4	87	261	2020-06-16 12:40:13.534218	2020-06-16 12:40:13.534218
1570	39	3	88	668	2020-06-16 12:40:13.537093	2020-06-16 12:40:13.537093
1571	100	5	88	789	2020-06-16 12:40:13.539967	2020-06-16 12:40:13.539967
1572	60	1	88	51	2020-06-16 12:40:13.542987	2020-06-16 12:40:13.542987
1573	15	2	88	348	2020-06-16 12:40:13.546704	2020-06-16 12:40:13.546704
1574	90	5	88	187	2020-06-16 12:40:13.549917	2020-06-16 12:40:13.549917
1575	92	3	88	444	2020-06-16 12:40:13.553408	2020-06-16 12:40:13.553408
1576	59	5	88	523	2020-06-16 12:40:13.556722	2020-06-16 12:40:13.556722
1577	88	2	88	215	2020-06-16 12:40:13.559634	2020-06-16 12:40:13.559634
1578	65	1	88	722	2020-06-16 12:40:13.56256	2020-06-16 12:40:13.56256
1579	76	1	88	162	2020-06-16 12:40:13.565723	2020-06-16 12:40:13.565723
1580	46	2	89	406	2020-06-16 12:40:13.568851	2020-06-16 12:40:13.568851
1581	13	5	89	539	2020-06-16 12:40:13.572186	2020-06-16 12:40:13.572186
1582	60	5	90	607	2020-06-16 12:40:13.575592	2020-06-16 12:40:13.575592
1583	22	5	90	542	2020-06-16 12:40:13.579288	2020-06-16 12:40:13.579288
1584	71	1	90	439	2020-06-16 12:40:13.58275	2020-06-16 12:40:13.58275
1585	99	2	90	563	2020-06-16 12:40:13.586576	2020-06-16 12:40:13.586576
1586	72	1	90	487	2020-06-16 12:40:13.590249	2020-06-16 12:40:13.590249
1587	44	3	90	136	2020-06-16 12:40:13.593662	2020-06-16 12:40:13.593662
1588	42	5	90	85	2020-06-16 12:40:13.59702	2020-06-16 12:40:13.59702
1589	30	3	91	429	2020-06-16 12:40:13.600462	2020-06-16 12:40:13.600462
1590	90	4	91	223	2020-06-16 12:40:13.603927	2020-06-16 12:40:13.603927
1591	13	4	91	604	2020-06-16 12:40:13.60806	2020-06-16 12:40:13.60806
1592	30	5	91	116	2020-06-16 12:40:13.617776	2020-06-16 12:40:13.617776
1593	65	2	92	289	2020-06-16 12:40:13.621256	2020-06-16 12:40:13.621256
1594	88	5	92	601	2020-06-16 12:40:13.624534	2020-06-16 12:40:13.624534
1595	16	4	92	96	2020-06-16 12:40:13.627768	2020-06-16 12:40:13.627768
1596	63	2	92	313	2020-06-16 12:40:13.630999	2020-06-16 12:40:13.630999
1597	22	4	92	13	2020-06-16 12:40:13.634469	2020-06-16 12:40:13.634469
1598	85	1	92	797	2020-06-16 12:40:13.63784	2020-06-16 12:40:13.63784
1599	35	4	92	574	2020-06-16 12:40:13.641553	2020-06-16 12:40:13.641553
1600	42	5	92	231	2020-06-16 12:40:13.64549	2020-06-16 12:40:13.64549
1601	41	1	93	164	2020-06-16 12:40:13.649408	2020-06-16 12:40:13.649408
1602	56	5	93	461	2020-06-16 12:40:13.653695	2020-06-16 12:40:13.653695
1603	31	3	93	69	2020-06-16 12:40:13.657927	2020-06-16 12:40:13.657927
1604	40	4	93	314	2020-06-16 12:40:13.661626	2020-06-16 12:40:13.661626
1605	31	1	93	250	2020-06-16 12:40:13.665414	2020-06-16 12:40:13.665414
1606	61	5	93	690	2020-06-16 12:40:13.669437	2020-06-16 12:40:13.669437
1607	34	1	93	176	2020-06-16 12:40:13.673239	2020-06-16 12:40:13.673239
1608	49	3	93	629	2020-06-16 12:40:13.676735	2020-06-16 12:40:13.676735
1609	1	3	93	297	2020-06-16 12:40:13.680277	2020-06-16 12:40:13.680277
1610	61	2	93	502	2020-06-16 12:40:13.68381	2020-06-16 12:40:13.68381
1611	12	1	94	167	2020-06-16 12:40:13.687371	2020-06-16 12:40:13.687371
1612	66	3	94	635	2020-06-16 12:40:13.690988	2020-06-16 12:40:13.690988
1613	43	5	94	593	2020-06-16 12:40:13.694413	2020-06-16 12:40:13.694413
1614	39	1	94	158	2020-06-16 12:40:13.69774	2020-06-16 12:40:13.69774
1615	14	5	94	753	2020-06-16 12:40:13.701223	2020-06-16 12:40:13.701223
1616	15	3	94	427	2020-06-16 12:40:13.704752	2020-06-16 12:40:13.704752
1617	99	1	94	276	2020-06-16 12:40:13.707987	2020-06-16 12:40:13.707987
1618	36	2	94	580	2020-06-16 12:40:13.711541	2020-06-16 12:40:13.711541
1619	16	4	94	115	2020-06-16 12:40:13.71488	2020-06-16 12:40:13.71488
1620	9	3	94	778	2020-06-16 12:40:13.718255	2020-06-16 12:40:13.718255
1621	71	1	95	559	2020-06-16 12:40:13.721999	2020-06-16 12:40:13.721999
1622	62	5	95	343	2020-06-16 12:40:13.725632	2020-06-16 12:40:13.725632
1623	54	1	95	781	2020-06-16 12:40:13.729176	2020-06-16 12:40:13.729176
1624	28	5	95	417	2020-06-16 12:40:13.733054	2020-06-16 12:40:13.733054
1625	68	2	95	556	2020-06-16 12:40:13.737105	2020-06-16 12:40:13.737105
1626	28	5	95	689	2020-06-16 12:40:13.74368	2020-06-16 12:40:13.74368
1627	34	4	95	568	2020-06-16 12:40:13.747883	2020-06-16 12:40:13.747883
1628	71	3	95	552	2020-06-16 12:40:13.751542	2020-06-16 12:40:13.751542
1629	75	3	95	388	2020-06-16 12:40:13.755659	2020-06-16 12:40:13.755659
1630	90	4	96	142	2020-06-16 12:40:13.759301	2020-06-16 12:40:13.759301
1631	76	4	97	697	2020-06-16 12:40:13.762714	2020-06-16 12:40:13.762714
1632	20	5	97	127	2020-06-16 12:40:13.766197	2020-06-16 12:40:13.766197
1633	18	3	97	610	2020-06-16 12:40:13.769808	2020-06-16 12:40:13.769808
1634	52	4	97	698	2020-06-16 12:40:13.773245	2020-06-16 12:40:13.773245
1635	11	1	97	44	2020-06-16 12:40:13.776574	2020-06-16 12:40:13.776574
1636	59	4	97	231	2020-06-16 12:40:13.780032	2020-06-16 12:40:13.780032
1637	48	1	97	780	2020-06-16 12:40:13.783275	2020-06-16 12:40:13.783275
1638	98	2	98	710	2020-06-16 12:40:13.786509	2020-06-16 12:40:13.786509
1639	52	5	98	165	2020-06-16 12:40:13.789833	2020-06-16 12:40:13.789833
1640	43	3	98	69	2020-06-16 12:40:13.79334	2020-06-16 12:40:13.79334
1641	94	2	98	27	2020-06-16 12:40:13.796937	2020-06-16 12:40:13.796937
1642	94	2	98	143	2020-06-16 12:40:13.801341	2020-06-16 12:40:13.801341
1643	77	3	98	331	2020-06-16 12:40:13.805329	2020-06-16 12:40:13.805329
1644	79	1	98	602	2020-06-16 12:40:13.809656	2020-06-16 12:40:13.809656
1645	93	4	98	8	2020-06-16 12:40:13.81393	2020-06-16 12:40:13.81393
1646	38	2	98	727	2020-06-16 12:40:13.818198	2020-06-16 12:40:13.818198
1647	58	4	99	665	2020-06-16 12:40:13.821762	2020-06-16 12:40:13.821762
1648	56	1	99	350	2020-06-16 12:40:13.825324	2020-06-16 12:40:13.825324
1649	8	3	100	71	2020-06-16 12:40:13.828325	2020-06-16 12:40:13.828325
1650	80	2	100	142	2020-06-16 12:40:13.831284	2020-06-16 12:40:13.831284
1651	3	1	100	219	2020-06-16 12:40:13.834731	2020-06-16 12:40:13.834731
1652	89	1	100	759	2020-06-16 12:40:13.838155	2020-06-16 12:40:13.838155
1653	98	1	101	581	2020-06-16 12:40:13.841331	2020-06-16 12:40:13.841331
1654	10	4	101	126	2020-06-16 12:40:13.84469	2020-06-16 12:40:13.84469
1655	62	5	101	525	2020-06-16 12:40:13.848189	2020-06-16 12:40:13.848189
1656	98	3	101	482	2020-06-16 12:40:13.851682	2020-06-16 12:40:13.851682
1657	29	1	101	383	2020-06-16 12:40:13.855121	2020-06-16 12:40:13.855121
1658	99	2	101	662	2020-06-16 12:40:13.858764	2020-06-16 12:40:13.858764
1659	76	2	101	540	2020-06-16 12:40:13.862562	2020-06-16 12:40:13.862562
1660	18	2	101	373	2020-06-16 12:40:13.866538	2020-06-16 12:40:13.866538
1661	46	1	102	95	2020-06-16 12:40:13.870794	2020-06-16 12:40:13.870794
1662	16	1	102	248	2020-06-16 12:40:13.875296	2020-06-16 12:40:13.875296
1663	70	1	103	315	2020-06-16 12:40:13.879787	2020-06-16 12:40:13.879787
1664	80	5	103	725	2020-06-16 12:40:13.884094	2020-06-16 12:40:13.884094
1665	79	3	103	58	2020-06-16 12:40:13.8877	2020-06-16 12:40:13.8877
1666	18	4	103	137	2020-06-16 12:40:13.891486	2020-06-16 12:40:13.891486
1667	6	3	104	110	2020-06-16 12:40:13.894664	2020-06-16 12:40:13.894664
1668	80	2	104	219	2020-06-16 12:40:13.897916	2020-06-16 12:40:13.897916
1669	80	5	104	645	2020-06-16 12:40:13.901212	2020-06-16 12:40:13.901212
1670	23	3	104	483	2020-06-16 12:40:13.904446	2020-06-16 12:40:13.904446
1671	52	2	104	385	2020-06-16 12:40:13.907506	2020-06-16 12:40:13.907506
1672	81	2	104	50	2020-06-16 12:40:13.91062	2020-06-16 12:40:13.91062
1673	16	1	105	178	2020-06-16 12:40:13.913866	2020-06-16 12:40:13.913866
1674	98	3	106	42	2020-06-16 12:40:13.917013	2020-06-16 12:40:13.917013
1675	84	4	106	372	2020-06-16 12:40:13.920734	2020-06-16 12:40:13.920734
1676	62	5	106	553	2020-06-16 12:40:13.924013	2020-06-16 12:40:13.924013
1677	33	2	106	572	2020-06-16 12:40:13.927368	2020-06-16 12:40:13.927368
1678	37	1	106	77	2020-06-16 12:40:13.930758	2020-06-16 12:40:13.930758
1679	70	1	107	247	2020-06-16 12:40:13.933861	2020-06-16 12:40:13.933861
1680	84	5	108	149	2020-06-16 12:40:13.936934	2020-06-16 12:40:13.936934
1681	46	1	109	567	2020-06-16 12:40:13.940007	2020-06-16 12:40:13.940007
1682	70	4	109	648	2020-06-16 12:40:13.943015	2020-06-16 12:40:13.943015
1683	90	3	109	236	2020-06-16 12:40:13.946246	2020-06-16 12:40:13.946246
1684	34	3	109	399	2020-06-16 12:40:13.949736	2020-06-16 12:40:13.949736
1685	28	4	109	149	2020-06-16 12:40:13.953083	2020-06-16 12:40:13.953083
1686	42	3	109	625	2020-06-16 12:40:13.956107	2020-06-16 12:40:13.956107
1687	51	2	109	797	2020-06-16 12:40:13.959299	2020-06-16 12:40:13.959299
1688	19	1	109	712	2020-06-16 12:40:13.962223	2020-06-16 12:40:13.962223
1689	31	3	109	329	2020-06-16 12:40:13.965311	2020-06-16 12:40:13.965311
1690	24	5	110	715	2020-06-16 12:40:13.969064	2020-06-16 12:40:13.969064
1691	3	2	110	612	2020-06-16 12:40:13.972831	2020-06-16 12:40:13.972831
1692	68	5	110	212	2020-06-16 12:40:13.976886	2020-06-16 12:40:13.976886
1693	99	4	110	409	2020-06-16 12:40:13.981269	2020-06-16 12:40:13.981269
1694	2	5	110	592	2020-06-16 12:40:13.985528	2020-06-16 12:40:13.985528
1695	83	2	110	479	2020-06-16 12:40:13.989638	2020-06-16 12:40:13.989638
1696	39	1	110	786	2020-06-16 12:40:13.993918	2020-06-16 12:40:13.993918
1697	34	4	110	293	2020-06-16 12:40:13.998265	2020-06-16 12:40:13.998265
1698	7	5	111	362	2020-06-16 12:40:14.002863	2020-06-16 12:40:14.002863
1699	88	2	111	417	2020-06-16 12:40:14.007338	2020-06-16 12:40:14.007338
1700	36	3	111	645	2020-06-16 12:40:14.01114	2020-06-16 12:40:14.01114
1701	70	1	111	594	2020-06-16 12:40:14.01561	2020-06-16 12:40:14.01561
1702	14	4	111	411	2020-06-16 12:40:14.020071	2020-06-16 12:40:14.020071
1703	64	2	111	535	2020-06-16 12:40:14.024787	2020-06-16 12:40:14.024787
1704	16	2	111	721	2020-06-16 12:40:14.029235	2020-06-16 12:40:14.029235
1705	80	4	111	705	2020-06-16 12:40:14.03371	2020-06-16 12:40:14.03371
1706	32	4	111	102	2020-06-16 12:40:14.038286	2020-06-16 12:40:14.038286
1707	63	3	112	620	2020-06-16 12:40:14.044389	2020-06-16 12:40:14.044389
1708	59	5	112	454	2020-06-16 12:40:14.048376	2020-06-16 12:40:14.048376
1709	22	2	112	543	2020-06-16 12:40:14.052772	2020-06-16 12:40:14.052772
1710	44	4	112	143	2020-06-16 12:40:14.056485	2020-06-16 12:40:14.056485
1711	30	4	112	108	2020-06-16 12:40:14.060435	2020-06-16 12:40:14.060435
1712	38	4	112	374	2020-06-16 12:40:14.064476	2020-06-16 12:40:14.064476
1713	65	3	112	561	2020-06-16 12:40:14.068748	2020-06-16 12:40:14.068748
1714	11	4	112	446	2020-06-16 12:40:14.073372	2020-06-16 12:40:14.073372
1715	62	3	112	153	2020-06-16 12:40:14.077191	2020-06-16 12:40:14.077191
1716	99	2	112	644	2020-06-16 12:40:14.081023	2020-06-16 12:40:14.081023
1717	73	5	113	229	2020-06-16 12:40:14.085336	2020-06-16 12:40:14.085336
1718	9	2	113	603	2020-06-16 12:40:14.090318	2020-06-16 12:40:14.090318
1719	37	2	113	799	2020-06-16 12:40:14.094492	2020-06-16 12:40:14.094492
1720	94	1	113	605	2020-06-16 12:40:14.098116	2020-06-16 12:40:14.098116
1721	11	5	113	746	2020-06-16 12:40:14.104592	2020-06-16 12:40:14.104592
1722	29	3	113	706	2020-06-16 12:40:14.110078	2020-06-16 12:40:14.110078
1723	62	2	113	668	2020-06-16 12:40:14.115894	2020-06-16 12:40:14.115894
1724	33	3	113	724	2020-06-16 12:40:14.121499	2020-06-16 12:40:14.121499
1725	11	4	113	116	2020-06-16 12:40:14.127001	2020-06-16 12:40:14.127001
1726	56	4	114	492	2020-06-16 12:40:14.132823	2020-06-16 12:40:14.132823
1727	58	5	115	722	2020-06-16 12:40:14.138512	2020-06-16 12:40:14.138512
1728	57	3	116	412	2020-06-16 12:40:14.143331	2020-06-16 12:40:14.143331
1729	30	3	116	115	2020-06-16 12:40:14.147692	2020-06-16 12:40:14.147692
1730	55	2	117	438	2020-06-16 12:40:14.151871	2020-06-16 12:40:14.151871
1731	10	4	117	758	2020-06-16 12:40:14.156294	2020-06-16 12:40:14.156294
1732	67	3	117	475	2020-06-16 12:40:14.16024	2020-06-16 12:40:14.16024
1733	27	2	117	586	2020-06-16 12:40:14.164342	2020-06-16 12:40:14.164342
1734	53	3	117	678	2020-06-16 12:40:14.168132	2020-06-16 12:40:14.168132
1735	23	1	118	141	2020-06-16 12:40:14.171726	2020-06-16 12:40:14.171726
1736	12	2	118	799	2020-06-16 12:40:14.17535	2020-06-16 12:40:14.17535
1737	25	5	118	262	2020-06-16 12:40:14.178947	2020-06-16 12:40:14.178947
1738	32	1	118	78	2020-06-16 12:40:14.182481	2020-06-16 12:40:14.182481
1739	83	4	119	643	2020-06-16 12:40:14.185844	2020-06-16 12:40:14.185844
1740	4	4	119	597	2020-06-16 12:40:14.189089	2020-06-16 12:40:14.189089
1741	89	1	119	314	2020-06-16 12:40:14.192501	2020-06-16 12:40:14.192501
1742	72	3	119	591	2020-06-16 12:40:14.196458	2020-06-16 12:40:14.196458
1743	92	2	120	287	2020-06-16 12:40:14.199951	2020-06-16 12:40:14.199951
1744	37	2	120	752	2020-06-16 12:40:14.20343	2020-06-16 12:40:14.20343
1745	92	3	120	702	2020-06-16 12:40:14.206636	2020-06-16 12:40:14.206636
1746	55	5	120	322	2020-06-16 12:40:14.209849	2020-06-16 12:40:14.209849
1747	44	1	120	238	2020-06-16 12:40:14.213485	2020-06-16 12:40:14.213485
1748	28	4	120	614	2020-06-16 12:40:14.216672	2020-06-16 12:40:14.216672
1749	77	3	120	583	2020-06-16 12:40:14.219895	2020-06-16 12:40:14.219895
1750	17	1	120	327	2020-06-16 12:40:14.223221	2020-06-16 12:40:14.223221
1751	77	1	121	119	2020-06-16 12:40:14.226552	2020-06-16 12:40:14.226552
1752	38	5	122	67	2020-06-16 12:40:14.230186	2020-06-16 12:40:14.230186
1753	99	5	122	644	2020-06-16 12:40:14.234203	2020-06-16 12:40:14.234203
1754	1	5	122	305	2020-06-16 12:40:14.238722	2020-06-16 12:40:14.238722
1755	47	5	123	626	2020-06-16 12:40:14.243654	2020-06-16 12:40:14.243654
1756	8	3	123	111	2020-06-16 12:40:14.24835	2020-06-16 12:40:14.24835
1757	12	1	124	251	2020-06-16 12:40:14.253182	2020-06-16 12:40:14.253182
1758	81	3	124	518	2020-06-16 12:40:14.257692	2020-06-16 12:40:14.257692
1759	56	4	124	58	2020-06-16 12:40:14.263179	2020-06-16 12:40:14.263179
1760	59	2	124	753	2020-06-16 12:40:14.268923	2020-06-16 12:40:14.268923
1761	79	2	124	632	2020-06-16 12:40:14.273357	2020-06-16 12:40:14.273357
1762	34	4	124	63	2020-06-16 12:40:14.277716	2020-06-16 12:40:14.277716
1763	74	2	124	738	2020-06-16 12:40:14.282167	2020-06-16 12:40:14.282167
1764	19	5	124	93	2020-06-16 12:40:14.287384	2020-06-16 12:40:14.287384
1765	6	3	125	196	2020-06-16 12:40:14.291807	2020-06-16 12:40:14.291807
1766	64	1	125	709	2020-06-16 12:40:14.296398	2020-06-16 12:40:14.296398
1767	71	3	125	70	2020-06-16 12:40:14.300855	2020-06-16 12:40:14.300855
1768	44	2	125	698	2020-06-16 12:40:14.304906	2020-06-16 12:40:14.304906
1769	20	3	125	710	2020-06-16 12:40:14.30852	2020-06-16 12:40:14.30852
1770	74	2	126	571	2020-06-16 12:40:14.312644	2020-06-16 12:40:14.312644
1771	6	2	126	316	2020-06-16 12:40:14.317277	2020-06-16 12:40:14.317277
1772	25	5	126	708	2020-06-16 12:40:14.320892	2020-06-16 12:40:14.320892
1773	67	5	126	483	2020-06-16 12:40:14.324316	2020-06-16 12:40:14.324316
1774	58	1	126	347	2020-06-16 12:40:14.327446	2020-06-16 12:40:14.327446
1775	11	3	126	389	2020-06-16 12:40:14.3308	2020-06-16 12:40:14.3308
1776	60	3	126	505	2020-06-16 12:40:14.334049	2020-06-16 12:40:14.334049
1777	43	2	127	103	2020-06-16 12:40:14.337475	2020-06-16 12:40:14.337475
1778	89	3	127	23	2020-06-16 12:40:14.340986	2020-06-16 12:40:14.340986
1779	36	3	128	619	2020-06-16 12:40:14.344683	2020-06-16 12:40:14.344683
1780	18	3	128	666	2020-06-16 12:40:14.34827	2020-06-16 12:40:14.34827
1781	57	3	128	770	2020-06-16 12:40:14.35722	2020-06-16 12:40:14.35722
1782	74	5	128	230	2020-06-16 12:40:14.36396	2020-06-16 12:40:14.36396
1783	20	2	128	583	2020-06-16 12:40:14.367933	2020-06-16 12:40:14.367933
1784	38	4	128	616	2020-06-16 12:40:14.372974	2020-06-16 12:40:14.372974
1785	53	3	129	748	2020-06-16 12:40:14.37781	2020-06-16 12:40:14.37781
1786	5	4	129	421	2020-06-16 12:40:14.383516	2020-06-16 12:40:14.383516
1787	32	3	129	78	2020-06-16 12:40:14.391398	2020-06-16 12:40:14.391398
1788	78	3	129	36	2020-06-16 12:40:14.398213	2020-06-16 12:40:14.398213
1789	79	4	129	671	2020-06-16 12:40:14.40451	2020-06-16 12:40:14.40451
1790	86	4	129	617	2020-06-16 12:40:14.410227	2020-06-16 12:40:14.410227
1791	51	5	129	153	2020-06-16 12:40:14.415008	2020-06-16 12:40:14.415008
1792	49	3	129	107	2020-06-16 12:40:14.419915	2020-06-16 12:40:14.419915
1793	17	2	129	561	2020-06-16 12:40:14.424986	2020-06-16 12:40:14.424986
1794	90	4	129	530	2020-06-16 12:40:14.429883	2020-06-16 12:40:14.429883
1795	10	2	130	218	2020-06-16 12:40:14.434609	2020-06-16 12:40:14.434609
1796	23	3	130	474	2020-06-16 12:40:14.440378	2020-06-16 12:40:14.440378
1797	71	2	130	569	2020-06-16 12:40:14.445586	2020-06-16 12:40:14.445586
1798	98	1	131	611	2020-06-16 12:40:14.450179	2020-06-16 12:40:14.450179
1799	18	1	131	277	2020-06-16 12:40:14.455288	2020-06-16 12:40:14.455288
1800	67	5	131	236	2020-06-16 12:40:14.461329	2020-06-16 12:40:14.461329
1801	83	2	131	713	2020-06-16 12:40:14.465768	2020-06-16 12:40:14.465768
1802	88	4	131	248	2020-06-16 12:40:14.470385	2020-06-16 12:40:14.470385
1803	27	2	131	764	2020-06-16 12:40:14.476872	2020-06-16 12:40:14.476872
1804	97	3	131	69	2020-06-16 12:40:14.481295	2020-06-16 12:40:14.481295
1805	31	5	131	435	2020-06-16 12:40:14.486203	2020-06-16 12:40:14.486203
1806	30	1	131	298	2020-06-16 12:40:14.492228	2020-06-16 12:40:14.492228
1807	33	4	131	56	2020-06-16 12:40:14.496973	2020-06-16 12:40:14.496973
1808	87	2	132	26	2020-06-16 12:40:14.501888	2020-06-16 12:40:14.501888
1809	27	4	132	3	2020-06-16 12:40:14.50868	2020-06-16 12:40:14.50868
1810	57	3	132	260	2020-06-16 12:40:14.513594	2020-06-16 12:40:14.513594
1811	100	5	133	246	2020-06-16 12:40:14.517925	2020-06-16 12:40:14.517925
1812	19	3	133	467	2020-06-16 12:40:14.523561	2020-06-16 12:40:14.523561
1813	4	2	133	440	2020-06-16 12:40:14.528534	2020-06-16 12:40:14.528534
1814	10	5	133	14	2020-06-16 12:40:14.533332	2020-06-16 12:40:14.533332
1815	20	5	133	266	2020-06-16 12:40:14.538729	2020-06-16 12:40:14.538729
1816	1	1	133	139	2020-06-16 12:40:14.545204	2020-06-16 12:40:14.545204
1817	39	3	133	412	2020-06-16 12:40:14.5497	2020-06-16 12:40:14.5497
1818	66	5	134	286	2020-06-16 12:40:14.555558	2020-06-16 12:40:14.555558
1819	28	3	134	533	2020-06-16 12:40:14.561643	2020-06-16 12:40:14.561643
1820	60	2	134	624	2020-06-16 12:40:14.566023	2020-06-16 12:40:14.566023
1821	84	4	135	298	2020-06-16 12:40:14.570639	2020-06-16 12:40:14.570639
1822	15	4	136	153	2020-06-16 12:40:14.576691	2020-06-16 12:40:14.576691
1823	45	1	136	431	2020-06-16 12:40:14.582529	2020-06-16 12:40:14.582529
1824	85	4	136	594	2020-06-16 12:40:14.588051	2020-06-16 12:40:14.588051
1825	86	2	136	182	2020-06-16 12:40:14.594034	2020-06-16 12:40:14.594034
1826	80	4	136	749	2020-06-16 12:40:14.599026	2020-06-16 12:40:14.599026
1827	83	3	136	696	2020-06-16 12:40:14.603934	2020-06-16 12:40:14.603934
1828	88	1	136	260	2020-06-16 12:40:14.612192	2020-06-16 12:40:14.612192
1829	26	5	136	267	2020-06-16 12:40:14.616859	2020-06-16 12:40:14.616859
1830	55	5	136	625	2020-06-16 12:40:14.622576	2020-06-16 12:40:14.622576
1831	3	2	136	645	2020-06-16 12:40:14.630126	2020-06-16 12:40:14.630126
1832	60	3	137	354	2020-06-16 12:40:14.635208	2020-06-16 12:40:14.635208
1833	81	1	137	618	2020-06-16 12:40:14.641808	2020-06-16 12:40:14.641808
1834	53	1	137	460	2020-06-16 12:40:14.649552	2020-06-16 12:40:14.649552
1835	68	5	137	477	2020-06-16 12:40:14.654715	2020-06-16 12:40:14.654715
1836	81	2	137	647	2020-06-16 12:40:14.660801	2020-06-16 12:40:14.660801
1837	91	2	137	400	2020-06-16 12:40:14.665487	2020-06-16 12:40:14.665487
1838	32	1	137	697	2020-06-16 12:40:14.670507	2020-06-16 12:40:14.670507
1839	43	1	138	381	2020-06-16 12:40:14.675564	2020-06-16 12:40:14.675564
1840	42	5	138	39	2020-06-16 12:40:14.680097	2020-06-16 12:40:14.680097
1841	18	3	138	679	2020-06-16 12:40:14.684158	2020-06-16 12:40:14.684158
1842	49	2	139	539	2020-06-16 12:40:14.688913	2020-06-16 12:40:14.688913
1843	10	5	139	444	2020-06-16 12:40:14.694063	2020-06-16 12:40:14.694063
1844	15	3	139	508	2020-06-16 12:40:14.698102	2020-06-16 12:40:14.698102
1845	90	5	139	635	2020-06-16 12:40:14.702395	2020-06-16 12:40:14.702395
1846	97	5	139	769	2020-06-16 12:40:14.70755	2020-06-16 12:40:14.70755
1847	86	2	139	633	2020-06-16 12:40:14.711908	2020-06-16 12:40:14.711908
1848	95	5	139	618	2020-06-16 12:40:14.715812	2020-06-16 12:40:14.715812
1849	84	2	139	2	2020-06-16 12:40:14.719977	2020-06-16 12:40:14.719977
1850	1	4	140	150	2020-06-16 12:40:14.725298	2020-06-16 12:40:14.725298
1851	33	3	140	36	2020-06-16 12:40:14.732253	2020-06-16 12:40:14.732253
1852	73	5	140	491	2020-06-16 12:40:14.736438	2020-06-16 12:40:14.736438
1853	71	5	140	469	2020-06-16 12:40:14.741556	2020-06-16 12:40:14.741556
1854	29	4	140	398	2020-06-16 12:40:14.745661	2020-06-16 12:40:14.745661
1855	54	5	140	600	2020-06-16 12:40:14.749458	2020-06-16 12:40:14.749458
1856	19	4	140	347	2020-06-16 12:40:14.753323	2020-06-16 12:40:14.753323
1857	18	3	140	388	2020-06-16 12:40:14.75859	2020-06-16 12:40:14.75859
1858	1	1	141	567	2020-06-16 12:40:14.762941	2020-06-16 12:40:14.762941
1859	96	2	142	598	2020-06-16 12:40:14.766947	2020-06-16 12:40:14.766947
1860	29	3	143	419	2020-06-16 12:40:14.771145	2020-06-16 12:40:14.771145
1861	4	4	143	627	2020-06-16 12:40:14.775999	2020-06-16 12:40:14.775999
1862	92	5	143	667	2020-06-16 12:40:14.77998	2020-06-16 12:40:14.77998
1863	86	5	143	218	2020-06-16 12:40:14.783676	2020-06-16 12:40:14.783676
1864	79	2	143	729	2020-06-16 12:40:14.787638	2020-06-16 12:40:14.787638
1865	82	2	143	636	2020-06-16 12:40:14.792558	2020-06-16 12:40:14.792558
1866	87	1	143	213	2020-06-16 12:40:14.796555	2020-06-16 12:40:14.796555
1867	53	2	144	441	2020-06-16 12:40:14.80064	2020-06-16 12:40:14.80064
1868	65	3	144	543	2020-06-16 12:40:14.805244	2020-06-16 12:40:14.805244
1869	69	1	144	172	2020-06-16 12:40:14.809575	2020-06-16 12:40:14.809575
1870	23	4	144	283	2020-06-16 12:40:14.813203	2020-06-16 12:40:14.813203
1871	19	1	144	164	2020-06-16 12:40:14.817753	2020-06-16 12:40:14.817753
1872	79	2	144	730	2020-06-16 12:40:14.822812	2020-06-16 12:40:14.822812
1873	80	5	144	679	2020-06-16 12:40:14.827659	2020-06-16 12:40:14.827659
1874	99	1	144	528	2020-06-16 12:40:14.831346	2020-06-16 12:40:14.831346
1875	13	3	144	220	2020-06-16 12:40:14.835335	2020-06-16 12:40:14.835335
1876	13	2	145	760	2020-06-16 12:40:14.840332	2020-06-16 12:40:14.840332
1877	50	4	145	368	2020-06-16 12:40:14.844234	2020-06-16 12:40:14.844234
1878	51	1	145	555	2020-06-16 12:40:14.847832	2020-06-16 12:40:14.847832
1879	71	4	145	70	2020-06-16 12:40:14.851637	2020-06-16 12:40:14.851637
1880	52	1	145	59	2020-06-16 12:40:14.856053	2020-06-16 12:40:14.856053
1881	60	3	145	637	2020-06-16 12:40:14.860786	2020-06-16 12:40:14.860786
1882	17	4	145	381	2020-06-16 12:40:14.86472	2020-06-16 12:40:14.86472
1883	40	1	146	494	2020-06-16 12:40:14.868413	2020-06-16 12:40:14.868413
1884	90	3	146	721	2020-06-16 12:40:14.872779	2020-06-16 12:40:14.872779
1885	12	1	146	454	2020-06-16 12:40:14.877358	2020-06-16 12:40:14.877358
1886	94	5	146	434	2020-06-16 12:40:14.88125	2020-06-16 12:40:14.88125
1887	5	4	146	755	2020-06-16 12:40:14.884951	2020-06-16 12:40:14.884951
1888	53	1	146	274	2020-06-16 12:40:14.889461	2020-06-16 12:40:14.889461
1889	54	5	146	749	2020-06-16 12:40:14.894111	2020-06-16 12:40:14.894111
1890	6	1	146	30	2020-06-16 12:40:14.898133	2020-06-16 12:40:14.898133
1891	92	2	146	678	2020-06-16 12:40:14.901965	2020-06-16 12:40:14.901965
1892	76	4	147	3	2020-06-16 12:40:14.906762	2020-06-16 12:40:14.906762
1893	48	5	147	616	2020-06-16 12:40:14.910884	2020-06-16 12:40:14.910884
1894	4	1	147	390	2020-06-16 12:40:14.914595	2020-06-16 12:40:14.914595
1895	29	1	147	529	2020-06-16 12:40:14.918326	2020-06-16 12:40:14.918326
1896	70	2	147	46	2020-06-16 12:40:14.923196	2020-06-16 12:40:14.923196
1897	13	2	147	149	2020-06-16 12:40:14.927432	2020-06-16 12:40:14.927432
1898	37	4	148	713	2020-06-16 12:40:14.931027	2020-06-16 12:40:14.931027
1899	82	4	148	266	2020-06-16 12:40:14.934859	2020-06-16 12:40:14.934859
1900	80	2	148	790	2020-06-16 12:40:14.939478	2020-06-16 12:40:14.939478
1901	46	5	148	414	2020-06-16 12:40:14.944009	2020-06-16 12:40:14.944009
1902	73	5	148	662	2020-06-16 12:40:14.947856	2020-06-16 12:40:14.947856
1903	89	2	148	110	2020-06-16 12:40:14.951893	2020-06-16 12:40:14.951893
1904	8	4	148	461	2020-06-16 12:40:14.95674	2020-06-16 12:40:14.95674
1905	22	5	148	64	2020-06-16 12:40:14.961198	2020-06-16 12:40:14.961198
1906	100	5	148	122	2020-06-16 12:40:14.965195	2020-06-16 12:40:14.965195
1907	65	5	149	140	2020-06-16 12:40:14.968925	2020-06-16 12:40:14.968925
1908	27	3	150	117	2020-06-16 12:40:14.973846	2020-06-16 12:40:14.973846
1909	54	5	150	355	2020-06-16 12:40:14.978118	2020-06-16 12:40:14.978118
1910	39	1	150	720	2020-06-16 12:40:14.981794	2020-06-16 12:40:14.981794
1911	71	1	150	688	2020-06-16 12:40:14.985686	2020-06-16 12:40:14.985686
1912	89	5	150	272	2020-06-16 12:40:14.990606	2020-06-16 12:40:14.990606
1913	13	5	150	669	2020-06-16 12:40:14.994861	2020-06-16 12:40:14.994861
1914	35	3	150	734	2020-06-16 12:40:14.998592	2020-06-16 12:40:14.998592
1915	79	5	151	738	2020-06-16 12:40:15.002361	2020-06-16 12:40:15.002361
1916	35	4	151	119	2020-06-16 12:40:15.009959	2020-06-16 12:40:15.009959
1917	95	3	151	757	2020-06-16 12:40:15.014356	2020-06-16 12:40:15.014356
1918	6	4	151	157	2020-06-16 12:40:15.018597	2020-06-16 12:40:15.018597
1919	86	5	152	395	2020-06-16 12:40:15.02382	2020-06-16 12:40:15.02382
1920	15	2	152	757	2020-06-16 12:40:15.0285	2020-06-16 12:40:15.0285
1921	58	1	152	118	2020-06-16 12:40:15.032562	2020-06-16 12:40:15.032562
1922	3	5	152	548	2020-06-16 12:40:15.036624	2020-06-16 12:40:15.036624
1923	93	3	152	755	2020-06-16 12:40:15.042233	2020-06-16 12:40:15.042233
1924	95	4	152	783	2020-06-16 12:40:15.046627	2020-06-16 12:40:15.046627
1925	57	3	152	224	2020-06-16 12:40:15.050471	2020-06-16 12:40:15.050471
1926	53	5	152	570	2020-06-16 12:40:15.055069	2020-06-16 12:40:15.055069
1927	98	1	152	68	2020-06-16 12:40:15.060077	2020-06-16 12:40:15.060077
1928	33	4	152	675	2020-06-16 12:40:15.064373	2020-06-16 12:40:15.064373
1929	93	2	153	35	2020-06-16 12:40:15.068599	2020-06-16 12:40:15.068599
1930	56	3	153	455	2020-06-16 12:40:15.073709	2020-06-16 12:40:15.073709
1931	75	1	154	33	2020-06-16 12:40:15.078727	2020-06-16 12:40:15.078727
1932	15	5	154	368	2020-06-16 12:40:15.082909	2020-06-16 12:40:15.082909
1933	37	2	155	474	2020-06-16 12:40:15.087105	2020-06-16 12:40:15.087105
1934	7	1	155	165	2020-06-16 12:40:15.092584	2020-06-16 12:40:15.092584
1935	10	1	155	777	2020-06-16 12:40:15.096971	2020-06-16 12:40:15.096971
1936	98	5	155	462	2020-06-16 12:40:15.100986	2020-06-16 12:40:15.100986
1937	46	4	155	608	2020-06-16 12:40:15.106276	2020-06-16 12:40:15.106276
1938	2	2	156	648	2020-06-16 12:40:15.111323	2020-06-16 12:40:15.111323
1939	37	2	156	54	2020-06-16 12:40:15.115329	2020-06-16 12:40:15.115329
1940	61	2	156	136	2020-06-16 12:40:15.119614	2020-06-16 12:40:15.119614
1941	68	5	156	747	2020-06-16 12:40:15.12512	2020-06-16 12:40:15.12512
1942	35	5	156	316	2020-06-16 12:40:15.129749	2020-06-16 12:40:15.129749
1943	54	4	156	199	2020-06-16 12:40:15.133963	2020-06-16 12:40:15.133963
1944	67	2	156	319	2020-06-16 12:40:15.138861	2020-06-16 12:40:15.138861
1945	68	5	156	1	2020-06-16 12:40:15.144376	2020-06-16 12:40:15.144376
1946	95	5	156	799	2020-06-16 12:40:15.14988	2020-06-16 12:40:15.14988
1947	26	1	157	782	2020-06-16 12:40:15.155559	2020-06-16 12:40:15.155559
1948	98	2	157	132	2020-06-16 12:40:15.162333	2020-06-16 12:40:15.162333
1949	21	3	157	185	2020-06-16 12:40:15.167955	2020-06-16 12:40:15.167955
1950	63	4	157	469	2020-06-16 12:40:15.174295	2020-06-16 12:40:15.174295
1951	86	4	157	428	2020-06-16 12:40:15.180082	2020-06-16 12:40:15.180082
1952	54	5	157	319	2020-06-16 12:40:15.185339	2020-06-16 12:40:15.185339
1953	70	2	158	124	2020-06-16 12:40:15.191219	2020-06-16 12:40:15.191219
1954	27	4	158	349	2020-06-16 12:40:15.196502	2020-06-16 12:40:15.196502
1955	7	4	158	380	2020-06-16 12:40:15.201559	2020-06-16 12:40:15.201559
1956	85	5	158	637	2020-06-16 12:40:15.206745	2020-06-16 12:40:15.206745
1957	9	4	158	587	2020-06-16 12:40:15.211993	2020-06-16 12:40:15.211993
1958	54	1	158	459	2020-06-16 12:40:15.217399	2020-06-16 12:40:15.217399
1959	100	2	158	505	2020-06-16 12:40:15.22235	2020-06-16 12:40:15.22235
1960	22	2	158	592	2020-06-16 12:40:15.227551	2020-06-16 12:40:15.227551
1961	83	3	158	231	2020-06-16 12:40:15.23279	2020-06-16 12:40:15.23279
1962	81	5	159	213	2020-06-16 12:40:15.238516	2020-06-16 12:40:15.238516
1963	12	3	159	382	2020-06-16 12:40:15.244998	2020-06-16 12:40:15.244998
1964	20	1	159	599	2020-06-16 12:40:15.250274	2020-06-16 12:40:15.250274
1965	5	2	159	787	2020-06-16 12:40:15.255287	2020-06-16 12:40:15.255287
1966	24	3	159	738	2020-06-16 12:40:15.259913	2020-06-16 12:40:15.259913
1967	34	1	159	455	2020-06-16 12:40:15.264928	2020-06-16 12:40:15.264928
1968	67	2	159	222	2020-06-16 12:40:15.269819	2020-06-16 12:40:15.269819
1969	70	5	159	478	2020-06-16 12:40:15.2749	2020-06-16 12:40:15.2749
1970	56	5	160	379	2020-06-16 12:40:15.279747	2020-06-16 12:40:15.279747
1971	14	3	160	445	2020-06-16 12:40:15.284868	2020-06-16 12:40:15.284868
1972	38	5	160	153	2020-06-16 12:40:15.290108	2020-06-16 12:40:15.290108
1973	42	5	160	556	2020-06-16 12:40:15.29487	2020-06-16 12:40:15.29487
1974	7	1	160	483	2020-06-16 12:40:15.3001	2020-06-16 12:40:15.3001
1975	49	1	160	59	2020-06-16 12:40:15.305449	2020-06-16 12:40:15.305449
1976	39	4	160	320	2020-06-16 12:40:15.310433	2020-06-16 12:40:15.310433
1977	45	2	160	145	2020-06-16 12:40:15.324767	2020-06-16 12:40:15.324767
1978	56	5	160	480	2020-06-16 12:40:15.328523	2020-06-16 12:40:15.328523
1979	80	4	161	714	2020-06-16 12:40:15.332137	2020-06-16 12:40:15.332137
1980	98	4	161	292	2020-06-16 12:40:15.335671	2020-06-16 12:40:15.335671
1981	48	2	162	723	2020-06-16 12:40:15.339587	2020-06-16 12:40:15.339587
1982	89	2	162	582	2020-06-16 12:40:15.343413	2020-06-16 12:40:15.343413
1983	2	1	162	388	2020-06-16 12:40:15.34717	2020-06-16 12:40:15.34717
1984	2	5	162	149	2020-06-16 12:40:15.350583	2020-06-16 12:40:15.350583
1985	90	5	162	331	2020-06-16 12:40:15.354087	2020-06-16 12:40:15.354087
1986	53	3	162	11	2020-06-16 12:40:15.357322	2020-06-16 12:40:15.357322
1987	7	4	162	225	2020-06-16 12:40:15.360805	2020-06-16 12:40:15.360805
1988	63	5	162	436	2020-06-16 12:40:15.364155	2020-06-16 12:40:15.364155
1989	87	1	163	34	2020-06-16 12:40:15.367583	2020-06-16 12:40:15.367583
1990	34	3	164	697	2020-06-16 12:40:15.370915	2020-06-16 12:40:15.370915
1991	94	2	164	34	2020-06-16 12:40:15.374404	2020-06-16 12:40:15.374404
1992	92	1	164	550	2020-06-16 12:40:15.378087	2020-06-16 12:40:15.378087
1993	49	5	164	192	2020-06-16 12:40:15.381624	2020-06-16 12:40:15.381624
1994	99	1	164	321	2020-06-16 12:40:15.385043	2020-06-16 12:40:15.385043
1995	55	3	164	331	2020-06-16 12:40:15.389208	2020-06-16 12:40:15.389208
1996	1	1	164	583	2020-06-16 12:40:15.393155	2020-06-16 12:40:15.393155
1997	30	3	164	674	2020-06-16 12:40:15.396634	2020-06-16 12:40:15.396634
1998	44	2	164	3	2020-06-16 12:40:15.400496	2020-06-16 12:40:15.400496
1999	99	1	165	694	2020-06-16 12:40:15.403927	2020-06-16 12:40:15.403927
2000	94	5	165	292	2020-06-16 12:40:15.407439	2020-06-16 12:40:15.407439
2001	33	4	165	82	2020-06-16 12:40:15.410868	2020-06-16 12:40:15.410868
2002	19	2	165	7	2020-06-16 12:40:15.413965	2020-06-16 12:40:15.413965
2003	80	3	165	453	2020-06-16 12:40:15.417753	2020-06-16 12:40:15.417753
2004	27	4	166	167	2020-06-16 12:40:15.421372	2020-06-16 12:40:15.421372
2005	76	4	166	271	2020-06-16 12:40:15.425005	2020-06-16 12:40:15.425005
2006	98	4	166	87	2020-06-16 12:40:15.429141	2020-06-16 12:40:15.429141
2007	68	2	166	775	2020-06-16 12:40:15.433034	2020-06-16 12:40:15.433034
2008	30	3	166	234	2020-06-16 12:40:15.436705	2020-06-16 12:40:15.436705
2009	53	4	167	599	2020-06-16 12:40:15.440355	2020-06-16 12:40:15.440355
2010	69	3	167	554	2020-06-16 12:40:15.444546	2020-06-16 12:40:15.444546
2011	53	1	167	23	2020-06-16 12:40:15.448108	2020-06-16 12:40:15.448108
2012	98	1	167	676	2020-06-16 12:40:15.451609	2020-06-16 12:40:15.451609
2013	89	4	167	609	2020-06-16 12:40:15.455646	2020-06-16 12:40:15.455646
2014	31	3	167	462	2020-06-16 12:40:15.459676	2020-06-16 12:40:15.459676
2015	57	4	167	114	2020-06-16 12:40:15.464416	2020-06-16 12:40:15.464416
2016	14	2	167	520	2020-06-16 12:40:15.468484	2020-06-16 12:40:15.468484
2017	45	4	168	477	2020-06-16 12:40:15.472948	2020-06-16 12:40:15.472948
2018	8	3	169	481	2020-06-16 12:40:15.477862	2020-06-16 12:40:15.477862
2019	68	1	169	454	2020-06-16 12:40:15.482095	2020-06-16 12:40:15.482095
2020	78	1	169	582	2020-06-16 12:40:15.486438	2020-06-16 12:40:15.486438
2021	57	3	169	746	2020-06-16 12:40:15.492125	2020-06-16 12:40:15.492125
2022	90	4	169	764	2020-06-16 12:40:15.496166	2020-06-16 12:40:15.496166
2023	26	4	169	610	2020-06-16 12:40:15.500605	2020-06-16 12:40:15.500605
2024	63	4	169	340	2020-06-16 12:40:15.505532	2020-06-16 12:40:15.505532
2025	49	2	169	174	2020-06-16 12:40:15.510162	2020-06-16 12:40:15.510162
2026	66	1	169	769	2020-06-16 12:40:15.515109	2020-06-16 12:40:15.515109
2027	55	2	169	54	2020-06-16 12:40:15.520307	2020-06-16 12:40:15.520307
2028	66	1	170	774	2020-06-16 12:40:15.525224	2020-06-16 12:40:15.525224
2029	70	2	170	191	2020-06-16 12:40:15.529345	2020-06-16 12:40:15.529345
2030	5	4	170	666	2020-06-16 12:40:15.533693	2020-06-16 12:40:15.533693
2031	20	5	171	96	2020-06-16 12:40:15.538448	2020-06-16 12:40:15.538448
2032	82	1	171	767	2020-06-16 12:40:15.542719	2020-06-16 12:40:15.542719
2033	96	5	172	723	2020-06-16 12:40:15.546961	2020-06-16 12:40:15.546961
2034	9	5	172	692	2020-06-16 12:40:15.551218	2020-06-16 12:40:15.551218
2035	1	3	172	720	2020-06-16 12:40:15.555406	2020-06-16 12:40:15.555406
2036	15	5	172	169	2020-06-16 12:40:15.559562	2020-06-16 12:40:15.559562
2037	7	1	172	381	2020-06-16 12:40:15.5633	2020-06-16 12:40:15.5633
2038	16	5	172	572	2020-06-16 12:40:15.567215	2020-06-16 12:40:15.567215
2039	19	2	173	254	2020-06-16 12:40:15.571145	2020-06-16 12:40:15.571145
2040	5	5	173	204	2020-06-16 12:40:15.575362	2020-06-16 12:40:15.575362
2041	36	4	173	158	2020-06-16 12:40:15.579277	2020-06-16 12:40:15.579277
2042	68	1	173	137	2020-06-16 12:40:15.583367	2020-06-16 12:40:15.583367
2043	81	3	173	790	2020-06-16 12:40:15.587334	2020-06-16 12:40:15.587334
2044	14	5	173	758	2020-06-16 12:40:15.591637	2020-06-16 12:40:15.591637
2045	29	1	173	598	2020-06-16 12:40:15.596063	2020-06-16 12:40:15.596063
2046	22	2	173	677	2020-06-16 12:40:15.600328	2020-06-16 12:40:15.600328
2047	88	3	173	117	2020-06-16 12:40:15.60434	2020-06-16 12:40:15.60434
2048	64	3	174	221	2020-06-16 12:40:15.60879	2020-06-16 12:40:15.60879
2049	61	4	175	552	2020-06-16 12:40:15.612271	2020-06-16 12:40:15.612271
2050	73	1	175	793	2020-06-16 12:40:15.615804	2020-06-16 12:40:15.615804
2051	82	2	175	713	2020-06-16 12:40:15.619315	2020-06-16 12:40:15.619315
2052	65	5	175	785	2020-06-16 12:40:15.623119	2020-06-16 12:40:15.623119
2053	3	5	176	732	2020-06-16 12:40:15.626709	2020-06-16 12:40:15.626709
2054	12	2	176	395	2020-06-16 12:40:15.63005	2020-06-16 12:40:15.63005
2055	33	1	176	619	2020-06-16 12:40:15.63348	2020-06-16 12:40:15.63348
2056	91	4	176	207	2020-06-16 12:40:15.636949	2020-06-16 12:40:15.636949
2057	70	1	176	310	2020-06-16 12:40:15.640714	2020-06-16 12:40:15.640714
2058	21	3	176	402	2020-06-16 12:40:15.644307	2020-06-16 12:40:15.644307
2059	95	2	176	503	2020-06-16 12:40:15.647675	2020-06-16 12:40:15.647675
2060	48	3	176	781	2020-06-16 12:40:15.651031	2020-06-16 12:40:15.651031
2061	70	1	177	717	2020-06-16 12:40:15.654667	2020-06-16 12:40:15.654667
2062	30	5	177	654	2020-06-16 12:40:15.658275	2020-06-16 12:40:15.658275
2063	61	1	177	439	2020-06-16 12:40:15.661634	2020-06-16 12:40:15.661634
2064	17	1	177	341	2020-06-16 12:40:15.664979	2020-06-16 12:40:15.664979
2065	71	5	177	644	2020-06-16 12:40:15.668313	2020-06-16 12:40:15.668313
2066	85	4	177	168	2020-06-16 12:40:15.67197	2020-06-16 12:40:15.67197
2067	52	4	177	376	2020-06-16 12:40:15.67529	2020-06-16 12:40:15.67529
2068	15	5	178	50	2020-06-16 12:40:15.67864	2020-06-16 12:40:15.67864
2069	36	5	178	388	2020-06-16 12:40:15.681931	2020-06-16 12:40:15.681931
2070	94	2	178	65	2020-06-16 12:40:15.685481	2020-06-16 12:40:15.685481
2071	32	1	179	522	2020-06-16 12:40:15.688984	2020-06-16 12:40:15.688984
2072	36	3	179	684	2020-06-16 12:40:15.692701	2020-06-16 12:40:15.692701
2073	48	5	180	405	2020-06-16 12:40:15.696019	2020-06-16 12:40:15.696019
2074	82	4	180	78	2020-06-16 12:40:15.699165	2020-06-16 12:40:15.699165
2075	1	2	180	449	2020-06-16 12:40:15.702538	2020-06-16 12:40:15.702538
2076	69	2	180	233	2020-06-16 12:40:15.705882	2020-06-16 12:40:15.705882
2077	13	5	181	717	2020-06-16 12:40:15.709451	2020-06-16 12:40:15.709451
2078	1	3	181	528	2020-06-16 12:40:15.712922	2020-06-16 12:40:15.712922
2079	93	3	182	281	2020-06-16 12:40:15.716313	2020-06-16 12:40:15.716313
2080	16	5	182	664	2020-06-16 12:40:15.719619	2020-06-16 12:40:15.719619
2081	89	2	182	14	2020-06-16 12:40:15.72313	2020-06-16 12:40:15.72313
2082	98	5	182	478	2020-06-16 12:40:15.726588	2020-06-16 12:40:15.726588
2083	93	5	182	552	2020-06-16 12:40:15.730793	2020-06-16 12:40:15.730793
2084	71	4	182	584	2020-06-16 12:40:15.734301	2020-06-16 12:40:15.734301
2085	27	2	182	11	2020-06-16 12:40:15.737757	2020-06-16 12:40:15.737757
2086	81	3	183	590	2020-06-16 12:40:15.741379	2020-06-16 12:40:15.741379
2087	13	3	183	440	2020-06-16 12:40:15.744687	2020-06-16 12:40:15.744687
2088	62	5	183	81	2020-06-16 12:40:15.748279	2020-06-16 12:40:15.748279
2089	78	2	184	373	2020-06-16 12:40:15.751873	2020-06-16 12:40:15.751873
2090	53	5	184	144	2020-06-16 12:40:15.755325	2020-06-16 12:40:15.755325
2091	7	3	184	749	2020-06-16 12:40:15.758835	2020-06-16 12:40:15.758835
2092	59	3	184	398	2020-06-16 12:40:15.762277	2020-06-16 12:40:15.762277
2093	68	5	184	274	2020-06-16 12:40:15.765601	2020-06-16 12:40:15.765601
2094	97	1	184	430	2020-06-16 12:40:15.769477	2020-06-16 12:40:15.769477
2095	75	3	184	512	2020-06-16 12:40:15.773065	2020-06-16 12:40:15.773065
2096	80	5	185	214	2020-06-16 12:40:15.776832	2020-06-16 12:40:15.776832
2097	46	2	185	141	2020-06-16 12:40:15.780998	2020-06-16 12:40:15.780998
2098	51	4	185	130	2020-06-16 12:40:15.785028	2020-06-16 12:40:15.785028
2099	54	3	185	275	2020-06-16 12:40:15.788517	2020-06-16 12:40:15.788517
2100	17	1	185	111	2020-06-16 12:40:15.791701	2020-06-16 12:40:15.791701
2101	84	2	186	274	2020-06-16 12:40:15.79497	2020-06-16 12:40:15.79497
2102	22	5	186	480	2020-06-16 12:40:15.798075	2020-06-16 12:40:15.798075
2103	5	5	186	155	2020-06-16 12:40:15.801601	2020-06-16 12:40:15.801601
2104	62	2	186	304	2020-06-16 12:40:15.804974	2020-06-16 12:40:15.804974
2105	24	5	186	677	2020-06-16 12:40:15.808223	2020-06-16 12:40:15.808223
2106	30	5	187	92	2020-06-16 12:40:15.811559	2020-06-16 12:40:15.811559
2107	13	3	187	717	2020-06-16 12:40:15.814996	2020-06-16 12:40:15.814996
2108	15	5	187	200	2020-06-16 12:40:15.819642	2020-06-16 12:40:15.819642
2109	37	4	187	706	2020-06-16 12:40:15.823321	2020-06-16 12:40:15.823321
2110	30	2	187	329	2020-06-16 12:40:15.827218	2020-06-16 12:40:15.827218
2111	18	1	187	290	2020-06-16 12:40:15.830538	2020-06-16 12:40:15.830538
2112	58	5	188	724	2020-06-16 12:40:15.833482	2020-06-16 12:40:15.833482
2113	100	2	189	471	2020-06-16 12:40:15.836626	2020-06-16 12:40:15.836626
2114	6	5	189	172	2020-06-16 12:40:15.839819	2020-06-16 12:40:15.839819
2115	21	1	189	337	2020-06-16 12:40:15.842879	2020-06-16 12:40:15.842879
2116	16	2	189	544	2020-06-16 12:40:15.846009	2020-06-16 12:40:15.846009
2117	67	1	189	342	2020-06-16 12:40:15.849449	2020-06-16 12:40:15.849449
2118	72	3	189	411	2020-06-16 12:40:15.852746	2020-06-16 12:40:15.852746
2119	65	3	190	151	2020-06-16 12:40:15.855887	2020-06-16 12:40:15.855887
2120	71	3	191	449	2020-06-16 12:40:15.859066	2020-06-16 12:40:15.859066
2121	82	4	191	455	2020-06-16 12:40:15.86218	2020-06-16 12:40:15.86218
2122	60	3	191	661	2020-06-16 12:40:15.865187	2020-06-16 12:40:15.865187
2123	76	3	192	643	2020-06-16 12:40:15.868208	2020-06-16 12:40:15.868208
2124	61	5	192	15	2020-06-16 12:40:15.871402	2020-06-16 12:40:15.871402
2125	24	2	192	332	2020-06-16 12:40:15.874553	2020-06-16 12:40:15.874553
2126	16	5	192	523	2020-06-16 12:40:15.877651	2020-06-16 12:40:15.877651
2127	22	4	192	618	2020-06-16 12:40:15.880692	2020-06-16 12:40:15.880692
2128	20	1	192	793	2020-06-16 12:40:15.883992	2020-06-16 12:40:15.883992
2129	19	4	192	652	2020-06-16 12:40:15.887228	2020-06-16 12:40:15.887228
2130	99	2	192	479	2020-06-16 12:40:15.890626	2020-06-16 12:40:15.890626
2131	65	4	192	367	2020-06-16 12:40:15.893921	2020-06-16 12:40:15.893921
2132	22	1	193	139	2020-06-16 12:40:15.897288	2020-06-16 12:40:15.897288
2133	33	3	193	176	2020-06-16 12:40:15.900468	2020-06-16 12:40:15.900468
2134	97	2	193	69	2020-06-16 12:40:15.903837	2020-06-16 12:40:15.903837
2135	66	5	193	21	2020-06-16 12:40:15.90723	2020-06-16 12:40:15.90723
2136	1	1	194	313	2020-06-16 12:40:15.910559	2020-06-16 12:40:15.910559
2137	47	2	194	644	2020-06-16 12:40:15.913668	2020-06-16 12:40:15.913668
2138	4	4	194	248	2020-06-16 12:40:15.916851	2020-06-16 12:40:15.916851
2139	9	2	195	289	2020-06-16 12:40:15.920055	2020-06-16 12:40:15.920055
2140	29	3	195	367	2020-06-16 12:40:15.92327	2020-06-16 12:40:15.92327
2141	63	4	195	635	2020-06-16 12:40:15.926579	2020-06-16 12:40:15.926579
2142	12	5	195	310	2020-06-16 12:40:15.933377	2020-06-16 12:40:15.933377
2143	9	3	195	257	2020-06-16 12:40:15.936909	2020-06-16 12:40:15.936909
2144	72	3	195	369	2020-06-16 12:40:15.940416	2020-06-16 12:40:15.940416
2145	62	1	196	21	2020-06-16 12:40:15.943736	2020-06-16 12:40:15.943736
2146	2	5	196	548	2020-06-16 12:40:15.947007	2020-06-16 12:40:15.947007
2147	20	1	196	184	2020-06-16 12:40:15.950227	2020-06-16 12:40:15.950227
2148	86	2	196	74	2020-06-16 12:40:15.953447	2020-06-16 12:40:15.953447
2149	18	4	196	140	2020-06-16 12:40:15.956646	2020-06-16 12:40:15.956646
2150	63	5	196	656	2020-06-16 12:40:15.95994	2020-06-16 12:40:15.95994
2151	59	2	196	529	2020-06-16 12:40:15.963328	2020-06-16 12:40:15.963328
2152	92	4	197	300	2020-06-16 12:40:15.966614	2020-06-16 12:40:15.966614
2153	38	2	197	30	2020-06-16 12:40:15.970014	2020-06-16 12:40:15.970014
2154	58	3	197	302	2020-06-16 12:40:15.973692	2020-06-16 12:40:15.973692
2155	48	5	197	225	2020-06-16 12:40:15.977539	2020-06-16 12:40:15.977539
2156	73	4	197	590	2020-06-16 12:40:15.981178	2020-06-16 12:40:15.981178
2157	59	2	198	43	2020-06-16 12:40:15.984688	2020-06-16 12:40:15.984688
2158	84	2	199	136	2020-06-16 12:40:15.988213	2020-06-16 12:40:15.988213
2159	97	2	199	8	2020-06-16 12:40:15.991537	2020-06-16 12:40:15.991537
2160	45	1	199	485	2020-06-16 12:40:15.995284	2020-06-16 12:40:15.995284
2161	42	2	199	357	2020-06-16 12:40:15.998789	2020-06-16 12:40:15.998789
2162	26	3	199	751	2020-06-16 12:40:16.002401	2020-06-16 12:40:16.002401
2163	24	4	199	627	2020-06-16 12:40:16.006599	2020-06-16 12:40:16.006599
2164	34	3	199	275	2020-06-16 12:40:16.010166	2020-06-16 12:40:16.010166
2165	91	3	200	441	2020-06-16 12:40:16.013609	2020-06-16 12:40:16.013609
2166	50	5	200	482	2020-06-16 12:40:16.017682	2020-06-16 12:40:16.017682
2167	38	1	200	697	2020-06-16 12:40:16.022349	2020-06-16 12:40:16.022349
2168	89	4	200	312	2020-06-16 12:40:16.026709	2020-06-16 12:40:16.026709
2169	9	1	200	584	2020-06-16 12:40:16.031152	2020-06-16 12:40:16.031152
2170	79	5	200	630	2020-06-16 12:40:16.035456	2020-06-16 12:40:16.035456
2171	25	1	200	164	2020-06-16 12:40:16.039642	2020-06-16 12:40:16.039642
2172	47	1	200	756	2020-06-16 12:40:16.043537	2020-06-16 12:40:16.043537
2173	46	2	200	739	2020-06-16 12:40:16.047168	2020-06-16 12:40:16.047168
2174	98	5	201	657	2020-06-16 12:40:16.050813	2020-06-16 12:40:16.050813
2175	43	3	201	702	2020-06-16 12:40:16.054547	2020-06-16 12:40:16.054547
2176	56	5	201	146	2020-06-16 12:40:16.058397	2020-06-16 12:40:16.058397
2177	82	3	201	12	2020-06-16 12:40:16.062047	2020-06-16 12:40:16.062047
2178	19	5	202	53	2020-06-16 12:40:16.065327	2020-06-16 12:40:16.065327
2179	13	3	202	463	2020-06-16 12:40:16.068702	2020-06-16 12:40:16.068702
2180	78	2	202	283	2020-06-16 12:40:16.072751	2020-06-16 12:40:16.072751
2181	26	3	202	3	2020-06-16 12:40:16.076286	2020-06-16 12:40:16.076286
2182	94	1	203	78	2020-06-16 12:40:16.079497	2020-06-16 12:40:16.079497
2183	38	3	203	730	2020-06-16 12:40:16.082884	2020-06-16 12:40:16.082884
2184	46	4	204	677	2020-06-16 12:40:16.086527	2020-06-16 12:40:16.086527
2185	88	4	204	49	2020-06-16 12:40:16.090181	2020-06-16 12:40:16.090181
2186	77	1	204	646	2020-06-16 12:40:16.093688	2020-06-16 12:40:16.093688
2187	67	5	204	699	2020-06-16 12:40:16.097189	2020-06-16 12:40:16.097189
2188	37	2	204	594	2020-06-16 12:40:16.10051	2020-06-16 12:40:16.10051
2189	35	2	204	137	2020-06-16 12:40:16.10448	2020-06-16 12:40:16.10448
2190	5	2	204	173	2020-06-16 12:40:16.108435	2020-06-16 12:40:16.108435
2191	60	4	204	508	2020-06-16 12:40:16.111975	2020-06-16 12:40:16.111975
2192	22	3	205	625	2020-06-16 12:40:16.11534	2020-06-16 12:40:16.11534
2193	37	2	205	419	2020-06-16 12:40:16.118891	2020-06-16 12:40:16.118891
2194	45	4	205	648	2020-06-16 12:40:16.122785	2020-06-16 12:40:16.122785
2195	46	3	205	576	2020-06-16 12:40:16.126321	2020-06-16 12:40:16.126321
2196	42	2	206	169	2020-06-16 12:40:16.12979	2020-06-16 12:40:16.12979
2197	30	2	206	660	2020-06-16 12:40:16.133174	2020-06-16 12:40:16.133174
2198	2	5	206	613	2020-06-16 12:40:16.136546	2020-06-16 12:40:16.136546
2199	40	5	206	478	2020-06-16 12:40:16.140123	2020-06-16 12:40:16.140123
2200	71	3	206	492	2020-06-16 12:40:16.143696	2020-06-16 12:40:16.143696
2201	52	5	206	706	2020-06-16 12:40:16.147165	2020-06-16 12:40:16.147165
2202	12	2	206	390	2020-06-16 12:40:16.15067	2020-06-16 12:40:16.15067
2203	49	1	206	433	2020-06-16 12:40:16.15448	2020-06-16 12:40:16.15448
2204	67	5	207	642	2020-06-16 12:40:16.158143	2020-06-16 12:40:16.158143
2205	29	5	207	598	2020-06-16 12:40:16.161736	2020-06-16 12:40:16.161736
2206	80	3	207	593	2020-06-16 12:40:16.16539	2020-06-16 12:40:16.16539
2207	8	2	207	6	2020-06-16 12:40:16.16938	2020-06-16 12:40:16.16938
2208	99	4	207	98	2020-06-16 12:40:16.173431	2020-06-16 12:40:16.173431
2209	40	5	207	19	2020-06-16 12:40:16.177412	2020-06-16 12:40:16.177412
2210	37	2	207	619	2020-06-16 12:40:16.180957	2020-06-16 12:40:16.180957
2211	77	2	207	254	2020-06-16 12:40:16.184488	2020-06-16 12:40:16.184488
2212	62	2	208	748	2020-06-16 12:40:16.188126	2020-06-16 12:40:16.188126
2213	13	1	208	9	2020-06-16 12:40:16.191858	2020-06-16 12:40:16.191858
2214	33	4	208	98	2020-06-16 12:40:16.196186	2020-06-16 12:40:16.196186
2215	55	4	208	302	2020-06-16 12:40:16.200699	2020-06-16 12:40:16.200699
2216	37	5	208	610	2020-06-16 12:40:16.204839	2020-06-16 12:40:16.204839
2217	75	2	208	398	2020-06-16 12:40:16.209122	2020-06-16 12:40:16.209122
2218	86	3	209	204	2020-06-16 12:40:16.213343	2020-06-16 12:40:16.213343
2219	54	3	209	362	2020-06-16 12:40:16.217333	2020-06-16 12:40:16.217333
2220	64	3	209	40	2020-06-16 12:40:16.22133	2020-06-16 12:40:16.22133
2221	91	2	209	682	2020-06-16 12:40:16.226311	2020-06-16 12:40:16.226311
2222	86	4	209	433	2020-06-16 12:40:16.230567	2020-06-16 12:40:16.230567
2223	67	4	209	428	2020-06-16 12:40:16.23506	2020-06-16 12:40:16.23506
2224	87	3	209	180	2020-06-16 12:40:16.24008	2020-06-16 12:40:16.24008
2225	83	2	209	74	2020-06-16 12:40:16.24549	2020-06-16 12:40:16.24549
2226	5	4	209	742	2020-06-16 12:40:16.249773	2020-06-16 12:40:16.249773
2227	23	5	210	593	2020-06-16 12:40:16.2542	2020-06-16 12:40:16.2542
2228	7	3	210	428	2020-06-16 12:40:16.258447	2020-06-16 12:40:16.258447
2229	31	2	211	723	2020-06-16 12:40:16.262876	2020-06-16 12:40:16.262876
2230	58	4	211	586	2020-06-16 12:40:16.267135	2020-06-16 12:40:16.267135
2231	63	4	211	178	2020-06-16 12:40:16.271203	2020-06-16 12:40:16.271203
2232	70	5	212	650	2020-06-16 12:40:16.274816	2020-06-16 12:40:16.274816
2233	9	5	212	240	2020-06-16 12:40:16.2787	2020-06-16 12:40:16.2787
2234	36	1	213	187	2020-06-16 12:40:16.282268	2020-06-16 12:40:16.282268
2235	71	5	213	273	2020-06-16 12:40:16.285763	2020-06-16 12:40:16.285763
2236	24	4	213	214	2020-06-16 12:40:16.289726	2020-06-16 12:40:16.289726
2237	98	4	213	787	2020-06-16 12:40:16.293541	2020-06-16 12:40:16.293541
2238	2	1	213	510	2020-06-16 12:40:16.297145	2020-06-16 12:40:16.297145
2239	85	3	214	727	2020-06-16 12:40:16.301481	2020-06-16 12:40:16.301481
2240	34	2	214	530	2020-06-16 12:40:16.305555	2020-06-16 12:40:16.305555
2241	11	5	214	570	2020-06-16 12:40:16.309608	2020-06-16 12:40:16.309608
2242	86	5	214	119	2020-06-16 12:40:16.312779	2020-06-16 12:40:16.312779
2243	19	5	215	709	2020-06-16 12:40:16.316494	2020-06-16 12:40:16.316494
2244	57	1	215	439	2020-06-16 12:40:16.320675	2020-06-16 12:40:16.320675
2245	33	5	215	556	2020-06-16 12:40:16.325322	2020-06-16 12:40:16.325322
2246	60	3	216	626	2020-06-16 12:40:16.329601	2020-06-16 12:40:16.329601
2247	64	1	216	245	2020-06-16 12:40:16.333419	2020-06-16 12:40:16.333419
2248	95	4	216	92	2020-06-16 12:40:16.337449	2020-06-16 12:40:16.337449
2249	14	5	216	306	2020-06-16 12:40:16.342195	2020-06-16 12:40:16.342195
2250	12	3	216	456	2020-06-16 12:40:16.346021	2020-06-16 12:40:16.346021
2251	62	3	216	277	2020-06-16 12:40:16.34994	2020-06-16 12:40:16.34994
2252	89	1	216	325	2020-06-16 12:40:16.354849	2020-06-16 12:40:16.354849
2253	27	1	217	757	2020-06-16 12:40:16.35985	2020-06-16 12:40:16.35985
2254	44	4	217	584	2020-06-16 12:40:16.363738	2020-06-16 12:40:16.363738
2255	1	3	218	107	2020-06-16 12:40:16.36816	2020-06-16 12:40:16.36816
2256	74	5	218	629	2020-06-16 12:40:16.372587	2020-06-16 12:40:16.372587
2257	46	1	218	561	2020-06-16 12:40:16.37684	2020-06-16 12:40:16.37684
2258	76	4	218	572	2020-06-16 12:40:16.380729	2020-06-16 12:40:16.380729
2259	82	3	218	310	2020-06-16 12:40:16.384583	2020-06-16 12:40:16.384583
2260	26	4	219	590	2020-06-16 12:40:16.391137	2020-06-16 12:40:16.391137
2261	19	2	219	61	2020-06-16 12:40:16.395337	2020-06-16 12:40:16.395337
2262	97	1	219	656	2020-06-16 12:40:16.399203	2020-06-16 12:40:16.399203
2263	80	2	219	557	2020-06-16 12:40:16.403341	2020-06-16 12:40:16.403341
2264	28	2	219	326	2020-06-16 12:40:16.407657	2020-06-16 12:40:16.407657
2265	51	4	219	531	2020-06-16 12:40:16.411651	2020-06-16 12:40:16.411651
2266	20	2	220	221	2020-06-16 12:40:16.415267	2020-06-16 12:40:16.415267
2267	68	1	220	229	2020-06-16 12:40:16.418914	2020-06-16 12:40:16.418914
2268	19	2	220	730	2020-06-16 12:40:16.422978	2020-06-16 12:40:16.422978
2269	71	2	220	135	2020-06-16 12:40:16.426725	2020-06-16 12:40:16.426725
2270	35	5	220	549	2020-06-16 12:40:16.430488	2020-06-16 12:40:16.430488
2271	42	2	220	648	2020-06-16 12:40:16.434018	2020-06-16 12:40:16.434018
2272	84	1	220	73	2020-06-16 12:40:16.438049	2020-06-16 12:40:16.438049
2273	99	5	220	757	2020-06-16 12:40:16.442631	2020-06-16 12:40:16.442631
2274	75	3	220	676	2020-06-16 12:40:16.44714	2020-06-16 12:40:16.44714
2275	1	5	220	25	2020-06-16 12:40:16.452077	2020-06-16 12:40:16.452077
2276	2	5	221	34	2020-06-16 12:40:16.456414	2020-06-16 12:40:16.456414
2277	5	2	221	378	2020-06-16 12:40:16.460661	2020-06-16 12:40:16.460661
2278	80	3	221	772	2020-06-16 12:40:16.465016	2020-06-16 12:40:16.465016
2279	49	3	221	640	2020-06-16 12:40:16.469923	2020-06-16 12:40:16.469923
2280	58	2	222	364	2020-06-16 12:40:16.474283	2020-06-16 12:40:16.474283
2281	99	2	222	140	2020-06-16 12:40:16.478039	2020-06-16 12:40:16.478039
2282	1	3	222	359	2020-06-16 12:40:16.482197	2020-06-16 12:40:16.482197
2283	28	1	223	246	2020-06-16 12:40:16.486196	2020-06-16 12:40:16.486196
2284	100	3	223	516	2020-06-16 12:40:16.49003	2020-06-16 12:40:16.49003
2285	7	3	223	181	2020-06-16 12:40:16.494675	2020-06-16 12:40:16.494675
2286	92	4	223	309	2020-06-16 12:40:16.49998	2020-06-16 12:40:16.49998
2287	30	2	223	364	2020-06-16 12:40:16.505384	2020-06-16 12:40:16.505384
2288	68	4	223	214	2020-06-16 12:40:16.510117	2020-06-16 12:40:16.510117
2289	17	3	223	738	2020-06-16 12:40:16.514462	2020-06-16 12:40:16.514462
2290	4	1	224	72	2020-06-16 12:40:16.518451	2020-06-16 12:40:16.518451
2291	4	2	224	338	2020-06-16 12:40:16.522726	2020-06-16 12:40:16.522726
2292	19	3	224	238	2020-06-16 12:40:16.52728	2020-06-16 12:40:16.52728
2293	9	4	224	590	2020-06-16 12:40:16.53159	2020-06-16 12:40:16.53159
2294	67	2	224	758	2020-06-16 12:40:16.53617	2020-06-16 12:40:16.53617
2295	21	4	224	729	2020-06-16 12:40:16.540546	2020-06-16 12:40:16.540546
2296	90	4	224	47	2020-06-16 12:40:16.544609	2020-06-16 12:40:16.544609
2297	18	4	224	703	2020-06-16 12:40:16.55277	2020-06-16 12:40:16.55277
2298	13	4	224	362	2020-06-16 12:40:16.557135	2020-06-16 12:40:16.557135
2299	78	1	225	731	2020-06-16 12:40:16.561151	2020-06-16 12:40:16.561151
2300	39	3	226	554	2020-06-16 12:40:16.565433	2020-06-16 12:40:16.565433
2301	74	1	226	249	2020-06-16 12:40:16.569117	2020-06-16 12:40:16.569117
2302	70	2	226	299	2020-06-16 12:40:16.572692	2020-06-16 12:40:16.572692
2303	80	3	226	33	2020-06-16 12:40:16.575844	2020-06-16 12:40:16.575844
2304	51	3	226	132	2020-06-16 12:40:16.579202	2020-06-16 12:40:16.579202
2305	48	3	226	230	2020-06-16 12:40:16.582316	2020-06-16 12:40:16.582316
2306	62	5	227	396	2020-06-16 12:40:16.585806	2020-06-16 12:40:16.585806
2307	31	5	227	609	2020-06-16 12:40:16.589197	2020-06-16 12:40:16.589197
2308	1	5	227	623	2020-06-16 12:40:16.592501	2020-06-16 12:40:16.592501
2309	93	5	227	7	2020-06-16 12:40:16.595616	2020-06-16 12:40:16.595616
2310	39	1	227	427	2020-06-16 12:40:16.598687	2020-06-16 12:40:16.598687
2311	23	4	227	318	2020-06-16 12:40:16.601804	2020-06-16 12:40:16.601804
2312	40	3	227	639	2020-06-16 12:40:16.606139	2020-06-16 12:40:16.606139
2313	86	5	228	755	2020-06-16 12:40:16.610484	2020-06-16 12:40:16.610484
2314	54	3	228	505	2020-06-16 12:40:16.61431	2020-06-16 12:40:16.61431
2315	88	5	228	421	2020-06-16 12:40:16.61787	2020-06-16 12:40:16.61787
2316	76	2	228	563	2020-06-16 12:40:16.623131	2020-06-16 12:40:16.623131
2317	64	4	228	764	2020-06-16 12:40:16.626879	2020-06-16 12:40:16.626879
2318	4	2	228	121	2020-06-16 12:40:16.630075	2020-06-16 12:40:16.630075
2319	6	4	229	44	2020-06-16 12:40:16.633305	2020-06-16 12:40:16.633305
2320	56	2	229	519	2020-06-16 12:40:16.637463	2020-06-16 12:40:16.637463
2321	45	4	230	709	2020-06-16 12:40:16.641505	2020-06-16 12:40:16.641505
2322	77	4	230	503	2020-06-16 12:40:16.645222	2020-06-16 12:40:16.645222
2323	7	3	230	693	2020-06-16 12:40:16.649206	2020-06-16 12:40:16.649206
2324	51	5	230	122	2020-06-16 12:40:16.653887	2020-06-16 12:40:16.653887
2325	98	3	230	250	2020-06-16 12:40:16.658482	2020-06-16 12:40:16.658482
2326	28	4	230	775	2020-06-16 12:40:16.662111	2020-06-16 12:40:16.662111
2327	29	3	230	696	2020-06-16 12:40:16.665622	2020-06-16 12:40:16.665622
2328	42	1	231	707	2020-06-16 12:40:16.669472	2020-06-16 12:40:16.669472
2329	98	3	231	149	2020-06-16 12:40:16.673133	2020-06-16 12:40:16.673133
2330	81	1	231	246	2020-06-16 12:40:16.676566	2020-06-16 12:40:16.676566
2331	18	2	231	148	2020-06-16 12:40:16.679798	2020-06-16 12:40:16.679798
2332	34	3	231	162	2020-06-16 12:40:16.684795	2020-06-16 12:40:16.684795
2333	97	3	231	227	2020-06-16 12:40:16.692973	2020-06-16 12:40:16.692973
2334	36	1	231	190	2020-06-16 12:40:16.696309	2020-06-16 12:40:16.696309
2335	43	3	231	226	2020-06-16 12:40:16.699434	2020-06-16 12:40:16.699434
2336	35	3	231	576	2020-06-16 12:40:16.702962	2020-06-16 12:40:16.702962
2337	70	3	232	247	2020-06-16 12:40:16.706865	2020-06-16 12:40:16.706865
2338	28	2	232	662	2020-06-16 12:40:16.710111	2020-06-16 12:40:16.710111
2339	71	1	233	448	2020-06-16 12:40:16.713585	2020-06-16 12:40:16.713585
2340	6	3	233	174	2020-06-16 12:40:16.71718	2020-06-16 12:40:16.71718
2341	73	4	233	512	2020-06-16 12:40:16.720989	2020-06-16 12:40:16.720989
2342	94	1	234	468	2020-06-16 12:40:16.724752	2020-06-16 12:40:16.724752
2343	82	1	234	357	2020-06-16 12:40:16.728272	2020-06-16 12:40:16.728272
2344	31	1	234	52	2020-06-16 12:40:16.73169	2020-06-16 12:40:16.73169
2345	90	1	234	20	2020-06-16 12:40:16.735358	2020-06-16 12:40:16.735358
2346	24	1	234	755	2020-06-16 12:40:16.739265	2020-06-16 12:40:16.739265
2347	84	2	234	30	2020-06-16 12:40:16.742481	2020-06-16 12:40:16.742481
2348	18	4	235	193	2020-06-16 12:40:16.745696	2020-06-16 12:40:16.745696
2349	31	1	235	375	2020-06-16 12:40:16.748977	2020-06-16 12:40:16.748977
2350	92	2	236	289	2020-06-16 12:40:16.752102	2020-06-16 12:40:16.752102
2351	71	1	236	68	2020-06-16 12:40:16.755219	2020-06-16 12:40:16.755219
2352	47	1	236	28	2020-06-16 12:40:16.758443	2020-06-16 12:40:16.758443
2353	85	3	236	458	2020-06-16 12:40:16.761591	2020-06-16 12:40:16.761591
2354	43	2	236	576	2020-06-16 12:40:16.764727	2020-06-16 12:40:16.764727
2355	47	1	236	413	2020-06-16 12:40:16.767639	2020-06-16 12:40:16.767639
2356	45	5	237	629	2020-06-16 12:40:16.770664	2020-06-16 12:40:16.770664
2357	6	3	237	475	2020-06-16 12:40:16.773622	2020-06-16 12:40:16.773622
2358	59	2	237	34	2020-06-16 12:40:16.776688	2020-06-16 12:40:16.776688
2359	90	2	237	332	2020-06-16 12:40:16.779716	2020-06-16 12:40:16.779716
2360	66	2	237	377	2020-06-16 12:40:16.782812	2020-06-16 12:40:16.782812
2361	26	5	237	511	2020-06-16 12:40:16.786112	2020-06-16 12:40:16.786112
2362	14	2	237	737	2020-06-16 12:40:16.789413	2020-06-16 12:40:16.789413
2363	7	1	237	253	2020-06-16 12:40:16.792944	2020-06-16 12:40:16.792944
2364	92	4	237	402	2020-06-16 12:40:16.796394	2020-06-16 12:40:16.796394
2365	100	5	238	619	2020-06-16 12:40:16.800206	2020-06-16 12:40:16.800206
2366	17	2	238	114	2020-06-16 12:40:16.804006	2020-06-16 12:40:16.804006
2367	63	3	238	709	2020-06-16 12:40:16.807819	2020-06-16 12:40:16.807819
2368	48	3	238	365	2020-06-16 12:40:16.811403	2020-06-16 12:40:16.811403
2369	43	4	238	36	2020-06-16 12:40:16.815264	2020-06-16 12:40:16.815264
2370	84	5	238	34	2020-06-16 12:40:16.819667	2020-06-16 12:40:16.819667
2371	58	4	238	90	2020-06-16 12:40:16.823439	2020-06-16 12:40:16.823439
2372	62	1	238	412	2020-06-16 12:40:16.827747	2020-06-16 12:40:16.827747
2373	61	1	238	15	2020-06-16 12:40:16.831927	2020-06-16 12:40:16.831927
2374	82	1	239	776	2020-06-16 12:40:16.836332	2020-06-16 12:40:16.836332
2375	22	5	239	97	2020-06-16 12:40:16.840358	2020-06-16 12:40:16.840358
2376	33	3	239	742	2020-06-16 12:40:16.843528	2020-06-16 12:40:16.843528
2377	84	4	239	378	2020-06-16 12:40:16.846431	2020-06-16 12:40:16.846431
2378	52	2	239	563	2020-06-16 12:40:16.849337	2020-06-16 12:40:16.849337
2379	98	1	239	774	2020-06-16 12:40:16.852786	2020-06-16 12:40:16.852786
2380	23	4	239	496	2020-06-16 12:40:16.85606	2020-06-16 12:40:16.85606
2381	46	4	239	365	2020-06-16 12:40:16.859296	2020-06-16 12:40:16.859296
2382	77	3	239	447	2020-06-16 12:40:16.862514	2020-06-16 12:40:16.862514
2383	18	5	239	396	2020-06-16 12:40:16.865939	2020-06-16 12:40:16.865939
2384	33	3	240	753	2020-06-16 12:40:16.86911	2020-06-16 12:40:16.86911
2385	65	2	241	486	2020-06-16 12:40:16.872476	2020-06-16 12:40:16.872476
2386	42	2	241	633	2020-06-16 12:40:16.87585	2020-06-16 12:40:16.87585
2387	55	5	241	724	2020-06-16 12:40:16.879031	2020-06-16 12:40:16.879031
2388	8	1	241	301	2020-06-16 12:40:16.882195	2020-06-16 12:40:16.882195
2389	25	3	241	502	2020-06-16 12:40:16.88553	2020-06-16 12:40:16.88553
2390	80	1	242	36	2020-06-16 12:40:16.889092	2020-06-16 12:40:16.889092
2391	37	1	242	642	2020-06-16 12:40:16.892435	2020-06-16 12:40:16.892435
2392	61	1	242	596	2020-06-16 12:40:16.895909	2020-06-16 12:40:16.895909
2393	30	5	242	210	2020-06-16 12:40:16.899447	2020-06-16 12:40:16.899447
2394	23	4	242	52	2020-06-16 12:40:16.903055	2020-06-16 12:40:16.903055
2395	58	5	242	631	2020-06-16 12:40:16.907441	2020-06-16 12:40:16.907441
2396	69	2	242	754	2020-06-16 12:40:16.91096	2020-06-16 12:40:16.91096
2397	50	5	242	233	2020-06-16 12:40:16.915081	2020-06-16 12:40:16.915081
2398	89	2	243	697	2020-06-16 12:40:16.920426	2020-06-16 12:40:16.920426
2399	51	3	243	263	2020-06-16 12:40:16.925006	2020-06-16 12:40:16.925006
2400	87	1	243	100	2020-06-16 12:40:16.928929	2020-06-16 12:40:16.928929
2401	18	5	243	394	2020-06-16 12:40:16.932493	2020-06-16 12:40:16.932493
2402	17	4	243	402	2020-06-16 12:40:16.936624	2020-06-16 12:40:16.936624
2403	49	4	244	379	2020-06-16 12:40:16.940889	2020-06-16 12:40:16.940889
2404	83	2	245	1	2020-06-16 12:40:16.944643	2020-06-16 12:40:16.944643
2405	37	1	245	568	2020-06-16 12:40:16.94826	2020-06-16 12:40:16.94826
2406	7	1	245	333	2020-06-16 12:40:16.952081	2020-06-16 12:40:16.952081
2407	22	4	245	139	2020-06-16 12:40:16.956255	2020-06-16 12:40:16.956255
2408	95	2	245	452	2020-06-16 12:40:16.959815	2020-06-16 12:40:16.959815
2409	69	4	245	553	2020-06-16 12:40:16.963432	2020-06-16 12:40:16.963432
2410	81	1	245	140	2020-06-16 12:40:16.966827	2020-06-16 12:40:16.966827
2411	36	2	246	216	2020-06-16 12:40:16.970846	2020-06-16 12:40:16.970846
2412	73	2	246	175	2020-06-16 12:40:16.974852	2020-06-16 12:40:16.974852
2413	71	4	246	517	2020-06-16 12:40:16.978395	2020-06-16 12:40:16.978395
2414	62	5	246	36	2020-06-16 12:40:16.981833	2020-06-16 12:40:16.981833
2415	62	2	246	92	2020-06-16 12:40:16.985381	2020-06-16 12:40:16.985381
2416	40	4	247	381	2020-06-16 12:40:16.988823	2020-06-16 12:40:16.988823
2417	86	5	247	577	2020-06-16 12:40:16.992058	2020-06-16 12:40:16.992058
2418	27	5	247	18	2020-06-16 12:40:16.995507	2020-06-16 12:40:16.995507
2419	64	4	247	344	2020-06-16 12:40:16.999199	2020-06-16 12:40:16.999199
2420	38	5	247	643	2020-06-16 12:40:17.002695	2020-06-16 12:40:17.002695
2421	80	2	247	771	2020-06-16 12:40:17.006359	2020-06-16 12:40:17.006359
2422	16	5	247	438	2020-06-16 12:40:17.010558	2020-06-16 12:40:17.010558
2423	43	1	247	348	2020-06-16 12:40:17.014487	2020-06-16 12:40:17.014487
2424	31	5	247	514	2020-06-16 12:40:17.018143	2020-06-16 12:40:17.018143
2425	49	4	248	200	2020-06-16 12:40:17.022639	2020-06-16 12:40:17.022639
2426	35	4	248	249	2020-06-16 12:40:17.026444	2020-06-16 12:40:17.026444
2427	51	2	248	302	2020-06-16 12:40:17.030094	2020-06-16 12:40:17.030094
2428	64	4	248	477	2020-06-16 12:40:17.033644	2020-06-16 12:40:17.033644
2429	32	2	248	283	2020-06-16 12:40:17.037634	2020-06-16 12:40:17.037634
2430	76	3	248	375	2020-06-16 12:40:17.041445	2020-06-16 12:40:17.041445
2431	21	4	248	789	2020-06-16 12:40:17.044937	2020-06-16 12:40:17.044937
2432	18	5	248	536	2020-06-16 12:40:17.048268	2020-06-16 12:40:17.048268
2433	23	3	249	760	2020-06-16 12:40:17.051917	2020-06-16 12:40:17.051917
2434	6	5	249	610	2020-06-16 12:40:17.055733	2020-06-16 12:40:17.055733
2435	23	1	249	726	2020-06-16 12:40:17.059337	2020-06-16 12:40:17.059337
2436	69	1	250	216	2020-06-16 12:40:17.063062	2020-06-16 12:40:17.063062
2437	89	1	250	257	2020-06-16 12:40:17.066598	2020-06-16 12:40:17.066598
2438	57	2	250	742	2020-06-16 12:40:17.070292	2020-06-16 12:40:17.070292
2439	1	5	251	497	2020-06-16 12:40:17.074145	2020-06-16 12:40:17.074145
2440	74	4	251	128	2020-06-16 12:40:17.077798	2020-06-16 12:40:17.077798
2441	30	4	251	549	2020-06-16 12:40:17.084829	2020-06-16 12:40:17.084829
2442	45	4	251	373	2020-06-16 12:40:17.088929	2020-06-16 12:40:17.088929
2443	44	1	251	305	2020-06-16 12:40:17.092909	2020-06-16 12:40:17.092909
2444	8	4	251	722	2020-06-16 12:40:17.09665	2020-06-16 12:40:17.09665
2445	92	5	251	513	2020-06-16 12:40:17.100837	2020-06-16 12:40:17.100837
2446	76	4	251	79	2020-06-16 12:40:17.104985	2020-06-16 12:40:17.104985
2447	62	3	252	630	2020-06-16 12:40:17.108849	2020-06-16 12:40:17.108849
2448	26	5	252	128	2020-06-16 12:40:17.11271	2020-06-16 12:40:17.11271
2449	47	1	252	51	2020-06-16 12:40:17.116468	2020-06-16 12:40:17.116468
2450	11	1	252	650	2020-06-16 12:40:17.120468	2020-06-16 12:40:17.120468
2451	98	1	252	254	2020-06-16 12:40:17.124328	2020-06-16 12:40:17.124328
2452	13	2	252	547	2020-06-16 12:40:17.128083	2020-06-16 12:40:17.128083
2453	78	5	252	378	2020-06-16 12:40:17.131755	2020-06-16 12:40:17.131755
2454	88	3	252	498	2020-06-16 12:40:17.135495	2020-06-16 12:40:17.135495
2455	14	1	252	481	2020-06-16 12:40:17.139053	2020-06-16 12:40:17.139053
2456	7	3	253	54	2020-06-16 12:40:17.142797	2020-06-16 12:40:17.142797
2457	14	4	253	300	2020-06-16 12:40:17.146379	2020-06-16 12:40:17.146379
2458	56	3	253	790	2020-06-16 12:40:17.149952	2020-06-16 12:40:17.149952
2459	69	2	253	301	2020-06-16 12:40:17.154106	2020-06-16 12:40:17.154106
2460	66	4	253	708	2020-06-16 12:40:17.157733	2020-06-16 12:40:17.157733
2461	85	1	253	275	2020-06-16 12:40:17.161297	2020-06-16 12:40:17.161297
2462	45	4	253	452	2020-06-16 12:40:17.1652	2020-06-16 12:40:17.1652
2463	83	5	253	675	2020-06-16 12:40:17.169641	2020-06-16 12:40:17.169641
2464	97	5	253	78	2020-06-16 12:40:17.17346	2020-06-16 12:40:17.17346
2465	63	4	254	256	2020-06-16 12:40:17.177218	2020-06-16 12:40:17.177218
2466	12	1	254	538	2020-06-16 12:40:17.180926	2020-06-16 12:40:17.180926
2467	1	1	254	127	2020-06-16 12:40:17.184559	2020-06-16 12:40:17.184559
2468	13	4	254	358	2020-06-16 12:40:17.188135	2020-06-16 12:40:17.188135
2469	64	2	255	18	2020-06-16 12:40:17.191776	2020-06-16 12:40:17.191776
2470	68	2	256	208	2020-06-16 12:40:17.196772	2020-06-16 12:40:17.196772
2471	92	4	256	682	2020-06-16 12:40:17.201331	2020-06-16 12:40:17.201331
2472	59	2	256	669	2020-06-16 12:40:17.206644	2020-06-16 12:40:17.206644
2473	66	5	256	13	2020-06-16 12:40:17.211397	2020-06-16 12:40:17.211397
2474	8	3	256	703	2020-06-16 12:40:17.216499	2020-06-16 12:40:17.216499
2475	16	2	256	496	2020-06-16 12:40:17.221282	2020-06-16 12:40:17.221282
2476	32	1	256	692	2020-06-16 12:40:17.226344	2020-06-16 12:40:17.226344
2477	30	1	256	155	2020-06-16 12:40:17.231529	2020-06-16 12:40:17.231529
2478	11	4	256	519	2020-06-16 12:40:17.236552	2020-06-16 12:40:17.236552
2479	99	3	257	485	2020-06-16 12:40:17.241079	2020-06-16 12:40:17.241079
2480	31	4	257	178	2020-06-16 12:40:17.245671	2020-06-16 12:40:17.245671
2481	87	1	257	620	2020-06-16 12:40:17.249898	2020-06-16 12:40:17.249898
2482	66	1	257	679	2020-06-16 12:40:17.254107	2020-06-16 12:40:17.254107
2483	98	1	257	5	2020-06-16 12:40:17.258191	2020-06-16 12:40:17.258191
2484	24	3	257	506	2020-06-16 12:40:17.262576	2020-06-16 12:40:17.262576
2485	38	4	257	395	2020-06-16 12:40:17.267058	2020-06-16 12:40:17.267058
2486	60	3	258	8	2020-06-16 12:40:17.271142	2020-06-16 12:40:17.271142
2487	33	5	258	348	2020-06-16 12:40:17.275496	2020-06-16 12:40:17.275496
2488	18	3	258	436	2020-06-16 12:40:17.27976	2020-06-16 12:40:17.27976
2489	62	2	258	369	2020-06-16 12:40:17.284234	2020-06-16 12:40:17.284234
2490	49	3	258	703	2020-06-16 12:40:17.288394	2020-06-16 12:40:17.288394
2491	68	4	259	275	2020-06-16 12:40:17.292494	2020-06-16 12:40:17.292494
2492	69	1	259	635	2020-06-16 12:40:17.296384	2020-06-16 12:40:17.296384
2493	89	4	259	397	2020-06-16 12:40:17.300986	2020-06-16 12:40:17.300986
2494	22	1	259	336	2020-06-16 12:40:17.305253	2020-06-16 12:40:17.305253
2495	27	1	259	42	2020-06-16 12:40:17.309352	2020-06-16 12:40:17.309352
2496	85	3	259	330	2020-06-16 12:40:17.313276	2020-06-16 12:40:17.313276
2497	79	3	259	436	2020-06-16 12:40:17.318113	2020-06-16 12:40:17.318113
2498	77	5	259	574	2020-06-16 12:40:17.322454	2020-06-16 12:40:17.322454
2499	71	3	260	509	2020-06-16 12:40:17.326567	2020-06-16 12:40:17.326567
2500	73	1	260	744	2020-06-16 12:40:17.330556	2020-06-16 12:40:17.330556
2501	68	1	260	300	2020-06-16 12:40:17.334875	2020-06-16 12:40:17.334875
2502	83	3	260	474	2020-06-16 12:40:17.339293	2020-06-16 12:40:17.339293
2503	6	3	260	700	2020-06-16 12:40:17.343286	2020-06-16 12:40:17.343286
2504	54	4	261	455	2020-06-16 12:40:17.347998	2020-06-16 12:40:17.347998
2505	48	5	261	320	2020-06-16 12:40:17.352209	2020-06-16 12:40:17.352209
2506	38	4	261	590	2020-06-16 12:40:17.356434	2020-06-16 12:40:17.356434
2507	53	5	261	164	2020-06-16 12:40:17.360469	2020-06-16 12:40:17.360469
2508	96	1	261	66	2020-06-16 12:40:17.364663	2020-06-16 12:40:17.364663
2509	77	3	261	229	2020-06-16 12:40:17.368801	2020-06-16 12:40:17.368801
2510	91	5	261	459	2020-06-16 12:40:17.372876	2020-06-16 12:40:17.372876
2511	78	3	261	469	2020-06-16 12:40:17.376911	2020-06-16 12:40:17.376911
2512	48	4	262	21	2020-06-16 12:40:17.380812	2020-06-16 12:40:17.380812
2513	72	5	263	371	2020-06-16 12:40:17.384609	2020-06-16 12:40:17.384609
2514	23	5	263	84	2020-06-16 12:40:17.389853	2020-06-16 12:40:17.389853
2515	48	5	263	638	2020-06-16 12:40:17.39378	2020-06-16 12:40:17.39378
2516	52	2	263	116	2020-06-16 12:40:17.397393	2020-06-16 12:40:17.397393
2517	94	5	264	643	2020-06-16 12:40:17.401527	2020-06-16 12:40:17.401527
2518	54	4	264	558	2020-06-16 12:40:17.405601	2020-06-16 12:40:17.405601
2519	10	3	264	130	2020-06-16 12:40:17.40918	2020-06-16 12:40:17.40918
2520	4	5	264	636	2020-06-16 12:40:17.412771	2020-06-16 12:40:17.412771
2521	14	4	264	754	2020-06-16 12:40:17.416553	2020-06-16 12:40:17.416553
2522	20	3	264	492	2020-06-16 12:40:17.420358	2020-06-16 12:40:17.420358
2523	5	2	265	428	2020-06-16 12:40:17.42415	2020-06-16 12:40:17.42415
2524	84	5	266	69	2020-06-16 12:40:17.428227	2020-06-16 12:40:17.428227
2525	61	2	266	2	2020-06-16 12:40:17.432049	2020-06-16 12:40:17.432049
2526	33	2	266	472	2020-06-16 12:40:17.435919	2020-06-16 12:40:17.435919
2527	95	1	266	80	2020-06-16 12:40:17.439879	2020-06-16 12:40:17.439879
2528	80	1	266	724	2020-06-16 12:40:17.44372	2020-06-16 12:40:17.44372
2529	26	4	266	455	2020-06-16 12:40:17.447545	2020-06-16 12:40:17.447545
2530	74	1	266	485	2020-06-16 12:40:17.451334	2020-06-16 12:40:17.451334
2531	54	4	266	243	2020-06-16 12:40:17.455102	2020-06-16 12:40:17.455102
2532	14	4	266	799	2020-06-16 12:40:17.458897	2020-06-16 12:40:17.458897
2533	78	3	266	693	2020-06-16 12:40:17.463011	2020-06-16 12:40:17.463011
2534	64	4	267	582	2020-06-16 12:40:17.466856	2020-06-16 12:40:17.466856
2535	84	4	267	728	2020-06-16 12:40:17.471533	2020-06-16 12:40:17.471533
2536	51	5	267	37	2020-06-16 12:40:17.476357	2020-06-16 12:40:17.476357
2537	76	3	267	514	2020-06-16 12:40:17.48029	2020-06-16 12:40:17.48029
2538	73	1	267	763	2020-06-16 12:40:17.484037	2020-06-16 12:40:17.484037
2539	65	5	268	684	2020-06-16 12:40:17.487677	2020-06-16 12:40:17.487677
2540	69	5	268	354	2020-06-16 12:40:17.491082	2020-06-16 12:40:17.491082
2541	78	1	268	182	2020-06-16 12:40:17.494478	2020-06-16 12:40:17.494478
2542	28	3	268	67	2020-06-16 12:40:17.50004	2020-06-16 12:40:17.50004
2543	58	2	269	530	2020-06-16 12:40:17.504753	2020-06-16 12:40:17.504753
2544	28	2	269	446	2020-06-16 12:40:17.510424	2020-06-16 12:40:17.510424
2545	45	5	269	263	2020-06-16 12:40:17.515606	2020-06-16 12:40:17.515606
2546	72	3	269	323	2020-06-16 12:40:17.519865	2020-06-16 12:40:17.519865
2547	44	3	269	371	2020-06-16 12:40:17.524222	2020-06-16 12:40:17.524222
2548	37	1	269	132	2020-06-16 12:40:17.52818	2020-06-16 12:40:17.52818
2549	100	1	270	327	2020-06-16 12:40:17.531964	2020-06-16 12:40:17.531964
2550	99	4	270	663	2020-06-16 12:40:17.535945	2020-06-16 12:40:17.535945
2551	68	5	270	131	2020-06-16 12:40:17.540051	2020-06-16 12:40:17.540051
2552	9	3	270	69	2020-06-16 12:40:17.543878	2020-06-16 12:40:17.543878
2553	59	2	271	231	2020-06-16 12:40:17.547753	2020-06-16 12:40:17.547753
2554	42	2	271	400	2020-06-16 12:40:17.551883	2020-06-16 12:40:17.551883
2555	52	1	271	767	2020-06-16 12:40:17.555869	2020-06-16 12:40:17.555869
2556	57	2	271	15	2020-06-16 12:40:17.559823	2020-06-16 12:40:17.559823
2557	46	4	271	308	2020-06-16 12:40:17.563842	2020-06-16 12:40:17.563842
2558	100	4	271	660	2020-06-16 12:40:17.569009	2020-06-16 12:40:17.569009
2559	39	1	271	770	2020-06-16 12:40:17.573236	2020-06-16 12:40:17.573236
2560	71	4	271	689	2020-06-16 12:40:17.577296	2020-06-16 12:40:17.577296
2561	42	2	271	365	2020-06-16 12:40:17.581323	2020-06-16 12:40:17.581323
2562	71	3	271	509	2020-06-16 12:40:17.585438	2020-06-16 12:40:17.585438
2563	77	1	272	116	2020-06-16 12:40:17.590222	2020-06-16 12:40:17.590222
2564	79	5	272	38	2020-06-16 12:40:17.594716	2020-06-16 12:40:17.594716
2565	50	1	272	161	2020-06-16 12:40:17.599206	2020-06-16 12:40:17.599206
2566	60	3	272	302	2020-06-16 12:40:17.604851	2020-06-16 12:40:17.604851
2567	62	4	272	533	2020-06-16 12:40:17.611556	2020-06-16 12:40:17.611556
2568	72	2	272	273	2020-06-16 12:40:17.621482	2020-06-16 12:40:17.621482
2569	70	3	272	153	2020-06-16 12:40:17.62991	2020-06-16 12:40:17.62991
2570	43	1	272	569	2020-06-16 12:40:17.636264	2020-06-16 12:40:17.636264
2571	91	1	272	131	2020-06-16 12:40:17.642027	2020-06-16 12:40:17.642027
2572	13	4	273	289	2020-06-16 12:40:17.646725	2020-06-16 12:40:17.646725
2573	42	1	273	198	2020-06-16 12:40:17.650563	2020-06-16 12:40:17.650563
2574	71	4	273	795	2020-06-16 12:40:17.655115	2020-06-16 12:40:17.655115
2575	18	4	273	621	2020-06-16 12:40:17.660166	2020-06-16 12:40:17.660166
2576	64	1	273	557	2020-06-16 12:40:17.667681	2020-06-16 12:40:17.667681
2577	88	2	273	204	2020-06-16 12:40:17.672307	2020-06-16 12:40:17.672307
2578	27	3	274	321	2020-06-16 12:40:17.675909	2020-06-16 12:40:17.675909
2579	59	2	275	427	2020-06-16 12:40:17.679186	2020-06-16 12:40:17.679186
2580	93	5	275	428	2020-06-16 12:40:17.683038	2020-06-16 12:40:17.683038
2581	59	3	275	561	2020-06-16 12:40:17.692427	2020-06-16 12:40:17.692427
2582	3	1	275	681	2020-06-16 12:40:17.697698	2020-06-16 12:40:17.697698
2583	14	2	275	545	2020-06-16 12:40:17.704811	2020-06-16 12:40:17.704811
2584	93	2	275	218	2020-06-16 12:40:17.710386	2020-06-16 12:40:17.710386
2585	30	5	275	240	2020-06-16 12:40:17.715053	2020-06-16 12:40:17.715053
2586	59	1	275	750	2020-06-16 12:40:17.719389	2020-06-16 12:40:17.719389
2587	1	4	276	63	2020-06-16 12:40:17.724164	2020-06-16 12:40:17.724164
2588	72	1	276	574	2020-06-16 12:40:17.728237	2020-06-16 12:40:17.728237
2589	39	4	276	480	2020-06-16 12:40:17.732154	2020-06-16 12:40:17.732154
2590	29	3	276	576	2020-06-16 12:40:17.736686	2020-06-16 12:40:17.736686
2591	4	1	277	656	2020-06-16 12:40:17.741959	2020-06-16 12:40:17.741959
2592	53	3	277	167	2020-06-16 12:40:17.745821	2020-06-16 12:40:17.745821
2593	73	5	277	11	2020-06-16 12:40:17.749458	2020-06-16 12:40:17.749458
2594	90	5	277	309	2020-06-16 12:40:17.75365	2020-06-16 12:40:17.75365
2595	32	4	277	618	2020-06-16 12:40:17.762152	2020-06-16 12:40:17.762152
2596	71	5	277	241	2020-06-16 12:40:17.766393	2020-06-16 12:40:17.766393
2597	98	5	277	780	2020-06-16 12:40:17.778662	2020-06-16 12:40:17.778662
2598	77	2	277	599	2020-06-16 12:40:17.782613	2020-06-16 12:40:17.782613
2599	78	2	278	742	2020-06-16 12:40:17.786684	2020-06-16 12:40:17.786684
2600	84	1	279	295	2020-06-16 12:40:17.790958	2020-06-16 12:40:17.790958
2601	86	4	279	298	2020-06-16 12:40:17.795031	2020-06-16 12:40:17.795031
2602	62	2	279	328	2020-06-16 12:40:17.798926	2020-06-16 12:40:17.798926
2603	24	2	279	20	2020-06-16 12:40:17.803901	2020-06-16 12:40:17.803901
2604	21	4	279	447	2020-06-16 12:40:17.808384	2020-06-16 12:40:17.808384
2605	54	4	280	676	2020-06-16 12:40:17.812245	2020-06-16 12:40:17.812245
2606	11	3	281	635	2020-06-16 12:40:17.816869	2020-06-16 12:40:17.816869
2607	98	4	281	441	2020-06-16 12:40:17.822067	2020-06-16 12:40:17.822067
2608	1	4	281	158	2020-06-16 12:40:17.826419	2020-06-16 12:40:17.826419
2609	36	3	282	585	2020-06-16 12:40:17.830479	2020-06-16 12:40:17.830479
2610	74	2	282	111	2020-06-16 12:40:17.834955	2020-06-16 12:40:17.834955
2611	31	2	282	25	2020-06-16 12:40:17.840046	2020-06-16 12:40:17.840046
2612	79	5	283	154	2020-06-16 12:40:17.844597	2020-06-16 12:40:17.844597
2613	24	1	283	426	2020-06-16 12:40:17.848595	2020-06-16 12:40:17.848595
2614	76	2	283	770	2020-06-16 12:40:17.852459	2020-06-16 12:40:17.852459
2615	68	5	283	48	2020-06-16 12:40:17.857606	2020-06-16 12:40:17.857606
2616	79	4	283	205	2020-06-16 12:40:17.862847	2020-06-16 12:40:17.862847
2617	88	4	283	354	2020-06-16 12:40:17.867013	2020-06-16 12:40:17.867013
2618	16	3	283	27	2020-06-16 12:40:17.871423	2020-06-16 12:40:17.871423
2619	47	1	283	343	2020-06-16 12:40:17.877487	2020-06-16 12:40:17.877487
2620	57	3	283	118	2020-06-16 12:40:17.881502	2020-06-16 12:40:17.881502
2621	51	4	284	141	2020-06-16 12:40:17.886108	2020-06-16 12:40:17.886108
2622	78	1	284	191	2020-06-16 12:40:17.890624	2020-06-16 12:40:17.890624
2623	37	4	284	284	2020-06-16 12:40:17.894568	2020-06-16 12:40:17.894568
2624	60	1	285	438	2020-06-16 12:40:17.898581	2020-06-16 12:40:17.898581
2625	39	2	285	81	2020-06-16 12:40:17.902845	2020-06-16 12:40:17.902845
2626	67	4	285	421	2020-06-16 12:40:17.908053	2020-06-16 12:40:17.908053
2627	23	5	285	341	2020-06-16 12:40:17.911933	2020-06-16 12:40:17.911933
2628	76	1	285	760	2020-06-16 12:40:17.915548	2020-06-16 12:40:17.915548
2629	53	2	286	631	2020-06-16 12:40:17.919954	2020-06-16 12:40:17.919954
2630	27	4	286	51	2020-06-16 12:40:17.924315	2020-06-16 12:40:17.924315
2631	84	4	286	799	2020-06-16 12:40:17.928215	2020-06-16 12:40:17.928215
2632	68	2	286	139	2020-06-16 12:40:17.931994	2020-06-16 12:40:17.931994
2633	29	5	286	455	2020-06-16 12:40:17.935686	2020-06-16 12:40:17.935686
2634	21	5	286	387	2020-06-16 12:40:17.939511	2020-06-16 12:40:17.939511
2635	13	2	286	339	2020-06-16 12:40:17.943391	2020-06-16 12:40:17.943391
2636	30	2	287	83	2020-06-16 12:40:17.946681	2020-06-16 12:40:17.946681
2637	16	4	287	329	2020-06-16 12:40:17.950212	2020-06-16 12:40:17.950212
2638	43	3	287	732	2020-06-16 12:40:17.954298	2020-06-16 12:40:17.954298
2639	65	2	287	632	2020-06-16 12:40:17.958573	2020-06-16 12:40:17.958573
2640	88	1	287	112	2020-06-16 12:40:17.962344	2020-06-16 12:40:17.962344
2641	91	3	287	708	2020-06-16 12:40:17.966636	2020-06-16 12:40:17.966636
2642	14	5	287	249	2020-06-16 12:40:17.970538	2020-06-16 12:40:17.970538
2643	97	4	287	152	2020-06-16 12:40:17.975098	2020-06-16 12:40:17.975098
2644	31	3	287	55	2020-06-16 12:40:17.97893	2020-06-16 12:40:17.97893
2645	64	4	287	680	2020-06-16 12:40:17.982541	2020-06-16 12:40:17.982541
2646	63	4	288	558	2020-06-16 12:40:17.986401	2020-06-16 12:40:17.986401
2647	50	1	288	513	2020-06-16 12:40:17.99072	2020-06-16 12:40:17.99072
2648	78	2	288	421	2020-06-16 12:40:17.99482	2020-06-16 12:40:17.99482
2649	86	1	289	234	2020-06-16 12:40:17.998519	2020-06-16 12:40:17.998519
2650	68	3	289	396	2020-06-16 12:40:18.002287	2020-06-16 12:40:18.002287
2651	43	2	289	485	2020-06-16 12:40:18.006447	2020-06-16 12:40:18.006447
2652	32	3	289	139	2020-06-16 12:40:18.010668	2020-06-16 12:40:18.010668
2653	89	3	289	175	2020-06-16 12:40:18.013931	2020-06-16 12:40:18.013931
2654	62	5	289	739	2020-06-16 12:40:18.017448	2020-06-16 12:40:18.017448
2655	91	5	289	706	2020-06-16 12:40:18.021685	2020-06-16 12:40:18.021685
2656	62	5	289	279	2020-06-16 12:40:18.025559	2020-06-16 12:40:18.025559
2657	63	5	290	160	2020-06-16 12:40:18.029172	2020-06-16 12:40:18.029172
2658	91	5	290	272	2020-06-16 12:40:18.033126	2020-06-16 12:40:18.033126
2659	17	2	290	453	2020-06-16 12:40:18.037171	2020-06-16 12:40:18.037171
2660	98	2	290	788	2020-06-16 12:40:18.041324	2020-06-16 12:40:18.041324
2661	45	3	290	238	2020-06-16 12:40:18.045027	2020-06-16 12:40:18.045027
2662	48	2	290	677	2020-06-16 12:40:18.048582	2020-06-16 12:40:18.048582
2663	76	3	290	162	2020-06-16 12:40:18.052684	2020-06-16 12:40:18.052684
2664	10	2	290	624	2020-06-16 12:40:18.056613	2020-06-16 12:40:18.056613
2665	98	3	290	368	2020-06-16 12:40:18.060529	2020-06-16 12:40:18.060529
2666	37	3	290	607	2020-06-16 12:40:18.064394	2020-06-16 12:40:18.064394
2667	37	5	291	547	2020-06-16 12:40:18.068381	2020-06-16 12:40:18.068381
2668	59	5	291	709	2020-06-16 12:40:18.072222	2020-06-16 12:40:18.072222
2669	87	5	291	318	2020-06-16 12:40:18.076348	2020-06-16 12:40:18.076348
2670	21	1	292	258	2020-06-16 12:40:18.079929	2020-06-16 12:40:18.079929
2671	68	4	292	542	2020-06-16 12:40:18.08374	2020-06-16 12:40:18.08374
2672	14	4	292	50	2020-06-16 12:40:18.088096	2020-06-16 12:40:18.088096
2673	62	5	292	139	2020-06-16 12:40:18.092093	2020-06-16 12:40:18.092093
2674	47	1	293	447	2020-06-16 12:40:18.096296	2020-06-16 12:40:18.096296
2675	26	2	294	588	2020-06-16 12:40:18.100152	2020-06-16 12:40:18.100152
2676	89	3	294	228	2020-06-16 12:40:18.104071	2020-06-16 12:40:18.104071
2677	92	5	294	123	2020-06-16 12:40:18.108655	2020-06-16 12:40:18.108655
2678	100	5	295	404	2020-06-16 12:40:18.112677	2020-06-16 12:40:18.112677
2679	94	1	295	705	2020-06-16 12:40:18.116319	2020-06-16 12:40:18.116319
2680	73	3	295	140	2020-06-16 12:40:18.120407	2020-06-16 12:40:18.120407
2681	81	1	296	188	2020-06-16 12:40:18.12496	2020-06-16 12:40:18.12496
2682	26	3	296	697	2020-06-16 12:40:18.128784	2020-06-16 12:40:18.128784
2683	76	4	296	208	2020-06-16 12:40:18.132374	2020-06-16 12:40:18.132374
2684	65	2	296	616	2020-06-16 12:40:18.136222	2020-06-16 12:40:18.136222
2685	70	3	296	192	2020-06-16 12:40:18.140187	2020-06-16 12:40:18.140187
2686	44	1	296	650	2020-06-16 12:40:18.144609	2020-06-16 12:40:18.144609
2687	94	2	296	452	2020-06-16 12:40:18.148235	2020-06-16 12:40:18.148235
2688	76	3	296	544	2020-06-16 12:40:18.152162	2020-06-16 12:40:18.152162
2689	28	1	297	347	2020-06-16 12:40:18.156836	2020-06-16 12:40:18.156836
2690	3	4	297	575	2020-06-16 12:40:18.161019	2020-06-16 12:40:18.161019
2691	86	1	297	595	2020-06-16 12:40:18.164675	2020-06-16 12:40:18.164675
2692	18	4	297	644	2020-06-16 12:40:18.168459	2020-06-16 12:40:18.168459
2693	6	1	297	564	2020-06-16 12:40:18.172059	2020-06-16 12:40:18.172059
2694	54	2	297	2	2020-06-16 12:40:18.175876	2020-06-16 12:40:18.175876
2695	3	3	297	282	2020-06-16 12:40:18.179898	2020-06-16 12:40:18.179898
2696	22	2	297	703	2020-06-16 12:40:18.184142	2020-06-16 12:40:18.184142
2697	70	1	297	517	2020-06-16 12:40:18.187658	2020-06-16 12:40:18.187658
2698	42	5	298	321	2020-06-16 12:40:18.191602	2020-06-16 12:40:18.191602
2699	21	4	298	723	2020-06-16 12:40:18.195527	2020-06-16 12:40:18.195527
2700	3	2	298	590	2020-06-16 12:40:18.199203	2020-06-16 12:40:18.199203
2701	42	2	298	143	2020-06-16 12:40:18.206461	2020-06-16 12:40:18.206461
2702	30	1	298	311	2020-06-16 12:40:18.210579	2020-06-16 12:40:18.210579
2703	63	5	298	232	2020-06-16 12:40:18.21427	2020-06-16 12:40:18.21427
2704	91	4	298	676	2020-06-16 12:40:18.217718	2020-06-16 12:40:18.217718
2705	7	3	298	419	2020-06-16 12:40:18.221864	2020-06-16 12:40:18.221864
2706	44	4	299	210	2020-06-16 12:40:18.225658	2020-06-16 12:40:18.225658
2707	31	4	300	291	2020-06-16 12:40:18.229148	2020-06-16 12:40:18.229148
2708	96	1	300	167	2020-06-16 12:40:18.232495	2020-06-16 12:40:18.232495
2709	44	5	300	96	2020-06-16 12:40:18.235944	2020-06-16 12:40:18.235944
2710	94	3	300	707	2020-06-16 12:40:18.239607	2020-06-16 12:40:18.239607
2711	22	2	300	633	2020-06-16 12:40:18.243426	2020-06-16 12:40:18.243426
2712	27	2	300	581	2020-06-16 12:40:18.247589	2020-06-16 12:40:18.247589
2713	58	5	300	313	2020-06-16 12:40:18.251356	2020-06-16 12:40:18.251356
2714	85	3	300	352	2020-06-16 12:40:18.255329	2020-06-16 12:40:18.255329
2715	50	2	301	87	2020-06-16 12:40:18.259464	2020-06-16 12:40:18.259464
2716	44	2	301	293	2020-06-16 12:40:18.263037	2020-06-16 12:40:18.263037
2717	6	2	301	690	2020-06-16 12:40:18.266739	2020-06-16 12:40:18.266739
2718	60	1	301	782	2020-06-16 12:40:18.270605	2020-06-16 12:40:18.270605
2719	57	4	301	595	2020-06-16 12:40:18.274349	2020-06-16 12:40:18.274349
2720	54	4	301	605	2020-06-16 12:40:18.278385	2020-06-16 12:40:18.278385
2721	55	2	301	775	2020-06-16 12:40:18.282119	2020-06-16 12:40:18.282119
2722	16	4	301	719	2020-06-16 12:40:18.28583	2020-06-16 12:40:18.28583
2723	50	5	301	523	2020-06-16 12:40:18.28981	2020-06-16 12:40:18.28981
2724	75	5	302	769	2020-06-16 12:40:18.293436	2020-06-16 12:40:18.293436
2725	33	2	303	648	2020-06-16 12:40:18.296834	2020-06-16 12:40:18.296834
2726	34	5	303	441	2020-06-16 12:40:18.301005	2020-06-16 12:40:18.301005
2727	24	1	303	427	2020-06-16 12:40:18.304551	2020-06-16 12:40:18.304551
2728	19	5	303	528	2020-06-16 12:40:18.308339	2020-06-16 12:40:18.308339
2729	83	2	303	600	2020-06-16 12:40:18.312633	2020-06-16 12:40:18.312633
2730	40	5	304	57	2020-06-16 12:40:18.316793	2020-06-16 12:40:18.316793
2731	98	2	304	58	2020-06-16 12:40:18.320879	2020-06-16 12:40:18.320879
2732	68	3	304	230	2020-06-16 12:40:18.324869	2020-06-16 12:40:18.324869
2733	98	4	305	620	2020-06-16 12:40:18.328578	2020-06-16 12:40:18.328578
2734	9	5	305	539	2020-06-16 12:40:18.332122	2020-06-16 12:40:18.332122
2735	65	3	305	188	2020-06-16 12:40:18.335839	2020-06-16 12:40:18.335839
2736	34	2	305	143	2020-06-16 12:40:18.340001	2020-06-16 12:40:18.340001
2737	72	5	305	625	2020-06-16 12:40:18.344331	2020-06-16 12:40:18.344331
2738	58	1	305	184	2020-06-16 12:40:18.348241	2020-06-16 12:40:18.348241
2739	68	2	305	574	2020-06-16 12:40:18.351794	2020-06-16 12:40:18.351794
2740	13	2	305	268	2020-06-16 12:40:18.354912	2020-06-16 12:40:18.354912
2741	27	5	305	102	2020-06-16 12:40:18.358741	2020-06-16 12:40:18.358741
2742	48	1	306	204	2020-06-16 12:40:18.362306	2020-06-16 12:40:18.362306
2743	52	2	306	463	2020-06-16 12:40:18.366828	2020-06-16 12:40:18.366828
2744	68	2	306	649	2020-06-16 12:40:18.370391	2020-06-16 12:40:18.370391
2745	36	4	306	309	2020-06-16 12:40:18.374105	2020-06-16 12:40:18.374105
2746	37	5	306	456	2020-06-16 12:40:18.377799	2020-06-16 12:40:18.377799
2747	20	1	306	621	2020-06-16 12:40:18.381288	2020-06-16 12:40:18.381288
2748	11	2	306	565	2020-06-16 12:40:18.384546	2020-06-16 12:40:18.384546
2749	19	5	306	635	2020-06-16 12:40:18.388035	2020-06-16 12:40:18.388035
2750	37	3	306	448	2020-06-16 12:40:18.392112	2020-06-16 12:40:18.392112
2751	90	5	306	752	2020-06-16 12:40:18.39583	2020-06-16 12:40:18.39583
2752	43	4	307	84	2020-06-16 12:40:18.399783	2020-06-16 12:40:18.399783
2753	77	2	307	259	2020-06-16 12:40:18.403231	2020-06-16 12:40:18.403231
2754	63	4	307	40	2020-06-16 12:40:18.406636	2020-06-16 12:40:18.406636
2755	10	3	307	304	2020-06-16 12:40:18.410168	2020-06-16 12:40:18.410168
2756	37	5	307	224	2020-06-16 12:40:18.4134	2020-06-16 12:40:18.4134
2757	76	4	307	672	2020-06-16 12:40:18.416768	2020-06-16 12:40:18.416768
2758	96	4	307	242	2020-06-16 12:40:18.420668	2020-06-16 12:40:18.420668
2759	61	2	307	303	2020-06-16 12:40:18.424476	2020-06-16 12:40:18.424476
2760	26	5	307	335	2020-06-16 12:40:18.428197	2020-06-16 12:40:18.428197
2761	86	2	307	134	2020-06-16 12:40:18.431746	2020-06-16 12:40:18.431746
2762	92	5	308	490	2020-06-16 12:40:18.435294	2020-06-16 12:40:18.435294
2763	46	2	308	753	2020-06-16 12:40:18.439109	2020-06-16 12:40:18.439109
2764	92	5	308	650	2020-06-16 12:40:18.44341	2020-06-16 12:40:18.44341
2765	34	5	308	277	2020-06-16 12:40:18.447295	2020-06-16 12:40:18.447295
2766	55	1	308	413	2020-06-16 12:40:18.450979	2020-06-16 12:40:18.450979
2767	71	5	309	162	2020-06-16 12:40:18.454433	2020-06-16 12:40:18.454433
2768	82	3	309	230	2020-06-16 12:40:18.458245	2020-06-16 12:40:18.458245
2769	47	2	309	496	2020-06-16 12:40:18.461909	2020-06-16 12:40:18.461909
2770	21	1	309	468	2020-06-16 12:40:18.465403	2020-06-16 12:40:18.465403
2771	67	4	309	82	2020-06-16 12:40:18.4698	2020-06-16 12:40:18.4698
2772	76	1	309	589	2020-06-16 12:40:18.473743	2020-06-16 12:40:18.473743
2773	72	3	309	117	2020-06-16 12:40:18.477886	2020-06-16 12:40:18.477886
2774	65	1	309	777	2020-06-16 12:40:18.481651	2020-06-16 12:40:18.481651
2775	9	5	310	477	2020-06-16 12:40:18.485236	2020-06-16 12:40:18.485236
2776	35	1	310	540	2020-06-16 12:40:18.489069	2020-06-16 12:40:18.489069
2777	4	3	310	239	2020-06-16 12:40:18.493406	2020-06-16 12:40:18.493406
2778	15	4	310	550	2020-06-16 12:40:18.497397	2020-06-16 12:40:18.497397
2779	24	3	310	505	2020-06-16 12:40:18.501253	2020-06-16 12:40:18.501253
2780	96	2	311	608	2020-06-16 12:40:18.505238	2020-06-16 12:40:18.505238
2781	90	1	311	476	2020-06-16 12:40:18.509703	2020-06-16 12:40:18.509703
2782	86	5	312	528	2020-06-16 12:40:18.513256	2020-06-16 12:40:18.513256
2783	17	5	312	57	2020-06-16 12:40:18.516661	2020-06-16 12:40:18.516661
2784	11	3	312	283	2020-06-16 12:40:18.520508	2020-06-16 12:40:18.520508
2785	37	5	312	125	2020-06-16 12:40:18.523841	2020-06-16 12:40:18.523841
2786	43	5	312	411	2020-06-16 12:40:18.527445	2020-06-16 12:40:18.527445
2787	29	4	312	569	2020-06-16 12:40:18.530926	2020-06-16 12:40:18.530926
2788	97	5	313	654	2020-06-16 12:40:18.534548	2020-06-16 12:40:18.534548
2789	86	5	313	62	2020-06-16 12:40:18.538902	2020-06-16 12:40:18.538902
2790	44	5	313	595	2020-06-16 12:40:18.542937	2020-06-16 12:40:18.542937
2791	18	3	313	606	2020-06-16 12:40:18.548078	2020-06-16 12:40:18.548078
2792	67	3	314	231	2020-06-16 12:40:18.553107	2020-06-16 12:40:18.553107
2793	62	4	314	256	2020-06-16 12:40:18.558008	2020-06-16 12:40:18.558008
2794	42	2	314	754	2020-06-16 12:40:18.563246	2020-06-16 12:40:18.563246
2795	39	2	314	207	2020-06-16 12:40:18.568694	2020-06-16 12:40:18.568694
2796	11	4	314	68	2020-06-16 12:40:18.574402	2020-06-16 12:40:18.574402
2797	94	5	314	189	2020-06-16 12:40:18.57966	2020-06-16 12:40:18.57966
2798	94	3	314	44	2020-06-16 12:40:18.589685	2020-06-16 12:40:18.589685
2799	100	3	314	159	2020-06-16 12:40:18.596462	2020-06-16 12:40:18.596462
2800	35	5	314	130	2020-06-16 12:40:18.604049	2020-06-16 12:40:18.604049
2801	10	5	314	730	2020-06-16 12:40:18.611025	2020-06-16 12:40:18.611025
2802	28	3	315	520	2020-06-16 12:40:18.617802	2020-06-16 12:40:18.617802
2803	31	5	315	63	2020-06-16 12:40:18.623824	2020-06-16 12:40:18.623824
2804	99	3	315	28	2020-06-16 12:40:18.630272	2020-06-16 12:40:18.630272
2805	5	3	315	448	2020-06-16 12:40:18.636443	2020-06-16 12:40:18.636443
2806	10	1	315	687	2020-06-16 12:40:18.642651	2020-06-16 12:40:18.642651
2807	33	3	315	743	2020-06-16 12:40:18.649692	2020-06-16 12:40:18.649692
2808	39	3	315	487	2020-06-16 12:40:18.65594	2020-06-16 12:40:18.65594
2809	50	3	315	379	2020-06-16 12:40:18.665407	2020-06-16 12:40:18.665407
2810	8	4	315	336	2020-06-16 12:40:18.671458	2020-06-16 12:40:18.671458
2811	13	4	315	186	2020-06-16 12:40:18.678095	2020-06-16 12:40:18.678095
2812	89	4	316	489	2020-06-16 12:40:18.683636	2020-06-16 12:40:18.683636
2813	53	4	316	643	2020-06-16 12:40:18.689597	2020-06-16 12:40:18.689597
2814	94	2	316	464	2020-06-16 12:40:18.696262	2020-06-16 12:40:18.696262
2815	33	2	317	286	2020-06-16 12:40:18.70214	2020-06-16 12:40:18.70214
2816	64	5	317	337	2020-06-16 12:40:18.70809	2020-06-16 12:40:18.70809
2817	3	3	317	315	2020-06-16 12:40:18.714622	2020-06-16 12:40:18.714622
2818	8	2	317	431	2020-06-16 12:40:18.729218	2020-06-16 12:40:18.729218
2819	30	1	318	242	2020-06-16 12:40:18.737069	2020-06-16 12:40:18.737069
2820	55	5	318	212	2020-06-16 12:40:18.743614	2020-06-16 12:40:18.743614
2821	59	3	318	357	2020-06-16 12:40:18.748673	2020-06-16 12:40:18.748673
2822	94	1	318	69	2020-06-16 12:40:18.754443	2020-06-16 12:40:18.754443
2823	35	4	318	421	2020-06-16 12:40:18.759374	2020-06-16 12:40:18.759374
2824	94	2	318	409	2020-06-16 12:40:18.764369	2020-06-16 12:40:18.764369
2825	74	4	318	684	2020-06-16 12:40:18.769241	2020-06-16 12:40:18.769241
2826	42	4	318	323	2020-06-16 12:40:18.773843	2020-06-16 12:40:18.773843
2827	40	3	318	381	2020-06-16 12:40:18.777873	2020-06-16 12:40:18.777873
2828	29	4	318	390	2020-06-16 12:40:18.782012	2020-06-16 12:40:18.782012
2829	87	4	319	790	2020-06-16 12:40:18.786423	2020-06-16 12:40:18.786423
2830	72	2	319	11	2020-06-16 12:40:18.790782	2020-06-16 12:40:18.790782
2831	65	5	319	323	2020-06-16 12:40:18.794757	2020-06-16 12:40:18.794757
2832	24	1	319	576	2020-06-16 12:40:18.798734	2020-06-16 12:40:18.798734
2833	16	1	319	451	2020-06-16 12:40:18.804393	2020-06-16 12:40:18.804393
2834	29	1	320	374	2020-06-16 12:40:18.808841	2020-06-16 12:40:18.808841
2835	54	2	320	421	2020-06-16 12:40:18.813496	2020-06-16 12:40:18.813496
2836	42	5	320	49	2020-06-16 12:40:18.819527	2020-06-16 12:40:18.819527
2837	36	2	320	273	2020-06-16 12:40:18.825462	2020-06-16 12:40:18.825462
2838	3	4	320	747	2020-06-16 12:40:18.830804	2020-06-16 12:40:18.830804
2839	40	2	320	477	2020-06-16 12:40:18.835156	2020-06-16 12:40:18.835156
2840	15	2	321	679	2020-06-16 12:40:18.840008	2020-06-16 12:40:18.840008
2841	86	2	321	474	2020-06-16 12:40:18.847595	2020-06-16 12:40:18.847595
2842	97	3	321	693	2020-06-16 12:40:18.852759	2020-06-16 12:40:18.852759
2843	52	4	321	511	2020-06-16 12:40:18.856914	2020-06-16 12:40:18.856914
2844	52	2	321	570	2020-06-16 12:40:18.861167	2020-06-16 12:40:18.861167
2845	84	3	321	759	2020-06-16 12:40:18.865522	2020-06-16 12:40:18.865522
2846	48	4	321	609	2020-06-16 12:40:18.869983	2020-06-16 12:40:18.869983
2847	29	3	321	190	2020-06-16 12:40:18.874218	2020-06-16 12:40:18.874218
2848	50	3	322	332	2020-06-16 12:40:18.878336	2020-06-16 12:40:18.878336
2849	66	5	322	386	2020-06-16 12:40:18.882435	2020-06-16 12:40:18.882435
2850	36	2	322	227	2020-06-16 12:40:18.88737	2020-06-16 12:40:18.88737
2851	44	4	322	454	2020-06-16 12:40:18.891843	2020-06-16 12:40:18.891843
2852	60	2	323	799	2020-06-16 12:40:18.895985	2020-06-16 12:40:18.895985
2853	78	1	323	652	2020-06-16 12:40:18.89977	2020-06-16 12:40:18.89977
2854	65	3	323	542	2020-06-16 12:40:18.903621	2020-06-16 12:40:18.903621
2855	23	5	324	565	2020-06-16 12:40:18.907176	2020-06-16 12:40:18.907176
2856	24	2	324	747	2020-06-16 12:40:18.912488	2020-06-16 12:40:18.912488
2857	80	2	325	663	2020-06-16 12:40:18.916173	2020-06-16 12:40:18.916173
2858	97	1	325	131	2020-06-16 12:40:18.920485	2020-06-16 12:40:18.920485
2859	63	5	325	615	2020-06-16 12:40:18.924736	2020-06-16 12:40:18.924736
2860	95	2	325	740	2020-06-16 12:40:18.929582	2020-06-16 12:40:18.929582
2861	80	5	326	132	2020-06-16 12:40:18.933718	2020-06-16 12:40:18.933718
2862	5	5	327	315	2020-06-16 12:40:18.938234	2020-06-16 12:40:18.938234
2863	72	3	327	373	2020-06-16 12:40:18.942361	2020-06-16 12:40:18.942361
2864	19	2	327	442	2020-06-16 12:40:18.946191	2020-06-16 12:40:18.946191
2865	76	5	327	595	2020-06-16 12:40:18.950037	2020-06-16 12:40:18.950037
2866	68	3	327	133	2020-06-16 12:40:18.954044	2020-06-16 12:40:18.954044
2867	82	3	327	668	2020-06-16 12:40:18.957953	2020-06-16 12:40:18.957953
2868	16	2	327	542	2020-06-16 12:40:18.961905	2020-06-16 12:40:18.961905
2869	46	3	328	519	2020-06-16 12:40:18.966601	2020-06-16 12:40:18.966601
2870	43	3	328	591	2020-06-16 12:40:18.970855	2020-06-16 12:40:18.970855
2871	61	2	328	319	2020-06-16 12:40:18.975536	2020-06-16 12:40:18.975536
2872	92	4	328	567	2020-06-16 12:40:18.97961	2020-06-16 12:40:18.97961
2873	88	4	328	727	2020-06-16 12:40:18.983665	2020-06-16 12:40:18.983665
2874	49	4	328	768	2020-06-16 12:40:18.988281	2020-06-16 12:40:18.988281
2875	26	2	329	441	2020-06-16 12:40:18.992653	2020-06-16 12:40:18.992653
2876	97	4	329	520	2020-06-16 12:40:18.996779	2020-06-16 12:40:18.996779
2877	31	2	329	742	2020-06-16 12:40:19.001041	2020-06-16 12:40:19.001041
2878	100	1	329	20	2020-06-16 12:40:19.00523	2020-06-16 12:40:19.00523
2879	12	3	330	381	2020-06-16 12:40:19.009359	2020-06-16 12:40:19.009359
2880	29	3	330	216	2020-06-16 12:40:19.013244	2020-06-16 12:40:19.013244
2881	100	5	330	753	2020-06-16 12:40:19.017044	2020-06-16 12:40:19.017044
2882	66	1	330	297	2020-06-16 12:40:19.02108	2020-06-16 12:40:19.02108
2883	88	5	331	352	2020-06-16 12:40:19.025118	2020-06-16 12:40:19.025118
2884	58	2	331	93	2020-06-16 12:40:19.028985	2020-06-16 12:40:19.028985
2885	75	3	331	112	2020-06-16 12:40:19.032951	2020-06-16 12:40:19.032951
2886	60	2	331	357	2020-06-16 12:40:19.03681	2020-06-16 12:40:19.03681
2887	46	1	331	590	2020-06-16 12:40:19.040777	2020-06-16 12:40:19.040777
2888	50	5	331	246	2020-06-16 12:40:19.044842	2020-06-16 12:40:19.044842
2889	45	1	332	698	2020-06-16 12:40:19.04873	2020-06-16 12:40:19.04873
2890	4	2	332	48	2020-06-16 12:40:19.052477	2020-06-16 12:40:19.052477
2891	80	5	332	496	2020-06-16 12:40:19.056452	2020-06-16 12:40:19.056452
2892	81	4	332	101	2020-06-16 12:40:19.060375	2020-06-16 12:40:19.060375
2893	30	2	332	773	2020-06-16 12:40:19.065092	2020-06-16 12:40:19.065092
2894	79	2	332	564	2020-06-16 12:40:19.069666	2020-06-16 12:40:19.069666
2895	6	4	332	655	2020-06-16 12:40:19.073781	2020-06-16 12:40:19.073781
2896	45	2	332	41	2020-06-16 12:40:19.077963	2020-06-16 12:40:19.077963
2897	70	3	332	385	2020-06-16 12:40:19.082333	2020-06-16 12:40:19.082333
2898	21	5	333	344	2020-06-16 12:40:19.086435	2020-06-16 12:40:19.086435
2899	77	1	334	724	2020-06-16 12:40:19.090959	2020-06-16 12:40:19.090959
2900	75	3	334	721	2020-06-16 12:40:19.095323	2020-06-16 12:40:19.095323
2901	92	5	334	347	2020-06-16 12:40:19.099526	2020-06-16 12:40:19.099526
2902	91	4	334	364	2020-06-16 12:40:19.104846	2020-06-16 12:40:19.104846
2903	25	3	334	281	2020-06-16 12:40:19.115534	2020-06-16 12:40:19.115534
2904	36	5	334	613	2020-06-16 12:40:19.122986	2020-06-16 12:40:19.122986
2905	34	3	334	540	2020-06-16 12:40:19.128595	2020-06-16 12:40:19.128595
2906	11	5	334	649	2020-06-16 12:40:19.134644	2020-06-16 12:40:19.134644
2907	49	5	334	411	2020-06-16 12:40:19.140159	2020-06-16 12:40:19.140159
2908	65	4	334	121	2020-06-16 12:40:19.145053	2020-06-16 12:40:19.145053
2909	57	5	335	289	2020-06-16 12:40:19.149411	2020-06-16 12:40:19.149411
2910	30	2	335	641	2020-06-16 12:40:19.153767	2020-06-16 12:40:19.153767
2911	22	5	335	32	2020-06-16 12:40:19.158321	2020-06-16 12:40:19.158321
2912	10	1	335	391	2020-06-16 12:40:19.162556	2020-06-16 12:40:19.162556
2913	24	5	335	430	2020-06-16 12:40:19.167424	2020-06-16 12:40:19.167424
2914	39	3	335	232	2020-06-16 12:40:19.172424	2020-06-16 12:40:19.172424
2915	56	5	335	748	2020-06-16 12:40:19.177064	2020-06-16 12:40:19.177064
2916	18	5	335	425	2020-06-16 12:40:19.183113	2020-06-16 12:40:19.183113
2917	57	3	336	196	2020-06-16 12:40:19.188539	2020-06-16 12:40:19.188539
2918	53	2	336	756	2020-06-16 12:40:19.194639	2020-06-16 12:40:19.194639
2919	56	3	336	509	2020-06-16 12:40:19.198824	2020-06-16 12:40:19.198824
2920	74	4	336	616	2020-06-16 12:40:19.20317	2020-06-16 12:40:19.20317
2921	21	5	336	776	2020-06-16 12:40:19.207905	2020-06-16 12:40:19.207905
2922	25	2	337	723	2020-06-16 12:40:19.211991	2020-06-16 12:40:19.211991
2923	67	1	337	173	2020-06-16 12:40:19.216177	2020-06-16 12:40:19.216177
2924	76	4	338	311	2020-06-16 12:40:19.220341	2020-06-16 12:40:19.220341
2925	16	3	338	26	2020-06-16 12:40:19.224898	2020-06-16 12:40:19.224898
2926	41	2	338	193	2020-06-16 12:40:19.229146	2020-06-16 12:40:19.229146
2927	58	1	338	118	2020-06-16 12:40:19.236882	2020-06-16 12:40:19.236882
2928	41	3	338	786	2020-06-16 12:40:19.241692	2020-06-16 12:40:19.241692
2929	76	3	338	572	2020-06-16 12:40:19.245786	2020-06-16 12:40:19.245786
2930	6	1	338	172	2020-06-16 12:40:19.249957	2020-06-16 12:40:19.249957
2931	77	1	339	410	2020-06-16 12:40:19.25409	2020-06-16 12:40:19.25409
2932	34	2	339	791	2020-06-16 12:40:19.258493	2020-06-16 12:40:19.258493
2933	98	3	339	762	2020-06-16 12:40:19.273925	2020-06-16 12:40:19.273925
2934	35	2	340	193	2020-06-16 12:40:19.281366	2020-06-16 12:40:19.281366
2935	26	3	340	459	2020-06-16 12:40:19.303126	2020-06-16 12:40:19.303126
2936	59	2	340	176	2020-06-16 12:40:19.307833	2020-06-16 12:40:19.307833
2937	43	1	340	70	2020-06-16 12:40:19.33033	2020-06-16 12:40:19.33033
2938	60	1	340	119	2020-06-16 12:40:19.334453	2020-06-16 12:40:19.334453
2939	30	2	340	561	2020-06-16 12:40:19.339916	2020-06-16 12:40:19.339916
2940	31	5	340	502	2020-06-16 12:40:19.34856	2020-06-16 12:40:19.34856
2941	31	5	341	770	2020-06-16 12:40:19.352989	2020-06-16 12:40:19.352989
2942	27	5	342	410	2020-06-16 12:40:19.35786	2020-06-16 12:40:19.35786
2943	73	2	342	305	2020-06-16 12:40:19.361679	2020-06-16 12:40:19.361679
2944	16	5	342	594	2020-06-16 12:40:19.365738	2020-06-16 12:40:19.365738
2945	92	1	342	216	2020-06-16 12:40:19.371547	2020-06-16 12:40:19.371547
2946	72	2	342	625	2020-06-16 12:40:19.381603	2020-06-16 12:40:19.381603
2947	68	5	342	75	2020-06-16 12:40:19.386343	2020-06-16 12:40:19.386343
2948	19	4	342	226	2020-06-16 12:40:19.391267	2020-06-16 12:40:19.391267
2949	46	2	342	10	2020-06-16 12:40:19.39664	2020-06-16 12:40:19.39664
2950	23	3	342	596	2020-06-16 12:40:19.400828	2020-06-16 12:40:19.400828
2951	19	1	342	692	2020-06-16 12:40:19.405216	2020-06-16 12:40:19.405216
2952	58	2	343	526	2020-06-16 12:40:19.409677	2020-06-16 12:40:19.409677
2953	7	1	344	429	2020-06-16 12:40:19.414533	2020-06-16 12:40:19.414533
2954	58	4	344	332	2020-06-16 12:40:19.41974	2020-06-16 12:40:19.41974
2955	84	3	345	71	2020-06-16 12:40:19.424696	2020-06-16 12:40:19.424696
2956	41	3	345	221	2020-06-16 12:40:19.428882	2020-06-16 12:40:19.428882
2957	25	5	345	289	2020-06-16 12:40:19.43273	2020-06-16 12:40:19.43273
2958	24	2	345	382	2020-06-16 12:40:19.437837	2020-06-16 12:40:19.437837
2959	96	5	345	388	2020-06-16 12:40:19.442882	2020-06-16 12:40:19.442882
2960	44	3	346	287	2020-06-16 12:40:19.446823	2020-06-16 12:40:19.446823
2961	56	1	346	307	2020-06-16 12:40:19.451004	2020-06-16 12:40:19.451004
2962	75	1	346	156	2020-06-16 12:40:19.455179	2020-06-16 12:40:19.455179
2963	55	4	346	765	2020-06-16 12:40:19.459739	2020-06-16 12:40:19.459739
2964	71	5	346	782	2020-06-16 12:40:19.463769	2020-06-16 12:40:19.463769
2965	85	5	346	234	2020-06-16 12:40:19.467847	2020-06-16 12:40:19.467847
2966	63	2	346	47	2020-06-16 12:40:19.473015	2020-06-16 12:40:19.473015
2967	18	5	346	10	2020-06-16 12:40:19.47807	2020-06-16 12:40:19.47807
2968	12	3	346	523	2020-06-16 12:40:19.482325	2020-06-16 12:40:19.482325
2969	49	5	347	189	2020-06-16 12:40:19.488568	2020-06-16 12:40:19.488568
2970	15	3	347	478	2020-06-16 12:40:19.494026	2020-06-16 12:40:19.494026
2971	70	3	347	767	2020-06-16 12:40:19.499121	2020-06-16 12:40:19.499121
2972	70	2	347	222	2020-06-16 12:40:19.503221	2020-06-16 12:40:19.503221
2973	57	3	347	19	2020-06-16 12:40:19.507792	2020-06-16 12:40:19.507792
2974	58	5	347	116	2020-06-16 12:40:19.512042	2020-06-16 12:40:19.512042
2975	22	3	348	268	2020-06-16 12:40:19.516444	2020-06-16 12:40:19.516444
2976	53	4	349	728	2020-06-16 12:40:19.520635	2020-06-16 12:40:19.520635
2977	66	3	349	678	2020-06-16 12:40:19.52515	2020-06-16 12:40:19.52515
2978	94	3	349	129	2020-06-16 12:40:19.529368	2020-06-16 12:40:19.529368
2979	76	5	349	497	2020-06-16 12:40:19.53349	2020-06-16 12:40:19.53349
2980	77	3	349	27	2020-06-16 12:40:19.537909	2020-06-16 12:40:19.537909
2981	75	4	349	206	2020-06-16 12:40:19.542377	2020-06-16 12:40:19.542377
2982	84	3	349	712	2020-06-16 12:40:19.546458	2020-06-16 12:40:19.546458
2983	59	1	349	393	2020-06-16 12:40:19.55067	2020-06-16 12:40:19.55067
2984	36	1	349	665	2020-06-16 12:40:19.554716	2020-06-16 12:40:19.554716
2985	37	1	349	752	2020-06-16 12:40:19.559115	2020-06-16 12:40:19.559115
2986	95	5	350	581	2020-06-16 12:40:19.563474	2020-06-16 12:40:19.563474
2987	12	3	350	722	2020-06-16 12:40:19.568666	2020-06-16 12:40:19.568666
2988	38	4	350	536	2020-06-16 12:40:19.573844	2020-06-16 12:40:19.573844
2989	60	2	350	10	2020-06-16 12:40:19.5781	2020-06-16 12:40:19.5781
2990	21	4	350	540	2020-06-16 12:40:19.582164	2020-06-16 12:40:19.582164
2991	23	2	350	363	2020-06-16 12:40:19.586475	2020-06-16 12:40:19.586475
2992	58	2	350	635	2020-06-16 12:40:19.590971	2020-06-16 12:40:19.590971
2993	16	5	350	696	2020-06-16 12:40:19.595856	2020-06-16 12:40:19.595856
2994	41	5	350	351	2020-06-16 12:40:19.599925	2020-06-16 12:40:19.599925
2995	38	5	350	710	2020-06-16 12:40:19.604311	2020-06-16 12:40:19.604311
2996	91	2	351	518	2020-06-16 12:40:19.608816	2020-06-16 12:40:19.608816
2997	72	5	351	78	2020-06-16 12:40:19.612765	2020-06-16 12:40:19.612765
2998	2	5	351	683	2020-06-16 12:40:19.616878	2020-06-16 12:40:19.616878
2999	53	4	351	197	2020-06-16 12:40:19.621007	2020-06-16 12:40:19.621007
3000	59	4	351	525	2020-06-16 12:40:19.625198	2020-06-16 12:40:19.625198
3001	80	5	351	517	2020-06-16 12:40:19.629308	2020-06-16 12:40:19.629308
3002	54	3	351	502	2020-06-16 12:40:19.63305	2020-06-16 12:40:19.63305
3003	47	3	351	113	2020-06-16 12:40:19.63672	2020-06-16 12:40:19.63672
3004	5	2	351	270	2020-06-16 12:40:19.641277	2020-06-16 12:40:19.641277
3005	47	3	352	542	2020-06-16 12:40:19.645356	2020-06-16 12:40:19.645356
3006	11	4	352	159	2020-06-16 12:40:19.648961	2020-06-16 12:40:19.648961
3007	85	2	353	9	2020-06-16 12:40:19.652805	2020-06-16 12:40:19.652805
3008	37	5	353	472	2020-06-16 12:40:19.657044	2020-06-16 12:40:19.657044
3009	57	3	353	384	2020-06-16 12:40:19.661164	2020-06-16 12:40:19.661164
3010	47	5	354	577	2020-06-16 12:40:19.664989	2020-06-16 12:40:19.664989
3011	6	2	354	87	2020-06-16 12:40:19.669528	2020-06-16 12:40:19.669528
3012	15	4	354	704	2020-06-16 12:40:19.674707	2020-06-16 12:40:19.674707
3013	74	2	354	304	2020-06-16 12:40:19.679168	2020-06-16 12:40:19.679168
3014	52	3	354	105	2020-06-16 12:40:19.683355	2020-06-16 12:40:19.683355
3015	92	4	354	129	2020-06-16 12:40:19.687183	2020-06-16 12:40:19.687183
3016	85	2	354	424	2020-06-16 12:40:19.691079	2020-06-16 12:40:19.691079
3017	36	1	354	83	2020-06-16 12:40:19.695168	2020-06-16 12:40:19.695168
3018	97	3	355	30	2020-06-16 12:40:19.699167	2020-06-16 12:40:19.699167
3019	34	4	356	725	2020-06-16 12:40:19.703082	2020-06-16 12:40:19.703082
3020	83	2	356	592	2020-06-16 12:40:19.706767	2020-06-16 12:40:19.706767
3021	66	4	356	216	2020-06-16 12:40:19.710625	2020-06-16 12:40:19.710625
3022	81	1	357	691	2020-06-16 12:40:19.715485	2020-06-16 12:40:19.715485
3023	63	2	357	226	2020-06-16 12:40:19.719687	2020-06-16 12:40:19.719687
3024	51	2	357	306	2020-06-16 12:40:19.723672	2020-06-16 12:40:19.723672
3025	69	2	357	604	2020-06-16 12:40:19.727624	2020-06-16 12:40:19.727624
3026	48	4	357	574	2020-06-16 12:40:19.731595	2020-06-16 12:40:19.731595
3027	66	2	357	285	2020-06-16 12:40:19.73528	2020-06-16 12:40:19.73528
3028	46	2	357	732	2020-06-16 12:40:19.739331	2020-06-16 12:40:19.739331
3029	60	3	357	799	2020-06-16 12:40:19.746473	2020-06-16 12:40:19.746473
3030	86	2	357	46	2020-06-16 12:40:19.750422	2020-06-16 12:40:19.750422
3031	98	3	358	725	2020-06-16 12:40:19.754193	2020-06-16 12:40:19.754193
3032	53	1	358	128	2020-06-16 12:40:19.758039	2020-06-16 12:40:19.758039
3033	2	5	358	719	2020-06-16 12:40:19.76201	2020-06-16 12:40:19.76201
3034	20	1	358	436	2020-06-16 12:40:19.765864	2020-06-16 12:40:19.765864
3035	79	3	358	98	2020-06-16 12:40:19.769317	2020-06-16 12:40:19.769317
3036	19	2	359	738	2020-06-16 12:40:19.773521	2020-06-16 12:40:19.773521
3037	33	4	359	403	2020-06-16 12:40:19.778047	2020-06-16 12:40:19.778047
3038	20	1	359	58	2020-06-16 12:40:19.781825	2020-06-16 12:40:19.781825
3039	35	3	359	489	2020-06-16 12:40:19.785692	2020-06-16 12:40:19.785692
3040	78	4	359	637	2020-06-16 12:40:19.789502	2020-06-16 12:40:19.789502
3041	86	2	359	105	2020-06-16 12:40:19.793349	2020-06-16 12:40:19.793349
3042	12	5	359	791	2020-06-16 12:40:19.797551	2020-06-16 12:40:19.797551
3043	3	2	360	669	2020-06-16 12:40:19.802297	2020-06-16 12:40:19.802297
3044	38	3	360	529	2020-06-16 12:40:19.806603	2020-06-16 12:40:19.806603
3045	50	1	360	65	2020-06-16 12:40:19.811798	2020-06-16 12:40:19.811798
3046	54	4	360	248	2020-06-16 12:40:19.815652	2020-06-16 12:40:19.815652
3047	90	5	361	651	2020-06-16 12:40:19.820569	2020-06-16 12:40:19.820569
3048	78	3	361	763	2020-06-16 12:40:19.82495	2020-06-16 12:40:19.82495
3049	13	2	361	577	2020-06-16 12:40:19.82885	2020-06-16 12:40:19.82885
3050	32	1	361	602	2020-06-16 12:40:19.832791	2020-06-16 12:40:19.832791
3051	75	3	361	671	2020-06-16 12:40:19.836615	2020-06-16 12:40:19.836615
3052	3	5	361	20	2020-06-16 12:40:19.84017	2020-06-16 12:40:19.84017
3053	74	3	361	494	2020-06-16 12:40:19.845001	2020-06-16 12:40:19.845001
3054	22	1	361	436	2020-06-16 12:40:19.8488	2020-06-16 12:40:19.8488
3055	20	4	361	104	2020-06-16 12:40:19.853115	2020-06-16 12:40:19.853115
3056	14	5	362	674	2020-06-16 12:40:19.856723	2020-06-16 12:40:19.856723
3057	15	4	362	734	2020-06-16 12:40:19.860433	2020-06-16 12:40:19.860433
3058	10	2	362	45	2020-06-16 12:40:19.863654	2020-06-16 12:40:19.863654
3059	96	3	362	657	2020-06-16 12:40:19.867162	2020-06-16 12:40:19.867162
3060	99	4	362	731	2020-06-16 12:40:19.870509	2020-06-16 12:40:19.870509
3061	70	2	363	661	2020-06-16 12:40:19.873919	2020-06-16 12:40:19.873919
3062	5	3	363	160	2020-06-16 12:40:19.877694	2020-06-16 12:40:19.877694
3063	64	2	363	277	2020-06-16 12:40:19.881147	2020-06-16 12:40:19.881147
3064	98	4	363	632	2020-06-16 12:40:19.884566	2020-06-16 12:40:19.884566
3065	5	1	363	751	2020-06-16 12:40:19.888146	2020-06-16 12:40:19.888146
3066	81	5	363	359	2020-06-16 12:40:19.89198	2020-06-16 12:40:19.89198
3067	23	5	363	212	2020-06-16 12:40:19.895427	2020-06-16 12:40:19.895427
3068	3	1	363	73	2020-06-16 12:40:19.898932	2020-06-16 12:40:19.898932
3069	5	1	363	318	2020-06-16 12:40:19.902434	2020-06-16 12:40:19.902434
3070	15	5	364	400	2020-06-16 12:40:19.905877	2020-06-16 12:40:19.905877
3071	37	1	364	390	2020-06-16 12:40:19.90969	2020-06-16 12:40:19.90969
3072	30	3	364	538	2020-06-16 12:40:19.9132	2020-06-16 12:40:19.9132
3073	51	4	364	411	2020-06-16 12:40:19.916781	2020-06-16 12:40:19.916781
3074	74	4	365	308	2020-06-16 12:40:19.920101	2020-06-16 12:40:19.920101
3075	63	5	365	288	2020-06-16 12:40:19.923752	2020-06-16 12:40:19.923752
3076	3	1	365	692	2020-06-16 12:40:19.927299	2020-06-16 12:40:19.927299
3077	3	5	365	126	2020-06-16 12:40:19.931075	2020-06-16 12:40:19.931075
3078	40	5	365	546	2020-06-16 12:40:19.934717	2020-06-16 12:40:19.934717
3079	23	5	366	436	2020-06-16 12:40:19.93877	2020-06-16 12:40:19.93877
3080	70	1	366	689	2020-06-16 12:40:19.943374	2020-06-16 12:40:19.943374
3081	63	1	366	678	2020-06-16 12:40:19.947668	2020-06-16 12:40:19.947668
3082	73	5	366	185	2020-06-16 12:40:19.951908	2020-06-16 12:40:19.951908
3083	65	3	366	634	2020-06-16 12:40:19.956189	2020-06-16 12:40:19.956189
3084	69	4	366	413	2020-06-16 12:40:19.96123	2020-06-16 12:40:19.96123
3085	69	1	366	276	2020-06-16 12:40:19.966307	2020-06-16 12:40:19.966307
3086	59	3	367	355	2020-06-16 12:40:19.971406	2020-06-16 12:40:19.971406
3087	86	1	367	710	2020-06-16 12:40:19.976354	2020-06-16 12:40:19.976354
3088	81	4	367	180	2020-06-16 12:40:19.980671	2020-06-16 12:40:19.980671
3089	17	3	367	493	2020-06-16 12:40:19.984685	2020-06-16 12:40:19.984685
3090	63	1	368	277	2020-06-16 12:40:19.988477	2020-06-16 12:40:19.988477
3091	11	3	368	711	2020-06-16 12:40:19.992355	2020-06-16 12:40:19.992355
3092	37	3	368	236	2020-06-16 12:40:19.996203	2020-06-16 12:40:19.996203
3093	6	1	368	601	2020-06-16 12:40:19.999842	2020-06-16 12:40:19.999842
3094	66	1	368	153	2020-06-16 12:40:20.004654	2020-06-16 12:40:20.004654
3095	46	4	368	182	2020-06-16 12:40:20.010012	2020-06-16 12:40:20.010012
3096	80	4	369	389	2020-06-16 12:40:20.015811	2020-06-16 12:40:20.015811
3097	9	2	369	666	2020-06-16 12:40:20.021398	2020-06-16 12:40:20.021398
3098	10	1	369	527	2020-06-16 12:40:20.03077	2020-06-16 12:40:20.03077
3099	99	5	369	454	2020-06-16 12:40:20.037117	2020-06-16 12:40:20.037117
3100	97	5	369	292	2020-06-16 12:40:20.042425	2020-06-16 12:40:20.042425
3101	93	1	369	142	2020-06-16 12:40:20.047901	2020-06-16 12:40:20.047901
3102	47	1	369	42	2020-06-16 12:40:20.053358	2020-06-16 12:40:20.053358
3103	49	1	369	457	2020-06-16 12:40:20.058768	2020-06-16 12:40:20.058768
3104	13	3	369	220	2020-06-16 12:40:20.06405	2020-06-16 12:40:20.06405
3105	44	5	369	193	2020-06-16 12:40:20.069452	2020-06-16 12:40:20.069452
3106	41	3	370	397	2020-06-16 12:40:20.075165	2020-06-16 12:40:20.075165
3107	93	2	370	524	2020-06-16 12:40:20.080892	2020-06-16 12:40:20.080892
3108	16	1	371	757	2020-06-16 12:40:20.085862	2020-06-16 12:40:20.085862
3109	25	5	371	19	2020-06-16 12:40:20.090196	2020-06-16 12:40:20.090196
3110	85	5	372	338	2020-06-16 12:40:20.093853	2020-06-16 12:40:20.093853
3111	5	1	372	395	2020-06-16 12:40:20.097499	2020-06-16 12:40:20.097499
3112	57	3	372	275	2020-06-16 12:40:20.101231	2020-06-16 12:40:20.101231
3113	86	1	372	389	2020-06-16 12:40:20.10531	2020-06-16 12:40:20.10531
3114	37	5	372	504	2020-06-16 12:40:20.110215	2020-06-16 12:40:20.110215
3115	6	3	372	616	2020-06-16 12:40:20.11451	2020-06-16 12:40:20.11451
3116	43	4	372	511	2020-06-16 12:40:20.119204	2020-06-16 12:40:20.119204
3117	42	3	372	468	2020-06-16 12:40:20.123986	2020-06-16 12:40:20.123986
3118	100	4	372	501	2020-06-16 12:40:20.128525	2020-06-16 12:40:20.128525
3119	76	5	372	760	2020-06-16 12:40:20.134052	2020-06-16 12:40:20.134052
3120	18	3	373	554	2020-06-16 12:40:20.139509	2020-06-16 12:40:20.139509
3121	85	3	373	564	2020-06-16 12:40:20.14509	2020-06-16 12:40:20.14509
3122	11	3	373	67	2020-06-16 12:40:20.150313	2020-06-16 12:40:20.150313
3123	62	3	373	552	2020-06-16 12:40:20.158302	2020-06-16 12:40:20.158302
3124	3	1	374	421	2020-06-16 12:40:20.162697	2020-06-16 12:40:20.162697
3125	79	2	374	506	2020-06-16 12:40:20.166613	2020-06-16 12:40:20.166613
3126	30	2	374	443	2020-06-16 12:40:20.170767	2020-06-16 12:40:20.170767
3127	57	1	374	600	2020-06-16 12:40:20.174816	2020-06-16 12:40:20.174816
3128	48	2	374	267	2020-06-16 12:40:20.178611	2020-06-16 12:40:20.178611
3129	92	5	375	168	2020-06-16 12:40:20.182255	2020-06-16 12:40:20.182255
3130	12	2	375	42	2020-06-16 12:40:20.186327	2020-06-16 12:40:20.186327
3131	7	4	375	494	2020-06-16 12:40:20.190108	2020-06-16 12:40:20.190108
3132	7	3	375	13	2020-06-16 12:40:20.193763	2020-06-16 12:40:20.193763
3133	87	3	375	436	2020-06-16 12:40:20.197453	2020-06-16 12:40:20.197453
3134	10	2	375	636	2020-06-16 12:40:20.201226	2020-06-16 12:40:20.201226
3135	15	4	375	504	2020-06-16 12:40:20.205232	2020-06-16 12:40:20.205232
3136	64	5	376	553	2020-06-16 12:40:20.209508	2020-06-16 12:40:20.209508
3137	68	1	376	126	2020-06-16 12:40:20.213707	2020-06-16 12:40:20.213707
3138	100	2	376	434	2020-06-16 12:40:20.217407	2020-06-16 12:40:20.217407
3139	78	5	376	185	2020-06-16 12:40:20.220914	2020-06-16 12:40:20.220914
3140	15	3	376	601	2020-06-16 12:40:20.22459	2020-06-16 12:40:20.22459
3141	90	1	376	311	2020-06-16 12:40:20.228254	2020-06-16 12:40:20.228254
3142	27	2	376	615	2020-06-16 12:40:20.231712	2020-06-16 12:40:20.231712
3143	90	4	376	738	2020-06-16 12:40:20.235273	2020-06-16 12:40:20.235273
3144	3	2	376	237	2020-06-16 12:40:20.239022	2020-06-16 12:40:20.239022
3145	75	3	377	793	2020-06-16 12:40:20.242815	2020-06-16 12:40:20.242815
3146	1	3	378	619	2020-06-16 12:40:20.246459	2020-06-16 12:40:20.246459
3147	14	1	378	257	2020-06-16 12:40:20.250003	2020-06-16 12:40:20.250003
3148	17	1	378	307	2020-06-16 12:40:20.253738	2020-06-16 12:40:20.253738
3149	18	1	378	754	2020-06-16 12:40:20.258396	2020-06-16 12:40:20.258396
3150	48	4	378	374	2020-06-16 12:40:20.262277	2020-06-16 12:40:20.262277
3151	48	3	378	197	2020-06-16 12:40:20.265919	2020-06-16 12:40:20.265919
3152	95	5	378	702	2020-06-16 12:40:20.269637	2020-06-16 12:40:20.269637
3153	51	3	379	617	2020-06-16 12:40:20.272938	2020-06-16 12:40:20.272938
3154	23	4	379	764	2020-06-16 12:40:20.276306	2020-06-16 12:40:20.276306
3155	80	1	379	506	2020-06-16 12:40:20.279543	2020-06-16 12:40:20.279543
3156	98	3	379	279	2020-06-16 12:40:20.282961	2020-06-16 12:40:20.282961
3157	45	5	379	519	2020-06-16 12:40:20.286921	2020-06-16 12:40:20.286921
3158	46	2	379	162	2020-06-16 12:40:20.290383	2020-06-16 12:40:20.290383
3159	26	3	379	333	2020-06-16 12:40:20.293783	2020-06-16 12:40:20.293783
3160	98	3	380	302	2020-06-16 12:40:20.296976	2020-06-16 12:40:20.296976
3161	92	4	380	500	2020-06-16 12:40:20.300452	2020-06-16 12:40:20.300452
3162	76	4	380	278	2020-06-16 12:40:20.30389	2020-06-16 12:40:20.30389
3163	51	4	380	21	2020-06-16 12:40:20.307276	2020-06-16 12:40:20.307276
3164	9	1	380	788	2020-06-16 12:40:20.310633	2020-06-16 12:40:20.310633
3165	21	1	380	142	2020-06-16 12:40:20.314059	2020-06-16 12:40:20.314059
3166	23	5	380	154	2020-06-16 12:40:20.31832	2020-06-16 12:40:20.31832
3167	22	1	381	570	2020-06-16 12:40:20.321932	2020-06-16 12:40:20.321932
3168	67	5	381	741	2020-06-16 12:40:20.325372	2020-06-16 12:40:20.325372
3169	82	2	381	540	2020-06-16 12:40:20.328838	2020-06-16 12:40:20.328838
3170	7	3	381	295	2020-06-16 12:40:20.332499	2020-06-16 12:40:20.332499
3171	57	4	381	717	2020-06-16 12:40:20.335868	2020-06-16 12:40:20.335868
3172	63	5	381	471	2020-06-16 12:40:20.339179	2020-06-16 12:40:20.339179
3173	9	3	381	184	2020-06-16 12:40:20.343013	2020-06-16 12:40:20.343013
3174	84	5	382	355	2020-06-16 12:40:20.34647	2020-06-16 12:40:20.34647
3175	81	4	382	789	2020-06-16 12:40:20.349723	2020-06-16 12:40:20.349723
3176	66	2	382	748	2020-06-16 12:40:20.353215	2020-06-16 12:40:20.353215
3177	10	4	383	256	2020-06-16 12:40:20.356674	2020-06-16 12:40:20.356674
3178	26	2	383	784	2020-06-16 12:40:20.359925	2020-06-16 12:40:20.359925
3179	36	3	383	641	2020-06-16 12:40:20.363166	2020-06-16 12:40:20.363166
3180	80	4	383	397	2020-06-16 12:40:20.366031	2020-06-16 12:40:20.366031
3181	16	3	383	456	2020-06-16 12:40:20.368944	2020-06-16 12:40:20.368944
3182	11	4	383	648	2020-06-16 12:40:20.372033	2020-06-16 12:40:20.372033
3183	31	1	384	662	2020-06-16 12:40:20.375324	2020-06-16 12:40:20.375324
3184	9	2	385	104	2020-06-16 12:40:20.37863	2020-06-16 12:40:20.37863
3185	4	4	385	205	2020-06-16 12:40:20.381921	2020-06-16 12:40:20.381921
3186	90	5	385	286	2020-06-16 12:40:20.385099	2020-06-16 12:40:20.385099
3187	3	3	385	782	2020-06-16 12:40:20.388656	2020-06-16 12:40:20.388656
3188	92	4	386	514	2020-06-16 12:40:20.392716	2020-06-16 12:40:20.392716
3189	61	4	386	677	2020-06-16 12:40:20.396339	2020-06-16 12:40:20.396339
3190	84	2	386	655	2020-06-16 12:40:20.3998	2020-06-16 12:40:20.3998
3191	77	5	386	195	2020-06-16 12:40:20.403286	2020-06-16 12:40:20.403286
3192	76	4	386	213	2020-06-16 12:40:20.406722	2020-06-16 12:40:20.406722
3193	61	5	386	658	2020-06-16 12:40:20.410069	2020-06-16 12:40:20.410069
3194	94	2	386	595	2020-06-16 12:40:20.413584	2020-06-16 12:40:20.413584
3195	96	5	386	122	2020-06-16 12:40:20.417515	2020-06-16 12:40:20.417515
3196	23	3	387	626	2020-06-16 12:40:20.421367	2020-06-16 12:40:20.421367
3197	81	4	387	621	2020-06-16 12:40:20.42514	2020-06-16 12:40:20.42514
3198	64	5	387	341	2020-06-16 12:40:20.429005	2020-06-16 12:40:20.429005
3199	92	4	387	27	2020-06-16 12:40:20.433028	2020-06-16 12:40:20.433028
3200	73	4	387	30	2020-06-16 12:40:20.436525	2020-06-16 12:40:20.436525
3201	1	4	388	432	2020-06-16 12:40:20.439786	2020-06-16 12:40:20.439786
3202	80	2	388	672	2020-06-16 12:40:20.443124	2020-06-16 12:40:20.443124
3203	80	5	388	87	2020-06-16 12:40:20.446439	2020-06-16 12:40:20.446439
3204	53	1	388	533	2020-06-16 12:40:20.449658	2020-06-16 12:40:20.449658
3205	28	2	388	680	2020-06-16 12:40:20.452887	2020-06-16 12:40:20.452887
3206	91	2	388	402	2020-06-16 12:40:20.455906	2020-06-16 12:40:20.455906
3207	67	4	388	26	2020-06-16 12:40:20.458878	2020-06-16 12:40:20.458878
3208	31	1	388	381	2020-06-16 12:40:20.462127	2020-06-16 12:40:20.462127
3209	39	2	389	144	2020-06-16 12:40:20.465465	2020-06-16 12:40:20.465465
3210	58	2	390	444	2020-06-16 12:40:20.468948	2020-06-16 12:40:20.468948
3211	14	4	390	773	2020-06-16 12:40:20.472434	2020-06-16 12:40:20.472434
3212	17	1	390	760	2020-06-16 12:40:20.479314	2020-06-16 12:40:20.479314
3213	50	4	390	518	2020-06-16 12:40:20.483166	2020-06-16 12:40:20.483166
3214	80	4	390	312	2020-06-16 12:40:20.4871	2020-06-16 12:40:20.4871
3215	30	4	390	343	2020-06-16 12:40:20.49117	2020-06-16 12:40:20.49117
3216	28	5	390	161	2020-06-16 12:40:20.495879	2020-06-16 12:40:20.495879
3217	18	5	391	598	2020-06-16 12:40:20.500662	2020-06-16 12:40:20.500662
3218	7	5	391	517	2020-06-16 12:40:20.505736	2020-06-16 12:40:20.505736
3219	26	3	392	562	2020-06-16 12:40:20.51105	2020-06-16 12:40:20.51105
3220	9	1	392	105	2020-06-16 12:40:20.516595	2020-06-16 12:40:20.516595
3221	41	4	392	24	2020-06-16 12:40:20.521231	2020-06-16 12:40:20.521231
3222	1	3	392	386	2020-06-16 12:40:20.52606	2020-06-16 12:40:20.52606
3223	93	1	392	765	2020-06-16 12:40:20.531087	2020-06-16 12:40:20.531087
3224	99	1	392	574	2020-06-16 12:40:20.536122	2020-06-16 12:40:20.536122
3225	57	1	392	343	2020-06-16 12:40:20.54087	2020-06-16 12:40:20.54087
3226	8	1	392	501	2020-06-16 12:40:20.545643	2020-06-16 12:40:20.545643
3227	49	5	392	672	2020-06-16 12:40:20.550488	2020-06-16 12:40:20.550488
3228	18	5	392	406	2020-06-16 12:40:20.554878	2020-06-16 12:40:20.554878
3229	81	3	393	657	2020-06-16 12:40:20.559033	2020-06-16 12:40:20.559033
3230	31	5	393	314	2020-06-16 12:40:20.562977	2020-06-16 12:40:20.562977
3231	75	1	393	110	2020-06-16 12:40:20.568214	2020-06-16 12:40:20.568214
3232	19	2	393	656	2020-06-16 12:40:20.574036	2020-06-16 12:40:20.574036
3233	40	3	393	136	2020-06-16 12:40:20.578959	2020-06-16 12:40:20.578959
3234	20	1	394	764	2020-06-16 12:40:20.58584	2020-06-16 12:40:20.58584
3235	22	2	394	124	2020-06-16 12:40:20.59056	2020-06-16 12:40:20.59056
3236	37	5	394	195	2020-06-16 12:40:20.594914	2020-06-16 12:40:20.594914
3237	49	2	394	405	2020-06-16 12:40:20.598798	2020-06-16 12:40:20.598798
3238	68	1	395	523	2020-06-16 12:40:20.602933	2020-06-16 12:40:20.602933
3239	20	4	395	332	2020-06-16 12:40:20.607278	2020-06-16 12:40:20.607278
3240	86	2	395	245	2020-06-16 12:40:20.612433	2020-06-16 12:40:20.612433
3241	13	2	395	472	2020-06-16 12:40:20.616763	2020-06-16 12:40:20.616763
3242	98	4	395	630	2020-06-16 12:40:20.620854	2020-06-16 12:40:20.620854
3243	22	1	396	616	2020-06-16 12:40:20.625015	2020-06-16 12:40:20.625015
3244	61	1	396	471	2020-06-16 12:40:20.629249	2020-06-16 12:40:20.629249
3245	86	5	397	755	2020-06-16 12:40:20.633284	2020-06-16 12:40:20.633284
3246	13	3	397	309	2020-06-16 12:40:20.637442	2020-06-16 12:40:20.637442
3247	12	1	397	192	2020-06-16 12:40:20.641501	2020-06-16 12:40:20.641501
3248	3	3	397	710	2020-06-16 12:40:20.645318	2020-06-16 12:40:20.645318
3249	19	4	397	634	2020-06-16 12:40:20.64907	2020-06-16 12:40:20.64907
3250	61	4	397	792	2020-06-16 12:40:20.652674	2020-06-16 12:40:20.652674
3251	23	1	397	230	2020-06-16 12:40:20.656648	2020-06-16 12:40:20.656648
3252	44	4	398	468	2020-06-16 12:40:20.661919	2020-06-16 12:40:20.661919
3253	76	2	398	792	2020-06-16 12:40:20.667808	2020-06-16 12:40:20.667808
3254	16	3	398	629	2020-06-16 12:40:20.672967	2020-06-16 12:40:20.672967
3255	93	1	398	88	2020-06-16 12:40:20.679313	2020-06-16 12:40:20.679313
3256	62	1	398	90	2020-06-16 12:40:20.686516	2020-06-16 12:40:20.686516
3257	75	2	398	176	2020-06-16 12:40:20.693764	2020-06-16 12:40:20.693764
3258	60	5	398	246	2020-06-16 12:40:20.700132	2020-06-16 12:40:20.700132
3259	79	2	398	720	2020-06-16 12:40:20.707837	2020-06-16 12:40:20.707837
3260	46	2	398	285	2020-06-16 12:40:20.713094	2020-06-16 12:40:20.713094
3261	28	2	398	781	2020-06-16 12:40:20.717229	2020-06-16 12:40:20.717229
3262	83	5	399	441	2020-06-16 12:40:20.721678	2020-06-16 12:40:20.721678
3263	66	2	399	471	2020-06-16 12:40:20.726496	2020-06-16 12:40:20.726496
3264	8	3	399	548	2020-06-16 12:40:20.731857	2020-06-16 12:40:20.731857
3265	29	1	399	358	2020-06-16 12:40:20.736538	2020-06-16 12:40:20.736538
3266	22	4	400	602	2020-06-16 12:40:20.741239	2020-06-16 12:40:20.741239
3267	45	2	400	766	2020-06-16 12:40:20.745747	2020-06-16 12:40:20.745747
3268	13	2	400	486	2020-06-16 12:40:20.749712	2020-06-16 12:40:20.749712
3269	99	1	400	755	2020-06-16 12:40:20.755092	2020-06-16 12:40:20.755092
3270	76	4	400	495	2020-06-16 12:40:20.760401	2020-06-16 12:40:20.760401
3271	86	1	400	301	2020-06-16 12:40:20.765212	2020-06-16 12:40:20.765212
3272	82	4	400	274	2020-06-16 12:40:20.769453	2020-06-16 12:40:20.769453
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY countries (id, name, capital, region, population, area, created_at, updated_at) FROM stdin;
1	Bermuda	Hamilton	Americas	64237	54	2020-06-16 12:40:05.501865	2020-06-16 12:40:05.501865
2	Chile	Santiago	Americas	18006407	756102	2020-06-16 12:40:05.505055	2020-06-16 12:40:05.505055
3	East Timor	Dili	Asia	1212107	14874	2020-06-16 12:40:05.506552	2020-06-16 12:40:05.506552
4	Rwanda	Kigali	Africa	11262564	26338	2020-06-16 12:40:05.508171	2020-06-16 12:40:05.508171
5	Oman	Muscat	Asia	4185440	309500	2020-06-16 12:40:05.509654	2020-06-16 12:40:05.509654
6	Qatar	Doha	Asia	2120129	11586	2020-06-16 12:40:05.511175	2020-06-16 12:40:05.511175
7	Guernsey	St. Peter Port	Europe	65150	78	2020-06-16 12:40:05.512631	2020-06-16 12:40:05.512631
8	Panama	Panama City	Americas	3764166	75417	2020-06-16 12:40:05.514028	2020-06-16 12:40:05.514028
9	Saint Helena	Jamestown	Africa	4255	\N	2020-06-16 12:40:05.515502	2020-06-16 12:40:05.515502
10	Netherlands	Amsterdam	Europe	16916000	41850	2020-06-16 12:40:05.517072	2020-06-16 12:40:05.517072
11	Jamaica	Kingston	Americas	2717991	10991	2020-06-16 12:40:05.51848	2020-06-16 12:40:05.51848
12	Cook Islands	Avarua	Oceania	14974	236	2020-06-16 12:40:05.519983	2020-06-16 12:40:05.519983
13	Central African Republic	Bangui	Africa	4900000	622984	2020-06-16 12:40:05.521434	2020-06-16 12:40:05.521434
14	Lesotho	Maseru	Africa	2135000	30355	2020-06-16 12:40:05.522738	2020-06-16 12:40:05.522738
15	Israel	Jerusalem	Asia	8371600	20770	2020-06-16 12:40:05.524281	2020-06-16 12:40:05.524281
16	New Caledonia	Nouméa	Oceania	268767	18575	2020-06-16 12:40:05.525629	2020-06-16 12:40:05.525629
17	Maldives	Malé	Asia	341256	300	2020-06-16 12:40:05.526991	2020-06-16 12:40:05.526991
18	Guatemala	Guatemala City	Americas	16176133	108889	2020-06-16 12:40:05.529104	2020-06-16 12:40:05.529104
19	Sri Lanka	Colombo	Asia	20675000	65610	2020-06-16 12:40:05.531469	2020-06-16 12:40:05.531469
20	Democratic Republic of the Congo	Kinshasa	Africa	77267000	2344858	2020-06-16 12:40:05.53332	2020-06-16 12:40:05.53332
21	Sierra Leone	Freetown	Africa	6453000	71740	2020-06-16 12:40:05.535152	2020-06-16 12:40:05.535152
22	Christmas Island	Flying Fish Cove	Oceania	2072	135	2020-06-16 12:40:05.536796	2020-06-16 12:40:05.536796
23	France	Paris	Europe	66186000	640679	2020-06-16 12:40:05.538386	2020-06-16 12:40:05.538386
24	United Kingdom	London	Europe	64800000	242900	2020-06-16 12:40:05.539953	2020-06-16 12:40:05.539953
25	Burundi	Bujumbura	Africa	9823827	27834	2020-06-16 12:40:05.541547	2020-06-16 12:40:05.541547
26	Greenland	Nuuk	Americas	56114	2166086	2020-06-16 12:40:05.543127	2020-06-16 12:40:05.543127
27	Kyrgyzstan	Bishkek	Asia	5944400	199951	2020-06-16 12:40:05.544769	2020-06-16 12:40:05.544769
28	Tonga	Nuku'alofa	Oceania	103252	747	2020-06-16 12:40:05.5463	2020-06-16 12:40:05.5463
29	Tajikistan	Dushanbe	Asia	8354000	143100	2020-06-16 12:40:05.547684	2020-06-16 12:40:05.547684
30	Spain	Madrid	Europe	46439864	505992	2020-06-16 12:40:05.549086	2020-06-16 12:40:05.549086
31	Martinique	Fort-de-France	Americas	381326	\N	2020-06-16 12:40:05.550577	2020-06-16 12:40:05.550577
32	Niger	Niamey	Africa	19899000	1267000	2020-06-16 12:40:05.555763	2020-06-16 12:40:05.555763
33	Madagascar	Antananarivo	Africa	22434363	587041	2020-06-16 12:40:05.557327	2020-06-16 12:40:05.557327
34	French Southern and Antarctic Lands	Port-aux-Français	Africa	140	7747	2020-06-16 12:40:05.558746	2020-06-16 12:40:05.558746
35	Moldova	Chișinău	Europe	3555200	33846	2020-06-16 12:40:05.560215	2020-06-16 12:40:05.560215
36	Bouvet Island			0	49	2020-06-16 12:40:05.561704	2020-06-16 12:40:05.561704
37	Aruba	Oranjestad	Americas	107394	180	2020-06-16 12:40:05.563145	2020-06-16 12:40:05.563145
38	Montserrat	Plymouth	Americas	4922	102	2020-06-16 12:40:05.564602	2020-06-16 12:40:05.564602
39	Tokelau	Fakaofo	Oceania	1411	12	2020-06-16 12:40:05.566022	2020-06-16 12:40:05.566022
40	Isle of Man	Douglas	Europe	84497	572	2020-06-16 12:40:05.567418	2020-06-16 12:40:05.567418
41	Pitcairn Islands	Adamstown	Oceania	56	47	2020-06-16 12:40:05.568827	2020-06-16 12:40:05.568827
42	Poland	Warsaw	Europe	38484000	312679	2020-06-16 12:40:05.570233	2020-06-16 12:40:05.570233
43	Venezuela	Caracas	Americas	30620404	916445	2020-06-16 12:40:05.571542	2020-06-16 12:40:05.571542
44	Saint Lucia	Castries	Americas	185000	616	2020-06-16 12:40:05.572839	2020-06-16 12:40:05.572839
45	Canada	Ottawa	Americas	35749600	9984670	2020-06-16 12:40:05.57412	2020-06-16 12:40:05.57412
46	Bhutan	Thimphu	Asia	763920	38394	2020-06-16 12:40:05.575393	2020-06-16 12:40:05.575393
47	South Georgia	King Edward Point	Americas	30	\N	2020-06-16 12:40:05.576683	2020-06-16 12:40:05.576683
48	Mali	Bamako	Africa	17600000	1240192	2020-06-16 12:40:05.57802	2020-06-16 12:40:05.57802
49	Malaysia	Kuala Lumpur	Asia	30678800	330803	2020-06-16 12:40:05.581427	2020-06-16 12:40:05.581427
50	Saint Martin	Marigot	Americas	36979	53	2020-06-16 12:40:05.583239	2020-06-16 12:40:05.583239
51	Burundi	Bujumbura	Africa	9823827	27834	2020-06-16 12:40:05.584656	2020-06-16 12:40:05.584656
52	Greenland	Nuuk	Americas	56114	2166086	2020-06-16 12:40:05.586238	2020-06-16 12:40:05.586238
53	Malawi	Lilongwe	Africa	16310431	118484	2020-06-16 12:40:05.58779	2020-06-16 12:40:05.58779
54	Liberia	Monrovia	Africa	4503000	111369	2020-06-16 12:40:05.589266	2020-06-16 12:40:05.589266
55	Israel	Jerusalem	Asia	8371600	20770	2020-06-16 12:40:05.590749	2020-06-16 12:40:05.590749
56	French Polynesia	Papeetē	Oceania	268270	4167	2020-06-16 12:40:05.592289	2020-06-16 12:40:05.592289
57	Nigeria	Abuja	Africa	182202000	923768	2020-06-16 12:40:05.593755	2020-06-16 12:40:05.593755
58	United Arab Emirates	Abu Dhabi	Asia	9157000	83600	2020-06-16 12:40:05.595231	2020-06-16 12:40:05.595231
59	Brunei	Bandar Seri Begawan	Asia	393372	5765	2020-06-16 12:40:05.596667	2020-06-16 12:40:05.596667
60	French Southern and Antarctic Lands	Port-aux-Français	Africa	140	7747	2020-06-16 12:40:05.59806	2020-06-16 12:40:05.59806
61	Latvia	Riga	Europe	1980700	64559	2020-06-16 12:40:05.599492	2020-06-16 12:40:05.599492
62	Guadeloupe	Basse-Terre	Americas	403750	\N	2020-06-16 12:40:05.600951	2020-06-16 12:40:05.600951
63	Panama	Panama City	Americas	3764166	75417	2020-06-16 12:40:05.602395	2020-06-16 12:40:05.602395
64	Poland	Warsaw	Europe	38484000	312679	2020-06-16 12:40:05.603921	2020-06-16 12:40:05.603921
65	Mongolia	Ulan Bator	Asia	3031099	1564110	2020-06-16 12:40:05.605395	2020-06-16 12:40:05.605395
66	Algeria	Algiers	Africa	39500000	2381741	2020-06-16 12:40:05.606845	2020-06-16 12:40:05.606845
67	Monaco	Monaco	Europe	37800	2	2020-06-16 12:40:05.608311	2020-06-16 12:40:05.608311
68	Switzerland	Bern	Europe	8256000	41284	2020-06-16 12:40:05.609795	2020-06-16 12:40:05.609795
69	India	New Delhi	Asia	1275840000	3287590	2020-06-16 12:40:05.611273	2020-06-16 12:40:05.611273
70	Guernsey	St. Peter Port	Europe	65150	78	2020-06-16 12:40:05.612763	2020-06-16 12:40:05.612763
71	Niger	Niamey	Africa	19899000	1267000	2020-06-16 12:40:05.614219	2020-06-16 12:40:05.614219
72	Sierra Leone	Freetown	Africa	6453000	71740	2020-06-16 12:40:05.615696	2020-06-16 12:40:05.615696
73	Republic of Ireland	Dublin	Europe	6378000	70273	2020-06-16 12:40:05.617177	2020-06-16 12:40:05.617177
74	Tanzania	Dodoma	Africa	53470000	945087	2020-06-16 12:40:05.618748	2020-06-16 12:40:05.618748
75	Germany	Berlin	Europe	81083600	357114	2020-06-16 12:40:05.620257	2020-06-16 12:40:05.620257
76	Saint Pierre and Miquelon	Saint-Pierre	Americas	6069	242	2020-06-16 12:40:05.621748	2020-06-16 12:40:05.621748
77	Marshall Islands	Majuro	Oceania	56086	181	2020-06-16 12:40:05.623183	2020-06-16 12:40:05.623183
78	Uruguay	Montevideo	Americas	3415866	181034	2020-06-16 12:40:05.624555	2020-06-16 12:40:05.624555
79	Philippines	Manila	Asia	101920000	342353	2020-06-16 12:40:05.625969	2020-06-16 12:40:05.625969
80	Faroe Islands	Tórshavn	Europe	48846	1393	2020-06-16 12:40:05.627326	2020-06-16 12:40:05.627326
81	Jersey	Saint Helier	Europe	99000	116	2020-06-16 12:40:05.62881	2020-06-16 12:40:05.62881
82	Spain	Madrid	Europe	46439864	505992	2020-06-16 12:40:05.630541	2020-06-16 12:40:05.630541
83	Saint Lucia	Castries	Americas	185000	616	2020-06-16 12:40:05.632085	2020-06-16 12:40:05.632085
84	Guyana	Georgetown	Americas	746900	214969	2020-06-16 12:40:05.633735	2020-06-16 12:40:05.633735
85	Lithuania	Vilnius	Europe	2900787	65300	2020-06-16 12:40:05.635938	2020-06-16 12:40:05.635938
86	Albania	Tirana	Europe	2893005	28748	2020-06-16 12:40:05.637882	2020-06-16 12:40:05.637882
87	Serbia	Belgrade	Europe	7114393	88361	2020-06-16 12:40:05.63956	2020-06-16 12:40:05.63956
88	Iran	Tehran	Asia	78572500	1648195	2020-06-16 12:40:05.642214	2020-06-16 12:40:05.642214
89	Brazil	Brasília	Americas	204772000	8515767	2020-06-16 12:40:05.644445	2020-06-16 12:40:05.644445
90	Denmark	Copenhagen	Europe	5678348	43094	2020-06-16 12:40:05.646575	2020-06-16 12:40:05.646575
91	Bolivia	Sucre	Americas	11410651	1098581	2020-06-16 12:40:05.648422	2020-06-16 12:40:05.648422
92	Lebanon	Beirut	Asia	4104000	10452	2020-06-16 12:40:05.650946	2020-06-16 12:40:05.650946
93	Ivory Coast	Yamoussoukro	Africa	22671331	322463	2020-06-16 12:40:05.652786	2020-06-16 12:40:05.652786
94	Guinea	Conakry	Africa	10628972	245857	2020-06-16 12:40:05.654991	2020-06-16 12:40:05.654991
95	Malaysia	Kuala Lumpur	Asia	30678800	330803	2020-06-16 12:40:05.656745	2020-06-16 12:40:05.656745
96	Tunisia	Tunis	Africa	10982754	163610	2020-06-16 12:40:05.659372	2020-06-16 12:40:05.659372
97	Comoros	Moroni	Africa	784745	1862	2020-06-16 12:40:05.661993	2020-06-16 12:40:05.661993
98	Andorra	Andorra la Vella	Europe	76949	468	2020-06-16 12:40:05.663796	2020-06-16 12:40:05.663796
99	Northern Mariana Islands	Saipan	Oceania	53883	464	2020-06-16 12:40:05.665548	2020-06-16 12:40:05.665548
100	The Gambia	Banjul	Africa	1882450	11295	2020-06-16 12:40:05.667968	2020-06-16 12:40:05.667968
\.


--
-- Data for Name: engineer_programming_languages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY engineer_programming_languages (id, proficency, repositories, engineer_id, programming_language_id, created_at, updated_at) FROM stdin;
1	2	71	1	6	2020-06-16 12:40:20.793649	2020-06-16 12:40:20.793649
2	5	9	1	8	2020-06-16 12:40:20.799714	2020-06-16 12:40:20.799714
3	4	61	2	1	2020-06-16 12:40:20.804987	2020-06-16 12:40:20.804987
4	4	27	2	2	2020-06-16 12:40:20.810112	2020-06-16 12:40:20.810112
5	1	90	2	7	2020-06-16 12:40:20.814982	2020-06-16 12:40:20.814982
6	2	41	3	2	2020-06-16 12:40:20.821679	2020-06-16 12:40:20.821679
7	3	14	3	8	2020-06-16 12:40:20.828301	2020-06-16 12:40:20.828301
8	5	8	3	3	2020-06-16 12:40:20.840352	2020-06-16 12:40:20.840352
9	2	52	3	1	2020-06-16 12:40:20.848056	2020-06-16 12:40:20.848056
10	4	96	4	3	2020-06-16 12:40:20.854457	2020-06-16 12:40:20.854457
11	3	86	4	5	2020-06-16 12:40:20.859763	2020-06-16 12:40:20.859763
12	4	78	4	4	2020-06-16 12:40:20.865233	2020-06-16 12:40:20.865233
13	2	40	5	3	2020-06-16 12:40:20.876808	2020-06-16 12:40:20.876808
14	1	21	5	8	2020-06-16 12:40:20.881768	2020-06-16 12:40:20.881768
15	2	73	5	4	2020-06-16 12:40:20.886634	2020-06-16 12:40:20.886634
16	4	66	5	5	2020-06-16 12:40:20.894823	2020-06-16 12:40:20.894823
17	3	15	6	2	2020-06-16 12:40:20.910963	2020-06-16 12:40:20.910963
18	2	39	7	3	2020-06-16 12:40:20.91804	2020-06-16 12:40:20.91804
19	3	93	7	6	2020-06-16 12:40:20.922007	2020-06-16 12:40:20.922007
20	1	35	8	3	2020-06-16 12:40:20.926208	2020-06-16 12:40:20.926208
21	3	71	9	1	2020-06-16 12:40:20.93007	2020-06-16 12:40:20.93007
22	5	62	9	3	2020-06-16 12:40:20.933715	2020-06-16 12:40:20.933715
23	4	32	9	8	2020-06-16 12:40:20.936955	2020-06-16 12:40:20.936955
24	1	90	9	4	2020-06-16 12:40:20.940247	2020-06-16 12:40:20.940247
25	3	15	10	1	2020-06-16 12:40:20.943107	2020-06-16 12:40:20.943107
26	1	28	10	4	2020-06-16 12:40:20.946115	2020-06-16 12:40:20.946115
27	5	41	10	2	2020-06-16 12:40:20.949066	2020-06-16 12:40:20.949066
28	3	99	11	7	2020-06-16 12:40:20.952019	2020-06-16 12:40:20.952019
29	4	31	11	1	2020-06-16 12:40:20.95501	2020-06-16 12:40:20.95501
30	5	41	11	4	2020-06-16 12:40:20.958272	2020-06-16 12:40:20.958272
31	2	98	12	3	2020-06-16 12:40:20.961412	2020-06-16 12:40:20.961412
32	3	91	12	6	2020-06-16 12:40:20.964484	2020-06-16 12:40:20.964484
33	1	47	13	4	2020-06-16 12:40:20.967574	2020-06-16 12:40:20.967574
34	1	34	13	8	2020-06-16 12:40:20.970698	2020-06-16 12:40:20.970698
35	1	41	13	3	2020-06-16 12:40:20.973849	2020-06-16 12:40:20.973849
36	1	71	13	6	2020-06-16 12:40:20.976882	2020-06-16 12:40:20.976882
37	2	22	14	1	2020-06-16 12:40:20.979855	2020-06-16 12:40:20.979855
38	4	91	14	7	2020-06-16 12:40:20.982674	2020-06-16 12:40:20.982674
39	4	78	14	4	2020-06-16 12:40:20.985562	2020-06-16 12:40:20.985562
40	2	43	15	1	2020-06-16 12:40:20.988498	2020-06-16 12:40:20.988498
41	3	51	15	2	2020-06-16 12:40:20.99169	2020-06-16 12:40:20.99169
42	3	5	16	1	2020-06-16 12:40:20.994616	2020-06-16 12:40:20.994616
43	4	84	17	5	2020-06-16 12:40:20.997592	2020-06-16 12:40:20.997592
44	5	6	17	2	2020-06-16 12:40:21.000899	2020-06-16 12:40:21.000899
45	1	47	17	7	2020-06-16 12:40:21.005441	2020-06-16 12:40:21.005441
46	1	93	18	6	2020-06-16 12:40:21.00982	2020-06-16 12:40:21.00982
47	4	63	19	4	2020-06-16 12:40:21.014894	2020-06-16 12:40:21.014894
48	2	12	19	2	2020-06-16 12:40:21.019925	2020-06-16 12:40:21.019925
49	2	88	19	1	2020-06-16 12:40:21.025051	2020-06-16 12:40:21.025051
50	3	42	20	5	2020-06-16 12:40:21.029444	2020-06-16 12:40:21.029444
51	1	9	20	1	2020-06-16 12:40:21.033591	2020-06-16 12:40:21.033591
52	5	1	21	6	2020-06-16 12:40:21.038034	2020-06-16 12:40:21.038034
53	1	91	21	5	2020-06-16 12:40:21.042016	2020-06-16 12:40:21.042016
54	4	2	21	2	2020-06-16 12:40:21.045953	2020-06-16 12:40:21.045953
55	3	98	21	1	2020-06-16 12:40:21.050308	2020-06-16 12:40:21.050308
56	5	36	22	1	2020-06-16 12:40:21.054602	2020-06-16 12:40:21.054602
57	5	68	23	1	2020-06-16 12:40:21.058727	2020-06-16 12:40:21.058727
58	2	23	24	6	2020-06-16 12:40:21.062597	2020-06-16 12:40:21.062597
59	4	85	24	3	2020-06-16 12:40:21.066207	2020-06-16 12:40:21.066207
60	2	42	24	2	2020-06-16 12:40:21.069951	2020-06-16 12:40:21.069951
61	5	99	24	8	2020-06-16 12:40:21.073416	2020-06-16 12:40:21.073416
62	2	3	25	8	2020-06-16 12:40:21.077168	2020-06-16 12:40:21.077168
63	2	79	26	8	2020-06-16 12:40:21.081363	2020-06-16 12:40:21.081363
64	2	7	26	1	2020-06-16 12:40:21.08538	2020-06-16 12:40:21.08538
65	1	90	26	6	2020-06-16 12:40:21.089791	2020-06-16 12:40:21.089791
66	5	75	27	7	2020-06-16 12:40:21.094522	2020-06-16 12:40:21.094522
67	2	55	27	8	2020-06-16 12:40:21.098459	2020-06-16 12:40:21.098459
68	3	42	28	8	2020-06-16 12:40:21.102995	2020-06-16 12:40:21.102995
69	1	56	28	4	2020-06-16 12:40:21.107381	2020-06-16 12:40:21.107381
70	2	73	28	3	2020-06-16 12:40:21.111415	2020-06-16 12:40:21.111415
71	2	61	29	1	2020-06-16 12:40:21.115592	2020-06-16 12:40:21.115592
72	1	43	29	6	2020-06-16 12:40:21.119585	2020-06-16 12:40:21.119585
73	1	16	29	2	2020-06-16 12:40:21.123812	2020-06-16 12:40:21.123812
74	1	26	30	1	2020-06-16 12:40:21.128006	2020-06-16 12:40:21.128006
75	3	39	30	3	2020-06-16 12:40:21.1322	2020-06-16 12:40:21.1322
76	3	62	30	6	2020-06-16 12:40:21.136207	2020-06-16 12:40:21.136207
77	3	52	30	2	2020-06-16 12:40:21.14036	2020-06-16 12:40:21.14036
78	5	51	31	8	2020-06-16 12:40:21.144411	2020-06-16 12:40:21.144411
79	5	83	32	1	2020-06-16 12:40:21.148315	2020-06-16 12:40:21.148315
80	3	16	33	1	2020-06-16 12:40:21.151846	2020-06-16 12:40:21.151846
81	5	85	33	4	2020-06-16 12:40:21.155271	2020-06-16 12:40:21.155271
82	2	52	34	1	2020-06-16 12:40:21.158841	2020-06-16 12:40:21.158841
83	1	21	34	4	2020-06-16 12:40:21.162279	2020-06-16 12:40:21.162279
84	1	25	34	6	2020-06-16 12:40:21.166649	2020-06-16 12:40:21.166649
85	4	73	35	2	2020-06-16 12:40:21.17067	2020-06-16 12:40:21.17067
86	1	44	35	7	2020-06-16 12:40:21.175121	2020-06-16 12:40:21.175121
87	5	4	36	5	2020-06-16 12:40:21.179363	2020-06-16 12:40:21.179363
88	5	57	36	3	2020-06-16 12:40:21.183675	2020-06-16 12:40:21.183675
89	5	45	37	6	2020-06-16 12:40:21.18871	2020-06-16 12:40:21.18871
90	2	93	37	8	2020-06-16 12:40:21.194101	2020-06-16 12:40:21.194101
91	2	18	38	2	2020-06-16 12:40:21.199412	2020-06-16 12:40:21.199412
92	4	48	38	4	2020-06-16 12:40:21.204846	2020-06-16 12:40:21.204846
93	2	51	38	7	2020-06-16 12:40:21.210368	2020-06-16 12:40:21.210368
94	5	32	39	4	2020-06-16 12:40:21.215507	2020-06-16 12:40:21.215507
95	3	28	39	8	2020-06-16 12:40:21.220978	2020-06-16 12:40:21.220978
96	5	72	39	7	2020-06-16 12:40:21.226304	2020-06-16 12:40:21.226304
97	4	34	40	2	2020-06-16 12:40:21.231222	2020-06-16 12:40:21.231222
98	2	3	40	3	2020-06-16 12:40:21.235445	2020-06-16 12:40:21.235445
99	4	54	40	6	2020-06-16 12:40:21.239519	2020-06-16 12:40:21.239519
100	5	12	40	4	2020-06-16 12:40:21.244062	2020-06-16 12:40:21.244062
101	3	7	41	8	2020-06-16 12:40:21.24921	2020-06-16 12:40:21.24921
102	5	57	41	7	2020-06-16 12:40:21.254276	2020-06-16 12:40:21.254276
103	5	24	41	1	2020-06-16 12:40:21.259351	2020-06-16 12:40:21.259351
104	5	92	41	6	2020-06-16 12:40:21.264605	2020-06-16 12:40:21.264605
105	4	56	42	5	2020-06-16 12:40:21.269384	2020-06-16 12:40:21.269384
106	4	44	42	1	2020-06-16 12:40:21.273427	2020-06-16 12:40:21.273427
107	3	2	42	4	2020-06-16 12:40:21.2784	2020-06-16 12:40:21.2784
108	3	43	43	6	2020-06-16 12:40:21.283596	2020-06-16 12:40:21.283596
109	2	64	43	2	2020-06-16 12:40:21.289101	2020-06-16 12:40:21.289101
110	3	90	43	3	2020-06-16 12:40:21.293318	2020-06-16 12:40:21.293318
111	4	13	44	2	2020-06-16 12:40:21.297377	2020-06-16 12:40:21.297377
112	3	10	44	5	2020-06-16 12:40:21.301983	2020-06-16 12:40:21.301983
113	5	27	45	2	2020-06-16 12:40:21.306253	2020-06-16 12:40:21.306253
114	3	24	46	2	2020-06-16 12:40:21.310339	2020-06-16 12:40:21.310339
115	5	93	46	7	2020-06-16 12:40:21.314253	2020-06-16 12:40:21.314253
116	5	71	47	1	2020-06-16 12:40:21.318278	2020-06-16 12:40:21.318278
117	1	13	48	8	2020-06-16 12:40:21.321701	2020-06-16 12:40:21.321701
118	4	36	48	3	2020-06-16 12:40:21.324988	2020-06-16 12:40:21.324988
119	4	84	49	7	2020-06-16 12:40:21.328186	2020-06-16 12:40:21.328186
120	5	52	49	8	2020-06-16 12:40:21.331464	2020-06-16 12:40:21.331464
121	5	99	50	1	2020-06-16 12:40:21.334759	2020-06-16 12:40:21.334759
122	5	24	50	3	2020-06-16 12:40:21.338298	2020-06-16 12:40:21.338298
123	3	62	50	8	2020-06-16 12:40:21.342423	2020-06-16 12:40:21.342423
124	4	79	51	4	2020-06-16 12:40:21.346163	2020-06-16 12:40:21.346163
125	4	23	51	6	2020-06-16 12:40:21.349979	2020-06-16 12:40:21.349979
126	1	63	52	6	2020-06-16 12:40:21.35341	2020-06-16 12:40:21.35341
127	5	21	53	4	2020-06-16 12:40:21.357156	2020-06-16 12:40:21.357156
128	3	5	53	8	2020-06-16 12:40:21.360537	2020-06-16 12:40:21.360537
129	3	52	54	1	2020-06-16 12:40:21.363981	2020-06-16 12:40:21.363981
130	5	11	54	2	2020-06-16 12:40:21.367471	2020-06-16 12:40:21.367471
131	1	73	55	3	2020-06-16 12:40:21.370887	2020-06-16 12:40:21.370887
132	5	89	55	4	2020-06-16 12:40:21.37408	2020-06-16 12:40:21.37408
133	1	89	56	7	2020-06-16 12:40:21.377104	2020-06-16 12:40:21.377104
134	1	100	56	1	2020-06-16 12:40:21.380468	2020-06-16 12:40:21.380468
135	3	31	57	8	2020-06-16 12:40:21.383745	2020-06-16 12:40:21.383745
136	4	76	57	7	2020-06-16 12:40:21.386994	2020-06-16 12:40:21.386994
137	5	55	58	8	2020-06-16 12:40:21.390268	2020-06-16 12:40:21.390268
138	4	88	58	1	2020-06-16 12:40:21.393862	2020-06-16 12:40:21.393862
139	5	66	58	3	2020-06-16 12:40:21.397228	2020-06-16 12:40:21.397228
140	1	70	59	1	2020-06-16 12:40:21.400508	2020-06-16 12:40:21.400508
141	1	34	59	8	2020-06-16 12:40:21.403738	2020-06-16 12:40:21.403738
142	3	26	59	2	2020-06-16 12:40:21.406879	2020-06-16 12:40:21.406879
143	3	45	60	6	2020-06-16 12:40:21.410237	2020-06-16 12:40:21.410237
144	5	40	61	1	2020-06-16 12:40:21.413675	2020-06-16 12:40:21.413675
145	1	38	61	7	2020-06-16 12:40:21.417095	2020-06-16 12:40:21.417095
146	5	73	62	3	2020-06-16 12:40:21.420628	2020-06-16 12:40:21.420628
147	2	18	63	8	2020-06-16 12:40:21.424116	2020-06-16 12:40:21.424116
148	4	43	64	2	2020-06-16 12:40:21.427584	2020-06-16 12:40:21.427584
149	5	33	64	3	2020-06-16 12:40:21.431164	2020-06-16 12:40:21.431164
150	1	19	65	4	2020-06-16 12:40:21.435261	2020-06-16 12:40:21.435261
151	5	24	65	7	2020-06-16 12:40:21.439411	2020-06-16 12:40:21.439411
152	4	26	65	5	2020-06-16 12:40:21.442989	2020-06-16 12:40:21.442989
153	5	94	66	6	2020-06-16 12:40:21.446615	2020-06-16 12:40:21.446615
154	3	11	67	3	2020-06-16 12:40:21.450766	2020-06-16 12:40:21.450766
155	2	16	67	6	2020-06-16 12:40:21.454594	2020-06-16 12:40:21.454594
156	5	59	68	3	2020-06-16 12:40:21.459035	2020-06-16 12:40:21.459035
157	3	66	68	2	2020-06-16 12:40:21.463406	2020-06-16 12:40:21.463406
158	3	61	69	2	2020-06-16 12:40:21.466906	2020-06-16 12:40:21.466906
159	3	42	69	1	2020-06-16 12:40:21.470237	2020-06-16 12:40:21.470237
160	5	35	69	8	2020-06-16 12:40:21.473765	2020-06-16 12:40:21.473765
161	3	10	69	4	2020-06-16 12:40:21.477373	2020-06-16 12:40:21.477373
162	5	31	70	3	2020-06-16 12:40:21.480893	2020-06-16 12:40:21.480893
163	5	47	70	7	2020-06-16 12:40:21.48435	2020-06-16 12:40:21.48435
164	2	55	71	7	2020-06-16 12:40:21.487838	2020-06-16 12:40:21.487838
165	3	41	71	5	2020-06-16 12:40:21.491443	2020-06-16 12:40:21.491443
166	3	48	71	3	2020-06-16 12:40:21.495369	2020-06-16 12:40:21.495369
167	2	66	72	6	2020-06-16 12:40:21.498857	2020-06-16 12:40:21.498857
168	2	28	72	1	2020-06-16 12:40:21.502384	2020-06-16 12:40:21.502384
169	2	6	72	2	2020-06-16 12:40:21.505984	2020-06-16 12:40:21.505984
170	5	61	72	4	2020-06-16 12:40:21.509305	2020-06-16 12:40:21.509305
171	3	50	73	5	2020-06-16 12:40:21.512459	2020-06-16 12:40:21.512459
172	3	61	73	6	2020-06-16 12:40:21.515558	2020-06-16 12:40:21.515558
173	5	20	73	4	2020-06-16 12:40:21.519431	2020-06-16 12:40:21.519431
174	4	81	73	2	2020-06-16 12:40:21.522539	2020-06-16 12:40:21.522539
175	2	59	74	4	2020-06-16 12:40:21.525782	2020-06-16 12:40:21.525782
176	3	53	74	8	2020-06-16 12:40:21.528916	2020-06-16 12:40:21.528916
177	3	59	75	8	2020-06-16 12:40:21.531945	2020-06-16 12:40:21.531945
178	2	28	75	2	2020-06-16 12:40:21.535233	2020-06-16 12:40:21.535233
179	1	50	75	6	2020-06-16 12:40:21.539019	2020-06-16 12:40:21.539019
180	2	6	76	5	2020-06-16 12:40:21.543813	2020-06-16 12:40:21.543813
181	1	77	76	6	2020-06-16 12:40:21.550225	2020-06-16 12:40:21.550225
182	5	99	76	2	2020-06-16 12:40:21.554296	2020-06-16 12:40:21.554296
183	1	23	77	7	2020-06-16 12:40:21.558243	2020-06-16 12:40:21.558243
184	5	81	77	4	2020-06-16 12:40:21.562009	2020-06-16 12:40:21.562009
185	1	56	77	5	2020-06-16 12:40:21.56551	2020-06-16 12:40:21.56551
186	4	25	78	6	2020-06-16 12:40:21.56894	2020-06-16 12:40:21.56894
187	2	15	78	2	2020-06-16 12:40:21.572436	2020-06-16 12:40:21.572436
188	5	98	78	4	2020-06-16 12:40:21.576106	2020-06-16 12:40:21.576106
189	2	38	78	1	2020-06-16 12:40:21.579497	2020-06-16 12:40:21.579497
190	4	37	79	6	2020-06-16 12:40:21.582913	2020-06-16 12:40:21.582913
191	3	21	80	7	2020-06-16 12:40:21.586393	2020-06-16 12:40:21.586393
192	2	91	80	1	2020-06-16 12:40:21.590013	2020-06-16 12:40:21.590013
193	1	41	80	5	2020-06-16 12:40:21.594442	2020-06-16 12:40:21.594442
194	1	30	81	2	2020-06-16 12:40:21.59801	2020-06-16 12:40:21.59801
195	5	90	82	4	2020-06-16 12:40:21.601463	2020-06-16 12:40:21.601463
196	3	75	82	6	2020-06-16 12:40:21.605346	2020-06-16 12:40:21.605346
197	5	20	82	5	2020-06-16 12:40:21.60886	2020-06-16 12:40:21.60886
198	5	66	82	7	2020-06-16 12:40:21.612336	2020-06-16 12:40:21.612336
199	4	46	83	2	2020-06-16 12:40:21.615769	2020-06-16 12:40:21.615769
200	5	5	84	3	2020-06-16 12:40:21.61927	2020-06-16 12:40:21.61927
201	5	36	84	1	2020-06-16 12:40:21.622938	2020-06-16 12:40:21.622938
202	4	84	85	7	2020-06-16 12:40:21.626959	2020-06-16 12:40:21.626959
203	4	61	85	2	2020-06-16 12:40:21.631123	2020-06-16 12:40:21.631123
204	4	2	86	6	2020-06-16 12:40:21.635255	2020-06-16 12:40:21.635255
205	4	93	86	1	2020-06-16 12:40:21.639039	2020-06-16 12:40:21.639039
206	5	56	87	5	2020-06-16 12:40:21.642695	2020-06-16 12:40:21.642695
207	3	51	87	1	2020-06-16 12:40:21.646182	2020-06-16 12:40:21.646182
208	4	48	88	8	2020-06-16 12:40:21.649821	2020-06-16 12:40:21.649821
209	4	42	88	7	2020-06-16 12:40:21.65358	2020-06-16 12:40:21.65358
210	1	21	89	4	2020-06-16 12:40:21.657807	2020-06-16 12:40:21.657807
211	5	75	89	5	2020-06-16 12:40:21.661323	2020-06-16 12:40:21.661323
212	2	10	89	7	2020-06-16 12:40:21.665325	2020-06-16 12:40:21.665325
213	2	14	90	2	2020-06-16 12:40:21.669679	2020-06-16 12:40:21.669679
214	2	78	91	3	2020-06-16 12:40:21.674882	2020-06-16 12:40:21.674882
215	1	79	92	4	2020-06-16 12:40:21.680053	2020-06-16 12:40:21.680053
216	5	56	92	6	2020-06-16 12:40:21.685487	2020-06-16 12:40:21.685487
217	2	24	93	7	2020-06-16 12:40:21.690665	2020-06-16 12:40:21.690665
218	2	46	94	6	2020-06-16 12:40:21.695637	2020-06-16 12:40:21.695637
219	1	84	94	5	2020-06-16 12:40:21.699592	2020-06-16 12:40:21.699592
220	3	78	95	7	2020-06-16 12:40:21.704736	2020-06-16 12:40:21.704736
221	5	7	95	6	2020-06-16 12:40:21.709303	2020-06-16 12:40:21.709303
222	5	85	95	4	2020-06-16 12:40:21.713541	2020-06-16 12:40:21.713541
223	1	45	96	7	2020-06-16 12:40:21.717331	2020-06-16 12:40:21.717331
224	1	21	96	1	2020-06-16 12:40:21.721499	2020-06-16 12:40:21.721499
225	1	71	97	6	2020-06-16 12:40:21.725496	2020-06-16 12:40:21.725496
226	1	37	98	1	2020-06-16 12:40:21.729309	2020-06-16 12:40:21.729309
227	1	84	98	6	2020-06-16 12:40:21.733113	2020-06-16 12:40:21.733113
228	2	60	98	2	2020-06-16 12:40:21.73667	2020-06-16 12:40:21.73667
229	5	50	99	6	2020-06-16 12:40:21.740402	2020-06-16 12:40:21.740402
230	3	46	99	5	2020-06-16 12:40:21.744394	2020-06-16 12:40:21.744394
231	2	39	100	4	2020-06-16 12:40:21.748122	2020-06-16 12:40:21.748122
232	4	68	101	3	2020-06-16 12:40:21.751837	2020-06-16 12:40:21.751837
233	3	20	101	1	2020-06-16 12:40:21.75566	2020-06-16 12:40:21.75566
234	3	9	101	5	2020-06-16 12:40:21.759386	2020-06-16 12:40:21.759386
235	2	10	102	1	2020-06-16 12:40:21.763736	2020-06-16 12:40:21.763736
236	1	5	102	6	2020-06-16 12:40:21.767751	2020-06-16 12:40:21.767751
237	1	20	103	8	2020-06-16 12:40:21.77233	2020-06-16 12:40:21.77233
238	3	66	104	1	2020-06-16 12:40:21.776454	2020-06-16 12:40:21.776454
239	3	74	104	4	2020-06-16 12:40:21.784823	2020-06-16 12:40:21.784823
240	3	19	104	3	2020-06-16 12:40:21.788516	2020-06-16 12:40:21.788516
241	3	20	105	3	2020-06-16 12:40:21.791989	2020-06-16 12:40:21.791989
242	3	21	105	7	2020-06-16 12:40:21.795264	2020-06-16 12:40:21.795264
243	5	51	105	5	2020-06-16 12:40:21.798756	2020-06-16 12:40:21.798756
244	1	26	106	2	2020-06-16 12:40:21.807367	2020-06-16 12:40:21.807367
245	1	50	107	3	2020-06-16 12:40:21.81084	2020-06-16 12:40:21.81084
246	1	58	107	8	2020-06-16 12:40:21.814028	2020-06-16 12:40:21.814028
247	4	22	107	6	2020-06-16 12:40:21.818171	2020-06-16 12:40:21.818171
248	5	72	107	1	2020-06-16 12:40:21.821778	2020-06-16 12:40:21.821778
249	4	52	108	2	2020-06-16 12:40:21.825685	2020-06-16 12:40:21.825685
250	4	13	108	7	2020-06-16 12:40:21.830042	2020-06-16 12:40:21.830042
251	5	9	108	8	2020-06-16 12:40:21.833569	2020-06-16 12:40:21.833569
252	3	6	108	3	2020-06-16 12:40:21.837258	2020-06-16 12:40:21.837258
253	3	81	109	2	2020-06-16 12:40:21.841462	2020-06-16 12:40:21.841462
254	1	51	109	5	2020-06-16 12:40:21.845568	2020-06-16 12:40:21.845568
255	4	24	110	4	2020-06-16 12:40:21.84893	2020-06-16 12:40:21.84893
256	1	79	111	6	2020-06-16 12:40:21.852891	2020-06-16 12:40:21.852891
257	1	80	112	8	2020-06-16 12:40:21.856401	2020-06-16 12:40:21.856401
258	4	13	113	6	2020-06-16 12:40:21.859954	2020-06-16 12:40:21.859954
259	5	89	114	5	2020-06-16 12:40:21.863546	2020-06-16 12:40:21.863546
260	3	6	115	8	2020-06-16 12:40:21.867143	2020-06-16 12:40:21.867143
261	5	37	115	5	2020-06-16 12:40:21.870948	2020-06-16 12:40:21.870948
262	1	43	115	2	2020-06-16 12:40:21.874731	2020-06-16 12:40:21.874731
263	5	85	116	2	2020-06-16 12:40:21.878268	2020-06-16 12:40:21.878268
264	2	61	117	3	2020-06-16 12:40:21.881673	2020-06-16 12:40:21.881673
265	2	42	117	2	2020-06-16 12:40:21.884952	2020-06-16 12:40:21.884952
266	1	95	118	5	2020-06-16 12:40:21.888207	2020-06-16 12:40:21.888207
267	1	83	119	1	2020-06-16 12:40:21.891437	2020-06-16 12:40:21.891437
268	4	82	120	5	2020-06-16 12:40:21.895519	2020-06-16 12:40:21.895519
269	4	81	120	3	2020-06-16 12:40:21.905554	2020-06-16 12:40:21.905554
270	4	33	120	1	2020-06-16 12:40:21.908742	2020-06-16 12:40:21.908742
271	2	77	121	5	2020-06-16 12:40:21.911568	2020-06-16 12:40:21.911568
272	5	84	122	3	2020-06-16 12:40:21.914497	2020-06-16 12:40:21.914497
273	4	70	122	6	2020-06-16 12:40:21.917307	2020-06-16 12:40:21.917307
274	2	21	122	7	2020-06-16 12:40:21.92017	2020-06-16 12:40:21.92017
275	4	57	123	8	2020-06-16 12:40:21.923163	2020-06-16 12:40:21.923163
276	1	62	123	6	2020-06-16 12:40:21.926145	2020-06-16 12:40:21.926145
277	4	75	124	3	2020-06-16 12:40:21.929503	2020-06-16 12:40:21.929503
278	1	91	124	1	2020-06-16 12:40:21.932955	2020-06-16 12:40:21.932955
279	5	36	124	2	2020-06-16 12:40:21.93638	2020-06-16 12:40:21.93638
280	5	50	125	2	2020-06-16 12:40:21.939939	2020-06-16 12:40:21.939939
281	5	14	125	3	2020-06-16 12:40:21.943393	2020-06-16 12:40:21.943393
282	2	69	126	7	2020-06-16 12:40:21.946876	2020-06-16 12:40:21.946876
283	2	59	126	4	2020-06-16 12:40:21.950432	2020-06-16 12:40:21.950432
284	3	58	126	8	2020-06-16 12:40:21.95393	2020-06-16 12:40:21.95393
285	2	61	126	1	2020-06-16 12:40:21.957686	2020-06-16 12:40:21.957686
286	2	64	127	5	2020-06-16 12:40:21.961148	2020-06-16 12:40:21.961148
287	2	20	127	8	2020-06-16 12:40:21.965024	2020-06-16 12:40:21.965024
288	1	2	127	7	2020-06-16 12:40:21.968875	2020-06-16 12:40:21.968875
289	1	49	128	3	2020-06-16 12:40:21.972288	2020-06-16 12:40:21.972288
290	3	62	128	7	2020-06-16 12:40:21.975843	2020-06-16 12:40:21.975843
291	4	38	129	3	2020-06-16 12:40:21.979538	2020-06-16 12:40:21.979538
292	3	44	130	2	2020-06-16 12:40:21.983123	2020-06-16 12:40:21.983123
293	2	16	131	5	2020-06-16 12:40:21.986729	2020-06-16 12:40:21.986729
294	4	78	132	6	2020-06-16 12:40:21.990829	2020-06-16 12:40:21.990829
295	3	15	132	8	2020-06-16 12:40:21.994482	2020-06-16 12:40:21.994482
296	1	87	133	7	2020-06-16 12:40:21.998007	2020-06-16 12:40:21.998007
297	2	98	133	4	2020-06-16 12:40:22.002049	2020-06-16 12:40:22.002049
298	3	18	134	8	2020-06-16 12:40:22.00687	2020-06-16 12:40:22.00687
299	2	60	134	3	2020-06-16 12:40:22.010984	2020-06-16 12:40:22.010984
300	4	94	134	2	2020-06-16 12:40:22.014533	2020-06-16 12:40:22.014533
301	5	92	135	6	2020-06-16 12:40:22.017791	2020-06-16 12:40:22.017791
302	2	44	136	8	2020-06-16 12:40:22.020768	2020-06-16 12:40:22.020768
303	2	72	136	6	2020-06-16 12:40:22.023528	2020-06-16 12:40:22.023528
304	3	93	136	7	2020-06-16 12:40:22.026452	2020-06-16 12:40:22.026452
305	4	75	136	3	2020-06-16 12:40:22.029121	2020-06-16 12:40:22.029121
306	5	92	137	3	2020-06-16 12:40:22.032008	2020-06-16 12:40:22.032008
307	4	1	138	4	2020-06-16 12:40:22.034688	2020-06-16 12:40:22.034688
308	2	54	139	2	2020-06-16 12:40:22.037694	2020-06-16 12:40:22.037694
309	2	51	139	3	2020-06-16 12:40:22.040988	2020-06-16 12:40:22.040988
310	4	2	140	3	2020-06-16 12:40:22.04394	2020-06-16 12:40:22.04394
311	3	24	141	1	2020-06-16 12:40:22.047325	2020-06-16 12:40:22.047325
312	5	81	141	8	2020-06-16 12:40:22.051286	2020-06-16 12:40:22.051286
313	3	17	141	2	2020-06-16 12:40:22.054307	2020-06-16 12:40:22.054307
314	1	87	142	1	2020-06-16 12:40:22.057524	2020-06-16 12:40:22.057524
315	2	38	143	2	2020-06-16 12:40:22.0606	2020-06-16 12:40:22.0606
316	4	9	143	6	2020-06-16 12:40:22.063801	2020-06-16 12:40:22.063801
317	3	38	143	1	2020-06-16 12:40:22.066943	2020-06-16 12:40:22.066943
318	1	3	144	8	2020-06-16 12:40:22.06996	2020-06-16 12:40:22.06996
319	1	41	144	4	2020-06-16 12:40:22.072951	2020-06-16 12:40:22.072951
320	4	49	144	1	2020-06-16 12:40:22.075981	2020-06-16 12:40:22.075981
321	5	44	145	4	2020-06-16 12:40:22.078971	2020-06-16 12:40:22.078971
322	4	79	146	7	2020-06-16 12:40:22.081887	2020-06-16 12:40:22.081887
323	1	36	146	8	2020-06-16 12:40:22.084972	2020-06-16 12:40:22.084972
324	5	50	147	4	2020-06-16 12:40:22.087913	2020-06-16 12:40:22.087913
325	4	42	147	7	2020-06-16 12:40:22.090942	2020-06-16 12:40:22.090942
326	4	49	147	2	2020-06-16 12:40:22.093956	2020-06-16 12:40:22.093956
327	2	51	148	6	2020-06-16 12:40:22.098419	2020-06-16 12:40:22.098419
328	3	1	149	3	2020-06-16 12:40:22.10257	2020-06-16 12:40:22.10257
329	1	88	150	1	2020-06-16 12:40:22.106828	2020-06-16 12:40:22.106828
330	1	76	150	8	2020-06-16 12:40:22.111178	2020-06-16 12:40:22.111178
331	2	18	151	5	2020-06-16 12:40:22.115159	2020-06-16 12:40:22.115159
332	3	65	151	4	2020-06-16 12:40:22.119475	2020-06-16 12:40:22.119475
333	1	93	152	6	2020-06-16 12:40:22.123724	2020-06-16 12:40:22.123724
334	4	30	152	2	2020-06-16 12:40:22.127956	2020-06-16 12:40:22.127956
335	3	89	153	3	2020-06-16 12:40:22.131468	2020-06-16 12:40:22.131468
336	1	5	153	5	2020-06-16 12:40:22.135265	2020-06-16 12:40:22.135265
337	3	88	153	7	2020-06-16 12:40:22.139433	2020-06-16 12:40:22.139433
338	5	14	154	3	2020-06-16 12:40:22.143523	2020-06-16 12:40:22.143523
339	2	27	155	6	2020-06-16 12:40:22.148557	2020-06-16 12:40:22.148557
340	5	70	155	2	2020-06-16 12:40:22.15313	2020-06-16 12:40:22.15313
341	1	8	156	7	2020-06-16 12:40:22.158406	2020-06-16 12:40:22.158406
342	2	97	156	3	2020-06-16 12:40:22.163723	2020-06-16 12:40:22.163723
343	3	23	157	2	2020-06-16 12:40:22.168975	2020-06-16 12:40:22.168975
344	2	100	158	3	2020-06-16 12:40:22.175251	2020-06-16 12:40:22.175251
345	5	21	158	2	2020-06-16 12:40:22.180381	2020-06-16 12:40:22.180381
346	5	78	158	4	2020-06-16 12:40:22.185881	2020-06-16 12:40:22.185881
347	3	45	159	5	2020-06-16 12:40:22.191155	2020-06-16 12:40:22.191155
348	5	81	159	1	2020-06-16 12:40:22.196234	2020-06-16 12:40:22.196234
349	4	86	159	6	2020-06-16 12:40:22.201778	2020-06-16 12:40:22.201778
350	2	56	160	6	2020-06-16 12:40:22.206889	2020-06-16 12:40:22.206889
351	3	41	160	8	2020-06-16 12:40:22.212196	2020-06-16 12:40:22.212196
352	5	10	161	4	2020-06-16 12:40:22.217342	2020-06-16 12:40:22.217342
353	4	67	161	7	2020-06-16 12:40:22.222628	2020-06-16 12:40:22.222628
354	5	90	162	2	2020-06-16 12:40:22.227818	2020-06-16 12:40:22.227818
355	5	74	162	3	2020-06-16 12:40:22.23297	2020-06-16 12:40:22.23297
356	4	47	163	7	2020-06-16 12:40:22.237681	2020-06-16 12:40:22.237681
357	4	19	164	8	2020-06-16 12:40:22.242188	2020-06-16 12:40:22.242188
358	3	61	164	6	2020-06-16 12:40:22.246186	2020-06-16 12:40:22.246186
359	2	30	164	4	2020-06-16 12:40:22.250175	2020-06-16 12:40:22.250175
360	5	80	164	7	2020-06-16 12:40:22.253626	2020-06-16 12:40:22.253626
361	2	74	165	1	2020-06-16 12:40:22.257611	2020-06-16 12:40:22.257611
362	5	9	165	2	2020-06-16 12:40:22.261164	2020-06-16 12:40:22.261164
363	2	97	166	6	2020-06-16 12:40:22.264749	2020-06-16 12:40:22.264749
364	1	54	166	2	2020-06-16 12:40:22.268292	2020-06-16 12:40:22.268292
365	5	21	167	3	2020-06-16 12:40:22.271945	2020-06-16 12:40:22.271945
366	1	100	167	7	2020-06-16 12:40:22.275834	2020-06-16 12:40:22.275834
367	2	73	168	3	2020-06-16 12:40:22.279723	2020-06-16 12:40:22.279723
368	2	33	168	7	2020-06-16 12:40:22.284138	2020-06-16 12:40:22.284138
369	1	8	168	8	2020-06-16 12:40:22.288703	2020-06-16 12:40:22.288703
370	4	68	169	8	2020-06-16 12:40:22.293956	2020-06-16 12:40:22.293956
371	4	56	170	6	2020-06-16 12:40:22.299799	2020-06-16 12:40:22.299799
372	3	13	170	1	2020-06-16 12:40:22.304433	2020-06-16 12:40:22.304433
373	4	55	171	3	2020-06-16 12:40:22.308613	2020-06-16 12:40:22.308613
374	1	17	171	1	2020-06-16 12:40:22.312552	2020-06-16 12:40:22.312552
375	4	13	171	5	2020-06-16 12:40:22.3174	2020-06-16 12:40:22.3174
376	1	98	172	7	2020-06-16 12:40:22.321249	2020-06-16 12:40:22.321249
377	3	88	172	5	2020-06-16 12:40:22.324946	2020-06-16 12:40:22.324946
378	1	43	172	4	2020-06-16 12:40:22.328621	2020-06-16 12:40:22.328621
379	3	52	172	2	2020-06-16 12:40:22.332625	2020-06-16 12:40:22.332625
380	2	5	173	6	2020-06-16 12:40:22.336734	2020-06-16 12:40:22.336734
381	2	89	173	1	2020-06-16 12:40:22.340952	2020-06-16 12:40:22.340952
382	1	30	173	7	2020-06-16 12:40:22.345787	2020-06-16 12:40:22.345787
383	1	61	174	1	2020-06-16 12:40:22.349526	2020-06-16 12:40:22.349526
384	2	59	175	7	2020-06-16 12:40:22.353802	2020-06-16 12:40:22.353802
385	5	16	175	4	2020-06-16 12:40:22.357622	2020-06-16 12:40:22.357622
386	5	23	176	2	2020-06-16 12:40:22.361642	2020-06-16 12:40:22.361642
387	2	20	176	4	2020-06-16 12:40:22.365866	2020-06-16 12:40:22.365866
388	4	8	176	7	2020-06-16 12:40:22.370276	2020-06-16 12:40:22.370276
389	1	10	177	2	2020-06-16 12:40:22.374808	2020-06-16 12:40:22.374808
390	2	12	177	5	2020-06-16 12:40:22.379246	2020-06-16 12:40:22.379246
391	1	13	177	7	2020-06-16 12:40:22.382739	2020-06-16 12:40:22.382739
392	3	11	178	5	2020-06-16 12:40:22.3862	2020-06-16 12:40:22.3862
393	4	47	179	8	2020-06-16 12:40:22.389084	2020-06-16 12:40:22.389084
394	3	88	179	1	2020-06-16 12:40:22.392799	2020-06-16 12:40:22.392799
395	4	88	180	7	2020-06-16 12:40:22.396068	2020-06-16 12:40:22.396068
396	2	94	180	4	2020-06-16 12:40:22.399751	2020-06-16 12:40:22.399751
397	4	75	180	3	2020-06-16 12:40:22.403716	2020-06-16 12:40:22.403716
398	2	15	181	7	2020-06-16 12:40:22.407303	2020-06-16 12:40:22.407303
399	1	24	182	3	2020-06-16 12:40:22.411042	2020-06-16 12:40:22.411042
400	1	13	182	8	2020-06-16 12:40:22.414539	2020-06-16 12:40:22.414539
401	1	30	183	2	2020-06-16 12:40:22.418096	2020-06-16 12:40:22.418096
402	3	27	183	3	2020-06-16 12:40:22.421684	2020-06-16 12:40:22.421684
403	5	71	183	6	2020-06-16 12:40:22.425714	2020-06-16 12:40:22.425714
404	4	100	184	1	2020-06-16 12:40:22.429684	2020-06-16 12:40:22.429684
405	2	63	184	2	2020-06-16 12:40:22.433365	2020-06-16 12:40:22.433365
406	5	75	185	5	2020-06-16 12:40:22.437131	2020-06-16 12:40:22.437131
407	1	61	185	8	2020-06-16 12:40:22.440871	2020-06-16 12:40:22.440871
408	2	82	185	7	2020-06-16 12:40:22.444755	2020-06-16 12:40:22.444755
409	3	71	186	8	2020-06-16 12:40:22.448775	2020-06-16 12:40:22.448775
410	3	63	186	4	2020-06-16 12:40:22.452666	2020-06-16 12:40:22.452666
411	4	7	186	3	2020-06-16 12:40:22.456224	2020-06-16 12:40:22.456224
412	1	35	187	6	2020-06-16 12:40:22.459765	2020-06-16 12:40:22.459765
413	5	51	188	7	2020-06-16 12:40:22.463538	2020-06-16 12:40:22.463538
414	1	81	189	1	2020-06-16 12:40:22.466987	2020-06-16 12:40:22.466987
415	2	70	189	6	2020-06-16 12:40:22.47034	2020-06-16 12:40:22.47034
416	1	91	190	5	2020-06-16 12:40:22.473791	2020-06-16 12:40:22.473791
417	4	95	191	5	2020-06-16 12:40:22.477436	2020-06-16 12:40:22.477436
418	1	4	191	8	2020-06-16 12:40:22.480788	2020-06-16 12:40:22.480788
419	3	78	191	7	2020-06-16 12:40:22.484776	2020-06-16 12:40:22.484776
420	1	42	191	3	2020-06-16 12:40:22.489185	2020-06-16 12:40:22.489185
421	1	82	192	4	2020-06-16 12:40:22.493548	2020-06-16 12:40:22.493548
422	1	55	193	2	2020-06-16 12:40:22.49794	2020-06-16 12:40:22.49794
423	5	60	193	3	2020-06-16 12:40:22.502152	2020-06-16 12:40:22.502152
424	4	58	193	5	2020-06-16 12:40:22.506456	2020-06-16 12:40:22.506456
425	2	34	194	4	2020-06-16 12:40:22.511218	2020-06-16 12:40:22.511218
426	4	6	195	2	2020-06-16 12:40:22.515462	2020-06-16 12:40:22.515462
427	2	61	195	1	2020-06-16 12:40:22.520061	2020-06-16 12:40:22.520061
428	4	12	195	3	2020-06-16 12:40:22.524911	2020-06-16 12:40:22.524911
429	2	58	195	4	2020-06-16 12:40:22.530273	2020-06-16 12:40:22.530273
430	3	2	196	3	2020-06-16 12:40:22.53609	2020-06-16 12:40:22.53609
431	3	58	196	8	2020-06-16 12:40:22.541446	2020-06-16 12:40:22.541446
432	5	17	197	1	2020-06-16 12:40:22.547143	2020-06-16 12:40:22.547143
433	2	53	197	7	2020-06-16 12:40:22.553253	2020-06-16 12:40:22.553253
434	1	7	197	5	2020-06-16 12:40:22.558849	2020-06-16 12:40:22.558849
435	1	33	198	2	2020-06-16 12:40:22.564473	2020-06-16 12:40:22.564473
436	2	32	198	8	2020-06-16 12:40:22.568871	2020-06-16 12:40:22.568871
437	2	53	199	3	2020-06-16 12:40:22.573344	2020-06-16 12:40:22.573344
438	2	33	199	8	2020-06-16 12:40:22.577874	2020-06-16 12:40:22.577874
439	2	21	199	6	2020-06-16 12:40:22.58227	2020-06-16 12:40:22.58227
440	2	20	200	5	2020-06-16 12:40:22.587602	2020-06-16 12:40:22.587602
441	1	58	200	8	2020-06-16 12:40:22.593165	2020-06-16 12:40:22.593165
442	2	87	200	1	2020-06-16 12:40:22.598159	2020-06-16 12:40:22.598159
443	4	67	1	14	2020-06-16 12:40:22.603164	2020-06-16 12:40:22.603164
444	4	83	1	12	2020-06-16 12:40:22.608651	2020-06-16 12:40:22.608651
445	1	43	2	11	2020-06-16 12:40:22.614163	2020-06-16 12:40:22.614163
446	1	5	3	4	2020-06-16 12:40:22.619436	2020-06-16 12:40:22.619436
447	1	53	4	7	2020-06-16 12:40:22.624882	2020-06-16 12:40:22.624882
448	1	58	5	1	2020-06-16 12:40:22.629495	2020-06-16 12:40:22.629495
449	4	78	5	13	2020-06-16 12:40:22.634086	2020-06-16 12:40:22.634086
450	2	52	5	10	2020-06-16 12:40:22.638356	2020-06-16 12:40:22.638356
451	5	77	5	16	2020-06-16 12:40:22.642215	2020-06-16 12:40:22.642215
452	3	10	6	11	2020-06-16 12:40:22.646116	2020-06-16 12:40:22.646116
453	3	74	6	12	2020-06-16 12:40:22.649827	2020-06-16 12:40:22.649827
454	5	75	6	1	2020-06-16 12:40:22.654115	2020-06-16 12:40:22.654115
455	4	75	7	11	2020-06-16 12:40:22.665212	2020-06-16 12:40:22.665212
456	2	74	8	9	2020-06-16 12:40:22.669233	2020-06-16 12:40:22.669233
457	2	65	9	10	2020-06-16 12:40:22.672977	2020-06-16 12:40:22.672977
458	5	77	10	5	2020-06-16 12:40:22.676895	2020-06-16 12:40:22.676895
459	4	43	10	10	2020-06-16 12:40:22.680581	2020-06-16 12:40:22.680581
460	1	34	11	11	2020-06-16 12:40:22.684155	2020-06-16 12:40:22.684155
461	1	57	11	9	2020-06-16 12:40:22.687637	2020-06-16 12:40:22.687637
462	2	35	12	7	2020-06-16 12:40:22.691258	2020-06-16 12:40:22.691258
463	3	1	13	2	2020-06-16 12:40:22.695294	2020-06-16 12:40:22.695294
464	5	83	13	16	2020-06-16 12:40:22.699195	2020-06-16 12:40:22.699195
465	4	17	14	8	2020-06-16 12:40:22.702395	2020-06-16 12:40:22.702395
466	1	91	14	10	2020-06-16 12:40:22.705673	2020-06-16 12:40:22.705673
467	2	44	15	15	2020-06-16 12:40:22.709046	2020-06-16 12:40:22.709046
468	2	78	15	9	2020-06-16 12:40:22.713093	2020-06-16 12:40:22.713093
469	2	89	16	2	2020-06-16 12:40:22.716824	2020-06-16 12:40:22.716824
470	2	1	16	16	2020-06-16 12:40:22.720953	2020-06-16 12:40:22.720953
471	4	100	16	10	2020-06-16 12:40:22.724853	2020-06-16 12:40:22.724853
472	5	17	17	10	2020-06-16 12:40:22.728738	2020-06-16 12:40:22.728738
473	4	63	17	14	2020-06-16 12:40:22.732534	2020-06-16 12:40:22.732534
474	5	26	17	8	2020-06-16 12:40:22.736341	2020-06-16 12:40:22.736341
475	5	67	18	16	2020-06-16 12:40:22.739895	2020-06-16 12:40:22.739895
476	5	70	19	8	2020-06-16 12:40:22.743752	2020-06-16 12:40:22.743752
477	4	48	19	10	2020-06-16 12:40:22.747604	2020-06-16 12:40:22.747604
478	1	55	20	7	2020-06-16 12:40:22.751182	2020-06-16 12:40:22.751182
479	2	49	20	11	2020-06-16 12:40:22.755055	2020-06-16 12:40:22.755055
480	4	10	20	14	2020-06-16 12:40:22.758824	2020-06-16 12:40:22.758824
481	2	46	21	9	2020-06-16 12:40:22.762698	2020-06-16 12:40:22.762698
482	4	80	21	13	2020-06-16 12:40:22.766461	2020-06-16 12:40:22.766461
483	1	88	22	8	2020-06-16 12:40:22.770409	2020-06-16 12:40:22.770409
484	1	32	22	12	2020-06-16 12:40:22.774109	2020-06-16 12:40:22.774109
485	1	70	23	13	2020-06-16 12:40:22.777924	2020-06-16 12:40:22.777924
486	2	49	24	14	2020-06-16 12:40:22.781612	2020-06-16 12:40:22.781612
487	3	15	25	11	2020-06-16 12:40:22.785284	2020-06-16 12:40:22.785284
488	5	41	26	14	2020-06-16 12:40:22.788895	2020-06-16 12:40:22.788895
489	4	29	26	16	2020-06-16 12:40:22.792435	2020-06-16 12:40:22.792435
490	4	60	27	16	2020-06-16 12:40:22.796471	2020-06-16 12:40:22.796471
491	2	24	27	2	2020-06-16 12:40:22.801079	2020-06-16 12:40:22.801079
492	4	90	27	13	2020-06-16 12:40:22.804905	2020-06-16 12:40:22.804905
493	2	50	28	14	2020-06-16 12:40:22.809009	2020-06-16 12:40:22.809009
494	4	21	29	7	2020-06-16 12:40:22.813414	2020-06-16 12:40:22.813414
495	4	61	29	16	2020-06-16 12:40:22.818207	2020-06-16 12:40:22.818207
496	5	64	29	13	2020-06-16 12:40:22.822752	2020-06-16 12:40:22.822752
497	5	51	30	7	2020-06-16 12:40:22.827373	2020-06-16 12:40:22.827373
498	2	39	31	13	2020-06-16 12:40:22.831735	2020-06-16 12:40:22.831735
499	3	97	31	10	2020-06-16 12:40:22.83599	2020-06-16 12:40:22.83599
500	1	50	31	12	2020-06-16 12:40:22.840404	2020-06-16 12:40:22.840404
501	2	73	31	1	2020-06-16 12:40:22.845176	2020-06-16 12:40:22.845176
502	5	57	32	8	2020-06-16 12:40:22.849175	2020-06-16 12:40:22.849175
503	4	48	33	13	2020-06-16 12:40:22.853092	2020-06-16 12:40:22.853092
504	1	86	33	7	2020-06-16 12:40:22.856738	2020-06-16 12:40:22.856738
505	5	81	33	8	2020-06-16 12:40:22.860379	2020-06-16 12:40:22.860379
506	1	68	33	2	2020-06-16 12:40:22.864035	2020-06-16 12:40:22.864035
507	1	35	34	15	2020-06-16 12:40:22.867617	2020-06-16 12:40:22.867617
508	5	33	35	16	2020-06-16 12:40:22.87136	2020-06-16 12:40:22.87136
509	4	6	35	14	2020-06-16 12:40:22.874993	2020-06-16 12:40:22.874993
510	1	94	36	14	2020-06-16 12:40:22.878734	2020-06-16 12:40:22.878734
511	2	60	37	13	2020-06-16 12:40:22.882515	2020-06-16 12:40:22.882515
512	2	74	37	9	2020-06-16 12:40:22.885913	2020-06-16 12:40:22.885913
513	2	78	37	12	2020-06-16 12:40:22.889155	2020-06-16 12:40:22.889155
514	5	95	37	11	2020-06-16 12:40:22.892716	2020-06-16 12:40:22.892716
515	4	19	38	9	2020-06-16 12:40:22.896223	2020-06-16 12:40:22.896223
516	5	52	38	5	2020-06-16 12:40:22.899482	2020-06-16 12:40:22.899482
517	5	70	39	3	2020-06-16 12:40:22.902839	2020-06-16 12:40:22.902839
518	2	50	40	10	2020-06-16 12:40:22.906081	2020-06-16 12:40:22.906081
519	4	82	40	11	2020-06-16 12:40:22.909423	2020-06-16 12:40:22.909423
520	1	14	41	5	2020-06-16 12:40:22.912934	2020-06-16 12:40:22.912934
521	3	85	41	11	2020-06-16 12:40:22.916334	2020-06-16 12:40:22.916334
522	5	64	41	2	2020-06-16 12:40:22.919658	2020-06-16 12:40:22.919658
523	3	62	42	9	2020-06-16 12:40:22.923389	2020-06-16 12:40:22.923389
524	3	28	42	8	2020-06-16 12:40:22.926895	2020-06-16 12:40:22.926895
525	1	56	42	2	2020-06-16 12:40:22.930448	2020-06-16 12:40:22.930448
526	3	96	42	3	2020-06-16 12:40:22.933962	2020-06-16 12:40:22.933962
527	3	27	43	7	2020-06-16 12:40:22.937563	2020-06-16 12:40:22.937563
528	3	14	43	1	2020-06-16 12:40:22.941056	2020-06-16 12:40:22.941056
529	4	2	43	12	2020-06-16 12:40:22.944613	2020-06-16 12:40:22.944613
530	3	25	43	16	2020-06-16 12:40:22.948303	2020-06-16 12:40:22.948303
531	4	47	44	9	2020-06-16 12:40:22.951785	2020-06-16 12:40:22.951785
532	3	12	44	7	2020-06-16 12:40:22.95495	2020-06-16 12:40:22.95495
533	4	72	45	16	2020-06-16 12:40:22.958231	2020-06-16 12:40:22.958231
534	1	4	45	12	2020-06-16 12:40:22.961655	2020-06-16 12:40:22.961655
535	5	62	46	4	2020-06-16 12:40:22.964859	2020-06-16 12:40:22.964859
536	1	99	46	9	2020-06-16 12:40:22.967914	2020-06-16 12:40:22.967914
537	5	20	46	10	2020-06-16 12:40:22.971174	2020-06-16 12:40:22.971174
538	5	86	46	1	2020-06-16 12:40:22.974351	2020-06-16 12:40:22.974351
539	5	12	47	2	2020-06-16 12:40:22.977703	2020-06-16 12:40:22.977703
540	2	69	48	12	2020-06-16 12:40:22.981182	2020-06-16 12:40:22.981182
541	1	87	48	10	2020-06-16 12:40:22.984672	2020-06-16 12:40:22.984672
542	1	24	48	1	2020-06-16 12:40:22.988099	2020-06-16 12:40:22.988099
543	3	68	49	14	2020-06-16 12:40:22.991467	2020-06-16 12:40:22.991467
544	4	65	49	2	2020-06-16 12:40:22.995126	2020-06-16 12:40:22.995126
545	3	60	49	16	2020-06-16 12:40:22.998529	2020-06-16 12:40:22.998529
546	4	5	50	12	2020-06-16 12:40:23.002518	2020-06-16 12:40:23.002518
547	4	51	52	11	2020-06-16 12:40:23.006772	2020-06-16 12:40:23.006772
548	2	10	52	4	2020-06-16 12:40:23.01153	2020-06-16 12:40:23.01153
549	4	70	52	16	2020-06-16 12:40:23.016706	2020-06-16 12:40:23.016706
550	3	76	52	2	2020-06-16 12:40:23.021791	2020-06-16 12:40:23.021791
551	1	82	53	2	2020-06-16 12:40:23.02753	2020-06-16 12:40:23.02753
552	4	40	53	16	2020-06-16 12:40:23.032251	2020-06-16 12:40:23.032251
553	3	56	54	4	2020-06-16 12:40:23.036673	2020-06-16 12:40:23.036673
554	3	19	54	15	2020-06-16 12:40:23.041575	2020-06-16 12:40:23.041575
555	4	21	55	6	2020-06-16 12:40:23.046563	2020-06-16 12:40:23.046563
556	5	47	55	16	2020-06-16 12:40:23.050732	2020-06-16 12:40:23.050732
557	2	3	55	2	2020-06-16 12:40:23.054678	2020-06-16 12:40:23.054678
558	4	82	56	2	2020-06-16 12:40:23.058357	2020-06-16 12:40:23.058357
559	5	73	56	9	2020-06-16 12:40:23.06228	2020-06-16 12:40:23.06228
560	2	16	57	3	2020-06-16 12:40:23.065816	2020-06-16 12:40:23.065816
561	1	31	57	12	2020-06-16 12:40:23.070112	2020-06-16 12:40:23.070112
562	5	90	58	13	2020-06-16 12:40:23.075249	2020-06-16 12:40:23.075249
563	2	86	58	14	2020-06-16 12:40:23.08079	2020-06-16 12:40:23.08079
564	2	47	58	10	2020-06-16 12:40:23.085867	2020-06-16 12:40:23.085867
565	4	44	58	16	2020-06-16 12:40:23.090165	2020-06-16 12:40:23.090165
566	2	80	59	3	2020-06-16 12:40:23.094462	2020-06-16 12:40:23.094462
567	4	30	60	12	2020-06-16 12:40:23.099237	2020-06-16 12:40:23.099237
568	4	55	60	3	2020-06-16 12:40:23.10451	2020-06-16 12:40:23.10451
569	2	69	61	12	2020-06-16 12:40:23.109808	2020-06-16 12:40:23.109808
570	4	72	61	8	2020-06-16 12:40:23.115146	2020-06-16 12:40:23.115146
571	2	78	62	12	2020-06-16 12:40:23.120314	2020-06-16 12:40:23.120314
572	3	57	62	16	2020-06-16 12:40:23.125377	2020-06-16 12:40:23.125377
573	1	72	63	15	2020-06-16 12:40:23.130756	2020-06-16 12:40:23.130756
574	4	55	63	13	2020-06-16 12:40:23.135779	2020-06-16 12:40:23.135779
575	2	39	63	12	2020-06-16 12:40:23.140219	2020-06-16 12:40:23.140219
576	5	20	64	10	2020-06-16 12:40:23.145425	2020-06-16 12:40:23.145425
577	1	68	66	15	2020-06-16 12:40:23.149976	2020-06-16 12:40:23.149976
578	2	6	66	13	2020-06-16 12:40:23.154941	2020-06-16 12:40:23.154941
579	5	55	66	8	2020-06-16 12:40:23.160177	2020-06-16 12:40:23.160177
580	1	31	66	12	2020-06-16 12:40:23.164623	2020-06-16 12:40:23.164623
581	1	87	67	15	2020-06-16 12:40:23.169	2020-06-16 12:40:23.169
582	3	70	67	4	2020-06-16 12:40:23.173502	2020-06-16 12:40:23.173502
583	4	59	67	9	2020-06-16 12:40:23.178316	2020-06-16 12:40:23.178316
584	1	45	68	1	2020-06-16 12:40:23.183844	2020-06-16 12:40:23.183844
585	3	29	69	14	2020-06-16 12:40:23.189324	2020-06-16 12:40:23.189324
586	5	30	69	12	2020-06-16 12:40:23.194794	2020-06-16 12:40:23.194794
587	3	91	69	3	2020-06-16 12:40:23.200389	2020-06-16 12:40:23.200389
588	5	94	70	1	2020-06-16 12:40:23.205617	2020-06-16 12:40:23.205617
589	2	15	70	14	2020-06-16 12:40:23.21004	2020-06-16 12:40:23.21004
590	1	83	71	13	2020-06-16 12:40:23.214545	2020-06-16 12:40:23.214545
591	4	49	71	4	2020-06-16 12:40:23.219158	2020-06-16 12:40:23.219158
592	4	63	71	10	2020-06-16 12:40:23.223665	2020-06-16 12:40:23.223665
593	3	70	71	9	2020-06-16 12:40:23.228086	2020-06-16 12:40:23.228086
594	4	24	72	8	2020-06-16 12:40:23.232101	2020-06-16 12:40:23.232101
595	1	62	72	5	2020-06-16 12:40:23.235963	2020-06-16 12:40:23.235963
596	4	62	73	9	2020-06-16 12:40:23.239749	2020-06-16 12:40:23.239749
597	3	4	74	7	2020-06-16 12:40:23.244466	2020-06-16 12:40:23.244466
598	5	51	74	2	2020-06-16 12:40:23.249062	2020-06-16 12:40:23.249062
599	1	72	75	16	2020-06-16 12:40:23.253427	2020-06-16 12:40:23.253427
600	3	84	75	13	2020-06-16 12:40:23.257626	2020-06-16 12:40:23.257626
601	4	4	75	11	2020-06-16 12:40:23.262	2020-06-16 12:40:23.262
602	5	80	76	16	2020-06-16 12:40:23.266426	2020-06-16 12:40:23.266426
603	5	45	76	13	2020-06-16 12:40:23.270605	2020-06-16 12:40:23.270605
604	2	98	76	8	2020-06-16 12:40:23.275116	2020-06-16 12:40:23.275116
605	3	33	77	10	2020-06-16 12:40:23.278871	2020-06-16 12:40:23.278871
606	4	38	77	14	2020-06-16 12:40:23.282763	2020-06-16 12:40:23.282763
607	2	7	77	8	2020-06-16 12:40:23.286685	2020-06-16 12:40:23.286685
608	5	12	78	5	2020-06-16 12:40:23.290263	2020-06-16 12:40:23.290263
609	3	42	78	10	2020-06-16 12:40:23.29402	2020-06-16 12:40:23.29402
610	5	40	79	10	2020-06-16 12:40:23.29773	2020-06-16 12:40:23.29773
611	5	68	80	14	2020-06-16 12:40:23.301673	2020-06-16 12:40:23.301673
612	4	46	80	4	2020-06-16 12:40:23.305044	2020-06-16 12:40:23.305044
613	5	79	81	3	2020-06-16 12:40:23.308787	2020-06-16 12:40:23.308787
614	1	1	81	14	2020-06-16 12:40:23.312356	2020-06-16 12:40:23.312356
615	1	100	82	8	2020-06-16 12:40:23.316043	2020-06-16 12:40:23.316043
616	1	25	83	10	2020-06-16 12:40:23.32019	2020-06-16 12:40:23.32019
617	1	18	84	12	2020-06-16 12:40:23.323546	2020-06-16 12:40:23.323546
618	4	97	85	12	2020-06-16 12:40:23.326885	2020-06-16 12:40:23.326885
619	5	26	85	8	2020-06-16 12:40:23.330312	2020-06-16 12:40:23.330312
620	4	42	85	5	2020-06-16 12:40:23.333808	2020-06-16 12:40:23.333808
621	5	45	86	4	2020-06-16 12:40:23.337199	2020-06-16 12:40:23.337199
622	4	63	86	10	2020-06-16 12:40:23.340659	2020-06-16 12:40:23.340659
623	1	68	86	9	2020-06-16 12:40:23.344419	2020-06-16 12:40:23.344419
624	5	29	86	5	2020-06-16 12:40:23.348029	2020-06-16 12:40:23.348029
625	5	21	87	13	2020-06-16 12:40:23.351696	2020-06-16 12:40:23.351696
626	4	69	87	10	2020-06-16 12:40:23.355592	2020-06-16 12:40:23.355592
627	1	55	87	2	2020-06-16 12:40:23.359086	2020-06-16 12:40:23.359086
628	3	79	87	16	2020-06-16 12:40:23.362767	2020-06-16 12:40:23.362767
629	4	77	88	11	2020-06-16 12:40:23.366285	2020-06-16 12:40:23.366285
630	2	33	88	6	2020-06-16 12:40:23.36986	2020-06-16 12:40:23.36986
631	5	61	89	2	2020-06-16 12:40:23.373591	2020-06-16 12:40:23.373591
632	5	5	90	4	2020-06-16 12:40:23.377858	2020-06-16 12:40:23.377858
633	3	61	90	7	2020-06-16 12:40:23.381495	2020-06-16 12:40:23.381495
634	4	4	90	1	2020-06-16 12:40:23.385615	2020-06-16 12:40:23.385615
635	4	16	91	10	2020-06-16 12:40:23.389347	2020-06-16 12:40:23.389347
636	5	61	91	8	2020-06-16 12:40:23.393984	2020-06-16 12:40:23.393984
637	3	59	91	2	2020-06-16 12:40:23.398159	2020-06-16 12:40:23.398159
638	2	68	91	16	2020-06-16 12:40:23.401784	2020-06-16 12:40:23.401784
639	4	31	92	7	2020-06-16 12:40:23.405582	2020-06-16 12:40:23.405582
640	4	42	93	14	2020-06-16 12:40:23.40928	2020-06-16 12:40:23.40928
641	4	73	93	10	2020-06-16 12:40:23.41289	2020-06-16 12:40:23.41289
642	3	7	93	15	2020-06-16 12:40:23.416421	2020-06-16 12:40:23.416421
643	4	9	94	14	2020-06-16 12:40:23.419831	2020-06-16 12:40:23.419831
644	5	80	96	11	2020-06-16 12:40:23.423637	2020-06-16 12:40:23.423637
645	5	27	97	10	2020-06-16 12:40:23.427403	2020-06-16 12:40:23.427403
646	2	59	97	13	2020-06-16 12:40:23.431077	2020-06-16 12:40:23.431077
647	2	16	98	16	2020-06-16 12:40:23.435761	2020-06-16 12:40:23.435761
648	4	9	98	12	2020-06-16 12:40:23.4398	2020-06-16 12:40:23.4398
649	1	55	99	4	2020-06-16 12:40:23.443557	2020-06-16 12:40:23.443557
650	2	29	99	3	2020-06-16 12:40:23.447396	2020-06-16 12:40:23.447396
651	5	47	100	1	2020-06-16 12:40:23.451703	2020-06-16 12:40:23.451703
652	1	36	100	6	2020-06-16 12:40:23.460685	2020-06-16 12:40:23.460685
653	1	46	100	16	2020-06-16 12:40:23.464943	2020-06-16 12:40:23.464943
654	3	74	101	7	2020-06-16 12:40:23.469378	2020-06-16 12:40:23.469378
655	2	81	101	13	2020-06-16 12:40:23.47334	2020-06-16 12:40:23.47334
656	4	3	101	14	2020-06-16 12:40:23.476838	2020-06-16 12:40:23.476838
657	3	94	102	5	2020-06-16 12:40:23.480496	2020-06-16 12:40:23.480496
658	4	43	102	8	2020-06-16 12:40:23.484188	2020-06-16 12:40:23.484188
659	1	64	103	16	2020-06-16 12:40:23.48804	2020-06-16 12:40:23.48804
660	1	5	103	5	2020-06-16 12:40:23.491838	2020-06-16 12:40:23.491838
661	4	84	104	2	2020-06-16 12:40:23.495846	2020-06-16 12:40:23.495846
662	3	64	104	5	2020-06-16 12:40:23.499743	2020-06-16 12:40:23.499743
663	5	23	105	2	2020-06-16 12:40:23.504127	2020-06-16 12:40:23.504127
664	1	81	105	12	2020-06-16 12:40:23.508714	2020-06-16 12:40:23.508714
665	4	83	106	16	2020-06-16 12:40:23.513018	2020-06-16 12:40:23.513018
666	5	7	106	1	2020-06-16 12:40:23.517442	2020-06-16 12:40:23.517442
667	1	51	106	15	2020-06-16 12:40:23.521904	2020-06-16 12:40:23.521904
668	1	73	106	14	2020-06-16 12:40:23.526332	2020-06-16 12:40:23.526332
669	4	8	108	4	2020-06-16 12:40:23.53059	2020-06-16 12:40:23.53059
670	3	35	109	14	2020-06-16 12:40:23.534831	2020-06-16 12:40:23.534831
671	3	93	109	15	2020-06-16 12:40:23.538942	2020-06-16 12:40:23.538942
672	4	47	109	10	2020-06-16 12:40:23.543151	2020-06-16 12:40:23.543151
673	5	74	110	16	2020-06-16 12:40:23.547503	2020-06-16 12:40:23.547503
674	4	17	111	1	2020-06-16 12:40:23.55273	2020-06-16 12:40:23.55273
675	1	81	111	2	2020-06-16 12:40:23.556878	2020-06-16 12:40:23.556878
676	5	50	111	10	2020-06-16 12:40:23.561926	2020-06-16 12:40:23.561926
677	2	37	111	16	2020-06-16 12:40:23.567211	2020-06-16 12:40:23.567211
678	1	1	113	13	2020-06-16 12:40:23.572379	2020-06-16 12:40:23.572379
679	1	31	114	11	2020-06-16 12:40:23.577685	2020-06-16 12:40:23.577685
680	5	41	114	2	2020-06-16 12:40:23.582869	2020-06-16 12:40:23.582869
681	1	45	115	7	2020-06-16 12:40:23.588144	2020-06-16 12:40:23.588144
682	4	25	115	4	2020-06-16 12:40:23.593486	2020-06-16 12:40:23.593486
683	5	50	115	13	2020-06-16 12:40:23.598628	2020-06-16 12:40:23.598628
684	1	27	116	7	2020-06-16 12:40:23.603926	2020-06-16 12:40:23.603926
685	1	60	116	15	2020-06-16 12:40:23.608716	2020-06-16 12:40:23.608716
686	1	69	117	8	2020-06-16 12:40:23.61297	2020-06-16 12:40:23.61297
687	2	53	117	10	2020-06-16 12:40:23.617314	2020-06-16 12:40:23.617314
688	3	24	117	9	2020-06-16 12:40:23.621589	2020-06-16 12:40:23.621589
689	5	39	117	1	2020-06-16 12:40:23.625494	2020-06-16 12:40:23.625494
690	1	10	118	10	2020-06-16 12:40:23.629917	2020-06-16 12:40:23.629917
691	1	35	118	7	2020-06-16 12:40:23.633852	2020-06-16 12:40:23.633852
692	4	54	118	13	2020-06-16 12:40:23.638219	2020-06-16 12:40:23.638219
693	5	77	119	13	2020-06-16 12:40:23.642442	2020-06-16 12:40:23.642442
694	5	12	120	2	2020-06-16 12:40:23.64666	2020-06-16 12:40:23.64666
695	3	41	120	11	2020-06-16 12:40:23.651702	2020-06-16 12:40:23.651702
696	5	99	120	4	2020-06-16 12:40:23.656985	2020-06-16 12:40:23.656985
697	4	48	121	10	2020-06-16 12:40:23.662169	2020-06-16 12:40:23.662169
698	1	23	122	11	2020-06-16 12:40:23.66649	2020-06-16 12:40:23.66649
699	2	29	123	16	2020-06-16 12:40:23.671371	2020-06-16 12:40:23.671371
700	5	86	123	2	2020-06-16 12:40:23.676488	2020-06-16 12:40:23.676488
701	2	18	123	7	2020-06-16 12:40:23.680518	2020-06-16 12:40:23.680518
702	1	86	124	7	2020-06-16 12:40:23.684292	2020-06-16 12:40:23.684292
703	2	74	125	11	2020-06-16 12:40:23.688186	2020-06-16 12:40:23.688186
704	1	70	126	11	2020-06-16 12:40:23.691859	2020-06-16 12:40:23.691859
705	1	68	127	4	2020-06-16 12:40:23.695421	2020-06-16 12:40:23.695421
706	4	70	128	1	2020-06-16 12:40:23.699037	2020-06-16 12:40:23.699037
707	4	60	128	12	2020-06-16 12:40:23.702658	2020-06-16 12:40:23.702658
708	3	17	129	10	2020-06-16 12:40:23.70634	2020-06-16 12:40:23.70634
709	3	1	130	11	2020-06-16 12:40:23.709848	2020-06-16 12:40:23.709848
710	4	92	130	15	2020-06-16 12:40:23.713391	2020-06-16 12:40:23.713391
711	5	37	130	5	2020-06-16 12:40:23.717138	2020-06-16 12:40:23.717138
712	4	52	131	13	2020-06-16 12:40:23.720809	2020-06-16 12:40:23.720809
713	4	39	131	8	2020-06-16 12:40:23.724381	2020-06-16 12:40:23.724381
714	5	13	131	4	2020-06-16 12:40:23.727935	2020-06-16 12:40:23.727935
715	4	6	132	11	2020-06-16 12:40:23.731599	2020-06-16 12:40:23.731599
716	5	47	132	16	2020-06-16 12:40:23.735224	2020-06-16 12:40:23.735224
717	5	11	132	12	2020-06-16 12:40:23.738968	2020-06-16 12:40:23.738968
718	5	46	133	8	2020-06-16 12:40:23.742882	2020-06-16 12:40:23.742882
719	3	62	133	3	2020-06-16 12:40:23.746603	2020-06-16 12:40:23.746603
720	4	10	133	13	2020-06-16 12:40:23.750607	2020-06-16 12:40:23.750607
721	2	73	133	10	2020-06-16 12:40:23.754643	2020-06-16 12:40:23.754643
722	4	50	134	13	2020-06-16 12:40:23.758828	2020-06-16 12:40:23.758828
723	2	51	134	11	2020-06-16 12:40:23.762525	2020-06-16 12:40:23.762525
724	2	4	134	1	2020-06-16 12:40:23.766072	2020-06-16 12:40:23.766072
725	4	7	135	10	2020-06-16 12:40:23.769634	2020-06-16 12:40:23.769634
726	4	20	135	4	2020-06-16 12:40:23.773297	2020-06-16 12:40:23.773297
727	3	30	135	8	2020-06-16 12:40:23.776998	2020-06-16 12:40:23.776998
728	1	76	136	10	2020-06-16 12:40:23.780379	2020-06-16 12:40:23.780379
729	4	62	137	12	2020-06-16 12:40:23.783763	2020-06-16 12:40:23.783763
730	2	40	137	8	2020-06-16 12:40:23.787539	2020-06-16 12:40:23.787539
731	5	50	138	14	2020-06-16 12:40:23.790849	2020-06-16 12:40:23.790849
732	2	28	138	5	2020-06-16 12:40:23.794042	2020-06-16 12:40:23.794042
733	4	88	138	8	2020-06-16 12:40:23.796979	2020-06-16 12:40:23.796979
734	1	36	139	16	2020-06-16 12:40:23.800949	2020-06-16 12:40:23.800949
735	5	55	139	4	2020-06-16 12:40:23.804156	2020-06-16 12:40:23.804156
736	1	42	140	16	2020-06-16 12:40:23.807142	2020-06-16 12:40:23.807142
737	1	44	140	14	2020-06-16 12:40:23.810061	2020-06-16 12:40:23.810061
738	3	54	140	5	2020-06-16 12:40:23.812951	2020-06-16 12:40:23.812951
739	1	24	141	14	2020-06-16 12:40:23.81606	2020-06-16 12:40:23.81606
740	5	25	141	12	2020-06-16 12:40:23.820173	2020-06-16 12:40:23.820173
741	5	98	142	11	2020-06-16 12:40:23.823596	2020-06-16 12:40:23.823596
742	3	33	143	4	2020-06-16 12:40:23.826896	2020-06-16 12:40:23.826896
743	3	70	145	15	2020-06-16 12:40:23.830023	2020-06-16 12:40:23.830023
744	2	52	145	10	2020-06-16 12:40:23.833187	2020-06-16 12:40:23.833187
745	1	14	146	14	2020-06-16 12:40:23.836489	2020-06-16 12:40:23.836489
746	3	55	146	16	2020-06-16 12:40:23.840461	2020-06-16 12:40:23.840461
747	5	10	147	6	2020-06-16 12:40:23.843887	2020-06-16 12:40:23.843887
748	2	93	148	12	2020-06-16 12:40:23.847124	2020-06-16 12:40:23.847124
749	4	15	148	15	2020-06-16 12:40:23.851041	2020-06-16 12:40:23.851041
750	1	4	149	4	2020-06-16 12:40:23.854419	2020-06-16 12:40:23.854419
751	3	34	149	5	2020-06-16 12:40:23.85807	2020-06-16 12:40:23.85807
752	1	56	150	5	2020-06-16 12:40:23.861436	2020-06-16 12:40:23.861436
753	4	1	150	2	2020-06-16 12:40:23.864641	2020-06-16 12:40:23.864641
754	2	23	151	14	2020-06-16 12:40:23.868289	2020-06-16 12:40:23.868289
755	2	53	151	7	2020-06-16 12:40:23.871821	2020-06-16 12:40:23.871821
756	4	49	152	5	2020-06-16 12:40:23.875275	2020-06-16 12:40:23.875275
757	3	62	153	15	2020-06-16 12:40:23.878766	2020-06-16 12:40:23.878766
758	2	38	153	2	2020-06-16 12:40:23.882269	2020-06-16 12:40:23.882269
759	2	56	154	14	2020-06-16 12:40:23.885997	2020-06-16 12:40:23.885997
760	4	46	154	11	2020-06-16 12:40:23.889757	2020-06-16 12:40:23.889757
761	4	94	154	16	2020-06-16 12:40:23.892743	2020-06-16 12:40:23.892743
762	3	33	155	10	2020-06-16 12:40:23.895669	2020-06-16 12:40:23.895669
763	5	11	155	4	2020-06-16 12:40:23.898543	2020-06-16 12:40:23.898543
764	4	44	155	8	2020-06-16 12:40:23.901268	2020-06-16 12:40:23.901268
765	2	11	156	5	2020-06-16 12:40:23.9042	2020-06-16 12:40:23.9042
766	3	85	156	9	2020-06-16 12:40:23.907102	2020-06-16 12:40:23.907102
767	2	87	156	6	2020-06-16 12:40:23.910449	2020-06-16 12:40:23.910449
768	5	23	157	12	2020-06-16 12:40:23.913676	2020-06-16 12:40:23.913676
769	5	24	158	1	2020-06-16 12:40:23.916857	2020-06-16 12:40:23.916857
770	2	21	158	15	2020-06-16 12:40:23.919919	2020-06-16 12:40:23.919919
771	1	51	159	3	2020-06-16 12:40:23.923097	2020-06-16 12:40:23.923097
772	3	35	160	5	2020-06-16 12:40:23.926174	2020-06-16 12:40:23.926174
773	2	23	160	14	2020-06-16 12:40:23.929244	2020-06-16 12:40:23.929244
774	4	58	161	12	2020-06-16 12:40:23.93216	2020-06-16 12:40:23.93216
775	1	69	161	6	2020-06-16 12:40:23.935638	2020-06-16 12:40:23.935638
776	5	53	161	11	2020-06-16 12:40:23.938696	2020-06-16 12:40:23.938696
777	1	59	162	7	2020-06-16 12:40:23.941768	2020-06-16 12:40:23.941768
778	2	17	162	1	2020-06-16 12:40:23.94472	2020-06-16 12:40:23.94472
779	1	52	163	10	2020-06-16 12:40:23.94773	2020-06-16 12:40:23.94773
780	4	76	164	11	2020-06-16 12:40:23.950795	2020-06-16 12:40:23.950795
781	1	77	164	16	2020-06-16 12:40:23.953936	2020-06-16 12:40:23.953936
782	2	47	165	13	2020-06-16 12:40:23.956953	2020-06-16 12:40:23.956953
783	2	79	165	10	2020-06-16 12:40:23.960085	2020-06-16 12:40:23.960085
784	4	52	166	15	2020-06-16 12:40:23.963749	2020-06-16 12:40:23.963749
785	2	42	166	16	2020-06-16 12:40:23.966849	2020-06-16 12:40:23.966849
786	2	90	166	13	2020-06-16 12:40:23.970601	2020-06-16 12:40:23.970601
787	3	17	167	16	2020-06-16 12:40:23.974261	2020-06-16 12:40:23.974261
788	4	81	168	4	2020-06-16 12:40:23.977812	2020-06-16 12:40:23.977812
789	4	14	168	2	2020-06-16 12:40:23.981245	2020-06-16 12:40:23.981245
790	5	61	168	10	2020-06-16 12:40:23.984794	2020-06-16 12:40:23.984794
791	4	79	169	9	2020-06-16 12:40:23.988521	2020-06-16 12:40:23.988521
792	4	45	169	11	2020-06-16 12:40:23.992303	2020-06-16 12:40:23.992303
793	5	83	169	1	2020-06-16 12:40:23.995862	2020-06-16 12:40:23.995862
794	3	99	169	6	2020-06-16 12:40:24.000265	2020-06-16 12:40:24.000265
795	4	72	170	4	2020-06-16 12:40:24.005726	2020-06-16 12:40:24.005726
796	5	39	170	12	2020-06-16 12:40:24.010876	2020-06-16 12:40:24.010876
797	4	24	171	8	2020-06-16 12:40:24.016622	2020-06-16 12:40:24.016622
798	4	68	171	6	2020-06-16 12:40:24.021169	2020-06-16 12:40:24.021169
799	1	62	171	13	2020-06-16 12:40:24.025164	2020-06-16 12:40:24.025164
800	4	92	172	16	2020-06-16 12:40:24.028858	2020-06-16 12:40:24.028858
801	3	68	172	11	2020-06-16 12:40:24.032894	2020-06-16 12:40:24.032894
802	2	15	173	11	2020-06-16 12:40:24.037205	2020-06-16 12:40:24.037205
803	2	5	174	4	2020-06-16 12:40:24.041502	2020-06-16 12:40:24.041502
804	2	95	175	9	2020-06-16 12:40:24.045632	2020-06-16 12:40:24.045632
805	3	97	175	2	2020-06-16 12:40:24.049365	2020-06-16 12:40:24.049365
806	3	63	176	1	2020-06-16 12:40:24.053196	2020-06-16 12:40:24.053196
807	4	32	176	12	2020-06-16 12:40:24.056842	2020-06-16 12:40:24.056842
808	5	59	176	14	2020-06-16 12:40:24.061603	2020-06-16 12:40:24.061603
809	4	20	177	12	2020-06-16 12:40:24.065975	2020-06-16 12:40:24.065975
810	2	20	178	9	2020-06-16 12:40:24.07038	2020-06-16 12:40:24.07038
811	2	84	178	1	2020-06-16 12:40:24.074768	2020-06-16 12:40:24.074768
812	2	41	178	2	2020-06-16 12:40:24.079746	2020-06-16 12:40:24.079746
813	3	7	179	15	2020-06-16 12:40:24.085184	2020-06-16 12:40:24.085184
814	5	2	180	6	2020-06-16 12:40:24.090604	2020-06-16 12:40:24.090604
815	4	86	180	13	2020-06-16 12:40:24.095479	2020-06-16 12:40:24.095479
816	3	10	180	2	2020-06-16 12:40:24.099687	2020-06-16 12:40:24.099687
817	3	68	180	16	2020-06-16 12:40:24.103399	2020-06-16 12:40:24.103399
818	1	81	181	1	2020-06-16 12:40:24.108034	2020-06-16 12:40:24.108034
819	5	81	181	10	2020-06-16 12:40:24.112176	2020-06-16 12:40:24.112176
820	4	50	181	15	2020-06-16 12:40:24.117162	2020-06-16 12:40:24.117162
821	5	33	181	8	2020-06-16 12:40:24.122391	2020-06-16 12:40:24.122391
822	3	69	182	9	2020-06-16 12:40:24.127458	2020-06-16 12:40:24.127458
823	3	50	182	4	2020-06-16 12:40:24.131703	2020-06-16 12:40:24.131703
824	5	44	182	12	2020-06-16 12:40:24.13597	2020-06-16 12:40:24.13597
825	1	68	183	5	2020-06-16 12:40:24.140416	2020-06-16 12:40:24.140416
826	5	2	184	16	2020-06-16 12:40:24.145236	2020-06-16 12:40:24.145236
827	4	69	184	10	2020-06-16 12:40:24.149375	2020-06-16 12:40:24.149375
828	5	96	184	15	2020-06-16 12:40:24.153128	2020-06-16 12:40:24.153128
829	2	86	185	15	2020-06-16 12:40:24.156766	2020-06-16 12:40:24.156766
830	1	16	185	11	2020-06-16 12:40:24.160852	2020-06-16 12:40:24.160852
831	5	86	185	4	2020-06-16 12:40:24.16548	2020-06-16 12:40:24.16548
832	4	51	186	9	2020-06-16 12:40:24.169867	2020-06-16 12:40:24.169867
833	2	83	186	11	2020-06-16 12:40:24.1743	2020-06-16 12:40:24.1743
834	3	2	187	14	2020-06-16 12:40:24.178713	2020-06-16 12:40:24.178713
835	1	13	187	12	2020-06-16 12:40:24.182497	2020-06-16 12:40:24.182497
836	4	53	187	5	2020-06-16 12:40:24.19092	2020-06-16 12:40:24.19092
837	1	44	187	3	2020-06-16 12:40:24.195195	2020-06-16 12:40:24.195195
838	4	99	188	1	2020-06-16 12:40:24.199481	2020-06-16 12:40:24.199481
839	5	66	189	16	2020-06-16 12:40:24.203262	2020-06-16 12:40:24.203262
840	5	56	189	2	2020-06-16 12:40:24.207056	2020-06-16 12:40:24.207056
841	4	16	189	3	2020-06-16 12:40:24.211079	2020-06-16 12:40:24.211079
842	3	74	189	8	2020-06-16 12:40:24.214768	2020-06-16 12:40:24.214768
843	3	81	190	2	2020-06-16 12:40:24.219181	2020-06-16 12:40:24.219181
844	3	29	190	12	2020-06-16 12:40:24.22417	2020-06-16 12:40:24.22417
845	1	30	190	4	2020-06-16 12:40:24.22865	2020-06-16 12:40:24.22865
846	2	99	191	15	2020-06-16 12:40:24.23329	2020-06-16 12:40:24.23329
847	4	42	192	11	2020-06-16 12:40:24.237591	2020-06-16 12:40:24.237591
848	2	51	192	7	2020-06-16 12:40:24.241615	2020-06-16 12:40:24.241615
849	5	95	193	11	2020-06-16 12:40:24.245442	2020-06-16 12:40:24.245442
850	5	98	193	9	2020-06-16 12:40:24.249652	2020-06-16 12:40:24.249652
851	4	50	194	15	2020-06-16 12:40:24.254231	2020-06-16 12:40:24.254231
852	1	30	194	7	2020-06-16 12:40:24.258676	2020-06-16 12:40:24.258676
853	2	94	196	14	2020-06-16 12:40:24.263293	2020-06-16 12:40:24.263293
854	2	63	196	13	2020-06-16 12:40:24.267688	2020-06-16 12:40:24.267688
855	3	27	197	8	2020-06-16 12:40:24.272166	2020-06-16 12:40:24.272166
856	2	4	197	14	2020-06-16 12:40:24.276282	2020-06-16 12:40:24.276282
857	1	94	197	3	2020-06-16 12:40:24.281032	2020-06-16 12:40:24.281032
858	3	76	198	16	2020-06-16 12:40:24.286481	2020-06-16 12:40:24.286481
859	5	50	198	5	2020-06-16 12:40:24.29197	2020-06-16 12:40:24.29197
860	2	16	198	12	2020-06-16 12:40:24.297229	2020-06-16 12:40:24.297229
861	2	6	198	9	2020-06-16 12:40:24.301985	2020-06-16 12:40:24.301985
862	1	98	199	11	2020-06-16 12:40:24.30559	2020-06-16 12:40:24.30559
863	5	75	199	16	2020-06-16 12:40:24.309124	2020-06-16 12:40:24.309124
864	5	52	200	10	2020-06-16 12:40:24.312981	2020-06-16 12:40:24.312981
865	3	14	200	11	2020-06-16 12:40:24.317406	2020-06-16 12:40:24.317406
866	3	10	200	12	2020-06-16 12:40:24.321043	2020-06-16 12:40:24.321043
867	5	73	200	15	2020-06-16 12:40:24.325305	2020-06-16 12:40:24.325305
868	4	18	201	2	2020-06-16 12:40:24.329303	2020-06-16 12:40:24.329303
869	3	72	202	10	2020-06-16 12:40:24.333119	2020-06-16 12:40:24.333119
870	4	9	203	3	2020-06-16 12:40:24.336941	2020-06-16 12:40:24.336941
871	3	5	203	14	2020-06-16 12:40:24.34059	2020-06-16 12:40:24.34059
872	3	81	203	16	2020-06-16 12:40:24.345211	2020-06-16 12:40:24.345211
873	4	54	204	5	2020-06-16 12:40:24.348664	2020-06-16 12:40:24.348664
874	5	32	204	10	2020-06-16 12:40:24.352548	2020-06-16 12:40:24.352548
875	1	56	204	7	2020-06-16 12:40:24.356111	2020-06-16 12:40:24.356111
876	3	46	205	10	2020-06-16 12:40:24.359697	2020-06-16 12:40:24.359697
877	2	35	205	14	2020-06-16 12:40:24.363406	2020-06-16 12:40:24.363406
878	1	40	206	8	2020-06-16 12:40:24.366812	2020-06-16 12:40:24.366812
879	4	22	206	10	2020-06-16 12:40:24.370218	2020-06-16 12:40:24.370218
880	2	70	206	9	2020-06-16 12:40:24.373383	2020-06-16 12:40:24.373383
881	2	45	206	11	2020-06-16 12:40:24.376721	2020-06-16 12:40:24.376721
882	4	22	207	13	2020-06-16 12:40:24.379995	2020-06-16 12:40:24.379995
883	2	17	207	14	2020-06-16 12:40:24.383197	2020-06-16 12:40:24.383197
884	2	99	208	2	2020-06-16 12:40:24.386465	2020-06-16 12:40:24.386465
885	5	77	208	4	2020-06-16 12:40:24.389802	2020-06-16 12:40:24.389802
886	3	58	208	12	2020-06-16 12:40:24.394288	2020-06-16 12:40:24.394288
887	2	23	209	3	2020-06-16 12:40:24.398249	2020-06-16 12:40:24.398249
888	4	28	209	2	2020-06-16 12:40:24.401724	2020-06-16 12:40:24.401724
889	2	18	210	10	2020-06-16 12:40:24.405081	2020-06-16 12:40:24.405081
890	3	8	210	16	2020-06-16 12:40:24.408483	2020-06-16 12:40:24.408483
891	2	9	210	9	2020-06-16 12:40:24.412054	2020-06-16 12:40:24.412054
892	1	26	211	7	2020-06-16 12:40:24.415395	2020-06-16 12:40:24.415395
893	5	98	212	5	2020-06-16 12:40:24.418772	2020-06-16 12:40:24.418772
894	4	33	213	11	2020-06-16 12:40:24.422064	2020-06-16 12:40:24.422064
895	2	5	214	15	2020-06-16 12:40:24.426075	2020-06-16 12:40:24.426075
896	4	78	214	16	2020-06-16 12:40:24.429669	2020-06-16 12:40:24.429669
897	4	88	215	4	2020-06-16 12:40:24.432987	2020-06-16 12:40:24.432987
898	3	48	215	7	2020-06-16 12:40:24.436527	2020-06-16 12:40:24.436527
899	5	36	216	15	2020-06-16 12:40:24.439911	2020-06-16 12:40:24.439911
900	2	90	216	16	2020-06-16 12:40:24.443418	2020-06-16 12:40:24.443418
901	2	7	216	5	2020-06-16 12:40:24.447017	2020-06-16 12:40:24.447017
902	4	19	217	12	2020-06-16 12:40:24.450371	2020-06-16 12:40:24.450371
903	3	6	218	9	2020-06-16 12:40:24.453675	2020-06-16 12:40:24.453675
904	4	23	218	8	2020-06-16 12:40:24.457132	2020-06-16 12:40:24.457132
905	4	95	218	7	2020-06-16 12:40:24.460787	2020-06-16 12:40:24.460787
906	5	56	218	2	2020-06-16 12:40:24.464592	2020-06-16 12:40:24.464592
907	4	19	219	5	2020-06-16 12:40:24.468259	2020-06-16 12:40:24.468259
908	5	87	219	11	2020-06-16 12:40:24.471836	2020-06-16 12:40:24.471836
909	4	5	220	7	2020-06-16 12:40:24.475532	2020-06-16 12:40:24.475532
910	2	99	221	9	2020-06-16 12:40:24.479841	2020-06-16 12:40:24.479841
911	5	86	222	10	2020-06-16 12:40:24.484262	2020-06-16 12:40:24.484262
912	5	11	223	4	2020-06-16 12:40:24.488644	2020-06-16 12:40:24.488644
913	1	85	223	15	2020-06-16 12:40:24.492745	2020-06-16 12:40:24.492745
914	1	55	223	14	2020-06-16 12:40:24.496992	2020-06-16 12:40:24.496992
915	5	48	224	5	2020-06-16 12:40:24.500778	2020-06-16 12:40:24.500778
916	3	79	224	7	2020-06-16 12:40:24.504586	2020-06-16 12:40:24.504586
917	2	16	224	15	2020-06-16 12:40:24.508445	2020-06-16 12:40:24.508445
918	5	69	225	3	2020-06-16 12:40:24.512103	2020-06-16 12:40:24.512103
919	2	8	225	12	2020-06-16 12:40:24.515485	2020-06-16 12:40:24.515485
920	1	47	225	7	2020-06-16 12:40:24.518869	2020-06-16 12:40:24.518869
921	5	63	226	2	2020-06-16 12:40:24.522222	2020-06-16 12:40:24.522222
922	4	100	226	5	2020-06-16 12:40:24.525625	2020-06-16 12:40:24.525625
923	3	55	226	12	2020-06-16 12:40:24.529176	2020-06-16 12:40:24.529176
924	3	43	226	9	2020-06-16 12:40:24.533299	2020-06-16 12:40:24.533299
925	3	91	227	6	2020-06-16 12:40:24.537787	2020-06-16 12:40:24.537787
926	1	10	227	3	2020-06-16 12:40:24.542846	2020-06-16 12:40:24.542846
927	5	44	227	4	2020-06-16 12:40:24.547273	2020-06-16 12:40:24.547273
928	2	86	228	10	2020-06-16 12:40:24.552559	2020-06-16 12:40:24.552559
929	4	94	228	5	2020-06-16 12:40:24.557632	2020-06-16 12:40:24.557632
930	3	18	229	11	2020-06-16 12:40:24.563515	2020-06-16 12:40:24.563515
931	1	10	229	3	2020-06-16 12:40:24.569242	2020-06-16 12:40:24.569242
932	5	71	229	10	2020-06-16 12:40:24.574443	2020-06-16 12:40:24.574443
933	5	46	229	16	2020-06-16 12:40:24.580024	2020-06-16 12:40:24.580024
934	1	50	230	12	2020-06-16 12:40:24.585705	2020-06-16 12:40:24.585705
935	1	16	230	13	2020-06-16 12:40:24.590871	2020-06-16 12:40:24.590871
936	4	33	230	11	2020-06-16 12:40:24.596295	2020-06-16 12:40:24.596295
937	3	16	231	9	2020-06-16 12:40:24.60235	2020-06-16 12:40:24.60235
938	1	57	231	10	2020-06-16 12:40:24.607553	2020-06-16 12:40:24.607553
939	1	66	232	9	2020-06-16 12:40:24.612868	2020-06-16 12:40:24.612868
940	5	92	232	15	2020-06-16 12:40:24.61829	2020-06-16 12:40:24.61829
941	4	86	232	10	2020-06-16 12:40:24.623528	2020-06-16 12:40:24.623528
942	3	74	233	16	2020-06-16 12:40:24.628709	2020-06-16 12:40:24.628709
943	1	48	233	13	2020-06-16 12:40:24.633494	2020-06-16 12:40:24.633494
944	1	87	234	1	2020-06-16 12:40:24.638714	2020-06-16 12:40:24.638714
945	2	52	234	4	2020-06-16 12:40:24.644002	2020-06-16 12:40:24.644002
946	3	7	234	6	2020-06-16 12:40:24.648766	2020-06-16 12:40:24.648766
947	4	18	235	9	2020-06-16 12:40:24.653077	2020-06-16 12:40:24.653077
948	4	39	235	5	2020-06-16 12:40:24.657311	2020-06-16 12:40:24.657311
949	1	10	236	3	2020-06-16 12:40:24.661539	2020-06-16 12:40:24.661539
950	5	37	236	11	2020-06-16 12:40:24.665865	2020-06-16 12:40:24.665865
951	3	29	236	7	2020-06-16 12:40:24.67012	2020-06-16 12:40:24.67012
952	2	28	237	14	2020-06-16 12:40:24.673858	2020-06-16 12:40:24.673858
953	5	28	237	13	2020-06-16 12:40:24.67775	2020-06-16 12:40:24.67775
954	2	74	237	15	2020-06-16 12:40:24.682264	2020-06-16 12:40:24.682264
955	1	30	238	12	2020-06-16 12:40:24.685953	2020-06-16 12:40:24.685953
956	1	14	238	5	2020-06-16 12:40:24.690838	2020-06-16 12:40:24.690838
957	2	94	238	8	2020-06-16 12:40:24.695315	2020-06-16 12:40:24.695315
958	2	44	238	16	2020-06-16 12:40:24.699596	2020-06-16 12:40:24.699596
959	5	90	239	7	2020-06-16 12:40:24.7047	2020-06-16 12:40:24.7047
960	3	38	239	5	2020-06-16 12:40:24.710366	2020-06-16 12:40:24.710366
961	1	1	239	11	2020-06-16 12:40:24.715662	2020-06-16 12:40:24.715662
962	5	13	240	8	2020-06-16 12:40:24.721632	2020-06-16 12:40:24.721632
963	5	35	240	9	2020-06-16 12:40:24.727026	2020-06-16 12:40:24.727026
964	2	6	241	11	2020-06-16 12:40:24.732028	2020-06-16 12:40:24.732028
965	3	49	241	7	2020-06-16 12:40:24.736973	2020-06-16 12:40:24.736973
966	1	39	241	16	2020-06-16 12:40:24.741164	2020-06-16 12:40:24.741164
967	1	77	241	8	2020-06-16 12:40:24.745019	2020-06-16 12:40:24.745019
968	1	26	242	12	2020-06-16 12:40:24.748874	2020-06-16 12:40:24.748874
969	5	84	243	14	2020-06-16 12:40:24.752708	2020-06-16 12:40:24.752708
970	2	30	243	9	2020-06-16 12:40:24.756405	2020-06-16 12:40:24.756405
971	1	35	244	9	2020-06-16 12:40:24.760129	2020-06-16 12:40:24.760129
972	4	21	245	15	2020-06-16 12:40:24.763833	2020-06-16 12:40:24.763833
973	4	3	245	13	2020-06-16 12:40:24.767425	2020-06-16 12:40:24.767425
974	3	44	245	2	2020-06-16 12:40:24.771051	2020-06-16 12:40:24.771051
975	3	79	246	1	2020-06-16 12:40:24.774613	2020-06-16 12:40:24.774613
976	1	96	246	7	2020-06-16 12:40:24.778419	2020-06-16 12:40:24.778419
977	4	42	246	16	2020-06-16 12:40:24.782059	2020-06-16 12:40:24.782059
978	4	11	247	4	2020-06-16 12:40:24.786226	2020-06-16 12:40:24.786226
979	5	58	248	15	2020-06-16 12:40:24.790362	2020-06-16 12:40:24.790362
980	4	78	248	9	2020-06-16 12:40:24.794792	2020-06-16 12:40:24.794792
981	4	72	248	6	2020-06-16 12:40:24.799731	2020-06-16 12:40:24.799731
982	2	100	249	6	2020-06-16 12:40:24.80397	2020-06-16 12:40:24.80397
983	2	26	249	2	2020-06-16 12:40:24.807705	2020-06-16 12:40:24.807705
984	2	41	250	16	2020-06-16 12:40:24.811572	2020-06-16 12:40:24.811572
985	1	74	251	4	2020-06-16 12:40:24.815167	2020-06-16 12:40:24.815167
986	5	5	251	1	2020-06-16 12:40:24.819164	2020-06-16 12:40:24.819164
987	1	63	252	13	2020-06-16 12:40:24.822521	2020-06-16 12:40:24.822521
988	1	98	252	16	2020-06-16 12:40:24.825945	2020-06-16 12:40:24.825945
989	3	72	252	4	2020-06-16 12:40:24.829482	2020-06-16 12:40:24.829482
990	3	64	252	6	2020-06-16 12:40:24.833733	2020-06-16 12:40:24.833733
991	4	92	253	4	2020-06-16 12:40:24.837968	2020-06-16 12:40:24.837968
992	3	54	253	6	2020-06-16 12:40:24.845912	2020-06-16 12:40:24.845912
993	3	61	253	8	2020-06-16 12:40:24.849675	2020-06-16 12:40:24.849675
994	3	80	254	2	2020-06-16 12:40:24.853642	2020-06-16 12:40:24.853642
995	1	29	255	14	2020-06-16 12:40:24.857048	2020-06-16 12:40:24.857048
996	5	58	255	4	2020-06-16 12:40:24.860667	2020-06-16 12:40:24.860667
997	2	17	255	10	2020-06-16 12:40:24.863736	2020-06-16 12:40:24.863736
998	5	1	256	14	2020-06-16 12:40:24.867004	2020-06-16 12:40:24.867004
999	2	65	256	6	2020-06-16 12:40:24.870552	2020-06-16 12:40:24.870552
1000	1	56	256	13	2020-06-16 12:40:24.873885	2020-06-16 12:40:24.873885
1001	3	74	257	15	2020-06-16 12:40:24.877203	2020-06-16 12:40:24.877203
1002	1	24	258	6	2020-06-16 12:40:24.880376	2020-06-16 12:40:24.880376
1003	1	97	258	16	2020-06-16 12:40:24.883496	2020-06-16 12:40:24.883496
1004	2	70	258	14	2020-06-16 12:40:24.886366	2020-06-16 12:40:24.886366
1005	4	40	259	14	2020-06-16 12:40:24.889788	2020-06-16 12:40:24.889788
1006	4	98	259	3	2020-06-16 12:40:24.894381	2020-06-16 12:40:24.894381
1007	4	18	260	16	2020-06-16 12:40:24.897999	2020-06-16 12:40:24.897999
1008	5	88	261	14	2020-06-16 12:40:24.905637	2020-06-16 12:40:24.905637
1009	1	61	262	2	2020-06-16 12:40:24.909043	2020-06-16 12:40:24.909043
1010	2	28	262	14	2020-06-16 12:40:24.912383	2020-06-16 12:40:24.912383
1011	4	23	262	3	2020-06-16 12:40:24.915799	2020-06-16 12:40:24.915799
1012	5	47	263	2	2020-06-16 12:40:24.919368	2020-06-16 12:40:24.919368
1013	4	60	263	12	2020-06-16 12:40:24.92293	2020-06-16 12:40:24.92293
1014	3	56	263	3	2020-06-16 12:40:24.926559	2020-06-16 12:40:24.926559
1015	2	95	264	12	2020-06-16 12:40:24.930127	2020-06-16 12:40:24.930127
1016	3	95	265	16	2020-06-16 12:40:24.933965	2020-06-16 12:40:24.933965
1017	3	22	266	2	2020-06-16 12:40:24.937445	2020-06-16 12:40:24.937445
1018	4	30	266	4	2020-06-16 12:40:24.940862	2020-06-16 12:40:24.940862
1019	2	79	267	2	2020-06-16 12:40:24.943975	2020-06-16 12:40:24.943975
1020	4	84	267	15	2020-06-16 12:40:24.947224	2020-06-16 12:40:24.947224
1021	4	84	268	4	2020-06-16 12:40:24.950398	2020-06-16 12:40:24.950398
1022	4	68	268	2	2020-06-16 12:40:24.954042	2020-06-16 12:40:24.954042
1023	1	72	268	8	2020-06-16 12:40:24.958442	2020-06-16 12:40:24.958442
1024	5	58	269	8	2020-06-16 12:40:24.965665	2020-06-16 12:40:24.965665
1025	2	7	269	5	2020-06-16 12:40:24.968889	2020-06-16 12:40:24.968889
1026	2	53	270	4	2020-06-16 12:40:24.972234	2020-06-16 12:40:24.972234
1027	4	29	270	12	2020-06-16 12:40:24.975535	2020-06-16 12:40:24.975535
1028	4	77	270	1	2020-06-16 12:40:24.978716	2020-06-16 12:40:24.978716
1029	4	36	271	10	2020-06-16 12:40:24.982168	2020-06-16 12:40:24.982168
1030	1	48	272	14	2020-06-16 12:40:24.985502	2020-06-16 12:40:24.985502
1031	3	95	272	9	2020-06-16 12:40:24.988795	2020-06-16 12:40:24.988795
1032	1	10	272	8	2020-06-16 12:40:24.992059	2020-06-16 12:40:24.992059
1033	5	76	273	5	2020-06-16 12:40:24.995393	2020-06-16 12:40:24.995393
1034	4	94	273	15	2020-06-16 12:40:24.998653	2020-06-16 12:40:24.998653
1035	1	51	273	7	2020-06-16 12:40:25.002003	2020-06-16 12:40:25.002003
1036	2	24	274	11	2020-06-16 12:40:25.005692	2020-06-16 12:40:25.005692
1037	1	19	274	3	2020-06-16 12:40:25.010466	2020-06-16 12:40:25.010466
1038	4	29	275	8	2020-06-16 12:40:25.014724	2020-06-16 12:40:25.014724
1039	5	91	275	2	2020-06-16 12:40:25.019068	2020-06-16 12:40:25.019068
1040	2	33	275	11	2020-06-16 12:40:25.023181	2020-06-16 12:40:25.023181
1041	1	74	276	11	2020-06-16 12:40:25.027324	2020-06-16 12:40:25.027324
1042	4	45	276	1	2020-06-16 12:40:25.03239	2020-06-16 12:40:25.03239
1043	3	35	276	13	2020-06-16 12:40:25.037574	2020-06-16 12:40:25.037574
1044	4	33	276	7	2020-06-16 12:40:25.04303	2020-06-16 12:40:25.04303
1045	5	52	277	10	2020-06-16 12:40:25.04812	2020-06-16 12:40:25.04812
1046	5	53	277	16	2020-06-16 12:40:25.052614	2020-06-16 12:40:25.052614
1047	4	91	278	14	2020-06-16 12:40:25.0578	2020-06-16 12:40:25.0578
1048	5	41	278	10	2020-06-16 12:40:25.062713	2020-06-16 12:40:25.062713
1049	3	68	279	11	2020-06-16 12:40:25.068318	2020-06-16 12:40:25.068318
1050	1	77	279	4	2020-06-16 12:40:25.073719	2020-06-16 12:40:25.073719
1051	4	29	279	7	2020-06-16 12:40:25.079095	2020-06-16 12:40:25.079095
1052	5	57	279	1	2020-06-16 12:40:25.084484	2020-06-16 12:40:25.084484
1053	5	100	280	3	2020-06-16 12:40:25.089523	2020-06-16 12:40:25.089523
1054	4	71	281	3	2020-06-16 12:40:25.094304	2020-06-16 12:40:25.094304
1055	3	1	282	6	2020-06-16 12:40:25.09948	2020-06-16 12:40:25.09948
1056	5	17	282	5	2020-06-16 12:40:25.104922	2020-06-16 12:40:25.104922
1057	5	3	282	16	2020-06-16 12:40:25.109474	2020-06-16 12:40:25.109474
1058	4	92	283	5	2020-06-16 12:40:25.113944	2020-06-16 12:40:25.113944
1059	1	52	283	3	2020-06-16 12:40:25.118381	2020-06-16 12:40:25.118381
1060	4	43	283	9	2020-06-16 12:40:25.122075	2020-06-16 12:40:25.122075
1061	1	41	284	2	2020-06-16 12:40:25.125817	2020-06-16 12:40:25.125817
1062	3	98	284	7	2020-06-16 12:40:25.129598	2020-06-16 12:40:25.129598
1063	5	64	284	11	2020-06-16 12:40:25.133861	2020-06-16 12:40:25.133861
1064	3	52	284	4	2020-06-16 12:40:25.138039	2020-06-16 12:40:25.138039
1065	3	43	285	2	2020-06-16 12:40:25.142109	2020-06-16 12:40:25.142109
1066	3	47	285	9	2020-06-16 12:40:25.147827	2020-06-16 12:40:25.147827
1067	5	32	285	1	2020-06-16 12:40:25.153084	2020-06-16 12:40:25.153084
1068	1	62	286	9	2020-06-16 12:40:25.158371	2020-06-16 12:40:25.158371
1069	1	55	286	3	2020-06-16 12:40:25.163531	2020-06-16 12:40:25.163531
1070	1	91	286	2	2020-06-16 12:40:25.168823	2020-06-16 12:40:25.168823
1071	5	58	287	10	2020-06-16 12:40:25.173911	2020-06-16 12:40:25.173911
1072	2	72	287	7	2020-06-16 12:40:25.179217	2020-06-16 12:40:25.179217
1073	3	17	288	7	2020-06-16 12:40:25.184377	2020-06-16 12:40:25.184377
1074	4	77	288	6	2020-06-16 12:40:25.189433	2020-06-16 12:40:25.189433
1075	4	96	288	15	2020-06-16 12:40:25.194697	2020-06-16 12:40:25.194697
1076	1	57	288	11	2020-06-16 12:40:25.199834	2020-06-16 12:40:25.199834
1077	2	44	289	4	2020-06-16 12:40:25.205154	2020-06-16 12:40:25.205154
1078	4	65	289	16	2020-06-16 12:40:25.210348	2020-06-16 12:40:25.210348
1079	4	82	289	11	2020-06-16 12:40:25.215869	2020-06-16 12:40:25.215869
1080	1	19	289	10	2020-06-16 12:40:25.221113	2020-06-16 12:40:25.221113
1081	1	84	290	5	2020-06-16 12:40:25.226434	2020-06-16 12:40:25.226434
1082	1	90	291	11	2020-06-16 12:40:25.231913	2020-06-16 12:40:25.231913
1083	3	14	292	8	2020-06-16 12:40:25.237384	2020-06-16 12:40:25.237384
1084	3	95	293	2	2020-06-16 12:40:25.242695	2020-06-16 12:40:25.242695
1085	5	58	293	9	2020-06-16 12:40:25.24793	2020-06-16 12:40:25.24793
1086	4	44	294	13	2020-06-16 12:40:25.253227	2020-06-16 12:40:25.253227
1087	5	91	294	5	2020-06-16 12:40:25.258564	2020-06-16 12:40:25.258564
1088	1	82	295	13	2020-06-16 12:40:25.263843	2020-06-16 12:40:25.263843
1089	4	2	295	10	2020-06-16 12:40:25.269183	2020-06-16 12:40:25.269183
1090	3	35	296	9	2020-06-16 12:40:25.274514	2020-06-16 12:40:25.274514
1091	2	75	297	9	2020-06-16 12:40:25.27953	2020-06-16 12:40:25.27953
1092	1	33	297	6	2020-06-16 12:40:25.285387	2020-06-16 12:40:25.285387
1093	5	29	298	3	2020-06-16 12:40:25.291034	2020-06-16 12:40:25.291034
1094	1	57	299	14	2020-06-16 12:40:25.296878	2020-06-16 12:40:25.296878
1095	3	25	300	10	2020-06-16 12:40:25.302663	2020-06-16 12:40:25.302663
1096	5	66	300	13	2020-06-16 12:40:25.308382	2020-06-16 12:40:25.308382
1097	4	10	300	1	2020-06-16 12:40:25.313784	2020-06-16 12:40:25.313784
1098	2	55	300	14	2020-06-16 12:40:25.319435	2020-06-16 12:40:25.319435
1099	2	43	301	2	2020-06-16 12:40:25.323707	2020-06-16 12:40:25.323707
1100	4	6	301	12	2020-06-16 12:40:25.328123	2020-06-16 12:40:25.328123
1101	4	64	301	10	2020-06-16 12:40:25.33228	2020-06-16 12:40:25.33228
1102	3	95	302	6	2020-06-16 12:40:25.336444	2020-06-16 12:40:25.336444
1103	5	45	302	14	2020-06-16 12:40:25.341208	2020-06-16 12:40:25.341208
1104	5	18	302	7	2020-06-16 12:40:25.345402	2020-06-16 12:40:25.345402
1105	2	18	303	1	2020-06-16 12:40:25.349368	2020-06-16 12:40:25.349368
1106	4	14	304	12	2020-06-16 12:40:25.353248	2020-06-16 12:40:25.353248
1107	4	51	304	2	2020-06-16 12:40:25.357222	2020-06-16 12:40:25.357222
1108	3	23	304	1	2020-06-16 12:40:25.361159	2020-06-16 12:40:25.361159
1109	2	48	304	3	2020-06-16 12:40:25.364846	2020-06-16 12:40:25.364846
1110	2	67	305	2	2020-06-16 12:40:25.369388	2020-06-16 12:40:25.369388
1111	1	70	305	1	2020-06-16 12:40:25.374815	2020-06-16 12:40:25.374815
1112	1	67	305	3	2020-06-16 12:40:25.379802	2020-06-16 12:40:25.379802
1113	2	34	305	6	2020-06-16 12:40:25.38488	2020-06-16 12:40:25.38488
1114	2	86	306	11	2020-06-16 12:40:25.38986	2020-06-16 12:40:25.38986
1115	1	53	306	3	2020-06-16 12:40:25.394048	2020-06-16 12:40:25.394048
1116	1	47	307	13	2020-06-16 12:40:25.397879	2020-06-16 12:40:25.397879
1117	1	1	307	9	2020-06-16 12:40:25.401551	2020-06-16 12:40:25.401551
1118	5	3	307	11	2020-06-16 12:40:25.40452	2020-06-16 12:40:25.40452
1119	5	69	308	16	2020-06-16 12:40:25.4074	2020-06-16 12:40:25.4074
1120	1	21	308	12	2020-06-16 12:40:25.410526	2020-06-16 12:40:25.410526
1121	2	59	308	5	2020-06-16 12:40:25.413591	2020-06-16 12:40:25.413591
1122	5	93	309	1	2020-06-16 12:40:25.416588	2020-06-16 12:40:25.416588
1123	4	22	310	8	2020-06-16 12:40:25.419763	2020-06-16 12:40:25.419763
1124	1	18	310	2	2020-06-16 12:40:25.422979	2020-06-16 12:40:25.422979
1125	3	98	310	14	2020-06-16 12:40:25.426121	2020-06-16 12:40:25.426121
1126	1	28	310	16	2020-06-16 12:40:25.429084	2020-06-16 12:40:25.429084
1127	2	85	311	8	2020-06-16 12:40:25.432103	2020-06-16 12:40:25.432103
1128	5	96	311	1	2020-06-16 12:40:25.435087	2020-06-16 12:40:25.435087
1129	4	78	312	12	2020-06-16 12:40:25.438124	2020-06-16 12:40:25.438124
1130	5	67	312	8	2020-06-16 12:40:25.441245	2020-06-16 12:40:25.441245
1131	2	34	313	1	2020-06-16 12:40:25.44466	2020-06-16 12:40:25.44466
1132	5	64	313	12	2020-06-16 12:40:25.44792	2020-06-16 12:40:25.44792
1133	2	5	314	7	2020-06-16 12:40:25.45103	2020-06-16 12:40:25.45103
1134	1	31	314	11	2020-06-16 12:40:25.454002	2020-06-16 12:40:25.454002
1135	2	74	314	14	2020-06-16 12:40:25.456988	2020-06-16 12:40:25.456988
1136	3	34	315	4	2020-06-16 12:40:25.460196	2020-06-16 12:40:25.460196
1137	1	87	315	11	2020-06-16 12:40:25.46329	2020-06-16 12:40:25.46329
1138	3	8	315	5	2020-06-16 12:40:25.466671	2020-06-16 12:40:25.466671
1139	5	76	316	8	2020-06-16 12:40:25.470183	2020-06-16 12:40:25.470183
1140	3	100	316	15	2020-06-16 12:40:25.474106	2020-06-16 12:40:25.474106
1141	1	90	317	1	2020-06-16 12:40:25.479176	2020-06-16 12:40:25.479176
1142	5	7	318	2	2020-06-16 12:40:25.483249	2020-06-16 12:40:25.483249
1143	4	58	319	5	2020-06-16 12:40:25.487704	2020-06-16 12:40:25.487704
1144	2	12	319	16	2020-06-16 12:40:25.492967	2020-06-16 12:40:25.492967
1145	2	72	319	14	2020-06-16 12:40:25.4982	2020-06-16 12:40:25.4982
1146	1	61	319	2	2020-06-16 12:40:25.502687	2020-06-16 12:40:25.502687
1147	2	68	320	5	2020-06-16 12:40:25.507976	2020-06-16 12:40:25.507976
1148	3	56	320	2	2020-06-16 12:40:25.513512	2020-06-16 12:40:25.513512
1149	3	29	320	16	2020-06-16 12:40:25.518915	2020-06-16 12:40:25.518915
1150	2	73	321	2	2020-06-16 12:40:25.524205	2020-06-16 12:40:25.524205
1151	2	82	321	13	2020-06-16 12:40:25.529678	2020-06-16 12:40:25.529678
1152	5	82	322	9	2020-06-16 12:40:25.535016	2020-06-16 12:40:25.535016
1153	5	58	323	4	2020-06-16 12:40:25.540706	2020-06-16 12:40:25.540706
1154	4	13	323	5	2020-06-16 12:40:25.545926	2020-06-16 12:40:25.545926
1155	4	87	324	6	2020-06-16 12:40:25.550192	2020-06-16 12:40:25.550192
1156	4	35	324	1	2020-06-16 12:40:25.554081	2020-06-16 12:40:25.554081
1157	2	8	324	11	2020-06-16 12:40:25.557766	2020-06-16 12:40:25.557766
1158	3	55	324	12	2020-06-16 12:40:25.561651	2020-06-16 12:40:25.561651
1159	4	21	325	12	2020-06-16 12:40:25.565091	2020-06-16 12:40:25.565091
1160	2	54	325	1	2020-06-16 12:40:25.568425	2020-06-16 12:40:25.568425
1161	4	43	325	8	2020-06-16 12:40:25.571473	2020-06-16 12:40:25.571473
1162	5	13	326	16	2020-06-16 12:40:25.574859	2020-06-16 12:40:25.574859
1163	5	94	326	14	2020-06-16 12:40:25.577979	2020-06-16 12:40:25.577979
1164	2	13	326	5	2020-06-16 12:40:25.581042	2020-06-16 12:40:25.581042
1165	3	91	327	12	2020-06-16 12:40:25.58402	2020-06-16 12:40:25.58402
1166	5	70	327	6	2020-06-16 12:40:25.587835	2020-06-16 12:40:25.587835
1167	4	97	328	1	2020-06-16 12:40:25.591473	2020-06-16 12:40:25.591473
1168	2	24	329	4	2020-06-16 12:40:25.59927	2020-06-16 12:40:25.59927
1169	1	5	329	16	2020-06-16 12:40:25.603158	2020-06-16 12:40:25.603158
1170	5	17	329	7	2020-06-16 12:40:25.607002	2020-06-16 12:40:25.607002
1171	4	53	330	2	2020-06-16 12:40:25.61064	2020-06-16 12:40:25.61064
1172	1	6	330	14	2020-06-16 12:40:25.614612	2020-06-16 12:40:25.614612
1173	1	72	331	6	2020-06-16 12:40:25.618851	2020-06-16 12:40:25.618851
1174	5	85	331	2	2020-06-16 12:40:25.623704	2020-06-16 12:40:25.623704
1175	2	77	331	1	2020-06-16 12:40:25.628833	2020-06-16 12:40:25.628833
1176	3	81	331	4	2020-06-16 12:40:25.634361	2020-06-16 12:40:25.634361
1177	3	97	332	4	2020-06-16 12:40:25.639896	2020-06-16 12:40:25.639896
1178	5	79	332	2	2020-06-16 12:40:25.645847	2020-06-16 12:40:25.645847
1179	4	36	333	6	2020-06-16 12:40:25.652034	2020-06-16 12:40:25.652034
1180	1	63	334	15	2020-06-16 12:40:25.657688	2020-06-16 12:40:25.657688
1181	4	32	335	11	2020-06-16 12:40:25.663142	2020-06-16 12:40:25.663142
1182	3	61	335	4	2020-06-16 12:40:25.668591	2020-06-16 12:40:25.668591
1183	4	96	336	15	2020-06-16 12:40:25.673923	2020-06-16 12:40:25.673923
1184	1	18	336	6	2020-06-16 12:40:25.679173	2020-06-16 12:40:25.679173
1185	1	38	336	12	2020-06-16 12:40:25.684512	2020-06-16 12:40:25.684512
1186	1	58	336	2	2020-06-16 12:40:25.689799	2020-06-16 12:40:25.689799
1187	2	100	337	14	2020-06-16 12:40:25.694806	2020-06-16 12:40:25.694806
1188	3	15	337	7	2020-06-16 12:40:25.699128	2020-06-16 12:40:25.699128
1189	1	77	337	11	2020-06-16 12:40:25.703354	2020-06-16 12:40:25.703354
1190	1	34	338	14	2020-06-16 12:40:25.707562	2020-06-16 12:40:25.707562
1191	4	97	338	3	2020-06-16 12:40:25.712883	2020-06-16 12:40:25.712883
1192	4	9	338	1	2020-06-16 12:40:25.717983	2020-06-16 12:40:25.717983
1193	4	53	338	13	2020-06-16 12:40:25.723448	2020-06-16 12:40:25.723448
1194	3	88	339	9	2020-06-16 12:40:25.727822	2020-06-16 12:40:25.727822
1195	3	44	339	3	2020-06-16 12:40:25.73311	2020-06-16 12:40:25.73311
1196	1	46	340	8	2020-06-16 12:40:25.73852	2020-06-16 12:40:25.73852
1197	3	24	340	9	2020-06-16 12:40:25.743732	2020-06-16 12:40:25.743732
1198	4	47	341	14	2020-06-16 12:40:25.749018	2020-06-16 12:40:25.749018
1199	4	98	341	7	2020-06-16 12:40:25.754288	2020-06-16 12:40:25.754288
1200	4	91	342	7	2020-06-16 12:40:25.759388	2020-06-16 12:40:25.759388
1201	2	41	342	8	2020-06-16 12:40:25.763898	2020-06-16 12:40:25.763898
1202	5	68	343	12	2020-06-16 12:40:25.769011	2020-06-16 12:40:25.769011
1203	1	6	343	10	2020-06-16 12:40:25.773314	2020-06-16 12:40:25.773314
1204	5	91	343	8	2020-06-16 12:40:25.77762	2020-06-16 12:40:25.77762
1205	3	7	343	14	2020-06-16 12:40:25.781462	2020-06-16 12:40:25.781462
1206	3	19	344	10	2020-06-16 12:40:25.785594	2020-06-16 12:40:25.785594
1207	5	12	344	6	2020-06-16 12:40:25.7902	2020-06-16 12:40:25.7902
1208	3	42	344	13	2020-06-16 12:40:25.794502	2020-06-16 12:40:25.794502
1209	4	1	345	4	2020-06-16 12:40:25.799679	2020-06-16 12:40:25.799679
1210	5	74	345	11	2020-06-16 12:40:25.804409	2020-06-16 12:40:25.804409
1211	3	6	345	6	2020-06-16 12:40:25.808673	2020-06-16 12:40:25.808673
1212	1	14	346	5	2020-06-16 12:40:25.812779	2020-06-16 12:40:25.812779
1213	1	25	347	7	2020-06-16 12:40:25.817475	2020-06-16 12:40:25.817475
1214	1	22	347	11	2020-06-16 12:40:25.821923	2020-06-16 12:40:25.821923
1215	3	55	347	14	2020-06-16 12:40:25.826081	2020-06-16 12:40:25.826081
1216	4	68	348	13	2020-06-16 12:40:25.830539	2020-06-16 12:40:25.830539
1217	5	70	348	12	2020-06-16 12:40:25.83418	2020-06-16 12:40:25.83418
1218	4	3	349	8	2020-06-16 12:40:25.837937	2020-06-16 12:40:25.837937
1219	5	91	349	1	2020-06-16 12:40:25.842013	2020-06-16 12:40:25.842013
1220	3	38	349	14	2020-06-16 12:40:25.845601	2020-06-16 12:40:25.845601
1221	1	67	350	5	2020-06-16 12:40:25.849399	2020-06-16 12:40:25.849399
1222	2	18	350	8	2020-06-16 12:40:25.853603	2020-06-16 12:40:25.853603
1223	3	62	350	10	2020-06-16 12:40:25.857558	2020-06-16 12:40:25.857558
1224	3	19	350	13	2020-06-16 12:40:25.861204	2020-06-16 12:40:25.861204
1225	3	23	351	4	2020-06-16 12:40:25.865082	2020-06-16 12:40:25.865082
1226	4	91	351	14	2020-06-16 12:40:25.868713	2020-06-16 12:40:25.868713
1227	4	31	351	2	2020-06-16 12:40:25.872282	2020-06-16 12:40:25.872282
1228	2	86	351	5	2020-06-16 12:40:25.875824	2020-06-16 12:40:25.875824
1229	2	2	352	16	2020-06-16 12:40:25.879325	2020-06-16 12:40:25.879325
1230	1	71	353	15	2020-06-16 12:40:25.882945	2020-06-16 12:40:25.882945
1231	5	5	353	12	2020-06-16 12:40:25.886618	2020-06-16 12:40:25.886618
1232	3	90	353	4	2020-06-16 12:40:25.890221	2020-06-16 12:40:25.890221
1233	5	1	354	1	2020-06-16 12:40:25.894046	2020-06-16 12:40:25.894046
1234	2	100	355	6	2020-06-16 12:40:25.898996	2020-06-16 12:40:25.898996
1235	5	48	355	3	2020-06-16 12:40:25.903393	2020-06-16 12:40:25.903393
1236	1	97	355	12	2020-06-16 12:40:25.907377	2020-06-16 12:40:25.907377
1237	4	9	356	2	2020-06-16 12:40:25.914557	2020-06-16 12:40:25.914557
1238	2	29	356	13	2020-06-16 12:40:25.918079	2020-06-16 12:40:25.918079
1239	4	23	356	6	2020-06-16 12:40:25.921204	2020-06-16 12:40:25.921204
1240	2	73	357	10	2020-06-16 12:40:25.924384	2020-06-16 12:40:25.924384
1241	1	45	357	5	2020-06-16 12:40:25.92759	2020-06-16 12:40:25.92759
1242	5	54	357	9	2020-06-16 12:40:25.930796	2020-06-16 12:40:25.930796
1243	2	10	357	3	2020-06-16 12:40:25.934224	2020-06-16 12:40:25.934224
1244	2	33	358	2	2020-06-16 12:40:25.937525	2020-06-16 12:40:25.937525
1245	1	5	359	14	2020-06-16 12:40:25.940537	2020-06-16 12:40:25.940537
1246	3	11	359	5	2020-06-16 12:40:25.943523	2020-06-16 12:40:25.943523
1247	1	83	360	9	2020-06-16 12:40:25.946302	2020-06-16 12:40:25.946302
1248	2	22	360	3	2020-06-16 12:40:25.949025	2020-06-16 12:40:25.949025
1249	5	14	360	13	2020-06-16 12:40:25.952131	2020-06-16 12:40:25.952131
1250	2	33	361	14	2020-06-16 12:40:25.956077	2020-06-16 12:40:25.956077
1251	3	24	362	5	2020-06-16 12:40:25.95929	2020-06-16 12:40:25.95929
1252	4	49	362	13	2020-06-16 12:40:25.962291	2020-06-16 12:40:25.962291
1253	2	63	363	15	2020-06-16 12:40:25.965255	2020-06-16 12:40:25.965255
1254	3	78	364	5	2020-06-16 12:40:25.968325	2020-06-16 12:40:25.968325
1255	4	5	364	3	2020-06-16 12:40:25.971156	2020-06-16 12:40:25.971156
1256	2	48	365	10	2020-06-16 12:40:25.974279	2020-06-16 12:40:25.974279
1257	4	17	365	12	2020-06-16 12:40:25.977371	2020-06-16 12:40:25.977371
1258	1	22	365	4	2020-06-16 12:40:25.9812	2020-06-16 12:40:25.9812
1259	4	49	366	11	2020-06-16 12:40:25.985558	2020-06-16 12:40:25.985558
1260	4	7	366	2	2020-06-16 12:40:25.990154	2020-06-16 12:40:25.990154
1261	5	52	367	10	2020-06-16 12:40:25.994597	2020-06-16 12:40:25.994597
1262	5	39	367	11	2020-06-16 12:40:25.998855	2020-06-16 12:40:25.998855
1263	2	30	367	12	2020-06-16 12:40:26.002982	2020-06-16 12:40:26.002982
1264	2	97	367	6	2020-06-16 12:40:26.00705	2020-06-16 12:40:26.00705
1265	1	87	368	4	2020-06-16 12:40:26.01071	2020-06-16 12:40:26.01071
1266	1	84	368	3	2020-06-16 12:40:26.014574	2020-06-16 12:40:26.014574
1267	4	93	368	8	2020-06-16 12:40:26.020075	2020-06-16 12:40:26.020075
1268	3	38	369	13	2020-06-16 12:40:26.028783	2020-06-16 12:40:26.028783
1269	5	30	370	7	2020-06-16 12:40:26.032135	2020-06-16 12:40:26.032135
1270	1	37	370	6	2020-06-16 12:40:26.035546	2020-06-16 12:40:26.035546
1271	4	92	371	2	2020-06-16 12:40:26.038875	2020-06-16 12:40:26.038875
1272	3	22	371	6	2020-06-16 12:40:26.042215	2020-06-16 12:40:26.042215
1273	3	78	371	5	2020-06-16 12:40:26.045512	2020-06-16 12:40:26.045512
1274	3	27	372	1	2020-06-16 12:40:26.048854	2020-06-16 12:40:26.048854
1275	2	98	373	6	2020-06-16 12:40:26.052253	2020-06-16 12:40:26.052253
1276	4	73	373	5	2020-06-16 12:40:26.055477	2020-06-16 12:40:26.055477
1277	3	81	373	13	2020-06-16 12:40:26.058708	2020-06-16 12:40:26.058708
1278	5	42	374	16	2020-06-16 12:40:26.061912	2020-06-16 12:40:26.061912
1279	1	51	374	13	2020-06-16 12:40:26.065069	2020-06-16 12:40:26.065069
1280	5	23	374	6	2020-06-16 12:40:26.068229	2020-06-16 12:40:26.068229
1281	4	71	375	3	2020-06-16 12:40:26.071228	2020-06-16 12:40:26.071228
1282	2	33	376	11	2020-06-16 12:40:26.074148	2020-06-16 12:40:26.074148
1283	3	53	377	5	2020-06-16 12:40:26.077452	2020-06-16 12:40:26.077452
1284	4	99	377	7	2020-06-16 12:40:26.080889	2020-06-16 12:40:26.080889
1285	3	81	377	13	2020-06-16 12:40:26.084612	2020-06-16 12:40:26.084612
1286	4	56	377	4	2020-06-16 12:40:26.088287	2020-06-16 12:40:26.088287
1287	3	55	378	4	2020-06-16 12:40:26.091791	2020-06-16 12:40:26.091791
1288	2	15	379	3	2020-06-16 12:40:26.095237	2020-06-16 12:40:26.095237
1289	5	95	380	8	2020-06-16 12:40:26.098819	2020-06-16 12:40:26.098819
1290	5	92	380	11	2020-06-16 12:40:26.102305	2020-06-16 12:40:26.102305
1291	2	27	381	7	2020-06-16 12:40:26.105845	2020-06-16 12:40:26.105845
1292	2	92	381	9	2020-06-16 12:40:26.109397	2020-06-16 12:40:26.109397
1293	5	43	382	7	2020-06-16 12:40:26.113535	2020-06-16 12:40:26.113535
1294	3	7	382	2	2020-06-16 12:40:26.117608	2020-06-16 12:40:26.117608
1295	2	32	382	15	2020-06-16 12:40:26.121985	2020-06-16 12:40:26.121985
1296	1	26	383	6	2020-06-16 12:40:26.126034	2020-06-16 12:40:26.126034
1297	3	73	383	11	2020-06-16 12:40:26.130526	2020-06-16 12:40:26.130526
1298	4	91	383	8	2020-06-16 12:40:26.134707	2020-06-16 12:40:26.134707
1299	4	7	384	13	2020-06-16 12:40:26.138991	2020-06-16 12:40:26.138991
1300	1	61	384	4	2020-06-16 12:40:26.142817	2020-06-16 12:40:26.142817
1301	5	89	384	5	2020-06-16 12:40:26.147185	2020-06-16 12:40:26.147185
1302	1	45	384	8	2020-06-16 12:40:26.151509	2020-06-16 12:40:26.151509
1303	4	36	385	11	2020-06-16 12:40:26.15591	2020-06-16 12:40:26.15591
1304	3	92	385	12	2020-06-16 12:40:26.159664	2020-06-16 12:40:26.159664
1305	4	4	386	5	2020-06-16 12:40:26.163591	2020-06-16 12:40:26.163591
1306	5	98	386	2	2020-06-16 12:40:26.1673	2020-06-16 12:40:26.1673
1307	4	73	386	8	2020-06-16 12:40:26.171374	2020-06-16 12:40:26.171374
1308	1	50	386	9	2020-06-16 12:40:26.176586	2020-06-16 12:40:26.176586
1309	4	78	387	2	2020-06-16 12:40:26.181358	2020-06-16 12:40:26.181358
1310	3	66	387	16	2020-06-16 12:40:26.185774	2020-06-16 12:40:26.185774
1311	4	50	388	5	2020-06-16 12:40:26.191245	2020-06-16 12:40:26.191245
1312	1	94	388	11	2020-06-16 12:40:26.19663	2020-06-16 12:40:26.19663
1313	1	66	388	2	2020-06-16 12:40:26.20207	2020-06-16 12:40:26.20207
1314	3	2	389	5	2020-06-16 12:40:26.207033	2020-06-16 12:40:26.207033
1315	1	69	389	14	2020-06-16 12:40:26.211249	2020-06-16 12:40:26.211249
1316	5	82	389	2	2020-06-16 12:40:26.21486	2020-06-16 12:40:26.21486
1317	4	66	389	16	2020-06-16 12:40:26.222577	2020-06-16 12:40:26.222577
1318	4	45	390	5	2020-06-16 12:40:26.226406	2020-06-16 12:40:26.226406
1319	5	86	390	13	2020-06-16 12:40:26.230005	2020-06-16 12:40:26.230005
1320	1	70	390	10	2020-06-16 12:40:26.233721	2020-06-16 12:40:26.233721
1321	1	24	391	13	2020-06-16 12:40:26.237469	2020-06-16 12:40:26.237469
1322	5	41	392	5	2020-06-16 12:40:26.241034	2020-06-16 12:40:26.241034
1323	5	8	393	16	2020-06-16 12:40:26.24456	2020-06-16 12:40:26.24456
1324	5	84	394	16	2020-06-16 12:40:26.248301	2020-06-16 12:40:26.248301
1325	4	55	394	4	2020-06-16 12:40:26.251941	2020-06-16 12:40:26.251941
1326	1	68	394	9	2020-06-16 12:40:26.255254	2020-06-16 12:40:26.255254
1327	4	22	394	3	2020-06-16 12:40:26.258523	2020-06-16 12:40:26.258523
1328	3	57	395	3	2020-06-16 12:40:26.261638	2020-06-16 12:40:26.261638
1329	2	83	395	4	2020-06-16 12:40:26.264743	2020-06-16 12:40:26.264743
1330	3	41	395	1	2020-06-16 12:40:26.267786	2020-06-16 12:40:26.267786
1331	4	78	396	2	2020-06-16 12:40:26.271494	2020-06-16 12:40:26.271494
1332	4	65	396	12	2020-06-16 12:40:26.275559	2020-06-16 12:40:26.275559
1333	3	73	396	8	2020-06-16 12:40:26.279673	2020-06-16 12:40:26.279673
1334	4	23	397	5	2020-06-16 12:40:26.283942	2020-06-16 12:40:26.283942
1335	1	43	397	15	2020-06-16 12:40:26.288374	2020-06-16 12:40:26.288374
1336	1	43	398	14	2020-06-16 12:40:26.292822	2020-06-16 12:40:26.292822
1337	3	96	398	5	2020-06-16 12:40:26.297153	2020-06-16 12:40:26.297153
1338	3	24	398	3	2020-06-16 12:40:26.3017	2020-06-16 12:40:26.3017
1339	5	94	398	1	2020-06-16 12:40:26.305609	2020-06-16 12:40:26.305609
1340	4	19	399	3	2020-06-16 12:40:26.309323	2020-06-16 12:40:26.309323
1341	2	69	399	14	2020-06-16 12:40:26.313052	2020-06-16 12:40:26.313052
1342	4	77	400	7	2020-06-16 12:40:26.316985	2020-06-16 12:40:26.316985
\.


--
-- Data for Name: engineers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY engineers (id, first_name, last_name, age, email, country_id, team_id, created_at, updated_at) FROM stdin;
1	Earnest	Simonis	66	Earnest.Simonis@salesloft.com	33	4	2020-06-16 12:40:05.737864	2020-06-16 12:40:05.737864
2	Tami	Thompson	62	Tami.Thompson@salesloft.com	1	6	2020-06-16 12:40:05.746372	2020-06-16 12:40:05.746372
3	Royal	Mante	32	Royal.Mante@salesloft.com	11	3	2020-06-16 12:40:05.750407	2020-06-16 12:40:05.750407
4	Aron	Wilkinson	25	Aron.Wilkinson@salesloft.com	45	6	2020-06-16 12:40:05.754303	2020-06-16 12:40:05.754303
5	Jess	Prosacco	36	Jess.Prosacco@salesloft.com	36	9	2020-06-16 12:40:05.758016	2020-06-16 12:40:05.758016
6	Keturah	Rogahn	49	Keturah.Rogahn@salesloft.com	13	3	2020-06-16 12:40:05.761832	2020-06-16 12:40:05.761832
7	Sharyn	Dare	44	Sharyn.Dare@salesloft.com	26	5	2020-06-16 12:40:05.765695	2020-06-16 12:40:05.765695
8	Maurice	Crist	50	Maurice.Crist@salesloft.com	16	8	2020-06-16 12:40:05.768758	2020-06-16 12:40:05.768758
9	Melodee	Grady	65	Melodee.Grady@salesloft.com	31	4	2020-06-16 12:40:05.772082	2020-06-16 12:40:05.772082
10	Gregg	Hauck	57	Gregg.Hauck@salesloft.com	20	7	2020-06-16 12:40:05.775393	2020-06-16 12:40:05.775393
11	Lindsay	Mitchell	48	Lindsay.Mitchell@salesloft.com	47	4	2020-06-16 12:40:05.778653	2020-06-16 12:40:05.778653
12	Roland	Pouros	18	Roland.Pouros@salesloft.com	29	3	2020-06-16 12:40:05.782342	2020-06-16 12:40:05.782342
13	Emmie	Reynolds	25	Emmie.Reynolds@salesloft.com	43	2	2020-06-16 12:40:05.785951	2020-06-16 12:40:05.785951
14	Lyle	Ondricka	69	Lyle.Ondricka@salesloft.com	29	2	2020-06-16 12:40:05.789973	2020-06-16 12:40:05.789973
15	Amos	Abernathy	51	Amos.Abernathy@salesloft.com	1	9	2020-06-16 12:40:05.794102	2020-06-16 12:40:05.794102
16	Migdalia	Koss	27	Migdalia.Koss@salesloft.com	22	5	2020-06-16 12:40:05.797871	2020-06-16 12:40:05.797871
17	Brant	Vandervort	48	Brant.Vandervort@salesloft.com	48	4	2020-06-16 12:40:05.801439	2020-06-16 12:40:05.801439
18	Cordelia	Kessler	39	Cordelia.Kessler@salesloft.com	16	1	2020-06-16 12:40:05.804512	2020-06-16 12:40:05.804512
19	Taylor	Torp	33	Taylor.Torp@salesloft.com	39	4	2020-06-16 12:40:05.807935	2020-06-16 12:40:05.807935
20	Stacie	Purdy	63	Stacie.Purdy@salesloft.com	13	1	2020-06-16 12:40:05.811285	2020-06-16 12:40:05.811285
21	Eddy	Heathcote	51	Eddy.Heathcote@salesloft.com	49	4	2020-06-16 12:40:05.814345	2020-06-16 12:40:05.814345
22	Burton	Veum	50	Burton.Veum@salesloft.com	48	3	2020-06-16 12:40:05.818064	2020-06-16 12:40:05.818064
23	Diane	Keebler	42	Diane.Keebler@salesloft.com	34	5	2020-06-16 12:40:05.821364	2020-06-16 12:40:05.821364
24	Noble	Spinka	38	Noble.Spinka@salesloft.com	25	1	2020-06-16 12:40:05.824482	2020-06-16 12:40:05.824482
25	Nathanael	Lang	27	Nathanael.Lang@salesloft.com	40	7	2020-06-16 12:40:05.827618	2020-06-16 12:40:05.827618
26	Lavonia	Rippin	66	Lavonia.Rippin@salesloft.com	30	1	2020-06-16 12:40:05.830651	2020-06-16 12:40:05.830651
27	Florinda	Kuhic	33	Florinda.Kuhic@salesloft.com	43	5	2020-06-16 12:40:05.833811	2020-06-16 12:40:05.833811
28	Pearl	Ernser	54	Pearl.Ernser@salesloft.com	42	5	2020-06-16 12:40:05.837024	2020-06-16 12:40:05.837024
29	Evan	Volkman	30	Evan.Volkman@salesloft.com	7	1	2020-06-16 12:40:05.839884	2020-06-16 12:40:05.839884
30	Wiley	Bergstrom	20	Wiley.Bergstrom@salesloft.com	47	2	2020-06-16 12:40:05.842862	2020-06-16 12:40:05.842862
31	Deonna	Hodkiewicz	39	Deonna.Hodkiewicz@salesloft.com	38	4	2020-06-16 12:40:05.845692	2020-06-16 12:40:05.845692
32	Bill	Frami	51	Bill.Frami@salesloft.com	14	2	2020-06-16 12:40:05.848676	2020-06-16 12:40:05.848676
33	Sacha	Daugherty	70	Sacha.Daugherty@salesloft.com	39	4	2020-06-16 12:40:05.85173	2020-06-16 12:40:05.85173
34	Ming	Wilkinson	68	Ming.Wilkinson@salesloft.com	9	8	2020-06-16 12:40:05.854946	2020-06-16 12:40:05.854946
35	Hanh	Towne	34	Hanh.Towne@salesloft.com	8	8	2020-06-16 12:40:05.857974	2020-06-16 12:40:05.857974
36	Georgie	Jenkins	26	Georgie.Jenkins@salesloft.com	36	2	2020-06-16 12:40:05.860933	2020-06-16 12:40:05.860933
37	Reva	Beier	31	Reva.Beier@salesloft.com	3	8	2020-06-16 12:40:05.864207	2020-06-16 12:40:05.864207
38	Kelly	Abernathy	35	Kelly.Abernathy@salesloft.com	14	1	2020-06-16 12:40:05.86722	2020-06-16 12:40:05.86722
39	Lazaro	Bartell	21	Lazaro.Bartell@salesloft.com	16	6	2020-06-16 12:40:05.870161	2020-06-16 12:40:05.870161
40	Michale	Thompson	23	Michale.Thompson@salesloft.com	23	2	2020-06-16 12:40:05.873214	2020-06-16 12:40:05.873214
41	Marshall	Parisian	67	Marshall.Parisian@salesloft.com	34	4	2020-06-16 12:40:05.876256	2020-06-16 12:40:05.876256
42	Billy	Robel	27	Billy.Robel@salesloft.com	15	5	2020-06-16 12:40:05.879197	2020-06-16 12:40:05.879197
43	Annmarie	Torphy	29	Annmarie.Torphy@salesloft.com	36	4	2020-06-16 12:40:05.882168	2020-06-16 12:40:05.882168
44	Sammy	Gerlach	57	Sammy.Gerlach@salesloft.com	5	8	2020-06-16 12:40:05.885305	2020-06-16 12:40:05.885305
45	Shannon	MacGyver	30	Shannon.MacGyver@salesloft.com	18	4	2020-06-16 12:40:05.88832	2020-06-16 12:40:05.88832
46	Carola	Hane	65	Carola.Hane@salesloft.com	43	7	2020-06-16 12:40:05.891373	2020-06-16 12:40:05.891373
47	Cornelius	Lemke	45	Cornelius.Lemke@salesloft.com	33	8	2020-06-16 12:40:05.894588	2020-06-16 12:40:05.894588
48	Sherley	Zboncak	35	Sherley.Zboncak@salesloft.com	16	6	2020-06-16 12:40:05.897859	2020-06-16 12:40:05.897859
49	Dreama	Simonis	49	Dreama.Simonis@salesloft.com	38	7	2020-06-16 12:40:05.901139	2020-06-16 12:40:05.901139
50	Nick	Wyman	58	Nick.Wyman@salesloft.com	1	8	2020-06-16 12:40:05.904304	2020-06-16 12:40:05.904304
51	Oliver	Bruen	69	Oliver.Bruen@salesloft.com	33	7	2020-06-16 12:40:05.907498	2020-06-16 12:40:05.907498
52	Heidy	Dickinson	69	Heidy.Dickinson@salesloft.com	2	5	2020-06-16 12:40:05.910811	2020-06-16 12:40:05.910811
53	Peter	Rowe	59	Peter.Rowe@salesloft.com	37	6	2020-06-16 12:40:05.914135	2020-06-16 12:40:05.914135
54	Birgit	Dickens	52	Birgit.Dickens@salesloft.com	39	9	2020-06-16 12:40:05.917361	2020-06-16 12:40:05.917361
55	Werner	Rosenbaum	37	Werner.Rosenbaum@salesloft.com	10	4	2020-06-16 12:40:05.92055	2020-06-16 12:40:05.92055
56	Dale	Kutch	65	Dale.Kutch@salesloft.com	38	4	2020-06-16 12:40:05.923608	2020-06-16 12:40:05.923608
57	Granville	Dibbert	70	Granville.Dibbert@salesloft.com	41	8	2020-06-16 12:40:05.92671	2020-06-16 12:40:05.92671
58	Olin	O'Reilly	40	Olin.O'Reilly@salesloft.com	47	7	2020-06-16 12:40:05.930193	2020-06-16 12:40:05.930193
59	Anglea	Runte	23	Anglea.Runte@salesloft.com	29	6	2020-06-16 12:40:05.934303	2020-06-16 12:40:05.934303
60	Colby	Fay	18	Colby.Fay@salesloft.com	14	5	2020-06-16 12:40:05.938126	2020-06-16 12:40:05.938126
61	Cleveland	Towne	42	Cleveland.Towne@salesloft.com	11	9	2020-06-16 12:40:05.943672	2020-06-16 12:40:05.943672
62	Deedee	Corwin	64	Deedee.Corwin@salesloft.com	15	3	2020-06-16 12:40:05.946612	2020-06-16 12:40:05.946612
63	Wilfred	Mills	38	Wilfred.Mills@salesloft.com	15	7	2020-06-16 12:40:05.949566	2020-06-16 12:40:05.949566
64	Riva	Littel	36	Riva.Littel@salesloft.com	9	1	2020-06-16 12:40:05.95253	2020-06-16 12:40:05.95253
65	Delmer	Beatty	52	Delmer.Beatty@salesloft.com	34	9	2020-06-16 12:40:05.955435	2020-06-16 12:40:05.955435
66	Merry	Lebsack	44	Merry.Lebsack@salesloft.com	19	6	2020-06-16 12:40:05.958112	2020-06-16 12:40:05.958112
67	Chad	Sawayn	34	Chad.Sawayn@salesloft.com	4	8	2020-06-16 12:40:05.960845	2020-06-16 12:40:05.960845
68	Jerald	Ortiz	51	Jerald.Ortiz@salesloft.com	19	1	2020-06-16 12:40:05.963586	2020-06-16 12:40:05.963586
69	Thad	Sauer	64	Thad.Sauer@salesloft.com	19	2	2020-06-16 12:40:05.966251	2020-06-16 12:40:05.966251
70	Bulah	Quigley	41	Bulah.Quigley@salesloft.com	49	5	2020-06-16 12:40:05.969174	2020-06-16 12:40:05.969174
71	Joel	Altenwerth	48	Joel.Altenwerth@salesloft.com	4	4	2020-06-16 12:40:05.971729	2020-06-16 12:40:05.971729
72	Abby	Nolan	57	Abby.Nolan@salesloft.com	42	5	2020-06-16 12:40:05.974649	2020-06-16 12:40:05.974649
73	Ricki	Beahan	38	Ricki.Beahan@salesloft.com	41	5	2020-06-16 12:40:05.977282	2020-06-16 12:40:05.977282
74	Orlando	Stiedemann	65	Orlando.Stiedemann@salesloft.com	33	8	2020-06-16 12:40:05.980067	2020-06-16 12:40:05.980067
75	Holley	Morar	51	Holley.Morar@salesloft.com	45	9	2020-06-16 12:40:05.982858	2020-06-16 12:40:05.982858
76	Solomon	Barton	30	Solomon.Barton@salesloft.com	18	3	2020-06-16 12:40:05.985942	2020-06-16 12:40:05.985942
77	Cordell	Hahn	54	Cordell.Hahn@salesloft.com	7	4	2020-06-16 12:40:05.988999	2020-06-16 12:40:05.988999
78	Kelsie	Deckow	44	Kelsie.Deckow@salesloft.com	47	8	2020-06-16 12:40:05.991999	2020-06-16 12:40:05.991999
79	Odis	Yost	36	Odis.Yost@salesloft.com	10	2	2020-06-16 12:40:05.99558	2020-06-16 12:40:05.99558
80	Rosette	Pollich	54	Rosette.Pollich@salesloft.com	49	4	2020-06-16 12:40:05.998735	2020-06-16 12:40:05.998735
81	Mia	Kshlerin	28	Mia.Kshlerin@salesloft.com	35	7	2020-06-16 12:40:06.002194	2020-06-16 12:40:06.002194
82	Monika	Waters	68	Monika.Waters@salesloft.com	12	9	2020-06-16 12:40:06.005334	2020-06-16 12:40:06.005334
83	Elliott	Price	67	Elliott.Price@salesloft.com	5	4	2020-06-16 12:40:06.008727	2020-06-16 12:40:06.008727
84	Bert	Smitham	30	Bert.Smitham@salesloft.com	31	1	2020-06-16 12:40:06.011921	2020-06-16 12:40:06.011921
85	Tomas	Gulgowski	21	Tomas.Gulgowski@salesloft.com	21	8	2020-06-16 12:40:06.015014	2020-06-16 12:40:06.015014
86	Xavier	Feil	26	Xavier.Feil@salesloft.com	2	4	2020-06-16 12:40:06.018413	2020-06-16 12:40:06.018413
87	Deidre	Crona	36	Deidre.Crona@salesloft.com	48	2	2020-06-16 12:40:06.021696	2020-06-16 12:40:06.021696
88	Nick	Konopelski	46	Nick.Konopelski@salesloft.com	41	9	2020-06-16 12:40:06.024717	2020-06-16 12:40:06.024717
89	Theodora	Schimmel	69	Theodora.Schimmel@salesloft.com	28	5	2020-06-16 12:40:06.027725	2020-06-16 12:40:06.027725
90	Roy	Hane	27	Roy.Hane@salesloft.com	42	2	2020-06-16 12:40:06.030631	2020-06-16 12:40:06.030631
91	Tyrell	Wehner	51	Tyrell.Wehner@salesloft.com	7	7	2020-06-16 12:40:06.033635	2020-06-16 12:40:06.033635
92	Hugh	Okuneva	29	Hugh.Okuneva@salesloft.com	19	1	2020-06-16 12:40:06.03646	2020-06-16 12:40:06.03646
93	Mui	Schuppe	33	Mui.Schuppe@salesloft.com	1	8	2020-06-16 12:40:06.0392	2020-06-16 12:40:06.0392
94	Hilton	Hand	68	Hilton.Hand@salesloft.com	1	3	2020-06-16 12:40:06.042168	2020-06-16 12:40:06.042168
95	Matthew	Lakin	55	Matthew.Lakin@salesloft.com	18	5	2020-06-16 12:40:06.045245	2020-06-16 12:40:06.045245
96	Hettie	Stroman	21	Hettie.Stroman@salesloft.com	8	7	2020-06-16 12:40:06.048507	2020-06-16 12:40:06.048507
97	Sabrina	Morissette	56	Sabrina.Morissette@salesloft.com	16	5	2020-06-16 12:40:06.051922	2020-06-16 12:40:06.051922
98	Madge	Grant	43	Madge.Grant@salesloft.com	50	9	2020-06-16 12:40:06.055453	2020-06-16 12:40:06.055453
99	Christina	Zieme	29	Christina.Zieme@salesloft.com	47	3	2020-06-16 12:40:06.059028	2020-06-16 12:40:06.059028
100	Gwenn	Hirthe	23	Gwenn.Hirthe@salesloft.com	11	7	2020-06-16 12:40:06.062751	2020-06-16 12:40:06.062751
101	Jesse	Johnson	69	Jesse.Johnson@salesloft.com	27	6	2020-06-16 12:40:06.066416	2020-06-16 12:40:06.066416
102	Garret	Steuber	19	Garret.Steuber@salesloft.com	4	6	2020-06-16 12:40:06.070948	2020-06-16 12:40:06.070948
103	Janene	Moen	32	Janene.Moen@salesloft.com	3	8	2020-06-16 12:40:06.07442	2020-06-16 12:40:06.07442
104	Margart	Buckridge	20	Margart.Buckridge@salesloft.com	38	3	2020-06-16 12:40:06.077836	2020-06-16 12:40:06.077836
105	Leigha	Schuster	21	Leigha.Schuster@salesloft.com	20	9	2020-06-16 12:40:06.081053	2020-06-16 12:40:06.081053
106	Chang	Kessler	41	Chang.Kessler@salesloft.com	10	2	2020-06-16 12:40:06.084055	2020-06-16 12:40:06.084055
107	Luke	Prosacco	22	Luke.Prosacco@salesloft.com	27	1	2020-06-16 12:40:06.087284	2020-06-16 12:40:06.087284
108	Amos	Hilpert	26	Amos.Hilpert@salesloft.com	34	1	2020-06-16 12:40:06.090718	2020-06-16 12:40:06.090718
109	Rodrigo	Schroeder	26	Rodrigo.Schroeder@salesloft.com	41	3	2020-06-16 12:40:06.093865	2020-06-16 12:40:06.093865
110	Bruce	Douglas	20	Bruce.Douglas@salesloft.com	42	8	2020-06-16 12:40:06.097445	2020-06-16 12:40:06.097445
111	Collin	Fay	59	Collin.Fay@salesloft.com	18	1	2020-06-16 12:40:06.100953	2020-06-16 12:40:06.100953
112	Merrill	D'Amore	18	Merrill.D'Amore@salesloft.com	42	3	2020-06-16 12:40:06.105361	2020-06-16 12:40:06.105361
113	Reva	Schiller	54	Reva.Schiller@salesloft.com	3	6	2020-06-16 12:40:06.109689	2020-06-16 12:40:06.109689
114	Erick	Swaniawski	26	Erick.Swaniawski@salesloft.com	29	8	2020-06-16 12:40:06.114028	2020-06-16 12:40:06.114028
115	Lavada	Zemlak	24	Lavada.Zemlak@salesloft.com	33	8	2020-06-16 12:40:06.117468	2020-06-16 12:40:06.117468
116	Scott	Emmerich	53	Scott.Emmerich@salesloft.com	26	8	2020-06-16 12:40:06.121368	2020-06-16 12:40:06.121368
117	Twila	Leuschke	31	Twila.Leuschke@salesloft.com	19	9	2020-06-16 12:40:06.127059	2020-06-16 12:40:06.127059
118	Bettyann	Hickle	23	Bettyann.Hickle@salesloft.com	34	9	2020-06-16 12:40:06.130179	2020-06-16 12:40:06.130179
119	Bradley	Gleason	61	Bradley.Gleason@salesloft.com	21	8	2020-06-16 12:40:06.133093	2020-06-16 12:40:06.133093
120	Sherie	O'Kon	28	Sherie.O'Kon@salesloft.com	50	9	2020-06-16 12:40:06.136034	2020-06-16 12:40:06.136034
121	Carey	Senger	67	Carey.Senger@salesloft.com	36	5	2020-06-16 12:40:06.139078	2020-06-16 12:40:06.139078
122	Nettie	Pfannerstill	66	Nettie.Pfannerstill@salesloft.com	17	7	2020-06-16 12:40:06.141967	2020-06-16 12:40:06.141967
123	Janett	Beier	66	Janett.Beier@salesloft.com	50	5	2020-06-16 12:40:06.144724	2020-06-16 12:40:06.144724
124	Bea	O'Keefe	58	Bea.O'Keefe@salesloft.com	13	4	2020-06-16 12:40:06.147395	2020-06-16 12:40:06.147395
125	Lewis	Nolan	22	Lewis.Nolan@salesloft.com	48	4	2020-06-16 12:40:06.149973	2020-06-16 12:40:06.149973
126	Rita	Rau	37	Rita.Rau@salesloft.com	12	8	2020-06-16 12:40:06.152639	2020-06-16 12:40:06.152639
127	Kitty	Wilkinson	36	Kitty.Wilkinson@salesloft.com	22	6	2020-06-16 12:40:06.15512	2020-06-16 12:40:06.15512
128	Elisha	Muller	63	Elisha.Muller@salesloft.com	41	5	2020-06-16 12:40:06.15784	2020-06-16 12:40:06.15784
129	Colton	Gerlach	43	Colton.Gerlach@salesloft.com	48	5	2020-06-16 12:40:06.160518	2020-06-16 12:40:06.160518
130	Gilberte	Schmitt	20	Gilberte.Schmitt@salesloft.com	28	7	2020-06-16 12:40:06.162974	2020-06-16 12:40:06.162974
131	Anibal	Bailey	32	Anibal.Bailey@salesloft.com	43	4	2020-06-16 12:40:06.165502	2020-06-16 12:40:06.165502
132	Max	Schaefer	33	Max.Schaefer@salesloft.com	22	6	2020-06-16 12:40:06.167963	2020-06-16 12:40:06.167963
133	Leta	Lynch	33	Leta.Lynch@salesloft.com	29	5	2020-06-16 12:40:06.170734	2020-06-16 12:40:06.170734
134	Amira	Dicki	38	Amira.Dicki@salesloft.com	31	3	2020-06-16 12:40:06.173648	2020-06-16 12:40:06.173648
135	Thomas	Gerhold	37	Thomas.Gerhold@salesloft.com	35	9	2020-06-16 12:40:06.176518	2020-06-16 12:40:06.176518
136	Alanna	Barrows	43	Alanna.Barrows@salesloft.com	32	4	2020-06-16 12:40:06.17936	2020-06-16 12:40:06.17936
137	Jed	MacGyver	31	Jed.MacGyver@salesloft.com	4	6	2020-06-16 12:40:06.18246	2020-06-16 12:40:06.18246
138	Juan	Reichel	63	Juan.Reichel@salesloft.com	26	6	2020-06-16 12:40:06.185561	2020-06-16 12:40:06.185561
139	Dallas	O'Keefe	26	Dallas.O'Keefe@salesloft.com	43	1	2020-06-16 12:40:06.188446	2020-06-16 12:40:06.188446
140	Homer	Schaefer	31	Homer.Schaefer@salesloft.com	27	2	2020-06-16 12:40:06.191474	2020-06-16 12:40:06.191474
141	Classie	Reichert	63	Classie.Reichert@salesloft.com	36	3	2020-06-16 12:40:06.194495	2020-06-16 12:40:06.194495
142	Florentino	Flatley	49	Florentino.Flatley@salesloft.com	28	5	2020-06-16 12:40:06.197693	2020-06-16 12:40:06.197693
143	Blake	Mertz	65	Blake.Mertz@salesloft.com	46	2	2020-06-16 12:40:06.201113	2020-06-16 12:40:06.201113
144	Dean	Metz	24	Dean.Metz@salesloft.com	49	8	2020-06-16 12:40:06.20448	2020-06-16 12:40:06.20448
145	Laurena	Harvey	51	Laurena.Harvey@salesloft.com	19	5	2020-06-16 12:40:06.207873	2020-06-16 12:40:06.207873
146	Young	Torp	52	Young.Torp@salesloft.com	48	9	2020-06-16 12:40:06.211316	2020-06-16 12:40:06.211316
147	Margarett	Hackett	29	Margarett.Hackett@salesloft.com	34	7	2020-06-16 12:40:06.21577	2020-06-16 12:40:06.21577
148	Jarrett	Heaney	19	Jarrett.Heaney@salesloft.com	28	1	2020-06-16 12:40:06.219895	2020-06-16 12:40:06.219895
149	Josefina	Herman	55	Josefina.Herman@salesloft.com	1	8	2020-06-16 12:40:06.224275	2020-06-16 12:40:06.224275
150	Jacob	Cremin	53	Jacob.Cremin@salesloft.com	34	4	2020-06-16 12:40:06.228634	2020-06-16 12:40:06.228634
151	Kristan	Weissnat	29	Kristan.Weissnat@salesloft.com	1	8	2020-06-16 12:40:06.233105	2020-06-16 12:40:06.233105
152	Virgil	Gottlieb	47	Virgil.Gottlieb@salesloft.com	2	3	2020-06-16 12:40:06.237503	2020-06-16 12:40:06.237503
153	Edie	Mraz	70	Edie.Mraz@salesloft.com	26	9	2020-06-16 12:40:06.241144	2020-06-16 12:40:06.241144
154	Coral	Marquardt	28	Coral.Marquardt@salesloft.com	43	3	2020-06-16 12:40:06.244805	2020-06-16 12:40:06.244805
155	Randolph	Thompson	40	Randolph.Thompson@salesloft.com	25	3	2020-06-16 12:40:06.247751	2020-06-16 12:40:06.247751
156	So	Baumbach	48	So.Baumbach@salesloft.com	12	1	2020-06-16 12:40:06.250932	2020-06-16 12:40:06.250932
157	Marla	Conn	46	Marla.Conn@salesloft.com	49	2	2020-06-16 12:40:06.253908	2020-06-16 12:40:06.253908
158	Alfonzo	Williamson	37	Alfonzo.Williamson@salesloft.com	5	9	2020-06-16 12:40:06.257044	2020-06-16 12:40:06.257044
159	Lala	VonRueden	55	Lala.VonRueden@salesloft.com	4	8	2020-06-16 12:40:06.260347	2020-06-16 12:40:06.260347
160	Heriberto	Littel	32	Heriberto.Littel@salesloft.com	29	9	2020-06-16 12:40:06.263993	2020-06-16 12:40:06.263993
161	Lynell	Homenick	42	Lynell.Homenick@salesloft.com	25	2	2020-06-16 12:40:06.267533	2020-06-16 12:40:06.267533
162	Claude	Walter	60	Claude.Walter@salesloft.com	18	9	2020-06-16 12:40:06.270491	2020-06-16 12:40:06.270491
163	Kam	Dickens	37	Kam.Dickens@salesloft.com	20	2	2020-06-16 12:40:06.273306	2020-06-16 12:40:06.273306
164	Eugenio	Ruecker	54	Eugenio.Ruecker@salesloft.com	44	7	2020-06-16 12:40:06.275945	2020-06-16 12:40:06.275945
165	Marybelle	Kuvalis	66	Marybelle.Kuvalis@salesloft.com	20	3	2020-06-16 12:40:06.278426	2020-06-16 12:40:06.278426
166	Brittney	Stracke	30	Brittney.Stracke@salesloft.com	9	8	2020-06-16 12:40:06.280734	2020-06-16 12:40:06.280734
167	Oren	Abernathy	23	Oren.Abernathy@salesloft.com	28	8	2020-06-16 12:40:06.283172	2020-06-16 12:40:06.283172
168	Myrtice	Franecki	39	Myrtice.Franecki@salesloft.com	34	4	2020-06-16 12:40:06.287176	2020-06-16 12:40:06.287176
169	Enrique	Zemlak	64	Enrique.Zemlak@salesloft.com	46	5	2020-06-16 12:40:06.289915	2020-06-16 12:40:06.289915
170	Janette	Stiedemann	28	Janette.Stiedemann@salesloft.com	28	9	2020-06-16 12:40:06.292689	2020-06-16 12:40:06.292689
171	Nita	Stoltenberg	22	Nita.Stoltenberg@salesloft.com	27	7	2020-06-16 12:40:06.295566	2020-06-16 12:40:06.295566
172	Zachariah	Bosco	53	Zachariah.Bosco@salesloft.com	42	5	2020-06-16 12:40:06.298305	2020-06-16 12:40:06.298305
173	Juliet	Veum	33	Juliet.Veum@salesloft.com	34	7	2020-06-16 12:40:06.301447	2020-06-16 12:40:06.301447
174	Luciano	Tremblay	45	Luciano.Tremblay@salesloft.com	12	8	2020-06-16 12:40:06.30423	2020-06-16 12:40:06.30423
175	Pedro	Hahn	19	Pedro.Hahn@salesloft.com	10	3	2020-06-16 12:40:06.306997	2020-06-16 12:40:06.306997
176	Adella	Stamm	62	Adella.Stamm@salesloft.com	22	7	2020-06-16 12:40:06.309643	2020-06-16 12:40:06.309643
177	Charlena	Bashirian	30	Charlena.Bashirian@salesloft.com	48	2	2020-06-16 12:40:06.312238	2020-06-16 12:40:06.312238
178	Johnie	Hickle	60	Johnie.Hickle@salesloft.com	17	2	2020-06-16 12:40:06.314886	2020-06-16 12:40:06.314886
179	Maryjo	Morar	19	Maryjo.Morar@salesloft.com	38	8	2020-06-16 12:40:06.318042	2020-06-16 12:40:06.318042
180	Celesta	Kub	36	Celesta.Kub@salesloft.com	44	2	2020-06-16 12:40:06.320892	2020-06-16 12:40:06.320892
181	Fidel	Hagenes	23	Fidel.Hagenes@salesloft.com	50	1	2020-06-16 12:40:06.323839	2020-06-16 12:40:06.323839
182	Max	Raynor	62	Max.Raynor@salesloft.com	8	9	2020-06-16 12:40:06.326967	2020-06-16 12:40:06.326967
183	Homer	Ratke	62	Homer.Ratke@salesloft.com	44	5	2020-06-16 12:40:06.33003	2020-06-16 12:40:06.33003
184	Zelda	Bechtelar	46	Zelda.Bechtelar@salesloft.com	43	8	2020-06-16 12:40:06.333543	2020-06-16 12:40:06.333543
185	Reagan	Moen	39	Reagan.Moen@salesloft.com	25	1	2020-06-16 12:40:06.337405	2020-06-16 12:40:06.337405
186	Margrett	Lockman	21	Margrett.Lockman@salesloft.com	50	4	2020-06-16 12:40:06.341042	2020-06-16 12:40:06.341042
187	Shanda	Krajcik	55	Shanda.Krajcik@salesloft.com	7	2	2020-06-16 12:40:06.345228	2020-06-16 12:40:06.345228
188	Ted	MacGyver	31	Ted.MacGyver@salesloft.com	18	4	2020-06-16 12:40:06.349496	2020-06-16 12:40:06.349496
189	Yong	Jaskolski	55	Yong.Jaskolski@salesloft.com	12	8	2020-06-16 12:40:06.353431	2020-06-16 12:40:06.353431
190	Jen	Bergnaum	40	Jen.Bergnaum@salesloft.com	45	7	2020-06-16 12:40:06.356865	2020-06-16 12:40:06.356865
191	Abel	Gleichner	45	Abel.Gleichner@salesloft.com	36	2	2020-06-16 12:40:06.360338	2020-06-16 12:40:06.360338
192	Wilbur	Murphy	28	Wilbur.Murphy@salesloft.com	44	3	2020-06-16 12:40:06.363874	2020-06-16 12:40:06.363874
193	Fidelia	Hane	18	Fidelia.Hane@salesloft.com	21	4	2020-06-16 12:40:06.367374	2020-06-16 12:40:06.367374
194	Raymundo	Effertz	56	Raymundo.Effertz@salesloft.com	20	3	2020-06-16 12:40:06.37132	2020-06-16 12:40:06.37132
195	Andy	Yost	31	Andy.Yost@salesloft.com	36	9	2020-06-16 12:40:06.374719	2020-06-16 12:40:06.374719
196	Arturo	Schowalter	65	Arturo.Schowalter@salesloft.com	30	4	2020-06-16 12:40:06.378098	2020-06-16 12:40:06.378098
197	Mabel	Schuster	61	Mabel.Schuster@salesloft.com	42	6	2020-06-16 12:40:06.381251	2020-06-16 12:40:06.381251
198	Lise	Feest	29	Lise.Feest@salesloft.com	10	7	2020-06-16 12:40:06.38818	2020-06-16 12:40:06.38818
199	Rebecka	Steuber	70	Rebecka.Steuber@salesloft.com	25	9	2020-06-16 12:40:06.39093	2020-06-16 12:40:06.39093
200	Filiberto	Tromp	46	Filiberto.Tromp@salesloft.com	42	3	2020-06-16 12:40:06.394436	2020-06-16 12:40:06.394436
201	Jerri	Rippin	70	Jerri.Rippin@salesloft.com	83	7	2020-06-16 12:40:06.39739	2020-06-16 12:40:06.39739
202	Alec	Macejkovic	63	Alec.Macejkovic@salesloft.com	38	2	2020-06-16 12:40:06.400092	2020-06-16 12:40:06.400092
203	Mellissa	Crooks	34	Mellissa.Crooks@salesloft.com	10	8	2020-06-16 12:40:06.402803	2020-06-16 12:40:06.402803
204	Yuko	Dare	30	Yuko.Dare@salesloft.com	57	12	2020-06-16 12:40:06.405441	2020-06-16 12:40:06.405441
205	Will	Metz	20	Will.Metz@salesloft.com	85	4	2020-06-16 12:40:06.407935	2020-06-16 12:40:06.407935
206	Arnold	Halvorson	68	Arnold.Halvorson@salesloft.com	73	13	2020-06-16 12:40:06.410406	2020-06-16 12:40:06.410406
207	Curt	Hilll	55	Curt.Hilll@salesloft.com	52	13	2020-06-16 12:40:06.41296	2020-06-16 12:40:06.41296
208	Shon	Larkin	28	Shon.Larkin@salesloft.com	36	8	2020-06-16 12:40:06.415455	2020-06-16 12:40:06.415455
209	Maxwell	Tillman	40	Maxwell.Tillman@salesloft.com	39	3	2020-06-16 12:40:06.418141	2020-06-16 12:40:06.418141
210	Delora	Mohr	43	Delora.Mohr@salesloft.com	88	16	2020-06-16 12:40:06.420724	2020-06-16 12:40:06.420724
211	Davis	Champlin	35	Davis.Champlin@salesloft.com	96	7	2020-06-16 12:40:06.423355	2020-06-16 12:40:06.423355
212	Tamesha	Rolfson	64	Tamesha.Rolfson@salesloft.com	20	5	2020-06-16 12:40:06.426127	2020-06-16 12:40:06.426127
213	Vaughn	Considine	39	Vaughn.Considine@salesloft.com	91	10	2020-06-16 12:40:06.428971	2020-06-16 12:40:06.428971
214	Terence	Von	25	Terence.Von@salesloft.com	51	14	2020-06-16 12:40:06.431629	2020-06-16 12:40:06.431629
215	Antony	Ankunding	69	Antony.Ankunding@salesloft.com	49	14	2020-06-16 12:40:06.435869	2020-06-16 12:40:06.435869
216	Tom	Bartell	25	Tom.Bartell@salesloft.com	24	18	2020-06-16 12:40:06.438906	2020-06-16 12:40:06.438906
217	Georgie	Gusikowski	45	Georgie.Gusikowski@salesloft.com	98	11	2020-06-16 12:40:06.442459	2020-06-16 12:40:06.442459
218	Olin	Kessler	37	Olin.Kessler@salesloft.com	10	8	2020-06-16 12:40:06.445953	2020-06-16 12:40:06.445953
219	Joe	Krajcik	28	Joe.Krajcik@salesloft.com	6	5	2020-06-16 12:40:06.449608	2020-06-16 12:40:06.449608
220	Randa	Friesen	63	Randa.Friesen@salesloft.com	61	9	2020-06-16 12:40:06.453534	2020-06-16 12:40:06.453534
221	Mauricio	Streich	18	Mauricio.Streich@salesloft.com	56	7	2020-06-16 12:40:06.456584	2020-06-16 12:40:06.456584
222	Hortense	Howe	29	Hortense.Howe@salesloft.com	20	10	2020-06-16 12:40:06.460544	2020-06-16 12:40:06.460544
223	Agustin	Fisher	60	Agustin.Fisher@salesloft.com	84	10	2020-06-16 12:40:06.466035	2020-06-16 12:40:06.466035
224	Maura	Wuckert	49	Maura.Wuckert@salesloft.com	59	5	2020-06-16 12:40:06.469319	2020-06-16 12:40:06.469319
225	Ron	Wolf	68	Ron.Wolf@salesloft.com	34	3	2020-06-16 12:40:06.473959	2020-06-16 12:40:06.473959
226	Collin	Herzog	21	Collin.Herzog@salesloft.com	36	1	2020-06-16 12:40:06.476727	2020-06-16 12:40:06.476727
227	Jackelyn	Berge	41	Jackelyn.Berge@salesloft.com	81	10	2020-06-16 12:40:06.479399	2020-06-16 12:40:06.479399
228	Marlon	Hahn	42	Marlon.Hahn@salesloft.com	50	1	2020-06-16 12:40:06.48233	2020-06-16 12:40:06.48233
229	Pilar	Batz	43	Pilar.Batz@salesloft.com	41	6	2020-06-16 12:40:06.485228	2020-06-16 12:40:06.485228
230	Pedro	Nitzsche	32	Pedro.Nitzsche@salesloft.com	93	3	2020-06-16 12:40:06.487921	2020-06-16 12:40:06.487921
231	Rosendo	Heidenreich	29	Rosendo.Heidenreich@salesloft.com	83	15	2020-06-16 12:40:06.490748	2020-06-16 12:40:06.490748
232	Lupe	Keeling	31	Lupe.Keeling@salesloft.com	8	8	2020-06-16 12:40:06.493447	2020-06-16 12:40:06.493447
233	Roscoe	Kerluke	19	Roscoe.Kerluke@salesloft.com	68	8	2020-06-16 12:40:06.496306	2020-06-16 12:40:06.496306
234	Romeo	Hammes	22	Romeo.Hammes@salesloft.com	54	15	2020-06-16 12:40:06.499217	2020-06-16 12:40:06.499217
235	Hyon	Hauck	44	Hyon.Hauck@salesloft.com	20	11	2020-06-16 12:40:06.502084	2020-06-16 12:40:06.502084
236	Cyrus	Dooley	52	Cyrus.Dooley@salesloft.com	53	4	2020-06-16 12:40:06.504785	2020-06-16 12:40:06.504785
237	Mario	Hudson	47	Mario.Hudson@salesloft.com	93	15	2020-06-16 12:40:06.507404	2020-06-16 12:40:06.507404
238	Blaine	Veum	66	Blaine.Veum@salesloft.com	67	10	2020-06-16 12:40:06.509926	2020-06-16 12:40:06.509926
239	Cesar	Kemmer	66	Cesar.Kemmer@salesloft.com	62	9	2020-06-16 12:40:06.51241	2020-06-16 12:40:06.51241
240	Allen	Nicolas	48	Allen.Nicolas@salesloft.com	94	6	2020-06-16 12:40:06.514904	2020-06-16 12:40:06.514904
241	Maurice	Gutkowski	20	Maurice.Gutkowski@salesloft.com	39	12	2020-06-16 12:40:06.517332	2020-06-16 12:40:06.517332
242	Elijah	Gottlieb	41	Elijah.Gottlieb@salesloft.com	58	1	2020-06-16 12:40:06.519947	2020-06-16 12:40:06.519947
243	Bryon	Howell	42	Bryon.Howell@salesloft.com	69	13	2020-06-16 12:40:06.522383	2020-06-16 12:40:06.522383
244	Geoffrey	Prohaska	55	Geoffrey.Prohaska@salesloft.com	86	16	2020-06-16 12:40:06.525002	2020-06-16 12:40:06.525002
245	Kai	Nikolaus	44	Kai.Nikolaus@salesloft.com	58	3	2020-06-16 12:40:06.52768	2020-06-16 12:40:06.52768
246	Miki	Predovic	49	Miki.Predovic@salesloft.com	40	6	2020-06-16 12:40:06.530302	2020-06-16 12:40:06.530302
247	Valentina	Wyman	35	Valentina.Wyman@salesloft.com	52	10	2020-06-16 12:40:06.532982	2020-06-16 12:40:06.532982
248	Wyatt	Sauer	58	Wyatt.Sauer@salesloft.com	96	13	2020-06-16 12:40:06.535369	2020-06-16 12:40:06.535369
249	Tom	Spinka	37	Tom.Spinka@salesloft.com	8	8	2020-06-16 12:40:06.538098	2020-06-16 12:40:06.538098
250	Jc	Harber	37	Jc.Harber@salesloft.com	87	16	2020-06-16 12:40:06.540667	2020-06-16 12:40:06.540667
251	Karry	Crooks	67	Karry.Crooks@salesloft.com	72	6	2020-06-16 12:40:06.543361	2020-06-16 12:40:06.543361
252	Jeramy	Schumm	57	Jeramy.Schumm@salesloft.com	82	8	2020-06-16 12:40:06.546134	2020-06-16 12:40:06.546134
253	Sherrill	Renner	49	Sherrill.Renner@salesloft.com	7	6	2020-06-16 12:40:06.549165	2020-06-16 12:40:06.549165
254	Lawerence	Hegmann	64	Lawerence.Hegmann@salesloft.com	97	1	2020-06-16 12:40:06.55223	2020-06-16 12:40:06.55223
255	Barb	Bartell	56	Barb.Bartell@salesloft.com	58	8	2020-06-16 12:40:06.555159	2020-06-16 12:40:06.555159
256	Clementina	Yost	32	Clementina.Yost@salesloft.com	34	4	2020-06-16 12:40:06.558285	2020-06-16 12:40:06.558285
257	Jarvis	Stiedemann	23	Jarvis.Stiedemann@salesloft.com	5	18	2020-06-16 12:40:06.561368	2020-06-16 12:40:06.561368
258	Henry	Hudson	37	Henry.Hudson@salesloft.com	47	15	2020-06-16 12:40:06.566107	2020-06-16 12:40:06.566107
259	Odessa	Padberg	64	Odessa.Padberg@salesloft.com	51	18	2020-06-16 12:40:06.569146	2020-06-16 12:40:06.569146
260	Krystyna	Lubowitz	65	Krystyna.Lubowitz@salesloft.com	62	10	2020-06-16 12:40:06.57223	2020-06-16 12:40:06.57223
261	Joann	Krajcik	38	Joann.Krajcik@salesloft.com	90	14	2020-06-16 12:40:06.575235	2020-06-16 12:40:06.575235
262	Cherly	Satterfield	30	Cherly.Satterfield@salesloft.com	55	17	2020-06-16 12:40:06.578388	2020-06-16 12:40:06.578388
263	Domenic	Veum	48	Domenic.Veum@salesloft.com	8	1	2020-06-16 12:40:06.58128	2020-06-16 12:40:06.58128
264	Oma	Schultz	56	Oma.Schultz@salesloft.com	25	17	2020-06-16 12:40:06.583917	2020-06-16 12:40:06.583917
265	Maritza	Powlowski	48	Maritza.Powlowski@salesloft.com	2	9	2020-06-16 12:40:06.586548	2020-06-16 12:40:06.586548
266	Peter	Bartoletti	69	Peter.Bartoletti@salesloft.com	72	12	2020-06-16 12:40:06.589135	2020-06-16 12:40:06.589135
267	Jasper	Shields	55	Jasper.Shields@salesloft.com	4	3	2020-06-16 12:40:06.591917	2020-06-16 12:40:06.591917
268	Stuart	Waelchi	37	Stuart.Waelchi@salesloft.com	42	1	2020-06-16 12:40:06.594854	2020-06-16 12:40:06.594854
269	Isiah	Klocko	21	Isiah.Klocko@salesloft.com	44	8	2020-06-16 12:40:06.597936	2020-06-16 12:40:06.597936
270	Martha	Hintz	58	Martha.Hintz@salesloft.com	24	10	2020-06-16 12:40:06.601172	2020-06-16 12:40:06.601172
271	Rolando	Gislason	65	Rolando.Gislason@salesloft.com	82	4	2020-06-16 12:40:06.604165	2020-06-16 12:40:06.604165
272	Pearle	Toy	56	Pearle.Toy@salesloft.com	100	15	2020-06-16 12:40:06.607136	2020-06-16 12:40:06.607136
273	Rickey	Barrows	37	Rickey.Barrows@salesloft.com	63	3	2020-06-16 12:40:06.610223	2020-06-16 12:40:06.610223
274	Herbert	Oberbrunner	54	Herbert.Oberbrunner@salesloft.com	50	9	2020-06-16 12:40:06.61341	2020-06-16 12:40:06.61341
275	Genesis	Russel	35	Genesis.Russel@salesloft.com	67	12	2020-06-16 12:40:06.61644	2020-06-16 12:40:06.61644
276	Danial	Rosenbaum	34	Danial.Rosenbaum@salesloft.com	54	18	2020-06-16 12:40:06.61933	2020-06-16 12:40:06.61933
277	Shelby	Stehr	18	Shelby.Stehr@salesloft.com	90	7	2020-06-16 12:40:06.622197	2020-06-16 12:40:06.622197
278	Lazaro	Lubowitz	59	Lazaro.Lubowitz@salesloft.com	64	12	2020-06-16 12:40:06.625223	2020-06-16 12:40:06.625223
279	Carol	Sporer	29	Carol.Sporer@salesloft.com	58	18	2020-06-16 12:40:06.628638	2020-06-16 12:40:06.628638
280	Leo	Konopelski	69	Leo.Konopelski@salesloft.com	61	11	2020-06-16 12:40:06.632237	2020-06-16 12:40:06.632237
281	Cecilia	Torphy	56	Cecilia.Torphy@salesloft.com	14	10	2020-06-16 12:40:06.636288	2020-06-16 12:40:06.636288
282	Levi	Morar	39	Levi.Morar@salesloft.com	6	15	2020-06-16 12:40:06.639651	2020-06-16 12:40:06.639651
283	Chris	Hayes	33	Chris.Hayes@salesloft.com	23	17	2020-06-16 12:40:06.642941	2020-06-16 12:40:06.642941
284	Tommie	Waelchi	56	Tommie.Waelchi@salesloft.com	26	12	2020-06-16 12:40:06.646448	2020-06-16 12:40:06.646448
285	Jefferey	Casper	53	Jefferey.Casper@salesloft.com	54	15	2020-06-16 12:40:06.650065	2020-06-16 12:40:06.650065
286	Amelia	Hessel	30	Amelia.Hessel@salesloft.com	22	4	2020-06-16 12:40:06.653657	2020-06-16 12:40:06.653657
287	Cristobal	Howell	46	Cristobal.Howell@salesloft.com	30	18	2020-06-16 12:40:06.657327	2020-06-16 12:40:06.657327
288	Alessandra	Doyle	32	Alessandra.Doyle@salesloft.com	15	9	2020-06-16 12:40:06.661598	2020-06-16 12:40:06.661598
289	Keva	Feeney	47	Keva.Feeney@salesloft.com	95	4	2020-06-16 12:40:06.666515	2020-06-16 12:40:06.666515
290	Dorothea	Zemlak	24	Dorothea.Zemlak@salesloft.com	63	17	2020-06-16 12:40:06.670803	2020-06-16 12:40:06.670803
291	Matthew	Batz	55	Matthew.Batz@salesloft.com	2	8	2020-06-16 12:40:06.675215	2020-06-16 12:40:06.675215
292	Murray	West	59	Murray.West@salesloft.com	13	9	2020-06-16 12:40:06.679498	2020-06-16 12:40:06.679498
293	Reginald	Zemlak	65	Reginald.Zemlak@salesloft.com	41	16	2020-06-16 12:40:06.683546	2020-06-16 12:40:06.683546
294	Tanner	Collier	48	Tanner.Collier@salesloft.com	98	18	2020-06-16 12:40:06.687	2020-06-16 12:40:06.687
295	Trudi	Schmeler	18	Trudi.Schmeler@salesloft.com	17	8	2020-06-16 12:40:06.690206	2020-06-16 12:40:06.690206
296	Joanie	Barton	39	Joanie.Barton@salesloft.com	57	3	2020-06-16 12:40:06.693859	2020-06-16 12:40:06.693859
297	Beatrice	Hansen	28	Beatrice.Hansen@salesloft.com	23	10	2020-06-16 12:40:06.697096	2020-06-16 12:40:06.697096
298	Lilly	Hermann	50	Lilly.Hermann@salesloft.com	62	13	2020-06-16 12:40:06.702346	2020-06-16 12:40:06.702346
299	Vance	Schroeder	28	Vance.Schroeder@salesloft.com	53	3	2020-06-16 12:40:06.709708	2020-06-16 12:40:06.709708
300	Mitchell	Mosciski	64	Mitchell.Mosciski@salesloft.com	79	2	2020-06-16 12:40:06.713037	2020-06-16 12:40:06.713037
301	Toi	Schaden	55	Toi.Schaden@salesloft.com	66	1	2020-06-16 12:40:06.716143	2020-06-16 12:40:06.716143
302	Alida	Kassulke	48	Alida.Kassulke@salesloft.com	64	16	2020-06-16 12:40:06.719008	2020-06-16 12:40:06.719008
303	Freeman	Bednar	69	Freeman.Bednar@salesloft.com	61	12	2020-06-16 12:40:06.72222	2020-06-16 12:40:06.72222
304	Paulene	Halvorson	24	Paulene.Halvorson@salesloft.com	62	5	2020-06-16 12:40:06.725191	2020-06-16 12:40:06.725191
305	Melvin	Ankunding	55	Melvin.Ankunding@salesloft.com	85	3	2020-06-16 12:40:06.728051	2020-06-16 12:40:06.728051
306	Demarcus	Legros	34	Demarcus.Legros@salesloft.com	85	7	2020-06-16 12:40:06.731298	2020-06-16 12:40:06.731298
307	Charise	Ankunding	41	Charise.Ankunding@salesloft.com	98	11	2020-06-16 12:40:06.734207	2020-06-16 12:40:06.734207
308	Cristal	Kris	41	Cristal.Kris@salesloft.com	46	10	2020-06-16 12:40:06.737201	2020-06-16 12:40:06.737201
309	Temple	Pagac	63	Temple.Pagac@salesloft.com	62	2	2020-06-16 12:40:06.740399	2020-06-16 12:40:06.740399
310	Annalee	Parker	37	Annalee.Parker@salesloft.com	52	4	2020-06-16 12:40:06.743314	2020-06-16 12:40:06.743314
311	Carmine	Gleichner	50	Carmine.Gleichner@salesloft.com	90	11	2020-06-16 12:40:06.746017	2020-06-16 12:40:06.746017
312	Ligia	Morissette	19	Ligia.Morissette@salesloft.com	89	5	2020-06-16 12:40:06.748956	2020-06-16 12:40:06.748956
313	Ilana	Kris	35	Ilana.Kris@salesloft.com	4	8	2020-06-16 12:40:06.751754	2020-06-16 12:40:06.751754
314	Gilberto	Cassin	30	Gilberto.Cassin@salesloft.com	82	9	2020-06-16 12:40:06.754815	2020-06-16 12:40:06.754815
315	Lasonya	Ullrich	20	Lasonya.Ullrich@salesloft.com	61	15	2020-06-16 12:40:06.758119	2020-06-16 12:40:06.758119
316	Nolan	Cummerata	35	Nolan.Cummerata@salesloft.com	42	13	2020-06-16 12:40:06.762057	2020-06-16 12:40:06.762057
317	Dessie	Littel	56	Dessie.Littel@salesloft.com	45	9	2020-06-16 12:40:06.766952	2020-06-16 12:40:06.766952
318	Brendan	Volkman	70	Brendan.Volkman@salesloft.com	23	3	2020-06-16 12:40:06.771616	2020-06-16 12:40:06.771616
319	Jamal	O'Reilly	23	Jamal.O'Reilly@salesloft.com	10	3	2020-06-16 12:40:06.77585	2020-06-16 12:40:06.77585
320	Devin	Tromp	21	Devin.Tromp@salesloft.com	44	3	2020-06-16 12:40:06.77949	2020-06-16 12:40:06.77949
321	Megan	Berge	51	Megan.Berge@salesloft.com	60	16	2020-06-16 12:40:06.783098	2020-06-16 12:40:06.783098
322	Melisa	Waters	34	Melisa.Waters@salesloft.com	59	4	2020-06-16 12:40:06.7876	2020-06-16 12:40:06.7876
323	Darrin	Kuvalis	34	Darrin.Kuvalis@salesloft.com	85	1	2020-06-16 12:40:06.802406	2020-06-16 12:40:06.802406
324	Lucas	Feeney	39	Lucas.Feeney@salesloft.com	8	3	2020-06-16 12:40:06.806733	2020-06-16 12:40:06.806733
325	Zachary	Cummings	22	Zachary.Cummings@salesloft.com	33	14	2020-06-16 12:40:06.811124	2020-06-16 12:40:06.811124
326	Jordon	Greenholt	68	Jordon.Greenholt@salesloft.com	10	4	2020-06-16 12:40:06.814669	2020-06-16 12:40:06.814669
327	Calista	Walsh	39	Calista.Walsh@salesloft.com	88	7	2020-06-16 12:40:06.819583	2020-06-16 12:40:06.819583
328	Coleman	Runolfsdottir	53	Coleman.Runolfsdottir@salesloft.com	61	2	2020-06-16 12:40:06.823725	2020-06-16 12:40:06.823725
329	Gayle	Homenick	21	Gayle.Homenick@salesloft.com	26	5	2020-06-16 12:40:06.827871	2020-06-16 12:40:06.827871
330	Williams	Roberts	67	Williams.Roberts@salesloft.com	73	9	2020-06-16 12:40:06.832406	2020-06-16 12:40:06.832406
331	Alexandria	Ryan	46	Alexandria.Ryan@salesloft.com	65	11	2020-06-16 12:40:06.836603	2020-06-16 12:40:06.836603
332	Luciana	MacGyver	54	Luciana.MacGyver@salesloft.com	84	1	2020-06-16 12:40:06.84083	2020-06-16 12:40:06.84083
333	Brittanie	Lind	65	Brittanie.Lind@salesloft.com	2	6	2020-06-16 12:40:06.845075	2020-06-16 12:40:06.845075
334	Gilberto	Hyatt	48	Gilberto.Hyatt@salesloft.com	100	15	2020-06-16 12:40:06.849917	2020-06-16 12:40:06.849917
335	Roni	Boyer	19	Roni.Boyer@salesloft.com	15	6	2020-06-16 12:40:06.857405	2020-06-16 12:40:06.857405
336	Stephnie	Halvorson	63	Stephnie.Halvorson@salesloft.com	60	11	2020-06-16 12:40:06.860706	2020-06-16 12:40:06.860706
337	Ervin	Murphy	49	Ervin.Murphy@salesloft.com	90	11	2020-06-16 12:40:06.863811	2020-06-16 12:40:06.863811
338	Lois	Mosciski	69	Lois.Mosciski@salesloft.com	50	17	2020-06-16 12:40:06.866939	2020-06-16 12:40:06.866939
339	Sook	Heathcote	30	Sook.Heathcote@salesloft.com	59	15	2020-06-16 12:40:06.869746	2020-06-16 12:40:06.869746
340	Arnoldo	Huels	20	Arnoldo.Huels@salesloft.com	96	13	2020-06-16 12:40:06.873016	2020-06-16 12:40:06.873016
341	Porter	Gulgowski	66	Porter.Gulgowski@salesloft.com	4	4	2020-06-16 12:40:06.876373	2020-06-16 12:40:06.876373
342	India	Bins	38	India.Bins@salesloft.com	23	14	2020-06-16 12:40:06.879208	2020-06-16 12:40:06.879208
343	Carlyn	Frami	45	Carlyn.Frami@salesloft.com	68	6	2020-06-16 12:40:06.882001	2020-06-16 12:40:06.882001
344	Rodney	Parisian	42	Rodney.Parisian@salesloft.com	90	13	2020-06-16 12:40:06.884952	2020-06-16 12:40:06.884952
345	Cleotilde	Hansen	63	Cleotilde.Hansen@salesloft.com	94	11	2020-06-16 12:40:06.887588	2020-06-16 12:40:06.887588
346	Zonia	Dach	65	Zonia.Dach@salesloft.com	14	15	2020-06-16 12:40:06.890364	2020-06-16 12:40:06.890364
347	Nikole	Hansen	28	Nikole.Hansen@salesloft.com	45	5	2020-06-16 12:40:06.893065	2020-06-16 12:40:06.893065
348	Melisa	Kunze	44	Melisa.Kunze@salesloft.com	52	9	2020-06-16 12:40:06.89615	2020-06-16 12:40:06.89615
349	Rosaura	Beahan	67	Rosaura.Beahan@salesloft.com	56	16	2020-06-16 12:40:06.899141	2020-06-16 12:40:06.899141
350	Robbie	Sanford	40	Robbie.Sanford@salesloft.com	43	16	2020-06-16 12:40:06.902245	2020-06-16 12:40:06.902245
351	Malcom	Kling	46	Malcom.Kling@salesloft.com	71	9	2020-06-16 12:40:06.905208	2020-06-16 12:40:06.905208
352	Loni	Hodkiewicz	40	Loni.Hodkiewicz@salesloft.com	59	11	2020-06-16 12:40:06.908128	2020-06-16 12:40:06.908128
353	Russell	Bogan	35	Russell.Bogan@salesloft.com	90	16	2020-06-16 12:40:06.910995	2020-06-16 12:40:06.910995
354	Heath	Dicki	56	Heath.Dicki@salesloft.com	74	3	2020-06-16 12:40:06.914016	2020-06-16 12:40:06.914016
355	Rubin	Pacocha	26	Rubin.Pacocha@salesloft.com	34	7	2020-06-16 12:40:06.91691	2020-06-16 12:40:06.91691
356	Danilo	Fisher	65	Danilo.Fisher@salesloft.com	54	18	2020-06-16 12:40:06.919719	2020-06-16 12:40:06.919719
357	Stasia	Kuhic	48	Stasia.Kuhic@salesloft.com	85	11	2020-06-16 12:40:06.92256	2020-06-16 12:40:06.92256
358	Brant	Friesen	47	Brant.Friesen@salesloft.com	22	8	2020-06-16 12:40:06.925434	2020-06-16 12:40:06.925434
359	Jerome	Dicki	54	Jerome.Dicki@salesloft.com	76	3	2020-06-16 12:40:06.928299	2020-06-16 12:40:06.928299
360	Rhonda	Paucek	35	Rhonda.Paucek@salesloft.com	38	12	2020-06-16 12:40:06.931251	2020-06-16 12:40:06.931251
361	Mollie	Nicolas	51	Mollie.Nicolas@salesloft.com	6	13	2020-06-16 12:40:06.934162	2020-06-16 12:40:06.934162
362	Joie	McGlynn	33	Joie.McGlynn@salesloft.com	44	4	2020-06-16 12:40:06.937071	2020-06-16 12:40:06.937071
363	Janelle	Vandervort	53	Janelle.Vandervort@salesloft.com	63	6	2020-06-16 12:40:06.939942	2020-06-16 12:40:06.939942
364	Kaycee	Okuneva	55	Kaycee.Okuneva@salesloft.com	49	5	2020-06-16 12:40:06.942754	2020-06-16 12:40:06.942754
365	Genny	Stiedemann	19	Genny.Stiedemann@salesloft.com	17	4	2020-06-16 12:40:06.945816	2020-06-16 12:40:06.945816
366	Wm	Koelpin	19	Wm.Koelpin@salesloft.com	36	18	2020-06-16 12:40:06.948768	2020-06-16 12:40:06.948768
367	Nestor	Jaskolski	64	Nestor.Jaskolski@salesloft.com	26	11	2020-06-16 12:40:06.951739	2020-06-16 12:40:06.951739
368	Waylon	Daniel	57	Waylon.Daniel@salesloft.com	6	11	2020-06-16 12:40:06.954556	2020-06-16 12:40:06.954556
369	Justin	Beier	52	Justin.Beier@salesloft.com	53	6	2020-06-16 12:40:06.957529	2020-06-16 12:40:06.957529
370	Vincenzo	Oberbrunner	24	Vincenzo.Oberbrunner@salesloft.com	10	14	2020-06-16 12:40:06.960412	2020-06-16 12:40:06.960412
371	Dionna	Pouros	39	Dionna.Pouros@salesloft.com	47	6	2020-06-16 12:40:06.963294	2020-06-16 12:40:06.963294
372	Sonny	Parisian	36	Sonny.Parisian@salesloft.com	91	3	2020-06-16 12:40:06.966116	2020-06-16 12:40:06.966116
373	Youlanda	Bechtelar	35	Youlanda.Bechtelar@salesloft.com	63	8	2020-06-16 12:40:06.969039	2020-06-16 12:40:06.969039
374	Malcom	Jenkins	67	Malcom.Jenkins@salesloft.com	28	10	2020-06-16 12:40:06.971868	2020-06-16 12:40:06.971868
375	Ngan	Goyette	43	Ngan.Goyette@salesloft.com	74	2	2020-06-16 12:40:06.974633	2020-06-16 12:40:06.974633
376	Mina	Grimes	54	Mina.Grimes@salesloft.com	28	4	2020-06-16 12:40:06.977462	2020-06-16 12:40:06.977462
377	Melisa	Bartell	21	Melisa.Bartell@salesloft.com	62	7	2020-06-16 12:40:06.980319	2020-06-16 12:40:06.980319
378	Bev	Zulauf	55	Bev.Zulauf@salesloft.com	13	18	2020-06-16 12:40:06.983152	2020-06-16 12:40:06.983152
379	Rodolfo	Koch	67	Rodolfo.Koch@salesloft.com	69	16	2020-06-16 12:40:06.986115	2020-06-16 12:40:06.986115
380	Franklin	Harris	67	Franklin.Harris@salesloft.com	100	16	2020-06-16 12:40:06.989558	2020-06-16 12:40:06.989558
381	Barb	Kuhlman	67	Barb.Kuhlman@salesloft.com	14	5	2020-06-16 12:40:06.992922	2020-06-16 12:40:06.992922
382	Alfonso	Kuhic	24	Alfonso.Kuhic@salesloft.com	15	2	2020-06-16 12:40:06.996938	2020-06-16 12:40:06.996938
383	Carroll	Fritsch	34	Carroll.Fritsch@salesloft.com	87	6	2020-06-16 12:40:07.001324	2020-06-16 12:40:07.001324
384	Hollis	Weissnat	52	Hollis.Weissnat@salesloft.com	54	8	2020-06-16 12:40:07.005673	2020-06-16 12:40:07.005673
385	Laurence	Howell	67	Laurence.Howell@salesloft.com	18	4	2020-06-16 12:40:07.010053	2020-06-16 12:40:07.010053
386	Lashonda	Steuber	65	Lashonda.Steuber@salesloft.com	18	4	2020-06-16 12:40:07.014794	2020-06-16 12:40:07.014794
387	Elliot	Wilderman	24	Elliot.Wilderman@salesloft.com	24	10	2020-06-16 12:40:07.019067	2020-06-16 12:40:07.019067
388	Michal	Olson	27	Michal.Olson@salesloft.com	75	5	2020-06-16 12:40:07.023369	2020-06-16 12:40:07.023369
389	Eldridge	Schaden	42	Eldridge.Schaden@salesloft.com	23	18	2020-06-16 12:40:07.028184	2020-06-16 12:40:07.028184
390	Bobbie	Kautzer	70	Bobbie.Kautzer@salesloft.com	29	17	2020-06-16 12:40:07.032629	2020-06-16 12:40:07.032629
391	Rafael	Schaefer	40	Rafael.Schaefer@salesloft.com	51	4	2020-06-16 12:40:07.037017	2020-06-16 12:40:07.037017
392	Tyler	Emmerich	62	Tyler.Emmerich@salesloft.com	61	6	2020-06-16 12:40:07.040614	2020-06-16 12:40:07.040614
393	Frederica	Schowalter	28	Frederica.Schowalter@salesloft.com	34	13	2020-06-16 12:40:07.044633	2020-06-16 12:40:07.044633
394	Chu	Parker	29	Chu.Parker@salesloft.com	59	10	2020-06-16 12:40:07.048853	2020-06-16 12:40:07.048853
395	Harmony	Corwin	60	Harmony.Corwin@salesloft.com	93	10	2020-06-16 12:40:07.053565	2020-06-16 12:40:07.053565
396	Rudolph	Wolff	35	Rudolph.Wolff@salesloft.com	2	3	2020-06-16 12:40:07.057635	2020-06-16 12:40:07.057635
397	Fay	Beier	33	Fay.Beier@salesloft.com	81	13	2020-06-16 12:40:07.061996	2020-06-16 12:40:07.061996
398	Amelia	Casper	63	Amelia.Casper@salesloft.com	30	18	2020-06-16 12:40:07.066215	2020-06-16 12:40:07.066215
399	Tameika	Gerlach	29	Tameika.Gerlach@salesloft.com	65	11	2020-06-16 12:40:07.070635	2020-06-16 12:40:07.070635
400	Viviana	Kuvalis	22	Viviana.Kuvalis@salesloft.com	56	10	2020-06-16 12:40:07.074858	2020-06-16 12:40:07.074858
\.


--
-- Data for Name: programming_languages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY programming_languages (id, name, category, date_of_birth, inventor, created_at, updated_at) FROM stdin;
1	Ruby	Object Oriented	1995	Yukihiro Matsumoto	2020-06-16 12:40:04.246689	2020-06-16 12:40:04.246689
2	Elixir	Functional	2011	José Valim	2020-06-16 12:40:04.251645	2020-06-16 12:40:04.251645
3	JavaScript	Prototype	1995	Brendan Eich	2020-06-16 12:40:04.253413	2020-06-16 12:40:04.253413
4	Java	Object Oriented	1995	James Gosling	2020-06-16 12:40:04.255205	2020-06-16 12:40:04.255205
5	C#	Object Oriented	2000	Anders Hejlsberg	2020-06-16 12:40:04.256758	2020-06-16 12:40:04.256758
6	F#	Functional	2005	Don Syme	2020-06-16 12:40:04.258179	2020-06-16 12:40:04.258179
7	Haskell	Functional	1990	Lennart Augustsson	2020-06-16 12:40:04.259825	2020-06-16 12:40:04.259825
8	Erlang	Functional	1986	Joe Armstrong	2020-06-16 12:40:04.261462	2020-06-16 12:40:04.261462
9	Ruby	Object Oriented	1995	Yukihiro Matsumoto	2020-06-16 12:40:04.262852	2020-06-16 12:40:04.262852
10	Elixir	Functional	2011	José Valim	2020-06-16 12:40:04.264309	2020-06-16 12:40:04.264309
11	JavaScript	Prototype	1995	Brendan Eich	2020-06-16 12:40:04.26557	2020-06-16 12:40:04.26557
12	Java	Object Oriented	1995	James Gosling	2020-06-16 12:40:04.266952	2020-06-16 12:40:04.266952
13	C#	Object Oriented	2000	Anders Hejlsberg	2020-06-16 12:40:04.268329	2020-06-16 12:40:04.268329
14	F#	Functional	2005	Don Syme	2020-06-16 12:40:04.269917	2020-06-16 12:40:04.269917
15	Haskell	Functional	1990	Lennart Augustsson	2020-06-16 12:40:04.271465	2020-06-16 12:40:04.271465
16	Erlang	Functional	1986	Joe Armstrong	2020-06-16 12:40:04.272972	2020-06-16 12:40:04.272972
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20181103012847
20181102202301
20181102185252
20181102145954
20181102185014
20181102145955
20181009144102
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY teams (id, name, floor, features_shipped, current_bugs, created_at, updated_at) FROM stdin;
1	CCR	22	84	34	2020-06-16 12:40:04.283522	2020-06-16 12:40:04.283522
2	HSA	23	69	33	2020-06-16 12:40:04.286774	2020-06-16 12:40:04.286774
3	DM	22	47	37	2020-06-16 12:40:04.288248	2020-06-16 12:40:04.288248
4	CZ9	22	73	8	2020-06-16 12:40:04.289698	2020-06-16 12:40:04.289698
5	LFE	24	68	36	2020-06-16 12:40:04.291262	2020-06-16 12:40:04.291262
6	LTT	22	53	27	2020-06-16 12:40:04.292713	2020-06-16 12:40:04.292713
7	CLD	22	91	20	2020-06-16 12:40:04.294205	2020-06-16 12:40:04.294205
8	SES	23	43	1	2020-06-16 12:40:04.295746	2020-06-16 12:40:04.295746
9	Dops	22	41	16	2020-06-16 12:40:04.297181	2020-06-16 12:40:04.297181
10	CCR	22	43	27	2020-06-16 12:40:04.300166	2020-06-16 12:40:04.300166
11	HSA	23	67	0	2020-06-16 12:40:04.302307	2020-06-16 12:40:04.302307
12	DM	22	95	37	2020-06-16 12:40:04.304294	2020-06-16 12:40:04.304294
13	CZ9	22	49	14	2020-06-16 12:40:04.306119	2020-06-16 12:40:04.306119
14	LFE	24	54	31	2020-06-16 12:40:04.312857	2020-06-16 12:40:04.312857
15	LTT	22	79	28	2020-06-16 12:40:04.314346	2020-06-16 12:40:04.314346
16	CLD	22	83	36	2020-06-16 12:40:04.316074	2020-06-16 12:40:04.316074
17	SES	23	81	22	2020-06-16 12:40:04.317677	2020-06-16 12:40:04.317677
18	Dops	22	96	36	2020-06-16 12:40:04.319027	2020-06-16 12:40:04.319027
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--



--
-- Name: bookshelves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--



--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--



--
-- Name: engineer_programming_languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--



--
-- Name: engineers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--



--
-- Name: programming_languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--



--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--



--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: bookshelves bookshelves_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bookshelves
    ADD CONSTRAINT bookshelves_pkey PRIMARY KEY (id);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: engineer_programming_languages engineer_programming_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY engineer_programming_languages
    ADD CONSTRAINT engineer_programming_languages_pkey PRIMARY KEY (id);


--
-- Name: engineers engineers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY engineers
    ADD CONSTRAINT engineers_pkey PRIMARY KEY (id);


--
-- Name: programming_languages programming_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY programming_languages
    ADD CONSTRAINT programming_languages_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: index_bookshelves_on_book_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_bookshelves_on_book_id ON bookshelves USING btree (book_id);


--
-- Name: index_bookshelves_on_engineer_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_bookshelves_on_engineer_id ON bookshelves USING btree (engineer_id);


--
-- Name: index_engineer_programming_languages_on_engineer_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_engineer_programming_languages_on_engineer_id ON engineer_programming_languages USING btree (engineer_id);


--
-- Name: index_engineer_programming_languages_on_programming_language_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_engineer_programming_languages_on_programming_language_id ON engineer_programming_languages USING btree (programming_language_id);


--
-- Name: index_engineers_on_country_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_engineers_on_country_id ON engineers USING btree (country_id);


--
-- Name: index_engineers_on_team_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_engineers_on_team_id ON engineers USING btree (team_id);


--
-- Name: bookshelves fk_rails_13dec3ee94; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bookshelves
    ADD CONSTRAINT fk_rails_13dec3ee94 FOREIGN KEY (engineer_id) REFERENCES engineers(id);


--
-- Name: engineer_programming_languages fk_rails_3a4377ed71; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY engineer_programming_languages
    ADD CONSTRAINT fk_rails_3a4377ed71 FOREIGN KEY (engineer_id) REFERENCES engineers(id);


--
-- Name: engineers fk_rails_48c685314b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY engineers
    ADD CONSTRAINT fk_rails_48c685314b FOREIGN KEY (country_id) REFERENCES countries(id);


--
-- Name: engineers fk_rails_5c44cd68ac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY engineers
    ADD CONSTRAINT fk_rails_5c44cd68ac FOREIGN KEY (team_id) REFERENCES teams(id);


--
-- Name: engineer_programming_languages fk_rails_888c6565a8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY engineer_programming_languages
    ADD CONSTRAINT fk_rails_888c6565a8 FOREIGN KEY (programming_language_id) REFERENCES programming_languages(id);


--
-- Name: bookshelves fk_rails_9a6539777c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bookshelves
    ADD CONSTRAINT fk_rails_9a6539777c FOREIGN KEY (book_id) REFERENCES books(id);


--
-- PostgreSQL database dump complete
--

END;