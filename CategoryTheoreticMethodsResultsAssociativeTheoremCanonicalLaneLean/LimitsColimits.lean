import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure LimitsColimitsPackage (J C : Type u) [Category.{v} J] [Category.{v} C] where
  diagram : Functor J C
  limitExists : Prop
  colimitExists : Prop
  universalProperties : Prop

structure LimitsColimitsEvidence {J C : Type u} [Category.{v} J] [Category.{v} C]
    (L : LimitsColimitsPackage J C) where
  limitExistsClosed : L.limitExists
  colimitExistsClosed : L.colimitExists
  universalPropertiesClosed : L.universalProperties

def LimitsColimitsClosed {J C : Type u} [Category.{v} J] [Category.{v} C]
    (L : LimitsColimitsPackage J C) : Prop :=
  L.limitExists ∧ L.colimitExists ∧ L.universalProperties

theorem limits_colimits_closed_from_evidence {J C : Type u} [Category.{v} J] [Category.{v} C]
    (L : LimitsColimitsPackage J C) (E : LimitsColimitsEvidence L) : LimitsColimitsClosed L := by
  exact And.intro E.limitExistsClosed (And.intro E.colimitExistsClosed E.universalPropertiesClosed)

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse
