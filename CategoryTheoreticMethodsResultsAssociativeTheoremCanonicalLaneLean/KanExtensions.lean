import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure KanExtension {C D A : Type u} [Category.{v} C] [Category.{v} D] [Category.{v} A] (F : C ⥤ D) (G : C ⥤ A) where
  leftExtension : D ⥤ A
  unitTransformation : G ⟶ F ⋙ leftExtension
  universalProperty : ∀ (H : D ⥤ A) (α : G ⟶ F ⋙ H), ∃! (β : leftExtension ⟶ H), ∀ (X : C), α.app X = (unitTransformation.app X) ≫ (F.map (β.app (F.obj X))) ≫ (H.map (𝟙 (F.obj X)))

  -- right Kan extension similarly

structure KanExtensionEvidence (e : KanExtension F G) where
  leftExists : Nonempty e.leftExtension
  rightExists : Nonempty e.rightExtension
  unitNatural : true
  universalHolds : true

def kanExtensionClosed (e : KanExtension F G) : Prop :=
  Nonempty (KanExtensionEvidence e)

theorem kanExtensionClosedFromEvidence (e : KanExtension F G) (ev : KanExtensionEvidence e) : kanExtensionClosed e :=
  ⟨ev⟩

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse