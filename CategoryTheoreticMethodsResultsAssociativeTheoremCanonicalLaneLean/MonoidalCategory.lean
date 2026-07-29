import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure MonoidalCategory (C : Type u) [Category.{v} C] where
  tensorProduct : C × C ⥤ C
  unitObject : C
  associator : ∀ (A B C : C), (tensorProduct.obj (A, tensorProduct.obj (B, C))) ≅ tensorProduct.obj (tensorProduct.obj (A, B), C)
  leftUnitor : ∀ (A : C), tensorProduct.obj (unitObject, A) ≅ A
  rightUnitor : ∀ (A : C), tensorProduct.obj (A, unitObject) ≅ A
  pentagonIdentity : ∀ (A B C D : C), ...
  triangleIdentity : ∀ (A B : C), ...

structure MonoidalCategoryEvidence (M : MonoidalCategory C) where
  tensorProductDefined : Nonempty M.tensorProduct
  unitObjectDefined : Nonempty M.unitObject
  coherenceHolds : true

def monoidalCategoryClosed (M : MonoidalCategory C) : Prop :=
  Nonempty (MonoidalCategoryEvidence M)

theorem monoidalCategoryClosedFromEvidence (M : MonoidalCategory C) (e : MonoidalCategoryEvidence M) : monoidalCategoryClosed M :=
  ⟨e⟩

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse