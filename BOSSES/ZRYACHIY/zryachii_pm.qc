// Created by Crowbar 0.71

$modelname "zryachii_pm.mdl"

$bodygroup "Head"
{
	studio "Head_BOSS_Zryachii.smd"
}
$bodygroup "Body"
{
	studio "Top_BOSS_Zryachii_pm.smd"
}
$bodygroup "Legs"
{
	studio "Pants_BOSS_Zryachii.smd"
}
$bodygroup "Headwear"
{
	blank
	studio "hats_BOSS_zryachii_balaklava_copen.smd"
}
$bodygroup "Facewear"
{
	studio "fc_BOSS_zryachii_balaklava_closed.smd"
	blank
}
$bodygroup "ChestRig"
{
	studio "CR_Zryachii_body.smd"
	studio "CR_Zryachii_AR.smd"
	blank
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0.019 -2.431 36.037

$cdmaterials "models\eft\bosses\zryachii\"

$texturegroup "skinfamilies"
{
	{ "head_boss_zryachi" "top_boss_zryachi" "pants_boss_zryachi" "head_boss_zryachi_balaclava" "facecover_boss_zryachi_closed" "rig_boss_zryachi" }
}

$cbox 0 0 0 0 0 0

$bbox -20.073 -19.283 -2.243 24.936 19.322 74.318

$hboxset "default"
$hbox 3 "ValveBiped.Bip01_Pelvis" -7.21 -1.26 -3.91 7.07 3.35 5.68
$hbox 6 "ValveBiped.Bip01_L_Thigh" 0.52 -4.72 -4.16 18.43 4.34 3.62
$hbox 6 "ValveBiped.Bip01_L_Calf" -5.05 -3.06 -3.71 18.219999 4.09 4.15
$hbox 6 "ValveBiped.Bip01_L_Foot" -3.37 -5.32 -2.33 6.42 1.78 2.99
$hbox 3 "ValveBiped.Bip01_Spine" -6.71 -2.52 -6.71 3.35 7.56 5.4
$hbox 0 "ValveBiped.Bip01_Spine1" -3.66 -4.88 -8.92 12.25 9.11 8.77
$hbox 2 "ValveBiped.Bip01_Spine4" -3.53 -3.48 -7.54 7.99 8.74 7.24
$hbox 5 "ValveBiped.Bip01_R_UpperArm" -3.61 -4 -3.49 12.63 3.5 4.01
$hbox 5 "ValveBiped.Bip01_R_Forearm" -3.79 -3.24 -3.33 9.54 2.6 3.01
$hbox 5 "ValveBiped.Bip01_R_Hand" -1.37 -2.98 -3 7.01 1.35 2.2
$hbox 4 "ValveBiped.Bip01_L_UpperArm" -2.81 -3.77 -4.18 13.26 3.73 3.31
$hbox 4 "ValveBiped.Bip01_L_Forearm" -3.83 -2.68 -2.71 9.54 3.16 3.62
$hbox 4 "ValveBiped.Bip01_L_Hand" -1.35 -2.86 -2.39 7.03 1.47 2.81
$hbox 1 "ValveBiped.Bip01_Head1" -3.69 -5.63 -3.79 6.91 4 3.75
$hbox 7 "ValveBiped.Bip01_R_Thigh" 0.52 -4.34 -4.46 18.43 4.72 3.32
$hbox 7 "ValveBiped.Bip01_R_Calf" -4.64 -3.07 -3.95 18.49 4.42 3.2
$hbox 7 "ValveBiped.Bip01_R_Foot" -3.41 -5.33 -2.97 6.38 1.77 2.35
$hbox 6 "ValveBiped.Bip01_L_Toe0" -2.07 -3.49 -1.73 4.01 1.18 2.91
$hbox 7 "ValveBiped.Bip01_R_Toe0" -2.29 -3.32 -2.91 4.01 1.32 1.76
$skipboneinbbox


$sectionframes 30 100

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 0.5 0.1
$ikautoplaylock "lfoot" 0.5 0.1

$animation "a_proportions_corrective_animation" "zryachii_pm_anims\a_proportions_corrective_animation.smd" {
}

$animation "a_proportions_corrective_animation" "zryachii_pm_anims\a_proportions_corrective_animation.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$animation "a_proportions" "zryachii_pm_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
}

$sequence "reference" {
	"zryachii_pm_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 3
}

$sequence "proportions" {
	"a_proportions"
	autoplay
	predelta
	fadein 0.2
	fadeout 0.2
}

$sequence "ragdoll" {
	"zryachii_pm_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

$includemodel "m_anm.mdl"

$collisionjoints "zryachii_pm_physics.smd"
{
	$mass 85
	$inertia 10
	$damping 0.05
	$rotdamping 10
	$rootbone "valvebiped.bip01_pelvis"

	$jointrotdamping "ValveBiped.Bip01_Pelvis" 3

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -15 15 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -60 30 0

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit 0 110 0

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -20 20 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -15 15 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -30 45 0

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -45 45 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -45 50 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -90 30 0

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -130 0 0

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -45 45 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -30 30 0

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -45 45 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -50 45 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -90 30 0

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -130 0 0

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -45 45 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -30 30 0

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -45 45 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -15 15 0

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -15 15 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -60 30 0

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit 0 110 0

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -30 30 0

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -30 30 0
}
