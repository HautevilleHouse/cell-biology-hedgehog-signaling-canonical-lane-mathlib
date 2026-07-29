import CellBiologyHedgehogSignalingCanonicalLaneLean.SmoothenedActivation

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure TranscriptionalResponse where
  gliActivation : Prop
  targetGeneExpression : String → Float
  differentiation : Prop

def TranscriptionalResponseClosed (T : TranscriptionalResponse) : Prop :=
  T.gliActivation → ∀ g, T.targetGeneExpression g > 0.0

theorem transcriptional_response_closed_default : TranscriptionalResponseClosed { gliActivation := True, targetGeneExpression := λ _ => 1.0, differentiation := True } := by
  intro h g
  exact by
    norm_num

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse