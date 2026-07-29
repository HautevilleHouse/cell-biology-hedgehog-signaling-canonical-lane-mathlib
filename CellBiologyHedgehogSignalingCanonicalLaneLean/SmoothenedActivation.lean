import CellBiologyHedgehogSignalingCanonicalLaneLean.PatchedReceptor

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure SmoothenedActivation where
  active : Bool
  downstreamSignaling : Prop

def SmoothenedActivationClosed (S : SmoothenedActivation) : Prop :=
  S.active → S.downstreamSignaling

theorem smoothened_activation_closed_default : SmoothenedActivationClosed { active := true, downstreamSignaling := True } := by
  intro h
  exact True.intro

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse