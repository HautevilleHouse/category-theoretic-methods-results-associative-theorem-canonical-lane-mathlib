import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean.CategoryTheoreticObjects

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure YonedaLemmaPackage where
  presheafCategory : Type
  yonedaEmbeddingFullFaithful : Prop
  naturalBijectionHomSets : Prop
  embeddingWitness : yonedaEmbeddingFullFaithful
  bijectionWitness : naturalBijectionHomSets

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  embeddingClosed : Y.yonedaEmbeddingFullFaithful
  bijectionClosed : Y.naturalBijectionHomSets

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.yonedaEmbeddingFullFaithful ∧ Y.naturalBijectionHomSets

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage) (E : YonedaLemmaEvidence Y) :
    YonedaLemmaClosed Y := by
  exact And.intro E.embeddingClosed E.bijectionClosed

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse