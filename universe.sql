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
    name character varying NOT NULL,
    age_in_years text,
    num_of_stars text,
    solar_mass text
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
    is_spherical boolean,
    year_discovered integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_mood_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_mood_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_mood_id_seq OWNER TO freecodecamp;

--
-- Name: moon_mood_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_mood_id_seq OWNED BY public.moon.moon_id;


--
-- Name: myth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.myth (
    myth_id integer NOT NULL,
    name character varying NOT NULL,
    moon_id integer,
    myth text,
    has_myth boolean,
    years_since_discovery integer
);


ALTER TABLE public.myth OWNER TO freecodecamp;

--
-- Name: myth_myth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.myth_myth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.myth_myth_id_seq OWNER TO freecodecamp;

--
-- Name: myth_myth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.myth_myth_id_seq OWNED BY public.myth.myth_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    num_of_moons numeric,
    distance_from_earth_km text
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    galaxy text,
    distance_from_earth text
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

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_mood_id_seq'::regclass);


--
-- Name: myth myth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.myth ALTER COLUMN myth_id SET DEFAULT nextval('public.myth_myth_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', '13.6 billion', '100 thousand million', '1.5 trillion');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', '10.1 billion', '1 trillion', '1 trillion');
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', '1.101 billion', '30 billion', '250 billion');
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Unknown', '40 billion', '~50 billion');
INSERT INTO public.galaxy VALUES (5, 'Virgo A', 'unknown', '1 trillion', '~2,400 billion');
INSERT INTO public.galaxy VALUES (6, 'Canis Major Dwarf', '240 million', '1 billion', '1 billion');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the moon', 3, true, 1609);
INSERT INTO public.moon VALUES (2, 'Deimos', 4, false, 1877);
INSERT INTO public.moon VALUES (3, 'Phobos', 4, false, 1877);
INSERT INTO public.moon VALUES (4, 'Io', 5, true, 1610);
INSERT INTO public.moon VALUES (5, 'Europa', 5, true, 1610);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, true, 1610);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, true, 1610);
INSERT INTO public.moon VALUES (8, 'Titan', 6, true, 1655);
INSERT INTO public.moon VALUES (9, 'Mimas', 6, true, 1789);
INSERT INTO public.moon VALUES (10, 'Dione', 6, true, 1684);
INSERT INTO public.moon VALUES (11, 'Tethys', 6, true, 1684);
INSERT INTO public.moon VALUES (12, 'Daphnis', 6, false, 2005);
INSERT INTO public.moon VALUES (13, 'Desdemona', 7, NULL, 1986);
INSERT INTO public.moon VALUES (14, 'Belinda', 7, false, 1986);
INSERT INTO public.moon VALUES (15, 'Ophelia', 7, NULL, 1986);
INSERT INTO public.moon VALUES (16, 'Puck', 7, false, 1985);
INSERT INTO public.moon VALUES (17, 'Kerberos', 9, false, 2011);
INSERT INTO public.moon VALUES (18, 'Hydra', 9, false, 2005);
INSERT INTO public.moon VALUES (19, 'Galatea', 8, false, 1989);
INSERT INTO public.moon VALUES (20, 'Neso', 8, false, 2002);
INSERT INTO public.moon VALUES (21, 'Hiiaka', 11, false, 2005);
INSERT INTO public.moon VALUES (22, 'Dysnomia', 12, NULL, 2005);


--
-- Data for Name: myth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.myth VALUES (1, 'Deimos', 2, 'personal god of dread and terror', true, 145);
INSERT INTO public.myth VALUES (2, 'Phobos', 3, 'god and personification of fear and panic', true, 145);
INSERT INTO public.myth VALUES (3, 'Galatea', 19, 'goddess of calm seas', true, 33);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 0, '198.53 million');
INSERT INTO public.planet VALUES (2, 'Venus', 1, 0, '256.79 million');
INSERT INTO public.planet VALUES (3, 'Earth', 1, 1, 'n/a');
INSERT INTO public.planet VALUES (4, 'Mars', 1, 2, '98.499 million');
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 80, '610.49 million');
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 83, '1.4221 billion');
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 27, '2.7996 billion');
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 14, '4.357 billion');
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 5, '5.1931 billion');
INSERT INTO public.planet VALUES (10, 'Ceres', 1, 0, '459,833,317');
INSERT INTO public.planet VALUES (11, 'Haumea', 1, 2, '7,629,160,017');
INSERT INTO public.planet VALUES (12, 'Eris', 1, 1, '14,185,938,943');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 1, 'Milky Way', '550');
INSERT INTO public.star VALUES (2, 'Betelgeuse', 1, 'Milky Way', '643');
INSERT INTO public.star VALUES (3, 'Alpheratz', 2, 'Andromeda', '97');
INSERT INTO public.star VALUES (4, 'Almach', 2, 'Andromeda', '350');
INSERT INTO public.star VALUES (5, 'HD 33579', 3, 'Magellanic Clouds', '-3261.63');
INSERT INTO public.star VALUES (6, 'Alpha Trianguli Australis', 4, 'Triangulum', '391');
INSERT INTO public.star VALUES (7, 'Spica', 5, 'Virgo A', '260');
INSERT INTO public.star VALUES (8, 'Sirius', 6, 'Canis Major Dwarf', '8.6');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_mood_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_mood_id_seq', 22, true);


--
-- Name: myth_myth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.myth_myth_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name);


--
-- Name: myth myth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.myth
    ADD CONSTRAINT myth_pkey PRIMARY KEY (myth_id);


--
-- Name: myth myth_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.myth
    ADD CONSTRAINT myth_unique UNIQUE (name);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: myth myth_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.myth
    ADD CONSTRAINT myth_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

