-- CREATE TYPE
DROP TYPE IF EXISTS lage CASCADE;
CREATE TYPE lage AS ENUM (
    'aulerde',
    'brudersberg',
    'brunnenhäuschen',
    'bürgel',
    'burgweg',
    'falkenberg',
	'felseneck',
    'frauenberg',
    'geiersberg',
    'glöck',
    'heerkretz',
    'herrenberg',
    'hipping',
    'höllberg',
    'horn',
    'hubacker',
	'johannisberg',
    'kirchberg',
    'kirchenstück',
    'kirchspiel',
    'kloppberg',
    'kranzberg',
    'kreuz',
    'leckerberg',
    'liebfrauenstift-kirchenstück',
    'morstein',
    'ölberg',
    'orbel',
    'pares',
    'paterberg',
    'pettenthal',
    'rothenberg',
    'sackträger',
    'scharlachberg',
    'schloss_westerhaus',
    'tafelstein',
    'zehnmorgen',
    'zellerweg_am_schwarzen_herrgott'
);

DROP TYPE IF EXISTS ort CASCADE;
CREATE TYPE ort AS ENUM (
    'bingen',
    'bodenheim',
    'dienheim',
    'dittelsheim',
    'flörsheim-dalsheim',
    'hohen-sülzen',
    'ingelheim',
    'mölsheim',
    'nieder-flörsheim',
    'nierstein',
    'oppenheim',
    'siefersheim',
    'westhofen',
    'worms'
);

DROP TYPE IF EXISTS anbaugebiet CASCADE;
CREATE TYPE anbaugebiet AS ENUM (
    'ahr',
    'baden',
    'franken',
    'hessische bergstraße',
    'mittelrhein',
    'mosel',
    'nahe',
    'pfalz',
    'rheingau',
    'rheinhessen',
    'saale-unstrut',
    'sachsen',
    'württemberg'
);

DROP TYPE IF EXISTS rebsorte CASCADE;
CREATE TYPE rebsorte AS ENUM (
    'chardonnay',
    'frühburgunder',
    'grauburgunder',
    'lemberger',
    'riesling',
    'silvaner',
    'spätburgunder',
    'traminer',
    'weißburgunder'
);

DROP TYPE IF EXISTS vdp_weingut CASCADE;
CREATE TYPE vdp_weingut AS ENUM (
    'brüder_dr_becker',
    'battenfeld_spanier',
    'gunderloch',
    'gutzler',
    'j_neus',
    'keller',
    'kf_groebe',
    'kühling-gillot',
    'kruger-rumpf',
    'prinz_salm',
    'rappenhof',
    'schätzel',
    'st_antony',
    'schloss_westerhaus',
    'staatliche_weinbaudomäne_oppenheim',
    'wagner-stempel',
    'winter',
    'wittmann'
);

DROP TYPE IF EXISTS ausrichtung_kard CASCADE;
CREATE TYPE ausrichtung_kard AS ENUM (
    'n',
    'no',
    'o',
    'so',
    's',
    'sw',
    'w',
    'nw'
);

DROP TYPE IF EXISTS bezeichnung CASCADE;
CREATE TYPE bezeichnung AS ENUM (
    'grosses_gewächs',
    'kabinett',
    'spätlese',
    'auslese',
    'beerenauslese',
    'trockenbeerenauslese',
    'eiswein',
    'grosse_lage'
);

-- CREATE TABLE
DROP TABLE IF EXISTS lagen;
CREATE TABLE lagen (
	uid lage PRIMARY KEY,
	anbaugebiet anbaugebiet,
	ort ort,
	fläche_ha NUMERIC,
	ausrichtung_kard ausrichtung_kard ARRAY,
	höhe_m int4range,
	neigung_p int4range,
	rebsorte rebsorte ARRAY,
	boden VARCHAR ARRAY,
	sondermerkmal VARCHAR ARRAY
);

DROP TABLE IF EXISTS weine;
CREATE TABLE weine (
    uid VARCHAR PRIMARY KEY,
    vdp_weingut vdp_weingut,
    lage_uid lage,
    rebsorte rebsorte,
    bezeichnung bezeichnung,
    sonderbezeichnung VARCHAR,
    sonderparzelle VARCHAR,
    ist_versteigerung BOOL,
    inhalt_l NUMERIC,
    jahrgang_aktuell INT
);

DROP TABLE IF EXISTS inventar;
CREATE TABLE inventar (
    wein_uid VARCHAR PRIMARY KEY,
    bestand INT,
    handlung_aktuell BOOL,
    karte_aktuell BOOL,
    einkaufspreis_eur NUMERIC(5,2),
    ab_hof_preis_eur NUMERIC(5,2),
    verkaufspreis_eur NUMERIC(5,2)
);
