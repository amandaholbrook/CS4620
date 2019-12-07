--3 queries for testing

--Select all members who participated in Eye for an Eye and have been in the guild for more than 1 year
SELECT DISTINCT MemberName, YearsInGuild
FROM Members, Characters, Campaign
WHERE MemberName = Own AND MemberName = Creator AND YearsInGuild > 1 AND Title = 'Eye for an Eye';

--Select all members with Elf Characters
SELECT Own
FROM Characters
WHERE Race = 'Elf';

--Select all characters who are theives
SELECT CharacterName
FROM Characters
WHERE Job = 'Thief';

