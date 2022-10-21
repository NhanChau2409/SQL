select (if(t.grade<8, NULL, t.name)), t.grade, t.marks
from (select *
      from grades as g, students as s
      where s.marks between g.min_mark and g.max_mark) as t
order by t.grade desc, t.name asc;
