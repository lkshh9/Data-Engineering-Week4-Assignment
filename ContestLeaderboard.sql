select h.hacker_id, h.name, sum(max_score) as total_score
from ( select hacker_id, max(score) as max_score from Submissions
group by hacker_id, challenge_id ) s left join Hackers h on s.hacker_id = h.hacker_id
group by hacker_id, name having total_score >0 order by total_score desc, hacker_id asc;

