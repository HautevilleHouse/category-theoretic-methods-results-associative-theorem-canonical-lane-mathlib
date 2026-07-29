import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure LimitColimitPackage where
  limitExists : Prop
  colimitExists : Prop
  universalCone : Prop
  universalCocone : Prop
  functoriality : Prop

structure LimitColimitEvidence (L : LimitColimitPackage) where
  limitExistsClosed : L.limitExists
  colimitExistsClosed : L.colimitExists
  universalConeClosed : L.universalCone
  universalCoconeClosed : L.universalCocone
  functorialityClosed : L.functoriality

def LimitColimitClosed (L : LimitColimitPackage) : Prop :=
  L.limitExists ∧ L.colimitExists ∧ L.universalCone ∧ L.universalCocone ∧ L.functoriality

theorem limit_colimit_closed_from_evidence (L : LimitColimitPackage) (E : LimitColimitEvidence L) :
    LimitColimitClosed L := by
  exact And.intro E.limitExistsClosed (And.intro E.colimitExistsClosed (And.intro E.universalConeClosed (And.intro E.universalCoconeClosed E.functorialityClosed)))

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse