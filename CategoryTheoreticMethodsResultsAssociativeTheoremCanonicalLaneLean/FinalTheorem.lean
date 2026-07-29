import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean.UniversalConstructions
import CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean.AdjointFunctor
import CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean.YonedaLemma

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  UniversalConstructionClosed A.object.universalConstruction ∧
  AdjointFunctorClosed A.object.adjointFunctor ∧
  YonedaLemmaClosed A.object.yonedaLemma

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedCategoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_category_endgame (A : AdmissibleClass) :
    ConstrainedCategoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse