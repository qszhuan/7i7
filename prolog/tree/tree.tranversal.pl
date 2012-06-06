%-- /* tree database */
:- op(500, xfx, is_parent_of).

a is_parent_of b. 
  b is_parent_of e.
    e is_parent_of k.
  b is_parent_of f.
    f is_parent_of l.
    f is_parent_of m.
      m is_parent_of t.
a is_parent_of c.
  c is_parent_of g.
  c is_parent_of h.
    h is_parent_of n.
  c is_parent_of i.
    i is_parent_of o.
    i is_parent_of p.
a is_parent_of d.
  d is_parent_of j.
    j is_parent_of q.
    j is_parent_of r.
    j is_parent_of s.

/* X and Y are slibings */
:- op(500, xfx, is_slibing_of).

X is_slibing_of Y :- 
  Z is_parent_of X,
  Z is_parent_of Y,
  X \== Y.

/* X and Y are on the same level in the tree*/
:- op(500, xfx, is_same_level_as).

X is_same_level_as X.
X is_same_level_as Y :-
  W is_parent_of X,
  Z is_parent_of Y,
  W is_same_level_as Z.

  
