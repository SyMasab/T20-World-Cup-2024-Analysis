
-- CREATE DATABASE --
create DATABASE Circketworldcup24;
use circketworldcup24;

-- CREATE TABLES --

CREATE TABLE Matches (
    MatchNo INT PRIMARY KEY,
    DateOfMatch DATE,
    TossWinner VARCHAR(50),
    TossDecision VARCHAR(10) default 'Bat/Bowl',
	MatchType VARCHAR(20),
    SuperOverMatch VARCHAR(5)
);
create table Teams(
 GroupA VARCHAR(80) unique,
    GroupB VARCHAR(80) UNIQUE,
    GroupC varchar(80) unique,
    GroupD varchar(80) unique
    );
    create table Venues(VenuID int,
     VenueStadium VARCHAR(100),
    VenueCity VARCHAR(50)
    );
    
create table results(
    MatchResult VARCHAR(20),
    WinningTeam VARCHAR(50),
    ManOfMatch VARCHAR(50),
    WinByRuns INT,
    WinByWickets INT
    );
    create table TopPerformance(
Leading_runscorers varchar(90) UNIQUE,
most_sixes INT unique,
Highest_scores varchar(80)unique,
Most_catches INT unique,
Best_economy_rate decimal(2,1) unique
);

-- SHOW ALL TABLES --
show TABLES;

-- MODIFY TABLE --
ALTER TABLE Topperformance drop index most_sixes ;
alter table topperformance modify Highest_scores INT unique;
alter table topperformance modify Best_economy_rate varchar(80) unique;
alter table topperformance ADD column Highest_wicket_takers varchar(80);

-- TABLE STRUCTURE--
desc matches;
desc Teams;
desc Venues;
desc results;
desc Topperformance;

    
-- INSERTING VALUES --

