import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean.CategoryTheoreticObjects
import HautevilleHouse.CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean.AdjointFunctorTheorem

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure LimitColimitPackage where
  limitExists : Prop
  colimitExists : Prop
  limitUniversal : Prop
  colimitUniversal : Prop
  limitWitness : limitExists
  colimitWitness : colimitExists
  limitUniversalWitness : limitUniversal
  colimitUniversalWitness : colimitUniversal

structure LimitColimitEvidence (L : LimitColimitPackage) where
  limitClosed : L.limitExists
  colimitClosed : L.colimitExists
  limitUniversalClosed : L.limitUniversal
  colimitUniversalClosed : L.colimitUniversal

def LimitColimitClosed (L : LimitColimitPackage) : Prop :=
  L.limitExists ∧ L.colimitExists ∧ L.limitUniversal ∧ L.colimitUniversal

theorem limit_colimit_closed_from_evidence (L : LimitColimitPackage) (E : LimitColimitEvidence L) :
    LimitColimitClosed L := by
  exact And.intro E.limitClosed (And.intro E.colimitClosed (And.intro E.limitUniversalClosed E.colimitUniversalClosed))

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse