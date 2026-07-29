import CellBiologyHedgehogSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HedgehogWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse