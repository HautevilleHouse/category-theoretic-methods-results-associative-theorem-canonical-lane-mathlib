import canonicalLaneMathlib.AdmissibleClass
import Mathlib.CategoryTheory.Basic

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure CategoryTheoreticSpace where
  carrier : Type
  categoryStructure : CategoryTheory.CategoryStruct carrier

structure CategoryTheoreticAdmittedObject where
  space : CategoryTheoreticSpace
  universalConstruction : Prop
  adjointFunctorExists : Prop
  limitColimitCommutes : Prop
  yonedaLemmaHolds : Prop
  conclusion : Prop
  conclusionTerm : conclusion

structure CategoryTheoreticEndgameState where
  object : CategoryTheoreticAdmittedObject

def CategoryTheoreticWitnessClosed (O : CategoryTheoreticAdmittedObject) : Prop :=
  O.conclusion

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse