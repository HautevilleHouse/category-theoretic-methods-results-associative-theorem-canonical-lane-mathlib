import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure MonadStructurePackage where
  endofunctor : Prop
  unitNatural : Prop
  multiplicationNatural : Prop
  associativity : Prop
  unitLaws : Prop

structure MonadStructureEvidence (M : MonadStructurePackage) where
  endofunctorClosed : M.endofunctor
  unitNaturalClosed : M.unitNatural
  multiplicationNaturalClosed : M.multiplicationNatural
  associativityClosed : M.associativity
  unitLawsClosed : M.unitLaws

def MonadStructureClosed (M : MonadStructurePackage) : Prop :=
  M.endofunctor ∧ M.unitNatural ∧ M.multiplicationNatural ∧ M.associativity ∧ M.unitLaws

theorem monad_structure_closed_from_evidence (M : MonadStructurePackage) (E : MonadStructureEvidence M) :
    MonadStructureClosed M := by
  exact And.intro E.endofunctorClosed (And.intro E.unitNaturalClosed (And.intro E.multiplicationNaturalClosed (And.intro E.associativityClosed E.unitLawsClosed)))

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse