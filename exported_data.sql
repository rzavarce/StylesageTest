--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Debian 14.4-1.pgdg110+1)
-- Dumped by pg_dump version 14.4 (Debian 14.4-1.pgdg110+1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO "Ds5DTAxP";

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: Ds5DTAxP
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO "Ds5DTAxP";

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ds5DTAxP
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO "Ds5DTAxP";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: Ds5DTAxP
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO "Ds5DTAxP";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ds5DTAxP
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO "Ds5DTAxP";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: Ds5DTAxP
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO "Ds5DTAxP";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ds5DTAxP
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO "Ds5DTAxP";

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO "Ds5DTAxP";

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: Ds5DTAxP
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO "Ds5DTAxP";

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ds5DTAxP
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: Ds5DTAxP
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO "Ds5DTAxP";

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ds5DTAxP
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO "Ds5DTAxP";

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: Ds5DTAxP
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO "Ds5DTAxP";

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ds5DTAxP
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO "Ds5DTAxP";

--
-- Name: coupons_coupon; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.coupons_coupon (
    id bigint NOT NULL,
    country_code character varying(2) NOT NULL,
    coupon_id integer NOT NULL,
    coupon_webshop_name character varying(150) NOT NULL,
    description text NOT NULL,
    first_seen date NOT NULL,
    last_seen date NOT NULL,
    promotion_type character varying(20) NOT NULL,
    title character varying(200) NOT NULL,
    value integer,
    webshop_id character varying(200) NOT NULL
);


ALTER TABLE public.coupons_coupon OWNER TO "Ds5DTAxP";

--
-- Name: coupons_coupon_id_seq; Type: SEQUENCE; Schema: public; Owner: Ds5DTAxP
--

CREATE SEQUENCE public.coupons_coupon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupons_coupon_id_seq OWNER TO "Ds5DTAxP";

--
-- Name: coupons_coupon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ds5DTAxP
--

ALTER SEQUENCE public.coupons_coupon_id_seq OWNED BY public.coupons_coupon.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO "Ds5DTAxP";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: Ds5DTAxP
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO "Ds5DTAxP";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ds5DTAxP
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO "Ds5DTAxP";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: Ds5DTAxP
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO "Ds5DTAxP";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ds5DTAxP
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO "Ds5DTAxP";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: Ds5DTAxP
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO "Ds5DTAxP";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ds5DTAxP
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_rest_passwordreset_resetpasswordtoken; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.django_rest_passwordreset_resetpasswordtoken (
    created_at timestamp with time zone NOT NULL,
    key character varying(64) NOT NULL,
    ip_address inet,
    user_agent character varying(256) NOT NULL,
    user_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.django_rest_passwordreset_resetpasswordtoken OWNER TO "Ds5DTAxP";

--
-- Name: django_rest_passwordreset_resetpasswordtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: Ds5DTAxP
--

CREATE SEQUENCE public.django_rest_passwordreset_resetpasswordtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_rest_passwordreset_resetpasswordtoken_id_seq OWNER TO "Ds5DTAxP";

--
-- Name: django_rest_passwordreset_resetpasswordtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ds5DTAxP
--

ALTER SEQUENCE public.django_rest_passwordreset_resetpasswordtoken_id_seq OWNED BY public.django_rest_passwordreset_resetpasswordtoken.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: Ds5DTAxP
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO "Ds5DTAxP";

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: coupons_coupon id; Type: DEFAULT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.coupons_coupon ALTER COLUMN id SET DEFAULT nextval('public.coupons_coupon_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_rest_passwordreset_resetpasswordtoken id; Type: DEFAULT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_rest_passwordreset_resetpasswordtoken ALTER COLUMN id SET DEFAULT nextval('public.django_rest_passwordreset_resetpasswordtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Token	7	add_token
26	Can change Token	7	change_token
27	Can delete Token	7	delete_token
28	Can view Token	7	view_token
29	Can add token	8	add_tokenproxy
30	Can change token	8	change_tokenproxy
31	Can delete token	8	delete_tokenproxy
32	Can view token	8	view_tokenproxy
33	Can add Password Reset Token	9	add_resetpasswordtoken
34	Can change Password Reset Token	9	change_resetpasswordtoken
35	Can delete Password Reset Token	9	delete_resetpasswordtoken
36	Can view Password Reset Token	9	view_resetpasswordtoken
37	Can add Coupon	10	add_coupon
38	Can change Coupon	10	change_coupon
39	Can delete Coupon	10	delete_coupon
40	Can view Coupon	10	view_coupon
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$07N2NEjhik4K3pAwgYya62$sXNPmiiNq5kVc96SURbSfB6Gces07ctv6rSwUbgsJWE=	2022-07-16 08:49:40.695742+00	t	admin	Roger	Zavarce	admin@stylesage.com	t	t	2022-07-15 20:23:01+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
12d7e9c0cda02b8c40d13fcd8ff7a9b5892062f5	2022-07-15 22:53:16.441865+00	1
\.


--
-- Data for Name: coupons_coupon; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.coupons_coupon (id, country_code, coupon_id, coupon_webshop_name, description, first_seen, last_seen, promotion_type, title, value, webshop_id) FROM stdin;
1	us	259887	Macy's  & Promo Codes	25% OFF Sale Save 25% Off Petite Tops 50 uses today Get Deal See Details Details Add a Comment Ends:  Today Details:  Get 25% Off Petite Tops! Find your perfect sleeve length without worrying about hemming. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	25% Off Petite Tops	25	macys
2	us	259886	Macy's  & Promo Codes	50% OFF Sale Save 50% Off Select Men's Patterned Suits Verified today 5 uses today Get Deal See Details Details Add a Comment Details:  Get 50% Off Select Men's Patterned Suits. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-07	percent-off	50% Off Select Men's Patterned Suits	50	macys
34	us	259887	Macy's  & Promo Codes	25% OFF Sale Save 25% Off Petite Tops 50 uses today Get Deal See Details Details Add a Comment Ends:  Today Details:  Get 25% Off Petite Tops! Find your perfect sleeve length without worrying about hemming. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	25% Off Petite Tops	25	macys
35	us	259886	Macy's  & Promo Codes	50% OFF Sale Save 50% Off Select Men's Patterned Suits Verified today 5 uses today Get Deal See Details Details Add a Comment Details:  Get 50% Off Select Men's Patterned Suits. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-07	percent-off	50% Off Select Men's Patterned Suits	50	macys
37	us	252399	Nordstrom  & Promo Codes	FREE GIFT Sale Save Free Pouch & Deluxe Samples & Body Creme With $100 Jo Malone London Orders Get Deal See Details Details Add a Comment Details:  Receive a drawstring pouch and deluxe samples of Basil & Neroli Cologne (0.3 oz.), Wood Sage & Sea Salt Body & Hand Wash (0.5 oz.) and English Pear & Freesia Body Crème (0.5 oz.) with your $100 Jo Malone London purchase. Online only. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-10	2017-09-07	free-shipping	Free Pouch & Deluxe Samples & Body Creme With $100 Jo Malone London Orders	\N	nordstrom
38	us	258647	Macy's  & Promo Codes	$20 OFF Sale Save $20 Off Your Next Purchase of $50+ When You Shop Couple’s Registry 11 uses today Get Deal See Details Details Add a Comment Ends:  10/01/17 Details:  Give a gift, get a gift! Shop a couple’s registry and take $20 off your next purchase of $50 or more. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-07	dollar-off	$20 Off Your Next Purchase of $50+ When You Shop Couple’s Registry	20	macys
39	us	215314	Nordstrom  & Promo Codes	Free Gift Save Show Coupon Code 10 uses today Free 3 Piece Gifts With Your $75 Clarins Purchase Details: Get Free three-piece gifts with your $75 Clarins purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-05-04	2017-09-07	free-gift	Free 3 Piece Gifts With Your $75 Clarins Purchase	\N	nordstrom
40	us	260310	Macy's  & Promo Codes	UP TO 20% OFF In Store Coupon Save $10 Off Select Sale Clothing & Home Items of $25+ & Up to an Extra 20% Off Select Sale & Clearance Items Added by   TrishAloha 1.2k uses today Show Coupon See Details Exclusions Details Add a Comment Ends:  09/11/17 Exclusions:  Deals of the Day. Doorbusters, Everyday Values (EDV), Last Act, Macy's Backstage, specials, Super Buys, athletic clothing/shoes/accessories, baby gear. reg.-price china/ crystal/silver, cosmetics/fragrances, designer handbags, designer jewelry/watches, uesigner sportswear, electrics/electronics furniture/mattresses, gift cards, jewelry trunk shows, select licensed depts., previous purchases, restaurants, rugs, services, smart watches/jewelry, special orders, special purchases, select tech accessories, toys, 3Doodler, American Rug Craftsmen, Apple Products, Avec Les Ales clothing, Barbour, Brahmin, Brevitle, Brooks Brothers Red Fleece, COACH, Demeyere, Destination Maternity, Dyson, Eileen Fisher SYSTEM, Fitbit, Frye, Hanky Panky, Jack Spade, Karastan, kate spade new york, Kenneth Cole shoes, KitchenAid Pro Line, Le Creuset, Levi's. littleBits, Locker Room by Lids, Marc Jacobs, select Michael Kors/Michael Michael Kors, Michele watches, Miyabi, Movado Bold, Natori, Nike swim, Original Penguin, Rimowa, Rudsak, Sam Edelman, Shun, Spanx, Staub, Stuart Weitzman, Tempur-Pedic mattresses, The North Face, Theory, Tommy John. Tory Burch, Tumi, UGG®, Vans, Vitamix, Wacoal, Wolford & Wusthof; PLUS, ONLINE ONLY: kids' shoes, Allen Edmonds, Birkenstock, Hurley, Johnston & Murphy, Merrell, RVCA & Tommy Bahama. Ends:  09/11/17 Details:  Get $10 Off your purchase of $25 or more On Select Sale Clothing & Home Items Valid from 9/7/2017 to 9/9/2017 till 2:00 Pm or on 9/10/2017 till 3:00 Pm or on 9/11/2017 till 2:00 Pm or Extra 20% Off Select Sale and Clearance on clothing and accessories + Extra 15% Off select sale and clearance on shoes, coats, suits, dresses, jewelry, Lingerie, swim for her, suit separates and sport coats for him and home items. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	dollar-off	$10 Off Select Sale Clothing & Home Items of $25+ & Up to an Extra 20% Off Select Sale & Clearance Items	10	macys
41	us	257931	Macy's  & Promo Codes	70% OFF Sale Save 70% Off Sheets Sets 8 uses today Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Get 70% Off Sheets Sets. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-30	2017-09-04	percent-off	70% Off Sheets Sets	70	macys
42	us	259338	Macy's  & Promo Codes	UP TO 80% OFF Sale Save Up to 80% Off Select INC Styles Verified today 7 uses today Get Deal See Details Details Add a Comment Ends:  09/09/17 Details:  LAST ACT! Get Up to 80% off Select INC Styles. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-06	percent-off	Up to 80% Off Select INC Styles	80	macys
43	us	207005	Nordstrom  & Promo Codes	Free Gift Save Show Coupon Code 13 uses today Free Gift With $39.50 Lancome Purchase Submitted by   llsc Details: Get a Free gift with $39.50 Lancome purchase 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-04-08	2017-09-06	free-gift	Free Gift With $39.50 Lancome Purchase	\N	nordstrom
44	us	215688	Nordstrom  & Promo Codes	Free Gift Save Show Coupon Code 8 uses today Free Gentle Foaming Cleanser & Cosmetics Bag With Clarins Purchase of $75 Details: Get Free Gentle Foaming Cleanser with cottonseed, Multi-Active Night Cream and Cosmetics Bag with Clarins purchase of $75. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-05-05	2017-09-07	dollar-off	Free Gentle Foaming Cleanser & Cosmetics Bag With Clarins Purchase of $75	75	nordstrom
45	us	260326	Macy's  & Promo Codes	PROMO CODE Code Save American Rag Shorts Starting From $11.99 5 uses today Show Coupon Code See Details Details Add a Comment Expires:  09/11/17 Details:  Time to Stock Up! Get American Rag Shorts starting from $11.99. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	free-shipping	American Rag Shorts Starting From $11.99	\N	macys
46	us	256610	Nordstrom  & Promo Codes	UP TO 33% OFF Sale Save Up to 33% Off New Markdowns In Womens Shoes + Free Shipping Get Deal See Details Details Add a Comment Ends:  09/24/17 Details:  Get Up To 33% off new markdowns in Womens Shoes. Free Shipping. Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-25	2017-09-07	free-shipping	Up to 33% Off New Markdowns In Womens Shoes + Free Shipping	\N	nordstrom
47	us	259889	Macy's  & Promo Codes	BOGO Sale Save Buy 1, Get 1 60% Off Select Men's Shoes 41 uses today Get Deal See Details Details Add a Comment Ends:  Today Details:  Buy One, Get One 60% Off Select Men's Shoes. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	Buy 1, Get 1 60% Off Select Men's Shoes	60	macys
48	us	254624	Nordstrom  & Promo Codes	40% OFF Sale Save 40% Off New Markdowns In Womens Shoes + Free Shipping And Returns Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Get 40% Off New Markdowns in Womens Shoes + Free Shipping and Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-18	2017-09-07	percent-off	40% Off New Markdowns In Womens Shoes + Free Shipping And Returns	40	nordstrom
49	us	257941	Macy's  & Promo Codes	60% OFF Sale Save 60% Off All Tailored Clothing From Lauren Ralph Lauren & Calvin Klein Verified today 4 uses today Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Get 60% off All Tailored Clothing from Lauren Ralph Lauren & Calvin Klein. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-30	2017-09-04	percent-off	60% Off All Tailored Clothing From Lauren Ralph Lauren & Calvin Klein	60	macys
50	us	251312	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Discount on Buyers Favorite Back To School Sneakers + Free Shipping & Returns Get Deal See Details Details Add a Comment Ends:  09/30/17 Details:  Shop and Save on our Buyers Favorite Back to School Sneakers for Girls of All Ages + Free Shipping & Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-06	2017-09-07	free-shipping	Discount on Buyers Favorite Back To School Sneakers + Free Shipping & Returns	\N	nordstrom
51	us	209084	Nordstrom  & Promo Codes	Free Gift Save Show Coupon Code 8 uses today Free 7 Piece Gifts of Your Choice With Your $35 Estee Lauder Purchase Details: Choose from Seven-Piece Gifts with your $35 Estée Lauder purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-04-12	2017-09-07	free-gift	Free 7 Piece Gifts of Your Choice With Your $35 Estee Lauder Purchase	\N	nordstrom
52	us	259888	Macy's  & Promo Codes	UP TO 50% OFF Code Save 50% Off Baby Sets + Extra 20% Off Verified 1 day ago 63 uses today Show Coupon Code See Details Details Add a Comment Expires:  Today Details:  Baby Sale! Get 50% off Baby Sets + Extra 20% Off. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	50% Off Baby Sets + Extra 20% Off	50	macys
53	us	259050	Macy's  & Promo Codes	20% OFF Code Save 20% Off Your Purchase + 15% Off Select Departments + Free Shipping on $49+ Verified 1 day ago Added by   RxHexlein 1.8k uses today Show Coupon Code See Details Exclusions Details Add a Comment Expires:  09/04/17 Exclusions:  furniture and mattresses Expires:  09/04/17 Details:  Get 20% off your purchase + 15% Off Select departments + Free shipping on $49+. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-02	2017-09-04	percent-off	20% Off Your Purchase + 15% Off Select Departments + Free Shipping on $49+	20	macys
54	us	257924	Macy's  & Promo Codes	UP TO 20% OFF In Store Coupon Save $10 Off Select Sale Clothing & Home Items of $25+ & Up to an Extra 20% Off Select Sale & Clearance Items Added by   psplove 286 uses today Show Coupon See Details Exclusions Details Add a Comment Ends:  09/04/17 Exclusions:  Deals of the Day. Doorbusters, Everyday Values (EDV), Last Act, Macy's Backstage, specials, Super Buys, athletic clothing/shoes/accessories, baby gear. reg.-price china/ crystal/silver, cosmetics/fragrances, designer handbags, designer jewelry/watches, uesigner sportswear, electrics/electronics furniture/mattresses, gift cards, jewelry trunk shows, select licensed depts., previous purchases, restaurants, rugs, services, smart watches/jewelry, special orders, special purchases, select tech accessories, toys, 3Doodler, American Rug Craftsmen, Apple Products, Avec Les Ales clothing, Barbour, Brahmin, Brevitle, Brooks Brothers Red Fleece, COACH, Demeyere, Destination Maternity, Dyson, Eileen Fisher SYSTEM, Fitbit, Frye, Hanky Panky, Jack Spade, Karastan, kate spade new york, Kenneth Cole shoes, KitchenAid Pro Line, Le Creuset, Levi's. littleBits, Locker Room by Lids, Marc Jacobs, select Michael Kors/Michael Michael Kors, Michele watches, Miyabi, Movado Bold, Natori, Nike swim, Original Penguin, Rimowa, Rudsak, Sam Edelman, Shun, Spanx, Staub, Stuart Weitzman, Tempur-Pedic mattresses, The North Face, Theory, Tommy John. Tory Burch, Tumi, UGG®, Vans, Vitamix, Wacoal, Wolford & Wusthof; PLUS, ONLINE ONLY: kids' shoes, Allen Edmonds, Birkenstock, Hurley, Johnston & Murphy, Merrell, RVCA & Tommy Bahama. Ends:  09/04/17 Details:  Get $10 off Your Purchase Of $25 Or More On Select Sale Clothing & Home Items + Extra 20% off Select Sale Clothing, Accessories, Jewelry & Home Items + Extra 15% Off Select Sale & Clearance Watches, Coats, Shoes, Suits, Dresses, Lingerie, Swim For Her, Men's Suit Separates & Sport Coats. Use Your Macy's Card Or This Macy's Pass. $ off offer is valid for two days only from 09/03/2017 till 03:00 pm and on 09/04/2017 till 02:00 PM. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-30	2017-09-04	dollar-off	$10 Off Select Sale Clothing & Home Items of $25+ & Up to an Extra 20% Off Select Sale & Clearance Items	10	macys
55	us	259343	Macy's  & Promo Codes	$50 OFF Sale Save $50 Off Select Samsung Gear S2, Samsung Gear S3, & Samsung GeartFit Watches 2 uses today Get Deal See Details Details Add a Comment Ends:  09/09/17 Details:  Get $50 off Select Samsung Gear S2, Samsung Gear S3, and Samsung GeartFit Watches Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-06	dollar-off	$50 Off Select Samsung Gear S2, Samsung Gear S3, & Samsung GeartFit Watches	50	macys
56	us	260286	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Handbags And Accessories Starting at $25 + Free Shipping Get Deal See Details Details Add a Comment Ends:  10/03/17 Details:  Step into Fall with statement making Handbags and Accessories starting at $25 + Free Shipping & FREE Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	free-shipping	Handbags And Accessories Starting at $25 + Free Shipping	\N	nordstrom
57	us	258659	Nordstrom  & Promo Codes	UP TO 40% OFF Sale Save Up to 40% Off Top Brands for Women, Men And Kids + Free Shipping & Returns Get Deal See Details Details Add a Comment Ends:  09/10/17 Details:  Save up to 40% on Top Brands for Women, Men and Kids + FREE Shipping + FREE Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-04	percent-off	Up to 40% Off Top Brands for Women, Men And Kids + Free Shipping & Returns	40	nordstrom
58	us	257930	Macy's  & Promo Codes	UP TO 50% OFF Code Save 50% Off Baby Dresses + Extra 20% Off Verified today 9 uses today Show Coupon Code See Details Details Add a Comment Expires:  09/04/17 Details:  BABY SALE! Get 50% Off Baby Dresses + Extra 20% Off. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-30	2017-09-04	percent-off	50% Off Baby Dresses + Extra 20% Off	50	macys
59	us	256611	Nordstrom  & Promo Codes	20% OFF Sale Save 20% Off Select Thule Strollers + Free Shipping Get Deal See Details Details Add a Comment Ends:  09/04/17 Details:  Get 20% Off select Thule Strollers + Free Shipping & Free Returns. For a limited time! Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-25	2017-09-04	percent-off	20% Off Select Thule Strollers + Free Shipping	20	nordstrom
60	us	260318	Macy's  & Promo Codes	50% OFF Sale Save 50% Off Select Men's Suits & Suit Separates Verified today 4 uses today Get Deal See Details Details Add a Comment Details:  Men's Patterned Suits! Get 50% Off Men's Suits & Suit Separates. Select Styles. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	50% Off Select Men's Suits & Suit Separates	50	macys
61	us	260287	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save BP Topshop, Socialite And Lush for Under $100 + Free Shipping Get Deal See Details Details Add a Comment Ends:  10/02/17 Details:  Get BP Topshop, Socialite and Lush for under $100 + Free Shipping + FREE Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	free-shipping	BP Topshop, Socialite And Lush for Under $100 + Free Shipping	\N	nordstrom
62	us	260313	Macy's  & Promo Codes	20% OFF Code Save Extra 20% Off Time To Shop 100s of Specials 567 uses today Show Coupon Code See Details Details Add a Comment Expires:  09/11/17 Details:  Take an Extra 20% off Time to Shop 100s of Specials Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	Extra 20% Off Time To Shop 100s of Specials	20	macys
63	us	193395	Nordstrom  & Promo Codes	Free Gift Save Show Coupon Code 2 uses today Free 7-piece Deluxe Sample Kit With $39.50 Lancome Purchase Details: Get a free 7-piece deluxe sample kit with $39.50 Lancome purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-03-22	2017-09-06	percent-off	Free 7-piece Deluxe Sample Kit With $39.50 Lancome Purchase	\N	nordstrom
64	us	215320	Nordstrom  & Promo Codes	Free Gift Save Get Deal Last used 8 hours ago Free Deluxe Samples With Your $45 Drybar Purchase Details: Get Free deluxe samples of Prep Rally Prime & Prep Detangler and Mai Tai Spritzer Sea Salt Spray with your $45 Drybar purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-05-04	2017-09-07	percent-off	Free Deluxe Samples With Your $45 Drybar Purchase	\N	nordstrom
65	us	260327	Macy's  & Promo Codes	UP TO 50% OFF Sale Save Up to 50% Off Fine Jewlery 1 use today Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Get 30-50% off Fine Jewlery Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	Up to 50% Off Fine Jewlery	50	macys
66	us	251538	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Discount on Womens Petite-Size Work Wear + Free Shipping & Returns Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Shop and Save on Womens Petite-Size Work Wear + Free Shipping & Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-07	2017-09-04	free-shipping	Discount on Womens Petite-Size Work Wear + Free Shipping & Returns	\N	nordstrom
67	us	260289	Nordstrom  & Promo Codes	SALE Sale Save Need It Today? Get Free In Store Pick Up Now! Get Deal See Details Details Add a Comment Details:  Need it Today? Buy Online and Pick Up In Stores Now! Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	Need It Today? Get Free In Store Pick Up Now!	\N	nordstrom
68	us	257108	Macy's  & Promo Codes	50% OFF Sale Save 50% Off Urban Decay Naked Smokey Eyeshadow Palette Verified today 12 uses today Get Deal See Details Details Add a Comment Details:  Get 50% off Urban Decay Naked Smokey Eyeshadow Palette Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-27	2017-09-07	percent-off	50% Off Urban Decay Naked Smokey Eyeshadow Palette	50	macys
69	us	260314	Macy's  & Promo Codes	UP TO 25% OFF Code Save 25% Off Little Me + 20% Off 37 uses today Show Coupon Code See Details Details Add a Comment Expires:  09/11/17 Details:  BABY SALE! Get 25% off Little Me + 20% Off with Code. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	25% Off Little Me + 20% Off	25	macys
70	us	253376	Nordstrom  & Promo Codes	FREE GIFT Sale Save 3 Free Samples With Every Beauty Purchase + Free Shipping & Free Returns Get Deal See Details Details Add a Comment Ends:  09/10/17 Details:  Get three free samples with every beauty purchase + Free Shipping & Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-14	2017-09-07	free-shipping	3 Free Samples With Every Beauty Purchase + Free Shipping & Free Returns	\N	nordstrom
71	us	259341	Macy's  & Promo Codes	FREE GIFT Sale Save Free 7-pc Gift With $25 Estee Lauder Purchase 18 uses today Get Deal See Details Details Add a Comment Ends:  09/26/17 Details:  Get Free 7-pc Gift with $25 Estee Lauder purchase Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-07	percent-off	Free 7-pc Gift With $25 Estee Lauder Purchase	\N	macys
72	us	254931	Macy's  & Promo Codes	15% OFF Sale Save Extra 15% Off Select Fashion Jewelry Clearance Verified today Added by   URBeautiful 17 uses today Get Deal See Details Details Add a Comment Ends:  10/19/17 Details:  Get an Extra 15% off Select Fashion Jewelry Clearance. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-19	2017-09-07	percent-off	Extra 15% Off Select Fashion Jewelry Clearance	15	macys
73	us	101541	Nike Promo Codes &	Free Shipping Sale Save Get Deal Verified Last used 7 hours ago Free Shipping Over $150 Ends 12/31/21 Details: Get Free Shipping over $150 100% Success Ends 12/31/21 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-03-10	2017-09-07	free-shipping	Free Shipping Over $150	\N	nike
74	us	258293	Nordstrom  & Promo Codes	UP TO 40% OFF Sale Save Up to 40% Off New Topman Markdowns + Free Shipping & Free Returns Get Deal See Details Details Add a Comment Ends:  09/14/17 Details:  Get Up to 40% off new Topman markdowns + Free Shipping & Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-31	2017-09-04	percent-off	Up to 40% Off New Topman Markdowns + Free Shipping & Free Returns	40	nordstrom
75	us	259892	Macy's  & Promo Codes	25% OFF Sale Save 25% Off New Fall Packables, Peacoats, Trenchcoats, Parkas & More 19 uses today Get Deal See Details Details Add a Comment Ends:  Today Details:  Get 25% off New Fall Packables, Peacoats, Trenchcoats, Parkas & more. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	25% Off New Fall Packables, Peacoats, Trenchcoats, Parkas & More	25	macys
76	us	260284	Nordstrom  & Promo Codes	SALE Sale Save New Fall Trends Under $100 Get Deal See Details Details Add a Comment Ends:  10/02/17 Details:  Get new fall trends under $100. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	free-gift	New Fall Trends Under $100	\N	nordstrom
77	us	259895	Macy's  & Promo Codes	25% OFF Sale Save 25% Off New Petite Fall Packables, Peacoats, Trenchcoats, Parkas & More 11 uses today Get Deal See Details Details Add a Comment Ends:  Today Details:  Get 25% off New Petite Fall Packables, Peacoats, Trenchcoats, Parkas & more. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	25% Off New Petite Fall Packables, Peacoats, Trenchcoats, Parkas & More	25	macys
78	us	258640	Macy's  & Promo Codes	40% OFF Sale Save 40% Off Select Swiss Army Watch Verified today 7 uses today Get Deal See Details Details Add a Comment Ends:  09/04/17 Details:  Get 40% off select Swiss Army watch Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-04	percent-off	40% Off Select Swiss Army Watch	40	macys
79	us	257921	Macy's  & Promo Codes	20% OFF Code Save Extra 20% Off Labor Day Sale + Free Shipping at $49 + Free Returns 1.4k uses today Show Coupon Code See Details Details Add a Comment Expires:  09/05/17 Details:  Get an Extra 20% off Labor Day Sale with code + Free Shipping at $49 + get free returns Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-30	2017-09-04	percent-off	Extra 20% Off Labor Day Sale + Free Shipping at $49 + Free Returns	20	macys
80	us	259881	Macy's  & Promo Codes	$10 BACK Cash Back Offer $10 Cash Back for Online Purchase of $50+ Verified 2.6k uses today Get Cash Back See Details Details Add a Comment Ends:  Tomorrow Details:  Combine with other offers for an even better deal! Excludes gift cards. Purchases must meet the minimum amount before taxes, shipping, and handling and after any other discounts are applied. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-07	free-gift	$10 Cash Back for Online Purchase of $50+	\N	macys
81	us	251528	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Swim Cover-Ups Starting Under $100 + Free Shipping & Returns Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Get Swim Cover-Ups starting under $100 + Free Shipping & Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-07	2017-09-04	free-shipping	Swim Cover-Ups Starting Under $100 + Free Shipping & Returns	\N	nordstrom
82	us	253377	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save In-store Services + 3 Free Samples With Beauty Purchase + Free Shipping Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Get in-store services like complimentary makeup lessons with one of our beauty experts. Plus, three free samples with every beauty purchase + Free Shipping + Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-14	2017-09-07	free-shipping	In-store Services + 3 Free Samples With Beauty Purchase + Free Shipping	\N	nordstrom
83	us	259883	Macy's  & Promo Codes	25% OFF Sale Save 25% Off Select Chic Women's Tops Verified today 26 uses today Get Deal See Details Details Add a Comment Details:  Get 25% Off Chic Women's Tops. Select Styles. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-07	percent-off	25% Off Select Chic Women's Tops	25	macys
84	us	215326	Nordstrom  & Promo Codes	Free Gift Save Get Deal Last used 8 hours ago Free Cosmetics Case And Deluxe Samples With Your $90 Bobbi Brown Purchase Details: Get a Free Cosmetics Case and deluxe samples of Bronzing Powder in Medium and Art Stick Liquid Lip in English Rose with your $90 Bobbi Brown purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-05-04	2017-09-07	free-gift	Free Cosmetics Case And Deluxe Samples With Your $90 Bobbi Brown Purchase	\N	nordstrom
85	us	252713	Nordstrom  & Promo Codes	SALE Sale Save 40% Off New Markdowns for Men From Top Brands + Free Shipping & Free Returns Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Save 40% on new markdowns for men from top brands like BOSS, Nordstrom Mens Shop and more + Free Shipping & Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-11	2017-09-04	percent-off	40% Off New Markdowns for Men From Top Brands + Free Shipping & Free Returns	40	nordstrom
86	us	259885	Macy's  & Promo Codes	FREE GIFT Sale Save Free 7-pc Gift With $35 Estee Lauder Purchase Verified today 14 uses today Get Deal See Details Details Add a Comment Ends:  09/26/17 Details:  Get a Free 7-pc Gift with $35 Estee Lauder purchase. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-07	free-gift	Free 7-pc Gift With $35 Estee Lauder Purchase	\N	macys
87	us	258288	Macy's  & Promo Codes	FREE SHIPPING Sale Save Free Shipping on All Beauty Orders! Verified today 28 uses today Get Deal See Details Details Add a Comment Details:  Get free shipping on all beauty orders, no code required! Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-31	2017-09-07	free-shipping	Free Shipping on All Beauty Orders!	\N	macys
88	us	260310	Macy's  & Promo Codes	UP TO 20% OFF In Store Coupon Save $10 Off Select Sale Clothing & Home Items of $25+ & Up to an Extra 20% Off Select Sale & Clearance Items Added by   TrishAloha 1.2k uses today Show Coupon See Details Exclusions Details Add a Comment Ends:  09/11/17 Exclusions:  Deals of the Day. Doorbusters, Everyday Values (EDV), Last Act, Macy's Backstage, specials, Super Buys, athletic clothing/shoes/accessories, baby gear. reg.-price china/ crystal/silver, cosmetics/fragrances, designer handbags, designer jewelry/watches, uesigner sportswear, electrics/electronics furniture/mattresses, gift cards, jewelry trunk shows, select licensed depts., previous purchases, restaurants, rugs, services, smart watches/jewelry, special orders, special purchases, select tech accessories, toys, 3Doodler, American Rug Craftsmen, Apple Products, Avec Les Ales clothing, Barbour, Brahmin, Brevitle, Brooks Brothers Red Fleece, COACH, Demeyere, Destination Maternity, Dyson, Eileen Fisher SYSTEM, Fitbit, Frye, Hanky Panky, Jack Spade, Karastan, kate spade new york, Kenneth Cole shoes, KitchenAid Pro Line, Le Creuset, Levi's. littleBits, Locker Room by Lids, Marc Jacobs, select Michael Kors/Michael Michael Kors, Michele watches, Miyabi, Movado Bold, Natori, Nike swim, Original Penguin, Rimowa, Rudsak, Sam Edelman, Shun, Spanx, Staub, Stuart Weitzman, Tempur-Pedic mattresses, The North Face, Theory, Tommy John. Tory Burch, Tumi, UGG®, Vans, Vitamix, Wacoal, Wolford & Wusthof; PLUS, ONLINE ONLY: kids' shoes, Allen Edmonds, Birkenstock, Hurley, Johnston & Murphy, Merrell, RVCA & Tommy Bahama. Ends:  09/11/17 Details:  Get $10 Off your purchase of $25 or more On Select Sale Clothing & Home Items Valid from 9/7/2017 to 9/9/2017 till 2:00 Pm or on 9/10/2017 till 3:00 Pm or on 9/11/2017 till 2:00 Pm or Extra 20% Off Select Sale and Clearance on clothing and accessories + Extra 15% Off select sale and clearance on shoes, coats, suits, dresses, jewelry, Lingerie, swim for her, suit separates and sport coats for him and home items. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	$10 Off Select Sale Clothing & Home Items of $25+ & Up to an Extra 20% Off Select Sale & Clearance Items	20	macys
89	us	251004	Macy's  & Promo Codes	FREE GIFT Sale Save 3 Fragrance Samples With $65 Fragrance Purchase 9 uses today Get Deal See Details Details Add a Comment Ends:  12/31/17 Details:  Get 3 Fragrance Samples with $65 Fragrance Purchase. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-05	2017-09-07	free-gift	3 Fragrance Samples With $65 Fragrance Purchase	\N	macys
90	us	258656	Nordstrom  & Promo Codes	UP TO 25% OFF Sale Save Up to 25% Off Sale + Free Shipping Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Get Up to 25% off 2(X)IST line sale + Free Shipping. Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-07	percent-off	Up to 25% Off Sale + Free Shipping	25	nordstrom
91	us	260285	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save New Fall Accessories From $25 By Halogen & More + Free Shipping & Returns Get Deal See Details Details Add a Comment Ends:  10/03/17 Details:  Get new fall accessories starting at $25 from Halogen, Cara, Nadri and more + FREE Shipping + FREE Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	free-shipping	New Fall Accessories From $25 By Halogen & More + Free Shipping & Returns	\N	nordstrom
92	us	258641	Macy's  & Promo Codes	50% OFF Sale Save 50% Off Select Swim for Her Verified today 10 uses today Get Deal See Details Details Add a Comment Details:  Summer's Last Splash! Get 50% Off Select Swim for her. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-04	percent-off	50% Off Select Swim for Her	50	macys
93	us	254621	Nordstrom  & Promo Codes	40% OFF Sale Save 40% Off New Markdowns From Topman + Free Shipping & Free Returns Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Save 40% with new markdowns from Topman + Free Shipping & Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-18	2017-09-04	percent-off	40% Off New Markdowns From Topman + Free Shipping & Free Returns	40	nordstrom
94	us	260328	Macy's  & Promo Codes	40% OFF Sale Save 40% Off Ladies Suits & Suit Separates 2 uses today Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Get 40% off Ladies Suits & Suit Separates from Tahari ASL, Nine West, Tommy Hilfiger and more. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	40% Off Ladies Suits & Suit Separates	40	macys
95	us	260312	Macy's  & Promo Codes	$10 OFF Code Save $10 Off Your Purchase of $25+ on Select Sale & Clearance Items Verified today Added by   TrishAloha 515 uses today Show Coupon Code See Details Details Add a Comment Expires:  09/11/17 Details:  Save $10 On Your Purchase Of $25 Or More On Select Sale & Clearance Items Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	dollar-off	$10 Off Your Purchase of $25+ on Select Sale & Clearance Items	10	macys
96	us	251531	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save One-Piece Swimsuits Starting at $60 + Free Shipping & Returns Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Get One-Piece Swimsuits Starting at $60 + Free Shipping & Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-07	2017-09-04	free-shipping	One-Piece Swimsuits Starting at $60 + Free Shipping & Returns	\N	nordstrom
97	us	251539	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Free Shipping & Returns During Back To School In Maddie for Girls Get Deal See Details Details Add a Comment Ends:  09/30/17 Details:  Get Free Shipping & Returns during Back to School in Maddie for Girls Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-07	2017-09-07	free-shipping	Free Shipping & Returns During Back To School In Maddie for Girls	\N	nordstrom
98	us	215322	Nordstrom  & Promo Codes	Free Gift Save Get Deal Last used 8 hours ago Free Deluxe Samples of Eye Cream & Mask When You Spend $125 on Bobbi Brown Details: Get Free deluxe samples of Hydrating Eye Cream and Skin Nourish Mask when you Spend $125 on Bobbi Brown. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-05-04	2017-09-07	free-gift	Free Deluxe Samples of Eye Cream & Mask When You Spend $125 on Bobbi Brown	\N	nordstrom
99	us	260323	Macy's  & Promo Codes	UP TO 40% OFF Sale Save 40% Off + 15% Off Dental, Grooming, Massage 1 use today Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Get 40% off + 15% off Dental, Grooming, Massage Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	40% Off + 15% Off Dental, Grooming, Massage	40	macys
100	us	54598	Nike Promo Codes &	eGift Card Buy Gift Card Verified 104 uses today Up To 8% Off Total Purchase With A Discount eGift Card Details: Get up to 7.5% off eGift Cards for Nike from RetailMeNot! Limited quantities 50% Success 50% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-02-05	2017-09-07	percent-off	Up To 8% Off Total Purchase With A Discount eGift Card	8	nike
101	us	258287	Macy's  & Promo Codes	70% OFF Sale Save 70% Off Bras Verified today 25 uses today Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Get 70% Off Bras. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-31	2017-09-04	percent-off	70% Off Bras	70	macys
102	us	259894	Macy's  & Promo Codes	UP TO 30% OFF Sale Save Up to 30% Off Select Styles From Kipling Verified 1 day ago 1 use today Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Get 25-30% off select styles from Kipling. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	Up to 30% Off Select Styles From Kipling	30	macys
103	us	260316	Macy's  & Promo Codes	UP TO 65% OFF Sale Save Up to 65% Off ALL Samsonite, Delsey, Travelpro, & London Fog Luggage 6 uses today Get Deal See Details Details Add a Comment Ends:  09/12/17 Details:  Get 60%-65% off ALL Samsonite, Delsey, Travelpro, & London Fog Luggage Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	Up to 65% Off ALL Samsonite, Delsey, Travelpro, & London Fog Luggage	65	macys
104	us	259884	Macy's  & Promo Codes	25% OFF Sale Save 25% Off Select Clearance Watches Verified today 29 uses today Get Deal See Details Details Add a Comment Details:  Get 25% Off Select Clearance Watches. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-07	percent-off	25% Off Select Clearance Watches	25	macys
105	us	258655	Nordstrom  & Promo Codes	UP TO 40% OFF Sale Save Up to 40% Off Top Brands for Women, Men And Kids + Free Shipping And Free Returns Get Deal See Details Details Add a Comment Ends:  09/10/17 Details:  Summer Sale! Save up to 40% on Top Brands for Women, Men and Kids + Free Shipping and Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-06	percent-off	Up to 40% Off Top Brands for Women, Men And Kids + Free Shipping And Free Returns	40	nordstrom
106	us	258645	Macy's  & Promo Codes	30% OFF Sale Save 30% Off Fall Packables, Peacoats, Trenchcoats & More Verified today 2 uses today Get Deal See Details Details Add a Comment Ends:  09/04/17 Details:  Limited Time Special! Get 30% off New Lighweight and Luxurious Fall Packables, Peacoats, Trenchcoats & more. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-04	percent-off	30% Off Fall Packables, Peacoats, Trenchcoats & More	30	macys
107	us	55183	Nordstrom  & Promo Codes	eGift Card Buy Gift Card Verified 101 uses today Up To 8% Off Total Purchase With A Discount eGift Card Details: Get up to 7.5% off eGift Cards for Nordstrom from RetailMeNot! Limited quantities 75% Success 75% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2016-11-18	2017-09-07	percent-off	Up To 10% Off eGift Cards	10	nordstrom
108	us	258661	Nike Promo Codes &	25% OFF Code Save Extra 25% Off Sale Verified 2 days ago 1.7k uses today Show Coupon Code See Details Exclusions Details Add a Comment Expires:  09/04/17 Exclusions:  Some exclusions apply. Expires:  09/04/17 Details:  Take an extra 25% off sale! Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-04	percent-off	Extra 25% Off Sale	25	nike
109	us	257932	Macy's  & Promo Codes	20% OFF Code Save Coats & Jackets for Baby Starting at $16.99 + Extra 20% Off Verified today 12 uses today Show Coupon Code See Details Details Add a Comment Expires:  09/04/17 Details:  BABY SALE! Get Coats & Jackets for Baby starting at $16.99 + Extra 20% Off. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-30	2017-09-04	percent-off	Coats & Jackets for Baby Starting at $16.99 + Extra 20% Off	20	macys
110	us	255436	Macy's  & Promo Codes	40% OFF Sale Save 40% Off Select Kid's Styles Verified today 25 uses today Get Deal See Details Details Add a Comment Details:  Get 40% off Select Kid's Styles Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-21	2017-09-07	percent-off	40% Off Select Kid's Styles	40	macys
111	us	259882	Macy's  & Promo Codes	20% OFF Code Save Coats And Jackets for Baby Starting at $16.99 + Extra 20% Off Reg, Sale & Clearance Kids & Baby Clothing! Verified today 2.6k uses today Show Coupon Code See Details Exclusions Details Add a Comment Expires:  09/11/17 Exclusions:  EXCLUDES ALL: Deals of the Day, Doorbusters, Everyday Values (EDV), Last Act, Macy's Backstage, specials, Super Buys, athletic clothing/shoes/accessories, baby gear, reg.-price china/crystal/silver, cosmetics/fragrances, designer handbags, designer jewelry/watches, designer sportswear, electrics/electronics, furniture/mattresses, gift cards, jewelry trunk shows, select licensed depts., previous purchases, restaurants, rugs, services, smart watches/jewelry, special orders, special purchases, select tech accessories, toys, 3Doodler, American Rug Craftsmen, Apple Products, Ashley Graham, Avec Les Filles clothing, Barbour, Brahmin, Breville, Brooks Brothers Red Fleece, COACH, Demeyere, Destination Maternity, Dyson, Eileen Fisher SYSTEM, Fitbit, Frye, Hanky Panky, Jack Spade, Judith Leiber, Karastan, kate spade new york, Kenneth Cole shoes, KitchenAid Pro Line, Le Creuset, Levi's, littleBits, Locker Room by Lids, Marc Jacobs, select Michael Kors/Michael Michael Kors, Michele watches, Miyabi, Movado Bold, Natori, Nike swim, Original Penguin, Panache, Rimowa, Rudsak, Sam Edelman, Shun, Spanx, Staub, Stuart Weitzman, Tempur-Pedic mattresses, The North Face, Theory, Tommy John, Tory Burch, Tumi, UGG®, Vans, Vitamix, Wacoal, Wolford & Wüsthof; PLUS, ONLINE ONLY: kids' shoes, Allen Edmonds, Birkenstock, Hurley, Johnston & Murphy, Merrell, RVCA & Tommy Bahama. Expires:  09/11/17 Details:  Baby Sale! Coats and Jackets for Baby Starting at $16.99 + Extra 20% Off Reg, Sale & Clearance Kids & Baby Clothing! Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-07	percent-off	Coats And Jackets for Baby Starting at $16.99 + Extra 20% Off Reg, Sale & Clearance Kids & Baby Clothing!	20	macys
112	us	101538	Nike Promo Codes &	40% OFF Sale Save Get Deal Verified 117 uses today Up To 40% Off Select Styles + Free Shipping Membership Ends 09/30/17 Details: Get Up to 40% off select styles + Free shipping and returns with Nike+ membership. No code required. 100% Success Ends 09/30/17 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-03-10	2017-09-07	percent-off	Up To 40% Off Select Styles + Free Shipping Membership	40	nike
127	us	101542	Nike Promo Codes &	Free Shipping Sale Save Get Deal Verified 4 uses today Free Shipping Sitewide For Members Ends 12/31/21 Details: Get Free Shipping on all orders for Nike+ members 100% Success Ends 12/31/21 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-03-10	2017-09-07	free-shipping	Free Shipping Sitewide For Members	\N	nike
113	us	253965	Nordstrom  & Promo Codes	FREE GIFT Sale Save Free Gift on $125 Beauty Or Fragrance Order + Free Lancome Gift on $25 More Get Deal See Details Details Add a Comment Details:  Get a Free 17 Piece Gift with your $125 Beauty or Fragrance Purchase + Free Lancome Gift when you spend $25 more. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-16	2017-09-07	free-gift	Free Gift on $125 Beauty Or Fragrance Order + Free Lancome Gift on $25 More	\N	nordstrom
114	us	259889	Macy's  & Promo Codes	BOGO Sale Save Buy 1, Get 1 60% Off Select Men's Shoes 41 uses today Get Deal See Details Details Add a Comment Ends:  Today Details:  Buy One, Get One 60% Off Select Men's Shoes. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	buy-one-get-one	Buy 1, Get 1 60% Off Select Men's Shoes	\N	macys
115	us	259898	Macy's  & Promo Codes	UP TO 40% OFF Sale Save Up to 40% Off Activewear Tops Verified 2 uses today Get Deal See Details Details Add a Comment Ends:  09/09/17 Details:  Get up to 40% Off Activewear Tops from CK, Ideology and more. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	Up to 40% Off Activewear Tops	40	macys
116	us	101540	Nike Promo Codes &	10% OFF Sale Save Get Deal Verified 40 uses today 10% Off Your Orders For Military + Free Shipping Ends 11/10/20 Details: Nike Military Discount! Get 10% off your orders + Free shipping 100% Success Ends 11/10/20 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-03-10	2017-09-07	free-shipping	10% Off Your Orders For Military + Free Shipping	\N	nike
117	us	259340	Macy's  & Promo Codes	FREE GIFT Sale Save Free Full Size Favorite With $75 Estee Lauder + Additional Full Size Favorite on $125 Purchase Verified today 3 uses today Get Deal See Details Details Add a Comment Ends:  09/25/17 Details:  Choose your Free Full Size Favorite with any $75 Estee Lauder Purchase + Spend $125 and choose an additional full size favorite. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-06	free-gift	Free Full Size Favorite With $75 Estee Lauder + Additional Full Size Favorite on $125 Purchase	\N	macys
118	us	215691	Nordstrom  & Promo Codes	Free Gift Save Get Deal 2 uses today Free Deluxe Gift Bag With $95 Laura Mercier Purchase Details: Get Free Hydration Foundation Primer & Translucent Loose Setting Powder with $95 Laura Mercier purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-05-05	2017-09-07	free-gift	Free Deluxe Gift Bag With $95 Laura Mercier Purchase	\N	nordstrom
119	us	259896	Macy's  & Promo Codes	SALE Sale Save End of Season Sale on Great Styles From Columbia 1 use today Get Deal See Details Details Add a Comment Ends:  09/09/17 Details:  Shop and Save Big during End Of Season Sale on great styles from Columbia! Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	free-gift	End of Season Sale on Great Styles From Columbia	\N	macys
120	us	259897	Macy's  & Promo Codes	25% OFF Sale Save 25% Off New Juniors Peacoats, Bombers & Moto Jackets Get Deal See Details Details Add a Comment Ends:  Today Details:  Get 25% off New Juniors Peacoats, Bombers, and Moto Jackets. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	25% Off New Juniors Peacoats, Bombers & Moto Jackets	25	macys
121	us	251529	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Bodysuits Starting Under $60 From Top Brands Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Get Bodysuits Starting Under $60 from Top Brands + Free Shipping & Returns Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-07	2017-09-04	free-shipping	Bodysuits Starting Under $60 From Top Brands	\N	nordstrom
122	us	256610	Nordstrom  & Promo Codes	UP TO 33% OFF Sale Save Up to 33% Off New Markdowns In Womens Shoes + Free Shipping Get Deal See Details Details Add a Comment Ends:  09/24/17 Details:  Get Up To 33% off new markdowns in Womens Shoes. Free Shipping. Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-25	2017-09-07	percent-off	Up to 33% Off New Markdowns In Womens Shoes + Free Shipping	33	nordstrom
123	us	252400	Nordstrom  & Promo Codes	FREE GIFT Sale Save Free Cosmetics Bag & Deluxe Samples With Your $50 Shiseido Purchase Get Deal See Details Details Add a Comment Details:  Receive a cosmetics bag with deluxe samples of Benefiance Extra Creamy Cleansing Foam (1 oz.); Ultimune Power Infusing Concentrate (0.33 oz.); and WrinkleResist24 Balancing Softener Enriched (0.84 oz.), Night Emulsion (0.5 oz.) and Intensive Eye Contour Cream (0.17 oz.) with your $50 Shiseido purchase. Online only. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-10	2017-09-07	percent-off	Free Cosmetics Bag & Deluxe Samples With Your $50 Shiseido Purchase	\N	nordstrom
124	us	254930	Macy's  & Promo Codes	UP TO 75% OFF Sale Save Up to 75% Off Men's Clothing Sale Verified today Added by   URBeautiful 39 uses today Get Deal See Details Details Add a Comment Ends:  10/17/17 Details:  Get Up to 75% Off Men's Clothing Sale Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-19	2017-09-07	percent-off	Up to 75% Off Men's Clothing Sale	75	macys
125	us	250328	Nordstrom  & Promo Codes	FREE GIFT Code Save Free 6-piece Gift With $42.50 Lancôme Purchase + Bonus Gift With $75 Purchase Show Coupon Code See Details Details Add a Comment Details:  Get Free Color Design 5 Pan Eyeshadow Palette in Petal Pusher + Bienfait Multi-Vital SPF 30 Cream (0.5 oz.) + Bi-Facil Double-Action Eye Makeup Remover (2.5 oz.) + Définicils Mascara in Black (0.07 oz.) + Cils Booster XL Vitamin-Infused Mascara Primer (0.07 oz.) + Black Cosmetics Bag with $42.50 Lancome Purchase + Spend $75 on Lancôme and also receive a gift of La Base Pro (0.23 oz.), mini Matte Shaker in Pink Power and Blush Subtil in Rose Fresque. Up to $187 combined value Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-03	2017-09-04	free-gift	Free 6-piece Gift With $42.50 Lancôme Purchase + Bonus Gift With $75 Purchase	\N	nordstrom
126	us	254624	Nordstrom  & Promo Codes	40% OFF Sale Save 40% Off New Markdowns In Womens Shoes + Free Shipping And Returns Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Get 40% Off New Markdowns in Womens Shoes + Free Shipping and Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-18	2017-09-07	free-shipping	40% Off New Markdowns In Womens Shoes + Free Shipping And Returns	\N	nordstrom
128	us	260315	Macy's  & Promo Codes	25% OFF Sale Save 25% Off Select Impulse Beauty Devices Verified today 3 uses today Get Deal See Details Details Add a Comment Ends:  09/12/17 Details:  Get 25% Off Select Impulse Beauty Devices from brands including PMD, T3, Dermaflash & more Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	25% Off Select Impulse Beauty Devices	25	macys
129	us	258659	Nordstrom  & Promo Codes	UP TO 40% OFF Sale Save Up to 40% Off Top Brands for Women, Men And Kids + Free Shipping & Returns Get Deal See Details Details Add a Comment Ends:  09/10/17 Details:  Save up to 40% on Top Brands for Women, Men and Kids + FREE Shipping + FREE Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-04	free-shipping	Up to 40% Off Top Brands for Women, Men And Kids + Free Shipping & Returns	\N	nordstrom
130	us	258656	Nordstrom  & Promo Codes	UP TO 25% OFF Sale Save Up to 25% Off Sale + Free Shipping Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Get Up to 25% off 2(X)IST line sale + Free Shipping. Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-07	free-shipping	Up to 25% Off Sale + Free Shipping	\N	nordstrom
131	us	247963	Nordstrom  & Promo Codes	FREE GIFT Code Save Free Cosmetics Bag + Free Deluxe Samples of MAC Pro Eye Makeup Remover And Prep+ Prime FIx+ When You Spend $25 on MAC Products Added by   Mik19 Show Coupon Code See Details Details Add a Comment Details:  Get a Free cosmetics bag + Free deluxe samples of MAC Pro Eye Makeup Remover and Prep+ Prime FIx+ when you spend $25 on MAC products. Limited time offer. While supplies last. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-07-25	2017-09-07	free-gift	Free Cosmetics Bag + Free Deluxe Samples of MAC Pro Eye Makeup Remover And Prep+ Prime FIx+ When You Spend $25 on MAC Products	\N	nordstrom
132	us	260320	Macy's  & Promo Codes	UP TO 50% OFF Code Save 50% Off Baby Sets + 20% Off 17 uses today Show Coupon Code See Details Details Add a Comment Expires:  09/11/17 Details:  Baby Sale! Get 50% off Baby Sets + 20% Off. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	50% Off Baby Sets + 20% Off	50	macys
133	us	51938	Macy's  & Promo Codes	15% Off Sale 119 Uses Today 15% Off $100+ With Email Sign Up Details & Exclusions: Get 15% off your order of $100 or more with email sign up. Exclusions: 7 For All Mankind, Asics, Birkenstock, Born, CWX, Coach, Converse, Chantelle, Donatella, Ed Hardy, Emporio Armani, FitFlops, Goddess, Joe's Jeans, Lacoste, Levi's®, Minnetonka Moccasin, Nike footwear, Puma footwear, Reebok footwear, Skechers Shape-ups, Sofft, The North Face, Tretorn, Va Bien, baby gear, kids' shoes, toys, cosmetics & fragrances, sunglasses, select fashion jewelry and watches, gift cards. FOR HER: bridge & designer handbags, B.Tempt'd, DKNY lingerie, Dolce Vita, Donald Pliner, Felina, Impulse, Jezebel, Lauren by Ralph Lauren, Le Mystere, Lunaire, MICHAEL Michael Kors, Naturalizer, Not Your Daughter's Jeans, Sperry, Wacoal. FOR HIM: Armani jeans, Cole Haan, Dockers®, Ecco shoes, Hugo Boss, Johnston & Murphy, Polo Ralph Lauren, Tommy Bahama. FOR THE HOME: All-Clad, J.A. Henckels, Le Creuset, Tempur-Pedic, Tumi, Waterford, Wusthof, electrics & electronics, furniture, mattresses, rugs, regular-priced china, silver & crystal. Savings do not apply to Everyday Values, jewelry specials, Jewelry Super Buys, Specials, web busters™, purchases in Macy's stores or prior purchases, payments on credit accounts, gift wrap or shipping charges. Get Deal 34 % Success  •  15 Comments Showing 5 most recent comments Saved $24.00 on coat (01/09/2017) 11 days ago by Anonymous Saved $15.00 on shirts (01/09/2017) 11 days ago by Anonymous Saved $25.23 on swimsuits (01/03/2017) 17 days ago by moscrubs Code did not work. Not recognized!!! 1 month ago by RebeccaPugh1010 via Mobile Saved $38.71 (11/29/2016) 1 month ago by Anonymous Show More	2016-11-18	2017-09-07	percent-off	15% Off $100+ With Email Sign Up	15	macys
134	us	215690	Nordstrom  & Promo Codes	Free Gift Save Get Deal Last used 1 hour ago Free Deluxe Samples With Your $125 NARS Purchase Details: Get Free deluxe samples of Larger Than Life Long Wear Eyeliner in Via Veneto (0.01 oz.), Audacious Mascara (0.12 oz.), The Multiple Stick in Copacabana (0.14 oz.) and Pro Prime Smudgeproof Eyeshadow Base (0.03 oz.) with your $125 NARS purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-05-05	2017-09-07	free-gift	Free Deluxe Samples With Your $125 NARS Purchase	\N	nordstrom
135	us	101538	Nike Promo Codes &	40% OFF Sale Save Get Deal Verified 117 uses today Up To 40% Off Select Styles + Free Shipping Membership Ends 09/30/17 Details: Get Up to 40% off select styles + Free shipping and returns with Nike+ membership. No code required. 100% Success Ends 09/30/17 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-03-10	2017-09-07	free-shipping	Up To 40% Off Select Styles + Free Shipping Membership	\N	nike
136	us	258639	Macy's  & Promo Codes	40% OFF Sale Save 40% Off Fashion Watch Clearance Verified today 19 uses today Get Deal See Details Details Add a Comment Ends:  09/04/17 Details:  Get 40% off Fashion Watch Clearance. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-04	percent-off	40% Off Fashion Watch Clearance	40	macys
137	us	259899	Macy's  & Promo Codes	25% OFF Sale Save 25% Off Petite Coats Verified 1 day ago 1 use today Get Deal See Details Details Add a Comment Ends:  Today Details:  Ready for Fall! Get 25% off Petite Coats Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	25% Off Petite Coats	25	macys
138	us	55339	Nordstrom  & Promo Codes	40% Off Sale 104 Uses Today Up To 40% Off The North Face Sale Details: Get Up to 40% Off The North Face Sale •  Add a Comment	2017-01-17	2017-09-07	percent-off	Up To 40% Off The North Face Sale	40	nordstrom
139	us	210701	Nordstrom  & Promo Codes	Free Gift Save Get Deal Last used 1 hour ago Free Beauty Gifts W/ Purchase: Estee Lauder, Clinique & More Details: Shop free beauty gifts w/ purchase 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-04-18	2017-09-07	free-gift	Free Beauty Gifts W/ Purchase: Estee Lauder, Clinique & More	\N	nordstrom
140	us	259346	Macy's  & Promo Codes	25% OFF Sale Save 25% Off Great Selection of Styles From Nike Verified today 18 uses today Get Deal See Details Details Add a Comment Ends:  09/09/17 Details:  Get 25% Off Great Selection of styles from Nike Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-07	percent-off	25% Off Great Selection of Styles From Nike	25	macys
141	us	253375	Nordstrom  & Promo Codes	FREE GIFT Sale Save Trish McEvoy Makeup + 3 Free Samples With Beauty Purchase + Free Shipping Get Deal See Details Details Add a Comment Ends:  09/10/17 Details:  Get Trish McEvoy makeup like the Intense Mascara. Plus, three free samples with every beauty purchase + Free Shipping + Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-14	2017-09-07	free-shipping	Trish McEvoy Makeup + 3 Free Samples With Beauty Purchase + Free Shipping	\N	nordstrom
142	us	252385	Macy's  & Promo Codes	UP TO 75% OFF Sale Save Up to 75% Off Select Clearance Style Women's Sandals & Sneakers Verified today 6 uses today Get Deal See Details Details Add a Comment Details:  Get 50-75% off select clearance style Women's Sandals & Sneakers Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-10	2017-09-07	percent-off	Up to 75% Off Select Clearance Style Women's Sandals & Sneakers	75	macys
143	us	257921	Macy's  & Promo Codes	20% OFF Code Save Extra 20% Off Labor Day Sale + Free Shipping at $49 + Free Returns 1.4k uses today Show Coupon Code See Details Details Add a Comment Expires:  09/05/17 Details:  Get an Extra 20% off Labor Day Sale with code + Free Shipping at $49 + get free returns Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-30	2017-09-04	free-shipping	Extra 20% Off Labor Day Sale + Free Shipping at $49 + Free Returns	\N	macys
144	us	215696	Nordstrom  & Promo Codes	Free Gift Save Get Deal Last used 6 hours ago Get Free Deluxe Samples With $350 La Mer Purchase Details: Get Free Reparative Body Lotion (0.5 oz.), The Lifting Contour Serum (0.17 oz.), The Lifting & Firming Mask (0.24 oz.) and The Treatment Lotion (0.5 oz.) with your $350 La Mer purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-05-05	2017-09-07	free-gift	Get Free Deluxe Samples With $350 La Mer Purchase	\N	nordstrom
145	us	260322	Macy's  & Promo Codes	50% OFF Sale Save 50% Off Denim & Tops Verified today 1 use today Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Shop 100s of Specials! Get 50% off Denim & Tops Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	50% Off Denim & Tops	50	macys
146	us	256611	Nordstrom  & Promo Codes	20% OFF Sale Save 20% Off Select Thule Strollers + Free Shipping Get Deal See Details Details Add a Comment Ends:  09/04/17 Details:  Get 20% Off select Thule Strollers + Free Shipping & Free Returns. For a limited time! Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-25	2017-09-04	free-shipping	20% Off Select Thule Strollers + Free Shipping	\N	nordstrom
147	us	257925	Macy's  & Promo Codes	UP TO 20% OFF In Store Coupon Save Up to an Extra 20% Off Select Sale Items Added by   psplove 213 uses today Show Coupon See Details Exclusions Details Add a Comment Ends:  09/04/17 Exclusions:  Deals of the Day. Doorbusters, Everyday Values (EDV), Last Act, Macy's Backstage, specials, Super Buys, athletic clothing/shoes/accessories, baby gear. reg.-price china/ crystal/silver, cosmetics/fragrances, designer handbags, designer jewelry/watches, uesigner sportswear, electrics/electronics furniture/mattresses, gift cards, jewelry trunk shows, select licensed depts., previous purchases, restaurants, rugs, services, smart watches/jewelry, special orders, special purchases, select tech accessories, toys, 3Doodler, American Rug Craftsmen, Apple Products, Avec Les Ales clothing, Barbour, Brahmin, Brevitle, Brooks Brothers Red Fleece, COACH, Demeyere, Destination Maternity, Dyson, Eileen Fisher SYSTEM, Fitbit, Frye, Hanky Panky, Jack Spade, Karastan, kate spade new york, Kenneth Cole shoes, KitchenAid Pro Line, Le Creuset, Levi's. littleBits, Locker Room by Lids, Marc Jacobs, select Michael Kors/Michael Michael Kors, Michele watches, Miyabi, Movado Bold, Natori, Nike swim, Original Penguin, Rimowa, Rudsak, Sam Edelman, Shun, Spanx, Staub, Stuart Weitzman, Tempur-Pedic mattresses, The North Face, Theory, Tommy John. Tory Burch, Tumi, UGG®, Vans, Vitamix, Wacoal, Wolford & Wusthof; PLUS, ONLINE ONLY: kids' shoes, Allen Edmonds, Birkenstock, Hurley, Johnston & Murphy, Merrell, RVCA & Tommy Bahama. Ends:  09/04/17 Details:  Get an Extra 20% off Select Sale Clothing, Accessories, Jewelry & Home Items + Extra 15% Off Select Sale Watches, Coats, Shoes, Suits, Dresses, Lingerie, Swim For Her, Suit Separates & Sport Coats. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-30	2017-09-04	percent-off	Up to an Extra 20% Off Select Sale Items	20	macys
148	us	101540	Nike Promo Codes &	10% OFF Sale Save Get Deal Verified 40 uses today 10% Off Your Orders For Military + Free Shipping Ends 11/10/20 Details: Nike Military Discount! Get 10% off your orders + Free shipping 100% Success Ends 11/10/20 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-03-10	2017-09-07	percent-off	10% Off Your Orders For Military + Free Shipping	10	nike
149	us	254622	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Fall Boots Under $150 + Free Shipping Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Shop Fall Boots Under $150 + Free Shipping. Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-18	2017-09-07	free-shipping	Fall Boots Under $150 + Free Shipping	\N	nordstrom
150	us	260311	Macy's  & Promo Codes	20% OFF Code Save 20% Off Time To Shop 100s of Specials + Free Shipping at $49 780 uses today Show Coupon Code See Details Details Add a Comment Expires:  09/11/17 Details:  Get 20% off! Time to Shop 100s of Specials + Free Shipping at $49 Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	free-shipping	20% Off Time To Shop 100s of Specials + Free Shipping at $49	\N	macys
151	us	258292	Nordstrom  & Promo Codes	25% OFF Sale Save 25% Off Line Sale for 2(X)IST + Free Shipping & Returns. Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Get 25% Off line sale for 2(X)IST + FREE Shipping. FREE Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-31	2017-09-07	percent-off	25% Off Line Sale for 2(X)IST + Free Shipping & Returns.	25	nordstrom
152	us	250330	Nordstrom  & Promo Codes	FREE GIFT Code Save Free 6-piece Gift With $42.50 Lancôme Purchase + Bonus Gift With $75 Purchase Show Coupon Code See Details Details Add a Comment Details:  Get Free Color Design 5 Pan Eyeshadow Palette in Chocolat Amande + Rénergie Lift Multi-Action Moisturizer Cream SPF 15 (0.5 oz.) + Bi-Facil Double-Action Eye Makeup Remover (2.5 oz.) + Définicils Mascara in Black (0.07 oz.) + Cils Booster XL Vitamin-Infused Mascara Primer (0.07 oz.) + Fuchsia Cosmetics Bag with $42.50 Lancome Purchase + Spend $75 on Lancôme and also receive a gift of La Base Pro (0.23 oz.), mini Matte Shaker in Pink Power and Blush Subtil in Rose Fresque. Up to $187 combined value. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-03	2017-09-04	free-shipping	Free 6-piece Gift With $42.50 Lancôme Purchase + Bonus Gift With $75 Purchase	\N	nordstrom
153	us	101541	Nike Promo Codes &	Free Shipping Sale Save Get Deal Verified Last used 7 hours ago Free Shipping Over $150 Ends 12/31/21 Details: Get Free Shipping over $150 100% Success Ends 12/31/21 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-03-10	2017-09-07	dollar-off	Free Shipping Over $150	150	nike
154	us	260319	Macy's  & Promo Codes	70% OFF Sale Save 70% Off Select Sheets Verified today 4 uses today Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Special! Get 70% off Sheets, select styles Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	70% Off Select Sheets	70	macys
155	us	254621	Nordstrom  & Promo Codes	40% OFF Sale Save 40% Off New Markdowns From Topman + Free Shipping & Free Returns Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Save 40% with new markdowns from Topman + Free Shipping & Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-18	2017-09-04	free-shipping	40% Off New Markdowns From Topman + Free Shipping & Free Returns	\N	nordstrom
156	us	259334	Macy's  & Promo Codes	UP TO 40% OFF Sale Save Up to 40% Off Select Styles Women's Contemporary & Designer Clothing Verified today 12 uses today Get Deal See Details Details Add a Comment Ends:  Tomorrow Details:  Get 25-40% off select styles Women's Contemporary & Designer Clothing Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-04	percent-off	Up to 40% Off Select Styles Women's Contemporary & Designer Clothing	40	macys
157	us	233167	Macy's  & Promo Codes	20% OFF Sale Save 20% Off Your Next Purchase With Email Sign Up 50% Success Get Deal See Details Exclusions Details Add a Comment Ends:  04/30/18 Exclusions:  Exclusions apply Ends:  04/30/18 Details:  Get 20% off Your Next Purchase with Email Sign Up Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-05-31	2017-09-07	percent-off	20% Off Your Next Purchase With Email Sign Up	20	macys
158	us	258655	Nordstrom  & Promo Codes	UP TO 40% OFF Sale Save Up to 40% Off Top Brands for Women, Men And Kids + Free Shipping And Free Returns Get Deal See Details Details Add a Comment Ends:  09/10/17 Details:  Summer Sale! Save up to 40% on Top Brands for Women, Men and Kids + Free Shipping and Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-06	free-shipping	Up to 40% Off Top Brands for Women, Men And Kids + Free Shipping And Free Returns	\N	nordstrom
159	us	258292	Nordstrom  & Promo Codes	25% OFF Sale Save 25% Off Line Sale for 2(X)IST + Free Shipping & Returns. Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Get 25% Off line sale for 2(X)IST + FREE Shipping. FREE Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-31	2017-09-07	free-shipping	25% Off Line Sale for 2(X)IST + Free Shipping & Returns.	\N	nordstrom
160	us	259050	Macy's  & Promo Codes	20% OFF Code Save 20% Off Your Purchase + 15% Off Select Departments + Free Shipping on $49+ Verified 1 day ago Added by   RxHexlein 1.8k uses today Show Coupon Code See Details Exclusions Details Add a Comment Expires:  09/04/17 Exclusions:  furniture and mattresses Expires:  09/04/17 Details:  Get 20% off your purchase + 15% Off Select departments + Free shipping on $49+. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-02	2017-09-04	free-shipping	20% Off Your Purchase + 15% Off Select Departments + Free Shipping on $49+	\N	macys
161	us	251534	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Dsicount on New Fall Handbags + Free Shipping & Returns Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Shop and Save on new fall handbags from kate spade new york, Rebecca Minkoff and more + Free shipping & returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-07	2017-09-04	free-shipping	Dsicount on New Fall Handbags + Free Shipping & Returns	\N	nordstrom
162	us	259051	Macy's  & Promo Codes	$10 OFF Code Save $10 Off Select Orders of $25+ Verified 1 day ago 1.9k uses today Show Coupon Code See Details Exclusions Details Add a Comment Expires:  09/04/17 Exclusions:  Deals of the Day, Doorbusters, Everyday Values (EDV), Last Act, Macy's Backstage, specials, Super Buys, athletic clothing/shoes/accessories, baby gear, reg.-price china/crystal/silver, cosmetics/fragrances, designer handbags, designer jewelry/watches, designer sportswear, electrics/electronics, furniture/mattresses, gift cards, jewelry trunk shows, select licensed depts., previous purchases, restaurants, rugs, services, smart watches/jewelry, special orders, special purchases, select tech accessories, toys, 3Doodler, American Rug Craftsmen, Apple Products, Ashley Graham, Avec Les Filles clothing, Barbour, Brahmin, Breville, Brooks Brothers Red Fleece, COACH, Demeyere, Destination Maternity, Dyson, Eileen Fisher SYSTEM, Fitbit, Frye, Hanky Panky, Jack Spade, Judith Leiber, Karastan, kate spade new york, KitchenAid Pro Line, Le Creuset, Levi's, littleBits, Locker Room by Lids, Marc Jacobs, select Michael Kors/Michael Michael Kors, Michele watches, Miyabi, Movado Bold, Natori, Nike swim, Original Penguin, Panache, Rimowa, Rudsak, Sam Edelman, Shun, Spanx, Staub, Stuart Weitzman, Tempur-Pedic mattresses, The North Face, Theory, Tommy John, Tory Burch, Tumi, UGG®, Vans, Vitamix, Wacoal, Wolford & Wüsthof; PLUS, ONLINE ONLY: kids' shoes, Allen Edmonds, Birkenstock, Hurley, Johnston & Murphy, Merrell, RVCA & Tommy Bahama. Expires:  09/04/17 Details:  Labor Day Sale! Get $10 Off Select Orders of $25 Or More Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-02	2017-09-04	dollar-off	$10 Off Select Orders of $25+	10	macys
163	us	258642	Macy's  & Promo Codes	30% OFF Sale Save 30% Off New Juniors Fall Parkas, Bombers & Faux Leather Jackets Verified today 5 uses today Get Deal See Details Details Add a Comment Ends:  09/04/17 Details:  Limited Time Special! Get 30% off New Juniors Fall Parkas, Bombers & Faux Leather Jackets. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-04	percent-off	30% Off New Juniors Fall Parkas, Bombers & Faux Leather Jackets	30	macys
164	us	259342	Macy's  & Promo Codes	UP TO 50% OFF Sale Save Up to 50% Off Select Handbags Including Designer Verified today 9 uses today Get Deal See Details Details Add a Comment Ends:  09/09/17 Details:  Get 25-50% Off Select Handbags including Designer Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-07	percent-off	Up to 50% Off Select Handbags Including Designer	50	macys
203	us	259347	Macy's  & Promo Codes	SALE Sale Save $99 & Under Styles From The North Face 1 use today Get Deal See Details Details Add a Comment Ends:  09/09/17 Details:  Shop $99 & Under Styles from The North Face. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-07	free-shipping	$99 & Under Styles From The North Face	\N	macys
165	us	258289	Macy's  & Promo Codes	$10 OFF Code Save $10 Off Select Sale And Clearance Priced Purchase of $25 Or More Verified today Added by   psplove 1.2k uses today Show Coupon Code See Details Exclusions Details Add a Comment Expires:  09/04/17 Exclusions:  ALL: Deals of the Day, Doorbusters, Everyday Values (EDV), Last Act, Macy's Backstage, specials, Super Buys, athletic clothing/shoes/accessories, baby gear, reg.-price china/crystal/silver, cosmetics/fragrances, designer handbags, designer jewelry/watches, designer sportswear, electrics/electronics, furniture/mattresses, gift cards, jewelry trunk shows, select licensed depts., previous purchases, restaurants, rugs, services, smart watches/jewelry, special orders, special purchases, select tech accessories, toys, 3Doodler, American Rug Craftsmen, Apple Products, Ashley Graham, Avec Les Filles clothing, Barbour, Brahmin, Breville, Brooks Brothers Red Fleece, COACH, Demeyere, Destination Maternity, Dyson, Eileen Fisher SYSTEM, Fitbit, Frye, Hanky Panky, Jack Spade, Judith Leiber, Karastan, kate spade new york, KitchenAid Pro Line, Le Creuset, Levi's, littleBits, Locker Room by Lids, Marc Jacobs, select Michael Kors/Michael Michael Kors, Michele watches, Miyabi, Movado Bold, Natori, Nike swim, Original Penguin, Panache, Rimowa, Rudsak, Sam Edelman, Shun, Spanx, Staub, Stuart Weitzman, Tempur-Pedic mattresses, The North Face, Theory, Tommy John, Tory Burch, Tumi, UGG®, Vans, Vitamix, Wacoal, Wolford & Wüsthof; PLUS, ONLINE ONLY: kids' shoes, Allen Edmonds, Birkenstock, Hurley, Johnston & Murphy, Merrell, RVCA & Tommy Bahama. Expires:  09/04/17 Details:  Get $10 off select sale and clearance priced purchase of $25 or more Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-31	2017-09-04	dollar-off	$10 Off Select Sale And Clearance Priced Purchase of $25 Or More	10	macys
166	us	90361	Macy's  & Promo Codes	70% OFF Sale Save Get Deal 31 uses today Up To 70% Off Select Clearance & Closeouts Details: Shop Clearance & Closeouts and save 30-70% on Select Apparel, Shoes, Home & more. 19% Success 19% Success 2 Comments Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment Saved $37.00 on shoes (08/05/2016)  by Anonymous Saved $40.01 on tops (05/31/2016)  by Anonymous	2017-02-27	2017-09-07	percent-off	Up To 70% Off Select Clearance & Closeouts	70	macys
167	us	259890	Macy's  & Promo Codes	UP TO 50% OFF Code Save 50% Off Baby Dresses + Extra 20% Off Select Items Verified 1 day ago 32 uses today Show Coupon Code See Details Details Add a Comment Expires:  Today Details:  Baby Sale! Get 50% Off Baby Dresses + Extra 20% off select reg. & sale in store and select reg., sale & clearance online lingerie. Select sale in store and select sale & clearance online clothing for her, him & kids, fine & fashion jewelry & home items during labor day sale. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	50% Off Baby Dresses + Extra 20% Off Select Items	50	macys
168	us	251530	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Discount on The Best Need-now Sneakers of The Season + Free Shipping & Returns Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Shop and Save on the best need-now sneakers of the season from top brands like Vans, Nike, adidas and more + Free Shipping & Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-07	2017-09-04	free-shipping	Discount on The Best Need-now Sneakers of The Season + Free Shipping & Returns	\N	nordstrom
169	us	259891	Macy's  & Promo Codes	25% OFF Sale Save 25% Off New Plus Size Fall Packables, Peacoats, Trenchcoats, Parkas & More Verified 1 day ago 7 uses today Get Deal See Details Details Add a Comment Ends:  Today Details:  Get 25% off New Plus Size Fall Packables, Peacoats, Trenchcoats, Parkas & more. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	25% Off New Plus Size Fall Packables, Peacoats, Trenchcoats, Parkas & More	25	macys
170	us	247389	Macy's  & Promo Codes	UP TO 80% OFF Sale Save Up to 80% Off Original Prices Select Dresses Verified today Get Deal See Details Details Add a Comment Details:  Get 60-80% off original prices select Dresses. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-07-23	2017-09-07	percent-off	Up to 80% Off Original Prices Select Dresses	80	macys
171	us	259525	Macy's  & Promo Codes	UP TO 80% OFF Sale Save Up to 80% Off Men's Outerwear Verified today 35 uses today Get Deal See Details Details Add a Comment Details:  Get Up to 80% Off Men's Outerwear Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-04	2017-09-07	percent-off	Up to 80% Off Men's Outerwear	80	macys
172	us	251527	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Discount on New Arrivals In Petite-Size Dresses + Free Shipping & Returns Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Shop and Save on New Arrivals in Petite-Size Dresses + Free Shipping & Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-07	2017-09-04	free-shipping	Discount on New Arrivals In Petite-Size Dresses + Free Shipping & Returns	\N	nordstrom
173	us	90360	Macy's  & Promo Codes	Sale Save Get Deal 85 uses today Shop All Coupons, Promo Codes, Deals & Promotions Details: Save big and with a wide selection of coupons, deals, promotions and promo codes. 13% Success 13% Success 1 Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment I just made a MS purchase of 150. + how can I capitalize on this promotion  by cdbowen43345498651  via Mobile	2017-02-27	2017-09-07	percent-off	Shop All Coupons, Promo Codes, Deals & Promotions	\N	macys
174	us	252398	Nordstrom  & Promo Codes	FREE GIFT Sale Save Free Cosmetics Case & Deluxe Samples With Your $125 Fresh Purchase Get Deal See Details Details Add a Comment Details:  Receive a cosmetics case and deluxe samples of Sugar Nourishing Lip Balm Advanced Therapy (0.1 oz.), Black Tea Firming Corset Cream (0.24 oz.), Sugar Advanced Therapy Lip Treatment (0.07 oz.), Soy Face Cleanser (0.6 oz.) and Black Tea Instant Perfecting Mask (0.5 oz.) with your $125 Fresh purchase. An $83 value. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-10	2017-09-07	free-gift	Free Cosmetics Case & Deluxe Samples With Your $125 Fresh Purchase	\N	nordstrom
175	us	252401	Nordstrom  & Promo Codes	FREE GIFT Sale Save Free Duffel Bag & Deluxe Samples With $60 Benefit Purchase Get Deal See Details Details Add a Comment Details:  Receive a duffel bag and deluxe samples of POREfessional Face Primer (0.1 oz.) and POREfessional Matte Rescue Mattifying Gel (0.25 oz.) with your $60 Benefit purchase. A $54 value. Online only. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-10	2017-09-07	free-gift	Free Duffel Bag & Deluxe Samples With $60 Benefit Purchase	\N	nordstrom
216	us	257924	Macy's  & Promo Codes	UP TO 20% OFF In Store Coupon Save $10 Off Select Sale Clothing & Home Items of $25+ & Up to an Extra 20% Off Select Sale & Clearance Items Added by   psplove 286 uses today Show Coupon See Details Exclusions Details Add a Comment Ends:  09/04/17 Exclusions:  Deals of the Day. Doorbusters, Everyday Values (EDV), Last Act, Macy's Backstage, specials, Super Buys, athletic clothing/shoes/accessories, baby gear. reg.-price china/ crystal/silver, cosmetics/fragrances, designer handbags, designer jewelry/watches, uesigner sportswear, electrics/electronics furniture/mattresses, gift cards, jewelry trunk shows, select licensed depts., previous purchases, restaurants, rugs, services, smart watches/jewelry, special orders, special purchases, select tech accessories, toys, 3Doodler, American Rug Craftsmen, Apple Products, Avec Les Ales clothing, Barbour, Brahmin, Brevitle, Brooks Brothers Red Fleece, COACH, Demeyere, Destination Maternity, Dyson, Eileen Fisher SYSTEM, Fitbit, Frye, Hanky Panky, Jack Spade, Karastan, kate spade new york, Kenneth Cole shoes, KitchenAid Pro Line, Le Creuset, Levi's. littleBits, Locker Room by Lids, Marc Jacobs, select Michael Kors/Michael Michael Kors, Michele watches, Miyabi, Movado Bold, Natori, Nike swim, Original Penguin, Rimowa, Rudsak, Sam Edelman, Shun, Spanx, Staub, Stuart Weitzman, Tempur-Pedic mattresses, The North Face, Theory, Tommy John. Tory Burch, Tumi, UGG®, Vans, Vitamix, Wacoal, Wolford & Wusthof; PLUS, ONLINE ONLY: kids' shoes, Allen Edmonds, Birkenstock, Hurley, Johnston & Murphy, Merrell, RVCA & Tommy Bahama. Ends:  09/04/17 Details:  Get $10 off Your Purchase Of $25 Or More On Select Sale Clothing & Home Items + Extra 20% off Select Sale Clothing, Accessories, Jewelry & Home Items + Extra 15% Off Select Sale & Clearance Watches, Coats, Shoes, Suits, Dresses, Lingerie, Swim For Her, Men's Suit Separates & Sport Coats. Use Your Macy's Card Or This Macy's Pass. $ off offer is valid for two days only from 09/03/2017 till 03:00 pm and on 09/04/2017 till 02:00 PM. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-30	2017-09-04	percent-off	$10 Off Select Sale Clothing & Home Items of $25+ & Up to an Extra 20% Off Select Sale & Clearance Items	20	macys
176	us	252402	Nordstrom  & Promo Codes	FREE GIFT Sale Save Free Pencil Sharpener & Mini Highlighter Pencil With $50+ BrowGal Purchase Get Deal See Details Details Add a Comment Details:  Receive a pencil sharpener and a mini double-ended Highlighter Pencil in Gold/Nude with your $50 The BrowGal purchase. A $25 value. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-10	2017-09-07	free-gift	Free Pencil Sharpener & Mini Highlighter Pencil With $50+ BrowGal Purchase	\N	nordstrom
177	us	215319	Nordstrom  & Promo Codes	Free Gift Save Get Deal Last used 8 hours ago Free Cosmetics Bag And Deluxe Samples With Your $350 Sisley Paris Purchase Details: Get a Free cosmetics bag and deluxe samples of Cleansing Milk, Botanical Floral Toning Lotion, Global Perfect Pore Minimizer, Sisleÿa Daily Line Reducer, Supremÿa Night Anti-Aging Eye Serum, Supremÿa Night Anti-Aging Skin Care and Soir de Lune Body Cream with your $350 Sisley Paris purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-05-04	2017-09-07	free-gift	Free Cosmetics Bag And Deluxe Samples With Your $350 Sisley Paris Purchase	\N	nordstrom
178	us	250329	Nordstrom  & Promo Codes	FREE GIFT Code Save Free 6-piece Gift With $42.50 Lancôme Purchase + Bonus Gift With $75 Purchase Show Coupon Code See Details Details Add a Comment Details:  Get Free Color Design 5 Pan Eyeshadow Palette in Petal Pusher + Absolue Premium Bx Cream (0.5 oz.) + Bi-Facil Double-Action Eye Makeup Remover (2.5 oz.) + Définicils Mascara in Black (0.07 oz.) + Cils Booster XL Vitamin-Infused Mascara Primer (0.07 oz.) + Black Cosmetics Bag with $42.50 Lancome Purchase + Spend $75 on Lancôme and also receive a gift of La Base Pro (0.23 oz.), mini Matte Shaker in Pink Power and Blush Subtil in Rose Fresque. Up to $187 combined value Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-03	2017-09-07	dollar-off	Free 6-piece Gift With $42.50 Lancôme Purchase + Bonus Gift With $75 Purchase	\N	nordstrom
179	us	259345	Macy's  & Promo Codes	UP TO 75% OFF Sale Save Up to 75% Off Select Women's Shoes Verified today 12 uses today Get Deal See Details Details Add a Comment Ends:  09/09/17 Details:  Shop Last Act! Get 50-75% Off Select Women's Shoes. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-07	percent-off	Up to 75% Off Select Women's Shoes	75	macys
180	us	260317	Macy's  & Promo Codes	UP TO 60% OFF Sale Save Up to 60% Off Select New Styles Verified today 6 uses today Get Deal See Details Details Add a Comment Details:  Save Big on New Styles! Get 25-60% Off Select New Styles. Value & reg-priced items also featured. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	Up to 60% Off Select New Styles	60	macys
181	us	260283	Nordstrom  & Promo Codes	UP TO 40% OFF Sale Save Up to 40% Off New Topman Markdowns + Free Shipping Get Deal See Details Details Add a Comment Ends:  09/14/17 Details:  Get Up to 40% off new Topman markdowns + Free Shipping + Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	Up to 40% Off New Topman Markdowns + Free Shipping	40	nordstrom
182	us	250332	Nordstrom  & Promo Codes	FREE GIFT Code Save Free 6-Piece Gift With $45 Estee Lauder Purchase + Bonus Gift With $100 Purchase Show Coupon Code See Details Details Add a Comment Details:  Get Free 9 Pan Eyeshadow Palette + Resilience Lift Firming/Sculpting Face and Neck Creme SPF 15 (0.5 oz.) + Perfectly Clean Multi-Action Foam Cleanser/Purifying Mask (1 oz.) + Full-Size Pure Color Envy Sculpting Lipstick in Intense Nude + Sumptuous Knockout Mascara in Knockout Black (0.09 oz.) + Cosmetics Bag with $45 Estee Lauder Purchase + Spend $100 on Estée Lauder and also receive Advanced Night Repair Concentrated Recovery Eye Mask (1 application), Advanced Night Repair Synchronized Recovery Complex II (0.5 oz.) and Gentle Eye Makeup Remover (1.7 oz.). Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-03	2017-09-07	dollar-off	Free 6-Piece Gift With $45 Estee Lauder Purchase + Bonus Gift With $100 Purchase	\N	nordstrom
183	us	193394	Nordstrom  & Promo Codes	Free Gift Save Show Coupon Code 2 uses today Free 7-piece Deluxe Sample Kit With $39.50 Lancome Purchase Details: Get a Free 7-piece deluxe sample kit with $39.50 Lancome purchase 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-03-22	2017-09-06	dollar-off	Free 7-piece Deluxe Sample Kit With $39.50 Lancome Purchase	\N	nordstrom
184	us	258286	Macy's  & Promo Codes	$20 BACK Cash Back Offer $10 Cash Back on $50+, $20 Back on $100+ Online Purchases Verified 1.2k uses today Get Cash Back See Details Details Add a Comment Ends:  09/04/17 Details:  Combine with other offers for an even better deal! Excludes gift cards. Purchases must meet the minimum amount before taxes, shipping, and handling and after any other discounts are applied. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-31	2017-09-04	dollar-off	$10 Cash Back on $50+, $20 Back on $100+ Online Purchases	\N	macys
185	us	260311	Macy's  & Promo Codes	20% OFF Code Save 20% Off Time To Shop 100s of Specials + Free Shipping at $49 780 uses today Show Coupon Code See Details Details Add a Comment Expires:  09/11/17 Details:  Get 20% off! Time to Shop 100s of Specials + Free Shipping at $49 Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	20% Off Time To Shop 100s of Specials + Free Shipping at $49	20	macys
186	us	258290	Macy's  & Promo Codes	FREE SHIPPING Sale Save Free Standard Shipping on Select Orders $49+ Verified today 8 uses today Get Deal See Details Exclusions Details Add a Comment Ends:  09/04/17 Exclusions:  Excludes furniture, mattresses, oversized rugs. Restricted items include aerosols, pressurized spray cans and alcohol-based products (hairspray, nail polish, nail polish remover, shaving cream, etc.) Ends:  09/04/17 Details:  Get Free Standard Shipping On Select Orders Over $49 Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-31	2017-09-04	free-shipping	Free Standard Shipping on Select Orders $49+	\N	macys
187	us	52701	Macy's  & Promo Codes	Free Gift Save Show Coupon 1.5k uses today 10% Domestic Visitor Savings Pass Submitted by   Arcadedweller Details & Exclusions: Get a 10% Domestic Visitor Savings Pass when you present this voucher with qualifying identification at any location. Saving pass valid throughout the store for 3 days. Exclusions: Not available in Alaska, Arkansas, Iowa and Nebraska. EXCLUDES: Everyday Values (EDV), specials, super buys; furniture, mattresses, floor coverings, rugs, electrics/electronics; cosmetics, fragrances, selected licensed depts. Not valid on previous purchases, special orders, special purchases, services, jewelry, trunk shows, gift cards, payment on credit accounts; restaurants, gourmet foods, wine 67% Success 67% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-02-08	2017-09-07	dollar-off	10% Domestic Visitor Savings Pass	\N	macys
188	us	251535	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Free Shipping on Cle De Peau Beaute Skin Care And Beauty Like The Concealer With Broad Spectrum SPF 25 Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Get Free Shipping on Cle de Peau Beaute skin care and beauty like the Concealer with Broad Spectrum SPF 25 Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-07	2017-09-04	free-shipping	Free Shipping on Cle De Peau Beaute Skin Care And Beauty Like The Concealer With Broad Spectrum SPF 25	\N	nordstrom
189	us	259344	Macy's  & Promo Codes	UP TO 40% OFF Sale Save Up to 40% Off Lauren Ralph Lauren Favorites. Verified today 2 uses today Get Deal See Details Details Add a Comment Ends:  09/10/17 Details:  Get Up to 40% off Lauren Ralph Lauren favorites. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-07	percent-off	Up to 40% Off Lauren Ralph Lauren Favorites.	40	macys
190	us	260324	Macy's  & Promo Codes	30% OFF Sale Save 30% Off All Women's Shoes 3 uses today Get Deal See Details Details Add a Comment Ends:  09/09/17 Details:  Time to Shop! Get 30% Off All Women's Shoes Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	30% Off All Women's Shoes	30	macys
191	us	260325	Macy's  & Promo Codes	UP TO 50% OFF Code Save 50% Off Baby Dresses + 20% Off 6 uses today Show Coupon Code See Details Details Add a Comment Expires:  09/11/17 Details:  BABY SALE! Get 50% Off Baby Dresses + 20% Off. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	50% Off Baby Dresses + 20% Off	50	macys
192	us	258293	Nordstrom  & Promo Codes	UP TO 40% OFF Sale Save Up to 40% Off New Topman Markdowns + Free Shipping & Free Returns Get Deal See Details Details Add a Comment Ends:  09/14/17 Details:  Get Up to 40% off new Topman markdowns + Free Shipping & Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-31	2017-09-04	free-shipping	Up to 40% Off New Topman Markdowns + Free Shipping & Free Returns	\N	nordstrom
193	us	260288	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Handbags, Jewelry And Accessories Starting at $25 + Free Shipping Get Deal See Details Details Add a Comment Ends:  10/03/17 Details:  Get handbags, jewelry and accessories starting at $25 + Free Shipping + Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	free-shipping	Handbags, Jewelry And Accessories Starting at $25 + Free Shipping	\N	nordstrom
194	us	252713	Nordstrom  & Promo Codes	SALE Sale Save 40% Off New Markdowns for Men From Top Brands + Free Shipping & Free Returns Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Save 40% on new markdowns for men from top brands like BOSS, Nordstrom Mens Shop and more + Free Shipping & Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-11	2017-09-04	free-shipping	40% Off New Markdowns for Men From Top Brands + Free Shipping & Free Returns	\N	nordstrom
195	us	258648	Macy's  & Promo Codes	SALE Sale Save 10 Chances To Win Daily + One Lucky Couple Will Win The Grand Prize Valued at $6,200 Verified today 4 uses today Get Deal See Details Details Add a Comment Ends:  09/30/17 Details:  Gift a day sweepstakes! Get 10 chances to win daily and one lucky couple will win the grand prize valued at $6,200. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-06	buy-one-get-one	10 Chances To Win Daily + One Lucky Couple Will Win The Grand Prize Valued at $6,200	\N	macys
196	us	259335	Macy's  & Promo Codes	UP TO 40% OFF Sale Save Up to 40% Off Plus Size Contemporary & Designer Clothing Verified today 28 uses today Get Deal See Details Details Add a Comment Ends:  Tomorrow Details:  Get 25-40% off Plus Size Contemporary & Designer Clothing Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-04	percent-off	Up to 40% Off Plus Size Contemporary & Designer Clothing	40	macys
197	us	259893	Macy's  & Promo Codes	20% OFF Code Save 20% Off Christening Dresses By Lauren Madison + 20% Off With Code Verified 1 day ago 21 uses today Show Coupon Code See Details Details Add a Comment Expires:  Today Details:  BABY SALE! Get 20% off Christening Dresses by Lauren Madison + 20% Off with Promo Code Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-06	2017-09-06	percent-off	20% Off Christening Dresses By Lauren Madison + 20% Off With Code	20	macys
198	us	209086	Nordstrom  & Promo Codes	Free Gift Save Show Coupon Code Last used 3 hours ago Free 7 Piece Gifts of Your Choice With Your $35 Estee Lauder Purchase Details: Choose from Seven-Piece Gifts with your $35 Estée Lauder purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-04-12	2017-09-06	buy-one-get-one	Free 7 Piece Gifts of Your Choice With Your $35 Estee Lauder Purchase	\N	nordstrom
199	us	252711	Nordstrom  & Promo Codes	SALE Sale Save New Markdowns In Kids Shoes + Free Shipping + Free Returns Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Shop New Markdowns in Kids Shoes + Free Shipping + Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-11	2017-09-04	free-shipping	New Markdowns In Kids Shoes + Free Shipping + Free Returns	\N	nordstrom
200	us	210702	Nordstrom  & Promo Codes	Free Gift Save Get Deal Last used 9 hours ago Free Paula's Choice Retinol Treatment With $150 Beauty Or Fragrance Purchase Details: Spend $150 on beauty or fragrance and receive a full-size Paula's Choice Clinical 1% Retinol Treatment (1 oz.) Free. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-04-18	2017-09-07	buy-one-get-one	Free Paula's Choice Retinol Treatment With $150 Beauty Or Fragrance Purchase	\N	nordstrom
201	us	251533	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Free Shipping on Lancome Skin Care And Beauty Like The New Monsieur Big Mascara Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Get Free Shipping on Lancome skin care and beauty like the new Monsieur Big Mascara Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-07	2017-09-04	free-shipping	Free Shipping on Lancome Skin Care And Beauty Like The New Monsieur Big Mascara	\N	nordstrom
202	us	215689	Nordstrom  & Promo Codes	Free Gift Save Show Coupon Code 3 uses today Free 5 Eau De Parfum Samples With Your $195 Parfums De Marly Purchase Details: Get Free five eau de parfum samples with your $195 Parfums de Marly purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-05-05	2017-09-07	free-shipping	Free 5 Eau De Parfum Samples With Your $195 Parfums De Marly Purchase	\N	nordstrom
204	us	89989	Nordstrom  & Promo Codes	50% OFF Sale Save Get Deal 46 uses today Up To 50% Off Sunglasses From Ray-Ban, Prada & More Details: Shop now and save up to 50% on sunglasses from Ray-Ban, Prada & More at Nordstrom! Quantities may be limited, shop early for best selection. 54% Success 54% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-02-27	2017-09-07	percent-off	Up To 50% Off Sunglasses From Ray-Ban, Prada & More	50	nordstrom
205	us	257933	Macy's  & Promo Codes	UP TO 50% OFF Code Save 50% Off Carters for Baby + Extra 20% Off Verified today 23 uses today Show Coupon Code See Details Details Add a Comment Expires:  09/04/17 Details:  Baby Sale! Get 50% off Carters for Baby + Extra 20% Off with code. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-30	2017-09-04	percent-off	50% Off Carters for Baby + Extra 20% Off	50	macys
206	us	210700	Nordstrom  & Promo Codes	Free Gift Save Get Deal 8 uses today Free 21-Piece Gift With Any $125 Beauty Or Fragrance Purchase Details: Get Free 21-Piece Gift ($100 Value) with any $125 Beauty or Fragrance purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-04-18	2017-09-07	free-shipping	Free 21-Piece Gift With Any $125 Beauty Or Fragrance Purchase	\N	nordstrom
207	us	260283	Nordstrom  & Promo Codes	UP TO 40% OFF Sale Save Up to 40% Off New Topman Markdowns + Free Shipping Get Deal See Details Details Add a Comment Ends:  09/14/17 Details:  Get Up to 40% off new Topman markdowns + Free Shipping + Free Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	free-shipping	Up to 40% Off New Topman Markdowns + Free Shipping	\N	nordstrom
208	us	259336	Macy's  & Promo Codes	UP TO 70% OFF Sale Save Up to 70% Off Clearance Handbags And Accessories Verified today 18 uses today Get Deal See Details Details Add a Comment Ends:  09/09/17 Details:  Get 30-70% off Clearance Handbags and Accessories including Designer brands. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-07	percent-off	Up to 70% Off Clearance Handbags And Accessories	70	macys
209	us	251536	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Discount on The Latest Fall Boot Styles And Trends + Free Shipping & Returns Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Shop and Save on the Latest Fall Boot Styles and Trends You will Want to Wear Now + Free Shipping & Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-07	2017-09-04	free-shipping	Discount on The Latest Fall Boot Styles And Trends + Free Shipping & Returns	\N	nordstrom
210	us	259337	Macy's  & Promo Codes	SALE Sale Save Free 7 Piece Gift With Any $35 Estee Lauder Purchase 7 uses today Get Deal See Details Exclusions Details Add a Comment Ends:  09/25/17 Exclusions:   Ends:  09/25/17 Details:  Get a Free 7 piece Gift with any $35 Estee Lauder Purchase. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-06	free-shipping	Free 7 Piece Gift With Any $35 Estee Lauder Purchase	\N	macys
211	us	259333	Macy's  & Promo Codes	30% OFF Sale Save 30% Off All Women's Shoes Verified today 123 uses today Get Deal See Details Details Add a Comment Ends:  Tomorrow Details:  The Labor Day Sale! Get 30% Off All Women's Shoes Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-04	percent-off	30% Off All Women's Shoes	30	macys
212	us	250331	Nordstrom  & Promo Codes	FREE GIFT Code Save Free 6-Piece Gift With $45 Estee Lauder Purchase + Bonus Gift With $100 Purchase Show Coupon Code See Details Details Add a Comment Details:  Get Free 9 Pan Eyeshadow Palette + Nutritious Vitality8 Radiant Moisture Creme (0.5 oz.) + Nutritious 2-in-1 Foam Cleanser (1 oz.) + Full-Size Pure Color Envy Sculpting Lipstick in Intense Nude + Sumptuous Knockout Mascara in Knockout Black (0.09 oz.) + Cosmetics Bag with $45 Estee Lauder Purchase + Spend $100 on Estée Lauder and also receive Advanced Night Repair Concentrated Recovery Eye Mask (1 application), Advanced Night Repair Synchronized Recovery Complex II (0.5 oz.) and Gentle Eye Makeup Remover (1.7 oz.). Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-03	2017-09-04	free-shipping	Free 6-Piece Gift With $45 Estee Lauder Purchase + Bonus Gift With $100 Purchase	\N	nordstrom
213	us	255721	Macy's  & Promo Codes	$10 OFF Code Save $10 Off Your Registration Fee for The Red Run Verified today Added by   WYSIWYG 18 uses today Show Coupon Code See Details Details Add a Comment Details:  Get $10 Off Your Registration Fee For The "Red Run" (New York City, San Francisco, Or Chicago) Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-22	2017-09-07	dollar-off	$10 Off Your Registration Fee for The Red Run	10	macys
214	us	251537	Nordstrom  & Promo Codes	FREE SHIPPING Sale Save Discount on New Arrivals From Eileen Fisher + Free Shipping & Returns Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Shop and Save on New Arrivals from Eileen Fisher + Free Shipping & Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-07	2017-09-04	free-shipping	Discount on New Arrivals From Eileen Fisher + Free Shipping & Returns	\N	nordstrom
215	us	211551	Nordstrom  & Promo Codes	Free Gift Save Get Deal 11 uses today Free 21-Pc Gift Set With $125 + Free Full-size Paulas Choice Treatment With $150 Submitted by   Vitta Details: Get a Free 21-Pc Gift Set with $125 in Beauty or Fragrance Purchase ($100 Total Value). Includes: Peter Thomas Roth Cucumber De-Tox Hydra-Gel Eye Patches (1 pair), Laura Mercier Candleglow single-use samples: Concealer & Highlighter (3 shades) & Sheer Perfecting Powder (2 shades), Mario Badescu Glycolic Foaming Cleanser (1 oz.), Clarins Body Fit Anti-Cellulite Contouring Expert (1 oz.), MOROCCANOIL Body Soufflé (0.17 oz.), Estée Lauder Advanced Night Repair Synchronized Recovery Complex II (0.05 oz.), M·A·C Upward Lash (0.03 oz.), Fresh Sugar Tinted Lip Treatment SPF 15 in Rosé (0.07 oz.), Paulas Choice Resist Anti-Aging Eye Cream (0.16 oz.), My Skin Mentor Dr. G Beauty Bio-RTx Mentor Cream 5 for Dry Skin (0.07 oz.), Charlotte Tilbury Scent of a Dream Eau de Parfum (single use), Kiehls Since 1851 Ultra Facial Cleanser (0.1 oz.), Supergoop! City Sunscreen Serum SPF 30+ (0.1 oz.), SK-II Genoptics Spot Essence Serum (0.02 oz.), AMOREPACIFIC Time Response Skin Renewal Crème (0.03 oz.), Jimmy Choo Eau de Parfum (0.06 oz.), Giorgio Armani Armani Code Eau de Toilette (0.05 oz.), Maison Margiela Replica Beach Walk Eau de Toilette (0.04 oz.), Dolce&Gabbana Light Blue pour Homme Eau de Toilette (0.05 oz.), Issey Miyake LEau dIssey pour Homme Eau de Toilette (0.02 oz.), Cosmetics Bag + Free Full-size Paulas Choice Clinical 1% Retinol Treatment (1 oz.). A $156 combined value When You Spend $150 on beauty or fragrance. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-04-20	2017-09-07	dollar-off	Free 21-Pc Gift Set With $125 + Free Full-size Paulas Choice Treatment With $150	150	nordstrom
217	us	215693	Nordstrom  & Promo Codes	Free Gift Save Get Deal Last used 6 hours ago Free Deluxe Sample With Your $75 Diptyque Purchase Details: Get a Free deluxe sample of Do Son Eau de Parfum (0.34 oz.) with your $75 diptyque purchase. 100% Success 100% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-05-05	2017-09-07	free-shipping	Free Deluxe Sample With Your $75 Diptyque Purchase	\N	nordstrom
218	us	257928	Macy's  & Promo Codes	UP TO 50% OFF Sale Save Up to 50% Off Lauren Ralph Lauren Fall Essentials Verified today 25 uses today Get Deal See Details Details Add a Comment Ends:  09/05/17 Details:  Get 25-50% off Lauren Ralph Lauren Fall Essentials Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-30	2017-09-04	percent-off	Up to 50% Off Lauren Ralph Lauren Fall Essentials	50	macys
219	us	51945	Macy's  & Promo Codes	eGift Card Buy Gift Card Verified 106 uses today Up To 10% Off Total Purchase With A Discount eGift Card Details: Get up to 10% off eGift Cards for Macy's from RetailMeNot! Limited quantities 75% Success 75% Success 1 Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment not letting me purchase these :( ...anyone else having similar issue?  by kazmimurtuza	2016-11-18	2017-09-07	percent-off	Up To 10% Off Total Purchase With A Discount eGift Card	10	macys
220	us	256609	Nordstrom  & Promo Codes	FREE GIFT Sale Save Free Samples With Every Beauty Purchase + Free Shipping Get Deal See Details Details Add a Comment Ends:  09/24/17 Details:  Shop for Tom Ford for new Lips & Girls plus new shades of Lips & Boys. Choose three free samples with every beauty purchase. FREE Shipping. FREE Returns. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-25	2017-09-07	free-shipping	Free Samples With Every Beauty Purchase + Free Shipping	\N	nordstrom
221	us	259339	Macy's  & Promo Codes	SALE Sale Save Over 75 Sleepwear Items Under $20 Verified today 4 uses today Get Deal See Details Details Add a Comment Ends:  09/09/17 Details:  Shop Over 75 Sleepwear items under $20 Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-03	2017-09-06	free-shipping	Over 75 Sleepwear Items Under $20	\N	macys
222	us	257302	Macy's  & Promo Codes	50% OFF Sale Save 50% Off Bras 35 uses today Get Deal See Details Details Add a Comment Ends:  09/04/17 Details:  SPECIAL: Get 50% Off Bras. Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-08-28	2017-09-04	percent-off	50% Off Bras	50	macys
223	us	260321	Macy's  & Promo Codes	65% OFF Sale Save 65% Off Gold Jewelry Verified today 6 uses today Get Deal See Details Details Add a Comment Ends:  09/11/17 Details:  Limited Time Special! Get 65% Off Gold Jewelry Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-07	2017-09-07	percent-off	65% Off Gold Jewelry	65	macys
224	us	212885	Macy's  & Promo Codes	20% OFF Sale Save Get Deal Verified 421 uses today Up to an Extra 20% Off Your Next Purchase Details & Exclusions: Get an extra 20% off or 15% off your next purchase. Buy Online and pick up in-store. Exclusions apply. See site for details. Exclusions: Excludes all: cosmetics/fragrances, Deals of the Day, Doorbusters/web busters, electrics/electronics, Everyday Values (EDV), furniture/mattresses, Last Act, Macy's Backstage, rugs, specials, super buys, All-Clad, Breville, Dyson, Fitbit, French Connection for her, Frye, Hanky Panky, Jack Spade, Kate Spade, KitchenAid Pro Line, Le Creuset, Levi's, Marc Jacobs, Michele watches, New Era, Nike on Field, Sam Edelman, Samsung watches, Shun, Stuart Weitzman, The North Face, Theory, Tumi, Vitamix, Wacoal, Wolford, Wüsthof, athletic clothing, shoes & accessories; Dallas Cowboys merchandise, designer Impulse brands, designer jewelry, gift cards, jewelry trunk shows, previous purchases, select licensed depts., services, special orders, special purchases, tech watches. 25% Success 25% Success Add a Comment Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-04-25	2017-09-07	percent-off	Up to an Extra 20% Off Your Next Purchase	20	macys
36	us	258643	Macy's  & Promo Codes	BOGO Sale Save Buy 2, Get 1 Free Select Desk Accessories Verified today 2 uses today Get Deal See Details Details Add a Comment Ends:  09/04/17 Details:  Buy two, get one free select desk accessories Include nearby city with my comment to help other users. Post Comment Comment Posted Post Another Comment	2017-09-01	2017-09-04	buy-one-get-one	BuyXX 2, Get 1 Free Select Desk Accessories	0	macys
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-07-15 22:29:52.24617+00	1	admin	2	[{"changed": {"fields": ["password"]}}]	4	1
2	2022-07-15 22:30:05.294057+00	1	admin	2	[{"changed": {"fields": ["First name", "Last name"]}}]	4	1
3	2022-07-17 20:01:48.211757+00	36	buy-one-get-one-258643-macys	2	[{"changed": {"fields": ["Description", "Value"]}}]	10	1
4	2022-07-17 20:03:12.822613+00	36	buy-one-get-one-258643-macys	2	[{"changed": {"fields": ["Description", "Title"]}}]	10	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	authtoken	token
8	authtoken	tokenproxy
9	django_rest_passwordreset	resetpasswordtoken
10	coupons	coupon
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-07-15 19:54:20.7122+00
2	auth	0001_initial	2022-07-15 19:54:20.762815+00
3	admin	0001_initial	2022-07-15 19:54:20.779591+00
4	admin	0002_logentry_remove_auto_add	2022-07-15 19:54:20.78857+00
5	admin	0003_logentry_add_action_flag_choices	2022-07-15 19:54:20.797435+00
6	contenttypes	0002_remove_content_type_name	2022-07-15 19:54:20.815311+00
7	auth	0002_alter_permission_name_max_length	2022-07-15 19:54:20.823233+00
8	auth	0003_alter_user_email_max_length	2022-07-15 19:54:20.831336+00
9	auth	0004_alter_user_username_opts	2022-07-15 19:54:20.838938+00
10	auth	0005_alter_user_last_login_null	2022-07-15 19:54:20.847381+00
11	auth	0006_require_contenttypes_0002	2022-07-15 19:54:20.85036+00
12	auth	0007_alter_validators_add_error_messages	2022-07-15 19:54:20.866135+00
13	auth	0008_alter_user_username_max_length	2022-07-15 19:54:20.887581+00
14	auth	0009_alter_user_last_name_max_length	2022-07-15 19:54:20.900175+00
15	auth	0010_alter_group_name_max_length	2022-07-15 19:54:20.910357+00
16	auth	0011_update_proxy_permissions	2022-07-15 19:54:20.917662+00
17	auth	0012_alter_user_first_name_max_length	2022-07-15 19:54:20.925929+00
18	authtoken	0001_initial	2022-07-15 19:54:20.939375+00
19	authtoken	0002_auto_20160226_1747	2022-07-15 19:54:20.965413+00
20	authtoken	0003_tokenproxy	2022-07-15 19:54:20.968076+00
21	coupons	0001_initial	2022-07-15 19:54:20.975903+00
22	django_rest_passwordreset	0001_initial	2022-07-15 19:54:20.995434+00
23	django_rest_passwordreset	0002_pk_migration	2022-07-15 19:54:21.031183+00
24	django_rest_passwordreset	0003_allow_blank_and_null_fields	2022-07-15 19:54:21.04818+00
25	sessions	0001_initial	2022-07-15 19:54:21.05836+00
26	coupons	0002_auto_20220715_2036	2022-07-15 20:36:47.821408+00
27	coupons	0003_alter_coupon_promotion_type	2022-07-15 20:59:27.319241+00
28	coupons	0004_alter_coupon_promotion_type	2022-07-15 23:07:32.698048+00
29	coupons	0005_alter_coupon_promotion_type	2022-07-16 11:05:36.797303+00
62	coupons	0006_alter_coupon_value	2022-07-16 11:06:57.983402+00
\.


--
-- Data for Name: django_rest_passwordreset_resetpasswordtoken; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.django_rest_passwordreset_resetpasswordtoken (created_at, key, ip_address, user_agent, user_id, id) FROM stdin;
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: Ds5DTAxP
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
b1buov7bt73gvd9l70a7aop5y3vkc1ff	e30:1oCU9a:r15O_lwDAGp81LM6H9fBnSC669D1sD-JTauKyfaLS3c	2022-07-29 22:51:22.620635+00
coqfrxf90z2gaq4yphw0mez5kjnyph5g	e30:1oCUBQ:JhzMGCGc2jxvbADNaabJiZgHv6ncr2FeEYP7DIrt6A0	2022-07-29 22:53:16.436302+00
1nmogsdc9bo3w102bg2jz72r4gy8rh4w	e30:1oCUCZ:eFK73b-dueD1jeM7HbUIsJzhqY23IBPm8aWaCHCNPn0	2022-07-29 22:54:27.033423+00
kwf4vay4bdmc7pkha4jawprkflgvnwwb	e30:1oCUDH:kw3WBoB3yt0iaNJC5MAlvZhNK72_FNp5PvvJ7vVd4eM	2022-07-29 22:55:11.768662+00
57glfufpf7sacf3rv129ms7123w46exn	e30:1oCUFc:s9nO-HQJYhBA6Y5b41hcUYgR2pznkg7a0NY6Qn1oBfI	2022-07-29 22:57:36.831966+00
j4tbzlrhfk52afptbtjk60vzyq0ni9dq	.eJxVjEEOwiAQRe_C2hBmQKAu3fcMZIDBVg0kpV0Z765NutDtf-_9lwi0rVPYOi9hzuIiQJx-t0jpwXUH-U711mRqdV3mKHdFHrTLsWV-Xg_372CiPn1rjyYaGAoyqoESJCQ6g1J64ALWOWBE5WI0BS2ZXByUrNkXh8lYr0m8P85lN5E:1oCbvG:1jXCsw1W-81DvBSup0eatjqnKjxGbVKD7rpSIh-dFM0	2022-07-30 07:09:06.791396+00
sinodkha0c7z2w2guzcelziyy1y9aqa9	.eJxVjEEOwiAQRe_C2hBmQKAu3fcMZIDBVg0kpV0Z765NutDtf-_9lwi0rVPYOi9hzuIiQJx-t0jpwXUH-U711mRqdV3mKHdFHrTLsWV-Xg_372CiPn1rjyYaGAoyqoESJCQ6g1J64ALWOWBE5WI0BS2ZXByUrNkXh8lYr0m8P85lN5E:1oCc2S:Yh7y3zW4K9reYFkmijijlMLYIkIgwonjU8mLxipKo44	2022-07-30 07:16:32.68424+00
izfc60hjrs61wqkt4qoatysopwc62xzn	.eJxVjEEOwiAQRe_C2hBmQKAu3fcMZIDBVg0kpV0Z765NutDtf-_9lwi0rVPYOi9hzuIiQJx-t0jpwXUH-U711mRqdV3mKHdFHrTLsWV-Xg_372CiPn1rjyYaGAoyqoESJCQ6g1J64ALWOWBE5WI0BS2ZXByUrNkXh8lYr0m8P85lN5E:1oCcGB:bOOY9yE9amlvFIGBe_s7tJgbgyU3LEX5HhmL7ZY6DjE	2022-07-30 07:30:43.992589+00
0wua24p7zrlfkdf329mzx0bmmy6f15x6	.eJxVjEEOwiAQRe_C2hBmQKAu3fcMZIDBVg0kpV0Z765NutDtf-_9lwi0rVPYOi9hzuIiQJx-t0jpwXUH-U711mRqdV3mKHdFHrTLsWV-Xg_372CiPn1rjyYaGAoyqoESJCQ6g1J64ALWOWBE5WI0BS2ZXByUrNkXh8lYr0m8P85lN5E:1oCdP9:1_01PQbKjv0bbyDH4ctG-h7yyIv58bUVrD374x6C1KM	2022-07-30 08:44:03.906688+00
ex6h6yc0nk3p7f71dj5w48wyy7tjr6x3	.eJxVjEEOwiAQRe_C2hBmQKAu3fcMZIDBVg0kpV0Z765NutDtf-_9lwi0rVPYOi9hzuIiQJx-t0jpwXUH-U711mRqdV3mKHdFHrTLsWV-Xg_372CiPn1rjyYaGAoyqoESJCQ6g1J64ALWOWBE5WI0BS2ZXByUrNkXh8lYr0m8P85lN5E:1oCdPV:IyIyaGLKouFM0MndV6hCko6w0ZoEghYNW29HdI6_8lA	2022-07-30 08:44:25.689636+00
6bkipkljzoacj58irzw38bptvk4v1lip	.eJxVjEEOwiAQRe_C2hBmQKAu3fcMZIDBVg0kpV0Z765NutDtf-_9lwi0rVPYOi9hzuIiQJx-t0jpwXUH-U711mRqdV3mKHdFHrTLsWV-Xg_372CiPn1rjyYaGAoyqoESJCQ6g1J64ALWOWBE5WI0BS2ZXByUrNkXh8lYr0m8P85lN5E:1oCdQa:xJtJglmoZN37jV1kqoyebQj78l_i3gM1SZA7LuJvw4A	2022-07-30 08:45:32.105463+00
kdv2c9pm9vtzncywx1m2nvhlufds9no4	.eJxVjEEOwiAQRe_C2hBmQKAu3fcMZIDBVg0kpV0Z765NutDtf-_9lwi0rVPYOi9hzuIiQJx-t0jpwXUH-U711mRqdV3mKHdFHrTLsWV-Xg_372CiPn1rjyYaGAoyqoESJCQ6g1J64ALWOWBE5WI0BS2ZXByUrNkXh8lYr0m8P85lN5E:1oCdQg:EC1e0RfgEEfehR5nvGDEjkGGg_3FB_SOrmUbzNuX_KA	2022-07-30 08:45:38.274347+00
ni5b6qtka2j2q8ba8vdfcc20y0ofyzhi	.eJxVjEEOwiAQRe_C2hBmQKAu3fcMZIDBVg0kpV0Z765NutDtf-_9lwi0rVPYOi9hzuIiQJx-t0jpwXUH-U711mRqdV3mKHdFHrTLsWV-Xg_372CiPn1rjyYaGAoyqoESJCQ6g1J64ALWOWBE5WI0BS2ZXByUrNkXh8lYr0m8P85lN5E:1oCdSJ:NtaBiyWM4hT41wpP_ODJXJuON2ii6tE_3KIa3GEgYHI	2022-07-30 08:47:19.415565+00
9ws7ul5xjs05wgwor4dtvonq9c45v1ro	.eJxVjEEOwiAQRe_C2hBmQKAu3fcMZIDBVg0kpV0Z765NutDtf-_9lwi0rVPYOi9hzuIiQJx-t0jpwXUH-U711mRqdV3mKHdFHrTLsWV-Xg_372CiPn1rjyYaGAoyqoESJCQ6g1J64ALWOWBE5WI0BS2ZXByUrNkXh8lYr0m8P85lN5E:1oCdSY:n-f66FuDv7Rp7gMG8KQWgB2XNTYoQ2eKMzKoqdLg9M8	2022-07-30 08:47:34.126695+00
9lg64v0ggf8wdt2ui3ypkjp9zkukuyqv	.eJxVjEEOwiAQRe_C2hBmQKAu3fcMZIDBVg0kpV0Z765NutDtf-_9lwi0rVPYOi9hzuIiQJx-t0jpwXUH-U711mRqdV3mKHdFHrTLsWV-Xg_372CiPn1rjyYaGAoyqoESJCQ6g1J64ALWOWBE5WI0BS2ZXByUrNkXh8lYr0m8P85lN5E:1oCdTB:gY6XeIxWgr0WB36NRTUSCMiwF6MJl_jPUKoWLIvripk	2022-07-30 08:48:13.40568+00
qrgu8wr225pctxpwp8drk264aw2jetwb	.eJxVjEEOwiAQRe_C2hBmQKAu3fcMZIDBVg0kpV0Z765NutDtf-_9lwi0rVPYOi9hzuIiQJx-t0jpwXUH-U711mRqdV3mKHdFHrTLsWV-Xg_372CiPn1rjyYaGAoyqoESJCQ6g1J64ALWOWBE5WI0BS2ZXByUrNkXh8lYr0m8P85lN5E:1oCdUa:hep9Xs9MbZjxv9R6g0U483kt6Cm8cILoTFU-bPZdhy0	2022-07-30 08:49:40.700092+00
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ds5DTAxP
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ds5DTAxP
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ds5DTAxP
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ds5DTAxP
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ds5DTAxP
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ds5DTAxP
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: coupons_coupon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ds5DTAxP
--

SELECT pg_catalog.setval('public.coupons_coupon_id_seq', 224, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ds5DTAxP
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ds5DTAxP
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ds5DTAxP
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 62, true);


--
-- Name: django_rest_passwordreset_resetpasswordtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ds5DTAxP
--

SELECT pg_catalog.setval('public.django_rest_passwordreset_resetpasswordtoken_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: coupons_coupon coupons_coupon_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.coupons_coupon
    ADD CONSTRAINT coupons_coupon_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_rest_passwordreset_resetpasswordtoken django_rest_passwordreset_resetpasswordtoken_key_f1b65873_uniq; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_rest_passwordreset_resetpasswordtoken
    ADD CONSTRAINT django_rest_passwordreset_resetpasswordtoken_key_f1b65873_uniq UNIQUE (key);


--
-- Name: django_rest_passwordreset_resetpasswordtoken django_rest_passwordreset_resetpasswordtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_rest_passwordreset_resetpasswordtoken
    ADD CONSTRAINT django_rest_passwordreset_resetpasswordtoken_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_rest_passwordreset_resetpasswordtoken_key_f1b65873_like; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX django_rest_passwordreset_resetpasswordtoken_key_f1b65873_like ON public.django_rest_passwordreset_resetpasswordtoken USING btree (key varchar_pattern_ops);


--
-- Name: django_rest_passwordreset_resetpasswordtoken_user_id_e8015b11; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX django_rest_passwordreset_resetpasswordtoken_user_id_e8015b11 ON public.django_rest_passwordreset_resetpasswordtoken USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: Ds5DTAxP
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_rest_passwordreset_resetpasswordtoken django_rest_password_user_id_e8015b11_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: Ds5DTAxP
--

ALTER TABLE ONLY public.django_rest_passwordreset_resetpasswordtoken
    ADD CONSTRAINT django_rest_password_user_id_e8015b11_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

