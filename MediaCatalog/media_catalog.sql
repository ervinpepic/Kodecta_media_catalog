--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ervin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ervin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ervin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ervin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ervin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ervin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ervin;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ervin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ervin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ervin;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ervin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ervin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO ervin;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ervin
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


ALTER TABLE public.django_admin_log OWNER TO ervin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ervin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ervin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ervin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ervin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ervin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ervin;

--
-- Name: media_catalog_category; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.media_catalog_category (
    id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.media_catalog_category OWNER TO ervin;

--
-- Name: media_catalog_category_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.media_catalog_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_catalog_category_id_seq OWNER TO ervin;

--
-- Name: media_catalog_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.media_catalog_category_id_seq OWNED BY public.media_catalog_category.id;


--
-- Name: media_catalog_creator; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.media_catalog_creator (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    date_of_birth date NOT NULL
);


ALTER TABLE public.media_catalog_creator OWNER TO ervin;

--
-- Name: media_catalog_creator_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.media_catalog_creator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_catalog_creator_id_seq OWNER TO ervin;

--
-- Name: media_catalog_creator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.media_catalog_creator_id_seq OWNED BY public.media_catalog_creator.id;


--
-- Name: media_catalog_media; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.media_catalog_media (
    id integer NOT NULL,
    title character varying(120) NOT NULL,
    originating_country character varying(50) NOT NULL,
    publishing_date date NOT NULL,
    date_published timestamp with time zone NOT NULL
);


ALTER TABLE public.media_catalog_media OWNER TO ervin;

--
-- Name: media_catalog_media_artist; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.media_catalog_media_artist (
    id integer NOT NULL,
    media_id integer NOT NULL,
    creator_id integer NOT NULL
);


ALTER TABLE public.media_catalog_media_artist OWNER TO ervin;

--
-- Name: media_catalog_media_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.media_catalog_media_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_catalog_media_artist_id_seq OWNER TO ervin;

--
-- Name: media_catalog_media_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.media_catalog_media_artist_id_seq OWNED BY public.media_catalog_media_artist.id;


--
-- Name: media_catalog_media_genre; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.media_catalog_media_genre (
    id integer NOT NULL,
    media_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.media_catalog_media_genre OWNER TO ervin;

--
-- Name: media_catalog_media_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.media_catalog_media_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_catalog_media_genre_id_seq OWNER TO ervin;

--
-- Name: media_catalog_media_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.media_catalog_media_genre_id_seq OWNED BY public.media_catalog_media_genre.id;


--
-- Name: media_catalog_media_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.media_catalog_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_catalog_media_id_seq OWNER TO ervin;

--
-- Name: media_catalog_media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.media_catalog_media_id_seq OWNED BY public.media_catalog_media.id;


--
-- Name: media_catalog_media_publisher; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.media_catalog_media_publisher (
    id integer NOT NULL,
    media_id integer NOT NULL,
    provider_id integer NOT NULL
);


ALTER TABLE public.media_catalog_media_publisher OWNER TO ervin;

--
-- Name: media_catalog_media_publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.media_catalog_media_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_catalog_media_publisher_id_seq OWNER TO ervin;

--
-- Name: media_catalog_media_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.media_catalog_media_publisher_id_seq OWNED BY public.media_catalog_media_publisher.id;


--
-- Name: media_catalog_mediapublish; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.media_catalog_mediapublish (
    id integer NOT NULL,
    date_expiry timestamp with time zone NOT NULL,
    media_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.media_catalog_mediapublish OWNER TO ervin;

--
-- Name: media_catalog_mediapublish_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.media_catalog_mediapublish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_catalog_mediapublish_id_seq OWNER TO ervin;

--
-- Name: media_catalog_mediapublish_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.media_catalog_mediapublish_id_seq OWNED BY public.media_catalog_mediapublish.id;


--
-- Name: media_catalog_mediauser; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.media_catalog_mediauser (
    id integer NOT NULL,
    name character varying(55) NOT NULL
);


ALTER TABLE public.media_catalog_mediauser OWNER TO ervin;

--
-- Name: media_catalog_provider; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.media_catalog_provider (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    provider_rank integer NOT NULL
);


ALTER TABLE public.media_catalog_provider OWNER TO ervin;

--
-- Name: media_catalog_provider_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.media_catalog_provider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_catalog_provider_id_seq OWNER TO ervin;

--
-- Name: media_catalog_provider_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.media_catalog_provider_id_seq OWNED BY public.media_catalog_provider.id;


--
-- Name: media_catalog_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.media_catalog_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_catalog_user_id_seq OWNER TO ervin;

--
-- Name: media_catalog_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ervin
--

ALTER SEQUENCE public.media_catalog_user_id_seq OWNED BY public.media_catalog_mediauser.id;


--
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.oauth2_provider_accesstoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth2_provider_accesstoken_id_seq OWNER TO ervin;

--
-- Name: oauth2_provider_accesstoken; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.oauth2_provider_accesstoken (
    id bigint DEFAULT nextval('public.oauth2_provider_accesstoken_id_seq'::regclass) NOT NULL,
    token character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    scope text NOT NULL,
    application_id bigint,
    user_id integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    source_refresh_token_id bigint
);


ALTER TABLE public.oauth2_provider_accesstoken OWNER TO ervin;

--
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.oauth2_provider_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth2_provider_application_id_seq OWNER TO ervin;

--
-- Name: oauth2_provider_application; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.oauth2_provider_application (
    id bigint DEFAULT nextval('public.oauth2_provider_application_id_seq'::regclass) NOT NULL,
    client_id character varying(100) NOT NULL,
    redirect_uris text NOT NULL,
    client_type character varying(32) NOT NULL,
    authorization_grant_type character varying(32) NOT NULL,
    client_secret character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    user_id integer,
    skip_authorization boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.oauth2_provider_application OWNER TO ervin;

--
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.oauth2_provider_grant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth2_provider_grant_id_seq OWNER TO ervin;

--
-- Name: oauth2_provider_grant; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.oauth2_provider_grant (
    id bigint DEFAULT nextval('public.oauth2_provider_grant_id_seq'::regclass) NOT NULL,
    code character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    redirect_uri character varying(255) NOT NULL,
    scope text NOT NULL,
    application_id bigint NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.oauth2_provider_grant OWNER TO ervin;

--
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: ervin
--

CREATE SEQUENCE public.oauth2_provider_refreshtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth2_provider_refreshtoken_id_seq OWNER TO ervin;

--
-- Name: oauth2_provider_refreshtoken; Type: TABLE; Schema: public; Owner: ervin
--

CREATE TABLE public.oauth2_provider_refreshtoken (
    id bigint DEFAULT nextval('public.oauth2_provider_refreshtoken_id_seq'::regclass) NOT NULL,
    token character varying(255) NOT NULL,
    access_token_id bigint,
    application_id bigint NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    revoked timestamp with time zone
);


ALTER TABLE public.oauth2_provider_refreshtoken OWNER TO ervin;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: media_catalog_category id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_category ALTER COLUMN id SET DEFAULT nextval('public.media_catalog_category_id_seq'::regclass);


--
-- Name: media_catalog_creator id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_creator ALTER COLUMN id SET DEFAULT nextval('public.media_catalog_creator_id_seq'::regclass);


--
-- Name: media_catalog_media id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media ALTER COLUMN id SET DEFAULT nextval('public.media_catalog_media_id_seq'::regclass);


--
-- Name: media_catalog_media_artist id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_artist ALTER COLUMN id SET DEFAULT nextval('public.media_catalog_media_artist_id_seq'::regclass);


--
-- Name: media_catalog_media_genre id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_genre ALTER COLUMN id SET DEFAULT nextval('public.media_catalog_media_genre_id_seq'::regclass);


--
-- Name: media_catalog_media_publisher id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_publisher ALTER COLUMN id SET DEFAULT nextval('public.media_catalog_media_publisher_id_seq'::regclass);


--
-- Name: media_catalog_mediapublish id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_mediapublish ALTER COLUMN id SET DEFAULT nextval('public.media_catalog_mediapublish_id_seq'::regclass);


--
-- Name: media_catalog_mediauser id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_mediauser ALTER COLUMN id SET DEFAULT nextval('public.media_catalog_user_id_seq'::regclass);


--
-- Name: media_catalog_provider id; Type: DEFAULT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_provider ALTER COLUMN id SET DEFAULT nextval('public.media_catalog_provider_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ervin
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
25	Can add Category	7	add_category
26	Can change Category	7	change_category
27	Can delete Category	7	delete_category
28	Can view Category	7	view_category
29	Can add Media	8	add_media
30	Can change Media	8	change_media
31	Can delete Media	8	delete_media
32	Can view Media	8	view_media
33	Can add Category	9	add_creator
34	Can change Category	9	change_creator
35	Can delete Category	9	delete_creator
36	Can view Category	9	view_creator
37	Can add Provider	10	add_provider
38	Can change Provider	10	change_provider
39	Can delete Provider	10	delete_provider
40	Can view Provider	10	view_provider
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add media publish	12	add_mediapublish
46	Can change media publish	12	change_mediapublish
47	Can delete media publish	12	delete_mediapublish
48	Can view media publish	12	view_mediapublish
49	Can add Media User	11	add_mediauser
50	Can change Media User	11	change_mediauser
51	Can delete Media User	11	delete_mediauser
52	Can view Media User	11	view_mediauser
53	Can add application	13	add_application
54	Can change application	13	change_application
55	Can delete application	13	delete_application
56	Can view application	13	view_application
57	Can add access token	14	add_accesstoken
58	Can change access token	14	change_accesstoken
59	Can delete access token	14	delete_accesstoken
60	Can view access token	14	view_accesstoken
61	Can add grant	15	add_grant
62	Can change grant	15	change_grant
63	Can delete grant	15	delete_grant
64	Can view grant	15	view_grant
65	Can add refresh token	16	add_refreshtoken
66	Can change refresh token	16	change_refreshtoken
67	Can delete refresh token	16	delete_refreshtoken
68	Can view refresh token	16	view_refreshtoken
69	Can add Token	17	add_token
70	Can change Token	17	change_token
71	Can delete Token	17	delete_token
72	Can view Token	17	view_token
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$150000$JYm2lduX6pBM$zih+2L3JuvkK+ROFsed/rv7WiSrAEdQfq31ynlNbsK4=	2019-12-22 13:48:38.821201+01	t	mati	Malik	Brdjanin	mati@mati.com	t	t	2019-12-22 12:47:08+01
2	pbkdf2_sha256$150000$n8lqF3Pxi6pP$/Xr4690JWodkUuzu6EUlhQ7kHdKH+NC7d7M8x6+aKn4=	2019-12-22 14:07:10.706678+01	t	emel	Emel	Pepic	pepic_emel@emel.com	t	t	2019-12-22 12:44:08+01
1	pbkdf2_sha256$150000$qHBgENxCNHA7$QUTToYBNnXt3dnPcJaFf2PG7w8/7LP6W/siNinVv83Y=	2019-12-22 14:18:27.547426+01	t	ervinpepic	Ervin	Pepic	ervin.hack@gmail.com	t	t	2019-12-14 13:56:49+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	2	1
2	2	2
3	2	3
4	2	4
5	2	5
6	2	6
7	2	7
8	2	8
9	2	9
10	2	10
11	2	11
12	2	12
13	2	13
14	2	14
15	2	15
16	2	16
17	2	17
18	2	18
19	2	19
20	2	20
21	2	21
22	2	22
23	2	23
24	2	24
25	2	25
26	2	26
27	2	27
28	2	28
29	2	29
30	2	30
31	2	31
32	2	32
33	2	33
34	2	34
35	2	35
36	2	36
37	2	37
38	2	38
39	2	39
40	2	40
41	2	41
42	2	42
43	2	43
44	2	44
45	2	45
46	2	46
47	2	47
48	2	48
49	2	49
50	2	50
51	2	51
52	2	52
53	2	53
54	2	54
55	2	55
56	2	56
57	2	57
58	2	58
59	2	59
60	2	60
61	2	61
62	2	62
63	2	63
64	2	64
65	2	65
66	2	66
67	2	67
68	2	68
69	1	1
70	1	2
71	1	3
72	1	4
73	1	5
74	1	6
75	1	7
76	1	8
77	1	9
78	1	10
79	1	11
80	1	12
81	1	13
82	1	14
83	1	15
84	1	16
85	1	17
86	1	18
87	1	19
88	1	20
89	1	21
90	1	22
91	1	23
92	1	24
93	1	25
94	1	26
95	1	27
96	1	28
97	1	29
98	1	30
99	1	31
100	1	32
101	1	33
102	1	34
103	1	35
104	1	36
105	1	37
106	1	38
107	1	39
108	1	40
109	1	41
110	1	42
111	1	43
112	1	44
113	1	45
114	1	46
115	1	47
116	1	48
117	1	49
118	1	50
119	1	51
120	1	52
121	1	53
122	1	54
123	1	55
124	1	56
125	1	57
126	1	58
127	1	59
128	1	60
129	1	61
130	1	62
131	1	63
132	1	64
133	1	65
134	1	66
135	1	67
136	1	68
137	3	1
138	3	2
139	3	3
140	3	4
141	3	5
142	3	6
143	3	7
144	3	8
145	3	9
146	3	10
147	3	11
148	3	12
149	3	13
150	3	14
151	3	15
152	3	16
153	3	17
154	3	18
155	3	19
156	3	20
157	3	21
158	3	22
159	3	23
160	3	24
161	3	25
162	3	26
163	3	27
164	3	28
165	3	29
166	3	30
167	3	31
168	3	32
169	3	33
170	3	34
171	3	35
172	3	36
173	3	37
174	3	38
175	3	39
176	3	40
177	3	41
178	3	42
179	3	43
180	3	44
181	3	45
182	3	46
183	3	47
184	3	48
185	3	49
186	3	50
187	3	51
188	3	52
189	3	53
190	3	54
191	3	55
192	3	56
193	3	57
194	3	58
195	3	59
196	3	60
197	3	61
198	3	62
199	3	63
200	3	64
201	3	65
202	3	66
203	3	67
204	3	68
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-12-15 19:54:49.92532+01	2	Horror	1	[{"added": {}}]	7	1
2	2019-12-15 19:55:00.756172+01	3	SciFi	1	[{"added": {}}]	7	1
3	2019-12-15 19:55:02.544313+01	3	SciFi	2	[]	7	1
4	2019-12-15 19:56:08.966712+01	1	Ervin Pepic	1	[{"added": {}}]	9	1
5	2019-12-15 19:57:46.144118+01	1	Netflix	1	[{"added": {}}]	10	1
6	2019-12-15 19:57:57.550604+01	2	Paramount	1	[{"added": {}}]	10	1
7	2019-12-15 19:59:17.141616+01	1	I know what you do last summer	1	[{"added": {}}]	8	1
8	2019-12-18 15:20:35.959557+01	1	User object (1)	1	[{"added": {}}]	11	1
9	2019-12-18 15:20:55.92472+01	2	Ines	1	[{"added": {}}]	11	1
10	2019-12-18 15:20:58.53521+01	3	Tijana	1	[{"added": {}}]	11	1
11	2019-12-18 15:21:01.8008+01	4	Malik	1	[{"added": {}}]	11	1
12	2019-12-18 15:21:07.094914+01	5	Sara	1	[{"added": {}}]	11	1
13	2019-12-18 15:21:10.082445+01	6	Amar	1	[{"added": {}}]	11	1
14	2019-12-18 15:23:46.789993+01	2	Emel	1	[{"added": {}}]	12	1
15	2019-12-18 16:04:06.692186+01	3	Assigned to:  Tijana. - I know what you do last summer -. Vaild through:-> 2019-12-18 15:04:05	1	[{"added": {}}]	12	1
16	2019-12-19 00:59:31.533897+01	2	Emel	2	[{"changed": {"fields": ["Date of expiry for media"]}}]	12	1
17	2019-12-19 01:00:46.258362+01	3	Tijana	2	[{"changed": {"fields": ["Date of expiry for media"]}}]	12	1
18	2019-12-22 12:44:08.661943+01	2	emel	1	[{"added": {}}]	4	1
19	2019-12-22 12:44:43.168796+01	2	emel	2	[{"changed": {"fields": ["first_name", "last_name", "email", "is_staff", "is_superuser", "user_permissions"]}}]	4	1
20	2019-12-22 12:45:04.066631+01	1	ervinpepic	2	[{"changed": {"fields": ["first_name", "last_name", "user_permissions"]}}]	4	1
21	2019-12-22 13:00:15.908065+01	3	mati	2	[{"changed": {"fields": ["first_name", "last_name", "user_permissions"]}}]	4	3
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	media_catalog	category
8	media_catalog	media
9	media_catalog	creator
10	media_catalog	provider
12	media_catalog	mediapublish
11	media_catalog	mediauser
13	oauth2_provider	application
14	oauth2_provider	accesstoken
15	oauth2_provider	grant
16	oauth2_provider	refreshtoken
17	authtoken	token
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-12-13 21:30:37.927161+01
2	auth	0001_initial	2019-12-13 21:30:37.956065+01
3	admin	0001_initial	2019-12-13 21:30:37.992951+01
4	admin	0002_logentry_remove_auto_add	2019-12-13 21:30:38.007412+01
5	admin	0003_logentry_add_action_flag_choices	2019-12-13 21:30:38.015908+01
6	contenttypes	0002_remove_content_type_name	2019-12-13 21:30:38.042524+01
7	auth	0002_alter_permission_name_max_length	2019-12-13 21:30:38.047563+01
8	auth	0003_alter_user_email_max_length	2019-12-13 21:30:38.055629+01
9	auth	0004_alter_user_username_opts	2019-12-13 21:30:38.063074+01
10	auth	0005_alter_user_last_login_null	2019-12-13 21:30:38.070836+01
11	auth	0006_require_contenttypes_0002	2019-12-13 21:30:38.072999+01
12	auth	0007_alter_validators_add_error_messages	2019-12-13 21:30:38.080664+01
13	auth	0008_alter_user_username_max_length	2019-12-13 21:30:38.092701+01
14	auth	0009_alter_user_last_name_max_length	2019-12-13 21:30:38.10045+01
15	auth	0010_alter_group_name_max_length	2019-12-13 21:30:38.109217+01
16	auth	0011_update_proxy_permissions	2019-12-13 21:30:38.116398+01
17	sessions	0001_initial	2019-12-13 21:30:38.122239+01
18	media_catalog	0001_initial	2019-12-15 19:50:58.720072+01
19	media_catalog	0002_auto_20191218_1411	2019-12-18 15:11:48.658701+01
20	media_catalog	0003_auto_20191218_1420	2019-12-18 15:20:12.741931+01
21	media_catalog	0004_auto_20191222_1123	2019-12-22 12:23:31.179892+01
22	oauth2_provider	0001_initial	2019-12-22 12:23:31.242444+01
23	oauth2_provider	0002_08_updates	2019-12-22 12:23:31.308637+01
24	oauth2_provider	0003_auto_20160316_1503	2019-12-22 12:23:31.322263+01
25	oauth2_provider	0004_auto_20160525_1623	2019-12-22 12:23:31.396866+01
26	oauth2_provider	0005_auto_20170514_1141	2019-12-22 12:23:31.659425+01
27	oauth2_provider	0006_auto_20171214_2232	2019-12-22 12:23:31.720761+01
28	authtoken	0001_initial	2019-12-22 14:17:24.690546+01
29	authtoken	0002_auto_20160226_1747	2019-12-22 14:17:24.737712+01
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
1bw1cjwxvk62ql7b0germck1avjhdts2	NTZmYmM1YTM4NDY3Mzk0YzUxMzBlZmEzM2RkZDNhNThlOWU4YzZhMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MDljMTg5YWFmNjNiYjMxZTg0ZjIxMmE4OTU2ZTM3ZWU5MTBkMTY2In0=	2019-12-28 13:57:53.084805+01
uxed9r770ucosyhj7z5sipxik0railme	NTZmYmM1YTM4NDY3Mzk0YzUxMzBlZmEzM2RkZDNhNThlOWU4YzZhMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MDljMTg5YWFmNjNiYjMxZTg0ZjIxMmE4OTU2ZTM3ZWU5MTBkMTY2In0=	2019-12-29 19:53:26.723694+01
74km3uabjy9usqhi3s0nhftg87y1tftv	ZTdlZTE1Mzc2MTE3ZWQ2YzQxOTg3NTExOTZkYjIyZWViNGYxZDg0MTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNGViZTdhYzZhM2RlM2E5YWVlYThiMTI1ZjRlOGMyNDhkOTE0YzcxIn0=	2020-01-05 12:47:34.748372+01
al5eawrl05l69owmxqudn2yoyeoszjio	YWY5NGM4ZDE5MmZkMGRhMTY2ZTUxMTU5NWVmM2I3ZDNmZjFiN2I5Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMGIzMGE1YTAzMjhmYTY5NmU0Nzg3YjlkMmQ4NmVjZTRhY2E4MGU0In0=	2020-01-05 14:18:27.549273+01
\.


--
-- Data for Name: media_catalog_category; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.media_catalog_category (id, name, description) FROM stdin;
2	Horror	Horror
3	SciFi	Science Fiction
\.


--
-- Data for Name: media_catalog_creator; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.media_catalog_creator (id, name, date_of_birth) FROM stdin;
1	Ervin Pepic	1993-10-21
\.


--
-- Data for Name: media_catalog_media; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.media_catalog_media (id, title, originating_country, publishing_date, date_published) FROM stdin;
1	I know what you do last summer	America-Holiwood	2008-11-15	2019-12-15 19:59:17.132039+01
2	The last of us	Spain	2011-07-11	2019-12-16 18:06:39.416204+01
\.


--
-- Data for Name: media_catalog_media_artist; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.media_catalog_media_artist (id, media_id, creator_id) FROM stdin;
1	1	1
2	2	1
\.


--
-- Data for Name: media_catalog_media_genre; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.media_catalog_media_genre (id, media_id, category_id) FROM stdin;
1	1	2
2	2	2
\.


--
-- Data for Name: media_catalog_media_publisher; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.media_catalog_media_publisher (id, media_id, provider_id) FROM stdin;
1	1	2
2	2	2
\.


--
-- Data for Name: media_catalog_mediapublish; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.media_catalog_mediapublish (id, date_expiry, media_id, user_id) FROM stdin;
2	2019-12-19 00:59:28+01	2	1
3	2019-12-19 16:04:05+01	1	3
\.


--
-- Data for Name: media_catalog_mediauser; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.media_catalog_mediauser (id, name) FROM stdin;
1	Emel
2	Ines
3	Tijana
4	Malik
5	Sara
6	Amar
\.


--
-- Data for Name: media_catalog_provider; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.media_catalog_provider (id, name, provider_rank) FROM stdin;
1	Netflix	10
2	Paramount	8
\.


--
-- Data for Name: oauth2_provider_accesstoken; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.oauth2_provider_accesstoken (id, token, expires, scope, application_id, user_id, created, updated, source_refresh_token_id) FROM stdin;
1	5Fmu9TAh2ajFMFAov0xcV0O7qIc5VZ	2019-12-22 23:27:23.566575+01	read write groups	2	3	2019-12-22 13:27:23.566881+01	2019-12-22 13:27:23.566886+01	\N
2	wwli6AEFaSoWZWI4DMI58U1k0xZepd	2019-12-22 23:28:25.451771+01	read write groups	2	3	2019-12-22 13:28:25.45199+01	2019-12-22 13:28:25.451994+01	\N
3	YugH8TG0Z2Qq9K9HuxmUehbc3vGa9j	2019-12-22 23:56:05.499638+01	read write groups	2	1	2019-12-22 13:56:05.499917+01	2019-12-22 13:56:05.499922+01	\N
4	risFy7shq965UgMDu5VpQxLmJcV5Ha	2019-12-23 00:18:04.20987+01	read write groups	2	1	2019-12-22 14:18:04.210854+01	2019-12-22 14:18:04.21086+01	\N
5	GBptsqRQTASYUwombHMIuxXRw0lAtB	2019-12-23 00:25:55.742736+01	read write groups	2	1	2019-12-22 14:25:55.742951+01	2019-12-22 14:25:55.742956+01	\N
\.


--
-- Data for Name: oauth2_provider_application; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.oauth2_provider_application (id, client_id, redirect_uris, client_type, authorization_grant_type, client_secret, name, user_id, skip_authorization, created, updated) FROM stdin;
2	g3MSpTlaZ2jtGSp1iDsxRmWDtLVYh29jdrz4VVxA		confidential	password	828GuqIIJZsmBu4CpK3CKM9uC3ZmVSF3gSe9pwaBhB0ToL0jScGfrEOkd8Hhx2AoXCAGL40KnpiwX9vijCcv325ZeHTAhAxtGNPJ1iCUvFb3fWM1OzXDmpE7QeyI6MuM	Media Catalog	3	f	2019-12-22 13:21:24.465268+01	2019-12-22 13:21:24.465279+01
\.


--
-- Data for Name: oauth2_provider_grant; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.oauth2_provider_grant (id, code, expires, redirect_uri, scope, application_id, user_id, created, updated) FROM stdin;
\.


--
-- Data for Name: oauth2_provider_refreshtoken; Type: TABLE DATA; Schema: public; Owner: ervin
--

COPY public.oauth2_provider_refreshtoken (id, token, access_token_id, application_id, user_id, created, updated, revoked) FROM stdin;
1	Acrbxiba38kSdtM8ohnDJJxINkBad8	1	2	3	2019-12-22 13:27:23.568635+01	2019-12-22 13:27:23.568643+01	\N
2	djicW508PtGKmLV0FUEbmwp3IYpkr0	2	2	3	2019-12-22 13:28:25.453209+01	2019-12-22 13:28:25.453215+01	\N
3	XaGNXzD33Ub0Kn42ytWHJ9Z2KCAxfr	3	2	1	2019-12-22 13:56:05.501178+01	2019-12-22 13:56:05.501184+01	\N
4	8rED0gOynpQ2ViSd1J9xfGvJkA9g4m	4	2	1	2019-12-22 14:18:04.213135+01	2019-12-22 14:18:04.213147+01	\N
5	3oDvSEGzWKoA0VNJePUMHgOvAiIBfO	5	2	1	2019-12-22 14:25:55.74413+01	2019-12-22 14:25:55.744136+01	\N
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 204, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 21, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);


--
-- Name: media_catalog_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.media_catalog_category_id_seq', 3, true);


--
-- Name: media_catalog_creator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.media_catalog_creator_id_seq', 1, true);


--
-- Name: media_catalog_media_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.media_catalog_media_artist_id_seq', 2, true);


--
-- Name: media_catalog_media_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.media_catalog_media_genre_id_seq', 2, true);


--
-- Name: media_catalog_media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.media_catalog_media_id_seq', 2, true);


--
-- Name: media_catalog_media_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.media_catalog_media_publisher_id_seq', 2, true);


--
-- Name: media_catalog_mediapublish_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.media_catalog_mediapublish_id_seq', 3, true);


--
-- Name: media_catalog_provider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.media_catalog_provider_id_seq', 2, true);


--
-- Name: media_catalog_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.media_catalog_user_id_seq', 6, true);


--
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.oauth2_provider_accesstoken_id_seq', 5, true);


--
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.oauth2_provider_application_id_seq', 2, true);


--
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.oauth2_provider_grant_id_seq', 1, false);


--
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ervin
--

SELECT pg_catalog.setval('public.oauth2_provider_refreshtoken_id_seq', 5, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: media_catalog_category media_catalog_category_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_category
    ADD CONSTRAINT media_catalog_category_pkey PRIMARY KEY (id);


--
-- Name: media_catalog_creator media_catalog_creator_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_creator
    ADD CONSTRAINT media_catalog_creator_pkey PRIMARY KEY (id);


--
-- Name: media_catalog_media_artist media_catalog_media_artist_media_id_creator_id_c77818da_uniq; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_artist
    ADD CONSTRAINT media_catalog_media_artist_media_id_creator_id_c77818da_uniq UNIQUE (media_id, creator_id);


--
-- Name: media_catalog_media_artist media_catalog_media_artist_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_artist
    ADD CONSTRAINT media_catalog_media_artist_pkey PRIMARY KEY (id);


--
-- Name: media_catalog_media_genre media_catalog_media_genre_media_id_category_id_0d474622_uniq; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_genre
    ADD CONSTRAINT media_catalog_media_genre_media_id_category_id_0d474622_uniq UNIQUE (media_id, category_id);


--
-- Name: media_catalog_media_genre media_catalog_media_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_genre
    ADD CONSTRAINT media_catalog_media_genre_pkey PRIMARY KEY (id);


--
-- Name: media_catalog_media media_catalog_media_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media
    ADD CONSTRAINT media_catalog_media_pkey PRIMARY KEY (id);


--
-- Name: media_catalog_media_publisher media_catalog_media_publ_media_id_provider_id_e0bd45ee_uniq; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_publisher
    ADD CONSTRAINT media_catalog_media_publ_media_id_provider_id_e0bd45ee_uniq UNIQUE (media_id, provider_id);


--
-- Name: media_catalog_media_publisher media_catalog_media_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_publisher
    ADD CONSTRAINT media_catalog_media_publisher_pkey PRIMARY KEY (id);


--
-- Name: media_catalog_mediapublish media_catalog_mediapublish_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_mediapublish
    ADD CONSTRAINT media_catalog_mediapublish_pkey PRIMARY KEY (id);


--
-- Name: media_catalog_provider media_catalog_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_provider
    ADD CONSTRAINT media_catalog_provider_pkey PRIMARY KEY (id);


--
-- Name: media_catalog_mediauser media_catalog_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_mediauser
    ADD CONSTRAINT media_catalog_user_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_accesstoken oauth2_provider_accesstoken_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_accesstoken oauth2_provider_accesstoken_source_refresh_token_id_key; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_source_refresh_token_id_key UNIQUE (source_refresh_token_id);


--
-- Name: oauth2_provider_accesstoken oauth2_provider_accesstoken_token_8af090f8_uniq; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_token_8af090f8_uniq UNIQUE (token);


--
-- Name: oauth2_provider_application oauth2_provider_application_client_id_key; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_client_id_key UNIQUE (client_id);


--
-- Name: oauth2_provider_application oauth2_provider_application_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_grant oauth2_provider_grant_code_49ab4ddf_uniq; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_code_49ab4ddf_uniq UNIQUE (code);


--
-- Name: oauth2_provider_grant oauth2_provider_grant_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_access_token_id_key; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_access_token_id_key UNIQUE (access_token_id);


--
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq; Type: CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq UNIQUE (token, revoked);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: media_catalog_media_artist_creator_id_bfb9e91b; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX media_catalog_media_artist_creator_id_bfb9e91b ON public.media_catalog_media_artist USING btree (creator_id);


--
-- Name: media_catalog_media_artist_media_id_06992d01; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX media_catalog_media_artist_media_id_06992d01 ON public.media_catalog_media_artist USING btree (media_id);


--
-- Name: media_catalog_media_genre_category_id_87220257; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX media_catalog_media_genre_category_id_87220257 ON public.media_catalog_media_genre USING btree (category_id);


--
-- Name: media_catalog_media_genre_media_id_fc65996d; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX media_catalog_media_genre_media_id_fc65996d ON public.media_catalog_media_genre USING btree (media_id);


--
-- Name: media_catalog_media_publisher_media_id_cfd7e2bd; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX media_catalog_media_publisher_media_id_cfd7e2bd ON public.media_catalog_media_publisher USING btree (media_id);


--
-- Name: media_catalog_media_publisher_provider_id_83448c02; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX media_catalog_media_publisher_provider_id_83448c02 ON public.media_catalog_media_publisher USING btree (provider_id);


--
-- Name: media_catalog_mediapublish_meida_id_bf037860; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX media_catalog_mediapublish_meida_id_bf037860 ON public.media_catalog_mediapublish USING btree (media_id);


--
-- Name: media_catalog_mediapublish_user_id_2d532939; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX media_catalog_mediapublish_user_id_2d532939 ON public.media_catalog_mediapublish USING btree (user_id);


--
-- Name: oauth2_provider_accesstoken_application_id_b22886e1; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX oauth2_provider_accesstoken_application_id_b22886e1 ON public.oauth2_provider_accesstoken USING btree (application_id);


--
-- Name: oauth2_provider_accesstoken_token_8af090f8_like; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX oauth2_provider_accesstoken_token_8af090f8_like ON public.oauth2_provider_accesstoken USING btree (token varchar_pattern_ops);


--
-- Name: oauth2_provider_accesstoken_user_id_6e4c9a65; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX oauth2_provider_accesstoken_user_id_6e4c9a65 ON public.oauth2_provider_accesstoken USING btree (user_id);


--
-- Name: oauth2_provider_application_client_id_03f0cc84_like; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX oauth2_provider_application_client_id_03f0cc84_like ON public.oauth2_provider_application USING btree (client_id varchar_pattern_ops);


--
-- Name: oauth2_provider_application_client_secret_53133678; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX oauth2_provider_application_client_secret_53133678 ON public.oauth2_provider_application USING btree (client_secret);


--
-- Name: oauth2_provider_application_client_secret_53133678_like; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX oauth2_provider_application_client_secret_53133678_like ON public.oauth2_provider_application USING btree (client_secret varchar_pattern_ops);


--
-- Name: oauth2_provider_application_user_id_79829054; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX oauth2_provider_application_user_id_79829054 ON public.oauth2_provider_application USING btree (user_id);


--
-- Name: oauth2_provider_grant_application_id_81923564; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX oauth2_provider_grant_application_id_81923564 ON public.oauth2_provider_grant USING btree (application_id);


--
-- Name: oauth2_provider_grant_code_49ab4ddf_like; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX oauth2_provider_grant_code_49ab4ddf_like ON public.oauth2_provider_grant USING btree (code varchar_pattern_ops);


--
-- Name: oauth2_provider_grant_user_id_e8f62af8; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX oauth2_provider_grant_user_id_e8f62af8 ON public.oauth2_provider_grant USING btree (user_id);


--
-- Name: oauth2_provider_refreshtoken_application_id_2d1c311b; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX oauth2_provider_refreshtoken_application_id_2d1c311b ON public.oauth2_provider_refreshtoken USING btree (application_id);


--
-- Name: oauth2_provider_refreshtoken_user_id_da837fce; Type: INDEX; Schema: public; Owner: ervin
--

CREATE INDEX oauth2_provider_refreshtoken_user_id_da837fce ON public.oauth2_provider_refreshtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: media_catalog_media_genre media_catalog_media__category_id_87220257_fk_media_cat; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_genre
    ADD CONSTRAINT media_catalog_media__category_id_87220257_fk_media_cat FOREIGN KEY (category_id) REFERENCES public.media_catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: media_catalog_media_artist media_catalog_media__creator_id_bfb9e91b_fk_media_cat; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_artist
    ADD CONSTRAINT media_catalog_media__creator_id_bfb9e91b_fk_media_cat FOREIGN KEY (creator_id) REFERENCES public.media_catalog_creator(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: media_catalog_media_artist media_catalog_media__media_id_06992d01_fk_media_cat; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_artist
    ADD CONSTRAINT media_catalog_media__media_id_06992d01_fk_media_cat FOREIGN KEY (media_id) REFERENCES public.media_catalog_media(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: media_catalog_media_publisher media_catalog_media__media_id_cfd7e2bd_fk_media_cat; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_publisher
    ADD CONSTRAINT media_catalog_media__media_id_cfd7e2bd_fk_media_cat FOREIGN KEY (media_id) REFERENCES public.media_catalog_media(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: media_catalog_media_genre media_catalog_media__media_id_fc65996d_fk_media_cat; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_genre
    ADD CONSTRAINT media_catalog_media__media_id_fc65996d_fk_media_cat FOREIGN KEY (media_id) REFERENCES public.media_catalog_media(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: media_catalog_media_publisher media_catalog_media__provider_id_83448c02_fk_media_cat; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_media_publisher
    ADD CONSTRAINT media_catalog_media__provider_id_83448c02_fk_media_cat FOREIGN KEY (provider_id) REFERENCES public.media_catalog_provider(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: media_catalog_mediapublish media_catalog_mediap_media_id_de8e830a_fk_media_cat; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_mediapublish
    ADD CONSTRAINT media_catalog_mediap_media_id_de8e830a_fk_media_cat FOREIGN KEY (media_id) REFERENCES public.media_catalog_media(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: media_catalog_mediapublish media_catalog_mediap_user_id_2d532939_fk_media_cat; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.media_catalog_mediapublish
    ADD CONSTRAINT media_catalog_mediap_user_id_2d532939_fk_media_cat FOREIGN KEY (user_id) REFERENCES public.media_catalog_mediauser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_accesstoken oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr FOREIGN KEY (source_refresh_token_id) REFERENCES public.oauth2_provider_refreshtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_accesstoken oauth2_provider_accesstoken_application_id_b22886e1_fk; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_application_id_b22886e1_fk FOREIGN KEY (application_id) REFERENCES public.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_accesstoken oauth2_provider_accesstoken_user_id_6e4c9a65_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_user_id_6e4c9a65_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_application oauth2_provider_application_user_id_79829054_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_user_id_79829054_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_grant oauth2_provider_grant_application_id_81923564_fk; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_application_id_81923564_fk FOREIGN KEY (application_id) REFERENCES public.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_grant oauth2_provider_grant_user_id_e8f62af8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_user_id_e8f62af8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_refreshtoken oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr FOREIGN KEY (access_token_id) REFERENCES public.oauth2_provider_accesstoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_application_id_2d1c311b_fk; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_application_id_2d1c311b_fk FOREIGN KEY (application_id) REFERENCES public.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_user_id_da837fce_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ervin
--

ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_user_id_da837fce_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

