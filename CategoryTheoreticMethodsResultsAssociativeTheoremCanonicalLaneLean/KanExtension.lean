import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure KanExtensionPackage where
  leftKan : Prop
  rightKan : Prop
  universalProperty : Prop
  pointwiseFormula : Prop

structure KanExtensionEvidence (K : KanExtensionPackage) where
  leftKanClosed : K.leftKan
  rightKanClosed : K.rightKan
  universalPropertyClosed : K.universalProperty
  pointwiseFormulaClosed : K.pointwiseFormula

def KanExtensionClosed (K : KanExtensionPackage) : Prop :=
  K.leftKan ∧ K.rightKan ∧ K.universalProperty ∧ K.pointwiseFormula

theorem kan_extension_closed_from_evidence (K : KanExtensionPackage) (E : KanExtensionEvidence K) :
    KanExtensionClosed K := by
  exact And.intro E.leftKanClosed (And.intro E.rightKanClosed (And.intro E.universalPropertyClosed E.pointwiseFormulaClosed))

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse