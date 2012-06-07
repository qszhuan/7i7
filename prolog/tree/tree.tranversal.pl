 /* tree database */
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
    j is_parent_of q .
    j is_parent_of r .
    j is_parent_of s .

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

/* Depth of node in the tree*/
:- op(500, xfx, 'has_depth').
a has_depth 0 :- !.
Node has_depth Depth :- 
  Parent is_parent_of Node,
  Parent has_depth D1,
  D is D1 + 1.

/*Locate node by finding a path from root down to the node.*/
path(a).
path(Node) :- 
  Parent is_parent_of Node,
  path(Parent),
  write(Parent),
  write('-->').

locate(Node) :- 
  path(Node),
  write(Node),
  nl.

/* leaf */
leaf(Node) :- not(is_parent_of(Node, Child)).

max([], M, M).
max([H|T], M, A) :- (H > M -> max(T, H, A); max(T, M, A))


/*  */
  
