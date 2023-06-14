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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(100) NOT NULL,
    meaning text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    year_discovered integer,
    constellation_id integer
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
    name character varying(100) NOT NULL,
    diameter_in_km integer,
    planet_id integer NOT NULL,
    year_discovered integer
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
    name character varying(100) NOT NULL,
    has_life boolean,
    year_discovered integer,
    diameter_in_km numeric(8,2),
    orbital_period_in_years numeric(8,2),
    rotation_period_in_days numeric(8,2),
    star_id integer,
    has_atmosphere boolean
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
    name character varying(100) NOT NULL,
    distance_in_light_years numeric(5,2),
    brightness_of_star numeric(5,2),
    aproval_date date,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Aquarius', 'Water-bearer');
INSERT INTO public.constellation VALUES (2, 'Aries', 'Ram');
INSERT INTO public.constellation VALUES (3, 'Capricornus', 'Sea goat');
INSERT INTO public.constellation VALUES (4, 'Andromeda', 'The loins');
INSERT INTO public.constellation VALUES (5, 'Corvus', 'Crow');
INSERT INTO public.constellation VALUES (6, 'Centaurus', 'Half man, half horse');
INSERT INTO public.constellation VALUES (8, 'Virgo', 'Virgin');
INSERT INTO public.constellation VALUES (9, 'Sculptor', 'Represents an sculptor');
INSERT INTO public.constellation VALUES (10, 'Sagitarius', 'It represent a centaurus archer');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Doughter of the king of Ethiopia', NULL, 4);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 'It looks like a pair of insect Antennae', NULL, 5);
INSERT INTO public.galaxy VALUES (3, 'Backward', 'It seem to rotate in opposite  direction', NULL, 6);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Its located in the Centaurus Constellation', NULL, 6);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'It looks like a hut', NULL, 8);
INSERT INTO public.galaxy VALUES (6, 'Sculptor', 'Its located in the Sculptor Constellation', NULL, 9);
INSERT INTO public.galaxy VALUES (7, 'Milky way', 'We are  here', NULL, 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 852, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Titan', 852, 2, 1659);
INSERT INTO public.moon VALUES (3, 'Europa', 8532, 3, 1610);
INSERT INTO public.moon VALUES (4, 'Rhea', 8532, 4, 1672);
INSERT INTO public.moon VALUES (5, 'Dione', 785, 4, 1686);
INSERT INTO public.moon VALUES (6, 'Thethys', 5635, 4, 1686);
INSERT INTO public.moon VALUES (7, 'Callisto', 5635, 3, 1686);
INSERT INTO public.moon VALUES (8, 'Ganimede', 5225, 3, 1686);
INSERT INTO public.moon VALUES (9, 'Oberon', 5225, 5, 1686);
INSERT INTO public.moon VALUES (10, 'Mimas', 5225, 4, 1686);
INSERT INTO public.moon VALUES (11, 'Enceladus', 5225, 4, 1686);
INSERT INTO public.moon VALUES (12, 'Triton', 5225, 9, 1856);
INSERT INTO public.moon VALUES (13, 'Phobos', 5225, 2, 1856);
INSERT INTO public.moon VALUES (14, 'Deimos', 5225, 2, 1856);
INSERT INTO public.moon VALUES (15, 'Ariel', 5225, 5, 1856);
INSERT INTO public.moon VALUES (16, 'Umbriel', 5225, 5, 1856);
INSERT INTO public.moon VALUES (17, 'Phoebe', 5225, 4, 1856);
INSERT INTO public.moon VALUES (18, 'Amalthea', 5225, 3, 1856);
INSERT INTO public.moon VALUES (19, 'Hyperion', 5225, 4, 1856);
INSERT INTO public.moon VALUES (20, 'Io', 5225, 3, 1856);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, NULL, 12742.00, 365.00, 1.00, 9, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', false, 1543, 6792.00, 1.03, 686.20, 9, NULL);
INSERT INTO public.planet VALUES (3, 'Jupiter', false, 1543, 142984.00, 0.41, 4328.90, 9, NULL);
INSERT INTO public.planet VALUES (4, 'Saturn', false, 1543, 120536.00, 0.45, 10752.90, 9, NULL);
INSERT INTO public.planet VALUES (5, 'Uranus', false, 1781, 51118.00, 0.71, 30660.00, 9, NULL);
INSERT INTO public.planet VALUES (6, 'Venus', false, 1543, 12104.00, -0.01, 225.00, 9, NULL);
INSERT INTO public.planet VALUES (7, 'Pluton', false, 1543, 132104.00, 155.00, 2235.00, 9, NULL);
INSERT INTO public.planet VALUES (8, 'Mercury', false, 1543, 32104.00, 55.00, 225.00, 9, NULL);
INSERT INTO public.planet VALUES (9, 'Neptune', false, 1543, 32104.00, 255.00, 34225.00, 9, NULL);
INSERT INTO public.planet VALUES (10, 'HD 209458 b', false, 1543, 32104.00, 1255.00, 39745.00, 5, NULL);
INSERT INTO public.planet VALUES (11, 'J1407b', false, NULL, 32104.00, 12535.00, 339745.00, 4, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler 438b', false, NULL, 332104.00, 12535.00, 339745.00, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Sadalsuud', 612.00, 2.90, '2016-08-21', 7);
INSERT INTO public.star VALUES (4, 'Hamal', 66.00, 2.01, '2016-07-20', 7);
INSERT INTO public.star VALUES (5, 'Arcturus', 37.00, 0.05, '2016-06-30', 7);
INSERT INTO public.star VALUES (6, 'Deneb Algedi', 39.00, 2.85, '2017-02-01', 7);
INSERT INTO public.star VALUES (7, 'Aldebaran', 65.23, 0.85, '2016-06-30', 7);
INSERT INTO public.star VALUES (8, 'Diphda', 96.22, 2.04, '2016-08-21', 7);
INSERT INTO public.star VALUES (9, 'Sun', 0.00, 100.00, NULL, 7);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: constellation name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_plannet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_plannet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: galaxy galaxy_constellation_constellation_id_constellation_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_constellation_id_constellation_id_fk FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: planet planet_star_star_id_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_star_id_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_galaxy_id_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_galaxy_id_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
