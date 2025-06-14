PRAGMA foreign_keys = OFF;
BEGIN TRANSACTION;

-- Insert all 151 original Pokémon (Gen I types)
INSERT INTO pokemon (id, name, type) VALUES (1, 'Bulbasaur', 'Grass/Poison');
INSERT INTO pokemon (id, name, type) VALUES (2, 'Ivysaur', 'Grass/Poison');
INSERT INTO pokemon (id, name, type) VALUES (3, 'Venusaur', 'Grass/Poison');
INSERT INTO pokemon (id, name, type) VALUES (4, 'Charmander', 'Fire');
INSERT INTO pokemon (id, name, type) VALUES (5, 'Charmeleon', 'Fire');
INSERT INTO pokemon (id, name, type) VALUES (6, 'Charizard', 'Fire/Flying');
INSERT INTO pokemon (id, name, type) VALUES (7, 'Squirtle', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (8, 'Wartortle', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (9, 'Blastoise', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (10, 'Caterpie', 'Bug');
INSERT INTO pokemon (id, name, type) VALUES (11, 'Metapod', 'Bug');
INSERT INTO pokemon (id, name, type) VALUES (12, 'Butterfree', 'Bug/Flying');
INSERT INTO pokemon (id, name, type) VALUES (13, 'Weedle', 'Bug/Poison');
INSERT INTO pokemon (id, name, type) VALUES (14, 'Kakuna', 'Bug/Poison');
INSERT INTO pokemon (id, name, type) VALUES (15, 'Beedrill', 'Bug/Poison');
INSERT INTO pokemon (id, name, type) VALUES (16, 'Pidgey', 'Normal/Flying');
INSERT INTO pokemon (id, name, type) VALUES (17, 'Pidgeotto', 'Normal/Flying');
INSERT INTO pokemon (id, name, type) VALUES (18, 'Pidgeot', 'Normal/Flying');
INSERT INTO pokemon (id, name, type) VALUES (19, 'Rattata', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (20, 'Raticate', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (21, 'Spearow', 'Normal/Flying');
INSERT INTO pokemon (id, name, type) VALUES (22, 'Fearow', 'Normal/Flying');
INSERT INTO pokemon (id, name, type) VALUES (23, 'Ekans', 'Poison');
INSERT INTO pokemon (id, name, type) VALUES (24, 'Arbok', 'Poison');
INSERT INTO pokemon (id, name, type) VALUES (25, 'Pikachu', 'Electric');
INSERT INTO pokemon (id, name, type) VALUES (26, 'Raichu', 'Electric');
INSERT INTO pokemon (id, name, type) VALUES (27, 'Sandshrew', 'Ground');
INSERT INTO pokemon (id, name, type) VALUES (28, 'Sandslash', 'Ground');
INSERT INTO pokemon (id, name, type) VALUES (29, 'Nidoran♀', 'Poison');
INSERT INTO pokemon (id, name, type) VALUES (30, 'Nidorina', 'Poison');
INSERT INTO pokemon (id, name, type) VALUES (31, 'Nidoqueen', 'Poison/Ground');
INSERT INTO pokemon (id, name, type) VALUES (32, 'Nidoran♂', 'Poison');
INSERT INTO pokemon (id, name, type) VALUES (33, 'Nidorino', 'Poison');
INSERT INTO pokemon (id, name, type) VALUES (34, 'Nidoking', 'Poison/Ground');
INSERT INTO pokemon (id, name, type) VALUES (35, 'Clefairy', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (36, 'Clefable', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (37, 'Vulpix', 'Fire');
INSERT INTO pokemon (id, name, type) VALUES (38, 'Ninetales', 'Fire');
INSERT INTO pokemon (id, name, type) VALUES (39, 'Jigglypuff', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (40, 'Wigglytuff', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (41, 'Zubat', 'Poison/Flying');
INSERT INTO pokemon (id, name, type) VALUES (42, 'Golbat', 'Poison/Flying');
INSERT INTO pokemon (id, name, type) VALUES (43, 'Oddish', 'Grass/Poison');
INSERT INTO pokemon (id, name, type) VALUES (44, 'Gloom', 'Grass/Poison');
INSERT INTO pokemon (id, name, type) VALUES (45, 'Vileplume', 'Grass/Poison');
INSERT INTO pokemon (id, name, type) VALUES (46, 'Paras', 'Bug/Grass');
INSERT INTO pokemon (id, name, type) VALUES (47, 'Parasect', 'Bug/Grass');
INSERT INTO pokemon (id, name, type) VALUES (48, 'Venonat', 'Bug/Poison');
INSERT INTO pokemon (id, name, type) VALUES (49, 'Venomoth', 'Bug/Poison');
INSERT INTO pokemon (id, name, type) VALUES (50, 'Diglett', 'Ground');
INSERT INTO pokemon (id, name, type) VALUES (51, 'Dugtrio', 'Ground');
INSERT INTO pokemon (id, name, type) VALUES (52, 'Meowth', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (53, 'Persian', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (54, 'Psyduck', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (55, 'Golduck', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (56, 'Mankey', 'Fighting');
INSERT INTO pokemon (id, name, type) VALUES (57, 'Primeape', 'Fighting');
INSERT INTO pokemon (id, name, type) VALUES (58, 'Growlithe', 'Fire');
INSERT INTO pokemon (id, name, type) VALUES (59, 'Arcanine', 'Fire');
INSERT INTO pokemon (id, name, type) VALUES (60, 'Poliwag', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (61, 'Poliwhirl', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (62, 'Poliwrath', 'Water/Fighting');
INSERT INTO pokemon (id, name, type) VALUES (63, 'Abra', 'Psychic');
INSERT INTO pokemon (id, name, type) VALUES (64, 'Kadabra', 'Psychic');
INSERT INTO pokemon (id, name, type) VALUES (65, 'Alakazam', 'Psychic');
INSERT INTO pokemon (id, name, type) VALUES (66, 'Machop', 'Fighting');
INSERT INTO pokemon (id, name, type) VALUES (67, 'Machoke', 'Fighting');
INSERT INTO pokemon (id, name, type) VALUES (68, 'Machamp', 'Fighting');
INSERT INTO pokemon (id, name, type) VALUES (69, 'Bellsprout', 'Grass/Poison');
INSERT INTO pokemon (id, name, type) VALUES (70, 'Weepinbell', 'Grass/Poison');
INSERT INTO pokemon (id, name, type) VALUES (71, 'Victreebel', 'Grass/Poison');
INSERT INTO pokemon (id, name, type) VALUES (72, 'Tentacool', 'Water/Poison');
INSERT INTO pokemon (id, name, type) VALUES (73, 'Tentacruel', 'Water/Poison');
INSERT INTO pokemon (id, name, type) VALUES (74, 'Geodude', 'Rock/Ground');
INSERT INTO pokemon (id, name, type) VALUES (75, 'Graveler', 'Rock/Ground');
INSERT INTO pokemon (id, name, type) VALUES (76, 'Golem', 'Rock/Ground');
INSERT INTO pokemon (id, name, type) VALUES (77, 'Ponyta', 'Fire');
INSERT INTO pokemon (id, name, type) VALUES (78, 'Rapidash', 'Fire');
INSERT INTO pokemon (id, name, type) VALUES (79, 'Slowpoke', 'Water/Psychic');
INSERT INTO pokemon (id, name, type) VALUES (80, 'Slowbro', 'Water/Psychic');
INSERT INTO pokemon (id, name, type) VALUES (81, 'Magnemite', 'Electric');
INSERT INTO pokemon (id, name, type) VALUES (82, 'Magneton', 'Electric');
INSERT INTO pokemon (id, name, type) VALUES (83, 'Farfetch''d', 'Normal/Flying');
INSERT INTO pokemon (id, name, type) VALUES (84, 'Doduo', 'Normal/Flying');
INSERT INTO pokemon (id, name, type) VALUES (85, 'Dodrio', 'Normal/Flying');
INSERT INTO pokemon (id, name, type) VALUES (86, 'Seel', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (87, 'Dewgong', 'Water/Ice');
INSERT INTO pokemon (id, name, type) VALUES (88, 'Grimer', 'Poison');
INSERT INTO pokemon (id, name, type) VALUES (89, 'Muk', 'Poison');
INSERT INTO pokemon (id, name, type) VALUES (90, 'Shellder', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (91, 'Cloyster', 'Water/Ice');
INSERT INTO pokemon (id, name, type) VALUES (92, 'Gastly', 'Ghost/Poison');
INSERT INTO pokemon (id, name, type) VALUES (93, 'Haunter', 'Ghost/Poison');
INSERT INTO pokemon (id, name, type) VALUES (94, 'Gengar', 'Ghost/Poison');
INSERT INTO pokemon (id, name, type) VALUES (95, 'Onix', 'Rock/Ground');
INSERT INTO pokemon (id, name, type) VALUES (96, 'Drowzee', 'Psychic');
INSERT INTO pokemon (id, name, type) VALUES (97, 'Hypno', 'Psychic');
INSERT INTO pokemon (id, name, type) VALUES (98, 'Krabby', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (99, 'Kingler', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (100, 'Voltorb', 'Electric');
INSERT INTO pokemon (id, name, type) VALUES (101, 'Electrode', 'Electric');
INSERT INTO pokemon (id, name, type) VALUES (102, 'Exeggcute', 'Grass/Psychic');
INSERT INTO pokemon (id, name, type) VALUES (103, 'Exeggutor', 'Grass/Psychic');
INSERT INTO pokemon (id, name, type) VALUES (104, 'Cubone', 'Ground');
INSERT INTO pokemon (id, name, type) VALUES (105, 'Marowak', 'Ground');
INSERT INTO pokemon (id, name, type) VALUES (106, 'Hitmonlee', 'Fighting');
INSERT INTO pokemon (id, name, type) VALUES (107, 'Hitmonchan', 'Fighting');
INSERT INTO pokemon (id, name, type) VALUES (108, 'Lickitung', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (109, 'Koffing', 'Poison');
INSERT INTO pokemon (id, name, type) VALUES (110, 'Weezing', 'Poison');
INSERT INTO pokemon (id, name, type) VALUES (111, 'Rhyhorn', 'Ground/Rock');
INSERT INTO pokemon (id, name, type) VALUES (112, 'Rhydon', 'Ground/Rock');
INSERT INTO pokemon (id, name, type) VALUES (113, 'Chansey', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (114, 'Tangela', 'Grass');
INSERT INTO pokemon (id, name, type) VALUES (115, 'Kangaskhan', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (116, 'Horsea', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (117, 'Seadra', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (118, 'Goldeen', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (119, 'Seaking', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (120, 'Staryu', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (121, 'Starmie', 'Water/Psychic');
INSERT INTO pokemon (id, name, type) VALUES (122, 'Mr. Mime', 'Psychic');
INSERT INTO pokemon (id, name, type) VALUES (123, 'Scyther', 'Bug/Flying');
INSERT INTO pokemon (id, name, type) VALUES (124, 'Jynx', 'Ice/Psychic');
INSERT INTO pokemon (id, name, type) VALUES (125, 'Electabuzz', 'Electric');
INSERT INTO pokemon (id, name, type) VALUES (126, 'Magmar', 'Fire');
INSERT INTO pokemon (id, name, type) VALUES (127, 'Pinsir', 'Bug');
INSERT INTO pokemon (id, name, type) VALUES (128, 'Tauros', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (129, 'Magikarp', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (130, 'Gyarados', 'Water/Flying');
INSERT INTO pokemon (id, name, type) VALUES (131, 'Lapras', 'Water/Ice');
INSERT INTO pokemon (id, name, type) VALUES (132, 'Ditto', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (133, 'Eevee', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (134, 'Vaporeon', 'Water');
INSERT INTO pokemon (id, name, type) VALUES (135, 'Jolteon', 'Electric');
INSERT INTO pokemon (id, name, type) VALUES (136, 'Flareon', 'Fire');
INSERT INTO pokemon (id, name, type) VALUES (137, 'Porygon', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (138, 'Omanyte', 'Rock/Water');
INSERT INTO pokemon (id, name, type) VALUES (139, 'Omastar', 'Rock/Water');
INSERT INTO pokemon (id, name, type) VALUES (140, 'Kabuto', 'Rock/Water');
INSERT INTO pokemon (id, name, type) VALUES (141, 'Kabutops', 'Rock/Water');
INSERT INTO pokemon (id, name, type) VALUES (142, 'Aerodactyl', 'Rock/Flying');
INSERT INTO pokemon (id, name, type) VALUES (143, 'Snorlax', 'Normal');
INSERT INTO pokemon (id, name, type) VALUES (144, 'Articuno', 'Ice/Flying');
INSERT INTO pokemon (id, name, type) VALUES (145, 'Zapdos', 'Electric/Flying');
INSERT INTO pokemon (id, name, type) VALUES (146, 'Moltres', 'Fire/Flying');
INSERT INTO pokemon (id, name, type) VALUES (147, 'Dratini', 'Dragon');
INSERT INTO pokemon (id, name, type) VALUES (148, 'Dragonair', 'Dragon');
INSERT INTO pokemon (id, name, type) VALUES (149, 'Dragonite', 'Dragon/Flying');
INSERT INTO pokemon (id, name, type) VALUES (150, 'Mewtwo', 'Psychic');
INSERT INTO pokemon (id, name, type) VALUES (151, 'Mew', 'Psychic');

COMMIT;