import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure Adjunction (C D : Type u) [Category.{v} C] [Category.{v} D] where
  left : C ⥤ D
  right : D ⥤ C
  unit : 𝟭 C ⟶ left ⋙ right
  counit : right ⋙ left ⟶ 𝟭 D
  triangleLeft : ∀ (X : C), (unit.app X) ▷ (left.map (counit.app (left.obj X))) = 𝟙 (left.obj X)
  triangleRight : ∀ (Y : D), (right.map (unit.app (right.obj Y))) ▷ (counit.app Y) = 𝟙 (right.obj Y)

structure AdjunctionEvidence (adj : Adjunction C D) where
  leftAdjointExists : Nonempty (adj.left)
  rightAdjointExists : Nonempty (adj.right)
  unitNatural : true
  counitNatural : true
  triangleLeftHolds : ∀ (X : C), adj.triangleLeft X
  triangleRightHolds : ∀ (Y : D), adj.triangleRight Y

def adjunctionClosed (adj : Adjunction C D) : Prop :=
  Nonempty (AdjunctionEvidence adj)

theorem adjunctionClosedFromEvidence (adj : Adjunction C D) (e : AdjunctionEvidence adj) : adjunctionClosed adj :=
  ⟨e⟩

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse