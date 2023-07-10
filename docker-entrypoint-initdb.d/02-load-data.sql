-- LOAD DATA
INSERT INTO lagen(uid, anbaugebiet, ort, fläche_ha, ausrichtung_kard, höhe_m, neigung_p, rebsorte, boden, sondermerkmal)
VALUES
    ('aulerde', 'rheinhessen', 'westhofen', 8.38, '{"s"}', '[90, 100]', '[10, 15]', '{"riesling"}', '{"tonmergel", "kalkstein", "löss-lehm"}', '{"windschutz_west"}'),
    ('brudersberg', 'rheinhessen', 'nierstein', 1.19, '{"s"}', '[90, 90]', '[70, 70]', '{"riesling"}', '{"roter_schiefer"}', '{"wasserspiegeleffekt", "windschutz_nord", "rhein"}'),
    ('brunnenhäuschen', 'rheinhessen', 'westhofen', 13.05, '{"s"}', '[180, 240]', '[20, 20]', '{"riesling", "spätburgunder"}', '{"tonmergel", "kalkstein", "eisenoxid"}', null),
    ('bürgel', 'rheinhessen', 'flörsheim-dalsheim', 7.29, '{"s", "o"}', '[150, 180]', '[10, 30]', '{"spätburgunder"}', '{"muschelkalk"}', '{"bodenrisse"}'),
    ('burgweg', 'rheinhessen', 'bodenheim', 5.24, '{"s", "o"}', '[100, 100]', '[20, 20]', '{"spätburgunder"}', '{"lehmiger_sand"}', '{"mulden"}'),
    ('falkenberg', 'rheinhessen', 'dienheim', 2.82, '{"o"}', '[140, 160]', '[30, 30]', '{"riesling"}', '{"kalkhaltiger_mergel", "löss"}', '{"tiefe_verwurzelung", "wasserspeicher", "windschutz_west"}'),
    ('frauenberg', 'rheinhessen', 'nieder-flörsheim', 17.68, '{"s", "so"}', '[190, 200]', '[40, 40]', '{"riesling", "spätburgunder"}', '{"kalksteinfels", "löss", "mergel"}', '{"windig"}'), 
    ('geiersberg', 'rheinhessen', 'dittelsheim', 8.37, '{"s"}', '[190, 210]', '[5, 10]', '{"riesling"}', '{"kalkhaltiger_lehm", "mergel"}', '{"tiefe_verwurzelung"}'),
    ('glöck', 'rheinhessen', 'nierstein', 1.96, '{"s", "so"}', '[80, 80]', '[30, 30]', '{"riesling", "spätburgunder"}', '{"löss-lehm"}', '{"wasserspiegeleffekt"}'),
    ('heerkretz', 'rheinhessen', 'siefersheim', 17.26, '{"so", "sw"}', '[180, 280]', '[30, 80]', '{"riesling"}', '{"rhyolith"}', '{"mulden", "felsig"}'),
    ('herrenberg', 'rheinhessen', 'oppenheim', 39.29, '{"s", "o"}', '[140, 160]', '[35, 35]', '{"riesling"}', '{"kalkhaltiger_mergel"}', '{"windschutz_west"}'),
    ('hipping', 'rheinhessen', 'nierstein', 12.28, '{"o", "so"}', '[80, 174]', '[60, 120]', '{"riesling"}', '{"roter_schiefer"}', '{"wärmeaufnahme", "wasserspiegeleffekt", "rhein"}'),
    ('höllberg', 'rheinhessen', 'siefersheim', 7.31, '{"so", "s"}', '[150, 220]', '[20, 50]', '{"riesling"}', '{"rhyolith"}', '{"windschutz_west"}'),
    ('horn', 'rheinhessen', 'ingelheim', 13.23, '{"w"}', '[250, 250]', '[20, 30]', '{"spätburgunder"}', '{"steiniger_lehm", "kalkstein", "rendzina"}', '{"rheintal", "vorgebirge"}'),
    ('hubacker', 'rheinhessen', 'flörsheim-dalsheim', 3.65, '{"s", "o"}', '[170, 200]', '[25, 30]', '{"riesling"}', '{"kalksteinfels"}', '{"regenschatten", "windschutz_west"}'),
    ('kirchberg', 'rheinhessen', 'bingen', 17.29, '{"so", "o"}', '[100, 180]', '[10, 30]', '{"riesling"}', '{"quarzit", "sandiger_lehm"}', '{"windig", "rhein"}'),
    ('kirchenstück', 'rheinhessen', 'hohen-sülzen', 6.71, '{"s", "so"}', '[150, 150]', '[15, 15]', '{"riesling", "spätburgunder"}', '{"kalkstein", "löss", "lehm"}', null),
    ('kirchspiel', 'rheinhessen', 'westhofen', 16.56, '{"o", "so"}', '[150, 150]', '[20, 35]', '{"riesling"}', '{"tonmergel", "kalkstein"}', '{"hügelkette", "windschutz_west"}'),
    ('kloppberg', 'rheinhessen', 'dittelsheim', 8.27, '{"o"}', '[225, 280]', '[10, 30]', '{"riesling"}', '{"kalkhaltiger_lehm", "mergel"}', null),
    ('kranzberg', 'rheinhessen', 'nierstein', 0.79, '{"o", "so"}', '[125, 129]', '[20, 20]', '{"spätburgunder"}', '{"kalkhaltiger_löss"}', '{"wasserspiegeleffekt", "rhein"}'),
    ('kreuz', 'rheinhessen', 'oppenheim', 9.15, '{"s", "o"}', '[120, 140]', '[30, 30]', '{"spätburgunder"}', '{"kalkhaltiger_mergel"}', null),
    ('leckerberg', 'rheinhessen', 'dittelsheim', 11.09, '{"s"}', '[185, 200]', '[5, 30]', '{"riesling"}', '{"kalkhaltiger_lehm", "löss", "mergel"}', '{"terrassen"}'),
    ('liebfrauenstift-kirchenstück', 'rheinhessen', 'worms', 3.80, '{"n", "s"}', '[90, 100]', '[0, 0]', '{"riesling"}', '{"kiesiger_lehm"}', '{"warm", "mauer", "rhein"}'),
    ('morstein', 'rheinhessen', 'westhofen', 24.04, '{"s"}', '[180, 240]', '[20, 25]', '{"riesling", "spätburgunder"}', '{"tonmergel", "kalkstein"}', '{"viele_grundwasser"}'),
    ('ölberg', 'rheinhessen', 'nierstein', 11.32, '{"s", "so"}', '[80, 170]', '[65, 120]', '{"riesling"}', '{"roter_schiefer"}', '{"bodenrisse", "windig", "rhein"}'),
    ('orbel', 'rheinhessen', 'nierstein', 9.06, '{"s", "so"}', '[99, 165]', '[70, 90]', '{"riesling"}', '{"roter_schiefer"}', '{"rhein"}'),
    ('pares', 'rheinhessen', 'ingelheim', 10.04, '{"w"}', '[250, 250]', '[20, 20]', '{"spätburgunder"}', '{"steiniger_lehm", "kalkstein", "rendzina"}', '{"rheintal", "vorgebirge"}'),
    ('paterberg', 'rheinhessen', 'nierstein', 0.72, '{"no"}', '[121, 176]', '[20, 20]', '{"spätburgunder"}', '{"kalkhaltiger_mergel"}', '{"rhein"}'),
    ('pettenthal', 'rheinhessen', 'nierstein', 20.62, '{"o", "so"}', '[90, 170]', '[70, 100]', '{"riesling"}', '{"roter_schiefer"}', '{"wasserspiegeleffekt", "windschutz_west", "rhein"}'),
    ('rothenberg', 'rheinhessen', 'nierstein', 8.38, '{"o", "so"}', '[90, 140]', '[75, 120]', '{"riesling"}', '{"roter_tonschiefer"}', '{"wasserspiegeleffekt", "windschutz_west", "rhein"}'),
    ('sackträger', 'rheinhessen', 'oppenheim', 16.98, '{"s", "o"}', '[120, 140]', '[25, 30]', '{"riesling"}', '{"kalkhaltiger_mergel", "löss"}', '{"warm", "windschutz_west"}'),
    ('scharlachberg', 'rheinhessen', 'bingen', 31.73, '{"s", "so"}', '[100, 220]', '[20, 50]', '{"riesling"}', '{"quarzitschiefer", "sandiger_lehm", "eisenoxid"}', '{"felsig", "nahe"}'),
    ('schloss_westerhaus', 'rheinhessen', 'ingelheim', 12.03, '{"o", "so"}', '[160, 240]', '[20, 50]', '{"riesling", "spätburgunder"}', '{"mergeliger_kalkstein", "steiniger_lehm", "lehmiger_ton"}', '{"windschutz_west"}'),
    ('tafelstein', 'rheinhessen', 'dienheim', 14.58, '{"o"}', '[120, 140]', '[10, 10]', '{"riesling"}', '{"löss", "kalkhaltiger_mergel"}', '{"wasserspeicher"}'),
    ('zehnmorgen', 'rheinhessen', 'nierstein', 1.21, '{"o"}', '[94, 124]', '[20, 30]', '{"riesling"}', '{"kalkhaltiger_mergel"}', '{"wasserspiegeleffekt", "rhein"}'),
    ('zellerweg_am_schwarzen_herrgott', 'rheinhessen', 'mölsheim', 11.00, '{"s", "so"}', '[170, 250]', '[40, 40]', '{"riesling"}', '{"kalkstein"}', '{"tagesreichweite", "windig"}')
