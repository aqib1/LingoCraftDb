CREATE
DATABASE "lingo_craft"
    WITH OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

\c lingo_craft

CREATE TABLE public.user
(
    id uuid PRIMARY KEY,
    name character varying(255) NOT NULL,
    password varchar(255)       NOT NULL,
    email varchar(320)          NOT NULL,
    phone varchar(15)           NOT NULL,
    age integer                 NOT NULL,
    gender varchar(50)          NOT NULL,
    roleId integer              NOT NULL
);

CREATE TABLE public.role(
    id uuid PRIMARY KEY,
    rolePermissions varchar(255) NOT NULL,
    userId uuid NOT NULL
);

CREATE TABLE public.language_analysis(
    id uuid primary key,
    userId uuid NOT NULL,
    accumulatedContentScore int NOT NULL,
    positiveSentimentPercentage text NOT NULL,
    accumulatedContentSentimentScore text NOT NULL,
    contentSentimentAnalysisModels jsonb NOT NULL
);