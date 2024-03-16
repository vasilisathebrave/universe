--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: famous_inhabitants; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.famous_inhabitants (
    famous_inhabitants_id integer NOT NULL,
    description text,
    planet_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.famous_inhabitants OWNER TO freecodecamp;

--
-- Name: famous_inhabitants_person_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.famous_inhabitants_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.famous_inhabitants_person_id_seq OWNER TO freecodecamp;

--
-- Name: famous_inhabitants_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.famous_inhabitants_person_id_seq OWNED BY public.famous_inhabitants.famous_inhabitants_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    diameter_in_light_years integer
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
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    is_icy boolean,
    planet_id integer
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    description text,
    star_id integer
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
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
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
-- Name: famous_inhabitants famous_inhabitants_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.famous_inhabitants ALTER COLUMN famous_inhabitants_id SET DEFAULT nextval('public.famous_inhabitants_person_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: famous_inhabitants; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.famous_inhabitants VALUES (1, 'Blonde, whines a lot.', 11, 'Luke Skywalker');
INSERT INTO public.famous_inhabitants VALUES (2, 'Most based human of all time.', 1, 'Andrea Dworkin');
INSERT INTO public.famous_inhabitants VALUES (3, 'Little guy, big gun.', 3, 'Marvin the Martian');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 3000, 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', 152000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 4500, 'The galaxy we live in. Best galaxy of all time.', 875000);
INSERT INTO public.galaxy VALUES (3, 'A Galaxy Far, Far Away', 20000, 'Cool galaxy, lots of wars though.', 927000);
INSERT INTO public.galaxy VALUES (4, 'Mario Galaxy', 2700, 'Great music, difficult platforming.', 358000);
INSERT INTO public.galaxy VALUES (5, 'Galaxy Quest', 1300, 'Tim Allen left Home Improvement to do stuff like this?', 476000);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 500', 7000, 'A classic car if you do not  mind rolling down windows with a crank.', 663000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 'The one and only.', 5038, false, 1);
INSERT INTO public.moon VALUES (2, 'Coruscant I', 'Moon of Coruscant', 93878, false, 10);
INSERT INTO public.moon VALUES (3, 'Coruscant II', 'Moon of Coruscant', 29374, false, 10);
INSERT INTO public.moon VALUES (4, 'Tatooine', 'Moon of Tatooine', 83762, false, 11);
INSERT INTO public.moon VALUES (5, 'Io', 'Moon of Jupiter', 8374, false, 8);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Moon of Jupiter', 8473, true, 8);
INSERT INTO public.moon VALUES (7, 'Europa', 'Moon of Jupiter', 8374, true, 8);
INSERT INTO public.moon VALUES (8, 'Callisto', 'Moon of Jupiter', 3948, false, 8);
INSERT INTO public.moon VALUES (9, 'Amalthea', 'Moon of Jupiter', 3847, false, 8);
INSERT INTO public.moon VALUES (10, 'Naboo I', 'Moon of Naboo', 39487, false, 12);
INSERT INTO public.moon VALUES (11, 'Naboo II', 'Moon of Naboo', 39480, false, 12);
INSERT INTO public.moon VALUES (12, 'Naboo III', 'Moon of Naboo', 29384, true, 12);
INSERT INTO public.moon VALUES (13, 'Titan', 'Moon of Saturn', 2938, false, 5);
INSERT INTO public.moon VALUES (14, 'Enceladus', 'Moon of Saturn', 4875, false, 5);
INSERT INTO public.moon VALUES (15, 'Mimas', 'Moon of Saturn', 4857, false, 5);
INSERT INTO public.moon VALUES (16, 'Dione', 'Moon of Saturn', 3948, false, 5);
INSERT INTO public.moon VALUES (17, 'Iapetus', 'Moon of Saturn', 3958, false, 5);
INSERT INTO public.moon VALUES (18, 'Tethys', 'Moon of Saturn', 3948, false, 5);
INSERT INTO public.moon VALUES (19, 'Phobos', 'Moon of Mars', 3984, false, 3);
INSERT INTO public.moon VALUES (20, 'Deimos', 'Moon of Mars', 3937, false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 7589, true, 'AKA the Pale Blue Dot. Described by some as the best planet.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 3927, false, 'Gassy, but hot.', 1);
INSERT INTO public.planet VALUES (3, 'Mars', 2975, false, 'The Red Planet, a staple of 1950s sci-fi.', 1);
INSERT INTO public.planet VALUES (4, 'Uranus', 2973, false, 'The one with the funny name.', 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 2987, false, 'Most underrated movement in The Planets by Gustav Holst.', 1);
INSERT INTO public.planet VALUES (6, 'Pluto', 2890, false, 'Got demoted but we still love her.', 1);
INSERT INTO public.planet VALUES (7, 'Mercury', 2987, false, 'Quicksilver.', 1);
INSERT INTO public.planet VALUES (8, 'Jupiter', 2987, false, 'Has a big red spot that is actually an ancient dust storm.', 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 2089, false, 'I forgot about this one.', 1);
INSERT INTO public.planet VALUES (10, 'Coruscant', 93746, true, 'Formerly Coruscant, then Imperial City, then Coruscant again.', 16);
INSERT INTO public.planet VALUES (11, 'Tatooine', 73629, true, 'Lots of sand.', 8);
INSERT INTO public.planet VALUES (12, 'Naboo', 93745, true, 'A politically important planet with funny hairdos.', 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Known on Earth as the Sun.', 5000, 8257, 2);
INSERT INTO public.star VALUES (2, 'Canis Major', 'Bigger than Canis Minor.', 8049, 3827, 2);
INSERT INTO public.star VALUES (3, 'Canis Minor', 'Not as big as Canis Major.', 9827, 5749, 2);
INSERT INTO public.star VALUES (4, 'Aquila', 'Has a cool name.', 3047, 2817, 2);
INSERT INTO public.star VALUES (5, 'Corellia', 'One of the Core systems.', 20484, 28374, 3);
INSERT INTO public.star VALUES (6, 'Kuat', 'On the border between the Core and Colonies', 20488, 12973, 3);
INSERT INTO public.star VALUES (7, 'Ord Mantell', 'A Mid Rim system.', 30473, 37260, 3);
INSERT INTO public.star VALUES (8, 'Tatooine', 'A binary star system close to the Outer Rim.', 39274, 10174, 3);
INSERT INTO public.star VALUES (9, 'Hoth', 'The planets of Hoth are distant and icy.', 78923, 47626, 3);
INSERT INTO public.star VALUES (10, 'Naboo', 'A small system distant from the Core.', 20938, 30287, 3);
INSERT INTO public.star VALUES (11, 'Endor', 'Also has a planet named Endor.', 20934, 28163, 3);
INSERT INTO public.star VALUES (12, 'Malastare', 'A system in the Mid Rim.', 20384, 59782, 3);
INSERT INTO public.star VALUES (13, 'Yavin', 'An Outer Rim system.', 20894, 97263, 3);
INSERT INTO public.star VALUES (14, 'Ahch-To', 'A system deep in the Unknown Regions.', 30824, 93836, 3);
INSERT INTO public.star VALUES (15, 'Jakku', 'Closer to the Core than you would think for being the middle of nowhere.', 93726, 48763, 3);
INSERT INTO public.star VALUES (16, 'Coruscant', 'The jewel at the center of the galaxy.', 94873, 83726, 3);
INSERT INTO public.star VALUES (17, 'Nal Hutta', 'An economically important Outer Rim system.', 93847, 89387, 3);
INSERT INTO public.star VALUES (18, 'Kessel', 'The subject of a much-storied run.', 93873, 84633, 3);
INSERT INTO public.star VALUES (19, 'Bothawui', 'Bothawuise nuts, more like.', 83744, 82763, 3);
INSERT INTO public.star VALUES (20, 'Geonosis', 'Really close to Tatooine.', 93874, 87276, 3);
INSERT INTO public.star VALUES (21, 'Jedha', 'On the less populated side of the Galaxy.', 89376, 72634, 3);
INSERT INTO public.star VALUES (22, 'Dantooine', 'Beyond the Outer Rim.', 93874, 82762, 3);


--
-- Name: famous_inhabitants_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.famous_inhabitants_person_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 22, true);


--
-- Name: famous_inhabitants famous_inhabitants_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.famous_inhabitants
    ADD CONSTRAINT famous_inhabitants_name_key UNIQUE (name);


--
-- Name: famous_inhabitants famous_inhabitants_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.famous_inhabitants
    ADD CONSTRAINT famous_inhabitants_pkey PRIMARY KEY (famous_inhabitants_id);


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
-- Name: famous_inhabitants famous_inhabitants_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.famous_inhabitants
    ADD CONSTRAINT famous_inhabitants_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

