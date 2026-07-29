import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean.CategoryTheoreticObjects
import HautevilleHouse.CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean.YonedaLemmaPackage

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type
  rightAdjoint : Type
  adjunctionHomSets : Prop
  unitCounit : Prop
  adjunctionWitness : adjunctionHomSets
  unitCounitWitness : unitCounit

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  adjunctionClosed : A.adjunctionHomSets
  unitCounitClosed : A.unitCounit

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.adjunctionHomSets ∧ A.unitCounit

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.adjunctionClosed E.unitCounitClosed

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse