import CellBiologyHedgehogSignalingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.ligandBound ∨ A.receptorActivation

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse