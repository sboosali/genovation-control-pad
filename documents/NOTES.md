==================================================
== `deriving` templates

-- nullary type (default)
deriving (Show,Read,Eq,Ord,Lift,Generic,NFData,Hashable)

-- enum-like
deriving (Show,Read,Eq,Ord,Enum,Bounded,Lift,Generic,NFData,Hashable)

-- unary type
deriving (Show,Read,Eq,Ord,Functor,Foldable,Traversable,Generic,NFData,Hashable)

-- string-like
newtype STRINGTYPE = STRINGTYPE String
 deriving (Show,Read,Eq,Ord,Lift,Generic,NFData,Hashable,Semigroup,Monoid,IsString)

-- list-like
newtype LISTTYPE   = LISTTYPE [ITEMTYPE]
 deriving (Show,Read,Eq,Ord,Lift,Generic,NFData,Hashable,Semigroup,Monoid,IsList)

==================================================