INSERT INTO Matches (MatchNo, DateOfMatch, TossWinner, TossDecision, MatchType, SuperOverMatch) VALUES
(1, '2024-06-02', 'USA', 'bowl', 'Group Stage', 'No'),
(2, '2024-06-02', 'West Indies', 'bowl', 'Group Stage', 'No'),
(3, '2024-06-03', 'Namibia', 'bowl', 'Group Stage', 'Yes'),
(4, '2024-06-03', 'Sri Lanka', 'bowl', 'Group Stage', 'No'),
(5, '2024-06-04', 'Uganda', 'bowl', 'Group Stage', 'No'),
(6, '2024-06-05', 'Scotland', 'bat', 'Group Stage', 'No'),
(7, '2024-06-05', 'Netherlands', 'bowl', 'Group Stage', 'No'),
(8, '2024-06-05', 'India', 'bowl', 'Group Stage', 'No'),
(9, '2024-06-06', 'Uganda', 'bowl', 'Group Stage', 'No'),
(10, '2024-06-06', 'Oman', 'bowl', 'Group Stage', 'No'),
(11, '2024-06-07', 'USA', 'bowl', 'Group Stage', 'Yes'),
(12, '2024-06-07', 'Namibia', 'bat', 'Group Stage', 'No'),
(13, '2024-06-07', 'Ireland', 'bowl', 'Group Stage', 'No'),
(14, '2024-06-08', 'New Zealand', 'bowl', 'Group Stage', 'No'),
(15, '2024-06-08', 'Bangladesh', 'bowl', 'Group Stage', 'No'),
(16, '2024-06-08', 'South Africa', 'bowl', 'Group Stage', 'No'),
(17, '2024-06-09', 'England', 'bowl', 'Group Stage', 'No'),
(18, '2024-06-09', 'West Indies', 'bat', 'Group Stage', 'No'),
(19, '2024-06-10', 'Pakistan', 'bowl', 'Group Stage', 'No'),
(20, '2024-06-10', 'Oman', 'bat', 'Group Stage', 'No'),
(21, '2024-06-10', 'South Africa', 'bat', 'Group Stage', 'No'),
(22, '2024-06-11', 'Pakistan', 'bowl', 'Group Stage', 'No'),
(23, '2024-06-12', '', '', 'Group Stage', 'No'),
(24, '2024-06-12', 'Australia', 'bowl', 'Group Stage', 'No'),
(25, '2024-06-12', 'India', 'bowl', 'Group Stage', 'No'),
(26, '2024-06-13', 'New Zealand', 'bowl', 'Group Stage', 'No'),
(27, '2024-06-13', 'Netherlands', 'bowl', 'Group Stage', 'No'),
(28, '2024-06-14', 'England', 'bowl', 'Group Stage', 'No'),
(29, '2024-06-14', 'Afghanistan', 'bowl', 'Group Stage', 'No'),
(30, '2024-06-15', '', '', 'Group Stage', 'No'),
(31, '2024-06-15', 'Nepal', 'bowl', 'Group Stage', 'No'),
(32, '2024-06-15', 'New Zealand', 'bowl', 'Group Stage', 'No'),
(33, '2024-06-16', '', '', 'Group Stage', 'No'),
(34, '2024-06-16', 'Namibia', 'bowl', 'Group Stage', 'No'),
(35, '2024-06-16', 'Australia', 'bowl', 'Group Stage', 'No'),
(36, '2024-06-16', 'Pakistan', 'bowl', 'Group Stage', 'No'),
(37, '2024-06-17', 'Nepal', 'bowl', 'Group Stage', 'No'),
(38, '2024-06-17', 'Netherlands', 'bowl', 'Group Stage', 'No'),
(39, '2024-06-17', 'New Zealand', 'bowl', 'Group Stage', 'No'),
(40, '2024-06-18', 'Afghanistan', 'bowl', 'Group Stage', 'No'),
(41, '2024-06-19', 'USA', 'bowl', 'Super Eight', 'No'),
(42, '2024-06-20', 'England', 'bowl', 'Super Eight', 'No'),
(43, '2024-06-20', 'India', 'bat', 'Super Eight', 'No'),
(44, '2024-06-21', 'Australia', 'bowl', 'Super Eight', 'No'),
(45, '2024-06-21', 'England', 'bowl', 'Super Eight', 'No'),
(46, '2024-06-22', 'West Indies', 'bowl', 'Super Eight', 'No'),
(47, '2024-06-22', 'Bangladesh', 'bowl', 'Super Eight', 'No'),
(48, '2024-06-23', 'Australia', 'bowl', 'Super Eight', 'No'),
(49, '2024-06-23', 'England', 'bowl', 'Super Eight', 'No'),
(50, '2024-06-24', 'South Africa', 'bowl', 'Super Eight', 'No'),
(51, '2024-06-24', 'Australia', 'bowl', 'Super Eight', 'No'),
(52, '2024-06-25', 'Afghanistan', 'bat', 'Super Eight', 'No'),
(53, '2024-06-27', 'Afghanistan', 'bat', 'Semi Final', 'No'),
(54, '2024-06-27', 'England', 'bowl', 'Semi Final', 'No'),
(55, '2024-06-29', 'India', 'bat', 'Final', 'No');

INSERT INTO Teams (GroupA, GroupB, GroupC, GroupD) VALUES
('INDIA, PAKISTAN, IRELAND, USA, CANADA',
 'AUSTRALIA, ENGLAND, SCOTLAND, NAMIBIA, OMAN',
 'WEST INDIES, AFGHANISTAN, NEW ZEALAND, UGANDA, PAPUA NEW GUINEA',
 'SOUTH AFRICA, BANGLADESH, SRILANKA, NETHERLANDS, NEPAL');
 
 
-- ADD COLUMN --
alter table venues add column Venu_ID INT ;
 
