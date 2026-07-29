import CellBiologyHedgehogSignalingCanonicalLaneLean.HedgehogSignalingPathway

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure PatchedReceptor where
  expressionLevel : Float
  boundLigand : Bool
  inhibitionState : Bool

def PatchedReceptorClosed (P : PatchedReceptor) : Prop :=
  P.inhibitionState → ¬ P.boundLigand

theorem patched_receptor_closed_default : PatchedReceptorClosed { expressionLevel := 0.8, boundLigand := false, inhibitionState := true } := by
  intro h
  exact h

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse