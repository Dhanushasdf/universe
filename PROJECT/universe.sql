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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric,
    type text,
    age integer,
    active boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    size numeric,
    type text,
    age integer,
    habitant boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    size numeric,
    type text,
    age integer,
    has_water boolean NOT NULL,
    temp integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: solarsystem; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solarsystem (
    solarsystem_id integer NOT NULL,
    name character varying(30) NOT NULL,
    moon_id integer,
    size numeric,
    type text,
    age integer,
    active boolean NOT NULL
);


ALTER TABLE public.solarsystem OWNER TO freecodecamp;

--
-- Name: solarsystem_solarsystem_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solarsystem_solarsystem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solarsystem_solarsystem_id_seq OWNER TO freecodecamp;

--
-- Name: solarsystem_solarsystem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solarsystem_solarsystem_id_seq OWNED BY public.solarsystem.solarsystem_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    size numeric,
    type text,
    age integer,
    active boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: solarsystem solarsystem_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem ALTER COLUMN solarsystem_id SET DEFAULT nextval('public.solarsystem_solarsystem_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MILKY WAY', 1000, 'Spieral', 34654, true);
INSERT INTO public.galaxy VALUES (2, 'Way earth', 6546645, 'spiral', 8787878, true);
INSERT INTO public.galaxy VALUES (3, 'Pluto', 65464, 'Dimension', 564465, false);
INSERT INTO public.galaxy VALUES (4, 'Neptune', 54564, 'Spiral', 5454, true);
INSERT INTO public.galaxy VALUES (5, 'xav', 65468, 'dimensional', 5454455, false);
INSERT INTO public.galaxy VALUES (6, 'Maxi', 5646485, 'spiral', 65445, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'MILKY WAY', 1, 1000, 'Spieral', 34654, true);
INSERT INTO public.moon VALUES (2, 'Way earth', 2, 6546645, 'spiral', 8787878, true);
INSERT INTO public.moon VALUES (3, 'Pluto', 3, 65464, 'Dimension', 564465, false);
INSERT INTO public.moon VALUES (4, 'Neptune', 4, 54564, 'Spiral', 5454, true);
INSERT INTO public.moon VALUES (5, 'xav', 5, 65468, 'dimensional', 5454455, false);
INSERT INTO public.moon VALUES (6, 'Maxi', 6, 5646485, 'spiral', 65445, true);
INSERT INTO public.moon VALUES (7, 'MILKY WAYY', 1, 1000, 'Spieral', 34654, true);
INSERT INTO public.moon VALUES (8, 'Way earterh', 2, 6546645, 'spiral', 8787878, true);
INSERT INTO public.moon VALUES (9, 'Plutoo', 3, 65464, 'Dimension', 564465, false);
INSERT INTO public.moon VALUES (10, 'Neptunee', 4, 54564, 'Spiral', 5454, true);
INSERT INTO public.moon VALUES (11, 'xavv', 5, 65468, 'dimensional', 5454455, false);
INSERT INTO public.moon VALUES (12, 'Maxii', 6, 5646485, 'spiral', 65445, true);
INSERT INTO public.moon VALUES (13, 'MILKYW WAYY', 1, 1000, 'Spieral', 34654, true);
INSERT INTO public.moon VALUES (14, 'Way eaerterh', 2, 6546645, 'spiral', 8787878, true);
INSERT INTO public.moon VALUES (15, 'Pleutoo', 3, 65464, 'Dimension', 564465, false);
INSERT INTO public.moon VALUES (16, 'Neptuneee', 4, 54564, 'Spiral', 5454, true);
INSERT INTO public.moon VALUES (17, 'xavvv', 5, 65468, 'dimensional', 5454455, false);
INSERT INTO public.moon VALUES (18, 'Maxiii', 6, 5646485, 'spiral', 65445, true);
INSERT INTO public.moon VALUES (19, 'GALY', 1, 6546456, 'spiral', 341546, false);
INSERT INTO public.moon VALUES (20, 'MATRIO', 5, 787832, 'Spiral', 132333, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'MILKY WAY', 1, 1000, 'Spieral', 34654, true, NULL);
INSERT INTO public.planet VALUES (2, 'Way earth', 2, 6546645, 'spiral', 8787878, true, NULL);
INSERT INTO public.planet VALUES (3, 'Pluto', 3, 65464, 'Dimension', 564465, false, NULL);
INSERT INTO public.planet VALUES (4, 'Neptune', 4, 54564, 'Spiral', 5454, true, NULL);
INSERT INTO public.planet VALUES (5, 'xav', 5, 65468, 'dimensional', 5454455, false, NULL);
INSERT INTO public.planet VALUES (6, 'Maxi', 6, 5646485, 'spiral', 65445, true, NULL);
INSERT INTO public.planet VALUES (8, 'MILKY WAYY', 1, 1000, 'Spieral', 34654, true, NULL);
INSERT INTO public.planet VALUES (9, 'Way earterh', 2, 6546645, 'spiral', 8787878, true, NULL);
INSERT INTO public.planet VALUES (10, 'Plutoo', 3, 65464, 'Dimension', 564465, false, NULL);
INSERT INTO public.planet VALUES (11, 'Neptunee', 4, 54564, 'Spiral', 5454, true, NULL);
INSERT INTO public.planet VALUES (12, 'xavv', 5, 65468, 'dimensional', 5454455, false, NULL);
INSERT INTO public.planet VALUES (13, 'Maxii', 6, 5646485, 'spiral', 65445, true, NULL);


--
-- Data for Name: solarsystem; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solarsystem VALUES (1, 'MILKY WAY', 1, 1000, 'Spieral', 34654, true);
INSERT INTO public.solarsystem VALUES (2, 'Way earth', 2, 6546645, 'spiral', 8787878, true);
INSERT INTO public.solarsystem VALUES (3, 'Pluto', 3, 65464, 'Dimension', 564465, false);
INSERT INTO public.solarsystem VALUES (4, 'Neptune', 4, 54564, 'Spiral', 5454, true);
INSERT INTO public.solarsystem VALUES (5, 'xav', 5, 65468, 'dimensional', 5454455, false);
INSERT INTO public.solarsystem VALUES (6, 'Maxi', 6, 5646485, 'spiral', 65445, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'MILKY WAY', 1, 1000, 'Spieral', 34654, true);
INSERT INTO public.star VALUES (2, 'Way earth', 2, 6546645, 'spiral', 8787878, true);
INSERT INTO public.star VALUES (3, 'Pluto', 3, 65464, 'Dimension', 564465, false);
INSERT INTO public.star VALUES (4, 'Neptune', 4, 54564, 'Spiral', 5454, true);
INSERT INTO public.star VALUES (5, 'xav', 5, 65468, 'dimensional', 5454455, false);
INSERT INTO public.star VALUES (6, 'Maxi', 6, 5646485, 'spiral', 65445, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: solarsystem_solarsystem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solarsystem_solarsystem_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solarsystem solarsystem_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_name_key UNIQUE (name);


--
-- Name: solarsystem solarsystem_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_pkey PRIMARY KEY (solarsystem_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: solarsystem solarsystem_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

