CREATE TABLE games (
game_id INT PRIMARY KEY AUTO_INCREMENT,
home_team_id INT,
visitor_team_id INT,
game_date_est DATETIME,
pts_home INT,
fg_pct_home DECIMAL,
ft_pct_home DECIMAL,
fg3_cpt_home DECIMAL,
ast_home INT,
reb_home INT,
pts_away INT,
fg_pct_away DECIMAL,
ft_pct_away DECIMAL,
fg3_pct_away DECIMAL,
ast_away INT,
reb_away INT,
home_team_wins INT,
FOREIGN KEY (home_team_id) REFERENCES teams (team_id),
FOREIGN KEY (visitor_team_id) REFERENCES teams (team_id)
);

CREATE TABLE games_details (
gd_id INT PRIMARY KEY AUTO_INCREMENT,
team_id INT,
game_id INT,
player_id INT,
team_abbreviation VARCHAR (255),
team_city VARCHAR (255),
player_name VARCHAR(255),
fgm INT,
fg_pct DECIMAL,
fg3m INT,
fg3_pct DECIMAL,
ftm INT,
ft_pct DECIMAL,
reb INT,
ast INT,
stl INT,
blk INT,
t_o INT,
pf INT,
pts INT,
FOREIGN KEY (team_id) REFERENCES teams (team_id),
FOREIGN KEY (game_id) REFERENCES games (game_id),
FOREIGN KEY (player_id) REFERENCES players (player_id)
);


INSERT INTO games (game_id, home_team_id, visitor_team_id, game_date_est, pts_home, fg_pct_home, ft_pct_home, fg3_cpt_home, ast_home, reb_home, pts_away, fg_pct_away, ft_pct_away, fg3_pct_away, ast_away, reb_away, home_team_wins) 
values
('21900895', '1610612766', '1610612749', '01/03/2020', '85', '0.354', '0.9', '0.229', '22', '47', '93', '0.402', '0.762', '0.226', '20', '61', '0'),
('21900896', '1610612750', '1610612742', '01/03/2020', '91', '0.364', '0.4', '0.31', '19', '57', '111', '0.468', '0.632', '0.275', '28', '56', '0'),
('21900897', '1610612746', '1610612755', '01/03/2020', '136', '0.592', '0.805', '0.542', '25', '37', '130', '0.505', '0.65', '0.488', '27', '37', '1'),
('21900898', '1610612743', '1610612761', '01/03/2020', '133', '0.566', '0.7', '0.5', '38', '41', '118', '0.461', '0.897', '0.263', '24', '36', '1'),
('21900899', '1610612758', '1610612765', '01/03/2020', '106', '0.407', '0.885', '0.257', '18', '51', '100', '0.413', '0.667', '0.429', '23', '42', '1'),
('21900900', '1610612740', '1610612747', '01/03/2020', '114', '0.421', '0.818', '0.219', '24', '52', '122', '0.515', '0.9', '0.371', '23', '36', '0'),
('21900901', '1610612744', '1610612764', '01/03/2020', '110', '0.472', '0.708', '0.321', '25', '52', '124', '0.488', '0.889', '0.667', '24', '34', '0'),
('21900887', '1610612752', '1610612741', '29/02/2020', '125', '0.553', '0.697', '0.4', '29', '50', '115', '0.461', '0.696', '0.486', '26', '33', '1'),
('21900888', '1610612737', '1610612757', '29/02/2020', '129', '0.548', '0.864', '0.429', '34', '36', '117', '0.5', '0.714', '0.286', '14', '42', '1'),
('21900889', '1610612748', '1610612751', '29/02/2020', '116', '0.451', '0.833', '0.368', '27', '45', '113', '0.465', '0.739', '0.364', '30', '44', '1'),
('21900890', '1610612739', '1610612754', '29/02/2020', '104', '0.482', '0.85', '0.227', '30', '36', '113', '0.54', '0.786', '0.348', '30', '38', '0'),
('21900891', '1610612763', '1610612747', '29/02/2020', '105', '0.453', '0.818', '0.323', '27', '51', '88', '0.409', '0.583', '0.25', '26', '45', '1'),
('21900892', '1610612738', '1610612745', '29/02/2020', '110', '0.39', '0.76', '0.31', '22', '54', '111', '0.418', '0.778', '0.273', '17', '53', '0'),
('21900893', '1610612759', '1610612753', '29/02/2020', '114', '0.524', '0.75', '0.452', '28', '31', '113', '0.488', '0.696', '0.405', '28', '41', '1'),
('21900894', '1610612756', '1610612744', '29/02/2020', '99', '0.41', '0.826', '0.414', '24', '40', '115', '0.471', '0.75', '0.3', '30', '49', '0'),
('21900877', '1610612753', '1610612750', '28/02/2020', '136', '0.541', '0.818', '0.3', '36', '54', '125', '0.484', '0.667', '0.386', '27', '33', '1'),
('21900878', '1610612737', '1610612751', '28/02/2020', '141', '0.515', '0.733', '0.487', '32', '52', '118', '0.457', '0.762', '0.391', '30', '38', '1'),
('21900879', '1610612761', '1610612766', '28/02/2020', '96', '0.347', '0.69', '0.233', '19', '45', '99', '0.436', '0.72', '0.433', '23', '58', '0'),
('21900880', '1610612748', '1610612742', '28/02/2020', '126', '0.519', '0.75', '0.486', '30', '40', '118', '0.476', '0.895', '0.42', '25', '35', '1'),
('21900881', '1610612763', '1610612758', '28/02/2020', '101', '0.429', '0.75', '0.267', '27', '52', '104', '0.418', '0.81', '0.289', '24', '47', '0'),
('21900882', '1610612749', '1610612760', '28/02/2020', '133', '0.5', '0.857', '0.467', '34', '66', '86', '0.363', '0.7', '0.171', '14', '36', '1'),
('21900883', '1610612740', '1610612739', '28/02/2020', '116', '0.545', '0.733', '0.391', '36', '49', '104', '0.453', '0.583', '0.355', '27', '34', '1'),
('21900884', '1610612756', '1610612765', '28/02/2020', '111', '0.6', '0.706', '0.391', '31', '38', '113', '0.489', '0.75', '0.406', '27', '31', '0'),
('21900885', '1610612762', '1610612764', '28/02/2020', '129', '0.494', '0.733', '0.514', '23', '54', '119', '0.459', '0.714', '0.378', '23', '41', '1'),
('21900886', '1610612746', '1610612743', '28/02/2020', '132', '0.539', '0.9', '0.462', '35', '46', '103', '0.451', '0.75', '0.36', '19', '39', '1'),
('21900873', '1610612755', '1610612752', '27/02/2020', '115', '0.495', '0.769', '0.484', '32', '44', '106', '0.506', '0.583', '0.348', '28', '39', '1'),
('21900874', '1610612754', '1610612757', '27/02/2020', '106', '0.444', '0.783', '0.32', '21', '48', '100', '0.461', '0.643', '0.3', '14', '45', '1'),
('21900875', '1610612760', '1610612758', '27/02/2020', '112', '0.488', '0.724', '0.346', '20', '37', '108', '0.451', '1.0', '0.343', '30', '45', '1'),
('21900876', '1610612744', '1610612747', '27/02/2020', '86', '0.425', '0.9', '0.281', '27', '37', '116', '0.511', '0.667', '0.333', '24', '44', '0'),
('21900864', '1610612766', '1610612752', '26/02/2020', '107', '0.47', '0.76', '0.333', '25', '37', '101', '0.506', '0.647', '0.267', '22', '42', '1'),
('21900865', '1610612739', '1610612755', '26/02/2020', '108', '0.526', '0.882', '0.458', '24', '48', '94', '0.404', '0.643', '0.342', '22', '31', '1'),
('21900866', '1610612764', '1610612751', '26/02/2020', '110', '0.427', '0.813', '0.385', '22', '39', '106', '0.414', '0.686', '0.278', '15', '56', '1'),
('21900867', '1610612737', '1610612753', '26/02/2020', '120', '0.447', '0.92', '0.361', '30', '42', '130', '0.49', '0.72', '0.438', '30', '52', '0'),
('21900868', '1610612748', '1610612750', '26/02/2020', '126', '0.526', '0.767', '0.423', '30', '43', '129', '0.516', '0.72', '0.37', '28', '33', '0'),
('21900870', '1610612745', '1610612763', '26/02/2020', '140', '0.559', '0.867', '0.46', '22', '44', '112', '0.398', '0.619', '0.333', '28', '49', '1'),
('21900869', '1610612759', '1610612742', '26/02/2020', '103', '0.424', '0.737', '0.333', '22', '55', '109', '0.419', '0.667', '0.378', '25', '43', '0'),
('21900871', '1610612756', '1610612746', '26/02/2020', '92', '0.391', '0.833', '0.265', '29', '48', '102', '0.44', '0.933', '0.368', '22', '46', '0'),
('21900872', '1610612762', '1610612738', '26/02/2020', '103', '0.449', '0.733', '0.3', '16', '41', '114', '0.536', '0.813', '0.423', '21', '44', '0'),
('21900857', '1610612754', '1610612766', '25/02/2020', '119', '0.57', '0.846', '0.435', '35', '56', '80', '0.333', '0.444', '0.303', '22', '39', '1'),
('21900858', '1610612761', '1610612749', '25/02/2020', '97', '0.352', '0.714', '0.346', '21', '43', '108', '0.381', '0.833', '0.333', '23', '53', '0'),
('21900859', '1610612741', '1610612760', '25/02/2020', '122', '0.536', '0.667', '0.387', '22', '39', '124', '0.553', '0.743', '0.467', '25', '37', '0'),
('21900860', '1610612743', '1610612765', '25/02/2020', '115', '0.579', '0.818', '0.474', '33', '41', '98', '0.407', '0.81', '0.366', '24', '33', '1'),
('21900861', '1610612747', '1610612740', '25/02/2020', '118', '0.441', '0.714', '0.295', '27', '51', '109', '0.453', '0.767', '0.296', '31', '45', '1'),
('21900862', '1610612757', '1610612738', '25/02/2020', '106', '0.447', '0.739', '0.419', '24', '41', '118', '0.478', '0.929', '0.487', '19', '45', '0'),
('21900863', '1610612744', '1610612758', '25/02/2020', '94', '0.443', '0.833', '0.143', '21', '34', '112', '0.526', '0.559', '0.433', '25', '40', '0'),
('21900849', '1610612739', '1610612748', '24/02/2020', '125', '0.443', '0.735', '0.378', '25', '53', '119', '0.458', '0.75', '0.381', '33', '49', '1'),
('21900850', '1610612755', '1610612737', '24/02/2020', '129', '0.511', '0.9', '0.4', '27', '48', '112', '0.412', '0.889', '0.211', '19', '44', '1'),
('21900851', '1610612764', '1610612749', '24/02/2020', '134', '0.48', '0.758', '0.429', '27', '41', '137', '0.57', '0.815', '0.459', '26', '45', '0'),
('21900852', '1610612751', '1610612753', '24/02/2020', '113', '0.479', '0.625', '0.432', '29', '49', '115', '0.494', '0.824', '0.382', '27', '41', '0');


INSERT INTO games_details (team_id, game_id, player_id, team_abbreviation, team_city, player_name, fgm, fg_pct, fg3m, fg3_pct, ftm, ft_pct, reb, ast, stl, blk, t_o, pf, pts) VALUES 

('1610612749', '21900895', '202083', 'MIL', 'Milwaukee', 'Wesley Matthews', '3.0', '0.273', '2.0', '0.286', '0.0', '0.0', '8.0', '2.0', '2.0', '0.0', '0.0', '0.0', '8.0'),
('1610612749', '21900895', '203507', 'MIL', 'Milwaukee', 'Giannis Antetokounmpo', '17.0', '0.607', '1.0', '0.25', '6.0', '0.857', '20.0', '6.0', '1.0', '0.0', '3.0', '2.0', '41.0'),
('1610612749', '21900895', '201572', 'MIL', 'Milwaukee', 'Brook Lopez', '4.0', '0.364', '1.0', '0.2', '7.0', '0.778', '7.0', '0.0', '0.0', '3.0', '0.0', '2.0', '16.0'),
('1610612749', '21900895', '1628978', 'MIL', 'Milwaukee', 'Donte DiVincenzo', '1.0', '0.2', '0.0', '0.0', '0.0', '0.0', '7.0', '5.0', '0.0', '1.0', '2.0', '0.0', '2.0'),
('1610612749', '21900895', '202339', 'MIL', 'Milwaukee', 'Eric Bledsoe', '2.0', '0.25', '0.0', '0.0', '0.0', '0.0', '1.0', '2.0', '1.0', '0.0', '3.0', '2.0', '4.0'),
('1610612749', '21900895', '1626192', 'MIL', 'Milwaukee', 'Pat Connaughton', '2.0', '0.4', '1.0', '0.25', '1.0', '0.5', '5.0', '1.0', '0.0', '0.0', '1.0', '2.0', '6.0'),
('1610612749', '21900895', '201577', 'MIL', 'Milwaukee', 'Robin Lopez', '1.0', '0.2', '0.0', '0.0', '0.0', '0.0', '3.0', '0.0', '0.0', '1.0', '2.0', '1.0', '2.0'),
('1610612749', '21900895', '1628425', 'MIL', 'Milwaukee', 'Sterling Brown', '1.0', '0.5', '1.0', '0.5', '0.0', '0.0', '3.0', '0.0', '0.0', '0.0', '1.0', '0.0', '3.0'),
('1610612749', '21900895', '101107', 'MIL', 'Milwaukee', 'Marvin Williams', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2.0', '2.0', '1.0', '1.0', '1.0', '1.0', '0.0'),
('1610612749', '21900895', '201588', 'MIL', 'Milwaukee', 'George Hill', '4.0', '0.364', '1.0', '0.25', '2.0', '0.667', '5.0', '2.0', '2.0', '0.0', '3.0', '1.0', '11.0'),
('1610612749', '21900895', '203648', 'MIL', 'Milwaukee', 'Thanasis Antetokounmpo', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
('1610612749', '21900895', '101141', 'MIL', 'Milwaukee', 'Ersan Ilyasova', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
('1610612749', '21900895', '1628391', 'MIL', 'Milwaukee', 'D.J. Wilson', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
('1610612766', '21900895', '1628970', 'CHA', 'Charlotte', 'Miles Bridges', '3.0', '0.231', '1.0', '0.143', '0.0', '0.0', '4.0', '2.0', '2.0', '2.0', '2.0', '2.0', '7.0'),
('1610612766', '21900895', '1629023', 'CHA', 'Charlotte', 'P.J. Washington', '5.0', '0.357', '1.0', '0.125', '1.0', '1.0', '6.0', '3.0', '0.0', '2.0', '2.0', '3.0', '12.0'),
('1610612766', '21900895', '202687', 'CHA', 'Charlotte', 'Bismack Biyombo', '2.0', '0.25', '0.0', '0.0', '4.0', '1.0', '9.0', '2.0', '0.0', '2.0', '1.0', '3.0', '8.0'),
('1610612766', '21900895', '1628984', 'CHA', 'Charlotte', "Devonte' Graham", '7.0', '0.389', '3.0', '0.375', '0.0', '0.0', '2.0', '3.0', '1.0', '0.0', '0.0', '2.0', '17.0'),
('1610612766', '21900895', '1626179', 'CHA', 'Charlotte', 'Terry Rozier', '6.0', '0.333', '0.0', '0.0', '1.0', '1.0', '3.0', '4.0', '1.0', '0.0', '2.0', '2.0', '13.0'),
('1610612766', '21900895', '1628998', 'CHA', 'Charlotte', 'Cody Martin', '4.0', '0.5', '2.0', '0.4', '1.0', '1.0', '5.0', '2.0', '0.0', '1.0', '1.0', '2.0', '11.0'),
('1610612766', '21900895', '1629667', 'CHA', 'Charlotte', 'Jalen McDaniels', '1.0', '0.5', '0.0', '0.0', '0.0', '0.0', '1.0', '1.0', '0.0', '1.0', '0.0', '1.0', '2.0'),
('1610612766', '21900895', '1626195', 'CHA', 'Charlotte', 'Willy Hernangomez', '4.0', '0.444', '0.0', '0.0', '2.0', '1.0', '13.0', '4.0', '2.0', '0.0', '1.0', '0.0', '10.0'),
('1610612766', '21900895', '1628997', 'CHA', 'Charlotte', 'Caleb Martin', '2.0', '0.333', '1.0', '0.5', '0.0', '0.0', '4.0', '1.0', '1.0', '0.0', '1.0', '3.0', '5.0'),
('1610612766', '21900895', '201587', 'CHA', 'Charlotte', 'Nicolas Batum', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
('1610612766', '21900895', '1629147', 'CHA', 'Charlotte', 'Joe Chealey', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
('1610612766', '21900895', '1628370', 'CHA', 'Charlotte', 'Malik Monk', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
('1610612766', '21900895', '203469', 'CHA', 'Charlotte', 'Cody Zeller', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
('1610612742', '21900896', '203501', 'DAL', 'Dallas', 'Tim Hardaway Jr.', '7.0', '0.438', '2.0', '0.286', '3.0', '1.0', '6.0', '0.0', '2.0', '0.0', '1.0', '1.0', '19.0'),
('1610612742', '21900896', '1627827', 'DAL', 'Dallas', 'Dorian Finney-Smith', '4.0', '0.667', '0.0', '0.0', '1.0', '0.5', '11.0', '4.0', '2.0', '1.0', '2.0', '3.0', '9.0'),
('1610612742', '21900896', '204001', 'DAL', 'Dallas', 'Kristaps Porzingis', '13.0', '0.52', '6.0', '0.429', '6.0', '0.6', '13.0', '4.0', '1.0', '5.0', '2.0', '2.0', '38.0'),
('1610612742', '21900896', '1626153', 'DAL', 'Dallas', 'Delon Wright', '2.0', '0.222', '0.0', '0.0', '0.0', '0.0', '8.0', '6.0', '3.0', '0.0', '2.0', '2.0', '4.0'),
('1610612742', '21900896', '203552', 'DAL', 'Dallas', 'Seth Curry', '11.0', '0.647', '3.0', '0.429', '2.0', '0.5', '1.0', '4.0', '1.0', '0.0', '1.0', '1.0', '27.0'),
('1610612742', '21900896', '1628382', 'DAL', 'Dallas', 'Justin Jackson', '1.0', '0.25', '0.0', '0.0', '0.0', '0.0', '2.0', '0.0', '0.0', '0.0', '1.0', '1.0', '2.0'),
('1610612742', '21900896', '1628467', 'DAL', 'Dallas', 'Maxi Kleber', '1.0', '0.333', '0.0', '0.0', '0.0', '0.0', '8.0', '2.0', '0.0', '1.0', '2.0', '3.0', '2.0'),
('1610612742', '21900896', '201584', 'DAL', 'Dallas', 'Courtney Lee', '2.0', '0.5', '0.0', '0.0', '0.0', '0.0', '4.0', '0.0', '1.0', '0.0', '0.0', '2.0', '4.0'),
('1610612742', '21900896', '200826', 'DAL', 'Dallas', 'J.J. Barea', '2.0', '0.25', '0.0', '0.0', '0.0', '0.0', '1.0', '7.0', '0.0', '0.0', '2.0', '1.0', '4.0'),
('1610612742', '21900896', '203077', 'DAL', 'Dallas', 'Michael Kidd-Gilchrist', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '1.0', '0.0', '0.0', '0.0', '1.0', '0.0', '0.0'),
('1610612742', '21900896', '1626246', 'DAL', 'Dallas', 'Boban Marjanovic', '1.0', '0.5', '0.0', '0.0', '0.0', '0.0', '1.0', '1.0', '0.0', '0.0', '0.0', '0.0', '2.0'),
('1610612750', '21900896', '1629006', 'MIN', 'Minnesota', 'Josh Okogie', '4.0', '0.5', '1.0', '0.5', '0.0', '0.0', '6.0', '1.0', '1.0', '2.0', '2.0', '3.0', '9.0'),
('1610612750', '21900896', '1627823', 'MIN', 'Minnesota', 'Juancho Hernangomez', '5.0', '0.455', '2.0', '0.333', '0.0', '0.0', '12.0', '1.0', '0.0', '1.0', '1.0', '4.0', '12.0'),
('1610612750', '21900896', '1629675', 'MIN', 'Minnesota', 'Naz Reid', '4.0', '0.308', '0.0', '0.0', '1.0', '0.5', '12.0', '2.0', '0.0', '0.0', '0.0', '1.0', '9.0'),
('1610612750', '21900896', '1627736', 'MIN', 'Minnesota', 'Malik Beasley', '5.0', '0.333', '4.0', '0.444', '0.0', '0.0', '3.0', '1.0', '1.0', '0.0', '1.0', '1.0', '14.0'),
('1610612750', '21900896', '1626156', 'MIN', 'Minnesota', "D'Angelo Russell", '6.0', '0.333', '2.0', '0.222', '2.0', '0.667', '9.0', '7.0', '2.0', '0.0', '4.0', '1.0', '16.0'),
('1610612750', '21900896', '1629633', 'MIN', 'Minnesota', 'Jarrett Culver', '5.0', '0.5', '2.0', '0.5', '0.0', '0.0', '4.0', '2.0', '1.0', '0.0', '0.0', '1.0', '12.0'),
('1610612750', '21900896', '1627774', 'MIN', 'Minnesota', 'Jake Layman', '2.0', '0.286', '1.0', '0.5', '1.0', '0.5', '2.0', '0.0', '0.0', '0.0', '0.0', '1.0', '6.0'),
('1610612750', '21900896', '201949', 'MIN', 'Minnesota', 'James Johnson', '2.0', '0.5', '0.0', '0.0', '0.0', '0.0', '4.0', '2.0', '0.0', '0.0', '2.0', '4.0', '4.0'),
('1610612750', '21900896', '1629162', 'MIN', 'Minnesota', 'Jordan McLaughlin', '1.0', '0.25', '0.0', '0.0', '2.0', '0.5', '2.0', '3.0', '4.0', '0.0', '1.0', '0.0', '4.0'),
('1610612750', '21900896', '1629103', 'MIN', 'Minnesota', 'Kelan Martin', '2.0', '0.286', '1.0', '0.25', '0.0', '0.0', '2.0', '0.0', '0.0', '0.0', '2.0', '1.0', '5.0'),
('1610612750', '21900896', '1629669', 'MIN', 'Minnesota', 'Jaylen Nowell', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '1.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0'),
('1610612750', '21900896', '1626157', 'MIN', 'Minnesota', 'Karl-Anthony Towns', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
('1610612755', '21900897', '203922', 'PHI', 'Philadelphia', 'Glenn Robinson III', '1.0', '0.333', '0.0', '0.0', '0.0', '0.0', '2.0', '0.0', '0.0', '0.0', '1.0', '2.0', '2.0');
