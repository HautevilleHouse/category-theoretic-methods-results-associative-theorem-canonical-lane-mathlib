import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure MonadPackage (C : Type u) [Category.{v} C] where
  monad : C → C
  unit : Function.End C
  multiplication : Function.End C
  associativity : Prop
  identityLaws : Prop

structure MonadEvidence {C : Type u} [Category.{v} C] (M : MonadPackage C) where
  associativityClosed : M.associativity
  identityLawsClosed : M.identityLaws

def MonadClosed {C : Type u} [Category.{v} C] (M : MonadPackage C) : Prop :=
  M.associativity ∧ M.identityLaws

theorem monad_closed_from_evidence {C : Type u} [Category.{v} C] (M : MonadPackage C)
    (E : MonadEvidence M) : MonadClosed M := by
  exact And.intro E.associativityClosed E.identityLawsClosed

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse
