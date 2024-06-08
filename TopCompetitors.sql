select sub.hacker_id, hack.name
from Submissions as sub
join Challenges as ch on sub.challenge_id = ch.challenge_id
join Difficulty as dif on ch.difficulty_level = dif.difficulty_level
join Hackers as hack on sub.hacker_id = hack.hacker_id
where dif.score = sub.score
group by sub.hacker_id, hack.name
having count(1) > 1
order by count(1) desc, sub.hacker_id asc;