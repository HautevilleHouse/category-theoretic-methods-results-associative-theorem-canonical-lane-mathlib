import HautevilleHouse.CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CategorySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CategoryAdmittedObject where
  space : CategorySpace
  completeCategory : Prop
  locallySmall : Prop
  targetModel : Type
  targetTopology : TopologicalSpace targetModel
  equivalentToModel : Prop
  conclusion : equivalentToModel

structure CategoryEndgameState where
  object : CategoryAdmittedObject

def CategoryWitnessClosed (O : CategoryAdmittedObject) : Prop :=
  O.equivalentToModel

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse