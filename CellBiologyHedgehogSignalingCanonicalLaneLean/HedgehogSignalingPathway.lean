import CellBiologyHedgehogSignalingCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure HedgehogLigand where
  ligandType : String
  concentration : Float
  diffusionRange : Float

def HedgehogLigandClosed (L : HedgehogLigand) : Prop :=
  L.concentration > 0.0 ∧ L.diffusionRange > 0.0

theorem hedgehog_ligand_closed_default : HedgehogLigandClosed { ligandType := "Shh", concentration := 1.0, diffusionRange := 0.5 } := by
  constructor <;> norm_num

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse