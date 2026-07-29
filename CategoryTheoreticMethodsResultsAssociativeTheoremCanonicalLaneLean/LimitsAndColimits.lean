import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure LimitCone {J C : Type u} [Category.{v} J] [Category.{v} C] (F : J ⥤ C) where
  cone : Cone F
  universal : ∀ (c : Cone F), ∃! (m : c.pt ⟶ cone.pt), ∀ (j : J), m ≫ cone.π.app j = c.π.app j

structure ColimitCocone {J C : Type u} [Category.{v} J] [Category.{v} C] (F : J ⥤ C) where
  cocone : Cocone F
  universal : ∀ (c : Cocone F), ∃! (m : cocone.pt ⟶ c.pt), ∀ (j : J), cocone.ι.app j ≫ m = c.ι.app j

structure LimitsClosed {C : Type u} [Category.{v} C] where
  hasLimits : ∀ {J : Type u} [Category.{v} J] (F : J ⥤ C), Nonempty (LimitCone F)
  hasColimits : ∀ {J : Type u} [Category.{v} J] (F : J ⥤ C), Nonempty (ColimitCocone F)

def limitsEvidence (L : LimitsClosed C) : LimitsClosed C := L

theorem limitsClosedFromEvidence (L : LimitsClosed C) : LimitsClosed C := L

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse