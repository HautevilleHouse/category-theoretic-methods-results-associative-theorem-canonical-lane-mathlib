import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure AbelianCategoryPackage where
  additive : Prop
  kernelExists : Prop
  cokernelExists : Prop
  monomorphismEqualizer : Prop
  epimorphismCoequalizer : Prop

structure AbelianCategoryEvidence (A : AbelianCategoryPackage) where
  additiveClosed : A.additive
  kernelExistsClosed : A.kernelExists
  cokernelExistsClosed : A.cokernelExists
  monomorphismEqualizerClosed : A.monomorphismEqualizer
  epimorphismCoequalizerClosed : A.epimorphismCoequalizer

def AbelianCategoryClosed (A : AbelianCategoryPackage) : Prop :=
  A.additive ∧ A.kernelExists ∧ A.cokernelExists ∧ A.monomorphismEqualizer ∧ A.epimorphismCoequalizer

theorem abelian_category_closed_from_evidence (A : AbelianCategoryPackage) (E : AbelianCategoryEvidence A) :
    AbelianCategoryClosed A := by
  exact And.intro E.additiveClosed (And.intro E.kernelExistsClosed (And.intro E.cokernelExistsClosed (And.intro E.monomorphismEqualizerClosed E.epimorphismCoequalizerClosed)))

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse