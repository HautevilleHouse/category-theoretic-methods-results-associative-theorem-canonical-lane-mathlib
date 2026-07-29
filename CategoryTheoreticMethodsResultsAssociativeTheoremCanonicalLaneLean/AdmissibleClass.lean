import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CategoryTheoreticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoryTheoreticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse