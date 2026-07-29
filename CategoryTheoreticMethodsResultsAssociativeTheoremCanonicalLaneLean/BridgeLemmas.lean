import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoryTheoreticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoryTheoreticMethodsResultsAssociativeTheoremCanonicalLaneLean
end HautevilleHouse