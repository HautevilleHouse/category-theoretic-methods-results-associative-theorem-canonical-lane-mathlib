import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type v → Type u
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentities : Prop
  adjunctionIso : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  unitNaturalClosed : A.unitNatural
  counitNaturalClosed : A.counitNatural
  triangleIdentitiesClosed : A.triangleIdentities
  adjunctionIsoClosed : A.adjunctionIso

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.unitNatural ∧ A.counitNatural ∧
  A.triangleIdentities ∧ A.adjunctionIso

theorem adjoint_functor_closed_from_evidence
    (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.unitNaturalClosed
    (And.intro E.counitNaturalClosed
      (And.intro E.triangleIdentitiesClosed
        E.adjunctionIsoClosed))

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse