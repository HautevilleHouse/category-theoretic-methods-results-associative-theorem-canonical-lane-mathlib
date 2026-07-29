import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure YonedaLemmaPackage where
  category : Type u
  homFunctor : Type u → Type v
  yonedaEmbedding : Prop
  naturalTransformation : Prop
  yonedaLemma : Prop
  fullFaithfulness : Prop

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  yonedaEmbeddingClosed : Y.yonedaEmbedding
  naturalTransformationClosed : Y.naturalTransformation
  yonedaLemmaClosed : Y.yonedaLemma
  fullFaithfulnessClosed : Y.fullFaithfulness

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.yonedaEmbedding ∧ Y.naturalTransformation ∧
  Y.yonedaLemma ∧ Y.fullFaithfulness

theorem yoneda_lemma_closed_from_evidence
    (Y : YonedaLemmaPackage) (E : YonedaLemmaEvidence Y) :
    YonedaLemmaClosed Y := by
  exact And.intro E.yonedaEmbeddingClosed
    (And.intro E.naturalTransformationClosed
      (And.intro E.yonedaLemmaClosed
        E.fullFaithfulnessClosed))

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse