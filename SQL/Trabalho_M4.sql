DROP DATABASE IF EXISTS projeto_em_grupo;
CREATE DATABASE projeto_em_grupo;
USE projeto_em_grupo;

CREATE TABLE games (
game_id INT PRIMARY KEY AUTO_INCREMENT,
home_team_id INT,
visitor_team_id INT,
game_date_est DATETIME,
pts_home INT,
fg_pct_home DECIMAL(9,4),
ft_pct_home DECIMAL(9,4),
fg3_cpt_home DECIMAL(9,4),
ast_home INT,
reb_home INT,
pts_away INT,
fg_pct_away DECIMAL(9,4),
ft_pct_away DECIMAL(9,4),
fg3_pct_away DECIMAL(9,4),
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
fg_pct DECIMAL(9,4),
fg3m INT,
fg3_pct DECIMAL(9,4),
ftm INT,
ft_pct DECIMAL(9,4),
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
('21900895', '1610612766', '1610612749', '2020/03/01', '85', '0.354', '0.9', '0.229', '22', '47', '93', '0.402', '0.762', '0.226', '20', '61', '0'),
('21900896', '1610612750', '1610612742', '2020/03/01', '91', '0.364', '0.4', '0.31', '19', '57', '111', '0.468', '0.632', '0.275', '28', '56', '0'),
('21900897', '1610612746', '1610612755', '2020/03/01', '136', '0.592', '0.805', '0.542', '25', '37', '130', '0.505', '0.65', '0.488', '27', '37', '1'),
('21900898', '1610612743', '1610612761', '2020/03/01', '133', '0.566', '0.7', '0.5', '38', '41', '118', '0.461', '0.897', '0.263', '24', '36', '1'),
('21900899', '1610612758', '1610612765', '2020/03/01', '106', '0.407', '0.885', '0.257', '18', '51', '100', '0.413', '0.667', '0.429', '23', '42', '1'),
('21900900', '1610612740', '1610612747', '2020/03/01', '114', '0.421', '0.818', '0.219', '24', '52', '122', '0.515', '0.9', '0.371', '23', '36', '0'),
('21900901', '1610612744', '1610612764', '2020/03/01', '110', '0.472', '0.708', '0.321', '25', '52', '124', '0.488', '0.889', '0.667', '24', '34', '0'),
('21900887', '1610612752', '1610612741', '2020/02/29', '125', '0.553', '0.697', '0.4', '29', '50', '115', '0.461', '0.696', '0.486', '26', '33', '1'),
('21900888', '1610612737', '1610612757', '2020/02/29', '129', '0.548', '0.864', '0.429', '34', '36', '117', '0.5', '0.714', '0.286', '14', '42', '1'),
('21900889', '1610612748', '1610612751', '2020/02/29', '116', '0.451', '0.833', '0.368', '27', '45', '113', '0.465', '0.739', '0.364', '30', '44', '1'),
('21900890', '1610612739', '1610612754', '2020/02/29', '104', '0.482', '0.85', '0.227', '30', '36', '113', '0.54', '0.786', '0.348', '30', '38', '0'),
('21900891', '1610612763', '1610612747', '2020/02/29', '105', '0.453', '0.818', '0.323', '27', '51', '88', '0.409', '0.583', '0.25', '26', '45', '1'),
('21900892', '1610612738', '1610612745', '2020/02/29', '110', '0.39', '0.76', '0.31', '22', '54', '111', '0.418', '0.778', '0.273', '17', '53', '0'),
('21900893', '1610612759', '1610612753', '2020/02/29', '114', '0.524', '0.75', '0.452', '28', '31', '113', '0.488', '0.696', '0.405', '28', '41', '1'),
('21900894', '1610612756', '1610612744', '2020/02/29', '99', '0.41', '0.826', '0.414', '24', '40', '115', '0.471', '0.75', '0.3', '30', '49', '0'),
('21900877', '1610612753', '1610612750', '2020/02/28', '136', '0.541', '0.818', '0.3', '36', '54', '125', '0.484', '0.667', '0.386', '27', '33', '1'),
('21900878', '1610612737', '1610612751', '2020/02/28', '141', '0.515', '0.733', '0.487', '32', '52', '118', '0.457', '0.762', '0.391', '30', '38', '1'),
('21900879', '1610612761', '1610612766', '2020/02/28', '96', '0.347', '0.69', '0.233', '19', '45', '99', '0.436', '0.72', '0.433', '23', '58', '0'),
('21900880', '1610612748', '1610612742', '2020/02/28', '126', '0.519', '0.75', '0.486', '30', '40', '118', '0.476', '0.895', '0.42', '25', '35', '1'),
('21900881', '1610612763', '1610612758', '2020/02/28', '101', '0.429', '0.75', '0.267', '27', '52', '104', '0.418', '0.81', '0.289', '24', '47', '0'),
('21900882', '1610612749', '1610612760', '2020/02/28', '133', '0.5', '0.857', '0.467', '34', '66', '86', '0.363', '0.7', '0.171', '14', '36', '1'),
('21900883', '1610612740', '1610612739', '2020/02/28', '116', '0.545', '0.733', '0.391', '36', '49', '104', '0.453', '0.583', '0.355', '27', '34', '1'),
('21900884', '1610612756', '1610612765', '2020/02/28', '111', '0.6', '0.706', '0.391', '31', '38', '113', '0.489', '0.75', '0.406', '27', '31', '0'),
('21900885', '1610612762', '1610612764', '2020/02/28', '129', '0.494', '0.733', '0.514', '23', '54', '119', '0.459', '0.714', '0.378', '23', '41', '1'),
('21900886', '1610612746', '1610612743', '2020/02/28', '132', '0.539', '0.9', '0.462', '35', '46', '103', '0.451', '0.75', '0.36', '19', '39', '1'),
('21900873', '1610612755', '1610612752', '2020/02/27', '115', '0.495', '0.769', '0.484', '32', '44', '106', '0.506', '0.583', '0.348', '28', '39', '1'),
('21900874', '1610612754', '1610612757', '2020/02/27', '106', '0.444', '0.783', '0.32', '21', '48', '100', '0.461', '0.643', '0.3', '14', '45', '1'),
('21900875', '1610612760', '1610612758', '2020/02/27', '112', '0.488', '0.724', '0.346', '20', '37', '108', '0.451', '1.0', '0.343', '30', '45', '1'),
('21900876', '1610612744', '1610612747', '2020/02/27', '86', '0.425', '0.9', '0.281', '27', '37', '116', '0.511', '0.667', '0.333', '24', '44', '0'),
('21900864', '1610612766', '1610612752', '2020/02/26', '107', '0.47', '0.76', '0.333', '25', '37', '101', '0.506', '0.647', '0.267', '22', '42', '1'),
('21900865', '1610612739', '1610612755', '2020/02/26', '108', '0.526', '0.882', '0.458', '24', '48', '94', '0.404', '0.643', '0.342', '22', '31', '1'),
('21900866', '1610612764', '1610612751', '2020/02/26', '110', '0.427', '0.813', '0.385', '22', '39', '106', '0.414', '0.686', '0.278', '15', '56', '1'),
('21900867', '1610612737', '1610612753', '2020/02/26', '120', '0.447', '0.92', '0.361', '30', '42', '130', '0.49', '0.72', '0.438', '30', '52', '0'),
('21900868', '1610612748', '1610612750', '2020/02/26', '126', '0.526', '0.767', '0.423', '30', '43', '129', '0.516', '0.72', '0.37', '28', '33', '0'),
('21900870', '1610612745', '1610612763', '2020/02/26', '140', '0.559', '0.867', '0.46', '22', '44', '112', '0.398', '0.619', '0.333', '28', '49', '1'),
('21900869', '1610612759', '1610612742', '2020/02/26', '103', '0.424', '0.737', '0.333', '22', '55', '109', '0.419', '0.667', '0.378', '25', '43', '0'),
('21900871', '1610612756', '1610612746', '2020/02/26', '92', '0.391', '0.833', '0.265', '29', '48', '102', '0.44', '0.933', '0.368', '22', '46', '0'),
('21900872', '1610612762', '1610612738', '2020/02/26', '103', '0.449', '0.733', '0.3', '16', '41', '114', '0.536', '0.813', '0.423', '21', '44', '0'),
('21900857', '1610612754', '1610612766', '2020/02/25', '119', '0.57', '0.846', '0.435', '35', '56', '80', '0.333', '0.444', '0.303', '22', '39', '1'),
('21900858', '1610612761', '1610612749', '2020/02/25', '97', '0.352', '0.714', '0.346', '21', '43', '108', '0.381', '0.833', '0.333', '23', '53', '0'),
('21900859', '1610612741', '1610612760', '2020/02/25', '122', '0.536', '0.667', '0.387', '22', '39', '124', '0.553', '0.743', '0.467', '25', '37', '0'),
('21900860', '1610612743', '1610612765', '2020/02/25', '115', '0.579', '0.818', '0.474', '33', '41', '98', '0.407', '0.81', '0.366', '24', '33', '1'),
('21900861', '1610612747', '1610612740', '2020/02/25', '118', '0.441', '0.714', '0.295', '27', '51', '109', '0.453', '0.767', '0.296', '31', '45', '1'),
('21900862', '1610612757', '1610612738', '2020/02/25', '106', '0.447', '0.739', '0.419', '24', '41', '118', '0.478', '0.929', '0.487', '19', '45', '0'),
('21900863', '1610612744', '1610612758', '2020/02/25', '94', '0.443', '0.833', '0.143', '21', '34', '112', '0.526', '0.559', '0.433', '25', '40', '0'),
('21900849', '1610612739', '1610612748', '2020/02/24', '125', '0.443', '0.735', '0.378', '25', '53', '119', '0.458', '0.75', '0.381', '33', '49', '1'),
('21900850', '1610612755', '1610612737', '2020/02/24', '129', '0.511', '0.9', '0.4', '27', '48', '112', '0.412', '0.889', '0.211', '19', '44', '1'),
('21900851', '1610612764', '1610612749', '2020/02/24', '134', '0.48', '0.758', '0.429', '27', '41', '137', '0.57', '0.815', '0.459', '26', '45', '0'),
('21900852', '1610612751', '1610612753', '2020/02/24', '113', '0.479', '0.625', '0.432', '29', '49', '115', '0.494', '0.824', '0.382', '27', '41', '0');


INSERT INTO games_details (team_id, game_id, player_id, team_abbreviation, team_city, player_name, fgm, fg_pct, fg3m, fg3_pct, ftm, ft_pct, reb, ast, stl, blk, t_o, pf, pts) VALUES 

('1610612749', '21900895', '25', 'MIL', 'Milwaukee', 'Wesley Matthews', '3.0', '0.273', '2.0', '0.286', '0.0', '0.0', '8.0', '2.0', '2.0', '0.0', '0.0', '0.0', '8.0'),
('1610612749', '21900895', '26', 'MIL', 'Milwaukee', 'Giannis Antetokounmpo', '17.0', '0.607', '1.0', '0.25', '6.0', '0.857', '20.0', '6.0', '1.0', '0.0', '3.0', '2.0', '41.0'),
('1610612749', '21900895', '27', 'MIL', 'Milwaukee', 'Brook Lopez', '4.0', '0.364', '1.0', '0.2', '7.0', '0.778', '7.0', '0.0', '0.0', '3.0', '0.0', '2.0', '16.0'),
('1610612749', '21900895', '28', 'MIL', 'Milwaukee', 'Donte DiVincenzo', '1.0', '0.2', '0.0', '0.0', '0.0', '0.0', '7.0', '5.0', '0.0', '1.0', '2.0', '0.0', '2.0'),
('1610612749', '21900895', '29', 'MIL', 'Milwaukee', 'Eric Bledsoe', '2.0', '0.25', '0.0', '0.0', '0.0', '0.0', '1.0', '2.0', '1.0', '0.0', '3.0', '2.0', '4.0'),
('1610612749', '21900895', '30', 'MIL', 'Milwaukee', 'Pat Connaughton', '2.0', '0.4', '1.0', '0.25', '1.0', '0.5', '5.0', '1.0', '0.0', '0.0', '1.0', '2.0', '6.0'),
('1610612749', '21900895', '31', 'MIL', 'Milwaukee', 'Robin Lopez', '1.0', '0.2', '0.0', '0.0', '0.0', '0.0', '3.0', '0.0', '0.0', '1.0', '2.0', '1.0', '2.0'),
('1610612749', '21900895', '32', 'MIL', 'Milwaukee', 'Sterling Brown', '1.0', '0.5', '1.0', '0.5', '0.0', '0.0', '3.0', '0.0', '0.0', '0.0', '1.0', '0.0', '3.0'),
('1610612749', '21900895', '33', 'MIL', 'Milwaukee', 'Marvin Williams', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2.0', '2.0', '1.0', '1.0', '1.0', '1.0', '0.0'),
('1610612749', '21900895', '34', 'MIL', 'Milwaukee', 'George Hill', '4.0', '0.364', '1.0', '0.25', '2.0', '0.667', '5.0', '2.0', '2.0', '0.0', '3.0', '1.0', '11.0'),
('1610612749', '21900895', '35', 'MIL', 'Milwaukee', 'Thanasis Antetokounmpo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612749', '21900895', '36', 'MIL', 'Milwaukee', 'Ersan Ilyasova', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612749', '21900895', '37', 'MIL', 'Milwaukee', 'D.J. Wilson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612766', '21900895', '38', 'CHA', 'Charlotte', 'Miles Bridges', '3.0', '0.231', '1.0', '0.143', '0.0', '0.0', '4.0', '2.0', '2.0', '2.0', '2.0', '2.0', '7.0'),
('1610612766', '21900895', '39', 'CHA', 'Charlotte', 'P.J. Washington', '5.0', '0.357', '1.0', '0.125', '1.0', '1.0', '6.0', '3.0', '0.0', '2.0', '2.0', '3.0', '12.0'),
('1610612766', '21900895', '40', 'CHA', 'Charlotte', 'Bismack Biyombo', '2.0', '0.25', '0.0', '0.0', '4.0', '1.0', '9.0', '2.0', '0.0', '2.0', '1.0', '3.0', '8.0'),
('1610612766', '21900895', '41', 'CHA', 'Charlotte', "Devonte' Graham", '7.0', '0.389', '3.0', '0.375', '0.0', '0.0', '2.0', '3.0', '1.0', '0.0', '0.0', '2.0', '17.0'),
('1610612766', '21900895', '42', 'CHA', 'Charlotte', 'Terry Rozier', '6.0', '0.333', '0.0', '0.0', '1.0', '1.0', '3.0', '4.0', '1.0', '0.0', '2.0', '2.0', '13.0'),
('1610612766', '21900895', '43', 'CHA', 'Charlotte', 'Cody Martin', '4.0', '0.5', '2.0', '0.4', '1.0', '1.0', '5.0', '2.0', '0.0', '1.0', '1.0', '2.0', '11.0'),
('1610612766', '21900895', '44', 'CHA', 'Charlotte', 'Jalen McDaniels', '1.0', '0.5', '0.0', '0.0', '0.0', '0.0', '1.0', '1.0', '0.0', '1.0', '0.0', '1.0', '2.0'),
('1610612766', '21900895', '45', 'CHA', 'Charlotte', 'Willy Hernangomez', '4.0', '0.444', '0.0', '0.0', '2.0', '1.0', '13.0', '4.0', '2.0', '0.0', '1.0', '0.0', '10.0'),
('1610612766', '21900895', '46', 'CHA', 'Charlotte', 'Caleb Martin', '2.0', '0.333', '1.0', '0.5', '0.0', '0.0', '4.0', '1.0', '1.0', '0.0', '1.0', '3.0', '5.0'),
('1610612766', '21900895', '47', 'CHA', 'Charlotte', 'Nicolas Batum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612766', '21900895', '48', 'CHA', 'Charlotte', 'Joe Chealey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612766', '21900895', '49', 'CHA', 'Charlotte', 'Malik Monk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612766', '21900895', '50', 'CHA', 'Charlotte', 'Cody Zeller', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612742', '21900896', '51', 'DAL', 'Dallas', 'Tim Hardaway Jr.', '7.0', '0.438', '2.0', '0.286', '3.0', '1.0', '6.0', '0.0', '2.0', '0.0', '1.0', '1.0', '19.0'),
('1610612742', '21900896', '52', 'DAL', 'Dallas', 'Dorian Finney-Smith', '4.0', '0.667', '0.0', '0.0', '1.0', '0.5', '11.0', '4.0', '2.0', '1.0', '2.0', '3.0', '9.0'),
('1610612742', '21900896', '53', 'DAL', 'Dallas', 'Kristaps Porzingis', '13.0', '0.52', '6.0', '0.429', '6.0', '0.6', '13.0', '4.0', '1.0', '5.0', '2.0', '2.0', '38.0'),
('1610612742', '21900896', '54', 'DAL', 'Dallas', 'Delon Wright', '2.0', '0.222', '0.0', '0.0', '0.0', '0.0', '8.0', '6.0', '3.0', '0.0', '2.0', '2.0', '4.0'),
('1610612742', '21900896', '55', 'DAL', 'Dallas', 'Seth Curry', '11.0', '0.647', '3.0', '0.429', '2.0', '0.5', '1.0', '4.0', '1.0', '0.0', '1.0', '1.0', '27.0'),
('1610612742', '21900896', '56', 'DAL', 'Dallas', 'Justin Jackson', '1.0', '0.25', '0.0', '0.0', '0.0', '0.0', '2.0', '0.0', '0.0', '0.0', '1.0', '1.0', '2.0'),
('1610612742', '21900896', '57', 'DAL', 'Dallas', 'Maxi Kleber', '1.0', '0.333', '0.0', '0.0', '0.0', '0.0', '8.0', '2.0', '0.0', '1.0', '2.0', '3.0', '2.0'),
('1610612742', '21900896', '58', 'DAL', 'Dallas', 'Courtney Lee', '2.0', '0.5', '0.0', '0.0', '0.0', '0.0', '4.0', '0.0', '1.0', '0.0', '0.0', '2.0', '4.0'),
('1610612742', '21900896', '59', 'DAL', 'Dallas', 'J.J. Barea', '2.0', '0.25', '0.0', '0.0', '0.0', '0.0', '1.0', '7.0', '0.0', '0.0', '2.0', '1.0', '4.0'),
('1610612742', '21900896', '60', 'DAL', 'Dallas', 'Michael Kidd-Gilchrist', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '1.0', '0.0', '0.0', '0.0', '1.0', '0.0', '0.0'),
('1610612742', '21900896', '61', 'DAL', 'Dallas', 'Boban Marjanovic', '1.0', '0.5', '0.0', '0.0', '0.0', '0.0', '1.0', '1.0', '0.0', '0.0', '0.0', '0.0', '2.0'),
('1610612750', '21900896', '62', 'MIN', 'Minnesota', 'Josh Okogie', '4.0', '0.5', '1.0', '0.5', '0.0', '0.0', '6.0', '1.0', '1.0', '2.0', '2.0', '3.0', '9.0'),
('1610612750', '21900896', '63', 'MIN', 'Minnesota', 'Juancho Hernangomez', '5.0', '0.455', '2.0', '0.333', '0.0', '0.0', '12.0', '1.0', '0.0', '1.0', '1.0', '4.0', '12.0'),
('1610612750', '21900896', '64', 'MIN', 'Minnesota', 'Naz Reid', '4.0', '0.308', '0.0', '0.0', '1.0', '0.5', '12.0', '2.0', '0.0', '0.0', '0.0', '1.0', '9.0'),
('1610612750', '21900896', '65', 'MIN', 'Minnesota', 'Malik Beasley', '5.0', '0.333', '4.0', '0.444', '0.0', '0.0', '3.0', '1.0', '1.0', '0.0', '1.0', '1.0', '14.0'),
('1610612750', '21900896', '66', 'MIN', 'Minnesota', "D'Angelo Russell", '6.0', '0.333', '2.0', '0.222', '2.0', '0.667', '9.0', '7.0', '2.0', '0.0', '4.0', '1.0', '16.0'),
('1610612750', '21900896', '67', 'MIN', 'Minnesota', 'Jarrett Culver', '5.0', '0.5', '2.0', '0.5', '0.0', '0.0', '4.0', '2.0', '1.0', '0.0', '0.0', '1.0', '12.0'),
('1610612750', '21900896', '68', 'MIN', 'Minnesota', 'Jake Layman', '2.0', '0.286', '1.0', '0.5', '1.0', '0.5', '2.0', '0.0', '0.0', '0.0', '0.0', '1.0', '6.0'),
('1610612750', '21900896', '69', 'MIN', 'Minnesota', 'James Johnson', '2.0', '0.5', '0.0', '0.0', '0.0', '0.0', '4.0', '2.0', '0.0', '0.0', '2.0', '4.0', '4.0'),
('1610612750', '21900896', '70', 'MIN', 'Minnesota', 'Jordan McLaughlin', '1.0', '0.25', '0.0', '0.0', '2.0', '0.5', '2.0', '3.0', '4.0', '0.0', '1.0', '0.0', '4.0'),
('1610612750', '21900896', '71', 'MIN', 'Minnesota', 'Kelan Martin', '2.0', '0.286', '1.0', '0.25', '0.0', '0.0', '2.0', '0.0', '0.0', '0.0', '2.0', '1.0', '5.0'),
('1610612750', '21900896', '72', 'MIN', 'Minnesota', 'Jaylen Nowell', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '1.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0'),
('1610612750', '21900896', '73', 'MIN', 'Minnesota', 'Karl-Anthony Towns', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612755', '21900897', '74', 'PHI', 'Philadelphia', 'Glenn Robinson III', '1.0', '0.333', '0.0', '0.0', '0.0', '0.0', '2.0', '0.0', '0.0', '0.0', '1.0', '2.0', '2.0'),
('1610612755', '21900897', '75', 'PHI', 'Philadelphia', 'Tobias Harris', '11.0', '0.524', '3.0', '0.429', '0.0', '0.0', '4.0', '4.0', '1.0', '0.0', '1.0', '3.0', '25.0'),
('1610612755', '21900897', '76', 'PHI', 'Philadelphia', 'Al Horford', '4.0', '0.364', '1.0', '0.25', '3.0', '1.0', '8.0', '6.0', '1.0', '2.0', '2.0', '6.0', '12.0'),
('1610612755', '21900897', '77', 'PHI', 'Philadelphia', 'Josh Richardson', '4.0', '0.667', '1.0', '1.0', '0.0', '0.0', '1.0', '1.0', '0.0', '0.0', '0.0', '0.0', '9.0'),
('1610612755', '21900897', '78', 'PHI', 'Philadelphia', 'Shake Milton', '14.0', '0.7', '7.0', '0.778', '4.0', '0.8', '3.0', '5.0', '1.0', '0.0', '2.0', '5.0', '39.0'),
('1610612755', '21900897', '79', 'PHI', 'Philadelphia', 'Furkan Korkmaz', '2.0', '0.222', '2.0', '0.333', '2.0', '0.667', '2.0', '3.0', '0.0', '1.0', '2.0', '4.0', '8.0'),
('1610612755', '21900897', '80', 'PHI', 'Philadelphia', 'Matisse Thybulle', '3.0', '0.6', '1.0', '0.333', '0.0', '0.0', '1.0', '1.0', '1.0', '0.0', '0.0', '1.0', '7.0'),
('1610612755', '21900897', '81', 'PHI', 'Philadelphia', "Kyle O'Quinn", '0.0', '0.0', '0.0', '0.0', '2.0', '0.5', '3.0', '1.0', '1.0', '0.0', '0.0', '1.0', '2.0'),
('1610612755', '21900897', '82', 'PHI', 'Philadelphia', 'Alec Burks', '5.0', '0.385', '3.0', '0.429', '2.0', '1.0', '6.0', '3.0', '0.0', '0.0', '1.0', '0.0', '15.0'),
('1610612755', '21900897', '83', 'PHI', 'Philadelphia', 'Mike Scott', '4.0', '0.667', '3.0', '0.75', '0.0', '0.0', '6.0', '3.0', '2.0', '1.0', '0.0', '5.0', '11.0'),
('1610612755', '21900897', '84', 'PHI', 'Philadelphia', 'Norvel Pelle', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '1.0', '0.0', '0.0', '0.0', '0.0', '1.0', '0.0'),
('1610612755', '21900897', '85', 'PHI', 'Philadelphia', 'Raul Neto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612746', '21900897', '86', 'LAC', 'LA', 'Kawhi Leonard', '10.0', '0.5', '2.0', '0.4', '8.0', '0.889', '6.0', '3.0', '1.0', '0.0', '1.0', '0.0', '30.0'),
('1610612746', '21900897', '87', 'LAC', 'LA', 'Marcus Morris Sr.', '3.0', '0.75', '1.0', '1.0', '2.0', '1.0', '2.0', '1.0', '1.0', '1.0', '0.0', '1.0', '9.0'),
('1610612746', '21900897', '88', 'LAC', 'LA', 'Ivica Zubac', '2.0', '1.0', '0.0', '0.0', '0.0', '0.0', '3.0', '2.0', '0.0', '1.0', '1.0', '2.0', '4.0'),
('1610612746', '21900897', '89', 'LAC', 'LA', 'Paul George', '8.0', '0.615', '4.0', '0.5', '4.0', '0.8', '4.0', '1.0', '2.0', '0.0', '1.0', '3.0', '24.0'),
('1610612746', '21900897', '90', 'LAC', 'LA', 'Patrick Beverley', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '4.0', '4.0', '0.0', '0.0', '1.0', '4.0', '0.0'),
('1610612746', '21900897', '91', 'LAC', 'LA', 'Landry Shamet', '1.0', '0.5', '1.0', '1.0', '0.0', '0.0', '0.0', '2.0', '0.0', '0.0', '1.0', '1.0', '3.0'),
('1610612746', '21900897', '92', 'LAC', 'LA', 'Lou Williams', '8.0', '0.667', '3.0', '0.75', '5.0', '0.625', '2.0', '8.0', '1.0', '0.0', '3.0', '0.0', '24.0'),
('1610612746', '21900897', '93', 'LAC', 'LA', 'Montrezl Harrell', '7.0', '0.583', '0.0', '0.0', '10.0', '0.769', '9.0', '0.0', '1.0', '1.0', '2.0', '3.0', '24.0'),
('1610612746', '21900897', '94', 'LAC', 'LA', 'Reggie Jackson', '4.0', '0.8', '1.0', '1.0', '4.0', '1.0', '4.0', '3.0', '0.0', '2.0', '0.0', '1.0', '13.0'),
('1610612746', '21900897', '95', 'LAC', 'LA', 'JaMychal Green', '2.0', '0.667', '1.0', '0.5', '0.0', '0.0', '3.0', '1.0', '0.0', '1.0', '0.0', '2.0', '5.0'),
('1610612746', '21900897', '96', 'LAC', 'LA', 'Amir Coffey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612746', '21900897', '97', 'LAC', 'LA', 'Rodney McGruder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612746', '21900897', '98', 'LAC', 'LA', 'Patrick Patterson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612765','21900899','99','DET','Detroit','Tony Snell','3.0','0.333','3.0','0.5','3.0','1.0','4.0','6.0','1.0','1.0','0.0','2.0','12.0'),
('1610612765','21900899','100','DET','Detroit','Christian Wood','7.0','0.438','1.0','0.25','5.0','0.714','12.0','0.0','0.0','1.0','0.0','1.0','20.0'),
('1610612765','21900899','101','DET','Detroit','John Henson','5.0','0.625','0.0','0.0','0.0','0.0','5.0','3.0','2.0','1.0','2.0','1.0','10.0'),
('1610612765','21900899','102','DET','Detroit','Svi Mykhailiuk','4.0','0.364','4.0','0.444','2.0','1.0','6.0','2.0','0.0','0.0','4.0','5.0','14.0'),
('1610612765','21900899','103','DET','Detroit','Derrick Rose','3.0','0.6','1.0','1.0','2.0','1.0','3.0','2.0','0.0','0.0','1.0','1.0','9.0'),
('1610612765','21900899','104','DET','Detroit','Brandon Knight','5.0','0.417','5.0','0.5','1.0','0.5','3.0','7.0','0.0','0.0','4.0','3.0','16.0'),
('1610612765','21900899','104','DET','Detroit','Langston Galloway','4.0','0.333','3.0','0.375','0.0','0.0','2.0','1.0','0.0','0.0','0.0','4.0','11.0'),
('1610612765','21900899','105','DET','Detroit','Sekou Doumbouya','1.0','0.333','0.0','0.0','3.0','0.75','3.0','0.0','0.0','0.0','2.0','4.0','5.0'),
('1610612765','21900899','106','DET','Detroit','Donta Hall','0.0','0.0','0.0','0.0','0.0','0.0','4.0','0.0','0.0','1.0','0.0','1.0','0.0'),
('1610612765','21900899','107','DET','Detroit','Khyri Thomas','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','1.0','0.0','0.0','1.0','0.0'),
('1610612765','21900899','108','DET','Detroit','Derrick Walton Jr.','1.0','1.0','1.0','1.0','0.0','0.0','0.0','2.0','2.0','0.0','1.0','2.0','3.0'),
('1610612765','21900899','109','DET','Detroit','Bruce Brown', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612765','21900899','110','DET','Detroit','Thon Maker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612758','21900899','111','SAC','Sacramento','Harrison Barnes','3.0','0.333','1.0','0.333','3.0','0.75','8.0','4.0','1.0','0.0','1.0','1.0','10.0'),
('1610612758','21900899','112','SAC','Sacramento','Nemanja Bjelica','3.0','0.3','1.0','0.167','0.0','0.0','7.0','2.0','1.0','0.0','1.0','2.0','7.0'),
('1610612758','21900899','113','SAC','Sacramento','Harry Giles III','5.0','0.556','0.0','0.0','2.0','1.0','7.0','0.0','1.0','1.0','0.0','4.0','12.0'),
('1610612758','21900899','114','SAC','Sacramento','Bogdan Bogdanovic','5.0','0.417','3.0','0.375','2.0','0.667','0.0','0.0','4.0','0.0','1.0','3.0','15.0'),
('1610612758','21900899','115','SAC','Sacramento','De\'Aaron Fox','7.0','0.438','0.0','0.0','9.0','0.9','3.0','7.0','0.0','1.0','2.0','3.0','23.0'),
('1610612758','21900899','116','SAC','Sacramento','Cory Joseph','2.0','0.5','1.0','1.0','0.0','0.0','3.0','1.0','1.0','0.0','0.0','0.0','5.0'),
('1610612758','21900899','117','SAC','Sacramento','Buddy Hield','7.0','0.412','3.0','0.273','2.0','1.0','6.0','2.0','0.0','0.0','3.0','0.0','19.0'),
('1610612758','21900899','118','SAC','Sacramento','Alex Len','4.0','0.5','0.0','0.0','0.0','0.0','13.0','0.0','0.0','5.0','0.0','3.0','8.0'),
('1610612758','21900899','119','SAC','Sacramento','Kent Bazemore','1.0','0.167','0.0','0.0','5.0','1.0','4.0','2.0','0.0','0.0','2.0','4.0','7.0'),
('1610612758','21900899','120','SAC','Sacramento','Yogi Ferrell', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612758','21900899','121','SAC','Sacramento','Kyle Guy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612758','21900899','122','SAC','Sacramento','Justin James', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612758','21900899','123','SAC','Sacramento','Jabari Parker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612747','21900900','124','LAL','Los Angeles','LeBron James','14.0','0.667','3.0','0.6','3.0','1.0','12.0','13.0','2.0','0.0','6.0','2.0','34.0'),
('1610612747','21900900','125','LAL','Los Angeles','Kyle Kuzma','8.0','0.444','2.0','0.25','2.0','0.667','4.0','1.0','1.0','0.0','0.0','4.0','20.0'),
('1610612747','21900900','126','LAL','Los Angeles','JaVale McGee','4.0','0.667','0.0','0.0','0.0','0.0','4.0','0.0','0.0','6.0','1.0','3.0','8.0'),
('1610612747','21900900','127','LAL','Los Angeles','Danny Green','4.0','0.444','2.0','0.333','0.0','0.0','3.0','1.0','1.0','0.0','1.0','3.0','10.0'),
('1610612747','21900900','128','LAL','Los Angeles','Avery Bradley','3.0','0.375','2.0','0.5','2.0','1.0','2.0','3.0','1.0','1.0','0.0','1.0','10.0'),
('1610612747','21900900','129','LAL','Los Angeles','Kentavious Caldwell-Pope','5.0','0.455','1.0','0.2','2.0','1.0','0.0','2.0','3.0','1.0','1.0','1.0','13.0'),
('1610612747','21900900','130','LAL','Los Angeles','Dwight Howard','4.0','0.667','0.0','0.0','0.0','0.0','6.0','1.0','0.0','1.0','1.0','5.0','8.0'),
('1610612747','21900900','131','LAL','Los Angeles','Markieff Morris','4.0','0.5','2.0','0.5','0.0','0.0','4.0','1.0','1.0','0.0','0.0','4.0','10.0'),
('1610612747','21900900','132','LAL','Los Angeles','Rajon Rondo','2.0','0.4','0.0','0.0','0.0','0.0','1.0','1.0','0.0','0.0','3.0','0.0','4.0'),
('1610612747','21900900','133','LAL','Los Angeles','Quinn Cook','2.0','0.4','1.0','0.5','0.0','0.0','0.0','0.0','0.0','0.0','0.0','3.0','5.0'),
('1610612747','21900900','134','LAL','Los Angeles','Alex Caruso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612747','21900900','135','LAL','Los Angeles','Anthony Davis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612747','21900900','136','LAL','Los Angeles','Jared Dudley', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612740','21900900','137','NOP','New Orleans','Brandon Ingram','5.0','0.217','1.0','0.111','4.0','1.0','4.0','2.0','1.0','0.0','3.0','5.0','15.0'),
('1610612740','21900900','138','NOP','New Orleans','Zion Williamson','12.0','0.75','0.0','0.0','11.0','0.846','7.0','0.0','0.0','0.0','6.0','2.0','35.0'),
('1610612740','21900900','139','NOP','New Orleans','Derrick Favors','5.0','0.417','0.0','0.0','2.0','1.0','14.0','0.0','1.0','1.0','0.0','1.0','12.0'),
('1610612740','21900900','140','NOP','New Orleans','Jrue Holiday','4.0','0.4','2.0','0.4','1.0','0.5','5.0','6.0','1.0','0.0','2.0','2.0','11.0'),
('1610612740','21900900','141','NOP','New Orleans','Lonzo Ball','7.0','0.467','1.0','0.143','4.0','0.667','9.0','9.0','3.0','1.0','3.0','0.0','19.0'),
('1610612740','21900900','142','NOP','New Orleans','Josh Hart','3.0','0.6','1.0','0.333','0.0','0.0','6.0','3.0','0.0','0.0','1.0','1.0','7.0'),
('1610612740','21900900','143','NOP','New Orleans','Nicolo Melli','2.0','0.25','1.0','0.143','5.0','0.833','2.0','0.0','1.0','1.0','0.0','0.0','10.0'),
('1610612740','21900900','144','NOP','New Orleans','E\'Twaun Moore','2.0','0.5','1.0','1.0','0.0','0.0','3.0','3.0','0.0','0.0','0.0','0.0','5.0'),
('1610612740','21900900','145','NOP','New Orleans','Frank Jackson','0.0','0.0','0.0','0.0','0.0','0.0','2.0','1.0','0.0','0.0','1.0','0.0','0.0'),
('1610612740','21900900','146','NOP','New Orleans','Nickeil Alexander-Walker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612740','21900900','147','NOP','New Orleans','Jaxson Hayes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612740','21900900','148','NOP','New Orleans','Jahlil Okafor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1610612740','21900900','149','NOP','New Orleans','JJ Redick', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
