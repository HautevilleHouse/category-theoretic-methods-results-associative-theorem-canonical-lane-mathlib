import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

structure UniversalConstructionPackage where
  initialObject : Type u
  terminalObject : Type v
  productExists : Prop
  coproductExists : Prop
  equalizerExists : Prop
  coequalizerExists : Prop
  pullbackExists : Prop
  pushoutExists : Prop
  initialObjectUniversal : Prop
  terminalObjectUniversal : Prop
  productUniversal : Prop
  coproductUniversal : Prop
  equalizerUniversal : Prop
  coequalizerUniversal : Prop
  pullbackUniversal : Prop
  pushoutUniversal : Prop

structure UniversalConstructionEvidence (U : UniversalConstructionPackage) where
  initialObjectUniversalClosed : U.initialObjectUniversal
  terminalObjectUniversalClosed : U.terminalObjectUniversal
  productUniversalClosed : U.productUniversal
  coproductUniversalClosed : U.coproductUniversal
  equalizerUniversalClosed : U.equalizerUniversal
  coequalizerUniversalClosed : U.coequalizerUniversal
  pullbackUniversalClosed : U.pullbackUniversal
  pushoutUniversalClosed : U.pushoutUniversal

def UniversalConstructionClosed (U : UniversalConstructionPackage) : Prop :=
  U.initialObjectUniversal ∧ U.terminalObjectUniversal ∧
  U.productUniversal ∧ U.coproductUniversal ∧
  U.equalizerUniversal ∧ U.coequalizerUniversal ∧
  U.pullbackUniversal ∧ U.pushoutUniversal

theorem universal_construction_closed_from_evidence
    (U : UniversalConstructionPackage) (E : UniversalConstructionEvidence U) :
    UniversalConstructionClosed U := by
  exact And.intro E.initialObjectUniversalClosed
    (And.intro E.terminalObjectUniversalClosed
      (And.intro E.productUniversalClosed
        (And.intro E.coproductUniversalClosed
          (And.intro E.equalizerUniversalClosed
            (And.intro E.coequalizerUniversalClosed
              (And.intro E.pullbackUniversalClosed
                E.pushoutUniversalClosed))))))

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse