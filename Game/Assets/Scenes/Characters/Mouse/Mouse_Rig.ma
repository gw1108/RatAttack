//Maya ASCII 2014 scene
//Name: Mouse_Rig.ma
//Last modified: Sat, May 30, 2015 03:53:00 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 205.36821834945218 278.75908275793148 197.12837938910261 ;
	setAttr ".r" -type "double3" -45.338352710366834 48.199999999989949 4.7717925583918768e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 391.91730639902806;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 -2.8421709430404007e-014 13.507999999999903 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20.182910297554599 100.09999999999998 19.12148703279048 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 28.123938798090702;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 6.297420156172775 -17.90107399167243 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 153.09075959619875;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "character_rig";
	setAttr ".rp" -type "double3" 2.0530571632093597e-005 40.799 -6.1231618876680312 ;
	setAttr ".sp" -type "double3" 2.0530571632093597e-005 40.799 -6.1231618876680312 ;
createNode transform -n "grp_bindBones" -p "character_rig";
	setAttr ".v" no;
createNode joint -n "bone_root01" -p "grp_bindBones";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 5;
createNode joint -n "bone_l_arm01_upper01" -p "bone_root01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 1.0000000000000002 0 0 1 0 0
		 -1.0000000000000002 0 2.2204460492503131e-016 0 26.725012562325393 -2.8421709430404007e-014 -41.523906109351955 1;
	setAttr ".radi" 3;
createNode joint -n "bone_l_arm01_mid01" -p "bone_l_arm01_upper01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -0.85304354391491388 0 ;
	setAttr ".bps" -type "matrix" -0.01488786847006366 0 0.99988916954451434 0 0 1 0 0
		 -0.99988916954451434 0 -0.01488786847006366 0 26.725012562325389 -3.8038525739842113e-014 -6.5239061093519695 1;
	setAttr ".radi" 3;
createNode joint -n "bone_l_arm01_base01" -p "bone_l_arm01_mid01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 2.8249000307521029e-030 ;
	setAttr ".bps" -type "matrix" -0.01488786847006366 0 0.99988916954451434 0 0 1 0 0
		 -0.99988916954451434 0 -0.01488786847006366 0 26.445120635088184 -4.3236516637961738e-014 12.274010278084912 1;
	setAttr ".radi" 3;
createNode joint -n "bone_l_arm01_finger01_01" -p "bone_l_arm01_base01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -74.797522511378773 -40.518596018822286 -6.6247594526077958 ;
	setAttr ".bps" -type "matrix" -0.66086492395986729 -0.087700984046190159 0.74536305896982125 0
		 0.72378877069983982 0.18815000046008457 0.66387453086836024 0 -0.19846250952845995 0.97821680353805029 -0.060864748315144664 0
		 22.547021681769589 0.31264941555475706 15.690528873915149 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_l_arm01_finger01_02" -p "bone_l_arm01_finger01_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 11.88929913402762 ;
	setAttr ".bps" -type "matrix" -0.4975717081228922 -0.047056644723792715 0.86614552325980798 0
		 0.84441401432433227 0.20218199094661887 0.49607198565281629 0 -0.19846250952845995 0.97821680353805029 -0.060864748315144664 0
		 20.300080940306017 0.014466069797702095 18.224763274412535 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_l_arm01_finger01_03" -p "bone_l_arm01_finger01_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 5.4734891577592197 ;
	setAttr ".bps" -type "matrix" -0.41475842482542113 -0.027556923343500409 0.90951419175963188 0
		 0.88802482023195839 0.20574863608695043 0.41119267673483462 0 -0.19846250952845995 0.97821680353805029 -0.060864748315144664 0
		 19.006394499186491 -0.10788120648415662 20.476741634888025 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "bone_l_arm01_finger01_03_parentConstraint1" -p "bone_l_arm01_finger01_03";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger01_03W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -1.0257288847719842e-013 ;
	setAttr ".rst" -type "double3" 2.5999999999999952 -3.5527136788005009e-015 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" 0 0 7.9513867036587919e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_l_arm01_finger01_02_parentConstraint1" -p "bone_l_arm01_finger01_02";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger01_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -1.3994440598439473e-013 ;
	setAttr ".rst" -type "double3" 3.4000000000000101 -3.5527136788005009e-015 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 0 0 -7.9513867036587919e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_l_arm01_finger01_01_parentConstraint1" -p "bone_l_arm01_finger01_01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger01_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.8288189418415202e-014 -2.2263882770244633e-014 
		-9.8597195125369017e-014 ;
	setAttr ".rst" -type "double3" 3.474174326018387 0.3126494155548003 3.8468022457558071 ;
	setAttr ".rsrr" -type "double3" -1.0336802714756426e-014 -1.272221872585407e-014 
		-3.4986101496098681e-014 ;
	setAttr -k on ".w0";
createNode joint -n "bone_l_arm01_finger02_01" -p "bone_l_arm01_base01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -13.898818462765623 0 ;
	setAttr ".bps" -type "matrix" -0.25463337527241481 0 0.96703766431167404 0 0 1 0 0
		 -0.96703766431167404 0 -0.25463337527241481 0 23.522904842667707 0.57830351913555489 19.325205085621441 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_l_arm01_finger02_02" -p "bone_l_arm01_finger02_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.9593462874975869 ;
	setAttr ".bps" -type "matrix" -0.25448450083295887 -0.034190379073912321 0.96647227420893067 0
		 -0.008706011625433635 0.99941533807460747 0.033063384321566913 0 -0.96703766431167404 0 -0.25463337527241481 0
		 22.886321404486669 0.57830351913555533 21.742799246400622 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_l_arm01_finger02_03" -p "bone_l_arm01_finger02_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -9.1107175283636153 ;
	setAttr ".bps" -type "matrix" -0.24989544258453633 -0.19200922959424679 0.94904411042169323 0
		 -0.048891958215039111 0.98139311988143851 0.18568015691310444 0 -0.96703766431167404 0 -0.25463337527241481 0
		 22.097419451904475 0.47231334400642683 24.738863296448287 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "bone_l_arm01_finger02_03_parentConstraint1" -p "bone_l_arm01_finger02_03";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger02_03W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -1.9083328088781101e-014 ;
	setAttr ".rst" -type "double3" 3.099999999999989 -6.6613381477509392e-016 1.4210854715202004e-014 ;
	setAttr ".rsrr" -type "double3" 0 0 -7.9513867036587919e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_l_arm01_finger02_02_parentConstraint1" -p "bone_l_arm01_finger02_02";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger02_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -7.9513867036587919e-016 ;
	setAttr ".rst" -type "double3" 2.4999999999999947 3.3306690738754696e-016 0 ;
	setAttr ".rsrr" -type "double3" 0 0 3.975693351829396e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_l_arm01_finger02_01_parentConstraint1" -p "bone_l_arm01_finger02_01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger02_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -5.4069429584879788e-014 0 ;
	setAttr ".rst" -type "double3" 7.0939188847629886 0.57830351913559808 2.8169146610617553 ;
	setAttr -k on ".w0";
createNode joint -n "bone_l_arm01_finger03_01" -p "bone_l_arm01_base01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 2.957942970554055 ;
	setAttr ".bps" -type "matrix" -0.014868033095961254 0.05160291453947273 0.9985569992758998 0
		 0.00076825740433560563 0.99866768206998258 -0.05159719536494993 0 -0.99988916954451434 0 -0.01488786847006366 0
		 25.841504308230505 0.62056071755028619 19.595097075014777 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_l_arm01_finger03_02" -p "bone_l_arm01_finger03_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -5.0711392021682586 ;
	setAttr ".bps" -type "matrix" -0.014877743641310635 -0.036873870740345718 0.9992091724963138 0
		 -0.00054897333756439594 0.99931992757906341 0.036869783992456037 0 -0.99988916954451434 0 -0.01488786847006366 0
		 25.804334225490621 0.74956800389896772 22.091489573204527 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_l_arm01_finger03_03" -p "bone_l_arm01_finger03_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -13.101584957783729 ;
	setAttr ".bps" -type "matrix" -0.014366031152480255 -0.26243812527607063 0.96484187696767587 0
		 -0.0039071442906402284 0.96494882268521442 0.2624090391391094 0 -0.99988916954451434 0 -0.01488786847006366 0
		 25.752262122746014 0.62050945630775722 25.588721676941635 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "bone_l_arm01_finger03_03_parentConstraint1" -p "bone_l_arm01_finger03_03";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger03_03W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -1.7493050748049341e-014 ;
	setAttr ".rst" -type "double3" 3.4999999999999964 -2.2204460492503131e-016 1.7763568394002505e-014 ;
	setAttr ".rsrr" -type "double3" 0 0 -6.3611093629270335e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_l_arm01_finger03_02_parentConstraint1" -p "bone_l_arm01_finger03_02";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger03_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.5000000000000071 -1.27675647831893e-015 -1.4210854715202004e-014 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.033680271475643e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_l_arm01_finger03_01_parentConstraint1" -p "bone_l_arm01_finger03_01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger03_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 4.7708320221952752e-015 ;
	setAttr ".rst" -type "double3" 7.3292619580261524 0.62056071755032938 0.49455405049461026 ;
	setAttr -k on ".w0";
createNode joint -n "bone_l_arm01_finger04_01" -p "bone_l_arm01_base01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 5.8103852216229148 0 ;
	setAttr ".bps" -type "matrix" 0.086414023637122528 0 0.99625931188563732 0 0 1 0 0
		 -0.99625931188563732 0 0.086414023637122528 0 28.046010593248575 0.72103683400003837 19.160688647460237 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_l_arm01_finger04_02" -p "bone_l_arm01_finger04_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.8542945489700959 ;
	setAttr ".bps" -type "matrix" 0.086306818221488918 -0.049796235039773505 0.99502335053221069 0
		 0.0043030930317666969 0.99875939794119761 0.049609962855220201 0 -0.99625931188563732 0 0.086414023637122528 0
		 28.262045652341392 0.72103683400003915 21.651336927174334 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_l_arm01_finger04_03" -p "bone_l_arm01_finger04_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -11.4179661357188 ;
	setAttr ".bps" -type "matrix" 0.083746872125951541 -0.24652984220679497 0.96550996800168387 0
		 0.02130363561171407 0.96913520052750779 0.24560765095621623 0 -0.99625931188563732 0 0.086414023637122528 0
		 28.529596788827995 0.56666850537674029 24.735909313824173 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "bone_l_arm01_finger04_03_parentConstraint1" -p "bone_l_arm01_finger04_03";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger04_03W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -2.5444437451708134e-014 ;
	setAttr ".rst" -type "double3" 3.0999999999999837 -8.8817841970012523e-016 3.5527136788005009e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_l_arm01_finger04_02_parentConstraint1" -p "bone_l_arm01_finger04_02";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger04_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -1.6697912077683464e-014 ;
	setAttr ".rst" -type "double3" 2.5000000000000107 6.6613381477509392e-016 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 0 0 -7.5538173684758519e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_l_arm01_finger04_01_parentConstraint1" -p "bone_l_arm01_finger04_01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger04_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -1.033680271475643e-014 0 ;
	setAttr ".rst" -type "double3" 6.862081276542721 0.72103683400008156 -1.7032404925560627 ;
	setAttr ".rsrr" -type "double3" 0 2.3854160110976376e-015 0 ;
	setAttr -k on ".w0";
createNode joint -n "bone_l_arm01_finger05_01" -p "bone_l_arm01_base01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 12.719327041091898 0 ;
	setAttr ".bps" -type "matrix" 0.20562833242843639 0 0.97863015940788411 0 0 1 0 0
		 -0.97863015940788411 0 0.20562833242843639 0 29.843775654462771 0.73493479247061499 17.794701910043358 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_l_arm01_finger05_02" -p "bone_l_arm01_finger05_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.2444132896247244 ;
	setAttr ".bps" -type "matrix" 0.2055798348670011 -0.02171740164451327 0.97839934891733626 0
		 0.0044657130848398457 0.99976414942015746 0.021253304233295064 0 -0.97863015940788411 0 0.20562833242843639 0
		 30.296157985805308 0.73493479247061488 19.947688260740694 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_l_arm01_finger05_03" -p "bone_l_arm01_finger05_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -11.898654369025996 ;
	setAttr ".bps" -type "matrix" 0.20024196500722172 -0.22738335423390957 0.95299526004455204 0
		 0.04675645995310327 0.97380532459898594 0.22252420820063029 0 -0.97863015940788411 0 0.20562833242843639 0
		 30.871781523432887 0.67412606786597873 22.68720643770925 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "bone_l_arm01_finger05_03_parentConstraint1" -p "bone_l_arm01_finger05_03";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger05_03W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -4.7708320221952752e-015 ;
	setAttr ".rst" -type "double3" 2.8000000000000007 1.5543122344752192e-015 7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" 0 0 6.3611093629270335e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_l_arm01_finger05_02_parentConstraint1" -p "bone_l_arm01_finger05_02";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger05_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 1.3914926731402888e-015 ;
	setAttr ".rst" -type "double3" 2.1999999999999957 0 2.1316282072803009e-014 ;
	setAttr ".rsrr" -type "double3" 0 0 2.1866313435061676e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_l_arm01_finger05_01_parentConstraint1" -p "bone_l_arm01_finger05_01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_finger05_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -2.8624992133171654e-014 0 ;
	setAttr ".rst" -type "double3" 5.4694810422867093 0.73493479247065829 -3.4804696757711433 ;
	setAttr ".rsrr" -type "double3" 0 3.1805546814635168e-015 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_l_arm01_base01_parentConstraint1" -p "bone_l_arm01_base01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_base01W0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bone_l_arm01_base01_ikW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 18.8 -5.1979908981196133e-015 -7.1054273576010019e-015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "bone_l_arm01_base01_twist01" -p "bone_l_arm01_mid01";
	addAttr -ci true -sn "twistJoint" -ln "twistJoint" -dt "string";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.01488786847006366 0 0.99988916954451434 0 0 1 0 0
		 -0.99988916954451434 0 -0.01488786847006366 0 26.44512063508818 -4.323651663796175e-014 12.274010278084912 1;
	setAttr ".radi" 5;
createNode parentConstraint -n "bone_l_arm01_base01_twist01_parentConstraint1" -p
		 "bone_l_arm01_base01_twist01";
	addAttr -ci true -k true -sn "w0" -ln "bone_l_arm01_base01W0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "ctrl_l_arm01_base01_twist01W1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 18.800000000000008 -5.1979908981196251e-015 7.1054273576010019e-015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "bone_l_arm01_mid01_parentConstraint1" -p "bone_l_arm01_mid01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_mid01W0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bone_l_arm01_mid01_ikW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 -3.975693351829396e-016 0 ;
	setAttr ".rst" -type "double3" 34.999999999999979 -9.6168163094381052e-015 1.0658141036401504e-014 ;
	setAttr ".rsrr" -type "double3" 0 -4.4726550208080702e-015 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "bone_l_arm01_upper01_parentConstraint1" -p "bone_l_arm01_upper01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_upper01W0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bone_l_arm01_upper01_ikW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 26.725012562325393 0 -41.523906109351955 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "bone_r_arm01_upper01" -p "bone_root01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.2325951644078307e-032 -1.0000000000000002 0
		 -1.2246467991473535e-016 -1 -3.6977854932234928e-032 0 -1.0000000000000002 1.2246467991473535e-016 -4.4408920985006262e-016 0
		 -26.724999999999987 -3.8592131675026955e-014 -41.523900000000005 1;
	setAttr ".radi" 3;
createNode joint -n "bone_r_arm01_mid01" -p "bone_r_arm01_upper01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.2234817168913058e-017 -0.85304354391485515 7.0167092985343948e-015 ;
	setAttr ".bps" -type "matrix" -0.014887868470062637 1.8232380467989402e-018 -0.99988916954451434 0
		 -1.2246467991473535e-016 -1 -3.6977854932234928e-032 0 -0.99988916954451434 1.2245110709847946e-016 0.014887868470062411 0
		 -26.724999999999969 -4.3922689102658009e-014 -6.5239100000000292 1;
	setAttr ".radi" 3;
createNode joint -n "bone_r_arm01_base01" -p "bone_r_arm01_mid01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.014887868470062637 1.8232380467989402e-018 -0.99988916954451434 0
		 -1.2246467991473535e-016 -1 -3.6977854932234928e-032 0 -0.99988916954451434 1.2245110709847946e-016 0.014887868470062411 0
		 -26.445099999999982 -4.6784311207533859e-014 12.273999999999972 1;
	setAttr ".radi" 3;
createNode joint -n "bone_r_arm01_finger01_01" -p "bone_r_arm01_base01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -74.797522511378801 -40.518596018822358 -6.6247594526078029 ;
	setAttr ".bps" -type "matrix" -0.66086492395986751 0.087700984046190228 -0.74536305896982114 0
		 0.72378877069983971 -0.18815000046008409 -0.66387453086836024 0 -0.1984625095284597 -0.97821680353805029 0.060864748315144171 0
		 -22.546999999999979 0.31264899999999979 15.690499999999972 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_r_arm01_finger01_02" -p "bone_r_arm01_finger01_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.091309788696495e-006 -4.3732622604667145e-015 11.889299134027617 ;
	setAttr ".bps" -type "matrix" -0.49757170812289248 0.047056644723792888 -0.86614552325980798 0
		 0.84441400708040204 -0.20218202665176785 -0.49607198343123793 0 -0.19846254034977501 -0.97821679615835788 0.060864766421891411 0
		 -20.300099999999951 0.014466100001391702 18.224800000000116 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_r_arm01_finger01_03" -p "bone_r_arm01_finger01_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.4243719920520934e-006 1.9947993525456081e-007 5.4734891577591718 ;
	setAttr ".bps" -type "matrix" -0.41475842551638559 0.027556919937759022 -0.90951419154772573 0
		 0.88802480462345645 -0.20574871302085432 -0.41119267194799858 0 -0.19846257792501168 -0.97821678745245733 0.060864783820799469 0
		 -19.006399999999953 -0.10788099999736876 20.476700000000179 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "bone_r_arm01_finger01_03_parentConstraint1" -p "bone_r_arm01_finger01_03";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger01_03W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 1.2584101680843626e-011 2.6632965572605071e-019 6.2943177146162964e-012 ;
	setAttr ".rst" -type "double3" -2.5999388666450356 5.0286104080754512e-005 -7.632763780129892e-006 ;
	setAttr ".rsrr" -type "double3" 2.4091246273849786e-014 -1.0189700918631968e-021 
		-2.3854160110976358e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_r_arm01_finger01_02_parentConstraint1" -p "bone_r_arm01_finger01_02";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger01_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 1.5128139298847048e-011 2.2891198929907896e-019 6.2704635545053216e-012 ;
	setAttr ".rst" -type "double3" -3.4000219317483924 -7.3121922007146622e-005 1.1642303280545718e-005 ;
	setAttr ".rsrr" -type "double3" -2.2631710166307961e-014 -6.6351541537554368e-022 
		-1.7493050748049331e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_r_arm01_finger01_01_parentConstraint1" -p "bone_r_arm01_finger01_01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger01_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 2.0275240955658323e-011 -2.2915896479945726e-011 6.1543733086278505e-012 ;
	setAttr ".rst" -type "double3" -3.4741557478319827 -0.31264900000001505 -3.8468035691735025 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635176e-015 6.3611093629270335e-015 
		-9.5416640443905503e-015 ;
	setAttr -k on ".w0";
createNode joint -n "bone_r_arm01_finger02_01" -p "bone_r_arm01_base01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.5200967238467995e-016 -13.89881846276567 6.9900817315422024e-015 ;
	setAttr ".bps" -type "matrix" -0.25463337527241464 3.118359479834498e-017 -0.96703766431167426 0
		 -1.2246467991473535e-016 -1 -3.6977854932234928e-032 0 -0.96703766431167404 1.1842795802542241e-016 0.25463337527241442 0
		 -23.522899999999989 0.57830399999999327 19.32519999999996 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_r_arm01_finger02_02" -p "bone_r_arm01_finger02_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.6316425330006238e-016 -9.5416640443906039e-015 -1.9593462874975922 ;
	setAttr ".bps" -type "matrix" -0.2544845008329587 0.034190379073912439 -0.96647227420893067 0
		 -0.0087060116254337738 -0.99941533807460747 -0.033063384321567003 0 -0.96703766431167404 1.1842795802542241e-016 0.25463337527241442 0
		 -22.886299999999988 0.57830399999999338 21.74279999999996 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_r_arm01_finger02_03" -p "bone_r_arm01_finger02_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.0681476225479183e-016 -6.3611093629270138e-015 -9.1107175283635762 ;
	setAttr ".bps" -type "matrix" -0.24989544258453619 0.19200922959424627 -0.94904411042169345 0
		 -0.048891958215039055 -0.98139311988143874 -0.18568015691310388 0 -0.96703766431167404 1.1842795802542241e-016 0.25463337527241442 0
		 -22.097399999999983 0.47231300000008702 24.738899999999958 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "bone_r_arm01_finger02_03_parentConstraint1" -p "bone_r_arm01_finger02_03";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger02_03W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 3.3984226771437677e-012 ;
	setAttr ".rst" -type "double3" -3.1000342759329111 -3.4723928732383058e-007 1.1042278210027234e-005 ;
	setAttr ".rsrr" -type "double3" 0 0 3.1805546814635168e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_r_arm01_finger02_02_parentConstraint1" -p "bone_r_arm01_finger02_02";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger02_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 1.6992113385718839e-012 ;
	setAttr ".rst" -type "double3" -2.5000098639383292 -4.4408920985006262e-016 -1.4529042225319699e-005 ;
	setAttr ".rsrr" -type "double3" 0 0 5.5659706925611543e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_r_arm01_finger02_01_parentConstraint1" -p "bone_r_arm01_finger02_01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger02_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -3.9756933518293955e-014 0 ;
	setAttr ".rst" -type "double3" -7.0939238415354851 -0.57830400000001558 -2.8168987930868745 ;
	setAttr ".rsrr" -type "double3" 0 -1.1131941385122306e-014 0 ;
	setAttr -k on ".w0";
createNode joint -n "bone_r_arm01_finger03_01" -p "bone_r_arm01_base01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.5294412147852583e-015 -5.9237830942258677e-014 
		2.9579429705540967 ;
	setAttr ".bps" -type "matrix" -0.014868033095960236 -0.051602914539473459 -0.9985569992758998 0
		 0.00076825740433544127 -0.99866768206998258 0.051597195364950658 0 -0.99988916954451434 1.2245110709847946e-016 0.014887868470062411 0
		 -25.841499999999986 0.62056099999997516 19.595099999999963 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_r_arm01_finger03_02" -p "bone_r_arm01_finger03_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182723049451e-006 -5.8243908303361538e-014 -5.0711392021682586 ;
	setAttr ".bps" -type "matrix" -0.014877743641309608 0.036873870740345011 -0.9992091724963138 0
		 -0.00054897333756446988 -0.99931992757906341 -0.036869783992455329 0 -0.99988916954451434 1.2245111040863643e-016 0.014887868470062411 0
		 -25.804299999999991 0.74956800000133617 22.091499999999883 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_r_arm01_finger03_03" -p "bone_r_arm01_finger03_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5102088029580979e-006 -2.7369551473378888e-007 -13.101584957783754 ;
	setAttr ".bps" -type "matrix" -0.014366031152479234 0.26243812527607036 -0.96484187696767598 0
		 -0.0039071706458347942 -0.96494882268521409 -0.26240903874669297 0 -0.99988916944152917 2.5434233128924562e-008 0.014887875386670302 0
		 -25.752299999999963 0.6205090000036404 25.588699999999971 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "bone_r_arm01_finger03_03_parentConstraint1" -p "bone_r_arm01_finger03_03";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger03_03W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 4.682279229016694e-013 2.4687745861930822e-018 9.3662564537078377e-011 ;
	setAttr ".rst" -type "double3" -3.4999668656073268 1.6753429683546983e-006 7.1616797153950529e-005 ;
	setAttr ".rsrr" -type "double3" 4.214812745121983e-015 -4.5024260030276432e-022 
		-1.7493050748049341e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_r_arm01_finger03_02_parentConstraint1" -p "bone_r_arm01_finger03_02";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger03_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.2074182723049446e-006 1.3165124291404798e-018 6.2471659914635989e-011 ;
	setAttr ".rst" -type "double3" -2.5000079210195238 6.9602370195154251e-007 -2.9802258382005675e-005 ;
	setAttr ".rsrr" -type "double3" -1.2074182723049451e-006 1.9041787837888273e-022 
		7.9513867036587888e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_r_arm01_finger03_01_parentConstraint1" -p "bone_r_arm01_finger03_01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger03_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 3.1211578227871858e-011 ;
	setAttr ".rst" -type "double3" -7.3292749165608653 -0.62056100000001602 -0.49453752888089397 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.9022561468354588e-014 ;
	setAttr -k on ".w0";
createNode joint -n "bone_r_arm01_finger04_01" -p "bone_r_arm01_base01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.5658870741404293e-016 5.8103852216228118 7.0265618143296378e-015 ;
	setAttr ".bps" -type "matrix" 0.086414023637121751 -1.0582665744864444e-017 -0.99625931188563732 0
		 -1.2246467991473535e-016 -1 -3.6977854932234928e-032 0 -0.99625931188563732 1.2200657774214905e-016 -0.086414023637121959 0
		 -28.045999999999971 0.72103699999995707 19.160699999999977 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_r_arm01_finger04_02" -p "bone_r_arm01_finger04_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.1489651557125989e-015 4.6118042881219985e-014 -2.8542945489700275 ;
	setAttr ".bps" -type "matrix" 0.086306818221488141 0.049796235039772298 -0.99502335053221092 0
		 0.0043030930317664315 -0.99875939794119772 -0.049609962855219021 0 -0.99625931188563732 1.2200657774214905e-016 -0.086414023637121959 0
		 -28.261999999999983 0.72103699999995763 21.651299999999974 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_r_arm01_finger04_03" -p "bone_r_arm01_finger04_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182650357466e-006 4.6913181480495954e-014 -11.417966135718864 ;
	setAttr ".bps" -type "matrix" 0.083746872125950805 0.24652984220679491 -0.96550996800168398 0
		 0.02130363561171375 -0.96913520052750801 -0.24560765095621623 0 -0.99625931188563732 1.2200657774214905e-016 -0.086414023637121959 0
		 -28.529599999999991 0.56666900000024722 24.735899999999997 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "bone_r_arm01_finger04_03_parentConstraint1" -p "bone_r_arm01_finger04_03";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger04_03W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 5.3608249156067577e-012 ;
	setAttr ".rst" -type "double3" -3.1000316768183502 -1.9083771223282753e-006 4.629454953786194e-005 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.1805546814635168e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_r_arm01_finger04_02_parentConstraint1" -p "bone_r_arm01_finger04_02";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger04_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 5.3612224849419406e-012 ;
	setAttr ".rst" -type "double3" -2.4999488712879874 -5.5511151231257827e-016 -3.0755903310364374e-005 ;
	setAttr ".rsrr" -type "double3" 0 0 -4.3732626870123352e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_r_arm01_finger04_01_parentConstraint1" -p "bone_r_arm01_finger04_01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger04_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -2.1468744099878741e-014 0 ;
	setAttr ".rst" -type "double3" -6.8621027552684808 -0.72103700000001536 1.7032508553165826 ;
	setAttr ".rsrr" -type "double3" 0 -2.3059021440610494e-014 0 ;
	setAttr -k on ".w0";
createNode joint -n "bone_r_arm01_finger05_01" -p "bone_r_arm01_base01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.8458982569913855e-016 12.719327041091825 7.0395106079287942e-015 ;
	setAttr ".bps" -type "matrix" 0.20562833242843617 -2.5182207912249175e-017 -0.97863015940788411 0
		 -1.2246467991473535e-016 -1 -3.6977854932234928e-032 0 -0.97863015940788411 1.1984762922679295e-016 -0.20562833242843631 0
		 -29.843799999999984 0.73493499999994238 17.794699999999956 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_r_arm01_finger05_02" -p "bone_r_arm01_finger05_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.7270382482280318e-016 1.5902773407317174e-014 -1.2444132896246844 ;
	setAttr ".bps" -type "matrix" 0.20557983486700085 0.021717401644512552 -0.97839934891733649 0
		 0.0044657130848395751 -0.99976414942015746 -0.021253304233294388 0 -0.97863015940788411 1.1984762922679295e-016 -0.20562833242843631 0
		 -30.296199999999992 0.73493499999994205 19.947699999999955 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone_r_arm01_finger05_03" -p "bone_r_arm01_finger05_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364442864058e-007 1.7493050771746318e-014 -11.898654369026024 ;
	setAttr ".bps" -type "matrix" 0.2002419650072215 0.22738335423390937 -0.95299526004455215 0
		 0.046756459953103055 -0.97380532459898594 -0.22252420820063015 0 -0.97863015940788411 1.1984762922679295e-016 -0.20562833242843631 0
		 -30.871799999999997 0.67412600000005451 22.687199999999951 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "bone_r_arm01_finger05_03_parentConstraint1" -p "bone_r_arm01_finger05_03";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger05_03W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 2.2804577066093416e-012 ;
	setAttr ".rst" -type "double3" -2.7999773827850873 7.6676334526126766e-007 -1.9296932521228879e-005 ;
	setAttr ".rsrr" -type "double3" 0 0 1.5902773407317584e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_r_arm01_finger05_02_parentConstraint1" -p "bone_r_arm01_finger05_02";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger05_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 2.268928195889037e-012 ;
	setAttr ".rst" -type "double3" -2.2000169907957989 2.2204460492503131e-016 1.448439770257437e-005 ;
	setAttr ".rsrr" -type "double3" 0 0 7.9513867036587919e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_r_arm01_finger05_01_parentConstraint1" -p "bone_r_arm01_finger05_01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_finger05_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -1.4312496066585827e-014 0 ;
	setAttr ".rst" -type "double3" -5.4694887397351906 -0.73493500000001533 3.4805147759936119 ;
	setAttr ".rsrr" -type "double3" 0 -2.544443745170814e-014 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_r_arm01_base01_parentConstraint1" -p "bone_r_arm01_base01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_base01W0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bone_r_arm01_base01_ikW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -18.799993733457281 -1.7082600936480043e-015 -8.1669634290904014e-006 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "bone_r_arm01_base01_twist01" -p "bone_r_arm01_mid01";
	addAttr -ci true -sn "twistJoint" -ln "twistJoint" -dt "string";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.014887868470062637 1.8232380467989402e-018 -0.99988916954451434 0
		 -1.2246467991473535e-016 -1 -3.6977854932234928e-032 0 -0.99988916954451434 1.2245110709847946e-016 0.014887868470062411 0
		 -26.445099999999982 -4.6784311207533859e-014 12.273999999999972 1;
	setAttr ".radi" 5;
createNode parentConstraint -n "bone_r_arm01_base01_twist01_parentConstraint1" -p
		 "bone_r_arm01_base01_twist01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_base01_twist01W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -18.799993733457285 2.8958999687840029e-015 -8.1669634255376877e-006 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bone_r_arm01_mid01_parentConstraint1" -p "bone_r_arm01_mid01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_mid01W0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bone_r_arm01_mid01_ikW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 -2.2263882770244617e-014 0 ;
	setAttr ".rst" -type "double3" -34.999989999999976 -3.241967717106824e-015 -2.4868995751603507e-014 ;
	setAttr ".rsrr" -type "double3" 0 -2.6438360789665484e-014 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "bone_r_arm01_upper01_parentConstraint1" -p "bone_r_arm01_upper01";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_upper01W0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bone_r_arm01_upper01_ikW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -1.4033418597069755e-014 -1.2722218725854067e-014 
		2.9704724594430212e-030 ;
	setAttr ".rst" -type "double3" -26.725000000000005 1.5255633366934422e-014 41.523900000000005 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "grp_controls" -p "character_rig";
createNode transform -n "ctrl_master_parent" -p "grp_controls";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_master" -p "ctrl_master_parent";
	addAttr -ci true -k true -sn "trendmill" -ln "trendmill" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".trendmill";
createNode nurbsCurve -n "ctrl_masterShape" -p "ctrl_master";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0 0 129.86787292035697
		-31.364258697147271 0 97.399313933975293
		-15.680353946179364 0 97.399313933975293
		-15.680353946179364 0 59.757232370694489
		-35.358914084251346 0 54.512693698025053
		-85.762588057533918 0 -2.9925898523314127
		-85.762588057533918 0 -53.211621976610054
		-35.358914084251346 0 -102.85187292035717
		35.358914084251346 0 -102.85187292035717
		85.762588057533918 0 -53.211621976610054
		85.762588057533918 0 -2.9925898523314127
		35.358914084251346 0 54.512693698025053
		15.680353946179364 0 59.757232370694489
		15.680353946179364 0 97.399313933975293
		31.364258697147271 0 97.399313933975293
		0 0 129.86787292035697
		;
createNode transform -n "ctrl_trendmill" -p "ctrl_master";
createNode transform -n "ctrl_cog_parent" -p "ctrl_trendmill";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_cog" -p "ctrl_cog_parent";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 24;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ctrl_cogShape" -p "ctrl_cog";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0 0 100.81013786989364
		-22.803678700176057 0 77.203567278428679
		-11.400548527111694 0 77.203567278428679
		-11.400548527111694 0 49.835538533883629
		-25.708030396960645 0 46.022447461749501
		-62.354494695500101 0 4.2126912578152105
		-62.354494695500101 0 -32.299527451184048
		-25.708030396960645 0 -68.390937869893648
		25.708030396960645 0 -68.390937869893648
		62.354494695500101 0 -32.299527451184048
		62.354494695500101 0 4.2126912578152105
		25.708030396960645 0 46.022447461749501
		11.400548527111694 0 49.835538533883629
		11.400548527111694 0 77.203567278428679
		22.803678700176057 0 77.203567278428679
		0 0 100.81013786989364
		;
createNode transform -n "ctrl_root01_parent" -p "ctrl_cog";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_root01" -p "ctrl_root01_parent";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ctrl_root01Shape" -p "ctrl_root01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0 0 110.64966553017962
		-26.184080916328263 0 83.543672560757301
		-13.090558284445356 0 83.543672560757301
		-13.090558284445356 0 52.118625374750955
		-29.518971783629208 0 47.740284209414568
		-71.597883660373185 0 -0.26732254253110815
		-71.597883660373185 0 -42.192088352519825
		-29.518971783629208 0 -83.63366553017957
		29.518971783629208 0 -83.63366553017957
		71.597883660373185 0 -42.192088352519825
		71.597883660373185 0 -0.26732254253110815
		29.518971783629208 0 47.740284209414568
		13.090558284445356 0 52.118625374750955
		13.090558284445356 0 83.543672560757301
		26.184080916328263 0 83.543672560757301
		0 0 110.64966553017962
		;
createNode transform -n "ctrl_r_arm01_upper01_family" -p "ctrl_root01";
	setAttr ".t" -type "double3" -26.724999999999991 -3.8592131675026955e-014 -41.5239 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 180 89.999999999999986 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_upper01_parent" -p "ctrl_r_arm01_upper01_family";
	setAttr ".r" -type "double3" 7.016709298534876e-015 360 7.016709298534876e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_upper01" -p "ctrl_r_arm01_upper01_parent";
	addAttr -ci true -k true -sn "world_rotate" -ln "world_rotate" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "fk_switch" -ln "fk_switch" -dt "string";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" 7.1054273576010019e-015 0 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_mid01_parent" -p "ctrl_r_arm01_upper01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_mid01" -p "ctrl_r_arm01_mid01_parent";
	addAttr -ci true -sn "fk_switch" -ln "fk_switch" -dt "string";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".r" -type "double3" 0 1.272221872585407e-014 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode transform -n "ctrl_r_arm01_base01_parent" -p "ctrl_r_arm01_mid01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_base01" -p "ctrl_r_arm01_base01_parent";
	addAttr -ci true -sn "fk_switch" -ln "fk_switch" -dt "string";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".r" -type "double3" 0 1.272221872585407e-014 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_r_arm01_base01Shape" -p "ctrl_r_arm01_base01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		4.3464400365421758 1.3481236892610935 -4.9466471890075887
		4.3464400365421545 -1.3481236892609736 -4.9466471890075887
		2.2415002109371365 -1.3481236892609558 -4.9466471890075923
		2.2415002109371094 -4.0445845473854476 -1.4414255051674694
		4.346440036542127 -4.0445845473854645 -1.4414255051674625
		4.3464400365421234 -4.0445845473854645 2.0641188242621205
		2.2415002109371081 -4.0445845473854476 2.0641188242621133
		2.2415002109371298 -1.3481236892609556 5.5693405081022576
		2.2415002109371525 1.3481236892611119 5.5693405081022576
		4.3464400365421669 1.3481236892610939 5.5693405081022576
		4.3464400365421927 4.044584547385587 2.0641188242621205
		2.2415002109371756 4.0445845473856039 2.0641188242621133
		2.2415002109371791 4.0445845473856039 -1.4414255051674694
		4.3464400365421962 4.044584547385587 -1.4414255051674625
		4.3464400365421758 1.3481236892610935 -4.9466471890075887
		2.2415002109371596 1.3481236892611117 -4.9466471890075923
		2.2415002109371365 -1.3481236892609558 -4.9466471890075923
		4.3464400365421545 -1.3481236892609736 -4.9466471890075887
		4.346440036542127 -4.0445845473854645 -1.4414255051674625
		2.2415002109371094 -4.0445845473854476 -1.4414255051674694
		2.2415002109371081 -4.0445845473854476 2.0641188242621133
		4.3464400365421234 -4.0445845473854645 2.0641188242621205
		4.3464400365421456 -1.3481236892609734 5.5693405081022576
		2.2415002109371298 -1.3481236892609556 5.5693405081022576
		4.3464400365421456 -1.3481236892609734 5.5693405081022576
		4.3464400365421669 1.3481236892610939 5.5693405081022576
		2.2415002109371525 1.3481236892611119 5.5693405081022576
		2.2415002109371756 4.0445845473856039 2.0641188242621133
		4.3464400365421927 4.044584547385587 2.0641188242621205
		4.3464400365421962 4.044584547385587 -1.4414255051674625
		2.2415002109371791 4.0445845473856039 -1.4414255051674694
		2.2415002109371596 1.3481236892611117 -4.9466471890075923
		;
createNode parentConstraint -n "ctrl_r_arm01_base01_parent_parentConstraint1" -p "ctrl_r_arm01_base01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -26.445099999999993 -4.0230246467857047e-014 
		12.273999999999972 ;
	setAttr ".tg[0].tor" -type "double3" 4.7130382113761393e-013 89.14695645608515 -179.99999999999957 ;
	setAttr ".lr" -type "double3" -4.6496504542953132e-013 -3.7980447806757591e-031 
		-9.3603568041714968e-017 ;
	setAttr ".rst" -type "double3" -18.799993733457285 2.8958999687839847e-015 -8.166963421984974e-006 ;
	setAttr ".rsrr" -type "double3" -4.6496504542953132e-013 -3.7980447806757591e-031 
		-9.3603568041714968e-017 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ctrl_r_arm01_mid01Shape" -p "ctrl_r_arm01_mid01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		4.8765748079220002 3.0718649833714018 -7.8957825410256852
		4.8765748079219504 -3.0718649833716003 -7.8957825410256852
		1.7030439842456735 -3.0718649833715737 -7.8957825410256852
		1.7030439842456184 -9.2160813895418841 -2.6111046028866483
		4.8765748079218953 -9.2160813895419089 -2.6111046028866483
		4.8765748079218918 -9.2160813895419089 2.6740597746796873
		1.7030439842456131 -9.2160813895418823 2.6740597746796837
		1.7030439842456613 -3.0718649833715737 7.95873771281871
		1.7030439842457126 3.0718649833714289 7.95873771281871
		4.8765748079219859 3.0718649833714018 7.9587377128187171
		4.876574807922041 9.21608138954171 2.6740597746796873
		1.7030439842457694 9.2160813895417366 2.6740597746796837
		1.703043984245773 9.2160813895417348 -2.6111046028866483
		4.8765748079220446 9.21608138954171 -2.6111046028866483
		4.8765748079220002 3.0718649833714018 -7.8957825410256852
		1.7030439842457268 3.0718649833714289 -7.8957825410256852
		1.7030439842456735 -3.0718649833715737 -7.8957825410256852
		4.8765748079219504 -3.0718649833716003 -7.8957825410256852
		4.8765748079218953 -9.2160813895419089 -2.6111046028866483
		1.7030439842456184 -9.2160813895418841 -2.6111046028866483
		1.7030439842456131 -9.2160813895418823 2.6740597746796837
		4.8765748079218918 -9.2160813895419089 2.6740597746796873
		4.8765748079219362 -3.0718649833716003 7.9587377128187171
		1.7030439842456613 -3.0718649833715737 7.95873771281871
		4.8765748079219362 -3.0718649833716003 7.9587377128187171
		4.8765748079219859 3.0718649833714018 7.9587377128187171
		1.7030439842457126 3.0718649833714289 7.95873771281871
		1.7030439842457694 9.2160813895417366 2.6740597746796837
		4.876574807922041 9.21608138954171 2.6740597746796873
		4.8765748079220446 9.21608138954171 -2.6111046028866483
		1.703043984245773 9.2160813895417348 -2.6111046028866483
		1.7030439842457268 3.0718649833714289 -7.8957825410256852
		;
createNode parentConstraint -n "ctrl_r_arm01_mid01_parent_parentConstraint1" -p "ctrl_r_arm01_mid01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -26.724999999999984 -3.9636426530289077e-014 
		-6.5239100000000221 ;
	setAttr ".tg[0].tor" -type "double3" 4.7130382113760999e-013 89.14695645608515 -179.99999999999957 ;
	setAttr ".lr" -type "double3" -4.650681271416444e-013 -0.85304354391486303 -9.283619203162772e-017 ;
	setAttr ".rst" -type "double3" -34.99998999999999 5.3305574276310539e-015 -1.4210854715202004e-014 ;
	setAttr ".rsrr" -type "double3" -4.650681271416444e-013 -0.85304354391486303 -9.283619203162772e-017 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_r_arm01_base01_pv_marker" -p "ctrl_r_arm01_upper01";
	addAttr -ci true -sn "ik_switch" -ln "ik_switch" -dt "string";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -80.000000000000028 -3.7324785144411707e-016 1.0658141036401504e-014 ;
	setAttr ".r" -type "double3" -180 90 0 ;
	setAttr ".s" -type "double3" 0.99999999999999933 1 1.0000000000000002 ;
createNode locator -n "ctrl_r_arm01_base01_pv_markerShape" -p "ctrl_r_arm01_base01_pv_marker";
	setAttr -k off ".v";
createNode transform -n "ctrl_r_arm01_upper01_distance_marker" -p "ctrl_r_arm01_upper01";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -6.3108872417680986e-030 0 ;
	setAttr ".r" -type "double3" -180 90 0 ;
	setAttr ".s" -type "double3" 0.99999999999999933 1 1.0000000000000002 ;
createNode locator -n "ctrl_r_arm01_upper01_distance_markerShape" -p "ctrl_r_arm01_upper01_distance_marker";
	setAttr -k off ".v";
createNode nurbsCurve -n "ctrl_r_arm01_upper01Shape" -p "ctrl_r_arm01_upper01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		2.1165422472590478 4.0974634306815609 -10.573908704199049
		2.1165422472590407 -4.0974634306815894 -10.573908704199049
		-2.1165300285551467 -4.0974634306815858 -10.573908704199049
		-2.1165300285551467 -12.2930391381937 -3.5248441418990453
		2.1165422472590407 -12.2930391381937 -3.5248441418990453
		2.1165422472590407 -12.2930391381937 3.5248692665499313
		-2.1165300285551467 -12.2930391381937 3.5248692665499313
		-2.1165300285551396 -4.0974634306815858 10.573933828849944
		-2.1165300285551396 4.0974634306815627 10.573933828849944
		2.1165422472590478 4.0974634306815609 10.573933828849952
		2.1165422472590478 12.293039138193675 3.5248692665499313
		-2.1165300285551396 12.293039138193675 3.5248692665499313
		-2.1165300285551396 12.293039138193675 -3.5248441418990453
		2.1165422472590478 12.293039138193675 -3.5248441418990453
		2.1165422472590478 4.0974634306815609 -10.573908704199049
		-2.1165300285551396 4.0974634306815627 -10.573908704199049
		-2.1165300285551467 -4.0974634306815858 -10.573908704199049
		2.1165422472590407 -4.0974634306815894 -10.573908704199049
		2.1165422472590407 -12.2930391381937 -3.5248441418990453
		-2.1165300285551467 -12.2930391381937 -3.5248441418990453
		-2.1165300285551467 -12.2930391381937 3.5248692665499313
		2.1165422472590407 -12.2930391381937 3.5248692665499313
		2.1165422472590407 -4.0974634306815894 10.573933828849952
		-2.1165300285551396 -4.0974634306815858 10.573933828849944
		2.1165422472590407 -4.0974634306815894 10.573933828849952
		2.1165422472590478 4.0974634306815609 10.573933828849952
		-2.1165300285551396 4.0974634306815627 10.573933828849944
		-2.1165300285551396 12.293039138193675 3.5248692665499313
		2.1165422472590478 12.293039138193675 3.5248692665499313
		2.1165422472590478 12.293039138193675 -3.5248441418990453
		-2.1165300285551396 12.293039138193675 -3.5248441418990453
		-2.1165300285551396 4.0974634306815627 -10.573908704199049
		;
createNode transform -n "ctrl_r_arm01_upper01_ik_family" -p "ctrl_root01";
	setAttr ".t" -type "double3" -26.724999999999987 -2.8421709430404007e-014 -41.523900000000005 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 180 89.999999999999986 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_upper01_ik_parent" -p "ctrl_r_arm01_upper01_ik_family";
	setAttr ".r" -type "double3" 7.016709298534876e-015 360 7.016709298534876e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_upper01_ik" -p "ctrl_r_arm01_upper01_ik_parent";
	addAttr -ci true -k true -sn "world_rotate" -ln "world_rotate" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ik_switch" -ln "ik_switch" -dt "string";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" 7.1054273576010019e-015 0 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "bone_r_arm01_upper01_ik" -p "ctrl_r_arm01_upper01_ik";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.1054273576010019e-015 9.4663308626521487e-030 3.5527136788005009e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9738928024388935e-014 6.361109362927028e-015 -7.016709298534876e-015 ;
	setAttr ".radi" 3;
createNode joint -n "bone_r_arm01_mid01_ik" -p "bone_r_arm01_upper01_ik";
	setAttr ".t" -type "double3" -34.999989999999983 1.9787242244622928e-014 -2.4868995751603507e-014 ;
	setAttr ".r" -type "double3" 0 -1.2026472389283922e-014 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.9741115941260499e-014 -0.8530435439148556 -6.912233874346775e-015 ;
	setAttr ".radi" 3;
createNode joint -n "bone_r_arm01_base01_ik" -p "bone_r_arm01_mid01_ik";
	setAttr ".t" -type "double3" -18.799993733457281 -3.4088230086460026e-015 -8.1669634184322604e-006 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.9841204195134443e-014 -9.9392333795734887e-017 
		-6.9114677883180561e-015 ;
	setAttr ".radi" 3;
createNode parentConstraint -n "bone_r_arm01_base01_ik_parentConstraint1" -p "bone_r_arm01_base01_ik";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_base01_rotate_ikW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 1.2621774483536189e-029 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 6.8415547619777535e-031 -7.8519943698630585e-015 
		-4.8023300522785768e-029 ;
	setAttr ".rst" -type "double3" -18.799993733457281 -3.40882300864599e-015 -8.1669634184322604e-006 ;
	setAttr -k on ".w0";
createNode ikEffector -n "bone_r_arm01_base01_ik_eff" -p "bone_r_arm01_mid01_ik";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "ctrl_r_arm01_base01_rotate_ik_parent" -p "bone_r_arm01_mid01_ik";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_base01_rotate_ik" -p "ctrl_r_arm01_base01_rotate_ik_parent";
	addAttr -ci true -sn "ik_switch" -ln "ik_switch" -dt "string";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".r" -type "double3" 0 1.272221872585407e-014 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ctrl_r_arm01_base01_rotate_ikShape" -p "ctrl_r_arm01_base01_rotate_ik";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-0.50000996973332335 -0.49999999999989758 -0.49997921417999791
		-0.50000996973332512 -0.49999999999989758 0.50002078581999854
		0.49999003026667665 -0.49999999999990574 0.50002078582000209
		0.49999003026668376 0.50000000000009381 0.50002078582000209
		-0.50000996973331624 0.50000000000010192 0.50002078581999854
		-0.50000996973332512 -0.49999999999989758 0.50002078581999854
		0.49999003026667665 -0.49999999999990574 0.50002078582000209
		0.49999003026667665 -0.49999999999990569 -0.49997921417999441
		-0.50000996973332335 -0.49999999999989758 -0.49997921417999791
		-0.50000996973331624 0.50000000000010192 -0.49997921417999791
		-0.50000996973331624 0.50000000000010192 0.50002078581999854
		0.49999003026668376 0.50000000000009381 0.50002078582000209
		0.49999003026668554 0.50000000000009381 -0.49997921417999441
		-0.50000996973331624 0.50000000000010192 -0.49997921417999791
		0.49999003026668554 0.50000000000009381 -0.49997921417999441
		0.49999003026667665 -0.49999999999990569 -0.49997921417999441
		;
createNode parentConstraint -n "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1" 
		-p "ctrl_r_arm01_base01_rotate_ik_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_base01_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 1.2621774483536189e-029 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.9632276504875931e-014 -1.0734372049939375e-014 
		7.1203954785765197e-015 ;
	setAttr ".rst" -type "double3" -18.799993733457281 -3.40882300864599e-015 -8.1669634184322604e-006 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ctrl_r_arm01_upper01_ikShape" -p "ctrl_r_arm01_upper01_ik";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-7.4999938906481276 -7.4999999999999964 -7.4999874376744913
		-7.4999938906481276 -7.4999999999999964 7.5000125623255203
		7.5000061093518804 -7.4999999999999982 7.5000125623255203
		7.5000061093518804 7.4999999999999938 7.5000125623255203
		-7.4999938906481276 7.4999999999999956 7.5000125623255203
		-7.4999938906481276 -7.4999999999999964 7.5000125623255203
		7.5000061093518804 -7.4999999999999982 7.5000125623255203
		7.5000061093518804 -7.4999999999999982 -7.4999874376744913
		-7.4999938906481276 -7.4999999999999964 -7.4999874376744913
		-7.4999938906481196 7.4999999999999956 -7.4999874376744913
		-7.4999938906481276 7.4999999999999956 7.5000125623255203
		7.5000061093518804 7.4999999999999938 7.5000125623255203
		7.5000061093518866 7.4999999999999938 -7.4999874376744913
		-7.4999938906481196 7.4999999999999956 -7.4999874376744913
		7.5000061093518866 7.4999999999999938 -7.4999874376744913
		7.5000061093518804 -7.4999999999999982 -7.4999874376744913
		;
createNode transform -n "ctrl_l_arm01_upper01_family" -p "ctrl_root01";
	setAttr ".t" -type "double3" 26.725012562325396 -2.8421709430404007e-014 -41.523906109351941 ;
	setAttr -av ".ty";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_upper01_parent" -p "ctrl_l_arm01_upper01_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_upper01" -p "ctrl_l_arm01_upper01_parent";
	addAttr -ci true -k true -sn "world_rotate" -ln "world_rotate" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "fk_switch" -ln "fk_switch" -dt "string";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" -7.1054273576010019e-015 0 3.5527136788005009e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".world_rotate";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_upper01Shape" -p "ctrl_l_arm01_upper01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-2.1165361379070879 -4.0974634306815751 10.573921266524492
		-2.1165361379070844 4.0974634306815787 10.573921266524492
		2.1165361379071026 4.097463430681576 10.573921266524492
		2.1165361379071039 12.293039138193691 3.5248567042244909
		-2.1165361379070817 12.293039138193691 3.5248567042244909
		-2.1165361379070817 12.293039138193691 -3.5248567042244781
		2.1165361379071039 12.293039138193691 -3.5248567042244781
		2.1165361379071026 4.097463430681576 -10.57392126652449
		2.1165361379071004 -4.097463430681576 -10.57392126652449
		-2.1165361379070879 -4.0974634306815751 -10.57392126652449
		-2.1165361379070906 -12.293039138193691 -3.5248567042244781
		2.1165361379070986 -12.293039138193691 -3.5248567042244781
		2.1165361379070986 -12.293039138193691 3.5248567042244909
		-2.1165361379070906 -12.293039138193691 3.5248567042244909
		-2.1165361379070879 -4.0974634306815751 10.573921266524492
		2.1165361379071004 -4.097463430681576 10.573921266524492
		2.1165361379071026 4.097463430681576 10.573921266524492
		-2.1165361379070844 4.0974634306815787 10.573921266524492
		-2.1165361379070817 12.293039138193691 3.5248567042244909
		2.1165361379071039 12.293039138193691 3.5248567042244909
		2.1165361379071039 12.293039138193691 -3.5248567042244781
		-2.1165361379070817 12.293039138193691 -3.5248567042244781
		-2.1165361379070844 4.0974634306815787 -10.57392126652449
		2.1165361379071026 4.097463430681576 -10.57392126652449
		-2.1165361379070844 4.0974634306815787 -10.57392126652449
		-2.1165361379070879 -4.0974634306815751 -10.57392126652449
		2.1165361379071004 -4.097463430681576 -10.57392126652449
		2.1165361379070986 -12.293039138193691 -3.5248567042244781
		-2.1165361379070906 -12.293039138193691 -3.5248567042244781
		-2.1165361379070906 -12.293039138193691 3.5248567042244909
		2.1165361379070986 -12.293039138193691 3.5248567042244909
		2.1165361379071004 -4.097463430681576 10.573921266524492
		;
createNode transform -n "ctrl_l_arm01_mid01_parent" -p "ctrl_l_arm01_upper01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_mid01" -p "ctrl_l_arm01_mid01_parent";
	addAttr -ci true -sn "fk_switch" -ln "fk_switch" -dt "string";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" 0 6.3108872417680986e-030 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_mid01Shape" -p "ctrl_l_arm01_mid01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-4.8765785111125766 -3.0718649833715013 7.895795159882292
		-4.8765785111125766 3.0718649833715035 7.895795159882292
		-1.7030476874363001 3.0718649833715026 7.895795159882292
		-1.703047687436299 9.2160813895418112 2.6111172217432626
		-4.8765785111125766 9.2160813895418112 2.6111172217432626
		-4.8765785111125766 9.2160813895418112 -2.6740471558230716
		-1.703047687436299 9.2160813895418112 -2.6740471558230716
		-1.7030476874363001 3.0718649833715026 -7.9587250939620979
		-1.7030476874363016 -3.0718649833715026 -7.9587250939620979
		-4.8765785111125766 -3.0718649833715013 -7.9587250939620979
		-4.8765785111125766 -9.2160813895418112 -2.6740471558230716
		-1.7030476874363036 -9.2160813895418112 -2.6740471558230716
		-1.7030476874363036 -9.2160813895418112 2.6111172217432626
		-4.8765785111125766 -9.2160813895418112 2.6111172217432626
		-4.8765785111125766 -3.0718649833715013 7.895795159882292
		-1.7030476874363016 -3.0718649833715026 7.895795159882292
		-1.7030476874363001 3.0718649833715026 7.895795159882292
		-4.8765785111125766 3.0718649833715035 7.895795159882292
		-4.8765785111125766 9.2160813895418112 2.6111172217432626
		-1.703047687436299 9.2160813895418112 2.6111172217432626
		-1.703047687436299 9.2160813895418112 -2.6740471558230716
		-4.8765785111125766 9.2160813895418112 -2.6740471558230716
		-4.8765785111125766 3.0718649833715035 -7.9587250939620979
		-1.7030476874363001 3.0718649833715026 -7.9587250939620979
		-4.8765785111125766 3.0718649833715035 -7.9587250939620979
		-4.8765785111125766 -3.0718649833715013 -7.9587250939620979
		-1.7030476874363016 -3.0718649833715026 -7.9587250939620979
		-1.7030476874363036 -9.2160813895418112 -2.6740471558230716
		-4.8765785111125766 -9.2160813895418112 -2.6740471558230716
		-4.8765785111125766 -9.2160813895418112 2.6111172217432626
		-1.7030476874363036 -9.2160813895418112 2.6111172217432626
		-1.7030476874363016 -3.0718649833715026 7.895795159882292
		;
createNode transform -n "ctrl_l_arm01_base01_parent" -p "ctrl_l_arm01_mid01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_base01" -p "ctrl_l_arm01_base01_parent";
	addAttr -ci true -sn "fk_switch" -ln "fk_switch" -dt "string";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -6.3108872417680986e-030 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_base01Shape" -p "ctrl_l_arm01_base01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-4.3464500062754876 -1.3481236892610335 4.9466679748275872
		-4.3464500062754876 1.3481236892610351 4.9466679748275872
		-2.24151018067047 1.3481236892610344 4.9466679748275872
		-2.2415101806704691 4.0445845473855275 1.4414462909874639
		-4.3464500062754841 4.0445845473855275 1.4414462909874639
		-4.3464500062754841 4.0445845473855275 -2.0640980384421153
		-2.2415101806704691 4.0445845473855275 -2.0640980384421153
		-2.24151018067047 1.3481236892610344 -5.5693197222822555
		-2.2415101806704709 -1.3481236892610344 -5.5693197222822555
		-4.3464500062754876 -1.3481236892610335 -5.5693197222822555
		-4.3464500062754876 -4.0445845473855275 -2.0640980384421153
		-2.2415101806704718 -4.0445845473855275 -2.0640980384421153
		-2.2415101806704718 -4.0445845473855275 1.4414462909874639
		-4.3464500062754876 -4.0445845473855275 1.4414462909874639
		-4.3464500062754876 -1.3481236892610335 4.9466679748275872
		-2.2415101806704709 -1.3481236892610344 4.9466679748275872
		-2.24151018067047 1.3481236892610344 4.9466679748275872
		-4.3464500062754876 1.3481236892610351 4.9466679748275872
		-4.3464500062754841 4.0445845473855275 1.4414462909874639
		-2.2415101806704691 4.0445845473855275 1.4414462909874639
		-2.2415101806704691 4.0445845473855275 -2.0640980384421153
		-4.3464500062754841 4.0445845473855275 -2.0640980384421153
		-4.3464500062754876 1.3481236892610351 -5.5693197222822555
		-2.24151018067047 1.3481236892610344 -5.5693197222822555
		-4.3464500062754876 1.3481236892610351 -5.5693197222822555
		-4.3464500062754876 -1.3481236892610335 -5.5693197222822555
		-2.2415101806704709 -1.3481236892610344 -5.5693197222822555
		-2.2415101806704718 -4.0445845473855275 -2.0640980384421153
		-4.3464500062754876 -4.0445845473855275 -2.0640980384421153
		-4.3464500062754876 -4.0445845473855275 1.4414462909874639
		-2.2415101806704718 -4.0445845473855275 1.4414462909874639
		-2.2415101806704709 -1.3481236892610344 4.9466679748275872
		;
createNode parentConstraint -n "ctrl_l_arm01_base01_parent_parentConstraint1" -p "ctrl_l_arm01_base01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 26.445120635088202 -4.3236516637961725e-014 
		12.274010278084909 ;
	setAttr ".tg[0].tor" -type "double3" 0 269.14695645608504 0 ;
	setAttr ".lr" -type "double3" 0 -6.3611093629270335e-014 0 ;
	setAttr ".rst" -type "double3" 18.800000000000011 -5.1979908981196133e-015 1.0658141036401504e-014 ;
	setAttr ".rsrr" -type "double3" 0 -6.3611093629270335e-014 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_mid01_parent_parentConstraint1" -p "ctrl_l_arm01_mid01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 26.725012562325407 -3.8038525739842125e-014 
		-6.5239061093519624 ;
	setAttr ".tg[0].tor" -type "double3" 0 269.14695645608509 0 ;
	setAttr ".lr" -type "double3" 0 -0.85304354391491388 0 ;
	setAttr ".rst" -type "double3" 34.999999999999993 -9.6168163094381179e-015 7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" 0 -0.85304354391491388 0 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_l_arm01_base01_pv_marker" -p "ctrl_l_arm01_upper01";
	addAttr -ci true -sn "ik_switch" -ln "ik_switch" -dt "string";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 80.000000000000028 0 7.1054273576010019e-015 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.99999999999999933 1 1.0000000000000002 ;
createNode locator -n "ctrl_l_arm01_base01_pv_markerShape" -p "ctrl_l_arm01_base01_pv_marker";
	setAttr -k off ".v";
createNode transform -n "ctrl_l_arm01_upper01_distance_marker" -p "ctrl_l_arm01_upper01";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.99999999999999933 1 1.0000000000000002 ;
createNode locator -n "ctrl_l_arm01_upper01_distance_markerShape" -p "ctrl_l_arm01_upper01_distance_marker";
	setAttr -k off ".v";
createNode orientConstraint -n "ctrl_l_arm01_upper01_parent_orientConstraint1" -p
		 "ctrl_l_arm01_upper01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".o" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_upper01_family_parentConstraint1" -p
		 "ctrl_l_arm01_upper01_family";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 26.725012562325407 -2.8421709430404007e-014 
		-41.523906109351941 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rst" -type "double3" 26.725012562325396 0 -41.523906109351941 ;
	setAttr ".rsrr" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_l_arm01_upper01_ik_family" -p "ctrl_root01";
	setAttr ".t" -type "double3" 26.725012562325393 -2.8421709430404007e-014 -41.523906109351955 ;
	setAttr -av ".ty";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_upper01_ik_parent" -p "ctrl_l_arm01_upper01_ik_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_upper01_ik" -p "ctrl_l_arm01_upper01_ik_parent";
	addAttr -ci true -k true -sn "world_rotate" -ln "world_rotate" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ik_switch" -ln "ik_switch" -dt "string";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" -7.1054273576010019e-015 0 3.5527136788005009e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".world_rotate";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_upper01_ikShape" -p "ctrl_l_arm01_upper01_ik";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		7.5000000000000995 7.5 7.4999999999999503
		7.5000000000000995 7.5 -7.5000000000000497
		-7.4999999999999005 7.5 -7.5000000000000497
		-7.4999999999999005 -7.5 -7.5000000000000497
		7.5000000000000995 -7.5 -7.5000000000000497
		7.5000000000000995 7.5 -7.5000000000000497
		-7.4999999999999005 7.5 -7.5000000000000497
		-7.4999999999999005 7.5 7.4999999999999503
		7.5000000000000995 7.5 7.4999999999999503
		7.5000000000000995 -7.5 7.4999999999999503
		7.5000000000000995 -7.5 -7.5000000000000497
		-7.4999999999999005 -7.5 -7.5000000000000497
		-7.4999999999999005 -7.5 7.4999999999999503
		7.5000000000000995 -7.5 7.4999999999999503
		-7.4999999999999005 -7.5 7.4999999999999503
		-7.4999999999999005 7.5 7.4999999999999503
		;
createNode joint -n "bone_l_arm01_upper01_ik" -p "ctrl_l_arm01_upper01_ik";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1054273576010019e-015 0 -3.5527136788005009e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 6.3611093629270249e-015 0 ;
	setAttr ".radi" 3;
createNode joint -n "bone_l_arm01_mid01_ik" -p "bone_l_arm01_upper01_ik";
	setAttr ".t" -type "double3" 34.999999999999986 -9.6168163094381179e-015 1.7763568394002505e-014 ;
	setAttr ".r" -type "double3" 0 -4.0750856856251333e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -0.85304354391491444 0 ;
	setAttr ".radi" 3;
createNode joint -n "bone_l_arm01_base01_ik" -p "bone_l_arm01_mid01_ik";
	setAttr ".t" -type "double3" 18.800000000000004 -5.1979908981196133e-015 -1.0658141036401504e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 3;
createNode parentConstraint -n "bone_l_arm01_base01_ik_parentConstraint1" -p "bone_l_arm01_base01_ik";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_base01_rotate_ikW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 1.2621774483536189e-029 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.7592443081845076e-014 2.3313734977421353e-029 ;
	setAttr ".rst" -type "double3" 18.800000000000004 -5.1979908981196062e-015 -7.1054273576010019e-015 ;
	setAttr -k on ".w0";
createNode ikEffector -n "bone_l_arm01_base01_ik_eff" -p "bone_l_arm01_mid01_ik";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "ctrl_l_arm01_base01_rotate_ik_parent" -p "bone_l_arm01_mid01_ik";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_base01_rotate_ik" -p "ctrl_l_arm01_base01_rotate_ik_parent";
	addAttr -ci true -sn "ik_switch" -ln "ik_switch" -dt "string";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -6.3108872417680986e-030 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ctrl_l_arm01_base01_rotate_ikShape" -p "ctrl_l_arm01_base01_rotate_ik";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 0.5 0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		0.5 -0.5 0.5
		0.5 -0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		;
createNode parentConstraint -n "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1" 
		-p "ctrl_l_arm01_base01_rotate_ik_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_base01_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0658141036401504e-014 1.2621774483536189e-029 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 -2.6835930124848427e-014 2.3128888569592657e-029 ;
	setAttr ".rst" -type "double3" 18.800000000000011 -5.1979908981196133e-015 -3.5527136788005009e-015 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "ctrl_l_arm01_upper01_ik_parent_orientConstraint1" 
		-p "ctrl_l_arm01_upper01_ik_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".o" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_upper01_ik_family_parentConstraint1" 
		-p "ctrl_l_arm01_upper01_ik_family";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 26.725012562325404 -2.8421709430404007e-014 
		-41.523906109351955 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rst" -type "double3" 26.725012562325393 0 -41.523906109351955 ;
	setAttr ".rsrr" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_viz_parent" -p "ctrl_trendmill";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_viz" -p "ctrl_viz_parent";
	addAttr -ci true -k true -sn "poleVector" -ln "poleVector" -dv 1 -min 0 -max 1 
		-at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".poleVector";
createNode nurbsCurve -n "ctrl_vizShape" -p "ctrl_viz";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 2 no 3
		8 0 2.4312504768444345 8.0952033188905936 13.751152167901893 16.108964024161907
		 24.116774650895895 26.651150175424775 34.67773292101699
		8
		-10.381500000000001 8.8817841970012523e-016 -98.439858345975111
		-7.6998307240405905 8.8817841970012523e-016 -98.439858345975111
		-5.8040491584649434 0 -93.04298339365954
		-3.937566477454796 8.8817841970012523e-016 -98.439858345975111
		-1.3369 8.8817841970012523e-016 -98.439858345975111
		-4.4321921721217663 -8.8817841970012523e-016 -90.939858345975111
		-7.2276083756771197 -8.8817841970012523e-016 -90.939858345975111
		-10.381500000000001 8.8817841970012523e-016 -98.439858345975111
		;
createNode nurbsCurve -n "ctrl_vizShape1" -p "ctrl_viz";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 2 no 3
		5 0 2.1000000000000001 3.4999999999999996 5.5999999999999996 6.9999999999999991
		
		5
		-0.56479999999999997 8.8817841970012523e-016 -98.439858345975111
		1.7515000000000001 8.8817841970012523e-016 -98.439858345975111
		1.7515000000000001 8.8817841970012523e-016 -97.039858345975105
		-0.56479999999999997 8.8817841970012523e-016 -97.039858345975105
		-0.56479999999999997 8.8817841970012523e-016 -98.439858345975111
		;
createNode nurbsCurve -n "ctrl_vizShape2" -p "ctrl_viz";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 2 no 3
		5 0 2.1000000000000001 7.5 9.5999999999999996 15
		5
		-0.56479999999999997 8.8817841970012523e-016 -96.339858345975088
		1.7515000000000001 8.8817841970012523e-016 -96.339858345975088
		1.7515000000000001 -8.8817841970012523e-016 -90.939858345975111
		-0.56479999999999997 -8.8817841970012523e-016 -90.939858345975111
		-0.56479999999999997 8.8817841970012523e-016 -96.339858345975088
		;
createNode nurbsCurve -n "ctrl_vizShape3" -p "ctrl_viz";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 2 no 3
		11 0 6.5 8.0906248569466683 13.960211794306502 18.250836651253177 19.950836651253173
		 27.050836651253174 28.69146227115094 34.490345839047869 38.130971458945631 39.830971458945626
		
		11
		3.1854000000000013 8.8817841970012523e-016 -98.439858345975111
		10.354900000000001 8.8817841970012523e-016 -98.439858345975111
		10.354900000000001 8.8817841970012523e-016 -96.849233489028435
		5.8429407827878279 0 -92.639858345975114
		10.575499999999998 0 -92.639858345975114
		10.575499999999998 -8.8817841970012523e-016 -90.939858345975111
		2.7441999999999993 -8.8817841970012523e-016 -90.939858345975111
		2.7441999999999993 0 -92.580483965872858
		7.2010100587472365 8.8817841970012523e-016 -96.739858345975094
		3.1854000000000013 8.8817841970012523e-016 -96.739858345975094
		3.1854000000000013 8.8817841970012523e-016 -98.439858345975111
		;
createNode nurbsCurve -n "ctrl_vizShape4" -p "ctrl_viz";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		2 32 0 no 3
		35 0 0 1.3430955313234136 1.3430955313234136 2.3430955313234136 3.3430955313234136
		 4.3430955313234136 4.3430955313234136 5.3430955313234136 6.3430955313234136 7.3430955313234145
		 7.3430955313234145 8.3430955313234136 9.3430955313234136 9.3430955313234136 10.343095531323414
		 11.343095531323414 11.343095531323414 12.668718351214356 12.668718351214356 13.668718351214356
		 13.668718351214356 14.668718351214356 15.668718351214356 15.668718351214356 16.668718351214359
		 16.668718351214359 17.668718351214359 17.668718351214359 18.668718351214359 19.668718351214359
		 19.668718351214359 20.668718351214359 21.668718351214359 21.668718351214359
		34
		-6.6151000000000018 -8.8817841970012523e-016 -88.759470345975117
		-5.8500500000000013 -8.8817841970012523e-016 -88.640164433104118
		-5.0850000000000009 -8.8817841970012523e-016 -88.520858520233148
		-5.2229282001983677 -8.8817841970012523e-016 -88.178405563797625
		-5.820623653009843 -8.8817841970012523e-016 -87.719959728747668
		-6.7033745510032823 -8.8817841970012523e-016 -87.486870345975106
		-7.3875054642557423 -8.8817841970012523e-016 -87.486870345975106
		-8.2150836453803322 -8.8817841970012523e-016 -87.486870345975106
		-9.2651881925688571 -8.8817841970012523e-016 -87.778507980826717
		-10.0284 -8.8817841970012523e-016 -88.512020885381531
		-10.0284 -8.8817841970012523e-016 -89.085353815876687
		-10.0284 -8.8817841970012523e-016 -89.848692659242829
		-8.6730100114442674 -8.8817841970012523e-016 -90.668370345975106
		-7.4334827283131171 -8.8817841970012523e-016 -90.668370345975106
		-6.4642963698786922 -8.8817841970012523e-016 -90.668370345975106
		-5.3553409246967281 -8.8817841970012523e-016 -90.203297363599276
		-5.0850000000000009 -8.8817841970012523e-016 -89.720549111520228
		-5.8500499999999995 -8.8817841970012523e-016 -89.62885972874767
		-6.6151 -8.8817841970012523e-016 -89.537170345975099
		-6.6868227359426271 -8.8817841970012523e-016 -89.67525731171861
		-6.7640627435721381 -8.8817841970012523e-016 -89.739329085579911
		-6.8909581963836111 -8.8817841970012523e-016 -89.846483250529914
		-7.2624491020065634 -8.8817841970012523e-016 -89.961370345975098
		-7.4923318303196771 -8.8817841970012523e-016 -89.961370345975098
		-8.0127872755016405 -8.8817841970012523e-016 -89.961370345975098
		-8.2886454718852534 -8.8817841970012523e-016 -89.699559728747687
		-8.4983000000000004 -8.8817841970012523e-016 -89.506239702807335
		-8.4983000000000004 -8.8817841970012523e-016 -89.089772633302502
		-8.4983000000000004 -8.8817841970012523e-016 -88.576092659242832
		-8.0127872755016405 -8.8817841970012523e-016 -88.193870345975114
		-7.5750891096360737 -8.8817841970012523e-016 -88.193870345975114
		-7.1484272831311522 -8.8817841970012523e-016 -88.193870345975114
		-6.712570003814756 -8.8817841970012523e-016 -88.48329857211381
		-6.6151000000000018 -8.8817841970012523e-016 -88.759470345975117
		;
createNode nurbsCurve -n "ctrl_vizShape5" -p "ctrl_viz";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 2 no 3
		9 0 4.1000000000000005 5.0999999999999996 6.5 9.8000000000000007 11.1 14.400000000000002
		 15.800000000000002 16.800000000000001
		9
		-4.7319000000000004 -8.8817841970012523e-016 -90.597670345975104
		0.093799999999999883 -8.8817841970012523e-016 -90.597670345975104
		0.093799999999999883 -8.8817841970012523e-016 -89.89067034597511
		-1.5540000000000005 -8.8817841970012523e-016 -89.89067034597511
		-1.5540000000000005 -8.8817841970012523e-016 -87.557570345975108
		-3.0841000000000012 -8.8817841970012523e-016 -87.557570345975108
		-3.0841000000000012 -8.8817841970012523e-016 -89.89067034597511
		-4.7319000000000004 -8.8817841970012523e-016 -89.89067034597511
		-4.7319000000000004 -8.8817841970012523e-016 -90.597670345975104
		;
createNode nurbsCurve -n "ctrl_vizShape6" -p "ctrl_viz";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		2 33 0 no 3
		36 0 0 4.2999999999999998 4.2999999999999998 6.5250003814755475 6.5250003814755475
		 7.5250003814755475 8.5250003814755466 9.5250003814755466 9.5250003814755466 10.525000381475548
		 11.525000381475548 11.525000381475548 12.525000381475548 12.525000381475548 13.525000381475548
		 13.525000381475548 14.525000381475548 15.525000381475548 15.525000381475548 16.85693473403342
		 16.85693473403342 18.277246018080113 18.277246018080113 19.733632842700452 19.733632842700452
		 20.733632842700452 20.733632842700452 21.733632842700452 21.733632842700452 21.868008367229329
		 21.868008367229329 23.568008367229329 23.568008367229329 24.868008367229329 24.868008367229329
		
		35
		0.79999999999999893 -8.8817841970012523e-016 -87.557570345975108
		0.79999999999999893 -8.8817841970012523e-016 -89.077620345975106
		0.79999999999999893 -8.8817841970012523e-016 -90.597670345975104
		2.1094127244983589 -8.8817841970012523e-016 -90.597670345975104
		3.4188254489967207 -8.8817841970012523e-016 -90.597670345975104
		4.148933626306551 -8.8817841970012523e-016 -90.597670345975104
		4.9176627054245827 -8.8817841970012523e-016 -90.447433789936355
		5.3902999999999999 -8.8817841970012523e-016 -90.042012685183167
		5.3902999999999999 -8.8817841970012523e-016 -89.750375050331556
		5.3902999999999999 -8.8817841970012523e-016 -89.496297363599282
		5.0316845242999904 -8.8817841970012523e-016 -89.127331502608953
		4.7172036301213112 -8.8817841970012523e-016 -89.01244440716377
		4.5167463508049153 -8.8817841970012523e-016 -88.939534998450881
		4.167324531929502 -8.8817841970012523e-016 -88.892033789936349
		4.4321499809262228 -8.8817841970012523e-016 -88.830170345975105
		4.5516890714885179 -8.8817841970012523e-016 -88.768307980826719
		4.6326072602426187 -8.8817841970012523e-016 -88.727434998450875
		4.9434081773098342 -8.8817841970012523e-016 -88.457891450728297
		4.9949027130540919 -8.8817841970012523e-016 -88.384982042015395
		5.3691513565270448 -8.8817841970012523e-016 -87.971276193995251
		5.7434000000000012 -8.8817841970012523e-016 -87.557570345975108
		4.9075468093385197 -8.8817841970012523e-016 -87.557570345975108
		4.0716936186770454 -8.8817841970012523e-016 -87.557570345975108
		3.6625022545204864 -8.8817841970012523e-016 -88.00994030706461
		3.2533108903639274 -8.8817841970012523e-016 -88.462310268154098
		3.0712427206836033 -8.8817841970012523e-016 -88.637955024391218
		2.9277954528114738 -8.8817841970012523e-016 -88.690979754688001
		2.7346945357442571 -8.8817841970012523e-016 -88.759470345975117
		2.4882599923704873 -8.8817841970012523e-016 -88.759470345975117
		2.4091799961852445 -8.8817841970012523e-016 -88.759470345975117
		2.3301000000000016 -8.8817841970012523e-016 -88.759470345975117
		2.3301000000000016 -8.8817841970012523e-016 -88.158520345975106
		2.3301000000000016 -8.8817841970012523e-016 -87.557570345975108
		1.5650499999999994 -8.8817841970012523e-016 -87.557570345975108
		0.79999999999999893 -8.8817841970012523e-016 -87.557570345975108
		;
createNode nurbsCurve -n "ctrl_vizShape7" -p "ctrl_viz";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		2 13 0 no 3
		16 0 0 0.60156252384222175 0.60156252384222175 1.6015625238422218 1.6015625238422218
		 2.6015625238422215 3.6015625238422215 3.6015625238422215 4.6015625238422215 5.6015625238422215
		 5.6015625238422215 6.2281254291599906 6.2281254291599906 6.8281254291599911 6.8281254291599911
		
		15
		2.3301000000000016 -8.8817841970012523e-016 -89.466470345975111
		2.6841195452811455 -8.8817841970012523e-016 -89.466470345975111
		3.0381390905622965 -8.8817841970012523e-016 -89.466470345975111
		3.1521627054245802 -8.8817841970012523e-016 -89.466470345975111
		3.483193618677042 -8.8817841970012523e-016 -89.495192659242818
		3.6487081773098353 -8.8817841970012523e-016 -89.507344407163785
		3.860199999999999 -8.8817841970012523e-016 -89.613393867757367
		3.860199999999999 -8.8817841970012523e-016 -89.681884459044454
		3.860199999999999 -8.8817841970012523e-016 -89.782411476668628
		3.5273299961852445 -8.8817841970012523e-016 -89.89067034597511
		3.0675645395590152 -8.8817841970012523e-016 -89.89067034597511
		2.6988322697795084 -8.8817841970012523e-016 -89.89067034597511
		2.3301000000000016 -8.8817841970012523e-016 -89.89067034597511
		2.3301000000000016 -8.8817841970012523e-016 -89.678570345975118
		2.3301000000000016 -8.8817841970012523e-016 -89.466470345975111
		;
createNode nurbsCurve -n "ctrl_vizShape8" -p "ctrl_viz";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 2 no 3
		7 0 1.3000000000000005 4.5 6.5999999999999996 7.7000000000000002 11.1 15.4
		
		7
		6.2141999999999982 -8.8817841970012523e-016 -90.597670345975104
		7.7443000000000035 -8.8817841970012523e-016 -90.597670345975104
		7.7443000000000035 -8.8817841970012523e-016 -88.335270345975104
		10.215999999999999 -8.8817841970012523e-016 -88.335270345975104
		10.215999999999999 -8.8817841970012523e-016 -87.557570345975108
		6.2141999999999982 -8.8817841970012523e-016 -87.557570345975108
		6.2141999999999982 -8.8817841970012523e-016 -90.597670345975104
		;
createNode nurbsCurve -n "ctrl_vizShape9" -p "ctrl_viz";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-11.1915 8.8817841970012523e-016 -99.236858345975108
		-11.1915 -8.8817841970012523e-016 -86.867858345975108
		11.191499999999998 -8.8817841970012523e-016 -86.867858345975108
		11.191499999999998 8.8817841970012523e-016 -99.236858345975108
		-11.1915 8.8817841970012523e-016 -99.236858345975108
		;
createNode transform -n "grp_r_arm01" -p "ctrl_trendmill";
createNode transform -n "ctrl_r_arm01_base01_ik_family" -p "grp_r_arm01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_base01_ik_parent" -p "ctrl_r_arm01_base01_ik_family";
	setAttr ".r" -type "double3" 0 0 1.4143285251187101e-030 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_base01_ik" -p "ctrl_r_arm01_base01_ik_parent";
	addAttr -ci true -k true -sn "ikRotate" -ln "ikRotate" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "ikBlend" -ln "ikBlend" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "poleVector" -ln "poleVector" -at "float";
	addAttr -ci true -sn "ik_switch" -ln "ik_switch" -dt "string";
	addAttr -ci true -k true -sn "stretch" -ln "stretch" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".r" -type "double3" 0 1.272221872585407e-014 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".ikRotate";
	setAttr -k on ".ikBlend";
	setAttr -k on ".follow_world";
	setAttr -k on ".poleVector";
	setAttr -k on ".stretch";
createNode ikHandle -n "bone_r_arm01_base01_ikHandle" -p "ctrl_r_arm01_base01_ik";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-015 ;
	setAttr ".r" -type "double3" 4.7125158632044867e-013 89.14695645608515 -179.99999999999957 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "bone_r_arm01_base01_ikHandle_poleVectorConstraint1" 
		-p "bone_r_arm01_base01_ikHandle";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_base01_pvW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.0658141036401504e-014 0 80 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_r_arm01_base01_ik_distance_marker" -p "ctrl_r_arm01_base01_ik";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 4.7125158632044867e-013 89.14695645608515 -179.99999999999957 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode locator -n "ctrl_r_arm01_base01_ik_distance_markerShape" -p "ctrl_r_arm01_base01_ik_distance_marker";
	setAttr -k off ".v";
createNode nurbsCurve -n "ctrl_r_arm01_base01_ikShape" -p "ctrl_r_arm01_base01_ik";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-7.5000099697332212 -7.5000000000001616 -7.4999792141800015
		-7.5000099697332354 -7.5000000000001616 7.5000207858199985
		7.4999900302667681 -7.50000000000004 7.500020785820019
		7.4999900302666465 7.49999999999996 7.500020785820019
		-7.5000099697333553 7.4999999999998384 7.5000207858199985
		-7.5000099697332354 -7.5000000000001616 7.5000207858199985
		7.4999900302667681 -7.50000000000004 7.500020785820019
		7.4999900302667806 -7.50000000000004 -7.4999792141799873
		-7.5000099697332212 -7.5000000000001616 -7.4999792141800015
		-7.5000099697333438 7.4999999999998384 -7.4999792141800015
		-7.5000099697333553 7.4999999999998384 7.5000207858199985
		7.4999900302666465 7.49999999999996 7.500020785820019
		7.4999900302666589 7.49999999999996 -7.4999792141799873
		-7.5000099697333438 7.4999999999998384 -7.4999792141800015
		7.4999900302666589 7.49999999999996 -7.4999792141799873
		7.4999900302667806 -7.50000000000004 -7.4999792141799873
		;
createNode parentConstraint -n "ctrl_r_arm01_base01_ik_family_parentConstraint1" 
		-p "ctrl_r_arm01_base01_ik_family";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_upper01_ikW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -53.797899999999984 1.6378419235976944e-014 
		-0.27990000000001203 ;
	setAttr ".tg[0].tor" -type "double3" -4.5234449825020492e-013 -0.85304354391485404 
		-9.2836192031598039e-017 ;
	setAttr ".lr" -type "double3" 9.4872547955154589e-029 89.14695645608515 180 ;
	setAttr ".rst" -type "double3" -26.445099999999982 -3.8211786062796006e-014 12.273999999999958 ;
	setAttr ".rsrr" -type "double3" -9.4872547955154623e-029 89.14695645608515 180 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_r_arm01_base01_pv_family" -p "grp_r_arm01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_base01_pv_parent" -p "ctrl_r_arm01_base01_pv_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_base01_pv" -p "ctrl_r_arm01_base01_pv_parent";
	addAttr -ci true -sn "ik_switch" -ln "ik_switch" -dt "string";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" 7.1054273576010019e-015 0 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ctrl_r_arm01_base01_pvShape" -p "ctrl_r_arm01_base01_pv";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-1.2562325405696129e-005 2.0000000000000067 -6.1093519434507471e-006
		-1.2562325405696129e-005 6.5540647396768106e-015 1.9999938906480563
		-1.2562325405696129e-005 -1.9999999999999931 -6.1093519434507471e-006
		-1.2562325405696129e-005 6.5540647396768106e-015 -2.0000061093519435
		-1.2562325405696129e-005 2.0000000000000067 -6.1093519434507471e-006
		-1.2562325405696129e-005 -1.9999999999999931 -6.1093519434507471e-006
		-1.2562325405696129e-005 6.5540647396768106e-015 -6.1093519434507471e-006
		-1.2562325405696129e-005 6.5540647396768106e-015 1.9999938906480563
		-1.2562325405696129e-005 6.5540647396768106e-015 -2.0000061093519435
		-2.0000125623254057 6.5540647396768106e-015 -6.1093519434507471e-006
		-1.2562325405696129e-005 6.5540647396768106e-015 1.9999938906480563
		1.9999874376745943 6.5540647396768106e-015 -6.1093519434507471e-006
		-1.2562325405696129e-005 6.5540647396768106e-015 -2.0000061093519435
		-1.2562325405696129e-005 6.5540647396768106e-015 1.9999938906480563
		-1.2562325405696129e-005 6.5540647396768106e-015 -6.1093519434507471e-006
		1.9999874376745943 6.5540647396768106e-015 -6.1093519434507471e-006
		-2.0000125623254057 6.5540647396768106e-015 -6.1093519434507471e-006
		;
createNode pointConstraint -n "ctrl_r_arm01_base01_pv_family_pointConstraint1" -p
		 "ctrl_r_arm01_base01_pv_family";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_r_arm01_base01_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -0.27990000000003334 9.7900766323919925e-015 26.202100000000051 ;
	setAttr ".rst" -type "double3" -26.725000000000016 -2.8421709430404014e-014 38.47610000000001 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_r_arm01_base01_ik_distance_curve" -p "grp_r_arm01";
	setAttr ".v" no;
createNode distanceDimShape -n "ctrl_r_arm01_base01_ik_distance_curveShape" -p "ctrl_r_arm01_base01_ik_distance_curve";
	setAttr -k off ".v";
createNode transform -n "ctrl_r_arm01_base01_fingers_family" -p "grp_r_arm01";
createNode parentConstraint -n "ctrl_r_arm01_base01_fingers_family_parentConstraint1" 
		-p "ctrl_r_arm01_base01_fingers_family";
	addAttr -ci true -k true -sn "w0" -ln "bone_r_arm01_base01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 89.14695645608515 180 ;
	setAttr ".rst" -type "double3" -26.445099999999993 -4.0230246467857054e-014 12.273999999999972 ;
	setAttr ".rsrr" -type "double3" 0 89.14695645608515 179.99999999999957 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_r_arm01_finger05_01_parent" -p "ctrl_r_arm01_base01_fingers_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger05_01" -p "ctrl_r_arm01_finger05_01_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -1.1102230246251563e-016 0 ;
	setAttr ".r" -type "double3" -1.8817614338431775e-045 1.9083328088781101e-014 -1.1299600123008413e-029 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode transform -n "ctrl_r_arm01_finger05_02_parent" -p "ctrl_r_arm01_finger05_01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger05_02" -p "ctrl_r_arm01_finger05_02_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" 0 2.2204460492503131e-016 0 ;
	setAttr ".r" -type "double3" -5.0690090235824809e-015 -4.8363309242307401e-032 -1.0933156717530838e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode transform -n "ctrl_r_arm01_finger05_03_parent" -p "ctrl_r_arm01_finger05_02";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger05_03" -p "ctrl_r_arm01_finger05_03_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" 3.5527136788005009e-015 0 3.5527136788005009e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_r_arm01_finger05_03Shape" -p "ctrl_r_arm01_finger05_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.30856696916347914 0.41311624784136131 -0.97073131996839723
		0.30856696916345072 -0.41311751731237578 -0.97073131996839723
		-0.30857180894500758 -0.41311751731235086 -0.97073131996839723
		-0.30857180894503955 -1.2394167008164567 -0.25730522105084574
		0.30856696916341519 -1.2394167008164816 -0.25730522105084574
		0.30856696916341164 -1.2394167008164816 0.45618654669024394
		-0.30857180894503955 -1.2394167008164567 0.4561865466902475
		-0.30857180894500402 -0.41311751731235002 1.1696126456078026
		-0.30857180894497205 0.4131162478413879 1.1696126456078026
		0.30856696916347914 0.41311624784136214 1.1696126456078026
		0.30856696916351112 1.2394154313454706 0.45618654669024394
		-0.30857180894494007 1.2394154313454946 0.45618654669024394
		-0.30857180894494007 1.2394154313454946 -0.25730522105084574
		0.30856696916351467 1.2394154313454706 -0.25730522105084574
		0.30856696916347914 0.41311624784136131 -0.97073131996839723
		-0.30857180894497205 0.41311624784138606 -0.97073131996839379
		-0.30857180894500758 -0.41311751731235086 -0.97073131996839723
		0.30856696916345072 -0.41311751731237578 -0.97073131996839723
		0.30856696916341519 -1.2394167008164816 -0.25730522105084574
		-0.30857180894503955 -1.2394167008164567 -0.25730522105084574
		-0.30857180894503955 -1.2394167008164567 0.4561865466902475
		0.30856696916341164 -1.2394167008164816 0.45618654669024394
		0.30856696916344717 -0.41311751731237489 1.1696126456078026
		-0.30857180894500402 -0.41311751731235002 1.1696126456078026
		0.30856696916344717 -0.41311751731237489 1.1696126456078026
		0.30856696916347914 0.41311624784136214 1.1696126456078026
		-0.30857180894497205 0.4131162478413879 1.1696126456078026
		-0.30857180894494007 1.2394154313454946 0.45618654669024394
		0.30856696916351112 1.2394154313454706 0.45618654669024394
		0.30856696916351467 1.2394154313454706 -0.25730522105084574
		-0.30857180894494007 1.2394154313454946 -0.25730522105084574
		-0.30857180894497205 0.41311624784138606 -0.97073131996839379
		;
createNode parentConstraint -n "ctrl_r_arm01_finger05_03_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger05_03_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -30.871799999999997 0.67412600000009548 22.687199999999951 ;
	setAttr ".tg[0].tor" -type "double3" -132.74015044149294 72.363010011941881 48.631693031465005 ;
	setAttr ".lr" -type "double3" 2.9656275418405051e-014 2.2277153036905661e-014 -11.89865436902601 ;
	setAttr ".rst" -type "double3" -2.7999773827850909 7.6676334637149068e-007 -1.9296932521228879e-005 ;
	setAttr ".rsrr" -type "double3" 2.9656275418405051e-014 2.2277153036905661e-014 
		-11.89865436902601 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ctrl_r_arm01_finger05_02Shape" -p "ctrl_r_arm01_finger05_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.50636374797038641 0.46039664695244181 -0.93490226941777987
		-0.50636374797042194 -0.46039535774886065 -0.93490226941778332
		-1.1235025260788769 -0.46039535774883511 -0.93490226941778332
		-1.1235025260789191 -1.3812602675969867 -0.14096100113589927
		-0.50636374797046457 -1.381260267597012 -0.14096100113589927
		-0.50636374797046102 -1.381260267597012 0.65305334715963781
		-1.1235025260789122 -1.3812602675969867 0.65305334715963426
		-1.1235025260788769 -0.46039535774883489 1.4469946154415254
		-1.1235025260788412 0.46039664695246718 1.4469946154415221
		-0.50636374797038641 0.46039664695244231 1.4469946154415183
		-0.50636374797035089 1.3812615568005904 0.65305334715963781
		-1.1235025260788021 1.3812615568006152 0.65305334715963426
		-1.1235025260787983 1.3812615568006152 -0.14096100113589927
		-0.50636374797034733 1.3812615568005902 -0.14096100113589927
		-0.50636374797038641 0.46039664695244181 -0.93490226941777987
		-1.1235025260788412 0.46039664695246674 -0.93490226941778332
		-1.1235025260788769 -0.46039535774883511 -0.93490226941778332
		-0.50636374797042194 -0.46039535774886065 -0.93490226941778332
		-0.50636374797046457 -1.381260267597012 -0.14096100113589927
		-1.1235025260789191 -1.3812602675969867 -0.14096100113589927
		-1.1235025260789122 -1.3812602675969867 0.65305334715963426
		-0.50636374797046102 -1.381260267597012 0.65305334715963781
		-0.50636374797042549 -0.46039535774886042 1.4469946154415254
		-1.1235025260788769 -0.46039535774883489 1.4469946154415254
		-0.50636374797042549 -0.46039535774886042 1.4469946154415254
		-0.50636374797038641 0.46039664695244231 1.4469946154415183
		-1.1235025260788412 0.46039664695246718 1.4469946154415221
		-1.1235025260788021 1.3812615568006152 0.65305334715963426
		-0.50636374797035089 1.3812615568005904 0.65305334715963781
		-0.50636374797034733 1.3812615568005902 -0.14096100113589927
		-1.1235025260787983 1.3812615568006152 -0.14096100113589927
		-1.1235025260788412 0.46039664695246674 -0.93490226941778332
		;
createNode parentConstraint -n "ctrl_r_arm01_finger05_02_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger05_02_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -30.2962 0.73493499999997969 19.947699999999955 ;
	setAttr ".tg[0].tor" -type "double3" -174.09898457378125 78.069574883304583 6.0303455989643844 ;
	setAttr ".lr" -type "double3" 1.1719144412829884e-014 1.9211723083193858e-014 -1.2444132896224149 ;
	setAttr ".rst" -type "double3" -2.2000169907957954 -1.1102230246251563e-016 1.4484397709679795e-005 ;
	setAttr ".rsrr" -type "double3" 1.1719144412829884e-014 1.9211723083193858e-014 
		-1.2444132896224149 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ctrl_r_arm01_finger05_01Shape" -p "ctrl_r_arm01_finger05_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.30857252596037554 0.59736859866280345 -1.5415941287417816
		0.3085725259603791 -0.59736818360417754 -1.5415941287417816
		-0.30856625214807565 -0.59736818360417798 -1.541594128741778
		-0.30856625214808275 -1.7921995610241479 -0.51391238665559413
		0.3085725259603791 -1.7921995610241477 -0.51391238665559769
		0.30857252596037554 -1.7921995610241477 0.51386395058357692
		-0.3085662521480792 -1.7921995610241479 0.51386395058357692
		-0.30856625214808275 -0.59736818360417754 1.5415456926697608
		-0.30856625214808275 0.5973685986628039 1.5415456926697608
		0.30857252596037554 0.59736859866280378 1.5415456926697573
		0.30857252596037199 1.7921999760827754 0.51386395058357337
		-0.3085662521480792 1.7921999760827747 0.51386395058357692
		-0.3085662521480792 1.7921999760827747 -0.51391238665559769
		0.30857252596037554 1.7921999760827751 -0.51391238665559769
		0.30857252596037554 0.59736859866280345 -1.5415941287417816
		-0.3085662521480792 0.59736859866280356 -1.541594128741778
		-0.30856625214807565 -0.59736818360417798 -1.541594128741778
		0.3085725259603791 -0.59736818360417754 -1.5415941287417816
		0.3085725259603791 -1.7921995610241477 -0.51391238665559769
		-0.30856625214808275 -1.7921995610241479 -0.51391238665559413
		-0.3085662521480792 -1.7921995610241479 0.51386395058357692
		0.30857252596037554 -1.7921995610241477 0.51386395058357692
		0.3085725259603791 -0.59736818360417732 1.5415456926697573
		-0.30856625214808275 -0.59736818360417754 1.5415456926697608
		0.3085725259603791 -0.59736818360417732 1.5415456926697573
		0.30857252596037554 0.59736859866280378 1.5415456926697573
		-0.30856625214808275 0.5973685986628039 1.5415456926697608
		-0.3085662521480792 1.7921999760827747 0.51386395058357692
		0.30857252596037199 1.7921999760827754 0.51386395058357337
		0.30857252596037554 1.7921999760827751 -0.51391238665559769
		-0.3085662521480792 1.7921999760827747 -0.51391238665559769
		-0.3085662521480792 0.59736859866280356 -1.541594128741778
		;
createNode parentConstraint -n "ctrl_r_arm01_finger05_01_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger05_01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -29.843799999999995 0.7349349999999758 17.794699999999963 ;
	setAttr ".tg[0].tor" -type "double3" 180 78.133716502823034 -4.6501658342928085e-013 ;
	setAttr ".lr" -type "double3" -7.0167092985394159e-015 12.719327041091828 3.122734146254442e-011 ;
	setAttr ".rst" -type "double3" -5.4694887397351852 -0.73493499999998846 3.4805147759936226 ;
	setAttr ".rsrr" -type "double3" -7.0167092985394159e-015 12.719327041091828 3.122734146254442e-011 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_r_arm01_finger04_01_parent" -p "ctrl_r_arm01_base01_fingers_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger04_01" -p "ctrl_r_arm01_finger04_01_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" -3.5527136788005009e-015 0 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode transform -n "ctrl_r_arm01_finger04_02_parent" -p "ctrl_r_arm01_finger04_01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger04_02" -p "ctrl_r_arm01_finger04_02_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-015 ;
	setAttr ".r" -type "double3" 5.6057276260794469e-014 1.272221872585407e-014 -1.9878466759146361e-016 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode transform -n "ctrl_r_arm01_finger04_03_parent" -p "ctrl_r_arm01_finger04_02";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger04_03" -p "ctrl_r_arm01_finger04_03_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".r" -type "double3" -7.9513867036587919e-015 -1.1034765745125405e-031 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_r_arm01_finger04_03Shape" -p "ctrl_r_arm01_finger04_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.25855501569595063 0.50055950611486111 -1.1685582769110034
		0.25855501569585826 -0.50056298567448465 -1.1685582769110034
		-0.25857270690380574 -0.50056298567443669 -1.1685582769109999
		-0.25857270690389456 -1.5017647429025622 -0.30741855000685092
		0.25855501569575878 -1.501764742902612 -0.30741855000685092
		0.25855501569576234 -1.5017647429026102 0.55380044233607961
		-0.25857270690389456 -1.5017647429025622 0.55380044233608317
		-0.25857270690379863 -0.50056298567443669 1.4149401692402319
		-0.25857270690370626 0.50055950611490996 1.4149401692402357
		0.25855501569595063 0.500559506114862 1.4149401692402357
		0.258555015696043 1.5017612633429884 0.55380044233607961
		-0.25857270690361389 1.5017612633430373 0.55380044233607961
		-0.25857270690361389 1.5017612633430373 -0.30741855000685092
		0.258555015696043 1.5017612633429875 -0.30741855000685092
		0.25855501569595063 0.50055950611486111 -1.1685582769110034
		-0.25857270690371337 0.50055950611490907 -1.1685582769109999
		-0.25857270690380574 -0.50056298567443669 -1.1685582769109999
		0.25855501569585826 -0.50056298567448465 -1.1685582769110034
		0.25855501569575878 -1.501764742902612 -0.30741855000685092
		-0.25857270690389456 -1.5017647429025622 -0.30741855000685092
		-0.25857270690389456 -1.5017647429025622 0.55380044233608317
		0.25855501569576234 -1.5017647429026102 0.55380044233607961
		0.25855501569585826 -0.50056298567448465 1.4149401692402319
		-0.25857270690379863 -0.50056298567443669 1.4149401692402319
		0.25855501569585826 -0.50056298567448465 1.4149401692402319
		0.25855501569595063 0.500559506114862 1.4149401692402357
		-0.25857270690370626 0.50055950611490996 1.4149401692402357
		-0.25857270690361389 1.5017612633430373 0.55380044233607961
		0.258555015696043 1.5017612633429884 0.55380044233607961
		0.258555015696043 1.5017612633429875 -0.30741855000685092
		-0.25857270690361389 1.5017612633430373 -0.30741855000685092
		-0.25857270690371337 0.50055950611490907 -1.1685582769109999
		;
createNode parentConstraint -n "ctrl_r_arm01_finger04_03_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger04_03_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -28.529599999999991 0.56666900000027076 24.73589999999999 ;
	setAttr ".tg[0].tor" -type "double3" -109.3837926269741 74.908214168864362 71.237233126696836 ;
	setAttr ".lr" -type "double3" 1.3133473914993651e-014 -1.1472661020124209e-014 -11.417966135718864 ;
	setAttr ".rst" -type "double3" -3.1000316768183502 -1.9083771225503203e-006 4.6294549534309226e-005 ;
	setAttr ".rsrr" -type "double3" 1.3133473914993651e-014 -1.1472661020124209e-014 
		-11.417966135718864 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ctrl_r_arm01_finger04_02Shape" -p "ctrl_r_arm01_finger04_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.034619045128629011 0.52107060113047288 -1.1991719989864895
		0.034619045128533088 -0.52107432634656359 -1.1991719989864862
		-0.50369873055319303 -0.52107432634651207 -1.1991719989864895
		-0.50369873055329251 -1.5633017672778231 -0.302745831756841
		0.034619045128430059 -1.5633017672778742 -0.30274583175683745
		0.034619045128430059 -1.5633017672778742 0.59376284892708853
		-0.50369873055329251 -1.5633017672778229 0.59376284892708853
		-0.50369873055318948 -0.52107432634651119 1.4901890161567408
		-0.50369873055309355 0.52107060113052484 1.4901890161567408
		0.034619045128632564 0.52107060113047377 1.4901890161567408
		0.03461904512873204 1.5632980420617819 0.59376284892708497
		-0.50369873055299408 1.5632980420618332 0.59376284892709208
		-0.50369873055299408 1.5632980420618328 -0.30274583175683745
		0.03461904512873204 1.5632980420617819 -0.302745831756841
		0.034619045128629011 0.52107060113047288 -1.1991719989864895
		-0.50369873055309355 0.52107060113052417 -1.1991719989864895
		-0.50369873055319303 -0.52107432634651207 -1.1991719989864895
		0.034619045128533088 -0.52107432634656359 -1.1991719989864862
		0.034619045128430059 -1.5633017672778742 -0.30274583175683745
		-0.50369873055329251 -1.5633017672778231 -0.302745831756841
		-0.50369873055329251 -1.5633017672778229 0.59376284892708853
		0.034619045128430059 -1.5633017672778742 0.59376284892708853
		0.034619045128529535 -0.52107432634656314 1.4901890161567408
		-0.50369873055318948 -0.52107432634651119 1.4901890161567408
		0.034619045128529535 -0.52107432634656314 1.4901890161567408
		0.034619045128632564 0.52107060113047377 1.4901890161567408
		-0.50369873055309355 0.52107060113052484 1.4901890161567408
		-0.50369873055299408 1.5632980420618332 0.59376284892709208
		0.03461904512873204 1.5632980420617819 0.59376284892708497
		0.03461904512873204 1.5632980420617819 -0.302745831756841
		-0.50369873055299408 1.5632980420618328 -0.30274583175683745
		-0.50369873055309355 0.52107060113052417 -1.1991719989864895
		;
createNode parentConstraint -n "ctrl_r_arm01_finger04_02_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger04_02_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -28.261999999999983 0.72103699999997839 21.651299999999974 ;
	setAttr ".tg[0].tor" -type "double3" -150.14003022604928 84.2814432963782 29.983551916823902 ;
	setAttr ".lr" -type "double3" 5.0953677668311707e-014 1.3995604453585171e-014 -2.8542945489646647 ;
	setAttr ".rst" -type "double3" -2.4999488712879874 -5.5511151231257827e-016 -3.0755903310364374e-005 ;
	setAttr ".rsrr" -type "double3" 5.0953677668311707e-014 1.3995604453585171e-014 
		-2.8542945489646647 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ctrl_r_arm01_finger04_01Shape" -p "ctrl_r_arm01_finger04_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.35813473429924159 0.80775675200281172 -1.2870321911616749
		0.35813473429924159 -0.8077564200030346 -1.2870321911616749
		-0.35811394496285232 -0.80775642000303571 -1.2870321911616749
		-0.35811394496285232 -2.423397502790511 -0.4290293661917523
		0.35813473429924159 -2.4233975027905101 -0.4290293661917523
		0.35813473429924159 -2.4233975027905097 0.42905243547413718
		-0.35811394496285232 -2.423397502790511 0.42905243547413718
		-0.35811394496285232 -0.80775642000303516 1.2870552604440668
		-0.35811394496285587 0.80775675200281183 1.2870552604440668
		0.35813473429923803 0.80775675200281205 1.2870552604440668
		0.35813473429923448 2.4233978347902898 0.42905243547413718
		-0.35811394496285942 2.4233978347902885 0.42905243547413718
		-0.35811394496285587 2.4233978347902885 -0.4290293661917523
		0.35813473429923803 2.4233978347902898 -0.4290293661917523
		0.35813473429924159 0.80775675200281172 -1.2870321911616749
		-0.35811394496285232 0.8077567520028115 -1.2870321911616749
		-0.35811394496285232 -0.80775642000303571 -1.2870321911616749
		0.35813473429924159 -0.8077564200030346 -1.2870321911616749
		0.35813473429924159 -2.4233975027905101 -0.4290293661917523
		-0.35811394496285232 -2.423397502790511 -0.4290293661917523
		-0.35811394496285232 -2.423397502790511 0.42905243547413718
		0.35813473429924159 -2.4233975027905097 0.42905243547413718
		0.35813473429924159 -0.80775642000303427 1.2870552604440668
		-0.35811394496285232 -0.80775642000303516 1.2870552604440668
		0.35813473429924159 -0.80775642000303427 1.2870552604440668
		0.35813473429923803 0.80775675200281205 1.2870552604440668
		-0.35811394496285587 0.80775675200281183 1.2870552604440668
		-0.35811394496285942 2.4233978347902885 0.42905243547413718
		0.35813473429923448 2.4233978347902898 0.42905243547413718
		0.35813473429923803 2.4233978347902898 -0.4290293661917523
		-0.35811394496285587 2.4233978347902885 -0.4290293661917523
		-0.35811394496285232 0.8077567520028115 -1.2870321911616749
		;
createNode parentConstraint -n "ctrl_r_arm01_finger04_01_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger04_01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -28.045999999999985 0.72103699999997617 19.16069999999997 ;
	setAttr ".tg[0].tor" -type "double3" 180 85.042658322292041 -4.6501658342928024e-013 ;
	setAttr ".lr" -type "double3" -7.0167092985380582e-015 5.8103852216228029 3.1227341462544427e-011 ;
	setAttr ".rst" -type "double3" -6.8621027552684826 -0.72103700000000348 1.7032508553165897 ;
	setAttr ".rsrr" -type "double3" -7.0167092985380582e-015 5.8103852216228029 3.1227341462544427e-011 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_r_arm01_finger03_01_parent" -p "ctrl_r_arm01_base01_fingers_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger03_01" -p "ctrl_r_arm01_finger03_01_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -1.1102230246251563e-016 -3.5527136788005009e-015 ;
	setAttr ".r" -type "double3" -3.687455583821765e-013 1.2722218725854075e-014 2.9817700138720058e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode transform -n "ctrl_r_arm01_finger03_02_parent" -p "ctrl_r_arm01_finger03_01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger03_02" -p "ctrl_r_arm01_finger03_02_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-015 ;
	setAttr ".r" -type "double3" 7.1960049668112063e-014 2.4966157498346226e-031 -3.975693351829396e-016 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode transform -n "ctrl_r_arm01_finger03_03_parent" -p "ctrl_r_arm01_finger03_02";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger03_03" -p "ctrl_r_arm01_finger03_03_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-016 0 ;
	setAttr ".r" -type "double3" 8.1104144377319644e-014 6.3611093629270304e-015 1.5902773407317623e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_r_arm01_finger03_03Shape" -p "ctrl_r_arm01_finger03_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.34203091318417478 0.42101142857890039 -1.3025155537032802
		0.34203091318279988 -0.4210240502986462 -1.3025155315088028
		-0.34207359161476703 -0.42102405029752626 -1.3025155315087993
		-0.34207359161614548 -1.2631261757642864 -0.43422348905907526
		0.34203091318142143 -1.2631261757654055 -0.43422348905907526
		0.34203091318141787 -1.263126152876751 0.43414845498126553
		-0.34207359161614903 -1.2631261528756319 0.43414845498126553
		-0.34207359161477413 -0.42102398163577442 1.3024404530385283
		-0.34207359161339568 0.42101149724177223 1.302440430844058
		0.34203091318417478 0.42101149724065401 1.3024404308440545
		0.34203091318554968 1.2631136227074131 0.43414838839432335
		-0.34207359161201367 1.2631136227085324 0.4341483883943269
		-0.34207359161201367 1.263113599819877 -0.43422355564601745
		0.34203091318555323 1.2631135998187588 -0.43422355564601389
		0.34203091318417478 0.42101142857890039 -1.3025155537032802
		-0.34207359161338857 0.4210114285800195 -1.3025155537032802
		-0.34207359161476703 -0.42102405029752626 -1.3025155315087993
		0.34203091318279988 -0.4210240502986462 -1.3025155315088028
		0.34203091318142143 -1.2631261757654055 -0.43422348905907526
		-0.34207359161614548 -1.2631261757642864 -0.43422348905907526
		-0.34207359161614903 -1.2631261528756319 0.43414845498126553
		0.34203091318141787 -1.263126152876751 0.43414845498126553
		0.34203091318279633 -0.42102398163689342 1.3024404530385318
		-0.34207359161477413 -0.42102398163577442 1.3024404530385283
		0.34203091318279633 -0.42102398163689342 1.3024404530385318
		0.34203091318417478 0.42101149724065401 1.3024404308440545
		-0.34207359161339568 0.42101149724177223 1.302440430844058
		-0.34207359161201367 1.2631136227085324 0.4341483883943269
		0.34203091318554968 1.2631136227074131 0.43414838839432335
		0.34203091318555323 1.2631135998187588 -0.43422355564601389
		-0.34207359161201367 1.263113599819877 -0.43422355564601745
		-0.34207359161338857 0.4210114285800195 -1.3025155537032802
		;
createNode parentConstraint -n "ctrl_r_arm01_finger03_03_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger03_03_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -25.75229999999997 0.6205090000036424 25.588699999999971 ;
	setAttr ".tg[0].tor" -type "double3" -86.752783598642907 74.76188776958297 93.133280519145359 ;
	setAttr ".lr" -type "double3" 1.5102092679383209e-006 1.3200714367549132e-013 -13.101584957752555 ;
	setAttr ".rst" -type "double3" -3.4999668656073304 1.6753429679106091e-006 7.1616797157503242e-005 ;
	setAttr ".rsrr" -type "double3" 1.5102092679383209e-006 1.3200714367549132e-013 
		-13.101584957752555 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ctrl_r_arm01_finger03_02Shape" -p "ctrl_r_arm01_finger03_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.19785922392386368 0.516954371340967 -1.4246532087360286
		-0.19785922392498281 -0.51695357268570774 -1.4246532087360286
		-0.8819637287225498 -0.51695357268496656 -1.4246532087360286
		-0.8819637287236759 -1.5509433779898734 -0.47489083290194856
		-0.19785922392610189 -1.5509433779906143 -0.47489083290194856
		-0.19785922392610189 -1.5509433779906154 0.47495896583123098
		-0.88196372872367235 -1.5509433779898747 0.47495896583123098
		-0.8819637287225498 -0.51695357268496878 1.4247213416653146
		-0.88196372872143058 0.51695437134170641 1.4247213416653146
		-0.19785922392386723 0.51695437134096522 1.4247213416653146
		-0.19785922392274455 1.5509441766458691 0.47495896583123809
		-0.88196372872031503 1.5509441766466097 0.47495896583123809
		-0.88196372872031148 1.5509441766466103 -0.47489083290194856
		-0.19785922392274813 1.5509441766458696 -0.47489083290194145
		-0.19785922392386368 0.516954371340967 -1.4246532087360286
		-0.88196372872143058 0.51695437134170819 -1.4246532087360286
		-0.8819637287225498 -0.51695357268496656 -1.4246532087360286
		-0.19785922392498281 -0.51695357268570774 -1.4246532087360286
		-0.19785922392610189 -1.5509433779906143 -0.47489083290194856
		-0.8819637287236759 -1.5509433779898734 -0.47489083290194856
		-0.88196372872367235 -1.5509433779898747 0.47495896583123098
		-0.19785922392610189 -1.5509433779906154 0.47495896583123098
		-0.19785922392498631 -0.51695357268570996 1.4247213416653146
		-0.8819637287225498 -0.51695357268496878 1.4247213416653146
		-0.19785922392498631 -0.51695357268570996 1.4247213416653146
		-0.19785922392386723 0.51695437134096522 1.4247213416653146
		-0.88196372872143058 0.51695437134170641 1.4247213416653146
		-0.88196372872031503 1.5509441766466097 0.47495896583123809
		-0.19785922392274455 1.5509441766458691 0.47495896583123809
		-0.19785922392274813 1.5509441766458696 -0.47489083290194145
		-0.88196372872031148 1.5509441766466103 -0.47489083290194856
		-0.88196372872143058 0.51695437134170819 -1.4246532087360286
		;
createNode parentConstraint -n "ctrl_r_arm01_finger03_02_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger03_02_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -25.8043 0.74956800000133794 22.091499999999893 ;
	setAttr ".tg[0].tor" -type "double3" -68.011344562368521 87.721195135478951 111.97292228867614 ;
	setAttr ".lr" -type "double3" 6.5574433663029458e-013 2.9038293626019302e-014 -5.0711392021369965 ;
	setAttr ".rst" -type "double3" -2.5000079210195167 6.9602370061927488e-007 -2.9802258385558389e-005 ;
	setAttr ".rsrr" -type "double3" 6.5574433663029458e-013 2.9038293626019302e-014 
		-5.0711392021369965 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ctrl_r_arm01_finger03_01Shape" -p "ctrl_r_arm01_finger03_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.34205525179387308 0.94548763580422879 -1.5312553544443901
		0.34205525179285345 -0.94548738011989664 -1.5312553544443901
		-0.34204925300471345 -0.94548738011952849 -1.5312553544443901
		-0.34204925300572597 -2.8366121169475225 -0.51044692950526738
		0.34205525179183738 -2.8366121169478906 -0.51044692950526382
		0.34205525179183738 -2.8366121169478906 0.51045545791774671
		-0.34204925300572953 -2.8366121169475225 0.51045545791774671
		-0.34204925300471345 -0.9454873801195286 1.5312638828568694
		-0.34204925300369737 0.94548763580459627 1.5312638828568661
		0.34205525179386953 0.94548763580422868 1.5312638828568694
		0.34205525179488561 2.8366123726322305 0.51045545791774671
		-0.3420492530026813 2.8366123726325982 0.51045545791774671
		-0.3420492530026813 2.8366123726325982 -0.51044692950526738
		0.34205525179488561 2.8366123726322305 -0.51044692950526382
		0.34205525179387308 0.94548763580422879 -1.5312553544443901
		-0.34204925300369737 0.94548763580459649 -1.5312553544443901
		-0.34204925300471345 -0.94548738011952849 -1.5312553544443901
		0.34205525179285345 -0.94548738011989664 -1.5312553544443901
		0.34205525179183738 -2.8366121169478906 -0.51044692950526382
		-0.34204925300572597 -2.8366121169475225 -0.51044692950526738
		-0.34204925300572953 -2.8366121169475225 0.51045545791774671
		0.34205525179183738 -2.8366121169478906 0.51045545791774671
		0.34205525179285345 -0.94548738011989697 1.5312638828568661
		-0.34204925300471345 -0.9454873801195286 1.5312638828568694
		0.34205525179285345 -0.94548738011989697 1.5312638828568661
		0.34205525179386953 0.94548763580422868 1.5312638828568694
		-0.34204925300369737 0.94548763580459627 1.5312638828568661
		-0.3420492530026813 2.8366123726325982 0.51045545791774671
		0.34205525179488561 2.8366123726322305 0.51045545791774671
		0.34205525179488561 2.8366123726322305 -0.51044692950526382
		-0.3420492530026813 2.8366123726325982 -0.51044692950526738
		-0.34204925300369737 0.94548763580459649 -1.5312553544443901
		;
createNode parentConstraint -n "ctrl_r_arm01_finger03_01_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger03_01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -25.841499999999996 0.62056099999997649 19.59509999999996 ;
	setAttr ".tg[0].tor" -type "double3" 73.905019495652382 86.921613523312473 -106.07295565944808 ;
	setAttr ".lr" -type "double3" 1.2887316624175298e-013 -2.241701955539647e-014 2.9579429705853069 ;
	setAttr ".rst" -type "double3" -7.3292749165608608 -0.62056100000002168 -0.49453752888088326 ;
	setAttr ".rsrr" -type "double3" 1.2887316624175298e-013 -2.241701955539647e-014 
		2.9579429705853069 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_r_arm01_finger02_01_parent" -p "ctrl_r_arm01_base01_fingers_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger02_01" -p "ctrl_r_arm01_finger02_01_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" 0 -1.1102230246251563e-016 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode transform -n "ctrl_r_arm01_finger02_02_parent" -p "ctrl_r_arm01_finger02_01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger02_02" -p "ctrl_r_arm01_finger02_02_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".r" -type "double3" -6.1623246953355643e-015 -4.8104681920156035e-032 -8.9453100416161419e-016 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode transform -n "ctrl_r_arm01_finger02_03_parent" -p "ctrl_r_arm01_finger02_02";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger02_03" -p "ctrl_r_arm01_finger02_03_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" 7.1054273576010019e-015 -4.4408920985006262e-016 3.5527136788005009e-015 ;
	setAttr ".r" -type "double3" 1.8288189418415221e-014 -1.272221872585407e-014 7.9513867036587712e-016 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_r_arm01_finger02_03Shape" -p "ctrl_r_arm01_finger02_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.38175667907994537 0.40587534448633544 -1.5774357405573909
		0.38175667907989208 -0.40586048737143177 -1.5774357405573909
		-0.38167715851146866 -0.40586048737138736 -1.5774357405573871
		-0.3816771585115184 -1.2176605896829846 -0.52583786919043973
		0.38175667907984234 -1.217660589683029 -0.52583786919043618
		0.3817566790798459 -1.217660589683029 0.52585679874052005
		-0.3816771585115184 -1.2176605896829835 0.5258567987405236
		-0.38167715851146866 -0.40586048737138647 1.5774546701074783
		-0.38167715851141887 0.40587534448638074 1.5774546701074748
		0.38175667907994182 0.405875344486335 1.5774546701074748
		0.381756679079988 1.2176754467979292 0.52585679874052005
		-0.38167715851136919 1.2176754467979745 0.52585679874052005
		-0.38167715851136919 1.2176754467979749 -0.52583786919043973
		0.3817566790799915 1.2176754467979301 -0.52583786919043618
		0.38175667907994537 0.40587534448633544 -1.5774357405573909
		-0.38167715851142248 0.40587534448637985 -1.5774357405573871
		-0.38167715851146866 -0.40586048737138736 -1.5774357405573871
		0.38175667907989208 -0.40586048737143177 -1.5774357405573909
		0.38175667907984234 -1.217660589683029 -0.52583786919043618
		-0.3816771585115184 -1.2176605896829846 -0.52583786919043973
		-0.3816771585115184 -1.2176605896829835 0.5258567987405236
		0.3817566790798459 -1.217660589683029 0.52585679874052005
		0.38175667907989208 -0.40586048737143265 1.5774546701074783
		-0.38167715851146866 -0.40586048737138647 1.5774546701074783
		0.38175667907989208 -0.40586048737143265 1.5774546701074783
		0.38175667907994182 0.405875344486335 1.5774546701074748
		-0.38167715851141887 0.40587534448638074 1.5774546701074748
		-0.38167715851136919 1.2176754467979745 0.52585679874052005
		0.381756679079988 1.2176754467979292 0.52585679874052005
		0.3817566790799915 1.2176754467979301 -0.52583786919043618
		-0.38167715851136919 1.2176754467979749 -0.52583786919043973
		-0.38167715851142248 0.40587534448637985 -1.5774357405573871
		;
createNode parentConstraint -n "ctrl_r_arm01_finger02_03_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger02_03_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -22.097399999999997 0.47231300000005721 24.738899999999969 ;
	setAttr ".tg[0].tor" -type "double3" -36.099751150332743 71.630537310748736 142.46282795275181 ;
	setAttr ".lr" -type "double3" 4.3327052502306405e-013 9.8333051673925306e-014 -9.1107175283618691 ;
	setAttr ".rst" -type "double3" -3.1000342759329271 -3.4723928599156295e-007 1.1042278202921807e-005 ;
	setAttr ".rsrr" -type "double3" 4.3327052502306405e-013 9.8333051673925306e-014 
		-9.1107175283618691 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ctrl_r_arm01_finger02_02Shape" -p "ctrl_r_arm01_finger02_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.17812275008317258 0.49193605288976072 -1.591144462369126
		-0.17812275008320275 -0.49193466919466466 -1.5911444623691295
		-0.94155658767456529 -0.49193466919464202 -1.5911444623691295
		-0.94155658767459371 -1.4758832907820021 -0.53040036223690379
		-0.17812275008323297 -1.4758832907820243 -0.53040036223690024
		-0.17812275008323297 -1.4758832907820243 0.53044137634341837
		-0.94155658767459371 -1.4758832907820021 0.53044137634342192
		-0.94155658767456885 -0.4919346691946429 1.5911854764756477
		-0.94155658767453676 0.49193605288978248 1.5911854764756477
		-0.17812275008317613 0.49193605288976006 1.5911854764756439
		-0.17812275008314593 1.4758846744771219 0.53044137634342192
		-0.94155658767450845 1.4758846744771443 0.53044137634342192
		-0.94155658767450479 1.4758846744771446 -0.53040036223690734
		-0.17812275008314593 1.4758846744771219 -0.53040036223690024
		-0.17812275008317258 0.49193605288976072 -1.591144462369126
		-0.94155658767453332 0.49193605288978309 -1.5911444623691295
		-0.94155658767456529 -0.49193466919464202 -1.5911444623691295
		-0.17812275008320275 -0.49193466919466466 -1.5911444623691295
		-0.17812275008323297 -1.4758832907820243 -0.53040036223690024
		-0.94155658767459371 -1.4758832907820021 -0.53040036223690379
		-0.94155658767459371 -1.4758832907820021 0.53044137634342192
		-0.17812275008323297 -1.4758832907820243 0.53044137634341837
		-0.178122750083201 -0.49193466919466511 1.5911854764756439
		-0.94155658767456885 -0.4919346691946429 1.5911854764756477
		-0.178122750083201 -0.49193466919466511 1.5911854764756439
		-0.17812275008317613 0.49193605288976006 1.5911854764756439
		-0.94155658767453676 0.49193605288978248 1.5911854764756477
		-0.94155658767450845 1.4758846744771443 0.53044137634342192
		-0.17812275008314593 1.4758846744771219 0.53044137634342192
		-0.17812275008314593 1.4758846744771219 -0.53040036223690024
		-0.94155658767450479 1.4758846744771446 -0.53040036223690734
		-0.94155658767453332 0.49193605288978309 -1.5911444623691295
		;
createNode parentConstraint -n "ctrl_r_arm01_finger02_02_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger02_02_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -22.886299999999995 0.57830399999997162 21.74279999999996 ;
	setAttr ".tg[0].tor" -type "double3" -7.3982923763155757 75.121449777749433 172.34804559214538 ;
	setAttr ".lr" -type "double3" 4.420324766646506e-013 7.5588386526460058e-015 -1.9593462874958913 ;
	setAttr ".rst" -type "double3" -2.5000098639383257 -5.5511151231257827e-016 -1.4529042225319699e-005 ;
	setAttr ".rsrr" -type "double3" 4.420324766646506e-013 7.5588386526460058e-015 -1.9593462874958913 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ctrl_r_arm01_finger02_01Shape" -p "ctrl_r_arm01_finger02_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.38171323391299333 1.0532232366386218 -1.5170273848951761
		0.38171323391299333 -1.0532222749097755 -1.5170273848951761
		-0.38172060367837091 -1.0532222749097762 -1.5170273848951723
		-0.38172060367836735 -3.1598345675754684 -0.505702839464373
		0.38171323391298984 -3.1598345675754675 -0.50570283946437655
		0.38171323391298984 -3.159834567575468 0.5057147954864476
		-0.38172060367836913 -3.159834567575468 0.5057147954864476
		-0.38172060367837091 -1.0532222749097762 1.517039340917254
		-0.38172060367837263 1.0532232366386214 1.517039340917254
		0.38171323391298984 1.0532232366386216 1.5170393409172576
		0.38171323391298623 3.1598355293043245 0.5057147954864476
		-0.38172060367837263 3.1598355293043245 0.5057147954864476
		-0.38172060367837091 3.1598355293043241 -0.505702839464373
		0.38171323391298623 3.159835529304325 -0.50570283946437655
		0.38171323391299333 1.0532232366386218 -1.5170273848951761
		-0.38172060367837091 1.0532232366386212 -1.5170273848951723
		-0.38172060367837091 -1.0532222749097762 -1.5170273848951723
		0.38171323391299333 -1.0532222749097755 -1.5170273848951761
		0.38171323391298984 -3.1598345675754675 -0.50570283946437655
		-0.38172060367836735 -3.1598345675754684 -0.505702839464373
		-0.38172060367836913 -3.159834567575468 0.5057147954864476
		0.38171323391298984 -3.159834567575468 0.5057147954864476
		0.38171323391298984 -1.0532222749097755 1.5170393409172576
		-0.38172060367837091 -1.0532222749097762 1.517039340917254
		0.38171323391298984 -1.0532222749097755 1.5170393409172576
		0.38171323391298984 1.0532232366386216 1.5170393409172576
		-0.38172060367837263 1.0532232366386214 1.517039340917254
		-0.38172060367837263 3.1598355293043245 0.5057147954864476
		0.38171323391298623 3.1598355293043245 0.5057147954864476
		0.38171323391298623 3.159835529304325 -0.50570283946437655
		-0.38172060367837091 3.1598355293043241 -0.505702839464373
		-0.38172060367837091 1.0532232366386212 -1.5170273848951723
		;
createNode parentConstraint -n "ctrl_r_arm01_finger02_01_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger02_01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -23.5229 0.57830399999997617 19.32519999999996 ;
	setAttr ".tg[0].tor" -type "double3" 1.775038344587738e-028 75.24813799331946 179.99999999999957 ;
	setAttr ".lr" -type "double3" 4.7898916056441391e-013 -13.898818462765696 3.1105361316755878e-011 ;
	setAttr ".rst" -type "double3" -7.0939238415354833 -0.57830400000004012 -2.8168987930868603 ;
	setAttr ".rsrr" -type "double3" 4.7898916056441391e-013 -13.898818462765696 3.1105361316755878e-011 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_r_arm01_finger01_01_parent" -p "ctrl_r_arm01_base01_fingers_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger01_01" -p "ctrl_r_arm01_finger01_01_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" -8.8817841970012523e-016 0 0 ;
	setAttr ".r" -type "double3" 1.9083328088781101e-014 -3.1805546814635152e-015 -9.5416640443905503e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode transform -n "ctrl_r_arm01_finger01_02_parent" -p "ctrl_r_arm01_finger01_01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger01_02" -p "ctrl_r_arm01_finger01_02_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" -2.6645352591003757e-015 7.1054273576010019e-015 0 ;
	setAttr ".r" -type "double3" 1.272221872585407e-014 6.361109362927032e-015 1.5902773407317584e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode transform -n "ctrl_r_arm01_finger01_03_parent" -p "ctrl_r_arm01_finger01_02";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_finger01_03" -p "ctrl_r_arm01_finger01_03_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".t" -type "double3" -1.7763568394002505e-015 7.1054273576010019e-015 0 ;
	setAttr ".r" -type "double3" -6.3611093629270304e-015 1.272221872585407e-014 2.2263882770244617e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_r_arm01_finger01_03Shape" -p "ctrl_r_arm01_finger01_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.48988404006110464 0.50974453288954891 -1.8384327876476949
		-0.489884040061213 -0.50976920730047226 -1.8384327074656812
		-1.2258669802099398 -0.50976920730039055 -1.8384327049029388
		-1.2258669759424858 -1.5293635726960524 -0.61284729948837402
		-0.48988403579375728 -1.5293635726961341 -0.61284730205111693
		-0.48988403152578991 -1.5293634762982755 0.61285083478455249
		-1.2258669716745167 -1.5293634762981902 0.61285083734729451
		-1.2258669674068337 -0.50976891812455349 1.8384360823851376
		-1.2258669674067164 0.50974482206547123 1.8384360022031243
		-0.48988402725799146 0.50974482206538596 1.8384359996403807
		-0.48988403152545074 1.5293391874610514 0.612850594225816
		-1.2258669716741828 1.5293391874611366 0.61285059678855891
		-1.225866975942143 1.5293390910632745 -0.61284754004710962
		-0.48988403579341622 1.5293390910631963 -0.61284754260985252
		-0.48988404006110464 0.50974453288954891 -1.8384327876476949
		-1.2258669802098296 0.50974453288963062 -1.8384327850849509
		-1.2258669802099398 -0.50976920730039055 -1.8384327049029388
		-0.489884040061213 -0.50976920730047226 -1.8384327074656812
		-0.48988403579375728 -1.5293635726961341 -0.61284730205111693
		-1.2258669759424858 -1.5293635726960524 -0.61284729948837402
		-1.2258669716745167 -1.5293634762981902 0.61285083734729451
		-0.48988403152578991 -1.5293634762982755 0.61285083478455249
		-0.48988402725810337 -0.50976891812463521 1.8384360798223935
		-1.2258669674068337 -0.50976891812455349 1.8384360823851376
		-0.48988402725810337 -0.50976891812463521 1.8384360798223935
		-0.48988402725799146 0.50974482206538596 1.8384359996403807
		-1.2258669674067164 0.50974482206547123 1.8384360022031243
		-1.2258669716741828 1.5293391874611366 0.61285059678855891
		-0.48988403152545074 1.5293391874610514 0.612850594225816
		-0.48988403579341622 1.5293390910631963 -0.61284754260985252
		-1.225866975942143 1.5293390910632745 -0.61284754004710962
		-1.2258669802098296 0.50974453288963062 -1.8384327850849509
		;
createNode parentConstraint -n "ctrl_r_arm01_finger01_03_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger01_03_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -19.006399999999974 -0.10788099999741976 20.476700000000175 ;
	setAttr ".tg[0].tor" -type "double3" -81.580209701603337 65.438302501118542 176.19880403039741 ;
	setAttr ".lr" -type "double3" 2.4243720524782012e-006 9.2449714217677282e-015 5.4734891577591922 ;
	setAttr ".rst" -type "double3" -2.5999388666450285 5.0286104080754512e-005 -7.6327637810180704e-006 ;
	setAttr ".rsrr" -type "double3" 2.4243720524782012e-006 9.2449714217677282e-015 
		5.4734891577591922 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ctrl_r_arm01_finger01_02Shape" -p "ctrl_r_arm01_finger01_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.63619343259269279 0.73813208558149757 -1.8384404089685109
		-0.6361934325928118 -0.34345952392840573 -1.8384403694898701
		-1.3721763727415404 -0.34345952392832402 -1.838440369489529
		-1.3721763727410927 -1.4251367254107521 -0.61285500478155619
		-0.63619343259236594 -1.4251367254108338 -0.61285500478189903
		-0.63619343259179573 -1.4251366806722316 0.61284313205377394
		-1.3721763727405225 -1.4251366806721499 0.612843132054115
		-1.3721763727398315 -0.34345938972075274 1.838428417798557
		-1.3721763727397125 0.73813221978915067 1.8384283783199171
		-0.63619343259098216 0.73813221978907251 1.8384283783195745
		-0.63619343259143157 1.8198094212715008 0.61284301361160143
		-1.3721763727401599 1.8198094212715787 0.61284301361194338
		-1.3721763727407303 1.8198093765329799 -0.61285512322372959
		-0.63619343259200178 1.8198093765328949 -0.61285512322407065
		-0.63619343259269279 0.73813208558149757 -1.8384404089685109
		-1.3721763727414178 0.73813208558157939 -1.8384404089681696
		-1.3721763727415404 -0.34345952392832402 -1.838440369489529
		-0.6361934325928118 -0.34345952392840573 -1.8384403694898701
		-0.63619343259236594 -1.4251367254108338 -0.61285500478189903
		-1.3721763727410927 -1.4251367254107521 -0.61285500478155619
		-1.3721763727405225 -1.4251366806721499 0.612843132054115
		-0.63619343259179573 -1.4251366806722316 0.61284313205377394
		-0.63619343259110472 -0.34345938972083445 1.8384284177982144
		-1.3721763727398315 -0.34345938972075274 1.838428417798557
		-0.63619343259110472 -0.34345938972083445 1.8384284177982144
		-0.63619343259098216 0.73813221978907251 1.8384283783195745
		-1.3721763727397125 0.73813221978915067 1.8384283783199171
		-1.3721763727401599 1.8198094212715787 0.61284301361194338
		-0.63619343259143157 1.8198094212715008 0.61284301361160143
		-0.63619343259200178 1.8198093765328949 -0.61285512322407065
		-1.3721763727407303 1.8198093765329799 -0.61285512322372959
		-1.3721763727414178 0.73813208558157939 -1.8384404089681696
		;
createNode parentConstraint -n "ctrl_r_arm01_finger01_02_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger01_02_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -20.300099999999979 0.014466100001353012 18.224800000000119 ;
	setAttr ".tg[0].tor" -type "double3" -83.005144691864658 60.013767543062734 174.59745827969297 ;
	setAttr ".lr" -type "double3" 2.0913097962182361e-006 1.7313281768648118e-014 11.889299134027716 ;
	setAttr ".rst" -type "double3" -3.4000219317483862 -7.3121922010699323e-005 1.164230327965754e-005 ;
	setAttr ".rsrr" -type "double3" 2.0913097962182361e-006 1.7313281768648118e-014 
		11.889299134027716 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "ctrl_r_arm01_finger01_01Shape" -p "ctrl_r_arm01_finger01_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.20979756184462597 0.83325523950605163 -2.24061294999288
		-0.20979756184478049 -0.59155538803508989 -2.2406129499923773
		-0.94578050199350716 -0.59155538803501528 -2.2406129499920824
		-0.94578050199317154 -2.0164788271851961 -1.0150276247653718
		-0.20979756184444476 -2.0164788271852707 -1.0150276247656658
		-0.20979756184395623 -2.0164788271848373 0.2106705120700072
		-0.94578050199268482 -2.0164788271847627 0.21067051207030121
		-0.94578050199203823 -0.59155538803371854 1.4362558372960068
		-0.94578050199188368 0.83325523950742653 1.4362558372955023
		-0.20979756184315512 0.83325523950735203 1.4362558372952083
		-0.20979756184349083 2.2581786786575258 0.2106705120684973
		-0.94578050199221764 2.2581786786576039 0.21067051206879128
		-0.9457805019927098 2.258178678657174 -1.0150276247668826
		-0.20979756184397935 2.2581786786570959 -1.0150276247671757
		-0.20979756184462597 0.83325523950605163 -2.24061294999288
		-0.94578050199335284 0.8332552395061299 -2.2406129499925855
		-0.94578050199350716 -0.59155538803501528 -2.2406129499920824
		-0.20979756184478049 -0.59155538803508989 -2.2406129499923773
		-0.20979756184444476 -2.0164788271852707 -1.0150276247656658
		-0.94578050199317154 -2.0164788271851961 -1.0150276247653718
		-0.94578050199268482 -2.0164788271847627 0.21067051207030121
		-0.20979756184395623 -2.0164788271848373 0.2106705120700072
		-0.20979756184330789 -0.5915553880337967 1.4362558372957119
		-0.94578050199203823 -0.59155538803371854 1.4362558372960068
		-0.20979756184330789 -0.5915553880337967 1.4362558372957119
		-0.20979756184315512 0.83325523950735203 1.4362558372952083
		-0.94578050199188368 0.83325523950742653 1.4362558372955023
		-0.94578050199221764 2.2581786786576039 0.21067051206879128
		-0.20979756184349083 2.2581786786575258 0.2106705120684973
		-0.20979756184397935 2.2581786786570959 -1.0150276247671757
		-0.9457805019927098 2.258178678657174 -1.0150276247668826
		-0.94578050199335284 0.8332552395061299 -2.2406129499925855
		;
createNode parentConstraint -n "ctrl_r_arm01_finger01_01_parent_parentConstraint1" 
		-p "ctrl_r_arm01_finger01_01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -22.546999999999993 0.31264899999997525 15.69049999999997 ;
	setAttr ".tg[0].tor" -type "double3" -84.761703765123272 48.190292426171233 172.44065450575869 ;
	setAttr ".lr" -type "double3" -74.797522511378801 -40.518596018822393 -6.6247594525765914 ;
	setAttr ".rst" -type "double3" -3.4741557478319827 -0.31264900000004708 -3.846803569173499 ;
	setAttr ".rsrr" -type "double3" -74.797522511378801 -40.518596018822393 -6.6247594525765914 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_r_arm01_base01_twist01_family" -p "grp_r_arm01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_base01_twist01_parent" -p "ctrl_r_arm01_base01_twist01_family";
	setAttr ".r" -type "double3" 0 0 -1.4143285251187101e-030 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_r_arm01_base01_twist01" -p "ctrl_r_arm01_base01_twist01_parent";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.272221872585407e-014 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ctrl_r_arm01_base01_twist01Shape" -p "ctrl_r_arm01_base01_twist01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-15.672242467557853 -2.3135327746777117e-013 15.672253283644444
		-9.9697333535431198e-006 -1.0455383328998396e-013 22.163904536907744
		15.672222528091137 2.3040608880652243e-014 15.672253283644494
		22.163873781354425 7.6686955304008463e-014 2.0785820023405677e-005
		15.672222528091178 2.4959903817047966e-014 -15.67221171200447
		-9.9697333002524147e-006 -1.0183954036073914e-013 -22.163862965267775
		-15.67224246755779 -2.2943398253137536e-013 -15.672211712004522
		-22.163893720821093 -2.8308032895473165e-013 2.0785819948798689e-005
		-15.672242467557853 -2.3135327746777117e-013 15.672253283644444
		-9.9697333535431198e-006 -1.0455383328998396e-013 22.163904536907744
		15.672222528091137 2.3040608880652243e-014 15.672253283644494
		;
createNode parentConstraint -n "ctrl_r_arm01_base01_twist01_parent_parentConstraint1" 
		-p "ctrl_r_arm01_base01_twist01_parent";
	addAttr -ci true -k true -sn "w0" -ln "bone_r_arm01_base01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 7.1054273576010019e-015 -4.6041600624320071e-015 
		1.0658141036401504e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_r_arm01_base01_twist01_family_parentConstraint1" 
		-p "ctrl_r_arm01_base01_twist01_family";
	addAttr -ci true -k true -sn "w0" -ln "bone_r_arm01_mid01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -18.799993733457285 2.8958999687839965e-015 
		-8.1669634326431151e-006 ;
	setAttr ".tg[0].tor" -type "double3" 4.7779031799121851e-013 -1.2225257056875398e-014 
		9.2825902954135558e-017 ;
	setAttr ".lr" -type "double3" -1.4230882193273292e-028 89.146956456085164 180 ;
	setAttr ".rst" -type "double3" -26.445099999999982 -4.4834406530289061e-014 12.27399999999998 ;
	setAttr ".rsrr" -type "double3" -1.4230882193273292e-028 89.146956456085164 180 ;
	setAttr -k on ".w0";
createNode transform -n "grp_l_arm01" -p "ctrl_trendmill";
createNode transform -n "ctrl_l_arm01_base01_ik_family" -p "grp_l_arm01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_base01_ik_parent" -p "ctrl_l_arm01_base01_ik_family";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -6.3108872417680986e-030 
		0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_base01_ik" -p "ctrl_l_arm01_base01_ik_parent";
	addAttr -ci true -k true -sn "ikRotate" -ln "ikRotate" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "ikBlend" -ln "ikBlend" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "poleVector" -ln "poleVector" -at "float";
	addAttr -ci true -sn "ik_switch" -ln "ik_switch" -dt "string";
	addAttr -ci true -k true -sn "stretch" -ln "stretch" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -6.3108872417680986e-030 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".ikRotate";
	setAttr -k on ".ikBlend";
	setAttr -k on ".follow_world";
	setAttr -k on ".poleVector";
	setAttr -k on ".stretch";
createNode nurbsCurve -n "ctrl_l_arm01_base01_ikShape" -p "ctrl_l_arm01_base01_ik";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		7.4999999999999742 7.5 7.5
		7.4999999999999742 7.5 -7.5
		-7.5000000000000258 7.5 -7.5
		-7.5000000000000258 -7.5 -7.5
		7.4999999999999742 -7.5 -7.5
		7.4999999999999742 7.5 -7.5
		-7.5000000000000258 7.5 -7.5
		-7.5000000000000258 7.5 7.5
		7.4999999999999742 7.5 7.5
		7.4999999999999742 -7.5 7.5
		7.4999999999999742 -7.5 -7.5
		-7.5000000000000258 -7.5 -7.5
		-7.5000000000000258 -7.5 7.5
		7.4999999999999742 -7.5 7.5
		-7.5000000000000258 -7.5 7.5
		-7.5000000000000258 7.5 7.5
		;
createNode ikHandle -n "bone_l_arm01_base01_ikHandle" -p "ctrl_l_arm01_base01_ik";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.8817841970012523e-015 1.2621774483536189e-029 -3.5527136788005009e-015 ;
	setAttr ".r" -type "double3" 0 90.853043543914893 0 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "bone_l_arm01_base01_ikHandle_poleVectorConstraint1" 
		-p "bone_l_arm01_base01_ikHandle";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_base01_pvW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.0658141036401504e-014 0 80.000000000000028 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_l_arm01_base01_ik_distance_marker" -p "ctrl_l_arm01_base01_ik";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.7763568394002505e-015 0 0 ;
	setAttr ".r" -type "double3" 0 90.853043543914893 0 ;
createNode locator -n "ctrl_l_arm01_base01_ik_distance_markerShape" -p "ctrl_l_arm01_base01_ik_distance_marker";
	setAttr -k off ".v";
createNode parentConstraint -n "ctrl_l_arm01_base01_ik_family_parentConstraint1" 
		-p "ctrl_l_arm01_base01_ik_family";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_upper01_ikW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 53.797916387436864 -1.481480720755773e-014 
		0.2798919272372089 ;
	setAttr ".tg[0].tor" -type "double3" 0 -0.85304354391491743 0 ;
	setAttr ".lr" -type "double3" 0 -90.853043543914893 0 ;
	setAttr ".rst" -type "double3" 26.445120635088202 -4.3236516637961738e-014 12.274010278084894 ;
	setAttr ".rsrr" -type "double3" 0 -90.853043543914893 0 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_l_arm01_base01_pv_family" -p "grp_l_arm01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_base01_pv_parent" -p "ctrl_l_arm01_base01_pv_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_base01_pv" -p "ctrl_l_arm01_base01_pv_parent";
	addAttr -ci true -sn "ik_switch" -ln "ik_switch" -dt "string";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" -7.1054273576010019e-015 0 3.5527136788005009e-015 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ctrl_l_arm01_base01_pvShape" -p "ctrl_l_arm01_base01_pv";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		0 2 0
		0 0 2
		0 -2 0
		0 0 -2
		0 2 0
		0 -2 0
		0 0 0
		0 0 2
		0 0 -2
		2 0 0
		0 0 2
		-2 0 0
		0 0 -2
		0 0 2
		0 0 0
		-2 0 0
		2 0 0
		;
createNode pointConstraint -n "ctrl_l_arm01_base01_pv_family_pointConstraint1" -p
		 "ctrl_l_arm01_base01_pv_family";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_l_arm01_base01_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0.27989192723721956 1.4814807207557743e-014 26.202083612563175 ;
	setAttr ".rst" -type "double3" 26.725012562325421 -2.8421709430404007e-014 38.476093890648066 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_l_arm01_base01_ik_distance_curve" -p "grp_l_arm01";
	setAttr ".v" no;
createNode distanceDimShape -n "ctrl_l_arm01_base01_ik_distance_curveShape" -p "ctrl_l_arm01_base01_ik_distance_curve";
	setAttr -k off ".v";
createNode transform -n "ctrl_l_arm01_base01_fingers_family" -p "grp_l_arm01";
createNode parentConstraint -n "ctrl_l_arm01_base01_fingers_family_parentConstraint1" 
		-p "ctrl_l_arm01_base01_fingers_family";
	addAttr -ci true -k true -sn "w0" -ln "bone_l_arm01_base01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -90.853043543914893 0 ;
	setAttr ".rst" -type "double3" 26.445120635088202 -4.3236516637961738e-014 12.274010278084912 ;
	setAttr ".rsrr" -type "double3" 0 -90.853043543914893 0 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_l_arm01_finger05_01_parent" -p "ctrl_l_arm01_base01_fingers_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger05_01" -p "ctrl_l_arm01_finger05_01_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger05_01Shape" -p "ctrl_l_arm01_finger05_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.30856938905422593 -0.59736839113348994 1.5415699107057723
		-0.3085693890542256 0.59736839113349127 1.5415699107057723
		0.30856938905422948 0.59736839113349127 1.5415699107057723
		0.30856938905422993 1.7921997685534614 0.51388816861958997
		-0.30856938905422526 1.7921997685534614 0.51388816861958997
		-0.30856938905422526 1.7921997685534614 -0.51388816861958198
		0.30856938905422993 1.7921997685534614 -0.51388816861958198
		0.30856938905422948 0.59736839113349127 -1.5415699107057643
		0.30856938905422904 -0.59736839113349038 -1.5415699107057643
		-0.30856938905422593 -0.59736839113348994 -1.5415699107057643
		-0.30856938905422621 -1.7921997685534614 -0.51388816861958198
		0.30856938905422859 -1.7921997685534614 -0.51388816861958198
		0.30856938905422859 -1.7921997685534614 0.51388816861958997
		-0.30856938905422621 -1.7921997685534614 0.51388816861958997
		-0.30856938905422593 -0.59736839113348994 1.5415699107057723
		0.30856938905422904 -0.59736839113349038 1.5415699107057723
		0.30856938905422948 0.59736839113349127 1.5415699107057723
		-0.3085693890542256 0.59736839113349127 1.5415699107057723
		-0.30856938905422526 1.7921997685534614 0.51388816861958997
		0.30856938905422993 1.7921997685534614 0.51388816861958997
		0.30856938905422993 1.7921997685534614 -0.51388816861958198
		-0.30856938905422526 1.7921997685534614 -0.51388816861958198
		-0.3085693890542256 0.59736839113349127 -1.5415699107057643
		0.30856938905422948 0.59736839113349127 -1.5415699107057643
		-0.3085693890542256 0.59736839113349127 -1.5415699107057643
		-0.30856938905422593 -0.59736839113348994 -1.5415699107057643
		0.30856938905422904 -0.59736839113349038 -1.5415699107057643
		0.30856938905422859 -1.7921997685534614 -0.51388816861958198
		-0.30856938905422621 -1.7921997685534614 -0.51388816861958198
		-0.30856938905422621 -1.7921997685534614 0.51388816861958997
		0.30856938905422859 -1.7921997685534614 0.51388816861958997
		0.30856938905422904 -0.59736839113349038 1.5415699107057723
		;
createNode transform -n "ctrl_l_arm01_finger05_02_parent" -p "ctrl_l_arm01_finger05_01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger05_02" -p "ctrl_l_arm01_finger05_02_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" 3.5527136788005009e-015 0 7.1054273576010019e-015 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-015 6.3261667455769703e-015 -1.3914926731402888e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger05_02Shape" -p "ctrl_l_arm01_finger05_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.50638386641822186 -0.46039600235065231 0.93486356698403461
		0.50638386641822208 0.46039600235065015 0.93486356698403461
		1.1235226445266755 0.4603960023506497 0.93486356698403461
		1.1235226445266759 1.3812609121988011 0.14092229870215228
		0.50638386641822297 1.3812609121988011 0.14092229870215228
		0.50638386641822297 1.3812609121988011 -0.65309204959338185
		1.1235226445266759 1.3812609121988011 -0.65309204959338185
		1.1235226445266755 0.4603960023506497 -1.4470333178752699
		1.1235226445266755 -0.46039600235065231 -1.4470333178752699
		0.50638386641822186 -0.46039600235065231 -1.4470333178752699
		0.50638386641822186 -1.3812609121988004 -0.65309204959338185
		1.1235226445266753 -1.3812609121988004 -0.65309204959338185
		1.1235226445266753 -1.3812609121988004 0.14092229870215228
		0.50638386641822186 -1.3812609121988004 0.14092229870215228
		0.50638386641822186 -0.46039600235065231 0.93486356698403461
		1.1235226445266755 -0.46039600235065231 0.93486356698403461
		1.1235226445266755 0.4603960023506497 0.93486356698403461
		0.50638386641822208 0.46039600235065015 0.93486356698403461
		0.50638386641822297 1.3812609121988011 0.14092229870215228
		1.1235226445266759 1.3812609121988011 0.14092229870215228
		1.1235226445266759 1.3812609121988011 -0.65309204959338185
		0.50638386641822297 1.3812609121988011 -0.65309204959338185
		0.50638386641822208 0.46039600235065015 -1.4470333178752699
		1.1235226445266755 0.4603960023506497 -1.4470333178752699
		0.50638386641822208 0.46039600235065015 -1.4470333178752699
		0.50638386641822186 -0.46039600235065231 -1.4470333178752699
		1.1235226445266755 -0.46039600235065231 -1.4470333178752699
		1.1235226445266753 -1.3812609121988004 -0.65309204959338185
		0.50638386641822186 -1.3812609121988004 -0.65309204959338185
		0.50638386641822186 -1.3812609121988004 0.14092229870215228
		1.1235226445266753 -1.3812609121988004 0.14092229870215228
		1.1235226445266755 -0.46039600235065231 0.93486356698403461
		;
createNode transform -n "ctrl_l_arm01_finger05_03_parent" -p "ctrl_l_arm01_finger05_02";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger05_03" -p "ctrl_l_arm01_finger05_03_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" 0 8.8817841970012523e-016 0 ;
	setAttr ".r" -type "double3" -1.9878466759146981e-014 1.0634979716143634e-014 3.1805546814635152e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger05_03Shape" -p "ctrl_l_arm01_finger05_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.30856938905421827 -0.41311688257686663 0.97071191446714
		-0.30856938905421827 0.41311688257687096 0.97071191446714
		0.30856938905423559 0.41311688257687096 0.97071191446714
		0.30856938905423603 1.2394160660809772 0.25728581554959051
		-0.30856938905421827 1.2394160660809772 0.25728581554959051
		-0.30856938905421827 1.2394160660809772 -0.45620595219150134
		0.30856938905423603 1.2394160660809772 -0.45620595219150134
		0.30856938905423559 0.41311688257687096 -1.169632051109057
		0.30856938905423514 -0.41311688257686691 -1.169632051109057
		-0.30856938905421827 -0.41311688257686663 -1.169632051109057
		-0.30856938905421871 -1.2394160660809752 -0.45620595219150134
		0.30856938905423492 -1.2394160660809752 -0.45620595219150134
		0.30856938905423492 -1.2394160660809752 0.25728581554959051
		-0.30856938905421871 -1.2394160660809752 0.25728581554959051
		-0.30856938905421827 -0.41311688257686663 0.97071191446714
		0.30856938905423514 -0.41311688257686691 0.97071191446714
		0.30856938905423559 0.41311688257687096 0.97071191446714
		-0.30856938905421827 0.41311688257687096 0.97071191446714
		-0.30856938905421827 1.2394160660809772 0.25728581554959051
		0.30856938905423603 1.2394160660809772 0.25728581554959051
		0.30856938905423603 1.2394160660809772 -0.45620595219150134
		-0.30856938905421827 1.2394160660809772 -0.45620595219150134
		-0.30856938905421827 0.41311688257687096 -1.169632051109057
		0.30856938905423559 0.41311688257687096 -1.169632051109057
		-0.30856938905421827 0.41311688257687096 -1.169632051109057
		-0.30856938905421827 -0.41311688257686663 -1.169632051109057
		0.30856938905423514 -0.41311688257686691 -1.169632051109057
		0.30856938905423492 -1.2394160660809752 -0.45620595219150134
		-0.30856938905421871 -1.2394160660809752 -0.45620595219150134
		-0.30856938905421871 -1.2394160660809752 0.25728581554959051
		0.30856938905423492 -1.2394160660809752 0.25728581554959051
		0.30856938905423514 -0.41311688257686691 0.97071191446714
		;
createNode parentConstraint -n "ctrl_l_arm01_finger05_03_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger05_03_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 30.871781523432904 0.67412606786597828 22.687206437709243 ;
	setAttr ".tg[0].tor" -type "double3" 47.25984955851191 -72.363010011940247 -48.631693031470618 ;
	setAttr ".lr" -type "double3" -1.8662081823112814e-014 -2.1571306225050597e-015 
		-11.898654369026 ;
	setAttr ".rst" -type "double3" 2.7999999999999972 2.2204460492503131e-016 2.1316282072803009e-014 ;
	setAttr ".rsrr" -type "double3" -1.8662081823112814e-014 -2.1571306225050597e-015 
		-11.898654369026 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_finger05_02_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger05_02_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 30.296157985805326 0.73493479247061499 19.947688260740694 ;
	setAttr ".tg[0].tor" -type "double3" 5.9010154262189349 -78.069574883304597 -6.0303455989650461 ;
	setAttr ".lr" -type "double3" -1.3408714457026552e-014 -1.9230071782597984e-014 
		-1.2444132896247233 ;
	setAttr ".rst" -type "double3" 2.1999999999999922 0 1.7763568394002505e-014 ;
	setAttr ".rsrr" -type "double3" -1.3408714457026552e-014 -1.9230071782597984e-014 
		-1.2444132896247233 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_finger05_01_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger05_01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 29.843775654462792 0.73493479247061499 17.794701910043358 ;
	setAttr ".tg[0].tor" -type "double3" 0 -78.13371650282302 2.1152636683618725e-028 ;
	setAttr ".lr" -type "double3" 0 12.71932704109186 0 ;
	setAttr ".rst" -type "double3" 5.4694810422867111 0.73493479247065829 -3.4804696757711326 ;
	setAttr ".rsrr" -type "double3" 0 12.71932704109186 0 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_l_arm01_finger04_01_parent" -p "ctrl_l_arm01_base01_fingers_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger04_01" -p "ctrl_l_arm01_finger04_01_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger04_01Shape" -p "ctrl_l_arm01_finger04_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.35812433963105139 -0.80775658600292388 1.2870437258028753
		-0.35812433963105095 0.80775658600292222 1.2870437258028753
		0.3581243396310434 0.80775658600292222 1.2870437258028753
		0.35812433963104406 2.4233976687903982 0.42904090083295326
		-0.35812433963105061 2.4233976687903982 0.42904090083295326
		-0.35812433963105061 2.4233976687903982 -0.42904090083293817
		0.35812433963104406 2.4233976687903982 -0.42904090083293817
		0.3581243396310434 0.80775658600292222 -1.2870437258028653
		0.35812433963104295 -0.80775658600292477 -1.2870437258028653
		-0.35812433963105139 -0.80775658600292388 -1.2870437258028653
		-0.35812433963105139 -2.4233976687904017 -0.42904090083293817
		0.35812433963104295 -2.4233976687904017 -0.42904090083293817
		0.35812433963104295 -2.4233976687904017 0.42904090083295326
		-0.35812433963105139 -2.4233976687904017 0.42904090083295326
		-0.35812433963105139 -0.80775658600292388 1.2870437258028753
		0.35812433963104295 -0.80775658600292477 1.2870437258028753
		0.3581243396310434 0.80775658600292222 1.2870437258028753
		-0.35812433963105095 0.80775658600292222 1.2870437258028753
		-0.35812433963105061 2.4233976687903982 0.42904090083295326
		0.35812433963104406 2.4233976687903982 0.42904090083295326
		0.35812433963104406 2.4233976687903982 -0.42904090083293817
		-0.35812433963105061 2.4233976687903982 -0.42904090083293817
		-0.35812433963105095 0.80775658600292222 -1.2870437258028653
		0.3581243396310434 0.80775658600292222 -1.2870437258028653
		-0.35812433963105095 0.80775658600292222 -1.2870437258028653
		-0.35812433963105139 -0.80775658600292388 -1.2870437258028653
		0.35812433963104295 -0.80775658600292477 -1.2870437258028653
		0.35812433963104295 -2.4233976687904017 -0.42904090083293817
		-0.35812433963105139 -2.4233976687904017 -0.42904090083293817
		-0.35812433963105139 -2.4233976687904017 0.42904090083295326
		0.35812433963104295 -2.4233976687904017 0.42904090083295326
		0.35812433963104295 -0.80775658600292477 1.2870437258028753
		;
createNode transform -n "ctrl_l_arm01_finger04_02_parent" -p "ctrl_l_arm01_finger04_01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger04_02" -p "ctrl_l_arm01_finger04_02_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" 7.1054273576010019e-015 4.4408920985006262e-016 0 ;
	setAttr ".r" -type "double3" -1.3318572728628477e-014 -6.6965584894876392e-015 -7.951386703658784e-016 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger04_02Shape" -p "ctrl_l_arm01_finger04_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.03465973690382923 -0.52107246373851945 1.1992142895310047
		-0.034659736903828786 0.52107246373851723 1.1992142895310047
		0.50365803877789617 0.5210724637385169 1.1992142895310047
		0.50365803877789639 1.5632999046698279 0.30278812230135355
		-0.034659736903828009 1.5632999046698279 0.30278812230135355
		-0.034659736903828009 1.5632999046698279 -0.59372055838257431
		0.50365803877789639 1.5632999046698279 -0.59372055838257431
		0.50365803877789617 0.5210724637385169 -1.4901467256122265
		0.50365803877789572 -0.52107246373851956 -1.4901467256122265
		-0.03465973690382923 -0.52107246373851945 -1.4901467256122265
		-0.034659736903829341 -1.5632999046698282 -0.59372055838257431
		0.5036580387778955 -1.5632999046698282 -0.59372055838257431
		0.5036580387778955 -1.5632999046698282 0.30278812230135355
		-0.034659736903829341 -1.5632999046698282 0.30278812230135355
		-0.03465973690382923 -0.52107246373851945 1.1992142895310047
		0.50365803877789572 -0.52107246373851956 1.1992142895310047
		0.50365803877789617 0.5210724637385169 1.1992142895310047
		-0.034659736903828786 0.52107246373851723 1.1992142895310047
		-0.034659736903828009 1.5632999046698279 0.30278812230135355
		0.50365803877789639 1.5632999046698279 0.30278812230135355
		0.50365803877789639 1.5632999046698279 -0.59372055838257431
		-0.034659736903828009 1.5632999046698279 -0.59372055838257431
		-0.034659736903828786 0.52107246373851723 -1.4901467256122265
		0.50365803877789617 0.5210724637385169 -1.4901467256122265
		-0.034659736903828786 0.52107246373851723 -1.4901467256122265
		-0.03465973690382923 -0.52107246373851945 -1.4901467256122265
		0.50365803877789572 -0.52107246373851956 -1.4901467256122265
		0.5036580387778955 -1.5632999046698282 -0.59372055838257431
		-0.034659736903829341 -1.5632999046698282 -0.59372055838257431
		-0.034659736903829341 -1.5632999046698282 0.30278812230135355
		0.5036580387778955 -1.5632999046698282 0.30278812230135355
		0.50365803877789572 -0.52107246373851956 1.1992142895310047
		;
createNode transform -n "ctrl_l_arm01_finger04_03_parent" -p "ctrl_l_arm01_finger04_02";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger04_03" -p "ctrl_l_arm01_finger04_03_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" -2.5444437451708128e-014 6.3611093629270367e-015 1.5902773407317578e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger04_03Shape" -p "ctrl_l_arm01_finger04_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.258563861299824 -0.50056124589467343 1.1685542729059757
		-0.258563861299824 0.50056124589467299 1.1685542729059757
		0.25856386129983555 0.50056124589467299 1.1685542729059757
		0.25856386129983555 1.5017630031227986 0.30741454600182477
		-0.258563861299824 1.5017630031227986 0.30741454600182477
		-0.258563861299824 1.5017630031227986 -0.55380444634110881
		0.25856386129983555 1.5017630031227986 -0.55380444634110881
		0.25856386129983555 0.50056124589467299 -1.4149441732452614
		0.25856386129983555 -0.50056124589467343 -1.4149441732452614
		-0.258563861299824 -0.50056124589467343 -1.4149441732452614
		-0.25856386129982484 -1.5017630031228004 -0.55380444634110881
		0.25856386129983505 -1.5017630031228004 -0.55380444634110881
		0.25856386129983505 -1.5017630031228004 0.30741454600182477
		-0.25856386129982484 -1.5017630031228004 0.30741454600182477
		-0.258563861299824 -0.50056124589467343 1.1685542729059757
		0.25856386129983555 -0.50056124589467343 1.1685542729059757
		0.25856386129983555 0.50056124589467299 1.1685542729059757
		-0.258563861299824 0.50056124589467299 1.1685542729059757
		-0.258563861299824 1.5017630031227986 0.30741454600182477
		0.25856386129983555 1.5017630031227986 0.30741454600182477
		0.25856386129983555 1.5017630031227986 -0.55380444634110881
		-0.258563861299824 1.5017630031227986 -0.55380444634110881
		-0.258563861299824 0.50056124589467299 -1.4149441732452614
		0.25856386129983555 0.50056124589467299 -1.4149441732452614
		-0.258563861299824 0.50056124589467299 -1.4149441732452614
		-0.258563861299824 -0.50056124589467343 -1.4149441732452614
		0.25856386129983555 -0.50056124589467343 -1.4149441732452614
		0.25856386129983505 -1.5017630031228004 -0.55380444634110881
		-0.25856386129982484 -1.5017630031228004 -0.55380444634110881
		-0.25856386129982484 -1.5017630031228004 0.30741454600182477
		0.25856386129983505 -1.5017630031228004 0.30741454600182477
		0.25856386129983555 -0.50056124589467343 1.1685542729059757
		;
createNode parentConstraint -n "ctrl_l_arm01_finger04_03_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger04_03_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 28.529596788828009 0.56666850537674174 24.73590931382417 ;
	setAttr ".tg[0].tor" -type "double3" 70.616207373032296 -74.90821416885926 -71.237233126703998 ;
	setAttr ".lr" -type "double3" -5.2006618502336212e-014 -1.9333306470029684e-014 
		-11.417966135718803 ;
	setAttr ".rst" -type "double3" 3.0999999999999801 2.2204460492503131e-016 7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" -5.2006618502336212e-014 -1.9333306470029684e-014 
		-11.417966135718803 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_finger04_02_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger04_02_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 28.262045652341403 0.72103683400003893 21.651336927174327 ;
	setAttr ".tg[0].tor" -type "double3" 29.859969773950997 -84.281443296378143 -29.983551916824748 ;
	setAttr ".lr" -type "double3" -4.0579787203565256e-014 -7.3740706098574862e-015 
		-2.854294548970111 ;
	setAttr ".rst" -type "double3" 2.5 5.5511151231257827e-016 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -4.0579787203565256e-014 -7.3740706098574862e-015 
		-2.854294548970111 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_finger04_01_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger04_01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 28.046010593248596 0.72103683400003837 19.160688647460233 ;
	setAttr ".tg[0].tor" -type "double3" 0 -85.042658322292013 5.2947882389351554e-028 ;
	setAttr ".lr" -type "double3" 0 5.8103852216228962 0 ;
	setAttr ".rst" -type "double3" 6.8620812765427264 0.72103683400008156 -1.7032404925560414 ;
	setAttr ".rsrr" -type "double3" 0 5.8103852216228962 0 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_l_arm01_finger03_01_parent" -p "ctrl_l_arm01_base01_fingers_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger03_01" -p "ctrl_l_arm01_finger03_01_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger03_01Shape" -p "ctrl_l_arm01_finger03_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.34205225239878623 -0.94548750796205805 1.5312596186506311
		-0.34205225239878567 0.94548750796206749 1.5312596186506311
		0.34205225239878156 0.94548750796206693 1.5312596186506311
		0.34205225239878201 2.8366122447900608 0.51045119371150682
		-0.34205225239878523 2.8366122447900608 0.51045119371150682
		-0.34205225239878523 2.8366122447900608 -0.51045119371150383
		0.34205225239878201 2.8366122447900608 -0.51045119371150383
		0.34205225239878156 0.94548750796206693 -1.5312596186506258
		0.34205225239878156 -0.94548750796205805 -1.5312596186506258
		-0.34205225239878623 -0.94548750796205805 -1.5312596186506258
		-0.34205225239878645 -2.8366122447900595 -0.51045119371150383
		0.34205225239878112 -2.8366122447900595 -0.51045119371150383
		0.34205225239878112 -2.8366122447900595 0.51045119371150682
		-0.34205225239878645 -2.8366122447900595 0.51045119371150682
		-0.34205225239878623 -0.94548750796205805 1.5312596186506311
		0.34205225239878156 -0.94548750796205805 1.5312596186506311
		0.34205225239878156 0.94548750796206693 1.5312596186506311
		-0.34205225239878567 0.94548750796206749 1.5312596186506311
		-0.34205225239878523 2.8366122447900608 0.51045119371150682
		0.34205225239878201 2.8366122447900608 0.51045119371150682
		0.34205225239878201 2.8366122447900608 -0.51045119371150383
		-0.34205225239878523 2.8366122447900608 -0.51045119371150383
		-0.34205225239878567 0.94548750796206749 -1.5312596186506258
		0.34205225239878156 0.94548750796206693 -1.5312596186506258
		-0.34205225239878567 0.94548750796206749 -1.5312596186506258
		-0.34205225239878623 -0.94548750796205805 -1.5312596186506258
		0.34205225239878156 -0.94548750796205805 -1.5312596186506258
		0.34205225239878112 -2.8366122447900595 -0.51045119371150383
		-0.34205225239878645 -2.8366122447900595 -0.51045119371150383
		-0.34205225239878645 -2.8366122447900595 0.51045119371150682
		0.34205225239878112 -2.8366122447900595 0.51045119371150682
		0.34205225239878156 -0.94548750796205805 1.5312596186506311
		;
createNode transform -n "ctrl_l_arm01_finger03_02_parent" -p "ctrl_l_arm01_finger03_01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger03_02" -p "ctrl_l_arm01_finger03_02_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" -2.5444437451708128e-014 6.3611093629270367e-015 1.5902773407317578e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger03_02Shape" -p "ctrl_l_arm01_finger03_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.19787015181580639 -0.51695397201333848 1.4246872752006672
		0.19787015181580664 0.51695397201333637 1.4246872752006672
		0.88197465661337437 0.51695397201333615 1.4246872752006672
		0.88197465661337493 1.5509437773182422 0.47492489936658511
		0.19787015181580664 1.5509437773182422 0.47492489936658511
		0.19787015181580664 1.5509437773182422 -0.47492489936659599
		0.88197465661337493 1.5509437773182422 -0.47492489936659599
		0.88197465661337437 0.51695397201333615 -1.424687275200677
		0.88197465661337404 -0.51695397201333892 -1.424687275200677
		0.19787015181580639 -0.51695397201333848 -1.424687275200677
		0.19787015181580619 -1.550943777318242 -0.47492489936659599
		0.88197465661337393 -1.550943777318242 -0.47492489936659599
		0.88197465661337393 -1.550943777318242 0.47492489936658511
		0.19787015181580619 -1.550943777318242 0.47492489936658511
		0.19787015181580639 -0.51695397201333848 1.4246872752006672
		0.88197465661337404 -0.51695397201333892 1.4246872752006672
		0.88197465661337437 0.51695397201333615 1.4246872752006672
		0.19787015181580664 0.51695397201333637 1.4246872752006672
		0.19787015181580664 1.5509437773182422 0.47492489936658511
		0.88197465661337493 1.5509437773182422 0.47492489936658511
		0.88197465661337493 1.5509437773182422 -0.47492489936659599
		0.19787015181580664 1.5509437773182422 -0.47492489936659599
		0.19787015181580664 0.51695397201333637 -1.424687275200677
		0.88197465661337437 0.51695397201333615 -1.424687275200677
		0.19787015181580664 0.51695397201333637 -1.424687275200677
		0.19787015181580639 -0.51695397201333848 -1.424687275200677
		0.88197465661337404 -0.51695397201333892 -1.424687275200677
		0.88197465661337393 -1.550943777318242 -0.47492489936659599
		0.19787015181580619 -1.550943777318242 -0.47492489936659599
		0.19787015181580619 -1.550943777318242 0.47492489936658511
		0.88197465661337393 -1.550943777318242 0.47492489936658511
		0.88197465661337404 -0.51695397201333892 1.4246872752006672
		;
createNode transform -n "ctrl_l_arm01_finger03_03_parent" -p "ctrl_l_arm01_finger03_02";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger03_03" -p "ctrl_l_arm01_finger03_03_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" -2.5444437451708128e-014 6.3611093629270367e-015 1.5902773407317578e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger03_03Shape" -p "ctrl_l_arm01_finger03_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.34205225239878367 -0.42101773943877319 1.3024779922736744
		-0.34205225239878367 0.42101773943877385 1.3024779922736744
		0.34205225239878412 0.42101773943877385 1.3024779922736744
		0.34205225239878412 1.2631198877920826 0.434185972020176
		-0.34205225239878279 1.2631198877920826 0.434185972020176
		-0.34205225239878279 1.2631198877920826 -0.4341859720201644
		0.34205225239878412 1.2631198877920826 -0.4341859720201644
		0.34205225239878412 0.42101773943877385 -1.3024779922736609
		0.34205225239878323 -0.42101773943877319 -1.3024779922736609
		-0.34205225239878367 -0.42101773943877319 -1.3024779922736609
		-0.34205225239878367 -1.263119887792082 -0.4341859720201644
		0.34205225239878323 -1.263119887792082 -0.4341859720201644
		0.34205225239878323 -1.263119887792082 0.434185972020176
		-0.34205225239878367 -1.263119887792082 0.434185972020176
		-0.34205225239878367 -0.42101773943877319 1.3024779922736744
		0.34205225239878323 -0.42101773943877319 1.3024779922736744
		0.34205225239878412 0.42101773943877385 1.3024779922736744
		-0.34205225239878367 0.42101773943877385 1.3024779922736744
		-0.34205225239878279 1.2631198877920826 0.434185972020176
		0.34205225239878412 1.2631198877920826 0.434185972020176
		0.34205225239878412 1.2631198877920826 -0.4341859720201644
		-0.34205225239878279 1.2631198877920826 -0.4341859720201644
		-0.34205225239878367 0.42101773943877385 -1.3024779922736609
		0.34205225239878412 0.42101773943877385 -1.3024779922736609
		-0.34205225239878367 0.42101773943877385 -1.3024779922736609
		-0.34205225239878367 -0.42101773943877319 -1.3024779922736609
		0.34205225239878323 -0.42101773943877319 -1.3024779922736609
		0.34205225239878323 -1.263119887792082 -0.4341859720201644
		-0.34205225239878367 -1.263119887792082 -0.4341859720201644
		-0.34205225239878367 -1.263119887792082 0.434185972020176
		0.34205225239878323 -1.263119887792082 0.434185972020176
		0.34205225239878323 -0.42101773943877319 1.3024779922736744
		;
createNode parentConstraint -n "ctrl_l_arm01_finger03_03_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger03_03_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 25.752262122746039 0.62050945630775733 25.588721676941635 ;
	setAttr ".tg[0].tor" -type "double3" 93.247214891135442 -74.761887769520627 -93.133280519132484 ;
	setAttr ".lr" -type "double3" 2.0765423234437748e-014 -1.0071096778196981e-014 -13.101584957783739 ;
	setAttr ".rst" -type "double3" 3.5000000000000071 2.2204460492503131e-016 7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" 2.0765423234437748e-014 -1.0071096778196981e-014 
		-13.101584957783739 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_finger03_02_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger03_02_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 25.804334225490628 0.74956800389896705 22.09148957320453 ;
	setAttr ".tg[0].tor" -type "double3" 111.98865543733788 -87.721195135449904 -111.97292228838292 ;
	setAttr ".lr" -type "double3" 6.2941399861123507e-014 7.544084015959666e-015 -5.0711392021682613 ;
	setAttr ".rst" -type "double3" 2.5000000000000036 -9.4368957093138306e-016 -1.0658141036401504e-014 ;
	setAttr ".rsrr" -type "double3" 6.2941399861123507e-014 7.544084015959666e-015 -5.0711392021682613 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_finger03_01_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger03_01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 25.841504308230519 0.62056071755028619 19.595097075014777 ;
	setAttr ".tg[0].tor" -type "double3" -106.09498050434829 -86.921613523312473 106.07295565944928 ;
	setAttr ".lr" -type "double3" 6.60246289419998e-013 -3.6136359748794884e-014 2.9579429705540585 ;
	setAttr ".rst" -type "double3" 7.3292619580261507 0.62056071755032938 0.49455405049462442 ;
	setAttr ".rsrr" -type "double3" 6.60246289419998e-013 -3.6136359748794884e-014 2.9579429705540585 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_l_arm01_finger02_01_parent" -p "ctrl_l_arm01_base01_fingers_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger02_01" -p "ctrl_l_arm01_finger02_01_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger02_01Shape" -p "ctrl_l_arm01_finger02_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.3817169187956751 -1.0532227557741931 1.5170333629062218
		-0.38171691879567471 1.0532227557742042 1.5170333629062218
		0.38171691879568698 1.0532227557742042 1.5170333629062218
		0.38171691879568714 3.1598350484398963 0.50570881747541963
		-0.38171691879567432 3.1598350484398963 0.50570881747541963
		-0.38171691879567432 3.1598350484398963 -0.50570881747540186
		0.38171691879568714 3.1598350484398963 -0.50570881747540186
		0.38171691879568698 1.0532227557742042 -1.5170333629062094
		0.3817169187956867 -1.0532227557741931 -1.5170333629062094
		-0.3817169187956751 -1.0532227557741931 -1.5170333629062094
		-0.38171691879567521 -3.1598350484398963 -0.50570881747540186
		0.38171691879568631 -3.1598350484398963 -0.50570881747540186
		0.38171691879568631 -3.1598350484398963 0.50570881747541963
		-0.38171691879567521 -3.1598350484398963 0.50570881747541963
		-0.3817169187956751 -1.0532227557741931 1.5170333629062218
		0.3817169187956867 -1.0532227557741931 1.5170333629062218
		0.38171691879568698 1.0532227557742042 1.5170333629062218
		-0.38171691879567471 1.0532227557742042 1.5170333629062218
		-0.38171691879567432 3.1598350484398963 0.50570881747541963
		0.38171691879568714 3.1598350484398963 0.50570881747541963
		0.38171691879568714 3.1598350484398963 -0.50570881747540186
		-0.38171691879567432 3.1598350484398963 -0.50570881747540186
		-0.38171691879567471 1.0532227557742042 -1.5170333629062094
		0.38171691879568698 1.0532227557742042 -1.5170333629062094
		-0.38171691879567471 1.0532227557742042 -1.5170333629062094
		-0.3817169187956751 -1.0532227557741931 -1.5170333629062094
		0.3817169187956867 -1.0532227557741931 -1.5170333629062094
		0.38171691879568631 -3.1598350484398963 -0.50570881747540186
		-0.38171691879567521 -3.1598350484398963 -0.50570881747540186
		-0.38171691879567521 -3.1598350484398963 0.50570881747541963
		0.38171691879568631 -3.1598350484398963 0.50570881747541963
		0.3817169187956867 -1.0532227557741931 1.5170333629062218
		;
createNode transform -n "ctrl_l_arm01_finger02_02_parent" -p "ctrl_l_arm01_finger02_01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger02_02" -p "ctrl_l_arm01_finger02_02_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" -2.5444437451708128e-014 6.3611093629270367e-015 1.5902773407317578e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger02_02Shape" -p "ctrl_l_arm01_finger02_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.17812890908523435 -0.49193536104221142 1.5911649694223795
		0.17812890908523479 0.49193536104221403 1.5911649694223795
		0.94156274667659678 0.49193536104221403 1.5911649694223795
		0.94156274667659701 1.4758839826295735 0.53042086929015597
		0.17812890908523524 1.4758839826295735 0.53042086929015597
		0.17812890908523524 1.4758839826295735 -0.53042086929016852
		0.94156274667659701 1.4758839826295735 -0.53042086929016852
		0.94156274667659678 0.49193536104221403 -1.5911649694223948
		0.94156274667659634 -0.49193536104221142 -1.5911649694223948
		0.17812890908523435 -0.49193536104221142 -1.5911649694223948
		0.17812890908523435 -1.4758839826295731 -0.53042086929016852
		0.94156274667659612 -1.4758839826295731 -0.53042086929016852
		0.94156274667659612 -1.4758839826295731 0.53042086929015597
		0.17812890908523435 -1.4758839826295731 0.53042086929015597
		0.17812890908523435 -0.49193536104221142 1.5911649694223795
		0.94156274667659634 -0.49193536104221142 1.5911649694223795
		0.94156274667659678 0.49193536104221403 1.5911649694223795
		0.17812890908523479 0.49193536104221403 1.5911649694223795
		0.17812890908523524 1.4758839826295735 0.53042086929015597
		0.94156274667659701 1.4758839826295735 0.53042086929015597
		0.94156274667659701 1.4758839826295735 -0.53042086929016852
		0.17812890908523524 1.4758839826295735 -0.53042086929016852
		0.17812890908523479 0.49193536104221403 -1.5911649694223948
		0.94156274667659678 0.49193536104221403 -1.5911649694223948
		0.17812890908523479 0.49193536104221403 -1.5911649694223948
		0.17812890908523435 -0.49193536104221142 -1.5911649694223948
		0.94156274667659634 -0.49193536104221142 -1.5911649694223948
		0.94156274667659612 -1.4758839826295731 -0.53042086929016852
		0.17812890908523435 -1.4758839826295731 -0.53042086929016852
		0.17812890908523435 -1.4758839826295731 0.53042086929015597
		0.94156274667659612 -1.4758839826295731 0.53042086929015597
		0.94156274667659634 -0.49193536104221142 1.5911649694223795
		;
createNode transform -n "ctrl_l_arm01_finger02_03_parent" -p "ctrl_l_arm01_finger02_02";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger02_03" -p "ctrl_l_arm01_finger02_03_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" -2.5444437451708128e-014 6.3611093629270367e-015 1.5902773407317578e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger02_03Shape" -p "ctrl_l_arm01_finger02_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		-0.38171691879568248 -0.40586791592888494 1.5774452053324302
		-0.38171691879568248 0.40586791592888266 1.5774452053324302
		0.38171691879567993 0.40586791592888238 1.5774452053324302
		0.38171691879568082 1.2176680182404795 0.52584733396547889
		-0.38171691879568159 1.2176680182404795 0.52584733396547889
		-0.38171691879568159 1.2176680182404795 -0.52584733396548045
		0.38171691879568082 1.2176680182404795 -0.52584733396548045
		0.38171691879567993 0.40586791592888238 -1.5774452053324353
		0.38171691879567954 -0.40586791592888544 -1.5774452053324353
		-0.38171691879568248 -0.40586791592888494 -1.5774452053324353
		-0.38171691879568287 -1.2176680182404798 -0.52584733396548045
		0.38171691879567954 -1.2176680182404798 -0.52584733396548045
		0.38171691879567954 -1.2176680182404798 0.52584733396547889
		-0.38171691879568287 -1.2176680182404798 0.52584733396547889
		-0.38171691879568248 -0.40586791592888494 1.5774452053324302
		0.38171691879567954 -0.40586791592888544 1.5774452053324302
		0.38171691879567993 0.40586791592888238 1.5774452053324302
		-0.38171691879568248 0.40586791592888266 1.5774452053324302
		-0.38171691879568159 1.2176680182404795 0.52584733396547889
		0.38171691879568082 1.2176680182404795 0.52584733396547889
		0.38171691879568082 1.2176680182404795 -0.52584733396548045
		-0.38171691879568159 1.2176680182404795 -0.52584733396548045
		-0.38171691879568248 0.40586791592888266 -1.5774452053324353
		0.38171691879567993 0.40586791592888238 -1.5774452053324353
		-0.38171691879568248 0.40586791592888266 -1.5774452053324353
		-0.38171691879568248 -0.40586791592888494 -1.5774452053324353
		0.38171691879567954 -0.40586791592888544 -1.5774452053324353
		0.38171691879567954 -1.2176680182404798 -0.52584733396548045
		-0.38171691879568287 -1.2176680182404798 -0.52584733396548045
		-0.38171691879568287 -1.2176680182404798 0.52584733396547889
		0.38171691879567954 -1.2176680182404798 0.52584733396547889
		0.38171691879567954 -0.40586791592888544 1.5774452053324302
		;
createNode parentConstraint -n "ctrl_l_arm01_finger02_03_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger02_03_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 22.097419451904496 0.4723133440064276 24.738863296448287 ;
	setAttr ".tg[0].tor" -type "double3" 143.90024884966303 -71.630537310747698 -142.46282795274783 ;
	setAttr ".lr" -type "double3" -1.5590424297259925e-014 -2.7078805706219389e-014 
		-9.1107175283636312 ;
	setAttr ".rst" -type "double3" 3.0999999999999872 -2.2204460492503131e-016 1.4210854715202004e-014 ;
	setAttr ".rsrr" -type "double3" -1.5590424297259925e-014 -2.7078805706219389e-014 
		-9.1107175283636312 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_finger02_02_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger02_02_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 22.886321404486679 0.578303519135555 21.742799246400622 ;
	setAttr ".tg[0].tor" -type "double3" 172.60170762368443 -75.121449777749405 -172.34804559214589 ;
	setAttr ".lr" -type "double3" -1.2754059602069273e-014 -4.4752372212797697e-014 
		-1.9593462874975869 ;
	setAttr ".rst" -type "double3" 2.5 1.1102230246251563e-016 1.0658141036401504e-014 ;
	setAttr ".rsrr" -type "double3" -1.2754059602069273e-014 -4.4752372212797697e-014 
		-1.9593462874975869 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_finger02_01_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger02_01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 23.522904842667728 0.57830351913555489 19.325205085621441 ;
	setAttr ".tg[0].tor" -type "double3" 0 255.24813799331943 0 ;
	setAttr ".lr" -type "double3" 0 -13.898818462765682 0 ;
	setAttr ".rst" -type "double3" 7.0939188847629904 0.57830351913559808 2.816914661061773 ;
	setAttr ".rsrr" -type "double3" 0 -13.898818462765682 0 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_l_arm01_finger01_01_parent" -p "ctrl_l_arm01_base01_fingers_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger01_01" -p "ctrl_l_arm01_finger01_01_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" 1.3322676295501878e-015 -3.5527136788005009e-015 0 ;
	setAttr ".r" -type "double3" 6.3611093629270335e-015 3.1805546814635152e-015 2.544443745170814e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger01_01Shape" -p "ctrl_l_arm01_finger01_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.20979040545965807 -0.8332901793717038 2.2406186039120106
		0.2097904054596583 0.59152044816944183 2.2406186039120106
		0.94577334560838677 0.59152044816944183 2.2406186039120106
		0.94577334560838699 2.0164438873200519 1.0150332786858036
		0.20979040545965841 2.0164438873200519 1.0150332786858036
		0.20979040545965841 2.0164438873200519 -0.21066485814986893
		0.94577334560838699 2.0164438873200519 -0.21066485814986893
		0.94577334560838677 0.59152044816944183 -1.4362501833760766
		0.94577334560838644 -0.83329017937170402 -1.4362501833760766
		0.20979040545965807 -0.8332901793717038 -1.4362501833760766
		0.20979040545965785 -2.2582136185223152 -0.21066485814986893
		0.94577334560838611 -2.2582136185223152 -0.21066485814986893
		0.94577334560838611 -2.2582136185223152 1.0150332786858036
		0.20979040545965785 -2.2582136185223152 1.0150332786858036
		0.20979040545965807 -0.8332901793717038 2.2406186039120106
		0.94577334560838644 -0.83329017937170402 2.2406186039120106
		0.94577334560838677 0.59152044816944183 2.2406186039120106
		0.2097904054596583 0.59152044816944183 2.2406186039120106
		0.20979040545965841 2.0164438873200519 1.0150332786858036
		0.94577334560838699 2.0164438873200519 1.0150332786858036
		0.94577334560838699 2.0164438873200519 -0.21066485814986893
		0.20979040545965841 2.0164438873200519 -0.21066485814986893
		0.2097904054596583 0.59152044816944183 -1.4362501833760766
		0.94577334560838677 0.59152044816944183 -1.4362501833760766
		0.2097904054596583 0.59152044816944183 -1.4362501833760766
		0.20979040545965807 -0.8332901793717038 -1.4362501833760766
		0.94577334560838644 -0.83329017937170402 -1.4362501833760766
		0.94577334560838611 -2.2582136185223152 -0.21066485814986893
		0.20979040545965785 -2.2582136185223152 -0.21066485814986893
		0.20979040545965785 -2.2582136185223152 1.0150332786858036
		0.94577334560838611 -2.2582136185223152 1.0150332786858036
		0.94577334560838644 -0.83329017937170402 2.2406186039120106
		;
createNode transform -n "ctrl_l_arm01_finger01_02_parent" -p "ctrl_l_arm01_finger01_01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger01_02" -p "ctrl_l_arm01_finger01_02_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" -2.5444437451708128e-014 6.3611093629270367e-015 1.5902773407317578e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger01_02Shape" -p "ctrl_l_arm01_finger01_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.63621575730944557 -0.73809783377097549 1.838434393644041
		0.63621575730944624 0.34349377573892981 1.838434393644041
		1.3721986974581739 0.34349377573892981 1.838434393644041
		1.3721986974581744 1.4251710219558438 0.61284906841783404
		0.63621575730944668 1.4251710219558438 0.61284906841783404
		0.63621575730944668 1.4251710219558438 -0.61284906841783915
		1.3721986974581744 1.4251710219558438 -0.61284906841783915
		1.3721986974581739 0.34349377573892981 -1.8384343936440477
		1.3721986974581739 -0.73809783377097571 -1.8384343936440477
		0.63621575730944557 -0.73809783377097549 -1.8384343936440477
		0.63621575730944535 -1.8197750799878905 -0.61284906841783915
		1.3721986974581739 -1.8197750799878905 -0.61284906841783915
		1.3721986974581739 -1.8197750799878905 0.61284906841783404
		0.63621575730944535 -1.8197750799878905 0.61284906841783404
		0.63621575730944557 -0.73809783377097549 1.838434393644041
		1.3721986974581739 -0.73809783377097571 1.838434393644041
		1.3721986974581739 0.34349377573892981 1.838434393644041
		0.63621575730944624 0.34349377573892981 1.838434393644041
		0.63621575730944668 1.4251710219558438 0.61284906841783404
		1.3721986974581744 1.4251710219558438 0.61284906841783404
		1.3721986974581744 1.4251710219558438 -0.61284906841783915
		0.63621575730944668 1.4251710219558438 -0.61284906841783915
		0.63621575730944624 0.34349377573892981 -1.8384343936440477
		1.3721986974581739 0.34349377573892981 -1.8384343936440477
		0.63621575730944624 0.34349377573892981 -1.8384343936440477
		0.63621575730944557 -0.73809783377097549 -1.8384343936440477
		1.3721986974581739 -0.73809783377097571 -1.8384343936440477
		1.3721986974581739 -1.8197750799878905 -0.61284906841783915
		0.63621575730944535 -1.8197750799878905 -0.61284906841783915
		0.63621575730944535 -1.8197750799878905 0.61284906841783404
		1.3721986974581739 -1.8197750799878905 0.61284906841783404
		1.3721986974581739 -0.73809783377097571 1.838434393644041
		;
createNode transform -n "ctrl_l_arm01_finger01_03_parent" -p "ctrl_l_arm01_finger01_02";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_finger01_03" -p "ctrl_l_arm01_finger01_03_parent";
	addAttr -ci true -k true -sn "follow_world" -ln "follow_world" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" -2.5444437451708128e-014 6.3611093629270367e-015 1.5902773407317578e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".follow_world";
createNode nurbsCurve -n "ctrl_l_arm01_finger01_03Shape" -p "ctrl_l_arm01_finger01_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0.48984387893938974 -0.50975687009500958 1.838434393644043
		0.48984387893939063 0.50975687009501414 1.838434393644043
		1.2258268190881181 0.50975687009501414 1.838434393644043
		1.2258268190881183 1.5293513318796681 0.61284906841783615
		0.48984387893939152 1.5293513318796681 0.61284906841783615
		0.48984387893939152 1.5293513318796681 -0.61284906841783637
		1.2258268190881183 1.5293513318796681 -0.61284906841783637
		1.2258268190881181 0.50975687009501414 -1.8384343936440439
		1.2258268190881174 -0.50975687009501025 -1.8384343936440439
		0.48984387893938974 -0.50975687009500958 -1.8384343936440439
		0.48984387893938974 -1.5293513318796681 -0.61284906841783637
		1.225826819088117 -1.5293513318796681 -0.61284906841783637
		1.225826819088117 -1.5293513318796681 0.61284906841783615
		0.48984387893938974 -1.5293513318796681 0.61284906841783615
		0.48984387893938974 -0.50975687009500958 1.838434393644043
		1.2258268190881174 -0.50975687009501025 1.838434393644043
		1.2258268190881181 0.50975687009501414 1.838434393644043
		0.48984387893939063 0.50975687009501414 1.838434393644043
		0.48984387893939152 1.5293513318796681 0.61284906841783615
		1.2258268190881183 1.5293513318796681 0.61284906841783615
		1.2258268190881183 1.5293513318796681 -0.61284906841783637
		0.48984387893939152 1.5293513318796681 -0.61284906841783637
		0.48984387893939063 0.50975687009501414 -1.8384343936440439
		1.2258268190881181 0.50975687009501414 -1.8384343936440439
		0.48984387893939063 0.50975687009501414 -1.8384343936440439
		0.48984387893938974 -0.50975687009500958 -1.8384343936440439
		1.2258268190881174 -0.50975687009501025 -1.8384343936440439
		1.225826819088117 -1.5293513318796681 -0.61284906841783637
		0.48984387893938974 -1.5293513318796681 -0.61284906841783637
		0.48984387893938974 -1.5293513318796681 0.61284906841783615
		1.225826819088117 -1.5293513318796681 0.61284906841783615
		1.2258268190881174 -0.50975687009501025 1.838434393644043
		;
createNode parentConstraint -n "ctrl_l_arm01_finger01_03_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger01_03_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 19.006394499186506 -0.1078812064841561 20.476741634888025 ;
	setAttr ".tg[0].tor" -type "double3" 98.419785360407104 -65.43830253032516 -176.19880355560522 ;
	setAttr ".lr" -type "double3" -6.353854260262834e-015 3.0372416179458201e-016 5.4734891577592455 ;
	setAttr ".rst" -type "double3" 2.5999999999999952 -7.1054273576010019e-015 1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -6.353854260262834e-015 3.0372416179458201e-016 
		5.4734891577592455 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_finger01_02_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger01_02_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 20.300080940306039 0.014466069797707036 18.224763274412535 ;
	setAttr ".tg[0].tor" -type "double3" 96.99485321676346 -60.013767543059615 -174.59745827963917 ;
	setAttr ".lr" -type "double3" -3.2940260411764445e-016 -3.1634509647187529e-015 
		11.88929913402758 ;
	setAttr ".rst" -type "double3" 3.4000000000000083 -1.4210854715202004e-014 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -3.2940260411764445e-016 -3.1634509647187529e-015 
		11.88929913402758 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_finger01_01_parent_parentConstraint1" 
		-p "ctrl_l_arm01_finger01_01_parent";
	addAttr -ci true -k true -sn "w0" -ln "ctrl_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 22.547021681769611 0.31264941555475784 15.690528873915152 ;
	setAttr ".tg[0].tor" -type "double3" 95.238296234876785 -48.190292426171219 -172.44065450575869 ;
	setAttr ".lr" -type "double3" -74.797522511378773 -40.518596018822386 -6.6247594526078037 ;
	setAttr ".rst" -type "double3" 3.4741743260183888 0.31264941555480108 3.8468022457558178 ;
	setAttr ".rsrr" -type "double3" -74.797522511378773 -40.518596018822386 -6.6247594526078037 ;
	setAttr -k on ".w0";
createNode transform -n "ctrl_l_arm01_base01_twist01_family" -p "grp_l_arm01";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_base01_twist01_parent" -p "ctrl_l_arm01_base01_twist01_family";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ctrl_l_arm01_base01_twist01" -p "ctrl_l_arm01_base01_twist01_parent";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -6.3108872417680986e-030 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ctrl_l_arm01_base01_twist01Shape" -p "ctrl_l_arm01_base01_twist01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.672232497824499 9.5964746819769362e-016 -15.672232497824476
		-2.5286341215658651e-015 1.3571464646221828e-015 -22.163883751087759
		-15.672232497824483 9.5964746819769441e-016 -15.672232497824483
		-22.163883751087759 3.9326709232375739e-031 -6.4225390144744615e-015
		-15.67223249782449 -9.5964746819769441e-016 15.67223249782448
		-6.6784107271810421e-015 -1.357146464622183e-015 22.163883751087763
		15.672232497824476 -9.5964746819769441e-016 15.672232497824488
		22.163883751087759 -7.2892601358095845e-031 1.190426519856117e-014
		15.672232497824499 9.5964746819769362e-016 -15.672232497824476
		-2.5286341215658651e-015 1.3571464646221828e-015 -22.163883751087759
		-15.672232497824483 9.5964746819769441e-016 -15.672232497824483
		;
createNode parentConstraint -n "ctrl_l_arm01_base01_twist01_parent_parentConstraint1" 
		-p "ctrl_l_arm01_base01_twist01_parent";
	addAttr -ci true -k true -sn "w0" -ln "bone_l_arm01_base01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -5.3290705182007514e-015 -6.3108872417680986e-030 
		-3.5527136788005009e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ctrl_l_arm01_base01_twist01_family_parentConstraint1" 
		-p "ctrl_l_arm01_base01_twist01_family";
	addAttr -ci true -k true -sn "w0" -ln "bone_l_arm01_mid01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 18.800000000000011 -5.1979908981196133e-015 
		1.0658141036401504e-014 ;
	setAttr ".tg[0].tor" -type "double3" 0 7.9513867036587939e-016 -2.6285462561822686e-033 ;
	setAttr ".lr" -type "double3" 0 -90.853043543914893 0 ;
	setAttr ".rst" -type "double3" 26.445120635088195 -4.3236516637961725e-014 12.274010278084919 ;
	setAttr ".rsrr" -type "double3" 0 -90.853043543914893 0 ;
	setAttr -k on ".w0";
createNode transform -n "grp_geometry" -p "character_rig";
createNode transform -n "geo_mouse_hands" -p "grp_geometry";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "geo_mouse_handsShape" -p "geo_mouse_hands";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "geo_mouse_handsShapeOrig" -p "geo_mouse_hands";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5980 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 1 0.58204401 1 0 0.77456802
		 0 0.77456802 0.58204401 0.22543199 0 0 0 0 0.58204401 0.22543199 0.58204401 0 0 0
		 0.15492 0.22543199 0.15492 0.22543199 0 1 0.79184502 0.58204401 0.79359698 0.58204401
		 0.894656 0 0 0 0.101564 0.021691 0.107987 0.021691 0 0 0 0 0.15492 0.41795599 0.15492
		 0.41795599 0 0.18017399 1 0.18017399 0.58204401 0.083279997 0.58204401 0.83588099
		 0 0.81982601 0 0.81982601 0.58204401 0.83588099 0.58204401 0.81982601 0 0.81982601
		 0.15492 0.83588099 0.15095299 0.83588099 0 0.203403 0 0.18017399 0 0.18017399 0.15492
		 0.203403 0.15492 0.58204401 0 1 0 0.44805101 0.55194902 0.260786 0.32125899 0.97830999
		 0 1 0 0.44805101 0 0.53486699 0 0.18017399 0 0.18017399 0 0.18017399 0.58204401 0.18017399
		 0.58204401 0 0.58204401 0 1 0 1 0 0.58204401 0 0 0 0 0.083279997 0 0.083279997 0
		 0.18017399 0 0.18017399 0 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399
		 1 0.18017399 1 0.083279997 1 0.083279997 1 0 0.51322001 0.58204401 0.513358 0.58204401
		 0.359889 0 0.21743 0.58204401 0.207305 0.58204401 0.105255 0 0.79603601 0.58204401
		 0.79359698 0.58204401 0.65691203 1 0.79184502 1 0.79184502 1 0.89376199 1 0.89376199
		 1 1 1 1 0.58204401 1 0.58204401 1 0 0.89590102 0 1 0 1 0 0.89590102 0.58204401 0.79359698
		 0 0.79603601 0 0.79603601 0.58204401 0.79359698 0 0.51322001 0 0.51322001 0 0.364896
		 0 0.364896 0.58204401 0.207305 0 0.21743 0 0.21743 0.58204401 0.207305 1 0.35629299
		 1 0.20003501 1 0.20003501 1 0.35629299 0.58204401 0.513358 1 0.513457 1 0.513457
		 0.58204401 0.513358 0 0.21743 0 0.21743 0 0.110396 0 0.110396 0.58204401 0 0 0 0
		 0 0.58204401 0 1 0.101564 1 0 1 0 1 0.101564 0.58204401 0.207305 1 0.20003501 1 0.20003501
		 0.58204401 0.207305 0 0.65809399 0 0.79603601 0 0.79603601 0 0.65809399 0.58204401
		 0.513358 0 0.51322001 0 0.51322001 0.58204401 0.513358 1 0.513457 1 0.513457 1 0.65606302
		 1 0.65606302 0.58204401 0.79359698 1 0.79184502 1 0.79184502 0.58204401 0.79359698
		 1 0.79184502 1 0.89376199 1 1 0.58204401 1 0 1 0 0.89590102 0 0.79603601 0.58204401
		 0.79359698 0 0.51322001 0 0.364896 0 0.21743 0.58204401 0.207305 1 0.20003501 1 0.35629299
		 1 0.513457 0.58204401 0.513358 0 0.21743 0 0.110396 0 0 0.58204401 0 1 0 1 0.101564
		 1 0.20003501 0.58204401 0.207305 0 0.79603601 0 0.65809399 0 0.51322001 0.58204401
		 0.513358 1 0.513457 1 0.65606302 1 0.79184502 0.58204401 0.79359698 0.81982601 0.82846701
		 0.81982601 0.66391098 0.796597 0.66391098 0.796597 0.82846701 1 0.82846701 1 0.66391098
		 0.41795599 0.66391098 0.41795599 0.82846701 1 0.82846701 1 0.66391098 0.77456802
		 0.66391098 0.77456802 0.82846701 0.81982601 0.39456001 0.81982601 0.305123 0.796597
		 0.305123 0.796597 0.39456001 1 0.39456001 1 0.305123 0.41795599 0.305123 0.41795599
		 0.39456001 1 0.39456001 1 0.305123 0.77456802 0.305123 0.77456802 0.39456001 0.18017399
		 0.82846701 0.18017399 0.66391098 0.16411901 0.67531103 0.16411901 0.83428502 1 0.89590102
		 1 0.79603601 0.97830999 0.78013003 0.97830999 0.88778299 0.18017399 0.305123 0.16411901
		 0.29575899 0.16411901 0.39115101 0.18017399 0.39456001 1 0.364896 1 0.21743 0.97830999
		 0.22798701 0.97830999 0.36846799 0.81982601 0.57641298 0.81982601 0.48451701 0.796597
		 0.48451701 0.796597 0.57641298 1 0.57641298 1 0.48451701 0.41795599 0.48451701 0.41795599
		 0.57641298 1 0.48451701 0.77456802 0.48451701 0.77456802 0.57641298 1 0.57641298
		 0.18017399 0.57641298 0.18017399 0.48451701 0.16411901 0.48709601 0.16411901 0.58350998
		 1 0.65809399 1 0.51322001 0.97830999 0.50976402 0.97830999 0.64826101 0.148809 0
		 0.10074 0 0.10074 0.13139699 0.148809 0.145632 0.92566699 0 0.89925998 0 0.89925998
		 0.58204401 0.92566699 0.58204401 0.89925998 0 0.89925998 0.13529 0.92566699 0.128765
		 0.92566699 0 0.074332997 1 0.10074 1 0.10074 0.85725403 0.074332997 0.86682397 0.89925998
		 1 0.89925998 0.85819697 0.85119098 0.84020603;
	setAttr ".uvst[0].uvsp[250:499]" 0.85119098 1 0.074332997 0.50151801 0.10074
		 0.49727601 0.10074 0.377689 0.074332997 0.37208 0.85119098 0.48951399 0.89925998
		 0.49717101 0.89925998 0.38148201 0.85119098 0.38939601 0.074332997 0.73906499 0.10074
		 0.72031403 0.10074 0.61152798 0.074332997 0.62320298 0.85119098 0.686912 0.89925998
		 0.722161 0.89925998 0.61242402 0.85119098 0.59063202 0.509399 0 0.62082899 0 0.68945098
		 0 0.67229402 0 0.18017399 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399
		 1 0.10074 0 0.109382 0.052799001 0.080709003 0.183644 0.074332997 0 0.423098 0 0.509399
		 0 0.67229402 0 0.517892 0 0.250626 1 0.496263 1 0.496263 0.58204401 0.250626 0.58204401
		 0.74937397 0 0.50373697 0 0.50373697 0.58204401 0.74937397 0.58204401 0.74937397
		 0 0.50373697 0 0.50373697 0.15492 0.74937397 0.15492 0.496263 0 0.496263 0.15492
		 0.77456802 0.15492 0.77456802 0 0.50373697 1 0.50373697 0.82846701 0.22543199 0.82846701
		 0.22543199 1 0.250626 1 0.496263 1 0.496263 0.82846701 0.250626 0.82846701 0.22543199
		 0.48451701 0.50373697 0.48451701 0.50373697 0.39456001 0.22543199 0.39456001 0.250626
		 0.48451701 0.496263 0.48451701 0.496263 0.39456001 0.250626 0.39456001 0.50373697
		 0.66391098 0.50373697 0.57641298 0.22543199 0.57641298 0.22543199 0.66391098 0.250626
		 0.66391098 0.496263 0.66391098 0.496263 0.57641298 0.250626 0.57641298 0.496263 1
		 0.77456802 1 0.77456802 0.58204401 0.496263 0.58204401 0.50373697 0 0.22543199 0
		 0.22543199 0.58204401 0.50373697 0.58204401 0.50373697 0 0.22543199 0 0.22543199
		 0.15492 0.50373697 0.15492 0.496263 1 0.77456802 1 0.77456802 0.82846701 0.496263
		 0.82846701 0.496263 0.48451701 0.77456802 0.48451701 0.77456802 0.39456001 0.496263
		 0.39456001 0.496263 0.66391098 0.77456802 0.66391098 0.77456802 0.57641298 0.496263
		 0.57641298 1 0 0.77456802 0 0.77456802 0.15492 1 0.15492 0 1 0.22543199 1 0.22543199
		 0.82846701 0 0.82846701 0.22543199 0.48451701 0.22543199 0.39456001 0 0.39456001
		 0 0.48451701 0.22543199 0.66391098 0.22543199 0.57641298 0 0.57641298 0 0.66391098
		 0.18017399 1 0.18017399 1 0.083279997 1 0.083279997 1 0 0.58204401 0 1 0 1 0 0.58204401
		 0.083279997 0 0 0 0 0 0.083279997 0 0.18017399 0 0.18017399 0 0.18017399 0.58204401
		 0.18017399 0.58204401 1 1 1 1 1 0.89376199 1 0.89376199 0 1 0.58204401 1 0.58204401
		 1 0 1 0 0.79603601 0 0.89590102 0 0.89590102 0 0.79603601 1 0.79184502 1 0.79184502
		 0.58204401 0.79359698 0.58204401 0.79359698 0 0.51322001 0 0.51322001 0 0.65809399
		 0 0.65809399 1 0.513457 1 0.513457 0.58204401 0.513358 0.58204401 0.513358 1 0.79184502
		 1 0.65606302 1 0.65606302 1 0.79184502 0 0.79603601 0.58204401 0.79359698 0.58204401
		 0.79359698 0 0.79603601 0 0.21743 0 0.21743 0 0.364896 0 0.364896 1 0.20003501 1
		 0.20003501 0.58204401 0.207305 0.58204401 0.207305 1 0.513457 1 0.513457 1 0.35629299
		 1 0.35629299 0 0.51322001 0.58204401 0.513358 0.58204401 0.513358 0 0.51322001 0
		 0 0 0 0 0.110396 0 0.110396 1 0 1 0 0.58204401 0 0.58204401 0 1 0.20003501 1 0.101564
		 1 0.101564 1 0.20003501 0 0.21743 0.58204401 0.207305 0.58204401 0.207305 0 0.21743
		 0 0 0 0.110396 1 0 0.58204401 0 1 0.20003501 1 0.101564 0 0.21743 0.58204401 0.207305
		 0 0.21743 0 0.364896 1 0.20003501 0.58204401 0.207305 1 0.513457 1 0.35629299 0 0.51322001
		 0.58204401 0.513358 0 0.51322001 0 0.65809399 1 0.513457 0.58204401 0.513358 1 0.79184502
		 1 0.65606302 0 0.79603601 0.58204401 0.79359698 1 1 1 0.89376199 0 1 0.58204401 1
		 0 0.79603601 0 0.89590102 1 0.79184502 0.58204401 0.79359698 0 0 0 0.58204401 0 0.58204401
		 0 0 0.18017399 0 0.18017399 0 0.083279997 0 0.083279997 0 0.18017399 1 0.18017399
		 1 0.18017399 0.58204401 0.18017399 0.58204401 0 1 0.083279997 1 0.083279997 1 0 1
		 0 1 0 1 0.083279997 1 0.083279997 1 0 0 0 0.58204401 0 0.58204401 0 0 0.18017399
		 0;
	setAttr ".uvst[0].uvsp[500:749]" 0.18017399 0 0.083279997 0 0.083279997 0 0.18017399
		 1 0.18017399 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 1 0.18017399
		 1 0.18017399 0.58204401 0.18017399 0.58204401 0.083279997 1 0 1 0.025062 0.80528498
		 0.096758001 0.84406298 0.85126299 0 0.81230003 0 0.74843001 0 0.79447198 0 1 1 0.93207097
		 0.93207097 0.96046197 0.54250699 1 0.58204401 0 0 0.067929 0 0.067929 0.15492 0 0.15492
		 0 0.305123 0.067929 0.305123 0.067929 0.39456001 0 0.39456001 0 0.57641298 0 0.48451701
		 0.067929 0.48451701 0.067929 0.57641298 0 0.66391098 0.067929 0.66391098 0.067929
		 0.82846701 0 0.82846701 0 0 0.067929 0.067929 0.028391 0.61043602 0 0.58204401 1
		 1 0.93207097 1 0.93207097 0.82846701 1 0.82846701 1 0.66391098 0.93207097 0.66391098
		 0.93207097 0.57641298 1 0.57641298 1 0.39456001 1 0.48451701 0.93207097 0.48451701
		 0.93207097 0.39456001 1 0.15492 1 0.305123 0.93207097 0.305123 0.93207097 0.15492
		 1 0 1 0 0.708978 0.291022 0.41795599 0 1 0.305123 0.5 0.305123 0.5 0.15492 1 0.15492
		 1 0.48451701 0.5 0.48451701 0.5 0.39456001 1 0.39456001 1 0.66391098 0.5 0.66391098
		 0.5 0.57641298 1 0.57641298 1 1 0.5 1 0.5 0.82846701 1 0.82846701 0 1 0 1 0.208978
		 0.791022 0.41795599 1 0 0.66391098 0.5 0.66391098 0.5 0.82846701 0 0.82846701 0 0.48451701
		 0.5 0.48451701 0.5 0.57641298 0 0.57641298 0 0.305123 0.5 0.305123 0.5 0.39456001
		 0 0.39456001 0 0 0.5 0 0.5 0.15492 0 0.15492 1 0 0.96046197 0.54250699 0.708978 0.291022
		 1 0 0.5 0.305123 0.067929 0.305123 0.067929 0.15492 0.5 0.15492 0.5 0.48451701 0.067929
		 0.48451701 0.067929 0.39456001 0.5 0.39456001 0.067929 0.66391098 0.067929 0.57641298
		 0.5 0.57641298 0.5 0.66391098 0.067929 1 0.067929 0.82846701 0.5 0.82846701 0.5 1
		 0 1 0.028391 0.61043602 0.208978 0.791022 0 1 0.5 0.66391098 0.93207097 0.66391098
		 0.93207097 0.82846701 0.5 0.82846701 0.5 0.48451701 0.93207097 0.48451701 0.93207097
		 0.57641298 0.5 0.57641298 0.5 0.305123 0.93207097 0.305123 0.93207097 0.39456001
		 0.5 0.39456001 0.93207097 0 0.93207097 0.15492 0.5 0.15492 0.5 0 0.044059001 0 0.044059001
		 0.114611 0.074332997 0.123577 0.074332997 0 0.92566699 0 0.95594102 0 0.62439799
		 0 0.74556601 0 0.95594102 1 0.95594102 0.87941098 0.92566699 0.86808097 0.92566699
		 1 0.92566699 0.501378 0.95594102 0.50620103 0.95594102 0.37215 0.92566699 0.37713501
		 0.95594102 0.76372701 0.95594102 0.63812 0.92566699 0.62439603 0.92566699 0.74152601
		 0.97830898 0 0.95594102 0 0.95594102 0.58204401 0.97830999 0.58204401 0.97830999
		 0 0.95594102 0 0.95594102 0.121283 0.97830999 0.115756 0.021691 1 0.044059001 1 0.044059001
		 0.87779498 0.021691 0.88590199 0.044059001 0.50638002 0.044059001 0.36565 0.021691
		 0.36090001 0.021691 0.50997299 0.021691 0.77644402 0.044059001 0.76056099 0.044059001
		 0.63658601 0.021691 0.646474 0.18017399 1 0.18017399 0.58204401 0.18017399 0.58204401
		 0.18017399 1 0.044059001 0 0.047839001 0.333644 0.023551 0.44447601 0.021691 0 0.25106001
		 0 0.32416201 0 0.34088799 0 0.21010099 0 0.18017399 0.77489603 0.110657 0.68325102
		 0.12946799 0.46561 0.18017399 0.62022501 0.250626 0 0.250626 0.15492 0.496263 0.15492
		 0.496263 0 0.74937397 1 0.74937397 0.82846701 0.50373697 0.82846701 0.50373697 1
		 0.50373697 0.48451701 0.74937397 0.48451701 0.74937397 0.39456001 0.50373697 0.39456001
		 0.74937397 0.66391098 0.74937397 0.57641298 0.50373697 0.57641298 0.50373697 0.66391098
		 0.250626 1 0.250626 0.58204401 0.203403 0.58204401 0.203403 1 0.74937397 0 0.74937397
		 0.58204401 0.796597 0.58204401 0.796597 0 0.796597 0 0.74937397 0 0.74937397 0.15492
		 0.796597 0.15492 0.203403 1 0.250626 1 0.250626 0.82846701 0.203403 0.82846701 0.203403
		 0.48451701 0.250626 0.48451701 0.250626 0.39456001 0.203403 0.39456001 0.203403 0.66391098
		 0.250626 0.66391098 0.250626 0.57641298 0.203403 0.57641298 0.85119098 0 0.85119098
		 0.58204401 0.89925998 0.58204401 0.89925998 0 0.85119098 0 0.85119098 0.14716899
		 0.89925998 0.13529 0.89925998 0 0.148809 0 0.154991 0.144743 0.109382 0.052799001
		 0.10074 0 0.10074 1 0.148809 1 0.148809 0.83983397;
	setAttr ".uvst[0].uvsp[750:999]" 0.10074 0.85725403 0.148809 0.489555 0.148809
		 0.38789901 0.10074 0.377689 0.10074 0.49727601 0.148809 0.68618202 0.148809 0.59027898
		 0.10074 0.61152798 0.10074 0.72031403 0.16411901 0 0.148809 0 0.148809 0.145632 0.16411901
		 0.150166 0.85119098 1 0.85119098 0.84020603 0.83588099 0.83447599 0.83588099 1 0.83588099
		 0.487075 0.85119098 0.48951399 0.85119098 0.38939601 0.83588099 0.39191699 0.83588099
		 0.67568398 0.85119098 0.686912 0.85119098 0.59063202 0.83588099 0.583691 0.74843001
		 0 0.68945098 0 0.72771299 0 0.78183001 0 0.18017399 0 0.18017399 0 0.18017399 0.58204401
		 0.18017399 0.58204401 0.18017399 0.31413901 0.166631 0.223041 0.154991 0.144743 0.18017399
		 0.17677 0 0.65809399 0.58204401 0.65691203 0 0.51322001 0 0.51322001 0 0.65809399
		 0 0.65809399 0 0.51322001 1 0.65606302 1 0.65606302 1 0.79184502 1 0.79184502 0 0.65809399
		 0 0.51322001 1 0.65606302 1 0.79184502 0.81982601 0.66391098 0.81982601 0.57641298
		 0.796597 0.57641298 0.796597 0.66391098 1 0.66391098 1 0.57641298 0.41795599 0.57641298
		 0.41795599 0.66391098 1 0.57641298 0.77456802 0.57641298 0.77456802 0.66391098 1
		 0.66391098 0.18017399 0.66391098 0.18017399 0.57641298 0.16411901 0.58350998 0.16411901
		 0.67531103 1 0.79603601 1 0.65809399 0.97830999 0.64826101 0.97830999 0.78013003
		 0.044059001 0.63658601 0.074332997 0.62320298 0.074332997 0.50151801 0.044059001
		 0.50638002 0.85119098 0.48951399 0.85119098 0.59063202 0.89925998 0.61242402 0.89925998
		 0.49717101 0.22543199 0.48451701 0.22543199 0.57641298 0.50373697 0.57641298 0.50373697
		 0.48451701 0.250626 0.57641298 0.496263 0.57641298 0.496263 0.48451701 0.250626 0.48451701
		 0.496263 0.57641298 0.77456802 0.57641298 0.77456802 0.48451701 0.496263 0.48451701
		 0 0.48451701 0 0.57641298 0.22543199 0.57641298 0.22543199 0.48451701 0 0.79603601
		 0 0.65809399 0 0.65809399 0 0.79603601 1 0.65606302 1 0.65606302 1 0.513457 1 0.513457
		 0 0.65809399 0 0.79603601 1 0.65606302 1 0.513457 0 0.66391098 0 0.57641298 0.067929
		 0.57641298 0.067929 0.66391098 1 0.48451701 1 0.57641298 0.93207097 0.57641298 0.93207097
		 0.48451701 1 0.48451701 1 0.57641298 0.5 0.57641298 0.5 0.48451701 0 0.66391098 0
		 0.57641298 0.5 0.57641298 0.5 0.66391098 0.5 0.48451701 0.5 0.57641298 0.067929 0.57641298
		 0.067929 0.48451701 0.5 0.66391098 0.5 0.57641298 0.93207097 0.57641298 0.93207097
		 0.66391098 0.89925998 0.49717101 0.89925998 0.61242402 0.92566699 0.62439603 0.92566699
		 0.501378 0 0.65606302 0.021691 0.646474 0.021691 0.50997299 0 0.513457 0.50373697
		 0.48451701 0.50373697 0.57641298 0.74937397 0.57641298 0.74937397 0.48451701 0.18017399
		 0.57641298 0.203403 0.57641298 0.203403 0.48451701 0.18017399 0.48451701 0.10074
		 0.61152798 0.148809 0.59027898 0.148809 0.489555 0.10074 0.49727601 0.81982601 0.57641298
		 0.83588099 0.583691 0.83588099 0.487075 0.81982601 0.48451701 0 0.364896 0.58204401
		 0.359889 0 0.21743 0 0.21743 0 0.364896 0 0.364896 0 0.21743 1 0.513457 1 0.35629299
		 1 0.35629299 1 0.513457 0 0.364896 0 0.21743 1 0.35629299 1 0.513457 0.81982601 0.48451701
		 0.81982601 0.39456001 0.796597 0.39456001 0.796597 0.48451701 1 0.48451701 1 0.39456001
		 0.41795599 0.39456001 0.41795599 0.48451701 1 0.39456001 0.77456802 0.39456001 0.77456802
		 0.48451701 1 0.48451701 0.18017399 0.48451701 0.18017399 0.39456001 0.16411901 0.39115101
		 0.16411901 0.48709601 1 0.364896 0.97830999 0.36846799 0.97830999 0.50976402 1 0.51322001
		 0.044059001 0.36565 0.074332997 0.37208 0.074332997 0.24338999 0.044059001 0.225733
		 0.22543199 0.305123 0.22543199 0.39456001 0.50373697 0.39456001 0.50373697 0.305123
		 0.250626 0.305123 0.250626 0.39456001 0.496263 0.39456001 0.496263 0.305123 0.496263
		 0.305123 0.496263 0.39456001 0.77456802 0.39456001 0.77456802 0.305123 0 0.305123
		 0 0.39456001 0.22543199 0.39456001 0.22543199 0.305123 0 0.51322001 0 0.364896 0
		 0.364896 0 0.51322001 1 0.20003501 1 0.35629299 1 0.35629299 1 0.20003501 0 0.364896
		 0 0.51322001 1 0.35629299 1 0.20003501 0 0.48451701 0 0.39456001 0.067929 0.39456001
		 0.067929 0.48451701 1 0.305123 1 0.39456001 0.93207097 0.39456001 0.93207097 0.305123
		 1 0.305123 1 0.39456001 0.5 0.39456001 0.5 0.305123 0 0.48451701 0 0.39456001 0.5
		 0.39456001 0.5 0.48451701 0.5 0.39456001 0.067929 0.39456001 0.067929 0.305123 0.5
		 0.305123 0.5 0.48451701 0.5 0.39456001 0.93207097 0.39456001 0.93207097 0.48451701
		 0.89925998 0.266462 0.89925998 0.38148201 0.92566699 0.37713501;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.92566699 0.253609 0 0.35629299 0.021691
		 0.36090001 0.021691 0.212687 0 0.20003501 0.50373697 0.305123 0.50373697 0.39456001
		 0.74937397 0.39456001 0.74937397 0.305123 0.18017399 0.305123 0.18017399 0.39456001
		 0.203403 0.39456001 0.203403 0.305123 0.10074 0.377689 0.148809 0.38789901 0.148809
		 0.28682899 0.10074 0.258793 0.81982601 0.305123 0.81982601 0.39456001 0.83588099
		 0.39191699 0.83588099 0.29730901 0.22543199 0.305123 0.22543199 0.15492 0 0.15492
		 0 0.305123 0.044059001 0.225733 0.044059001 0.114611 0.021691 0.107987 0.021691 0.212687
		 1 0.15492 0.41795599 0.15492 0.41795599 0.305123 1 0.305123 0.85119098 0.289857 0.85119098
		 0.14716899 0.83588099 0.15095299 0.83588099 0.29730901 0.250626 0.305123 0.250626
		 0.15492 0.203403 0.15492 0.203403 0.305123 0 0.110396 0.58204401 0.105255 0 0 0 0.110396
		 0 0.110396 0 0 0 0 1 0.20003501 1 0.101564 1 0.101564 1 0.20003501 0 0.110396 0 0
		 1 0.101564 1 0.20003501 0.148809 0.28682899 0.148809 0.145632 0.10074 0.13139699
		 0.10074 0.258793 0.95594102 0.121283 0.92566699 0.128765 0.92566699 0.253609 0.95594102
		 0.238874 0.74937397 0.15492 0.50373697 0.15492 0.50373697 0.305123 0.74937397 0.305123
		 0.77456802 0.305123 0.77456802 0.15492 0.496263 0.15492 0.496263 0.305123 0.50373697
		 0.15492 0.22543199 0.15492 0.22543199 0.305123 0.50373697 0.305123 1 0.15492 0.77456802
		 0.15492 0.77456802 0.305123 1 0.305123 0 0.21743 0 0.110396 0 0.110396 0 0.21743
		 1 0 1 0.101564 1 0.101564 1 0 0 0.110396 0 0.21743 1 0.101564 1 0 0 0.305123 0 0.15492
		 0.067929 0.15492 0.067929 0.305123 1 0 1 0.15492 0.93207097 0.15492 0.93207097 0
		 1 0 1 0.15492 0.5 0.15492 0.5 0 0 0.305123 0 0.15492 0.5 0.15492 0.5 0.305123 0.5
		 0.15492 0.067929 0.15492 0.067929 0 0.5 0 0.5 0.305123 0.5 0.15492 0.93207097 0.15492
		 0.93207097 0.305123 0.10074 0.258793 0.10074 0.13139699 0.074332997 0.123577 0.074332997
		 0.24338999 1 0.110396 0.97830999 0.115756 0.97830999 0.22798701 1 0.21743 0.496263
		 0.305123 0.496263 0.15492 0.250626 0.15492 0.250626 0.305123 0.81982601 0.15492 0.796597
		 0.15492 0.796597 0.305123 0.81982601 0.305123 0.89925998 0.266462 0.89925998 0.13529
		 0.85119098 0.14716899 0.85119098 0.289857 0.18017399 0.15492 0.16411901 0.150166
		 0.16411901 0.29575899 0.18017399 0.305123 1 0.89376199 0.58204401 0.894656 1 1 1
		 0.89376199 1 0.89376199 1 1 1 1 0 0.79603601 0 0.89590102 0 0.89590102 0 0.79603601
		 1 0.89376199 1 1 0 0.89590102 0 0.79603601 0.81982601 1 0.81982601 0.82846701 0.796597
		 0.82846701 0.796597 1 1 1 1 0.82846701 0.41795599 0.82846701 0.41795599 1 1 1 1 0.82846701
		 0.77456802 0.82846701 0.77456802 1 0.18017399 1 0.18017399 0.82846701 0.16411901
		 0.83428502 0.16411901 1 1 1 1 0.89590102 0.97830999 0.88778299 0.97830898 1 0.044059001
		 0.87779498 0.074332997 0.86682397 0.074332997 0.73906499 0.044059001 0.76056099 0.85119098
		 0.686912 0.85119098 0.84020603 0.89925998 0.85819697 0.89925998 0.722161 0.22543199
		 0.66391098 0.22543199 0.82846701 0.50373697 0.82846701 0.50373697 0.66391098 0.250626
		 0.82846701 0.496263 0.82846701 0.496263 0.66391098 0.250626 0.66391098 0.496263 0.82846701
		 0.77456802 0.82846701 0.77456802 0.66391098 0.496263 0.66391098 0 0.82846701 0.22543199
		 0.82846701 0.22543199 0.66391098 0 0.66391098 1 0.89376199 1 0.89376199 1 0.79184502
		 1 0.79184502 0 1 0 0.89590102 0 0.89590102 0 1 1 0.89376199 1 0.79184502 0 0.89590102
		 0 1 0 1 0 0.82846701 0.067929 0.82846701 0.067929 1 1 0.82846701 0.93207097 0.82846701
		 0.93207097 0.66391098 1 0.66391098 1 0.66391098 1 0.82846701 0.5 0.82846701 0.5 0.66391098
		 0 1 0 0.82846701 0.5 0.82846701 0.5 1 0.5 0.66391098 0.5 0.82846701 0.067929 0.82846701
		 0.067929 0.66391098 0.5 0.82846701 0.93207097 0.82846701 0.93207097 1 0.5 1 0.89925998
		 0.722161 0.89925998 0.85819697 0.92566699 0.86808097 0.92566699 0.74152601 0 0.89376199
		 0.021691 0.88590199 0.021691 0.77644402 0 0.79184502 0.50373697 0.66391098 0.50373697
		 0.82846701 0.74937397 0.82846701 0.74937397 0.66391098 0.18017399 0.82846701 0.203403
		 0.82846701 0.203403 0.66391098;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.18017399 0.66391098 0.10074 0.85725403 0.148809
		 0.83983397 0.148809 0.68618202 0.10074 0.72031403 0.81982601 0.82846701 0.83588099
		 0.83447599 0.83588099 0.67568398 0.81982601 0.66391098 1 1 1 0.58204401 0.77456802
		 0.58204401 0.77456802 1 0.22543199 1 0.22543199 0.58204401 0 0.58204401 0 1 0.58204401
		 0.894656 0.58204401 0.79359698 0 0.79603601 1 0 0.41795599 0 0.41795599 0.15492 1
		 0.15492 0 0.58204401 0.083279997 0.58204401 0 0 0.85119098 1 0.85119098 0.58204401
		 0.83588099 0.58204401 0.83588099 1 0 0 0.58204401 0 0.260786 0.32125899 0 0 0.18017399
		 0.58204401 0.18017399 0.58204401 0.18017399 1 0.18017399 1 0 0.58204401 0 0.58204401
		 0 0 0 0 0.18017399 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 1 0.58204401
		 0.359889 0.58204401 0.513358 1 0.513457 0.58204401 0.105255 0.58204401 0.207305 1
		 0.20003501 0.58204401 0.65691203 0.58204401 0.79359698 1 0.79184502 0 1 0.58204401
		 1 0.58204401 1 0 1 0.58204401 0.79359698 0.58204401 0.79359698 1 0.79184502 1 0.79184502
		 0.58204401 0.207305 0.58204401 0.207305 1 0.20003501 1 0.20003501 0.58204401 0.513358
		 0.58204401 0.513358 0 0.51322001 0 0.51322001 0.58204401 0 0.58204401 0 1 0 1 0 0.58204401
		 0.207305 0.58204401 0.207305 0 0.21743 0 0.21743 0.58204401 0.513358 0.58204401 0.513358
		 1 0.513457 1 0.513457 0.58204401 0.79359698 0.58204401 0.79359698 0 0.79603601 0
		 0.79603601 0.58204401 1 0 1 0.58204401 0.79359698 1 0.79184502 0.58204401 0.207305
		 1 0.20003501 0.58204401 0.513358 0 0.51322001 0.58204401 0 1 0 0.58204401 0.207305
		 0 0.21743 0.58204401 0.513358 1 0.513457 0.58204401 0.79359698 0 0.79603601 0 0.82846701
		 0.41795599 0.82846701 0.41795599 0.66391098 0 0.66391098 0.41795599 0.39456001 0.41795599
		 0.305123 0 0.305123 0 0.39456001 0 0.57641298 0.41795599 0.57641298 0.41795599 0.48451701
		 0 0.48451701 0.95594102 0.58204401 0.92566699 0.58204401 0.92566699 1 0.95594102
		 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 0 0.18017399 0 0.250626
		 0 0.250626 0.58204401 0.496263 0.58204401 0.496263 0 0.74937397 1 0.74937397 0.58204401
		 0.50373697 0.58204401 0.50373697 1 0.496263 0 0.496263 0.58204401 0.77456802 0.58204401
		 0.77456802 0 0.50373697 1 0.50373697 0.58204401 0.22543199 0.58204401 0.22543199
		 1 0 0 0 0.58204401 0 0.58204401 0 0 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399
		 1 0.18017399 1 1 1 0.58204401 1 0.58204401 1 1 1 0.58204401 0.79359698 0.58204401
		 0.79359698 0 0.79603601 0 0.79603601 0.58204401 0.513358 0.58204401 0.513358 0 0.51322001
		 0 0.51322001 1 0.79184502 0.58204401 0.79359698 0.58204401 0.79359698 1 0.79184502
		 0.58204401 0.207305 0.58204401 0.207305 0 0.21743 0 0.21743 1 0.513457 0.58204401
		 0.513358 0.58204401 0.513358 1 0.513457 0.58204401 0 0.58204401 0 0 0 0 0 1 0.20003501
		 0.58204401 0.207305 0.58204401 0.207305 1 0.20003501 0.58204401 0 0 0 0.58204401
		 0.207305 1 0.20003501 0.58204401 0.207305 0 0.21743 0.58204401 0.513358 1 0.513457
		 0.58204401 0.513358 0 0.51322001 0.58204401 0.79359698 1 0.79184502 0.58204401 1
		 1 1 0.58204401 0.79359698 0 0.79603601 0 1 0 0.58204401 0 0.58204401 0 1 0.18017399
		 0.58204401 0.18017399 0.58204401 0.18017399 0 0.18017399 0 0 1 0 0.58204401 0 0.58204401
		 0 1 0.18017399 0 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 0 0.18017399
		 0.58204401 0.18017399 0.58204401 0.18017399 0 0.18017399 0 1 0 1 0.58204401 0.96046197
		 0.54250699 1 0 0 1 0 0.58204401 0.028391 0.61043602 0 1 0 0 0.41795599 0 0.708978
		 0.291022 0.5 0.5 1 1 0.41795599 1 0.208978 0.791022 0.5 0.5 0.708978 0.291022 0.96046197
		 0.54250699 0.93207097 0.93207097 0.5 0.5 0.208978 0.791022 0.028391 0.61043602 0.067929
		 0.067929 0.5 0.5 1 0.58204401 0.97830999 0.58204401 0.97830999 1 1 1 0.18017399 0.58204401
		 0.18017399 0.58204401 0.18017399 0 0.18017399 0 0.18017399 0.58204401 0.203403 0.58204401;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.203403 0 0.18017399 0 0.81982601 0.58204401
		 0.796597 0.58204401 0.796597 1 0.81982601 1 0.89925998 1 0.89925998 0.58204401 0.85119098
		 0.58204401 0.85119098 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 1
		 0.18017399 1 0.58204401 0.513358 0.58204401 0.65691203 1 0.513457 0 0.66391098 0.41795599
		 0.66391098 0.41795599 0.57641298 0 0.57641298 0.58204401 0.207305 0.58204401 0.359889
		 1 0.20003501 0.41795599 0.48451701 0.41795599 0.39456001 0 0.39456001 0 0.48451701
		 0.41795599 0.305123 0.41795599 0.15492 0 0.15492 0 0.305123 0.58204401 0 0.58204401
		 0.105255 1 0 0.58204401 1 0.58204401 0.894656 0 1 0 1 0.41795599 1 0.41795599 0.82846701
		 0 0.82846701 1 1 0.58204401 0.894656 0.58204401 1 0.58204401 0.894656 0 0.79603601
		 0 0.89590102 0 1 0.58204401 0.894656 0 0.89590102 1 0.79184502 0.58204401 0.894656
		 1 0.89376199 1 1 1 1 1 0.89376199 1 0.89376199 0 1 0.58204401 1 0.58204401 1 0 1
		 0 0.79603601 0 0.79603601 0 0.89590102 0 0.89590102 1 0.79184502 1 0.79184502 0.58204401
		 0.79359698 0.58204401 0.79359698 1 0.79184502 1 0.79184502 1 0.89376199 1 0.89376199
		 0 1 0 0.89590102 0 0.89590102 0 1 1 1 0.58204401 1 0.58204401 1 1 1 0 0.79603601
		 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698 0 0.51322001 0 0.51322001
		 0 0.65809399 0 0.65809399 1 0.513457 1 0.513457 0.58204401 0.513358 0.58204401 0.513358
		 1 0.79184502 1 0.65606302 1 0.65606302 1 0.79184502 0 0.79603601 0.58204401 0.79359698
		 0.58204401 0.79359698 0 0.79603601 0 0.79603601 0 0.65809399 0 0.65809399 0 0.79603601
		 1 0.513457 1 0.513457 1 0.65606302 1 0.65606302 0 0.51322001 0 0.51322001 0.58204401
		 0.513358 0.58204401 0.513358 1 0.79184502 0.58204401 0.79359698 0.58204401 0.79359698
		 1 0.79184502 0 0.51322001 0.58204401 0.65691203 0.58204401 0.513358 0.58204401 0.65691203
		 1 0.79184502 1 0.65606302 1 0.513457 0.58204401 0.65691203 1 0.65606302 0 0.79603601
		 0.58204401 0.65691203 0 0.65809399 0 0.21743 0 0.21743 0 0.364896 0 0.364896 1 0.20003501
		 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305 1 0.513457 1 0.513457 1 0.35629299
		 1 0.35629299 0 0.51322001 0.58204401 0.513358 0.58204401 0.513358 0 0.51322001 0
		 0.51322001 0 0.364896 0 0.364896 0 0.51322001 1 0.20003501 1 0.20003501 1 0.35629299
		 1 0.35629299 0 0.21743 0 0.21743 0.58204401 0.207305 0.58204401 0.207305 1 0.513457
		 0.58204401 0.513358 0.58204401 0.513358 1 0.513457 0 0 0 0 0 0.110396 0 0.110396
		 1 0 1 0 0.58204401 0 0.58204401 0 1 0.20003501 1 0.20003501 1 0.101564 1 0.101564
		 0 0.21743 0.58204401 0.207305 0.58204401 0.207305 0 0.21743 0 0.21743 0 0.110396
		 0 0.110396 0 0.21743 1 0 1 0 1 0.101564 1 0.101564 0 0 0 0 0.58204401 0 0.58204401
		 0 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305 1 0.20003501 0 0.21743 0.58204401
		 0.359889 0.58204401 0.207305 0.58204401 0.359889 1 0.513457 1 0.35629299 0 0.51322001
		 0.58204401 0.359889 0 0.364896 1 0.20003501 0.58204401 0.359889 1 0.35629299 0 0.21743
		 0.58204401 0.105255 0 0.110396 1 0 0.58204401 0.105255 1 0.101564 0.58204401 0.105255
		 1 0.20003501 1 0.101564 0 0 0.58204401 0.105255 0.58204401 0 0.083279997 1 0.083279997
		 0.58204401 0 1 0.083279997 0 0.083279997 0 0.18017399 0 0.18017399 0 0 1 0.083279997
		 1 0.083279997 1 0 1 0.67229402 0 0.68945098 0 0.74843001 0 0.81230003 0 0.34088799
		 0 0.517892 0 0.59936702 0 0.35526299 0 0 1 0.083279997 1 0.083279997 1 0 1 0.083279997
		 0 0.083279997 0 0.18017399 0 0.18017399 0 0 0 0.083279997 0 0.083279997 0 0 0 0.083279997
		 1;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.083279997 1 0.18017399 1 0.18017399 1 0.083279997
		 1 0.083279997 1 0.18017399 1 0.18017399 1 0.083279997 0 0.083279997 0 0 0 0 0 0.18017399
		 1 0.083279997 1 0.096758001 0.84406298 0.18017399 0.88918 0.14587601 0.27576101 0.166631
		 0.223041 0.18017399 0.31413901 0.18017399 0.48530599 0.083279997 0 0.21010099 0 0.174897
		 0 0 0 0.116398 0.095660001 0.14587601 0.27576101 0.12946799 0.46561 0.085886002 0.33272001
		 0.083279997 0 0.083279997 0.58204401 0.18017399 0 0 1 0.083279997 1 0.083279997 1
		 0 1 0 0 0 0.58204401 0 0.58204401 0 0 0.18017399 0 0.083279997 0 0.083279997 0 0.18017399
		 0 0.18017399 1 0.18017399 1 0.18017399 0.58204401 0.18017399 0.58204401 0 1 0 0.58204401
		 0 0.58204401 0 1 0.18017399 0 0.18017399 0 0.18017399 0.58204401 0.18017399 0.58204401
		 0.18017399 1 0.18017399 1 0.083279997 1 0.083279997 1 0 0 0.083279997 0 0.083279997
		 0 0 0 0 0 0.083279997 0.58204401 0.083279997 0 0 1 0.083279997 0.58204401 0 0.58204401
		 0.18017399 0 0.083279997 0.58204401 0.18017399 0.58204401 0.18017399 1 0.083279997
		 0.58204401 0.083279997 1 0 0.110396 0 0.21743 0 0.21743 0 0.110396 0.58204401 0 0.58204401
		 0 0 0 0 0 1 0.101564 1 0.101564 1 0 1 0 0.58204401 0.207305 1 0.20003501 1 0.20003501
		 0.58204401 0.207305 0 0 0 0 0 0.110396 0 0.110396 1 0.20003501 1 0.20003501 1 0.101564
		 1 0.101564 1 0 1 0 0.58204401 0 0.58204401 0 0 0.21743 0.58204401 0.207305 0.58204401
		 0.207305 0 0.21743 0 0.364896 0 0.51322001 0 0.51322001 0 0.364896 0.58204401 0.207305
		 0 0.21743 0 0.21743 0.58204401 0.207305 1 0.35629299 1 0.35629299 1 0.20003501 1
		 0.20003501 0.58204401 0.513358 1 0.513457 1 0.513457 0.58204401 0.513358 0 0.21743
		 0 0.364896 0 0.364896 0 0.21743 1 0.513457 1 0.513457 1 0.35629299 1 0.35629299 1
		 0.20003501 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305 0 0.51322001 0.58204401
		 0.513358 0.58204401 0.513358 0 0.51322001 0 0.65809399 0 0.79603601 0 0.79603601
		 0 0.65809399 0.58204401 0.513358 0 0.51322001 0 0.51322001 0.58204401 0.513358 1
		 0.65606302 1 0.65606302 1 0.513457 1 0.513457 0.58204401 0.79359698 0.58204401 0.79359698
		 1 0.79184502 1 0.79184502 0 0.51322001 0 0.65809399 0 0.65809399 0 0.51322001 1 0.79184502
		 1 0.79184502 1 0.65606302 1 0.65606302 1 0.513457 1 0.513457 0.58204401 0.513358
		 0.58204401 0.513358 0 0.79603601 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698
		 0 0.110396 0 0.21743 0 0.21743 0 0.110396 0.58204401 0 0 0 0 0 0.58204401 0 1 0.101564
		 1 0 1 0 1 0.101564 0.58204401 0.207305 1 0.20003501 1 0.20003501 0.58204401 0.207305
		 0 0 0 0.110396 0 0.110396 0 0 1 0.20003501 1 0.101564 1 0.101564 1 0.20003501 1 0
		 0.58204401 0 0.58204401 0 1 0 0 0.21743 0.58204401 0.207305 0.58204401 0.207305 0
		 0.21743 0 0.364896 0 0.51322001 0 0.51322001 0 0.364896 0.58204401 0.207305 0 0.21743
		 0 0.21743 0.58204401 0.207305 1 0.35629299 1 0.20003501 1 0.20003501 1 0.35629299
		 0.58204401 0.513358 1 0.513457 1 0.513457 0.58204401 0.513358 0 0.21743 0 0.364896
		 0 0.364896 0 0.21743 1 0.513457 1 0.35629299 1 0.35629299 1 0.513457 1 0.20003501
		 0.58204401 0.207305 0.58204401 0.207305 1 0.20003501 0 0.51322001 0.58204401 0.513358
		 0.58204401 0.513358 0 0.51322001 0 0.65809399 0 0.79603601 0 0.79603601 0 0.65809399
		 0.58204401 0.513358 0 0.51322001 0 0.51322001 0.58204401 0.513358 1 0.65606302 1
		 0.513457 1 0.513457 1 0.65606302 0.58204401 0.79359698 1 0.79184502 1 0.79184502
		 0.58204401 0.79359698;
	setAttr ".uvst[0].uvsp[2000:2249]" 0 0.51322001 0 0.65809399 0 0.65809399 0 0.51322001
		 1 0.79184502 1 0.65606302 1 0.65606302 1 0.79184502 1 0.513457 0.58204401 0.513358
		 0.58204401 0.513358 1 0.513457 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698
		 0 0.79603601 1 0.89376199 1 0.89376199 1 0.79184502 1 0.79184502 0.58204401 1 1 1
		 1 1 0.58204401 1 0 0.89590102 0 1 0 1 0 0.89590102 0.58204401 0.79359698 0 0.79603601
		 0 0.79603601 0.58204401 0.79359698 1 1 1 1 1 0.89376199 1 0.89376199 0 0.79603601
		 0 0.89590102 0 0.89590102 0 0.79603601 0 1 0.58204401 1 0.58204401 1 0 1 1 0.79184502
		 1 0.79184502 0.58204401 0.79359698 0.58204401 0.79359698 1 1 1 1 1 0.89376199 1 0.89376199
		 0 1 0.58204401 1 0.58204401 1 0 1 0 0.79603601 0 0.89590102 0 0.89590102 0 0.79603601
		 1 0.79184502 1 0.79184502 0.58204401 0.79359698 0.58204401 0.79359698 1 0.79184502
		 1 0.79184502 1 0.89376199 1 0.89376199 0 1 0 0.89590102 0 0.89590102 0 1 1 1 0.58204401
		 1 0.58204401 1 1 1 0 0.79603601 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698
		 0 0.110396 0 0.110396 0 0.21743 0 0.21743 0.58204401 0 0 0 0 0 0.58204401 0 1 0.101564
		 1 0 1 0 1 0.101564 0.58204401 0.207305 1 0.20003501 1 0.20003501 0.58204401 0.207305
		 0 0 0 0 0 0.110396 0 0.110396 1 0.20003501 1 0.20003501 1 0.101564 1 0.101564 1 0
		 1 0 0.58204401 0 0.58204401 0 0 0.21743 0 0.21743 0.58204401 0.207305 0.58204401
		 0.207305 0 0.364896 0 0.364896 0 0.51322001 0 0.51322001 0.58204401 0.207305 0 0.21743
		 0 0.21743 0.58204401 0.207305 1 0.35629299 1 0.20003501 1 0.20003501 1 0.35629299
		 0.58204401 0.513358 1 0.513457 1 0.513457 0.58204401 0.513358 0 0.21743 0 0.21743
		 0 0.364896 0 0.364896 1 0.513457 1 0.513457 1 0.35629299 1 0.35629299 1 0.20003501
		 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305 0 0.51322001 0 0.51322001 0.58204401
		 0.513358 0.58204401 0.513358 0 0.65809399 0 0.79603601 0 0.79603601 0 0.65809399
		 0.58204401 0.513358 0 0.51322001 0 0.51322001 0.58204401 0.513358 1 0.65606302 1
		 0.65606302 1 0.513457 1 0.513457 0.58204401 0.79359698 0.58204401 0.79359698 1 0.79184502
		 1 0.79184502 0 0.51322001 0 0.65809399 0 0.65809399 0 0.51322001 1 0.79184502 1 0.79184502
		 1 0.65606302 1 0.65606302 1 0.513457 1 0.513457 0.58204401 0.513358 0.58204401 0.513358
		 0 0.79603601 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698 1 0.89376199
		 1 0.89376199 1 0.79184502 1 0.79184502 0.58204401 1 0.58204401 1 1 1 1 1 0 0.89590102
		 0 1 0 1 0 0.89590102 0.58204401 0.79359698 0 0.79603601 0 0.79603601 0.58204401 0.79359698
		 1 1 1 1 1 0.89376199 1 0.89376199 0 0.79603601 0 0.89590102 0 0.89590102 0 0.79603601
		 0 1 0.58204401 1 0.58204401 1 0 1 1 0.79184502 1 0.79184502 0.58204401 0.79359698
		 0.58204401 0.79359698 0 0.58204401 0 1 0 1 0 0.58204401 0.083279997 0 0 0 0 0 0.083279997
		 0 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 0 0.18017399 0 0.083279997
		 1 0.18017399 1 0.18017399 1 0.083279997 1 0 0 0 0 0 0.58204401 0 0.58204401 0.18017399
		 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 1 0.18017399 0 0.18017399
		 0 0.083279997 0 0.083279997 0 0 1 0 1 0.083279997 1 0.083279997 1 0 0 0 0.58204401
		 0 0.58204401 0 0 0.18017399 0 0.083279997 0 0.083279997 0 0.18017399 0 0.18017399
		 1 0.18017399 1;
	setAttr ".uvst[0].uvsp[2250:2499]" 0.18017399 0.58204401 0.18017399 0.58204401
		 0 1 0.083279997 1 0.083279997 1 0 1 0 1 0 0.58204401 0 0.58204401 0 1 0.18017399
		 0 0.18017399 0 0.18017399 0.58204401 0.18017399 0.58204401 0 0 0.083279997 0 0.083279997
		 0 0 0 0.18017399 1 0.083279997 1 0.083279997 1 0.18017399 1 0.083279997 1 0.18017399
		 1 0.18017399 1 0.083279997 1 0 0.58204401 0 1 0 1 0 0.58204401 0.083279997 0 0 0
		 0 0 0.083279997 0 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 0 0.18017399
		 0 0 0 0 0.58204401 0 0.58204401 0 0 0.18017399 1 0.18017399 1 0.18017399 0.58204401
		 0.18017399 0.58204401 0 1 0.083279997 1 0.083279997 1 0 1 0.18017399 0 0.18017399
		 0 0.083279997 0 0.083279997 0 0.021691 0 0.021691 0.107987 0.044059001 0.114611 0.044059001
		 0 0.95594102 0 0.97830999 0 0.53486699 0 0.62439799 0 0.97830999 0.88778299 0.97830999
		 0.78013003 0.95594102 0.76372701 0.95594102 0.87941098 0.97830999 0.36846799 0.97830999
		 0.22798701 0.95594102 0.238874 0.95594102 0.37215 0.97830999 0.64826101 0.97830999
		 0.50976402 0.95594102 0.50620103 0.95594102 0.63812 0.096758001 0.84406298 0.025062
		 0.80528498 0.050907001 0.60448301 0.110657 0.68325102 1 0 0.97830898 0 0.97830999
		 0.58204401 1 0.58204401 1 0 0.97830999 0 0.97830999 0.115756 1 0.110396 0 1 0.021691
		 1 0.021691 0.88590199 0 0.89376199 0.021691 0.50997299 0.021691 0.36090001 0 0.35629299
		 0 0.513457 0 0.79184502 0.021691 0.77644402 0.021691 0.646474 0 0.65606302 0.18017399
		 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 1 0.021691 0 0.023551 0.44447601
		 0 0.55194902 0 0 0.25106001 0 0.21010099 0 0.083279997 0 0.18017399 0 0.97830999
		 0.78013003 0.97830999 0.64826101 0.95594102 0.63812 0.95594102 0.76372701 0.044059001
		 0.50638002 0.021691 0.50997299 0.021691 0.646474 0.044059001 0.63658601 0.95594102
		 0.50620103 0.97830999 0.50976402 0.97830999 0.36846799 0.95594102 0.37215 0.044059001
		 0.225733 0.021691 0.212687 0.021691 0.36090001 0.044059001 0.36565 0.021691 0.212687
		 0.021691 0.107987 0 0.101564 0 0.20003501 0.95594102 0.238874 0.97830999 0.22798701
		 0.97830999 0.115756 0.95594102 0.121283 0.97830898 1 0.97830999 0.88778299 0.95594102
		 0.87941098 0.95594102 1 0.044059001 0.76056099 0.021691 0.77644402 0.021691 0.88590199
		 0.044059001 0.87779498 0.95594102 1 0.97830999 1 0.97830999 0.58204401 0.95594102
		 0.58204401 0.18017399 0 0.18017399 0 0.18017399 0.58204401 0.18017399 0.58204401
		 0.18017399 0.88918 0.096758001 0.84406298 0.110657 0.68325102 0.18017399 0.77489603
		 0.35526299 0 0.174897 0 0.21010099 0 0.34088799 0 0.203403 0 0.203403 0.15492 0.250626
		 0.15492 0.250626 0 0.796597 0.82846701 0.796597 0.66391098 0.74937397 0.66391098
		 0.74937397 0.82846701 0.74937397 0.39456001 0.796597 0.39456001 0.796597 0.305123
		 0.74937397 0.305123 0.796597 0.57641298 0.796597 0.48451701 0.74937397 0.48451701
		 0.74937397 0.57641298 0.203403 1 0.203403 0.58204401 0.18017399 0.58204401 0.18017399
		 1 0.796597 0 0.796597 0.58204401 0.81982601 0.58204401 0.81982601 0 0.796597 0 0.796597
		 0.15492 0.81982601 0.15492 0.81982601 0 0.18017399 1 0.203403 1 0.203403 0.82846701
		 0.18017399 0.82846701 0.18017399 0.48451701 0.203403 0.48451701 0.203403 0.39456001
		 0.18017399 0.39456001 0.18017399 0.66391098 0.203403 0.66391098 0.203403 0.57641298
		 0.18017399 0.57641298 0.796597 0.66391098 0.796597 0.57641298 0.74937397 0.57641298
		 0.74937397 0.66391098 0.250626 0.48451701 0.203403 0.48451701 0.203403 0.57641298
		 0.250626 0.57641298 0.796597 0.48451701 0.796597 0.39456001 0.74937397 0.39456001
		 0.74937397 0.48451701 0.250626 0.305123 0.203403 0.305123 0.203403 0.39456001 0.250626
		 0.39456001 0.203403 0.305123 0.203403 0.15492 0.18017399 0.15492 0.18017399 0.305123
		 0.74937397 0.305123 0.796597 0.305123 0.796597 0.15492 0.74937397 0.15492 0.796597
		 1 0.796597 0.82846701 0.74937397 0.82846701 0.74937397 1 0.250626 0.66391098 0.203403
		 0.66391098 0.203403 0.82846701 0.250626 0.82846701 0.250626 0 0.203403 0 0.203403
		 0.58204401 0.250626 0.58204401 0.74937397 1 0.796597 1 0.796597 0.58204401 0.74937397
		 0.58204401 0.85119098 0 0.83588099 0 0.83588099 0.58204401 0.85119098 0.58204401
		 0.83588099 0 0.83588099 0.15095299 0.85119098 0.14716899 0.85119098 0 0.148809 0.83983397
		 0.16411901 0.83428502 0.16411901 0.67531103 0.148809 0.68618202;
	setAttr ".uvst[0].uvsp[2500:2749]" 0.148809 0.38789901 0.16411901 0.39115101
		 0.16411901 0.29575899 0.148809 0.28682899 0.148809 0.59027898 0.16411901 0.58350998
		 0.16411901 0.48709601 0.148809 0.489555 0.18017399 0 0.16411901 0 0.16411901 0.150166
		 0.18017399 0.15492 0.81982601 1 0.83588099 1 0.83588099 0.83447599 0.81982601 0.82846701
		 0.81982601 0.48451701 0.83588099 0.487075 0.83588099 0.39191699 0.81982601 0.39456001
		 0.81982601 0.66391098 0.83588099 0.67568398 0.83588099 0.583691 0.81982601 0.57641298
		 0.148809 0.68618202 0.16411901 0.67531103 0.16411901 0.58350998 0.148809 0.59027898
		 0.85119098 0.48951399 0.83588099 0.487075 0.83588099 0.583691 0.85119098 0.59063202
		 0.16411901 0.48709601 0.16411901 0.39115101 0.148809 0.38789901 0.148809 0.489555
		 0.83588099 0.29730901 0.83588099 0.39191699 0.85119098 0.38939601 0.85119098 0.289857
		 0.83588099 0.29730901 0.83588099 0.15095299 0.81982601 0.15492 0.81982601 0.305123
		 0.16411901 0.29575899 0.16411901 0.150166 0.148809 0.145632 0.148809 0.28682899 0.148809
		 1 0.16411901 1 0.16411901 0.83428502 0.148809 0.83983397 0.85119098 0.686912 0.83588099
		 0.67568398 0.83588099 0.83447599 0.85119098 0.84020603 0.83588099 1 0.83588099 0.58204401
		 0.81982601 0.58204401 0.81982601 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399
		 0 0.18017399 0 0.18017399 1 0.18017399 1 0.18017399 0.58204401 0.18017399 0.58204401
		 0.83588099 0 0.78183001 0 0.761181 0 0.81982601 0 0.148809 0 0.16411901 0 0.166428
		 0.078809001 0.154991 0.144743 0.154991 0.144743 0.166428 0.078809001 0.18017399 0.091683
		 0.18017399 0.17677 0.18017399 0.091683 0.166428 0.078809001 0.16411901 0 0.18017399
		 0 0 0.58204401 0.260786 0.32125899 0.44805101 0.55194902 0 1 0.53486699 0 0.44805101
		 0 0 0 0.174897 0 0.050907001 0.60448301 0.047839001 0.333644 0.080709003 0.183644
		 0.085886002 0.33272001 0.89925998 0 0.85126299 0 0.79447198 0 0.85119098 0 0.85126299
		 0 0.74556601 0 0.59936702 0 0.81230003 0 0.025062 0.80528498 0.023551 0.44447601
		 0.047839001 0.333644 0.050907001 0.60448301 0 0 0.260786 0.32125899 0 0.58204401
		 0 0 0.62439799 0 0.53486699 0 0.174897 0 0.35526299 0 0 1 0 0.55194902 0.023551 0.44447601
		 0.025062 0.80528498 0.116398 0.095660001 0.109382 0.052799001 0.154991 0.144743 0.166631
		 0.223041 0.116398 0.095660001 0.166631 0.223041 0.14587601 0.27576101 0.79447198
		 0 0.78183001 0 0.83588099 0 0.85119098 0 0.78183001 0 0.72771299 0 0.70675498 0 0.761181
		 0 0.72771299 0 0.68945098 0 0.62082899 0 0.70675498 0 0.74843001 0 0.78183001 0 0.79447198
		 0 0.85119098 0.289857 0.85119098 0.38939601 0.89925998 0.38148201 0.89925998 0.266462
		 0.95594102 0 0.92566699 0 0.92566699 0.58204401 0.95594102 0.58204401 0.95594102
		 0 0.92566699 0 0.92566699 0.128765 0.95594102 0.121283 0.044059001 1 0.074332997
		 1 0.074332997 0.86682397 0.044059001 0.87779498 0.074332997 0.50151801 0.074332997
		 0.37208 0.044059001 0.36565 0.044059001 0.50638002 0.044059001 0.76056099 0.074332997
		 0.73906499 0.074332997 0.62320298 0.044059001 0.63658601 0.18017399 1 0.18017399
		 0.58204401 0.18017399 0.58204401 0.18017399 1 0.074332997 0 0.080709003 0.183644
		 0.047839001 0.333644 0.044059001 0 0.32416201 0 0.423098 0 0.517892 0 0.34088799
		 0 0.10074 0 0.074332997 0 0.074332997 0.123577 0.10074 0.13139699 0.89925998 0 0.92566699
		 0 0.74556601 0 0.85126299 0 0.92566699 1 0.92566699 0.86808097 0.89925998 0.85819697
		 0.89925998 1 0.89925998 0.49717101 0.92566699 0.501378 0.92566699 0.37713501 0.89925998
		 0.38148201 0.92566699 0.74152601 0.92566699 0.62439603 0.89925998 0.61242402 0.89925998
		 0.722161 0.18017399 0.62022501 0.12946799 0.46561 0.14587601 0.27576101 0.18017399
		 0.48530599 0.10074 0.49727601 0.074332997 0.50151801 0.074332997 0.62320298 0.10074
		 0.61152798 0.92566699 0.501378 0.92566699 0.62439603 0.95594102 0.63812 0.95594102
		 0.50620103 0.10074 0.258793 0.074332997 0.24338999 0.074332997 0.37208 0.10074 0.377689
		 0.92566699 0.253609 0.92566699 0.37713501 0.95594102 0.37215 0.95594102 0.238874
		 0.89925998 0.266462 0.92566699 0.253609 0.92566699 0.128765 0.89925998 0.13529 0.074332997
		 0.24338999 0.074332997 0.123577 0.044059001 0.114611 0.044059001 0.225733 0.10074
		 0.72031403 0.074332997 0.73906499 0.074332997 0.86682397 0.10074 0.85725403 0.92566699
		 0.74152601 0.92566699 0.86808097 0.95594102 0.87941098 0.95594102 0.76372701 0.92566699
		 1 0.92566699 0.58204401 0.89925998 0.58204401 0.89925998 1 0.18017399 0 0.18017399
		 0 0.18017399 0.58204401 0.18017399 0.58204401 0.81230003 0 0.59936702 0 0.517892
		 0 0.67229402 0 0.085886002 0.33272001 0.12946799 0.46561 0.110657 0.68325102 0.050907001
		 0.60448301;
	setAttr ".uvst[0].uvsp[2750:2999]" 0.085886002 0.33272001 0.080709003 0.183644
		 0.109382 0.052799001 0.116398 0.095660001 0.35526299 0 0.59936702 0 0.74556601 0
		 0.62439799 0 0 0.51322001 0 0.51322001 0 0.65809399 0 0.65809399 1 0.513457 1 0.513457
		 0.58204401 0.513358 0.58204401 0.513358 1 0.79184502 1 0.65606302 1 0.65606302 1
		 0.79184502 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698 0 0.79603601
		 0 0.79603601 0 0.65809399 0 0.65809399 0 0.79603601 1 0.513457 1 0.513457 1 0.65606302
		 1 0.65606302 0 0.51322001 0 0.51322001 0.58204401 0.513358 0.58204401 0.513358 1
		 0.79184502 0.58204401 0.79359698 0.58204401 0.79359698 1 0.79184502 0 0.21743 0 0.364896
		 0 0.364896 0 0.21743 1 0.20003501 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305
		 1 0.513457 1 0.513457 1 0.35629299 1 0.35629299 0 0.51322001 0.58204401 0.513358
		 0.58204401 0.513358 0 0.51322001 0 0.51322001 0 0.364896 0 0.364896 0 0.51322001
		 1 0.20003501 1 0.20003501 1 0.35629299 1 0.35629299 0 0.21743 0 0.21743 0.58204401
		 0.207305 0.58204401 0.207305 1 0.513457 0.58204401 0.513358 0.58204401 0.513358 1
		 0.513457 0 0 0 0 0 0.110396 0 0.110396 1 0 1 0 0.58204401 0 0.58204401 0 1 0.20003501
		 1 0.101564 1 0.101564 1 0.20003501 0 0.21743 0.58204401 0.207305 0.58204401 0.207305
		 0 0.21743 0 0.21743 0 0.110396 0 0.110396 0 0.21743 1 0 1 0 1 0.101564 1 0.101564
		 0 0 0 0 0.58204401 0 0.58204401 0 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305
		 1 0.20003501 0 1 0 1 0.083279997 1 0.083279997 1 0 0 0 0.58204401 0 0.58204401 0
		 0 0.18017399 0 0.18017399 0 0.083279997 0 0.083279997 0 0.18017399 1 0.18017399 1
		 0.18017399 0.58204401 0.18017399 0.58204401 0 1 0 0.58204401 0 0.58204401 0 1 0.18017399
		 0 0.18017399 0 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 1 0.083279997
		 1 0.083279997 1 0.18017399 1 0 0 0.083279997 0 0.083279997 0 0 0 1 0.10156401 1 0.10156401
		 1 0.20003501 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305 0 0.21743 0 0.21743
		 0 0.110396 0 0.110396 0 0 0 0 0.58204401 0 0.58204401 0 1 0 1 0 1 0.35629299 1 0.35629299
		 1 0.513457 1 0.513457 0.58204401 0.513358 0.58204401 0.513358 0 0.51322001 0 0.51322001
		 0 0.364896 0 0.364896 0 0.21743 0 0.21743 0.58204401 0.20730501 0.58204401 0.20730501
		 1 0.20003501 1 0.20003501 1 0.65606302 1 0.65606302 1 0.79184502 1 0.79184502 0.58204401
		 0.79359698 0.58204401 0.79359698 0 0.79603601 0 0.79603601 0 0.65809399 0 0.65809399
		 0 0.51322001 0 0.51322001 0.58204401 0.513358 0.58204401 0.513358 1 0.513457 1 0.513457
		 1 0.89376193 1 0.89376193 1 1 1 1 0.58204401 1 0.58204401 1 0 1 0 1 0 0.89590096
		 0 0.89590096 0 0.79603601 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698
		 1 0.79184502 1 0.79184502 0.88620687 0.15492 0.88620687 0.15492 0.88620687 0 0.88620687
		 1 0.88620687 0.58204401 0.88620687 0.58204401 0.88620687 0 0.11379317 0 0.11379317
		 0.15492 0.11379317 0.15492 0.11379317 0.305123 0.11379317 0.305123 0.11379317 0.39456001
		 0.11379317 0.39456001 0.11379317 0.48451701 0.11379317 0.48451701 0.11379317 0.57641298
		 0.11379317 0.57641298 0.11379317 0.66391098 0.11379317 0.66391098 0.11379317 0.82846701
		 0.11379317 0.82846701 0.11379317 0 0.11379317 1 0.11379317 0.58204401 0.11379317
		 0.58204401 0.88620687 1 0.11379317 1 0.88620687 0.82846701 0.88620687 0.82846701
		 0.88620687 0.66391098 0.88620687 0.66391098 0.88620687 0.57641298 0.88620687 0.57641298
		 0.88620687 0.48451701 0.88620687 0.48451701 0.88620687 0.39456001 0.88620687 0.39456001
		 0.88620687 0.305123 0.88620687 0.305123 0.88620687 0.58204401 0.88620687 0 0.77456802
		 0 0.77456802 0.58204401 0.22543199 0 0.11379317 0 0.11379317 0.58204401 0.22543199
		 0.58204401 0.11379317 0 0.11379317 0.15492;
	setAttr ".uvst[0].uvsp[3000:3249]" 0.22543199 0.15492 0.22543199 0 1 0.79184502
		 0.58204401 0.79359698 0.58204401 0.894656 0 0 0 0.101564 0.021691 0.107987 0.021691
		 0 0 0 0 0.15492 0.41795599 0.15492 0.41795599 0 0.18017399 1 0.18017399 0.58204401
		 0.083279997 0.58204401 0.83588099 0 0.81982601 0 0.81982601 0.58204401 0.83588099
		 0.58204401 0.81982601 0 0.81982601 0.15492 0.83588099 0.15095299 0.83588099 0 0.203403
		 0 0.18017399 0 0.18017399 0.15492 0.203403 0.15492 0.58204401 0 1 0 0.44805101 0.55194902
		 0.260786 0.32125899 0.97830999 0 1 0 0.44805101 0 0.53486699 0 0.18017399 0 0.18017399
		 0 0.18017399 0.58204401 0.18017399 0.58204401 0 0.58204401 0 1 0 1 0 0.58204401 0
		 0 0 0 0.083279997 0 0.083279997 0 0.18017399 0 0.18017399 0 0.18017399 0.58204401
		 0.18017399 0.58204401 0.18017399 1 0.18017399 1 0.083279997 1 0.083279997 1 0 0.51322001
		 0.58204401 0.513358 0.58204401 0.359889 0 0.21743 0.58204401 0.207305 0.58204401
		 0.105255 0 0.79603601 0.58204401 0.79359698 0.58204401 0.65691203 1 0.79184502 1
		 0.79184502 1 0.89376199 1 0.89376199 1 1 1 1 0.58204401 1 0.58204401 1 0 0.89590102
		 0 1 0 1 0 0.89590102 0.58204401 0.79359698 0 0.79603601 0 0.79603601 0.58204401 0.79359698
		 0 0.51322001 0 0.51322001 0 0.364896 0 0.364896 0.58204401 0.207305 0 0.21743 0 0.21743
		 0.58204401 0.207305 1 0.35629299 1 0.20003501 1 0.20003501 1 0.35629299 0.58204401
		 0.513358 1 0.513457 1 0.513457 0.58204401 0.513358 0 0.21743 0 0.21743 0 0.110396
		 0 0.110396 0.58204401 0 0 0 0 0 0.58204401 0 1 0.101564 1 0 1 0 1 0.101564 0.58204401
		 0.207305 1 0.20003501 1 0.20003501 0.58204401 0.207305 0 0.65809399 0 0.79603601
		 0 0.79603601 0 0.65809399 0.58204401 0.513358 0 0.51322001 0 0.51322001 0.58204401
		 0.513358 1 0.513457 1 0.513457 1 0.65606302 1 0.65606302 0.58204401 0.79359698 1
		 0.79184502 1 0.79184502 0.58204401 0.79359698 1 0.79184502 1 0.89376199 1 0.89376193
		 1 0.79184502 1 1 0.58204401 1 0.58204401 1 1 1 0 1 0 0.89590102 0 0.89590096 0 1
		 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698 0 0.79603601 0 0.51322001
		 0 0.364896 0 0.364896 0 0.51322001 0 0.21743 0.58204401 0.207305 0.58204401 0.20730501
		 0 0.21743 1 0.20003501 1 0.35629299 1 0.35629299 1 0.20003501 1 0.513457 0.58204401
		 0.513358 0.58204401 0.513358 1 0.513457 0 0.21743 0 0.110396 0 0.110396 0 0.21743
		 0 0 0.58204401 0 0.58204401 0 0 0 1 0 1 0.101564 1 0.10156401 1 0 1 0.20003501 0.58204401
		 0.207305 0.58204401 0.207305 1 0.20003501 0 0.79603601 0 0.65809399 0 0.65809399
		 0 0.79603601 0 0.51322001 0.58204401 0.513358 0.58204401 0.513358 0 0.51322001 1
		 0.513457 1 0.65606302 1 0.65606302 1 0.513457 1 0.79184502 0.58204401 0.79359698
		 0.58204401 0.79359698 1 0.79184502 0.81982601 0.82846701 0.81982601 0.66391098 0.796597
		 0.66391098 0.796597 0.82846701 1 0.82846701 1 0.66391098 0.41795599 0.66391098 0.41795599
		 0.82846701 0.88620687 0.82846701 0.88620687 0.66391098 0.77456802 0.66391098 0.77456802
		 0.82846701 0.81982601 0.39456001 0.81982601 0.305123 0.796597 0.305123 0.796597 0.39456001
		 1 0.39456001 1 0.305123 0.41795599 0.305123 0.41795599 0.39456001 0.88620687 0.39456001
		 0.88620687 0.305123 0.77456802 0.305123 0.77456802 0.39456001 0.18017399 0.82846701
		 0.18017399 0.66391098 0.16411901 0.67531103 0.16411901 0.83428502 1 0.89590102 1
		 0.79603601 0.97830999 0.78013003 0.97830999 0.88778299 0.18017399 0.305123 0.16411901
		 0.29575899 0.16411901 0.39115101 0.18017399 0.39456001 1 0.364896 1 0.21743 0.97830999
		 0.22798701 0.97830999 0.36846799 0.81982601 0.57641298 0.81982601 0.48451701 0.796597
		 0.48451701 0.796597 0.57641298 1 0.57641298 1 0.48451701 0.41795599 0.48451701 0.41795599
		 0.57641298 0.88620687 0.48451701 0.77456802 0.48451701 0.77456802 0.57641298 0.88620687
		 0.57641298 0.18017399 0.57641298 0.18017399 0.48451701 0.16411901 0.48709601 0.16411901
		 0.58350998 1 0.65809399;
	setAttr ".uvst[0].uvsp[3250:3499]" 1 0.51322001 0.97830999 0.50976402 0.97830999
		 0.64826101 0.148809 0 0.10074 0 0.10074 0.13139699 0.148809 0.145632 0.92566699 0
		 0.89925998 0 0.89925998 0.58204401 0.92566699 0.58204401 0.89925998 0 0.89925998
		 0.13529 0.92566699 0.128765 0.92566699 0 0.074332997 1 0.10074 1 0.10074 0.85725403
		 0.074332997 0.86682397 0.89925998 1 0.89925998 0.85819697 0.85119098 0.84020603 0.85119098
		 1 0.074332997 0.50151801 0.10074 0.49727601 0.10074 0.377689 0.074332997 0.37208
		 0.85119098 0.48951399 0.89925998 0.49717101 0.89925998 0.38148201 0.85119098 0.38939601
		 0.074332997 0.73906499 0.10074 0.72031403 0.10074 0.61152798 0.074332997 0.62320298
		 0.85119098 0.686912 0.89925998 0.722161 0.89925998 0.61242402 0.85119098 0.59063202
		 0.509399 0 0.62082899 0 0.68945098 0 0.67229402 0 0.18017399 1 0.18017399 0.58204401
		 0.18017399 0.58204401 0.18017399 1 0.10074 0 0.109382 0.052799001 0.080709003 0.183644
		 0.074332997 0 0.423098 0 0.509399 0 0.67229402 0 0.517892 0 0.250626 1 0.496263 1
		 0.496263 0.58204401 0.250626 0.58204401 0.74937397 0 0.50373697 0 0.50373697 0.58204401
		 0.74937397 0.58204401 0.74937397 0 0.50373697 0 0.50373697 0.15492 0.74937397 0.15492
		 0.496263 0 0.496263 0.15492 0.77456802 0.15492 0.77456802 0 0.50373697 1 0.50373697
		 0.82846701 0.22543199 0.82846701 0.22543199 1 0.250626 1 0.496263 1 0.496263 0.82846701
		 0.250626 0.82846701 0.22543199 0.48451701 0.50373697 0.48451701 0.50373697 0.39456001
		 0.22543199 0.39456001 0.250626 0.48451701 0.496263 0.48451701 0.496263 0.39456001
		 0.250626 0.39456001 0.50373697 0.66391098 0.50373697 0.57641298 0.22543199 0.57641298
		 0.22543199 0.66391098 0.250626 0.66391098 0.496263 0.66391098 0.496263 0.57641298
		 0.250626 0.57641298 0.496263 1 0.77456802 1 0.77456802 0.58204401 0.496263 0.58204401
		 0.50373697 0 0.22543199 0 0.22543199 0.58204401 0.50373697 0.58204401 0.50373697
		 0 0.22543199 0 0.22543199 0.15492 0.50373697 0.15492 0.496263 1 0.77456802 1 0.77456802
		 0.82846701 0.496263 0.82846701 0.496263 0.48451701 0.77456802 0.48451701 0.77456802
		 0.39456001 0.496263 0.39456001 0.496263 0.66391098 0.77456802 0.66391098 0.77456802
		 0.57641298 0.496263 0.57641298 0.88620687 0 0.77456802 0 0.77456802 0.15492 0.88620687
		 0.15492 0.11379317 1 0.22543199 1 0.22543199 0.82846701 0.11379317 0.82846701 0.22543199
		 0.48451701 0.22543199 0.39456001 0.11379317 0.39456001 0.11379317 0.48451701 0.22543199
		 0.66391098 0.22543199 0.57641298 0.11379317 0.57641298 0.11379317 0.66391098 0.18017399
		 1 0.18017399 1 0.083279997 1 0.083279997 1 0 0.58204401 0 1 0 1 0 0.58204401 0.083279997
		 0 0 0 0 0 0.083279997 0 0.18017399 0 0.18017399 0 0.18017399 0.58204401 0.18017399
		 0.58204401 1 1 1 1 1 0.89376199 1 0.89376199 0 1 0.58204401 1 0.58204401 1 0 1 0
		 0.79603601 0 0.89590102 0 0.89590102 0 0.79603601 1 0.79184502 1 0.79184502 0.58204401
		 0.79359698 0.58204401 0.79359698 0 0.51322001 0 0.51322001 0 0.65809399 0 0.65809399
		 1 0.513457 1 0.513457 0.58204401 0.513358 0.58204401 0.513358 1 0.79184502 1 0.65606302
		 1 0.65606302 1 0.79184502 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698
		 0 0.79603601 0 0.21743 0 0.21743 0 0.364896 0 0.364896 1 0.20003501 1 0.20003501
		 0.58204401 0.207305 0.58204401 0.207305 1 0.513457 1 0.513457 1 0.35629299 1 0.35629299
		 0 0.51322001 0.58204401 0.513358 0.58204401 0.513358 0 0.51322001 0 0 0 0 0 0.110396
		 0 0.110396 1 0 1 0 0.58204401 0 0.58204401 0 1 0.20003501 1 0.101564 1 0.101564 1
		 0.20003501 0 0.21743 0.58204401 0.207305 0.58204401 0.207305 0 0.21743 0 0 0 0.110396
		 0 0.110396 0 0 1 0 1 0 0.58204401 0 0.58204401 0 1 0.20003501 1 0.20003501 1 0.101564
		 1 0.10156401 0 0.21743 0 0.21743 0.58204401 0.207305 0.58204401 0.207305 0 0.21743
		 0 0.21743 0 0.364896 0 0.364896 1 0.20003501 0.58204401 0.207305 0.58204401 0.20730501
		 1 0.20003501 1 0.513457 1 0.513457 1 0.35629299 1 0.35629299 0 0.51322001 0 0.51322001
		 0.58204401 0.513358 0.58204401 0.513358 0 0.51322001 0 0.65809399 0 0.65809399;
	setAttr ".uvst[0].uvsp[3500:3749]" 0 0.51322001 1 0.513457 0.58204401 0.513358
		 0.58204401 0.513358 1 0.513457 1 0.79184502 1 0.79184502 1 0.65606302 1 0.65606302
		 0 0.79603601 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698 1 1 1 1 1 0.89376199
		 1 0.89376193 0 1 0.58204401 1 0.58204401 1 0 1 0 0.79603601 0 0.89590102 0 0.89590096
		 0 0.79603601 1 0.79184502 0.58204401 0.79359698 0.58204401 0.79359698 1 0.79184502
		 0 0 0 0.58204401 0 0.58204401 0 0 0.18017399 0 0.18017399 0 0.083279997 0 0.083279997
		 0 0.18017399 1 0.18017399 1 0.18017399 0.58204401 0.18017399 0.58204401 0 1 0.083279997
		 1 0.083279997 1 0 1 0 1 0 1 0.083279997 1 0.083279997 1 0 0 0 0.58204401 0 0.58204401
		 0 0 0.18017399 0 0.18017399 0 0.083279997 0 0.083279997 0 0.18017399 1 0.18017399
		 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 1 0.18017399 1 0.18017399
		 0.58204401 0.18017399 0.58204401 0.083279997 1 0 1 0.025062 0.80528498 0.096758001
		 0.84406298 0.85126299 0 0.81230003 0 0.74843001 0 0.79447198 0 1 1 0.93207097 0.93207097
		 0.96046197 0.54250699 1 0.58204401 0 0 0.067929 0 0.067929 0.15492 0 0.15492 0 0.305123
		 0.067929 0.305123 0.067929 0.39456001 0 0.39456001 0 0.57641298 0 0.48451701 0.067929
		 0.48451701 0.067929 0.57641298 0 0.66391098 0.067929 0.66391098 0.067929 0.82846701
		 0 0.82846701 0 0 0.067929 0.067929 0.028391 0.61043602 0 0.58204401 1 1 0.93207097
		 1 0.93207097 0.82846701 1 0.82846701 1 0.66391098 0.93207097 0.66391098 0.93207097
		 0.57641298 1 0.57641298 1 0.39456001 1 0.48451701 0.93207097 0.48451701 0.93207097
		 0.39456001 1 0.15492 1 0.305123 0.93207097 0.305123 0.93207097 0.15492 1 0 1 0 0.708978
		 0.291022 0.41795599 0 1 0.305123 0.5 0.305123 0.5 0.15492 1 0.15492 1 0.48451701
		 0.5 0.48451701 0.5 0.39456001 1 0.39456001 1 0.66391098 0.5 0.66391098 0.5 0.57641298
		 1 0.57641298 1 1 0.5 1 0.5 0.82846701 1 0.82846701 0 1 0 1 0.208978 0.791022 0.41795599
		 1 0 0.66391098 0.5 0.66391098 0.5 0.82846701 0 0.82846701 0 0.48451701 0.5 0.48451701
		 0.5 0.57641298 0 0.57641298 0 0.305123 0.5 0.305123 0.5 0.39456001 0 0.39456001 0
		 0 0.5 0 0.5 0.15492 0 0.15492 1 0 0.96046197 0.54250699 0.708978 0.291022 1 0 0.5
		 0.305123 0.067929 0.305123 0.067929 0.15492 0.5 0.15492 0.5 0.48451701 0.067929 0.48451701
		 0.067929 0.39456001 0.5 0.39456001 0.067929 0.66391098 0.067929 0.57641298 0.5 0.57641298
		 0.5 0.66391098 0.067929 1 0.067929 0.82846701 0.5 0.82846701 0.5 1 0 1 0.028391 0.61043602
		 0.208978 0.791022 0 1 0.5 0.66391098 0.93207097 0.66391098 0.93207097 0.82846701
		 0.5 0.82846701 0.5 0.48451701 0.93207097 0.48451701 0.93207097 0.57641298 0.5 0.57641298
		 0.5 0.305123 0.93207097 0.305123 0.93207097 0.39456001 0.5 0.39456001 0.93207097
		 0 0.93207097 0.15492 0.5 0.15492 0.5 0 0.044059001 0 0.044059001 0.114611 0.074332997
		 0.123577 0.074332997 0 0.92566699 0 0.95594102 0 0.62439799 0 0.74556601 0 0.95594102
		 1 0.95594102 0.87941098 0.92566699 0.86808097 0.92566699 1 0.92566699 0.501378 0.95594102
		 0.50620103 0.95594102 0.37215 0.92566699 0.37713501 0.95594102 0.76372701 0.95594102
		 0.63812 0.92566699 0.62439603 0.92566699 0.74152601 0.97830898 0 0.95594102 0 0.95594102
		 0.58204401 0.97830999 0.58204401 0.97830999 0 0.95594102 0 0.95594102 0.121283 0.97830999
		 0.115756 0.021691 1 0.044059001 1 0.044059001 0.87779498 0.021691 0.88590199 0.044059001
		 0.50638002 0.044059001 0.36565 0.021691 0.36090001 0.021691 0.50997299 0.021691 0.77644402
		 0.044059001 0.76056099 0.044059001 0.63658601 0.021691 0.646474 0.18017399 1 0.18017399
		 0.58204401 0.18017399 0.58204401 0.18017399 1 0.044059001 0 0.047839001 0.333644
		 0.023551 0.44447601 0.021691 0 0.25106001 0 0.32416201 0 0.34088799 0 0.21010099
		 0 0.18017399 0.77489603 0.110657 0.68325102 0.12946799 0.46561 0.18017399 0.62022501
		 0.250626 0;
	setAttr ".uvst[0].uvsp[3750:3999]" 0.250626 0.15492 0.496263 0.15492 0.496263
		 0 0.74937397 1 0.74937397 0.82846701 0.50373697 0.82846701 0.50373697 1 0.50373697
		 0.48451701 0.74937397 0.48451701 0.74937397 0.39456001 0.50373697 0.39456001 0.74937397
		 0.66391098 0.74937397 0.57641298 0.50373697 0.57641298 0.50373697 0.66391098 0.250626
		 1 0.250626 0.58204401 0.203403 0.58204401 0.203403 1 0.74937397 0 0.74937397 0.58204401
		 0.796597 0.58204401 0.796597 0 0.796597 0 0.74937397 0 0.74937397 0.15492 0.796597
		 0.15492 0.203403 1 0.250626 1 0.250626 0.82846701 0.203403 0.82846701 0.203403 0.48451701
		 0.250626 0.48451701 0.250626 0.39456001 0.203403 0.39456001 0.203403 0.66391098 0.250626
		 0.66391098 0.250626 0.57641298 0.203403 0.57641298 0.85119098 0 0.85119098 0.58204401
		 0.89925998 0.58204401 0.89925998 0 0.85119098 0 0.85119098 0.14716899 0.89925998
		 0.13529 0.89925998 0 0.148809 0 0.154991 0.144743 0.109382 0.052799001 0.10074 0
		 0.10074 1 0.148809 1 0.148809 0.83983397 0.10074 0.85725403 0.148809 0.489555 0.148809
		 0.38789901 0.10074 0.377689 0.10074 0.49727601 0.148809 0.68618202 0.148809 0.59027898
		 0.10074 0.61152798 0.10074 0.72031403 0.16411901 0 0.148809 0 0.148809 0.145632 0.16411901
		 0.150166 0.85119098 1 0.85119098 0.84020603 0.83588099 0.83447599 0.83588099 1 0.83588099
		 0.487075 0.85119098 0.48951399 0.85119098 0.38939601 0.83588099 0.39191699 0.83588099
		 0.67568398 0.85119098 0.686912 0.85119098 0.59063202 0.83588099 0.583691 0.74843001
		 0 0.68945098 0 0.72771299 0 0.78183001 0 0.18017399 0 0.18017399 0 0.18017399 0.58204401
		 0.18017399 0.58204401 0.18017399 0.31413901 0.166631 0.223041 0.154991 0.144743 0.18017399
		 0.17677 0 0.65809399 0.58204401 0.65691203 0 0.51322001 0 0.51322001 0 0.65809399
		 0 0.65809399 0 0.51322001 1 0.65606302 1 0.65606302 1 0.79184502 1 0.79184502 0.81982601
		 0.66391098 0.81982601 0.57641298 0.796597 0.57641298 0.796597 0.66391098 1 0.66391098
		 1 0.57641298 0.41795599 0.57641298 0.41795599 0.66391098 0.88620687 0.57641298 0.77456802
		 0.57641298 0.77456802 0.66391098 0.88620687 0.66391098 0.18017399 0.66391098 0.18017399
		 0.57641298 0.16411901 0.58350998 0.16411901 0.67531103 1 0.79603601 1 0.65809399
		 0.97830999 0.64826101 0.97830999 0.78013003 0.044059001 0.63658601 0.074332997 0.62320298
		 0.074332997 0.50151801 0.044059001 0.50638002 0.85119098 0.48951399 0.85119098 0.59063202
		 0.89925998 0.61242402 0.89925998 0.49717101 0.22543199 0.48451701 0.22543199 0.57641298
		 0.50373697 0.57641298 0.50373697 0.48451701 0.250626 0.57641298 0.496263 0.57641298
		 0.496263 0.48451701 0.250626 0.48451701 0.496263 0.57641298 0.77456802 0.57641298
		 0.77456802 0.48451701 0.496263 0.48451701 0.11379317 0.48451701 0.11379317 0.57641298
		 0.22543199 0.57641298 0.22543199 0.48451701 0 0.79603601 0 0.65809399 0 0.65809399
		 0 0.79603601 1 0.65606302 1 0.65606302 1 0.513457 1 0.513457 0 0.65809399 0 0.79603601
		 1 0.65606302 1 0.513457 0 0.66391098 0 0.57641298 0.067929 0.57641298 0.067929 0.66391098
		 1 0.48451701 1 0.57641298 0.93207097 0.57641298 0.93207097 0.48451701 1 0.48451701
		 1 0.57641298 0.5 0.57641298 0.5 0.48451701 0 0.66391098 0 0.57641298 0.5 0.57641298
		 0.5 0.66391098 0.5 0.48451701 0.5 0.57641298 0.067929 0.57641298 0.067929 0.48451701
		 0.5 0.66391098 0.5 0.57641298 0.93207097 0.57641298 0.93207097 0.66391098 0.89925998
		 0.49717101 0.89925998 0.61242402 0.92566699 0.62439603 0.92566699 0.501378 0 0.65606302
		 0.021691 0.646474 0.021691 0.50997299 0 0.513457 0.50373697 0.48451701 0.50373697
		 0.57641298 0.74937397 0.57641298 0.74937397 0.48451701 0.18017399 0.57641298 0.203403
		 0.57641298 0.203403 0.48451701 0.18017399 0.48451701 0.10074 0.61152798 0.148809
		 0.59027898 0.148809 0.489555 0.10074 0.49727601 0.81982601 0.57641298 0.83588099
		 0.583691 0.83588099 0.487075 0.81982601 0.48451701 0 0.364896 0.58204401 0.359889
		 0 0.21743 0 0.21743 0 0.364896 0 0.364896 0 0.21743 1 0.513457 1 0.35629299 1 0.35629299
		 1 0.513457 0.81982601 0.48451701 0.81982601 0.39456001 0.796597 0.39456001 0.796597
		 0.48451701 1 0.48451701 1 0.39456001 0.41795599 0.39456001 0.41795599 0.48451701
		 0.88620687 0.39456001 0.77456802 0.39456001 0.77456802 0.48451701 0.88620687 0.48451701
		 0.18017399 0.48451701 0.18017399 0.39456001 0.16411901 0.39115101 0.16411901 0.48709601
		 1 0.364896 0.97830999 0.36846799 0.97830999 0.50976402 1 0.51322001 0.044059001 0.36565
		 0.074332997 0.37208 0.074332997 0.24338999 0.044059001 0.225733 0.22543199 0.305123
		 0.22543199 0.39456001 0.50373697 0.39456001 0.50373697 0.305123 0.250626 0.305123
		 0.250626 0.39456001 0.496263 0.39456001 0.496263 0.305123 0.496263 0.305123;
	setAttr ".uvst[0].uvsp[4000:4249]" 0.496263 0.39456001 0.77456802 0.39456001
		 0.77456802 0.305123 0.11379317 0.305123 0.11379317 0.39456001 0.22543199 0.39456001
		 0.22543199 0.305123 0 0.51322001 0 0.364896 0 0.364896 0 0.51322001 1 0.20003501
		 1 0.35629299 1 0.35629299 1 0.20003501 0 0.364896 0 0.51322001 1 0.35629299 1 0.20003501
		 0 0.48451701 0 0.39456001 0.067929 0.39456001 0.067929 0.48451701 1 0.305123 1 0.39456001
		 0.93207097 0.39456001 0.93207097 0.305123 1 0.305123 1 0.39456001 0.5 0.39456001
		 0.5 0.305123 0 0.48451701 0 0.39456001 0.5 0.39456001 0.5 0.48451701 0.5 0.39456001
		 0.067929 0.39456001 0.067929 0.305123 0.5 0.305123 0.5 0.48451701 0.5 0.39456001
		 0.93207097 0.39456001 0.93207097 0.48451701 0.89925998 0.266462 0.89925998 0.38148201
		 0.92566699 0.37713501 0.92566699 0.253609 0 0.35629299 0.021691 0.36090001 0.021691
		 0.212687 0 0.20003501 0.50373697 0.305123 0.50373697 0.39456001 0.74937397 0.39456001
		 0.74937397 0.305123 0.18017399 0.305123 0.18017399 0.39456001 0.203403 0.39456001
		 0.203403 0.305123 0.10074 0.377689 0.148809 0.38789901 0.148809 0.28682899 0.10074
		 0.258793 0.81982601 0.305123 0.81982601 0.39456001 0.83588099 0.39191699 0.83588099
		 0.29730901 0.22543199 0.305123 0.22543199 0.15492 0.11379317 0.15492 0.11379317 0.305123
		 0.044059001 0.225733 0.044059001 0.114611 0.021691 0.107987 0.021691 0.212687 1 0.15492
		 0.41795599 0.15492 0.41795599 0.305123 1 0.305123 0.85119098 0.289857 0.85119098
		 0.14716899 0.83588099 0.15095299 0.83588099 0.29730901 0.250626 0.305123 0.250626
		 0.15492 0.203403 0.15492 0.203403 0.305123 0 0.110396 0.58204401 0.105255 0 0 0 0.110396
		 0 0.110396 0 0 0 0 1 0.20003501 1 0.101564 1 0.101564 1 0.20003501 0.148809 0.28682899
		 0.148809 0.145632 0.10074 0.13139699 0.10074 0.258793 0.95594102 0.121283 0.92566699
		 0.128765 0.92566699 0.253609 0.95594102 0.238874 0.74937397 0.15492 0.50373697 0.15492
		 0.50373697 0.305123 0.74937397 0.305123 0.77456802 0.305123 0.77456802 0.15492 0.496263
		 0.15492 0.496263 0.305123 0.50373697 0.15492 0.22543199 0.15492 0.22543199 0.305123
		 0.50373697 0.305123 0.88620687 0.305123 0.88620687 0.15492 0.77456802 0.15492 0.77456802
		 0.305123 0 0.21743 0 0.110396 0 0.110396 0 0.21743 1 0 1 0.101564 1 0.101564 1 0
		 0 0.110396 0 0.21743 1 0.101564 1 0 0 0.305123 0 0.15492 0.067929 0.15492 0.067929
		 0.305123 1 0 1 0.15492 0.93207097 0.15492 0.93207097 0 1 0 1 0.15492 0.5 0.15492
		 0.5 0 0 0.305123 0 0.15492 0.5 0.15492 0.5 0.305123 0.5 0.15492 0.067929 0.15492
		 0.067929 0 0.5 0 0.5 0.305123 0.5 0.15492 0.93207097 0.15492 0.93207097 0.305123
		 0.10074 0.258793 0.10074 0.13139699 0.074332997 0.123577 0.074332997 0.24338999 1
		 0.110396 0.97830999 0.115756 0.97830999 0.22798701 1 0.21743 0.496263 0.305123 0.496263
		 0.15492 0.250626 0.15492 0.250626 0.305123 0.81982601 0.15492 0.796597 0.15492 0.796597
		 0.305123 0.81982601 0.305123 0.89925998 0.266462 0.89925998 0.13529 0.85119098 0.14716899
		 0.85119098 0.289857 0.18017399 0.15492 0.16411901 0.150166 0.16411901 0.29575899
		 0.18017399 0.305123 1 0.89376199 0.58204401 0.894656 1 1 1 0.89376199 1 0.89376199
		 1 1 1 1 0 0.79603601 0 0.89590102 0 0.89590102 0 0.79603601 0.81982601 1 0.81982601
		 0.82846701 0.796597 0.82846701 0.796597 1 1 1 1 0.82846701 0.41795599 0.82846701
		 0.41795599 1 0.88620687 1 0.88620687 0.82846701 0.77456802 0.82846701 0.77456802
		 1 0.18017399 1 0.18017399 0.82846701 0.16411901 0.83428502 0.16411901 1 1 1 1 0.89590102
		 0.97830999 0.88778299 0.97830898 1 0.044059001 0.87779498 0.074332997 0.86682397
		 0.074332997 0.73906499 0.044059001 0.76056099 0.85119098 0.686912 0.85119098 0.84020603
		 0.89925998 0.85819697 0.89925998 0.722161 0.22543199 0.66391098 0.22543199 0.82846701
		 0.50373697 0.82846701 0.50373697 0.66391098 0.250626 0.82846701 0.496263 0.82846701
		 0.496263 0.66391098 0.250626 0.66391098 0.496263 0.82846701 0.77456802 0.82846701
		 0.77456802 0.66391098 0.496263 0.66391098 0.11379317 0.82846701 0.22543199 0.82846701
		 0.22543199 0.66391098 0.11379317 0.66391098 1 0.89376199 1 0.89376199 1 0.79184502
		 1 0.79184502 0 1 0 0.89590102 0 0.89590102 0 1 1 0.89376199 1 0.79184502 0 0.89590102
		 0 1 0 1;
	setAttr ".uvst[0].uvsp[4250:4499]" 0 0.82846701 0.067929 0.82846701 0.067929
		 1 1 0.82846701 0.93207097 0.82846701 0.93207097 0.66391098 1 0.66391098 1 0.66391098
		 1 0.82846701 0.5 0.82846701 0.5 0.66391098 0 1 0 0.82846701 0.5 0.82846701 0.5 1
		 0.5 0.66391098 0.5 0.82846701 0.067929 0.82846701 0.067929 0.66391098 0.5 0.82846701
		 0.93207097 0.82846701 0.93207097 1 0.5 1 0.89925998 0.722161 0.89925998 0.85819697
		 0.92566699 0.86808097 0.92566699 0.74152601 0 0.89376199 0.021691 0.88590199 0.021691
		 0.77644402 0 0.79184502 0.50373697 0.66391098 0.50373697 0.82846701 0.74937397 0.82846701
		 0.74937397 0.66391098 0.18017399 0.82846701 0.203403 0.82846701 0.203403 0.66391098
		 0.18017399 0.66391098 0.10074 0.85725403 0.148809 0.83983397 0.148809 0.68618202
		 0.10074 0.72031403 0.81982601 0.82846701 0.83588099 0.83447599 0.83588099 0.67568398
		 0.81982601 0.66391098 0.88620687 1 0.88620687 0.58204401 0.77456802 0.58204401 0.77456802
		 1 0.22543199 1 0.22543199 0.58204401 0.11379317 0.58204401 0.11379317 1 0.58204401
		 0.894656 0.58204401 0.79359698 0 0.79603601 1 0 0.41795599 0 0.41795599 0.15492 1
		 0.15492 0 0.58204401 0.083279997 0.58204401 0 0 0.85119098 1 0.85119098 0.58204401
		 0.83588099 0.58204401 0.83588099 1 0 0 0.58204401 0 0.260786 0.32125899 0 0 0.18017399
		 0.58204401 0.18017399 0.58204401 0.18017399 1 0.18017399 1 0 0.58204401 0 0.58204401
		 0 0 0 0 0.18017399 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 1 0.58204401
		 0.359889 0.58204401 0.513358 1 0.513457 0.58204401 0.105255 0.58204401 0.207305 1
		 0.20003501 0.58204401 0.65691203 0.58204401 0.79359698 1 0.79184502 0 1 0.58204401
		 1 0.58204401 1 0 1 0.58204401 0.79359698 0.58204401 0.79359698 1 0.79184502 1 0.79184502
		 0.58204401 0.207305 0.58204401 0.207305 1 0.20003501 1 0.20003501 0.58204401 0.513358
		 0.58204401 0.513358 0 0.51322001 0 0.51322001 0.58204401 0 0.58204401 0 1 0 1 0 0.58204401
		 0.207305 0.58204401 0.207305 0 0.21743 0 0.21743 0.58204401 0.513358 0.58204401 0.513358
		 1 0.513457 1 0.513457 0.58204401 0.79359698 0.58204401 0.79359698 0 0.79603601 0
		 0.79603601 0 0.82846701 0.41795599 0.82846701 0.41795599 0.66391098 0 0.66391098
		 0.41795599 0.39456001 0.41795599 0.305123 0 0.305123 0 0.39456001 0 0.57641298 0.41795599
		 0.57641298 0.41795599 0.48451701 0 0.48451701 0.95594102 0.58204401 0.92566699 0.58204401
		 0.92566699 1 0.95594102 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399
		 0 0.18017399 0 0.250626 0 0.250626 0.58204401 0.496263 0.58204401 0.496263 0 0.74937397
		 1 0.74937397 0.58204401 0.50373697 0.58204401 0.50373697 1 0.496263 0 0.496263 0.58204401
		 0.77456802 0.58204401 0.77456802 0 0.50373697 1 0.50373697 0.58204401 0.22543199
		 0.58204401 0.22543199 1 0 0 0 0.58204401 0 0.58204401 0 0 0.18017399 0.58204401 0.18017399
		 0.58204401 0.18017399 1 0.18017399 1 1 1 0.58204401 1 0.58204401 1 1 1 0.58204401
		 0.79359698 0.58204401 0.79359698 0 0.79603601 0 0.79603601 0.58204401 0.513358 0.58204401
		 0.513358 0 0.51322001 0 0.51322001 1 0.79184502 0.58204401 0.79359698 0.58204401
		 0.79359698 1 0.79184502 0.58204401 0.207305 0.58204401 0.207305 0 0.21743 0 0.21743
		 1 0.513457 0.58204401 0.513358 0.58204401 0.513358 1 0.513457 0.58204401 0 0.58204401
		 0 0 0 0 0 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305 1 0.20003501 0.58204401
		 0 0 0 0.58204401 0.207305 1 0.20003501 0.58204401 0.207305 0 0.21743 0.58204401 0.513358
		 1 0.513457 0.58204401 0.513358 0 0.51322001 0.58204401 0.79359698 1 0.79184502 0.58204401
		 1 1 1 0.58204401 0.79359698 0 0.79603601 0 1 0 0.58204401 0 0.58204401 0 1 0.18017399
		 0.58204401 0.18017399 0.58204401 0.18017399 0 0.18017399 0 0 1 0 0.58204401 0 0.58204401
		 0 1 0.18017399 0 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 0 0.18017399
		 0.58204401 0.18017399 0.58204401 0.18017399 0 0.18017399 0 1 0 1 0.58204401 0.96046197
		 0.54250699 1 0 0 1 0 0.58204401 0.028391 0.61043602 0 1 0 0 0.41795599 0 0.708978
		 0.291022 0.5 0.5;
	setAttr ".uvst[0].uvsp[4500:4749]" 1 1 0.41795599 1 0.208978 0.791022 0.5 0.5
		 0.708978 0.291022 0.96046197 0.54250699 0.93207097 0.93207097 0.5 0.5 0.208978 0.791022
		 0.028391 0.61043602 0.067929 0.067929 0.5 0.5 1 0.58204401 0.97830999 0.58204401
		 0.97830999 1 1 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 0 0.18017399
		 0 0.18017399 0.58204401 0.203403 0.58204401 0.203403 0 0.18017399 0 0.81982601 0.58204401
		 0.796597 0.58204401 0.796597 1 0.81982601 1 0.89925998 1 0.89925998 0.58204401 0.85119098
		 0.58204401 0.85119098 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 1
		 0.18017399 1 0.58204401 0.513358 0.58204401 0.65691203 1 0.513457 0 0.66391098 0.41795599
		 0.66391098 0.41795599 0.57641298 0 0.57641298 0.58204401 0.207305 0.58204401 0.359889
		 1 0.20003501 0.41795599 0.48451701 0.41795599 0.39456001 0 0.39456001 0 0.48451701
		 0.41795599 0.305123 0.41795599 0.15492 0 0.15492 0 0.305123 0.58204401 0 0.58204401
		 0.105255 1 0 0.58204401 1 0.58204401 0.894656 0 1 0 1 0.41795599 1 0.41795599 0.82846701
		 0 0.82846701 1 1 0.58204401 0.894656 0.58204401 1 0.58204401 0.894656 0 0.79603601
		 0 0.89590102 0 1 0.58204401 0.894656 0 0.89590102 1 0.79184502 0.58204401 0.894656
		 1 0.89376199 1 1 1 1 1 0.89376199 1 0.89376199 0 1 0.58204401 1 0.58204401 1 0 1
		 0 0.79603601 0 0.79603601 0 0.89590102 0 0.89590102 1 0.79184502 1 0.79184502 0.58204401
		 0.79359698 0.58204401 0.79359698 1 0.79184502 1 0.79184502 1 0.89376199 1 0.89376199
		 0 1 0 0.89590102 0 0.89590102 0 1 1 1 0.58204401 1 0.58204401 1 1 1 0 0.79603601
		 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698 0 0.51322001 0 0.51322001
		 0 0.65809399 0 0.65809399 1 0.513457 1 0.513457 0.58204401 0.513358 0.58204401 0.513358
		 1 0.79184502 1 0.65606302 1 0.65606302 1 0.79184502 0 0.79603601 0.58204401 0.79359698
		 0.58204401 0.79359698 0 0.79603601 0 0.79603601 0 0.65809399 0 0.65809399 0 0.79603601
		 1 0.513457 1 0.513457 1 0.65606302 1 0.65606302 0 0.51322001 0 0.51322001 0.58204401
		 0.513358 0.58204401 0.513358 1 0.79184502 0.58204401 0.79359698 0.58204401 0.79359698
		 1 0.79184502 0 0.51322001 0.58204401 0.65691203 0.58204401 0.513358 0.58204401 0.65691203
		 1 0.79184502 1 0.65606302 1 0.513457 0.58204401 0.65691203 1 0.65606302 0 0.79603601
		 0.58204401 0.65691203 0 0.65809399 0 0.21743 0 0.21743 0 0.364896 0 0.364896 1 0.20003501
		 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305 1 0.513457 1 0.513457 1 0.35629299
		 1 0.35629299 0 0.51322001 0.58204401 0.513358 0.58204401 0.513358 0 0.51322001 0
		 0.51322001 0 0.364896 0 0.364896 0 0.51322001 1 0.20003501 1 0.20003501 1 0.35629299
		 1 0.35629299 0 0.21743 0 0.21743 0.58204401 0.207305 0.58204401 0.207305 1 0.513457
		 0.58204401 0.513358 0.58204401 0.513358 1 0.513457 0 0 0 0 0 0.110396 0 0.110396
		 1 0 1 0 0.58204401 0 0.58204401 0 1 0.20003501 1 0.20003501 1 0.101564 1 0.101564
		 0 0.21743 0.58204401 0.207305 0.58204401 0.207305 0 0.21743 0 0.21743 0 0.110396
		 0 0.110396 0 0.21743 1 0 1 0 1 0.101564 1 0.101564 0 0 0 0 0.58204401 0 0.58204401
		 0 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305 1 0.20003501 0 0.21743 0.58204401
		 0.359889 0.58204401 0.207305 0.58204401 0.359889 1 0.513457 1 0.35629299 0 0.51322001
		 0.58204401 0.359889 0 0.364896 1 0.20003501 0.58204401 0.359889 1 0.35629299 0 0.21743
		 0.58204401 0.105255 0 0.110396 1 0 0.58204401 0.105255 1 0.101564 0.58204401 0.105255
		 1 0.20003501 1 0.101564 0 0 0.58204401 0.105255 0.58204401 0 0.083279997 1 0.083279997
		 0.58204401 0 1 0.083279997 0 0.083279997 0 0.18017399 0 0.18017399 0 0 1 0.083279997
		 1 0.083279997 1;
	setAttr ".uvst[0].uvsp[4750:4999]" 0 1 0.67229402 0 0.68945098 0 0.74843001 0
		 0.81230003 0 0.34088799 0 0.517892 0 0.59936702 0 0.35526299 0 0 1 0.083279997 1
		 0.083279997 1 0 1 0.083279997 0 0.083279997 0 0.18017399 0 0.18017399 0 0 0 0.083279997
		 0 0.083279997 0 0 0 0.083279997 1 0.083279997 1 0.18017399 1 0.18017399 1 0.083279997
		 1 0.083279997 1 0.18017399 1 0.18017399 1 0.083279997 0 0.083279997 0 0 0 0 0 0.18017399
		 1 0.083279997 1 0.096758001 0.84406298 0.18017399 0.88918 0.14587601 0.27576101 0.166631
		 0.223041 0.18017399 0.31413901 0.18017399 0.48530599 0.083279997 0 0.21010099 0 0.174897
		 0 0 0 0.116398 0.095660001 0.14587601 0.27576101 0.12946799 0.46561 0.085886002 0.33272001
		 0.083279997 0 0.083279997 0.58204401 0.18017399 0 0 1 0.083279997 1 0.083279997 1
		 0 1 0 0 0 0.58204401 0 0.58204401 0 0 0.18017399 0 0.083279997 0 0.083279997 0 0.18017399
		 0 0.18017399 1 0.18017399 1 0.18017399 0.58204401 0.18017399 0.58204401 0 1 0 0.58204401
		 0 0.58204401 0 1 0.18017399 0 0.18017399 0 0.18017399 0.58204401 0.18017399 0.58204401
		 0.18017399 1 0.18017399 1 0.083279997 1 0.083279997 1 0 0 0.083279997 0 0.083279997
		 0 0 0 0 0 0.083279997 0.58204401 0.083279997 0 0 1 0.083279997 0.58204401 0 0.58204401
		 0.18017399 0 0.083279997 0.58204401 0.18017399 0.58204401 0.18017399 1 0.083279997
		 0.58204401 0.083279997 1 0 0.110396 0 0.21743 0 0.21743 0 0.110396 0.58204401 0 0.58204401
		 0 0 0 0 0 1 0.101564 1 0.101564 1 0 1 0 0.58204401 0.207305 1 0.20003501 1 0.20003501
		 0.58204401 0.207305 0 0 0 0 0 0.110396 0 0.110396 1 0.20003501 1 0.20003501 1 0.101564
		 1 0.101564 1 0 1 0 0.58204401 0 0.58204401 0 0 0.21743 0.58204401 0.207305 0.58204401
		 0.207305 0 0.21743 0 0.364896 0 0.51322001 0 0.51322001 0 0.364896 0.58204401 0.207305
		 0 0.21743 0 0.21743 0.58204401 0.207305 1 0.35629299 1 0.35629299 1 0.20003501 1
		 0.20003501 0.58204401 0.513358 1 0.513457 1 0.513457 0.58204401 0.513358 0 0.21743
		 0 0.364896 0 0.364896 0 0.21743 1 0.513457 1 0.513457 1 0.35629299 1 0.35629299 1
		 0.20003501 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305 0 0.51322001 0.58204401
		 0.513358 0.58204401 0.513358 0 0.51322001 0 0.65809399 0 0.79603601 0 0.79603601
		 0 0.65809399 0.58204401 0.513358 0 0.51322001 0 0.51322001 0.58204401 0.513358 1
		 0.65606302 1 0.65606302 1 0.513457 1 0.513457 0.58204401 0.79359698 0.58204401 0.79359698
		 1 0.79184502 1 0.79184502 0 0.51322001 0 0.65809399 0 0.65809399 0 0.51322001 1 0.79184502
		 1 0.79184502 1 0.65606302 1 0.65606302 1 0.513457 1 0.513457 0.58204401 0.513358
		 0.58204401 0.513358 0 0.79603601 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698
		 0 0.110396 0 0.21743 0 0.21743 0 0.110396 0.58204401 0 0 0 0 0 0.58204401 0 1 0.101564
		 1 0 1 0 1 0.101564 0.58204401 0.207305 1 0.20003501 1 0.20003501 0.58204401 0.207305
		 0 0 0 0.110396 0 0.110396 0 0 1 0.20003501 1 0.101564 1 0.101564 1 0.20003501 1 0
		 0.58204401 0 0.58204401 0 1 0 0 0.21743 0.58204401 0.207305 0.58204401 0.207305 0
		 0.21743 0 0.364896 0 0.51322001 0 0.51322001 0 0.364896 0.58204401 0.207305 0 0.21743
		 0 0.21743 0.58204401 0.207305 1 0.35629299 1 0.20003501 1 0.20003501 1 0.35629299
		 0.58204401 0.513358 1 0.513457 1 0.513457 0.58204401 0.513358 0 0.21743 0 0.364896
		 0 0.364896 0 0.21743 1 0.513457 1 0.35629299 1 0.35629299 1 0.513457 1 0.20003501
		 0.58204401 0.207305;
	setAttr ".uvst[0].uvsp[5000:5249]" 0.58204401 0.207305 1 0.20003501 0 0.51322001
		 0.58204401 0.513358 0.58204401 0.513358 0 0.51322001 0 0.65809399 0 0.79603601 0
		 0.79603601 0 0.65809399 0.58204401 0.513358 0 0.51322001 0 0.51322001 0.58204401
		 0.513358 1 0.65606302 1 0.513457 1 0.513457 1 0.65606302 0.58204401 0.79359698 1
		 0.79184502 1 0.79184502 0.58204401 0.79359698 0 0.51322001 0 0.65809399 0 0.65809399
		 0 0.51322001 1 0.79184502 1 0.65606302 1 0.65606302 1 0.79184502 1 0.513457 0.58204401
		 0.513358 0.58204401 0.513358 1 0.513457 0 0.79603601 0.58204401 0.79359698 0.58204401
		 0.79359698 0 0.79603601 1 0.89376199 1 0.89376199 1 0.79184502 1 0.79184502 0.58204401
		 1 1 1 1 1 0.58204401 1 0 0.89590102 0 1 0 1 0 0.89590102 0.58204401 0.79359698 0
		 0.79603601 0 0.79603601 0.58204401 0.79359698 1 1 1 1 1 0.89376199 1 0.89376199 0
		 0.79603601 0 0.89590102 0 0.89590102 0 0.79603601 0 1 0.58204401 1 0.58204401 1 0
		 1 1 0.79184502 1 0.79184502 0.58204401 0.79359698 0.58204401 0.79359698 1 1 1 1 1
		 0.89376199 1 0.89376199 0 1 0.58204401 1 0.58204401 1 0 1 0 0.79603601 0 0.89590102
		 0 0.89590102 0 0.79603601 1 0.79184502 1 0.79184502 0.58204401 0.79359698 0.58204401
		 0.79359698 1 0.79184502 1 0.79184502 1 0.89376199 1 0.89376199 0 1 0 0.89590102 0
		 0.89590102 0 1 1 1 0.58204401 1 0.58204401 1 1 1 0 0.79603601 0 0.79603601 0.58204401
		 0.79359698 0.58204401 0.79359698 0 0.110396 0 0.110396 0 0.21743 0 0.21743 0.58204401
		 0 0 0 0 0 0.58204401 0 1 0.101564 1 0 1 0 1 0.101564 0.58204401 0.207305 1 0.20003501
		 1 0.20003501 0.58204401 0.207305 0 0 0 0 0 0.110396 0 0.110396 1 0.20003501 1 0.20003501
		 1 0.101564 1 0.101564 1 0 1 0 0.58204401 0 0.58204401 0 0 0.21743 0 0.21743 0.58204401
		 0.207305 0.58204401 0.207305 0 0.364896 0 0.364896 0 0.51322001 0 0.51322001 0.58204401
		 0.207305 0 0.21743 0 0.21743 0.58204401 0.207305 1 0.35629299 1 0.20003501 1 0.20003501
		 1 0.35629299 0.58204401 0.513358 1 0.513457 1 0.513457 0.58204401 0.513358 0 0.21743
		 0 0.21743 0 0.364896 0 0.364896 1 0.513457 1 0.513457 1 0.35629299 1 0.35629299 1
		 0.20003501 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305 0 0.51322001 0 0.51322001
		 0.58204401 0.513358 0.58204401 0.513358 0 0.65809399 0 0.79603601 0 0.79603601 0
		 0.65809399 0.58204401 0.513358 0 0.51322001 0 0.51322001 0.58204401 0.513358 1 0.65606302
		 1 0.65606302 1 0.513457 1 0.513457 0.58204401 0.79359698 0.58204401 0.79359698 1
		 0.79184502 1 0.79184502 0 0.51322001 0 0.65809399 0 0.65809399 0 0.51322001 1 0.79184502
		 1 0.79184502 1 0.65606302 1 0.65606302 1 0.513457 1 0.513457 0.58204401 0.513358
		 0.58204401 0.513358 0 0.79603601 0 0.79603601 0.58204401 0.79359698 0.58204401 0.79359698
		 1 0.89376199 1 0.89376199 1 0.79184502 1 0.79184502 0.58204401 1 0.58204401 1 1 1
		 1 1 0 0.89590102 0 1 0 1 0 0.89590102 0.58204401 0.79359698 0 0.79603601 0 0.79603601
		 0.58204401 0.79359698 1 1 1 1 1 0.89376199 1 0.89376199 0 0.79603601 0 0.89590102
		 0 0.89590102 0 0.79603601 0 1 0.58204401 1 0.58204401 1 0 1 1 0.79184502 1 0.79184502
		 0.58204401 0.79359698 0.58204401 0.79359698 0 0.58204401 0 1 0 1 0 0.58204401 0.083279997
		 0 0 0 0 0 0.083279997 0 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 0
		 0.18017399 0 0.083279997 1 0.18017399 1 0.18017399 1 0.083279997 1 0 0 0 0 0 0.58204401
		 0 0.58204401;
	setAttr ".uvst[0].uvsp[5250:5499]" 0.18017399 1 0.18017399 0.58204401 0.18017399
		 0.58204401 0.18017399 1 0.18017399 0 0.18017399 0 0.083279997 0 0.083279997 0 0 1
		 0 1 0.083279997 1 0.083279997 1 0 0 0 0.58204401 0 0.58204401 0 0 0.18017399 0 0.083279997
		 0 0.083279997 0 0.18017399 0 0.18017399 1 0.18017399 1 0.18017399 0.58204401 0.18017399
		 0.58204401 0 1 0.083279997 1 0.083279997 1 0 1 0 1 0 0.58204401 0 0.58204401 0 1
		 0.18017399 0 0.18017399 0 0.18017399 0.58204401 0.18017399 0.58204401 0 0 0.083279997
		 0 0.083279997 0 0 0 0.18017399 1 0.083279997 1 0.083279997 1 0.18017399 1 0.083279997
		 1 0.18017399 1 0.18017399 1 0.083279997 1 0 0.58204401 0 1 0 1 0 0.58204401 0.083279997
		 0 0 0 0 0 0.083279997 0 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 0
		 0.18017399 0 0 0 0 0.58204401 0 0.58204401 0 0 0.18017399 1 0.18017399 1 0.18017399
		 0.58204401 0.18017399 0.58204401 0 1 0.083279997 1 0.083279997 1 0 1 0.18017399 0
		 0.18017399 0 0.083279997 0 0.083279997 0 0.021691 0 0.021691 0.107987 0.044059001
		 0.114611 0.044059001 0 0.95594102 0 0.97830999 0 0.53486699 0 0.62439799 0 0.97830999
		 0.88778299 0.97830999 0.78013003 0.95594102 0.76372701 0.95594102 0.87941098 0.97830999
		 0.36846799 0.97830999 0.22798701 0.95594102 0.238874 0.95594102 0.37215 0.97830999
		 0.64826101 0.97830999 0.50976402 0.95594102 0.50620103 0.95594102 0.63812 0.096758001
		 0.84406298 0.025062 0.80528498 0.050907001 0.60448301 0.110657 0.68325102 1 0 0.97830898
		 0 0.97830999 0.58204401 1 0.58204401 1 0 0.97830999 0 0.97830999 0.115756 1 0.110396
		 0 1 0.021691 1 0.021691 0.88590199 0 0.89376199 0.021691 0.50997299 0.021691 0.36090001
		 0 0.35629299 0 0.513457 0 0.79184502 0.021691 0.77644402 0.021691 0.646474 0 0.65606302
		 0.18017399 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 1 0.021691 0
		 0.023551 0.44447601 0 0.55194902 0 0 0.25106001 0 0.21010099 0 0.083279997 0 0.18017399
		 0 0.97830999 0.78013003 0.97830999 0.64826101 0.95594102 0.63812 0.95594102 0.76372701
		 0.044059001 0.50638002 0.021691 0.50997299 0.021691 0.646474 0.044059001 0.63658601
		 0.95594102 0.50620103 0.97830999 0.50976402 0.97830999 0.36846799 0.95594102 0.37215
		 0.044059001 0.225733 0.021691 0.212687 0.021691 0.36090001 0.044059001 0.36565 0.021691
		 0.212687 0.021691 0.107987 0 0.101564 0 0.20003501 0.95594102 0.238874 0.97830999
		 0.22798701 0.97830999 0.115756 0.95594102 0.121283 0.97830898 1 0.97830999 0.88778299
		 0.95594102 0.87941098 0.95594102 1 0.044059001 0.76056099 0.021691 0.77644402 0.021691
		 0.88590199 0.044059001 0.87779498 0.95594102 1 0.97830999 1 0.97830999 0.58204401
		 0.95594102 0.58204401 0.18017399 0 0.18017399 0 0.18017399 0.58204401 0.18017399
		 0.58204401 0.18017399 0.88918 0.096758001 0.84406298 0.110657 0.68325102 0.18017399
		 0.77489603 0.35526299 0 0.174897 0 0.21010099 0 0.34088799 0 0.203403 0 0.203403
		 0.15492 0.250626 0.15492 0.250626 0 0.796597 0.82846701 0.796597 0.66391098 0.74937397
		 0.66391098 0.74937397 0.82846701 0.74937397 0.39456001 0.796597 0.39456001 0.796597
		 0.305123 0.74937397 0.305123 0.796597 0.57641298 0.796597 0.48451701 0.74937397 0.48451701
		 0.74937397 0.57641298 0.203403 1 0.203403 0.58204401 0.18017399 0.58204401 0.18017399
		 1 0.796597 0 0.796597 0.58204401 0.81982601 0.58204401 0.81982601 0 0.796597 0 0.796597
		 0.15492 0.81982601 0.15492 0.81982601 0 0.18017399 1 0.203403 1 0.203403 0.82846701
		 0.18017399 0.82846701 0.18017399 0.48451701 0.203403 0.48451701 0.203403 0.39456001
		 0.18017399 0.39456001 0.18017399 0.66391098 0.203403 0.66391098 0.203403 0.57641298
		 0.18017399 0.57641298 0.796597 0.66391098 0.796597 0.57641298 0.74937397 0.57641298
		 0.74937397 0.66391098 0.250626 0.48451701 0.203403 0.48451701 0.203403 0.57641298
		 0.250626 0.57641298 0.796597 0.48451701 0.796597 0.39456001 0.74937397 0.39456001
		 0.74937397 0.48451701 0.250626 0.305123 0.203403 0.305123 0.203403 0.39456001 0.250626
		 0.39456001 0.203403 0.305123 0.203403 0.15492 0.18017399 0.15492 0.18017399 0.305123
		 0.74937397 0.305123 0.796597 0.305123 0.796597 0.15492 0.74937397 0.15492 0.796597
		 1 0.796597 0.82846701 0.74937397 0.82846701 0.74937397 1 0.250626 0.66391098 0.203403
		 0.66391098;
	setAttr ".uvst[0].uvsp[5500:5749]" 0.203403 0.82846701 0.250626 0.82846701 0.250626
		 0 0.203403 0 0.203403 0.58204401 0.250626 0.58204401 0.74937397 1 0.796597 1 0.796597
		 0.58204401 0.74937397 0.58204401 0.85119098 0 0.83588099 0 0.83588099 0.58204401
		 0.85119098 0.58204401 0.83588099 0 0.83588099 0.15095299 0.85119098 0.14716899 0.85119098
		 0 0.148809 0.83983397 0.16411901 0.83428502 0.16411901 0.67531103 0.148809 0.68618202
		 0.148809 0.38789901 0.16411901 0.39115101 0.16411901 0.29575899 0.148809 0.28682899
		 0.148809 0.59027898 0.16411901 0.58350998 0.16411901 0.48709601 0.148809 0.489555
		 0.18017399 0 0.16411901 0 0.16411901 0.150166 0.18017399 0.15492 0.81982601 1 0.83588099
		 1 0.83588099 0.83447599 0.81982601 0.82846701 0.81982601 0.48451701 0.83588099 0.487075
		 0.83588099 0.39191699 0.81982601 0.39456001 0.81982601 0.66391098 0.83588099 0.67568398
		 0.83588099 0.583691 0.81982601 0.57641298 0.148809 0.68618202 0.16411901 0.67531103
		 0.16411901 0.58350998 0.148809 0.59027898 0.85119098 0.48951399 0.83588099 0.487075
		 0.83588099 0.583691 0.85119098 0.59063202 0.16411901 0.48709601 0.16411901 0.39115101
		 0.148809 0.38789901 0.148809 0.489555 0.83588099 0.29730901 0.83588099 0.39191699
		 0.85119098 0.38939601 0.85119098 0.289857 0.83588099 0.29730901 0.83588099 0.15095299
		 0.81982601 0.15492 0.81982601 0.305123 0.16411901 0.29575899 0.16411901 0.150166
		 0.148809 0.145632 0.148809 0.28682899 0.148809 1 0.16411901 1 0.16411901 0.83428502
		 0.148809 0.83983397 0.85119098 0.686912 0.83588099 0.67568398 0.83588099 0.83447599
		 0.85119098 0.84020603 0.83588099 1 0.83588099 0.58204401 0.81982601 0.58204401 0.81982601
		 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 0 0.18017399 0 0.18017399
		 1 0.18017399 1 0.18017399 0.58204401 0.18017399 0.58204401 0.83588099 0 0.78183001
		 0 0.761181 0 0.81982601 0 0.148809 0 0.16411901 0 0.166428 0.078809001 0.154991 0.144743
		 0.154991 0.144743 0.166428 0.078809001 0.18017399 0.091683 0.18017399 0.17677 0.18017399
		 0.091683 0.166428 0.078809001 0.16411901 0 0.18017399 0 0 0.58204401 0.260786 0.32125899
		 0.44805101 0.55194902 0 1 0.53486699 0 0.44805101 0 0 0 0.174897 0 0.050907001 0.60448301
		 0.047839001 0.333644 0.080709003 0.183644 0.085886002 0.33272001 0.89925998 0 0.85126299
		 0 0.79447198 0 0.85119098 0 0.85126299 0 0.74556601 0 0.59936702 0 0.81230003 0 0.025062
		 0.80528498 0.023551 0.44447601 0.047839001 0.333644 0.050907001 0.60448301 0 0 0.260786
		 0.32125899 0 0.58204401 0 0 0.62439799 0 0.53486699 0 0.174897 0 0.35526299 0 0 1
		 0 0.55194902 0.023551 0.44447601 0.025062 0.80528498 0.116398 0.095660001 0.109382
		 0.052799001 0.154991 0.144743 0.166631 0.223041 0.116398 0.095660001 0.166631 0.223041
		 0.14587601 0.27576101 0.79447198 0 0.78183001 0 0.83588099 0 0.85119098 0 0.78183001
		 0 0.72771299 0 0.70675498 0 0.761181 0 0.72771299 0 0.68945098 0 0.62082899 0 0.70675498
		 0 0.74843001 0 0.78183001 0 0.79447198 0 0.85119098 0.289857 0.85119098 0.38939601
		 0.89925998 0.38148201 0.89925998 0.266462 0.95594102 0 0.92566699 0 0.92566699 0.58204401
		 0.95594102 0.58204401 0.95594102 0 0.92566699 0 0.92566699 0.128765 0.95594102 0.121283
		 0.044059001 1 0.074332997 1 0.074332997 0.86682397 0.044059001 0.87779498 0.074332997
		 0.50151801 0.074332997 0.37208 0.044059001 0.36565 0.044059001 0.50638002 0.044059001
		 0.76056099 0.074332997 0.73906499 0.074332997 0.62320298 0.044059001 0.63658601 0.18017399
		 1 0.18017399 0.58204401 0.18017399 0.58204401 0.18017399 1 0.074332997 0 0.080709003
		 0.183644 0.047839001 0.333644 0.044059001 0 0.32416201 0 0.423098 0 0.517892 0 0.34088799
		 0 0.10074 0 0.074332997 0 0.074332997 0.123577 0.10074 0.13139699 0.89925998 0 0.92566699
		 0 0.74556601 0 0.85126299 0 0.92566699 1 0.92566699 0.86808097 0.89925998 0.85819697
		 0.89925998 1 0.89925998 0.49717101 0.92566699 0.501378 0.92566699 0.37713501 0.89925998
		 0.38148201 0.92566699 0.74152601 0.92566699 0.62439603 0.89925998 0.61242402 0.89925998
		 0.722161 0.18017399 0.62022501 0.12946799 0.46561 0.14587601 0.27576101 0.18017399
		 0.48530599 0.10074 0.49727601 0.074332997 0.50151801 0.074332997 0.62320298 0.10074
		 0.61152798 0.92566699 0.501378 0.92566699 0.62439603 0.95594102 0.63812 0.95594102
		 0.50620103 0.10074 0.258793 0.074332997 0.24338999 0.074332997 0.37208 0.10074 0.377689
		 0.92566699 0.253609 0.92566699 0.37713501 0.95594102 0.37215 0.95594102 0.238874
		 0.89925998 0.266462 0.92566699 0.253609 0.92566699 0.128765 0.89925998 0.13529 0.074332997
		 0.24338999 0.074332997 0.123577 0.044059001 0.114611 0.044059001 0.225733 0.10074
		 0.72031403 0.074332997 0.73906499;
	setAttr ".uvst[0].uvsp[5750:5979]" 0.074332997 0.86682397 0.10074 0.85725403
		 0.92566699 0.74152601 0.92566699 0.86808097 0.95594102 0.87941098 0.95594102 0.76372701
		 0.92566699 1 0.92566699 0.58204401 0.89925998 0.58204401 0.89925998 1 0.18017399
		 0 0.18017399 0 0.18017399 0.58204401 0.18017399 0.58204401 0.81230003 0 0.59936702
		 0 0.517892 0 0.67229402 0 0.085886002 0.33272001 0.12946799 0.46561 0.110657 0.68325102
		 0.050907001 0.60448301 0.085886002 0.33272001 0.080709003 0.183644 0.109382 0.052799001
		 0.116398 0.095660001 0.35526299 0 0.59936702 0 0.74556601 0 0.62439799 0 0 0.51322001
		 0 0.51322001 0 0.65809399 0 0.65809399 1 0.513457 1 0.513457 0.58204401 0.513358
		 0.58204401 0.513358 1 0.79184502 1 0.65606302 1 0.65606302 1 0.79184502 0 0.79603601
		 0.58204401 0.79359698 0.58204401 0.79359698 0 0.79603601 0 0.79603601 0 0.65809399
		 0 0.65809399 0 0.79603601 1 0.513457 1 0.513457 1 0.65606302 1 0.65606302 0 0.51322001
		 0 0.51322001 0.58204401 0.513358 0.58204401 0.513358 1 0.79184502 0.58204401 0.79359698
		 0.58204401 0.79359698 1 0.79184502 0 0.21743 0 0.364896 0 0.364896 0 0.21743 1 0.20003501
		 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305 1 0.513457 1 0.513457 1 0.35629299
		 1 0.35629299 0 0.51322001 0.58204401 0.513358 0.58204401 0.513358 0 0.51322001 0
		 0.51322001 0 0.364896 0 0.364896 0 0.51322001 1 0.20003501 1 0.20003501 1 0.35629299
		 1 0.35629299 0 0.21743 0 0.21743 0.58204401 0.207305 0.58204401 0.207305 1 0.513457
		 0.58204401 0.513358 0.58204401 0.513358 1 0.513457 0 0 0 0 0 0.110396 0 0.110396
		 1 0 1 0 0.58204401 0 0.58204401 0 1 0.20003501 1 0.101564 1 0.101564 1 0.20003501
		 0 0.21743 0.58204401 0.207305 0.58204401 0.207305 0 0.21743 0 0.21743 0 0.110396
		 0 0.110396 0 0.21743 1 0 1 0 1 0.101564 1 0.101564 0 0 0 0 0.58204401 0 0.58204401
		 0 1 0.20003501 0.58204401 0.207305 0.58204401 0.207305 1 0.20003501 0 1 0 1 0.083279997
		 1 0.083279997 1 0 0 0 0.58204401 0 0.58204401 0 0 0.18017399 0 0.18017399 0 0.083279997
		 0 0.083279997 0 0.18017399 1 0.18017399 1 0.18017399 0.58204401 0.18017399 0.58204401
		 0 1 0 0.58204401 0 0.58204401 0 1 0.18017399 0 0.18017399 0 0.18017399 0.58204401
		 0.18017399 0.58204401 0.18017399 1 0.083279997 1 0.083279997 1 0.18017399 1 0 0 0.083279997
		 0 0.083279997 0 0 0 1 0.20003501 1 0.101564 0 0.21743 0.58204401 0.207305 0 0 0 0.110396
		 1 0 0.58204401 0 1 0.513457 1 0.35629299 0 0.51322001 0.58204401 0.513358 0 0.21743
		 0 0.364896 1 0.20003501 0.58204401 0.207305 1 0.79184502 1 0.65606302 0 0.79603601
		 0.58204401 0.79359698 0 0.51322001 0 0.65809399 1 0.513457 0.58204401 0.513358 1
		 1 1 0.89376199 0 1 0.58204401 1 0 0.79603601 0 0.89590102 1 0.79184502 0.58204401
		 0.79359698 1 0 1 0.15492 1 1 1 0.58204401 1 0.58204401 1 0 0 0 0 0.15492 0 0.15492
		 0 0.305123 0 0.305123 0 0.39456001 0 0.39456001 0 0.48451701 0 0.48451701 0 0.57641298
		 0 0.57641298 0 0.66391098 0 0.82846701 0 0.66391098 0 1 0 0.82846701 0 0 0 0.58204401
		 0 0.58204401 0 1 1 1 1 0.82846701 1 0.82846701 1 0.66391098 1 0.57641298 1 0.66391098
		 1 0.48451701 1 0.57641298 1 0.39456001 1 0.48451701 1 0.39456001 1 0.305123 1 0.15492
		 1 0.305123;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1530 ".vt";
	setAttr ".vt[0:165]"  -22.28066063 0.20522299 -6.56669378 -22.60590172 -1.59691203 -6.56739521
		 -22.52496147 -1.52016497 -1.54278195 -22.15569496 0.25200701 -1.51479101 -30.95066261 -0.86319798 -1.51463306
		 -30.80116463 -1.042155981 -6.56669283 -31.24365425 0.79631102 -6.56669283 -31.44641304 0.86365402 -1.51322806
		 -23.69610786 -2.71733189 -6.56743193 -23.68807411 -2.55309296 -1.54570794 -30.83197212 0.66239297 24.4498806
		 -30.70738792 0.29741901 24.39977455 -31.17772102 0.206953 24.45884895 -22.001493454 1.56968296 19.78759956
		 -23.22180367 2.059010029 20.20324898 -23.38132286 2.21540594 19.27579498 -22.23053169 1.81409097 18.89311981
		 -22.54215431 1.67903101 -28.24905777 -23.59378242 2.42943311 -28.33241653 -23.51842308 0.30438 -28.58252335
		 -22.37996864 0.21690799 -28.33241653 -17.34488869 0.137181 23.078948975 -17.22364998 -0.19562501 23.033529282
		 -17.61299706 -0.211022 23.34292412 -28.99108696 -0.70300502 12.88649845 -28.82652473 -0.69137299 12.25377655
		 -29.25512886 0.60098702 12.24548912 -29.46731758 0.58664101 12.85928917 -23.62793541 -1.42716503 12.44518471
		 -24.43504906 -2.069257021 12.38297272 -24.36796761 -2.19848704 13.25110912 -23.59007454 -1.90458798 13.28041553
		 -23.60453224 1.52709198 11.50467491 -23.61786079 1.50153196 12.44824982 -24.43235207 2.20156002 12.38551903
		 -24.42123222 2.2196281 11.4543314 -21.70526314 0.501077 20.03465271 -21.44813728 1.39557397 19.29042244
		 -21.35111046 0.46347201 19.63700676 -22.2312603 -0.76709503 18.89804459 -22.0096912384 -0.61348498 19.78733444
		 -21.44185448 -0.512573 19.3012352 -21.71258736 -0.79117799 18.49032211 -23.17312813 -1.36433196 12.89263725
		 -23.04930687 0.077794001 12.61124802 -23.39387321 0.112695 12.12966919 -21.063615799 0.38815299 19.3142128
		 -20.99894142 1.25420904 18.88683319 -20.46170616 1.050799966 19.47671509 -20.62418175 0.322604 19.73952484
		 -20.98090172 -0.65320098 18.90663719 -20.44979668 -0.63636303 19.521698 -19.68010139 -1.086511016 19.060317993
		 -20.11699867 -1.230533 18.23456573 -19.37026024 -1.021577001 17.59609795 -18.97835732 -0.89537799 18.48186111
		 -18.71698189 -0.11102 18.22831345 -19.080259323 -0.10198 17.31842041 -19.3770504 0.72807699 17.58240128
		 -18.99725533 0.61638701 18.44007111 -19.72680473 1.07652998 18.94870186 -20.14556694 1.215505 18.17742729
		 -26.13372612 -0.68207598 28.29379845 -26.27184486 -0.28933501 28.38687706 -25.75072289 -0.36463401 28.58253098
		 -21.78592873 -0.66263998 27.61937904 -21.95366859 -0.221305 27.69548035 -21.31113625 -0.25129899 27.73447037
		 -29.14162636 -0.57207501 27.61267281 -29.27989006 -0.130308 27.61075211 -28.76564217 -0.2305 27.76953697
		 -29.29666328 1.91234601 19.66121101 -29.67879295 1.72273803 20.18795395 -30.31612968 1.85744703 19.35491943
		 -30.037096024 1.92489195 18.44352341 -30.61427879 1.541682 17.56078911 -30.89941216 1.544258 18.63282394
		 -31.15598488 0.81991303 18.43222618 -30.91496468 0.73944801 17.33058548 -30.042741776 -0.78526902 18.44310379
		 -30.65494728 -0.26260701 17.56073189 -30.91757774 -0.103936 18.63247299 -30.31004524 -0.57697201 19.35330582
		 -29.42917061 0.68160599 20.095760345 -29.31898689 -0.78941101 19.65626526 -29.68118858 -0.48138699 20.18453979
		 -29.60977745 0.71123803 20.4552536 -27.067956924 -0.81339997 20.66119385 -26.85835457 -0.499318 21.56337738
		 -25.87889671 -0.83716899 21.5071907 -25.85435295 -1.12282395 20.53868103 -24.53191566 0.77289599 21.13807869
		 -24.60612297 -0.83887899 20.69727325 -24.87721825 -0.49582601 21.57130051 -24.67056847 0.82699901 21.76205063
		 -25.78904152 2.46971989 20.54191208 -24.50979042 2.089766979 20.70102692 -24.78854561 1.95378304 21.59182549
		 -25.81147194 2.31027007 21.5340519 -27.11049461 0.78461701 21.11138535 -27.054231644 2.1315589 20.66675186
		 -26.83933449 1.96950996 21.58467484 -27.018102646 0.83060402 21.75646591 -24.14289284 -0.54776102 21.60898781
		 -23.078519821 -0.88214302 21.2912426 -23.29089928 -1.13698006 20.20196915 -22.0041065216 -0.59700203 20.99656296
		 -21.70721245 0.50269198 21.042057037 -21.98674965 1.45937502 21.0030841827 -23.0051364899 1.86818004 21.29693604
		 -24.046674728 1.78657198 21.61856842 -24.25920296 0.73842198 21.81049728 -28.21833992 -1.14266801 20.060022354
		 -29.23129845 -0.54711002 20.84096336 -28.3568058 -0.91435701 21.13214874 -27.43826103 -0.55015802 21.51468658
		 -27.29316139 0.80360597 21.74138832 -27.42255211 1.92826402 21.56865883 -28.31020927 2.15247202 21.20287323
		 -28.19186592 2.26366806 20.068000793 -29.17963219 1.81950402 20.89525986 -29.39407158 0.74250901 20.96821976
		 -30.23326683 1.45792782 22.38474274 -30.85097122 1.68020558 22.23058128 -31.51827812 1.43900812 22.064304352
		 -31.7501545 0.7712099 22.0092506409 -31.51782799 -0.047117401 22.03452301 -30.85685349 -0.35959077 22.18798447
		 -30.24331284 -0.10515528 22.35155106 -30.034488678 0.74983925 22.41208649 -26.58637428 -0.016026501 25.024580002
		 -25.87372589 -0.2640245 25.00033950806 -25.14655495 -0.012131501 25.033792496 -24.87302017 0.74895751 25.1153183
		 -25.073911667 1.38430309 25.17476273 -25.81041908 1.58919001 25.19069672 -26.56295967 1.38025308 25.16519356
		 -26.80839539 0.74402249 25.098278046 -23.048675537 -0.1858035 24.44195366 -22.29351616 -0.43442822 24.26479912
		 -21.50895119 -0.18273756 24.081996918 -21.23669434 0.54384828 24.027450562 -21.49060059 1.1375947 24.093261719
		 -22.24133301 1.35740602 24.27428818 -22.98674774 1.17516768 24.45517731 -23.27297783 0.56723988 24.50816536
		 -29.37993813 -0.02714536 24.066448212 -28.6558876 -0.33495215 24.11215973 -27.90324783 -0.039225228 24.24752808
		 -27.66176605 0.88962233 24.38718224 -27.90143967 1.65532207 24.45855331 -28.63594627 1.89618719 24.39707756
		 -29.35230255 1.65724421 24.2799263 -29.59901047 0.89885151 24.15505219 -28.30573463 -1.655509 12.29833221
		 -27.67671776 -2.31817102 12.34565735 -27.71621513 -2.35993099 11.41205883 -28.38189507 -1.68303001 11.37900925
		 -29.88834572 -2.33010411 -28.33241653 -28.84351921 -3.093523979 -28.33242416 -28.77974129 0.431281 -28.58252335
		 -29.79651451 0.595249 -28.58252335 -29.82161522 3.16869402 -6.56669283 -28.74725533 3.55637598 -6.56669617
		 -28.5128727 3.29538107 -1.51321006 -29.77228737 2.91560411 -1.513219;
	setAttr ".vt[166:331]" -25.76080132 -2.50717592 12.3930378 -25.17167091 -2.3908391 12.38350296
		 -25.17708778 -2.47206807 11.44495773 -25.76266289 -2.57249689 11.44657326 -25.78565025 -3.26940203 -28.33242416
		 -24.75898552 -3.094888926 -28.33242416 -24.65377235 0.39388701 -28.58252335 -25.6467495 0.450728 -28.58252335
		 -25.8437748 3.72360301 -6.56669188 -24.86133003 3.48322701 -6.56669092 -24.92648125 3.24972391 -1.51319802
		 -25.82331276 3.43526196 -1.51319802 -28.274786 2.22256088 12.29922485 -27.67168999 2.57416892 12.34662533
		 -27.79701042 2.57161093 13.14296246 -28.41142845 2.21319389 13.010967255 -29.098428726 -1.095342994 18.72197342
		 -29.82737541 -0.94299901 17.71265411 -25.1936779 2.60216689 12.39179611 -25.14135933 2.66857505 13.27363491
		 -25.75856972 2.75953603 13.28110218 -25.7577877 2.70281601 12.39400673 -24.68382835 -1.22663701 19.64229965
		 -25.83960533 -1.32341099 19.57735062 -26.98990822 -2.4977901 12.37140083 -26.31328392 -2.51602197 12.38968945
		 -26.33293343 -2.58573699 11.4441309 -27.015108109 -2.560009 11.43079567 -27.84692192 -3.26867199 -28.33242416
		 -26.79523659 -3.30684805 -28.33242416 -26.65779305 0.483917 -28.58252335 -27.78227425 0.45000899 -28.58252335
		 -26.80545235 3.81770301 -6.56669188 -26.66148949 3.50554204 -1.51319897 -27.55953026 3.43477011 -1.51320505
		 -27.78505516 3.72325206 -6.56669283 -26.98905754 2.68381405 12.37236881 -26.31255531 2.71132994 12.39065742
		 -26.36673927 2.75717497 13.27003288 -27.084302902 2.704319 13.21896362 -26.96636772 -1.14693105 19.61223984
		 -28.065717697 -1.32715094 19.14967155 -23.38351631 2.064815044 14.1628952 -23.0055561066 2.24265909 15.91519642
		 -23.9333477 2.5868969 16.070611954 -24.27820015 2.42295003 14.061540604 -29.94336128 -0.59914899 15.46018982
		 -29.69907951 -0.687756 14.78512192 -30.1051693 0.563465 14.67798233 -30.28682518 0.60171098 15.31923294
		 -23.069753647 -2.13531995 15.91478825 -23.97138405 -2.09611702 16.096736908 -23.79590034 -1.72492099 17.13294411
		 -22.78555107 -1.72369397 16.87741089 -29.85403633 1.605757 15.46019077 -29.59708977 1.61767697 14.78512287
		 -29.047708511 2.17646408 15.23594856 -29.29714012 2.12648296 16.038900375 -29.0850811 -1.40033901 15.23594761
		 -28.58039284 -1.56693196 13.68971443 -29.14801216 -0.71409798 13.48988724 -26.72600365 2.77184296 17.28043365
		 -26.61916924 2.88221097 16.19009399 -25.765028 2.92893195 16.23379517 -25.76848412 2.84368205 17.32966614
		 -26.4217968 -2.27170801 14.10864162 -26.62730217 -1.65805697 16.19009399 -25.7968998 -1.65154195 16.23379517
		 -25.77329445 -2.28721595 14.12707233 -28.58990288 2.44146395 16.66872978 -28.35979652 2.53724098 15.71810913
		 -27.51372337 2.74383092 16.0035858154 -27.69123268 2.6430769 17.031959534 -27.92493248 -2.12232089 13.90237999
		 -28.3741703 -1.76883495 15.71810913 -27.52165031 -1.73820698 16.0035858154 -27.17858696 -2.26080608 14.026310921
		 -21.18275642 -1.37109995 14.69834518 -22.029600143 -1.37488902 13.79480457 -22.28190804 -1.866014 14.16360378
		 -21.70321846 -1.90192795 15.17800617 -21.13726234 1.0076010227 14.70393562 -20.95092964 -0.132668 14.47512531
		 -20.44150734 -0.127367 15.10874176 -20.67513847 0.96970999 15.36196899 -22.48367119 2.056499004 15.75421333
		 -22.25893211 1.98456895 16.63143158 -22.75451851 2.16041899 16.87284088 -20.70071983 -1.35163903 15.35872841
		 -21.31347466 -1.81197202 15.90622139 -23.58767128 1.46039796 9.56196213 -23.05132103 1.586169 4.71261311
		 -22.75614738 0.22070099 4.6764822 -23.32843208 0.14439601 9.49171638 -29.15568733 -0.70515901 9.53567123
		 -30.051660538 -0.83562797 4.68324518 -30.50371361 0.77807897 4.71137285 -29.59129906 0.64135998 9.53709984
		 -23.6113224 -1.31798899 9.52520943 -23.11582756 -1.36722302 4.57757378 -24.037942886 -2.30458999 4.54412079
		 -24.34998894 -2.14641404 9.520504 -24.039464951 2.37667108 4.71364594 -23.68980598 2.58411098 -1.51320302
		 -22.5072422 1.70951402 -1.51320899 -29.14423561 -1.96206605 4.57696915 -29.7776165 -2.29060602 -1.54279304
		 -29.13065147 1.72946203 9.53864002 -30.042898178 1.61537504 4.7121191 -29.1168499 2.60293603 4.712708
		 -28.51925087 2.3268981 9.54676628 -26.66687965 -3.46153307 -1.54577994 -26.50264549 -3.055763006 4.54200506
		 -25.78548241 -3.021162987 4.54202223 -25.82271767 -3.42421007 -1.54577994 -26.36598396 2.83348894 9.56312275
		 -26.48168373 3.12478495 4.71379709 -25.79287148 3.083472013 4.71381521 -25.76695061 2.80380702 9.56372643
		 -28.13536263 -2.75681496 4.54376888 -27.28980446 -3.005740881 4.54180717 -27.5614109 -3.42132998 -1.54578602
		 -28.52105522 -3.2045691 -1.54571402 -27.78433418 2.68522501 9.55525398 -28.099344254 2.96974993 4.71329308
		 -27.27194786 3.083405972 4.71356106 -27.063337326 2.80310893 9.55986118 -30.95033073 1.91280794 -1.51322806
		 -22.6054554 1.66904199 -6.56669378 -23.69616127 2.67550492 -6.56669188 -29.82173729 -2.67709899 -6.56739378
		 -25.8437748 -3.74499798 -6.56743097 -26.80558586 -3.79365706 -6.56743288 -27.78509331 -3.74400902 -6.56743288
		 -28.74745369 -3.55209303 -6.56743288 -18.15465355 0.36622649 20.43862343 -18.032907486 0.33383599 20.74699402
		 -18.68057442 0.67171299 21.067024231 -18.81799126 0.72560048 20.77572632 -19.63284111 0.098968998 21.23917007
		 -19.42496109 0.66233402 21.099727631 -19.27182961 0.60519803 21.37408257 -19.47002602 0.070869997 21.51637077
		 -18.76040649 -0.90348601 20.8713913 -19.39359665 -0.66656101 21.15431595 -19.22197533 -0.65573299 21.44436646
		 -18.61186409 -0.89038199 21.16541862 -18.12919807 -0.73549604 20.48236465 -18.0022640228 -0.72188503 20.79703903
		 -17.77866936 -0.170874 20.65347481 -17.89669418 -0.1626865 20.33171082 -31.61328697 1.32466996 22.82947159
		 -31.58004951 1.40085924 22.46428108 -30.91237831 1.63294911 22.61909866 -30.96793938 1.54738796 22.97408485
		 -31.57717323 -0.063852802 22.41997147 -31.81083107 0.74172682 22.40577126 -31.83501625 0.689183 22.76184082
		 -31.60590172 -0.086572997 22.75633621 -30.31611252 -0.084238559 22.70864868 -30.91791916 -0.35927352 22.55724525
		 -30.96792412 -0.36801299 22.87285995 -30.38879967 -0.094691999 23.015380859 -30.38164711 1.32596302 23.092027664
		 -30.30513191 1.40646768 22.75663757 -30.10638237 0.73494345 22.77375031;
	setAttr ".vt[332:497]" -30.18613243 0.68711901 23.091741562 -28.11711693 -0.38849601 26.47775841
		 -27.97504616 -0.040410001 25.061628342 -28.69164467 -0.31534499 24.94463348 -28.7314167 -0.63896501 26.42874146
		 -28.12671852 0.93351698 26.56681252 -27.98807335 1.498263 25.25793076 -27.74646568 0.80186999 25.19202423
		 -27.90837288 0.33510301 26.53860855 -29.38178444 1.51169205 25.10811806 -28.69581032 1.72765398 25.20930481
		 -28.73426247 1.139835 26.54623795 -29.32339668 0.94263101 26.50035286 -29.38851357 -0.027621999 24.90896225
		 -29.61403465 0.81925201 24.99475861 -29.53279305 0.34707201 26.45102119 -29.32760048 -0.37944701 26.41025925
		 -25.21243477 -0.39986101 27.0025062561 -25.15695381 -0.045995999 25.78681374 -25.84937859 -0.26447701 25.74221802
		 -25.80527687 -0.600124 26.94059563 -25.16164207 0.66192698 27.21595764 -25.091745377 1.15796196 25.95144081
		 -24.89461708 0.61416399 25.88309288 -24.98239708 0.182734 27.12667847 -26.38456535 0.65958899 27.18885612
		 -26.5157299 1.15373003 25.93113899 -25.79702568 1.32950199 25.96504593 -25.76802635 0.82052201 27.234478
		 -26.53012276 -0.050062999 25.76726341 -26.7499218 0.60895902 25.85314941 -26.59025764 0.17989101 27.089012146
		 -26.39009666 -0.40210199 26.97638702 -21.063734055 -0.50723797 26.070777893 -21.31848717 -0.238988 25.00058364868
		 -22.036928177 -0.48082 25.16971397 -21.72156715 -0.74448299 26.22745514 -21.058748245 0.63947803 26.096393585
		 -21.3039341 0.95807302 25.010210037 -21.058015823 0.422943 24.95236397 -20.8246212 0.12553801 26.042802811
		 -22.68876076 0.95522499 25.34198189 -22.00010490417 1.14819503 25.17830467 -21.71059227 0.81819999 26.25811577
		 -22.3509922 0.62753701 26.40771866 -22.73019218 -0.248046 25.33230209 -22.9568119 0.41527 25.39441872
		 -22.58919334 0.109773 26.45786285 -22.36338997 -0.52102101 26.39167023 -22.0017566681 -0.485457 21.50578499
		 -22.98908424 -0.779208 21.74995041 -21.98054314 1.41292298 21.51494408 -21.70803261 0.533014 21.46628952
		 -23.85165596 1.65889204 22.0049591064 -22.91390038 1.78781998 21.75750351 -23.94781685 -0.43874401 21.99292374
		 -24.1443615 0.72390401 22.093662262 -25.026590347 -0.32457301 22.052873611 -25.892416 -0.68617702 22.04082489
		 -24.94214439 1.87885797 22.082643509 -24.74696159 0.85680801 22.10584831 -26.7209301 1.88022399 22.090438843
		 -25.82383156 2.22241592 22.080705643 -26.74286842 -0.32626399 22.060466766 -26.96719933 0.85594201 22.1118927
		 -27.5804081 -0.44910899 21.84230995 -28.40995598 -0.82671702 21.54369926 -27.56393623 1.85022604 21.91486549
		 -27.36328316 0.81089401 21.98322487 -29.13471031 1.78386497 21.36896324 -28.35563469 2.10978794 21.63850784
		 -29.19763756 -0.45410001 21.29572296 -29.38059807 0.76588702 21.30312538 -31.023206711 1.54537702 19.098274231
		 -30.43727684 1.82816505 19.75062561 -31.031606674 -0.035045002 19.097797394 -31.26063347 0.85484898 18.91052818
		 -29.83845329 -0.347651 20.41390228 -30.42610359 -0.486536 19.74848938 -29.8447094 1.64041603 20.41665268
		 -29.68819618 0.72410399 20.61133575 -20.15332603 -0.66792601 19.86503601 -20.37888908 0.246657 19.97694016
		 -20.21046066 0.2121214 20.26140022 -19.98205757 -0.67068201 20.15603065 -18.61120796 -0.80258441 19.32743835
		 -18.75959206 -0.82493198 18.97630692 -19.43622017 -0.999282 19.52126312 -19.28192329 -0.97508323 19.83031464
		 -18.63519287 0.50820678 19.27607346 -18.78524971 0.55404001 18.91883469 -18.51420021 -0.116066 18.73622894
		 -18.36654091 -0.12742761 19.1127739 -20.16181374 0.93723798 19.80599594 -19.4930439 0.99895197 19.37924004
		 -19.33510208 0.93447918 19.70391273 -19.99226189 0.87398362 20.10209084 -18.61073494 0.396341 22.51880074
		 -19.10225105 0.54191798 21.68580818 -18.5315609 0.61586797 21.3932457 -18.11640739 0.50178099 22.29534149
		 -19.029573441 -0.65133101 21.76807976 -19.28648186 0.034673002 21.83114052 -18.75819969 -0.069848001 22.6254406
		 -18.45332527 -0.65648299 22.64279938 -17.53010368 -0.70836401 22.089372635 -17.8654995 -0.71298599 21.15106201
		 -18.44479179 -0.88591498 21.49259949 -17.95335197 -0.87970001 22.38759995 -17.57404518 0.26354599 22.057977676
		 -17.9042263 0.30515099 21.094371796 -17.6538372 -0.178563 21.016334534 -17.35973549 -0.187233 21.99405479
		 -21.98480034 1.11413002 13.80892754 -21.88117027 -0.058784999 13.59323502 -21.30640221 1.50763404 18.13824463
		 -20.49623299 1.34626198 17.46448326 -22.62621117 -2.099661112 15.75137424 -22.27038383 -2.044821024 15.58532906
		 -22.72623253 -1.98410499 14.21517181 -23.034410477 -2.048141003 14.20593929 -22.45173073 1.726686 -9.81096077
		 -22.12239647 0.199782 -9.81096077 -22.45173073 -1.68195105 -9.81096077 -23.5632534 -2.876472 -9.81096077
		 -24.8610363 -3.55366898 -6.56743097 -24.7546978 -3.777215 -9.81095791 -25.80300331 -3.97956705 -9.81095791
		 -26.83194923 -4.033219814 -9.81095791 -27.87074089 -3.97849011 -9.81095982 -28.88673973 -3.77775788 -9.81095982
		 -29.9553051 -2.87755895 -9.81095982 -30.92310524 -1.201334 -9.81095982 -31.3681736 0.81714398 -9.81095982
		 -30.80116463 2.11552501 -6.56669092 -30.92310524 2.27281189 -9.81095695 -29.9553051 3.35672998 -9.81095982
		 -28.88673973 3.76358604 -9.81096077 -27.87074089 3.94311309 -9.81095982 -26.83194923 4.047616959 -9.81095791
		 -25.80300331 3.94362593 -9.81095791 -24.7546978 3.68643594 -9.81095791 -23.5632534 2.8098309 -9.81096077
		 -22.54215431 -1.60741794 -28.24905777 -22.00010108948 -1.86411405 -18.61772728 -21.64690208 0.207562 -18.61772728
		 -24.53375053 -4.17464495 -18.61772346 -23.21606255 -3.18639493 -18.61772728 -23.59378242 -2.370471 -28.33241653
		 -26.83803368 -4.46414518 -18.61772537 -25.69731331 -4.40585899 -18.61772346 -29.11651802 -4.17527723 -18.61772919
		 -27.98958397 -4.40469694 -18.61772728 -30.82953453 -0.71491301 -28.24905014 -31.35926247 -0.980434 -18.61772537
		 -30.29848671 -3.187428 -18.61772537 -30.82953453 2.17290497 -28.24905014 -31.3592701 2.54141307 -18.61771965
		 -31.8258419 0.88904601 -18.61772537 -31.12248802 0.77885699 -28.33241653 -28.84351921 3.24672103 -28.33242416
		 -29.11652565 4.14955807 -18.61773109 -30.29848671 3.70239592 -18.61772537 -29.88834572 2.9343369 -28.33241653
		 -26.79523659 3.49867201 -28.33242416 -26.83803368 4.46414614 -18.61772537;
	setAttr ".vt[498:663]" -27.98958397 4.35066319 -18.61772728 -27.84692574 3.40735698 -28.33242416
		 -24.75898552 3.17301893 -28.33242416 -24.53375053 4.059760094 -18.61772537 -25.69731331 4.35104513 -18.61772346
		 -25.78565025 3.40764308 -28.33242416 -22.00010108948 1.89906001 -18.61772728 -23.21606255 3.096436977 -18.61772728
		 -22.46673012 2.06614089 17.97067261 -23.54583168 2.37669206 18.31934738 -23.7528019 2.48896289 17.11829376
		 -22.45975304 -1.08931303 17.98095322 -21.99178886 -1.20795596 17.65405655 -22.33063316 -1.80100703 16.63783264
		 -30.22340202 -0.49757099 16.23408127 -29.60527229 -1.10566103 16.95936584 -29.32743645 -1.26304805 16.038887024
		 -26.73645973 -1.254691 17.28048325 -26.86160088 -1.33998597 18.53049088 -25.82439232 -1.30111003 18.5859623
		 -25.80970955 -1.29252803 17.32966614 -28.87096977 -1.34847701 17.75846672 -27.9083271 -1.39323103 18.21086121
		 -27.70179939 -1.31456304 17.031951904 -28.60562706 -1.46041298 16.6687088 -30.44249535 -0.37828001 16.90761566
		 -30.49507332 0.64555597 16.054357529 -30.70825005 0.69322401 16.7022934 -23.59472084 -1.38484704 18.32084274
		 -23.44047356 -1.31198204 19.27588272 -30.38502693 1.56649899 16.90764427 -30.14860344 1.59209299 16.23408127
		 -29.58309746 2.069185019 16.95939636 -29.81359291 1.99592805 17.712883 -26.84847832 2.64531898 18.53038788
		 -25.77244377 2.74595404 18.5859623 -25.78087044 2.60571098 19.57899094 -26.95293999 2.38448501 19.61501122
		 -29.0785923 2.11877894 18.72450447 -28.85369682 2.33166599 17.7585125 -27.89473534 2.52757311 18.21087265
		 -28.04558754 2.39358902 19.15372849 -20.14535713 0.92627102 16.11633301 -19.85751152 -0.120619 15.83511353
		 -19.46290016 -0.111156 16.58818436 -19.75528908 0.82564902 16.86064911 -22.0012989044 1.90210903 17.63706589
		 -21.72046089 1.644943 18.47646713 -19.75320244 -1.15322304 16.86733627 -20.14811897 -1.30308104 16.11578751
		 -20.86666679 -1.64871502 16.74103737 -20.486063 -1.41604805 17.49929619 -20.85786247 1.481107 16.72924805
		 -21.23939323 1.54572701 15.91066074 -24.35117531 2.21188402 9.56168175 -28.53671837 -1.73897696 9.51004887
		 -26.37287331 -2.72746396 9.52183247 -25.76643562 -2.70529199 9.52243519 -27.79651833 -2.44482803 9.51407719
		 -27.066335678 -2.68649793 9.5185709 -23.36524773 0.137887 11.23706722 -29.3659687 0.61429799 11.35250854
		 -28.93505287 -0.69591898 11.35759163 -23.6169529 -1.420169 11.49164772 -24.42301369 -2.11754394 11.44009209
		 -28.87382698 1.67360401 11.3585968 -28.35539055 2.25696206 11.3917141 -26.3301754 2.75160599 11.4583931
		 -25.76080513 2.73611307 11.46083641 -27.70883369 2.61078501 11.42628479 -27.013547897 2.72314596 11.44505882
		 -29.66967201 0.57296097 13.44463444 -23.46286201 -2.1347599 14.17947578 -24.26698112 -2.28894496 14.19719219
		 -22.67375374 1.79441905 14.14953995 -29.041200638 1.63124597 13.48988819 -28.5417347 2.20426011 13.68971443
		 -26.41841698 2.80089498 14.10864162 -25.7593174 2.81362605 14.12707233 -27.91651726 2.5691731 13.90237999
		 -27.17513847 2.72387409 14.026309967 -23.55460167 1.84890699 13.27831459 -24.36483955 2.32556105 13.24331188
		 -28.44632149 -1.61017001 13.010532379 -26.36882973 -2.39096594 13.26956081 -25.76719475 -2.3871119 13.2806282
		 -27.80377007 -2.21792197 13.14248943 -27.086488724 -2.37648606 13.21849155 -22.7552166 -1.76753402 13.65351009
		 -23.15058327 -1.84187102 13.46168041 -22.73082161 -1.36320496 13.28547478 -22.64359093 0.036316998 13.039546967
		 -22.10837364 1.64203799 14.36568642 -22.69608498 1.24594295 13.33299065 -28.76867867 -0.744569 27.63348198
		 -28.38079643 -0.57757699 27.65574265 -28.74211311 -0.72602099 26.82798004 -29.31121254 -0.47409201 26.81411934
		 -28.75856209 0.36322501 27.6452179 -28.74460793 0.98170698 26.9058857 -28.16401482 0.78159499 26.91891479
		 -28.37782097 0.225265 27.66526222 -25.76302147 -0.82741201 28.26403427 -25.38783073 -0.68180799 28.31542397
		 -24.7976017 2.73871803 17.29927444 -24.68171883 2.61206698 18.55453873 -24.91466331 -3.25546098 -1.54578102
		 -25.021390915 -2.85735607 4.54204798 -25.14789009 2.66709805 9.5633173 -25.067174911 2.93523908 4.71380186
		 -25.7902813 -0.71428901 27.34820175 -26.34246635 -0.52184099 27.38764954 -25.35972786 0.036635 28.49283409
		 -25.74310493 0.153273 28.51003838 -25.75816154 0.64740199 27.66625404 -25.18541145 0.49320999 27.64606094
		 -24.94979286 -1.82981706 16.20429993 -24.86321068 -1.42759705 17.29918098 -24.59443092 2.34689689 19.64430046
		 -25.13363075 -2.57093596 9.52202702 -25.17858315 2.62357497 11.45922089 -25.091470718 2.73190498 14.1145916
		 -24.89868355 2.849195 16.20429993 -25.13667488 -2.3426609 13.26649094 -25.11413002 -2.32542491 14.1145916
		 -21.35056114 -0.81186199 27.48349762 -20.91285515 -0.62596297 27.39839172 -24.76395607 -1.38348401 18.55434036
		 -21.59478951 -0.85047698 26.65267372 -22.21592903 -0.630759 26.81754112 -20.91707039 0.19194201 27.48065948
		 -21.3649044 0.30611199 27.58771133 -21.59420586 0.68554002 26.69220734 -20.9601841 0.511401 26.53304482
		 -31.17216301 0.79369301 24.42066383 -31.52789116 0.663351 24.34585762 -28.74749565 1.64612806 12.2538147
		 -28.89783287 1.63851094 12.88651752 -31.10477638 1.29121494 23.85191917 -30.5822773 1.091652989 23.9167614
		 -31.51127815 -0.145436 24.20913124 -31.15563011 -0.30910999 24.23298454 -31.085477829 -0.39912501 23.63041115
		 -31.65010262 -0.150575 23.5714817 -30.82428551 -0.146359 24.3116684 -18.11931038 -0.26308399 23.33394432
		 -17.95565224 -0.584131 23.34470177 -23.15073967 1.32690597 12.89387321 -26.13246727 0.036352001 28.470438
		 -21.80228615 0.15527301 27.67198753 -29.13105965 0.230712 27.62259102 -31.64757347 0.29699099 24.27063942
		 -31.86192894 0.53230602 23.63579559 -31.67107582 1.092772961 23.73225212 -30.39813042 0.53285599 23.86497879
		 -30.57504845 -0.151646 23.75332069 -28.23043251 -0.13776401 27.67030525 -27.95192146 0.209539 26.9008522
		 -28.15533257 -0.48213401 26.85870934 -29.51093864 0.220052 26.84276581 -29.30768394 0.78954798 26.87487793
		 -25.23427391 -0.28900099 28.41718864 -25.012254715 0.035990998 27.54966164 -25.23130608 -0.52022099 27.41600227
		 -26.5359478 0.033950999 27.5093689 -26.33994865 0.49151599 27.61664581;
	setAttr ".vt[664:829]" -20.75183296 -0.173777 27.42723465 -20.73079872 0.0059799999 26.48116493
		 -20.96132469 -0.61507702 26.50100136 -22.44141197 -0.013039 26.88537407 -22.21520805 0.495805 26.83615112
		 -17.98988533 0.14785799 23.33133698 -18.5372982 -0.113614 22.9371109 -18.40839577 0.34358901 22.84833717
		 -17.38910866 -0.65140003 23.038427353 -17.2469883 -0.18849701 22.39563751 -17.39823723 -0.710127 22.47286606
		 -17.67989159 0.265012 23.21421623 -21.96360207 -1.85470903 16.42551613 -21.61190987 -1.35824502 17.38869667
		 -17.94843483 0.46378499 22.65900993 -17.44411278 0.253824 22.45219231 -17.73088646 -0.74813598 23.19384575
		 -17.74430656 -0.87827599 22.75644875 -18.20326042 -0.66178799 23.0065078735 -21.5722065 1.60209501 15.19660378
		 -21.29155159 -0.97721702 18.15934753 -22.075311661 1.89918399 15.59779453 -21.86480141 1.83851004 16.4217186
		 -22.15505791 -0.459461 24.75309753 -22.87788963 -0.219181 24.91939735 -21.1410923 0.479157 24.52233315
		 -21.40596199 -0.213153 24.57868767 -22.11347389 1.24651802 24.75344276 -21.39104652 1.041851044 24.58229446
		 -23.1044178 0.48621801 24.98066521 -22.82918358 1.058869004 24.92409134 -25.86090279 -0.264263 25.39102554
		 -26.55688286 -0.033870999 25.41395378 -24.88384819 0.68138999 25.50017929 -25.15194511 -0.029691 25.42425728
		 -25.80401039 1.46491802 25.56125832 -25.082525253 1.27496302 25.54995728 -26.77867317 0.67537498 25.48194885
		 -26.53988838 1.26958799 25.53938675 -28.67405319 -0.32499129 24.53508377 -29.3843174 -0.02738872 24.49659538
		 -27.70299149 0.84691167 24.77891541 -27.93901253 -0.039815459 24.65304565 -28.66487122 1.81474841 24.78956223
		 -27.94283676 1.58027303 24.84052658 -29.60657883 0.85875899 24.57799149 -29.36683273 1.58551455 24.6880703
		 -21.62347603 1.76895297 17.3662529 -23.12940788 1.68264604 13.39273739 -22.7831192 1.70604765 22.28079796
		 -23.6564045 1.55205214 22.5015316 -23.95897865 0.70740414 22.59062386 -23.74603462 -0.34221831 22.49354172
		 -22.85533142 -0.66969246 22.27610779 -21.9260788 -0.38353679 22.045312881 -21.63607407 0.5630517 22.00046920776
		 -21.90417671 1.36974251 22.054189682 -25.82954407 2.16023564 22.62400246 -26.67160606 1.83413982 22.62216568
		 -26.93514633 0.89578527 22.62626457 -26.70052528 -0.19540395 22.56146622 -25.90180206 -0.55028814 22.54596519
		 -25.089179993 -0.1931209 22.55238152 -24.7972374 0.89924043 22.62006569 -25.0079498291 1.83718312 22.61330032
		 -28.41942215 2.070139647 22.24150467 -29.16052055 1.76154542 22.016956329 -29.41632271 0.81046361 21.93179703
		 -29.22221947 -0.34102893 21.89818001 -28.47039413 -0.70655674 22.085380554 -27.68065834 -0.33881548 22.32637787
		 -27.44408417 0.83702719 22.4725647 -27.66760635 1.80129123 22.44195175 -30.57396698 1.81086624 20.42889404
		 -31.18985176 1.54866815 19.95422554 -31.41851234 0.87174433 19.82021332 -31.19240379 0.006528616 19.95071602
		 -30.56575012 -0.40642381 20.42086411 -29.97821236 -0.22754067 20.88500214 -29.79641533 0.75496203 21.044929504
		 -29.98587227 1.5894258 20.89398003 -23.68626022 2.62579322 -4.015609264 -22.53831482 1.69035029 -4.014605045
		 -22.19644356 0.23180449 -4.015058517 -22.54367256 -1.55759418 -4.029555798 -23.68482971 -2.63079715 -4.032382488
		 -24.89479637 -3.4016099 -4.032882214 -25.84135056 -3.58040094 -4.032822609 -26.74385071 -3.62284803 -4.032688618
		 -27.6801796 -3.5793488 -4.032455921 -28.64209557 -3.37836456 -4.031983376 -29.82668686 -2.47834206 -4.029328823
		 -30.92354584 -0.93210089 -4.012778759 -31.39528847 0.83347946 -4.011118889 -30.92363548 2.012681961 -4.011525631
		 -29.82481003 3.037428379 -4.013943195 -28.6392765 3.41950393 -4.015539169 -27.67995644 3.57261801 -4.015797138
		 -26.74194145 3.6558404 -4.015912056 -25.84115982 3.57307053 -4.0161376 -24.89874268 3.36002421 -4.016224861
		 22.28066063 0.20522299 -6.56669378 22.60590172 -1.59691203 -6.56739521 22.52496147 -1.52016497 -1.54278195
		 22.15569496 0.25200701 -1.51479101 30.95066261 -0.86319798 -1.51463306 30.80116463 -1.042155981 -6.56669283
		 31.24365425 0.79631102 -6.56669283 31.44641304 0.86365402 -1.51322806 23.69610786 -2.71733189 -6.56743193
		 23.68807411 -2.55309296 -1.54570794 30.83197212 0.66239297 24.4498806 30.70738792 0.29741901 24.39977455
		 31.17772102 0.206953 24.45884895 22.001493454 1.56968296 19.78759956 23.22180367 2.059010029 20.20324898
		 23.38132286 2.21540594 19.27579498 22.23053169 1.81409097 18.89311981 22.54215431 1.67903101 -28.24905777
		 23.59378242 2.42943311 -28.33241653 23.51842308 0.30438 -28.58252335 22.37996864 0.21690799 -28.33241653
		 17.34488869 0.137181 23.078948975 17.22364998 -0.19562501 23.033529282 17.61299706 -0.211022 23.34292412
		 28.99108696 -0.70300502 12.88649845 28.82652473 -0.69137299 12.25377655 29.25512886 0.60098702 12.24548912
		 29.46731758 0.58664101 12.85928917 23.62793541 -1.42716503 12.44518471 24.43504906 -2.069257021 12.38297272
		 24.36796761 -2.19848704 13.25110912 23.59007454 -1.90458798 13.28041553 23.60453224 1.52709198 11.50467491
		 23.61786079 1.50153196 12.44824982 24.43235207 2.20156002 12.38551903 24.42123222 2.2196281 11.4543314
		 21.70526314 0.501077 20.03465271 21.44813728 1.39557397 19.29042244 21.35111046 0.46347201 19.63700676
		 22.2312603 -0.76709503 18.89804459 22.0096912384 -0.61348498 19.78733444 21.44185448 -0.512573 19.3012352
		 21.71258736 -0.79117799 18.49032211 23.17312813 -1.36433196 12.89263725 23.04930687 0.077794001 12.61124802
		 23.39387321 0.112695 12.12966919 21.063615799 0.38815299 19.3142128 20.99894142 1.25420904 18.88683319
		 20.46170616 1.050799966 19.47671509 20.62418175 0.322604 19.73952484 20.98090172 -0.65320098 18.90663719
		 20.44979668 -0.63636303 19.521698 19.68010139 -1.086511016 19.060317993 20.11699867 -1.230533 18.23456573
		 19.37026024 -1.021577001 17.59609795 18.97835732 -0.89537799 18.48186111 18.71698189 -0.11102 18.22831345
		 19.080259323 -0.10198 17.31842041 19.3770504 0.72807699 17.58240128 18.99725533 0.61638701 18.44007111
		 19.72680473 1.07652998 18.94870186 20.14556694 1.215505 18.17742729 26.13372612 -0.68207598 28.29379845
		 26.27184486 -0.28933501 28.38687706 25.75072289 -0.36463401 28.58253098;
	setAttr ".vt[830:995]" 21.78592873 -0.66263998 27.61937904 21.95366859 -0.221305 27.69548035
		 21.31113625 -0.25129899 27.73447037 29.14162636 -0.57207501 27.61267281 29.27989006 -0.130308 27.61075211
		 28.76564217 -0.2305 27.76953697 29.29666328 1.91234601 19.66121101 29.67879295 1.72273803 20.18795395
		 30.31612968 1.85744703 19.35491943 30.037096024 1.92489195 18.44352341 30.61427879 1.541682 17.56078911
		 30.89941216 1.544258 18.63282394 31.15598488 0.81991303 18.43222618 30.91496468 0.73944801 17.33058548
		 30.042741776 -0.78526902 18.44310379 30.65494728 -0.26260701 17.56073189 30.91757774 -0.103936 18.63247299
		 30.31004524 -0.57697201 19.35330582 29.42917061 0.68160599 20.095760345 29.31898689 -0.78941101 19.65626526
		 29.68118858 -0.48138699 20.18453979 29.60977745 0.71123803 20.4552536 27.067956924 -0.81339997 20.66119385
		 26.85835457 -0.499318 21.56337738 25.87889671 -0.83716899 21.5071907 25.85435295 -1.12282395 20.53868103
		 24.53191566 0.77289599 21.13807869 24.60612297 -0.83887899 20.69727325 24.87721825 -0.49582601 21.57130051
		 24.67056847 0.82699901 21.76205063 25.78904152 2.46971989 20.54191208 24.50979042 2.089766979 20.70102692
		 24.78854561 1.95378304 21.59182549 25.81147194 2.31027007 21.5340519 27.11049461 0.78461701 21.11138535
		 27.054231644 2.1315589 20.66675186 26.83933449 1.96950996 21.58467484 27.018102646 0.83060402 21.75646591
		 24.14289284 -0.54776102 21.60898781 23.078519821 -0.88214302 21.2912426 23.29089928 -1.13698006 20.20196915
		 22.0041065216 -0.59700203 20.99656296 21.70721245 0.50269198 21.042057037 21.98674965 1.45937502 21.0030841827
		 23.0051364899 1.86818004 21.29693604 24.046674728 1.78657198 21.61856842 24.25920296 0.73842198 21.81049728
		 28.21833992 -1.14266801 20.060022354 29.23129845 -0.54711002 20.84096336 28.3568058 -0.91435701 21.13214874
		 27.43826103 -0.55015802 21.51468658 27.29316139 0.80360597 21.74138832 27.42255211 1.92826402 21.56865883
		 28.31020927 2.15247202 21.20287323 28.19186592 2.26366806 20.068000793 29.17963219 1.81950402 20.89525986
		 29.39407158 0.74250901 20.96821976 30.23326683 1.45792782 22.38474274 30.85097122 1.68020558 22.23058128
		 31.51827812 1.43900812 22.064304352 31.7501545 0.7712099 22.0092506409 31.51782799 -0.047117401 22.03452301
		 30.85685349 -0.35959077 22.18798447 30.24331284 -0.10515528 22.35155106 30.034488678 0.74983925 22.41208649
		 26.58637428 -0.016026501 25.024580002 25.87372589 -0.2640245 25.00033950806 25.14655495 -0.012131501 25.033792496
		 24.87302017 0.74895751 25.1153183 25.073911667 1.38430309 25.17476273 25.81041908 1.58919001 25.19069672
		 26.56295967 1.38025308 25.16519356 26.80839539 0.74402249 25.098278046 23.048675537 -0.1858035 24.44195366
		 22.29351616 -0.43442822 24.26479912 21.50895119 -0.18273756 24.081996918 21.23669434 0.54384828 24.027450562
		 21.49060059 1.1375947 24.093261719 22.24133301 1.35740602 24.27428818 22.98674774 1.17516768 24.45517731
		 23.27297783 0.56723988 24.50816536 29.37993813 -0.02714536 24.066448212 28.6558876 -0.33495215 24.11215973
		 27.90324783 -0.039225228 24.24752808 27.66176605 0.88962233 24.38718224 27.90143967 1.65532207 24.45855331
		 28.63594627 1.89618719 24.39707756 29.35230255 1.65724421 24.2799263 29.59901047 0.89885151 24.15505219
		 28.30573463 -1.655509 12.29833221 27.67671776 -2.31817102 12.34565735 27.71621513 -2.35993099 11.41205883
		 28.38189507 -1.68303001 11.37900925 29.88834572 -2.33010411 -28.33241653 28.84351921 -3.093523979 -28.33242416
		 28.77974129 0.431281 -28.58252335 29.79651451 0.595249 -28.58252335 29.82161522 3.16869402 -6.56669283
		 28.74725533 3.55637598 -6.56669617 28.5128727 3.29538107 -1.51321006 29.77228737 2.91560411 -1.513219
		 25.76080132 -2.50717592 12.3930378 25.17167091 -2.3908391 12.38350296 25.17708778 -2.47206807 11.44495773
		 25.76266289 -2.57249689 11.44657326 25.78565025 -3.26940203 -28.33242416 24.75898552 -3.094888926 -28.33242416
		 24.65377235 0.39388701 -28.58252335 25.6467495 0.450728 -28.58252335 25.8437748 3.72360301 -6.56669188
		 24.86133003 3.48322701 -6.56669092 24.92648125 3.24972391 -1.51319802 25.82331276 3.43526196 -1.51319802
		 28.274786 2.22256088 12.29922485 27.67168999 2.57416892 12.34662533 27.79701042 2.57161093 13.14296246
		 28.41142845 2.21319389 13.010967255 29.098428726 -1.095342994 18.72197342 29.82737541 -0.94299901 17.71265411
		 25.1936779 2.60216689 12.39179611 25.14135933 2.66857505 13.27363491 25.75856972 2.75953603 13.28110218
		 25.7577877 2.70281601 12.39400673 24.68382835 -1.22663701 19.64229965 25.83960533 -1.32341099 19.57735062
		 26.98990822 -2.4977901 12.37140083 26.31328392 -2.51602197 12.38968945 26.33293343 -2.58573699 11.4441309
		 27.015108109 -2.560009 11.43079567 27.84692192 -3.26867199 -28.33242416 26.79523659 -3.30684805 -28.33242416
		 26.65779305 0.483917 -28.58252335 27.78227425 0.45000899 -28.58252335 26.80545235 3.81770301 -6.56669188
		 26.66148949 3.50554204 -1.51319897 27.55953026 3.43477011 -1.51320505 27.78505516 3.72325206 -6.56669283
		 26.98905754 2.68381405 12.37236881 26.31255531 2.71132994 12.39065742 26.36673927 2.75717497 13.27003288
		 27.084302902 2.704319 13.21896362 26.96636772 -1.14693105 19.61223984 28.065717697 -1.32715094 19.14967155
		 23.38351631 2.064815044 14.1628952 23.0055561066 2.24265909 15.91519642 23.9333477 2.5868969 16.070611954
		 24.27820015 2.42295003 14.061540604 29.94336128 -0.59914899 15.46018982 29.69907951 -0.687756 14.78512192
		 30.1051693 0.563465 14.67798233 30.28682518 0.60171098 15.31923294 23.069753647 -2.13531995 15.91478825
		 23.97138405 -2.09611702 16.096736908 23.79590034 -1.72492099 17.13294411 22.78555107 -1.72369397 16.87741089
		 29.85403633 1.605757 15.46019077 29.59708977 1.61767697 14.78512287 29.047708511 2.17646408 15.23594856
		 29.29714012 2.12648296 16.038900375 29.0850811 -1.40033901 15.23594761 28.58039284 -1.56693196 13.68971443
		 29.14801216 -0.71409798 13.48988724 26.72600365 2.77184296 17.28043365 26.61916924 2.88221097 16.19009399
		 25.765028 2.92893195 16.23379517 25.76848412 2.84368205 17.32966614;
	setAttr ".vt[996:1161]" 26.4217968 -2.27170801 14.10864162 26.62730217 -1.65805697 16.19009399
		 25.7968998 -1.65154195 16.23379517 25.77329445 -2.28721595 14.12707233 28.58990288 2.44146395 16.66872978
		 28.35979652 2.53724098 15.71810913 27.51372337 2.74383092 16.0035858154 27.69123268 2.6430769 17.031959534
		 27.92493248 -2.12232089 13.90237999 28.3741703 -1.76883495 15.71810913 27.52165031 -1.73820698 16.0035858154
		 27.17858696 -2.26080608 14.026310921 21.18275642 -1.37109995 14.69834518 22.029600143 -1.37488902 13.79480457
		 22.28190804 -1.866014 14.16360378 21.70321846 -1.90192795 15.17800617 21.13726234 1.0076010227 14.70393562
		 20.95092964 -0.132668 14.47512531 20.44150734 -0.127367 15.10874176 20.67513847 0.96970999 15.36196899
		 22.48367119 2.056499004 15.75421333 22.25893211 1.98456895 16.63143158 22.75451851 2.16041899 16.87284088
		 20.70071983 -1.35163903 15.35872841 21.31347466 -1.81197202 15.90622139 23.58767128 1.46039796 9.56196213
		 23.05132103 1.586169 4.71261311 22.75614738 0.22070099 4.6764822 23.32843208 0.14439601 9.49171638
		 29.15568733 -0.70515901 9.53567123 30.051660538 -0.83562797 4.68324518 30.50371361 0.77807897 4.71137285
		 29.59129906 0.64135998 9.53709984 23.6113224 -1.31798899 9.52520943 23.11582756 -1.36722302 4.57757378
		 24.037942886 -2.30458999 4.54412079 24.34998894 -2.14641404 9.520504 24.039464951 2.37667108 4.71364594
		 23.68980598 2.58411098 -1.51320302 22.5072422 1.70951402 -1.51320899 29.14423561 -1.96206605 4.57696915
		 29.7776165 -2.29060602 -1.54279304 29.13065147 1.72946203 9.53864002 30.042898178 1.61537504 4.7121191
		 29.1168499 2.60293603 4.712708 28.51925087 2.3268981 9.54676628 26.66687965 -3.46153307 -1.54577994
		 26.50264549 -3.055763006 4.54200506 25.78548241 -3.021162987 4.54202223 25.82271767 -3.42421007 -1.54577994
		 26.36598396 2.83348894 9.56312275 26.48168373 3.12478495 4.71379709 25.79287148 3.083472013 4.71381521
		 25.76695061 2.80380702 9.56372643 28.13536263 -2.75681496 4.54376888 27.28980446 -3.005740881 4.54180717
		 27.5614109 -3.42132998 -1.54578602 28.52105522 -3.2045691 -1.54571402 27.78433418 2.68522501 9.55525398
		 28.099344254 2.96974993 4.71329308 27.27194786 3.083405972 4.71356106 27.063337326 2.80310893 9.55986118
		 30.95033073 1.91280794 -1.51322806 22.6054554 1.66904199 -6.56669378 23.69616127 2.67550492 -6.56669188
		 29.82173729 -2.67709899 -6.56739378 25.8437748 -3.74499798 -6.56743097 26.80558586 -3.79365706 -6.56743288
		 27.78509331 -3.74400902 -6.56743288 28.74745369 -3.55209303 -6.56743288 18.15465355 0.36622649 20.43862343
		 18.032907486 0.33383599 20.74699402 18.68057442 0.67171299 21.067024231 18.81799126 0.72560048 20.77572632
		 19.63284111 0.098968998 21.23917007 19.42496109 0.66233402 21.099727631 19.27182961 0.60519803 21.37408257
		 19.47002602 0.070869997 21.51637077 18.76040649 -0.90348601 20.8713913 19.39359665 -0.66656101 21.15431595
		 19.22197533 -0.65573299 21.44436646 18.61186409 -0.89038199 21.16541862 18.12919807 -0.73549604 20.48236465
		 18.0022640228 -0.72188503 20.79703903 17.77866936 -0.170874 20.65347481 17.89669418 -0.1626865 20.33171082
		 31.61328697 1.32466996 22.82947159 31.58004951 1.40085924 22.46428108 30.91237831 1.63294911 22.61909866
		 30.96793938 1.54738796 22.97408485 31.57717323 -0.063852802 22.41997147 31.81083107 0.74172682 22.40577126
		 31.83501625 0.689183 22.76184082 31.60590172 -0.086572997 22.75633621 30.31611252 -0.084238559 22.70864868
		 30.91791916 -0.35927352 22.55724525 30.96792412 -0.36801299 22.87285995 30.38879967 -0.094691999 23.015380859
		 30.38164711 1.32596302 23.092027664 30.30513191 1.40646768 22.75663757 30.10638237 0.73494345 22.77375031
		 30.18613243 0.68711901 23.091741562 28.11711693 -0.38849601 26.47775841 27.97504616 -0.040410001 25.061628342
		 28.69164467 -0.31534499 24.94463348 28.7314167 -0.63896501 26.42874146 28.12671852 0.93351698 26.56681252
		 27.98807335 1.498263 25.25793076 27.74646568 0.80186999 25.19202423 27.90837288 0.33510301 26.53860855
		 29.38178444 1.51169205 25.10811806 28.69581032 1.72765398 25.20930481 28.73426247 1.139835 26.54623795
		 29.32339668 0.94263101 26.50035286 29.38851357 -0.027621999 24.90896225 29.61403465 0.81925201 24.99475861
		 29.53279305 0.34707201 26.45102119 29.32760048 -0.37944701 26.41025925 25.21243477 -0.39986101 27.0025062561
		 25.15695381 -0.045995999 25.78681374 25.84937859 -0.26447701 25.74221802 25.80527687 -0.600124 26.94059563
		 25.16164207 0.66192698 27.21595764 25.091745377 1.15796196 25.95144081 24.89461708 0.61416399 25.88309288
		 24.98239708 0.182734 27.12667847 26.38456535 0.65958899 27.18885612 26.5157299 1.15373003 25.93113899
		 25.79702568 1.32950199 25.96504593 25.76802635 0.82052201 27.234478 26.53012276 -0.050062999 25.76726341
		 26.7499218 0.60895902 25.85314941 26.59025764 0.17989101 27.089012146 26.39009666 -0.40210199 26.97638702
		 21.063734055 -0.50723797 26.070777893 21.31848717 -0.238988 25.00058364868 22.036928177 -0.48082 25.16971397
		 21.72156715 -0.74448299 26.22745514 21.058748245 0.63947803 26.096393585 21.3039341 0.95807302 25.010210037
		 21.058015823 0.422943 24.95236397 20.8246212 0.12553801 26.042802811 22.68876076 0.95522499 25.34198189
		 22.00010490417 1.14819503 25.17830467 21.71059227 0.81819999 26.25811577 22.3509922 0.62753701 26.40771866
		 22.73019218 -0.248046 25.33230209 22.9568119 0.41527 25.39441872 22.58919334 0.109773 26.45786285
		 22.36338997 -0.52102101 26.39167023 22.0017566681 -0.485457 21.50578499 22.98908424 -0.779208 21.74995041
		 21.98054314 1.41292298 21.51494408 21.70803261 0.533014 21.46628952 23.85165596 1.65889204 22.0049591064
		 22.91390038 1.78781998 21.75750351 23.94781685 -0.43874401 21.99292374 24.1443615 0.72390401 22.093662262
		 25.026590347 -0.32457301 22.052873611 25.892416 -0.68617702 22.04082489 24.94214439 1.87885797 22.082643509
		 24.74696159 0.85680801 22.10584831 26.7209301 1.88022399 22.090438843 25.82383156 2.22241592 22.080705643
		 26.74286842 -0.32626399 22.060466766 26.96719933 0.85594201 22.1118927;
	setAttr ".vt[1162:1327]" 27.5804081 -0.44910899 21.84230995 28.40995598 -0.82671702 21.54369926
		 27.56393623 1.85022604 21.91486549 27.36328316 0.81089401 21.98322487 29.13471031 1.78386497 21.36896324
		 28.35563469 2.10978794 21.63850784 29.19763756 -0.45410001 21.29572296 29.38059807 0.76588702 21.30312538
		 31.023206711 1.54537702 19.098274231 30.43727684 1.82816505 19.75062561 31.031606674 -0.035045002 19.097797394
		 31.26063347 0.85484898 18.91052818 29.83845329 -0.347651 20.41390228 30.42610359 -0.486536 19.74848938
		 29.8447094 1.64041603 20.41665268 29.68819618 0.72410399 20.61133575 20.15332603 -0.66792601 19.86503601
		 20.37888908 0.246657 19.97694016 20.21046066 0.2121214 20.26140022 19.98205757 -0.67068201 20.15603065
		 18.61120796 -0.80258441 19.32743835 18.75959206 -0.82493198 18.97630692 19.43622017 -0.999282 19.52126312
		 19.28192329 -0.97508323 19.83031464 18.63519287 0.50820678 19.27607346 18.78524971 0.55404001 18.91883469
		 18.51420021 -0.116066 18.73622894 18.36654091 -0.12742761 19.1127739 20.16181374 0.93723798 19.80599594
		 19.4930439 0.99895197 19.37924004 19.33510208 0.93447918 19.70391273 19.99226189 0.87398362 20.10209084
		 18.61073494 0.396341 22.51880074 19.10225105 0.54191798 21.68580818 18.5315609 0.61586797 21.3932457
		 18.11640739 0.50178099 22.29534149 19.029573441 -0.65133101 21.76807976 19.28648186 0.034673002 21.83114052
		 18.75819969 -0.069848001 22.6254406 18.45332527 -0.65648299 22.64279938 17.53010368 -0.70836401 22.089372635
		 17.8654995 -0.71298599 21.15106201 18.44479179 -0.88591498 21.49259949 17.95335197 -0.87970001 22.38759995
		 17.57404518 0.26354599 22.057977676 17.9042263 0.30515099 21.094371796 17.6538372 -0.178563 21.016334534
		 17.35973549 -0.187233 21.99405479 21.98480034 1.11413002 13.80892754 21.88117027 -0.058784999 13.59323502
		 21.30640221 1.50763404 18.13824463 20.49623299 1.34626198 17.46448326 22.62621117 -2.099661112 15.75137424
		 22.27038383 -2.044821024 15.58532906 22.72623253 -1.98410499 14.21517181 23.034410477 -2.048141003 14.20593929
		 22.45173073 1.726686 -9.81096077 22.12239647 0.199782 -9.81096077 22.45173073 -1.68195105 -9.81096077
		 23.5632534 -2.876472 -9.81096077 24.8610363 -3.55366898 -6.56743097 24.7546978 -3.777215 -9.81095791
		 25.80300331 -3.97956705 -9.81095791 26.83194923 -4.033219814 -9.81095791 27.87074089 -3.97849011 -9.81095982
		 28.88673973 -3.77775788 -9.81095982 29.9553051 -2.87755895 -9.81095982 30.92310524 -1.201334 -9.81095982
		 31.3681736 0.81714398 -9.81095982 30.80116463 2.11552501 -6.56669092 30.92310524 2.27281189 -9.81095695
		 29.9553051 3.35672998 -9.81095982 28.88673973 3.76358604 -9.81096077 27.87074089 3.94311309 -9.81095982
		 26.83194923 4.047616959 -9.81095791 25.80300331 3.94362593 -9.81095791 24.7546978 3.68643594 -9.81095791
		 23.5632534 2.8098309 -9.81096077 22.54215431 -1.60741794 -28.24905777 22.00010108948 -1.86411405 -18.61772728
		 21.64690208 0.207562 -18.61772728 24.53375053 -4.17464495 -18.61772346 23.21606255 -3.18639493 -18.61772728
		 23.59378242 -2.370471 -28.33241653 26.83803368 -4.46414518 -18.61772537 25.69731331 -4.40585899 -18.61772346
		 29.11651802 -4.17527723 -18.61772919 27.98958397 -4.40469694 -18.61772728 30.82953453 -0.71491301 -28.24905014
		 31.35926247 -0.980434 -18.61772537 30.29848671 -3.187428 -18.61772537 30.82953453 2.17290497 -28.24905014
		 31.3592701 2.54141307 -18.61771965 31.8258419 0.88904601 -18.61772537 31.12248802 0.77885699 -28.33241653
		 28.84351921 3.24672103 -28.33242416 29.11652565 4.14955807 -18.61773109 30.29848671 3.70239592 -18.61772537
		 29.88834572 2.9343369 -28.33241653 26.79523659 3.49867201 -28.33242416 26.83803368 4.46414614 -18.61772537
		 27.98958397 4.35066319 -18.61772728 27.84692574 3.40735698 -28.33242416 24.75898552 3.17301893 -28.33242416
		 24.53375053 4.059760094 -18.61772537 25.69731331 4.35104513 -18.61772346 25.78565025 3.40764308 -28.33242416
		 22.00010108948 1.89906001 -18.61772728 23.21606255 3.096436977 -18.61772728 22.46673012 2.06614089 17.97067261
		 23.54583168 2.37669206 18.31934738 23.7528019 2.48896289 17.11829376 22.45975304 -1.08931303 17.98095322
		 21.99178886 -1.20795596 17.65405655 22.33063316 -1.80100703 16.63783264 30.22340202 -0.49757099 16.23408127
		 29.60527229 -1.10566103 16.95936584 29.32743645 -1.26304805 16.038887024 26.73645973 -1.254691 17.28048325
		 26.86160088 -1.33998597 18.53049088 25.82439232 -1.30111003 18.5859623 25.80970955 -1.29252803 17.32966614
		 28.87096977 -1.34847701 17.75846672 27.9083271 -1.39323103 18.21086121 27.70179939 -1.31456304 17.031951904
		 28.60562706 -1.46041298 16.6687088 30.44249535 -0.37828001 16.90761566 30.49507332 0.64555597 16.054357529
		 30.70825005 0.69322401 16.7022934 23.59472084 -1.38484704 18.32084274 23.44047356 -1.31198204 19.27588272
		 30.38502693 1.56649899 16.90764427 30.14860344 1.59209299 16.23408127 29.58309746 2.069185019 16.95939636
		 29.81359291 1.99592805 17.712883 26.84847832 2.64531898 18.53038788 25.77244377 2.74595404 18.5859623
		 25.78087044 2.60571098 19.57899094 26.95293999 2.38448501 19.61501122 29.0785923 2.11877894 18.72450447
		 28.85369682 2.33166599 17.7585125 27.89473534 2.52757311 18.21087265 28.04558754 2.39358902 19.15372849
		 20.14535713 0.92627102 16.11633301 19.85751152 -0.120619 15.83511353 19.46290016 -0.111156 16.58818436
		 19.75528908 0.82564902 16.86064911 22.0012989044 1.90210903 17.63706589 21.72046089 1.644943 18.47646713
		 19.75320244 -1.15322304 16.86733627 20.14811897 -1.30308104 16.11578751 20.86666679 -1.64871502 16.74103737
		 20.486063 -1.41604805 17.49929619 20.85786247 1.481107 16.72924805 21.23939323 1.54572701 15.91066074
		 24.35117531 2.21188402 9.56168175 28.53671837 -1.73897696 9.51004887 26.37287331 -2.72746396 9.52183247
		 25.76643562 -2.70529199 9.52243519 27.79651833 -2.44482803 9.51407719 27.066335678 -2.68649793 9.5185709
		 23.36524773 0.137887 11.23706722 29.3659687 0.61429799 11.35250854 28.93505287 -0.69591898 11.35759163
		 23.6169529 -1.420169 11.49164772 24.42301369 -2.11754394 11.44009209;
	setAttr ".vt[1328:1493]" 28.87382698 1.67360401 11.3585968 28.35539055 2.25696206 11.3917141
		 26.3301754 2.75160599 11.4583931 25.76080513 2.73611307 11.46083641 27.70883369 2.61078501 11.42628479
		 27.013547897 2.72314596 11.44505882 29.66967201 0.57296097 13.44463444 23.46286201 -2.1347599 14.17947578
		 24.26698112 -2.28894496 14.19719219 22.67375374 1.79441905 14.14953995 29.041200638 1.63124597 13.48988819
		 28.5417347 2.20426011 13.68971443 26.41841698 2.80089498 14.10864162 25.7593174 2.81362605 14.12707233
		 27.91651726 2.5691731 13.90237999 27.17513847 2.72387409 14.026309967 23.55460167 1.84890699 13.27831459
		 24.36483955 2.32556105 13.24331188 28.44632149 -1.61017001 13.010532379 26.36882973 -2.39096594 13.26956081
		 25.76719475 -2.3871119 13.2806282 27.80377007 -2.21792197 13.14248943 27.086488724 -2.37648606 13.21849155
		 22.7552166 -1.76753402 13.65351009 23.15058327 -1.84187102 13.46168041 22.73082161 -1.36320496 13.28547478
		 22.64359093 0.036316998 13.039546967 22.10837364 1.64203799 14.36568642 22.69608498 1.24594295 13.33299065
		 28.76867867 -0.744569 27.63348198 28.38079643 -0.57757699 27.65574265 28.74211311 -0.72602099 26.82798004
		 29.31121254 -0.47409201 26.81411934 28.75856209 0.36322501 27.6452179 28.74460793 0.98170698 26.9058857
		 28.16401482 0.78159499 26.91891479 28.37782097 0.225265 27.66526222 25.76302147 -0.82741201 28.26403427
		 25.38783073 -0.68180799 28.31542397 24.7976017 2.73871803 17.29927444 24.68171883 2.61206698 18.55453873
		 24.91466331 -3.25546098 -1.54578102 25.021390915 -2.85735607 4.54204798 25.14789009 2.66709805 9.5633173
		 25.067174911 2.93523908 4.71380186 25.7902813 -0.71428901 27.34820175 26.34246635 -0.52184099 27.38764954
		 25.35972786 0.036635 28.49283409 25.74310493 0.153273 28.51003838 25.75816154 0.64740199 27.66625404
		 25.18541145 0.49320999 27.64606094 24.94979286 -1.82981706 16.20429993 24.86321068 -1.42759705 17.29918098
		 24.59443092 2.34689689 19.64430046 25.13363075 -2.57093596 9.52202702 25.17858315 2.62357497 11.45922089
		 25.091470718 2.73190498 14.1145916 24.89868355 2.849195 16.20429993 25.13667488 -2.3426609 13.26649094
		 25.11413002 -2.32542491 14.1145916 21.35056114 -0.81186199 27.48349762 20.91285515 -0.62596297 27.39839172
		 24.76395607 -1.38348401 18.55434036 21.59478951 -0.85047698 26.65267372 22.21592903 -0.630759 26.81754112
		 20.91707039 0.19194201 27.48065948 21.3649044 0.30611199 27.58771133 21.59420586 0.68554002 26.69220734
		 20.9601841 0.511401 26.53304482 31.17216301 0.79369301 24.42066383 31.52789116 0.663351 24.34585762
		 28.74749565 1.64612806 12.2538147 28.89783287 1.63851094 12.88651752 31.10477638 1.29121494 23.85191917
		 30.5822773 1.091652989 23.9167614 31.51127815 -0.145436 24.20913124 31.15563011 -0.30910999 24.23298454
		 31.085477829 -0.39912501 23.63041115 31.65010262 -0.150575 23.5714817 30.82428551 -0.146359 24.3116684
		 18.11931038 -0.26308399 23.33394432 17.95565224 -0.584131 23.34470177 23.15073967 1.32690597 12.89387321
		 26.13246727 0.036352001 28.470438 21.80228615 0.15527301 27.67198753 29.13105965 0.230712 27.62259102
		 31.64757347 0.29699099 24.27063942 31.86192894 0.53230602 23.63579559 31.67107582 1.092772961 23.73225212
		 30.39813042 0.53285599 23.86497879 30.57504845 -0.151646 23.75332069 28.23043251 -0.13776401 27.67030525
		 27.95192146 0.209539 26.9008522 28.15533257 -0.48213401 26.85870934 29.51093864 0.220052 26.84276581
		 29.30768394 0.78954798 26.87487793 25.23427391 -0.28900099 28.41718864 25.012254715 0.035990998 27.54966164
		 25.23130608 -0.52022099 27.41600227 26.5359478 0.033950999 27.5093689 26.33994865 0.49151599 27.61664581
		 20.75183296 -0.173777 27.42723465 20.73079872 0.0059799999 26.48116493 20.96132469 -0.61507702 26.50100136
		 22.44141197 -0.013039 26.88537407 22.21520805 0.495805 26.83615112 17.98988533 0.14785799 23.33133698
		 18.5372982 -0.113614 22.9371109 18.40839577 0.34358901 22.84833717 17.38910866 -0.65140003 23.038427353
		 17.2469883 -0.18849701 22.39563751 17.39823723 -0.710127 22.47286606 17.67989159 0.265012 23.21421623
		 21.96360207 -1.85470903 16.42551613 21.61190987 -1.35824502 17.38869667 17.94843483 0.46378499 22.65900993
		 17.44411278 0.253824 22.45219231 17.73088646 -0.74813598 23.19384575 17.74430656 -0.87827599 22.75644875
		 18.20326042 -0.66178799 23.0065078735 21.5722065 1.60209501 15.19660378 21.29155159 -0.97721702 18.15934753
		 22.075311661 1.89918399 15.59779453 21.86480141 1.83851004 16.4217186 22.15505791 -0.459461 24.75309753
		 22.87788963 -0.219181 24.91939735 21.1410923 0.479157 24.52233315 21.40596199 -0.213153 24.57868767
		 22.11347389 1.24651802 24.75344276 21.39104652 1.041851044 24.58229446 23.1044178 0.48621801 24.98066521
		 22.82918358 1.058869004 24.92409134 25.86090279 -0.264263 25.39102554 26.55688286 -0.033870999 25.41395378
		 24.88384819 0.68138999 25.50017929 25.15194511 -0.029691 25.42425728 25.80401039 1.46491802 25.56125832
		 25.082525253 1.27496302 25.54995728 26.77867317 0.67537498 25.48194885 26.53988838 1.26958799 25.53938675
		 28.67405319 -0.32499129 24.53508377 29.3843174 -0.02738872 24.49659538 27.70299149 0.84691167 24.77891541
		 27.93901253 -0.039815459 24.65304565 28.66487122 1.81474841 24.78956223 27.94283676 1.58027303 24.84052658
		 29.60657883 0.85875899 24.57799149 29.36683273 1.58551455 24.6880703 21.62347603 1.76895297 17.3662529
		 23.12940788 1.68264604 13.39273739 22.7831192 1.70604765 22.28079796 23.6564045 1.55205214 22.5015316
		 23.95897865 0.70740414 22.59062386 23.74603462 -0.34221831 22.49354172 22.85533142 -0.66969246 22.27610779
		 21.9260788 -0.38353679 22.045312881 21.63607407 0.5630517 22.00046920776 21.90417671 1.36974251 22.054189682
		 25.82954407 2.16023564 22.62400246 26.67160606 1.83413982 22.62216568 26.93514633 0.89578527 22.62626457
		 26.70052528 -0.19540395 22.56146622 25.90180206 -0.55028814 22.54596519 25.089179993 -0.1931209 22.55238152
		 24.7972374 0.89924043 22.62006569 25.0079498291 1.83718312 22.61330032;
	setAttr ".vt[1494:1529]" 28.41942215 2.070139647 22.24150467 29.16052055 1.76154542 22.016956329
		 29.41632271 0.81046361 21.93179703 29.22221947 -0.34102893 21.89818001 28.47039413 -0.70655674 22.085380554
		 27.68065834 -0.33881548 22.32637787 27.44408417 0.83702719 22.4725647 27.66760635 1.80129123 22.44195175
		 30.57396698 1.81086624 20.42889404 31.18985176 1.54866815 19.95422554 31.41851234 0.87174433 19.82021332
		 31.19240379 0.006528616 19.95071602 30.56575012 -0.40642381 20.42086411 29.97821236 -0.22754067 20.88500214
		 29.79641533 0.75496203 21.044929504 29.98587227 1.5894258 20.89398003 23.68626022 2.62579322 -4.015609264
		 22.53831482 1.69035029 -4.014605045 22.19644356 0.23180449 -4.015058517 22.54367256 -1.55759418 -4.029555798
		 23.68482971 -2.63079715 -4.032382488 24.89479637 -3.4016099 -4.032882214 25.84135056 -3.58040094 -4.032822609
		 26.74385071 -3.62284803 -4.032688618 27.6801796 -3.5793488 -4.032455921 28.64209557 -3.37836456 -4.031983376
		 29.82668686 -2.47834206 -4.029328823 30.92354584 -0.93210089 -4.012778759 31.39528847 0.83347946 -4.011118889
		 30.92363548 2.012681961 -4.011525631 29.82481003 3.037428379 -4.013943195 28.6392765 3.41950393 -4.015539169
		 27.67995644 3.57261801 -4.015797138 26.74194145 3.6558404 -4.015912056 25.84115982 3.57307053 -4.0161376
		 24.89874268 3.36002421 -4.016224861;
	setAttr -s 3094 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 748 1 2 3 1 3 747 1 4 756 1 5 6 1 6 757 1 7 4 1
		 1 8 1 8 749 1 9 2 1 10 11 1 11 12 1 12 10 1 13 14 1 14 15 1 15 16 1 16 13 1 17 18 1
		 18 19 1 19 20 1 20 17 1 21 22 1 22 23 1 23 21 1 24 25 1 25 26 1 26 27 1 27 24 1 28 29 1
		 29 30 1 30 31 1 31 28 1 32 33 1 33 34 1 34 35 1 35 32 1 36 13 1 13 37 1 37 38 1 38 36 1
		 39 40 1 40 41 1 41 42 1 42 39 1 28 43 1 43 44 1 44 45 1 45 28 1 46 47 1 47 48 1 48 49 1
		 49 46 1 50 51 1 51 52 1 52 53 1 53 50 1 54 55 1 55 56 1 56 57 1 57 54 1 58 59 1 59 60 1
		 60 61 1 61 58 1 62 63 1 63 64 1 64 62 1 65 66 1 66 67 1 67 65 1 68 69 1 69 70 1 70 68 1
		 71 72 1 72 73 1 73 74 1 74 71 1 75 76 1 76 77 1 77 78 1 78 75 1 79 80 1 80 81 1 81 82 1
		 82 79 1 83 84 1 84 85 1 85 86 1 86 83 1 87 88 1 88 89 1 89 90 1 90 87 1 91 92 1 92 93 1
		 93 94 1 94 91 1 95 96 1 96 97 1 97 98 1 98 95 1 99 100 1 100 101 1 101 102 1 102 99 1
		 92 103 1 103 104 1 104 105 1 105 92 1 36 40 1 40 106 1 106 107 1 107 36 1 13 108 1
		 108 109 1 109 14 1 91 96 1 96 110 1 110 111 1 111 91 1 112 84 1 84 113 1 113 114 1
		 114 112 1 99 87 1 87 115 1 115 116 1 116 99 1 100 117 1 117 118 1 118 119 1 119 100 1
		 83 71 1 71 120 1 120 121 1 121 83 1 122 123 1 124 125 1 126 127 1 128 129 1 130 131 1
		 132 133 1 134 135 1 136 137 1 138 139 1 140 141 1 142 143 1 144 145 1 146 147 1 148 149 1
		 150 151 1 152 153 1 154 155 1 155 156 1 156 157 1 157 154 1 158 159 1 159 160 1 160 161 1
		 161 158 1 162 163 1 163 760 1 164 165 1 165 759 1 166 167 1;
	setAttr ".ed[166:331]" 167 168 1 168 169 1 169 166 1 170 171 1 171 172 1 172 173 1
		 173 170 1 174 175 1 175 764 1 176 177 1 177 763 1 178 179 1 179 180 1 180 181 1 181 178 1
		 79 84 1 84 182 1 182 183 1 183 79 1 184 185 1 185 186 1 186 187 1 187 184 1 90 92 1
		 92 188 1 188 189 1 189 90 1 190 191 1 191 192 1 192 193 1 193 190 1 194 195 1 195 196 1
		 196 197 1 197 194 1 198 762 1 199 200 1 200 761 1 201 198 1 202 203 1 203 204 1 204 205 1
		 205 202 1 112 87 1 87 206 1 206 207 1 207 112 1 208 209 1 209 210 1 210 211 1 211 208 1
		 212 213 1 213 214 1 214 215 1 215 212 1 216 217 1 217 218 1 218 219 1 219 216 1 220 221 1
		 221 222 1 222 223 1 223 220 1 213 224 1 224 225 1 225 226 1 226 213 1 227 228 1 228 229 1
		 229 230 1 230 227 1 231 232 1 232 233 1 233 234 1 234 231 1 235 236 1 236 237 1 237 238 1
		 238 235 1 239 240 1 240 241 1 241 242 1 242 239 1 243 244 1 244 245 1 245 246 1 246 243 1
		 247 248 1 248 249 1 249 250 1 250 247 1 209 251 1 251 252 1 252 253 1 253 209 1 254 243 1
		 246 255 1 255 254 1 256 257 1 257 258 1 258 259 1 259 256 1 260 261 1 261 262 1 262 263 1
		 263 260 1 264 265 1 265 266 1 266 267 1 267 264 1 257 268 1 268 269 1 269 270 1 270 257 1
		 261 271 1 271 272 1 272 4 1 4 261 1 273 274 1 274 275 1 275 276 1 276 273 1 277 278 1
		 278 279 1 279 280 1 280 277 1 281 282 1 282 283 1 283 284 1 284 281 1 285 286 1 286 287 1
		 287 288 1 288 285 1 289 290 1 290 291 1 291 292 1 292 289 1 270 3 1 3 258 1 7 262 1
		 265 2 1 9 266 1 274 293 1 293 165 1 165 275 1 282 199 1 199 177 1 177 283 1 290 164 1
		 164 200 1 200 291 1 294 746 1 269 745 1 295 294 1 272 755 1 296 5 1 280 751 1 297 298 1
		 298 752 1 287 753 1 299 300 1 300 754 1 301 302 1 302 303 1 303 304 1;
	setAttr ".ed[332:497]" 304 301 1 305 306 1 306 307 1 307 308 1 308 305 1 309 310 1
		 310 311 1 311 312 1 312 309 1 313 314 1 314 315 1 315 316 1 316 313 1 317 318 1 318 319 1
		 319 320 1 320 317 1 321 322 1 322 323 1 323 324 1 324 321 1 325 326 1 326 327 1 327 328 1
		 328 325 1 329 330 1 330 331 1 331 332 1 332 329 1 333 334 1 334 335 1 335 336 1 336 333 1
		 337 338 1 338 339 1 339 340 1 340 337 1 341 342 1 342 343 1 343 344 1 344 341 1 345 346 1
		 346 347 1 347 348 1 348 345 1 349 350 1 350 351 1 351 352 1 352 349 1 353 354 1 354 355 1
		 355 356 1 356 353 1 357 358 1 358 359 1 359 360 1 360 357 1 361 362 1 362 363 1 363 364 1
		 364 361 1 365 366 1 366 367 1 367 368 1 368 365 1 369 370 1 370 371 1 371 372 1 372 369 1
		 373 374 1 374 375 1 375 376 1 376 373 1 377 378 1 378 379 1 379 380 1 380 377 1 381 382 1
		 382 717 1 140 718 1 142 720 1 383 384 1 384 719 1 144 714 1 385 386 1 386 713 1 138 716 1
		 387 388 1 388 715 1 132 726 1 389 390 1 390 725 1 391 392 1 392 727 1 134 728 1 136 722 1
		 393 394 1 394 721 1 130 724 1 395 396 1 396 723 1 397 398 1 398 733 1 148 734 1 399 400 1
		 400 735 1 150 736 1 152 730 1 401 402 1 402 729 1 146 732 1 403 404 1 404 731 1 124 738 1
		 405 406 1 406 737 1 407 408 1 408 739 1 126 740 1 409 410 1 410 741 1 128 742 1 411 412 1
		 412 743 1 122 744 1 413 414 1 414 415 1 415 416 1 416 413 1 417 418 1 418 419 1 419 420 1
		 420 417 1 421 422 1 422 423 1 423 424 1 424 421 1 425 426 1 426 427 1 427 428 1 428 425 1
		 429 430 1 430 431 1 431 432 1 432 429 1 433 434 1 434 435 1 435 436 1 436 433 1 437 438 1
		 438 439 1 439 440 1 440 437 1 441 442 1 442 443 1 443 444 1 444 441 1 247 445 1 445 446 1
		 446 248 1 61 47 1 47 447 1 447 448 1 448 61 1 449 450 1 450 451 1;
	setAttr ".ed[498:663]" 451 452 1 452 449 1 294 453 1 453 454 1 454 0 1 0 294 1
		 1 455 1 455 456 1 456 8 1 457 458 1 458 459 1 459 297 1 297 457 1 299 298 1 298 460 1
		 460 461 1 461 299 1 300 462 1 462 463 1 463 296 1 296 300 1 5 464 1 464 465 1 465 6 1
		 466 467 1 467 468 1 468 162 1 162 466 1 163 469 1 469 470 1 470 201 1 201 163 1 174 198 1
		 198 471 1 471 472 1 472 174 1 295 175 1 175 473 1 473 474 1 474 295 1 475 476 1 476 477 1
		 477 20 1 20 475 1 171 478 1 478 479 1 479 480 1 480 171 1 195 481 1 481 482 1 482 170 1
		 170 195 1 159 483 1 483 484 1 484 194 1 194 159 1 485 486 1 486 487 1 487 158 1 158 485 1
		 488 489 1 489 490 1 490 491 1 491 488 1 492 493 1 493 494 1 494 495 1 495 492 1 496 497 1
		 497 498 1 498 499 1 499 496 1 500 501 1 501 502 1 502 503 1 503 500 1 17 504 1 504 505 1
		 505 18 1 455 454 1 454 477 1 476 455 1 478 458 1 458 456 1 456 479 1 481 460 1 460 459 1
		 459 482 1 462 461 1 461 484 1 483 462 1 464 463 1 463 487 1 486 464 1 467 465 1 465 490 1
		 489 467 1 493 469 1 469 468 1 468 494 1 497 471 1 471 470 1 470 498 1 501 473 1 473 472 1
		 472 502 1 453 474 1 474 505 1 504 453 1 506 507 1 507 508 1 508 253 1 253 506 1 219 509 1
		 509 510 1 510 511 1 511 219 1 512 513 1 513 514 1 514 212 1 212 512 1 515 516 1 516 517 1
		 517 518 1 518 515 1 519 520 1 520 521 1 521 522 1 522 519 1 523 512 1 512 524 1 524 525 1
		 525 523 1 39 509 1 509 526 1 526 527 1 527 39 1 528 529 1 529 530 1 530 531 1 531 528 1
		 532 533 1 533 534 1 534 535 1 535 532 1 536 537 1 537 538 1 538 539 1 539 536 1 540 541 1
		 541 542 1 542 543 1 543 540 1 506 544 1 544 545 1 545 16 1 16 506 1 546 547 1 547 548 1
		 548 549 1 549 546 1 540 550 1 550 551 1 551 250 1 250 540 1 256 552 1;
	setAttr ".ed[664:829]" 552 268 1 260 553 1 553 271 1 278 554 1 554 555 1 555 279 1
		 556 557 1 557 286 1 285 556 1 259 558 1 558 32 1 32 256 1 263 559 1 559 560 1 560 260 1
		 561 264 1 267 562 1 562 561 1 563 273 1 276 564 1 564 563 1 565 281 1 284 566 1 566 565 1
		 567 289 1 292 568 1 568 567 1 226 569 1 569 214 1 570 571 1 571 217 1 216 570 1 208 572 1
		 572 251 1 221 573 1 573 574 1 574 222 1 575 576 1 576 229 1 228 575 1 577 578 1 578 237 1
		 236 577 1 579 208 1 211 580 1 580 579 1 225 581 1 581 24 1 24 226 1 582 231 1 234 583 1
		 583 582 1 584 239 1 242 585 1 585 584 1 451 245 1 245 586 1 586 587 1 587 451 1 588 244 1
		 244 446 1 446 589 1 589 588 1 445 590 1 590 572 1 572 591 1 591 445 1 592 70 1 70 593 1
		 593 592 1 114 115 1 118 120 1 71 119 1 147 148 1 151 152 1 155 190 1 193 156 1 197 160 1
		 179 202 1 205 180 1 207 182 1 538 238 1 238 227 1 227 532 1 532 538 1 231 242 1 241 232 1
		 277 287 1 286 278 1 291 282 1 281 292 1 68 592 1 592 594 1 594 595 1 595 68 1 596 597 1
		 597 598 1 598 599 1 599 596 1 398 403 1 402 399 1 484 481 1 492 499 1 498 493 1 241 521 1
		 521 515 1 515 232 1 119 539 1 539 535 1 535 100 1 557 554 1 202 568 1 568 565 1 565 203 1
		 578 575 1 228 237 1 190 585 1 585 582 1 582 191 1 600 64 1 64 601 1 601 600 1 89 93 1
		 100 95 1 98 101 1 131 132 1 135 136 1 191 166 1 169 192 1 173 196 1 203 187 1 186 204 1
		 189 206 1 533 230 1 230 602 1 602 603 1 603 533 1 604 280 1 279 605 1 605 604 1 606 284 1
		 283 607 1 607 606 1 176 607 1 604 750 1 62 600 1 600 608 1 608 609 1 609 62 1 610 611 1
		 611 612 1 612 613 1 613 610 1 390 395 1 394 391 1 482 478 1 496 503 1 502 497 1 614 233 1
		 233 518 1 518 615 1 615 614 1 95 534 1 534 616 1 616 96 1 555 617 1;
	setAttr ".ed[830:995]" 617 605 1 187 566 1 566 618 1 618 184 1 576 619 1 619 620 1
		 620 229 1 166 583 1 583 621 1 621 167 1 604 9 1 8 457 1 603 507 1 507 15 1 15 616 1
		 616 603 1 480 19 1 19 172 1 622 571 1 571 30 1 30 621 1 621 622 1 606 552 1 552 35 1
		 35 618 1 618 606 1 623 67 1 67 624 1 624 623 1 104 106 1 40 105 1 96 14 1 109 110 1
		 139 140 1 143 144 1 619 211 1 210 620 1 526 218 1 218 615 1 615 625 1 625 526 1 266 605 1
		 617 267 1 176 269 1 268 607 1 65 623 1 623 626 1 626 627 1 627 65 1 628 629 1 629 630 1
		 630 631 1 631 628 1 382 387 1 386 383 1 475 480 1 479 476 1 500 18 1 505 501 1 210 508 1
		 508 602 1 602 620 1 105 527 1 527 188 1 29 562 1 562 168 1 167 29 1 614 217 1 622 614 1
		 34 580 1 580 185 1 184 34 1 632 12 1 12 633 1 633 632 1 73 76 1 75 74 1 82 85 1 123 124 1
		 127 128 1 25 154 1 157 560 1 560 25 1 161 491 1 491 485 1 293 758 1 634 178 1 181 635 1
		 635 634 1 183 523 1 523 80 1 530 223 1 223 235 1 235 537 1 537 530 1 239 225 1 224 240 1
		 288 272 1 271 285 1 275 290 1 289 276 1 632 636 1 636 637 1 637 10 1 10 632 1 638 639 1
		 639 640 1 640 641 1 641 638 1 406 411 1 410 407 1 487 483 1 488 495 1 494 489 1 224 514 1
		 514 522 1 522 240 1 74 531 1 531 536 1 536 71 1 553 556 1 178 564 1 564 567 1 567 179 1
		 574 577 1 236 222 1 154 581 1 581 584 1 584 155 1 293 7 1 6 466 1 11 642 1 642 12 1
		 643 23 1 23 644 1 644 643 1 573 569 1 569 27 1 27 635 1 635 573 1 38 41 1 44 645 1
		 645 33 1 33 45 1 49 51 1 50 46 1 58 57 1 56 59 1 63 646 1 646 64 1 66 647 1 647 67 1
		 69 648 1 648 70 1 80 78 1 77 81 1 86 72 1 94 97 1 102 88 1 107 108 1 111 103 1 116 117 1
		 121 113 1 125 126 1 129 122 1 133 134 1;
	setAttr ".ed[996:1161]" 137 130 1 141 142 1 145 138 1 149 150 1 153 146 1 495 161 1
		 160 492 1 172 500 1 503 173 1 499 197 1 196 496 1 524 215 1 215 220 1 220 529 1 529 524 1
		 541 249 1 249 254 1 254 547 1 547 541 1 264 259 1 258 265 1 273 263 1 262 274 1 310 305 1
		 308 311 1 315 302 1 301 316 1 633 649 1 649 650 1 650 651 1 651 633 1 11 652 1 652 653 1
		 653 642 1 654 655 1 655 656 1 656 593 1 593 654 1 69 657 1 657 658 1 658 648 1 659 660 1
		 660 661 1 661 601 1 601 659 1 63 662 1 662 663 1 663 646 1 664 665 1 665 666 1 666 624 1
		 624 664 1 66 667 1 667 668 1 668 647 1 384 381 1 388 385 1 392 389 1 396 393 1 400 397 1
		 404 401 1 408 405 1 412 409 1 305 415 1 415 428 1 428 306 1 316 424 1 424 417 1 417 313 1
		 669 643 1 643 670 1 670 671 1 671 669 1 672 22 1 22 673 1 673 674 1 674 672 1 243 248 1
		 477 504 1 490 486 1 78 525 1 525 528 1 528 75 1 57 542 1 542 546 1 546 54 1 45 558 1
		 558 561 1 561 28 1 26 559 1 559 563 1 563 634 1 634 26 1 221 214 1 591 589 1 654 70 1
		 70 599 1 599 654 1 659 64 1 64 610 1 610 659 1 664 67 1 67 628 1 628 664 1 649 12 1
		 12 638 1 638 649 1 642 639 1 639 12 1 651 636 1 641 650 1 653 640 1 637 652 1 329 637 1
		 636 320 1 320 329 1 640 327 1 327 324 1 324 641 1 650 323 1 323 317 1 317 651 1 328 653 1
		 652 332 1 332 328 1 656 594 1 598 655 1 658 597 1 596 648 1 595 657 1 594 336 1 336 348 1
		 348 595 1 337 598 1 597 343 1 343 337 1 333 656 1 655 340 1 340 333 1 657 347 1 347 344 1
		 344 658 1 596 70 1 661 608 1 613 660 1 663 612 1 611 646 1 609 662 1 608 352 1 352 364 1
		 364 609 1 353 613 1 612 360 1 360 353 1 349 661 1 660 356 1 356 349 1 662 363 1 363 357 1
		 357 663 1 666 626 1 631 665 1 668 630 1 629 647 1 627 667 1 626 368 1;
	setAttr ".ed[1162:1327]" 368 380 1 380 627 1 369 631 1 630 375 1 375 369 1 365 666 1
		 665 372 1 372 365 1 667 379 1 379 376 1 376 668 1 611 64 1 67 629 1 675 23 1 23 669 1
		 669 675 1 52 55 1 54 53 1 60 48 1 450 246 1 548 255 1 255 676 1 676 677 1 677 548 1
		 306 304 1 303 307 1 312 314 1 313 309 1 309 420 1 420 416 1 416 310 1 304 427 1 427 421 1
		 421 301 1 675 678 1 678 679 1 679 21 1 21 675 1 680 681 1 681 682 1 682 644 1 644 680 1
		 448 543 1 543 58 1 683 590 1 247 683 1 53 549 1 549 684 1 684 50 1 685 683 1 683 551 1
		 551 686 1 686 685 1 680 23 1 23 672 1 672 680 1 671 678 1 682 670 1 674 681 1 679 673 1
		 670 435 1 435 429 1 429 671 1 437 674 1 673 444 1 444 437 1 441 679 1 678 432 1 432 441 1
		 681 440 1 440 436 1 436 682 1 687 688 1 688 377 1 377 367 1 367 687 1 371 689 1 689 690 1
		 690 366 1 366 371 1 374 691 1 691 692 1 692 370 1 370 374 1 693 694 1 694 373 1 373 378 1
		 378 693 1 690 687 1 694 691 1 692 689 1 688 693 1 695 696 1 696 361 1 361 351 1 351 695 1
		 697 698 1 698 350 1 350 355 1 355 697 1 359 699 1 699 700 1 700 354 1 354 359 1 701 702 1
		 702 358 1 358 362 1 362 701 1 698 695 1 702 699 1 700 697 1 696 701 1 703 704 1 704 345 1
		 345 335 1 335 703 1 705 706 1 706 334 1 334 339 1 339 705 1 342 707 1 707 708 1 708 338 1
		 338 342 1 346 709 1 709 710 1 710 341 1 341 346 1 706 703 1 710 707 1 708 705 1 704 709 1
		 138 688 1 687 139 1 140 690 1 689 141 1 142 692 1 691 143 1 144 694 1 693 145 1 130 696 1
		 695 131 1 132 698 1 697 133 1 134 700 1 699 135 1 136 702 1 701 137 1 146 704 1 703 147 1
		 148 706 1 705 149 1 150 708 1 707 151 1 152 710 1 709 153 1 319 123 1 122 330 1 330 319 1
		 124 318 1 318 322 1 322 125 1 126 321 1 321 326 1 326 127 1 128 325 1;
	setAttr ".ed[1328:1493]" 325 331 1 331 129 1 382 104 1 103 387 1 106 381 1 384 107 1
		 108 383 1 386 109 1 110 385 1 388 111 1 390 89 1 88 395 1 93 389 1 392 94 1 97 391 1
		 394 98 1 101 393 1 396 102 1 113 403 1 398 114 1 115 397 1 400 116 1 402 118 1 117 399 1
		 404 121 1 120 401 1 406 73 1 72 411 1 408 77 1 76 405 1 81 407 1 410 82 1 85 409 1
		 412 86 1 48 425 1 425 414 1 414 49 1 51 413 1 413 419 1 419 52 1 423 56 1 55 418 1
		 418 423 1 59 422 1 422 426 1 426 60 1 302 442 1 442 431 1 431 303 1 307 430 1 430 434 1
		 434 308 1 311 433 1 433 439 1 439 312 1 443 315 1 314 438 1 438 443 1 42 510 1 182 519 1
		 519 513 1 513 183 1 188 625 1 625 517 1 517 189 1 206 516 1 516 520 1 520 207 1 447 711 1
		 711 550 1 550 448 1 545 37 1 677 684 1 156 556 1 553 157 1 555 169 1 168 617 1 192 554 1
		 557 193 1 570 31 1 574 181 1 180 577 1 576 186 1 185 619 1 578 205 1 204 575 1 33 579 1
		 234 622 1 589 44 1 43 588 1 591 645 1 31 587 1 587 43 1 579 712 1 712 572 1 712 645 1
		 46 38 1 37 47 1 41 50 1 684 42 1 711 544 1 544 252 1 252 686 1 686 711 1 216 449 1
		 452 570 1 449 511 1 511 676 1 676 450 1 447 545 1 677 510 1 685 251 1 590 685 1 452 587 1
		 586 588 1 713 143 1 714 385 1 713 714 1 715 145 1 714 715 1 716 387 1 715 716 1 717 139 1
		 716 717 1 718 381 1 717 718 1 719 141 1 718 719 1 720 383 1 719 720 1 720 713 1 721 135 1
		 722 393 1 721 722 1 723 137 1 722 723 1 724 395 1 723 724 1 725 131 1 724 725 1 726 389 1
		 725 726 1 727 133 1 726 727 1 728 391 1 727 728 1 728 721 1 729 151 1 730 401 1 729 730 1
		 731 153 1 730 731 1 732 403 1 731 732 1 733 147 1 732 733 1 734 397 1 733 734 1 735 149 1
		 734 735 1 736 399 1 735 736 1 736 729 1 737 123 1 738 405 1 737 738 1;
	setAttr ".ed[1494:1659]" 739 125 1 738 739 1 740 407 1 739 740 1 741 127 1 740 741 1
		 742 409 1 741 742 1 743 129 1 742 743 1 744 411 1 743 744 1 744 737 1 745 295 1 746 270 1
		 745 746 1 747 0 1 746 747 1 748 2 1 747 748 1 749 9 1 748 749 1 750 457 1 749 750 1
		 751 297 1 750 751 1 752 277 1 751 752 1 753 299 1 752 753 1 754 288 1 753 754 1 755 296 1
		 754 755 1 756 5 1 755 756 1 757 7 1 756 757 1 758 466 1 757 758 1 759 162 1 758 759 1
		 760 164 1 759 760 1 761 201 1 760 761 1 762 199 1 761 762 1 763 174 1 762 763 1 764 176 1
		 763 764 1 764 745 1 765 766 1 766 1513 1 767 768 1 768 1512 1 769 1521 1 770 771 1
		 771 1522 1 772 769 1 766 773 1 773 1514 1 774 767 1 775 776 1 776 777 1 777 775 1
		 778 779 1 779 780 1 780 781 1 781 778 1 782 783 1 783 784 1 784 785 1 785 782 1 786 787 1
		 787 788 1 788 786 1 789 790 1 790 791 1 791 792 1 792 789 1 793 794 1 794 795 1 795 796 1
		 796 793 1 797 798 1 798 799 1 799 800 1 800 797 1 801 778 1 778 802 1 802 803 1 803 801 1
		 804 805 1 805 806 1 806 807 1 807 804 1 793 808 1 808 809 1 809 810 1 810 793 1 811 812 1
		 812 813 1 813 814 1 814 811 1 815 816 1 816 817 1 817 818 1 818 815 1 819 820 1 820 821 1
		 821 822 1 822 819 1 823 824 1 824 825 1 825 826 1 826 823 1 827 828 1 828 829 1 829 827 1
		 830 831 1 831 832 1 832 830 1 833 834 1 834 835 1 835 833 1 836 837 1 837 838 1 838 839 1
		 839 836 1 840 841 1 841 842 1 842 843 1 843 840 1 844 845 1 845 846 1 846 847 1 847 844 1
		 848 849 1 849 850 1 850 851 1 851 848 1 852 853 1 853 854 1 854 855 1 855 852 1 856 857 1
		 857 858 1 858 859 1 859 856 1 860 861 1 861 862 1 862 863 1 863 860 1 864 865 1 865 866 1
		 866 867 1 867 864 1 857 868 1 868 869 1 869 870 1 870 857 1 801 805 1 805 871 1 871 872 1;
	setAttr ".ed[1660:1825]" 872 801 1 778 873 1 873 874 1 874 779 1 856 861 1 861 875 1
		 875 876 1 876 856 1 877 849 1 849 878 1 878 879 1 879 877 1 864 852 1 852 880 1 880 881 1
		 881 864 1 865 882 1 882 883 1 883 884 1 884 865 1 848 836 1 836 885 1 885 886 1 886 848 1
		 887 888 1 889 890 1 891 892 1 893 894 1 895 896 1 897 898 1 899 900 1 901 902 1 903 904 1
		 905 906 1 907 908 1 909 910 1 911 912 1 913 914 1 915 916 1 917 918 1 919 920 1 920 921 1
		 921 922 1 922 919 1 923 924 1 924 925 1 925 926 1 926 923 1 927 928 1 928 1525 1
		 929 930 1 930 1524 1 931 932 1 932 933 1 933 934 1 934 931 1 935 936 1 936 937 1
		 937 938 1 938 935 1 939 940 1 940 1529 1 941 942 1 942 1528 1 943 944 1 944 945 1
		 945 946 1 946 943 1 844 849 1 849 947 1 947 948 1 948 844 1 949 950 1 950 951 1 951 952 1
		 952 949 1 855 857 1 857 953 1 953 954 1 954 855 1 955 956 1 956 957 1 957 958 1 958 955 1
		 959 960 1 960 961 1 961 962 1 962 959 1 963 1527 1 964 965 1 965 1526 1 966 963 1
		 967 968 1 968 969 1 969 970 1 970 967 1 877 852 1 852 971 1 971 972 1 972 877 1 973 974 1
		 974 975 1 975 976 1 976 973 1 977 978 1 978 979 1 979 980 1 980 977 1 981 982 1 982 983 1
		 983 984 1 984 981 1 985 986 1 986 987 1 987 988 1 988 985 1 978 989 1 989 990 1 990 991 1
		 991 978 1 992 993 1 993 994 1 994 995 1 995 992 1 996 997 1 997 998 1 998 999 1 999 996 1
		 1000 1001 1 1001 1002 1 1002 1003 1 1003 1000 1 1004 1005 1 1005 1006 1 1006 1007 1
		 1007 1004 1 1008 1009 1 1009 1010 1 1010 1011 1 1011 1008 1 1012 1013 1 1013 1014 1
		 1014 1015 1 1015 1012 1 974 1016 1 1016 1017 1 1017 1018 1 1018 974 1 1019 1008 1
		 1011 1020 1 1020 1019 1 1021 1022 1 1022 1023 1 1023 1024 1 1024 1021 1 1025 1026 1
		 1026 1027 1 1027 1028 1 1028 1025 1 1029 1030 1 1030 1031 1 1031 1032 1 1032 1029 1
		 1022 1033 1 1033 1034 1 1034 1035 1;
	setAttr ".ed[1826:1991]" 1035 1022 1 1026 1036 1 1036 1037 1 1037 769 1 769 1026 1
		 1038 1039 1 1039 1040 1 1040 1041 1 1041 1038 1 1042 1043 1 1043 1044 1 1044 1045 1
		 1045 1042 1 1046 1047 1 1047 1048 1 1048 1049 1 1049 1046 1 1050 1051 1 1051 1052 1
		 1052 1053 1 1053 1050 1 1054 1055 1 1055 1056 1 1056 1057 1 1057 1054 1 1035 768 1
		 768 1023 1 772 1027 1 1030 767 1 774 1031 1 1039 1058 1 1058 930 1 930 1040 1 1047 964 1
		 964 942 1 942 1048 1 1055 929 1 929 965 1 965 1056 1 1059 1511 1 1034 1510 1 1060 1059 1
		 1037 1520 1 1061 770 1 1045 1516 1 1062 1063 1 1063 1517 1 1052 1518 1 1064 1065 1
		 1065 1519 1 1066 1067 1 1067 1068 1 1068 1069 1 1069 1066 1 1070 1071 1 1071 1072 1
		 1072 1073 1 1073 1070 1 1074 1075 1 1075 1076 1 1076 1077 1 1077 1074 1 1078 1079 1
		 1079 1080 1 1080 1081 1 1081 1078 1 1082 1083 1 1083 1084 1 1084 1085 1 1085 1082 1
		 1086 1087 1 1087 1088 1 1088 1089 1 1089 1086 1 1090 1091 1 1091 1092 1 1092 1093 1
		 1093 1090 1 1094 1095 1 1095 1096 1 1096 1097 1 1097 1094 1 1098 1099 1 1099 1100 1
		 1100 1101 1 1101 1098 1 1102 1103 1 1103 1104 1 1104 1105 1 1105 1102 1 1106 1107 1
		 1107 1108 1 1108 1109 1 1109 1106 1 1110 1111 1 1111 1112 1 1112 1113 1 1113 1110 1
		 1114 1115 1 1115 1116 1 1116 1117 1 1117 1114 1 1118 1119 1 1119 1120 1 1120 1121 1
		 1121 1118 1 1122 1123 1 1123 1124 1 1124 1125 1 1125 1122 1 1126 1127 1 1127 1128 1
		 1128 1129 1 1129 1126 1 1130 1131 1 1131 1132 1 1132 1133 1 1133 1130 1 1134 1135 1
		 1135 1136 1 1136 1137 1 1137 1134 1 1138 1139 1 1139 1140 1 1140 1141 1 1141 1138 1
		 1142 1143 1 1143 1144 1 1144 1145 1 1145 1142 1 1146 1147 1 1147 1482 1 905 1483 1
		 907 1485 1 1148 1149 1 1149 1484 1 909 1479 1 1150 1151 1 1151 1478 1 903 1481 1
		 1152 1153 1 1153 1480 1 897 1491 1 1154 1155 1 1155 1490 1 1156 1157 1 1157 1492 1
		 899 1493 1 901 1487 1 1158 1159 1 1159 1486 1 895 1489 1 1160 1161 1 1161 1488 1
		 1162 1163 1 1163 1498 1 913 1499 1 1164 1165 1 1165 1500 1 915 1501 1 917 1495 1
		 1166 1167 1 1167 1494 1 911 1497 1 1168 1169 1 1169 1496 1;
	setAttr ".ed[1992:2157]" 889 1503 1 1170 1171 1 1171 1502 1 1172 1173 1 1173 1504 1
		 891 1505 1 1174 1175 1 1175 1506 1 893 1507 1 1176 1177 1 1177 1508 1 887 1509 1
		 1178 1179 1 1179 1180 1 1180 1181 1 1181 1178 1 1182 1183 1 1183 1184 1 1184 1185 1
		 1185 1182 1 1186 1187 1 1187 1188 1 1188 1189 1 1189 1186 1 1190 1191 1 1191 1192 1
		 1192 1193 1 1193 1190 1 1194 1195 1 1195 1196 1 1196 1197 1 1197 1194 1 1198 1199 1
		 1199 1200 1 1200 1201 1 1201 1198 1 1202 1203 1 1203 1204 1 1204 1205 1 1205 1202 1
		 1206 1207 1 1207 1208 1 1208 1209 1 1209 1206 1 1012 1210 1 1210 1211 1 1211 1013 1
		 826 812 1 812 1212 1 1212 1213 1 1213 826 1 1214 1215 1 1215 1216 1 1216 1217 1 1217 1214 1
		 1059 1218 1 1218 1219 1 1219 765 1 765 1059 1 766 1220 1 1220 1221 1 1221 773 1 1222 1223 1
		 1223 1224 1 1224 1062 1 1062 1222 1 1064 1063 1 1063 1225 1 1225 1226 1 1226 1064 1
		 1065 1227 1 1227 1228 1 1228 1061 1 1061 1065 1 770 1229 1 1229 1230 1 1230 771 1
		 1231 1232 1 1232 1233 1 1233 927 1 927 1231 1 928 1234 1 1234 1235 1 1235 966 1 966 928 1
		 939 963 1 963 1236 1 1236 1237 1 1237 939 1 1060 940 1 940 1238 1 1238 1239 1 1239 1060 1
		 1240 1241 1 1241 1242 1 1242 785 1 785 1240 1 936 1243 1 1243 1244 1 1244 1245 1
		 1245 936 1 960 1246 1 1246 1247 1 1247 935 1 935 960 1 924 1248 1 1248 1249 1 1249 959 1
		 959 924 1 1250 1251 1 1251 1252 1 1252 923 1 923 1250 1 1253 1254 1 1254 1255 1 1255 1256 1
		 1256 1253 1 1257 1258 1 1258 1259 1 1259 1260 1 1260 1257 1 1261 1262 1 1262 1263 1
		 1263 1264 1 1264 1261 1 1265 1266 1 1266 1267 1 1267 1268 1 1268 1265 1 782 1269 1
		 1269 1270 1 1270 783 1 1220 1219 1 1219 1242 1 1241 1220 1 1243 1223 1 1223 1221 1
		 1221 1244 1 1246 1225 1 1225 1224 1 1224 1247 1 1227 1226 1 1226 1249 1 1248 1227 1
		 1229 1228 1 1228 1252 1 1251 1229 1 1232 1230 1 1230 1255 1 1254 1232 1 1258 1234 1
		 1234 1233 1 1233 1259 1 1262 1236 1 1236 1235 1 1235 1263 1 1266 1238 1 1238 1237 1
		 1237 1267 1 1218 1239 1 1239 1270 1 1269 1218 1 1271 1272 1 1272 1273 1 1273 1018 1
		 1018 1271 1;
	setAttr ".ed[2158:2323]" 984 1274 1 1274 1275 1 1275 1276 1 1276 984 1 1277 1278 1
		 1278 1279 1 1279 977 1 977 1277 1 1280 1281 1 1281 1282 1 1282 1283 1 1283 1280 1
		 1284 1285 1 1285 1286 1 1286 1287 1 1287 1284 1 1288 1277 1 1277 1289 1 1289 1290 1
		 1290 1288 1 804 1274 1 1274 1291 1 1291 1292 1 1292 804 1 1293 1294 1 1294 1295 1
		 1295 1296 1 1296 1293 1 1297 1298 1 1298 1299 1 1299 1300 1 1300 1297 1 1301 1302 1
		 1302 1303 1 1303 1304 1 1304 1301 1 1305 1306 1 1306 1307 1 1307 1308 1 1308 1305 1
		 1271 1309 1 1309 1310 1 1310 781 1 781 1271 1 1311 1312 1 1312 1313 1 1313 1314 1
		 1314 1311 1 1305 1315 1 1315 1316 1 1316 1015 1 1015 1305 1 1021 1317 1 1317 1033 1
		 1025 1318 1 1318 1036 1 1043 1319 1 1319 1320 1 1320 1044 1 1321 1322 1 1322 1051 1
		 1050 1321 1 1024 1323 1 1323 797 1 797 1021 1 1028 1324 1 1324 1325 1 1325 1025 1
		 1326 1029 1 1032 1327 1 1327 1326 1 1328 1038 1 1041 1329 1 1329 1328 1 1330 1046 1
		 1049 1331 1 1331 1330 1 1332 1054 1 1057 1333 1 1333 1332 1 991 1334 1 1334 979 1
		 1335 1336 1 1336 982 1 981 1335 1 973 1337 1 1337 1016 1 986 1338 1 1338 1339 1 1339 987 1
		 1340 1341 1 1341 994 1 993 1340 1 1342 1343 1 1343 1002 1 1001 1342 1 1344 973 1
		 976 1345 1 1345 1344 1 990 1346 1 1346 789 1 789 991 1 1347 996 1 999 1348 1 1348 1347 1
		 1349 1004 1 1007 1350 1 1350 1349 1 1216 1010 1 1010 1351 1 1351 1352 1 1352 1216 1
		 1353 1009 1 1009 1211 1 1211 1354 1 1354 1353 1 1210 1355 1 1355 1337 1 1337 1356 1
		 1356 1210 1 1357 835 1 835 1358 1 1358 1357 1 879 880 1 883 885 1 836 884 1 912 913 1
		 916 917 1 920 955 1 958 921 1 962 925 1 944 967 1 970 945 1 972 947 1 1303 1003 1
		 1003 992 1 992 1297 1 1297 1303 1 996 1007 1 1006 997 1 1042 1052 1 1051 1043 1 1056 1047 1
		 1046 1057 1 833 1357 1 1357 1359 1 1359 1360 1 1360 833 1 1361 1362 1 1362 1363 1
		 1363 1364 1 1364 1361 1 1163 1168 1 1167 1164 1 1249 1246 1 1257 1264 1 1263 1258 1
		 1006 1286 1 1286 1280 1 1280 997 1 884 1304 1 1304 1300 1 1300 865 1 1322 1319 1
		 967 1333 1 1333 1330 1;
	setAttr ".ed[2324:2489]" 1330 968 1 1343 1340 1 993 1002 1 955 1350 1 1350 1347 1
		 1347 956 1 1365 829 1 829 1366 1 1366 1365 1 854 858 1 865 860 1 863 866 1 896 897 1
		 900 901 1 956 931 1 934 957 1 938 961 1 968 952 1 951 969 1 954 971 1 1298 995 1
		 995 1367 1 1367 1368 1 1368 1298 1 1369 1045 1 1044 1370 1 1370 1369 1 1371 1049 1
		 1048 1372 1 1372 1371 1 941 1372 1 1369 1515 1 827 1365 1 1365 1373 1 1373 1374 1
		 1374 827 1 1375 1376 1 1376 1377 1 1377 1378 1 1378 1375 1 1155 1160 1 1159 1156 1
		 1247 1243 1 1261 1268 1 1267 1262 1 1379 998 1 998 1283 1 1283 1380 1 1380 1379 1
		 860 1299 1 1299 1381 1 1381 861 1 1320 1382 1 1382 1370 1 952 1331 1 1331 1383 1
		 1383 949 1 1341 1384 1 1384 1385 1 1385 994 1 931 1348 1 1348 1386 1 1386 932 1 1369 774 1
		 773 1222 1 1368 1272 1 1272 780 1 780 1381 1 1381 1368 1 1245 784 1 784 937 1 1387 1336 1
		 1336 795 1 795 1386 1 1386 1387 1 1371 1317 1 1317 800 1 800 1383 1 1383 1371 1 1388 832 1
		 832 1389 1 1389 1388 1 869 871 1 805 870 1 861 779 1 874 875 1 904 905 1 908 909 1
		 1384 976 1 975 1385 1 1291 983 1 983 1380 1 1380 1390 1 1390 1291 1 1031 1370 1 1382 1032 1
		 941 1034 1 1033 1372 1 830 1388 1 1388 1391 1 1391 1392 1 1392 830 1 1393 1394 1
		 1394 1395 1 1395 1396 1 1396 1393 1 1147 1152 1 1151 1148 1 1240 1245 1 1244 1241 1
		 1265 783 1 1270 1266 1 975 1273 1 1273 1367 1 1367 1385 1 870 1292 1 1292 953 1 794 1327 1
		 1327 933 1 932 794 1 1379 982 1 1387 1379 1 799 1345 1 1345 950 1 949 799 1 1397 777 1
		 777 1398 1 1398 1397 1 838 841 1 840 839 1 847 850 1 888 889 1 892 893 1 790 919 1
		 922 1325 1 1325 790 1 926 1256 1 1256 1250 1 1058 1523 1 1399 943 1 946 1400 1 1400 1399 1
		 948 1288 1 1288 845 1 1295 988 1 988 1000 1 1000 1302 1 1302 1295 1 1004 990 1 989 1005 1
		 1053 1037 1 1036 1050 1 1040 1055 1 1054 1041 1 1397 1401 1 1401 1402 1 1402 775 1
		 775 1397 1 1403 1404 1 1404 1405 1 1405 1406 1 1406 1403 1 1171 1176 1 1175 1172 1
		 1252 1248 1 1253 1260 1;
	setAttr ".ed[2490:2655]" 1259 1254 1 989 1279 1 1279 1287 1 1287 1005 1 839 1296 1
		 1296 1301 1 1301 836 1 1318 1321 1 943 1329 1 1329 1332 1 1332 944 1 1339 1342 1
		 1001 987 1 919 1346 1 1346 1349 1 1349 920 1 1058 772 1 771 1231 1 776 1407 1 1407 777 1
		 1408 788 1 788 1409 1 1409 1408 1 1338 1334 1 1334 792 1 792 1400 1 1400 1338 1 803 806 1
		 809 1410 1 1410 798 1 798 810 1 814 816 1 815 811 1 823 822 1 821 824 1 828 1411 1
		 1411 829 1 831 1412 1 1412 832 1 834 1413 1 1413 835 1 845 843 1 842 846 1 851 837 1
		 859 862 1 867 853 1 872 873 1 876 868 1 881 882 1 886 878 1 890 891 1 894 887 1 898 899 1
		 902 895 1 906 907 1 910 903 1 914 915 1 918 911 1 1260 926 1 925 1257 1 937 1265 1
		 1268 938 1 1264 962 1 961 1261 1 1289 980 1 980 985 1 985 1294 1 1294 1289 1 1306 1014 1
		 1014 1019 1 1019 1312 1 1312 1306 1 1029 1024 1 1023 1030 1 1038 1028 1 1027 1039 1
		 1075 1070 1 1073 1076 1 1080 1067 1 1066 1081 1 1398 1414 1 1414 1415 1 1415 1416 1
		 1416 1398 1 776 1417 1 1417 1418 1 1418 1407 1 1419 1420 1 1420 1421 1 1421 1358 1
		 1358 1419 1 834 1422 1 1422 1423 1 1423 1413 1 1424 1425 1 1425 1426 1 1426 1366 1
		 1366 1424 1 828 1427 1 1427 1428 1 1428 1411 1 1429 1430 1 1430 1431 1 1431 1389 1
		 1389 1429 1 831 1432 1 1432 1433 1 1433 1412 1 1149 1146 1 1153 1150 1 1157 1154 1
		 1161 1158 1 1165 1162 1 1169 1166 1 1173 1170 1 1177 1174 1 1070 1180 1 1180 1193 1
		 1193 1071 1 1081 1189 1 1189 1182 1 1182 1078 1 1434 1408 1 1408 1435 1 1435 1436 1
		 1436 1434 1 1437 787 1 787 1438 1 1438 1439 1 1439 1437 1 1008 1013 1 1242 1269 1
		 1255 1251 1 843 1290 1 1290 1293 1 1293 840 1 822 1307 1 1307 1311 1 1311 819 1 810 1323 1
		 1323 1326 1 1326 793 1 791 1324 1 1324 1328 1 1328 1399 1 1399 791 1 986 979 1 1356 1354 1
		 1419 835 1 835 1364 1 1364 1419 1 1424 829 1 829 1375 1 1375 1424 1 1429 832 1 832 1393 1
		 1393 1429 1 1414 777 1 777 1403 1 1403 1414 1 1407 1404 1 1404 777 1 1416 1401 1
		 1406 1415 1 1418 1405 1 1402 1417 1;
	setAttr ".ed[2656:2821]" 1094 1402 1 1401 1085 1 1085 1094 1 1405 1092 1 1092 1089 1
		 1089 1406 1 1415 1088 1 1088 1082 1 1082 1416 1 1093 1418 1 1417 1097 1 1097 1093 1
		 1421 1359 1 1363 1420 1 1423 1362 1 1361 1413 1 1360 1422 1 1359 1101 1 1101 1113 1
		 1113 1360 1 1102 1363 1 1362 1108 1 1108 1102 1 1098 1421 1 1420 1105 1 1105 1098 1
		 1422 1112 1 1112 1109 1 1109 1423 1 1361 835 1 1426 1373 1 1378 1425 1 1428 1377 1
		 1376 1411 1 1374 1427 1 1373 1117 1 1117 1129 1 1129 1374 1 1118 1378 1 1377 1125 1
		 1125 1118 1 1114 1426 1 1425 1121 1 1121 1114 1 1427 1128 1 1128 1122 1 1122 1428 1
		 1431 1391 1 1396 1430 1 1433 1395 1 1394 1412 1 1392 1432 1 1391 1133 1 1133 1145 1
		 1145 1392 1 1134 1396 1 1395 1140 1 1140 1134 1 1130 1431 1 1430 1137 1 1137 1130 1
		 1432 1144 1 1144 1141 1 1141 1433 1 1376 829 1 832 1394 1 1440 788 1 788 1434 1 1434 1440 1
		 817 820 1 819 818 1 825 813 1 1215 1011 1 1313 1020 1 1020 1441 1 1441 1442 1 1442 1313 1
		 1071 1069 1 1068 1072 1 1077 1079 1 1078 1074 1 1074 1185 1 1185 1181 1 1181 1075 1
		 1069 1192 1 1192 1186 1 1186 1066 1 1440 1443 1 1443 1444 1 1444 786 1 786 1440 1
		 1445 1446 1 1446 1447 1 1447 1409 1 1409 1445 1 1213 1308 1 1308 823 1 1448 1355 1
		 1012 1448 1 818 1314 1 1314 1449 1 1449 815 1 1450 1448 1 1448 1316 1 1316 1451 1
		 1451 1450 1 1445 788 1 788 1437 1 1437 1445 1 1436 1443 1 1447 1435 1 1439 1446 1
		 1444 1438 1 1435 1200 1 1200 1194 1 1194 1436 1 1202 1439 1 1438 1209 1 1209 1202 1
		 1206 1444 1 1443 1197 1 1197 1206 1 1446 1205 1 1205 1201 1 1201 1447 1 1452 1453 1
		 1453 1142 1 1142 1132 1 1132 1452 1 1136 1454 1 1454 1455 1 1455 1131 1 1131 1136 1
		 1139 1456 1 1456 1457 1 1457 1135 1 1135 1139 1 1458 1459 1 1459 1138 1 1138 1143 1
		 1143 1458 1 1455 1452 1 1459 1456 1 1457 1454 1 1453 1458 1 1460 1461 1 1461 1126 1
		 1126 1116 1 1116 1460 1 1462 1463 1 1463 1115 1 1115 1120 1 1120 1462 1 1124 1464 1
		 1464 1465 1 1465 1119 1 1119 1124 1 1466 1467 1 1467 1123 1 1123 1127 1 1127 1466 1
		 1463 1460 1 1467 1464 1 1465 1462 1 1461 1466 1 1468 1469 1;
	setAttr ".ed[2822:2987]" 1469 1110 1 1110 1100 1 1100 1468 1 1470 1471 1 1471 1099 1
		 1099 1104 1 1104 1470 1 1107 1472 1 1472 1473 1 1473 1103 1 1103 1107 1 1111 1474 1
		 1474 1475 1 1475 1106 1 1106 1111 1 1471 1468 1 1475 1472 1 1473 1470 1 1469 1474 1
		 903 1453 1 1452 904 1 905 1455 1 1454 906 1 907 1457 1 1456 908 1 909 1459 1 1458 910 1
		 895 1461 1 1460 896 1 897 1463 1 1462 898 1 899 1465 1 1464 900 1 901 1467 1 1466 902 1
		 911 1469 1 1468 912 1 913 1471 1 1470 914 1 915 1473 1 1472 916 1 917 1475 1 1474 918 1
		 1084 888 1 887 1095 1 1095 1084 1 889 1083 1 1083 1087 1 1087 890 1 891 1086 1 1086 1091 1
		 1091 892 1 893 1090 1 1090 1096 1 1096 894 1 1147 869 1 868 1152 1 871 1146 1 1149 872 1
		 873 1148 1 1151 874 1 875 1150 1 1153 876 1 1155 854 1 853 1160 1 858 1154 1 1157 859 1
		 862 1156 1 1159 863 1 866 1158 1 1161 867 1 878 1168 1 1163 879 1 880 1162 1 1165 881 1
		 1167 883 1 882 1164 1 1169 886 1 885 1166 1 1171 838 1 837 1176 1 1173 842 1 841 1170 1
		 846 1172 1 1175 847 1 850 1174 1 1177 851 1 813 1190 1 1190 1179 1 1179 814 1 816 1178 1
		 1178 1184 1 1184 817 1 1188 821 1 820 1183 1 1183 1188 1 824 1187 1 1187 1191 1 1191 825 1
		 1067 1207 1 1207 1196 1 1196 1068 1 1072 1195 1 1195 1199 1 1199 1073 1 1076 1198 1
		 1198 1204 1 1204 1077 1 1208 1080 1 1079 1203 1 1203 1208 1 807 1275 1 947 1284 1
		 1284 1278 1 1278 948 1 953 1390 1 1390 1282 1 1282 954 1 971 1281 1 1281 1285 1 1285 972 1
		 1212 1476 1 1476 1315 1 1315 1213 1 1310 802 1 1442 1449 1 921 1321 1 1318 922 1
		 1320 934 1 933 1382 1 957 1319 1 1322 958 1 1335 796 1 1339 946 1 945 1342 1 1341 951 1
		 950 1384 1 1343 970 1 969 1340 1 798 1344 1 999 1387 1 1354 809 1 808 1353 1 1356 1410 1
		 796 1352 1 1352 808 1 1344 1477 1 1477 1337 1 1477 1410 1 811 803 1 802 812 1 806 815 1
		 1449 807 1 1476 1309 1 1309 1017 1 1017 1451 1 1451 1476 1 981 1214 1 1217 1335 1
		 1214 1276 1 1276 1441 1 1441 1215 1 1212 1310 1 1442 1275 1 1450 1016 1 1355 1450 1;
	setAttr ".ed[2988:3093]" 1217 1352 1 1351 1353 1 1478 908 1 1479 1150 1 1478 1479 1
		 1480 910 1 1479 1480 1 1481 1152 1 1480 1481 1 1482 904 1 1481 1482 1 1483 1146 1
		 1482 1483 1 1484 906 1 1483 1484 1 1485 1148 1 1484 1485 1 1485 1478 1 1486 900 1
		 1487 1158 1 1486 1487 1 1488 902 1 1487 1488 1 1489 1160 1 1488 1489 1 1490 896 1
		 1489 1490 1 1491 1154 1 1490 1491 1 1492 898 1 1491 1492 1 1493 1156 1 1492 1493 1
		 1493 1486 1 1494 916 1 1495 1166 1 1494 1495 1 1496 918 1 1495 1496 1 1497 1168 1
		 1496 1497 1 1498 912 1 1497 1498 1 1499 1162 1 1498 1499 1 1500 914 1 1499 1500 1
		 1501 1164 1 1500 1501 1 1501 1494 1 1502 888 1 1503 1170 1 1502 1503 1 1504 890 1
		 1503 1504 1 1505 1172 1 1504 1505 1 1506 892 1 1505 1506 1 1507 1174 1 1506 1507 1
		 1508 894 1 1507 1508 1 1509 1176 1 1508 1509 1 1509 1502 1 1510 1060 1 1511 1035 1
		 1510 1511 1 1512 765 1 1511 1512 1 1513 767 1 1512 1513 1 1514 774 1 1513 1514 1
		 1515 1222 1 1514 1515 1 1516 1062 1 1515 1516 1 1517 1042 1 1516 1517 1 1518 1064 1
		 1517 1518 1 1519 1053 1 1518 1519 1 1520 1061 1 1519 1520 1 1521 770 1 1520 1521 1
		 1522 772 1 1521 1522 1 1523 1231 1 1522 1523 1 1524 927 1 1523 1524 1 1525 929 1
		 1524 1525 1 1526 966 1 1525 1526 1 1527 964 1 1526 1527 1 1528 939 1 1527 1528 1
		 1529 941 1 1528 1529 1 1529 1510 1;
	setAttr -s 1568 -ch 6188 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -4 -3 -1513 -1514
		mu 0 4 2954 3 2 2956
		f 4 -8 -1531 -1532 -5
		mu 0 4 4 7 2974 2972
		f 4 1512 -11 -1515 -1516
		mu 0 4 2957 11 10 2958
		f 3 -14 -13 -12
		mu 0 3 12 14 13
		f 4 -18 -17 -16 -15
		mu 0 4 15 18 17 16
		f 4 -22 -21 -20 -19
		mu 0 4 19 22 21 20
		f 3 -25 -24 -23
		mu 0 3 23 25 24
		f 4 -29 -28 -27 -26
		mu 0 4 26 29 28 27
		f 4 -33 -32 -31 -30
		mu 0 4 30 33 32 31
		f 4 -37 -36 -35 -34
		mu 0 4 34 37 36 35
		f 4 -41 -40 -39 -38
		mu 0 4 38 41 40 39
		f 4 -45 -44 -43 -42
		mu 0 4 42 45 44 43
		f 4 -49 -48 -47 -46
		mu 0 4 46 49 48 47
		f 4 -53 -52 -51 -50
		mu 0 4 50 53 52 51
		f 4 -57 -56 -55 -54
		mu 0 4 54 57 56 55
		f 4 -61 -60 -59 -58
		mu 0 4 58 61 60 59
		f 4 -65 -64 -63 -62
		mu 0 4 62 65 64 63
		f 3 -68 -67 -66
		mu 0 3 66 68 67
		f 3 -71 -70 -69
		mu 0 3 69 71 70
		f 3 -74 -73 -72
		mu 0 3 72 74 73
		f 4 -78 -77 -76 -75
		mu 0 4 75 78 77 76
		f 4 -82 -81 -80 -79
		mu 0 4 79 82 81 80
		f 4 -86 -85 -84 -83
		mu 0 4 83 86 85 84
		f 4 -90 -89 -88 -87
		mu 0 4 87 90 89 88
		f 4 -94 -93 -92 -91
		mu 0 4 91 94 93 92
		f 4 -98 -97 -96 -95
		mu 0 4 95 98 97 96
		f 4 -102 -101 -100 -99
		mu 0 4 99 102 101 100
		f 4 -106 -105 -104 -103
		mu 0 4 103 106 105 104
		f 4 -110 -109 -108 -107
		mu 0 4 107 110 109 108
		f 4 -114 -113 -112 -111
		mu 0 4 111 114 113 112
		f 4 -117 -116 -115 14
		mu 0 4 115 118 117 116
		f 4 -121 -120 -119 -118
		mu 0 4 119 122 121 120
		f 4 -125 -124 -123 -122
		mu 0 4 123 126 125 124
		f 4 -129 -128 -127 -126
		mu 0 4 127 130 129 128
		f 4 -133 -132 -131 -130
		mu 0 4 131 134 133 132
		f 4 -137 -136 -135 -134
		mu 0 4 135 138 137 136
		f 4 456 1506 1491 -138
		mu 0 4 139 2949 2935 140
		f 4 445 1495 1494 -139
		mu 0 4 141 2937 2939 142
		f 4 450 1499 1498 -140
		mu 0 4 143 2941 2943 144
		f 4 453 1503 1502 -141
		mu 0 4 145 2945 2947 146
		f 4 430 1467 1466 -142
		mu 0 4 147 2909 2911 148
		f 4 421 1471 1470 -143
		mu 0 4 149 2913 2915 150
		f 4 426 1474 1459 -144
		mu 0 4 151 2917 2903 152
		f 4 427 1463 1462 -145
		mu 0 4 153 2905 2907 154
		f 4 418 1451 1450 -146
		mu 0 4 155 2893 2895 156
		f 4 411 1455 1454 -147
		mu 0 4 157 2897 2899 158
		f 4 412 1458 1443 -148
		mu 0 4 159 2901 2887 160
		f 4 415 1447 1446 -149
		mu 0 4 161 2889 2891 162
		f 4 442 1483 1482 -150
		mu 0 4 163 2925 2927 164
		f 4 435 1487 1486 -151
		mu 0 4 165 2929 2931 166
		f 4 438 1490 1475 -152
		mu 0 4 167 2933 2919 168
		f 4 439 1479 1478 -153
		mu 0 4 169 2921 2923 170
		f 4 -157 -156 -155 -154
		mu 0 4 171 174 173 172
		f 4 -161 -160 -159 -158
		mu 0 4 175 178 177 176
		f 4 -165 -164 -1537 -1538
		mu 0 4 2978 182 181 2980
		f 4 -169 -168 -167 -166
		mu 0 4 183 186 185 184
		f 4 -173 -172 -171 -170
		mu 0 4 187 190 189 188
		f 4 -177 -176 -1545 -1546
		mu 0 4 2986 194 193 2988
		f 4 -181 -180 -179 -178
		mu 0 4 195 198 197 196
		f 4 -185 -184 -183 -182
		mu 0 4 199 202 201 200
		f 4 -189 -188 -187 -186
		mu 0 4 203 206 205 204
		f 4 -193 -192 -191 -190
		mu 0 4 207 210 209 208
		f 4 -197 -196 -195 -194
		mu 0 4 211 214 213 212
		f 4 -201 -200 -199 -198
		mu 0 4 215 218 217 216
		f 4 -1542 -204 -203 -1541
		mu 0 4 2984 2982 221 220
		f 4 -209 -208 -207 -206
		mu 0 4 223 226 225 224
		f 4 -213 -212 -211 -210
		mu 0 4 227 230 229 228
		f 4 -217 -216 -215 -214
		mu 0 4 231 234 233 232
		f 4 -221 -220 -219 -218
		mu 0 4 235 238 237 236
		f 4 -225 -224 -223 -222
		mu 0 4 239 242 241 240
		f 4 -229 -228 -227 -226
		mu 0 4 243 246 245 244
		f 4 -233 -232 -231 -230
		mu 0 4 247 250 249 248
		f 4 -237 -236 -235 -234
		mu 0 4 251 254 253 252
		f 4 -241 -240 -239 -238
		mu 0 4 255 258 257 256
		f 4 -245 -244 -243 -242
		mu 0 4 259 262 261 260
		f 4 -249 -248 -247 -246
		mu 0 4 263 266 265 264
		f 4 -253 -252 -251 -250
		mu 0 4 267 270 269 268
		f 4 -257 -256 -255 -254
		mu 0 4 271 274 273 272
		f 4 -261 -260 -259 -258
		mu 0 4 275 278 277 276
		f 4 -264 -263 252 -262
		mu 0 4 279 282 281 280
		f 4 -268 -267 -266 -265
		mu 0 4 283 286 285 284
		f 4 -272 -271 -270 -269
		mu 0 4 287 290 289 288
		f 4 -276 -275 -274 -273
		mu 0 4 291 294 293 292
		f 4 -280 -279 -278 -277
		mu 0 4 295 298 297 296
		f 4 -284 -283 -282 -281
		mu 0 4 299 302 301 300
		f 4 -288 -287 -286 -285
		mu 0 4 303 306 305 304
		f 4 -292 -291 -290 -289
		mu 0 4 307 310 309 308
		f 4 -296 -295 -294 -293
		mu 0 4 311 314 313 312
		f 4 -300 -299 -298 -297
		mu 0 4 315 318 317 316
		f 4 -304 -303 -302 -301
		mu 0 4 319 322 321 320
		f 4 265 -306 -305 279
		mu 0 4 323 326 325 324
		f 4 269 -307 7 283
		mu 0 4 327 330 329 328
		f 4 273 -309 10 -308
		mu 0 4 331 334 333 332
		f 4 285 -312 -311 -310
		mu 0 4 335 338 337 336
		f 4 293 -315 -314 -313
		mu 0 4 339 342 341 340
		f 4 301 -318 -317 -316
		mu 0 4 343 346 345 344
		f 4 -1510 -320 278 -1509
		mu 0 4 2952 2950 349 348
		f 4 -1530 -322 282 4
		mu 0 4 2973 2970 353 352
		f 4 -1521 -1522 -324 291
		mu 0 4 355 2964 2962 356
		f 4 -1525 -1526 -327 298
		mu 0 4 359 2968 2966 360
		f 4 -333 -332 -331 -330
		mu 0 4 363 366 365 364
		f 4 -337 -336 -335 -334
		mu 0 4 367 370 369 368
		f 4 -341 -340 -339 -338
		mu 0 4 371 374 373 372
		f 4 -345 -344 -343 -342
		mu 0 4 375 378 377 376
		f 4 -349 -348 -347 -346
		mu 0 4 379 382 381 380
		f 4 -353 -352 -351 -350
		mu 0 4 383 386 385 384
		f 4 -357 -356 -355 -354
		mu 0 4 387 390 389 388
		f 4 -361 -360 -359 -358
		mu 0 4 391 394 393 392
		f 4 -365 -364 -363 -362
		mu 0 4 395 398 397 396
		f 4 -369 -368 -367 -366
		mu 0 4 399 402 401 400
		f 4 -373 -372 -371 -370
		mu 0 4 403 406 405 404
		f 4 -377 -376 -375 -374
		mu 0 4 407 410 409 408
		f 4 -381 -380 -379 -378
		mu 0 4 411 414 413 412
		f 4 -385 -384 -383 -382
		mu 0 4 415 418 417 416
		f 4 -389 -388 -387 -386
		mu 0 4 419 422 421 420
		f 4 -393 -392 -391 -390
		mu 0 4 423 426 425 424
		f 4 -397 -396 -395 -394
		mu 0 4 427 430 429 428
		f 4 -401 -400 -399 -398
		mu 0 4 431 434 433 432
		f 4 -405 -404 -403 -402
		mu 0 4 435 438 437 436
		f 4 -409 -408 -407 -406
		mu 0 4 439 442 441 440
		f 4 -1453 -1454 -411 -410
		mu 0 4 443 2896 2894 444
		f 4 -1458 -415 -414 -1457
		mu 0 4 2900 2898 446 445
		f 4 -1446 -418 -417 -1445
		mu 0 4 2888 2886 448 447
		f 4 -1450 -421 -420 -1449
		mu 0 4 2892 2890 450 449
		f 4 -1470 -424 -423 -1469
		mu 0 4 2912 2910 452 451
		f 4 -1473 -1474 -426 -425
		mu 0 4 453 2916 2914 454
		f 4 -1462 -430 -429 -1461
		mu 0 4 2904 2902 456 455
		f 4 -1466 -433 -432 -1465
		mu 0 4 2908 2906 458 457
		f 4 -1485 -1486 -435 -434
		mu 0 4 459 2928 2926 460
		f 4 -1489 -1490 -438 -437
		mu 0 4 461 2932 2930 462
		f 4 -1478 -442 -441 -1477
		mu 0 4 2920 2918 464 463
		f 4 -1482 -445 -444 -1481
		mu 0 4 2924 2922 466 465
		f 4 -1494 -448 -447 -1493
		mu 0 4 2936 2934 468 467
		f 4 -1497 -1498 -450 -449
		mu 0 4 469 2940 2938 470
		f 4 -1501 -1502 -453 -452
		mu 0 4 471 2944 2942 472
		f 4 -1505 -1506 -456 -455
		mu 0 4 473 2948 2946 474
		f 4 -461 -460 -459 -458
		mu 0 4 475 478 477 476
		f 4 -465 -464 -463 -462
		mu 0 4 479 482 481 480
		f 4 -469 -468 -467 -466
		mu 0 4 483 486 485 484
		f 4 -473 -472 -471 -470
		mu 0 4 487 490 489 488
		f 4 -477 -476 -475 -474
		mu 0 4 491 494 493 492
		f 4 -481 -480 -479 -478
		mu 0 4 495 498 497 496
		f 4 -485 -484 -483 -482
		mu 0 4 499 502 501 500
		f 4 -489 -488 -487 -486
		mu 0 4 503 506 505 504
		f 4 253 -492 -491 -490
		mu 0 4 507 510 509 508
		f 4 -496 -495 -494 -493
		mu 0 4 511 514 513 512
		f 4 -500 -499 -498 -497
		mu 0 4 515 518 517 516
		f 4 -504 -503 -502 -501
		mu 0 4 519 522 521 520
		f 4 8 -507 -506 -505
		mu 0 4 523 526 525 524
		f 4 -511 -510 -509 -508
		mu 0 4 527 530 529 528
		f 4 -515 -514 -513 -512
		mu 0 4 531 534 533 532
		f 4 -519 -518 -517 -516
		mu 0 4 535 538 537 536
		f 4 5 -522 -521 -520
		mu 0 4 539 542 541 540
		f 4 -526 -525 -524 -523
		mu 0 4 543 546 545 544
		f 4 -530 -529 -528 -527
		mu 0 4 547 550 549 548
		f 4 -534 -533 -532 -531
		mu 0 4 551 554 553 552
		f 4 -538 -537 -536 -535
		mu 0 4 555 558 557 556
		f 4 -542 -541 -540 -539
		mu 0 4 559 562 561 560
		f 4 -546 -545 -544 -543
		mu 0 4 563 566 565 564
		f 4 -550 -549 -548 -547
		mu 0 4 567 570 569 568
		f 4 -554 -553 -552 -551
		mu 0 4 571 574 573 572
		f 4 -558 -557 -556 -555
		mu 0 4 575 578 577 576
		f 4 -562 -561 -560 -559
		mu 0 4 579 582 581 580
		f 4 -566 -565 -564 -563
		mu 0 4 583 586 585 584
		f 4 -570 -569 -568 -567
		mu 0 4 587 590 589 588
		f 4 -574 -573 -572 -571
		mu 0 4 591 594 593 592
		f 4 18 -577 -576 -575
		mu 0 4 595 598 597 596
		f 4 -580 539 -579 -578
		mu 0 4 599 602 601 600
		f 4 543 -583 -582 -581
		mu 0 4 603 606 605 604
		f 4 547 -586 -585 -584
		mu 0 4 607 610 609 608
		f 4 -589 551 -588 -587
		mu 0 4 611 614 613 612
		f 4 -592 555 -591 -590
		mu 0 4 615 618 617 616
		f 4 -595 559 -594 -593
		mu 0 4 619 622 621 620
		f 4 563 -598 -597 -596
		mu 0 4 623 626 625 624
		f 4 567 -601 -600 -599
		mu 0 4 627 630 629 628
		f 4 571 -604 -603 -602
		mu 0 4 631 634 633 632
		f 4 -607 575 -606 -605
		mu 0 4 635 638 637 636
		f 4 -611 -610 -609 -608
		mu 0 4 639 642 641 640
		f 4 -615 -614 -613 -612
		mu 0 4 643 646 645 644
		f 4 -619 -618 -617 -616
		mu 0 4 647 650 649 648
		f 4 -623 -622 -621 -620
		mu 0 4 651 654 653 652
		f 4 -627 -626 -625 -624
		mu 0 4 655 658 657 656
		f 4 -631 -630 -629 -628
		mu 0 4 659 662 661 660
		f 4 -635 -634 -633 -632
		mu 0 4 663 666 665 664
		f 4 -639 -638 -637 -636
		mu 0 4 667 670 669 668
		f 4 -643 -642 -641 -640
		mu 0 4 671 674 673 672
		f 4 -647 -646 -645 -644
		mu 0 4 675 678 677 676
		f 4 -651 -650 -649 -648
		mu 0 4 679 682 681 680
		f 4 -655 -654 -653 -652
		mu 0 4 683 686 685 684
		f 4 -659 -658 -657 -656
		mu 0 4 687 690 689 688
		f 4 -663 -662 -661 -660
		mu 0 4 691 694 693 692
		f 4 264 276 -665 -664
		mu 0 4 695 698 697 696
		f 4 268 280 -667 -666
		mu 0 4 699 702 701 700
		f 4 289 -670 -669 -668
		mu 0 4 703 706 705 704
		f 4 -673 296 -672 -671
		mu 0 4 707 710 709 708
		f 4 -676 -675 -674 267
		mu 0 4 711 714 713 712
		f 4 -679 -678 -677 271
		mu 0 4 715 718 717 716
		f 4 -682 -681 275 -680
		mu 0 4 719 722 721 720
		f 4 -685 -684 287 -683
		mu 0 4 723 726 725 724
		f 4 -688 -687 295 -686
		mu 0 4 727 730 729 728
		f 4 -691 -690 303 -689
		mu 0 4 731 734 733 732
		f 4 232 218 -693 -692
		mu 0 4 735 738 737 736
		f 4 -696 221 -695 -694
		mu 0 4 739 742 741 740
		f 4 213 257 -698 -697
		mu 0 4 743 746 745 744
		f 4 226 -701 -700 -699
		mu 0 4 747 750 749 748
		f 4 -704 234 -703 -702
		mu 0 4 751 754 753 752
		f 4 -707 242 -706 -705
		mu 0 4 755 758 757 756
		f 4 -710 -709 216 -708
		mu 0 4 759 762 761 760
		f 4 -713 -712 -711 231
		mu 0 4 763 766 765 764
		f 4 -716 -715 240 -714
		mu 0 4 767 770 769 768
		f 4 -719 -718 248 -717
		mu 0 4 771 774 773 772
		f 4 -723 -722 -721 -720
		mu 0 4 775 778 777 776
		f 4 -727 -726 -725 -724
		mu 0 4 779 782 781 780
		f 4 -731 -730 -729 -728
		mu 0 4 783 786 785 784
		f 3 -734 -733 -732
		mu 0 3 787 789 788
		f 4 126 -735 124 209
		mu 0 4 790 793 792 791
		f 4 -737 134 -736 131
		mu 0 4 794 797 796 795
		f 4 154 -741 196 -740
		mu 0 4 802 805 804 803
		f 4 158 -742 200 553
		mu 0 4 806 809 808 807
		f 4 -1540 1536 316 203
		mu 0 4 2983 2981 812 811
		f 4 178 -744 208 -743
		mu 0 4 814 817 816 815
		f 4 182 -745 212 121
		mu 0 4 818 821 820 819
		f 4 -749 -748 -747 -746
		mu 0 4 822 825 824 823
		f 4 237 -751 247 -750
		mu 0 4 826 829 828 827
		f 4 288 -753 297 -752
		mu 0 4 830 833 832 831
		f 4 -755 292 -754 302
		mu 0 4 834 837 836 835
		f 4 753 312 202 317
		mu 0 4 838 841 840 839
		f 4 1520 751 326 -1524
		mu 0 4 2965 845 844 2967
		f 4 -759 -758 -757 -756
		mu 0 4 846 849 848 847
		f 4 -763 -762 -761 -760
		mu 0 4 850 853 852 851
		f 4 1480 -764 434 -1484
		mu 0 4 2925 855 854 2927
		f 4 1488 -765 441 -1491
		mu 0 4 2933 857 856 2919
		f 4 515 586 514 327
		mu 0 4 858 861 860 859
		f 4 531 599 528 204
		mu 0 4 862 865 864 863
		f 4 546 -766 552 197
		mu 0 4 866 869 868 867
		f 4 562 -768 568 -767
		mu 0 4 870 873 872 871
		f 4 583 513 587 765
		mu 0 4 874 877 876 875
		f 4 595 527 600 767
		mu 0 4 878 881 880 879
		f 4 -771 -770 -769 750
		mu 0 4 882 885 884 883
		f 4 132 -774 -773 -772
		mu 0 4 886 889 888 887
		f 4 667 -775 671 752
		mu 0 4 890 893 892 891
		f 4 205 -778 -777 -776
		mu 0 4 894 897 896 895
		f 4 -780 703 -779 705
		mu 0 4 898 901 900 899
		f 4 193 -783 -782 -781
		mu 0 4 902 905 904 903
		f 3 -786 -785 -784
		mu 0 3 906 908 907
		f 4 95 -787 92 189
		mu 0 4 909 912 911 910
		f 4 103 -789 101 -788
		mu 0 4 913 916 915 914
		f 4 194 -793 168 -792
		mu 0 4 921 924 923 922
		f 4 198 -794 172 549
		mu 0 4 925 928 927 926
		f 4 -1544 1540 313 176
		mu 0 4 2987 2985 931 930
		f 4 206 -796 187 -795
		mu 0 4 933 936 935 934
		f 4 93 210 -797 192
		mu 0 4 937 940 939 938
		f 4 -801 -800 -799 -798
		mu 0 4 941 944 943 942
		f 4 -804 -803 290 -802
		mu 0 4 945 948 947 946
		f 4 -807 -806 294 -805
		mu 0 4 949 952 951 950
		f 4 -808 175 314 805
		mu 0 4 953 956 955 954
		f 4 -809 801 323 -1520
		mu 0 4 2960 960 959 2963
		f 4 -813 -812 -811 -810
		mu 0 4 961 964 963 962
		f 4 -817 -816 -815 -814
		mu 0 4 965 968 967 966
		f 4 1464 -818 423 -1468
		mu 0 4 2909 970 969 2911
		f 4 1472 -819 429 -1475
		mu 0 4 2917 972 971 2903
		f 4 512 584 509 324
		mu 0 4 973 976 975 974
		f 4 535 602 533 173
		mu 0 4 977 980 979 978
		f 4 542 -820 548 169
		mu 0 4 981 984 983 982
		f 4 566 -822 572 -821
		mu 0 4 985 988 987 986
		f 4 819 580 508 585
		mu 0 4 989 992 991 990
		f 4 598 532 603 821
		mu 0 4 993 996 995 994
		f 4 -826 -825 -824 -823
		mu 0 4 997 1000 999 998
		f 4 98 -829 -828 -827
		mu 0 4 1001 1004 1003 1002
		f 4 -831 -830 669 802
		mu 0 4 1005 1008 1007 1006
		f 4 -834 -833 -832 188
		mu 0 4 1009 1012 1011 1010
		f 4 -837 -836 -835 702
		mu 0 4 1013 1016 1015 1014
		f 4 -840 -839 -838 165
		mu 0 4 1017 1020 1019 1018
		f 4 808 -1518 1514 -841
		mu 0 4 1021 2961 2959 1022
		f 4 -846 -845 -844 -843
		mu 0 4 1025 1028 1027 1026
		f 4 545 170 -848 -847
		mu 0 4 1029 1032 1031 1030
		f 4 -852 -851 -850 -849
		mu 0 4 1033 1036 1035 1034
		f 4 -856 -855 -854 -853
		mu 0 4 1037 1040 1039 1038
		f 3 -859 -858 -857
		mu 0 3 1041 1043 1042
		f 4 -861 111 -860 108
		mu 0 4 1044 1047 1046 1045
		f 4 118 -863 116 -862
		mu 0 4 1048 1051 1050 1049
		f 4 835 -867 215 -866
		mu 0 4 1056 1059 1058 1057
		f 4 -871 -870 -869 -868
		mu 0 4 1060 1063 1062 1061
		f 4 -873 830 -872 274
		mu 0 4 1064 1067 1066 1065
		f 4 807 -875 277 -874
		mu 0 4 1068 1071 1070 1069
		f 4 871 803 840 308
		mu 0 4 1072 1075 1074 1073
		f 4 1544 873 319 -1547
		mu 0 4 2989 1078 1077 2951
		f 4 -879 -878 -877 -876
		mu 0 4 1080 1083 1082 1081
		f 4 -883 -882 -881 -880
		mu 0 4 1084 1087 1086 1085
		f 4 1448 -884 410 -1452
		mu 0 4 2893 1089 1088 2895
		f 4 1456 -885 417 -1459
		mu 0 4 2901 1091 1090 2887
		f 4 507 581 506 841
		mu 0 4 1092 1095 1094 1093
		f 4 500 604 537 320
		mu 0 4 1096 1099 1098 1097
		f 4 538 -887 544 -886
		mu 0 4 1100 1103 1102 1101
		f 4 570 -889 576 -888
		mu 0 4 1104 1107 1106 1105
		f 4 886 579 505 582
		mu 0 4 1108 1111 1110 1109
		f 4 601 536 605 888
		mu 0 4 1112 1115 1114 1113
		f 4 -892 -891 -890 866
		mu 0 4 1116 1119 1118 1117
		f 4 109 190 -894 -893
		mu 0 4 1120 1123 1122 1121
		f 4 806 852 664 874
		mu 0 4 1124 1127 1126 1125
		f 4 -897 166 -896 -895
		mu 0 4 1128 1131 1130 1129
		f 4 -899 848 694 -898
		mu 0 4 1132 1135 1134 1133
		f 4 -902 185 -901 -900
		mu 0 4 1136 1139 1138 1137
		f 3 -905 -904 -903
		mu 0 3 1140 1142 1141
		f 4 -907 78 -906 76
		mu 0 4 1143 1146 1145 1144
		f 4 87 -908 85 181
		mu 0 4 1147 1150 1149 1148
		f 4 -913 -912 156 -911
		mu 0 4 1155 1158 1157 1156
		f 4 -915 -914 160 557
		mu 0 4 1159 1162 1161 1160
		f 4 -916 310 164 -1536
		mu 0 4 2976 1166 1165 2979
		f 4 -919 -918 180 -917
		mu 0 4 1167 1170 1169 1168
		f 4 -921 -920 184 82
		mu 0 4 1171 1174 1173 1172
		f 4 -925 -924 -923 -922
		mu 0 4 1175 1178 1177 1176
		f 4 245 -927 230 -926
		mu 0 4 1179 1182 1181 1180
		f 4 299 -929 281 -928
		mu 0 4 1183 1186 1185 1184
		f 4 -931 300 -930 286
		mu 0 4 1187 1190 1189 1188
		f 4 929 315 163 311
		mu 0 4 1191 1194 1193 1192
		f 4 -1528 1524 927 321
		mu 0 4 2971 2969 1197 1196
		f 4 -935 -934 -933 -932
		mu 0 4 1199 1202 1201 1200
		f 4 -939 -938 -937 -936
		mu 0 4 1203 1206 1205 1204
		f 4 1504 -940 447 -1507
		mu 0 4 2949 1208 1207 2935
		f 4 1496 -941 452 -1500
		mu 0 4 2941 1210 1209 2943
		f 4 519 589 517 322
		mu 0 4 1211 1214 1213 1212
		f 4 161 526 596 524
		mu 0 4 1215 1218 1217 1216
		f 4 550 -942 556 157
		mu 0 4 1219 1222 1221 1220
		f 4 558 -944 564 -943
		mu 0 4 1223 1226 1225 1224
		f 4 588 516 590 941
		mu 0 4 1227 1230 1229 1228
		f 4 943 594 523 597
		mu 0 4 1231 1234 1233 1232
		f 4 -947 -946 -945 926
		mu 0 4 1235 1238 1237 1236
		f 4 77 -950 -949 -948
		mu 0 4 1239 1242 1241 1240
		f 4 672 -951 666 928
		mu 0 4 1243 1246 1245 1244
		f 4 177 -954 -953 -952
		mu 0 4 1247 1250 1249 1248
		f 4 -956 706 -955 700
		mu 0 4 1251 1254 1253 1252
		f 4 153 -959 -958 -957
		mu 0 4 1255 1258 1257 1256
		f 4 1508 304 3 -1512
		mu 0 4 2953 1262 1261 2955
		f 4 915 -1534 1530 -960
		mu 0 4 1263 2977 2975 1264
		f 3 -963 -962 12
		mu 0 3 1267 1269 1268
		f 4 885 846 20 541
		mu 0 4 1270 1273 1272 1271
		f 3 -966 -965 -964
		mu 0 3 1274 1276 1275
		f 4 -970 -969 -968 -967
		mu 0 4 1277 1280 1279 1278
		f 4 42 -971 40 110
		mu 0 4 1281 1284 1283 1282
		f 4 -974 -973 -972 47
		mu 0 4 1285 1288 1287 1286
		f 4 -976 53 -975 52
		mu 0 4 1289 1292 1291 1290
		f 4 61 -978 59 -977
		mu 0 4 1293 1296 1295 1294
		f 3 -980 -979 66
		mu 0 3 1297 1299 1298
		f 3 -982 -981 69
		mu 0 3 1300 1302 1301
		f 3 -984 -983 72
		mu 0 3 1303 1305 1304
		f 4 83 -986 80 -985
		mu 0 4 1306 1309 1308 1307
		f 4 133 74 -987 89
		mu 0 4 1310 1313 1312 1311
		f 4 117 99 -988 97
		mu 0 4 1314 1317 1316 1315
		f 4 125 90 -989 105
		mu 0 4 1318 1321 1320 1319
		f 4 37 114 -990 113
		mu 0 4 1322 1325 1324 1323
		f 4 94 106 -991 120
		mu 0 4 1326 1329 1328 1327
		f 4 102 129 -992 128
		mu 0 4 1330 1333 1332 1331
		f 4 86 122 -993 136
		mu 0 4 1334 1337 1336 1335
		f 4 565 -1003 159 -1002
		mu 0 4 1354 1357 1356 1355
		f 4 -1005 573 -1004 171
		mu 0 4 1358 1361 1360 1359
		f 4 569 -1007 199 -1006
		mu 0 4 1362 1365 1364 1363
		f 4 -1011 -1010 -1009 -1008
		mu 0 4 1366 1369 1368 1367
		f 4 -1015 -1014 -1013 -1012
		mu 0 4 1370 1373 1372 1371
		f 4 272 -1017 266 -1016
		mu 0 4 1374 1377 1376 1375
		f 4 284 -1019 270 -1018
		mu 0 4 1378 1381 1380 1379
		f 4 307 2 305 1016
		mu 0 4 1382 1385 1384 1383
		f 4 309 959 306 1018
		mu 0 4 1386 1389 1388 1387
		f 4 338 -1021 336 -1020
		mu 0 4 1390 1393 1392 1391
		f 4 -1023 329 -1022 343
		mu 0 4 1394 1397 1396 1395
		f 4 -1027 -1026 -1025 -1024
		mu 0 4 1398 1401 1400 1399
		f 4 961 -1030 -1029 -1028
		mu 0 4 1402 1405 1404 1403
		f 4 -1034 -1033 -1032 -1031
		mu 0 4 1406 1409 1408 1407
		f 4 -1037 -1036 -1035 982
		mu 0 4 1410 1413 1412 1411
		f 4 -1041 -1040 -1039 -1038
		mu 0 4 1414 1417 1416 1415
		f 4 -1044 -1043 -1042 978
		mu 0 4 1418 1421 1420 1419
		f 4 -1048 -1047 -1046 -1045
		mu 0 4 1422 1425 1424 1423
		f 4 -1051 -1050 -1049 980
		mu 0 4 1426 1429 1428 1427
		f 4 1452 -1052 414 -1456
		mu 0 4 2897 1431 1430 2899
		f 4 1444 -1053 420 -1448
		mu 0 4 2889 1433 1432 2891
		f 4 1468 -1054 425 -1472
		mu 0 4 2913 1435 1434 2915
		f 4 -1464 1460 -1055 432
		mu 0 4 2907 2905 1437 1436
		f 4 1484 -1056 437 -1488
		mu 0 4 2929 1439 1438 2931
		f 4 -1480 1476 -1057 444
		mu 0 4 2923 2921 1441 1440
		f 4 -1496 1492 -1058 449
		mu 0 4 2939 2937 1443 1442
		f 4 1500 -1059 455 -1504
		mu 0 4 2945 1445 1444 2947
		f 4 -1062 -1061 -1060 333
		mu 0 4 1446 1449 1448 1447
		f 4 344 -1065 -1064 -1063
		mu 0 4 1450 1453 1452 1451
		f 4 -1069 -1068 -1067 -1066
		mu 0 4 1454 1457 1456 1455
		f 4 -1073 -1072 -1071 -1070
		mu 0 4 1458 1461 1460 1459
		f 4 -1074 249 724 491
		mu 0 4 1462 1465 1464 1463
		f 4 504 577 502 0
		mu 0 4 1466 1469 1468 1467
		f 4 522 592 521 960
		mu 0 4 1470 1473 1472 1471
		f 4 574 -1075 540 21
		mu 0 4 1474 1477 1476 1475
		f 4 554 -1076 560 914
		mu 0 4 1478 1481 1480 1479
		f 4 1074 606 501 578
		mu 0 4 1482 1485 1484 1483
		f 4 1075 591 520 593
		mu 0 4 1486 1489 1488 1487
		f 4 81 -1079 -1078 -1077
		mu 0 4 1490 1493 1492 1491
		f 4 60 -1082 -1081 -1080
		mu 0 4 1494 1497 1496 1495
		f 4 48 -1085 -1084 -1083
		mu 0 4 1498 1501 1500 1499
		f 4 -1089 -1088 -1087 -1086
		mu 0 4 1502 1505 1504 1503
		f 4 698 966 692 -1090
		mu 0 4 1506 1509 1508 1507
		f 4 -1091 730 490 725
		mu 0 4 1510 1513 1512 1511
		f 3 -1094 -1093 -1092
		mu 0 3 1514 1516 1515
		f 4 766 1005 741 1002
		mu 0 4 1517 1520 1519 1518
		f 3 -1097 -1096 -1095
		mu 0 3 1521 1523 1522
		f 4 1006 820 1004 793
		mu 0 4 1524 1527 1526 1525
		f 4 1003 887 19 847
		mu 0 4 1528 1531 1530 1529
		f 3 -1100 -1099 -1098
		mu 0 3 1532 1534 1533
		f 3 -1103 -1102 -1101
		mu 0 3 1535 1537 1536
		f 4 942 1001 913 561
		mu 0 4 1538 1541 1540 1539
		f 3 1023 1100 903
		mu 0 3 1542 1544 1543
		f 3 -1105 -1104 962
		mu 0 3 1545 1547 1546
		f 3 935 1104 1101
		mu 0 3 1548 1550 1549
		f 3 934 902 13
		mu 0 3 1551 1553 1552
		f 4 904 931 -1106 1026
		mu 0 4 1554 1557 1556 1555
		f 4 938 1102 1024 -1107
		mu 0 4 1558 1561 1560 1559
		f 4 1103 936 -1108 1029
		mu 0 4 1562 1565 1564 1563
		f 4 11 1027 -1109 933
		mu 0 4 1566 1569 1568 1567
		f 4 -1112 -1111 932 -1110
		mu 0 4 1570 1573 1572 1571
		f 4 -1115 -1114 -1113 937
		mu 0 4 1574 1577 1576 1575
		f 4 -1118 -1117 -1116 1025
		mu 0 4 1578 1581 1580 1579
		f 4 -1121 -1120 1028 -1119
		mu 0 4 1582 1585 1584 1583
		f 4 733 756 -1122 1032
		mu 0 4 1586 1589 1588 1587
		f 4 1093 1030 -1123 761
		mu 0 4 1590 1593 1592 1591
		f 4 1036 -1125 759 -1124
		mu 0 4 1594 1597 1596 1595
		f 4 758 71 1034 -1126
		mu 0 4 1598 1601 1600 1599
		f 4 -1129 -1128 -1127 757
		mu 0 4 1602 1605 1604 1603
		f 4 -1132 -1131 760 -1130
		mu 0 4 1606 1609 1608 1607
		f 4 -1135 -1134 1031 -1133
		mu 0 4 1610 1613 1612 1611
		f 4 -1138 -1137 -1136 1035
		mu 0 4 1614 1617 1616 1615
		f 3 1033 1091 732
		mu 0 3 1618 1620 1619
		f 3 -1139 1124 983
		mu 0 3 1621 1623 1622
		f 3 762 1138 1092
		mu 0 3 1624 1626 1625
		f 3 755 731 73
		mu 0 3 1627 1629 1628
		f 4 785 810 -1140 1039
		mu 0 4 1630 1633 1632 1631
		f 4 1096 1037 -1141 816
		mu 0 4 1634 1637 1636 1635
		f 4 -1143 814 -1142 1043
		mu 0 4 1638 1641 1640 1639
		f 4 812 65 1041 -1144
		mu 0 4 1642 1645 1644 1643
		f 4 -1147 -1146 -1145 811
		mu 0 4 1646 1649 1648 1647
		f 4 -1150 -1149 815 -1148
		mu 0 4 1650 1653 1652 1651
		f 4 -1153 -1152 1038 -1151
		mu 0 4 1654 1657 1656 1655
		f 4 -1156 -1155 -1154 1042
		mu 0 4 1658 1661 1660 1659
		f 4 858 876 -1157 1046
		mu 0 4 1662 1665 1664 1663
		f 4 1099 1044 -1158 882
		mu 0 4 1666 1669 1668 1667
		f 4 -1160 880 -1159 1050
		mu 0 4 1670 1673 1672 1671
		f 4 878 68 1048 -1161
		mu 0 4 1674 1677 1676 1675
		f 4 -1164 -1163 -1162 877
		mu 0 4 1678 1681 1680 1679
		f 4 -1167 -1166 881 -1165
		mu 0 4 1682 1685 1684 1683
		f 4 -1170 -1169 1045 -1168
		mu 0 4 1686 1689 1688 1687
		f 4 -1173 -1172 -1171 1049
		mu 0 4 1690 1693 1692 1691
		f 3 1040 1094 784
		mu 0 3 1694 1696 1695
		f 3 -1174 1142 979
		mu 0 3 1697 1699 1698
		f 3 809 783 67
		mu 0 3 1700 1702 1701
		f 3 813 1173 1095
		mu 0 3 1703 1705 1704
		f 3 875 856 70
		mu 0 3 1706 1708 1707
		f 3 879 -1175 1098
		mu 0 3 1709 1711 1710
		f 3 1174 1159 981
		mu 0 3 1712 1714 1713
		f 3 1047 1097 857
		mu 0 3 1715 1717 1716
		f 3 -1178 -1177 -1176
		mu 0 3 1718 1720 1719
		f 4 -1180 57 -1179 55
		mu 0 4 1721 1724 1723 1722
		f 4 50 -1181 63 492
		mu 0 4 1725 1728 1727 1726
		f 4 -1182 497 719 251
		mu 0 4 1729 1732 1731 1730
		f 4 -1186 -1185 -1184 -1183
		mu 0 4 1733 1736 1735 1734
		f 4 334 -1188 331 -1187
		mu 0 4 1737 1740 1739 1738
		f 4 -1190 341 -1189 340
		mu 0 4 1741 1744 1743 1742
		f 4 -1193 -1192 -1191 337
		mu 0 4 1745 1748 1747 1746
		f 4 332 -1196 -1195 -1194
		mu 0 4 1749 1752 1751 1750
		f 4 -1200 -1199 -1198 -1197
		mu 0 4 1753 1756 1755 1754
		f 4 -1204 -1203 -1202 -1201
		mu 0 4 1757 1760 1759 1758
		f 4 -1206 -1205 495 64
		mu 0 4 1761 1764 1763 1762
		f 4 -1208 489 727 -1207
		mu 0 4 1765 1768 1767 1766
		f 4 56 -1211 -1210 -1209
		mu 0 4 1769 1772 1771 1770
		f 4 -1215 -1214 -1213 -1212
		mu 0 4 1773 1776 1775 1774
		f 3 -1218 -1217 -1216
		mu 0 3 1777 1779 1778
		f 4 1068 1177 1196 -1219
		mu 0 4 1780 1783 1782 1781
		f 4 1202 965 1066 -1220
		mu 0 4 1784 1787 1786 1785
		f 4 1072 1217 1200 -1221
		mu 0 4 1788 1791 1790 1789
		f 4 22 1070 -1222 1198
		mu 0 4 1792 1795 1794 1793
		f 4 -1225 -1224 -1223 1067
		mu 0 4 1796 1799 1798 1797
		f 4 -1228 -1227 1071 -1226
		mu 0 4 1800 1803 1802 1801
		f 4 -1231 -1230 1197 -1229
		mu 0 4 1804 1807 1806 1805
		f 4 -1234 -1233 -1232 1201
		mu 0 4 1808 1811 1810 1809
		f 3 1203 1215 964
		mu 0 3 1812 1814 1813
		f 3 1065 963 1176
		mu 0 3 1815 1817 1816
		f 3 1069 23 1216
		mu 0 3 1818 1820 1819
		f 3 1199 1175 24
		mu 0 3 1821 1823 1822
		f 4 -1238 -1237 -1236 -1235
		mu 0 4 1824 1827 1826 1825
		f 4 -1242 -1241 -1240 -1239
		mu 0 4 1828 1831 1830 1829
		f 4 -1246 -1245 -1244 -1243
		mu 0 4 1832 1835 1834 1833
		f 4 -1250 -1249 -1248 -1247
		mu 0 4 1836 1839 1838 1837
		f 4 394 1237 -1251 1240
		mu 0 4 1840 1843 1842 1841
		f 4 401 1242 -1252 1247
		mu 0 4 1844 1847 1846 1845
		f 4 398 1238 -1253 1244
		mu 0 4 1848 1851 1850 1849
		f 4 1235 405 1249 -1254
		mu 0 4 1852 1855 1854 1853
		f 4 -1258 -1257 -1256 -1255
		mu 0 4 1856 1859 1858 1857
		f 4 -1262 -1261 -1260 -1259
		mu 0 4 1860 1863 1862 1861
		f 4 -1266 -1265 -1264 -1263
		mu 0 4 1864 1867 1866 1865
		f 4 -1270 -1269 -1268 -1267
		mu 0 4 1868 1871 1870 1869
		f 4 1259 378 1257 -1271
		mu 0 4 1872 1875 1874 1873
		f 4 386 1262 -1272 1267
		mu 0 4 1876 1879 1878 1877
		f 4 382 1261 -1273 1264
		mu 0 4 1880 1883 1882 1881
		f 4 1255 389 1269 -1274
		mu 0 4 1884 1887 1886 1885
		f 4 -1278 -1277 -1276 -1275
		mu 0 4 1888 1891 1890 1889
		f 4 -1282 -1281 -1280 -1279
		mu 0 4 1892 1895 1894 1893;
	setAttr ".fc[500:999]"
		f 4 -1286 -1285 -1284 -1283
		mu 0 4 1896 1899 1898 1897
		f 4 -1290 -1289 -1288 -1287
		mu 0 4 1900 1903 1902 1901
		f 4 1279 362 1277 -1291
		mu 0 4 1904 1907 1906 1905
		f 4 369 1282 -1292 1288
		mu 0 4 1908 1911 1910 1909
		f 4 366 1281 -1293 1284
		mu 0 4 1912 1915 1914 1913
		f 4 373 1286 -1294 1275
		mu 0 4 1916 1919 1918 1917
		f 4 -1296 1234 -1295 145
		mu 0 4 1920 1923 1922 1921
		f 4 -1298 1239 -1297 146
		mu 0 4 1924 1927 1926 1925
		f 4 -1300 1243 -1299 147
		mu 0 4 1928 1931 1930 1929
		f 4 -1302 1246 -1301 148
		mu 0 4 1932 1935 1934 1933
		f 4 1296 1250 1295 863
		mu 0 4 1936 1939 1938 1937
		f 4 1300 1251 1299 864
		mu 0 4 1940 1943 1942 1941
		f 4 1298 1252 1297 997
		mu 0 4 1944 1947 1946 1945
		f 4 1294 1253 1301 998
		mu 0 4 1948 1951 1950 1949
		f 4 -1304 1254 -1303 141
		mu 0 4 1952 1955 1954 1953
		f 4 -1306 1258 -1305 142
		mu 0 4 1956 1959 1958 1957
		f 4 -1308 1263 -1307 143
		mu 0 4 1960 1963 1962 1961
		f 4 -1310 1266 -1309 144
		mu 0 4 1964 1967 1966 1965
		f 4 1304 1270 1303 789
		mu 0 4 1968 1971 1970 1969
		f 4 1308 1271 1307 790
		mu 0 4 1972 1975 1974 1973
		f 4 1306 1272 1305 995
		mu 0 4 1976 1979 1978 1977
		f 4 1302 1273 1309 996
		mu 0 4 1980 1983 1982 1981
		f 4 -1312 1274 -1311 149
		mu 0 4 1984 1987 1986 1985
		f 4 -1314 1278 -1313 150
		mu 0 4 1988 1991 1990 1989
		f 4 -1316 1283 -1315 151
		mu 0 4 1992 1995 1994 1993
		f 4 -1318 1287 -1317 152
		mu 0 4 1996 1999 1998 1997
		f 4 1312 1290 1311 737
		mu 0 4 2000 2003 2002 2001
		f 4 1316 1291 1315 738
		mu 0 4 2004 2007 2006 2005
		f 4 1314 1292 1313 999
		mu 0 4 2008 2011 2010 2009
		f 4 1310 1293 1317 1000
		mu 0 4 2012 2015 2014 2013
		f 4 -1321 -1320 137 -1319
		mu 0 4 2016 2019 2018 2017
		f 4 -1324 -1323 -1322 138
		mu 0 4 2020 2023 2022 2021
		f 4 -1327 -1326 -1325 139
		mu 0 4 2024 2027 2026 2025
		f 4 -1330 -1329 -1328 140
		mu 0 4 2028 2031 2030 2029
		f 4 346 1318 908 1321
		mu 0 4 2032 2035 2034 2033
		f 4 1327 353 1326 909
		mu 0 4 2036 2039 2038 2037
		f 4 1324 349 1323 993
		mu 0 4 2040 2043 2042 2041
		f 4 358 1329 994 1319
		mu 0 4 2044 2047 2046 2045
		f 4 1105 1110 348 1117
		mu 0 4 2048 2051 2050 2049
		f 4 1114 1106 1115 351
		mu 0 4 2052 2055 2054 2053
		f 4 1118 1107 1112 355
		mu 0 4 2056 2059 2058 2057
		f 4 1108 1119 360 1109
		mu 0 4 2060 2063 2062 2061
		f 4 1320 347 1111 357
		mu 0 4 2064 2067 2066 2065
		f 4 352 1325 354 1113
		mu 0 4 2068 2071 2070 2069
		f 4 345 1322 350 1116
		mu 0 4 2072 2075 2074 2073
		f 4 1328 359 1120 356
		mu 0 4 2076 2079 2078 2077
		f 4 883 -1332 107 -1331
		mu 0 4 2080 2083 2082 2081
		f 4 -1334 1051 -1333 112
		mu 0 4 2084 2087 2086 2085
		f 4 -1336 884 -1335 115
		mu 0 4 2088 2091 2090 2089
		f 4 -1338 1052 -1337 119
		mu 0 4 2092 2095 2094 2093
		f 4 409 1330 859 1332
		mu 0 4 2096 2099 2098 2097
		f 4 416 1335 862 1336
		mu 0 4 2100 2103 2102 2101
		f 4 413 1333 989 1334
		mu 0 4 2104 2107 2106 2105
		f 4 419 1337 990 1331
		mu 0 4 2108 2111 2110 2109
		f 4 817 -1340 91 -1339
		mu 0 4 2112 2115 2114 2113
		f 4 -1342 1053 -1341 96
		mu 0 4 2116 2119 2118 2117
		f 4 -1344 818 -1343 100
		mu 0 4 2120 2123 2122 2121
		f 4 -1346 1054 -1345 104
		mu 0 4 2124 2127 2126 2125
		f 4 422 1338 786 1340
		mu 0 4 2128 2131 2130 2129
		f 4 428 1343 788 1344
		mu 0 4 2132 2135 2134 2133
		f 4 424 1341 987 1342
		mu 0 4 2136 2139 2138 2137
		f 4 431 1345 988 1339
		mu 0 4 2140 2143 2142 2141
		f 4 -1348 763 -1347 123
		mu 0 4 2144 2147 2146 2145
		f 4 -1350 1055 -1349 127
		mu 0 4 2148 2151 2150 2149
		f 4 764 -1352 130 -1351
		mu 0 4 2152 2155 2154 2153
		f 4 1056 -1354 135 -1353
		mu 0 4 2156 2159 2158 2157
		f 4 1348 433 1347 734
		mu 0 4 2160 2163 2162 2161
		f 4 440 1350 735 1353
		mu 0 4 2164 2167 2166 2165
		f 4 436 1349 991 1351
		mu 0 4 2168 2171 2170 2169
		f 4 443 1352 992 1346
		mu 0 4 2172 2175 2174 2173
		f 4 939 -1356 75 -1355
		mu 0 4 2176 2179 2178 2177
		f 4 1057 -1358 79 -1357
		mu 0 4 2180 2183 2182 2181
		f 4 -1360 940 -1359 84
		mu 0 4 2184 2187 2186 2185
		f 4 -1362 1058 -1361 88
		mu 0 4 2188 2191 2190 2189
		f 4 446 1354 905 1357
		mu 0 4 2192 2195 2194 2193
		f 4 1360 451 1359 907
		mu 0 4 2196 2199 2198 2197
		f 4 1358 448 1356 985
		mu 0 4 2200 2203 2202 2201
		f 4 454 1361 986 1355
		mu 0 4 2204 2207 2206 2205
		f 4 -1365 -1364 -1363 51
		mu 0 4 2208 2211 2210 2209
		f 4 -1368 -1367 -1366 54
		mu 0 4 2212 2215 2214 2213
		f 4 -1371 -1370 58 -1369
		mu 0 4 2216 2219 2218 2217
		f 4 -1374 -1373 -1372 62
		mu 0 4 2220 2223 2222 2221
		f 4 457 1364 974 1365
		mu 0 4 2224 2227 2226 2225
		f 4 1371 466 1368 977
		mu 0 4 2228 2231 2230 2229
		f 4 462 1367 1178 1369
		mu 0 4 2232 2235 2234 2233
		f 4 469 1373 1180 1362
		mu 0 4 2236 2239 2238 2237
		f 4 1192 1019 1059 459
		mu 0 4 2240 2243 2242 2241
		f 4 1064 1189 1190 464
		mu 0 4 2244 2247 2246 2245
		f 4 1022 1062 468 1195
		mu 0 4 2248 2251 2250 2249
		f 4 1061 1186 1193 471
		mu 0 4 2252 2255 2254 2253
		f 4 472 1363 458 1060
		mu 0 4 2256 2259 2258 2257
		f 4 1370 467 1063 461
		mu 0 4 2260 2263 2262 2261
		f 4 460 1366 463 1191
		mu 0 4 2264 2267 2266 2265
		f 4 465 1372 470 1194
		mu 0 4 2268 2271 2270 2269
		f 4 -1377 -1376 -1375 330
		mu 0 4 2272 2275 2274 2273
		f 4 -1380 -1379 -1378 335
		mu 0 4 2276 2279 2278 2277
		f 4 -1383 -1382 -1381 339
		mu 0 4 2280 2283 2282 2281
		f 4 -1386 -1385 342 -1384
		mu 0 4 2284 2287 2286 2285
		f 4 1380 477 1379 1020
		mu 0 4 2288 2291 2290 2289
		f 4 486 1383 1021 1374
		mu 0 4 2292 2295 2294 2293
		f 4 1377 474 1376 1187
		mu 0 4 2296 2299 2298 2297
		f 4 482 1382 1188 1384
		mu 0 4 2300 2303 2302 2301
		f 4 654 607 843 16
		mu 0 4 2304 2307 2306 2305
		f 4 612 -1387 44 631
		mu 0 4 2308 2311 2310 2309
		f 4 -1390 -1389 -1388 183
		mu 0 4 2312 2315 2314 2313
		f 4 -1393 -1392 -1391 191
		mu 0 4 2316 2319 2318 2317
		f 4 -1396 -1395 -1394 211
		mu 0 4 2320 2323 2322 2321
		f 4 -1399 -1398 -1397 494
		mu 0 4 2324 2327 2326 2325
		f 4 984 1076 630 920
		mu 0 4 2328 2331 2330 2329
		f 4 860 892 634 41
		mu 0 4 2332 2335 2334 2333
		f 4 906 947 638 1078
		mu 0 4 2336 2339 2338 2337
		f 4 773 787 826 641
		mu 0 4 2340 2343 2342 2341
		f 4 736 771 646 949
		mu 0 4 2344 2347 2346 2345
		f 4 1205 976 1079 649
		mu 0 4 2348 2351 2350 2349
		f 4 17 38 -1400 653
		mu 0 4 2352 2355 2354 2353
		f 4 1081 1179 1208 658
		mu 0 4 2356 2359 2358 2357
		f 4 1387 623 1395 744
		mu 0 4 2360 2363 2362 2361
		f 4 748 645 772 642
		mu 0 4 2364 2367 2366 2365
		f 4 620 1392 796 1393
		mu 0 4 2368 2371 2370 2369
		f 4 800 640 827 845
		mu 0 4 2372 2375 2374 2373
		f 4 828 861 15 844
		mu 0 4 2376 2379 2378 2377
		f 4 870 633 893 1390
		mu 0 4 2380 2383 2382 2381
		f 4 627 615 1389 919
		mu 0 4 2384 2387 2386 2385
		f 4 924 637 948 643
		mu 0 4 2388 2391 2390 2389
		f 4 1010 629 1077 635
		mu 0 4 2392 2395 2394 2393
		f 4 1014 648 1080 655
		mu 0 4 2396 2399 2398 2397
		f 4 650 659 1398 1204
		mu 0 4 2400 2403 2402 2401
		f 4 1185 657 1209 -1401
		mu 0 4 2404 2407 2406 2405
		f 4 675 663 853 36
		mu 0 4 2408 2411 2410 2409
		f 4 -1403 950 -1402 155
		mu 0 4 2412 2415 2414 2413
		f 4 829 -1405 167 -1404
		mu 0 4 2416 2419 2418 2417
		f 4 -1407 774 -1406 195
		mu 0 4 2420 2423 2422 2421
		f 4 33 973 1082 674
		mu 0 4 2424 2427 2426 2425
		f 4 912 26 1085 677
		mu 0 4 2428 2431 2430 2429
		f 4 1084 29 894 681
		mu 0 4 2432 2435 2434 2433
		f 4 916 951 684 1087
		mu 0 4 2436 2439 2438 2437
		f 4 794 831 687 777
		mu 0 4 2440 2443 2442 2441
		f 4 742 775 690 953
		mu 0 4 2444 2447 2446 2445
		f 4 1401 670 1406 740
		mu 0 4 2448 2451 2450 2449
		f 4 754 689 776 685
		mu 0 4 2452 2455 2454 2453
		f 4 1405 668 1403 792
		mu 0 4 2456 2459 2458 2457
		f 4 804 686 832 855
		mu 0 4 2460 2463 2462 2461
		f 4 833 901 35 854
		mu 0 4 2464 2467 2466 2465
		f 4 872 680 895 1404
		mu 0 4 2468 2471 2470 2469
		f 4 678 665 1402 911
		mu 0 4 2472 2475 2474 2473
		f 4 930 683 952 688
		mu 0 4 2476 2479 2478 2477
		f 4 1015 673 1083 679
		mu 0 4 2480 2483 2482 2481
		f 4 1017 676 1086 682
		mu 0 4 2484 2487 2486 2485
		f 4 691 967 28 712
		mu 0 4 2488 2491 2490 2489
		f 4 -1408 693 849 31
		mu 0 4 2492 2495 2494 2493
		f 4 954 -1410 179 -1409
		mu 0 4 2496 2499 2498 2497
		f 4 834 -1412 186 -1411
		mu 0 4 2500 2503 2502 2501
		f 4 778 -1414 207 -1413
		mu 0 4 2504 2507 2506 2505
		f 4 34 899 709 -1415
		mu 0 4 2508 2511 2510 2509
		f 4 910 956 711 25
		mu 0 4 2512 2515 2514 2513
		f 4 791 837 715 782
		mu 0 4 2516 2519 2518 2517
		f 4 739 780 718 958
		mu 0 4 2520 2523 2522 2521
		f 4 704 1412 743 1409
		mu 0 4 2524 2527 2526 2525
		f 4 749 717 781 713
		mu 0 4 2528 2531 2530 2529
		f 4 1413 701 1410 795
		mu 0 4 2532 2535 2534 2533
		f 4 851 -1416 714 838
		mu 0 4 2536 2539 2538 2537
		f 4 839 896 30 850
		mu 0 4 2540 2543 2542 2541
		f 4 1411 865 708 900
		mu 0 4 2544 2547 2546 2545
		f 4 699 1408 917 969
		mu 0 4 2548 2551 2550 2549
		f 4 925 710 957 716
		mu 0 4 2552 2555 2554 2553
		f 4 918 1088 27 968
		mu 0 4 2556 2559 2558 2557
		f 4 726 -1418 46 -1417
		mu 0 4 2560 2563 2562 2561
		f 4 1090 1416 971 -1419
		mu 0 4 2564 2567 2566 2565
		f 4 32 45 -1421 -1420
		mu 0 4 2568 2571 2570 2569
		f 4 696 -1423 -1422 707
		mu 0 4 2572 2575 2574 2573
		f 4 729 1418 -1424 1422
		mu 0 4 2576 2579 2578 2577
		f 4 972 1414 1421 1423
		mu 0 4 2580 2583 2582 2581
		f 4 49 -1426 39 -1425
		mu 0 4 2584 2587 2586 2585
		f 4 -1428 1210 -1427 43
		mu 0 4 2588 2591 2590 2589
		f 4 -1432 -1431 -1430 -1429
		mu 0 4 2592 2595 2594 2593
		f 4 695 -1434 499 -1433
		mu 0 4 2596 2599 2598 2597
		f 4 496 -1437 -1436 -1435
		mu 0 4 2600 2603 2602 2601
		f 4 1396 1428 652 -1438
		mu 0 4 2604 2607 2606 2605
		f 4 1426 975 1424 970
		mu 0 4 2608 2611 2610 2609
		f 4 -1439 1400 1427 1386
		mu 0 4 2612 2615 2614 2613
		f 4 493 1437 1399 1425
		mu 0 4 2616 2619 2618 2617
		f 4 -1441 728 697 -1440
		mu 0 4 2620 2623 2622 2621
		f 3 1211 1206 1440
		mu 0 3 2624 2626 2625
		f 4 1433 1407 1419 -1442
		mu 0 4 2627 2630 2629 2628
		f 4 1420 1417 -1443 721
		mu 0 4 2631 2634 2633 2632
		f 4 1442 723 250 720
		mu 0 4 2635 2638 2637 2636
		f 3 498 1441 722
		mu 0 3 2639 2641 2640
		f 4 898 822 239 1415
		mu 0 4 2642 2645 2644 2643
		f 4 628 1007 220 618
		mu 0 4 2646 2649 2648 2647
		f 4 632 867 223 611
		mu 0 4 2650 2653 2652 2651
		f 4 636 921 228 1009
		mu 0 4 2654 2657 2656 2655
		f 4 747 639 797 236
		mu 0 4 2658 2661 2660 2659
		f 4 644 745 244 923
		mu 0 4 2662 2665 2664 2663
		f 4 662 647 1011 255
		mu 0 4 2666 2669 2668 2667
		f 4 610 651 1429 259
		mu 0 4 2670 2673 2672 2671
		f 4 656 1182 263 1013
		mu 0 4 2674 2677 2676 2675
		f 4 214 889 609 260
		mu 0 4 2678 2681 2680 2679
		f 4 1432 1434 614 224
		mu 0 4 2682 2685 2684 2683
		f 4 217 229 944 617
		mu 0 4 2686 2689 2688 2687
		f 4 238 823 622 770
		mu 0 4 2690 2693 2692 2691
		f 4 946 246 768 625
		mu 0 4 2694 2697 2696 2695
		f 4 256 1207 1212 661
		mu 0 4 2698 2701 2700 2699
		f 4 779 243 746 233
		mu 0 4 2702 2705 2704 2703
		f 4 619 1394 624 769
		mu 0 4 2706 2709 2708 2707
		f 4 836 235 798 891
		mu 0 4 2710 2713 2712 2711
		f 4 869 1391 621 824
		mu 0 4 2714 2717 2716 2715
		f 4 897 222 868 825
		mu 0 4 2718 2721 2720 2719
		f 4 799 842 608 890
		mu 0 4 2722 2725 2724 2723
		f 4 955 227 922 241
		mu 0 4 2726 2729 2728 2727
		f 4 626 1388 616 945
		mu 0 4 2730 2733 2732 2731
		f 4 225 1089 219 1008
		mu 0 4 2734 2737 2736 2735
		f 4 1073 254 1012 261
		mu 0 4 2738 2741 2740 2739
		f 4 1181 262 1183 1436
		mu 0 4 2742 2745 2744 2743
		f 4 1431 1397 660 1213
		mu 0 4 2746 2749 2748 2747
		f 4 1214 1439 258 1430
		mu 0 4 2750 2753 2752 2751
		f 4 1438 613 1435 1184
		mu 0 4 2754 2757 2756 2755
		f 4 1121 1126 364 1132
		mu 0 4 2758 2761 2760 2759
		f 4 1122 1133 368 1129
		mu 0 4 2762 2765 2764 2763
		f 4 1137 1123 1130 371
		mu 0 4 2766 2769 2768 2767
		f 4 1128 1125 1135 375
		mu 0 4 2770 2773 2772 2771
		f 4 376 1276 363 1127
		mu 0 4 2774 2777 2776 2775
		f 4 1285 370 1131 365
		mu 0 4 2778 2781 2780 2779
		f 4 1280 367 1134 361
		mu 0 4 2782 2785 2784 2783
		f 4 372 1289 374 1136
		mu 0 4 2786 2789 2788 2787
		f 4 1150 1139 1144 380
		mu 0 4 2790 2793 2792 2791
		f 4 1140 1151 384 1147
		mu 0 4 2794 2797 2796 2795
		f 4 1141 1148 388 1155
		mu 0 4 2798 2801 2800 2799
		f 4 1146 1143 1153 391
		mu 0 4 2802 2805 2804 2803
		f 4 392 1256 379 1145
		mu 0 4 2806 2809 2808 2807
		f 4 1265 387 1149 381
		mu 0 4 2810 2813 2812 2811
		f 4 1260 383 1152 377
		mu 0 4 2814 2817 2816 2815
		f 4 385 1268 390 1154
		mu 0 4 2818 2821 2820 2819
		f 4 1156 1161 396 1167
		mu 0 4 2822 2825 2824 2823
		f 4 1157 1168 400 1164
		mu 0 4 2826 2829 2828 2827
		f 4 1172 1158 1165 403
		mu 0 4 2830 2833 2832 2831
		f 4 1163 1160 1170 407
		mu 0 4 2834 2837 2836 2835
		f 4 408 1236 395 1162
		mu 0 4 2838 2841 2840 2839
		f 4 1245 402 1166 397
		mu 0 4 2842 2845 2844 2843
		f 4 1241 399 1169 393
		mu 0 4 2846 2849 2848 2847
		f 4 404 1248 406 1171
		mu 0 4 2850 2853 2852 2851
		f 4 1218 1229 476 1224
		mu 0 4 2854 2857 2856 2855
		f 4 1233 1219 1222 479
		mu 0 4 2858 2861 2860 2859
		f 4 1220 1231 484 1225
		mu 0 4 2862 2865 2864 2863
		f 4 1221 1226 488 1228
		mu 0 4 2866 2869 2868 2867
		f 4 473 1378 478 1223
		mu 0 4 2870 2873 2872 2871
		f 4 1385 487 1227 481
		mu 0 4 2874 2877 2876 2875
		f 4 485 1375 475 1230
		mu 0 4 2878 2881 2880 2879
		f 4 480 1381 483 1232
		mu 0 4 2882 2885 2884 2883
		f 4 -865 -1444 1445 -416
		mu 0 4 1055 1054 2886 2888
		f 4 -999 -1447 1449 -419
		mu 0 4 1349 1348 2890 2892
		f 4 -864 -1451 1453 -412
		mu 0 4 1053 1052 2894 2896
		f 4 -998 -1455 1457 -413
		mu 0 4 1347 1346 2898 2900
		f 4 -791 -1460 1461 -428
		mu 0 4 920 919 2902 2904
		f 4 -997 -1463 1465 -431
		mu 0 4 1345 1344 2906 2908
		f 4 -790 -1467 1469 -422
		mu 0 4 918 917 2910 2912
		f 4 -996 -1471 1473 -427
		mu 0 4 1343 1342 2914 2916
		f 4 -739 -1476 1477 -440
		mu 0 4 801 800 2918 2920
		f 4 -1001 -1479 1481 -443
		mu 0 4 1353 1352 2922 2924
		f 4 -738 -1483 1485 -436
		mu 0 4 799 798 2926 2928
		f 4 -1000 -1487 1489 -439
		mu 0 4 1351 1350 2930 2932
		f 4 -909 -1492 1493 -446
		mu 0 4 1152 1151 2934 2936
		f 4 -994 -1495 1497 -451
		mu 0 4 1339 1338 2938 2940
		f 4 -910 -1499 1501 -454
		mu 0 4 1154 1153 2942 2944
		f 4 -995 -1503 1505 -457
		mu 0 4 1341 1340 2946 2948
		f 4 -321 -1508 1509 -319
		mu 0 4 347 350 2950 2952
		f 4 318 1511 1510 503
		mu 0 4 1259 2953 2955 1260
		f 4 -1511 1513 -2 -1
		mu 0 4 0 2954 2956 1
		f 4 1 1515 -10 -9
		mu 0 4 8 2957 2958 9
		f 4 1516 -842 9 1517
		mu 0 4 2961 1024 1023 2959
		f 4 -1517 1519 1518 510
		mu 0 4 957 2960 2963 958
		f 4 -326 -325 -1519 1521
		mu 0 4 2964 358 357 2962
		f 4 325 1523 1522 511
		mu 0 4 842 2965 2967 843
		f 4 -329 -328 -1523 1525
		mu 0 4 2968 362 361 2966
		f 4 518 328 1527 1526
		mu 0 4 1195 1198 2969 2971
		f 4 -323 -1527 1529 1528
		mu 0 4 351 354 2970 2973
		f 4 -7 -6 -1529 1531
		mu 0 4 2974 6 5 2972
		f 4 1532 -961 6 1533
		mu 0 4 2977 1266 1265 2975
		f 4 -1533 1535 1534 525
		mu 0 4 1163 2976 2979 1164
		f 4 -1535 1537 -163 -162
		mu 0 4 179 2978 2980 180
		f 4 529 162 1539 1538
		mu 0 4 810 813 2981 2983
		f 4 -205 -1539 1541 -202
		mu 0 4 219 222 2982 2984
		f 4 530 201 1543 1542
		mu 0 4 929 932 2985 2987
		f 4 -1543 1545 -175 -174
		mu 0 4 191 2986 2988 192
		f 4 534 174 1546 1507
		mu 0 4 1076 1079 2989 2951
		f 4 3060 3059 1549 1550
		mu 0 4 2990 2991 2992 2993
		f 4 1551 3078 3077 1554
		mu 0 4 2994 2995 2996 2997
		f 4 3062 3061 1557 -3060
		mu 0 4 2998 2999 3000 3001
		f 3 1558 1559 1560
		mu 0 3 3002 3003 3004
		f 4 1561 1562 1563 1564
		mu 0 4 3005 3006 3007 3008
		f 4 1565 1566 1567 1568
		mu 0 4 3009 3010 3011 3012
		f 3 1569 1570 1571
		mu 0 3 3013 3014 3015
		f 4 1572 1573 1574 1575
		mu 0 4 3016 3017 3018 3019
		f 4 1576 1577 1578 1579
		mu 0 4 3020 3021 3022 3023
		f 4 1580 1581 1582 1583
		mu 0 4 3024 3025 3026 3027
		f 4 1584 1585 1586 1587
		mu 0 4 3028 3029 3030 3031
		f 4 1588 1589 1590 1591
		mu 0 4 3032 3033 3034 3035
		f 4 1592 1593 1594 1595
		mu 0 4 3036 3037 3038 3039
		f 4 1596 1597 1598 1599
		mu 0 4 3040 3041 3042 3043
		f 4 1600 1601 1602 1603
		mu 0 4 3044 3045 3046 3047
		f 4 1604 1605 1606 1607
		mu 0 4 3048 3049 3050 3051
		f 4 1608 1609 1610 1611
		mu 0 4 3052 3053 3054 3055
		f 3 1612 1613 1614
		mu 0 3 3056 3057 3058
		f 3 1615 1616 1617
		mu 0 3 3059 3060 3061
		f 3 1618 1619 1620
		mu 0 3 3062 3063 3064
		f 4 1621 1622 1623 1624
		mu 0 4 3065 3066 3067 3068
		f 4 1625 1626 1627 1628
		mu 0 4 3069 3070 3071 3072
		f 4 1629 1630 1631 1632
		mu 0 4 3073 3074 3075 3076
		f 4 1633 1634 1635 1636
		mu 0 4 3077 3078 3079 3080
		f 4 1637 1638 1639 1640
		mu 0 4 3081 3082 3083 3084
		f 4 1641 1642 1643 1644
		mu 0 4 3085 3086 3087 3088
		f 4 1645 1646 1647 1648
		mu 0 4 3089 3090 3091 3092
		f 4 1649 1650 1651 1652
		mu 0 4 3093 3094 3095 3096
		f 4 1653 1654 1655 1656
		mu 0 4 3097 3098 3099 3100
		f 4 1657 1658 1659 1660
		mu 0 4 3101 3102 3103 3104
		f 4 -1562 1661 1662 1663
		mu 0 4 3105 3106 3107 3108
		f 4 1664 1665 1666 1667
		mu 0 4 3109 3110 3111 3112
		f 4 1668 1669 1670 1671
		mu 0 4 3113 3114 3115 3116
		f 4 1672 1673 1674 1675
		mu 0 4 3117 3118 3119 3120
		f 4 1676 1677 1678 1679
		mu 0 4 3121 3122 3123 3124
		f 4 1680 1681 1682 1683
		mu 0 4 3125 3126 3127 3128
		f 4 1684 -3039 -3054 -2004
		mu 0 4 3129 3130 3131 3132
		f 4 1685 -3042 -3043 -1993
		mu 0 4 3133 3134 3135 3136
		f 4 1686 -3046 -3047 -1998
		mu 0 4 3137 3138 3139 3140
		f 4 1687 -3050 -3051 -2001
		mu 0 4 3141 3142 3143 3144
		f 4 1688 -3014 -3015 -1978
		mu 0 4 3145 3146 3147 3148
		f 4 1689 -3018 -3019 -1969
		mu 0 4 3149 3150 3151 3152
		f 4 1690 -3007 -3022 -1974
		mu 0 4 3153 3154 3155 3156
		f 4 1691 -3010 -3011 -1975
		mu 0 4 3157 3158 3159 3160
		f 4 1692 -2998 -2999 -1966
		mu 0 4 3161 3162 3163 3164
		f 4 1693 -3002 -3003 -1959
		mu 0 4 3165 3166 3167 3168
		f 4 1694 -2991 -3006 -1960
		mu 0 4 3169 3170 3171 3172
		f 4 1695 -2994 -2995 -1963
		mu 0 4 3173 3174 3175 3176
		f 4 1696 -3030 -3031 -1990
		mu 0 4 3177 3178 3179 3180
		f 4 1697 -3034 -3035 -1983
		mu 0 4 3181 3182 3183 3184
		f 4 1698 -3023 -3038 -1986
		mu 0 4 3185 3186 3187 3188
		f 4 1699 -3026 -3027 -1987
		mu 0 4 3189 3190 3191 3192
		f 4 1700 1701 1702 1703
		mu 0 4 3193 3194 3195 3196
		f 4 1704 1705 1706 1707
		mu 0 4 3197 3198 3199 3200
		f 4 3084 3083 1710 1711
		mu 0 4 3201 3202 3203 3204
		f 4 1712 1713 1714 1715
		mu 0 4 3205 3206 3207 3208
		f 4 1716 1717 1718 1719
		mu 0 4 3209 3210 3211 3212
		f 4 3092 3091 1722 1723
		mu 0 4 3213 3214 3215 3216
		f 4 1724 1725 1726 1727
		mu 0 4 3217 3218 3219 3220
		f 4 1728 1729 1730 1731
		mu 0 4 3221 3222 3223 3224
		f 4 1732 1733 1734 1735
		mu 0 4 3225 3226 3227 3228
		f 4 1736 1737 1738 1739
		mu 0 4 3229 3230 3231 3232
		f 4 1740 1741 1742 1743
		mu 0 4 3233 3234 3235 3236
		f 4 1744 1745 1746 1747
		mu 0 4 3237 3238 3239 3240
		f 4 3087 1749 1750 3088
		mu 0 4 3241 3242 3243 3244
		f 4 1752 1753 1754 1755
		mu 0 4 3245 3246 3247 3248
		f 4 1756 1757 1758 1759
		mu 0 4 3249 3250 3251 3252
		f 4 1760 1761 1762 1763
		mu 0 4 3253 3254 3255 3256
		f 4 1764 1765 1766 1767
		mu 0 4 3257 3258 3259 3260
		f 4 1768 1769 1770 1771
		mu 0 4 3261 3262 3263 3264
		f 4 1772 1773 1774 1775
		mu 0 4 3265 3266 3267 3268
		f 4 1776 1777 1778 1779
		mu 0 4 3269 3270 3271 3272
		f 4 1780 1781 1782 1783
		mu 0 4 3273 3274 3275 3276
		f 4 1784 1785 1786 1787
		mu 0 4 3277 3278 3279 3280
		f 4 1788 1789 1790 1791
		mu 0 4 3281 3282 3283 3284
		f 4 1792 1793 1794 1795
		mu 0 4 3285 3286 3287 3288
		f 4 1796 1797 1798 1799
		mu 0 4 3289 3290 3291 3292
		f 4 1800 1801 1802 1803
		mu 0 4 3293 3294 3295 3296
		f 4 1804 1805 1806 1807
		mu 0 4 3297 3298 3299 3300
		f 4 1808 -1800 1809 1810
		mu 0 4 3301 3302 3303 3304
		f 4 1811 1812 1813 1814
		mu 0 4 3305 3306 3307 3308
		f 4 1815 1816 1817 1818
		mu 0 4 3309 3310 3311 3312
		f 4 1819 1820 1821 1822
		mu 0 4 3313 3314 3315 3316
		f 4 1823 1824 1825 1826
		mu 0 4 3317 3318 3319 3320
		f 4 1827 1828 1829 1830
		mu 0 4 3321 3322 3323 3324
		f 4 1831 1832 1833 1834
		mu 0 4 3325 3326 3327 3328
		f 4 1835 1836 1837 1838
		mu 0 4 3329 3330 3331 3332
		f 4 1839 1840 1841 1842
		mu 0 4 3333 3334 3335 3336
		f 4 1843 1844 1845 1846
		mu 0 4 3337 3338 3339 3340
		f 4 1847 1848 1849 1850
		mu 0 4 3341 3342 3343 3344
		f 4 -1827 1851 1852 -1813
		mu 0 4 3345 3346 3347 3348
		f 4 -1831 -1555 1853 -1817
		mu 0 4 3349 3350 3351 3352
		f 4 1854 -1558 1855 -1821
		mu 0 4 3353 3354 3355 3356
		f 4 1856 1857 1858 -1833
		mu 0 4 3357 3358 3359 3360
		f 4 1859 1860 1861 -1841
		mu 0 4 3361 3362 3363 3364
		f 4 1862 1863 1864 -1849
		mu 0 4 3365 3366 3367 3368
		f 4 3055 -1826 1866 3056
		mu 0 4 3369 3370 3371 3372
		f 4 -1552 -1830 1868 3076
		mu 0 4 3373 3374 3375 3376
		f 4 -1839 1870 3068 3067
		mu 0 4 3377 3378 3379 3380
		f 4 -1846 1873 3072 3071
		mu 0 4 3381 3382 3383 3384
		f 4 1876 1877 1878 1879
		mu 0 4 3385 3386 3387 3388
		f 4 1880 1881 1882 1883
		mu 0 4 3389 3390 3391 3392
		f 4 1884 1885 1886 1887
		mu 0 4 3393 3394 3395 3396
		f 4 1888 1889 1890 1891
		mu 0 4 3397 3398 3399 3400
		f 4 1892 1893 1894 1895
		mu 0 4 3401 3402 3403 3404
		f 4 1896 1897 1898 1899
		mu 0 4 3405 3406 3407 3408
		f 4 1900 1901 1902 1903
		mu 0 4 3409 3410 3411 3412
		f 4 1904 1905 1906 1907
		mu 0 4 3413 3414 3415 3416
		f 4 1908 1909 1910 1911
		mu 0 4 3417 3418 3419 3420
		f 4 1912 1913 1914 1915
		mu 0 4 3421 3422 3423 3424
		f 4 1916 1917 1918 1919
		mu 0 4 3425 3426 3427 3428
		f 4 1920 1921 1922 1923
		mu 0 4 3429 3430 3431 3432
		f 4 1924 1925 1926 1927
		mu 0 4 3433 3434 3435 3436
		f 4 1928 1929 1930 1931
		mu 0 4 3437 3438 3439 3440
		f 4 1932 1933 1934 1935
		mu 0 4 3441 3442 3443 3444
		f 4 1936 1937 1938 1939
		mu 0 4 3445 3446 3447 3448
		f 4 1940 1941 1942 1943
		mu 0 4 3449 3450 3451 3452
		f 4 1944 1945 1946 1947
		mu 0 4 3453 3454 3455 3456
		f 4 1948 1949 1950 1951
		mu 0 4 3457 3458 3459 3460
		f 4 1952 1953 1954 1955
		mu 0 4 3461 3462 3463 3464
		f 4 1956 1957 3000 2999
		mu 0 4 3465 3466 3467 3468
		f 4 3003 1960 1961 3004
		mu 0 4 3469 3470 3471 3472
		f 4 2991 1963 1964 2992
		mu 0 4 3473 3474 3475 3476
		f 4 2995 1966 1967 2996
		mu 0 4 3477 3478 3479 3480
		f 4 3015 1969 1970 3016
		mu 0 4 3481 3482 3483 3484
		f 4 1971 1972 3020 3019
		mu 0 4 3485 3486 3487 3488
		f 4 3007 1975 1976 3008
		mu 0 4 3489 3490 3491 3492
		f 4 3011 1978 1979 3012
		mu 0 4 3493 3494 3495 3496
		f 4 1980 1981 3032 3031
		mu 0 4 3497 3498 3499 3500
		f 4 1983 1984 3036 3035
		mu 0 4 3501 3502 3503 3504
		f 4 3023 1987 1988 3024
		mu 0 4 3505 3506 3507 3508
		f 4 3027 1990 1991 3028
		mu 0 4 3509 3510 3511 3512
		f 4 3039 1993 1994 3040
		mu 0 4 3513 3514 3515 3516
		f 4 1995 1996 3044 3043
		mu 0 4 3517 3518 3519 3520
		f 4 1998 1999 3048 3047
		mu 0 4 3521 3522 3523 3524
		f 4 2001 2002 3052 3051
		mu 0 4 3525 3526 3527 3528
		f 4 2004 2005 2006 2007
		mu 0 4 3529 3530 3531 3532
		f 4 2008 2009 2010 2011
		mu 0 4 3533 3534 3535 3536
		f 4 2012 2013 2014 2015
		mu 0 4 3537 3538 3539 3540
		f 4 2016 2017 2018 2019
		mu 0 4 3541 3542 3543 3544
		f 4 2020 2021 2022 2023
		mu 0 4 3545 3546 3547 3548
		f 4 2024 2025 2026 2027
		mu 0 4 3549 3550 3551 3552
		f 4 2028 2029 2030 2031
		mu 0 4 3553 3554 3555 3556
		f 4 2032 2033 2034 2035
		mu 0 4 3557 3558 3559 3560
		f 4 2036 2037 2038 -1801
		mu 0 4 3561 3562 3563 3564
		f 4 2039 2040 2041 2042
		mu 0 4 3565 3566 3567 3568
		f 4 2043 2044 2045 2046
		mu 0 4 3569 3570 3571 3572
		f 4 2047 2048 2049 2050
		mu 0 4 3573 3574 3575 3576
		f 4 2051 2052 2053 -1556
		mu 0 4 3577 3578 3579 3580
		f 4 2054 2055 2056 2057
		mu 0 4 3581 3582 3583 3584
		f 4 2058 2059 2060 2061
		mu 0 4 3585 3586 3587 3588
		f 4 2062 2063 2064 2065
		mu 0 4 3589 3590 3591 3592
		f 4 2066 2067 2068 -1553
		mu 0 4 3593 3594 3595 3596
		f 4 2069 2070 2071 2072
		mu 0 4 3597 3598 3599 3600
		f 4 2073 2074 2075 2076
		mu 0 4 3601 3602 3603 3604
		f 4 2077 2078 2079 2080
		mu 0 4 3605 3606 3607 3608
		f 4 2081 2082 2083 2084
		mu 0 4 3609 3610 3611 3612
		f 4 2085 2086 2087 2088
		mu 0 4 3613 3614 3615 3616
		f 4 2089 2090 2091 2092
		mu 0 4 3617 3618 3619 3620
		f 4 2093 2094 2095 2096
		mu 0 4 3621 3622 3623 3624
		f 4 2097 2098 2099 2100
		mu 0 4 3625 3626 3627 3628
		f 4 2101 2102 2103 2104
		mu 0 4 3629 3630 3631 3632
		f 4 2105 2106 2107 2108
		mu 0 4 3633 3634 3635 3636
		f 4 2109 2110 2111 2112
		mu 0 4 3637 3638 3639 3640
		f 4 2113 2114 2115 2116
		mu 0 4 3641 3642 3643 3644
		f 4 2117 2118 2119 2120
		mu 0 4 3645 3646 3647 3648
		f 4 2121 2122 2123 -1566
		mu 0 4 3649 3650 3651 3652
		f 4 2124 2125 -2087 2126
		mu 0 4 3653 3654 3655 3656
		f 4 2127 2128 2129 -2091
		mu 0 4 3657 3658 3659 3660
		f 4 2130 2131 2132 -2095
		mu 0 4 3661 3662 3663 3664
		f 4 2133 2134 -2099 2135
		mu 0 4 3665 3666 3667 3668
		f 4 2136 2137 -2103 2138
		mu 0 4 3669 3670 3671 3672
		f 4 2139 2140 -2107 2141
		mu 0 4 3673 3674 3675 3676
		f 4 2142 2143 2144 -2111
		mu 0 4 3677 3678 3679 3680
		f 4 2145 2146 2147 -2115
		mu 0 4 3681 3682 3683 3684
		f 4 2148 2149 2150 -2119
		mu 0 4 3685 3686 3687 3688
		f 4 2151 2152 -2123 2153
		mu 0 4 3689 3690 3691 3692
		f 4 2154 2155 2156 2157
		mu 0 4 3693 3694 3695 3696
		f 4 2158 2159 2160 2161
		mu 0 4 3697 3698 3699 3700
		f 4 2162 2163 2164 2165
		mu 0 4 3701 3702 3703 3704
		f 4 2166 2167 2168 2169
		mu 0 4 3705 3706 3707 3708
		f 4 2170 2171 2172 2173
		mu 0 4 3709 3710 3711 3712
		f 4 2174 2175 2176 2177
		mu 0 4 3713 3714 3715 3716
		f 4 2178 2179 2180 2181
		mu 0 4 3717 3718 3719 3720
		f 4 2182 2183 2184 2185
		mu 0 4 3721 3722 3723 3724
		f 4 2186 2187 2188 2189
		mu 0 4 3725 3726 3727 3728
		f 4 2190 2191 2192 2193
		mu 0 4 3729 3730 3731 3732
		f 4 2194 2195 2196 2197
		mu 0 4 3733 3734 3735 3736
		f 4 2198 2199 2200 2201
		mu 0 4 3737 3738 3739 3740
		f 4 2202 2203 2204 2205
		mu 0 4 3741 3742 3743 3744
		f 4 2206 2207 2208 2209
		mu 0 4 3745 3746 3747 3748
		f 4 2210 2211 -1824 -1812
		mu 0 4 3749 3750 3751 3752
		f 4 2212 2213 -1828 -1816
		mu 0 4 3753 3754 3755 3756
		f 4 2214 2215 2216 -1837
		mu 0 4 3757 3758 3759 3760
		f 4 2217 2218 -1844 2219
		mu 0 4 3761 3762 3763 3764
		f 4 -1815 2220 2221 2222
		mu 0 4 3765 3766 3767 3768
		f 4 -1819 2223 2224 2225
		mu 0 4 3769 3770 3771 3772
		f 4 2226 -1823 2227 2228
		mu 0 4 3773 3774 3775 3776
		f 4 2229 -1835 2230 2231
		mu 0 4 3777 3778 3779 3780
		f 4 2232 -1843 2233 2234
		mu 0 4 3781 3782 3783 3784
		f 4 2235 -1851 2236 2237
		mu 0 4 3785 3786 3787 3788
		f 4 2238 2239 -1766 -1780
		mu 0 4 3789 3790 3791 3792
		f 4 2240 2241 -1769 2242
		mu 0 4 3793 3794 3795 3796
		f 4 2243 2244 -1805 -1761
		mu 0 4 3797 3798 3799 3800
		f 4 2245 2246 2247 -1774
		mu 0 4 3801 3802 3803 3804
		f 4 2248 2249 -1782 2250
		mu 0 4 3805 3806 3807 3808
		f 4 2251 2252 -1790 2253
		mu 0 4 3809 3810 3811 3812
		f 4 2254 -1764 2255 2256
		mu 0 4 3813 3814 3815 3816
		f 4 -1779 2257 2258 2259
		mu 0 4 3817 3818 3819 3820
		f 4 2260 -1788 2261 2262
		mu 0 4 3821 3822 3823 3824
		f 4 2263 -1796 2264 2265
		mu 0 4 3825 3826 3827 3828
		f 4 2266 2267 2268 2269
		mu 0 4 3829 3830 3831 3832
		f 4 2270 2271 2272 2273
		mu 0 4 3833 3834 3835 3836
		f 4 2274 2275 2276 2277
		mu 0 4 3837 3838 3839 3840
		f 3 2278 2279 2280
		mu 0 3 3841 3842 3843
		f 4 -1757 -1672 2281 -1674
		mu 0 4 3844 3845 3846 3847;
	setAttr ".fc[1000:1499]"
		f 4 -1679 2282 -1682 2283
		mu 0 4 3848 3849 3850 3851
		f 4 2286 -1744 2287 -1702
		mu 0 4 3852 3853 3854 3855
		f 4 -2101 -1748 2288 -1706
		mu 0 4 3856 3857 3858 3859
		f 4 -1751 -1864 -3084 3086
		mu 0 4 3860 3861 3862 3863
		f 4 2289 -1756 2290 -1726
		mu 0 4 3864 3865 3866 3867
		f 4 -1669 -1760 2291 -1730
		mu 0 4 3868 3869 3870 3871
		f 4 2292 2293 2294 2295
		mu 0 4 3872 3873 3874 3875
		f 4 2296 -1795 2297 -1785
		mu 0 4 3876 3877 3878 3879
		f 4 2298 -1845 2299 -1836
		mu 0 4 3880 3881 3882 3883
		f 4 -1850 2300 -1840 2301
		mu 0 4 3884 3885 3886 3887
		f 4 -1865 -1750 -1860 -2301
		mu 0 4 3888 3889 3890 3891
		f 4 3070 -1874 -2299 -3068
		mu 0 4 3892 3893 3894 3895
		f 4 2302 2303 2304 2305
		mu 0 4 3896 3897 3898 3899
		f 4 2306 2307 2308 2309
		mu 0 4 3900 3901 3902 3903
		f 4 3030 -1982 2310 -3028
		mu 0 4 3180 3179 3904 3905
		f 4 3037 -1989 2311 -3036
		mu 0 4 3188 3187 3906 3907
		f 4 -1875 -2062 -2134 -2063
		mu 0 4 3908 3909 3910 3911
		f 4 -1752 -2076 -2147 -2079
		mu 0 4 3912 3913 3914 3915
		f 4 -1745 -2100 2312 -2094
		mu 0 4 3916 3917 3918 3919
		f 4 2313 -2116 2314 -2110
		mu 0 4 3920 3921 3922 3923
		f 4 -2313 -2135 -2061 -2131
		mu 0 4 3924 3925 3926 3927
		f 4 -2315 -2148 -2075 -2143
		mu 0 4 3928 3929 3930 3931
		f 4 -2298 2315 2316 2317
		mu 0 4 3932 3933 3934 3935
		f 4 2318 2319 2320 -1680
		mu 0 4 3936 3937 3938 3939
		f 4 -2300 -2219 2321 -2215
		mu 0 4 3940 3941 3942 3943
		f 4 2322 2323 2324 -1753
		mu 0 4 3944 3945 3946 3947
		f 4 -2253 2325 -2251 2326
		mu 0 4 3948 3949 3950 3951
		f 4 2327 2328 2329 -1741
		mu 0 4 3952 3953 3954 3955
		f 3 2330 2331 2332
		mu 0 3 3956 3957 3958
		f 4 -1737 -1640 2333 -1643
		mu 0 4 3959 3960 3961 3962
		f 4 2334 -1649 2335 -1651
		mu 0 4 3963 3964 3965 3966
		f 4 2338 -1716 2339 -1742
		mu 0 4 3967 3968 3969 3970
		f 4 -2097 -1720 2340 -1746
		mu 0 4 3971 3972 3973 3974
		f 4 -1724 -1861 -3088 3090
		mu 0 4 3975 3976 3977 3978
		f 4 2341 -1735 2342 -1754
		mu 0 4 3979 3980 3981 3982
		f 4 -1740 2343 -1758 -1641
		mu 0 4 3983 3984 3985 3986
		f 4 2344 2345 2346 2347
		mu 0 4 3987 3988 3989 3990
		f 4 2348 -1838 2349 2350
		mu 0 4 3991 3992 3993 3994
		f 4 2351 -1842 2352 2353
		mu 0 4 3995 3996 3997 3998
		f 4 -2353 -1862 -1723 2354
		mu 0 4 3999 4000 4001 4002
		f 4 3066 -1871 -2349 2355
		mu 0 4 4003 4004 4005 4006
		f 4 2356 2357 2358 2359
		mu 0 4 4007 4008 4009 4010
		f 4 2360 2361 2362 2363
		mu 0 4 4011 4012 4013 4014
		f 4 3014 -1971 2364 -3012
		mu 0 4 3148 3147 4015 4016
		f 4 3021 -1977 2365 -3020
		mu 0 4 3156 3155 4017 4018
		f 4 -1872 -2057 -2132 -2060
		mu 0 4 4019 4020 4021 4022
		f 4 -1721 -2081 -2150 -2083
		mu 0 4 4023 4024 4025 4026
		f 4 -1717 -2096 2366 -2090
		mu 0 4 4027 4028 4029 4030
		f 4 2367 -2120 2368 -2114
		mu 0 4 4031 4032 4033 4034
		f 4 -2133 -2056 -2128 -2367
		mu 0 4 4035 4036 4037 4038
		f 4 -2369 -2151 -2080 -2146
		mu 0 4 4039 4040 4041 4042
		f 4 2369 2370 2371 2372
		mu 0 4 4043 4044 4045 4046
		f 4 2373 2374 2375 -1646
		mu 0 4 4047 4048 4049 4050
		f 4 -2350 -2217 2376 2377
		mu 0 4 4051 4052 4053 4054
		f 4 -1736 2378 2379 2380
		mu 0 4 4055 4056 4057 4058
		f 4 -2250 2381 2382 2383
		mu 0 4 4059 4060 4061 4062
		f 4 -1713 2384 2385 2386
		mu 0 4 4063 4064 4065 4066
		f 4 2387 -3062 3064 -2356
		mu 0 4 4067 4068 4069 4070
		f 4 2389 2390 2391 2392
		mu 0 4 4071 4072 4073 4074
		f 4 2393 2394 -1718 -2093
		mu 0 4 4075 4076 4077 4078
		f 4 2395 2396 2397 2398
		mu 0 4 4079 4080 4081 4082
		f 4 2399 2400 2401 2402
		mu 0 4 4083 4084 4085 4086
		f 3 2403 2404 2405
		mu 0 3 4087 4088 4089
		f 4 -1656 2406 -1659 2407
		mu 0 4 4090 4091 4092 4093
		f 4 2408 -1664 2409 -1666
		mu 0 4 4094 4095 4096 4097
		f 4 2412 -1763 2413 -2383
		mu 0 4 4098 4099 4100 4101
		f 4 2414 2415 2416 2417
		mu 0 4 4102 4103 4104 4105
		f 4 -1822 2418 -2378 2419
		mu 0 4 4106 4107 4108 4109
		f 4 2420 -1825 2421 -2355
		mu 0 4 4110 4111 4112 4113
		f 4 -1856 -2388 -2351 -2419
		mu 0 4 4114 4115 4116 4117
		f 4 3093 -1867 -2421 -3092
		mu 0 4 4118 4119 4120 4121
		f 4 2422 2423 2424 2425
		mu 0 4 4122 4123 4124 4125
		f 4 2426 2427 2428 2429
		mu 0 4 4126 4127 4128 4129
		f 4 2998 -1958 2430 -2996
		mu 0 4 3164 3163 4130 4131
		f 4 3005 -1965 2431 -3004
		mu 0 4 3172 3171 4132 4133
		f 4 -2389 -2054 -2129 -2055
		mu 0 4 4134 4135 4136 4137
		f 4 -1868 -2085 -2152 -2048
		mu 0 4 4138 4139 4140 4141
		f 4 2432 -2092 2433 -2086
		mu 0 4 4142 4143 4144 4145
		f 4 2434 -2124 2435 -2118
		mu 0 4 4146 4147 4148 4149
		f 4 -2130 -2053 -2127 -2434
		mu 0 4 4150 4151 4152 4153
		f 4 -2436 -2153 -2084 -2149
		mu 0 4 4154 4155 4156 4157
		f 4 -2414 2436 2437 2438
		mu 0 4 4158 4159 4160 4161
		f 4 2439 2440 -1738 -1657
		mu 0 4 4162 4163 4164 4165
		f 4 -2422 -2212 -2400 -2354
		mu 0 4 4166 4167 4168 4169
		f 4 2441 2442 -1714 2443
		mu 0 4 4170 4171 4172 4173
		f 4 2444 -2242 -2396 2445
		mu 0 4 4174 4175 4176 4177
		f 4 2446 2447 -1733 2448
		mu 0 4 4178 4179 4180 4181
		f 3 2449 2450 2451
		mu 0 3 4182 4183 4184
		f 4 -1624 2452 -1626 2453
		mu 0 4 4185 4186 4187 4188
		f 4 -1729 -1633 2454 -1635
		mu 0 4 4189 4190 4191 4192
		f 4 2457 -1704 2458 2459
		mu 0 4 4193 4194 4195 4196
		f 4 -2105 -1708 2460 2461
		mu 0 4 4197 4198 4199 4200
		f 4 3082 -1712 -1858 2462
		mu 0 4 4201 4202 4203 4204
		f 4 2463 -1728 2464 2465
		mu 0 4 4205 4206 4207 4208
		f 4 -1630 -1732 2466 2467
		mu 0 4 4209 4210 4211 4212
		f 4 2468 2469 2470 2471
		mu 0 4 4213 4214 4215 4216
		f 4 2472 -1778 2473 -1793
		mu 0 4 4217 4218 4219 4220
		f 4 2474 -1829 2475 -1847
		mu 0 4 4221 4222 4223 4224
		f 4 -1834 2476 -1848 2477
		mu 0 4 4225 4226 4227 4228
		f 4 -1859 -1711 -1863 -2477
		mu 0 4 4229 4230 4231 4232
		f 4 -1869 -2475 -3072 3074
		mu 0 4 4233 4234 4235 4236
		f 4 2478 2479 2480 2481
		mu 0 4 4237 4238 4239 4240
		f 4 2482 2483 2484 2485
		mu 0 4 4241 4242 4243 4244
		f 4 3053 -1995 2486 -3052
		mu 0 4 3132 3131 4245 4246
		f 4 3046 -2000 2487 -3044
		mu 0 4 3140 3139 4247 4248
		f 4 -1870 -2065 -2137 -2067
		mu 0 4 4249 4250 4251 4252
		f 4 -2072 -2144 -2074 -1709
		mu 0 4 4253 4254 4255 4256
		f 4 -1705 -2104 2488 -2098
		mu 0 4 4257 4258 4259 4260
		f 4 2489 -2112 2490 -2106
		mu 0 4 4261 4262 4263 4264
		f 4 -2489 -2138 -2064 -2136
		mu 0 4 4265 4266 4267 4268
		f 4 -2145 -2071 -2142 -2491
		mu 0 4 4269 4270 4271 4272
		f 4 -2474 2491 2492 2493
		mu 0 4 4273 4274 4275 4276
		f 4 2494 2495 2496 -1625
		mu 0 4 4277 4278 4279 4280
		f 4 -2476 -2214 2497 -2220
		mu 0 4 4281 4282 4283 4284
		f 4 2498 2499 2500 -1725
		mu 0 4 4285 4286 4287 4288
		f 4 -2248 2501 -2254 2502
		mu 0 4 4289 4290 4291 4292
		f 4 2503 2504 2505 -1701
		mu 0 4 4293 4294 4295 4296
		f 4 3058 -1551 -1852 -3056
		mu 0 4 4297 4298 4299 4300
		f 4 2506 -3078 3080 -2463
		mu 0 4 4301 4302 4303 4304
		f 3 -1560 2508 2509
		mu 0 3 4305 4306 4307
		f 4 -2089 -1568 -2394 -2433
		mu 0 4 4308 4309 4310 4311
		f 3 2510 2511 2512
		mu 0 3 4312 4313 4314
		f 4 2513 2514 2515 2516
		mu 0 4 4315 4316 4317 4318
		f 4 -1658 -1588 2517 -1590
		mu 0 4 4319 4320 4321 4322
		f 4 -1595 2518 2519 2520
		mu 0 4 4323 4324 4325 4326
		f 4 -1600 2521 -1601 2522
		mu 0 4 4327 4328 4329 4330
		f 4 2523 -1607 2524 -1609
		mu 0 4 4331 4332 4333 4334
		f 3 -1614 2525 2526
		mu 0 3 4335 4336 4337
		f 3 -1617 2527 2528
		mu 0 3 4338 4339 4340
		f 3 -1620 2529 2530
		mu 0 3 4341 4342 4343
		f 4 2531 -1628 2532 -1631
		mu 0 4 4344 4345 4346 4347
		f 4 -1637 2533 -1622 -1681
		mu 0 4 4348 4349 4350 4351
		f 4 -1645 2534 -1647 -1665
		mu 0 4 4352 4353 4354 4355
		f 4 -1653 2535 -1638 -1673
		mu 0 4 4356 4357 4358 4359
		f 4 -1661 2536 -1662 -1585
		mu 0 4 4360 4361 4362 4363
		f 4 -1668 2537 -1654 -1642
		mu 0 4 4364 4365 4366 4367
		f 4 -1676 2538 -1677 -1650
		mu 0 4 4368 4369 4370 4371
		f 4 -1684 2539 -1670 -1634
		mu 0 4 4372 4373 4374 4375
		f 4 2548 -1707 2549 -2113
		mu 0 4 4376 4377 4378 4379
		f 4 -1719 2550 -2121 2551
		mu 0 4 4380 4381 4382 4383
		f 4 2552 -1747 2553 -2117
		mu 0 4 4384 4385 4386 4387
		f 4 2554 2555 2556 2557
		mu 0 4 4388 4389 4390 4391
		f 4 2558 2559 2560 2561
		mu 0 4 4392 4393 4394 4395
		f 4 2562 -1814 2563 -1820
		mu 0 4 4396 4397 4398 4399
		f 4 2564 -1818 2565 -1832
		mu 0 4 4400 4401 4402 4403
		f 4 -2564 -1853 -1550 -1855
		mu 0 4 4404 4405 4406 4407
		f 4 -2566 -1854 -2507 -1857
		mu 0 4 4408 4409 4410 4411
		f 4 2566 -1884 2567 -1886
		mu 0 4 4412 4413 4414 4415
		f 4 -1891 2568 -1877 2569
		mu 0 4 4416 4417 4418 4419
		f 4 2570 2571 2572 2573
		mu 0 4 4420 4421 4422 4423
		f 4 2574 2575 2576 -2509
		mu 0 4 4424 4425 4426 4427
		f 4 2577 2578 2579 2580
		mu 0 4 4428 4429 4430 4431
		f 4 -2530 2581 2582 2583
		mu 0 4 4432 4433 4434 4435
		f 4 2584 2585 2586 2587
		mu 0 4 4436 4437 4438 4439
		f 4 -2526 2588 2589 2590
		mu 0 4 4440 4441 4442 4443
		f 4 2591 2592 2593 2594
		mu 0 4 4444 4445 4446 4447
		f 4 -2528 2595 2596 2597
		mu 0 4 4448 4449 4450 4451
		f 4 3002 -1962 2598 -3000
		mu 0 4 3168 3167 4452 4453
		f 4 2994 -1968 2599 -2992
		mu 0 4 3176 3175 4454 4455
		f 4 3018 -1973 2600 -3016
		mu 0 4 3152 3151 4456 4457
		f 4 -1980 2601 -3008 3010
		mu 0 4 3159 4458 4459 3160
		f 4 3034 -1985 2602 -3032
		mu 0 4 3184 3183 4460 4461
		f 4 -1992 2603 -3024 3026
		mu 0 4 3191 4462 4463 3192
		f 4 -1997 2604 -3040 3042
		mu 0 4 3135 4464 4465 3136
		f 4 3050 -2003 2605 -3048
		mu 0 4 3144 3143 4466 4467
		f 4 -1881 2606 2607 2608
		mu 0 4 4468 4469 4470 4471
		f 4 2609 2610 2611 -1892
		mu 0 4 4472 4473 4474 4475
		f 4 2612 2613 2614 2615
		mu 0 4 4476 4477 4478 4479
		f 4 2616 2617 2618 2619
		mu 0 4 4480 4481 4482 4483
		f 4 -2039 -2272 -1797 2620
		mu 0 4 4484 4485 4486 4487
		f 4 -1548 -2050 -2125 -2052
		mu 0 4 4488 4489 4490 4491
		f 4 -2508 -2069 -2140 -2070
		mu 0 4 4492 4493 4494 4495
		f 4 -1569 -2088 2621 -2122
		mu 0 4 4496 4497 4498 4499
		f 4 -2462 -2108 2622 -2102
		mu 0 4 4500 4501 4502 4503
		f 4 -2126 -2049 -2154 -2622
		mu 0 4 4504 4505 4506 4507
		f 4 -2141 -2068 -2139 -2623
		mu 0 4 4508 4509 4510 4511
		f 4 2623 2624 2625 -1629
		mu 0 4 4512 4513 4514 4515
		f 4 2626 2627 2628 -1608
		mu 0 4 4516 4517 4518 4519
		f 4 2629 2630 2631 -1596
		mu 0 4 4520 4521 4522 4523
		f 4 2632 2633 2634 2635
		mu 0 4 4524 4525 4526 4527
		f 4 2636 -2240 -2514 -2246
		mu 0 4 4528 4529 4530 4531
		f 4 -2273 -2038 -2278 2637
		mu 0 4 4532 4533 4534 4535
		f 3 2638 2639 2640
		mu 0 3 4536 4537 4538
		f 4 -2550 -2289 -2553 -2314
		mu 0 4 4539 4540 4541 4542
		f 3 2641 2642 2643
		mu 0 3 4543 4544 4545
		f 4 -2341 -2552 -2368 -2554
		mu 0 4 4546 4547 4548 4549
		f 4 -2395 -1567 -2435 -2551
		mu 0 4 4550 4551 4552 4553
		f 3 2644 2645 2646
		mu 0 3 4554 4555 4556
		f 3 2647 2648 2649
		mu 0 3 4557 4558 4559
		f 4 -2109 -2461 -2549 -2490
		mu 0 4 4560 4561 4562 4563
		f 3 -2451 -2648 -2571
		mu 0 3 4564 4565 4566
		f 3 -2510 2650 2651
		mu 0 3 4567 4568 4569
		f 3 -2649 -2652 -2483
		mu 0 3 4570 4571 4572
		f 3 -1561 -2450 -2482
		mu 0 3 4573 4574 4575
		f 4 -2574 2652 -2479 -2452
		mu 0 4 4576 4577 4578 4579
		f 4 2653 -2572 -2650 -2486
		mu 0 4 4580 4581 4582 4583
		f 4 -2577 2654 -2484 -2651
		mu 0 4 4584 4585 4586 4587
		f 4 -2481 2655 -2575 -1559
		mu 0 4 4588 4589 4590 4591
		f 4 2656 -2480 2657 2658
		mu 0 4 4592 4593 4594 4595
		f 4 -2485 2659 2660 2661
		mu 0 4 4596 4597 4598 4599
		f 4 -2573 2662 2663 2664
		mu 0 4 4600 4601 4602 4603
		f 4 2665 -2576 2666 2667
		mu 0 4 4604 4605 4606 4607
		f 4 -2580 2668 -2304 -2281
		mu 0 4 4608 4609 4610 4611
		f 4 -2309 2669 -2578 -2641
		mu 0 4 4612 4613 4614 4615
		f 4 2670 -2307 2671 -2584
		mu 0 4 4616 4617 4618 4619
		f 4 2672 -2582 -1619 -2306
		mu 0 4 4620 4621 4622 4623
		f 4 -2305 2673 2674 2675
		mu 0 4 4624 4625 4626 4627
		f 4 2676 -2308 2677 2678
		mu 0 4 4628 4629 4630 4631
		f 4 2679 -2579 2680 2681
		mu 0 4 4632 4633 4634 4635
		f 4 -2583 2682 2683 2684
		mu 0 4 4636 4637 4638 4639
		f 3 -2280 -2639 -2581
		mu 0 3 4640 4641 4642
		f 3 -2531 -2672 2685
		mu 0 3 4643 4644 4645
		f 3 -2640 -2686 -2310
		mu 0 3 4646 4647 4648
		f 3 -1621 -2279 -2303
		mu 0 3 4649 4650 4651
		f 4 -2587 2686 -2358 -2333
		mu 0 4 4652 4653 4654 4655
		f 4 -2364 2687 -2585 -2644
		mu 0 4 4656 4657 4658 4659
		f 4 -2591 2688 -2362 2689
		mu 0 4 4660 4661 4662 4663
		f 4 2690 -2589 -1613 -2360
		mu 0 4 4664 4665 4666 4667
		f 4 -2359 2691 2692 2693
		mu 0 4 4668 4669 4670 4671
		f 4 2694 -2363 2695 2696
		mu 0 4 4672 4673 4674 4675
		f 4 2697 -2586 2698 2699
		mu 0 4 4676 4677 4678 4679
		f 4 -2590 2700 2701 2702
		mu 0 4 4680 4681 4682 4683
		f 4 -2594 2703 -2424 -2406
		mu 0 4 4684 4685 4686 4687
		f 4 -2430 2704 -2592 -2647
		mu 0 4 4688 4689 4690 4691
		f 4 -2598 2705 -2428 2706
		mu 0 4 4692 4693 4694 4695
		f 4 2707 -2596 -1616 -2426
		mu 0 4 4696 4697 4698 4699
		f 4 -2425 2708 2709 2710
		mu 0 4 4700 4701 4702 4703
		f 4 2711 -2429 2712 2713
		mu 0 4 4704 4705 4706 4707
		f 4 2714 -2593 2715 2716
		mu 0 4 4708 4709 4710 4711
		f 4 -2597 2717 2718 2719
		mu 0 4 4712 4713 4714 4715
		f 3 -2332 -2642 -2588
		mu 0 3 4716 4717 4718
		f 3 -2527 -2690 2720
		mu 0 3 4719 4720 4721
		f 3 -1615 -2331 -2357
		mu 0 3 4722 4723 4724
		f 3 -2643 -2721 -2361
		mu 0 3 4725 4726 4727
		f 3 -1618 -2404 -2423
		mu 0 3 4728 4729 4730
		f 3 -2646 2721 -2427
		mu 0 3 4731 4732 4733
		f 3 -2529 -2707 -2722
		mu 0 3 4734 4735 4736
		f 3 -2405 -2645 -2595
		mu 0 3 4737 4738 4739
		f 3 2722 2723 2724
		mu 0 3 4740 4741 4742
		f 4 -1603 2725 -1605 2726
		mu 0 4 4743 4744 4745 4746
		f 4 -2040 -1611 2727 -1598
		mu 0 4 4747 4748 4749 4750
		f 4 -1799 -2267 -2045 2728
		mu 0 4 4751 4752 4753 4754
		f 4 2729 2730 2731 2732
		mu 0 4 4755 4756 4757 4758
		f 4 2733 -1879 2734 -1882
		mu 0 4 4759 4760 4761 4762
		f 4 -1888 2735 -1889 2736
		mu 0 4 4763 4764 4765 4766
		f 4 -1885 2737 2738 2739
		mu 0 4 4767 4768 4769 4770
		f 4 2740 2741 2742 -1880
		mu 0 4 4771 4772 4773 4774
		f 4 2743 2744 2745 2746
		mu 0 4 4775 4776 4777 4778
		f 4 2747 2748 2749 2750
		mu 0 4 4779 4780 4781 4782
		f 4 -1612 -2043 2751 2752
		mu 0 4 4783 4784 4785 4786
		f 4 2753 -2275 -2037 2754
		mu 0 4 4787 4788 4789 4790
		f 4 2755 2756 2757 -1604
		mu 0 4 4791 4792 4793 4794
		f 4 2758 2759 2760 2761
		mu 0 4 4795 4796 4797 4798
		f 3 2762 2763 2764
		mu 0 3 4799 4800 4801
		f 4 2765 -2744 -2725 -2616
		mu 0 4 4802 4803 4804 4805
		f 4 2766 -2614 -2513 -2750
		mu 0 4 4806 4807 4808 4809
		f 4 2767 -2748 -2765 -2620
		mu 0 4 4810 4811 4812 4813
		f 4 -2746 2768 -2618 -1570
		mu 0 4 4814 4815 4816 4817
		f 4 -2615 2769 2770 2771
		mu 0 4 4818 4819 4820 4821
		f 4 2772 -2619 2773 2774
		mu 0 4 4822 4823 4824 4825
		f 4 2775 -2745 2776 2777
		mu 0 4 4826 4827 4828 4829
		f 4 -2749 2778 2779 2780
		mu 0 4 4830 4831 4832 4833
		f 3 -2512 -2763 -2751
		mu 0 3 4834 4835 4836
		f 3 -2724 -2511 -2613
		mu 0 3 4837 4838 4839
		f 3 -2764 -1571 -2617
		mu 0 3 4840 4841 4842
		f 3 -1572 -2723 -2747
		mu 0 3 4843 4844 4845
		f 4 2781 2782 2783 2784
		mu 0 4 4846 4847 4848 4849
		f 4 2785 2786 2787 2788
		mu 0 4 4850 4851 4852 4853
		f 4 2789 2790 2791 2792
		mu 0 4 4854 4855 4856 4857
		f 4 2793 2794 2795 2796
		mu 0 4 4858 4859 4860 4861
		f 4 -2788 2797 -2785 -1942
		mu 0 4 4862 4863 4864 4865
		f 4 -2795 2798 -2790 -1949
		mu 0 4 4866 4867 4868 4869
		f 4 -2792 2799 -2786 -1946
		mu 0 4 4870 4871 4872 4873
		f 4 2800 -2797 -1953 -2783
		mu 0 4 4874 4875 4876 4877
		f 4 2801 2802 2803 2804
		mu 0 4 4878 4879 4880 4881
		f 4 2805 2806 2807 2808
		mu 0 4 4882 4883 4884 4885
		f 4 2809 2810 2811 2812
		mu 0 4 4886 4887 4888 4889
		f 4 2813 2814 2815 2816
		mu 0 4 4890 4891 4892 4893
		f 4 2817 -2805 -1926 -2807
		mu 0 4 4894 4895 4896 4897
		f 4 -2815 2818 -2810 -1934
		mu 0 4 4898 4899 4900 4901
		f 4 -2812 2819 -2809 -1930
		mu 0 4 4902 4903 4904 4905
		f 4 2820 -2817 -1937 -2803
		mu 0 4 4906 4907 4908 4909
		f 4 2821 2822 2823 2824
		mu 0 4 4910 4911 4912 4913
		f 4 2825 2826 2827 2828
		mu 0 4 4914 4915 4916 4917
		f 4 2829 2830 2831 2832
		mu 0 4 4918 4919 4920 4921
		f 4 2833 2834 2835 2836
		mu 0 4 4922 4923 4924 4925
		f 4 2837 -2825 -1910 -2827
		mu 0 4 4926 4927 4928 4929
		f 4 -2836 2838 -2830 -1917
		mu 0 4 4930 4931 4932 4933
		f 4 -2832 2839 -2829 -1914
		mu 0 4 4934 4935 4936 4937
		f 4 -2823 2840 -2834 -1921
		mu 0 4 4938 4939 4940 4941
		f 4 -1693 2841 -2782 2842
		mu 0 4 4942 4943 4944 4945
		f 4 -1694 2843 -2787 2844
		mu 0 4 4946 4947 4948 4949
		f 4 -1695 2845 -2791 2846
		mu 0 4 4950 4951 4952 4953
		f 4 -1696 2847 -2794 2848
		mu 0 4 4954 4955 4956 4957
		f 4 -2411 -2843 -2798 -2844
		mu 0 4 4958 4959 4960 4961
		f 4 -2412 -2847 -2799 -2848
		mu 0 4 4962 4963 4964 4965
		f 4 -2545 -2845 -2800 -2846
		mu 0 4 4966 4967 4968 4969
		f 4 -2546 -2849 -2801 -2842
		mu 0 4 4970 4971 4972 4973
		f 4 -1689 2849 -2802 2850
		mu 0 4 4974 4975 4976 4977
		f 4 -1690 2851 -2806 2852
		mu 0 4 4978 4979 4980 4981
		f 4 -1691 2853 -2811 2854
		mu 0 4 4982 4983 4984 4985
		f 4 -1692 2855 -2814 2856
		mu 0 4 4986 4987 4988 4989
		f 4 -2337 -2851 -2818 -2852
		mu 0 4 4990 4991 4992 4993
		f 4 -2338 -2855 -2819 -2856
		mu 0 4 4994 4995 4996 4997
		f 4 -2543 -2853 -2820 -2854
		mu 0 4 4998 4999 5000 5001
		f 4 -2544 -2857 -2821 -2850
		mu 0 4 5002 5003 5004 5005
		f 4 -1697 2857 -2822 2858
		mu 0 4 5006 5007 5008 5009
		f 4 -1698 2859 -2826 2860
		mu 0 4 5010 5011 5012 5013
		f 4 -1699 2861 -2831 2862
		mu 0 4 5014 5015 5016 5017
		f 4 -1700 2863 -2835 2864
		mu 0 4 5018 5019 5020 5021
		f 4 -2285 -2859 -2838 -2860
		mu 0 4 5022 5023 5024 5025
		f 4 -2286 -2863 -2839 -2864
		mu 0 4 5026 5027 5028 5029
		f 4 -2547 -2861 -2840 -2862
		mu 0 4 5030 5031 5032 5033
		f 4 -2548 -2865 -2841 -2858
		mu 0 4 5034 5035 5036 5037
		f 4 2865 -1685 2866 2867
		mu 0 4 5038 5039 5040 5041
		f 4 -1686 2868 2869 2870
		mu 0 4 5042 5043 5044 5045
		f 4 -1687 2871 2872 2873
		mu 0 4 5046 5047 5048 5049
		f 4 -1688 2874 2875 2876
		mu 0 4 5050 5051 5052 5053
		f 4 -2869 -2456 -2866 -1894
		mu 0 4 5054 5055 5056 5057
		f 4 -2457 -2874 -1901 -2875
		mu 0 4 5058 5059 5060 5061
		f 4 -2541 -2871 -1897 -2872
		mu 0 4 5062 5063 5064 5065
		f 4 -2867 -2542 -2877 -1906
		mu 0 4 5066 5067 5068 5069
		f 4 -2665 -1896 -2658 -2653
		mu 0 4 5070 5071 5072 5073
		f 4 -1899 -2663 -2654 -2662
		mu 0 4 5074 5075 5076 5077
		f 4 -1903 -2660 -2655 -2666
		mu 0 4 5078 5079 5080 5081
		f 4 -2657 -1908 -2667 -2656
		mu 0 4 5082 5083 5084 5085
		f 4 -1905 -2659 -1895 -2868
		mu 0 4 5086 5087 5088 5089
		f 4 -2661 -1902 -2873 -1900
		mu 0 4 5090 5091 5092 5093
		f 4 -2664 -1898 -2870 -1893
		mu 0 4 5094 5095 5096 5097
		f 4 -1904 -2668 -1907 -2876
		mu 0 4 5098 5099 5100 5101
		f 4 2877 -1655 2878 -2431
		mu 0 4 5102 5103 5104 5105
		f 4 -1660 2879 -2599 2880
		mu 0 4 5106 5107 5108 5109
		f 4 -1663 2881 -2432 2882
		mu 0 4 5110 5111 5112 5113
		f 4 -1667 2883 -2600 2884
		mu 0 4 5114 5115 5116 5117
		f 4 -2880 -2407 -2878 -1957
		mu 0 4 5118 5119 5120 5121
		f 4 -2884 -2410 -2883 -1964
		mu 0 4 5122 5123 5124 5125
		f 4 -2882 -2537 -2881 -1961
		mu 0 4 5126 5127 5128 5129
		f 4 -2879 -2538 -2885 -1967
		mu 0 4 5130 5131 5132 5133
		f 4 2885 -1639 2886 -2365
		mu 0 4 5134 5135 5136 5137
		f 4 -1644 2887 -2601 2888
		mu 0 4 5138 5139 5140 5141
		f 4 -1648 2889 -2366 2890
		mu 0 4 5142 5143 5144 5145
		f 4 -1652 2891 -2602 2892
		mu 0 4 5146 5147 5148 5149
		f 4 -2888 -2334 -2886 -1970
		mu 0 4 5150 5151 5152 5153
		f 4 -2892 -2336 -2891 -1976
		mu 0 4 5154 5155 5156 5157
		f 4 -2890 -2535 -2889 -1972
		mu 0 4 5158 5159 5160 5161
		f 4 -2887 -2536 -2893 -1979
		mu 0 4 5162 5163 5164 5165
		f 4 -1671 2893 -2311 2894
		mu 0 4 5166 5167 5168 5169
		f 4 -1675 2895 -2603 2896
		mu 0 4 5170 5171 5172 5173
		f 4 2897 -1678 2898 -2312
		mu 0 4 5174 5175 5176 5177
		f 4 2899 -1683 2900 -2604
		mu 0 4 5178 5179 5180 5181
		f 4 -2282 -2895 -1981 -2896
		mu 0 4 5182 5183 5184 5185
		f 4 -2901 -2283 -2898 -1988
		mu 0 4 5186 5187 5188 5189
		f 4 -2899 -2539 -2897 -1984
		mu 0 4 5190 5191 5192 5193
		f 4 -2894 -2540 -2900 -1991
		mu 0 4 5194 5195 5196 5197
		f 4 2901 -1623 2902 -2487
		mu 0 4 5198 5199 5200 5201
		f 4 2903 -1627 2904 -2605
		mu 0 4 5202 5203 5204 5205
		f 4 -1632 2905 -2488 2906
		mu 0 4 5206 5207 5208 5209
		f 4 -1636 2907 -2606 2908
		mu 0 4 5210 5211 5212 5213
		f 4 -2905 -2453 -2902 -1994
		mu 0 4 5214 5215 5216 5217
		f 4 -2455 -2907 -1999 -2908
		mu 0 4 5218 5219 5220 5221
		f 4 -2533 -2904 -1996 -2906
		mu 0 4 5222 5223 5224 5225
		f 4 -2903 -2534 -2909 -2002
		mu 0 4 5226 5227 5228 5229
		f 4 -1599 2909 2910 2911
		mu 0 4 5230 5231 5232 5233
		f 4 -1602 2912 2913 2914
		mu 0 4 5234 5235 5236 5237
		f 4 2915 -1606 2916 2917
		mu 0 4 5238 5239 5240 5241
		f 4 -1610 2918 2919 2920
		mu 0 4 5242 5243 5244 5245
		f 4 -2913 -2522 -2912 -2005
		mu 0 4 5246 5247 5248 5249
		f 4 -2525 -2916 -2014 -2919
		mu 0 4 5250 5251 5252 5253
		f 4 -2917 -2726 -2915 -2010
		mu 0 4 5254 5255 5256 5257
		f 4 -2910 -2728 -2921 -2017
		mu 0 4 5258 5259 5260 5261
		f 4 -2007 -2607 -2567 -2740
		mu 0 4 5262 5263 5264 5265
		f 4 -2012 -2738 -2737 -2612
		mu 0 4 5266 5267 5268 5269
		f 4 -2743 -2016 -2610 -2570
		mu 0 4 5270 5271 5272 5273
		f 4 -2019 -2741 -2734 -2609
		mu 0 4 5274 5275 5276 5277
		f 4 -2608 -2006 -2911 -2020
		mu 0 4 5278 5279 5280 5281
		f 4 -2009 -2611 -2015 -2918
		mu 0 4 5282 5283 5284 5285
		f 4 -2739 -2011 -2914 -2008
		mu 0 4 5286 5287 5288 5289
		f 4 -2742 -2018 -2920 -2013
		mu 0 4 5290 5291 5292 5293
		f 4 -1878 2921 2922 2923
		mu 0 4 5294 5295 5296 5297
		f 4 -1883 2924 2925 2926
		mu 0 4 5298 5299 5300 5301
		f 4 -1887 2927 2928 2929
		mu 0 4 5302 5303 5304 5305
		f 4 2930 -1890 2931 2932
		mu 0 4 5306 5307 5308 5309
		f 4 -2568 -2927 -2025 -2928
		mu 0 4 5310 5311 5312 5313
		f 4 -2922 -2569 -2931 -2034
		mu 0 4 5314 5315 5316 5317
		f 4 -2735 -2924 -2022 -2925
		mu 0 4 5318 5319 5320 5321
		f 4 -2932 -2736 -2930 -2030
		mu 0 4 5322 5323 5324 5325
		f 4 -1564 -2391 -2155 -2202
		mu 0 4 5326 5327 5328 5329
		f 4 -2179 -1592 2933 -2160
		mu 0 4 5330 5331 5332 5333
		f 4 -1731 2934 2935 2936
		mu 0 4 5334 5335 5336 5337
		f 4 -1739 2937 2938 2939
		mu 0 4 5338 5339 5340 5341
		f 4 -1759 2940 2941 2942
		mu 0 4 5342 5343 5344 5345
		f 4 -2042 2943 2944 2945
		mu 0 4 5346 5347 5348 5349
		f 4 -2468 -2178 -2624 -2532
		mu 0 4 5350 5351 5352 5353
		f 4 -1589 -2182 -2440 -2408
		mu 0 4 5354 5355 5356 5357
		f 4 -2626 -2186 -2495 -2454
		mu 0 4 5358 5359 5360 5361
		f 4 -2189 -2374 -2335 -2321
		mu 0 4 5362 5363 5364 5365
		f 4 -2497 -2194 -2319 -2284
		mu 0 4 5366 5367 5368 5369
		f 4 -2197 -2627 -2524 -2753
		mu 0 4 5370 5371 5372 5373
		f 4 -2201 2946 -1586 -1565
		mu 0 4 5374 5375 5376 5377
		f 4 -2206 -2756 -2727 -2629
		mu 0 4 5378 5379 5380 5381
		f 4 -2292 -2943 -2171 -2935
		mu 0 4 5382 5383 5384 5385
		f 4 -2190 -2320 -2193 -2296
		mu 0 4 5386 5387 5388 5389
		f 4 -2941 -2344 -2940 -2168
		mu 0 4 5390 5391 5392 5393
		f 4 -2393 -2375 -2188 -2348
		mu 0 4 5394 5395 5396 5397
		f 4 -2392 -1563 -2409 -2376
		mu 0 4 5398 5399 5400 5401
		f 4 -2938 -2441 -2181 -2418
		mu 0 4 5402 5403 5404 5405
		f 4 -2467 -2937 -2163 -2175
		mu 0 4 5406 5407 5408 5409
		f 4 -2191 -2496 -2185 -2472
		mu 0 4 5410 5411 5412 5413
		f 4 -2183 -2625 -2177 -2558
		mu 0 4 5414 5415 5416 5417
		f 4 -2203 -2628 -2196 -2562
		mu 0 4 5418 5419 5420 5421
		f 4 -2752 -2946 -2207 -2198
		mu 0 4 5422 5423 5424 5425
		f 4 2947 -2757 -2205 -2733
		mu 0 4 5426 5427 5428 5429
		f 4 -1584 -2401 -2211 -2223
		mu 0 4 5430 5431 5432 5433
		f 4 -1703 2948 -2498 2949
		mu 0 4 5434 5435 5436 5437
		f 4 2950 -1715 2951 -2377
		mu 0 4 5438 5439 5440 5441
		f 4 -1743 2952 -2322 2953
		mu 0 4 5442 5443 5444 5445
		f 4 -2222 -2630 -2521 -1581
		mu 0 4 5446 5447 5448 5449
		f 4 -2225 -2633 -1574 -2460
		mu 0 4 5450 5451 5452 5453
		f 4 -2229 -2442 -1577 -2632
		mu 0 4 5454 5455 5456 5457
		f 4 -2635 -2232 -2499 -2464
		mu 0 4 5458 5459 5460 5461
		f 4 -2325 -2235 -2379 -2342
		mu 0 4 5462 5463 5464 5465
		f 4 -2501 -2238 -2323 -2290
		mu 0 4 5466 5467 5468 5469
		f 4 -2288 -2954 -2218 -2949
		mu 0 4 5470 5471 5472 5473
		f 4 -2233 -2324 -2237 -2302
		mu 0 4 5474 5475 5476 5477
		f 4 -2340 -2951 -2216 -2953
		mu 0 4 5478 5479 5480 5481
		f 4 -2403 -2380 -2234 -2352
		mu 0 4 5482 5483 5484 5485
		f 4 -2402 -1583 -2449 -2381
		mu 0 4 5486 5487 5488 5489
		f 4 -2952 -2443 -2228 -2420
		mu 0 4 5490 5491 5492 5493
		f 4 -2459 -2950 -2213 -2226
		mu 0 4 5494 5495 5496 5497
		f 4 -2236 -2500 -2231 -2478
		mu 0 4 5498 5499 5500 5501
		f 4 -2227 -2631 -2221 -2563
		mu 0 4 5502 5503 5504 5505
		f 4 -2230 -2634 -2224 -2565
		mu 0 4 5506 5507 5508 5509
		f 4 -2260 -1576 -2515 -2239
		mu 0 4 5510 5511 5512 5513
		f 4 -1579 -2397 -2241 2954
		mu 0 4 5514 5515 5516 5517
		f 4 2955 -1727 2956 -2502
		mu 0 4 5518 5519 5520 5521
		f 4 2957 -1734 2958 -2382
		mu 0 4 5522 5523 5524 5525
		f 4 2959 -1755 2960 -2326
		mu 0 4 5526 5527 5528 5529
		f 4 2961 -2257 -2447 -1582
		mu 0 4 5530 5531 5532 5533
		f 4 -1573 -2259 -2504 -2458
		mu 0 4 5534 5535 5536 5537
		f 4 -2330 -2263 -2385 -2339
		mu 0 4 5538 5539 5540 5541
		f 4 -2506 -2266 -2328 -2287
		mu 0 4 5542 5543 5544 5545
		f 4 -2957 -2291 -2960 -2252
		mu 0 4 5546 5547 5548 5549
		f 4 -2261 -2329 -2265 -2297
		mu 0 4 5550 5551 5552 5553
		f 4 -2343 -2958 -2249 -2961
		mu 0 4 5554 5555 5556 5557
		f 4 -2386 -2262 2962 -2399
		mu 0 4 5558 5559 5560 5561
		f 4 -2398 -1578 -2444 -2387
		mu 0 4 5562 5563 5564 5565
		f 4 -2448 -2256 -2413 -2959
		mu 0 4 5566 5567 5568 5569
		f 4 -2517 -2465 -2956 -2247
		mu 0 4 5570 5571 5572 5573
		f 4 -2264 -2505 -2258 -2473
		mu 0 4 5574 5575 5576 5577
		f 4 -2516 -1575 -2636 -2466
		mu 0 4 5578 5579 5580 5581
		f 4 2963 -1594 2964 -2274
		mu 0 4 5582 5583 5584 5585
		f 4 2965 -2519 -2964 -2638
		mu 0 4 5586 5587 5588 5589
		f 4 2966 2967 -1593 -1580
		mu 0 4 5590 5591 5592 5593
		f 4 -2255 2968 2969 -2244
		mu 0 4 5594 5595 5596 5597
		f 4 -2970 2970 -2966 -2277
		mu 0 4 5598 5599 5600 5601
		f 4 -2971 -2969 -2962 -2520
		mu 0 4 5602 5603 5604 5605
		f 4 2971 -1587 2972 -1597
		mu 0 4 5606 5607 5608 5609
		f 4 -1591 2973 -2758 2974
		mu 0 4 5610 5611 5612 5613
		f 4 2975 2976 2977 2978
		mu 0 4 5614 5615 5616 5617
		f 4 2979 -2047 2980 -2243
		mu 0 4 5618 5619 5620 5621
		f 4 2981 2982 2983 -2044
		mu 0 4 5622 5623 5624 5625
		f 4 2984 -2200 -2976 -2944
		mu 0 4 5626 5627 5628 5629
		f 4 -2518 -2972 -2523 -2974
		mu 0 4 5630 5631 5632 5633
		f 4 -2934 -2975 -2948 2985
		mu 0 4 5634 5635 5636 5637
		f 4 -2973 -2947 -2985 -2041
		mu 0 4 5638 5639 5640 5641
		f 4 2986 -2245 -2276 2987
		mu 0 4 5642 5643 5644 5645
		f 3 -2988 -2754 -2759
		mu 0 3 5646 5647 5648
		f 4 2988 -2967 -2955 -2981
		mu 0 4 5649 5650 5651 5652
		f 4 -2269 2989 -2965 -2968
		mu 0 4 5653 5654 5655 5656
		f 4 -2268 -1798 -2271 -2990
		mu 0 4 5657 5658 5659 5660
		f 3 -2270 -2989 -2046
		mu 0 3 5661 5662 5663
		f 4 -2963 -1787 -2370 -2446
		mu 0 4 5664 5665 5666 5667
		f 4 -2166 -1768 -2555 -2176
		mu 0 4 5668 5669 5670 5671
		f 4 -2159 -1771 -2415 -2180
		mu 0 4 5672 5673 5674 5675
		f 4 -2557 -1776 -2469 -2184
		mu 0 4 5676 5677 5678 5679
		f 4 -1784 -2345 -2187 -2295
		mu 0 4 5680 5681 5682 5683
		f 4 -2471 -1792 -2293 -2192
		mu 0 4 5684 5685 5686 5687
		f 4 -1803 -2559 -2195 -2210
		mu 0 4 5688 5689 5690 5691
		f 4 -1807 -2977 -2199 -2158
		mu 0 4 5692 5693 5694 5695
		f 4 -2561 -1811 -2730 -2204
		mu 0 4 5696 5697 5698 5699
		f 4 -1808 -2157 -2437 -1762
		mu 0 4 5700 5701 5702 5703
		f 4 -1772 -2162 -2982 -2980
		mu 0 4 5704 5705 5706 5707
		f 4 -2165 -2492 -1777 -1765
		mu 0 4 5708 5709 5710 5711
		f 4 -2318 -2170 -2371 -1786
		mu 0 4 5712 5713 5714 5715
		f 4 -2173 -2316 -1794 -2494
		mu 0 4 5716 5717 5718 5719
		f 4 -2209 -2760 -2755 -1804
		mu 0 4 5720 5721 5722 5723
		f 4 -1781 -2294 -1791 -2327
		mu 0 4 5724 5725 5726 5727
		f 4 -2317 -2172 -2942 -2167
		mu 0 4 5728 5729 5730 5731
		f 4 -2439 -2346 -1783 -2384
		mu 0 4 5732 5733 5734 5735
		f 4 -2372 -2169 -2939 -2417
		mu 0 4 5736 5737 5738 5739
		f 4 -2373 -2416 -1770 -2445
		mu 0 4 5740 5741 5742 5743
		f 4 -2438 -2156 -2390 -2347
		mu 0 4 5744 5745 5746 5747
		f 4 -1789 -2470 -1775 -2503
		mu 0 4 5748 5749 5750 5751
		f 4 -2493 -2164 -2936 -2174
		mu 0 4 5752 5753 5754 5755
		f 4 -2556 -1767 -2637 -1773
		mu 0 4 5756 5757 5758 5759
		f 4 -1809 -2560 -1802 -2621
		mu 0 4 5760 5761 5762 5763
		f 4 -2984 -2731 -1810 -2729
		mu 0 4 5764 5765 5766 5767
		f 4 -2761 -2208 -2945 -2979
		mu 0 4 5768 5769 5770 5771
		f 4 -2978 -1806 -2987 -2762
		mu 0 4 5772 5773 5774 5775
		f 4 -2732 -2983 -2161 -2986
		mu 0 4 5776 5777 5778 5779;
	setAttr ".fc[1500:1567]"
		f 4 -2680 -1912 -2674 -2669
		mu 0 4 5780 5781 5782 5783
		f 4 -2677 -1916 -2681 -2670
		mu 0 4 5784 5785 5786 5787
		f 4 -1919 -2678 -2671 -2685
		mu 0 4 5788 5789 5790 5791
		f 4 -1923 -2683 -2673 -2676
		mu 0 4 5792 5793 5794 5795
		f 4 -2675 -1911 -2824 -1924
		mu 0 4 5796 5797 5798 5799
		f 4 -1913 -2679 -1918 -2833
		mu 0 4 5800 5801 5802 5803
		f 4 -1909 -2682 -1915 -2828
		mu 0 4 5804 5805 5806 5807
		f 4 -2684 -1922 -2837 -1920
		mu 0 4 5808 5809 5810 5811
		f 4 -1928 -2692 -2687 -2698
		mu 0 4 5812 5813 5814 5815
		f 4 -2695 -1932 -2699 -2688
		mu 0 4 5816 5817 5818 5819
		f 4 -2703 -1936 -2696 -2689
		mu 0 4 5820 5821 5822 5823
		f 4 -1939 -2701 -2691 -2694
		mu 0 4 5824 5825 5826 5827
		f 4 -2693 -1927 -2804 -1940
		mu 0 4 5828 5829 5830 5831
		f 4 -1929 -2697 -1935 -2813
		mu 0 4 5832 5833 5834 5835
		f 4 -1925 -2700 -1931 -2808
		mu 0 4 5836 5837 5838 5839
		f 4 -2702 -1938 -2816 -1933
		mu 0 4 5840 5841 5842 5843
		f 4 -2715 -1944 -2709 -2704
		mu 0 4 5844 5845 5846 5847
		f 4 -2712 -1948 -2716 -2705
		mu 0 4 5848 5849 5850 5851
		f 4 -1951 -2713 -2706 -2720
		mu 0 4 5852 5853 5854 5855
		f 4 -1955 -2718 -2708 -2711
		mu 0 4 5856 5857 5858 5859
		f 4 -2710 -1943 -2784 -1956
		mu 0 4 5860 5861 5862 5863
		f 4 -1945 -2714 -1950 -2793
		mu 0 4 5864 5865 5866 5867
		f 4 -1941 -2717 -1947 -2789
		mu 0 4 5868 5869 5870 5871
		f 4 -2719 -1954 -2796 -1952
		mu 0 4 5872 5873 5874 5875
		f 4 -2772 -2024 -2777 -2766
		mu 0 4 5876 5877 5878 5879
		f 4 -2027 -2770 -2767 -2781
		mu 0 4 5880 5881 5882 5883
		f 4 -2773 -2032 -2779 -2768
		mu 0 4 5884 5885 5886 5887
		f 4 -2776 -2036 -2774 -2769
		mu 0 4 5888 5889 5890 5891
		f 4 -2771 -2026 -2926 -2021
		mu 0 4 5892 5893 5894 5895
		f 4 -2029 -2775 -2035 -2933
		mu 0 4 5896 5897 5898 5899
		f 4 -2778 -2023 -2923 -2033
		mu 0 4 5900 5901 5902 5903
		f 4 -2780 -2031 -2929 -2028
		mu 0 4 5904 5905 5906 5907
		f 4 1962 -2993 2990 2411
		mu 0 4 5908 3473 3476 5909
		f 4 1965 -2997 2993 2545
		mu 0 4 5910 3477 3480 5911
		f 4 1958 -3001 2997 2410
		mu 0 4 5912 3468 3467 5913
		f 4 1959 -3005 3001 2544
		mu 0 4 5914 3469 3472 5915
		f 4 1974 -3009 3006 2337
		mu 0 4 5916 3489 3492 5917
		f 4 1977 -3013 3009 2543
		mu 0 4 5918 3493 3496 5919
		f 4 1968 -3017 3013 2336
		mu 0 4 5920 3481 3484 5921
		f 4 1973 -3021 3017 2542
		mu 0 4 5922 3488 3487 5923
		f 4 1986 -3025 3022 2285
		mu 0 4 5924 3505 3508 5925
		f 4 1989 -3029 3025 2547
		mu 0 4 5926 3509 3512 5927
		f 4 1982 -3033 3029 2284
		mu 0 4 5928 3500 3499 5929
		f 4 1985 -3037 3033 2546
		mu 0 4 5930 3504 3503 5931
		f 4 1992 -3041 3038 2455
		mu 0 4 5932 3513 3516 5933
		f 4 1997 -3045 3041 2540
		mu 0 4 5934 3520 3519 5935
		f 4 2000 -3049 3045 2456
		mu 0 4 5936 3524 3523 5937
		f 4 2003 -3053 3049 2541
		mu 0 4 5938 3528 3527 5939
		f 4 1865 -3057 3054 1867
		mu 0 4 5940 3369 3372 5941
		f 4 -2051 -3058 -3059 -1866
		mu 0 4 5942 5943 4298 4297
		f 4 1547 1548 -3061 3057
		mu 0 4 5944 5945 2991 2990
		f 4 1555 1556 -3063 -1549
		mu 0 4 5946 5947 2999 2998
		f 4 -3065 -1557 2388 -3064
		mu 0 4 4070 4069 5948 5949
		f 4 -2058 -3066 -3067 3063
		mu 0 4 5950 5951 4004 4003
		f 4 -3069 3065 1871 1872
		mu 0 4 3380 3379 5952 5953
		f 4 -2059 -3070 -3071 -1873
		mu 0 4 5954 5955 3893 3892
		f 4 -3073 3069 1874 1875
		mu 0 4 3384 3383 5956 5957
		f 4 -3074 -3075 -1876 -2066
		mu 0 4 5958 4233 4236 5959
		f 4 -3076 -3077 3073 1869
		mu 0 4 5960 3373 3376 5961
		f 4 -3079 3075 1552 1553
		mu 0 4 2996 2995 5962 5963
		f 4 -3081 -1554 2507 -3080
		mu 0 4 4304 4303 5964 5965
		f 4 -2073 -3082 -3083 3079
		mu 0 4 5966 5967 4202 4201
		f 4 1708 1709 -3085 3081
		mu 0 4 5968 5969 3202 3201
		f 4 -3086 -3087 -1710 -2077
		mu 0 4 5970 3860 3863 5971
		f 4 1748 -3089 3085 1751
		mu 0 4 5972 3241 3244 5973
		f 4 -3090 -3091 -1749 -2078
		mu 0 4 5974 3975 3978 5975
		f 4 1720 1721 -3093 3089
		mu 0 4 5976 5977 3214 3213
		f 4 -3055 -3094 -1722 -2082
		mu 0 4 5978 4119 4118 5979;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode shadingEngine -n "Mouse_Hands_wire_088088225";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Mouse_Hands_materialInfo1";
createNode phong -n "Mouse_Hands_wire_088088226";
	setAttr ".c" -type "float3" 0.34509799 0.34509799 0.88235301 ;
	setAttr ".ambc" -type "float3" 0.34509799 0.34509799 0.88235301 ;
	setAttr ".sc" -type "float3" 0.34999999 0.34999999 0.34999999 ;
	setAttr ".cp" 34;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 0\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 0\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel2Info`) nodeEditor -e -restoreInfo nodeEditorPanel2Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel2Info`) nodeEditor -e -restoreInfo nodeEditorPanel2Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n"
		+ "\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 100 -ast 1 -aet 100 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "ctrl_cog_mltDiv";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "ctrl_cog_mltDiv1";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode ikRPsolver -n "ikRPsolver";
createNode multiplyDivide -n "ctrl_r_leg01_base01_ik_stretch_mltDiv";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 80 1 1 ;
createNode multiplyDivide -n "ctrl_r_leg01_base01_ik_squish_mltDiv";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ctrl_spine01_01_stretch_mltDiv";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 40 1 1 ;
createNode multiplyDivide -n "ctrl_spine01_01_squish_mltDiv";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode reverse -n "ctrl_r_arm01_upper01_ik_flwWld_reverse";
createNode reverse -n "ctrl_r_arm01_ikBlend_reverse";
createNode condition -n "ctrl_r_arm01_base01_ik_stretch_condition";
	setAttr ".st" 1;
	setAttr ".cf" -type "float3" 53.799984 1 1 ;
createNode condition -n "ctrl_r_arm01_base01_ik_distance_condition";
	setAttr ".op" 2;
	setAttr ".st" 53.799983978271484;
	setAttr ".cf" -type "float3" 53.799984 1 1 ;
createNode multiplyDivide -n "ctrl_r_arm01_base01_ik_stretch_mltDiv";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 53.799984 1 1 ;
createNode multiplyDivide -n "ctrl_r_arm01_base01_ik_squish_mltDiv";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode reverse -n "ctrl_l_arm01_upper01_ik_flwWld_reverse";
createNode reverse -n "ctrl_l_arm01_ikBlend_reverse";
createNode condition -n "ctrl_l_arm01_base01_ik_stretch_condition";
	setAttr ".st" 1;
	setAttr ".cf" -type "float3" 53.799999 1 1 ;
createNode condition -n "ctrl_l_arm01_base01_ik_distance_condition";
	setAttr ".op" 2;
	setAttr ".st" 53.799999237060547;
	setAttr ".cf" -type "float3" 53.799999 1 1 ;
createNode multiplyDivide -n "ctrl_l_arm01_base01_ik_stretch_mltDiv";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 53.799999 1 1 ;
createNode multiplyDivide -n "ctrl_l_arm01_base01_ik_squish_mltDiv";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ctrl_l_leg01_base01_ik_stretch_mltDiv";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 80 1 1 ;
createNode multiplyDivide -n "ctrl_l_leg01_base01_ik_squish_mltDiv";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" -0.5 1 1 ;
createNode multiplyDivide -n "ctrl_r_leg01_base01_twist01_multiplyDivide";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "ctrl_r_arm01_base01_twist01_multiplyDivide";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode unitConversion -n "unitConversion17";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion18";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "ctrl_l_arm01_base01_twist01_multiplyDivide";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode unitConversion -n "unitConversion19";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion20";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "ctrl_l_leg01_base01_twist01_multiplyDivide";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode condition -n "ctrl_master_condition";
	setAttr ".st" 1;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ctrl_master__mltDiv";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode hyperGraphInfo -n "nodeEditorPanel2Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -575.42335448823894 -695.23849811891284 ;
	setAttr ".vh" -type "double2" 1031.2993345873915 182.91276238528891 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 3 ".hyp";
	setAttr ".hyp[0].x" 1.4285714626312256;
	setAttr ".hyp[0].y" -72.857139587402344;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 1.4285714626312256;
	setAttr ".hyp[1].y" -215.71427917480469;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 1.4285714626312256;
	setAttr ".hyp[2].y" -358.57144165039062;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".anf" yes;
createNode skinCluster -n "skinCluster1";
	setAttr -s 1530 ".wl";
	setAttr -s 3 ".wl[0].w";
	setAttr ".wl[0].w[20]" 0.5;
	setAttr ".wl[0].w[21]" 0.47562149167060852;
	setAttr ".wl[0].w[38]" 0.024378508329391479;
	setAttr -s 3 ".wl[1].w";
	setAttr ".wl[1].w[20]" 0.5;
	setAttr ".wl[1].w[21]" 0.47562149167060852;
	setAttr ".wl[1].w[38]" 0.024378508329391479;
	setAttr -s 2 ".wl[2].w";
	setAttr ".wl[2].w[21]" 0.81091690063476563;
	setAttr ".wl[2].w[38]" 0.18908309936523438;
	setAttr -s 2 ".wl[3].w";
	setAttr ".wl[3].w[21]" 0.81091690063476563;
	setAttr ".wl[3].w[38]" 0.18908309936523438;
	setAttr -s 2 ".wl[4].w";
	setAttr ".wl[4].w[21]" 0.81091690063476563;
	setAttr ".wl[4].w[38]" 0.18908309936523438;
	setAttr -s 3 ".wl[5].w";
	setAttr ".wl[5].w[20]" 0.5;
	setAttr ".wl[5].w[21]" 0.47562149167060852;
	setAttr ".wl[5].w[38]" 0.024378508329391479;
	setAttr -s 3 ".wl[6].w";
	setAttr ".wl[6].w[20]" 0.5;
	setAttr ".wl[6].w[21]" 0.47562149167060852;
	setAttr ".wl[6].w[38]" 0.024378508329391479;
	setAttr -s 2 ".wl[7].w";
	setAttr ".wl[7].w[21]" 0.81091690063476563;
	setAttr ".wl[7].w[38]" 0.18908309936523438;
	setAttr -s 3 ".wl[8].w";
	setAttr ".wl[8].w[20]" 0.5;
	setAttr ".wl[8].w[21]" 0.47562149167060852;
	setAttr ".wl[8].w[38]" 0.024378508329391479;
	setAttr -s 2 ".wl[9].w";
	setAttr ".wl[9].w[21]" 0.81091690063476563;
	setAttr ".wl[9].w[38]" 0.18908309936523438;
	setAttr ".wl[10].w[37]"  1;
	setAttr ".wl[11].w[37]"  1;
	setAttr ".wl[12].w[37]"  1;
	setAttr -s 3 ".wl[13].w";
	setAttr ".wl[13].w[22]" 0.23145463317632675;
	setAttr ".wl[13].w[23]" 0.088815607130527496;
	setAttr ".wl[13].w[26]" 0.67972975969314575;
	setAttr -s 2 ".wl[14].w";
	setAttr ".wl[14].w[22]" 0.037360310554504395;
	setAttr ".wl[14].w[26]" 0.96263968944549561;
	setAttr -s 2 ".wl[15].w";
	setAttr ".wl[15].w[22]" 0.71135437488555908;
	setAttr ".wl[15].w[26]" 0.28864562511444092;
	setAttr -s 3 ".wl[16].w";
	setAttr ".wl[16].w[22]" 0.79776818677783012;
	setAttr ".wl[16].w[23]" 0.046993855386972434;
	setAttr ".wl[16].w[26]" 0.15523795783519745;
	setAttr ".wl[17].w[20]"  1;
	setAttr ".wl[18].w[20]"  1;
	setAttr ".wl[19].w[20]"  1;
	setAttr ".wl[20].w[20]"  1;
	setAttr ".wl[21].w[25]"  1;
	setAttr ".wl[22].w[25]"  1;
	setAttr ".wl[23].w[25]"  1;
	setAttr -s 2 ".wl[24].w";
	setAttr ".wl[24].w[22]" 0.7953772097826004;
	setAttr ".wl[24].w[38]" 0.2046227902173996;
	setAttr -s 2 ".wl[25].w";
	setAttr ".wl[25].w[22]" 0.5;
	setAttr ".wl[25].w[38]" 0.5;
	setAttr -s 2 ".wl[26].w";
	setAttr ".wl[26].w[22]" 0.5;
	setAttr ".wl[26].w[38]" 0.5;
	setAttr -s 2 ".wl[27].w";
	setAttr ".wl[27].w[22]" 0.78918978571891785;
	setAttr ".wl[27].w[38]" 0.21081021428108215;
	setAttr -s 2 ".wl[28].w";
	setAttr ".wl[28].w[22]" 0.5;
	setAttr ".wl[28].w[38]" 0.5;
	setAttr -s 2 ".wl[29].w";
	setAttr ".wl[29].w[22]" 0.5;
	setAttr ".wl[29].w[38]" 0.5;
	setAttr -s 2 ".wl[30].w";
	setAttr ".wl[30].w[22]" 0.835999995470047;
	setAttr ".wl[30].w[38]" 0.164000004529953;
	setAttr -s 2 ".wl[31].w";
	setAttr ".wl[31].w[22]" 0.84289796650409698;
	setAttr ".wl[31].w[38]" 0.15710203349590302;
	setAttr -s 3 ".wl[32].w";
	setAttr ".wl[32].w[21]" 0.090192876756191268;
	setAttr ".wl[32].w[22]" 0.19999999999999996;
	setAttr ".wl[32].w[38]" 0.70980712324380879;
	setAttr -s 2 ".wl[33].w";
	setAttr ".wl[33].w[22]" 0.5;
	setAttr ".wl[33].w[38]" 0.5;
	setAttr -s 2 ".wl[34].w";
	setAttr ".wl[34].w[22]" 0.5;
	setAttr ".wl[34].w[38]" 0.5;
	setAttr -s 3 ".wl[35].w";
	setAttr ".wl[35].w[21]" 0.090192876756191268;
	setAttr ".wl[35].w[22]" 0.19999999999999996;
	setAttr ".wl[35].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[36].w";
	setAttr ".wl[36].w[22]" 0.12063796818256378;
	setAttr ".wl[36].w[23]" 0.14338295161724091;
	setAttr ".wl[36].w[26]" 0.73597908020019531;
	setAttr -s 3 ".wl[37].w";
	setAttr ".wl[37].w[22]" 0.34671103954315186;
	setAttr ".wl[37].w[23]" 0.32993519306182861;
	setAttr ".wl[37].w[26]" 0.32335376739501953;
	setAttr -s 3 ".wl[38].w";
	setAttr ".wl[38].w[22]" 0.22030478715896606;
	setAttr ".wl[38].w[23]" 0.42277979850769043;
	setAttr ".wl[38].w[26]" 0.35691541433334351;
	setAttr -s 3 ".wl[39].w";
	setAttr ".wl[39].w[22]" 0.73709534853696823;
	setAttr ".wl[39].w[23]" 0.10131260007619858;
	setAttr ".wl[39].w[26]" 0.16159205138683316;
	setAttr -s 3 ".wl[40].w";
	setAttr ".wl[40].w[22]" 0.34753897786140442;
	setAttr ".wl[40].w[23]" 0.11357435584068298;
	setAttr ".wl[40].w[26]" 0.5388866662979126;
	setAttr -s 3 ".wl[41].w";
	setAttr ".wl[41].w[22]" 0.36312264204025269;
	setAttr ".wl[41].w[23]" 0.41040682792663574;
	setAttr ".wl[41].w[26]" 0.2264705300331116;
	setAttr -s 3 ".wl[42].w";
	setAttr ".wl[42].w[22]" 0.62566762417554855;
	setAttr ".wl[42].w[23]" 0.30429872870445251;
	setAttr ".wl[42].w[26]" 0.070033647119998932;
	setAttr -s 2 ".wl[43].w";
	setAttr ".wl[43].w[22]" 0.78128352761268616;
	setAttr ".wl[43].w[38]" 0.21871647238731384;
	setAttr -s 2 ".wl[44].w";
	setAttr ".wl[44].w[22]" 0.75143668055534363;
	setAttr ".wl[44].w[38]" 0.24856331944465637;
	setAttr -s 2 ".wl[45].w";
	setAttr ".wl[45].w[22]" 0.5;
	setAttr ".wl[45].w[38]" 0.5;
	setAttr -s 4 ".wl[46].w";
	setAttr ".wl[46].w[22]" 0.22425341780074959;
	setAttr ".wl[46].w[23]" 0.63122803916445847;
	setAttr ".wl[46].w[24]" 0.12156862765550613;
	setAttr ".wl[46].w[26]" 0.022949915379285805;
	setAttr -s 4 ".wl[47].w";
	setAttr ".wl[47].w[22]" 0.2744866105313486;
	setAttr ".wl[47].w[23]" 0.59372316500590383;
	setAttr ".wl[47].w[24]" 0.10000000149011612;
	setAttr ".wl[47].w[26]" 0.031790222972631454;
	setAttr -s 2 ".wl[48].w[23:24]"  0.42000001668930054 0.57999998331069946;
	setAttr -s 2 ".wl[49].w[23:24]"  0.29345899820327759 0.70654100179672241;
	setAttr -s 4 ".wl[50].w";
	setAttr ".wl[50].w[22]" 0.21154476102935882;
	setAttr ".wl[50].w[23]" 0.67382007691514878;
	setAttr ".wl[50].w[24]" 0.10000000149011613;
	setAttr ".wl[50].w[26]" 0.014635160565376282;
	setAttr -s 2 ".wl[51].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[52].w[23:24]"  0.5 0.5;
	setAttr -s 3 ".wl[53].w[22:24]"  0.069574161503755116 0.83042583700612882 
		0.10000000149011613;
	setAttr -s 2 ".wl[54].w[23:24]"  0.89999999850988388 0.10000000149011612;
	setAttr -s 2 ".wl[55].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[56].w[23:24]"  0.5 0.5;
	setAttr -s 3 ".wl[57].w[22:24]"  0.0012764026040498538 0.89872359590583406 
		0.10000000149011612;
	setAttr -s 3 ".wl[58].w[22:24]"  0.034623955505384413 0.86537604300449944 
		0.10000000149011612;
	setAttr -s 2 ".wl[59].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[60].w[23:24]"  0.5 0.5;
	setAttr -s 3 ".wl[61].w[22:24]"  0.12711263426954111 0.77288736424034277 
		0.10000000149011612;
	setAttr ".wl[62].w[31]"  1;
	setAttr ".wl[63].w[31]"  1;
	setAttr ".wl[64].w[31]"  1;
	setAttr ".wl[65].w[28]"  1;
	setAttr ".wl[66].w[28]"  1;
	setAttr ".wl[67].w[28]"  1;
	setAttr ".wl[68].w[34]"  1;
	setAttr ".wl[69].w[34]"  1;
	setAttr ".wl[70].w[34]"  1;
	setAttr -s 3 ".wl[71].w";
	setAttr ".wl[71].w[22]" 0.73990094661712646;
	setAttr ".wl[71].w[32]" 0.17661362886428833;
	setAttr ".wl[71].w[35]" 0.083485424518585205;
	setAttr -s 4 ".wl[72].w";
	setAttr ".wl[72].w[22]" 0.046823617360658112;
	setAttr ".wl[72].w[32]" 0.057174887508153922;
	setAttr ".wl[72].w[35]" 0.79600149513118801;
	setAttr ".wl[72].w[36]" 0.1;
	setAttr -s 3 ".wl[73].w";
	setAttr ".wl[73].w[22]" 0.05;
	setAttr ".wl[73].w[35]" 0.84999999999999987;
	setAttr ".wl[73].w[36]" 0.10000000000000003;
	setAttr -s 2 ".wl[74].w";
	setAttr ".wl[74].w[22]" 0.17560458183288574;
	setAttr ".wl[74].w[35]" 0.82439541816711426;
	setAttr -s 2 ".wl[75].w";
	setAttr ".wl[75].w[22]" 0.29312998056411743;
	setAttr ".wl[75].w[35]" 0.70687001943588257;
	setAttr -s 3 ".wl[76].w";
	setAttr ".wl[76].w[22]" 0.05;
	setAttr ".wl[76].w[35]" 0.84999999999999987;
	setAttr ".wl[76].w[36]" 0.10000000000000003;
	setAttr -s 3 ".wl[77].w";
	setAttr ".wl[77].w[22]" 0.05;
	setAttr ".wl[77].w[35]" 0.84999999999999987;
	setAttr ".wl[77].w[36]" 0.10000000000000003;
	setAttr -s 2 ".wl[78].w";
	setAttr ".wl[78].w[22]" 0.6891942024230957;
	setAttr ".wl[78].w[35]" 0.3108057975769043;
	setAttr -s 2 ".wl[79].w";
	setAttr ".wl[79].w[22]" 0.32203638553619385;
	setAttr ".wl[79].w[35]" 0.67796361446380615;
	setAttr -s 2 ".wl[80].w";
	setAttr ".wl[80].w[22]" 0.64516165852546692;
	setAttr ".wl[80].w[35]" 0.35483834147453308;
	setAttr -s 3 ".wl[81].w";
	setAttr ".wl[81].w[22]" 0.05;
	setAttr ".wl[81].w[35]" 0.84999999999999987;
	setAttr ".wl[81].w[36]" 0.10000000000000003;
	setAttr -s 3 ".wl[82].w";
	setAttr ".wl[82].w[22]" 0.05;
	setAttr ".wl[82].w[35]" 0.84999999999999987;
	setAttr ".wl[82].w[36]" 0.10000000000000003;
	setAttr -s 2 ".wl[83].w";
	setAttr ".wl[83].w[22]" 0.69116103649139404;
	setAttr ".wl[83].w[32]" 0.30883896350860596;
	setAttr -s 3 ".wl[84].w";
	setAttr ".wl[84].w[22]" 0.16378220915794373;
	setAttr ".wl[84].w[32]" 0.18400077521800995;
	setAttr ".wl[84].w[35]" 0.65221701562404633;
	setAttr -s 4 ".wl[85].w";
	setAttr ".wl[85].w[22]" 0.022245013713836692;
	setAttr ".wl[85].w[32]" 0.047824382781982422;
	setAttr ".wl[85].w[35]" 0.82993060350418091;
	setAttr ".wl[85].w[36]" 0.099999999999999978;
	setAttr -s 4 ".wl[86].w";
	setAttr ".wl[86].w[22]" 0.044550566706392528;
	setAttr ".wl[86].w[32]" 0.098089799284934998;
	setAttr ".wl[86].w[35]" 0.75735963400867246;
	setAttr ".wl[86].w[36]" 0.1;
	setAttr -s 3 ".wl[87].w";
	setAttr ".wl[87].w[22]" 0.27914233505725861;
	setAttr ".wl[87].w[29]" 0.23172588646411901;
	setAttr ".wl[87].w[32]" 0.48913177847862244;
	setAttr -s 4 ".wl[88].w";
	setAttr ".wl[88].w[22]" 0.12475822865962982;
	setAttr ".wl[88].w[29]" 0.66578043401241305;
	setAttr ".wl[88].w[30]" 0.1;
	setAttr ".wl[88].w[32]" 0.10946133732795715;
	setAttr -s 3 ".wl[89].w";
	setAttr ".wl[89].w[22]" 0.05;
	setAttr ".wl[89].w[29]" 0.84999999999999987;
	setAttr ".wl[89].w[30]" 0.10000000000000003;
	setAttr -s 3 ".wl[90].w";
	setAttr ".wl[90].w[22]" 0.24369772523641586;
	setAttr ".wl[90].w[26]" 0.050341464579105377;
	setAttr ".wl[90].w[29]" 0.70596081018447876;
	setAttr -s 3 ".wl[91].w";
	setAttr ".wl[91].w[22]" 0.32388848066329956;
	setAttr ".wl[91].w[26]" 0.33411866426467901;
	setAttr ".wl[91].w[29]" 0.34199285507202148;
	setAttr -s 3 ".wl[92].w";
	setAttr ".wl[92].w[22]" 0.3857419490814209;
	setAttr ".wl[92].w[26]" 0.25170731544494629;
	setAttr ".wl[92].w[29]" 0.36255073547363281;
	setAttr -s 4 ".wl[93].w";
	setAttr ".wl[93].w[22]" 0.12360629439353943;
	setAttr ".wl[93].w[26]" 0.067608008533716193;
	setAttr ".wl[93].w[29]" 0.70878569707274441;
	setAttr ".wl[93].w[30]" 0.099999999999999992;
	setAttr -s 4 ".wl[94].w";
	setAttr ".wl[94].w[22]" 0.05;
	setAttr ".wl[94].w[26]" 0.10189730823040005;
	setAttr ".wl[94].w[29]" 0.74810269176959987;
	setAttr ".wl[94].w[30]" 0.099999999999999978;
	setAttr -s 2 ".wl[95].w";
	setAttr ".wl[95].w[22]" 0.10928899049758911;
	setAttr ".wl[95].w[29]" 0.89071100950241089;
	setAttr -s 2 ".wl[96].w";
	setAttr ".wl[96].w[26]" 0.84284543991088867;
	setAttr ".wl[96].w[29]" 0.15715456008911133;
	setAttr -s 4 ".wl[97].w";
	setAttr ".wl[97].w[22]" 0.05;
	setAttr ".wl[97].w[26]" 0.19865526258945471;
	setAttr ".wl[97].w[29]" 0.6513447374105451;
	setAttr ".wl[97].w[30]" 0.10000000000000003;
	setAttr -s 3 ".wl[98].w";
	setAttr ".wl[98].w[22]" 0.05;
	setAttr ".wl[98].w[29]" 0.84999999999999987;
	setAttr ".wl[98].w[30]" 0.10000000000000003;
	setAttr -s 3 ".wl[99].w";
	setAttr ".wl[99].w[22]" 0.32090741395950317;
	setAttr ".wl[99].w[29]" 0.30096489191055298;
	setAttr ".wl[99].w[32]" 0.37812769412994379;
	setAttr -s 3 ".wl[100].w";
	setAttr ".wl[100].w[22]" 0.41231945157051086;
	setAttr ".wl[100].w[29]" 0.36074665188789368;
	setAttr ".wl[100].w[32]" 0.22693389654159546;
	setAttr -s 3 ".wl[101].w";
	setAttr ".wl[101].w[29]" 0.85;
	setAttr ".wl[101].w[30]" 0.1;
	setAttr ".wl[101].w[32]" 0.050000000000000044;
	setAttr -s 4 ".wl[102].w";
	setAttr ".wl[102].w[22]" 0.1571342721581459;
	setAttr ".wl[102].w[29]" 0.65397472083568575;
	setAttr ".wl[102].w[30]" 0.1;
	setAttr ".wl[102].w[32]" 0.088891007006168365;
	setAttr -s 4 ".wl[103].w";
	setAttr ".wl[103].w[22]" 0.14795714616775513;
	setAttr ".wl[103].w[26]" 0.70204285383224485;
	setAttr ".wl[103].w[27]" 0.1;
	setAttr ".wl[103].w[29]" 0.050000000000000044;
	setAttr -s 3 ".wl[104].w";
	setAttr ".wl[104].w[22]" 0.05;
	setAttr ".wl[104].w[26]" 0.84999999999999987;
	setAttr ".wl[104].w[27]" 0.10000000000000003;
	setAttr -s 6 ".wl[105].w";
	setAttr ".wl[105].w[22]" 0.23489843347169714;
	setAttr ".wl[105].w[26]" 0.72521209716796886;
	setAttr ".wl[105].w[29]" 0.024315406706872638;
	setAttr ".wl[105].w[32]" 0.0058434566460109907;
	setAttr ".wl[105].w[33]" 0.0054941615940164385;
	setAttr ".wl[105].w[34]" 0.0042364444134340941;
	setAttr -s 3 ".wl[106].w";
	setAttr ".wl[106].w[22]" 0.11746875196695328;
	setAttr ".wl[106].w[26]" 0.78253124803304674;
	setAttr ".wl[106].w[27]" 0.1;
	setAttr -s 3 ".wl[107].w";
	setAttr ".wl[107].w[22]" 0.05;
	setAttr ".wl[107].w[26]" 0.84999999999999987;
	setAttr ".wl[107].w[27]" 0.10000000000000003;
	setAttr -s 3 ".wl[108].w";
	setAttr ".wl[108].w[22]" 0.05;
	setAttr ".wl[108].w[26]" 0.84999999999999987;
	setAttr ".wl[108].w[27]" 0.10000000000000003;
	setAttr -s 3 ".wl[109].w";
	setAttr ".wl[109].w[22]" 0.05;
	setAttr ".wl[109].w[26]" 0.84999999999999987;
	setAttr ".wl[109].w[27]" 0.10000000000000003;
	setAttr -s 4 ".wl[110].w";
	setAttr ".wl[110].w[22]" 0.018066867440938994;
	setAttr ".wl[110].w[26]" 0.85;
	setAttr ".wl[110].w[27]" 0.1;
	setAttr ".wl[110].w[29]" 0.03193313255906105;
	setAttr -s 4 ".wl[111].w";
	setAttr ".wl[111].w[22]" 0.12099500745534897;
	setAttr ".wl[111].w[26]" 0.72900499254465101;
	setAttr ".wl[111].w[27]" 0.1;
	setAttr ".wl[111].w[29]" 0.050000000000000044;
	setAttr -s 4 ".wl[112].w";
	setAttr ".wl[112].w[22]" 0.20974159240722656;
	setAttr ".wl[112].w[29]" 0.046345178037881851;
	setAttr ".wl[112].w[32]" 0.69288188219070435;
	setAttr ".wl[112].w[35]" 0.051031347364187241;
	setAttr -s 3 ".wl[113].w";
	setAttr ".wl[113].w[22]" 0.24727204442024231;
	setAttr ".wl[113].w[32]" 0.65272795557975771;
	setAttr ".wl[113].w[33]" 0.1;
	setAttr -s 3 ".wl[114].w";
	setAttr ".wl[114].w[22]" 0.05;
	setAttr ".wl[114].w[32]" 0.84999999999999987;
	setAttr ".wl[114].w[33]" 0.10000000000000003;
	setAttr -s 3 ".wl[115].w";
	setAttr ".wl[115].w[22]" 0.10557743906974792;
	setAttr ".wl[115].w[32]" 0.7944225609302521;
	setAttr ".wl[115].w[33]" 0.1;
	setAttr -s 3 ".wl[116].w";
	setAttr ".wl[116].w[22]" 0.05;
	setAttr ".wl[116].w[32]" 0.84999999999999987;
	setAttr ".wl[116].w[33]" 0.10000000000000003;
	setAttr -s 3 ".wl[117].w";
	setAttr ".wl[117].w[22]" 0.05;
	setAttr ".wl[117].w[32]" 0.84999999999999987;
	setAttr ".wl[117].w[33]" 0.10000000000000003;
	setAttr -s 3 ".wl[118].w";
	setAttr ".wl[118].w[22]" 0.05;
	setAttr ".wl[118].w[32]" 0.84999999999999987;
	setAttr ".wl[118].w[33]" 0.10000000000000003;
	setAttr -s 2 ".wl[119].w";
	setAttr ".wl[119].w[22]" 0.087135255336761475;
	setAttr ".wl[119].w[32]" 0.91286474466323853;
	setAttr -s 3 ".wl[120].w";
	setAttr ".wl[120].w[22]" 0.16141675412654877;
	setAttr ".wl[120].w[32]" 0.73858324587345126;
	setAttr ".wl[120].w[33]" 0.1;
	setAttr -s 3 ".wl[121].w";
	setAttr ".wl[121].w[22]" 0.26921927928924561;
	setAttr ".wl[121].w[32]" 0.63078072071075442;
	setAttr ".wl[121].w[33]" 0.10000000000000002;
	setAttr -s 2 ".wl[122].w[36:37]"  0.9 0.1;
	setAttr -s 2 ".wl[123].w[36:37]"  0.9 0.1;
	setAttr -s 2 ".wl[124].w[36:37]"  0.9 0.1;
	setAttr -s 2 ".wl[125].w[36:37]"  0.9 0.1;
	setAttr -s 2 ".wl[126].w[36:37]"  0.9 0.1;
	setAttr -s 2 ".wl[127].w[36:37]"  0.9 0.1;
	setAttr -s 2 ".wl[128].w[36:37]"  0.9 0.1;
	setAttr -s 2 ".wl[129].w[36:37]"  0.9 0.1;
	setAttr -s 2 ".wl[130].w[30:31]"  0.9 0.1;
	setAttr -s 2 ".wl[131].w[30:31]"  0.9 0.1;
	setAttr -s 2 ".wl[132].w[30:31]"  0.9 0.1;
	setAttr -s 2 ".wl[133].w[30:31]"  0.9 0.1;
	setAttr -s 2 ".wl[134].w[30:31]"  0.9 0.1;
	setAttr -s 2 ".wl[135].w[30:31]"  0.9 0.1;
	setAttr -s 2 ".wl[136].w[30:31]"  0.9 0.1;
	setAttr -s 2 ".wl[137].w[30:31]"  0.9 0.1;
	setAttr -s 2 ".wl[138].w[27:28]"  0.9 0.1;
	setAttr -s 2 ".wl[139].w[27:28]"  0.9 0.1;
	setAttr -s 2 ".wl[140].w[27:28]"  0.9 0.1;
	setAttr -s 2 ".wl[141].w[27:28]"  0.9 0.1;
	setAttr -s 2 ".wl[142].w[27:28]"  0.9 0.1;
	setAttr -s 2 ".wl[143].w[27:28]"  0.9 0.1;
	setAttr -s 2 ".wl[144].w[27:28]"  0.9 0.1;
	setAttr -s 2 ".wl[145].w[27:28]"  0.9 0.1;
	setAttr -s 2 ".wl[146].w[33:34]"  0.9 0.1;
	setAttr -s 2 ".wl[147].w[33:34]"  0.9 0.1;
	setAttr -s 2 ".wl[148].w[33:34]"  0.9 0.1;
	setAttr -s 2 ".wl[149].w[33:34]"  0.9 0.1;
	setAttr -s 2 ".wl[150].w[33:34]"  0.9 0.1;
	setAttr -s 2 ".wl[151].w[33:34]"  0.9 0.1;
	setAttr -s 2 ".wl[152].w[33:34]"  0.9 0.1;
	setAttr -s 2 ".wl[153].w[33:34]"  0.9 0.1;
	setAttr -s 2 ".wl[154].w";
	setAttr ".wl[154].w[22]" 0.5;
	setAttr ".wl[154].w[38]" 0.5;
	setAttr -s 2 ".wl[155].w";
	setAttr ".wl[155].w[22]" 0.5;
	setAttr ".wl[155].w[38]" 0.5;
	setAttr -s 3 ".wl[156].w";
	setAttr ".wl[156].w[21]" 0.090192876756191268;
	setAttr ".wl[156].w[22]" 0.19999999999999996;
	setAttr ".wl[156].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[157].w";
	setAttr ".wl[157].w[21]" 0.090192876756191268;
	setAttr ".wl[157].w[22]" 0.19999999999999996;
	setAttr ".wl[157].w[38]" 0.70980712324380879;
	setAttr ".wl[158].w[20]"  1;
	setAttr ".wl[159].w[20]"  1;
	setAttr ".wl[160].w[20]"  1;
	setAttr ".wl[161].w[20]"  1;
	setAttr -s 3 ".wl[162].w";
	setAttr ".wl[162].w[20]" 0.5;
	setAttr ".wl[162].w[21]" 0.47562149167060852;
	setAttr ".wl[162].w[38]" 0.024378508329391479;
	setAttr -s 3 ".wl[163].w";
	setAttr ".wl[163].w[20]" 0.5;
	setAttr ".wl[163].w[21]" 0.47562149167060852;
	setAttr ".wl[163].w[38]" 0.024378508329391479;
	setAttr -s 2 ".wl[164].w";
	setAttr ".wl[164].w[21]" 0.81091690063476563;
	setAttr ".wl[164].w[38]" 0.18908309936523438;
	setAttr -s 2 ".wl[165].w";
	setAttr ".wl[165].w[21]" 0.81091690063476563;
	setAttr ".wl[165].w[38]" 0.18908309936523438;
	setAttr -s 2 ".wl[166].w";
	setAttr ".wl[166].w[22]" 0.5;
	setAttr ".wl[166].w[38]" 0.5;
	setAttr -s 2 ".wl[167].w";
	setAttr ".wl[167].w[22]" 0.5;
	setAttr ".wl[167].w[38]" 0.5;
	setAttr -s 3 ".wl[168].w";
	setAttr ".wl[168].w[21]" 0.090192876756191268;
	setAttr ".wl[168].w[22]" 0.19999999999999996;
	setAttr ".wl[168].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[169].w";
	setAttr ".wl[169].w[21]" 0.090192876756191268;
	setAttr ".wl[169].w[22]" 0.19999999999999996;
	setAttr ".wl[169].w[38]" 0.70980712324380879;
	setAttr ".wl[170].w[20]"  1;
	setAttr ".wl[171].w[20]"  1;
	setAttr ".wl[172].w[20]"  1;
	setAttr ".wl[173].w[20]"  1;
	setAttr -s 3 ".wl[174].w";
	setAttr ".wl[174].w[20]" 0.5;
	setAttr ".wl[174].w[21]" 0.47562149167060852;
	setAttr ".wl[174].w[38]" 0.024378508329391479;
	setAttr -s 3 ".wl[175].w";
	setAttr ".wl[175].w[20]" 0.5;
	setAttr ".wl[175].w[21]" 0.47562149167060852;
	setAttr ".wl[175].w[38]" 0.024378508329391479;
	setAttr -s 2 ".wl[176].w";
	setAttr ".wl[176].w[21]" 0.81091690063476563;
	setAttr ".wl[176].w[38]" 0.18908309936523438;
	setAttr -s 2 ".wl[177].w";
	setAttr ".wl[177].w[21]" 0.81091690063476563;
	setAttr ".wl[177].w[38]" 0.18908309936523438;
	setAttr -s 2 ".wl[178].w";
	setAttr ".wl[178].w[22]" 0.5;
	setAttr ".wl[178].w[38]" 0.5;
	setAttr -s 2 ".wl[179].w";
	setAttr ".wl[179].w[22]" 0.5;
	setAttr ".wl[179].w[38]" 0.5;
	setAttr -s 2 ".wl[180].w";
	setAttr ".wl[180].w[22]" 0.9;
	setAttr ".wl[180].w[38]" 0.099999999999999978;
	setAttr -s 2 ".wl[181].w";
	setAttr ".wl[181].w[22]" 0.85130980610847473;
	setAttr ".wl[181].w[38]" 0.14869019389152527;
	setAttr -s 3 ".wl[182].w";
	setAttr ".wl[182].w[22]" 0.78374836035072803;
	setAttr ".wl[182].w[32]" 0.016451833769679073;
	setAttr ".wl[182].w[35]" 0.1997998058795929;
	setAttr -s 2 ".wl[183].w";
	setAttr ".wl[183].w[22]" 0.85245531797409058;
	setAttr ".wl[183].w[35]" 0.14754468202590942;
	setAttr -s 2 ".wl[184].w";
	setAttr ".wl[184].w[22]" 0.5;
	setAttr ".wl[184].w[38]" 0.5;
	setAttr -s 2 ".wl[185].w";
	setAttr ".wl[185].w[22]" 0.9;
	setAttr ".wl[185].w[38]" 0.099999999999999978;
	setAttr -s 2 ".wl[186].w";
	setAttr ".wl[186].w[22]" 0.9;
	setAttr ".wl[186].w[38]" 0.099999999999999978;
	setAttr -s 2 ".wl[187].w";
	setAttr ".wl[187].w[22]" 0.5;
	setAttr ".wl[187].w[38]" 0.5;
	setAttr -s 3 ".wl[188].w";
	setAttr ".wl[188].w[22]" 0.82959122583270073;
	setAttr ".wl[188].w[26]" 0.03158679977059365;
	setAttr ".wl[188].w[29]" 0.13882197439670563;
	setAttr -s 2 ".wl[189].w";
	setAttr ".wl[189].w[22]" 0.83199350535869598;
	setAttr ".wl[189].w[29]" 0.16800649464130402;
	setAttr -s 2 ".wl[190].w";
	setAttr ".wl[190].w[22]" 0.5;
	setAttr ".wl[190].w[38]" 0.5;
	setAttr -s 2 ".wl[191].w";
	setAttr ".wl[191].w[22]" 0.5;
	setAttr ".wl[191].w[38]" 0.5;
	setAttr -s 3 ".wl[192].w";
	setAttr ".wl[192].w[21]" 0.090192876756191268;
	setAttr ".wl[192].w[22]" 0.19999999999999996;
	setAttr ".wl[192].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[193].w";
	setAttr ".wl[193].w[21]" 0.090192876756191268;
	setAttr ".wl[193].w[22]" 0.19999999999999996;
	setAttr ".wl[193].w[38]" 0.70980712324380879;
	setAttr ".wl[194].w[20]"  1;
	setAttr ".wl[195].w[20]"  1;
	setAttr ".wl[196].w[20]"  1;
	setAttr ".wl[197].w[20]"  1;
	setAttr -s 3 ".wl[198].w";
	setAttr ".wl[198].w[20]" 0.5;
	setAttr ".wl[198].w[21]" 0.47562149167060852;
	setAttr ".wl[198].w[38]" 0.024378508329391479;
	setAttr -s 2 ".wl[199].w";
	setAttr ".wl[199].w[21]" 0.81091690063476563;
	setAttr ".wl[199].w[38]" 0.18908309936523438;
	setAttr -s 2 ".wl[200].w";
	setAttr ".wl[200].w[21]" 0.81091690063476563;
	setAttr ".wl[200].w[38]" 0.18908309936523438;
	setAttr -s 3 ".wl[201].w";
	setAttr ".wl[201].w[20]" 0.5;
	setAttr ".wl[201].w[21]" 0.47562149167060852;
	setAttr ".wl[201].w[38]" 0.024378508329391479;
	setAttr -s 2 ".wl[202].w";
	setAttr ".wl[202].w[22]" 0.5;
	setAttr ".wl[202].w[38]" 0.5;
	setAttr -s 2 ".wl[203].w";
	setAttr ".wl[203].w[22]" 0.5;
	setAttr ".wl[203].w[38]" 0.5;
	setAttr -s 2 ".wl[204].w";
	setAttr ".wl[204].w[22]" 0.9;
	setAttr ".wl[204].w[38]" 0.099999999999999978;
	setAttr -s 2 ".wl[205].w";
	setAttr ".wl[205].w[22]" 0.9;
	setAttr ".wl[205].w[38]" 0.099999999999999978;
	setAttr -s 3 ".wl[206].w";
	setAttr ".wl[206].w[22]" 0.74791475385427475;
	setAttr ".wl[206].w[29]" 0.10295959562063217;
	setAttr ".wl[206].w[32]" 0.14912565052509308;
	setAttr -s 4 ".wl[207].w";
	setAttr ".wl[207].w[22]" 0.83010358549654484;
	setAttr ".wl[207].w[29]" 0.027419215068221089;
	setAttr ".wl[207].w[32]" 0.098786905407905592;
	setAttr ".wl[207].w[35]" 0.043690294027328477;
	setAttr -s 2 ".wl[208].w";
	setAttr ".wl[208].w[22]" 0.96924444474279881;
	setAttr ".wl[208].w[38]" 0.030755555257201195;
	setAttr ".wl[209].w[22]"  1;
	setAttr ".wl[210].w[22]"  1;
	setAttr -s 2 ".wl[211].w";
	setAttr ".wl[211].w[22]" 0.96823529526591301;
	setAttr ".wl[211].w[38]" 0.03176470473408699;
	setAttr ".wl[212].w[22]"  1;
	setAttr ".wl[213].w[22]"  1;
	setAttr ".wl[214].w[22]"  1;
	setAttr ".wl[215].w[22]"  1;
	setAttr -s 2 ".wl[216].w[22:23]"  0.97928766161203384 0.020712338387966156;
	setAttr ".wl[217].w[22]"  1;
	setAttr ".wl[218].w[22]"  1;
	setAttr -s 2 ".wl[219].w[22:23]"  0.96501210331916809 0.034987896680831909;
	setAttr ".wl[220].w[22]"  1;
	setAttr ".wl[221].w[22]"  1;
	setAttr ".wl[222].w[22]"  1;
	setAttr ".wl[223].w[22]"  1;
	setAttr ".wl[224].w[22]"  1;
	setAttr -s 2 ".wl[225].w";
	setAttr ".wl[225].w[22]" 0.98000000044703484;
	setAttr ".wl[225].w[38]" 0.019999999552965164;
	setAttr -s 2 ".wl[226].w";
	setAttr ".wl[226].w[22]" 0.95212229341268539;
	setAttr ".wl[226].w[38]" 0.047877706587314606;
	setAttr ".wl[227].w[22]"  1;
	setAttr ".wl[228].w[22]"  1;
	setAttr ".wl[229].w[22]"  1;
	setAttr ".wl[230].w[22]"  1;
	setAttr -s 2 ".wl[231].w";
	setAttr ".wl[231].w[22]" 0.98000000044703484;
	setAttr ".wl[231].w[38]" 0.019999999552965164;
	setAttr ".wl[232].w[22]"  1;
	setAttr ".wl[233].w[22]"  1;
	setAttr -s 2 ".wl[234].w";
	setAttr ".wl[234].w[22]" 0.98000000044703484;
	setAttr ".wl[234].w[38]" 0.019999999552965164;
	setAttr ".wl[235].w[22]"  1;
	setAttr ".wl[236].w[22]"  1;
	setAttr ".wl[237].w[22]"  1;
	setAttr ".wl[238].w[22]"  1;
	setAttr -s 2 ".wl[239].w";
	setAttr ".wl[239].w[22]" 0.98000000044703484;
	setAttr ".wl[239].w[38]" 0.019999999552965164;
	setAttr ".wl[240].w[22]"  1;
	setAttr ".wl[241].w[22]"  1;
	setAttr -s 2 ".wl[242].w";
	setAttr ".wl[242].w[22]" 0.98000000044703484;
	setAttr ".wl[242].w[38]" 0.019999999552965164;
	setAttr -s 2 ".wl[243].w[22:23]"  0.46342939138412476 0.53657060861587524;
	setAttr -s 3 ".wl[244].w";
	setAttr ".wl[244].w[22]" 0.78484119832173649;
	setAttr ".wl[244].w[23]" 0.19532820582389832;
	setAttr ".wl[244].w[38]" 0.019830595854365196;
	setAttr -s 3 ".wl[245].w";
	setAttr ".wl[245].w[22]" 0.82292434599501374;
	setAttr ".wl[245].w[23]" 0.16195741295814514;
	setAttr ".wl[245].w[38]" 0.015118241046841117;
	setAttr -s 2 ".wl[246].w[22:23]"  0.64930152893066406 0.35069847106933594;
	setAttr -s 2 ".wl[247].w[22:23]"  0.5551394522190094 0.4448605477809906;
	setAttr -s 2 ".wl[248].w[22:23]"  0.38705116510391235 0.61294883489608765;
	setAttr -s 2 ".wl[249].w[22:23]"  0.1858823299407959 0.8141176700592041;
	setAttr -s 2 ".wl[250].w[22:23]"  0.3069949746131897 0.6930050253868103;
	setAttr -s 2 ".wl[251].w[22:23]"  0.94031943008303642 0.059680569916963577;
	setAttr -s 2 ".wl[252].w[22:23]"  0.89314740896224976 0.10685259103775024;
	setAttr -s 2 ".wl[253].w[22:23]"  0.98869677819311619 0.011303221806883812;
	setAttr -s 2 ".wl[254].w[22:23]"  0.26759183406829834 0.73240816593170166;
	setAttr -s 2 ".wl[255].w[22:23]"  0.42599856853485107 0.57400143146514893;
	setAttr -s 3 ".wl[256].w";
	setAttr ".wl[256].w[21]" 0.21914107799530033;
	setAttr ".wl[256].w[22]" 0.049999999999999961;
	setAttr ".wl[256].w[38]" 0.73085892200469971;
	setAttr -s 2 ".wl[257].w";
	setAttr ".wl[257].w[21]" 0.51333251595497131;
	setAttr ".wl[257].w[38]" 0.48666748404502869;
	setAttr -s 2 ".wl[258].w";
	setAttr ".wl[258].w[21]" 0.51333251595497131;
	setAttr ".wl[258].w[38]" 0.48666748404502869;
	setAttr -s 3 ".wl[259].w";
	setAttr ".wl[259].w[21]" 0.21914107799530033;
	setAttr ".wl[259].w[22]" 0.049999999999999961;
	setAttr ".wl[259].w[38]" 0.73085892200469971;
	setAttr -s 3 ".wl[260].w";
	setAttr ".wl[260].w[21]" 0.21914107799530033;
	setAttr ".wl[260].w[22]" 0.049999999999999961;
	setAttr ".wl[260].w[38]" 0.73085892200469971;
	setAttr -s 2 ".wl[261].w";
	setAttr ".wl[261].w[21]" 0.51333251595497131;
	setAttr ".wl[261].w[38]" 0.48666748404502869;
	setAttr -s 2 ".wl[262].w";
	setAttr ".wl[262].w[21]" 0.51333251595497131;
	setAttr ".wl[262].w[38]" 0.48666748404502869;
	setAttr -s 3 ".wl[263].w";
	setAttr ".wl[263].w[21]" 0.21914107799530033;
	setAttr ".wl[263].w[22]" 0.049999999999999961;
	setAttr ".wl[263].w[38]" 0.73085892200469971;
	setAttr -s 3 ".wl[264].w";
	setAttr ".wl[264].w[21]" 0.21914107799530033;
	setAttr ".wl[264].w[22]" 0.049999999999999961;
	setAttr ".wl[264].w[38]" 0.73085892200469971;
	setAttr -s 2 ".wl[265].w";
	setAttr ".wl[265].w[21]" 0.51333251595497131;
	setAttr ".wl[265].w[38]" 0.48666748404502869;
	setAttr -s 2 ".wl[266].w";
	setAttr ".wl[266].w[21]" 0.51333251595497131;
	setAttr ".wl[266].w[38]" 0.48666748404502869;
	setAttr -s 3 ".wl[267].w";
	setAttr ".wl[267].w[21]" 0.21914107799530033;
	setAttr ".wl[267].w[22]" 0.049999999999999961;
	setAttr ".wl[267].w[38]" 0.73085892200469971;
	setAttr -s 2 ".wl[268].w";
	setAttr ".wl[268].w[21]" 0.51333251595497131;
	setAttr ".wl[268].w[38]" 0.48666748404502869;
	setAttr -s 2 ".wl[269].w";
	setAttr ".wl[269].w[21]" 0.81091690063476563;
	setAttr ".wl[269].w[38]" 0.18908309936523438;
	setAttr -s 2 ".wl[270].w";
	setAttr ".wl[270].w[21]" 0.81091690063476563;
	setAttr ".wl[270].w[38]" 0.18908309936523438;
	setAttr -s 2 ".wl[271].w";
	setAttr ".wl[271].w[21]" 0.51333251595497131;
	setAttr ".wl[271].w[38]" 0.48666748404502869;
	setAttr -s 2 ".wl[272].w";
	setAttr ".wl[272].w[21]" 0.81091690063476563;
	setAttr ".wl[272].w[38]" 0.18908309936523438;
	setAttr -s 3 ".wl[273].w";
	setAttr ".wl[273].w[21]" 0.21914107799530033;
	setAttr ".wl[273].w[22]" 0.049999999999999961;
	setAttr ".wl[273].w[38]" 0.73085892200469971;
	setAttr -s 2 ".wl[274].w";
	setAttr ".wl[274].w[21]" 0.51333251595497131;
	setAttr ".wl[274].w[38]" 0.48666748404502869;
	setAttr -s 2 ".wl[275].w";
	setAttr ".wl[275].w[21]" 0.51333251595497131;
	setAttr ".wl[275].w[38]" 0.48666748404502869;
	setAttr -s 3 ".wl[276].w";
	setAttr ".wl[276].w[21]" 0.21914107799530033;
	setAttr ".wl[276].w[22]" 0.049999999999999961;
	setAttr ".wl[276].w[38]" 0.73085892200469971;
	setAttr -s 2 ".wl[277].w";
	setAttr ".wl[277].w[21]" 0.81091690063476563;
	setAttr ".wl[277].w[38]" 0.18908309936523438;
	setAttr -s 2 ".wl[278].w";
	setAttr ".wl[278].w[21]" 0.51333251595497131;
	setAttr ".wl[278].w[38]" 0.48666748404502869;
	setAttr -s 2 ".wl[279].w";
	setAttr ".wl[279].w[21]" 0.51333251595497131;
	setAttr ".wl[279].w[38]" 0.48666748404502869;
	setAttr -s 2 ".wl[280].w";
	setAttr ".wl[280].w[21]" 0.81091690063476563;
	setAttr ".wl[280].w[38]" 0.18908309936523438;
	setAttr -s 3 ".wl[281].w";
	setAttr ".wl[281].w[21]" 0.21914107799530033;
	setAttr ".wl[281].w[22]" 0.049999999999999961;
	setAttr ".wl[281].w[38]" 0.73085892200469971;
	setAttr -s 2 ".wl[282].w";
	setAttr ".wl[282].w[21]" 0.51333251595497131;
	setAttr ".wl[282].w[38]" 0.48666748404502869;
	setAttr -s 2 ".wl[283].w";
	setAttr ".wl[283].w[21]" 0.51333251595497131;
	setAttr ".wl[283].w[38]" 0.48666748404502869;
	setAttr -s 3 ".wl[284].w";
	setAttr ".wl[284].w[21]" 0.21914107799530033;
	setAttr ".wl[284].w[22]" 0.049999999999999961;
	setAttr ".wl[284].w[38]" 0.73085892200469971;
	setAttr -s 2 ".wl[285].w";
	setAttr ".wl[285].w[21]" 0.51333251595497131;
	setAttr ".wl[285].w[38]" 0.48666748404502869;
	setAttr -s 2 ".wl[286].w";
	setAttr ".wl[286].w[21]" 0.51333251595497131;
	setAttr ".wl[286].w[38]" 0.48666748404502869;
	setAttr -s 2 ".wl[287].w";
	setAttr ".wl[287].w[21]" 0.81091690063476563;
	setAttr ".wl[287].w[38]" 0.18908309936523438;
	setAttr -s 2 ".wl[288].w";
	setAttr ".wl[288].w[21]" 0.81091690063476563;
	setAttr ".wl[288].w[38]" 0.18908309936523438;
	setAttr -s 3 ".wl[289].w";
	setAttr ".wl[289].w[21]" 0.21914107799530033;
	setAttr ".wl[289].w[22]" 0.049999999999999961;
	setAttr ".wl[289].w[38]" 0.73085892200469971;
	setAttr -s 2 ".wl[290].w";
	setAttr ".wl[290].w[21]" 0.51333251595497131;
	setAttr ".wl[290].w[38]" 0.48666748404502869;
	setAttr -s 2 ".wl[291].w";
	setAttr ".wl[291].w[21]" 0.51333251595497131;
	setAttr ".wl[291].w[38]" 0.48666748404502869;
	setAttr -s 3 ".wl[292].w";
	setAttr ".wl[292].w[21]" 0.21914107799530033;
	setAttr ".wl[292].w[22]" 0.049999999999999961;
	setAttr ".wl[292].w[38]" 0.73085892200469971;
	setAttr -s 2 ".wl[293].w";
	setAttr ".wl[293].w[21]" 0.81091690063476563;
	setAttr ".wl[293].w[38]" 0.18908309936523438;
	setAttr -s 3 ".wl[294].w";
	setAttr ".wl[294].w[20]" 0.5;
	setAttr ".wl[294].w[21]" 0.47562149167060852;
	setAttr ".wl[294].w[38]" 0.024378508329391479;
	setAttr -s 3 ".wl[295].w";
	setAttr ".wl[295].w[20]" 0.5;
	setAttr ".wl[295].w[21]" 0.47562149167060852;
	setAttr ".wl[295].w[38]" 0.024378508329391479;
	setAttr -s 3 ".wl[296].w";
	setAttr ".wl[296].w[20]" 0.5;
	setAttr ".wl[296].w[21]" 0.47562149167060852;
	setAttr ".wl[296].w[38]" 0.024378508329391479;
	setAttr -s 3 ".wl[297].w";
	setAttr ".wl[297].w[20]" 0.5;
	setAttr ".wl[297].w[21]" 0.47562149167060852;
	setAttr ".wl[297].w[38]" 0.024378508329391479;
	setAttr -s 3 ".wl[298].w";
	setAttr ".wl[298].w[20]" 0.5;
	setAttr ".wl[298].w[21]" 0.47562149167060852;
	setAttr ".wl[298].w[38]" 0.024378508329391479;
	setAttr -s 3 ".wl[299].w";
	setAttr ".wl[299].w[20]" 0.5;
	setAttr ".wl[299].w[21]" 0.47562149167060852;
	setAttr ".wl[299].w[38]" 0.024378508329391479;
	setAttr -s 3 ".wl[300].w";
	setAttr ".wl[300].w[20]" 0.5;
	setAttr ".wl[300].w[21]" 0.47562149167060852;
	setAttr ".wl[300].w[38]" 0.024378508329391479;
	setAttr -s 2 ".wl[301].w[24:25]"  0.9 0.1;
	setAttr -s 2 ".wl[302].w[24:25]"  0.5 0.5;
	setAttr -s 2 ".wl[303].w[24:25]"  0.5 0.5;
	setAttr -s 2 ".wl[304].w[24:25]"  0.9 0.1;
	setAttr -s 2 ".wl[305].w[24:25]"  0.9 0.1;
	setAttr -s 2 ".wl[306].w[24:25]"  0.9 0.1;
	setAttr -s 2 ".wl[307].w[24:25]"  0.5 0.5;
	setAttr -s 2 ".wl[308].w[24:25]"  0.5 0.5;
	setAttr -s 2 ".wl[309].w[24:25]"  0.9 0.1;
	setAttr -s 2 ".wl[310].w[24:25]"  0.9 0.1;
	setAttr -s 2 ".wl[311].w[24:25]"  0.5 0.5;
	setAttr -s 2 ".wl[312].w[24:25]"  0.5 0.5;
	setAttr -s 2 ".wl[313].w[24:25]"  0.9 0.1;
	setAttr -s 2 ".wl[314].w[24:25]"  0.5 0.5;
	setAttr -s 2 ".wl[315].w[24:25]"  0.5 0.5;
	setAttr -s 2 ".wl[316].w[24:25]"  0.9 0.1;
	setAttr -s 2 ".wl[317].w[36:37]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[318].w[36:37]"  0.5 0.5;
	setAttr -s 2 ".wl[319].w[36:37]"  0.5 0.5;
	setAttr -s 2 ".wl[320].w[36:37]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[321].w[36:37]"  0.5 0.5;
	setAttr -s 2 ".wl[322].w[36:37]"  0.5 0.5;
	setAttr -s 2 ".wl[323].w[36:37]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[324].w[36:37]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[325].w[36:37]"  0.5 0.5;
	setAttr -s 2 ".wl[326].w[36:37]"  0.5 0.5;
	setAttr -s 2 ".wl[327].w[36:37]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[328].w[36:37]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[329].w[36:37]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[330].w[36:37]"  0.5 0.5;
	setAttr -s 2 ".wl[331].w[36:37]"  0.5 0.5;
	setAttr -s 2 ".wl[332].w[36:37]"  0.099999999999999978 0.9;
	setAttr ".wl[333].w[34]"  1;
	setAttr -s 2 ".wl[334].w[33:34]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[335].w[33:34]"  0.099999999999999978 0.9;
	setAttr ".wl[336].w[34]"  1;
	setAttr ".wl[337].w[34]"  1;
	setAttr -s 2 ".wl[338].w[33:34]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[339].w[33:34]"  0.099999999999999978 0.9;
	setAttr ".wl[340].w[34]"  1;
	setAttr -s 2 ".wl[341].w[33:34]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[342].w[33:34]"  0.099999999999999978 0.9;
	setAttr ".wl[343].w[34]"  1;
	setAttr ".wl[344].w[34]"  1;
	setAttr -s 2 ".wl[345].w[33:34]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[346].w[33:34]"  0.099999999999999978 0.9;
	setAttr ".wl[347].w[34]"  1;
	setAttr ".wl[348].w[34]"  1;
	setAttr ".wl[349].w[31]"  1;
	setAttr -s 2 ".wl[350].w[30:31]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[351].w[30:31]"  0.099999999999999978 0.9;
	setAttr ".wl[352].w[31]"  1;
	setAttr ".wl[353].w[31]"  1;
	setAttr -s 2 ".wl[354].w[30:31]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[355].w[30:31]"  0.099999999999999978 0.9;
	setAttr ".wl[356].w[31]"  1;
	setAttr ".wl[357].w[31]"  1;
	setAttr -s 2 ".wl[358].w[30:31]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[359].w[30:31]"  0.099999999999999978 0.9;
	setAttr ".wl[360].w[31]"  1;
	setAttr -s 2 ".wl[361].w[30:31]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[362].w[30:31]"  0.099999999999999978 0.9;
	setAttr ".wl[363].w[31]"  1;
	setAttr ".wl[364].w[31]"  1;
	setAttr ".wl[365].w[28]"  1;
	setAttr -s 2 ".wl[366].w[27:28]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[367].w[27:28]"  0.099999999999999978 0.9;
	setAttr ".wl[368].w[28]"  1;
	setAttr ".wl[369].w[28]"  1;
	setAttr -s 2 ".wl[370].w[27:28]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[371].w[27:28]"  0.099999999999999978 0.9;
	setAttr ".wl[372].w[28]"  1;
	setAttr -s 2 ".wl[373].w[27:28]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[374].w[27:28]"  0.099999999999999978 0.9;
	setAttr ".wl[375].w[28]"  1;
	setAttr ".wl[376].w[28]"  1;
	setAttr -s 2 ".wl[377].w[27:28]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[378].w[27:28]"  0.099999999999999978 0.9;
	setAttr ".wl[379].w[28]"  1;
	setAttr ".wl[380].w[28]"  1;
	setAttr -s 3 ".wl[381].w";
	setAttr ".wl[381].w[22]" 0.028700497001409531;
	setAttr ".wl[381].w[26]" 0.47129950299859047;
	setAttr ".wl[381].w[27]" 0.5;
	setAttr -s 2 ".wl[382].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[383].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[384].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[385].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[386].w[26:27]"  0.5 0.5;
	setAttr -s 3 ".wl[387].w";
	setAttr ".wl[387].w[22]" 0.044815141707658768;
	setAttr ".wl[387].w[26]" 0.45518485829234134;
	setAttr ".wl[387].w[27]" 0.49999999999999989;
	setAttr -s 3 ".wl[388].w";
	setAttr ".wl[388].w[22]" 0.035232625901699066;
	setAttr ".wl[388].w[26]" 0.46476737409830093;
	setAttr ".wl[388].w[27]" 0.5;
	setAttr -s 3 ".wl[389].w";
	setAttr ".wl[389].w[22]" 0.029694408178329468;
	setAttr ".wl[389].w[29]" 0.47030559182167053;
	setAttr ".wl[389].w[30]" 0.5;
	setAttr -s 2 ".wl[390].w[29:30]"  0.5 0.5;
	setAttr -s 2 ".wl[391].w[29:30]"  0.5 0.5;
	setAttr -s 2 ".wl[392].w[29:30]"  0.5 0.5;
	setAttr -s 2 ".wl[393].w[29:30]"  0.5 0.5;
	setAttr -s 2 ".wl[394].w[29:30]"  0.5 0.5;
	setAttr -s 3 ".wl[395].w";
	setAttr ".wl[395].w[22]" 0.061153113842010498;
	setAttr ".wl[395].w[29]" 0.43884688615798939;
	setAttr ".wl[395].w[30]" 0.50000000000000011;
	setAttr -s 4 ".wl[396].w";
	setAttr ".wl[396].w[22]" 0.05473676323890686;
	setAttr ".wl[396].w[29]" 0.42776390910148621;
	setAttr ".wl[396].w[30]" 0.5;
	setAttr ".wl[396].w[32]" 0.01749932765960693;
	setAttr -s 3 ".wl[397].w";
	setAttr ".wl[397].w[22]" 0.03220377117395401;
	setAttr ".wl[397].w[32]" 0.4677962288260461;
	setAttr ".wl[397].w[33]" 0.49999999999999989;
	setAttr -s 3 ".wl[398].w";
	setAttr ".wl[398].w[22]" 0.012894709594547749;
	setAttr ".wl[398].w[32]" 0.48710529040545214;
	setAttr ".wl[398].w[33]" 0.50000000000000011;
	setAttr -s 2 ".wl[399].w[32:33]"  0.5 0.5;
	setAttr -s 3 ".wl[400].w";
	setAttr ".wl[400].w[22]" 0.016005672514438629;
	setAttr ".wl[400].w[32]" 0.48399432748556126;
	setAttr ".wl[400].w[33]" 0.50000000000000011;
	setAttr -s 3 ".wl[401].w";
	setAttr ".wl[401].w[22]" 0.048376012593507767;
	setAttr ".wl[401].w[32]" 0.45162398740649223;
	setAttr ".wl[401].w[33]" 0.5;
	setAttr -s 2 ".wl[402].w[32:33]"  0.5 0.5;
	setAttr -s 3 ".wl[403].w";
	setAttr ".wl[403].w[22]" 0.05720510333776474;
	setAttr ".wl[403].w[32]" 0.44279489666223526;
	setAttr ".wl[403].w[33]" 0.5;
	setAttr -s 3 ".wl[404].w";
	setAttr ".wl[404].w[22]" 0.080109335482120514;
	setAttr ".wl[404].w[32]" 0.41989066451787949;
	setAttr ".wl[404].w[33]" 0.5;
	setAttr -s 2 ".wl[405].w[35:36]"  0.5 0.5;
	setAttr -s 2 ".wl[406].w[35:36]"  0.5 0.5;
	setAttr -s 2 ".wl[407].w[35:36]"  0.5 0.5;
	setAttr -s 2 ".wl[408].w[35:36]"  0.5 0.5;
	setAttr -s 3 ".wl[409].w";
	setAttr ".wl[409].w[32]" 0.0071751815266907215;
	setAttr ".wl[409].w[35]" 0.49282481847330928;
	setAttr ".wl[409].w[36]" 0.5;
	setAttr -s 2 ".wl[410].w[35:36]"  0.5 0.5;
	setAttr -s 3 ".wl[411].w";
	setAttr ".wl[411].w[32]" 0.013524916023015976;
	setAttr ".wl[411].w[35]" 0.48647508397698402;
	setAttr ".wl[411].w[36]" 0.5;
	setAttr -s 3 ".wl[412].w";
	setAttr ".wl[412].w[32]" 0.026471830904483795;
	setAttr ".wl[412].w[35]" 0.4735281690955162;
	setAttr ".wl[412].w[36]" 0.5;
	setAttr -s 2 ".wl[413].w[23:24]"  0.19999999999999996 0.8;
	setAttr -s 2 ".wl[414].w[23:24]"  0.13411766290664673 0.86588233709335327;
	setAttr -s 2 ".wl[415].w[23:24]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[416].w[23:24]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[417].w[23:24]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[418].w[23:24]"  0.19999999999999996 0.8;
	setAttr -s 2 ".wl[419].w[23:24]"  0.19999999999999996 0.8;
	setAttr -s 2 ".wl[420].w[23:24]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[421].w[23:24]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[422].w[23:24]"  0.19999999999999996 0.8;
	setAttr -s 2 ".wl[423].w[23:24]"  0.19999999999999996 0.8;
	setAttr -s 2 ".wl[424].w[23:24]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[425].w[23:24]"  0.18666666746139526 0.81333333253860474;
	setAttr -s 2 ".wl[426].w[23:24]"  0.19999999999999996 0.8;
	setAttr -s 2 ".wl[427].w[23:24]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[428].w[23:24]"  0.099999999999999978 0.9;
	setAttr ".wl[429].w[25]"  1;
	setAttr -s 2 ".wl[430].w[24:25]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[431].w[24:25]"  0.099999999999999978 0.9;
	setAttr ".wl[432].w[25]"  1;
	setAttr -s 2 ".wl[433].w[24:25]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[434].w[24:25]"  0.099999999999999978 0.9;
	setAttr ".wl[435].w[25]"  1;
	setAttr ".wl[436].w[25]"  1;
	setAttr ".wl[437].w[25]"  1;
	setAttr -s 2 ".wl[438].w[24:25]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[439].w[24:25]"  0.099999999999999978 0.9;
	setAttr ".wl[440].w[25]"  1;
	setAttr ".wl[441].w[25]"  1;
	setAttr -s 2 ".wl[442].w[24:25]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[443].w[24:25]"  0.099999999999999978 0.9;
	setAttr ".wl[444].w[25]"  1;
	setAttr -s 2 ".wl[445].w[22:23]"  0.83565340936183929 0.16434659063816071;
	setAttr -s 3 ".wl[446].w";
	setAttr ".wl[446].w[22]" 0.81961923069029263;
	setAttr ".wl[446].w[23]" 0.16404551267623901;
	setAttr ".wl[446].w[38]" 0.016335256633468354;
	setAttr -s 3 ".wl[447].w";
	setAttr ".wl[447].w[22]" 0.51246094517409801;
	setAttr ".wl[447].w[23]" 0.47951152920722961;
	setAttr ".wl[447].w[26]" 0.0080275256186723709;
	setAttr -s 2 ".wl[448].w[22:23]"  0.23500111699104309 0.76499888300895691;
	setAttr -s 2 ".wl[449].w[22:23]"  0.92341490089893341 0.076585099101066589;
	setAttr -s 2 ".wl[450].w[22:23]"  0.79843440651893616 0.20156559348106384;
	setAttr -s 3 ".wl[451].w";
	setAttr ".wl[451].w[22]" 0.89435236593004663;
	setAttr ".wl[451].w[23]" 0.080692104995250702;
	setAttr ".wl[451].w[38]" 0.024955529074702665;
	setAttr -s 3 ".wl[452].w";
	setAttr ".wl[452].w[22]" 0.96278693702495899;
	setAttr ".wl[452].w[23]" 0.012209798209369183;
	setAttr ".wl[452].w[38]" 0.025003264765671829;
	setAttr -s 2 ".wl[453].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[454].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[455].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[456].w[20:21]"  0.9 0.1;
	setAttr -s 3 ".wl[457].w";
	setAttr ".wl[457].w[20]" 0.5;
	setAttr ".wl[457].w[21]" 0.47562149167060852;
	setAttr ".wl[457].w[38]" 0.024378508329391479;
	setAttr -s 2 ".wl[458].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[459].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[460].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[461].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[462].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[463].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[464].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[465].w[20:21]"  0.9 0.1;
	setAttr -s 3 ".wl[466].w";
	setAttr ".wl[466].w[20]" 0.5;
	setAttr ".wl[466].w[21]" 0.47562149167060852;
	setAttr ".wl[466].w[38]" 0.024378508329391479;
	setAttr -s 2 ".wl[467].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[468].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[469].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[470].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[471].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[472].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[473].w[20:21]"  0.9 0.1;
	setAttr -s 2 ".wl[474].w[20:21]"  0.9 0.1;
	setAttr ".wl[475].w[20]"  1;
	setAttr ".wl[476].w[20]"  1;
	setAttr ".wl[477].w[20]"  1;
	setAttr ".wl[478].w[20]"  1;
	setAttr ".wl[479].w[20]"  1;
	setAttr ".wl[480].w[20]"  1;
	setAttr ".wl[481].w[20]"  1;
	setAttr ".wl[482].w[20]"  1;
	setAttr ".wl[483].w[20]"  1;
	setAttr ".wl[484].w[20]"  1;
	setAttr ".wl[485].w[20]"  1;
	setAttr ".wl[486].w[20]"  1;
	setAttr ".wl[487].w[20]"  1;
	setAttr ".wl[488].w[20]"  1;
	setAttr ".wl[489].w[20]"  1;
	setAttr ".wl[490].w[20]"  1;
	setAttr ".wl[491].w[20]"  1;
	setAttr ".wl[492].w[20]"  1;
	setAttr ".wl[493].w[20]"  1;
	setAttr ".wl[494].w[20]"  1;
	setAttr ".wl[495].w[20]"  1;
	setAttr ".wl[496].w[20]"  1;
	setAttr ".wl[497].w[20]"  1;
	setAttr ".wl[498].w[20]"  1;
	setAttr ".wl[499].w[20]"  1;
	setAttr ".wl[500].w[20]"  1;
	setAttr ".wl[501].w[20]"  1;
	setAttr ".wl[502].w[20]"  1;
	setAttr ".wl[503].w[20]"  1;
	setAttr ".wl[504].w[20]"  1;
	setAttr ".wl[505].w[20]"  1;
	setAttr -s 3 ".wl[506].w";
	setAttr ".wl[506].w[22]" 0.95427119731903076;
	setAttr ".wl[506].w[23]" 0.024421632289886475;
	setAttr ".wl[506].w[26]" 0.021307170391082767;
	setAttr ".wl[507].w[22]"  1;
	setAttr ".wl[508].w[22]"  1;
	setAttr -s 2 ".wl[509].w[22:23]"  0.93135010451078415 0.068649895489215851;
	setAttr -s 2 ".wl[510].w[22:23]"  0.78811013698577881 0.21188986301422119;
	setAttr -s 2 ".wl[511].w[22:23]"  0.88738331943750381 0.11261668056249619;
	setAttr ".wl[512].w[22]"  1;
	setAttr ".wl[513].w[22]"  1;
	setAttr ".wl[514].w[22]"  1;
	setAttr ".wl[515].w[22]"  1;
	setAttr ".wl[516].w[22]"  1;
	setAttr ".wl[517].w[22]"  1;
	setAttr ".wl[518].w[22]"  1;
	setAttr ".wl[519].w[22]"  1;
	setAttr ".wl[520].w[22]"  1;
	setAttr ".wl[521].w[22]"  1;
	setAttr ".wl[522].w[22]"  1;
	setAttr -s 2 ".wl[523].w";
	setAttr ".wl[523].w[22]" 0.90625247359275818;
	setAttr ".wl[523].w[35]" 0.093747526407241821;
	setAttr ".wl[524].w[22]"  1;
	setAttr -s 2 ".wl[525].w";
	setAttr ".wl[525].w[22]" 0.8427848219871521;
	setAttr ".wl[525].w[35]" 0.1572151780128479;
	setAttr ".wl[526].w[22]"  1;
	setAttr -s 3 ".wl[527].w";
	setAttr ".wl[527].w[22]" 0.82841348834335804;
	setAttr ".wl[527].w[26]" 0.14659139513969421;
	setAttr ".wl[527].w[29]" 0.024995116516947753;
	setAttr -s 2 ".wl[528].w";
	setAttr ".wl[528].w[22]" 0.75745697319507599;
	setAttr ".wl[528].w[35]" 0.24254302680492401;
	setAttr ".wl[529].w[22]"  1;
	setAttr ".wl[530].w[22]"  1;
	setAttr -s 2 ".wl[531].w";
	setAttr ".wl[531].w[22]" 0.7856706976890564;
	setAttr ".wl[531].w[35]" 0.2143293023109436;
	setAttr ".wl[532].w[22]"  1;
	setAttr ".wl[533].w[22]"  1;
	setAttr -s 2 ".wl[534].w";
	setAttr ".wl[534].w[22]" 0.81587414443492889;
	setAttr ".wl[534].w[29]" 0.18412585556507111;
	setAttr -s 3 ".wl[535].w";
	setAttr ".wl[535].w[22]" 0.77663051337003708;
	setAttr ".wl[535].w[29]" 0.12482159584760665;
	setAttr ".wl[535].w[32]" 0.09854789078235629;
	setAttr -s 3 ".wl[536].w";
	setAttr ".wl[536].w[22]" 0.87049335241317749;
	setAttr ".wl[536].w[32]" 0.089818760752677904;
	setAttr ".wl[536].w[35]" 0.039687886834144592;
	setAttr ".wl[537].w[22]"  1;
	setAttr ".wl[538].w[22]"  1;
	setAttr -s 2 ".wl[539].w";
	setAttr ".wl[539].w[22]" 0.79855711758136749;
	setAttr ".wl[539].w[32]" 0.20144288241863251;
	setAttr -s 2 ".wl[540].w[22:23]"  0.16461357474327087 0.83538642525672913;
	setAttr -s 2 ".wl[541].w[22:23]"  0.10867659002542496 0.89132340997457504;
	setAttr -s 2 ".wl[542].w[22:23]"  0.040396552532911301 0.9596034474670887;
	setAttr -s 2 ".wl[543].w[22:23]"  0.064417943358421326 0.93558205664157867;
	setAttr -s 3 ".wl[544].w";
	setAttr ".wl[544].w[22]" 0.83104602713137865;
	setAttr ".wl[544].w[23]" 0.16295091807842255;
	setAttr ".wl[544].w[26]" 0.0060030547901988029;
	setAttr -s 3 ".wl[545].w";
	setAttr ".wl[545].w[22]" 0.70929383486509323;
	setAttr ".wl[545].w[23]" 0.23742146790027618;
	setAttr ".wl[545].w[26]" 0.053284697234630585;
	setAttr -s 2 ".wl[546].w[22:23]"  0.046841740608215332 0.95315825939178467;
	setAttr -s 2 ".wl[547].w[22:23]"  0.12526321411132813 0.87473678588867188;
	setAttr -s 2 ".wl[548].w[22:23]"  0.26555529236793518 0.73444470763206482;
	setAttr -s 2 ".wl[549].w[22:23]"  0.14677496254444122 0.85322503745555878;
	setAttr -s 2 ".wl[550].w[22:23]"  0.39994367957115173 0.60005632042884827;
	setAttr -s 2 ".wl[551].w[22:23]"  0.57662034034729004 0.42337965965270996;
	setAttr -s 3 ".wl[552].w";
	setAttr ".wl[552].w[21]" 0.21914107799530033;
	setAttr ".wl[552].w[22]" 0.049999999999999961;
	setAttr ".wl[552].w[38]" 0.73085892200469971;
	setAttr -s 3 ".wl[553].w";
	setAttr ".wl[553].w[21]" 0.21914107799530033;
	setAttr ".wl[553].w[22]" 0.049999999999999961;
	setAttr ".wl[553].w[38]" 0.73085892200469971;
	setAttr -s 3 ".wl[554].w";
	setAttr ".wl[554].w[21]" 0.21914107799530033;
	setAttr ".wl[554].w[22]" 0.049999999999999961;
	setAttr ".wl[554].w[38]" 0.73085892200469971;
	setAttr -s 3 ".wl[555].w";
	setAttr ".wl[555].w[21]" 0.21914107799530033;
	setAttr ".wl[555].w[22]" 0.049999999999999961;
	setAttr ".wl[555].w[38]" 0.73085892200469971;
	setAttr -s 3 ".wl[556].w";
	setAttr ".wl[556].w[21]" 0.21914107799530033;
	setAttr ".wl[556].w[22]" 0.049999999999999961;
	setAttr ".wl[556].w[38]" 0.73085892200469971;
	setAttr -s 3 ".wl[557].w";
	setAttr ".wl[557].w[21]" 0.21914107799530033;
	setAttr ".wl[557].w[22]" 0.049999999999999961;
	setAttr ".wl[557].w[38]" 0.73085892200469971;
	setAttr -s 3 ".wl[558].w";
	setAttr ".wl[558].w[21]" 0.090192876756191268;
	setAttr ".wl[558].w[22]" 0.19999999999999996;
	setAttr ".wl[558].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[559].w";
	setAttr ".wl[559].w[21]" 0.090192876756191268;
	setAttr ".wl[559].w[22]" 0.19999999999999996;
	setAttr ".wl[559].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[560].w";
	setAttr ".wl[560].w[21]" 0.090192876756191268;
	setAttr ".wl[560].w[22]" 0.19999999999999996;
	setAttr ".wl[560].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[561].w";
	setAttr ".wl[561].w[21]" 0.090192876756191268;
	setAttr ".wl[561].w[22]" 0.19999999999999996;
	setAttr ".wl[561].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[562].w";
	setAttr ".wl[562].w[21]" 0.090192876756191268;
	setAttr ".wl[562].w[22]" 0.19999999999999996;
	setAttr ".wl[562].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[563].w";
	setAttr ".wl[563].w[21]" 0.090192876756191268;
	setAttr ".wl[563].w[22]" 0.19999999999999996;
	setAttr ".wl[563].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[564].w";
	setAttr ".wl[564].w[21]" 0.090192876756191268;
	setAttr ".wl[564].w[22]" 0.19999999999999996;
	setAttr ".wl[564].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[565].w";
	setAttr ".wl[565].w[21]" 0.090192876756191268;
	setAttr ".wl[565].w[22]" 0.19999999999999996;
	setAttr ".wl[565].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[566].w";
	setAttr ".wl[566].w[21]" 0.090192876756191268;
	setAttr ".wl[566].w[22]" 0.19999999999999996;
	setAttr ".wl[566].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[567].w";
	setAttr ".wl[567].w[21]" 0.090192876756191268;
	setAttr ".wl[567].w[22]" 0.19999999999999996;
	setAttr ".wl[567].w[38]" 0.70980712324380879;
	setAttr -s 3 ".wl[568].w";
	setAttr ".wl[568].w[21]" 0.090192876756191268;
	setAttr ".wl[568].w[22]" 0.19999999999999996;
	setAttr ".wl[568].w[38]" 0.70980712324380879;
	setAttr -s 2 ".wl[569].w";
	setAttr ".wl[569].w[22]" 0.94609923660755157;
	setAttr ".wl[569].w[38]" 0.053900763392448425;
	setAttr -s 2 ".wl[570].w";
	setAttr ".wl[570].w[22]" 0.96818823739886284;
	setAttr ".wl[570].w[38]" 0.031811762601137161;
	setAttr -s 2 ".wl[571].w";
	setAttr ".wl[571].w[22]" 0.98000000044703484;
	setAttr ".wl[571].w[38]" 0.019999999552965164;
	setAttr -s 2 ".wl[572].w";
	setAttr ".wl[572].w[22]" 0.97642539627850056;
	setAttr ".wl[572].w[38]" 0.023574603721499443;
	setAttr -s 2 ".wl[573].w";
	setAttr ".wl[573].w[22]" 0.98000000044703484;
	setAttr ".wl[573].w[38]" 0.019999999552965164;
	setAttr -s 2 ".wl[574].w";
	setAttr ".wl[574].w[22]" 0.98000000044703484;
	setAttr ".wl[574].w[38]" 0.019999999552965164;
	setAttr -s 2 ".wl[575].w";
	setAttr ".wl[575].w[22]" 0.98000000044703484;
	setAttr ".wl[575].w[38]" 0.019999999552965164;
	setAttr -s 2 ".wl[576].w";
	setAttr ".wl[576].w[22]" 0.98000000044703484;
	setAttr ".wl[576].w[38]" 0.019999999552965164;
	setAttr -s 2 ".wl[577].w";
	setAttr ".wl[577].w[22]" 0.98000000044703484;
	setAttr ".wl[577].w[38]" 0.019999999552965164;
	setAttr -s 2 ".wl[578].w";
	setAttr ".wl[578].w[22]" 0.98000000044703484;
	setAttr ".wl[578].w[38]" 0.019999999552965164;
	setAttr -s 2 ".wl[579].w";
	setAttr ".wl[579].w[22]" 0.86076201498508453;
	setAttr ".wl[579].w[38]" 0.13923798501491547;
	setAttr -s 2 ".wl[580].w";
	setAttr ".wl[580].w[22]" 0.83976469933986664;
	setAttr ".wl[580].w[38]" 0.16023530066013336;
	setAttr -s 2 ".wl[581].w";
	setAttr ".wl[581].w[22]" 0.82092368602752686;
	setAttr ".wl[581].w[38]" 0.17907631397247314;
	setAttr -s 2 ".wl[582].w";
	setAttr ".wl[582].w[22]" 0.9;
	setAttr ".wl[582].w[38]" 0.099999999999999978;
	setAttr -s 2 ".wl[583].w";
	setAttr ".wl[583].w[22]" 0.9;
	setAttr ".wl[583].w[38]" 0.099999999999999978;
	setAttr -s 2 ".wl[584].w";
	setAttr ".wl[584].w[22]" 0.9;
	setAttr ".wl[584].w[38]" 0.099999999999999978;
	setAttr -s 2 ".wl[585].w";
	setAttr ".wl[585].w[22]" 0.9;
	setAttr ".wl[585].w[38]" 0.099999999999999978;
	setAttr -s 3 ".wl[586].w";
	setAttr ".wl[586].w[22]" 0.92170753628755731;
	setAttr ".wl[586].w[23]" 0.029109476134181023;
	setAttr ".wl[586].w[38]" 0.049182987578261672;
	setAttr -s 3 ".wl[587].w";
	setAttr ".wl[587].w[22]" 0.91962586550716685;
	setAttr ".wl[587].w[23]" 0.00014166921027936041;
	setAttr ".wl[587].w[38]" 0.080232465282553789;
	setAttr -s 3 ".wl[588].w";
	setAttr ".wl[588].w[22]" 0.9044375641441158;
	setAttr ".wl[588].w[23]" 0.01585867628455162;
	setAttr ".wl[588].w[38]" 0.079703759571332577;
	setAttr -s 3 ".wl[589].w";
	setAttr ".wl[589].w[22]" 0.90396241846713354;
	setAttr ".wl[589].w[23]" 0.0057252277620136738;
	setAttr ".wl[589].w[38]" 0.090312353770852782;
	setAttr -s 2 ".wl[590].w[22:23]"  0.87919258326292038 0.12080741673707962;
	setAttr -s 2 ".wl[591].w";
	setAttr ".wl[591].w[22]" 0.93169999122619629;
	setAttr ".wl[591].w[38]" 0.068300008773803711;
	setAttr ".wl[592].w[34]"  1;
	setAttr ".wl[593].w[34]"  1;
	setAttr ".wl[594].w[34]"  1;
	setAttr ".wl[595].w[34]"  1;
	setAttr ".wl[596].w[34]"  1;
	setAttr ".wl[597].w[34]"  1;
	setAttr ".wl[598].w[34]"  1;
	setAttr ".wl[599].w[34]"  1;
	setAttr ".wl[600].w[31]"  1;
	setAttr ".wl[601].w[31]"  1;
	setAttr ".wl[602].w[22]"  1;
	setAttr ".wl[603].w[22]"  1;
	setAttr -s 2 ".wl[604].w";
	setAttr ".wl[604].w[21]" 0.81091690063476563;
	setAttr ".wl[604].w[38]" 0.18908309936523438;
	setAttr -s 2 ".wl[605].w";
	setAttr ".wl[605].w[21]" 0.51333251595497131;
	setAttr ".wl[605].w[38]" 0.48666748404502869;
	setAttr -s 3 ".wl[606].w";
	setAttr ".wl[606].w[21]" 0.21914107799530033;
	setAttr ".wl[606].w[22]" 0.049999999999999961;
	setAttr ".wl[606].w[38]" 0.73085892200469971;
	setAttr -s 2 ".wl[607].w";
	setAttr ".wl[607].w[21]" 0.51333251595497131;
	setAttr ".wl[607].w[38]" 0.48666748404502869;
	setAttr ".wl[608].w[31]"  1;
	setAttr ".wl[609].w[31]"  1;
	setAttr ".wl[610].w[31]"  1;
	setAttr ".wl[611].w[31]"  1;
	setAttr ".wl[612].w[31]"  1;
	setAttr ".wl[613].w[31]"  1;
	setAttr ".wl[614].w[22]"  1;
	setAttr ".wl[615].w[22]"  1;
	setAttr -s 3 ".wl[616].w";
	setAttr ".wl[616].w[22]" 0.60315264016389847;
	setAttr ".wl[616].w[26]" 0.27698656916618347;
	setAttr ".wl[616].w[29]" 0.11986079066991805;
	setAttr -s 3 ".wl[617].w";
	setAttr ".wl[617].w[21]" 0.21914107799530033;
	setAttr ".wl[617].w[22]" 0.049999999999999961;
	setAttr ".wl[617].w[38]" 0.73085892200469971;
	setAttr -s 3 ".wl[618].w";
	setAttr ".wl[618].w[21]" 0.090192876756191268;
	setAttr ".wl[618].w[22]" 0.19999999999999996;
	setAttr ".wl[618].w[38]" 0.70980712324380879;
	setAttr -s 2 ".wl[619].w";
	setAttr ".wl[619].w[22]" 0.98000000044703484;
	setAttr ".wl[619].w[38]" 0.019999999552965164;
	setAttr ".wl[620].w[22]"  1;
	setAttr -s 2 ".wl[621].w";
	setAttr ".wl[621].w[22]" 0.9;
	setAttr ".wl[621].w[38]" 0.099999999999999978;
	setAttr -s 2 ".wl[622].w";
	setAttr ".wl[622].w[22]" 0.98000000044703484;
	setAttr ".wl[622].w[38]" 0.019999999552965164;
	setAttr ".wl[623].w[28]"  1;
	setAttr ".wl[624].w[28]"  1;
	setAttr ".wl[625].w[22]"  1;
	setAttr ".wl[626].w[28]"  1;
	setAttr ".wl[627].w[28]"  1;
	setAttr ".wl[628].w[28]"  1;
	setAttr ".wl[629].w[28]"  1;
	setAttr ".wl[630].w[28]"  1;
	setAttr ".wl[631].w[28]"  1;
	setAttr ".wl[632].w[37]"  1;
	setAttr ".wl[633].w[37]"  1;
	setAttr -s 2 ".wl[634].w";
	setAttr ".wl[634].w[22]" 0.5;
	setAttr ".wl[634].w[38]" 0.5;
	setAttr -s 2 ".wl[635].w";
	setAttr ".wl[635].w[22]" 0.84227451682090759;
	setAttr ".wl[635].w[38]" 0.15772548317909241;
	setAttr ".wl[636].w[37]"  1;
	setAttr ".wl[637].w[37]"  1;
	setAttr ".wl[638].w[37]"  1;
	setAttr ".wl[639].w[37]"  1;
	setAttr ".wl[640].w[37]"  1;
	setAttr ".wl[641].w[37]"  1;
	setAttr ".wl[642].w[37]"  1;
	setAttr ".wl[643].w[25]"  1;
	setAttr ".wl[644].w[25]"  1;
	setAttr -s 2 ".wl[645].w";
	setAttr ".wl[645].w[22]" 0.77243196964263916;
	setAttr ".wl[645].w[38]" 0.22756803035736084;
	setAttr ".wl[646].w[31]"  1;
	setAttr ".wl[647].w[28]"  1;
	setAttr ".wl[648].w[34]"  1;
	setAttr ".wl[649].w[37]"  1;
	setAttr ".wl[650].w[37]"  1;
	setAttr ".wl[651].w[37]"  1;
	setAttr ".wl[652].w[37]"  1;
	setAttr ".wl[653].w[37]"  1;
	setAttr ".wl[654].w[34]"  1;
	setAttr ".wl[655].w[34]"  1;
	setAttr ".wl[656].w[34]"  1;
	setAttr ".wl[657].w[34]"  1;
	setAttr ".wl[658].w[34]"  1;
	setAttr ".wl[659].w[31]"  1;
	setAttr ".wl[660].w[31]"  1;
	setAttr ".wl[661].w[31]"  1;
	setAttr ".wl[662].w[31]"  1;
	setAttr ".wl[663].w[31]"  1;
	setAttr ".wl[664].w[28]"  1;
	setAttr ".wl[665].w[28]"  1;
	setAttr ".wl[666].w[28]"  1;
	setAttr ".wl[667].w[28]"  1;
	setAttr ".wl[668].w[28]"  1;
	setAttr ".wl[669].w[25]"  1;
	setAttr ".wl[670].w[25]"  1;
	setAttr ".wl[671].w[25]"  1;
	setAttr ".wl[672].w[25]"  1;
	setAttr ".wl[673].w[25]"  1;
	setAttr ".wl[674].w[25]"  1;
	setAttr ".wl[675].w[25]"  1;
	setAttr -s 2 ".wl[676].w[22:23]"  0.65775084495544434 0.34224915504455566;
	setAttr -s 2 ".wl[677].w[22:23]"  0.49611949920654297 0.50388050079345703;
	setAttr ".wl[678].w[25]"  1;
	setAttr ".wl[679].w[25]"  1;
	setAttr ".wl[680].w[25]"  1;
	setAttr ".wl[681].w[25]"  1;
	setAttr ".wl[682].w[25]"  1;
	setAttr -s 2 ".wl[683].w[22:23]"  0.73627352714538574 0.26372647285461426;
	setAttr -s 3 ".wl[684].w";
	setAttr ".wl[684].w[22]" 0.37606056011281908;
	setAttr ".wl[684].w[23]" 0.62170711159706116;
	setAttr ".wl[684].w[26]" 0.0022323282901197672;
	setAttr -s 2 ".wl[685].w[22:23]"  0.83701582252979279 0.16298417747020721;
	setAttr -s 2 ".wl[686].w[22:23]"  0.77073007822036743 0.22926992177963257;
	setAttr -s 2 ".wl[687].w[27:28]"  0.5 0.5;
	setAttr -s 2 ".wl[688].w[27:28]"  0.5 0.5;
	setAttr -s 2 ".wl[689].w[27:28]"  0.5 0.5;
	setAttr -s 2 ".wl[690].w[27:28]"  0.5 0.5;
	setAttr -s 2 ".wl[691].w[27:28]"  0.5 0.5;
	setAttr -s 2 ".wl[692].w[27:28]"  0.5 0.5;
	setAttr -s 2 ".wl[693].w[27:28]"  0.5 0.5;
	setAttr -s 2 ".wl[694].w[27:28]"  0.5 0.5;
	setAttr -s 2 ".wl[695].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[696].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[697].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[698].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[699].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[700].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[701].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[702].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[703].w[33:34]"  0.5 0.5;
	setAttr -s 2 ".wl[704].w[33:34]"  0.5 0.5;
	setAttr -s 2 ".wl[705].w[33:34]"  0.5 0.5;
	setAttr -s 2 ".wl[706].w[33:34]"  0.5 0.5;
	setAttr -s 2 ".wl[707].w[33:34]"  0.5 0.5;
	setAttr -s 2 ".wl[708].w[33:34]"  0.5 0.5;
	setAttr -s 2 ".wl[709].w[33:34]"  0.5 0.5;
	setAttr -s 2 ".wl[710].w[33:34]"  0.5 0.5;
	setAttr -s 2 ".wl[711].w[22:23]"  0.6655290424823761 0.3344709575176239;
	setAttr -s 2 ".wl[712].w";
	setAttr ".wl[712].w[22]" 0.88990232348442078;
	setAttr ".wl[712].w[38]" 0.11009767651557922;
	setAttr -s 2 ".wl[713].w[26:27]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[714].w[26:27]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[715].w[26:27]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[716].w[26:27]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[717].w[26:27]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[718].w[26:27]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[719].w[26:27]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[720].w[26:27]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[721].w[29:30]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[722].w[29:30]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[723].w[29:30]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[724].w[29:30]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[725].w[29:30]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[726].w[29:30]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[727].w[29:30]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[728].w[29:30]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[729].w[32:33]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[730].w[32:33]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[731].w[32:33]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[732].w[32:33]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[733].w[32:33]"  0.099999999999999978 0.9;
	setAttr -s 3 ".wl[734].w";
	setAttr ".wl[734].w[22]" 0.009955456480383873;
	setAttr ".wl[734].w[32]" 0.090044543519616105;
	setAttr ".wl[734].w[33]" 0.9;
	setAttr -s 2 ".wl[735].w[32:33]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[736].w[32:33]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[737].w[35:36]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[738].w[35:36]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[739].w[35:36]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[740].w[35:36]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[741].w[35:36]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[742].w[35:36]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[743].w[35:36]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[744].w[35:36]"  0.099999999999999978 0.9;
	setAttr -s 3 ".wl[745].w";
	setAttr ".wl[745].w[20]" 0.1;
	setAttr ".wl[745].w[21]" 0.79256181567907336;
	setAttr ".wl[745].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[746].w";
	setAttr ".wl[746].w[20]" 0.1;
	setAttr ".wl[746].w[21]" 0.79256181567907336;
	setAttr ".wl[746].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[747].w";
	setAttr ".wl[747].w[20]" 0.1;
	setAttr ".wl[747].w[21]" 0.79256181567907336;
	setAttr ".wl[747].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[748].w";
	setAttr ".wl[748].w[20]" 0.1;
	setAttr ".wl[748].w[21]" 0.79256181567907336;
	setAttr ".wl[748].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[749].w";
	setAttr ".wl[749].w[20]" 0.1;
	setAttr ".wl[749].w[21]" 0.79256181567907336;
	setAttr ".wl[749].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[750].w";
	setAttr ".wl[750].w[20]" 0.1;
	setAttr ".wl[750].w[21]" 0.79256181567907336;
	setAttr ".wl[750].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[751].w";
	setAttr ".wl[751].w[20]" 0.1;
	setAttr ".wl[751].w[21]" 0.79256181567907336;
	setAttr ".wl[751].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[752].w";
	setAttr ".wl[752].w[20]" 0.1;
	setAttr ".wl[752].w[21]" 0.79256181567907336;
	setAttr ".wl[752].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[753].w";
	setAttr ".wl[753].w[20]" 0.1;
	setAttr ".wl[753].w[21]" 0.79256181567907336;
	setAttr ".wl[753].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[754].w";
	setAttr ".wl[754].w[20]" 0.1;
	setAttr ".wl[754].w[21]" 0.79256181567907336;
	setAttr ".wl[754].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[755].w";
	setAttr ".wl[755].w[20]" 0.1;
	setAttr ".wl[755].w[21]" 0.79256181567907336;
	setAttr ".wl[755].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[756].w";
	setAttr ".wl[756].w[20]" 0.1;
	setAttr ".wl[756].w[21]" 0.79256181567907336;
	setAttr ".wl[756].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[757].w";
	setAttr ".wl[757].w[20]" 0.1;
	setAttr ".wl[757].w[21]" 0.79256181567907336;
	setAttr ".wl[757].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[758].w";
	setAttr ".wl[758].w[20]" 0.1;
	setAttr ".wl[758].w[21]" 0.79256181567907336;
	setAttr ".wl[758].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[759].w";
	setAttr ".wl[759].w[20]" 0.1;
	setAttr ".wl[759].w[21]" 0.79256181567907336;
	setAttr ".wl[759].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[760].w";
	setAttr ".wl[760].w[20]" 0.1;
	setAttr ".wl[760].w[21]" 0.79256181567907336;
	setAttr ".wl[760].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[761].w";
	setAttr ".wl[761].w[20]" 0.1;
	setAttr ".wl[761].w[21]" 0.79256181567907336;
	setAttr ".wl[761].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[762].w";
	setAttr ".wl[762].w[20]" 0.1;
	setAttr ".wl[762].w[21]" 0.79256181567907336;
	setAttr ".wl[762].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[763].w";
	setAttr ".wl[763].w[20]" 0.1;
	setAttr ".wl[763].w[21]" 0.79256181567907336;
	setAttr ".wl[763].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[764].w";
	setAttr ".wl[764].w[20]" 0.1;
	setAttr ".wl[764].w[21]" 0.79256181567907336;
	setAttr ".wl[764].w[38]" 0.10743818432092667;
	setAttr -s 3 ".wl[765].w";
	setAttr ".wl[765].w[1]" 0.5;
	setAttr ".wl[765].w[2]" 0.47562149167060852;
	setAttr ".wl[765].w[19]" 0.024378508329391479;
	setAttr -s 3 ".wl[766].w";
	setAttr ".wl[766].w[1]" 0.5;
	setAttr ".wl[766].w[2]" 0.47562149167060852;
	setAttr ".wl[766].w[19]" 0.024378508329391479;
	setAttr -s 2 ".wl[767].w";
	setAttr ".wl[767].w[2]" 0.81091690063476563;
	setAttr ".wl[767].w[19]" 0.18908309936523438;
	setAttr -s 2 ".wl[768].w";
	setAttr ".wl[768].w[2]" 0.81091690063476563;
	setAttr ".wl[768].w[19]" 0.18908309936523438;
	setAttr -s 2 ".wl[769].w";
	setAttr ".wl[769].w[2]" 0.81091690063476563;
	setAttr ".wl[769].w[19]" 0.18908309936523438;
	setAttr -s 3 ".wl[770].w";
	setAttr ".wl[770].w[1]" 0.5;
	setAttr ".wl[770].w[2]" 0.47562149167060852;
	setAttr ".wl[770].w[19]" 0.024378508329391479;
	setAttr -s 3 ".wl[771].w";
	setAttr ".wl[771].w[1]" 0.5;
	setAttr ".wl[771].w[2]" 0.47562149167060852;
	setAttr ".wl[771].w[19]" 0.024378508329391479;
	setAttr -s 2 ".wl[772].w";
	setAttr ".wl[772].w[2]" 0.81091690063476563;
	setAttr ".wl[772].w[19]" 0.18908309936523438;
	setAttr -s 3 ".wl[773].w";
	setAttr ".wl[773].w[1]" 0.5;
	setAttr ".wl[773].w[2]" 0.47562149167060852;
	setAttr ".wl[773].w[19]" 0.024378508329391479;
	setAttr -s 2 ".wl[774].w";
	setAttr ".wl[774].w[2]" 0.81091690063476563;
	setAttr ".wl[774].w[19]" 0.18908309936523438;
	setAttr ".wl[775].w[18]"  1;
	setAttr ".wl[776].w[18]"  1;
	setAttr ".wl[777].w[18]"  1;
	setAttr -s 3 ".wl[778].w";
	setAttr ".wl[778].w[3]" 0.23145463317632675;
	setAttr ".wl[778].w[4]" 0.088815607130527496;
	setAttr ".wl[778].w[7]" 0.67972975969314575;
	setAttr -s 2 ".wl[779].w";
	setAttr ".wl[779].w[3]" 0.037360310554504395;
	setAttr ".wl[779].w[7]" 0.96263968944549561;
	setAttr -s 2 ".wl[780].w";
	setAttr ".wl[780].w[3]" 0.71135437488555908;
	setAttr ".wl[780].w[7]" 0.28864562511444092;
	setAttr -s 3 ".wl[781].w";
	setAttr ".wl[781].w[3]" 0.79776818677783012;
	setAttr ".wl[781].w[4]" 0.046993855386972427;
	setAttr ".wl[781].w[7]" 0.15523795783519745;
	setAttr ".wl[782].w[1]"  1;
	setAttr ".wl[783].w[1]"  1;
	setAttr ".wl[784].w[1]"  1;
	setAttr ".wl[785].w[1]"  1;
	setAttr ".wl[786].w[6]"  1;
	setAttr ".wl[787].w[6]"  1;
	setAttr ".wl[788].w[6]"  1;
	setAttr -s 2 ".wl[789].w";
	setAttr ".wl[789].w[3]" 0.7953772097826004;
	setAttr ".wl[789].w[19]" 0.2046227902173996;
	setAttr -s 2 ".wl[790].w";
	setAttr ".wl[790].w[3]" 0.49999999999999994;
	setAttr ".wl[790].w[19]" 0.5;
	setAttr -s 2 ".wl[791].w";
	setAttr ".wl[791].w[3]" 0.49999999999999994;
	setAttr ".wl[791].w[19]" 0.5;
	setAttr -s 2 ".wl[792].w";
	setAttr ".wl[792].w[3]" 0.78918978571891785;
	setAttr ".wl[792].w[19]" 0.21081021428108215;
	setAttr -s 2 ".wl[793].w";
	setAttr ".wl[793].w[3]" 0.5;
	setAttr ".wl[793].w[19]" 0.5;
	setAttr -s 2 ".wl[794].w";
	setAttr ".wl[794].w[3]" 0.49999999999999994;
	setAttr ".wl[794].w[19]" 0.5;
	setAttr -s 2 ".wl[795].w";
	setAttr ".wl[795].w[3]" 0.835999995470047;
	setAttr ".wl[795].w[19]" 0.164000004529953;
	setAttr -s 2 ".wl[796].w";
	setAttr ".wl[796].w[3]" 0.84289796650409698;
	setAttr ".wl[796].w[19]" 0.15710203349590302;
	setAttr -s 3 ".wl[797].w";
	setAttr ".wl[797].w[2]" 0.090192876756191254;
	setAttr ".wl[797].w[3]" 0.19999999999999993;
	setAttr ".wl[797].w[19]" 0.70980712324380879;
	setAttr -s 2 ".wl[798].w";
	setAttr ".wl[798].w[3]" 0.5;
	setAttr ".wl[798].w[19]" 0.5;
	setAttr -s 2 ".wl[799].w";
	setAttr ".wl[799].w[3]" 0.49999999999999994;
	setAttr ".wl[799].w[19]" 0.5;
	setAttr -s 3 ".wl[800].w";
	setAttr ".wl[800].w[2]" 0.090192876756191254;
	setAttr ".wl[800].w[3]" 0.19999999999999993;
	setAttr ".wl[800].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[801].w";
	setAttr ".wl[801].w[3]" 0.12063796818256378;
	setAttr ".wl[801].w[4]" 0.14338295161724091;
	setAttr ".wl[801].w[7]" 0.73597908020019531;
	setAttr -s 3 ".wl[802].w";
	setAttr ".wl[802].w[3]" 0.34671103954315186;
	setAttr ".wl[802].w[4]" 0.32993519306182861;
	setAttr ".wl[802].w[7]" 0.32335376739501953;
	setAttr -s 3 ".wl[803].w";
	setAttr ".wl[803].w[3]" 0.22030478715896606;
	setAttr ".wl[803].w[4]" 0.42277979850769043;
	setAttr ".wl[803].w[7]" 0.35691541433334351;
	setAttr -s 3 ".wl[804].w";
	setAttr ".wl[804].w[3]" 0.73709534853696823;
	setAttr ".wl[804].w[4]" 0.10131260007619858;
	setAttr ".wl[804].w[7]" 0.16159205138683319;
	setAttr -s 3 ".wl[805].w";
	setAttr ".wl[805].w[3]" 0.34753897786140442;
	setAttr ".wl[805].w[4]" 0.11357435584068298;
	setAttr ".wl[805].w[7]" 0.5388866662979126;
	setAttr -s 3 ".wl[806].w";
	setAttr ".wl[806].w[3]" 0.36312264204025269;
	setAttr ".wl[806].w[4]" 0.41040682792663574;
	setAttr ".wl[806].w[7]" 0.22647053003311157;
	setAttr -s 3 ".wl[807].w";
	setAttr ".wl[807].w[3]" 0.62566762417554855;
	setAttr ".wl[807].w[4]" 0.30429872870445251;
	setAttr ".wl[807].w[7]" 0.070033647119998932;
	setAttr -s 2 ".wl[808].w";
	setAttr ".wl[808].w[3]" 0.78128352761268616;
	setAttr ".wl[808].w[19]" 0.21871647238731384;
	setAttr -s 2 ".wl[809].w";
	setAttr ".wl[809].w[3]" 0.75143668055534363;
	setAttr ".wl[809].w[19]" 0.24856331944465637;
	setAttr -s 2 ".wl[810].w";
	setAttr ".wl[810].w[3]" 0.49999999999999994;
	setAttr ".wl[810].w[19]" 0.5;
	setAttr -s 4 ".wl[811].w";
	setAttr ".wl[811].w[3]" 0.22425341780074959;
	setAttr ".wl[811].w[4]" 0.63122803916445847;
	setAttr ".wl[811].w[5]" 0.12156862765550613;
	setAttr ".wl[811].w[7]" 0.022949915379285812;
	setAttr -s 4 ".wl[812].w";
	setAttr ".wl[812].w[3]" 0.2744866105313486;
	setAttr ".wl[812].w[4]" 0.59372316500590383;
	setAttr ".wl[812].w[5]" 0.10000000149011612;
	setAttr ".wl[812].w[7]" 0.031790222972631454;
	setAttr -s 2 ".wl[813].w[4:5]"  0.42000001668930054 0.57999998331069946;
	setAttr -s 2 ".wl[814].w[4:5]"  0.29345899820327759 0.70654100179672241;
	setAttr -s 4 ".wl[815].w";
	setAttr ".wl[815].w[3]" 0.21154476102935882;
	setAttr ".wl[815].w[4]" 0.67382007691514878;
	setAttr ".wl[815].w[5]" 0.10000000149011612;
	setAttr ".wl[815].w[7]" 0.014635160565376282;
	setAttr -s 2 ".wl[816].w[4:5]"  0.5 0.5;
	setAttr -s 2 ".wl[817].w[4:5]"  0.5 0.5;
	setAttr -s 3 ".wl[818].w[3:5]"  0.069574161503755116 0.83042583700612871 
		0.10000000149011612;
	setAttr -s 2 ".wl[819].w[4:5]"  0.89999999850988388 0.10000000149011612;
	setAttr -s 2 ".wl[820].w[4:5]"  0.5 0.5;
	setAttr -s 2 ".wl[821].w[4:5]"  0.5 0.5;
	setAttr -s 3 ".wl[822].w[3:5]"  0.0012764026040498538 0.89872359590583406 
		0.10000000149011612;
	setAttr -s 3 ".wl[823].w[3:5]"  0.034623955505384413 0.86537604300449944 
		0.10000000149011612;
	setAttr -s 2 ".wl[824].w[4:5]"  0.5 0.5;
	setAttr -s 2 ".wl[825].w[4:5]"  0.5 0.5;
	setAttr -s 3 ".wl[826].w[3:5]"  0.12711263426954111 0.77288736424034277 
		0.10000000149011612;
	setAttr ".wl[827].w[12]"  1;
	setAttr ".wl[828].w[12]"  1;
	setAttr ".wl[829].w[12]"  1;
	setAttr ".wl[830].w[9]"  1;
	setAttr ".wl[831].w[9]"  1;
	setAttr ".wl[832].w[9]"  1;
	setAttr ".wl[833].w[15]"  1;
	setAttr ".wl[834].w[15]"  1;
	setAttr ".wl[835].w[15]"  1;
	setAttr -s 3 ".wl[836].w";
	setAttr ".wl[836].w[3]" 0.73990094661712646;
	setAttr ".wl[836].w[13]" 0.17661362886428833;
	setAttr ".wl[836].w[16]" 0.083485424518585205;
	setAttr -s 4 ".wl[837].w";
	setAttr ".wl[837].w[3]" 0.046823617360658112;
	setAttr ".wl[837].w[13]" 0.057174887508153915;
	setAttr ".wl[837].w[16]" 0.79600149513118801;
	setAttr ".wl[837].w[17]" 0.1;
	setAttr -s 3 ".wl[838].w";
	setAttr ".wl[838].w[3]" 0.05;
	setAttr ".wl[838].w[16]" 0.85;
	setAttr ".wl[838].w[17]" 0.1;
	setAttr -s 2 ".wl[839].w";
	setAttr ".wl[839].w[3]" 0.17560458183288574;
	setAttr ".wl[839].w[16]" 0.82439541816711426;
	setAttr -s 2 ".wl[840].w";
	setAttr ".wl[840].w[3]" 0.29312998056411743;
	setAttr ".wl[840].w[16]" 0.70687001943588257;
	setAttr -s 3 ".wl[841].w";
	setAttr ".wl[841].w[3]" 0.05;
	setAttr ".wl[841].w[16]" 0.85;
	setAttr ".wl[841].w[17]" 0.1;
	setAttr -s 3 ".wl[842].w";
	setAttr ".wl[842].w[3]" 0.05;
	setAttr ".wl[842].w[16]" 0.85;
	setAttr ".wl[842].w[17]" 0.1;
	setAttr -s 2 ".wl[843].w";
	setAttr ".wl[843].w[3]" 0.6891942024230957;
	setAttr ".wl[843].w[16]" 0.3108057975769043;
	setAttr -s 2 ".wl[844].w";
	setAttr ".wl[844].w[3]" 0.32203638553619385;
	setAttr ".wl[844].w[16]" 0.67796361446380615;
	setAttr -s 2 ".wl[845].w";
	setAttr ".wl[845].w[3]" 0.64516165852546692;
	setAttr ".wl[845].w[16]" 0.35483834147453308;
	setAttr -s 3 ".wl[846].w";
	setAttr ".wl[846].w[3]" 0.05;
	setAttr ".wl[846].w[16]" 0.85;
	setAttr ".wl[846].w[17]" 0.1;
	setAttr -s 3 ".wl[847].w";
	setAttr ".wl[847].w[3]" 0.05;
	setAttr ".wl[847].w[16]" 0.85;
	setAttr ".wl[847].w[17]" 0.1;
	setAttr -s 2 ".wl[848].w";
	setAttr ".wl[848].w[3]" 0.69116103649139404;
	setAttr ".wl[848].w[13]" 0.30883896350860596;
	setAttr -s 3 ".wl[849].w";
	setAttr ".wl[849].w[3]" 0.16378220915794373;
	setAttr ".wl[849].w[13]" 0.18400077521800995;
	setAttr ".wl[849].w[16]" 0.65221701562404633;
	setAttr -s 4 ".wl[850].w";
	setAttr ".wl[850].w[3]" 0.022245013713836692;
	setAttr ".wl[850].w[13]" 0.047824382781982422;
	setAttr ".wl[850].w[16]" 0.82993060350418091;
	setAttr ".wl[850].w[17]" 0.1;
	setAttr -s 4 ".wl[851].w";
	setAttr ".wl[851].w[3]" 0.044550566706392528;
	setAttr ".wl[851].w[13]" 0.098089799284934998;
	setAttr ".wl[851].w[16]" 0.75735963400867246;
	setAttr ".wl[851].w[17]" 0.1;
	setAttr -s 3 ".wl[852].w";
	setAttr ".wl[852].w[3]" 0.27914233505725861;
	setAttr ".wl[852].w[10]" 0.23172588646411896;
	setAttr ".wl[852].w[13]" 0.48913177847862244;
	setAttr -s 4 ".wl[853].w";
	setAttr ".wl[853].w[3]" 0.12475822865962982;
	setAttr ".wl[853].w[10]" 0.66578043401241305;
	setAttr ".wl[853].w[11]" 0.1;
	setAttr ".wl[853].w[13]" 0.10946133732795715;
	setAttr -s 3 ".wl[854].w";
	setAttr ".wl[854].w[3]" 0.05;
	setAttr ".wl[854].w[10]" 0.85;
	setAttr ".wl[854].w[11]" 0.1;
	setAttr -s 3 ".wl[855].w";
	setAttr ".wl[855].w[3]" 0.24369772523641586;
	setAttr ".wl[855].w[7]" 0.050341464579105377;
	setAttr ".wl[855].w[10]" 0.70596081018447876;
	setAttr -s 3 ".wl[856].w";
	setAttr ".wl[856].w[3]" 0.32388848066329956;
	setAttr ".wl[856].w[7]" 0.33411866426467896;
	setAttr ".wl[856].w[10]" 0.34199285507202148;
	setAttr -s 3 ".wl[857].w";
	setAttr ".wl[857].w[3]" 0.3857419490814209;
	setAttr ".wl[857].w[7]" 0.25170731544494629;
	setAttr ".wl[857].w[10]" 0.36255073547363281;
	setAttr -s 4 ".wl[858].w";
	setAttr ".wl[858].w[3]" 0.12360629439353943;
	setAttr ".wl[858].w[7]" 0.067608008533716193;
	setAttr ".wl[858].w[10]" 0.70878569707274441;
	setAttr ".wl[858].w[11]" 0.1;
	setAttr -s 4 ".wl[859].w";
	setAttr ".wl[859].w[3]" 0.05;
	setAttr ".wl[859].w[7]" 0.10189730823040008;
	setAttr ".wl[859].w[10]" 0.74810269176959987;
	setAttr ".wl[859].w[11]" 0.1;
	setAttr -s 2 ".wl[860].w";
	setAttr ".wl[860].w[3]" 0.10928899049758911;
	setAttr ".wl[860].w[10]" 0.89071100950241089;
	setAttr -s 2 ".wl[861].w";
	setAttr ".wl[861].w[7]" 0.84284543991088867;
	setAttr ".wl[861].w[10]" 0.15715456008911133;
	setAttr -s 4 ".wl[862].w";
	setAttr ".wl[862].w[3]" 0.05;
	setAttr ".wl[862].w[7]" 0.19865526258945465;
	setAttr ".wl[862].w[10]" 0.65134473741054533;
	setAttr ".wl[862].w[11]" 0.1;
	setAttr -s 3 ".wl[863].w";
	setAttr ".wl[863].w[3]" 0.05;
	setAttr ".wl[863].w[10]" 0.85;
	setAttr ".wl[863].w[11]" 0.1;
	setAttr -s 3 ".wl[864].w";
	setAttr ".wl[864].w[3]" 0.32090741395950317;
	setAttr ".wl[864].w[10]" 0.30096489191055298;
	setAttr ".wl[864].w[13]" 0.37812769412994385;
	setAttr -s 3 ".wl[865].w";
	setAttr ".wl[865].w[3]" 0.41231945157051086;
	setAttr ".wl[865].w[10]" 0.36074665188789368;
	setAttr ".wl[865].w[13]" 0.22693389654159546;
	setAttr -s 3 ".wl[866].w";
	setAttr ".wl[866].w[10]" 0.85;
	setAttr ".wl[866].w[11]" 0.1;
	setAttr ".wl[866].w[13]" 0.050000000000000044;
	setAttr -s 4 ".wl[867].w";
	setAttr ".wl[867].w[3]" 0.1571342721581459;
	setAttr ".wl[867].w[10]" 0.65397472083568575;
	setAttr ".wl[867].w[11]" 0.1;
	setAttr ".wl[867].w[13]" 0.088891007006168365;
	setAttr -s 4 ".wl[868].w";
	setAttr ".wl[868].w[3]" 0.14795714616775513;
	setAttr ".wl[868].w[7]" 0.70204285383224485;
	setAttr ".wl[868].w[8]" 0.1;
	setAttr ".wl[868].w[10]" 0.050000000000000044;
	setAttr -s 3 ".wl[869].w";
	setAttr ".wl[869].w[3]" 0.05;
	setAttr ".wl[869].w[7]" 0.85;
	setAttr ".wl[869].w[8]" 0.1;
	setAttr -s 6 ".wl[870].w";
	setAttr ".wl[870].w[3]" 0.23489843347169714;
	setAttr ".wl[870].w[7]" 0.72521209716796875;
	setAttr ".wl[870].w[10]" 0.024315406706872638;
	setAttr ".wl[870].w[13]" 0.0058434566460109907;
	setAttr ".wl[870].w[14]" 0.0054941615940164376;
	setAttr ".wl[870].w[15]" 0.0042364444134340941;
	setAttr -s 3 ".wl[871].w";
	setAttr ".wl[871].w[3]" 0.11746875196695328;
	setAttr ".wl[871].w[7]" 0.78253124803304674;
	setAttr ".wl[871].w[8]" 0.1;
	setAttr -s 3 ".wl[872].w";
	setAttr ".wl[872].w[3]" 0.05;
	setAttr ".wl[872].w[7]" 0.85;
	setAttr ".wl[872].w[8]" 0.1;
	setAttr -s 3 ".wl[873].w";
	setAttr ".wl[873].w[3]" 0.05;
	setAttr ".wl[873].w[7]" 0.85;
	setAttr ".wl[873].w[8]" 0.1;
	setAttr -s 3 ".wl[874].w";
	setAttr ".wl[874].w[3]" 0.05;
	setAttr ".wl[874].w[7]" 0.85;
	setAttr ".wl[874].w[8]" 0.1;
	setAttr -s 4 ".wl[875].w";
	setAttr ".wl[875].w[3]" 0.018066867440938994;
	setAttr ".wl[875].w[7]" 0.85;
	setAttr ".wl[875].w[8]" 0.1;
	setAttr ".wl[875].w[10]" 0.03193313255906105;
	setAttr -s 4 ".wl[876].w";
	setAttr ".wl[876].w[3]" 0.12099500745534897;
	setAttr ".wl[876].w[7]" 0.72900499254465101;
	setAttr ".wl[876].w[8]" 0.1;
	setAttr ".wl[876].w[10]" 0.050000000000000044;
	setAttr -s 4 ".wl[877].w";
	setAttr ".wl[877].w[3]" 0.20974159240722656;
	setAttr ".wl[877].w[10]" 0.046345178037881851;
	setAttr ".wl[877].w[13]" 0.69288188219070435;
	setAttr ".wl[877].w[16]" 0.051031347364187241;
	setAttr -s 3 ".wl[878].w";
	setAttr ".wl[878].w[3]" 0.24727204442024231;
	setAttr ".wl[878].w[13]" 0.65272795557975771;
	setAttr ".wl[878].w[14]" 0.1;
	setAttr -s 3 ".wl[879].w";
	setAttr ".wl[879].w[3]" 0.05;
	setAttr ".wl[879].w[13]" 0.85;
	setAttr ".wl[879].w[14]" 0.1;
	setAttr -s 3 ".wl[880].w";
	setAttr ".wl[880].w[3]" 0.10557743906974792;
	setAttr ".wl[880].w[13]" 0.7944225609302521;
	setAttr ".wl[880].w[14]" 0.1;
	setAttr -s 3 ".wl[881].w";
	setAttr ".wl[881].w[3]" 0.05;
	setAttr ".wl[881].w[13]" 0.85;
	setAttr ".wl[881].w[14]" 0.1;
	setAttr -s 3 ".wl[882].w";
	setAttr ".wl[882].w[3]" 0.05;
	setAttr ".wl[882].w[13]" 0.85;
	setAttr ".wl[882].w[14]" 0.1;
	setAttr -s 3 ".wl[883].w";
	setAttr ".wl[883].w[3]" 0.05;
	setAttr ".wl[883].w[13]" 0.85;
	setAttr ".wl[883].w[14]" 0.1;
	setAttr -s 2 ".wl[884].w";
	setAttr ".wl[884].w[3]" 0.087135255336761475;
	setAttr ".wl[884].w[13]" 0.91286474466323853;
	setAttr -s 3 ".wl[885].w";
	setAttr ".wl[885].w[3]" 0.16141675412654877;
	setAttr ".wl[885].w[13]" 0.73858324587345126;
	setAttr ".wl[885].w[14]" 0.1;
	setAttr -s 3 ".wl[886].w";
	setAttr ".wl[886].w[3]" 0.26921927928924561;
	setAttr ".wl[886].w[13]" 0.63078072071075442;
	setAttr ".wl[886].w[14]" 0.1;
	setAttr -s 2 ".wl[887].w[17:18]"  0.9 0.1;
	setAttr -s 2 ".wl[888].w[17:18]"  0.9 0.1;
	setAttr -s 2 ".wl[889].w[17:18]"  0.9 0.1;
	setAttr -s 2 ".wl[890].w[17:18]"  0.9 0.1;
	setAttr -s 2 ".wl[891].w[17:18]"  0.9 0.1;
	setAttr -s 2 ".wl[892].w[17:18]"  0.9 0.1;
	setAttr -s 2 ".wl[893].w[17:18]"  0.9 0.1;
	setAttr -s 2 ".wl[894].w[17:18]"  0.9 0.1;
	setAttr -s 2 ".wl[895].w[11:12]"  0.9 0.1;
	setAttr -s 2 ".wl[896].w[11:12]"  0.9 0.1;
	setAttr -s 2 ".wl[897].w[11:12]"  0.9 0.1;
	setAttr -s 2 ".wl[898].w[11:12]"  0.9 0.1;
	setAttr -s 2 ".wl[899].w[11:12]"  0.9 0.1;
	setAttr -s 2 ".wl[900].w[11:12]"  0.9 0.1;
	setAttr -s 2 ".wl[901].w[11:12]"  0.9 0.1;
	setAttr -s 2 ".wl[902].w[11:12]"  0.9 0.1;
	setAttr -s 2 ".wl[903].w[8:9]"  0.9 0.1;
	setAttr -s 2 ".wl[904].w[8:9]"  0.9 0.1;
	setAttr -s 2 ".wl[905].w[8:9]"  0.9 0.1;
	setAttr -s 2 ".wl[906].w[8:9]"  0.9 0.1;
	setAttr -s 2 ".wl[907].w[8:9]"  0.9 0.1;
	setAttr -s 2 ".wl[908].w[8:9]"  0.9 0.1;
	setAttr -s 2 ".wl[909].w[8:9]"  0.9 0.1;
	setAttr -s 2 ".wl[910].w[8:9]"  0.9 0.1;
	setAttr -s 2 ".wl[911].w[14:15]"  0.9 0.1;
	setAttr -s 2 ".wl[912].w[14:15]"  0.9 0.1;
	setAttr -s 2 ".wl[913].w[14:15]"  0.9 0.1;
	setAttr -s 2 ".wl[914].w[14:15]"  0.9 0.1;
	setAttr -s 2 ".wl[915].w[14:15]"  0.9 0.1;
	setAttr -s 2 ".wl[916].w[14:15]"  0.9 0.1;
	setAttr -s 2 ".wl[917].w[14:15]"  0.9 0.1;
	setAttr -s 2 ".wl[918].w[14:15]"  0.9 0.1;
	setAttr -s 2 ".wl[919].w";
	setAttr ".wl[919].w[3]" 0.49999999999999994;
	setAttr ".wl[919].w[19]" 0.5;
	setAttr -s 2 ".wl[920].w";
	setAttr ".wl[920].w[3]" 0.49999999999999994;
	setAttr ".wl[920].w[19]" 0.5;
	setAttr -s 3 ".wl[921].w";
	setAttr ".wl[921].w[2]" 0.090192876756191254;
	setAttr ".wl[921].w[3]" 0.19999999999999993;
	setAttr ".wl[921].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[922].w";
	setAttr ".wl[922].w[2]" 0.090192876756191254;
	setAttr ".wl[922].w[3]" 0.19999999999999993;
	setAttr ".wl[922].w[19]" 0.70980712324380879;
	setAttr ".wl[923].w[1]"  1;
	setAttr ".wl[924].w[1]"  1;
	setAttr ".wl[925].w[1]"  1;
	setAttr ".wl[926].w[1]"  1;
	setAttr -s 3 ".wl[927].w";
	setAttr ".wl[927].w[1]" 0.5;
	setAttr ".wl[927].w[2]" 0.47562149167060852;
	setAttr ".wl[927].w[19]" 0.024378508329391479;
	setAttr -s 3 ".wl[928].w";
	setAttr ".wl[928].w[1]" 0.5;
	setAttr ".wl[928].w[2]" 0.47562149167060852;
	setAttr ".wl[928].w[19]" 0.024378508329391479;
	setAttr -s 2 ".wl[929].w";
	setAttr ".wl[929].w[2]" 0.81091690063476563;
	setAttr ".wl[929].w[19]" 0.18908309936523438;
	setAttr -s 2 ".wl[930].w";
	setAttr ".wl[930].w[2]" 0.81091690063476563;
	setAttr ".wl[930].w[19]" 0.18908309936523438;
	setAttr -s 2 ".wl[931].w";
	setAttr ".wl[931].w[3]" 0.49999999999999994;
	setAttr ".wl[931].w[19]" 0.5;
	setAttr -s 2 ".wl[932].w";
	setAttr ".wl[932].w[3]" 0.49999999999999994;
	setAttr ".wl[932].w[19]" 0.5;
	setAttr -s 3 ".wl[933].w";
	setAttr ".wl[933].w[2]" 0.090192876756191254;
	setAttr ".wl[933].w[3]" 0.19999999999999993;
	setAttr ".wl[933].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[934].w";
	setAttr ".wl[934].w[2]" 0.090192876756191254;
	setAttr ".wl[934].w[3]" 0.19999999999999993;
	setAttr ".wl[934].w[19]" 0.70980712324380879;
	setAttr ".wl[935].w[1]"  1;
	setAttr ".wl[936].w[1]"  1;
	setAttr ".wl[937].w[1]"  1;
	setAttr ".wl[938].w[1]"  1;
	setAttr -s 3 ".wl[939].w";
	setAttr ".wl[939].w[1]" 0.5;
	setAttr ".wl[939].w[2]" 0.47562149167060852;
	setAttr ".wl[939].w[19]" 0.024378508329391479;
	setAttr -s 3 ".wl[940].w";
	setAttr ".wl[940].w[1]" 0.5;
	setAttr ".wl[940].w[2]" 0.47562149167060852;
	setAttr ".wl[940].w[19]" 0.024378508329391479;
	setAttr -s 2 ".wl[941].w";
	setAttr ".wl[941].w[2]" 0.81091690063476563;
	setAttr ".wl[941].w[19]" 0.18908309936523438;
	setAttr -s 2 ".wl[942].w";
	setAttr ".wl[942].w[2]" 0.81091690063476563;
	setAttr ".wl[942].w[19]" 0.18908309936523438;
	setAttr -s 2 ".wl[943].w";
	setAttr ".wl[943].w[3]" 0.49999999999999994;
	setAttr ".wl[943].w[19]" 0.5;
	setAttr -s 2 ".wl[944].w";
	setAttr ".wl[944].w[3]" 0.49999999999999994;
	setAttr ".wl[944].w[19]" 0.5;
	setAttr -s 2 ".wl[945].w";
	setAttr ".wl[945].w[3]" 0.9;
	setAttr ".wl[945].w[19]" 0.099999999999999978;
	setAttr -s 2 ".wl[946].w";
	setAttr ".wl[946].w[3]" 0.85130980610847473;
	setAttr ".wl[946].w[19]" 0.14869019389152527;
	setAttr -s 3 ".wl[947].w";
	setAttr ".wl[947].w[3]" 0.78374836035072803;
	setAttr ".wl[947].w[13]" 0.01645183376967907;
	setAttr ".wl[947].w[16]" 0.1997998058795929;
	setAttr -s 2 ".wl[948].w";
	setAttr ".wl[948].w[3]" 0.85245531797409058;
	setAttr ".wl[948].w[16]" 0.14754468202590942;
	setAttr -s 2 ".wl[949].w";
	setAttr ".wl[949].w[3]" 0.49999999999999994;
	setAttr ".wl[949].w[19]" 0.5;
	setAttr -s 2 ".wl[950].w";
	setAttr ".wl[950].w[3]" 0.9;
	setAttr ".wl[950].w[19]" 0.099999999999999978;
	setAttr -s 2 ".wl[951].w";
	setAttr ".wl[951].w[3]" 0.9;
	setAttr ".wl[951].w[19]" 0.099999999999999978;
	setAttr -s 2 ".wl[952].w";
	setAttr ".wl[952].w[3]" 0.49999999999999994;
	setAttr ".wl[952].w[19]" 0.5;
	setAttr -s 3 ".wl[953].w";
	setAttr ".wl[953].w[3]" 0.82959122583270073;
	setAttr ".wl[953].w[7]" 0.031586799770593643;
	setAttr ".wl[953].w[10]" 0.13882197439670563;
	setAttr -s 2 ".wl[954].w";
	setAttr ".wl[954].w[3]" 0.83199350535869598;
	setAttr ".wl[954].w[10]" 0.16800649464130402;
	setAttr -s 2 ".wl[955].w";
	setAttr ".wl[955].w[3]" 0.49999999999999994;
	setAttr ".wl[955].w[19]" 0.5;
	setAttr -s 2 ".wl[956].w";
	setAttr ".wl[956].w[3]" 0.49999999999999994;
	setAttr ".wl[956].w[19]" 0.5;
	setAttr -s 3 ".wl[957].w";
	setAttr ".wl[957].w[2]" 0.090192876756191254;
	setAttr ".wl[957].w[3]" 0.19999999999999993;
	setAttr ".wl[957].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[958].w";
	setAttr ".wl[958].w[2]" 0.090192876756191254;
	setAttr ".wl[958].w[3]" 0.19999999999999993;
	setAttr ".wl[958].w[19]" 0.70980712324380879;
	setAttr ".wl[959].w[1]"  1;
	setAttr ".wl[960].w[1]"  1;
	setAttr ".wl[961].w[1]"  1;
	setAttr ".wl[962].w[1]"  1;
	setAttr -s 3 ".wl[963].w";
	setAttr ".wl[963].w[1]" 0.5;
	setAttr ".wl[963].w[2]" 0.47562149167060852;
	setAttr ".wl[963].w[19]" 0.024378508329391479;
	setAttr -s 2 ".wl[964].w";
	setAttr ".wl[964].w[2]" 0.81091690063476563;
	setAttr ".wl[964].w[19]" 0.18908309936523438;
	setAttr -s 2 ".wl[965].w";
	setAttr ".wl[965].w[2]" 0.81091690063476563;
	setAttr ".wl[965].w[19]" 0.18908309936523438;
	setAttr -s 3 ".wl[966].w";
	setAttr ".wl[966].w[1]" 0.5;
	setAttr ".wl[966].w[2]" 0.47562149167060852;
	setAttr ".wl[966].w[19]" 0.024378508329391479;
	setAttr -s 2 ".wl[967].w";
	setAttr ".wl[967].w[3]" 0.49999999999999994;
	setAttr ".wl[967].w[19]" 0.5;
	setAttr -s 2 ".wl[968].w";
	setAttr ".wl[968].w[3]" 0.49999999999999994;
	setAttr ".wl[968].w[19]" 0.5;
	setAttr -s 2 ".wl[969].w";
	setAttr ".wl[969].w[3]" 0.9;
	setAttr ".wl[969].w[19]" 0.099999999999999978;
	setAttr -s 2 ".wl[970].w";
	setAttr ".wl[970].w[3]" 0.9;
	setAttr ".wl[970].w[19]" 0.099999999999999978;
	setAttr -s 3 ".wl[971].w";
	setAttr ".wl[971].w[3]" 0.74791475385427475;
	setAttr ".wl[971].w[10]" 0.10295959562063217;
	setAttr ".wl[971].w[13]" 0.14912565052509308;
	setAttr -s 4 ".wl[972].w";
	setAttr ".wl[972].w[3]" 0.83010358549654484;
	setAttr ".wl[972].w[10]" 0.027419215068221092;
	setAttr ".wl[972].w[13]" 0.098786905407905579;
	setAttr ".wl[972].w[16]" 0.043690294027328491;
	setAttr -s 2 ".wl[973].w";
	setAttr ".wl[973].w[3]" 0.96924444474279881;
	setAttr ".wl[973].w[19]" 0.030755555257201195;
	setAttr ".wl[974].w[3]"  1;
	setAttr ".wl[975].w[3]"  1;
	setAttr -s 2 ".wl[976].w";
	setAttr ".wl[976].w[3]" 0.96823529526591301;
	setAttr ".wl[976].w[19]" 0.03176470473408699;
	setAttr ".wl[977].w[3]"  1;
	setAttr ".wl[978].w[3]"  1;
	setAttr ".wl[979].w[3]"  1;
	setAttr ".wl[980].w[3]"  1;
	setAttr -s 2 ".wl[981].w[3:4]"  0.97928766161203384 0.020712338387966156;
	setAttr ".wl[982].w[3]"  1;
	setAttr ".wl[983].w[3]"  1;
	setAttr -s 2 ".wl[984].w[3:4]"  0.96501210331916809 0.034987896680831909;
	setAttr ".wl[985].w[3]"  1;
	setAttr ".wl[986].w[3]"  1;
	setAttr ".wl[987].w[3]"  1;
	setAttr ".wl[988].w[3]"  1;
	setAttr ".wl[989].w[3]"  1;
	setAttr -s 2 ".wl[990].w";
	setAttr ".wl[990].w[3]" 0.98000000044703484;
	setAttr ".wl[990].w[19]" 0.019999999552965164;
	setAttr -s 2 ".wl[991].w";
	setAttr ".wl[991].w[3]" 0.95212229341268539;
	setAttr ".wl[991].w[19]" 0.047877706587314606;
	setAttr ".wl[992].w[3]"  1;
	setAttr ".wl[993].w[3]"  1;
	setAttr ".wl[994].w[3]"  1;
	setAttr ".wl[995].w[3]"  1;
	setAttr -s 2 ".wl[996].w";
	setAttr ".wl[996].w[3]" 0.98000000044703484;
	setAttr ".wl[996].w[19]" 0.019999999552965164;
	setAttr ".wl[997].w[3]"  1;
	setAttr ".wl[998].w[3]"  1;
	setAttr -s 2 ".wl[999].w";
	setAttr ".wl[999].w[3]" 0.98000000044703484;
	setAttr ".wl[999].w[19]" 0.019999999552965164;
	setAttr ".wl[1000].w[3]"  1;
	setAttr ".wl[1001].w[3]"  1;
	setAttr ".wl[1002].w[3]"  1;
	setAttr ".wl[1003].w[3]"  1;
	setAttr -s 2 ".wl[1004].w";
	setAttr ".wl[1004].w[3]" 0.98000000044703484;
	setAttr ".wl[1004].w[19]" 0.019999999552965164;
	setAttr ".wl[1005].w[3]"  1;
	setAttr ".wl[1006].w[3]"  1;
	setAttr -s 2 ".wl[1007].w";
	setAttr ".wl[1007].w[3]" 0.98000000044703484;
	setAttr ".wl[1007].w[19]" 0.019999999552965164;
	setAttr -s 2 ".wl[1008].w[3:4]"  0.46342939138412476 0.53657060861587524;
	setAttr -s 3 ".wl[1009].w";
	setAttr ".wl[1009].w[3]" 0.78484119832173649;
	setAttr ".wl[1009].w[4]" 0.19532820582389832;
	setAttr ".wl[1009].w[19]" 0.019830595854365196;
	setAttr -s 3 ".wl[1010].w";
	setAttr ".wl[1010].w[3]" 0.82292434599501374;
	setAttr ".wl[1010].w[4]" 0.16195741295814514;
	setAttr ".wl[1010].w[19]" 0.015118241046841117;
	setAttr -s 2 ".wl[1011].w[3:4]"  0.64930152893066406 0.35069847106933594;
	setAttr -s 2 ".wl[1012].w[3:4]"  0.5551394522190094 0.4448605477809906;
	setAttr -s 2 ".wl[1013].w[3:4]"  0.38705116510391235 0.61294883489608765;
	setAttr -s 2 ".wl[1014].w[3:4]"  0.1858823299407959 0.8141176700592041;
	setAttr -s 2 ".wl[1015].w[3:4]"  0.3069949746131897 0.6930050253868103;
	setAttr -s 2 ".wl[1016].w[3:4]"  0.94031943008303642 0.059680569916963577;
	setAttr -s 2 ".wl[1017].w[3:4]"  0.89314740896224976 0.10685259103775024;
	setAttr -s 2 ".wl[1018].w[3:4]"  0.98869677819311619 0.011303221806883812;
	setAttr -s 2 ".wl[1019].w[3:4]"  0.26759183406829834 0.73240816593170166;
	setAttr -s 2 ".wl[1020].w[3:4]"  0.42599856853485107 0.57400143146514893;
	setAttr -s 3 ".wl[1021].w";
	setAttr ".wl[1021].w[2]" 0.21914107799530036;
	setAttr ".wl[1021].w[3]" 0.049999999999999975;
	setAttr ".wl[1021].w[19]" 0.73085892200469971;
	setAttr -s 2 ".wl[1022].w";
	setAttr ".wl[1022].w[2]" 0.51333251595497131;
	setAttr ".wl[1022].w[19]" 0.48666748404502869;
	setAttr -s 2 ".wl[1023].w";
	setAttr ".wl[1023].w[2]" 0.51333251595497131;
	setAttr ".wl[1023].w[19]" 0.48666748404502869;
	setAttr -s 3 ".wl[1024].w";
	setAttr ".wl[1024].w[2]" 0.21914107799530036;
	setAttr ".wl[1024].w[3]" 0.049999999999999975;
	setAttr ".wl[1024].w[19]" 0.73085892200469971;
	setAttr -s 3 ".wl[1025].w";
	setAttr ".wl[1025].w[2]" 0.21914107799530036;
	setAttr ".wl[1025].w[3]" 0.049999999999999975;
	setAttr ".wl[1025].w[19]" 0.73085892200469971;
	setAttr -s 2 ".wl[1026].w";
	setAttr ".wl[1026].w[2]" 0.51333251595497131;
	setAttr ".wl[1026].w[19]" 0.48666748404502869;
	setAttr -s 2 ".wl[1027].w";
	setAttr ".wl[1027].w[2]" 0.51333251595497131;
	setAttr ".wl[1027].w[19]" 0.48666748404502869;
	setAttr -s 3 ".wl[1028].w";
	setAttr ".wl[1028].w[2]" 0.21914107799530036;
	setAttr ".wl[1028].w[3]" 0.049999999999999975;
	setAttr ".wl[1028].w[19]" 0.73085892200469971;
	setAttr -s 3 ".wl[1029].w";
	setAttr ".wl[1029].w[2]" 0.21914107799530036;
	setAttr ".wl[1029].w[3]" 0.049999999999999975;
	setAttr ".wl[1029].w[19]" 0.73085892200469971;
	setAttr -s 2 ".wl[1030].w";
	setAttr ".wl[1030].w[2]" 0.51333251595497131;
	setAttr ".wl[1030].w[19]" 0.48666748404502869;
	setAttr -s 2 ".wl[1031].w";
	setAttr ".wl[1031].w[2]" 0.51333251595497131;
	setAttr ".wl[1031].w[19]" 0.48666748404502869;
	setAttr -s 3 ".wl[1032].w";
	setAttr ".wl[1032].w[2]" 0.21914107799530036;
	setAttr ".wl[1032].w[3]" 0.049999999999999975;
	setAttr ".wl[1032].w[19]" 0.73085892200469971;
	setAttr -s 2 ".wl[1033].w";
	setAttr ".wl[1033].w[2]" 0.51333251595497131;
	setAttr ".wl[1033].w[19]" 0.48666748404502869;
	setAttr -s 2 ".wl[1034].w";
	setAttr ".wl[1034].w[2]" 0.81091690063476563;
	setAttr ".wl[1034].w[19]" 0.18908309936523438;
	setAttr -s 2 ".wl[1035].w";
	setAttr ".wl[1035].w[2]" 0.81091690063476563;
	setAttr ".wl[1035].w[19]" 0.18908309936523438;
	setAttr -s 2 ".wl[1036].w";
	setAttr ".wl[1036].w[2]" 0.51333251595497131;
	setAttr ".wl[1036].w[19]" 0.48666748404502869;
	setAttr -s 2 ".wl[1037].w";
	setAttr ".wl[1037].w[2]" 0.81091690063476563;
	setAttr ".wl[1037].w[19]" 0.18908309936523438;
	setAttr -s 3 ".wl[1038].w";
	setAttr ".wl[1038].w[2]" 0.21914107799530036;
	setAttr ".wl[1038].w[3]" 0.049999999999999975;
	setAttr ".wl[1038].w[19]" 0.73085892200469971;
	setAttr -s 2 ".wl[1039].w";
	setAttr ".wl[1039].w[2]" 0.51333251595497131;
	setAttr ".wl[1039].w[19]" 0.48666748404502869;
	setAttr -s 2 ".wl[1040].w";
	setAttr ".wl[1040].w[2]" 0.51333251595497131;
	setAttr ".wl[1040].w[19]" 0.48666748404502869;
	setAttr -s 3 ".wl[1041].w";
	setAttr ".wl[1041].w[2]" 0.21914107799530036;
	setAttr ".wl[1041].w[3]" 0.049999999999999975;
	setAttr ".wl[1041].w[19]" 0.73085892200469971;
	setAttr -s 2 ".wl[1042].w";
	setAttr ".wl[1042].w[2]" 0.81091690063476563;
	setAttr ".wl[1042].w[19]" 0.18908309936523438;
	setAttr -s 2 ".wl[1043].w";
	setAttr ".wl[1043].w[2]" 0.51333251595497131;
	setAttr ".wl[1043].w[19]" 0.48666748404502869;
	setAttr -s 2 ".wl[1044].w";
	setAttr ".wl[1044].w[2]" 0.51333251595497131;
	setAttr ".wl[1044].w[19]" 0.48666748404502869;
	setAttr -s 2 ".wl[1045].w";
	setAttr ".wl[1045].w[2]" 0.81091690063476563;
	setAttr ".wl[1045].w[19]" 0.18908309936523438;
	setAttr -s 3 ".wl[1046].w";
	setAttr ".wl[1046].w[2]" 0.21914107799530036;
	setAttr ".wl[1046].w[3]" 0.049999999999999975;
	setAttr ".wl[1046].w[19]" 0.73085892200469971;
	setAttr -s 2 ".wl[1047].w";
	setAttr ".wl[1047].w[2]" 0.51333251595497131;
	setAttr ".wl[1047].w[19]" 0.48666748404502869;
	setAttr -s 2 ".wl[1048].w";
	setAttr ".wl[1048].w[2]" 0.51333251595497131;
	setAttr ".wl[1048].w[19]" 0.48666748404502869;
	setAttr -s 3 ".wl[1049].w";
	setAttr ".wl[1049].w[2]" 0.21914107799530036;
	setAttr ".wl[1049].w[3]" 0.049999999999999975;
	setAttr ".wl[1049].w[19]" 0.73085892200469971;
	setAttr -s 2 ".wl[1050].w";
	setAttr ".wl[1050].w[2]" 0.51333251595497131;
	setAttr ".wl[1050].w[19]" 0.48666748404502869;
	setAttr -s 2 ".wl[1051].w";
	setAttr ".wl[1051].w[2]" 0.51333251595497131;
	setAttr ".wl[1051].w[19]" 0.48666748404502869;
	setAttr -s 2 ".wl[1052].w";
	setAttr ".wl[1052].w[2]" 0.81091690063476563;
	setAttr ".wl[1052].w[19]" 0.18908309936523438;
	setAttr -s 2 ".wl[1053].w";
	setAttr ".wl[1053].w[2]" 0.81091690063476563;
	setAttr ".wl[1053].w[19]" 0.18908309936523438;
	setAttr -s 3 ".wl[1054].w";
	setAttr ".wl[1054].w[2]" 0.21914107799530036;
	setAttr ".wl[1054].w[3]" 0.049999999999999975;
	setAttr ".wl[1054].w[19]" 0.73085892200469971;
	setAttr -s 2 ".wl[1055].w";
	setAttr ".wl[1055].w[2]" 0.51333251595497131;
	setAttr ".wl[1055].w[19]" 0.48666748404502869;
	setAttr -s 2 ".wl[1056].w";
	setAttr ".wl[1056].w[2]" 0.51333251595497131;
	setAttr ".wl[1056].w[19]" 0.48666748404502869;
	setAttr -s 3 ".wl[1057].w";
	setAttr ".wl[1057].w[2]" 0.21914107799530036;
	setAttr ".wl[1057].w[3]" 0.049999999999999975;
	setAttr ".wl[1057].w[19]" 0.73085892200469971;
	setAttr -s 2 ".wl[1058].w";
	setAttr ".wl[1058].w[2]" 0.81091690063476563;
	setAttr ".wl[1058].w[19]" 0.18908309936523438;
	setAttr -s 3 ".wl[1059].w";
	setAttr ".wl[1059].w[1]" 0.5;
	setAttr ".wl[1059].w[2]" 0.47562149167060852;
	setAttr ".wl[1059].w[19]" 0.024378508329391479;
	setAttr -s 3 ".wl[1060].w";
	setAttr ".wl[1060].w[1]" 0.5;
	setAttr ".wl[1060].w[2]" 0.47562149167060852;
	setAttr ".wl[1060].w[19]" 0.024378508329391479;
	setAttr -s 3 ".wl[1061].w";
	setAttr ".wl[1061].w[1]" 0.5;
	setAttr ".wl[1061].w[2]" 0.47562149167060852;
	setAttr ".wl[1061].w[19]" 0.024378508329391479;
	setAttr -s 3 ".wl[1062].w";
	setAttr ".wl[1062].w[1]" 0.5;
	setAttr ".wl[1062].w[2]" 0.47562149167060852;
	setAttr ".wl[1062].w[19]" 0.024378508329391479;
	setAttr -s 3 ".wl[1063].w";
	setAttr ".wl[1063].w[1]" 0.5;
	setAttr ".wl[1063].w[2]" 0.47562149167060852;
	setAttr ".wl[1063].w[19]" 0.024378508329391479;
	setAttr -s 3 ".wl[1064].w";
	setAttr ".wl[1064].w[1]" 0.5;
	setAttr ".wl[1064].w[2]" 0.47562149167060852;
	setAttr ".wl[1064].w[19]" 0.024378508329391479;
	setAttr -s 3 ".wl[1065].w";
	setAttr ".wl[1065].w[1]" 0.5;
	setAttr ".wl[1065].w[2]" 0.47562149167060852;
	setAttr ".wl[1065].w[19]" 0.024378508329391479;
	setAttr -s 2 ".wl[1066].w[5:6]"  0.9 0.1;
	setAttr -s 2 ".wl[1067].w[5:6]"  0.5 0.5;
	setAttr -s 2 ".wl[1068].w[5:6]"  0.5 0.5;
	setAttr -s 2 ".wl[1069].w[5:6]"  0.9 0.1;
	setAttr -s 2 ".wl[1070].w[5:6]"  0.9 0.1;
	setAttr -s 2 ".wl[1071].w[5:6]"  0.9 0.1;
	setAttr -s 2 ".wl[1072].w[5:6]"  0.5 0.5;
	setAttr -s 2 ".wl[1073].w[5:6]"  0.5 0.5;
	setAttr -s 2 ".wl[1074].w[5:6]"  0.9 0.1;
	setAttr -s 2 ".wl[1075].w[5:6]"  0.9 0.1;
	setAttr -s 2 ".wl[1076].w[5:6]"  0.5 0.5;
	setAttr -s 2 ".wl[1077].w[5:6]"  0.5 0.5;
	setAttr -s 2 ".wl[1078].w[5:6]"  0.9 0.1;
	setAttr -s 2 ".wl[1079].w[5:6]"  0.5 0.5;
	setAttr -s 2 ".wl[1080].w[5:6]"  0.5 0.5;
	setAttr -s 2 ".wl[1081].w[5:6]"  0.9 0.1;
	setAttr -s 2 ".wl[1082].w[17:18]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1083].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[1084].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[1085].w[17:18]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1086].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[1087].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[1088].w[17:18]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1089].w[17:18]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1090].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[1091].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[1092].w[17:18]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1093].w[17:18]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1094].w[17:18]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1095].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[1096].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[1097].w[17:18]"  0.099999999999999978 0.9;
	setAttr ".wl[1098].w[15]"  1;
	setAttr -s 2 ".wl[1099].w[14:15]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1100].w[14:15]"  0.099999999999999978 0.9;
	setAttr ".wl[1101].w[15]"  1;
	setAttr ".wl[1102].w[15]"  1;
	setAttr -s 2 ".wl[1103].w[14:15]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1104].w[14:15]"  0.099999999999999978 0.9;
	setAttr ".wl[1105].w[15]"  1;
	setAttr -s 2 ".wl[1106].w[14:15]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1107].w[14:15]"  0.099999999999999978 0.9;
	setAttr ".wl[1108].w[15]"  1;
	setAttr ".wl[1109].w[15]"  1;
	setAttr -s 2 ".wl[1110].w[14:15]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1111].w[14:15]"  0.099999999999999978 0.9;
	setAttr ".wl[1112].w[15]"  1;
	setAttr ".wl[1113].w[15]"  1;
	setAttr ".wl[1114].w[12]"  1;
	setAttr -s 2 ".wl[1115].w[11:12]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1116].w[11:12]"  0.099999999999999978 0.9;
	setAttr ".wl[1117].w[12]"  1;
	setAttr ".wl[1118].w[12]"  1;
	setAttr -s 2 ".wl[1119].w[11:12]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1120].w[11:12]"  0.099999999999999978 0.9;
	setAttr ".wl[1121].w[12]"  1;
	setAttr ".wl[1122].w[12]"  1;
	setAttr -s 2 ".wl[1123].w[11:12]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1124].w[11:12]"  0.099999999999999978 0.9;
	setAttr ".wl[1125].w[12]"  1;
	setAttr -s 2 ".wl[1126].w[11:12]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1127].w[11:12]"  0.099999999999999978 0.9;
	setAttr ".wl[1128].w[12]"  1;
	setAttr ".wl[1129].w[12]"  1;
	setAttr ".wl[1130].w[9]"  1;
	setAttr -s 2 ".wl[1131].w[8:9]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1132].w[8:9]"  0.099999999999999978 0.9;
	setAttr ".wl[1133].w[9]"  1;
	setAttr ".wl[1134].w[9]"  1;
	setAttr -s 2 ".wl[1135].w[8:9]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1136].w[8:9]"  0.099999999999999978 0.9;
	setAttr ".wl[1137].w[9]"  1;
	setAttr -s 2 ".wl[1138].w[8:9]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1139].w[8:9]"  0.099999999999999978 0.9;
	setAttr ".wl[1140].w[9]"  1;
	setAttr ".wl[1141].w[9]"  1;
	setAttr -s 2 ".wl[1142].w[8:9]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1143].w[8:9]"  0.099999999999999978 0.9;
	setAttr ".wl[1144].w[9]"  1;
	setAttr ".wl[1145].w[9]"  1;
	setAttr -s 3 ".wl[1146].w";
	setAttr ".wl[1146].w[3]" 0.028700497001409531;
	setAttr ".wl[1146].w[7]" 0.47129950299859047;
	setAttr ".wl[1146].w[8]" 0.5;
	setAttr -s 2 ".wl[1147].w[7:8]"  0.5 0.5;
	setAttr -s 2 ".wl[1148].w[7:8]"  0.5 0.5;
	setAttr -s 2 ".wl[1149].w[7:8]"  0.5 0.5;
	setAttr -s 2 ".wl[1150].w[7:8]"  0.5 0.5;
	setAttr -s 2 ".wl[1151].w[7:8]"  0.5 0.5;
	setAttr -s 3 ".wl[1152].w";
	setAttr ".wl[1152].w[3]" 0.044815141707658768;
	setAttr ".wl[1152].w[7]" 0.45518485829234123;
	setAttr ".wl[1152].w[8]" 0.5;
	setAttr -s 3 ".wl[1153].w";
	setAttr ".wl[1153].w[3]" 0.035232625901699066;
	setAttr ".wl[1153].w[7]" 0.46476737409830093;
	setAttr ".wl[1153].w[8]" 0.5;
	setAttr -s 3 ".wl[1154].w";
	setAttr ".wl[1154].w[3]" 0.029694408178329468;
	setAttr ".wl[1154].w[10]" 0.47030559182167053;
	setAttr ".wl[1154].w[11]" 0.5;
	setAttr -s 2 ".wl[1155].w[10:11]"  0.5 0.5;
	setAttr -s 2 ".wl[1156].w[10:11]"  0.5 0.5;
	setAttr -s 2 ".wl[1157].w[10:11]"  0.5 0.5;
	setAttr -s 2 ".wl[1158].w[10:11]"  0.5 0.5;
	setAttr -s 2 ".wl[1159].w[10:11]"  0.5 0.5;
	setAttr -s 3 ".wl[1160].w";
	setAttr ".wl[1160].w[3]" 0.061153113842010498;
	setAttr ".wl[1160].w[10]" 0.4388468861579895;
	setAttr ".wl[1160].w[11]" 0.5;
	setAttr -s 4 ".wl[1161].w";
	setAttr ".wl[1161].w[3]" 0.05473676323890686;
	setAttr ".wl[1161].w[10]" 0.42776390910148621;
	setAttr ".wl[1161].w[11]" 0.5;
	setAttr ".wl[1161].w[13]" 0.017499327659606934;
	setAttr -s 3 ".wl[1162].w";
	setAttr ".wl[1162].w[3]" 0.03220377117395401;
	setAttr ".wl[1162].w[13]" 0.46779622882604599;
	setAttr ".wl[1162].w[14]" 0.5;
	setAttr -s 3 ".wl[1163].w";
	setAttr ".wl[1163].w[3]" 0.012894709594547749;
	setAttr ".wl[1163].w[13]" 0.48710529040545225;
	setAttr ".wl[1163].w[14]" 0.5;
	setAttr -s 2 ".wl[1164].w[13:14]"  0.5 0.5;
	setAttr -s 3 ".wl[1165].w";
	setAttr ".wl[1165].w[3]" 0.016005672514438629;
	setAttr ".wl[1165].w[13]" 0.48399432748556137;
	setAttr ".wl[1165].w[14]" 0.5;
	setAttr -s 3 ".wl[1166].w";
	setAttr ".wl[1166].w[3]" 0.048376012593507767;
	setAttr ".wl[1166].w[13]" 0.45162398740649223;
	setAttr ".wl[1166].w[14]" 0.5;
	setAttr -s 2 ".wl[1167].w[13:14]"  0.5 0.5;
	setAttr -s 3 ".wl[1168].w";
	setAttr ".wl[1168].w[3]" 0.05720510333776474;
	setAttr ".wl[1168].w[13]" 0.44279489666223526;
	setAttr ".wl[1168].w[14]" 0.5;
	setAttr -s 3 ".wl[1169].w";
	setAttr ".wl[1169].w[3]" 0.080109335482120514;
	setAttr ".wl[1169].w[13]" 0.41989066451787949;
	setAttr ".wl[1169].w[14]" 0.5;
	setAttr -s 2 ".wl[1170].w[16:17]"  0.5 0.5;
	setAttr -s 2 ".wl[1171].w[16:17]"  0.5 0.5;
	setAttr -s 2 ".wl[1172].w[16:17]"  0.5 0.5;
	setAttr -s 2 ".wl[1173].w[16:17]"  0.5 0.5;
	setAttr -s 3 ".wl[1174].w";
	setAttr ".wl[1174].w[13]" 0.0071751815266907215;
	setAttr ".wl[1174].w[16]" 0.49282481847330928;
	setAttr ".wl[1174].w[17]" 0.5;
	setAttr -s 2 ".wl[1175].w[16:17]"  0.5 0.5;
	setAttr -s 3 ".wl[1176].w";
	setAttr ".wl[1176].w[13]" 0.013524916023015976;
	setAttr ".wl[1176].w[16]" 0.48647508397698402;
	setAttr ".wl[1176].w[17]" 0.5;
	setAttr -s 3 ".wl[1177].w";
	setAttr ".wl[1177].w[13]" 0.026471830904483795;
	setAttr ".wl[1177].w[16]" 0.4735281690955162;
	setAttr ".wl[1177].w[17]" 0.5;
	setAttr -s 2 ".wl[1178].w[4:5]"  0.19999999999999996 0.8;
	setAttr -s 2 ".wl[1179].w[4:5]"  0.13411766290664673 0.86588233709335327;
	setAttr -s 2 ".wl[1180].w[4:5]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1181].w[4:5]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1182].w[4:5]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1183].w[4:5]"  0.19999999999999996 0.8;
	setAttr -s 2 ".wl[1184].w[4:5]"  0.19999999999999996 0.8;
	setAttr -s 2 ".wl[1185].w[4:5]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1186].w[4:5]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1187].w[4:5]"  0.19999999999999996 0.8;
	setAttr -s 2 ".wl[1188].w[4:5]"  0.19999999999999996 0.8;
	setAttr -s 2 ".wl[1189].w[4:5]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1190].w[4:5]"  0.18666666746139526 0.81333333253860474;
	setAttr -s 2 ".wl[1191].w[4:5]"  0.19999999999999996 0.8;
	setAttr -s 2 ".wl[1192].w[4:5]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1193].w[4:5]"  0.099999999999999978 0.9;
	setAttr ".wl[1194].w[6]"  1;
	setAttr -s 2 ".wl[1195].w[5:6]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1196].w[5:6]"  0.099999999999999978 0.9;
	setAttr ".wl[1197].w[6]"  1;
	setAttr -s 2 ".wl[1198].w[5:6]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1199].w[5:6]"  0.099999999999999978 0.9;
	setAttr ".wl[1200].w[6]"  1;
	setAttr ".wl[1201].w[6]"  1;
	setAttr ".wl[1202].w[6]"  1;
	setAttr -s 2 ".wl[1203].w[5:6]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1204].w[5:6]"  0.099999999999999978 0.9;
	setAttr ".wl[1205].w[6]"  1;
	setAttr ".wl[1206].w[6]"  1;
	setAttr -s 2 ".wl[1207].w[5:6]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1208].w[5:6]"  0.099999999999999978 0.9;
	setAttr ".wl[1209].w[6]"  1;
	setAttr -s 2 ".wl[1210].w[3:4]"  0.83565340936183929 0.16434659063816071;
	setAttr -s 3 ".wl[1211].w";
	setAttr ".wl[1211].w[3]" 0.81961923069029263;
	setAttr ".wl[1211].w[4]" 0.16404551267623901;
	setAttr ".wl[1211].w[19]" 0.016335256633468354;
	setAttr -s 3 ".wl[1212].w";
	setAttr ".wl[1212].w[3]" 0.51246094517409801;
	setAttr ".wl[1212].w[4]" 0.47951152920722961;
	setAttr ".wl[1212].w[7]" 0.0080275256186723709;
	setAttr -s 2 ".wl[1213].w[3:4]"  0.23500111699104309 0.76499888300895691;
	setAttr -s 2 ".wl[1214].w[3:4]"  0.92341490089893341 0.076585099101066589;
	setAttr -s 2 ".wl[1215].w[3:4]"  0.79843440651893616 0.20156559348106384;
	setAttr -s 3 ".wl[1216].w";
	setAttr ".wl[1216].w[3]" 0.89435236593004663;
	setAttr ".wl[1216].w[4]" 0.080692104995250702;
	setAttr ".wl[1216].w[19]" 0.024955529074702665;
	setAttr -s 3 ".wl[1217].w";
	setAttr ".wl[1217].w[3]" 0.96278693702495899;
	setAttr ".wl[1217].w[4]" 0.012209798209369183;
	setAttr ".wl[1217].w[19]" 0.025003264765671829;
	setAttr -s 2 ".wl[1218].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1219].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1220].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1221].w[1:2]"  0.9 0.1;
	setAttr -s 3 ".wl[1222].w";
	setAttr ".wl[1222].w[1]" 0.5;
	setAttr ".wl[1222].w[2]" 0.47562149167060852;
	setAttr ".wl[1222].w[19]" 0.024378508329391479;
	setAttr -s 2 ".wl[1223].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1224].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1225].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1226].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1227].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1228].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1229].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1230].w[1:2]"  0.9 0.1;
	setAttr -s 3 ".wl[1231].w";
	setAttr ".wl[1231].w[1]" 0.5;
	setAttr ".wl[1231].w[2]" 0.47562149167060852;
	setAttr ".wl[1231].w[19]" 0.024378508329391479;
	setAttr -s 2 ".wl[1232].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1233].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1234].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1235].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1236].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1237].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1238].w[1:2]"  0.9 0.1;
	setAttr -s 2 ".wl[1239].w[1:2]"  0.9 0.1;
	setAttr ".wl[1240].w[1]"  1;
	setAttr ".wl[1241].w[1]"  1;
	setAttr ".wl[1242].w[1]"  1;
	setAttr ".wl[1243].w[1]"  1;
	setAttr ".wl[1244].w[1]"  1;
	setAttr ".wl[1245].w[1]"  1;
	setAttr ".wl[1246].w[1]"  1;
	setAttr ".wl[1247].w[1]"  1;
	setAttr ".wl[1248].w[1]"  1;
	setAttr ".wl[1249].w[1]"  1;
	setAttr ".wl[1250].w[1]"  1;
	setAttr ".wl[1251].w[1]"  1;
	setAttr ".wl[1252].w[1]"  1;
	setAttr ".wl[1253].w[1]"  1;
	setAttr ".wl[1254].w[1]"  1;
	setAttr ".wl[1255].w[1]"  1;
	setAttr ".wl[1256].w[1]"  1;
	setAttr ".wl[1257].w[1]"  1;
	setAttr ".wl[1258].w[1]"  1;
	setAttr ".wl[1259].w[1]"  1;
	setAttr ".wl[1260].w[1]"  1;
	setAttr ".wl[1261].w[1]"  1;
	setAttr ".wl[1262].w[1]"  1;
	setAttr ".wl[1263].w[1]"  1;
	setAttr ".wl[1264].w[1]"  1;
	setAttr ".wl[1265].w[1]"  1;
	setAttr ".wl[1266].w[1]"  1;
	setAttr ".wl[1267].w[1]"  1;
	setAttr ".wl[1268].w[1]"  1;
	setAttr ".wl[1269].w[1]"  1;
	setAttr ".wl[1270].w[1]"  1;
	setAttr -s 3 ".wl[1271].w";
	setAttr ".wl[1271].w[3]" 0.95427119731903076;
	setAttr ".wl[1271].w[4]" 0.024421632289886475;
	setAttr ".wl[1271].w[7]" 0.021307170391082764;
	setAttr ".wl[1272].w[3]"  1;
	setAttr ".wl[1273].w[3]"  1;
	setAttr -s 2 ".wl[1274].w[3:4]"  0.93135010451078415 0.068649895489215851;
	setAttr -s 2 ".wl[1275].w[3:4]"  0.78811013698577881 0.21188986301422119;
	setAttr -s 2 ".wl[1276].w[3:4]"  0.88738331943750381 0.11261668056249619;
	setAttr ".wl[1277].w[3]"  1;
	setAttr ".wl[1278].w[3]"  1;
	setAttr ".wl[1279].w[3]"  1;
	setAttr ".wl[1280].w[3]"  1;
	setAttr ".wl[1281].w[3]"  1;
	setAttr ".wl[1282].w[3]"  1;
	setAttr ".wl[1283].w[3]"  1;
	setAttr ".wl[1284].w[3]"  1;
	setAttr ".wl[1285].w[3]"  1;
	setAttr ".wl[1286].w[3]"  1;
	setAttr ".wl[1287].w[3]"  1;
	setAttr -s 2 ".wl[1288].w";
	setAttr ".wl[1288].w[3]" 0.90625247359275818;
	setAttr ".wl[1288].w[16]" 0.093747526407241821;
	setAttr ".wl[1289].w[3]"  1;
	setAttr -s 2 ".wl[1290].w";
	setAttr ".wl[1290].w[3]" 0.8427848219871521;
	setAttr ".wl[1290].w[16]" 0.1572151780128479;
	setAttr ".wl[1291].w[3]"  1;
	setAttr -s 3 ".wl[1292].w";
	setAttr ".wl[1292].w[3]" 0.82841348834335804;
	setAttr ".wl[1292].w[7]" 0.14659139513969421;
	setAttr ".wl[1292].w[10]" 0.024995116516947746;
	setAttr -s 2 ".wl[1293].w";
	setAttr ".wl[1293].w[3]" 0.75745697319507599;
	setAttr ".wl[1293].w[16]" 0.24254302680492401;
	setAttr ".wl[1294].w[3]"  1;
	setAttr ".wl[1295].w[3]"  1;
	setAttr -s 2 ".wl[1296].w";
	setAttr ".wl[1296].w[3]" 0.7856706976890564;
	setAttr ".wl[1296].w[16]" 0.2143293023109436;
	setAttr ".wl[1297].w[3]"  1;
	setAttr ".wl[1298].w[3]"  1;
	setAttr -s 2 ".wl[1299].w";
	setAttr ".wl[1299].w[3]" 0.81587414443492889;
	setAttr ".wl[1299].w[10]" 0.18412585556507111;
	setAttr -s 3 ".wl[1300].w";
	setAttr ".wl[1300].w[3]" 0.77663051337003708;
	setAttr ".wl[1300].w[10]" 0.12482159584760666;
	setAttr ".wl[1300].w[13]" 0.098547890782356262;
	setAttr -s 3 ".wl[1301].w";
	setAttr ".wl[1301].w[3]" 0.87049335241317749;
	setAttr ".wl[1301].w[13]" 0.089818760752677917;
	setAttr ".wl[1301].w[16]" 0.039687886834144592;
	setAttr ".wl[1302].w[3]"  1;
	setAttr ".wl[1303].w[3]"  1;
	setAttr -s 2 ".wl[1304].w";
	setAttr ".wl[1304].w[3]" 0.79855711758136749;
	setAttr ".wl[1304].w[13]" 0.20144288241863251;
	setAttr -s 2 ".wl[1305].w[3:4]"  0.16461357474327087 0.83538642525672913;
	setAttr -s 2 ".wl[1306].w[3:4]"  0.10867659002542496 0.89132340997457504;
	setAttr -s 2 ".wl[1307].w[3:4]"  0.040396552532911301 0.9596034474670887;
	setAttr -s 2 ".wl[1308].w[3:4]"  0.064417943358421326 0.93558205664157867;
	setAttr -s 3 ".wl[1309].w";
	setAttr ".wl[1309].w[3]" 0.83104602713137865;
	setAttr ".wl[1309].w[4]" 0.16295091807842255;
	setAttr ".wl[1309].w[7]" 0.0060030547901988029;
	setAttr -s 3 ".wl[1310].w";
	setAttr ".wl[1310].w[3]" 0.70929383486509323;
	setAttr ".wl[1310].w[4]" 0.23742146790027618;
	setAttr ".wl[1310].w[7]" 0.053284697234630585;
	setAttr -s 2 ".wl[1311].w[3:4]"  0.046841740608215332 0.95315825939178467;
	setAttr -s 2 ".wl[1312].w[3:4]"  0.12526321411132813 0.87473678588867188;
	setAttr -s 2 ".wl[1313].w[3:4]"  0.26555529236793518 0.73444470763206482;
	setAttr -s 2 ".wl[1314].w[3:4]"  0.14677496254444122 0.85322503745555878;
	setAttr -s 2 ".wl[1315].w[3:4]"  0.39994367957115173 0.60005632042884827;
	setAttr -s 2 ".wl[1316].w[3:4]"  0.57662034034729004 0.42337965965270996;
	setAttr -s 3 ".wl[1317].w";
	setAttr ".wl[1317].w[2]" 0.21914107799530036;
	setAttr ".wl[1317].w[3]" 0.049999999999999975;
	setAttr ".wl[1317].w[19]" 0.73085892200469971;
	setAttr -s 3 ".wl[1318].w";
	setAttr ".wl[1318].w[2]" 0.21914107799530036;
	setAttr ".wl[1318].w[3]" 0.049999999999999975;
	setAttr ".wl[1318].w[19]" 0.73085892200469971;
	setAttr -s 3 ".wl[1319].w";
	setAttr ".wl[1319].w[2]" 0.21914107799530036;
	setAttr ".wl[1319].w[3]" 0.049999999999999975;
	setAttr ".wl[1319].w[19]" 0.73085892200469971;
	setAttr -s 3 ".wl[1320].w";
	setAttr ".wl[1320].w[2]" 0.21914107799530036;
	setAttr ".wl[1320].w[3]" 0.049999999999999975;
	setAttr ".wl[1320].w[19]" 0.73085892200469971;
	setAttr -s 3 ".wl[1321].w";
	setAttr ".wl[1321].w[2]" 0.21914107799530036;
	setAttr ".wl[1321].w[3]" 0.049999999999999975;
	setAttr ".wl[1321].w[19]" 0.73085892200469971;
	setAttr -s 3 ".wl[1322].w";
	setAttr ".wl[1322].w[2]" 0.21914107799530036;
	setAttr ".wl[1322].w[3]" 0.049999999999999975;
	setAttr ".wl[1322].w[19]" 0.73085892200469971;
	setAttr -s 3 ".wl[1323].w";
	setAttr ".wl[1323].w[2]" 0.090192876756191254;
	setAttr ".wl[1323].w[3]" 0.19999999999999993;
	setAttr ".wl[1323].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[1324].w";
	setAttr ".wl[1324].w[2]" 0.090192876756191254;
	setAttr ".wl[1324].w[3]" 0.19999999999999993;
	setAttr ".wl[1324].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[1325].w";
	setAttr ".wl[1325].w[2]" 0.090192876756191254;
	setAttr ".wl[1325].w[3]" 0.19999999999999993;
	setAttr ".wl[1325].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[1326].w";
	setAttr ".wl[1326].w[2]" 0.090192876756191254;
	setAttr ".wl[1326].w[3]" 0.19999999999999993;
	setAttr ".wl[1326].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[1327].w";
	setAttr ".wl[1327].w[2]" 0.090192876756191254;
	setAttr ".wl[1327].w[3]" 0.19999999999999993;
	setAttr ".wl[1327].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[1328].w";
	setAttr ".wl[1328].w[2]" 0.090192876756191254;
	setAttr ".wl[1328].w[3]" 0.19999999999999993;
	setAttr ".wl[1328].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[1329].w";
	setAttr ".wl[1329].w[2]" 0.090192876756191254;
	setAttr ".wl[1329].w[3]" 0.19999999999999993;
	setAttr ".wl[1329].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[1330].w";
	setAttr ".wl[1330].w[2]" 0.090192876756191254;
	setAttr ".wl[1330].w[3]" 0.19999999999999993;
	setAttr ".wl[1330].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[1331].w";
	setAttr ".wl[1331].w[2]" 0.090192876756191254;
	setAttr ".wl[1331].w[3]" 0.19999999999999993;
	setAttr ".wl[1331].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[1332].w";
	setAttr ".wl[1332].w[2]" 0.090192876756191254;
	setAttr ".wl[1332].w[3]" 0.19999999999999993;
	setAttr ".wl[1332].w[19]" 0.70980712324380879;
	setAttr -s 3 ".wl[1333].w";
	setAttr ".wl[1333].w[2]" 0.090192876756191254;
	setAttr ".wl[1333].w[3]" 0.19999999999999993;
	setAttr ".wl[1333].w[19]" 0.70980712324380879;
	setAttr -s 2 ".wl[1334].w";
	setAttr ".wl[1334].w[3]" 0.94609923660755157;
	setAttr ".wl[1334].w[19]" 0.053900763392448425;
	setAttr -s 2 ".wl[1335].w";
	setAttr ".wl[1335].w[3]" 0.96818823739886284;
	setAttr ".wl[1335].w[19]" 0.031811762601137161;
	setAttr -s 2 ".wl[1336].w";
	setAttr ".wl[1336].w[3]" 0.98000000044703484;
	setAttr ".wl[1336].w[19]" 0.019999999552965164;
	setAttr -s 2 ".wl[1337].w";
	setAttr ".wl[1337].w[3]" 0.97642539627850056;
	setAttr ".wl[1337].w[19]" 0.023574603721499443;
	setAttr -s 2 ".wl[1338].w";
	setAttr ".wl[1338].w[3]" 0.98000000044703484;
	setAttr ".wl[1338].w[19]" 0.019999999552965164;
	setAttr -s 2 ".wl[1339].w";
	setAttr ".wl[1339].w[3]" 0.98000000044703484;
	setAttr ".wl[1339].w[19]" 0.019999999552965164;
	setAttr -s 2 ".wl[1340].w";
	setAttr ".wl[1340].w[3]" 0.98000000044703484;
	setAttr ".wl[1340].w[19]" 0.019999999552965164;
	setAttr -s 2 ".wl[1341].w";
	setAttr ".wl[1341].w[3]" 0.98000000044703484;
	setAttr ".wl[1341].w[19]" 0.019999999552965164;
	setAttr -s 2 ".wl[1342].w";
	setAttr ".wl[1342].w[3]" 0.98000000044703484;
	setAttr ".wl[1342].w[19]" 0.019999999552965164;
	setAttr -s 2 ".wl[1343].w";
	setAttr ".wl[1343].w[3]" 0.98000000044703484;
	setAttr ".wl[1343].w[19]" 0.019999999552965164;
	setAttr -s 2 ".wl[1344].w";
	setAttr ".wl[1344].w[3]" 0.86076201498508453;
	setAttr ".wl[1344].w[19]" 0.13923798501491547;
	setAttr -s 2 ".wl[1345].w";
	setAttr ".wl[1345].w[3]" 0.83976469933986664;
	setAttr ".wl[1345].w[19]" 0.16023530066013336;
	setAttr -s 2 ".wl[1346].w";
	setAttr ".wl[1346].w[3]" 0.82092368602752686;
	setAttr ".wl[1346].w[19]" 0.17907631397247314;
	setAttr -s 2 ".wl[1347].w";
	setAttr ".wl[1347].w[3]" 0.9;
	setAttr ".wl[1347].w[19]" 0.099999999999999978;
	setAttr -s 2 ".wl[1348].w";
	setAttr ".wl[1348].w[3]" 0.9;
	setAttr ".wl[1348].w[19]" 0.099999999999999978;
	setAttr -s 2 ".wl[1349].w";
	setAttr ".wl[1349].w[3]" 0.9;
	setAttr ".wl[1349].w[19]" 0.099999999999999978;
	setAttr -s 2 ".wl[1350].w";
	setAttr ".wl[1350].w[3]" 0.9;
	setAttr ".wl[1350].w[19]" 0.099999999999999978;
	setAttr -s 3 ".wl[1351].w";
	setAttr ".wl[1351].w[3]" 0.92170753628755731;
	setAttr ".wl[1351].w[4]" 0.029109476134181023;
	setAttr ".wl[1351].w[19]" 0.049182987578261672;
	setAttr -s 3 ".wl[1352].w";
	setAttr ".wl[1352].w[3]" 0.91962586550716685;
	setAttr ".wl[1352].w[4]" 0.00014166921027936041;
	setAttr ".wl[1352].w[19]" 0.080232465282553789;
	setAttr -s 3 ".wl[1353].w";
	setAttr ".wl[1353].w[3]" 0.9044375641441158;
	setAttr ".wl[1353].w[4]" 0.01585867628455162;
	setAttr ".wl[1353].w[19]" 0.079703759571332577;
	setAttr -s 3 ".wl[1354].w";
	setAttr ".wl[1354].w[3]" 0.90396241846713354;
	setAttr ".wl[1354].w[4]" 0.0057252277620136738;
	setAttr ".wl[1354].w[19]" 0.090312353770852782;
	setAttr -s 2 ".wl[1355].w[3:4]"  0.87919258326292038 0.12080741673707962;
	setAttr -s 2 ".wl[1356].w";
	setAttr ".wl[1356].w[3]" 0.93169999122619629;
	setAttr ".wl[1356].w[19]" 0.068300008773803711;
	setAttr ".wl[1357].w[15]"  1;
	setAttr ".wl[1358].w[15]"  1;
	setAttr ".wl[1359].w[15]"  1;
	setAttr ".wl[1360].w[15]"  1;
	setAttr ".wl[1361].w[15]"  1;
	setAttr ".wl[1362].w[15]"  1;
	setAttr ".wl[1363].w[15]"  1;
	setAttr ".wl[1364].w[15]"  1;
	setAttr ".wl[1365].w[12]"  1;
	setAttr ".wl[1366].w[12]"  1;
	setAttr ".wl[1367].w[3]"  1;
	setAttr ".wl[1368].w[3]"  1;
	setAttr -s 2 ".wl[1369].w";
	setAttr ".wl[1369].w[2]" 0.81091690063476563;
	setAttr ".wl[1369].w[19]" 0.18908309936523438;
	setAttr -s 2 ".wl[1370].w";
	setAttr ".wl[1370].w[2]" 0.51333251595497131;
	setAttr ".wl[1370].w[19]" 0.48666748404502869;
	setAttr -s 3 ".wl[1371].w";
	setAttr ".wl[1371].w[2]" 0.21914107799530036;
	setAttr ".wl[1371].w[3]" 0.049999999999999975;
	setAttr ".wl[1371].w[19]" 0.73085892200469971;
	setAttr -s 2 ".wl[1372].w";
	setAttr ".wl[1372].w[2]" 0.51333251595497131;
	setAttr ".wl[1372].w[19]" 0.48666748404502869;
	setAttr ".wl[1373].w[12]"  1;
	setAttr ".wl[1374].w[12]"  1;
	setAttr ".wl[1375].w[12]"  1;
	setAttr ".wl[1376].w[12]"  1;
	setAttr ".wl[1377].w[12]"  1;
	setAttr ".wl[1378].w[12]"  1;
	setAttr ".wl[1379].w[3]"  1;
	setAttr ".wl[1380].w[3]"  1;
	setAttr -s 3 ".wl[1381].w";
	setAttr ".wl[1381].w[3]" 0.60315264016389847;
	setAttr ".wl[1381].w[7]" 0.27698656916618347;
	setAttr ".wl[1381].w[10]" 0.11986079066991806;
	setAttr -s 3 ".wl[1382].w";
	setAttr ".wl[1382].w[2]" 0.21914107799530036;
	setAttr ".wl[1382].w[3]" 0.049999999999999975;
	setAttr ".wl[1382].w[19]" 0.73085892200469971;
	setAttr -s 3 ".wl[1383].w";
	setAttr ".wl[1383].w[2]" 0.090192876756191254;
	setAttr ".wl[1383].w[3]" 0.19999999999999993;
	setAttr ".wl[1383].w[19]" 0.70980712324380879;
	setAttr -s 2 ".wl[1384].w";
	setAttr ".wl[1384].w[3]" 0.98000000044703484;
	setAttr ".wl[1384].w[19]" 0.019999999552965164;
	setAttr ".wl[1385].w[3]"  1;
	setAttr -s 2 ".wl[1386].w";
	setAttr ".wl[1386].w[3]" 0.9;
	setAttr ".wl[1386].w[19]" 0.099999999999999978;
	setAttr -s 2 ".wl[1387].w";
	setAttr ".wl[1387].w[3]" 0.98000000044703484;
	setAttr ".wl[1387].w[19]" 0.019999999552965164;
	setAttr ".wl[1388].w[9]"  1;
	setAttr ".wl[1389].w[9]"  1;
	setAttr ".wl[1390].w[3]"  1;
	setAttr ".wl[1391].w[9]"  1;
	setAttr ".wl[1392].w[9]"  1;
	setAttr ".wl[1393].w[9]"  1;
	setAttr ".wl[1394].w[9]"  1;
	setAttr ".wl[1395].w[9]"  1;
	setAttr ".wl[1396].w[9]"  1;
	setAttr ".wl[1397].w[18]"  1;
	setAttr ".wl[1398].w[18]"  1;
	setAttr -s 2 ".wl[1399].w";
	setAttr ".wl[1399].w[3]" 0.49999999999999994;
	setAttr ".wl[1399].w[19]" 0.5;
	setAttr -s 2 ".wl[1400].w";
	setAttr ".wl[1400].w[3]" 0.84227451682090759;
	setAttr ".wl[1400].w[19]" 0.15772548317909241;
	setAttr ".wl[1401].w[18]"  1;
	setAttr ".wl[1402].w[18]"  1;
	setAttr ".wl[1403].w[18]"  1;
	setAttr ".wl[1404].w[18]"  1;
	setAttr ".wl[1405].w[18]"  1;
	setAttr ".wl[1406].w[18]"  1;
	setAttr ".wl[1407].w[18]"  1;
	setAttr ".wl[1408].w[6]"  1;
	setAttr ".wl[1409].w[6]"  1;
	setAttr -s 2 ".wl[1410].w";
	setAttr ".wl[1410].w[3]" 0.77243196964263916;
	setAttr ".wl[1410].w[19]" 0.22756803035736084;
	setAttr ".wl[1411].w[12]"  1;
	setAttr ".wl[1412].w[9]"  1;
	setAttr ".wl[1413].w[15]"  1;
	setAttr ".wl[1414].w[18]"  1;
	setAttr ".wl[1415].w[18]"  1;
	setAttr ".wl[1416].w[18]"  1;
	setAttr ".wl[1417].w[18]"  1;
	setAttr ".wl[1418].w[18]"  1;
	setAttr ".wl[1419].w[15]"  1;
	setAttr ".wl[1420].w[15]"  1;
	setAttr ".wl[1421].w[15]"  1;
	setAttr ".wl[1422].w[15]"  1;
	setAttr ".wl[1423].w[15]"  1;
	setAttr ".wl[1424].w[12]"  1;
	setAttr ".wl[1425].w[12]"  1;
	setAttr ".wl[1426].w[12]"  1;
	setAttr ".wl[1427].w[12]"  1;
	setAttr ".wl[1428].w[12]"  1;
	setAttr ".wl[1429].w[9]"  1;
	setAttr ".wl[1430].w[9]"  1;
	setAttr ".wl[1431].w[9]"  1;
	setAttr ".wl[1432].w[9]"  1;
	setAttr ".wl[1433].w[9]"  1;
	setAttr ".wl[1434].w[6]"  1;
	setAttr ".wl[1435].w[6]"  1;
	setAttr ".wl[1436].w[6]"  1;
	setAttr ".wl[1437].w[6]"  1;
	setAttr ".wl[1438].w[6]"  1;
	setAttr ".wl[1439].w[6]"  1;
	setAttr ".wl[1440].w[6]"  1;
	setAttr -s 2 ".wl[1441].w[3:4]"  0.65775084495544434 0.34224915504455566;
	setAttr -s 2 ".wl[1442].w[3:4]"  0.49611949920654297 0.50388050079345703;
	setAttr ".wl[1443].w[6]"  1;
	setAttr ".wl[1444].w[6]"  1;
	setAttr ".wl[1445].w[6]"  1;
	setAttr ".wl[1446].w[6]"  1;
	setAttr ".wl[1447].w[6]"  1;
	setAttr -s 2 ".wl[1448].w[3:4]"  0.73627352714538574 0.26372647285461426;
	setAttr -s 3 ".wl[1449].w";
	setAttr ".wl[1449].w[3]" 0.37606056011281908;
	setAttr ".wl[1449].w[4]" 0.62170711159706116;
	setAttr ".wl[1449].w[7]" 0.0022323282901197672;
	setAttr -s 2 ".wl[1450].w[3:4]"  0.83701582252979279 0.16298417747020721;
	setAttr -s 2 ".wl[1451].w[3:4]"  0.77073007822036743 0.22926992177963257;
	setAttr -s 2 ".wl[1452].w[8:9]"  0.5 0.5;
	setAttr -s 2 ".wl[1453].w[8:9]"  0.5 0.5;
	setAttr -s 2 ".wl[1454].w[8:9]"  0.5 0.5;
	setAttr -s 2 ".wl[1455].w[8:9]"  0.5 0.5;
	setAttr -s 2 ".wl[1456].w[8:9]"  0.5 0.5;
	setAttr -s 2 ".wl[1457].w[8:9]"  0.5 0.5;
	setAttr -s 2 ".wl[1458].w[8:9]"  0.5 0.5;
	setAttr -s 2 ".wl[1459].w[8:9]"  0.5 0.5;
	setAttr -s 2 ".wl[1460].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[1461].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[1462].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[1463].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[1464].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[1465].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[1466].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[1467].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[1468].w[14:15]"  0.5 0.5;
	setAttr -s 2 ".wl[1469].w[14:15]"  0.5 0.5;
	setAttr -s 2 ".wl[1470].w[14:15]"  0.5 0.5;
	setAttr -s 2 ".wl[1471].w[14:15]"  0.5 0.5;
	setAttr -s 2 ".wl[1472].w[14:15]"  0.5 0.5;
	setAttr -s 2 ".wl[1473].w[14:15]"  0.5 0.5;
	setAttr -s 2 ".wl[1474].w[14:15]"  0.5 0.5;
	setAttr -s 2 ".wl[1475].w[14:15]"  0.5 0.5;
	setAttr -s 2 ".wl[1476].w[3:4]"  0.6655290424823761 0.3344709575176239;
	setAttr -s 2 ".wl[1477].w";
	setAttr ".wl[1477].w[3]" 0.88990232348442078;
	setAttr ".wl[1477].w[19]" 0.11009767651557922;
	setAttr -s 2 ".wl[1478].w[7:8]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1479].w[7:8]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1480].w[7:8]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1481].w[7:8]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1482].w[7:8]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1483].w[7:8]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1484].w[7:8]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1485].w[7:8]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1486].w[10:11]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1487].w[10:11]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1488].w[10:11]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1489].w[10:11]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1490].w[10:11]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1491].w[10:11]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1492].w[10:11]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1493].w[10:11]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1494].w[13:14]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1495].w[13:14]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1496].w[13:14]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1497].w[13:14]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1498].w[13:14]"  0.099999999999999978 0.9;
	setAttr -s 3 ".wl[1499].w";
	setAttr ".wl[1499].w[3]" 0.009955456480383873;
	setAttr ".wl[1499].w[13]" 0.090044543519616105;
	setAttr ".wl[1499].w[14]" 0.9;
	setAttr -s 2 ".wl[1500].w[13:14]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1501].w[13:14]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1502].w[16:17]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1503].w[16:17]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1504].w[16:17]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1505].w[16:17]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1506].w[16:17]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1507].w[16:17]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1508].w[16:17]"  0.099999999999999978 0.9;
	setAttr -s 2 ".wl[1509].w[16:17]"  0.099999999999999978 0.9;
	setAttr -s 3 ".wl[1510].w";
	setAttr ".wl[1510].w[1]" 0.1;
	setAttr ".wl[1510].w[2]" 0.79256181567907336;
	setAttr ".wl[1510].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1511].w";
	setAttr ".wl[1511].w[1]" 0.1;
	setAttr ".wl[1511].w[2]" 0.79256181567907336;
	setAttr ".wl[1511].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1512].w";
	setAttr ".wl[1512].w[1]" 0.1;
	setAttr ".wl[1512].w[2]" 0.79256181567907336;
	setAttr ".wl[1512].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1513].w";
	setAttr ".wl[1513].w[1]" 0.1;
	setAttr ".wl[1513].w[2]" 0.79256181567907336;
	setAttr ".wl[1513].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1514].w";
	setAttr ".wl[1514].w[1]" 0.1;
	setAttr ".wl[1514].w[2]" 0.79256181567907336;
	setAttr ".wl[1514].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1515].w";
	setAttr ".wl[1515].w[1]" 0.1;
	setAttr ".wl[1515].w[2]" 0.79256181567907336;
	setAttr ".wl[1515].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1516].w";
	setAttr ".wl[1516].w[1]" 0.1;
	setAttr ".wl[1516].w[2]" 0.79256181567907336;
	setAttr ".wl[1516].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1517].w";
	setAttr ".wl[1517].w[1]" 0.1;
	setAttr ".wl[1517].w[2]" 0.79256181567907336;
	setAttr ".wl[1517].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1518].w";
	setAttr ".wl[1518].w[1]" 0.1;
	setAttr ".wl[1518].w[2]" 0.79256181567907336;
	setAttr ".wl[1518].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1519].w";
	setAttr ".wl[1519].w[1]" 0.1;
	setAttr ".wl[1519].w[2]" 0.79256181567907336;
	setAttr ".wl[1519].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1520].w";
	setAttr ".wl[1520].w[1]" 0.1;
	setAttr ".wl[1520].w[2]" 0.79256181567907336;
	setAttr ".wl[1520].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1521].w";
	setAttr ".wl[1521].w[1]" 0.1;
	setAttr ".wl[1521].w[2]" 0.79256181567907336;
	setAttr ".wl[1521].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1522].w";
	setAttr ".wl[1522].w[1]" 0.1;
	setAttr ".wl[1522].w[2]" 0.79256181567907336;
	setAttr ".wl[1522].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1523].w";
	setAttr ".wl[1523].w[1]" 0.1;
	setAttr ".wl[1523].w[2]" 0.79256181567907336;
	setAttr ".wl[1523].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1524].w";
	setAttr ".wl[1524].w[1]" 0.1;
	setAttr ".wl[1524].w[2]" 0.79256181567907336;
	setAttr ".wl[1524].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1525].w";
	setAttr ".wl[1525].w[1]" 0.1;
	setAttr ".wl[1525].w[2]" 0.79256181567907336;
	setAttr ".wl[1525].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1526].w";
	setAttr ".wl[1526].w[1]" 0.1;
	setAttr ".wl[1526].w[2]" 0.79256181567907336;
	setAttr ".wl[1526].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1527].w";
	setAttr ".wl[1527].w[1]" 0.1;
	setAttr ".wl[1527].w[2]" 0.79256181567907336;
	setAttr ".wl[1527].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1528].w";
	setAttr ".wl[1528].w[1]" 0.1;
	setAttr ".wl[1528].w[2]" 0.79256181567907336;
	setAttr ".wl[1528].w[19]" 0.10743818432092667;
	setAttr -s 3 ".wl[1529].w";
	setAttr ".wl[1529].w[1]" 0.1;
	setAttr ".wl[1529].w[2]" 0.79256181567907336;
	setAttr ".wl[1529].w[19]" 0.10743818432092667;
	setAttr -s 39 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503121e-016 0 -0.99999999999999989 0
		 0 1 0 0 0.99999999999999989 0 2.2204460492503121e-016 0 41.523906109351927 2.8421709430404007e-014 26.7250125623254 1;
	setAttr ".pm[2]" -type "matrix" -0.014887868470063651 0 -0.99988916954451412 0 0 1 0 0
		 0.99988916954451412 0 -0.014887868470063651 0 6.9210615337550205 3.8038525739842106e-014 26.624923560943159 1;
	setAttr ".pm[3]" -type "matrix" -0.014887868470063651 0 -0.99988916954451412 0 0 1 0 0
		 0.99988916954451412 0 -0.014887868470063651 0 -11.878938466244993 4.3236516637961738e-014 26.624923560943152 1;
	setAttr ".pm[4]" -type "matrix" -0.66086492395986696 0.72378877069983949 -0.19846250952845987 0
		 -0.087700984046190075 0.18815000046008465 0.97821680353805007 0 0.74536305896982091 0.6638745308683599 -0.060864748315144504 0
		 3.2328148323340562 -26.79464858891799 5.1238996842869273 1;
	setAttr ".pm[5]" -type "matrix" -0.49757170812289198 0.84441401432433216 -0.19846250952845987 0
		 -0.047056644723792639 0.20218199094661896 0.97821680353805029 0 0.86614552325980765 0.49607198565281618 -0.060864748315144525 0
		 -5.6838704493941252 -26.18539212229588 5.12389968428693 1;
	setAttr ".pm[6]" -type "matrix" -0.41475842482542097 0.88802482023195795 -0.19846250952845981 0
		 -0.027556923343500319 0.20574863608695049 0.97821680353804996 0 0.90951419175963133 0.41119267673483423 -0.06086474831514449 0
		 -10.743797747970133 -25.275839850961457 5.1238996842869247 1;
	setAttr ".pm[7]" -type "matrix" -0.25463337527241464 0 -0.96703766431167348 0 0 1 0 0
		 0.96703766431167348 0 -0.25463337527241464 0 -12.698484532043128 -0.57830351913555489 27.668377155662551 1;
	setAttr ".pm[8]" -type "matrix" -0.2544845008329587 -0.0087060116254336298 -0.96703766431167348 0
		 -0.034190379073912328 0.99941533807460747 0 0 0.96647227420893 0.033063384321566892 -0.25463337527241464 0
		 -15.169826140274552 -1.0976073545861438 27.668377155662547 1;
	setAttr ".pm[9]" -type "matrix" -0.24989544258453616 -0.048891958215039069 -0.96703766431167348 0
		 -0.19200922959424679 0.98139311988143851 0 0 0.94904411042169268 0.18568015691310433 -0.25463337527241464 0
		 -17.865539574802064 -3.9766549764697521 27.668377155662519 1;
	setAttr ".pm[10]" -type "matrix" -0.01486803309596125 0.00076825740433560542 -0.99988916954451412 0
		 0.051602914539472737 0.9986676820699828 -1.0842021724855042e-019 0 0.99855699927589969 -0.051597195364949923 -0.014887868470063657 0
		 -19.214631736116825 0.37146519157109831 26.130369510448528 1;
	setAttr ".pm[11]" -type "matrix" -0.01487774364131063 -0.00054897333756439572 -0.99988916954451379 0
		 -0.036873870740345711 0.99931992757906318 0 0 0.99920917249631325 0.03686978399245603 -0.014887868470063651 0
		 -21.662469272524213 -1.5494008005241502 26.130369510448549 1;
	setAttr ".pm[12]" -type "matrix" -0.01436603115248025 -0.0039071442906402276 -0.99988916954451412 0
		 -0.26243812527607063 0.96494882268521454 0 0 0.96484187696767565 0.2624090391391094 -0.014887868470063658 0
		 -24.156267113652127 -7.2128539334496109 26.130369510448531 1;
	setAttr ".pm[13]" -type "matrix" 0.086414023637122486 0 -0.99625931188563666 0 0 1 0 0
		 0.99625931188563666 0 0.086414023637122486 0 -21.512583109505631 -0.72103683400003826 26.285347013081932 1;
	setAttr ".pm[14]" -type "matrix" 0.08630681822148889 0.0043030930317666961 -0.99625931188563677 0
		 -0.049796235039773505 0.99875939794119761 0 0 0.99502335053221036 0.049609962855220187 0.0864140236371225 0
		 -23.946888129804631 -1.9158785466523447 26.285347013081942 1;
	setAttr ".pm[15]" -type "matrix" 0.083746872125951499 0.021303635611714056 -0.99625931188563666 0
		 -0.24652984220679497 0.96913520052750768 3.469446951953613e-018 0 0.96550996800168332 0.24560765095621617 0.086414023637122486 0
		 -26.132330806947767 -7.2322911105635708 26.285347013081932 1;
	setAttr ".pm[16]" -type "matrix" 0.20562833242843631 0 -0.97863015940788389 0 0 1 0 0
		 0.97863015940788389 0 0.20562833242843631 0 -23.551157788037056 -0.73493479247061499 25.546924046236697 1;
	setAttr ".pm[17]" -type "matrix" 0.20557983486700104 0.0044657130848398448 -0.97863015940788389 0
		 -0.02171740164451327 0.99976414942015746 0 0 0.97839934891733615 0.021253304233295061 0.20562833242843637 0
		 -25.729123488470503 -1.2940096941677006 25.546924046236679 1;
	setAttr ".pm[18]" -type "matrix" 0.20024196500722163 0.046756459953103263 -0.978630159407884 0
		 -0.22738335423390957 0.97380532459898606 0 0 0.95299526004455171 0.22252420820063024 0.20562833242843637 0
		 -27.649341347827111 -7.1483754196557028 25.546924046236651 1;
	setAttr ".pm[19]" -type "matrix" -0.014887868470063651 0 -0.99988916954451412 0 0 1 0 0
		 0.99988916954451412 0 -0.014887868470063651 0 -11.878938466244993 4.323651663796175e-014 26.624923560943149 1;
	setAttr ".pm[20]" -type "matrix" 4.4408920985006242e-016 -1.2246467991473532e-016 -0.99999999999999989 0
		 -1.7407388005640706e-032 -1 1.2246467991473532e-016 0 -0.99999999999999989 -3.951857311301612e-032 -2.2204460492503121e-016 0
		 -41.523899999999976 -4.1865000245748253e-014 -26.724999999999991 1;
	setAttr ".pm[21]" -type "matrix" -0.014887868470062406 -1.2246467991473532e-016 -0.99988916954451412 0
		 1.8232380467989101e-018 -1 1.2245110709847943e-016 0 -0.99988916954451412 -3.9288970865499584e-032 0.014887868470062628 0
		 -6.9210652369455969 -4.7195557673379307e-014 -26.624910942086572 1;
	setAttr ".pm[22]" -type "matrix" -0.014887868470062406 -1.2246467991473532e-016 -0.99988916954451412 0
		 1.8232380467989101e-018 -1 1.2245110709847943e-016 0 -0.99988916954451412 -3.9288970865499584e-032 0.014887868470062628 0
		 11.878928496511689 -5.0022901914347016e-014 -26.624902775123157 1;
	setAttr ".pm[23]" -type "matrix" -0.66086492395986685 0.72378877069983938 -0.19846250952845951 0
		 0.08770098404619027 -0.18815000046008415 -0.97821680353805007 0 -0.7453630589698208 -0.66387453086836012 0.060864748315144213 0
		 -3.232821988718213 26.794613649053101 -5.1238940303675724 1;
	setAttr ".pm[24]" -type "matrix" -0.49757170812289186 0.84441400708040204 -0.19846254034977481 0
		 0.04705664472379293 -0.20218202665176793 -0.97821679615835788 0 -0.86614552325980732 -0.49607198343123809 0.060864766421891439 0
		 5.6838927741116398 26.185426254186545 -5.1239066284438808 1;
	setAttr ".pm[25]" -type "matrix" -0.41475842551638514 0.88802480462345601 -0.19846257792501149 0
		 0.027556919937759036 -0.20574871302085443 -0.97821678745245733 0 -0.90951419154772539 -0.41119267194799874 0.060864783820799503 0
		 10.743757575410603 25.27582725536401 -5.1239000651818891 1;
	setAttr ".pm[26]" -type "matrix" -0.25463337527241431 -1.2246467991473532e-016 -0.96703766431167371 0
		 3.1183594798344943e-017 -1 1.1842795802542241e-016 0 -0.96703766431167371 -3.6977854932234906e-032 0.25463337527241453 0
		 12.698480847160448 0.5783039999999906 -27.668371177651519 1;
	setAttr ".pm[27]" -type "matrix" -0.25448450083295837 -0.0087060116254337617 -0.96703766431167371 0
		 0.034190379073912446 -0.99941533807460747 1.1796119636642283e-016 0 -0.96647227420893023 -0.033063384321566983 0.25463337527241453 0
		 15.169832299276596 1.0976080464336919 -27.668356648609297 1;
	setAttr ".pm[28]" -type "matrix" -0.24989544258453575 -0.048891958215038965 -0.96703766431167359 0
		 0.19200922959424624 -0.98139311988143851 1.2490009027033004e-016 0 -0.94904411042169268 -0.18568015691310377 0.25463337527241447 0
		 17.865579335086295 3.9766624050272199 -27.668367690887489 1;
	setAttr ".pm[29]" -type "matrix" -0.014868033095960008 0.00076825740433542945 -0.99988916954451379 0
		 -0.051602914539473459 -0.99866768206998235 1.224064252736134e-016 0 -0.99855699927589947 0.051597195364950631 0.014887868470062626 0
		 19.214634735511424 -0.37146506372860272 -26.13036524624226 1;
	setAttr ".pm[30]" -type "matrix" -0.014877743641309378 -0.00054897333756446164 -0.99988916954451412 0
		 0.036873870740345011 -0.99931992757906341 1.224064252736134e-016 0 -0.99920917249631325 -0.036869783992455323 0.01488786847006263 0
		 21.662480200415601 1.5494011998517263 -26.130335443983881 1;
	setAttr ".pm[31]" -type "matrix" -0.014366031152479012 -0.0039071706458347353 -0.99988916944152828 0
		 0.26243812527607036 -0.9649488226852142 2.5434233128038959e-008 0 -0.96484187696767532 -0.26240903874669286 0.014887875386670517 0
		 24.156245774436854 7.2128469681738547 -26.130407250898102 1;
	setAttr ".pm[32]" -type "matrix" 0.086414023637121917 -1.2246467991473535e-016 -0.99625931188563677 0
		 -1.0582665744864472e-017 -1 1.22006577742149e-016 0 -0.99625931188563677 -4.1600086798764283e-032 -0.086414023637121695 0
		 21.512593504173815 0.72103699999995363 -26.285335478440743 1;
	setAttr ".pm[33]" -type "matrix" 0.086306818221488321 0.0043030930317664411 -0.99625931188563677 0
		 0.049796235039772305 -0.99875939794119761 1.2229800505636483e-016 0 -0.99502335053221036 -0.049609962855219 -0.086414023637121695 0
		 23.946847438029355 1.91587668404427 -26.285304722537443 1;
	setAttr ".pm[34]" -type "matrix" 0.083746872125950986 0.021303635611713796 -0.99625931188563677 0
		 0.24652984220679497 -0.96913520052750779 1.2143064331837642e-016 0 -0.96550996800168365 -0.24560765095621612 -0.086414023637121709 0
		 26.13232196134383 7.2322893707837759 -26.285351017086981 1;
	setAttr ".pm[35]" -type "matrix" 0.20562833242843623 -1.2246467991473532e-016 -0.97863015940788389 0
		 -2.5182207912249206e-017 -1 1.1984762922679293e-016 0 -0.97863015940788389 -4.3140830754274067e-032 -0.20562833242843609 0
		 23.551160924943183 0.73493499999993872 -25.546948264272704 1;
	setAttr ".pm[36]" -type "matrix" 0.20557983486700096 0.0044657130848395786 -0.97863015940788389 0
		 0.021717401644512545 -0.99976414942015746 1.1969591984239964e-016 0 -0.97839934891733604 -0.021253304233294381 -0.20562833242843609 0
		 25.729143606918324 1.2940103387694477 -25.546962748670417 1;
	setAttr ".pm[37]" -type "matrix" 0.20024196500722161 0.046756459953103083 -0.97863015940788389 0
		 0.22738335423390937 -0.97380532459898594 1.2490009027033006e-016 0 -0.9529952600445516 -0.22252420820063004 -0.20562833242843609 0
		 27.649338927936345 7.1483747849201995 -25.546943451737899 1;
	setAttr ".pm[38]" -type "matrix" -0.014887868470062406 -1.2246467991473532e-016 -0.99988916954451412 0
		 1.8232380467989101e-018 -1 1.2245110709847943e-016 0 -0.99988916954451412 -3.9288970865499584e-032 0.014887868470062628 0
		 11.878928496511689 -5.0022901914347022e-014 -26.624902775123161 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 39 ".ma";
	setAttr -s 39 ".dpf[0:38]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 39 ".lw";
	setAttr -s 39 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 6;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr -s 39 ".ifcl";
	setAttr -s 39 ".ifcl";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1567]";
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 41 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 41 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 2.0530571632093597e-005
		 40.798999999999999 -6.1231618876680312 0 0 0 2.0530571632093597e-005 40.798999999999999
		 -6.1231618876680312 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 26.725012562325393 -2.8421709430404007e-014
		 -41.523906109351955 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.70710678118654746 0 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 -6.9388939039072284e-018 0 0 34.999999999999972
		 -9.6168163094381052e-015 1.0658141036401504e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.0074441404972599989 0 0.99997229200226212 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 18.800000000000011 -5.1979908981196251e-015
		 7.1054273576010019e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -3.1918911957973216e-016 -3.8857805861880508e-016
		 -1.7208456881689926e-015 0 3.4741743260183835 0.3126494155548003 3.8468022457558217 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.58472700028331381 -0.24170437529536312 -0.25302042389822038 0.73188386728573307 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 -2.4424906541753444e-015 0 3.4000000000000132
		 -2.4868995751603507e-014 -2.6645352591003757e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0.10356765945180116 0.99462241072463053 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 -1.7902346272080645e-015 0 2.5999999999999934
		 -7.1054273576010019e-015 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.047747042923787016 0.99885945952973487 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 -9.4368957093138306e-016 0 0 7.093918884762985
		 0.57830351913559808 2.816914661061773 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.12099290209344876 0 0.99265337235260787 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 -1.3877787807814457e-017 0 2.4999999999999947
		 4.4408920985006262e-016 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.017097688811538427 0.99985382383491628 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 -3.3306690738754696e-016 0 3.0999999999999837
		 -8.8817841970012523e-016 2.4868995751603507e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.079422273211237598 0.99684106181374732 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 8.3266726846886741e-017 0 7.329261958026148
		 0.62056071755032938 0.49455405049462442 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.025810055501852235 0.99966686502804092 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5 -3.8857805861880479e-016
		 -1.7763568394002505e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.044239594702187357 0.99902094986070544 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 -3.0531133177191805e-016 0 3.5000000000000107
		 0 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.11408396663848216 0.9934711110827682 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 -1.8041124150158791e-016 0 0 6.8620812765427246
		 0.72103683400008156 -1.7032404925560414 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.05068345196195622 0 0.99871476793788316 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 -2.9143354396410359e-016 0 2.5000000000000071
		 7.7715611723760958e-016 -7.1054273576010019e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.024905843278258372 0.99968980137370556 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 -4.4408920985006262e-016 0 3.0999999999999837
		 -1.7763568394002505e-015 1.0658141036401504e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.099475757425305886 0.99503998597275567 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 -4.9960036108132044e-016 0 0 5.4694810422867057
		 0.73493479247065829 -3.4804696757711291 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.11076928767792198 0 0.99384614750338784 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 2.4286128663675302e-017 0 2.1999999999999922
		 -1.1102230246251563e-016 2.1316282072803009e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.010859341136610452 0.99994103561664016 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 -8.3266726846886741e-017 0 2.8000000000000043
		 1.1102230246251563e-015 2.4868995751603507e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.10364885990762282 0.99461395216428061 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 18.800000000000011 -5.1979908981196369e-015
		 1.0658141036401504e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 -2.4492935982947064e-016 -2.2204460492503131e-016
		 5.1844524757094446e-032 0 -26.724999999999987 -3.8592131675026955e-014 -41.523900000000005 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710678118654768 4.3297802811774658e-017 0.70710678118654746 4.3297802811774683e-017 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 -3.8857805861880479e-016 0 0 -34.999989999999968
		 5.3305574276310476e-015 -2.8421709430404007e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.0074441404972594863 0 0.99997229200226212 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -18.799993733457285 2.827344240967709e-015
		 -8.1669634184322604e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 3.5386971131143933e-013 -3.9995784462123163e-013
		 1.0741407763241312e-013 0 -3.4741557478319809 -0.31264900000004703 -3.8468035691735025 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.58472700028331392 -0.24170437529536351 -0.25302042389822088 0.73188386728573285 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 2.6403584046522739e-013 3.9952679105589548e-021
		 1.0944023465242478e-013 0 -3.4000219317483897 -7.3121922365970704e-005 1.1642301922520916e-005 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.8151979092372641e-008 1.8901222903729097e-009 0.10356765945180112 0.99462241072463042 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 2.1963400773647389e-013 4.6483293881225542e-021
		 1.0985656828665919e-013 0 -2.5999388666450267 5.0286103796537418e-005 -7.6327649889407212e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2.1132506776762293e-008 1.0101668443249527e-009 0.047747042923786585 0.99885945952973476 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 -6.9388939039072274e-016 0 0 -7.0939238415354797
		 -0.57830400000004034 -2.8168987930868674 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.12099290209344916 0 0.99265337235260764 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 2.9656832545299494e-014 0 -2.5000098639383204
		 -2.2204460492503131e-016 -1.4529042225319699e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.017097688811538472 0.99985382383491628 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 5.9313665090598988e-014 0 -3.10003427593292
		 -3.4723937947234157e-007 1.1042278199369092e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.079422273211237265 0.99684106181374754 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 5.4474480482014087e-013 0 -7.3292749165608608
		 -0.62056100000002201 -0.49453752888089397 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.0258100555018526 0.99966686502804092 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -2.1073424300462742e-008 2.2977476531929915e-020
		 1.0903361546965576e-012 0 -2.5000079210195096 6.9602233848664596e-007 -2.9802258382005675e-005 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.0526396180732988e-008 -4.661398750198492e-010 -0.04423959470218735 0.99902094986070533 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 8.1721189044082953e-015 4.3088245018629828e-020
		 1.6347201370336959e-012 0 -3.4999668656073375 1.6753391522961181e-006 7.1616797157503242e-005 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.3093013396381008e-008 -1.5035192134394035e-009 -0.11408396663848236 0.99347111108276798 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 -3.7470027081099043e-016 0 0 -6.8621027552684861
		 -0.72103700000000348 1.7032508553165826 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.050683451961955325 0 0.99871476793788339 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 9.3570984294188975e-014 0 -2.4999488712879874
		 -5.5511151231257827e-016 -3.0755903303258947e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.024905843278257775 0.99968980137370556 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 9.3564045400285067e-014 0 -3.1000316768183502
		 -1.9083774125405739e-006 4.6294549534309226e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.099475757425306455 0.99503998597275556 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 -2.4980018054066022e-016 0 0 -5.4694887397351817
		 -0.73493499999998868 3.4805147759936155 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.11076928767792134 0 0.99384614750338796 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 3.9600267509598571e-014 0 -2.2000169907957989
		 2.2204460492503131e-016 1.4484397713232512e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.010859341136610103 0.99994103561664016 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 3.9801495432811862e-014 0 -2.7999773827850838
		 7.667632344610098e-007 -1.9296932517676169e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.10364885990762308 0.99461395216428061 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -18.799993733457285 2.827344240967709e-015
		 -8.1669634148795467e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 41 ".m";
	setAttr -s 41 ".p";
	setAttr -s 41 ".g[0:40]" yes yes no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 26 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "bone_l_arm01_upper01_parentConstraint1.cty" "bone_l_arm01_upper01.ty"
		;
connectAttr "bone_l_arm01_upper01_parentConstraint1.ctz" "bone_l_arm01_upper01.tz"
		;
connectAttr "bone_l_arm01_upper01_parentConstraint1.ctx" "bone_l_arm01_upper01.tx"
		;
connectAttr "ctrl_l_arm01_base01_ik_squish_mltDiv.ox" "bone_l_arm01_upper01.sy";
connectAttr "ctrl_l_arm01_base01_ik_squish_mltDiv.ox" "bone_l_arm01_upper01.sz";
connectAttr "bone_root01.s" "bone_l_arm01_upper01.is";
connectAttr "bone_l_arm01_upper01_parentConstraint1.crx" "bone_l_arm01_upper01.rx"
		;
connectAttr "bone_l_arm01_upper01_parentConstraint1.cry" "bone_l_arm01_upper01.ry"
		;
connectAttr "bone_l_arm01_upper01_parentConstraint1.crz" "bone_l_arm01_upper01.rz"
		;
connectAttr "bone_l_arm01_mid01_parentConstraint1.cty" "bone_l_arm01_mid01.ty";
connectAttr "bone_l_arm01_mid01_parentConstraint1.ctz" "bone_l_arm01_mid01.tz";
connectAttr "bone_l_arm01_mid01_parentConstraint1.ctx" "bone_l_arm01_mid01.tx";
connectAttr "bone_l_arm01_mid01_parentConstraint1.crx" "bone_l_arm01_mid01.rx";
connectAttr "bone_l_arm01_mid01_parentConstraint1.crz" "bone_l_arm01_mid01.rz";
connectAttr "bone_l_arm01_mid01_parentConstraint1.cry" "bone_l_arm01_mid01.ry";
connectAttr "ctrl_l_arm01_base01_ik_squish_mltDiv.ox" "bone_l_arm01_mid01.sy";
connectAttr "ctrl_l_arm01_base01_ik_squish_mltDiv.ox" "bone_l_arm01_mid01.sz";
connectAttr "bone_l_arm01_upper01.s" "bone_l_arm01_mid01.is";
connectAttr "bone_l_arm01_base01_parentConstraint1.cty" "bone_l_arm01_base01.ty"
		;
connectAttr "bone_l_arm01_base01_parentConstraint1.ctz" "bone_l_arm01_base01.tz"
		;
connectAttr "bone_l_arm01_base01_parentConstraint1.ctx" "bone_l_arm01_base01.tx"
		;
connectAttr "bone_l_arm01_mid01.s" "bone_l_arm01_base01.is";
connectAttr "bone_l_arm01_base01_parentConstraint1.crx" "bone_l_arm01_base01.rx"
		;
connectAttr "bone_l_arm01_base01_parentConstraint1.cry" "bone_l_arm01_base01.ry"
		;
connectAttr "bone_l_arm01_base01_parentConstraint1.crz" "bone_l_arm01_base01.rz"
		;
connectAttr "bone_l_arm01_base01.s" "bone_l_arm01_finger01_01.is";
connectAttr "bone_l_arm01_finger01_01_parentConstraint1.ctx" "bone_l_arm01_finger01_01.tx"
		;
connectAttr "bone_l_arm01_finger01_01_parentConstraint1.cty" "bone_l_arm01_finger01_01.ty"
		;
connectAttr "bone_l_arm01_finger01_01_parentConstraint1.ctz" "bone_l_arm01_finger01_01.tz"
		;
connectAttr "bone_l_arm01_finger01_01_parentConstraint1.crx" "bone_l_arm01_finger01_01.rx"
		;
connectAttr "bone_l_arm01_finger01_01_parentConstraint1.cry" "bone_l_arm01_finger01_01.ry"
		;
connectAttr "bone_l_arm01_finger01_01_parentConstraint1.crz" "bone_l_arm01_finger01_01.rz"
		;
connectAttr "bone_l_arm01_finger01_02_parentConstraint1.cty" "bone_l_arm01_finger01_02.ty"
		;
connectAttr "bone_l_arm01_finger01_02_parentConstraint1.ctz" "bone_l_arm01_finger01_02.tz"
		;
connectAttr "bone_l_arm01_finger01_02_parentConstraint1.ctx" "bone_l_arm01_finger01_02.tx"
		;
connectAttr "bone_l_arm01_finger01_02_parentConstraint1.crx" "bone_l_arm01_finger01_02.rx"
		;
connectAttr "bone_l_arm01_finger01_02_parentConstraint1.cry" "bone_l_arm01_finger01_02.ry"
		;
connectAttr "bone_l_arm01_finger01_02_parentConstraint1.crz" "bone_l_arm01_finger01_02.rz"
		;
connectAttr "bone_l_arm01_finger01_01.s" "bone_l_arm01_finger01_02.is";
connectAttr "bone_l_arm01_finger01_03_parentConstraint1.cty" "bone_l_arm01_finger01_03.ty"
		;
connectAttr "bone_l_arm01_finger01_03_parentConstraint1.ctz" "bone_l_arm01_finger01_03.tz"
		;
connectAttr "bone_l_arm01_finger01_03_parentConstraint1.ctx" "bone_l_arm01_finger01_03.tx"
		;
connectAttr "bone_l_arm01_finger01_03_parentConstraint1.crx" "bone_l_arm01_finger01_03.rx"
		;
connectAttr "bone_l_arm01_finger01_03_parentConstraint1.cry" "bone_l_arm01_finger01_03.ry"
		;
connectAttr "bone_l_arm01_finger01_03_parentConstraint1.crz" "bone_l_arm01_finger01_03.rz"
		;
connectAttr "bone_l_arm01_finger01_02.s" "bone_l_arm01_finger01_03.is";
connectAttr "bone_l_arm01_finger01_03.ro" "bone_l_arm01_finger01_03_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger01_03.pim" "bone_l_arm01_finger01_03_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger01_03.rp" "bone_l_arm01_finger01_03_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger01_03.rpt" "bone_l_arm01_finger01_03_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger01_03.jo" "bone_l_arm01_finger01_03_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger01_03.t" "bone_l_arm01_finger01_03_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger01_03.rp" "bone_l_arm01_finger01_03_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger01_03.rpt" "bone_l_arm01_finger01_03_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger01_03.r" "bone_l_arm01_finger01_03_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger01_03.ro" "bone_l_arm01_finger01_03_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger01_03.s" "bone_l_arm01_finger01_03_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger01_03.pm" "bone_l_arm01_finger01_03_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger01_03_parentConstraint1.w0" "bone_l_arm01_finger01_03_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_finger01_02.ro" "bone_l_arm01_finger01_02_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger01_02.pim" "bone_l_arm01_finger01_02_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger01_02.rp" "bone_l_arm01_finger01_02_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger01_02.rpt" "bone_l_arm01_finger01_02_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger01_02.jo" "bone_l_arm01_finger01_02_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger01_02.t" "bone_l_arm01_finger01_02_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger01_02.rp" "bone_l_arm01_finger01_02_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger01_02.rpt" "bone_l_arm01_finger01_02_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger01_02.r" "bone_l_arm01_finger01_02_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger01_02.ro" "bone_l_arm01_finger01_02_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger01_02.s" "bone_l_arm01_finger01_02_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger01_02.pm" "bone_l_arm01_finger01_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger01_02_parentConstraint1.w0" "bone_l_arm01_finger01_02_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_finger01_01.ro" "bone_l_arm01_finger01_01_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger01_01.pim" "bone_l_arm01_finger01_01_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger01_01.rp" "bone_l_arm01_finger01_01_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger01_01.rpt" "bone_l_arm01_finger01_01_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger01_01.jo" "bone_l_arm01_finger01_01_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger01_01.t" "bone_l_arm01_finger01_01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger01_01.rp" "bone_l_arm01_finger01_01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger01_01.rpt" "bone_l_arm01_finger01_01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger01_01.r" "bone_l_arm01_finger01_01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger01_01.ro" "bone_l_arm01_finger01_01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger01_01.s" "bone_l_arm01_finger01_01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger01_01.pm" "bone_l_arm01_finger01_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger01_01_parentConstraint1.w0" "bone_l_arm01_finger01_01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_base01.s" "bone_l_arm01_finger02_01.is";
connectAttr "bone_l_arm01_finger02_01_parentConstraint1.ctx" "bone_l_arm01_finger02_01.tx"
		;
connectAttr "bone_l_arm01_finger02_01_parentConstraint1.cty" "bone_l_arm01_finger02_01.ty"
		;
connectAttr "bone_l_arm01_finger02_01_parentConstraint1.ctz" "bone_l_arm01_finger02_01.tz"
		;
connectAttr "bone_l_arm01_finger02_01_parentConstraint1.crx" "bone_l_arm01_finger02_01.rx"
		;
connectAttr "bone_l_arm01_finger02_01_parentConstraint1.cry" "bone_l_arm01_finger02_01.ry"
		;
connectAttr "bone_l_arm01_finger02_01_parentConstraint1.crz" "bone_l_arm01_finger02_01.rz"
		;
connectAttr "bone_l_arm01_finger02_02_parentConstraint1.cty" "bone_l_arm01_finger02_02.ty"
		;
connectAttr "bone_l_arm01_finger02_02_parentConstraint1.ctz" "bone_l_arm01_finger02_02.tz"
		;
connectAttr "bone_l_arm01_finger02_02_parentConstraint1.ctx" "bone_l_arm01_finger02_02.tx"
		;
connectAttr "bone_l_arm01_finger02_02_parentConstraint1.crx" "bone_l_arm01_finger02_02.rx"
		;
connectAttr "bone_l_arm01_finger02_02_parentConstraint1.cry" "bone_l_arm01_finger02_02.ry"
		;
connectAttr "bone_l_arm01_finger02_02_parentConstraint1.crz" "bone_l_arm01_finger02_02.rz"
		;
connectAttr "bone_l_arm01_finger02_01.s" "bone_l_arm01_finger02_02.is";
connectAttr "bone_l_arm01_finger02_03_parentConstraint1.cty" "bone_l_arm01_finger02_03.ty"
		;
connectAttr "bone_l_arm01_finger02_03_parentConstraint1.ctz" "bone_l_arm01_finger02_03.tz"
		;
connectAttr "bone_l_arm01_finger02_03_parentConstraint1.ctx" "bone_l_arm01_finger02_03.tx"
		;
connectAttr "bone_l_arm01_finger02_03_parentConstraint1.crx" "bone_l_arm01_finger02_03.rx"
		;
connectAttr "bone_l_arm01_finger02_03_parentConstraint1.cry" "bone_l_arm01_finger02_03.ry"
		;
connectAttr "bone_l_arm01_finger02_03_parentConstraint1.crz" "bone_l_arm01_finger02_03.rz"
		;
connectAttr "bone_l_arm01_finger02_02.s" "bone_l_arm01_finger02_03.is";
connectAttr "bone_l_arm01_finger02_03.ro" "bone_l_arm01_finger02_03_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger02_03.pim" "bone_l_arm01_finger02_03_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger02_03.rp" "bone_l_arm01_finger02_03_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger02_03.rpt" "bone_l_arm01_finger02_03_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger02_03.jo" "bone_l_arm01_finger02_03_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger02_03.t" "bone_l_arm01_finger02_03_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger02_03.rp" "bone_l_arm01_finger02_03_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger02_03.rpt" "bone_l_arm01_finger02_03_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger02_03.r" "bone_l_arm01_finger02_03_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger02_03.ro" "bone_l_arm01_finger02_03_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger02_03.s" "bone_l_arm01_finger02_03_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger02_03.pm" "bone_l_arm01_finger02_03_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger02_03_parentConstraint1.w0" "bone_l_arm01_finger02_03_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_finger02_02.ro" "bone_l_arm01_finger02_02_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger02_02.pim" "bone_l_arm01_finger02_02_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger02_02.rp" "bone_l_arm01_finger02_02_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger02_02.rpt" "bone_l_arm01_finger02_02_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger02_02.jo" "bone_l_arm01_finger02_02_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger02_02.t" "bone_l_arm01_finger02_02_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger02_02.rp" "bone_l_arm01_finger02_02_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger02_02.rpt" "bone_l_arm01_finger02_02_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger02_02.r" "bone_l_arm01_finger02_02_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger02_02.ro" "bone_l_arm01_finger02_02_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger02_02.s" "bone_l_arm01_finger02_02_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger02_02.pm" "bone_l_arm01_finger02_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger02_02_parentConstraint1.w0" "bone_l_arm01_finger02_02_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_finger02_01.ro" "bone_l_arm01_finger02_01_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger02_01.pim" "bone_l_arm01_finger02_01_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger02_01.rp" "bone_l_arm01_finger02_01_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger02_01.rpt" "bone_l_arm01_finger02_01_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger02_01.jo" "bone_l_arm01_finger02_01_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger02_01.t" "bone_l_arm01_finger02_01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger02_01.rp" "bone_l_arm01_finger02_01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger02_01.rpt" "bone_l_arm01_finger02_01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger02_01.r" "bone_l_arm01_finger02_01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger02_01.ro" "bone_l_arm01_finger02_01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger02_01.s" "bone_l_arm01_finger02_01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger02_01.pm" "bone_l_arm01_finger02_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger02_01_parentConstraint1.w0" "bone_l_arm01_finger02_01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_base01.s" "bone_l_arm01_finger03_01.is";
connectAttr "bone_l_arm01_finger03_01_parentConstraint1.ctx" "bone_l_arm01_finger03_01.tx"
		;
connectAttr "bone_l_arm01_finger03_01_parentConstraint1.cty" "bone_l_arm01_finger03_01.ty"
		;
connectAttr "bone_l_arm01_finger03_01_parentConstraint1.ctz" "bone_l_arm01_finger03_01.tz"
		;
connectAttr "bone_l_arm01_finger03_01_parentConstraint1.crx" "bone_l_arm01_finger03_01.rx"
		;
connectAttr "bone_l_arm01_finger03_01_parentConstraint1.cry" "bone_l_arm01_finger03_01.ry"
		;
connectAttr "bone_l_arm01_finger03_01_parentConstraint1.crz" "bone_l_arm01_finger03_01.rz"
		;
connectAttr "bone_l_arm01_finger03_02_parentConstraint1.cty" "bone_l_arm01_finger03_02.ty"
		;
connectAttr "bone_l_arm01_finger03_02_parentConstraint1.ctz" "bone_l_arm01_finger03_02.tz"
		;
connectAttr "bone_l_arm01_finger03_02_parentConstraint1.ctx" "bone_l_arm01_finger03_02.tx"
		;
connectAttr "bone_l_arm01_finger03_02_parentConstraint1.crx" "bone_l_arm01_finger03_02.rx"
		;
connectAttr "bone_l_arm01_finger03_02_parentConstraint1.cry" "bone_l_arm01_finger03_02.ry"
		;
connectAttr "bone_l_arm01_finger03_02_parentConstraint1.crz" "bone_l_arm01_finger03_02.rz"
		;
connectAttr "bone_l_arm01_finger03_01.s" "bone_l_arm01_finger03_02.is";
connectAttr "bone_l_arm01_finger03_03_parentConstraint1.cty" "bone_l_arm01_finger03_03.ty"
		;
connectAttr "bone_l_arm01_finger03_03_parentConstraint1.ctz" "bone_l_arm01_finger03_03.tz"
		;
connectAttr "bone_l_arm01_finger03_03_parentConstraint1.ctx" "bone_l_arm01_finger03_03.tx"
		;
connectAttr "bone_l_arm01_finger03_03_parentConstraint1.crx" "bone_l_arm01_finger03_03.rx"
		;
connectAttr "bone_l_arm01_finger03_03_parentConstraint1.cry" "bone_l_arm01_finger03_03.ry"
		;
connectAttr "bone_l_arm01_finger03_03_parentConstraint1.crz" "bone_l_arm01_finger03_03.rz"
		;
connectAttr "bone_l_arm01_finger03_02.s" "bone_l_arm01_finger03_03.is";
connectAttr "bone_l_arm01_finger03_03.ro" "bone_l_arm01_finger03_03_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger03_03.pim" "bone_l_arm01_finger03_03_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger03_03.rp" "bone_l_arm01_finger03_03_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger03_03.rpt" "bone_l_arm01_finger03_03_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger03_03.jo" "bone_l_arm01_finger03_03_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger03_03.t" "bone_l_arm01_finger03_03_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger03_03.rp" "bone_l_arm01_finger03_03_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger03_03.rpt" "bone_l_arm01_finger03_03_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger03_03.r" "bone_l_arm01_finger03_03_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger03_03.ro" "bone_l_arm01_finger03_03_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger03_03.s" "bone_l_arm01_finger03_03_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger03_03.pm" "bone_l_arm01_finger03_03_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger03_03_parentConstraint1.w0" "bone_l_arm01_finger03_03_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_finger03_02.ro" "bone_l_arm01_finger03_02_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger03_02.pim" "bone_l_arm01_finger03_02_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger03_02.rp" "bone_l_arm01_finger03_02_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger03_02.rpt" "bone_l_arm01_finger03_02_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger03_02.jo" "bone_l_arm01_finger03_02_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger03_02.t" "bone_l_arm01_finger03_02_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger03_02.rp" "bone_l_arm01_finger03_02_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger03_02.rpt" "bone_l_arm01_finger03_02_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger03_02.r" "bone_l_arm01_finger03_02_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger03_02.ro" "bone_l_arm01_finger03_02_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger03_02.s" "bone_l_arm01_finger03_02_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger03_02.pm" "bone_l_arm01_finger03_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger03_02_parentConstraint1.w0" "bone_l_arm01_finger03_02_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_finger03_01.ro" "bone_l_arm01_finger03_01_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger03_01.pim" "bone_l_arm01_finger03_01_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger03_01.rp" "bone_l_arm01_finger03_01_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger03_01.rpt" "bone_l_arm01_finger03_01_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger03_01.jo" "bone_l_arm01_finger03_01_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger03_01.t" "bone_l_arm01_finger03_01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger03_01.rp" "bone_l_arm01_finger03_01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger03_01.rpt" "bone_l_arm01_finger03_01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger03_01.r" "bone_l_arm01_finger03_01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger03_01.ro" "bone_l_arm01_finger03_01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger03_01.s" "bone_l_arm01_finger03_01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger03_01.pm" "bone_l_arm01_finger03_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger03_01_parentConstraint1.w0" "bone_l_arm01_finger03_01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_base01.s" "bone_l_arm01_finger04_01.is";
connectAttr "bone_l_arm01_finger04_01_parentConstraint1.ctx" "bone_l_arm01_finger04_01.tx"
		;
connectAttr "bone_l_arm01_finger04_01_parentConstraint1.cty" "bone_l_arm01_finger04_01.ty"
		;
connectAttr "bone_l_arm01_finger04_01_parentConstraint1.ctz" "bone_l_arm01_finger04_01.tz"
		;
connectAttr "bone_l_arm01_finger04_01_parentConstraint1.crx" "bone_l_arm01_finger04_01.rx"
		;
connectAttr "bone_l_arm01_finger04_01_parentConstraint1.cry" "bone_l_arm01_finger04_01.ry"
		;
connectAttr "bone_l_arm01_finger04_01_parentConstraint1.crz" "bone_l_arm01_finger04_01.rz"
		;
connectAttr "bone_l_arm01_finger04_02_parentConstraint1.cty" "bone_l_arm01_finger04_02.ty"
		;
connectAttr "bone_l_arm01_finger04_02_parentConstraint1.ctz" "bone_l_arm01_finger04_02.tz"
		;
connectAttr "bone_l_arm01_finger04_02_parentConstraint1.ctx" "bone_l_arm01_finger04_02.tx"
		;
connectAttr "bone_l_arm01_finger04_02_parentConstraint1.crx" "bone_l_arm01_finger04_02.rx"
		;
connectAttr "bone_l_arm01_finger04_02_parentConstraint1.cry" "bone_l_arm01_finger04_02.ry"
		;
connectAttr "bone_l_arm01_finger04_02_parentConstraint1.crz" "bone_l_arm01_finger04_02.rz"
		;
connectAttr "bone_l_arm01_finger04_01.s" "bone_l_arm01_finger04_02.is";
connectAttr "bone_l_arm01_finger04_03_parentConstraint1.cty" "bone_l_arm01_finger04_03.ty"
		;
connectAttr "bone_l_arm01_finger04_03_parentConstraint1.ctz" "bone_l_arm01_finger04_03.tz"
		;
connectAttr "bone_l_arm01_finger04_03_parentConstraint1.ctx" "bone_l_arm01_finger04_03.tx"
		;
connectAttr "bone_l_arm01_finger04_03_parentConstraint1.crx" "bone_l_arm01_finger04_03.rx"
		;
connectAttr "bone_l_arm01_finger04_03_parentConstraint1.cry" "bone_l_arm01_finger04_03.ry"
		;
connectAttr "bone_l_arm01_finger04_03_parentConstraint1.crz" "bone_l_arm01_finger04_03.rz"
		;
connectAttr "bone_l_arm01_finger04_02.s" "bone_l_arm01_finger04_03.is";
connectAttr "bone_l_arm01_finger04_03.ro" "bone_l_arm01_finger04_03_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger04_03.pim" "bone_l_arm01_finger04_03_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger04_03.rp" "bone_l_arm01_finger04_03_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger04_03.rpt" "bone_l_arm01_finger04_03_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger04_03.jo" "bone_l_arm01_finger04_03_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger04_03.t" "bone_l_arm01_finger04_03_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger04_03.rp" "bone_l_arm01_finger04_03_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger04_03.rpt" "bone_l_arm01_finger04_03_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger04_03.r" "bone_l_arm01_finger04_03_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger04_03.ro" "bone_l_arm01_finger04_03_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger04_03.s" "bone_l_arm01_finger04_03_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger04_03.pm" "bone_l_arm01_finger04_03_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger04_03_parentConstraint1.w0" "bone_l_arm01_finger04_03_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_finger04_02.ro" "bone_l_arm01_finger04_02_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger04_02.pim" "bone_l_arm01_finger04_02_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger04_02.rp" "bone_l_arm01_finger04_02_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger04_02.rpt" "bone_l_arm01_finger04_02_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger04_02.jo" "bone_l_arm01_finger04_02_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger04_02.t" "bone_l_arm01_finger04_02_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger04_02.rp" "bone_l_arm01_finger04_02_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger04_02.rpt" "bone_l_arm01_finger04_02_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger04_02.r" "bone_l_arm01_finger04_02_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger04_02.ro" "bone_l_arm01_finger04_02_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger04_02.s" "bone_l_arm01_finger04_02_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger04_02.pm" "bone_l_arm01_finger04_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger04_02_parentConstraint1.w0" "bone_l_arm01_finger04_02_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_finger04_01.ro" "bone_l_arm01_finger04_01_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger04_01.pim" "bone_l_arm01_finger04_01_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger04_01.rp" "bone_l_arm01_finger04_01_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger04_01.rpt" "bone_l_arm01_finger04_01_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger04_01.jo" "bone_l_arm01_finger04_01_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger04_01.t" "bone_l_arm01_finger04_01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger04_01.rp" "bone_l_arm01_finger04_01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger04_01.rpt" "bone_l_arm01_finger04_01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger04_01.r" "bone_l_arm01_finger04_01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger04_01.ro" "bone_l_arm01_finger04_01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger04_01.s" "bone_l_arm01_finger04_01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger04_01.pm" "bone_l_arm01_finger04_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger04_01_parentConstraint1.w0" "bone_l_arm01_finger04_01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_base01.s" "bone_l_arm01_finger05_01.is";
connectAttr "bone_l_arm01_finger05_01_parentConstraint1.ctx" "bone_l_arm01_finger05_01.tx"
		;
connectAttr "bone_l_arm01_finger05_01_parentConstraint1.cty" "bone_l_arm01_finger05_01.ty"
		;
connectAttr "bone_l_arm01_finger05_01_parentConstraint1.ctz" "bone_l_arm01_finger05_01.tz"
		;
connectAttr "bone_l_arm01_finger05_01_parentConstraint1.crx" "bone_l_arm01_finger05_01.rx"
		;
connectAttr "bone_l_arm01_finger05_01_parentConstraint1.cry" "bone_l_arm01_finger05_01.ry"
		;
connectAttr "bone_l_arm01_finger05_01_parentConstraint1.crz" "bone_l_arm01_finger05_01.rz"
		;
connectAttr "bone_l_arm01_finger05_02_parentConstraint1.cty" "bone_l_arm01_finger05_02.ty"
		;
connectAttr "bone_l_arm01_finger05_02_parentConstraint1.ctz" "bone_l_arm01_finger05_02.tz"
		;
connectAttr "bone_l_arm01_finger05_02_parentConstraint1.ctx" "bone_l_arm01_finger05_02.tx"
		;
connectAttr "bone_l_arm01_finger05_02_parentConstraint1.crx" "bone_l_arm01_finger05_02.rx"
		;
connectAttr "bone_l_arm01_finger05_02_parentConstraint1.cry" "bone_l_arm01_finger05_02.ry"
		;
connectAttr "bone_l_arm01_finger05_02_parentConstraint1.crz" "bone_l_arm01_finger05_02.rz"
		;
connectAttr "bone_l_arm01_finger05_01.s" "bone_l_arm01_finger05_02.is";
connectAttr "bone_l_arm01_finger05_03_parentConstraint1.cty" "bone_l_arm01_finger05_03.ty"
		;
connectAttr "bone_l_arm01_finger05_03_parentConstraint1.ctz" "bone_l_arm01_finger05_03.tz"
		;
connectAttr "bone_l_arm01_finger05_03_parentConstraint1.ctx" "bone_l_arm01_finger05_03.tx"
		;
connectAttr "bone_l_arm01_finger05_03_parentConstraint1.crx" "bone_l_arm01_finger05_03.rx"
		;
connectAttr "bone_l_arm01_finger05_03_parentConstraint1.cry" "bone_l_arm01_finger05_03.ry"
		;
connectAttr "bone_l_arm01_finger05_03_parentConstraint1.crz" "bone_l_arm01_finger05_03.rz"
		;
connectAttr "bone_l_arm01_finger05_02.s" "bone_l_arm01_finger05_03.is";
connectAttr "bone_l_arm01_finger05_03.ro" "bone_l_arm01_finger05_03_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger05_03.pim" "bone_l_arm01_finger05_03_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger05_03.rp" "bone_l_arm01_finger05_03_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger05_03.rpt" "bone_l_arm01_finger05_03_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger05_03.jo" "bone_l_arm01_finger05_03_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger05_03.t" "bone_l_arm01_finger05_03_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger05_03.rp" "bone_l_arm01_finger05_03_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger05_03.rpt" "bone_l_arm01_finger05_03_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger05_03.r" "bone_l_arm01_finger05_03_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger05_03.ro" "bone_l_arm01_finger05_03_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger05_03.s" "bone_l_arm01_finger05_03_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger05_03.pm" "bone_l_arm01_finger05_03_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger05_03_parentConstraint1.w0" "bone_l_arm01_finger05_03_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_finger05_02.ro" "bone_l_arm01_finger05_02_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger05_02.pim" "bone_l_arm01_finger05_02_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger05_02.rp" "bone_l_arm01_finger05_02_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger05_02.rpt" "bone_l_arm01_finger05_02_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger05_02.jo" "bone_l_arm01_finger05_02_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger05_02.t" "bone_l_arm01_finger05_02_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger05_02.rp" "bone_l_arm01_finger05_02_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger05_02.rpt" "bone_l_arm01_finger05_02_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger05_02.r" "bone_l_arm01_finger05_02_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger05_02.ro" "bone_l_arm01_finger05_02_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger05_02.s" "bone_l_arm01_finger05_02_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger05_02.pm" "bone_l_arm01_finger05_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger05_02_parentConstraint1.w0" "bone_l_arm01_finger05_02_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_finger05_01.ro" "bone_l_arm01_finger05_01_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_finger05_01.pim" "bone_l_arm01_finger05_01_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_finger05_01.rp" "bone_l_arm01_finger05_01_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_finger05_01.rpt" "bone_l_arm01_finger05_01_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_finger05_01.jo" "bone_l_arm01_finger05_01_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_finger05_01.t" "bone_l_arm01_finger05_01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_finger05_01.rp" "bone_l_arm01_finger05_01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_finger05_01.rpt" "bone_l_arm01_finger05_01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_finger05_01.r" "bone_l_arm01_finger05_01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_finger05_01.ro" "bone_l_arm01_finger05_01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_finger05_01.s" "bone_l_arm01_finger05_01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_finger05_01.pm" "bone_l_arm01_finger05_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_finger05_01_parentConstraint1.w0" "bone_l_arm01_finger05_01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_base01.ro" "bone_l_arm01_base01_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_base01.pim" "bone_l_arm01_base01_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_base01.rp" "bone_l_arm01_base01_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_base01.rpt" "bone_l_arm01_base01_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_base01.jo" "bone_l_arm01_base01_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_base01.t" "bone_l_arm01_base01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_base01.rp" "bone_l_arm01_base01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_base01.rpt" "bone_l_arm01_base01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_base01.r" "bone_l_arm01_base01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_base01.ro" "bone_l_arm01_base01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_base01.s" "bone_l_arm01_base01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_base01.pm" "bone_l_arm01_base01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_base01_parentConstraint1.w0" "bone_l_arm01_base01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_base01_ik.t" "bone_l_arm01_base01_parentConstraint1.tg[1].tt"
		;
connectAttr "bone_l_arm01_base01_ik.rp" "bone_l_arm01_base01_parentConstraint1.tg[1].trp"
		;
connectAttr "bone_l_arm01_base01_ik.rpt" "bone_l_arm01_base01_parentConstraint1.tg[1].trt"
		;
connectAttr "bone_l_arm01_base01_ik.r" "bone_l_arm01_base01_parentConstraint1.tg[1].tr"
		;
connectAttr "bone_l_arm01_base01_ik.ro" "bone_l_arm01_base01_parentConstraint1.tg[1].tro"
		;
connectAttr "bone_l_arm01_base01_ik.s" "bone_l_arm01_base01_parentConstraint1.tg[1].ts"
		;
connectAttr "bone_l_arm01_base01_ik.pm" "bone_l_arm01_base01_parentConstraint1.tg[1].tpm"
		;
connectAttr "bone_l_arm01_base01_ik.jo" "bone_l_arm01_base01_parentConstraint1.tg[1].tjo"
		;
connectAttr "bone_l_arm01_base01_parentConstraint1.w1" "bone_l_arm01_base01_parentConstraint1.tg[1].tw"
		;
connectAttr "ctrl_l_arm01_ikBlend_reverse.ox" "bone_l_arm01_base01_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_base01_ik.ikBlend" "bone_l_arm01_base01_parentConstraint1.w1"
		;
connectAttr "bone_l_arm01_base01_twist01_parentConstraint1.crx" "bone_l_arm01_base01_twist01.rx"
		;
connectAttr "ctrl_l_arm01_base01_ik_squish_mltDiv.ox" "bone_l_arm01_base01_twist01.sy"
		;
connectAttr "ctrl_l_arm01_base01_ik_squish_mltDiv.ox" "bone_l_arm01_base01_twist01.sz"
		;
connectAttr "bone_l_arm01_mid01.s" "bone_l_arm01_base01_twist01.is";
connectAttr "bone_l_arm01_base01_twist01_parentConstraint1.cty" "bone_l_arm01_base01_twist01.ty"
		;
connectAttr "bone_l_arm01_base01_twist01_parentConstraint1.ctz" "bone_l_arm01_base01_twist01.tz"
		;
connectAttr "bone_l_arm01_base01_twist01_parentConstraint1.ctx" "bone_l_arm01_base01_twist01.tx"
		;
connectAttr "bone_l_arm01_base01_twist01.ro" "bone_l_arm01_base01_twist01_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_base01_twist01.pim" "bone_l_arm01_base01_twist01_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_base01_twist01.rp" "bone_l_arm01_base01_twist01_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_base01_twist01.rpt" "bone_l_arm01_base01_twist01_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_base01_twist01.jo" "bone_l_arm01_base01_twist01_parentConstraint1.cjo"
		;
connectAttr "bone_l_arm01_base01.t" "bone_l_arm01_base01_twist01_parentConstraint1.tg[0].tt"
		;
connectAttr "bone_l_arm01_base01.rp" "bone_l_arm01_base01_twist01_parentConstraint1.tg[0].trp"
		;
connectAttr "bone_l_arm01_base01.rpt" "bone_l_arm01_base01_twist01_parentConstraint1.tg[0].trt"
		;
connectAttr "bone_l_arm01_base01.r" "bone_l_arm01_base01_twist01_parentConstraint1.tg[0].tr"
		;
connectAttr "bone_l_arm01_base01.ro" "bone_l_arm01_base01_twist01_parentConstraint1.tg[0].tro"
		;
connectAttr "bone_l_arm01_base01.s" "bone_l_arm01_base01_twist01_parentConstraint1.tg[0].ts"
		;
connectAttr "bone_l_arm01_base01.pm" "bone_l_arm01_base01_twist01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_base01.jo" "bone_l_arm01_base01_twist01_parentConstraint1.tg[0].tjo"
		;
connectAttr "bone_l_arm01_base01_twist01_parentConstraint1.w0" "bone_l_arm01_base01_twist01_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_base01_twist01.t" "bone_l_arm01_base01_twist01_parentConstraint1.tg[1].tt"
		;
connectAttr "ctrl_l_arm01_base01_twist01.rp" "bone_l_arm01_base01_twist01_parentConstraint1.tg[1].trp"
		;
connectAttr "ctrl_l_arm01_base01_twist01.rpt" "bone_l_arm01_base01_twist01_parentConstraint1.tg[1].trt"
		;
connectAttr "ctrl_l_arm01_base01_twist01.r" "bone_l_arm01_base01_twist01_parentConstraint1.tg[1].tr"
		;
connectAttr "ctrl_l_arm01_base01_twist01.ro" "bone_l_arm01_base01_twist01_parentConstraint1.tg[1].tro"
		;
connectAttr "ctrl_l_arm01_base01_twist01.s" "bone_l_arm01_base01_twist01_parentConstraint1.tg[1].ts"
		;
connectAttr "ctrl_l_arm01_base01_twist01.pm" "bone_l_arm01_base01_twist01_parentConstraint1.tg[1].tpm"
		;
connectAttr "bone_l_arm01_base01_twist01_parentConstraint1.w1" "bone_l_arm01_base01_twist01_parentConstraint1.tg[1].tw"
		;
connectAttr "bone_l_arm01_mid01.ro" "bone_l_arm01_mid01_parentConstraint1.cro";
connectAttr "bone_l_arm01_mid01.pim" "bone_l_arm01_mid01_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_mid01.rp" "bone_l_arm01_mid01_parentConstraint1.crp";
connectAttr "bone_l_arm01_mid01.rpt" "bone_l_arm01_mid01_parentConstraint1.crt";
connectAttr "bone_l_arm01_mid01.jo" "bone_l_arm01_mid01_parentConstraint1.cjo";
connectAttr "ctrl_l_arm01_mid01.t" "bone_l_arm01_mid01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_mid01.rp" "bone_l_arm01_mid01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_mid01.rpt" "bone_l_arm01_mid01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_mid01.r" "bone_l_arm01_mid01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_mid01.ro" "bone_l_arm01_mid01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_mid01.s" "bone_l_arm01_mid01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_mid01.pm" "bone_l_arm01_mid01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_mid01_parentConstraint1.w0" "bone_l_arm01_mid01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_mid01_ik.t" "bone_l_arm01_mid01_parentConstraint1.tg[1].tt"
		;
connectAttr "bone_l_arm01_mid01_ik.rp" "bone_l_arm01_mid01_parentConstraint1.tg[1].trp"
		;
connectAttr "bone_l_arm01_mid01_ik.rpt" "bone_l_arm01_mid01_parentConstraint1.tg[1].trt"
		;
connectAttr "bone_l_arm01_mid01_ik.r" "bone_l_arm01_mid01_parentConstraint1.tg[1].tr"
		;
connectAttr "bone_l_arm01_mid01_ik.ro" "bone_l_arm01_mid01_parentConstraint1.tg[1].tro"
		;
connectAttr "bone_l_arm01_mid01_ik.s" "bone_l_arm01_mid01_parentConstraint1.tg[1].ts"
		;
connectAttr "bone_l_arm01_mid01_ik.pm" "bone_l_arm01_mid01_parentConstraint1.tg[1].tpm"
		;
connectAttr "bone_l_arm01_mid01_ik.jo" "bone_l_arm01_mid01_parentConstraint1.tg[1].tjo"
		;
connectAttr "bone_l_arm01_mid01_parentConstraint1.w1" "bone_l_arm01_mid01_parentConstraint1.tg[1].tw"
		;
connectAttr "ctrl_l_arm01_ikBlend_reverse.ox" "bone_l_arm01_mid01_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_base01_ik.ikBlend" "bone_l_arm01_mid01_parentConstraint1.w1"
		;
connectAttr "bone_l_arm01_upper01.ro" "bone_l_arm01_upper01_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_upper01.pim" "bone_l_arm01_upper01_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_upper01.rp" "bone_l_arm01_upper01_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_upper01.rpt" "bone_l_arm01_upper01_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_upper01.jo" "bone_l_arm01_upper01_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_upper01.t" "bone_l_arm01_upper01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_upper01.rp" "bone_l_arm01_upper01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_upper01.rpt" "bone_l_arm01_upper01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_upper01.r" "bone_l_arm01_upper01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_upper01.ro" "bone_l_arm01_upper01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_upper01.s" "bone_l_arm01_upper01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_upper01.pm" "bone_l_arm01_upper01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_upper01_parentConstraint1.w0" "bone_l_arm01_upper01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_upper01_ik.t" "bone_l_arm01_upper01_parentConstraint1.tg[1].tt"
		;
connectAttr "bone_l_arm01_upper01_ik.rp" "bone_l_arm01_upper01_parentConstraint1.tg[1].trp"
		;
connectAttr "bone_l_arm01_upper01_ik.rpt" "bone_l_arm01_upper01_parentConstraint1.tg[1].trt"
		;
connectAttr "bone_l_arm01_upper01_ik.r" "bone_l_arm01_upper01_parentConstraint1.tg[1].tr"
		;
connectAttr "bone_l_arm01_upper01_ik.ro" "bone_l_arm01_upper01_parentConstraint1.tg[1].tro"
		;
connectAttr "bone_l_arm01_upper01_ik.s" "bone_l_arm01_upper01_parentConstraint1.tg[1].ts"
		;
connectAttr "bone_l_arm01_upper01_ik.pm" "bone_l_arm01_upper01_parentConstraint1.tg[1].tpm"
		;
connectAttr "bone_l_arm01_upper01_ik.jo" "bone_l_arm01_upper01_parentConstraint1.tg[1].tjo"
		;
connectAttr "bone_l_arm01_upper01_parentConstraint1.w1" "bone_l_arm01_upper01_parentConstraint1.tg[1].tw"
		;
connectAttr "ctrl_l_arm01_ikBlend_reverse.ox" "bone_l_arm01_upper01_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_base01_ik.ikBlend" "bone_l_arm01_upper01_parentConstraint1.w1"
		;
connectAttr "bone_r_arm01_upper01_parentConstraint1.cty" "bone_r_arm01_upper01.ty"
		;
connectAttr "bone_r_arm01_upper01_parentConstraint1.ctz" "bone_r_arm01_upper01.tz"
		;
connectAttr "bone_r_arm01_upper01_parentConstraint1.ctx" "bone_r_arm01_upper01.tx"
		;
connectAttr "ctrl_r_arm01_base01_ik_squish_mltDiv.ox" "bone_r_arm01_upper01.sy";
connectAttr "ctrl_r_arm01_base01_ik_squish_mltDiv.ox" "bone_r_arm01_upper01.sz";
connectAttr "bone_root01.s" "bone_r_arm01_upper01.is";
connectAttr "bone_r_arm01_upper01_parentConstraint1.crx" "bone_r_arm01_upper01.rx"
		;
connectAttr "bone_r_arm01_upper01_parentConstraint1.cry" "bone_r_arm01_upper01.ry"
		;
connectAttr "bone_r_arm01_upper01_parentConstraint1.crz" "bone_r_arm01_upper01.rz"
		;
connectAttr "bone_r_arm01_mid01_parentConstraint1.cty" "bone_r_arm01_mid01.ty";
connectAttr "bone_r_arm01_mid01_parentConstraint1.ctz" "bone_r_arm01_mid01.tz";
connectAttr "bone_r_arm01_mid01_parentConstraint1.ctx" "bone_r_arm01_mid01.tx";
connectAttr "bone_r_arm01_mid01_parentConstraint1.crx" "bone_r_arm01_mid01.rx";
connectAttr "bone_r_arm01_mid01_parentConstraint1.crz" "bone_r_arm01_mid01.rz";
connectAttr "bone_r_arm01_mid01_parentConstraint1.cry" "bone_r_arm01_mid01.ry";
connectAttr "ctrl_r_arm01_base01_ik_squish_mltDiv.ox" "bone_r_arm01_mid01.sy";
connectAttr "ctrl_r_arm01_base01_ik_squish_mltDiv.ox" "bone_r_arm01_mid01.sz";
connectAttr "bone_r_arm01_upper01.s" "bone_r_arm01_mid01.is";
connectAttr "bone_r_arm01_base01_parentConstraint1.cty" "bone_r_arm01_base01.ty"
		;
connectAttr "bone_r_arm01_base01_parentConstraint1.ctz" "bone_r_arm01_base01.tz"
		;
connectAttr "bone_r_arm01_base01_parentConstraint1.ctx" "bone_r_arm01_base01.tx"
		;
connectAttr "bone_r_arm01_mid01.s" "bone_r_arm01_base01.is";
connectAttr "bone_r_arm01_base01_parentConstraint1.crx" "bone_r_arm01_base01.rx"
		;
connectAttr "bone_r_arm01_base01_parentConstraint1.cry" "bone_r_arm01_base01.ry"
		;
connectAttr "bone_r_arm01_base01_parentConstraint1.crz" "bone_r_arm01_base01.rz"
		;
connectAttr "bone_r_arm01_base01.s" "bone_r_arm01_finger01_01.is";
connectAttr "bone_r_arm01_finger01_01_parentConstraint1.ctx" "bone_r_arm01_finger01_01.tx"
		;
connectAttr "bone_r_arm01_finger01_01_parentConstraint1.cty" "bone_r_arm01_finger01_01.ty"
		;
connectAttr "bone_r_arm01_finger01_01_parentConstraint1.ctz" "bone_r_arm01_finger01_01.tz"
		;
connectAttr "bone_r_arm01_finger01_01_parentConstraint1.crx" "bone_r_arm01_finger01_01.rx"
		;
connectAttr "bone_r_arm01_finger01_01_parentConstraint1.cry" "bone_r_arm01_finger01_01.ry"
		;
connectAttr "bone_r_arm01_finger01_01_parentConstraint1.crz" "bone_r_arm01_finger01_01.rz"
		;
connectAttr "bone_r_arm01_finger01_02_parentConstraint1.cty" "bone_r_arm01_finger01_02.ty"
		;
connectAttr "bone_r_arm01_finger01_02_parentConstraint1.ctz" "bone_r_arm01_finger01_02.tz"
		;
connectAttr "bone_r_arm01_finger01_02_parentConstraint1.ctx" "bone_r_arm01_finger01_02.tx"
		;
connectAttr "bone_r_arm01_finger01_02_parentConstraint1.crx" "bone_r_arm01_finger01_02.rx"
		;
connectAttr "bone_r_arm01_finger01_02_parentConstraint1.cry" "bone_r_arm01_finger01_02.ry"
		;
connectAttr "bone_r_arm01_finger01_02_parentConstraint1.crz" "bone_r_arm01_finger01_02.rz"
		;
connectAttr "bone_r_arm01_finger01_01.s" "bone_r_arm01_finger01_02.is";
connectAttr "bone_r_arm01_finger01_03_parentConstraint1.cty" "bone_r_arm01_finger01_03.ty"
		;
connectAttr "bone_r_arm01_finger01_03_parentConstraint1.ctz" "bone_r_arm01_finger01_03.tz"
		;
connectAttr "bone_r_arm01_finger01_03_parentConstraint1.ctx" "bone_r_arm01_finger01_03.tx"
		;
connectAttr "bone_r_arm01_finger01_03_parentConstraint1.crx" "bone_r_arm01_finger01_03.rx"
		;
connectAttr "bone_r_arm01_finger01_03_parentConstraint1.cry" "bone_r_arm01_finger01_03.ry"
		;
connectAttr "bone_r_arm01_finger01_03_parentConstraint1.crz" "bone_r_arm01_finger01_03.rz"
		;
connectAttr "bone_r_arm01_finger01_02.s" "bone_r_arm01_finger01_03.is";
connectAttr "bone_r_arm01_finger01_03.ro" "bone_r_arm01_finger01_03_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger01_03.pim" "bone_r_arm01_finger01_03_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger01_03.rp" "bone_r_arm01_finger01_03_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger01_03.rpt" "bone_r_arm01_finger01_03_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger01_03.jo" "bone_r_arm01_finger01_03_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger01_03.t" "bone_r_arm01_finger01_03_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger01_03.rp" "bone_r_arm01_finger01_03_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger01_03.rpt" "bone_r_arm01_finger01_03_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger01_03.r" "bone_r_arm01_finger01_03_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger01_03.ro" "bone_r_arm01_finger01_03_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger01_03.s" "bone_r_arm01_finger01_03_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger01_03.pm" "bone_r_arm01_finger01_03_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger01_03_parentConstraint1.w0" "bone_r_arm01_finger01_03_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_finger01_02.ro" "bone_r_arm01_finger01_02_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger01_02.pim" "bone_r_arm01_finger01_02_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger01_02.rp" "bone_r_arm01_finger01_02_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger01_02.rpt" "bone_r_arm01_finger01_02_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger01_02.jo" "bone_r_arm01_finger01_02_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger01_02.t" "bone_r_arm01_finger01_02_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger01_02.rp" "bone_r_arm01_finger01_02_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger01_02.rpt" "bone_r_arm01_finger01_02_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger01_02.r" "bone_r_arm01_finger01_02_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger01_02.ro" "bone_r_arm01_finger01_02_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger01_02.s" "bone_r_arm01_finger01_02_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger01_02.pm" "bone_r_arm01_finger01_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger01_02_parentConstraint1.w0" "bone_r_arm01_finger01_02_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_finger01_01.ro" "bone_r_arm01_finger01_01_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger01_01.pim" "bone_r_arm01_finger01_01_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger01_01.rp" "bone_r_arm01_finger01_01_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger01_01.rpt" "bone_r_arm01_finger01_01_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger01_01.jo" "bone_r_arm01_finger01_01_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger01_01.t" "bone_r_arm01_finger01_01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger01_01.rp" "bone_r_arm01_finger01_01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger01_01.rpt" "bone_r_arm01_finger01_01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger01_01.r" "bone_r_arm01_finger01_01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger01_01.ro" "bone_r_arm01_finger01_01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger01_01.s" "bone_r_arm01_finger01_01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger01_01.pm" "bone_r_arm01_finger01_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger01_01_parentConstraint1.w0" "bone_r_arm01_finger01_01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_base01.s" "bone_r_arm01_finger02_01.is";
connectAttr "bone_r_arm01_finger02_01_parentConstraint1.ctx" "bone_r_arm01_finger02_01.tx"
		;
connectAttr "bone_r_arm01_finger02_01_parentConstraint1.cty" "bone_r_arm01_finger02_01.ty"
		;
connectAttr "bone_r_arm01_finger02_01_parentConstraint1.ctz" "bone_r_arm01_finger02_01.tz"
		;
connectAttr "bone_r_arm01_finger02_01_parentConstraint1.crx" "bone_r_arm01_finger02_01.rx"
		;
connectAttr "bone_r_arm01_finger02_01_parentConstraint1.cry" "bone_r_arm01_finger02_01.ry"
		;
connectAttr "bone_r_arm01_finger02_01_parentConstraint1.crz" "bone_r_arm01_finger02_01.rz"
		;
connectAttr "bone_r_arm01_finger02_02_parentConstraint1.cty" "bone_r_arm01_finger02_02.ty"
		;
connectAttr "bone_r_arm01_finger02_02_parentConstraint1.ctz" "bone_r_arm01_finger02_02.tz"
		;
connectAttr "bone_r_arm01_finger02_02_parentConstraint1.ctx" "bone_r_arm01_finger02_02.tx"
		;
connectAttr "bone_r_arm01_finger02_02_parentConstraint1.crx" "bone_r_arm01_finger02_02.rx"
		;
connectAttr "bone_r_arm01_finger02_02_parentConstraint1.cry" "bone_r_arm01_finger02_02.ry"
		;
connectAttr "bone_r_arm01_finger02_02_parentConstraint1.crz" "bone_r_arm01_finger02_02.rz"
		;
connectAttr "bone_r_arm01_finger02_01.s" "bone_r_arm01_finger02_02.is";
connectAttr "bone_r_arm01_finger02_03_parentConstraint1.cty" "bone_r_arm01_finger02_03.ty"
		;
connectAttr "bone_r_arm01_finger02_03_parentConstraint1.ctz" "bone_r_arm01_finger02_03.tz"
		;
connectAttr "bone_r_arm01_finger02_03_parentConstraint1.ctx" "bone_r_arm01_finger02_03.tx"
		;
connectAttr "bone_r_arm01_finger02_03_parentConstraint1.crx" "bone_r_arm01_finger02_03.rx"
		;
connectAttr "bone_r_arm01_finger02_03_parentConstraint1.cry" "bone_r_arm01_finger02_03.ry"
		;
connectAttr "bone_r_arm01_finger02_03_parentConstraint1.crz" "bone_r_arm01_finger02_03.rz"
		;
connectAttr "bone_r_arm01_finger02_02.s" "bone_r_arm01_finger02_03.is";
connectAttr "bone_r_arm01_finger02_03.ro" "bone_r_arm01_finger02_03_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger02_03.pim" "bone_r_arm01_finger02_03_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger02_03.rp" "bone_r_arm01_finger02_03_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger02_03.rpt" "bone_r_arm01_finger02_03_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger02_03.jo" "bone_r_arm01_finger02_03_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger02_03.t" "bone_r_arm01_finger02_03_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger02_03.rp" "bone_r_arm01_finger02_03_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger02_03.rpt" "bone_r_arm01_finger02_03_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger02_03.r" "bone_r_arm01_finger02_03_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger02_03.ro" "bone_r_arm01_finger02_03_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger02_03.s" "bone_r_arm01_finger02_03_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger02_03.pm" "bone_r_arm01_finger02_03_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger02_03_parentConstraint1.w0" "bone_r_arm01_finger02_03_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_finger02_02.ro" "bone_r_arm01_finger02_02_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger02_02.pim" "bone_r_arm01_finger02_02_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger02_02.rp" "bone_r_arm01_finger02_02_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger02_02.rpt" "bone_r_arm01_finger02_02_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger02_02.jo" "bone_r_arm01_finger02_02_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger02_02.t" "bone_r_arm01_finger02_02_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger02_02.rp" "bone_r_arm01_finger02_02_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger02_02.rpt" "bone_r_arm01_finger02_02_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger02_02.r" "bone_r_arm01_finger02_02_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger02_02.ro" "bone_r_arm01_finger02_02_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger02_02.s" "bone_r_arm01_finger02_02_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger02_02.pm" "bone_r_arm01_finger02_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger02_02_parentConstraint1.w0" "bone_r_arm01_finger02_02_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_finger02_01.ro" "bone_r_arm01_finger02_01_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger02_01.pim" "bone_r_arm01_finger02_01_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger02_01.rp" "bone_r_arm01_finger02_01_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger02_01.rpt" "bone_r_arm01_finger02_01_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger02_01.jo" "bone_r_arm01_finger02_01_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger02_01.t" "bone_r_arm01_finger02_01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger02_01.rp" "bone_r_arm01_finger02_01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger02_01.rpt" "bone_r_arm01_finger02_01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger02_01.r" "bone_r_arm01_finger02_01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger02_01.ro" "bone_r_arm01_finger02_01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger02_01.s" "bone_r_arm01_finger02_01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger02_01.pm" "bone_r_arm01_finger02_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger02_01_parentConstraint1.w0" "bone_r_arm01_finger02_01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_base01.s" "bone_r_arm01_finger03_01.is";
connectAttr "bone_r_arm01_finger03_01_parentConstraint1.ctx" "bone_r_arm01_finger03_01.tx"
		;
connectAttr "bone_r_arm01_finger03_01_parentConstraint1.cty" "bone_r_arm01_finger03_01.ty"
		;
connectAttr "bone_r_arm01_finger03_01_parentConstraint1.ctz" "bone_r_arm01_finger03_01.tz"
		;
connectAttr "bone_r_arm01_finger03_01_parentConstraint1.crx" "bone_r_arm01_finger03_01.rx"
		;
connectAttr "bone_r_arm01_finger03_01_parentConstraint1.cry" "bone_r_arm01_finger03_01.ry"
		;
connectAttr "bone_r_arm01_finger03_01_parentConstraint1.crz" "bone_r_arm01_finger03_01.rz"
		;
connectAttr "bone_r_arm01_finger03_02_parentConstraint1.cty" "bone_r_arm01_finger03_02.ty"
		;
connectAttr "bone_r_arm01_finger03_02_parentConstraint1.ctz" "bone_r_arm01_finger03_02.tz"
		;
connectAttr "bone_r_arm01_finger03_02_parentConstraint1.ctx" "bone_r_arm01_finger03_02.tx"
		;
connectAttr "bone_r_arm01_finger03_02_parentConstraint1.crx" "bone_r_arm01_finger03_02.rx"
		;
connectAttr "bone_r_arm01_finger03_02_parentConstraint1.cry" "bone_r_arm01_finger03_02.ry"
		;
connectAttr "bone_r_arm01_finger03_02_parentConstraint1.crz" "bone_r_arm01_finger03_02.rz"
		;
connectAttr "bone_r_arm01_finger03_01.s" "bone_r_arm01_finger03_02.is";
connectAttr "bone_r_arm01_finger03_03_parentConstraint1.cty" "bone_r_arm01_finger03_03.ty"
		;
connectAttr "bone_r_arm01_finger03_03_parentConstraint1.ctz" "bone_r_arm01_finger03_03.tz"
		;
connectAttr "bone_r_arm01_finger03_03_parentConstraint1.ctx" "bone_r_arm01_finger03_03.tx"
		;
connectAttr "bone_r_arm01_finger03_03_parentConstraint1.crx" "bone_r_arm01_finger03_03.rx"
		;
connectAttr "bone_r_arm01_finger03_03_parentConstraint1.cry" "bone_r_arm01_finger03_03.ry"
		;
connectAttr "bone_r_arm01_finger03_03_parentConstraint1.crz" "bone_r_arm01_finger03_03.rz"
		;
connectAttr "bone_r_arm01_finger03_02.s" "bone_r_arm01_finger03_03.is";
connectAttr "bone_r_arm01_finger03_03.ro" "bone_r_arm01_finger03_03_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger03_03.pim" "bone_r_arm01_finger03_03_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger03_03.rp" "bone_r_arm01_finger03_03_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger03_03.rpt" "bone_r_arm01_finger03_03_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger03_03.jo" "bone_r_arm01_finger03_03_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger03_03.t" "bone_r_arm01_finger03_03_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger03_03.rp" "bone_r_arm01_finger03_03_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger03_03.rpt" "bone_r_arm01_finger03_03_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger03_03.r" "bone_r_arm01_finger03_03_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger03_03.ro" "bone_r_arm01_finger03_03_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger03_03.s" "bone_r_arm01_finger03_03_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger03_03.pm" "bone_r_arm01_finger03_03_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger03_03_parentConstraint1.w0" "bone_r_arm01_finger03_03_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_finger03_02.ro" "bone_r_arm01_finger03_02_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger03_02.pim" "bone_r_arm01_finger03_02_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger03_02.rp" "bone_r_arm01_finger03_02_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger03_02.rpt" "bone_r_arm01_finger03_02_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger03_02.jo" "bone_r_arm01_finger03_02_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger03_02.t" "bone_r_arm01_finger03_02_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger03_02.rp" "bone_r_arm01_finger03_02_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger03_02.rpt" "bone_r_arm01_finger03_02_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger03_02.r" "bone_r_arm01_finger03_02_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger03_02.ro" "bone_r_arm01_finger03_02_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger03_02.s" "bone_r_arm01_finger03_02_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger03_02.pm" "bone_r_arm01_finger03_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger03_02_parentConstraint1.w0" "bone_r_arm01_finger03_02_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_finger03_01.ro" "bone_r_arm01_finger03_01_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger03_01.pim" "bone_r_arm01_finger03_01_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger03_01.rp" "bone_r_arm01_finger03_01_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger03_01.rpt" "bone_r_arm01_finger03_01_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger03_01.jo" "bone_r_arm01_finger03_01_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger03_01.t" "bone_r_arm01_finger03_01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger03_01.rp" "bone_r_arm01_finger03_01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger03_01.rpt" "bone_r_arm01_finger03_01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger03_01.r" "bone_r_arm01_finger03_01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger03_01.ro" "bone_r_arm01_finger03_01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger03_01.s" "bone_r_arm01_finger03_01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger03_01.pm" "bone_r_arm01_finger03_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger03_01_parentConstraint1.w0" "bone_r_arm01_finger03_01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_base01.s" "bone_r_arm01_finger04_01.is";
connectAttr "bone_r_arm01_finger04_01_parentConstraint1.ctx" "bone_r_arm01_finger04_01.tx"
		;
connectAttr "bone_r_arm01_finger04_01_parentConstraint1.cty" "bone_r_arm01_finger04_01.ty"
		;
connectAttr "bone_r_arm01_finger04_01_parentConstraint1.ctz" "bone_r_arm01_finger04_01.tz"
		;
connectAttr "bone_r_arm01_finger04_01_parentConstraint1.crx" "bone_r_arm01_finger04_01.rx"
		;
connectAttr "bone_r_arm01_finger04_01_parentConstraint1.cry" "bone_r_arm01_finger04_01.ry"
		;
connectAttr "bone_r_arm01_finger04_01_parentConstraint1.crz" "bone_r_arm01_finger04_01.rz"
		;
connectAttr "bone_r_arm01_finger04_02_parentConstraint1.cty" "bone_r_arm01_finger04_02.ty"
		;
connectAttr "bone_r_arm01_finger04_02_parentConstraint1.ctz" "bone_r_arm01_finger04_02.tz"
		;
connectAttr "bone_r_arm01_finger04_02_parentConstraint1.ctx" "bone_r_arm01_finger04_02.tx"
		;
connectAttr "bone_r_arm01_finger04_02_parentConstraint1.crx" "bone_r_arm01_finger04_02.rx"
		;
connectAttr "bone_r_arm01_finger04_02_parentConstraint1.cry" "bone_r_arm01_finger04_02.ry"
		;
connectAttr "bone_r_arm01_finger04_02_parentConstraint1.crz" "bone_r_arm01_finger04_02.rz"
		;
connectAttr "bone_r_arm01_finger04_01.s" "bone_r_arm01_finger04_02.is";
connectAttr "bone_r_arm01_finger04_03_parentConstraint1.cty" "bone_r_arm01_finger04_03.ty"
		;
connectAttr "bone_r_arm01_finger04_03_parentConstraint1.ctz" "bone_r_arm01_finger04_03.tz"
		;
connectAttr "bone_r_arm01_finger04_03_parentConstraint1.ctx" "bone_r_arm01_finger04_03.tx"
		;
connectAttr "bone_r_arm01_finger04_03_parentConstraint1.crx" "bone_r_arm01_finger04_03.rx"
		;
connectAttr "bone_r_arm01_finger04_03_parentConstraint1.cry" "bone_r_arm01_finger04_03.ry"
		;
connectAttr "bone_r_arm01_finger04_03_parentConstraint1.crz" "bone_r_arm01_finger04_03.rz"
		;
connectAttr "bone_r_arm01_finger04_02.s" "bone_r_arm01_finger04_03.is";
connectAttr "bone_r_arm01_finger04_03.ro" "bone_r_arm01_finger04_03_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger04_03.pim" "bone_r_arm01_finger04_03_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger04_03.rp" "bone_r_arm01_finger04_03_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger04_03.rpt" "bone_r_arm01_finger04_03_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger04_03.jo" "bone_r_arm01_finger04_03_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger04_03.t" "bone_r_arm01_finger04_03_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger04_03.rp" "bone_r_arm01_finger04_03_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger04_03.rpt" "bone_r_arm01_finger04_03_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger04_03.r" "bone_r_arm01_finger04_03_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger04_03.ro" "bone_r_arm01_finger04_03_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger04_03.s" "bone_r_arm01_finger04_03_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger04_03.pm" "bone_r_arm01_finger04_03_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger04_03_parentConstraint1.w0" "bone_r_arm01_finger04_03_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_finger04_02.ro" "bone_r_arm01_finger04_02_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger04_02.pim" "bone_r_arm01_finger04_02_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger04_02.rp" "bone_r_arm01_finger04_02_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger04_02.rpt" "bone_r_arm01_finger04_02_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger04_02.jo" "bone_r_arm01_finger04_02_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger04_02.t" "bone_r_arm01_finger04_02_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger04_02.rp" "bone_r_arm01_finger04_02_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger04_02.rpt" "bone_r_arm01_finger04_02_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger04_02.r" "bone_r_arm01_finger04_02_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger04_02.ro" "bone_r_arm01_finger04_02_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger04_02.s" "bone_r_arm01_finger04_02_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger04_02.pm" "bone_r_arm01_finger04_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger04_02_parentConstraint1.w0" "bone_r_arm01_finger04_02_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_finger04_01.ro" "bone_r_arm01_finger04_01_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger04_01.pim" "bone_r_arm01_finger04_01_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger04_01.rp" "bone_r_arm01_finger04_01_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger04_01.rpt" "bone_r_arm01_finger04_01_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger04_01.jo" "bone_r_arm01_finger04_01_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger04_01.t" "bone_r_arm01_finger04_01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger04_01.rp" "bone_r_arm01_finger04_01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger04_01.rpt" "bone_r_arm01_finger04_01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger04_01.r" "bone_r_arm01_finger04_01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger04_01.ro" "bone_r_arm01_finger04_01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger04_01.s" "bone_r_arm01_finger04_01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger04_01.pm" "bone_r_arm01_finger04_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger04_01_parentConstraint1.w0" "bone_r_arm01_finger04_01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_base01.s" "bone_r_arm01_finger05_01.is";
connectAttr "bone_r_arm01_finger05_01_parentConstraint1.ctx" "bone_r_arm01_finger05_01.tx"
		;
connectAttr "bone_r_arm01_finger05_01_parentConstraint1.cty" "bone_r_arm01_finger05_01.ty"
		;
connectAttr "bone_r_arm01_finger05_01_parentConstraint1.ctz" "bone_r_arm01_finger05_01.tz"
		;
connectAttr "bone_r_arm01_finger05_01_parentConstraint1.crx" "bone_r_arm01_finger05_01.rx"
		;
connectAttr "bone_r_arm01_finger05_01_parentConstraint1.cry" "bone_r_arm01_finger05_01.ry"
		;
connectAttr "bone_r_arm01_finger05_01_parentConstraint1.crz" "bone_r_arm01_finger05_01.rz"
		;
connectAttr "bone_r_arm01_finger05_02_parentConstraint1.cty" "bone_r_arm01_finger05_02.ty"
		;
connectAttr "bone_r_arm01_finger05_02_parentConstraint1.ctz" "bone_r_arm01_finger05_02.tz"
		;
connectAttr "bone_r_arm01_finger05_02_parentConstraint1.ctx" "bone_r_arm01_finger05_02.tx"
		;
connectAttr "bone_r_arm01_finger05_02_parentConstraint1.crx" "bone_r_arm01_finger05_02.rx"
		;
connectAttr "bone_r_arm01_finger05_02_parentConstraint1.cry" "bone_r_arm01_finger05_02.ry"
		;
connectAttr "bone_r_arm01_finger05_02_parentConstraint1.crz" "bone_r_arm01_finger05_02.rz"
		;
connectAttr "bone_r_arm01_finger05_01.s" "bone_r_arm01_finger05_02.is";
connectAttr "bone_r_arm01_finger05_03_parentConstraint1.cty" "bone_r_arm01_finger05_03.ty"
		;
connectAttr "bone_r_arm01_finger05_03_parentConstraint1.ctz" "bone_r_arm01_finger05_03.tz"
		;
connectAttr "bone_r_arm01_finger05_03_parentConstraint1.ctx" "bone_r_arm01_finger05_03.tx"
		;
connectAttr "bone_r_arm01_finger05_03_parentConstraint1.crx" "bone_r_arm01_finger05_03.rx"
		;
connectAttr "bone_r_arm01_finger05_03_parentConstraint1.cry" "bone_r_arm01_finger05_03.ry"
		;
connectAttr "bone_r_arm01_finger05_03_parentConstraint1.crz" "bone_r_arm01_finger05_03.rz"
		;
connectAttr "bone_r_arm01_finger05_02.s" "bone_r_arm01_finger05_03.is";
connectAttr "bone_r_arm01_finger05_03.ro" "bone_r_arm01_finger05_03_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger05_03.pim" "bone_r_arm01_finger05_03_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger05_03.rp" "bone_r_arm01_finger05_03_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger05_03.rpt" "bone_r_arm01_finger05_03_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger05_03.jo" "bone_r_arm01_finger05_03_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger05_03.t" "bone_r_arm01_finger05_03_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger05_03.rp" "bone_r_arm01_finger05_03_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger05_03.rpt" "bone_r_arm01_finger05_03_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger05_03.r" "bone_r_arm01_finger05_03_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger05_03.ro" "bone_r_arm01_finger05_03_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger05_03.s" "bone_r_arm01_finger05_03_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger05_03.pm" "bone_r_arm01_finger05_03_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger05_03_parentConstraint1.w0" "bone_r_arm01_finger05_03_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_finger05_02.ro" "bone_r_arm01_finger05_02_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger05_02.pim" "bone_r_arm01_finger05_02_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger05_02.rp" "bone_r_arm01_finger05_02_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger05_02.rpt" "bone_r_arm01_finger05_02_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger05_02.jo" "bone_r_arm01_finger05_02_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger05_02.t" "bone_r_arm01_finger05_02_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger05_02.rp" "bone_r_arm01_finger05_02_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger05_02.rpt" "bone_r_arm01_finger05_02_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger05_02.r" "bone_r_arm01_finger05_02_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger05_02.ro" "bone_r_arm01_finger05_02_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger05_02.s" "bone_r_arm01_finger05_02_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger05_02.pm" "bone_r_arm01_finger05_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger05_02_parentConstraint1.w0" "bone_r_arm01_finger05_02_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_finger05_01.ro" "bone_r_arm01_finger05_01_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_finger05_01.pim" "bone_r_arm01_finger05_01_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_finger05_01.rp" "bone_r_arm01_finger05_01_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_finger05_01.rpt" "bone_r_arm01_finger05_01_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_finger05_01.jo" "bone_r_arm01_finger05_01_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_finger05_01.t" "bone_r_arm01_finger05_01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_finger05_01.rp" "bone_r_arm01_finger05_01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_finger05_01.rpt" "bone_r_arm01_finger05_01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_finger05_01.r" "bone_r_arm01_finger05_01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_finger05_01.ro" "bone_r_arm01_finger05_01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_finger05_01.s" "bone_r_arm01_finger05_01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_finger05_01.pm" "bone_r_arm01_finger05_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_finger05_01_parentConstraint1.w0" "bone_r_arm01_finger05_01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_base01.ro" "bone_r_arm01_base01_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_base01.pim" "bone_r_arm01_base01_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_base01.rp" "bone_r_arm01_base01_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_base01.rpt" "bone_r_arm01_base01_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_base01.jo" "bone_r_arm01_base01_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_base01.t" "bone_r_arm01_base01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_base01.rp" "bone_r_arm01_base01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_base01.rpt" "bone_r_arm01_base01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_base01.r" "bone_r_arm01_base01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_base01.ro" "bone_r_arm01_base01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_base01.s" "bone_r_arm01_base01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_base01.pm" "bone_r_arm01_base01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_base01_parentConstraint1.w0" "bone_r_arm01_base01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_base01_ik.t" "bone_r_arm01_base01_parentConstraint1.tg[1].tt"
		;
connectAttr "bone_r_arm01_base01_ik.rp" "bone_r_arm01_base01_parentConstraint1.tg[1].trp"
		;
connectAttr "bone_r_arm01_base01_ik.rpt" "bone_r_arm01_base01_parentConstraint1.tg[1].trt"
		;
connectAttr "bone_r_arm01_base01_ik.r" "bone_r_arm01_base01_parentConstraint1.tg[1].tr"
		;
connectAttr "bone_r_arm01_base01_ik.ro" "bone_r_arm01_base01_parentConstraint1.tg[1].tro"
		;
connectAttr "bone_r_arm01_base01_ik.s" "bone_r_arm01_base01_parentConstraint1.tg[1].ts"
		;
connectAttr "bone_r_arm01_base01_ik.pm" "bone_r_arm01_base01_parentConstraint1.tg[1].tpm"
		;
connectAttr "bone_r_arm01_base01_ik.jo" "bone_r_arm01_base01_parentConstraint1.tg[1].tjo"
		;
connectAttr "bone_r_arm01_base01_parentConstraint1.w1" "bone_r_arm01_base01_parentConstraint1.tg[1].tw"
		;
connectAttr "ctrl_r_arm01_ikBlend_reverse.ox" "bone_r_arm01_base01_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_base01_ik.ikBlend" "bone_r_arm01_base01_parentConstraint1.w1"
		;
connectAttr "bone_r_arm01_base01_twist01_parentConstraint1.cry" "bone_r_arm01_base01_twist01.ry"
		;
connectAttr "bone_r_arm01_base01_twist01_parentConstraint1.crz" "bone_r_arm01_base01_twist01.rz"
		;
connectAttr "bone_r_arm01_base01_twist01_parentConstraint1.crx" "bone_r_arm01_base01_twist01.rx"
		;
connectAttr "ctrl_r_arm01_base01_ik_squish_mltDiv.ox" "bone_r_arm01_base01_twist01.sy"
		;
connectAttr "ctrl_r_arm01_base01_ik_squish_mltDiv.ox" "bone_r_arm01_base01_twist01.sz"
		;
connectAttr "bone_r_arm01_mid01.s" "bone_r_arm01_base01_twist01.is";
connectAttr "bone_r_arm01_base01_twist01_parentConstraint1.cty" "bone_r_arm01_base01_twist01.ty"
		;
connectAttr "bone_r_arm01_base01_twist01_parentConstraint1.ctz" "bone_r_arm01_base01_twist01.tz"
		;
connectAttr "bone_r_arm01_base01_twist01_parentConstraint1.ctx" "bone_r_arm01_base01_twist01.tx"
		;
connectAttr "bone_r_arm01_base01_twist01.ro" "bone_r_arm01_base01_twist01_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_base01_twist01.pim" "bone_r_arm01_base01_twist01_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_base01_twist01.rp" "bone_r_arm01_base01_twist01_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_base01_twist01.rpt" "bone_r_arm01_base01_twist01_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_base01_twist01.jo" "bone_r_arm01_base01_twist01_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_base01_twist01.t" "bone_r_arm01_base01_twist01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_base01_twist01.rp" "bone_r_arm01_base01_twist01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_base01_twist01.rpt" "bone_r_arm01_base01_twist01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_base01_twist01.r" "bone_r_arm01_base01_twist01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_base01_twist01.ro" "bone_r_arm01_base01_twist01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_base01_twist01.s" "bone_r_arm01_base01_twist01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_base01_twist01.pm" "bone_r_arm01_base01_twist01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_base01_twist01_parentConstraint1.w0" "bone_r_arm01_base01_twist01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_mid01.ro" "bone_r_arm01_mid01_parentConstraint1.cro";
connectAttr "bone_r_arm01_mid01.pim" "bone_r_arm01_mid01_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_mid01.rp" "bone_r_arm01_mid01_parentConstraint1.crp";
connectAttr "bone_r_arm01_mid01.rpt" "bone_r_arm01_mid01_parentConstraint1.crt";
connectAttr "bone_r_arm01_mid01.jo" "bone_r_arm01_mid01_parentConstraint1.cjo";
connectAttr "ctrl_r_arm01_mid01.t" "bone_r_arm01_mid01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_mid01.rp" "bone_r_arm01_mid01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_mid01.rpt" "bone_r_arm01_mid01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_mid01.r" "bone_r_arm01_mid01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_mid01.ro" "bone_r_arm01_mid01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_mid01.s" "bone_r_arm01_mid01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_mid01.pm" "bone_r_arm01_mid01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_mid01_parentConstraint1.w0" "bone_r_arm01_mid01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_mid01_ik.t" "bone_r_arm01_mid01_parentConstraint1.tg[1].tt"
		;
connectAttr "bone_r_arm01_mid01_ik.rp" "bone_r_arm01_mid01_parentConstraint1.tg[1].trp"
		;
connectAttr "bone_r_arm01_mid01_ik.rpt" "bone_r_arm01_mid01_parentConstraint1.tg[1].trt"
		;
connectAttr "bone_r_arm01_mid01_ik.r" "bone_r_arm01_mid01_parentConstraint1.tg[1].tr"
		;
connectAttr "bone_r_arm01_mid01_ik.ro" "bone_r_arm01_mid01_parentConstraint1.tg[1].tro"
		;
connectAttr "bone_r_arm01_mid01_ik.s" "bone_r_arm01_mid01_parentConstraint1.tg[1].ts"
		;
connectAttr "bone_r_arm01_mid01_ik.pm" "bone_r_arm01_mid01_parentConstraint1.tg[1].tpm"
		;
connectAttr "bone_r_arm01_mid01_ik.jo" "bone_r_arm01_mid01_parentConstraint1.tg[1].tjo"
		;
connectAttr "bone_r_arm01_mid01_parentConstraint1.w1" "bone_r_arm01_mid01_parentConstraint1.tg[1].tw"
		;
connectAttr "ctrl_r_arm01_ikBlend_reverse.ox" "bone_r_arm01_mid01_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_base01_ik.ikBlend" "bone_r_arm01_mid01_parentConstraint1.w1"
		;
connectAttr "bone_r_arm01_upper01.ro" "bone_r_arm01_upper01_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_upper01.pim" "bone_r_arm01_upper01_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_upper01.rp" "bone_r_arm01_upper01_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_upper01.rpt" "bone_r_arm01_upper01_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_upper01.jo" "bone_r_arm01_upper01_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_upper01.t" "bone_r_arm01_upper01_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_upper01.rp" "bone_r_arm01_upper01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_upper01.rpt" "bone_r_arm01_upper01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_upper01.r" "bone_r_arm01_upper01_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_upper01.ro" "bone_r_arm01_upper01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_upper01.s" "bone_r_arm01_upper01_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_upper01.pm" "bone_r_arm01_upper01_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_upper01_parentConstraint1.w0" "bone_r_arm01_upper01_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_upper01_ik.t" "bone_r_arm01_upper01_parentConstraint1.tg[1].tt"
		;
connectAttr "bone_r_arm01_upper01_ik.rp" "bone_r_arm01_upper01_parentConstraint1.tg[1].trp"
		;
connectAttr "bone_r_arm01_upper01_ik.rpt" "bone_r_arm01_upper01_parentConstraint1.tg[1].trt"
		;
connectAttr "bone_r_arm01_upper01_ik.r" "bone_r_arm01_upper01_parentConstraint1.tg[1].tr"
		;
connectAttr "bone_r_arm01_upper01_ik.ro" "bone_r_arm01_upper01_parentConstraint1.tg[1].tro"
		;
connectAttr "bone_r_arm01_upper01_ik.s" "bone_r_arm01_upper01_parentConstraint1.tg[1].ts"
		;
connectAttr "bone_r_arm01_upper01_ik.pm" "bone_r_arm01_upper01_parentConstraint1.tg[1].tpm"
		;
connectAttr "bone_r_arm01_upper01_ik.jo" "bone_r_arm01_upper01_parentConstraint1.tg[1].tjo"
		;
connectAttr "bone_r_arm01_upper01_parentConstraint1.w1" "bone_r_arm01_upper01_parentConstraint1.tg[1].tw"
		;
connectAttr "ctrl_r_arm01_ikBlend_reverse.ox" "bone_r_arm01_upper01_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_base01_ik.ikBlend" "bone_r_arm01_upper01_parentConstraint1.w1"
		;
connectAttr "ctrl_master__mltDiv.o" "ctrl_trendmill.t";
connectAttr "ctrl_cog_mltDiv1.ox" "ctrl_root01_parent.tx";
connectAttr "ctrl_cog_mltDiv1.oy" "ctrl_root01_parent.ty";
connectAttr "ctrl_cog_mltDiv1.oz" "ctrl_root01_parent.tz";
connectAttr "ctrl_r_arm01_ikBlend_reverse.ox" "ctrl_r_arm01_upper01.v" -l on;
connectAttr "ctrl_r_arm01_mid01_parent_parentConstraint1.ctx" "ctrl_r_arm01_mid01_parent.tx"
		;
connectAttr "ctrl_r_arm01_mid01_parent_parentConstraint1.cty" "ctrl_r_arm01_mid01_parent.ty"
		;
connectAttr "ctrl_r_arm01_mid01_parent_parentConstraint1.ctz" "ctrl_r_arm01_mid01_parent.tz"
		;
connectAttr "ctrl_r_arm01_mid01_parent_parentConstraint1.crx" "ctrl_r_arm01_mid01_parent.rx"
		;
connectAttr "ctrl_r_arm01_mid01_parent_parentConstraint1.cry" "ctrl_r_arm01_mid01_parent.ry"
		;
connectAttr "ctrl_r_arm01_mid01_parent_parentConstraint1.crz" "ctrl_r_arm01_mid01_parent.rz"
		;
connectAttr "ctrl_r_arm01_ikBlend_reverse.ox" "ctrl_r_arm01_mid01.v" -l on;
connectAttr "ctrl_r_arm01_upper01.fk_switch" "ctrl_r_arm01_mid01.fk_switch";
connectAttr "ctrl_r_arm01_base01_parent_parentConstraint1.ctx" "ctrl_r_arm01_base01_parent.tx"
		;
connectAttr "ctrl_r_arm01_base01_parent_parentConstraint1.cty" "ctrl_r_arm01_base01_parent.ty"
		;
connectAttr "ctrl_r_arm01_base01_parent_parentConstraint1.ctz" "ctrl_r_arm01_base01_parent.tz"
		;
connectAttr "ctrl_r_arm01_base01_parent_parentConstraint1.crx" "ctrl_r_arm01_base01_parent.rx"
		;
connectAttr "ctrl_r_arm01_base01_parent_parentConstraint1.cry" "ctrl_r_arm01_base01_parent.ry"
		;
connectAttr "ctrl_r_arm01_base01_parent_parentConstraint1.crz" "ctrl_r_arm01_base01_parent.rz"
		;
connectAttr "ctrl_r_arm01_ikBlend_reverse.ox" "ctrl_r_arm01_base01.v" -l on;
connectAttr "ctrl_r_arm01_upper01.fk_switch" "ctrl_r_arm01_base01.fk_switch";
connectAttr "ctrl_r_arm01_base01_parent.ro" "ctrl_r_arm01_base01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_base01_parent.pim" "ctrl_r_arm01_base01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_base01_parent.rp" "ctrl_r_arm01_base01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_base01_parent.rpt" "ctrl_r_arm01_base01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_base01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_base01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_base01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_base01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_base01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_base01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_base01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_base01_parent_parentConstraint1.w0" "ctrl_r_arm01_base01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_base01.follow_world" "ctrl_r_arm01_base01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_mid01_parent.ro" "ctrl_r_arm01_mid01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_mid01_parent.pim" "ctrl_r_arm01_mid01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_mid01_parent.rp" "ctrl_r_arm01_mid01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_mid01_parent.rpt" "ctrl_r_arm01_mid01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_mid01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_mid01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_mid01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_mid01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_mid01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_mid01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_mid01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_mid01_parent_parentConstraint1.w0" "ctrl_r_arm01_mid01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_mid01.follow_world" "ctrl_r_arm01_mid01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_base01_ik.ikBlend" "ctrl_r_arm01_upper01_ik_parent.v" 
		-l on;
connectAttr "ctrl_r_arm01_upper01_ik_flwWld_reverse.ox" "ctrl_r_arm01_upper01_ik.v"
		;
connectAttr "ctrl_r_arm01_base01_ik_stretch_mltDiv.ox" "bone_r_arm01_upper01_ik.sx"
		;
connectAttr "ctrl_r_arm01_base01_ik_squish_mltDiv.ox" "bone_r_arm01_upper01_ik.sy"
		;
connectAttr "ctrl_r_arm01_base01_ik_squish_mltDiv.ox" "bone_r_arm01_upper01_ik.sz"
		;
connectAttr "ctrl_r_arm01_base01_ik_squish_mltDiv.ox" "bone_r_arm01_mid01_ik.sy"
		;
connectAttr "ctrl_r_arm01_base01_ik_squish_mltDiv.ox" "bone_r_arm01_mid01_ik.sz"
		;
connectAttr "bone_r_arm01_upper01_ik.s" "bone_r_arm01_mid01_ik.is";
connectAttr "bone_r_arm01_base01_ik_parentConstraint1.crx" "bone_r_arm01_base01_ik.rx"
		;
connectAttr "bone_r_arm01_base01_ik_parentConstraint1.cry" "bone_r_arm01_base01_ik.ry"
		;
connectAttr "bone_r_arm01_base01_ik_parentConstraint1.crz" "bone_r_arm01_base01_ik.rz"
		;
connectAttr "bone_r_arm01_mid01_ik.s" "bone_r_arm01_base01_ik.is";
connectAttr "bone_r_arm01_base01_ik.ro" "bone_r_arm01_base01_ik_parentConstraint1.cro"
		;
connectAttr "bone_r_arm01_base01_ik.pim" "bone_r_arm01_base01_ik_parentConstraint1.cpim"
		;
connectAttr "bone_r_arm01_base01_ik.rp" "bone_r_arm01_base01_ik_parentConstraint1.crp"
		;
connectAttr "bone_r_arm01_base01_ik.rpt" "bone_r_arm01_base01_ik_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_base01_ik.jo" "bone_r_arm01_base01_ik_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik.t" "bone_r_arm01_base01_ik_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik.rp" "bone_r_arm01_base01_ik_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik.rpt" "bone_r_arm01_base01_ik_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik.r" "bone_r_arm01_base01_ik_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik.ro" "bone_r_arm01_base01_ik_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik.s" "bone_r_arm01_base01_ik_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik.pm" "bone_r_arm01_base01_ik_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_base01_ik_parentConstraint1.w0" "bone_r_arm01_base01_ik_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_r_arm01_base01_ik.tx" "bone_r_arm01_base01_ik_eff.tx";
connectAttr "bone_r_arm01_base01_ik.ty" "bone_r_arm01_base01_ik_eff.ty";
connectAttr "bone_r_arm01_base01_ik.tz" "bone_r_arm01_base01_ik_eff.tz";
connectAttr "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.ctx" "ctrl_r_arm01_base01_rotate_ik_parent.tx"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.cty" "ctrl_r_arm01_base01_rotate_ik_parent.ty"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.ctz" "ctrl_r_arm01_base01_rotate_ik_parent.tz"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.crx" "ctrl_r_arm01_base01_rotate_ik_parent.rx"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.cry" "ctrl_r_arm01_base01_rotate_ik_parent.ry"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.crz" "ctrl_r_arm01_base01_rotate_ik_parent.rz"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik_parent.ro" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik_parent.pim" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik_parent.rp" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik_parent.rpt" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_r_arm01_base01_ik.t" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_base01_ik.rp" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_base01_ik.rpt" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_base01_ik.r" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_base01_ik.ro" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_base01_ik.s" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_base01_ik.pm" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.w0" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_base01_ik.ikRotate" "ctrl_r_arm01_base01_rotate_ik_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_upper01_family_parentConstraint1.cty" "ctrl_l_arm01_upper01_family.ty"
		;
connectAttr "ctrl_l_arm01_upper01_family_parentConstraint1.ctx" "ctrl_l_arm01_upper01_family.tx"
		;
connectAttr "ctrl_l_arm01_upper01_family_parentConstraint1.ctz" "ctrl_l_arm01_upper01_family.tz"
		;
connectAttr "ctrl_l_arm01_upper01_family_parentConstraint1.crx" "ctrl_l_arm01_upper01_family.rx"
		;
connectAttr "ctrl_l_arm01_upper01_family_parentConstraint1.cry" "ctrl_l_arm01_upper01_family.ry"
		;
connectAttr "ctrl_l_arm01_upper01_family_parentConstraint1.crz" "ctrl_l_arm01_upper01_family.rz"
		;
connectAttr "ctrl_l_arm01_upper01_parent_orientConstraint1.crx" "ctrl_l_arm01_upper01_parent.rx"
		;
connectAttr "ctrl_l_arm01_upper01_parent_orientConstraint1.cry" "ctrl_l_arm01_upper01_parent.ry"
		;
connectAttr "ctrl_l_arm01_upper01_parent_orientConstraint1.crz" "ctrl_l_arm01_upper01_parent.rz"
		;
connectAttr "ctrl_l_arm01_ikBlend_reverse.ox" "ctrl_l_arm01_upper01.v" -l on;
connectAttr "ctrl_l_arm01_mid01_parent_parentConstraint1.ctx" "ctrl_l_arm01_mid01_parent.tx"
		;
connectAttr "ctrl_l_arm01_mid01_parent_parentConstraint1.cty" "ctrl_l_arm01_mid01_parent.ty"
		;
connectAttr "ctrl_l_arm01_mid01_parent_parentConstraint1.ctz" "ctrl_l_arm01_mid01_parent.tz"
		;
connectAttr "ctrl_l_arm01_mid01_parent_parentConstraint1.crx" "ctrl_l_arm01_mid01_parent.rx"
		;
connectAttr "ctrl_l_arm01_mid01_parent_parentConstraint1.cry" "ctrl_l_arm01_mid01_parent.ry"
		;
connectAttr "ctrl_l_arm01_mid01_parent_parentConstraint1.crz" "ctrl_l_arm01_mid01_parent.rz"
		;
connectAttr "ctrl_l_arm01_ikBlend_reverse.ox" "ctrl_l_arm01_mid01.v" -l on;
connectAttr "ctrl_l_arm01_upper01.fk_switch" "ctrl_l_arm01_mid01.fk_switch";
connectAttr "ctrl_l_arm01_base01_parent_parentConstraint1.ctx" "ctrl_l_arm01_base01_parent.tx"
		;
connectAttr "ctrl_l_arm01_base01_parent_parentConstraint1.cty" "ctrl_l_arm01_base01_parent.ty"
		;
connectAttr "ctrl_l_arm01_base01_parent_parentConstraint1.ctz" "ctrl_l_arm01_base01_parent.tz"
		;
connectAttr "ctrl_l_arm01_base01_parent_parentConstraint1.crx" "ctrl_l_arm01_base01_parent.rx"
		;
connectAttr "ctrl_l_arm01_base01_parent_parentConstraint1.cry" "ctrl_l_arm01_base01_parent.ry"
		;
connectAttr "ctrl_l_arm01_base01_parent_parentConstraint1.crz" "ctrl_l_arm01_base01_parent.rz"
		;
connectAttr "ctrl_l_arm01_ikBlend_reverse.ox" "ctrl_l_arm01_base01.v" -l on;
connectAttr "ctrl_l_arm01_upper01.fk_switch" "ctrl_l_arm01_base01.fk_switch";
connectAttr "ctrl_l_arm01_base01_parent.ro" "ctrl_l_arm01_base01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_base01_parent.pim" "ctrl_l_arm01_base01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_base01_parent.rp" "ctrl_l_arm01_base01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_base01_parent.rpt" "ctrl_l_arm01_base01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_base01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_base01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_base01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_base01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_base01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_base01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_base01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_base01_parent_parentConstraint1.w0" "ctrl_l_arm01_base01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_base01.follow_world" "ctrl_l_arm01_base01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_mid01_parent.ro" "ctrl_l_arm01_mid01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_mid01_parent.pim" "ctrl_l_arm01_mid01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_mid01_parent.rp" "ctrl_l_arm01_mid01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_mid01_parent.rpt" "ctrl_l_arm01_mid01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_mid01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_mid01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_mid01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_mid01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_mid01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_mid01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_mid01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_mid01_parent_parentConstraint1.w0" "ctrl_l_arm01_mid01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_mid01.follow_world" "ctrl_l_arm01_mid01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_upper01_parent.ro" "ctrl_l_arm01_upper01_parent_orientConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_upper01_parent.pim" "ctrl_l_arm01_upper01_parent_orientConstraint1.cpim"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_upper01_parent_orientConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_upper01_parent_orientConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_upper01_parent_orientConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_upper01_parent_orientConstraint1.w0" "ctrl_l_arm01_upper01_parent_orientConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_upper01.world_rotate" "ctrl_l_arm01_upper01_parent_orientConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_upper01_family.ro" "ctrl_l_arm01_upper01_family_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_upper01_family.pim" "ctrl_l_arm01_upper01_family_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_upper01_family.rp" "ctrl_l_arm01_upper01_family_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_upper01_family.rpt" "ctrl_l_arm01_upper01_family_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_upper01_family_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_upper01_family_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_upper01_family_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_upper01_family_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_upper01_family_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_upper01_family_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_upper01_family_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_upper01_family_parentConstraint1.w0" "ctrl_l_arm01_upper01_family_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_upper01.follow_world" "ctrl_l_arm01_upper01_family_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_upper01_ik_family_parentConstraint1.cty" "ctrl_l_arm01_upper01_ik_family.ty"
		;
connectAttr "ctrl_l_arm01_upper01_ik_family_parentConstraint1.ctx" "ctrl_l_arm01_upper01_ik_family.tx"
		;
connectAttr "ctrl_l_arm01_upper01_ik_family_parentConstraint1.ctz" "ctrl_l_arm01_upper01_ik_family.tz"
		;
connectAttr "ctrl_l_arm01_upper01_ik_family_parentConstraint1.crx" "ctrl_l_arm01_upper01_ik_family.rx"
		;
connectAttr "ctrl_l_arm01_upper01_ik_family_parentConstraint1.cry" "ctrl_l_arm01_upper01_ik_family.ry"
		;
connectAttr "ctrl_l_arm01_upper01_ik_family_parentConstraint1.crz" "ctrl_l_arm01_upper01_ik_family.rz"
		;
connectAttr "ctrl_l_arm01_upper01_ik_parent_orientConstraint1.crx" "ctrl_l_arm01_upper01_ik_parent.rx"
		;
connectAttr "ctrl_l_arm01_upper01_ik_parent_orientConstraint1.cry" "ctrl_l_arm01_upper01_ik_parent.ry"
		;
connectAttr "ctrl_l_arm01_upper01_ik_parent_orientConstraint1.crz" "ctrl_l_arm01_upper01_ik_parent.rz"
		;
connectAttr "ctrl_l_arm01_base01_ik.ikBlend" "ctrl_l_arm01_upper01_ik_parent.v" 
		-l on;
connectAttr "ctrl_l_arm01_upper01_ik_flwWld_reverse.ox" "ctrl_l_arm01_upper01_ik.v"
		;
connectAttr "ctrl_l_arm01_base01_ik_stretch_mltDiv.ox" "bone_l_arm01_upper01_ik.sx"
		;
connectAttr "ctrl_l_arm01_base01_ik_squish_mltDiv.ox" "bone_l_arm01_upper01_ik.sy"
		;
connectAttr "ctrl_l_arm01_base01_ik_squish_mltDiv.ox" "bone_l_arm01_upper01_ik.sz"
		;
connectAttr "ctrl_l_arm01_base01_ik_squish_mltDiv.ox" "bone_l_arm01_mid01_ik.sy"
		;
connectAttr "ctrl_l_arm01_base01_ik_squish_mltDiv.ox" "bone_l_arm01_mid01_ik.sz"
		;
connectAttr "bone_l_arm01_upper01_ik.s" "bone_l_arm01_mid01_ik.is";
connectAttr "bone_l_arm01_base01_ik_parentConstraint1.crx" "bone_l_arm01_base01_ik.rx"
		;
connectAttr "bone_l_arm01_base01_ik_parentConstraint1.cry" "bone_l_arm01_base01_ik.ry"
		;
connectAttr "bone_l_arm01_base01_ik_parentConstraint1.crz" "bone_l_arm01_base01_ik.rz"
		;
connectAttr "bone_l_arm01_mid01_ik.s" "bone_l_arm01_base01_ik.is";
connectAttr "bone_l_arm01_base01_ik.ro" "bone_l_arm01_base01_ik_parentConstraint1.cro"
		;
connectAttr "bone_l_arm01_base01_ik.pim" "bone_l_arm01_base01_ik_parentConstraint1.cpim"
		;
connectAttr "bone_l_arm01_base01_ik.rp" "bone_l_arm01_base01_ik_parentConstraint1.crp"
		;
connectAttr "bone_l_arm01_base01_ik.rpt" "bone_l_arm01_base01_ik_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_base01_ik.jo" "bone_l_arm01_base01_ik_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik.t" "bone_l_arm01_base01_ik_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik.rp" "bone_l_arm01_base01_ik_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik.rpt" "bone_l_arm01_base01_ik_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik.r" "bone_l_arm01_base01_ik_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik.ro" "bone_l_arm01_base01_ik_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik.s" "bone_l_arm01_base01_ik_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik.pm" "bone_l_arm01_base01_ik_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_base01_ik_parentConstraint1.w0" "bone_l_arm01_base01_ik_parentConstraint1.tg[0].tw"
		;
connectAttr "bone_l_arm01_base01_ik.tx" "bone_l_arm01_base01_ik_eff.tx";
connectAttr "bone_l_arm01_base01_ik.ty" "bone_l_arm01_base01_ik_eff.ty";
connectAttr "bone_l_arm01_base01_ik.tz" "bone_l_arm01_base01_ik_eff.tz";
connectAttr "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.ctx" "ctrl_l_arm01_base01_rotate_ik_parent.tx"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.cty" "ctrl_l_arm01_base01_rotate_ik_parent.ty"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.ctz" "ctrl_l_arm01_base01_rotate_ik_parent.tz"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.crx" "ctrl_l_arm01_base01_rotate_ik_parent.rx"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.cry" "ctrl_l_arm01_base01_rotate_ik_parent.ry"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.crz" "ctrl_l_arm01_base01_rotate_ik_parent.rz"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik_parent.ro" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik_parent.pim" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik_parent.rp" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik_parent.rpt" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_l_arm01_base01_ik.t" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_base01_ik.rp" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_base01_ik.rpt" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_base01_ik.r" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_base01_ik.ro" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_base01_ik.s" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_base01_ik.pm" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.w0" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_base01_ik.ikRotate" "ctrl_l_arm01_base01_rotate_ik_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_upper01_ik_parent.ro" "ctrl_l_arm01_upper01_ik_parent_orientConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_upper01_ik_parent.pim" "ctrl_l_arm01_upper01_ik_parent_orientConstraint1.cpim"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_upper01_ik_parent_orientConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_upper01_ik_parent_orientConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_upper01_ik_parent_orientConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_upper01_ik_parent_orientConstraint1.w0" "ctrl_l_arm01_upper01_ik_parent_orientConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_upper01_ik.world_rotate" "ctrl_l_arm01_upper01_ik_parent_orientConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_upper01_ik_family.ro" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_upper01_ik_family.pim" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_upper01_ik_family.rp" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_upper01_ik_family.rpt" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_upper01_ik_family_parentConstraint1.w0" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_upper01_ik.follow_world" "ctrl_l_arm01_upper01_ik_family_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_base01_ik_family_parentConstraint1.ctx" "ctrl_r_arm01_base01_ik_family.tx"
		;
connectAttr "ctrl_r_arm01_base01_ik_family_parentConstraint1.cty" "ctrl_r_arm01_base01_ik_family.ty"
		;
connectAttr "ctrl_r_arm01_base01_ik_family_parentConstraint1.ctz" "ctrl_r_arm01_base01_ik_family.tz"
		;
connectAttr "ctrl_r_arm01_base01_ik_family_parentConstraint1.crx" "ctrl_r_arm01_base01_ik_family.rx"
		;
connectAttr "ctrl_r_arm01_base01_ik_family_parentConstraint1.cry" "ctrl_r_arm01_base01_ik_family.ry"
		;
connectAttr "ctrl_r_arm01_base01_ik_family_parentConstraint1.crz" "ctrl_r_arm01_base01_ik_family.rz"
		;
connectAttr "ctrl_r_arm01_base01_ik.ikBlend" "ctrl_r_arm01_base01_ik.v" -l on;
connectAttr "bone_r_arm01_upper01_ik.msg" "bone_r_arm01_base01_ikHandle.hsj";
connectAttr "bone_r_arm01_base01_ik_eff.hp" "bone_r_arm01_base01_ikHandle.hee";
connectAttr "ikRPsolver.msg" "bone_r_arm01_base01_ikHandle.hsv";
connectAttr "ctrl_r_arm01_base01_ik.ikBlend" "bone_r_arm01_base01_ikHandle.ikb";
connectAttr "bone_r_arm01_base01_ikHandle_poleVectorConstraint1.ctx" "bone_r_arm01_base01_ikHandle.pvx"
		;
connectAttr "bone_r_arm01_base01_ikHandle_poleVectorConstraint1.cty" "bone_r_arm01_base01_ikHandle.pvy"
		;
connectAttr "bone_r_arm01_base01_ikHandle_poleVectorConstraint1.ctz" "bone_r_arm01_base01_ikHandle.pvz"
		;
connectAttr "bone_r_arm01_base01_ikHandle.pim" "bone_r_arm01_base01_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "bone_r_arm01_upper01_ik.pm" "bone_r_arm01_base01_ikHandle_poleVectorConstraint1.ps"
		;
connectAttr "bone_r_arm01_upper01_ik.t" "bone_r_arm01_base01_ikHandle_poleVectorConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_base01_pv.t" "bone_r_arm01_base01_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_base01_pv.rp" "bone_r_arm01_base01_ikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_base01_pv.rpt" "bone_r_arm01_base01_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_base01_pv.pm" "bone_r_arm01_base01_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_base01_ikHandle_poleVectorConstraint1.w0" "bone_r_arm01_base01_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_base01_ik_family.ro" "ctrl_r_arm01_base01_ik_family_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_base01_ik_family.pim" "ctrl_r_arm01_base01_ik_family_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_base01_ik_family.rp" "ctrl_r_arm01_base01_ik_family_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_base01_ik_family.rpt" "ctrl_r_arm01_base01_ik_family_parentConstraint1.crt"
		;
connectAttr "ctrl_r_arm01_upper01_ik.t" "ctrl_r_arm01_base01_ik_family_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_upper01_ik.rp" "ctrl_r_arm01_base01_ik_family_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_upper01_ik.rpt" "ctrl_r_arm01_base01_ik_family_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_upper01_ik.r" "ctrl_r_arm01_base01_ik_family_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_arm01_upper01_ik.ro" "ctrl_r_arm01_base01_ik_family_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_arm01_upper01_ik.s" "ctrl_r_arm01_base01_ik_family_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_arm01_upper01_ik.pm" "ctrl_r_arm01_base01_ik_family_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_base01_ik_family_parentConstraint1.w0" "ctrl_r_arm01_base01_ik_family_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_upper01_ik_flwWld_reverse.ox" "ctrl_r_arm01_base01_ik_family_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_base01_pv_family_pointConstraint1.ctx" "ctrl_r_arm01_base01_pv_family.tx"
		;
connectAttr "ctrl_r_arm01_base01_pv_family_pointConstraint1.cty" "ctrl_r_arm01_base01_pv_family.ty"
		;
connectAttr "ctrl_r_arm01_base01_pv_family_pointConstraint1.ctz" "ctrl_r_arm01_base01_pv_family.tz"
		;
connectAttr "ctrl_r_arm01_base01_ik.poleVector" "ctrl_r_arm01_base01_pv_parent.tx"
		;
connectAttr "ctrl_viz.poleVector" "ctrl_r_arm01_base01_pv.v";
connectAttr "ctrl_r_arm01_base01_pv_family.pim" "ctrl_r_arm01_base01_pv_family_pointConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_base01_pv_family.rp" "ctrl_r_arm01_base01_pv_family_pointConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_base01_pv_family.rpt" "ctrl_r_arm01_base01_pv_family_pointConstraint1.crt"
		;
connectAttr "ctrl_r_arm01_base01_ik.t" "ctrl_r_arm01_base01_pv_family_pointConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_arm01_base01_ik.rp" "ctrl_r_arm01_base01_pv_family_pointConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_arm01_base01_ik.rpt" "ctrl_r_arm01_base01_pv_family_pointConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_arm01_base01_ik.pm" "ctrl_r_arm01_base01_pv_family_pointConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_base01_pv_family_pointConstraint1.w0" "ctrl_r_arm01_base01_pv_family_pointConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_upper01_distance_markerShape.wp" "ctrl_r_arm01_base01_ik_distance_curveShape.sp"
		;
connectAttr "ctrl_r_arm01_base01_ik_distance_markerShape.wp" "ctrl_r_arm01_base01_ik_distance_curveShape.ep"
		;
connectAttr "ctrl_r_arm01_base01_fingers_family_parentConstraint1.ctx" "ctrl_r_arm01_base01_fingers_family.tx"
		;
connectAttr "ctrl_r_arm01_base01_fingers_family_parentConstraint1.cty" "ctrl_r_arm01_base01_fingers_family.ty"
		;
connectAttr "ctrl_r_arm01_base01_fingers_family_parentConstraint1.ctz" "ctrl_r_arm01_base01_fingers_family.tz"
		;
connectAttr "ctrl_r_arm01_base01_fingers_family_parentConstraint1.crx" "ctrl_r_arm01_base01_fingers_family.rx"
		;
connectAttr "ctrl_r_arm01_base01_fingers_family_parentConstraint1.cry" "ctrl_r_arm01_base01_fingers_family.ry"
		;
connectAttr "ctrl_r_arm01_base01_fingers_family_parentConstraint1.crz" "ctrl_r_arm01_base01_fingers_family.rz"
		;
connectAttr "ctrl_r_arm01_base01_fingers_family.ro" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_base01_fingers_family.pim" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_base01_fingers_family.rp" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_base01_fingers_family.rpt" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_base01.t" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.tg[0].tt"
		;
connectAttr "bone_r_arm01_base01.rp" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.tg[0].trp"
		;
connectAttr "bone_r_arm01_base01.rpt" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.tg[0].trt"
		;
connectAttr "bone_r_arm01_base01.r" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.tg[0].tr"
		;
connectAttr "bone_r_arm01_base01.ro" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.tg[0].tro"
		;
connectAttr "bone_r_arm01_base01.s" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.tg[0].ts"
		;
connectAttr "bone_r_arm01_base01.pm" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_base01.jo" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.tg[0].tjo"
		;
connectAttr "ctrl_r_arm01_base01_fingers_family_parentConstraint1.w0" "ctrl_r_arm01_base01_fingers_family_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger05_01_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger05_01_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger05_01_parent_parentConstraint1.cty" "ctrl_r_arm01_finger05_01_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger05_01_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger05_01_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger05_01_parent_parentConstraint1.crx" "ctrl_r_arm01_finger05_01_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger05_01_parent_parentConstraint1.cry" "ctrl_r_arm01_finger05_01_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger05_01_parent_parentConstraint1.crz" "ctrl_r_arm01_finger05_01_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger05_02_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger05_02_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger05_02_parent_parentConstraint1.cty" "ctrl_r_arm01_finger05_02_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger05_02_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger05_02_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger05_02_parent_parentConstraint1.crx" "ctrl_r_arm01_finger05_02_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger05_02_parent_parentConstraint1.cry" "ctrl_r_arm01_finger05_02_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger05_02_parent_parentConstraint1.crz" "ctrl_r_arm01_finger05_02_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger05_03_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger05_03_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger05_03_parent_parentConstraint1.cty" "ctrl_r_arm01_finger05_03_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger05_03_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger05_03_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger05_03_parent_parentConstraint1.crx" "ctrl_r_arm01_finger05_03_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger05_03_parent_parentConstraint1.cry" "ctrl_r_arm01_finger05_03_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger05_03_parent_parentConstraint1.crz" "ctrl_r_arm01_finger05_03_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger05_03_parent.ro" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger05_03_parent.pim" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger05_03_parent.rp" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger05_03_parent.rpt" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger05_03_parent_parentConstraint1.w0" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger05_03.follow_world" "ctrl_r_arm01_finger05_03_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger05_02_parent.ro" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger05_02_parent.pim" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger05_02_parent.rp" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger05_02_parent.rpt" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger05_02_parent_parentConstraint1.w0" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger05_02.follow_world" "ctrl_r_arm01_finger05_02_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger05_01_parent.ro" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger05_01_parent.pim" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger05_01_parent.rp" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger05_01_parent.rpt" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger05_01_parent_parentConstraint1.w0" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger05_01.follow_world" "ctrl_r_arm01_finger05_01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger04_01_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger04_01_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger04_01_parent_parentConstraint1.cty" "ctrl_r_arm01_finger04_01_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger04_01_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger04_01_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger04_01_parent_parentConstraint1.crx" "ctrl_r_arm01_finger04_01_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger04_01_parent_parentConstraint1.cry" "ctrl_r_arm01_finger04_01_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger04_01_parent_parentConstraint1.crz" "ctrl_r_arm01_finger04_01_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger04_02_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger04_02_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger04_02_parent_parentConstraint1.cty" "ctrl_r_arm01_finger04_02_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger04_02_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger04_02_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger04_02_parent_parentConstraint1.crx" "ctrl_r_arm01_finger04_02_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger04_02_parent_parentConstraint1.cry" "ctrl_r_arm01_finger04_02_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger04_02_parent_parentConstraint1.crz" "ctrl_r_arm01_finger04_02_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger04_03_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger04_03_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger04_03_parent_parentConstraint1.cty" "ctrl_r_arm01_finger04_03_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger04_03_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger04_03_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger04_03_parent_parentConstraint1.crx" "ctrl_r_arm01_finger04_03_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger04_03_parent_parentConstraint1.cry" "ctrl_r_arm01_finger04_03_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger04_03_parent_parentConstraint1.crz" "ctrl_r_arm01_finger04_03_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger04_03_parent.ro" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger04_03_parent.pim" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger04_03_parent.rp" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger04_03_parent.rpt" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger04_03_parent_parentConstraint1.w0" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger04_03.follow_world" "ctrl_r_arm01_finger04_03_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger04_02_parent.ro" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger04_02_parent.pim" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger04_02_parent.rp" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger04_02_parent.rpt" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger04_02_parent_parentConstraint1.w0" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger04_02.follow_world" "ctrl_r_arm01_finger04_02_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger04_01_parent.ro" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger04_01_parent.pim" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger04_01_parent.rp" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger04_01_parent.rpt" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger04_01_parent_parentConstraint1.w0" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger04_01.follow_world" "ctrl_r_arm01_finger04_01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger03_01_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger03_01_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger03_01_parent_parentConstraint1.cty" "ctrl_r_arm01_finger03_01_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger03_01_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger03_01_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger03_01_parent_parentConstraint1.crx" "ctrl_r_arm01_finger03_01_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger03_01_parent_parentConstraint1.cry" "ctrl_r_arm01_finger03_01_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger03_01_parent_parentConstraint1.crz" "ctrl_r_arm01_finger03_01_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger03_02_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger03_02_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger03_02_parent_parentConstraint1.cty" "ctrl_r_arm01_finger03_02_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger03_02_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger03_02_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger03_02_parent_parentConstraint1.crx" "ctrl_r_arm01_finger03_02_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger03_02_parent_parentConstraint1.cry" "ctrl_r_arm01_finger03_02_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger03_02_parent_parentConstraint1.crz" "ctrl_r_arm01_finger03_02_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger03_03_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger03_03_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger03_03_parent_parentConstraint1.cty" "ctrl_r_arm01_finger03_03_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger03_03_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger03_03_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger03_03_parent_parentConstraint1.crx" "ctrl_r_arm01_finger03_03_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger03_03_parent_parentConstraint1.cry" "ctrl_r_arm01_finger03_03_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger03_03_parent_parentConstraint1.crz" "ctrl_r_arm01_finger03_03_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger03_03_parent.ro" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger03_03_parent.pim" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger03_03_parent.rp" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger03_03_parent.rpt" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger03_03_parent_parentConstraint1.w0" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger03_03.follow_world" "ctrl_r_arm01_finger03_03_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger03_02_parent.ro" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger03_02_parent.pim" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger03_02_parent.rp" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger03_02_parent.rpt" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger03_02_parent_parentConstraint1.w0" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger03_02.follow_world" "ctrl_r_arm01_finger03_02_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger03_01_parent.ro" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger03_01_parent.pim" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger03_01_parent.rp" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger03_01_parent.rpt" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger03_01_parent_parentConstraint1.w0" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger03_01.follow_world" "ctrl_r_arm01_finger03_01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger02_01_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger02_01_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger02_01_parent_parentConstraint1.cty" "ctrl_r_arm01_finger02_01_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger02_01_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger02_01_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger02_01_parent_parentConstraint1.crx" "ctrl_r_arm01_finger02_01_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger02_01_parent_parentConstraint1.cry" "ctrl_r_arm01_finger02_01_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger02_01_parent_parentConstraint1.crz" "ctrl_r_arm01_finger02_01_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger02_02_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger02_02_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger02_02_parent_parentConstraint1.cty" "ctrl_r_arm01_finger02_02_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger02_02_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger02_02_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger02_02_parent_parentConstraint1.crx" "ctrl_r_arm01_finger02_02_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger02_02_parent_parentConstraint1.cry" "ctrl_r_arm01_finger02_02_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger02_02_parent_parentConstraint1.crz" "ctrl_r_arm01_finger02_02_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger02_03_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger02_03_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger02_03_parent_parentConstraint1.cty" "ctrl_r_arm01_finger02_03_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger02_03_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger02_03_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger02_03_parent_parentConstraint1.crx" "ctrl_r_arm01_finger02_03_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger02_03_parent_parentConstraint1.cry" "ctrl_r_arm01_finger02_03_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger02_03_parent_parentConstraint1.crz" "ctrl_r_arm01_finger02_03_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger02_03_parent.ro" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger02_03_parent.pim" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger02_03_parent.rp" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger02_03_parent.rpt" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger02_03_parent_parentConstraint1.w0" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger02_03.follow_world" "ctrl_r_arm01_finger02_03_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger02_02_parent.ro" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger02_02_parent.pim" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger02_02_parent.rp" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger02_02_parent.rpt" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger02_02_parent_parentConstraint1.w0" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger02_02.follow_world" "ctrl_r_arm01_finger02_02_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger02_01_parent.ro" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger02_01_parent.pim" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger02_01_parent.rp" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger02_01_parent.rpt" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger02_01_parent_parentConstraint1.w0" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger02_01.follow_world" "ctrl_r_arm01_finger02_01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger01_01_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger01_01_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger01_01_parent_parentConstraint1.cty" "ctrl_r_arm01_finger01_01_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger01_01_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger01_01_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger01_01_parent_parentConstraint1.crx" "ctrl_r_arm01_finger01_01_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger01_01_parent_parentConstraint1.cry" "ctrl_r_arm01_finger01_01_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger01_01_parent_parentConstraint1.crz" "ctrl_r_arm01_finger01_01_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger01_02_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger01_02_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger01_02_parent_parentConstraint1.cty" "ctrl_r_arm01_finger01_02_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger01_02_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger01_02_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger01_02_parent_parentConstraint1.crx" "ctrl_r_arm01_finger01_02_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger01_02_parent_parentConstraint1.cry" "ctrl_r_arm01_finger01_02_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger01_02_parent_parentConstraint1.crz" "ctrl_r_arm01_finger01_02_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger01_03_parent_parentConstraint1.ctx" "ctrl_r_arm01_finger01_03_parent.tx"
		;
connectAttr "ctrl_r_arm01_finger01_03_parent_parentConstraint1.cty" "ctrl_r_arm01_finger01_03_parent.ty"
		;
connectAttr "ctrl_r_arm01_finger01_03_parent_parentConstraint1.ctz" "ctrl_r_arm01_finger01_03_parent.tz"
		;
connectAttr "ctrl_r_arm01_finger01_03_parent_parentConstraint1.crx" "ctrl_r_arm01_finger01_03_parent.rx"
		;
connectAttr "ctrl_r_arm01_finger01_03_parent_parentConstraint1.cry" "ctrl_r_arm01_finger01_03_parent.ry"
		;
connectAttr "ctrl_r_arm01_finger01_03_parent_parentConstraint1.crz" "ctrl_r_arm01_finger01_03_parent.rz"
		;
connectAttr "ctrl_r_arm01_finger01_03_parent.ro" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger01_03_parent.pim" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger01_03_parent.rp" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger01_03_parent.rpt" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger01_03_parent_parentConstraint1.w0" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger01_03.follow_world" "ctrl_r_arm01_finger01_03_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger01_02_parent.ro" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger01_02_parent.pim" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger01_02_parent.rp" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger01_02_parent.rpt" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger01_02_parent_parentConstraint1.w0" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger01_02.follow_world" "ctrl_r_arm01_finger01_02_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_finger01_01_parent.ro" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_finger01_01_parent.pim" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_finger01_01_parent.rp" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_finger01_01_parent.rpt" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_r_arm01_finger01_01_parent_parentConstraint1.w0" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_finger01_01.follow_world" "ctrl_r_arm01_finger01_01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_r_arm01_base01_twist01_family_parentConstraint1.ctx" "ctrl_r_arm01_base01_twist01_family.tx"
		;
connectAttr "ctrl_r_arm01_base01_twist01_family_parentConstraint1.cty" "ctrl_r_arm01_base01_twist01_family.ty"
		;
connectAttr "ctrl_r_arm01_base01_twist01_family_parentConstraint1.ctz" "ctrl_r_arm01_base01_twist01_family.tz"
		;
connectAttr "ctrl_r_arm01_base01_twist01_family_parentConstraint1.crx" "ctrl_r_arm01_base01_twist01_family.rx"
		;
connectAttr "ctrl_r_arm01_base01_twist01_family_parentConstraint1.cry" "ctrl_r_arm01_base01_twist01_family.ry"
		;
connectAttr "ctrl_r_arm01_base01_twist01_family_parentConstraint1.crz" "ctrl_r_arm01_base01_twist01_family.rz"
		;
connectAttr "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.ctx" "ctrl_r_arm01_base01_twist01_parent.tx"
		;
connectAttr "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.cty" "ctrl_r_arm01_base01_twist01_parent.ty"
		;
connectAttr "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.ctz" "ctrl_r_arm01_base01_twist01_parent.tz"
		;
connectAttr "unitConversion18.o" "ctrl_r_arm01_base01_twist01_parent.rx";
connectAttr "ctrl_r_arm01_base01_twist01_parent.ro" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_base01_twist01_parent.pim" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_base01_twist01_parent.rp" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_base01_twist01_parent.rpt" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_base01.t" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "bone_r_arm01_base01.rp" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "bone_r_arm01_base01.rpt" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "bone_r_arm01_base01.r" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "bone_r_arm01_base01.ro" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "bone_r_arm01_base01.s" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "bone_r_arm01_base01.pm" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_base01.jo" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.tg[0].tjo"
		;
connectAttr "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.w0" "ctrl_r_arm01_base01_twist01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_r_arm01_base01_twist01_family.ro" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.cro"
		;
connectAttr "ctrl_r_arm01_base01_twist01_family.pim" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.cpim"
		;
connectAttr "ctrl_r_arm01_base01_twist01_family.rp" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.crp"
		;
connectAttr "ctrl_r_arm01_base01_twist01_family.rpt" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.crt"
		;
connectAttr "bone_r_arm01_mid01.t" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.tg[0].tt"
		;
connectAttr "bone_r_arm01_mid01.rp" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.tg[0].trp"
		;
connectAttr "bone_r_arm01_mid01.rpt" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.tg[0].trt"
		;
connectAttr "bone_r_arm01_mid01.r" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.tg[0].tr"
		;
connectAttr "bone_r_arm01_mid01.ro" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.tg[0].tro"
		;
connectAttr "bone_r_arm01_mid01.s" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.tg[0].ts"
		;
connectAttr "bone_r_arm01_mid01.pm" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_r_arm01_mid01.jo" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.tg[0].tjo"
		;
connectAttr "ctrl_r_arm01_base01_twist01_family_parentConstraint1.w0" "ctrl_r_arm01_base01_twist01_family_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_base01_ik_family_parentConstraint1.ctx" "ctrl_l_arm01_base01_ik_family.tx"
		;
connectAttr "ctrl_l_arm01_base01_ik_family_parentConstraint1.cty" "ctrl_l_arm01_base01_ik_family.ty"
		;
connectAttr "ctrl_l_arm01_base01_ik_family_parentConstraint1.ctz" "ctrl_l_arm01_base01_ik_family.tz"
		;
connectAttr "ctrl_l_arm01_base01_ik_family_parentConstraint1.crx" "ctrl_l_arm01_base01_ik_family.rx"
		;
connectAttr "ctrl_l_arm01_base01_ik_family_parentConstraint1.cry" "ctrl_l_arm01_base01_ik_family.ry"
		;
connectAttr "ctrl_l_arm01_base01_ik_family_parentConstraint1.crz" "ctrl_l_arm01_base01_ik_family.rz"
		;
connectAttr "ctrl_l_arm01_base01_ik.ikBlend" "ctrl_l_arm01_base01_ik.v" -l on;
connectAttr "bone_l_arm01_upper01_ik.msg" "bone_l_arm01_base01_ikHandle.hsj";
connectAttr "bone_l_arm01_base01_ik_eff.hp" "bone_l_arm01_base01_ikHandle.hee";
connectAttr "ikRPsolver.msg" "bone_l_arm01_base01_ikHandle.hsv";
connectAttr "ctrl_l_arm01_base01_ik.ikBlend" "bone_l_arm01_base01_ikHandle.ikb";
connectAttr "bone_l_arm01_base01_ikHandle_poleVectorConstraint1.ctx" "bone_l_arm01_base01_ikHandle.pvx"
		;
connectAttr "bone_l_arm01_base01_ikHandle_poleVectorConstraint1.cty" "bone_l_arm01_base01_ikHandle.pvy"
		;
connectAttr "bone_l_arm01_base01_ikHandle_poleVectorConstraint1.ctz" "bone_l_arm01_base01_ikHandle.pvz"
		;
connectAttr "bone_l_arm01_base01_ikHandle.pim" "bone_l_arm01_base01_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "bone_l_arm01_upper01_ik.pm" "bone_l_arm01_base01_ikHandle_poleVectorConstraint1.ps"
		;
connectAttr "bone_l_arm01_upper01_ik.t" "bone_l_arm01_base01_ikHandle_poleVectorConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_base01_pv.t" "bone_l_arm01_base01_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_base01_pv.rp" "bone_l_arm01_base01_ikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_base01_pv.rpt" "bone_l_arm01_base01_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_base01_pv.pm" "bone_l_arm01_base01_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_base01_ikHandle_poleVectorConstraint1.w0" "bone_l_arm01_base01_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_base01_ik_family.ro" "ctrl_l_arm01_base01_ik_family_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_base01_ik_family.pim" "ctrl_l_arm01_base01_ik_family_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_base01_ik_family.rp" "ctrl_l_arm01_base01_ik_family_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_base01_ik_family.rpt" "ctrl_l_arm01_base01_ik_family_parentConstraint1.crt"
		;
connectAttr "ctrl_l_arm01_upper01_ik.t" "ctrl_l_arm01_base01_ik_family_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_upper01_ik.rp" "ctrl_l_arm01_base01_ik_family_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_upper01_ik.rpt" "ctrl_l_arm01_base01_ik_family_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_upper01_ik.r" "ctrl_l_arm01_base01_ik_family_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_arm01_upper01_ik.ro" "ctrl_l_arm01_base01_ik_family_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_arm01_upper01_ik.s" "ctrl_l_arm01_base01_ik_family_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_arm01_upper01_ik.pm" "ctrl_l_arm01_base01_ik_family_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_base01_ik_family_parentConstraint1.w0" "ctrl_l_arm01_base01_ik_family_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_upper01_ik_flwWld_reverse.ox" "ctrl_l_arm01_base01_ik_family_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_base01_pv_family_pointConstraint1.ctx" "ctrl_l_arm01_base01_pv_family.tx"
		;
connectAttr "ctrl_l_arm01_base01_pv_family_pointConstraint1.cty" "ctrl_l_arm01_base01_pv_family.ty"
		;
connectAttr "ctrl_l_arm01_base01_pv_family_pointConstraint1.ctz" "ctrl_l_arm01_base01_pv_family.tz"
		;
connectAttr "ctrl_l_arm01_base01_ik.poleVector" "ctrl_l_arm01_base01_pv_parent.tx"
		;
connectAttr "ctrl_viz.poleVector" "ctrl_l_arm01_base01_pv.v";
connectAttr "ctrl_l_arm01_base01_pv_family.pim" "ctrl_l_arm01_base01_pv_family_pointConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_base01_pv_family.rp" "ctrl_l_arm01_base01_pv_family_pointConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_base01_pv_family.rpt" "ctrl_l_arm01_base01_pv_family_pointConstraint1.crt"
		;
connectAttr "ctrl_l_arm01_base01_ik.t" "ctrl_l_arm01_base01_pv_family_pointConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_arm01_base01_ik.rp" "ctrl_l_arm01_base01_pv_family_pointConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_arm01_base01_ik.rpt" "ctrl_l_arm01_base01_pv_family_pointConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_arm01_base01_ik.pm" "ctrl_l_arm01_base01_pv_family_pointConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_base01_pv_family_pointConstraint1.w0" "ctrl_l_arm01_base01_pv_family_pointConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_upper01_distance_markerShape.wp" "ctrl_l_arm01_base01_ik_distance_curveShape.sp"
		;
connectAttr "ctrl_l_arm01_base01_ik_distance_markerShape.wp" "ctrl_l_arm01_base01_ik_distance_curveShape.ep"
		;
connectAttr "ctrl_l_arm01_base01_fingers_family_parentConstraint1.ctx" "ctrl_l_arm01_base01_fingers_family.tx"
		;
connectAttr "ctrl_l_arm01_base01_fingers_family_parentConstraint1.cty" "ctrl_l_arm01_base01_fingers_family.ty"
		;
connectAttr "ctrl_l_arm01_base01_fingers_family_parentConstraint1.ctz" "ctrl_l_arm01_base01_fingers_family.tz"
		;
connectAttr "ctrl_l_arm01_base01_fingers_family_parentConstraint1.crx" "ctrl_l_arm01_base01_fingers_family.rx"
		;
connectAttr "ctrl_l_arm01_base01_fingers_family_parentConstraint1.cry" "ctrl_l_arm01_base01_fingers_family.ry"
		;
connectAttr "ctrl_l_arm01_base01_fingers_family_parentConstraint1.crz" "ctrl_l_arm01_base01_fingers_family.rz"
		;
connectAttr "ctrl_l_arm01_base01_fingers_family.ro" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_base01_fingers_family.pim" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_base01_fingers_family.rp" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_base01_fingers_family.rpt" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_base01.t" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.tg[0].tt"
		;
connectAttr "bone_l_arm01_base01.rp" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.tg[0].trp"
		;
connectAttr "bone_l_arm01_base01.rpt" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.tg[0].trt"
		;
connectAttr "bone_l_arm01_base01.r" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.tg[0].tr"
		;
connectAttr "bone_l_arm01_base01.ro" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.tg[0].tro"
		;
connectAttr "bone_l_arm01_base01.s" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.tg[0].ts"
		;
connectAttr "bone_l_arm01_base01.pm" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_base01.jo" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.tg[0].tjo"
		;
connectAttr "ctrl_l_arm01_base01_fingers_family_parentConstraint1.w0" "ctrl_l_arm01_base01_fingers_family_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger05_01_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger05_01_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger05_01_parent_parentConstraint1.cty" "ctrl_l_arm01_finger05_01_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger05_01_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger05_01_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger05_01_parent_parentConstraint1.crx" "ctrl_l_arm01_finger05_01_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger05_01_parent_parentConstraint1.cry" "ctrl_l_arm01_finger05_01_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger05_01_parent_parentConstraint1.crz" "ctrl_l_arm01_finger05_01_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger05_02_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger05_02_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger05_02_parent_parentConstraint1.cty" "ctrl_l_arm01_finger05_02_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger05_02_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger05_02_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger05_02_parent_parentConstraint1.crx" "ctrl_l_arm01_finger05_02_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger05_02_parent_parentConstraint1.cry" "ctrl_l_arm01_finger05_02_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger05_02_parent_parentConstraint1.crz" "ctrl_l_arm01_finger05_02_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger05_03_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger05_03_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger05_03_parent_parentConstraint1.cty" "ctrl_l_arm01_finger05_03_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger05_03_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger05_03_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger05_03_parent_parentConstraint1.crx" "ctrl_l_arm01_finger05_03_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger05_03_parent_parentConstraint1.cry" "ctrl_l_arm01_finger05_03_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger05_03_parent_parentConstraint1.crz" "ctrl_l_arm01_finger05_03_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger05_03_parent.ro" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger05_03_parent.pim" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger05_03_parent.rp" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger05_03_parent.rpt" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger05_03_parent_parentConstraint1.w0" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger05_03.follow_world" "ctrl_l_arm01_finger05_03_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger05_02_parent.ro" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger05_02_parent.pim" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger05_02_parent.rp" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger05_02_parent.rpt" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger05_02_parent_parentConstraint1.w0" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger05_02.follow_world" "ctrl_l_arm01_finger05_02_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger05_01_parent.ro" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger05_01_parent.pim" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger05_01_parent.rp" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger05_01_parent.rpt" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger05_01_parent_parentConstraint1.w0" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger05_01.follow_world" "ctrl_l_arm01_finger05_01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger04_01_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger04_01_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger04_01_parent_parentConstraint1.cty" "ctrl_l_arm01_finger04_01_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger04_01_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger04_01_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger04_01_parent_parentConstraint1.crx" "ctrl_l_arm01_finger04_01_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger04_01_parent_parentConstraint1.cry" "ctrl_l_arm01_finger04_01_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger04_01_parent_parentConstraint1.crz" "ctrl_l_arm01_finger04_01_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger04_02_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger04_02_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger04_02_parent_parentConstraint1.cty" "ctrl_l_arm01_finger04_02_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger04_02_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger04_02_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger04_02_parent_parentConstraint1.crx" "ctrl_l_arm01_finger04_02_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger04_02_parent_parentConstraint1.cry" "ctrl_l_arm01_finger04_02_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger04_02_parent_parentConstraint1.crz" "ctrl_l_arm01_finger04_02_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger04_03_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger04_03_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger04_03_parent_parentConstraint1.cty" "ctrl_l_arm01_finger04_03_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger04_03_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger04_03_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger04_03_parent_parentConstraint1.crx" "ctrl_l_arm01_finger04_03_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger04_03_parent_parentConstraint1.cry" "ctrl_l_arm01_finger04_03_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger04_03_parent_parentConstraint1.crz" "ctrl_l_arm01_finger04_03_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger04_03_parent.ro" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger04_03_parent.pim" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger04_03_parent.rp" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger04_03_parent.rpt" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger04_03_parent_parentConstraint1.w0" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger04_03.follow_world" "ctrl_l_arm01_finger04_03_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger04_02_parent.ro" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger04_02_parent.pim" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger04_02_parent.rp" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger04_02_parent.rpt" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger04_02_parent_parentConstraint1.w0" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger04_02.follow_world" "ctrl_l_arm01_finger04_02_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger04_01_parent.ro" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger04_01_parent.pim" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger04_01_parent.rp" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger04_01_parent.rpt" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger04_01_parent_parentConstraint1.w0" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger04_01.follow_world" "ctrl_l_arm01_finger04_01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger03_01_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger03_01_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger03_01_parent_parentConstraint1.cty" "ctrl_l_arm01_finger03_01_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger03_01_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger03_01_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger03_01_parent_parentConstraint1.crx" "ctrl_l_arm01_finger03_01_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger03_01_parent_parentConstraint1.cry" "ctrl_l_arm01_finger03_01_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger03_01_parent_parentConstraint1.crz" "ctrl_l_arm01_finger03_01_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger03_02_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger03_02_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger03_02_parent_parentConstraint1.cty" "ctrl_l_arm01_finger03_02_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger03_02_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger03_02_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger03_02_parent_parentConstraint1.crx" "ctrl_l_arm01_finger03_02_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger03_02_parent_parentConstraint1.cry" "ctrl_l_arm01_finger03_02_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger03_02_parent_parentConstraint1.crz" "ctrl_l_arm01_finger03_02_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger03_03_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger03_03_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger03_03_parent_parentConstraint1.cty" "ctrl_l_arm01_finger03_03_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger03_03_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger03_03_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger03_03_parent_parentConstraint1.crx" "ctrl_l_arm01_finger03_03_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger03_03_parent_parentConstraint1.cry" "ctrl_l_arm01_finger03_03_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger03_03_parent_parentConstraint1.crz" "ctrl_l_arm01_finger03_03_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger03_03_parent.ro" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger03_03_parent.pim" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger03_03_parent.rp" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger03_03_parent.rpt" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger03_03_parent_parentConstraint1.w0" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger03_03.follow_world" "ctrl_l_arm01_finger03_03_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger03_02_parent.ro" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger03_02_parent.pim" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger03_02_parent.rp" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger03_02_parent.rpt" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger03_02_parent_parentConstraint1.w0" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger03_02.follow_world" "ctrl_l_arm01_finger03_02_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger03_01_parent.ro" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger03_01_parent.pim" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger03_01_parent.rp" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger03_01_parent.rpt" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger03_01_parent_parentConstraint1.w0" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger03_01.follow_world" "ctrl_l_arm01_finger03_01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger02_01_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger02_01_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger02_01_parent_parentConstraint1.cty" "ctrl_l_arm01_finger02_01_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger02_01_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger02_01_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger02_01_parent_parentConstraint1.crx" "ctrl_l_arm01_finger02_01_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger02_01_parent_parentConstraint1.cry" "ctrl_l_arm01_finger02_01_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger02_01_parent_parentConstraint1.crz" "ctrl_l_arm01_finger02_01_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger02_02_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger02_02_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger02_02_parent_parentConstraint1.cty" "ctrl_l_arm01_finger02_02_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger02_02_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger02_02_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger02_02_parent_parentConstraint1.crx" "ctrl_l_arm01_finger02_02_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger02_02_parent_parentConstraint1.cry" "ctrl_l_arm01_finger02_02_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger02_02_parent_parentConstraint1.crz" "ctrl_l_arm01_finger02_02_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger02_03_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger02_03_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger02_03_parent_parentConstraint1.cty" "ctrl_l_arm01_finger02_03_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger02_03_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger02_03_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger02_03_parent_parentConstraint1.crx" "ctrl_l_arm01_finger02_03_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger02_03_parent_parentConstraint1.cry" "ctrl_l_arm01_finger02_03_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger02_03_parent_parentConstraint1.crz" "ctrl_l_arm01_finger02_03_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger02_03_parent.ro" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger02_03_parent.pim" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger02_03_parent.rp" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger02_03_parent.rpt" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger02_03_parent_parentConstraint1.w0" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger02_03.follow_world" "ctrl_l_arm01_finger02_03_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger02_02_parent.ro" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger02_02_parent.pim" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger02_02_parent.rp" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger02_02_parent.rpt" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger02_02_parent_parentConstraint1.w0" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger02_02.follow_world" "ctrl_l_arm01_finger02_02_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger02_01_parent.ro" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger02_01_parent.pim" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger02_01_parent.rp" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger02_01_parent.rpt" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger02_01_parent_parentConstraint1.w0" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger02_01.follow_world" "ctrl_l_arm01_finger02_01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger01_01_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger01_01_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger01_01_parent_parentConstraint1.cty" "ctrl_l_arm01_finger01_01_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger01_01_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger01_01_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger01_01_parent_parentConstraint1.crx" "ctrl_l_arm01_finger01_01_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger01_01_parent_parentConstraint1.cry" "ctrl_l_arm01_finger01_01_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger01_01_parent_parentConstraint1.crz" "ctrl_l_arm01_finger01_01_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger01_02_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger01_02_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger01_02_parent_parentConstraint1.cty" "ctrl_l_arm01_finger01_02_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger01_02_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger01_02_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger01_02_parent_parentConstraint1.crx" "ctrl_l_arm01_finger01_02_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger01_02_parent_parentConstraint1.cry" "ctrl_l_arm01_finger01_02_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger01_02_parent_parentConstraint1.crz" "ctrl_l_arm01_finger01_02_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger01_03_parent_parentConstraint1.ctx" "ctrl_l_arm01_finger01_03_parent.tx"
		;
connectAttr "ctrl_l_arm01_finger01_03_parent_parentConstraint1.cty" "ctrl_l_arm01_finger01_03_parent.ty"
		;
connectAttr "ctrl_l_arm01_finger01_03_parent_parentConstraint1.ctz" "ctrl_l_arm01_finger01_03_parent.tz"
		;
connectAttr "ctrl_l_arm01_finger01_03_parent_parentConstraint1.crx" "ctrl_l_arm01_finger01_03_parent.rx"
		;
connectAttr "ctrl_l_arm01_finger01_03_parent_parentConstraint1.cry" "ctrl_l_arm01_finger01_03_parent.ry"
		;
connectAttr "ctrl_l_arm01_finger01_03_parent_parentConstraint1.crz" "ctrl_l_arm01_finger01_03_parent.rz"
		;
connectAttr "ctrl_l_arm01_finger01_03_parent.ro" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger01_03_parent.pim" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger01_03_parent.rp" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger01_03_parent.rpt" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger01_03_parent_parentConstraint1.w0" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger01_03.follow_world" "ctrl_l_arm01_finger01_03_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger01_02_parent.ro" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger01_02_parent.pim" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger01_02_parent.rp" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger01_02_parent.rpt" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger01_02_parent_parentConstraint1.w0" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger01_02.follow_world" "ctrl_l_arm01_finger01_02_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_finger01_01_parent.ro" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_finger01_01_parent.pim" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_finger01_01_parent.rp" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_finger01_01_parent.rpt" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.crt"
		;
connectAttr "ctrl_master.t" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_master.rp" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_master.rpt" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_master.r" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_master.ro" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_master.s" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_master.pm" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "ctrl_l_arm01_finger01_01_parent_parentConstraint1.w0" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_finger01_01.follow_world" "ctrl_l_arm01_finger01_01_parent_parentConstraint1.w0"
		;
connectAttr "ctrl_l_arm01_base01_twist01_family_parentConstraint1.ctx" "ctrl_l_arm01_base01_twist01_family.tx"
		;
connectAttr "ctrl_l_arm01_base01_twist01_family_parentConstraint1.cty" "ctrl_l_arm01_base01_twist01_family.ty"
		;
connectAttr "ctrl_l_arm01_base01_twist01_family_parentConstraint1.ctz" "ctrl_l_arm01_base01_twist01_family.tz"
		;
connectAttr "ctrl_l_arm01_base01_twist01_family_parentConstraint1.crx" "ctrl_l_arm01_base01_twist01_family.rx"
		;
connectAttr "ctrl_l_arm01_base01_twist01_family_parentConstraint1.cry" "ctrl_l_arm01_base01_twist01_family.ry"
		;
connectAttr "ctrl_l_arm01_base01_twist01_family_parentConstraint1.crz" "ctrl_l_arm01_base01_twist01_family.rz"
		;
connectAttr "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.ctx" "ctrl_l_arm01_base01_twist01_parent.tx"
		;
connectAttr "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.cty" "ctrl_l_arm01_base01_twist01_parent.ty"
		;
connectAttr "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.ctz" "ctrl_l_arm01_base01_twist01_parent.tz"
		;
connectAttr "unitConversion20.o" "ctrl_l_arm01_base01_twist01_parent.rx";
connectAttr "ctrl_l_arm01_base01_twist01_parent.ro" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_base01_twist01_parent.pim" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_base01_twist01_parent.rp" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_base01_twist01_parent.rpt" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_base01.t" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.tg[0].tt"
		;
connectAttr "bone_l_arm01_base01.rp" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.tg[0].trp"
		;
connectAttr "bone_l_arm01_base01.rpt" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.tg[0].trt"
		;
connectAttr "bone_l_arm01_base01.r" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.tg[0].tr"
		;
connectAttr "bone_l_arm01_base01.ro" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.tg[0].tro"
		;
connectAttr "bone_l_arm01_base01.s" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.tg[0].ts"
		;
connectAttr "bone_l_arm01_base01.pm" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_base01.jo" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.tg[0].tjo"
		;
connectAttr "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.w0" "ctrl_l_arm01_base01_twist01_parent_parentConstraint1.tg[0].tw"
		;
connectAttr "ctrl_l_arm01_base01_twist01_family.ro" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.cro"
		;
connectAttr "ctrl_l_arm01_base01_twist01_family.pim" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.cpim"
		;
connectAttr "ctrl_l_arm01_base01_twist01_family.rp" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.crp"
		;
connectAttr "ctrl_l_arm01_base01_twist01_family.rpt" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.crt"
		;
connectAttr "bone_l_arm01_mid01.t" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.tg[0].tt"
		;
connectAttr "bone_l_arm01_mid01.rp" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.tg[0].trp"
		;
connectAttr "bone_l_arm01_mid01.rpt" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.tg[0].trt"
		;
connectAttr "bone_l_arm01_mid01.r" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.tg[0].tr"
		;
connectAttr "bone_l_arm01_mid01.ro" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.tg[0].tro"
		;
connectAttr "bone_l_arm01_mid01.s" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.tg[0].ts"
		;
connectAttr "bone_l_arm01_mid01.pm" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.tg[0].tpm"
		;
connectAttr "bone_l_arm01_mid01.jo" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.tg[0].tjo"
		;
connectAttr "ctrl_l_arm01_base01_twist01_family_parentConstraint1.w0" "ctrl_l_arm01_base01_twist01_family_parentConstraint1.tg[0].tw"
		;
connectAttr "skinCluster1.og[0]" "geo_mouse_handsShape.i";
connectAttr "groupId1.id" "geo_mouse_handsShape.iog.og[0].gid";
connectAttr "Mouse_Hands_wire_088088225.mwc" "geo_mouse_handsShape.iog.og[0].gco"
		;
connectAttr "skinCluster1GroupId.id" "geo_mouse_handsShape.iog.og[1].gid";
connectAttr "skinCluster1Set.mwc" "geo_mouse_handsShape.iog.og[1].gco";
connectAttr "groupId3.id" "geo_mouse_handsShape.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "geo_mouse_handsShape.iog.og[2].gco";
connectAttr "tweak1.vl[0].vt[0]" "geo_mouse_handsShape.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mouse_Hands_wire_088088225.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mouse_Hands_wire_088088225.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Mouse_Hands_wire_088088226.oc" "Mouse_Hands_wire_088088225.ss";
connectAttr "groupId1.msg" "Mouse_Hands_wire_088088225.gn" -na;
connectAttr "geo_mouse_handsShape.iog.og[0]" "Mouse_Hands_wire_088088225.dsm" -na
		;
connectAttr "Mouse_Hands_wire_088088225.msg" "Mouse_Hands_materialInfo1.sg";
connectAttr "Mouse_Hands_wire_088088226.msg" "Mouse_Hands_materialInfo1.m";
connectAttr "ctrl_cog.tx" "ctrl_cog_mltDiv1.i1x";
connectAttr "ctrl_cog.ty" "ctrl_cog_mltDiv1.i1y";
connectAttr "ctrl_cog.tz" "ctrl_cog_mltDiv1.i1z";
connectAttr "ctrl_r_leg01_base01_ik_stretch_mltDiv.ox" "ctrl_r_leg01_base01_ik_squish_mltDiv.i1x"
		;
connectAttr "ctrl_spine01_01_stretch_mltDiv.ox" "ctrl_spine01_01_squish_mltDiv.i1x"
		;
connectAttr "ctrl_r_arm01_base01_ik.follow_world" "ctrl_r_arm01_upper01_ik_flwWld_reverse.ix"
		;
connectAttr "ctrl_r_arm01_base01_ik.ikBlend" "ctrl_r_arm01_ikBlend_reverse.ix";
connectAttr "ctrl_r_arm01_base01_ik.stretch" "ctrl_r_arm01_base01_ik_stretch_condition.ft"
		;
connectAttr "ctrl_r_arm01_base01_ik_distance_curveShape.dist" "ctrl_r_arm01_base01_ik_stretch_condition.ctr"
		;
connectAttr "ctrl_r_arm01_base01_ik_stretch_condition.ocr" "ctrl_r_arm01_base01_ik_distance_condition.ft"
		;
connectAttr "ctrl_r_arm01_base01_ik_distance_curveShape.dist" "ctrl_r_arm01_base01_ik_distance_condition.ctr"
		;
connectAttr "ctrl_r_arm01_base01_ik_distance_condition.ocr" "ctrl_r_arm01_base01_ik_stretch_mltDiv.i1x"
		;
connectAttr "ctrl_r_arm01_base01_ik_stretch_mltDiv.ox" "ctrl_r_arm01_base01_ik_squish_mltDiv.i1x"
		;
connectAttr "ctrl_l_arm01_base01_ik.follow_world" "ctrl_l_arm01_upper01_ik_flwWld_reverse.ix"
		;
connectAttr "ctrl_l_arm01_base01_ik.ikBlend" "ctrl_l_arm01_ikBlend_reverse.ix";
connectAttr "ctrl_l_arm01_base01_ik.stretch" "ctrl_l_arm01_base01_ik_stretch_condition.ft"
		;
connectAttr "ctrl_l_arm01_base01_ik_distance_curveShape.dist" "ctrl_l_arm01_base01_ik_stretch_condition.ctr"
		;
connectAttr "ctrl_l_arm01_base01_ik_stretch_condition.ocr" "ctrl_l_arm01_base01_ik_distance_condition.ft"
		;
connectAttr "ctrl_l_arm01_base01_ik_distance_curveShape.dist" "ctrl_l_arm01_base01_ik_distance_condition.ctr"
		;
connectAttr "ctrl_l_arm01_base01_ik_distance_condition.ocr" "ctrl_l_arm01_base01_ik_stretch_mltDiv.i1x"
		;
connectAttr "ctrl_l_arm01_base01_ik_stretch_mltDiv.ox" "ctrl_l_arm01_base01_ik_squish_mltDiv.i1x"
		;
connectAttr "ctrl_l_leg01_base01_ik_stretch_mltDiv.ox" "ctrl_l_leg01_base01_ik_squish_mltDiv.i1x"
		;
connectAttr "unitConversion17.o" "ctrl_r_arm01_base01_twist01_multiplyDivide.i1x"
		;
connectAttr "bone_r_arm01_base01.rx" "unitConversion17.i";
connectAttr "ctrl_r_arm01_base01_twist01_multiplyDivide.ox" "unitConversion18.i"
		;
connectAttr "unitConversion19.o" "ctrl_l_arm01_base01_twist01_multiplyDivide.i1x"
		;
connectAttr "bone_l_arm01_base01.rx" "unitConversion19.i";
connectAttr "ctrl_l_arm01_base01_twist01_multiplyDivide.ox" "unitConversion20.i"
		;
connectAttr "ctrl_master.trendmill" "ctrl_master_condition.ft";
connectAttr "ctrl_master.t" "ctrl_master_condition.ct";
connectAttr "ctrl_master_condition.oc" "ctrl_master__mltDiv.i1";
connectAttr "hyperView1.msg" "nodeEditorPanel2Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "ctrl_r_arm01_upper01_ik.msg" "hyperLayout1.hyp[0].dn";
connectAttr "ctrl_master.msg" "hyperLayout1.hyp[1].dn";
connectAttr "ctrl_r_arm01_upper01_ik_parent.msg" "hyperLayout1.hyp[2].dn";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "bone_root01.wm" "skinCluster1.ma[0]";
connectAttr "bone_l_arm01_upper01.wm" "skinCluster1.ma[1]";
connectAttr "bone_l_arm01_mid01.wm" "skinCluster1.ma[2]";
connectAttr "bone_l_arm01_base01.wm" "skinCluster1.ma[3]";
connectAttr "bone_l_arm01_finger01_01.wm" "skinCluster1.ma[4]";
connectAttr "bone_l_arm01_finger01_02.wm" "skinCluster1.ma[5]";
connectAttr "bone_l_arm01_finger01_03.wm" "skinCluster1.ma[6]";
connectAttr "bone_l_arm01_finger02_01.wm" "skinCluster1.ma[7]";
connectAttr "bone_l_arm01_finger02_02.wm" "skinCluster1.ma[8]";
connectAttr "bone_l_arm01_finger02_03.wm" "skinCluster1.ma[9]";
connectAttr "bone_l_arm01_finger03_01.wm" "skinCluster1.ma[10]";
connectAttr "bone_l_arm01_finger03_02.wm" "skinCluster1.ma[11]";
connectAttr "bone_l_arm01_finger03_03.wm" "skinCluster1.ma[12]";
connectAttr "bone_l_arm01_finger04_01.wm" "skinCluster1.ma[13]";
connectAttr "bone_l_arm01_finger04_02.wm" "skinCluster1.ma[14]";
connectAttr "bone_l_arm01_finger04_03.wm" "skinCluster1.ma[15]";
connectAttr "bone_l_arm01_finger05_01.wm" "skinCluster1.ma[16]";
connectAttr "bone_l_arm01_finger05_02.wm" "skinCluster1.ma[17]";
connectAttr "bone_l_arm01_finger05_03.wm" "skinCluster1.ma[18]";
connectAttr "bone_l_arm01_base01_twist01.wm" "skinCluster1.ma[19]";
connectAttr "bone_r_arm01_upper01.wm" "skinCluster1.ma[20]";
connectAttr "bone_r_arm01_mid01.wm" "skinCluster1.ma[21]";
connectAttr "bone_r_arm01_base01.wm" "skinCluster1.ma[22]";
connectAttr "bone_r_arm01_finger01_01.wm" "skinCluster1.ma[23]";
connectAttr "bone_r_arm01_finger01_02.wm" "skinCluster1.ma[24]";
connectAttr "bone_r_arm01_finger01_03.wm" "skinCluster1.ma[25]";
connectAttr "bone_r_arm01_finger02_01.wm" "skinCluster1.ma[26]";
connectAttr "bone_r_arm01_finger02_02.wm" "skinCluster1.ma[27]";
connectAttr "bone_r_arm01_finger02_03.wm" "skinCluster1.ma[28]";
connectAttr "bone_r_arm01_finger03_01.wm" "skinCluster1.ma[29]";
connectAttr "bone_r_arm01_finger03_02.wm" "skinCluster1.ma[30]";
connectAttr "bone_r_arm01_finger03_03.wm" "skinCluster1.ma[31]";
connectAttr "bone_r_arm01_finger04_01.wm" "skinCluster1.ma[32]";
connectAttr "bone_r_arm01_finger04_02.wm" "skinCluster1.ma[33]";
connectAttr "bone_r_arm01_finger04_03.wm" "skinCluster1.ma[34]";
connectAttr "bone_r_arm01_finger05_01.wm" "skinCluster1.ma[35]";
connectAttr "bone_r_arm01_finger05_02.wm" "skinCluster1.ma[36]";
connectAttr "bone_r_arm01_finger05_03.wm" "skinCluster1.ma[37]";
connectAttr "bone_r_arm01_base01_twist01.wm" "skinCluster1.ma[38]";
connectAttr "bone_root01.liw" "skinCluster1.lw[0]";
connectAttr "bone_l_arm01_upper01.liw" "skinCluster1.lw[1]";
connectAttr "bone_l_arm01_mid01.liw" "skinCluster1.lw[2]";
connectAttr "bone_l_arm01_base01.liw" "skinCluster1.lw[3]";
connectAttr "bone_l_arm01_finger01_01.liw" "skinCluster1.lw[4]";
connectAttr "bone_l_arm01_finger01_02.liw" "skinCluster1.lw[5]";
connectAttr "bone_l_arm01_finger01_03.liw" "skinCluster1.lw[6]";
connectAttr "bone_l_arm01_finger02_01.liw" "skinCluster1.lw[7]";
connectAttr "bone_l_arm01_finger02_02.liw" "skinCluster1.lw[8]";
connectAttr "bone_l_arm01_finger02_03.liw" "skinCluster1.lw[9]";
connectAttr "bone_l_arm01_finger03_01.liw" "skinCluster1.lw[10]";
connectAttr "bone_l_arm01_finger03_02.liw" "skinCluster1.lw[11]";
connectAttr "bone_l_arm01_finger03_03.liw" "skinCluster1.lw[12]";
connectAttr "bone_l_arm01_finger04_01.liw" "skinCluster1.lw[13]";
connectAttr "bone_l_arm01_finger04_02.liw" "skinCluster1.lw[14]";
connectAttr "bone_l_arm01_finger04_03.liw" "skinCluster1.lw[15]";
connectAttr "bone_l_arm01_finger05_01.liw" "skinCluster1.lw[16]";
connectAttr "bone_l_arm01_finger05_02.liw" "skinCluster1.lw[17]";
connectAttr "bone_l_arm01_finger05_03.liw" "skinCluster1.lw[18]";
connectAttr "bone_l_arm01_base01_twist01.liw" "skinCluster1.lw[19]";
connectAttr "bone_r_arm01_upper01.liw" "skinCluster1.lw[20]";
connectAttr "bone_r_arm01_mid01.liw" "skinCluster1.lw[21]";
connectAttr "bone_r_arm01_base01.liw" "skinCluster1.lw[22]";
connectAttr "bone_r_arm01_finger01_01.liw" "skinCluster1.lw[23]";
connectAttr "bone_r_arm01_finger01_02.liw" "skinCluster1.lw[24]";
connectAttr "bone_r_arm01_finger01_03.liw" "skinCluster1.lw[25]";
connectAttr "bone_r_arm01_finger02_01.liw" "skinCluster1.lw[26]";
connectAttr "bone_r_arm01_finger02_02.liw" "skinCluster1.lw[27]";
connectAttr "bone_r_arm01_finger02_03.liw" "skinCluster1.lw[28]";
connectAttr "bone_r_arm01_finger03_01.liw" "skinCluster1.lw[29]";
connectAttr "bone_r_arm01_finger03_02.liw" "skinCluster1.lw[30]";
connectAttr "bone_r_arm01_finger03_03.liw" "skinCluster1.lw[31]";
connectAttr "bone_r_arm01_finger04_01.liw" "skinCluster1.lw[32]";
connectAttr "bone_r_arm01_finger04_02.liw" "skinCluster1.lw[33]";
connectAttr "bone_r_arm01_finger04_03.liw" "skinCluster1.lw[34]";
connectAttr "bone_r_arm01_finger05_01.liw" "skinCluster1.lw[35]";
connectAttr "bone_r_arm01_finger05_02.liw" "skinCluster1.lw[36]";
connectAttr "bone_r_arm01_finger05_03.liw" "skinCluster1.lw[37]";
connectAttr "bone_r_arm01_base01_twist01.liw" "skinCluster1.lw[38]";
connectAttr "bone_root01.obcc" "skinCluster1.ifcl[0]";
connectAttr "bone_l_arm01_upper01.obcc" "skinCluster1.ifcl[1]";
connectAttr "bone_l_arm01_mid01.obcc" "skinCluster1.ifcl[2]";
connectAttr "bone_l_arm01_base01.obcc" "skinCluster1.ifcl[3]";
connectAttr "bone_l_arm01_finger01_01.obcc" "skinCluster1.ifcl[4]";
connectAttr "bone_l_arm01_finger01_02.obcc" "skinCluster1.ifcl[5]";
connectAttr "bone_l_arm01_finger01_03.obcc" "skinCluster1.ifcl[6]";
connectAttr "bone_l_arm01_finger02_01.obcc" "skinCluster1.ifcl[7]";
connectAttr "bone_l_arm01_finger02_02.obcc" "skinCluster1.ifcl[8]";
connectAttr "bone_l_arm01_finger02_03.obcc" "skinCluster1.ifcl[9]";
connectAttr "bone_l_arm01_finger03_01.obcc" "skinCluster1.ifcl[10]";
connectAttr "bone_l_arm01_finger03_02.obcc" "skinCluster1.ifcl[11]";
connectAttr "bone_l_arm01_finger03_03.obcc" "skinCluster1.ifcl[12]";
connectAttr "bone_l_arm01_finger04_01.obcc" "skinCluster1.ifcl[13]";
connectAttr "bone_l_arm01_finger04_02.obcc" "skinCluster1.ifcl[14]";
connectAttr "bone_l_arm01_finger04_03.obcc" "skinCluster1.ifcl[15]";
connectAttr "bone_l_arm01_finger05_01.obcc" "skinCluster1.ifcl[16]";
connectAttr "bone_l_arm01_finger05_02.obcc" "skinCluster1.ifcl[17]";
connectAttr "bone_l_arm01_finger05_03.obcc" "skinCluster1.ifcl[18]";
connectAttr "bone_l_arm01_base01_twist01.obcc" "skinCluster1.ifcl[19]";
connectAttr "bone_r_arm01_upper01.obcc" "skinCluster1.ifcl[20]";
connectAttr "bone_r_arm01_mid01.obcc" "skinCluster1.ifcl[21]";
connectAttr "bone_r_arm01_base01.obcc" "skinCluster1.ifcl[22]";
connectAttr "bone_r_arm01_finger01_01.obcc" "skinCluster1.ifcl[23]";
connectAttr "bone_r_arm01_finger01_02.obcc" "skinCluster1.ifcl[24]";
connectAttr "bone_r_arm01_finger01_03.obcc" "skinCluster1.ifcl[25]";
connectAttr "bone_r_arm01_finger02_01.obcc" "skinCluster1.ifcl[26]";
connectAttr "bone_r_arm01_finger02_02.obcc" "skinCluster1.ifcl[27]";
connectAttr "bone_r_arm01_finger02_03.obcc" "skinCluster1.ifcl[28]";
connectAttr "bone_r_arm01_finger03_01.obcc" "skinCluster1.ifcl[29]";
connectAttr "bone_r_arm01_finger03_02.obcc" "skinCluster1.ifcl[30]";
connectAttr "bone_r_arm01_finger03_03.obcc" "skinCluster1.ifcl[31]";
connectAttr "bone_r_arm01_finger04_01.obcc" "skinCluster1.ifcl[32]";
connectAttr "bone_r_arm01_finger04_02.obcc" "skinCluster1.ifcl[33]";
connectAttr "bone_r_arm01_finger04_03.obcc" "skinCluster1.ifcl[34]";
connectAttr "bone_r_arm01_finger05_01.obcc" "skinCluster1.ifcl[35]";
connectAttr "bone_r_arm01_finger05_02.obcc" "skinCluster1.ifcl[36]";
connectAttr "bone_r_arm01_finger05_03.obcc" "skinCluster1.ifcl[37]";
connectAttr "bone_r_arm01_base01_twist01.obcc" "skinCluster1.ifcl[38]";
connectAttr "bone_r_arm01_finger05_03.msg" "skinCluster1.ptt";
connectAttr "geo_mouse_handsShapeOrig.w" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId3.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "geo_mouse_handsShape.iog.og[1]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId3.msg" "tweakSet1.gn" -na;
connectAttr "geo_mouse_handsShape.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupParts1.og" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "character_rig.msg" "bindPose1.m[0]";
connectAttr "grp_bindBones.msg" "bindPose1.m[1]";
connectAttr "bone_root01.msg" "bindPose1.m[2]";
connectAttr "bone_l_arm01_upper01.msg" "bindPose1.m[3]";
connectAttr "bone_l_arm01_mid01.msg" "bindPose1.m[4]";
connectAttr "bone_l_arm01_base01.msg" "bindPose1.m[5]";
connectAttr "bone_l_arm01_finger01_01.msg" "bindPose1.m[6]";
connectAttr "bone_l_arm01_finger01_02.msg" "bindPose1.m[7]";
connectAttr "bone_l_arm01_finger01_03.msg" "bindPose1.m[8]";
connectAttr "bone_l_arm01_finger02_01.msg" "bindPose1.m[9]";
connectAttr "bone_l_arm01_finger02_02.msg" "bindPose1.m[10]";
connectAttr "bone_l_arm01_finger02_03.msg" "bindPose1.m[11]";
connectAttr "bone_l_arm01_finger03_01.msg" "bindPose1.m[12]";
connectAttr "bone_l_arm01_finger03_02.msg" "bindPose1.m[13]";
connectAttr "bone_l_arm01_finger03_03.msg" "bindPose1.m[14]";
connectAttr "bone_l_arm01_finger04_01.msg" "bindPose1.m[15]";
connectAttr "bone_l_arm01_finger04_02.msg" "bindPose1.m[16]";
connectAttr "bone_l_arm01_finger04_03.msg" "bindPose1.m[17]";
connectAttr "bone_l_arm01_finger05_01.msg" "bindPose1.m[18]";
connectAttr "bone_l_arm01_finger05_02.msg" "bindPose1.m[19]";
connectAttr "bone_l_arm01_finger05_03.msg" "bindPose1.m[20]";
connectAttr "bone_l_arm01_base01_twist01.msg" "bindPose1.m[21]";
connectAttr "bone_r_arm01_upper01.msg" "bindPose1.m[22]";
connectAttr "bone_r_arm01_mid01.msg" "bindPose1.m[23]";
connectAttr "bone_r_arm01_base01.msg" "bindPose1.m[24]";
connectAttr "bone_r_arm01_finger01_01.msg" "bindPose1.m[25]";
connectAttr "bone_r_arm01_finger01_02.msg" "bindPose1.m[26]";
connectAttr "bone_r_arm01_finger01_03.msg" "bindPose1.m[27]";
connectAttr "bone_r_arm01_finger02_01.msg" "bindPose1.m[28]";
connectAttr "bone_r_arm01_finger02_02.msg" "bindPose1.m[29]";
connectAttr "bone_r_arm01_finger02_03.msg" "bindPose1.m[30]";
connectAttr "bone_r_arm01_finger03_01.msg" "bindPose1.m[31]";
connectAttr "bone_r_arm01_finger03_02.msg" "bindPose1.m[32]";
connectAttr "bone_r_arm01_finger03_03.msg" "bindPose1.m[33]";
connectAttr "bone_r_arm01_finger04_01.msg" "bindPose1.m[34]";
connectAttr "bone_r_arm01_finger04_02.msg" "bindPose1.m[35]";
connectAttr "bone_r_arm01_finger04_03.msg" "bindPose1.m[36]";
connectAttr "bone_r_arm01_finger05_01.msg" "bindPose1.m[37]";
connectAttr "bone_r_arm01_finger05_02.msg" "bindPose1.m[38]";
connectAttr "bone_r_arm01_finger05_03.msg" "bindPose1.m[39]";
connectAttr "bone_r_arm01_base01_twist01.msg" "bindPose1.m[40]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[5]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[5]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[5]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[5]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[4]" "bindPose1.p[21]";
connectAttr "bindPose1.m[2]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[24]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[24]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[24]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[24]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[23]" "bindPose1.p[40]";
connectAttr "bone_root01.bps" "bindPose1.wm[2]";
connectAttr "bone_l_arm01_upper01.bps" "bindPose1.wm[3]";
connectAttr "bone_l_arm01_mid01.bps" "bindPose1.wm[4]";
connectAttr "bone_l_arm01_base01.bps" "bindPose1.wm[5]";
connectAttr "bone_l_arm01_finger01_01.bps" "bindPose1.wm[6]";
connectAttr "bone_l_arm01_finger01_02.bps" "bindPose1.wm[7]";
connectAttr "bone_l_arm01_finger01_03.bps" "bindPose1.wm[8]";
connectAttr "bone_l_arm01_finger02_01.bps" "bindPose1.wm[9]";
connectAttr "bone_l_arm01_finger02_02.bps" "bindPose1.wm[10]";
connectAttr "bone_l_arm01_finger02_03.bps" "bindPose1.wm[11]";
connectAttr "bone_l_arm01_finger03_01.bps" "bindPose1.wm[12]";
connectAttr "bone_l_arm01_finger03_02.bps" "bindPose1.wm[13]";
connectAttr "bone_l_arm01_finger03_03.bps" "bindPose1.wm[14]";
connectAttr "bone_l_arm01_finger04_01.bps" "bindPose1.wm[15]";
connectAttr "bone_l_arm01_finger04_02.bps" "bindPose1.wm[16]";
connectAttr "bone_l_arm01_finger04_03.bps" "bindPose1.wm[17]";
connectAttr "bone_l_arm01_finger05_01.bps" "bindPose1.wm[18]";
connectAttr "bone_l_arm01_finger05_02.bps" "bindPose1.wm[19]";
connectAttr "bone_l_arm01_finger05_03.bps" "bindPose1.wm[20]";
connectAttr "bone_l_arm01_base01_twist01.bps" "bindPose1.wm[21]";
connectAttr "bone_r_arm01_upper01.bps" "bindPose1.wm[22]";
connectAttr "bone_r_arm01_mid01.bps" "bindPose1.wm[23]";
connectAttr "bone_r_arm01_base01.bps" "bindPose1.wm[24]";
connectAttr "bone_r_arm01_finger01_01.bps" "bindPose1.wm[25]";
connectAttr "bone_r_arm01_finger01_02.bps" "bindPose1.wm[26]";
connectAttr "bone_r_arm01_finger01_03.bps" "bindPose1.wm[27]";
connectAttr "bone_r_arm01_finger02_01.bps" "bindPose1.wm[28]";
connectAttr "bone_r_arm01_finger02_02.bps" "bindPose1.wm[29]";
connectAttr "bone_r_arm01_finger02_03.bps" "bindPose1.wm[30]";
connectAttr "bone_r_arm01_finger03_01.bps" "bindPose1.wm[31]";
connectAttr "bone_r_arm01_finger03_02.bps" "bindPose1.wm[32]";
connectAttr "bone_r_arm01_finger03_03.bps" "bindPose1.wm[33]";
connectAttr "bone_r_arm01_finger04_01.bps" "bindPose1.wm[34]";
connectAttr "bone_r_arm01_finger04_02.bps" "bindPose1.wm[35]";
connectAttr "bone_r_arm01_finger04_03.bps" "bindPose1.wm[36]";
connectAttr "bone_r_arm01_finger05_01.bps" "bindPose1.wm[37]";
connectAttr "bone_r_arm01_finger05_02.bps" "bindPose1.wm[38]";
connectAttr "bone_r_arm01_finger05_03.bps" "bindPose1.wm[39]";
connectAttr "bone_r_arm01_base01_twist01.bps" "bindPose1.wm[40]";
connectAttr "Mouse_Hands_wire_088088225.pa" ":renderPartition.st" -na;
connectAttr "Mouse_Hands_wire_088088226.msg" ":defaultShaderList1.s" -na;
connectAttr "ctrl_cog_mltDiv.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrl_cog_mltDiv1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrl_r_leg01_base01_ik_stretch_mltDiv.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_r_leg01_base01_ik_squish_mltDiv.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_spine01_01_stretch_mltDiv.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ctrl_spine01_01_squish_mltDiv.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ctrl_r_arm01_upper01_ik_flwWld_reverse.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_r_arm01_ikBlend_reverse.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ctrl_r_arm01_base01_ik_stretch_condition.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_r_arm01_base01_ik_distance_condition.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_r_arm01_base01_ik_stretch_mltDiv.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_r_arm01_base01_ik_squish_mltDiv.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_l_arm01_upper01_ik_flwWld_reverse.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_l_arm01_ikBlend_reverse.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ctrl_l_arm01_base01_ik_stretch_condition.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_l_arm01_base01_ik_distance_condition.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_l_arm01_base01_ik_stretch_mltDiv.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_l_arm01_base01_ik_squish_mltDiv.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_l_leg01_base01_ik_stretch_mltDiv.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_l_leg01_base01_ik_squish_mltDiv.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_r_leg01_base01_twist01_multiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_r_arm01_base01_twist01_multiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_l_arm01_base01_twist01_multiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_l_leg01_base01_twist01_multiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ctrl_master_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrl_master__mltDiv.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Mouse_Rig.ma