INSERT INTO Venues (VenuID, VenueStadium, VenueCity) VALUES
(101, 'Grand Prairie Stadium', 'Dallas'),
(102, 'Providence Stadium', 'Providence'),
(103, 'Kensington Oval', 'Bridgetown'),
(104, 'Nassau County International Cricket Stadium', 'New York'),
(102, 'Providence Stadium', 'Providence'),
(103, 'Kensington Oval', 'Bridgetown'),
(101, 'Grand Prairie Stadium', 'Dallas'),
(104, 'Nassau County International Cricket Stadium', 'New York'),
(102, 'Providence Stadium', 'Providence'),
(103, 'Kensington Oval', 'Bridgetown'),
(101, 'Grand Prairie Stadium', 'Dallas'),
(103, 'Kensington Oval', 'Bridgetown'),
(104, 'Nassau County International Cricket Stadium', 'New York'),
(102, 'Providence Stadium', 'Providence'),
(101, 'Grand Prairie Stadium', 'Dallas'),
(104, 'Nassau County International Cricket Stadium', 'New York'),
(103, 'Kensington Oval', 'Bridgetown'),
(102, 'Providence Stadium', 'Providence'),
(104, 'Nassau County International Cricket Stadium', 'New York'),
(105, 'Sir Vivian Richards Stadium', 'North Sound'),
(104, 'Nassau County International Cricket Stadium', 'New York'),
(104, 'Nassau County International Cricket Stadium', 'New York'),
(106, 'Central Broward Regional Park Stadium Turf Ground', 'Lauderhill'),
(105, 'Sir Vivian Richards Stadium', 'North Sound'),
(104, 'Nassau County International Cricket Stadium', 'New York'),
(107, 'Brian Lara Stadium', 'Tarouba'),
(108, 'Arnos Vale Ground', 'Kingstown'),
(105, 'Sir Vivian Richards Stadium', 'North Sound'),
(107, 'Brian Lara Stadium', 'Tarouba'),
(106, 'Central Broward Regional Park Stadium Turf Ground', 'Lauderhill'),
(108, 'Arnos Vale Ground', 'Kingstown'),
(107, 'Brian Lara Stadium', 'Tarouba'),
(106, 'Central Broward Regional Park Stadium Turf Ground', 'Lauderhill'),
(105, 'Sir Vivian Richards Stadium', 'North Sound'),
(109, 'Daren Sammy National Cricket Stadium', 'Gros Islet'),
(106, 'Central Broward Regional Park Stadium Turf Ground', 'Lauderhill'),
(108, 'Arnos Vale Ground', 'Kingstown'),
(109, 'Daren Sammy National Cricket Stadium', 'Gros Islet'),
(107, 'Brian Lara Stadium', 'Tarouba'),
(109, 'Daren Sammy National Cricket Stadium', 'Gros Islet'),
(105, 'Sir Vivian Richards Stadium', 'North Sound'),
(109, 'Daren Sammy National Cricket Stadium', 'Gros Islet'),
(103, 'Kensington Oval', 'Bridgetown'),
(105, 'Sir Vivian Richards Stadium', 'North Sound'),
(109, 'Daren Sammy National Cricket Stadium', 'Gros Islet'),
(103, 'Kensington Oval', 'Bridgetown'),
(105, 'Sir Vivian Richards Stadium', 'North Sound'),
(108, 'Arnos Vale Ground', 'Kingstown'),
(103, 'Kensington Oval', 'Bridgetown'),
(105, 'Sir Vivian Richards Stadium', 'North Sound'),
(106, 'Central Broward Regional Park Stadium Turf Ground', 'Lauderhill'),
(108, 'Arnos Vale Ground', 'Kingstown'),
(107, 'Brian Lara Stadium', 'Tarouba'),
(102, 'Providence Stadium', 'Providence'),
(103, 'Kensington Oval', 'Bridgetown');


INSERT INTO results (MatchResult, WinningTeam, ManOfMatch, WinByRuns, WinByWickets) VALUES
('Played', 'USA', 'Aaron Jones', NULL, 0),
('Played', 'West Indies', 'RL Chase', NULL, 5),
('Played', 'Namibia', 'D Wiese', 11, NULL),
('Played', 'South Africa', 'A Nortje', NULL, 6),
('Played', 'Afghanistan', 'Fazalhaq Farooqi', 125, NULL),
('Abandoned', NULL, NULL, NULL, NULL),
('Played', 'Netherlands', 'TJG Pringle', NULL, 6),
('Played', 'India', 'JJ Bumrah', NULL, 8),
('Played', 'Uganda', 'Riazat Ali Shah', NULL, 3),
('Played', 'Australia', 'MP Stoinis', 39, NULL),
('Played', 'USA', 'MD Patel', 5, NULL),
('Played', 'Scotland', 'MA Leask', NULL, 5),
('Played', 'Canada', 'NR Kirton', 12, NULL),
('Played', 'Afghanistan', 'Rahmanullah Gurbaz', 84, NULL),
('Played', 'Bangladesh', 'Rishad Hossain', NULL, 2),
('Played', 'South Africa', 'DA Miller', NULL, 4),
('Played', 'Australia', 'A Zampa', 36, NULL),
('Played', 'West Indies', 'AJ Hosein', 134, NULL),
('Played', 'India', 'JJ Bumrah', 6, NULL),
('Played', 'Scotland', 'BJ McMullen', NULL, 7),
('Played', 'South Africa', 'H Klaasen', 4, NULL),
('Played', 'Pakistan', 'Mohammad Amir', NULL, 7),
('Abandoned', NULL, NULL, NULL, NULL),
('Played', 'Australia', 'A Zampa', NULL, 9),
('Played', 'India', 'Arshdeep Singh', NULL, 7),
('Played', 'West Indies', 'SE Rutherford', 13, NULL),
('Played', 'Bangladesh', 'Shakib Al Hasan', 25, NULL),
('Played', 'England', 'AU Rashid', NULL, 8),
('Played', 'Afghanistan', 'Fazalhaq Farooqi', NULL, 7),
('Abandoned', NULL, NULL, NULL, NULL),
('Played', 'South Africa', 'T Shamsi', 1, NULL),
('Played', 'New Zealand', 'TG Southee', NULL, 9),
('Abandoned', NULL, NULL, NULL, NULL),
('Played', 'England', 'HC Brook', 41, NULL),
('Played', 'Australia', 'MP Stoinis', NULL, 5),
('Played', 'Pakistan', 'Shaheen Shah Afridi', NULL, 3),
('Played', 'Bangladesh', 'Tanzim Hasan Sakib', 21, NULL),
('Played', 'Sri Lanka', 'KIC Asalanka', 83, NULL),
('Played', 'New Zealand', 'LH Ferguson', NULL, 7),
('Played', 'West Indies', 'N Pooran', 104, NULL),
('Played', 'South Africa', 'Q de Kock', 18, NULL),
('Played', 'England', 'PD Salt', NULL, 8),
('Played', 'India', 'SA Yadav', 47, NULL),
('Played', 'Australia', 'PJ Cummins', 28, NULL),
('Played', 'South Africa', 'Q de Kock', 7, NULL),
('Played', 'West Indies', 'RL Chase', NULL, 9),
('Played', 'India', 'HH Pandya', 50, NULL),
('Played', 'Afghanistan', 'Gulbadin Naib', 21, NULL),
('Played', 'England', 'AU Rashid', NULL, 10),
('Played', 'South Africa', 'T Shamsi', NULL, 3),
('Played', 'India', 'RG Sharma', 24, NULL),
('Played', 'Afghanistan', 'Naveen-ul-Haq', NULL, 8),
('Played', 'South Africa', 'M Jansen', NULL, 9),
('Played', 'India', 'AR Patel', 68, NULL),
('Played', 'India', 'V Kohli', NULL, 7);


-- Insert data into the Topperformances table
INSERT INTO Topperformance(
    Leading_runscorers, Most_sixes, Highest_scores, Most_catches, Best_economy_rate, Highest_wicket_takers
) VALUES
('Rahmanullah Gurbaz', 'Nicholas Pooran', 98, 'Aiden Markram', 'Rachin Ravindra', 'Fazalhaq Farooqi'),
('Rohit Sharma', 'Rahmanullah Gurbaz', 94, 'Glenn Maxwell', 'Tim Southee', 'Arshdeep Singh'),
('Travis Head', 'Travis Head', 92, 'Harry Brook', 'Trent Boult', 'Jasprit Bumrah'),
('Quinton de Kock', 'Rohit Sharma', 87, 'Tristan Stubbs', 'Sompal Kami', 'Anrich Nortje'),
('Ibrahim Zardan', 'Aaron Jones', 83, 'Tanzim Hasan Sakib', 'Bradley Currie', 'Rashid Khan');


-- RETRIEVE DATA FROM ALL TABLES

select * FROM Matches;

select * FROM Results;

select * from teams;

select * from topperformance;

select * from venues;


-- CHECK INDEXES--
Show INDEX FROM matches;


-- ADD COLUMN --
alter table venues add column Venu_ID INT ;


--	Disable foreign key checks --
SET FOREIGN_KEY_CHECKS=0;

-- Adding foregin keys--

