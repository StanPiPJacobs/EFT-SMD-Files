// Created by Crowbar 0.71

$modelname "osprey_defence.mdl"

$bodygroup "Body"
{
	studio "AR_Osprey_Defence_Body.smd"
	blank
}
$bodygroup "Neck"
{
	studio "AR_Osprey_Defence_Neck.smd"
	blank
}
$bodygroup "R. Shoulder"
{
	studio "AR_Osprey_Defence_Shoulder_r.smd"
	blank
}
$bodygroup "L. Shoulder"
{
	studio "AR_Osprey_Defence_Shoulder_l.smd"
	blank
}
$bodygroup "R. Brassard"
{
	studio "AR_Osprey_Defence_Brassard_r.smd"
	blank
}
$bodygroup "L. Brassard"
{
	studio "AR_Osprey_Defence_Brassard_l.smd"
	blank
}
$bodygroup "Radio"
{
	studio "AR_Osprey_Defence_Radio.smd"
	studio "AR_Osprey_Defence_Radio_Pouch.smd"
	blank
}
$bodygroup "Pouch 1 (U)"
{
	studio "AR_Osprey_Defence_Pouch_U1.smd"
	studio "AR_Osprey_Defence_Pouch_U1_nomag.smd"
	blank
}
$bodygroup "Pouch 2 (U)"
{
	studio "AR_Osprey_Defence_Pouch_U2.smd"
	studio "AR_Osprey_Defence_Pouch_U2_nomag.smd"
	blank
}
$bodygroup "Pouch 1 (F)"
{
	studio "AR_Osprey_Defence_Pouch_F1_0.smd"
	studio "AR_Osprey_Defence_Pouch_F1_01.smd"
	studio "AR_Osprey_Defence_Pouch_F1_02.smd"
	studio "AR_Osprey_Defence_Pouch_F1_03.smd"
	blank
}
$bodygroup "Pouch 2 (F)"
{
	studio "AR_Osprey_Defence_Pouch_F2_0.smd"
	studio "AR_Osprey_Defence_Pouch_F2_01.smd"
	studio "AR_Osprey_Defence_Pouch_F2_02.smd"
	studio "AR_Osprey_Defence_Pouch_F2_03.smd"
	blank
}
$bodygroup "Pouch 3 (F)"
{
	studio "AR_Osprey_Defence_Pouch_F3_0.smd"
	studio "AR_Osprey_Defence_Pouch_F3_01.smd"
	studio "AR_Osprey_Defence_Pouch_F3_02.smd"
	studio "AR_Osprey_Defence_Pouch_F3_03.smd"
	blank
}
$bodygroup "Pouch 4 (F)"
{
	studio "AR_Osprey_Defence_Pouch_F4_0.smd"
	studio "AR_Osprey_Defence_Pouch_F4_01.smd"
	studio "AR_Osprey_Defence_Pouch_F4_02.smd"
	studio "AR_Osprey_Defence_Pouch_F4_03.smd"
	blank
}
$bodygroup "Pouch 1 (L)"
{
	studio "AR_Osprey_Defence_pouch_l1.smd"
	blank
}
$bodygroup "Pouch 2 (L)"
{
	studio "AR_Osprey_Defence_pouch_l2.smd"
	blank
}
$bodygroup "Pouch 3 (L)"
{
	studio "AR_Osprey_Defence_pouch_l3.smd"
	blank
}
$bodygroup "Pouch 1 (R)"
{
	studio "AR_Osprey_Defence_pouch_r1.smd"
	blank
}
$bodygroup "Pouch 2 (R)"
{
	studio "AR_Osprey_Defence_pouch_r2.smd"
	blank
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0.019 -2.431 36.037

$cdmaterials "models\eft\armor\"

$texturegroup "skinfamilies"
{
	{ "osprey" "pouch_tac_reload_pistol_pouch_mk_ii_osprey" "pouch_prs3_molle_osprey" "magazine" "esstac_double_kywi_556_mag_pouch_osprey" "pouch_rdg_molle_osprey" "vtac_shotgun_ammo_pouch_osprey" "hsgi_m3t_multi_mission_osprey" "pouch_gp_9x7x3_maritime_osprey" }
}

$cbox 0 0 0 0 0 0

$bbox -8.791 -18.262 4.852 17.88 18.235 69.489


$sectionframes 30 100

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 0.5 0.1
$ikautoplaylock "lfoot" 0.5 0.1

$animation "a_proportions_corrective_animation" "osprey_defence_anims\a_proportions_corrective_animation.smd" {
}

$animation "a_proportions_corrective_animation" "osprey_defence_anims\a_proportions_corrective_animation.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$animation "a_proportions" "osprey_defence_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
}

$sequence "reference" {
	"osprey_defence_anims\reference.smd"
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
	"osprey_defence_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}