;

-- LOAD DATA
INSERT INTO weine(uid, vdp_weingut, lage_uid, rebsorte, bezeichnung, sonderbezeichnung, sonderparezelle, ist_versteigerung, inhalt_l, jahrgang_aktuell)
VALUES
    ('bdb_falk', 'brüder_dr_becker', 'falkenberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('bdb_taf', 'brüder_dr_becker', 'tafelstein', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('bdb_taf_aus', 'brüder_dr_becker', 'tafelstein', 'riesling', 'auslese', null, null, false, 0.75, 2021),
    ('bs_frau', 'battenfeld_spanier', 'frauenberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('bs_kirch', 'battenfeld_spanier', 'kirchenstück', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('bs_kirch_spb', 'battenfeld_spanier', 'kirchenstück', 'spätburgunder', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('bs_zell', 'battenfeld_spanier', 'zellerweg_am_schwarzen_herrgott', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('bs_zell_aus', 'battenfeld_spanier', 'zellerweg_am_schwarzen_herrgott', 'riesling', 'auslese', null, null, false, 0.75, 2017),
    ('gun_hipp', 'gunderloch', 'hipping', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('gun_pett', 'gunderloch', 'pettenthal', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('gun_roth', 'gunderloch', 'rothenberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('gun_roth_kab', 'gunderloch', 'rothenberg', 'riesling', 'kabinett', null, null, false, 0.75, 2021),
    ('gun_roth_spät', 'gunderloch', 'rothenberg', 'riesling', 'spätlese', null, null, false, 0.75, 2021),
    ('gutz_brunn_spb', 'gutzler', 'brunnenhäuschen', 'spätburgunder', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('gutz_lieb', 'gutzler', 'liebfrauenstift-kirchenstück', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('gutz_mor', 'gutzler', 'morstein', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('gutz_mor_spb', 'gutzler', 'morstein', 'spätburgunder', 'grosses_gewächs', null, null, false, 0.75, 2019),
    ('jn_horn', 'j_neus', 'horn', 'spätburgunder', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('jn_par', 'j_neus', 'pares', 'spätburgunder', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('kell_brunn', 'keller', 'brunnenhäuschen', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('kell_bürg', 'keller', 'bürgel', 'spätburgunder', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('kell_frau_spb', 'keller', 'frauenberg', 'spätburgunder', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('kell_hipp', 'keller', 'hipping', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('kell_hub', 'keller', 'hubacker', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('kell_kirch', 'keller', 'kirchspiel', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('kell_mor', 'keller', 'morstein', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('kell_mor_spb', 'keller', 'morstein', 'spätburgunder', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('kell_pett', 'keller', 'pettenthal', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('kfg_aul', 'kf_groebe', 'aulerde', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2018),
    ('kfg_aul_aus', 'kf_groebe', 'aulerde', 'riesling', 'auslese', null, null, false, 0.75, 2017),
    ('kfg_kirch', 'kf_groebe', 'kirchspiel', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2018),
    ('kfg_kirch_gr', 'kf_groebe', 'kirchspiel', 'riesling', 'grosse_lage', 'grande_réserve', null, true, 0.75, 2014),
    ('kfg_kirch_kab', 'kf_groebe', 'kirchspiel', 'riesling', 'kabinett', null, null, true, 0.75, 2019),
    ('kfg_kirch_spät', 'kf_groebe', 'kirchspiel', 'riesling', 'spätlese', null, null, false, 0.75, 2019),
    ('kg_hipp', 'kühling-gillot', 'hipping', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('kg_kreuz', 'kühling-gillot', 'kreuz', 'spätburgunder', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('kg_öl', 'kühling-gillot', 'ölberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('kg_pett', 'kühling-gillot', 'pettenthal', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('kr_schar', 'kruger-rumpf', 'scharlachberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('ps_fels', 'prinz_salm', 'felseneck', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2019),
    ('ps_fels_jub', 'prinz_salm', 'felseneck', 'riesling', 'grosse_lage', 'jubiläumswein', null, false, 0.75, 2018),
    ('ps_fels_kab', 'prinz_salm', 'felseneck', 'riesling', 'kabinett', null, null, false, 0.75, 2021),
    ('ps_fels_spät', 'prinz_salm', 'felseneck', 'riesling', 'spätlese', null, null, false, 0.75, 2018),
    ('ps_jo', 'prinz_salm', 'johannisberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2016),
    ('ps_kirch', 'prinz_salm', 'kirchberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('ps_schar', 'prinz_salm', 'scharlachberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2018),
    ('ps_schar_spät', 'prinz_salm', 'scharlachberg', 'riesling', 'spätlese', null, null, false, 0.75, 2018),
    ('rapp_herr', 'rappenhof', 'herrenberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('rapp_herr_spät', 'rappenhof', 'herrenberg', 'riesling', 'spätlese', null, null, false, 0.75, 2020),
    ('rapp_öl', 'rappenhof', 'ölberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('rapp_pett', 'rappenhof', 'pettenthal', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('rapp_pett_kab', 'rappenhof', 'pettenthal', 'riesling', 'kabinett', null, null, false, 0.75, 2020),
    ('sch_fuchs', 'schätzel', 'hipping', 'riesling', 'grosse_lage', null, 'fuchs', false, 0.75, 2020),
    ('sch_hipp', 'schätzel', 'hipping', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('sch_öl', 'schätzel', 'ölberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('sch_pett', 'schätzel', 'pettenthal', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('sch_pett_kab', 'schätzel', 'pettenthal', 'riesling', 'kabinett', null, null, true, 0.75, 2019),
    ('sta_brud', 'st_antony', 'brudersberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('sta_pat', 'st_antony', 'paterberg', 'spätburgunder', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('sta_pett', 'st_antony', 'pettenthal', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('sta_pett_kab_mild', 'st_antony', 'pettenthal', 'riesling', 'kabinett', 'mild', null, false, 0.75, 2021),
    ('sw_sw', 'schloss_westerhaus', 'schloss_westerhaus', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('sw_sw_spb', 'schloss_westerhaus', 'schloss_westerhaus', 'spätburgunder', 'grosses_gewächs', null, null, false, 0.75, 2020),
    ('swo_glöck', 'staatliche_weinbaudomäne_oppenheim', 'glöck', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('swo_herr_aus', 'staatliche_weinbaudomäne_oppenheim', 'herrenberg', 'riesling', 'auslese', null, null, false, 0.5, 2019),
    ('swo_öl', 'staatliche_weinbaudomäne_oppenheim', 'ölberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('swo_öl_spät', 'staatliche_weinbaudomäne_oppenheim', 'ölberg', 'riesling', 'spätlese', null, null, false, 0.75, 2021),
    ('swo_pett', 'staatliche_weinbaudomäne_oppenheim', 'pettenthal', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('swo_roth', 'staatliche_weinbaudomäne_oppenheim', 'rothenberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('wg_schar', 'wagner-stempel', 'scharlachberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('wi_gei', 'winter', 'geiersberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2019),
    ('wi_klopp', 'winter', 'kloppberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2019),
    ('wi_leck', 'winter', 'leckerberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2019),
    ('witt_aul', 'wittmann', 'aulerde', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('witt_brunn', 'wittmann', 'brunnenhäuschen', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('witt_brunn_aus', 'wittmann', 'brunnenhäuschen', 'riesling', 'auslese', null, null, false, 0.5, 2022),
    ('witt_kirch', 'wittmann', 'kirchspiel', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2017),
    ('witt_la_borne_alt_reb', 'wittmann', 'morstein', 'riesling', 'grosse_lage', 'alte_reben', 'la_borne', true, 0.75, 2021),
    ('witt_mor', 'wittmann', 'morstein', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('witt_mor_aus', 'wittmann', 'morstein', 'riesling', 'auslese', null, null, false, 0.5, 2022),
    ('ws_heer', 'wagner-stempel', 'heerkretz', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('ws_heer_spb', 'wagner-stempel', 'heerkretz', 'spätburgunder', 'grosses_gewächs', null, null, false, 0.75, 2021),
    ('ws_höll', 'wagner-stempel', 'höllberg', 'riesling', 'grosses_gewächs', null, null, false, 0.75, 2021)
;