alter table Matches ADD constraint FK_TossWinners_Team
foreign key (TossWinner) references teams(GroupA);
alter table results ADD constraint FK_Winning_Team
foreign key (WinningTeam) references teams(GroupA);
alter table topperformance ADD constraint fk_LeadingRun_scorer
foreign key (Leading_runscorers) references teams(GroupC);
ALTER table topperformance add constraint fk_most_sixes
foreign key (most_sixes) references teams(GroupC);
ALTER TABLE results	add constraint FK_Highest_scores
foreign key (WinbyRuns) references topperformance(Highest_scores);
ALTER table teams add constraint FK_Most_catches
foreign key (GroupD) references topperformance(most_catches);
ALTER TABLE topperformance add constraint FK_Best_Bowling
foreign key (Best_economy_rate)references teams (GroupA);
alter TABLE topperformance add constraint FK_Highest_wickets
foreign key (Highest_wicket_takers) references teams(GroupC);
alter table venues ADD constraint FK_Match_Venue
foreign key (venuID) references matches(matchno);

-- Re-enable Foreign Key Checks:
SET FOREIGN_KEY_CHECKS=1;

-- RELATIVE SQL QUERIES--

alter table results ADD column Result_ID INT auto_increment 
primary key;


desc results;
ALTER TABLE results change ManOfMatch
ManoftheMatch varchar(50);

alter table matches add constraint fk_Match_Results
foreign key (matchno) references results(result_ID);
select *FROM results;
select * from matches;

-- Retrieve the ManOfMatch for MatchNo 3.

SELECT *
FROM Matches 
LEFT join results on 
results.result_ID = Matches.MatchNo
WHERE MatchNo =3 and result_id=3;

-- Retrieve the WinningTeam from the Results table ordered alphabetically (ASC)--
select winningteam from results
order by WinningTeam;

-- Count the number of matches played --
select count(matchno) FROM matches;

-- Find the match details (MatchNo, DateOfMatch, TossWinner, TossDecision) where the TossDecision was 'Bat'--
select matchno,dateofmatch,tosswinner,tossdecision 
FROM matches
WHERE TossDecision='Bat';

--  List all teams and their corresponding venues where matches have been played --

SELECT 
    CONCAT(GroupA, ', ', GroupB, ', ', GroupC, ', ', GroupD) AS teams,
    venuestadium AS venue
FROM 
    teams, venues;
    
-- Retrieve the match results where the WinByRuns is greater than 50--
select 	Winbyruns from results
where WinByRuns >50;

-- Highest scorer of the Tournament--
select max(Highest_scores) 
from topperformance;

-- Retrieve the matches where the WinningTeam is not 'Team B'--
select winningteam FROM
results where
WinningTeam <> 'Pakistan';
select * FROM venues;

-- Retrieve the Toss details (TossWinner, TossDecision) for all matches.

select tosswinner,tossdecision FROM
matches;

-- List all matches along with their MatchType in alphabetical order.
select matchno,matchtype 
FROM matches
order by MatchType ASC;

-- Find the cities where matches have been played, without repeating any city name.
select distinct venuecity
FROM venues;

--  Calculate the average number of runs scored by the winning teams in the Results table--
select avg(winbyruns) AS AvgRunScored FROM
results;

--  Retrieve the teams that won matches, along with their winning margins (WinByRuns and WinByWickets)--
SELECT WinningTeam, WinByRuns, WinByWickets
FROM Results
WHERE MatchResult = 'Played';

-- List the matches where the Super Over was played--
select * from
matches where SuperOverMatch='YES';

-- Retrieve the dates of matches that were played where the TossWinner decided to bat--
select dateofmatch ,TossDecision
FROM matches
where TossDecision='bat';

-- Find the total number of matches played--
select count(matchresult) as Totalmatchplayed
from results
where MatchResult='played';
SELECT * FROM results;
-- INDEXES --
create Index Top_Batsmans ON topperformance (Leading_runscorers);

create index WorldCupWinners ON results(WinningTeam,Result_ID);
 
 select WinningTeam,Result_ID from
 results WHERE WinningTeam= 'India'
 AND
 Result_ID=55;
 
 create unique index LeadingWicketTakers
 ON topperformance(Highest_wicket_takers);
 select * from results;
 
 update results 
 SET winningTeam ='Abandoned'
 WHERE WinningTeam= 'NULL';