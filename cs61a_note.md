## Inheritance

### ants

1.iterate over a list while mutating it, but you should iterate over a copy of the list to avoid skipping elements.

2.Even though you are overriding the superclass's `reduce_health` function (`Ant.reduce_health`), you can still use this method in your implementation by calling it. Note this is not recursion. (Why not?)

3.instance or class attribute

## discussion 8

```python
def find_path(t, x):
    """
    >>> t = tree(2, [tree(7, [tree(3), tree(6, [tree(5), tree(11)])] ), tree(15)])
    >>> find_path(t, 5)
    [2, 7, 6, 5]
    >>> find_path(t, 10)  # returns None
    """
    if label(t) == x:
        return [label(t)]
    for b in branches(t):
        path = find_path(b, x)
        if path:
            return [label(t)] + path
def find_paths(t, entry):
    """
    >>> tree_ex = Tree(2, [Tree(7, [Tree(3), Tree(6, [Tree(5), Tree(11)])]), Tree(1, [Tree(5)])])
    >>> find_paths(tree_ex, 5)
    [[2, 7, 6, 5], [2, 1, 5]]
    >>> find_paths(tree_ex, 12)
    []
    """
    paths = []
    if t.label == entry:
        paths.append([t.label])
    for b in t.branches:
        for path in find_paths(b, entry):
            paths.append([t.label]+path)
    return paths
```

## 27-scheme

list: cons car cdr nil

## scheme

I.   User-defined procedures open a new frame; builtins do no not
II.  Builtins simply execute a predefined function; user-defdefined
     procedures must evaluate additional expressions in the he body
III. Builtins have a fixed number of arguments; user-definedned procedures do not     I II正确 ？？？

## 32regular expressions

. matches any character

\w matches letters, numbers or _

\d matches a digit

\s matches a whitespace character(space, tab, newline)

[...] encloses a list of options or ranges

groups: (a|b)

quantifiers: 

+ \+ one or more copies

   * \*  zero or more copies
   * ? zero or one copy
   * {min, max} a particular number of copies or a range

anchors: 

​	^ $  start and end of the full string

​	\b the beginning or end of a word

re module: search, fullmatch, match, findall, sub

  raw string: r‘’()

ambiguity:

quantifiers are matched greedily

lazy operators *?, +?, ??

## 33_BNF

Context-Free Grammars

Backus-Naur form: a particular syntax for describing context-free grammars.

![image-20220311143758401](C:\Users\lawrence\AppData\Roaming\Typora\typora-user-images\image-20220311143758401.png)

%import directive

symbol starting with ? do not show up in the parse tree if they have exactly one child.

