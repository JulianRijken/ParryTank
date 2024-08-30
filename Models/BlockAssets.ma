//Maya ASCII 2023 scene
//Name: BlockAssets.ma
//Last modified: Sun, Sep 24, 2023 06:59:47 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22621)";
fileInfo "UUID" "585ECD87-47D4-ACB4-3F5B-B496DAB9102F";
createNode transform -s -n "persp";
	rename -uid "A2E8F83E-4D89-CE0D-2531-4492F8247205";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 182.33160422183371 627.41634671768895 -399.36442215208615 ;
	setAttr ".r" -type "double3" 90 0 180 ;
	setAttr ".rpt" -type "double3" -6.0741332788422666e-14 4.6390236075908917e-14 1.7746982560638524e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4DD6C914-45CF-0CA8-E5AA-61A81C97808A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 534.04899900040368;
	setAttr ".ow" 793.20847553172416;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 299.99999999999994 93.367347717285156 -393.5272216796875 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "top";
	rename -uid "7DF05DE4-42D9-FAA0-BCC7-48BB2D4625A3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1148.2628481908398 764.28305868266716 -2029.6056645889025 ;
	setAttr ".r" -type "double3" -20.400000000037306 -203.19999999997742 0 ;
	setAttr ".rpt" -type "double3" 0 5.1252295587241618e-15 -6.0802210114154789e-31 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B81FF0CC-42E0-9C99-20C3-DE9C927A2D4C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 2094.9953396758465;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 300 175.69144439697266 -308.021240234375 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "front";
	rename -uid "697EEC5C-4BB9-EBC6-225C-5A9A84123ACD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 10000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C3FEA85D-48B9-35C9-E31B-B7BB6104E9BB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 10000.1;
	setAttr ".ow" 363.89650919084397;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "143E07B2-4165-91B3-3180-7BACAA78AD59";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "236BAF73-45E0-A435-2C0D-07800215AC04";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 10000.1;
	setAttr ".ow" 867.61950132625793;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "BlocksSharp";
	rename -uid "B026B830-494C-2F48-E76F-2491BAF011E9";
	setAttr ".t" -type "double3" 0 0 150 ;
	setAttr ".rp" -type "double3" 550 100 350 ;
	setAttr ".sp" -type "double3" 550 100 350 ;
createNode transform -n "BarrleLarge" -p "BlocksSharp";
	rename -uid "B7649360-486E-9182-F5A2-5089ED484BF4";
	setAttr ".rp" -type "double3" -600 100 350 ;
	setAttr ".sp" -type "double3" -600 100 350 ;
createNode mesh -n "BarrleLargeShape" -p "|BlocksSharp|BarrleLarge";
	rename -uid "4DEA0DE7-489F-9767-B9AD-0E845ED7AC1C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.49330770969390869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5" -p "|BlocksSharp|BarrleLarge";
	rename -uid "C1C39E7C-4742-193D-5CC4-47A3D93B2D1F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.49999998137354851 0.4895833358168602 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  -600 238.26828 188.26828 
		-600 270.71063 220.71063 -600 292.38794 242.38792 -600 300 250 -600 292.38797 242.38797 
		-600 270.71069 220.71071 -600 238.26837 188.26837 -600 200.00003 150.00003 -600 161.73169 
		111.73169 -600 129.28934 79.289337 -600 107.61205 57.612053 -600 100 50 -600 107.61205 
		57.612045 -600 129.28931 79.289314 -600 161.73166 111.73166 -600 200 150 -600 38.26828 
		588.26831 -600 70.710632 620.71063 -600 92.387924 642.38794 -600 99.999992 650 -600 
		92.38797 642.38794 -600 70.710709 620.71069 -600 38.268372 588.26837 -600 3.0517578e-05 
		550.00006 -600 -38.268311 511.73169 -600 -70.710663 479.28934 -600 -92.387939 457.61206 
		-600 -100 450 -600 -92.387939 457.61206 -600 -70.710693 479.28931 -600 -38.268341 
		511.73166 -600 0 550 -600 200 150 -600 0 550;
	setAttr -s 34 ".vt[0:33]"  92.3879776 -100 -38.26828766 70.71071625 -100 -70.71063232
		 38.26839066 -100 -92.38792419 5.0663948e-05 -100 -99.99999237 -38.2682991 -100 -92.38796997
		 -70.71064758 -100 -70.71070862 -92.38793945 -100 -38.26837921 -100 -100 -3.5762787e-05
		 -92.38796234 -100 38.26831436 -70.71069336 -100 70.71066284 -38.26836014 -100 92.38794708
		 -1.4901161e-05 -100 100 38.26832962 -100 92.38795471 70.71067047 -100 70.71068573
		 92.38794708 -100 38.26834488 100 -100 0 92.3879776 100 -38.26828766 70.71071625 100 -70.71063232
		 38.26839066 100 -92.38792419 5.0663948e-05 100 -99.99999237 -38.2682991 100 -92.38796997
		 -70.71064758 100 -70.71070862 -92.38793945 100 -38.26837921 -100 100 -3.5762787e-05
		 -92.38796234 100 38.26831436 -70.71069336 100 70.71066284 -38.26836014 100 92.38794708
		 -1.4901161e-05 100 100 38.26832962 100 92.38795471 70.71067047 100 70.71068573 92.38794708 100 38.26834488
		 100 100 0 0 -100 0 0 100 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BarrleMedium" -p "BlocksSharp";
	rename -uid "A8021570-423F-FBF6-31A4-7CAE20983DCD";
	setAttr ".rp" -type "double3" -300 100 300 ;
	setAttr ".sp" -type "double3" -300 100 300 ;
createNode mesh -n "BarrleMediumShape" -p "|BlocksSharp|BarrleMedium";
	rename -uid "7CE74F61-4B08-F276-66A7-ACB6FEFE27E3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.4933076947927475 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape4" -p "|BlocksSharp|BarrleMedium";
	rename -uid "CA8E4915-4FEB-982A-1572-A2A4086FFE3F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.49999998137354851 0.4895833358168602 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  -300 238.26828 188.26828 
		-300 270.71063 220.71063 -300 292.38794 242.38792 -300 300 250 -300 292.38797 242.38797 
		-300 270.71069 220.71071 -300 238.26837 188.26837 -300 200.00003 150.00003 -300 161.73169 
		111.73169 -300 129.28934 79.289337 -300 107.61205 57.612053 -300 100 50 -300 107.61205 
		57.612045 -300 129.28931 79.289314 -300 161.73166 111.73166 -300 200 150 -300 38.268288 
		488.26828 -300 70.710632 520.71063 -300 92.387924 542.38794 -300 99.999992 550 -300 
		92.38797 542.38794 -300 70.710709 520.71069 -300 38.268379 488.26837 -300 3.8146973e-05 
		450.00003 -300 -38.268311 411.73169 -300 -70.710663 379.28934 -300 -92.387939 357.61206 
		-300 -100 350 -300 -92.387955 357.61206 -300 -70.710693 379.28931 -300 -38.268341 
		411.73166 -300 0 450 -300 200 150 -300 0 450;
	setAttr -s 34 ".vt[0:33]"  92.3879776 -100 -38.26828766 70.71071625 -100 -70.71063232
		 38.26839066 -100 -92.38792419 5.0663948e-05 -100 -99.99999237 -38.2682991 -100 -92.38796997
		 -70.71064758 -100 -70.71070862 -92.38793945 -100 -38.26837921 -100 -100 -3.5762787e-05
		 -92.38796234 -100 38.26831436 -70.71069336 -100 70.71066284 -38.26836014 -100 92.38794708
		 -1.4901161e-05 -100 100 38.26832962 -100 92.38795471 70.71067047 -100 70.71068573
		 92.38794708 -100 38.26834488 100 -100 0 92.3879776 100 -38.26828766 70.71071625 100 -70.71063232
		 38.26839066 100 -92.38792419 5.0663948e-05 100 -99.99999237 -38.2682991 100 -92.38796997
		 -70.71064758 100 -70.71070862 -92.38793945 100 -38.26837921 -100 100 -3.5762787e-05
		 -92.38796234 100 38.26831436 -70.71069336 100 70.71066284 -38.26836014 100 92.38794708
		 -1.4901161e-05 100 100 38.26832962 100 92.38795471 70.71067047 100 70.71068573 92.38794708 100 38.26834488
		 100 100 0 0 -100 0 0 100 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BarrleSmall" -p "BlocksSharp";
	rename -uid "CF363727-4F83-6AA7-4262-EC8BFBF14015";
	setAttr ".rp" -type "double3" 0 100 250 ;
	setAttr ".sp" -type "double3" 0 100 250 ;
createNode mesh -n "BarrleSmallShape" -p "|BlocksSharp|BarrleSmall";
	rename -uid "750A8AB2-45D5-7379-D886-219FDE1431C8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.49330770969390869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape7" -p "|BlocksSharp|BarrleSmall";
	rename -uid "0DD816B1-4DB4-2DFF-EDAA-BCBF94E6D536";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.49999998137354851 0.4895833358168602 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  92.3879776 138.26828003 150 70.71071625 170.71063232 150
		 38.26839066 192.38792419 150 5.0663948e-05 200 150 -38.2682991 192.38796997 150 -70.71064758 170.71070862 150
		 -92.38793945 138.26837158 150 -100 100.000038146973 150 -92.38796234 61.73168564 150
		 -70.71069336 29.28933716 150 -38.26836014 7.61205292 150 -1.4901161e-05 0 150 38.26832962 7.61204529 150
		 70.71067047 29.28931427 150 92.38794708 61.73165512 150 100 100 150 92.3879776 138.26828003 350
		 70.71071625 170.71063232 350 38.26839066 192.38792419 350 5.0663948e-05 200 350 -38.2682991 192.38796997 350
		 -70.71064758 170.71070862 350 -92.38793945 138.26837158 350 -100 100.000038146973 350
		 -92.38796234 61.73168564 350 -70.71069336 29.28933716 350 -38.26836014 7.61205292 350
		 -1.4901161e-05 0 350 38.26832962 7.61204529 350 70.71067047 29.28931427 350 92.38794708 61.73165512 350
		 100 100 350 0 100 150 0 100 350;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ramp" -p "BlocksSharp";
	rename -uid "B7098491-4355-9955-7E91-00BBE1CD5948";
	setAttr ".rp" -type "double3" 300 100 250 ;
	setAttr ".sp" -type "double3" 300 100 250 ;
createNode mesh -n "RampShape" -p "|BlocksSharp|Ramp";
	rename -uid "94D9F5D3-4B46-969A-0AC9-E9813ACE90D8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999494850635529 0.49753983318805695 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape8" -p "|BlocksSharp|Ramp";
	rename -uid "F1E5545B-4C15-5608-BD04-AD954B42B6C5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.49999998137354851 0.4895833358168602 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0.088235296 0.12499996
		 0.088235274;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  -150 0 0 -150 0 0 -150 0 
		0 -150 0 0 -150 0 0 -150 0 0;
	setAttr -s 6 ".vt[0:5]"  350 0 350 550 0 350 350 200 350 550 200 350
		 350 0 150 550 0 150;
	setAttr -s 9 ".ed[0:8]"  0 1 0 2 3 0 4 5 0 0 2 0 1 3 0 2 4 0 3 5 0
		 4 0 0 5 1 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 4 0 4 -2 -4
		mu 0 4 0 1 3 2
		f 4 1 6 -3 -6
		mu 0 4 2 3 5 4
		f 4 2 8 -1 -8
		mu 0 4 4 5 7 6
		f 3 -9 -7 -5
		mu 0 3 1 8 3
		f 3 7 3 5
		mu 0 3 9 0 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Roof" -p "BlocksSharp";
	rename -uid "A1338015-4C1C-45DF-D4CC-F0BE661D77BF";
	setAttr ".rp" -type "double3" 650 75 250 ;
	setAttr ".sp" -type "double3" 650 75 250 ;
createNode mesh -n "RoofShape" -p "|BlocksSharp|Roof";
	rename -uid "19F05435-4B2E-9E97-4666-B79BCE2B0A1C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49924387037754059 0.53319588303565979 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape9" -p "|BlocksSharp|Roof";
	rename -uid "ECD53BCD-4B28-D261-C948-08892483B2EB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".pv" -type "double2" 0.49999998137354851 0.4895833358168602 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.35416669 -0.020833328
		 0.64583337 -0.020833328 0.3699187 0.68394309 0.6300813 0.68394309 0.375 1 0.625 1
		 0.5 0.25 0.5 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  500 0 350 800 0 350 500 0 150 800 0 150 650 150 350
		 650 150 150;
	setAttr -s 9 ".ed[0:8]"  0 4 0 2 5 0 0 2 0 1 3 0 0 1 0 4 1 0 5 3 0
		 2 3 0 4 5 1;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -1 4 -6
		mu 0 3 6 0 1
		f 4 0 8 -2 -3
		mu 0 4 0 6 7 2
		f 3 1 6 -8
		mu 0 3 2 7 3
		f 4 2 7 -4 -5
		mu 0 4 4 2 3 5
		f 4 -9 5 3 -7
		mu 0 4 7 6 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LargeCube" -p "BlocksSharp";
	rename -uid "7F2A82E6-425C-D85B-0D5D-46BBFA069988";
	setAttr ".rp" -type "double3" 1000 100 250 ;
	setAttr ".sp" -type "double3" 1000 100 250 ;
createNode mesh -n "LargeCubeShape" -p "|BlocksSharp|LargeCube";
	rename -uid "5167C5D5-447C-353B-02F3-2F888436CE3F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.4933076873421669 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "|BlocksSharp|LargeCube";
	rename -uid "146D4E8A-48BE-E2B1-C512-2297E8929434";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.49999998137354851 0.4895833358168602 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  950 50 300 1050 50 300 950 
		150 300 1050 150 300 950 150 200 1050 150 200 950 50 200 1050 50 200;
	setAttr -s 8 ".vt[0:7]"  -50 -50 50 50 -50 50 -50 50 50 50 50 50 -50 50 -50
		 50 50 -50 -50 -50 -50 50 -50 -50;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "StretchCube" -p "BlocksSharp";
	rename -uid "37CCBE29-44CA-BC99-84E4-02B464DD7C7F";
	setAttr ".rp" -type "double3" 1300 50 225 ;
	setAttr ".sp" -type "double3" 1300 50 225 ;
createNode mesh -n "StretchCubeShape" -p "|BlocksSharp|StretchCube";
	rename -uid "61E92AC2-4BE5-D41E-4190-0D9C5DE0C235";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999770522117615 0.49410375952720642 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "|BlocksSharp|StretchCube";
	rename -uid "B1DEAE9A-4319-4090-0627-26B15CE5E29C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.49999998137354851 0.4895833358168602 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1250 50 250 1350 50 250 1250 
		50 250 1350 50 250 1250 50 200 1350 50 200 1250 50 200 1350 50 200;
	setAttr -s 8 ".vt[0:7]"  -50 -50 50 50 -50 50 -50 50 50 50 50 50 -50 50 -50
		 50 50 -50 -50 -50 -50 50 -50 -50;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FullCube" -p "BlocksSharp";
	rename -uid "53FCBE17-421A-B9C3-2A22-ADB3826F61F6";
	setAttr ".rp" -type "double3" 1550 50 200 ;
	setAttr ".sp" -type "double3" 1550 50 200 ;
createNode mesh -n "FullCubeShape" -p "|BlocksSharp|FullCube";
	rename -uid "A037C85D-4BEB-0D10-ADD9-A59176CE938E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "|BlocksSharp|FullCube";
	rename -uid "B275A316-4C7B-2970-3290-C3B56B53E123";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.49999998137354851 0.4895833358168602 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1500 0 250 1600 0 250 1500 100 250 1600 100 250
		 1500 100 150 1600 100 150 1500 0 150 1600 0 150;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "HalfCube" -p "BlocksSharp";
	rename -uid "F7D9D19D-4E27-2884-5166-E88EF686E5AB";
	setAttr ".rp" -type "double3" 1750 25 200 ;
	setAttr ".sp" -type "double3" 1750 25 200 ;
createNode mesh -n "HalfCubeShape" -p "|BlocksSharp|HalfCube";
	rename -uid "43FE860F-454F-35F2-33A3-AEB16B23553E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49991558492183685 0.49847425520420074 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "|BlocksSharp|HalfCube";
	rename -uid "F842AA54-4920-DFCE-2AA6-90BAB3F28A92";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.49999998137354851 0.4895833358168602 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1750 50 200 1750 50 200 1750 
		0 200 1750 0 200 1750 0 200 1750 0 200 1750 50 200 1750 50 200;
	setAttr -s 8 ".vt[0:7]"  -50 -50 50 50 -50 50 -50 50 50 50 50 50 -50 50 -50
		 50 50 -50 -50 -50 -50 50 -50 -50;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BlocksRound";
	rename -uid "F8B43A79-40D9-559C-7CFE-52A083D1B930";
	setAttr ".t" -type "double3" 0 0 -650 ;
	setAttr ".rp" -type "double3" 550 100 350 ;
	setAttr ".sp" -type "double3" 550 100 350 ;
createNode transform -n "BarrleSmall" -p "BlocksRound";
	rename -uid "91BA4932-427B-F2F8-DA7D-E383D832000B";
	setAttr ".rp" -type "double3" 0 0 250 ;
	setAttr ".sp" -type "double3" 0 0 250 ;
createNode mesh -n "BarrleSmallShape" -p "|BlocksRound|BarrleSmall";
	rename -uid "1C7B1C1D-4E69-3F2E-17C2-0DAAFE2CF5C5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 21 "f[20:39]" "f[60:61]" "f[64:65]" "f[68:69]" "f[72:73]" "f[76:77]" "f[80:81]" "f[84:85]" "f[88:89]" "f[92:93]" "f[96:97]" "f[100:101]" "f[104:105]" "f[108:109]" "f[112:113]" "f[116:117]" "f[120:121]" "f[124:125]" "f[128:129]" "f[132:133]" "f[136:137]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[1]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 41 "f[0:19]" "f[62:63]" "f[66:67]" "f[70:71]" "f[74:75]" "f[78:79]" "f[82:83]" "f[86:87]" "f[90:91]" "f[94:95]" "f[98:99]" "f[102:103]" "f[106:107]" "f[110:111]" "f[114:115]" "f[118:119]" "f[122:123]" "f[126:127]" "f[130:131]" "f[134:135]" "f[138:139]" "f[142:143]" "f[146:147]" "f[150:151]" "f[154:155]" "f[158:159]" "f[162:163]" "f[166:167]" "f[170:171]" "f[174:175]" "f[178:179]" "f[182:183]" "f[186:187]" "f[190:191]" "f[194:195]" "f[198:199]" "f[202:203]" "f[206:207]" "f[210:211]" "f[214:215]" "f[218:219]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 21 "f[40:59]" "f[140:141]" "f[144:145]" "f[148:149]" "f[152:153]" "f[156:157]" "f[160:161]" "f[164:165]" "f[168:169]" "f[172:173]" "f[176:177]" "f[180:181]" "f[184:185]" "f[188:189]" "f[192:193]" "f[196:197]" "f[200:201]" "f[204:205]" "f[208:209]" "f[212:213]" "f[216:217]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.75415164232254028 0.083906099200248718 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 248 ".uvst[0].uvsp[0:247]" -type "float2" 0.60985374 0.13784778
		 0.38902509 0.09745568 0.60958815 0.1780732 0.38998389 0.13786742 0.60956758 0.21831357
		 0.39026469 0.17816094 0.60961545 0.25855607 0.39030719 0.21840835 0.60967088 0.29879737
		 0.39028245 0.25864041 0.60971689 0.33903688 0.39024836 0.29886848 0.60975111 0.37927461
		 0.3902216 0.33909655 0.60977501 0.41951078 0.39020455 0.37932575 0.60979128 0.45974571
		 0.3901962 0.4195562 0.60980111 0.49997967 0.39019471 0.45978791 0.60980535 0.54021227
		 0.39019901 0.50002062 0.60980392 0.58044392 0.39020884 0.54025459 0.60979545 0.62067455
		 0.39022493 0.5804894 0.6097784 0.66090369 0.39024895 0.62072569 0.60975158 0.70113164
		 0.39028317 0.66096342 0.60971749 0.74135971 0.3903293 0.70120281 0.60969287 0.78159165
		 0.39038473 0.74144405 0.60973537 0.82183921 0.3904326 0.7816866 0.61001617 0.86213255
		 0.39041209 0.82192683 0.61097497 0.90254414 0.39014632 0.86215234 0.59758365 0.54970485
		 0.60816723 0.51711702 0.60816258 0.48285371 0.5975703 0.45026881 0.57742697 0.42255193
		 0.54970473 0.40241623 0.51711684 0.39183277 0.48285368 0.39183742 0.45026872 0.40242976
		 0.42255187 0.42257291 0.40241623 0.45029539 0.39183271 0.4828831 0.39183733 0.51714641
		 0.40242958 0.54973119 0.42257285 0.57744807 0.45029518 0.59758377 0.48288298 0.60816729
		 0.51714611 0.60816264 0.54973114 0.5975703 0.49999997 0.50000006 0.57744789 0.57742709
		 0.51712501 0.60816586 0.48286176 0.60816389 0.45027602 0.59757406 0.42255759 0.57743269
		 0.40241981 0.54971182 0.39183384 0.51712489 0.39183611 0.48286158 0.40242606 0.4502759
		 0.42256719 0.42255753 0.450288 0.40241987 0.48287505 0.39183384 0.51713836 0.39183605
		 0.54972398 0.40242594 0.57744241 0.42256713 0.59758008 0.45028788 0.60816604 0.48287499
		 0.60816389 0.51713806 0.597574 0.54972386 0.57743281 0.57744217 0.549712 0.59758002
		 0.5 0.49999982 0.61079806 0.097689092 0.38920194 0.90231097 0.61858797 0.90178752
		 0.61841112 0.098360777 0.62604892 0.9006108 0.61100131 0.55654758 0.62591648 0.099499971
		 0.60430002 0.55312693 0.6172539 0.13817903 0.6230427 0.51947862 0.62469041 0.13850948
		 0.61561239 0.51829594 0.61701816 0.17819512 0.62303978 0.48050302 0.62445796 0.17830426
		 0.61560762 0.48167449 0.61700892 0.21835414 0.61099291 0.44343573 0.62445062 0.21838453
		 0.60428643 0.44684666 0.61706132 0.25856662 0.58808112 0.41190571 0.62450373 0.25856835
		 0.58275706 0.41722178 0.61711878 0.29879773 0.5565474 0.38899869 0.62456155 0.29878962
		 0.55312669 0.39569992 0.6171658 0.33903408 0.5194785 0.3769573 0.6246087 0.33902329
		 0.51829588 0.38438779 0.61720055 0.37927157 0.4805029 0.37696022 0.62464345 0.37926036
		 0.48167437 0.38439238 0.61722463 0.41950816 0.44343576 0.38900715 0.62466782 0.41949761
		 0.44684654 0.39571345 0.61724091 0.45974392 0.41190541 0.41191876 0.62468398 0.45973414
		 0.41722172 0.41724294 0.61725074 0.49997866 0.3889986 0.44345242 0.62469411 0.4999696
		 0.39569986 0.44687325 0.61725515 0.54021215 0.37695724 0.48052138 0.62469834 0.54020393
		 0.38438752 0.48170388 0.61725348 0.58044451 0.37696016 0.51949698 0.62469673 0.58043694
		 0.38439232 0.51832551 0.6172449 0.62067562 0.389007 0.55656415 0.62468791 0.62066871
		 0.39571333 0.55315346 0.61722732 0.66090453 0.4119187 0.58809441 0.62467021 0.66089755
		 0.41724288 0.5827781 0.61719942 0.70112991 0.44345242 0.61100137 0.62464172 0.70112067
		 0.4468731 0.60430014 0.6171627 0.7413488 0.48052138 0.62304264 0.62460405 0.74133056
		 0.48170391 0.61561239 0.61713177 0.78155303 0.51949698 0.62303972 0.62457037 0.78150785
		 0.51832551 0.61560756 0.61715823 0.82172418 0.55656397 0.61099291 0.62458968 0.8216033
		 0.55315334 0.60428649 0.61740476 0.86181986 0.58809429 0.58808124 0.62481153 0.8614819
		 0.58277804 0.58275712 0.38141209 0.09821251 0.381589 0.90163934 0.37395114 0.099389285
		 0.5565424 0.61100388 0.3740834 0.90050018 0.55313295 0.60429704 0.3825953 0.13818011
		 0.37518841 0.13851818 0.5194729 0.62304372 0.51830298 0.61561126 0.38284183 0.17827585
		 0.37541026 0.17839679 0.48049718 0.62303889 0.48168111 0.61560869 0.38286835 0.21844715
		 0.37542969 0.21849224 0.44343054 0.61099017 0.44685262 0.60428953 0.38283747 0.25865138
		 0.37539607 0.25866961 0.41190135 0.58807695 0.41722661 0.58276176 0.3828007 0.29887015
		 0.37535822 0.29887944 0.38899583 0.55654216 0.39570296 0.55313277 0.38277268 0.33909571
		 0.37532979 0.33910263 0.37695634 0.51947272 0.38438857 0.51830268 0.38275516 0.37932473
		 0.37531209 0.37933147 0.37696111 0.48049694 0.38439119 0.48168099 0.38274664 0.41955566
		 0.37530339 0.41956317 0.38900983 0.44343042 0.39571035 0.44685256 0.38274491 0.45978808
		 0.37530172 0.45979631 0.41192287 0.4119013 0.41723812 0.41722649 0.38274914 0.5000217
		 0.37530601 0.50003064 0.44345766 0.38899583 0.44686699 0.3957029 0.38275915 0.54025626
		 0.37531596 0.5402661 0.48052716 0.37695628 0.48169714 0.38438857 0.38277531 0.58049178
		 0.37533224 0.58050257 0.51950276 0.37696099 0.51831877 0.38439113 0.38279951 0.62072861
		 0.37535661 0.62073976 0.5565694 0.38900965 0.55314749 0.39571023 0.3828342 0.6609661
		 0.37539124 0.66097689 0.58809865 0.41192287 0.58277339 0.41723812 0.38288122 0.70120245
		 0.37543851 0.7012105 0.61100405 0.44345766 0.60429704 0.44686699 0.38293874 0.7414335
		 0.37549645 0.74143165 0.62304366 0.48052704 0.61561143 0.48169702 0.38299102 0.78164601
		 0.37554932 0.78161561 0.62303901 0.51950276 0.61560869 0.51831865 0.38298196 0.82180506
		 0.37554204 0.82169586 0.61099029 0.55656922 0.60428965 0.5531472 0.38274616 0.86182117
		 0.58807707 0.58809847 0.37530959 0.86149085 0.58276188 0.58277321;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 202 ".vt";
	setAttr ".vt[0:165]"  1.1444092e-05 99.99998474 150 1.1444092e-05 99.99998474 350
		 95.10572815 130.90170288 164.81378174 94.01991272 130.54890442 159.14477539 90.92779541 129.54420471 154.33886719
		 86.3000946 128.040588379 151.12762451 80.84133911 126.26693726 150 80.90176392 158.77854919 164.81378174
		 79.9781189 158.10748291 159.14477539 77.34779358 156.19644165 154.33886719 73.41123962 153.33636475 151.12762451
		 68.76776123 149.962677 150 58.77857208 180.9017334 164.81378174 58.10750198 179.97808838 159.14477539
		 56.19646454 177.34776306 154.33886719 53.33638763 173.41120911 151.12762451 49.96269989 168.76773071 150
		 30.90172577 195.10569763 164.81378174 30.5489254 194.019882202 159.14477539 29.54423141 190.92774963 154.33886719
		 28.04060173 186.30004883 151.12762451 26.26695061 180.84130859 150 1.1444092e-05 200.000030517578 164.81378174
		 1.1719068e-05 198.8583374 159.14477539 1.2502135e-05 195.60708618 154.33886719 1.3674076e-05 190.7412262 151.12762451
		 1.5056477e-05 185.0015716553 150 -30.90170288 195.10568237 164.81378174 -30.5489006 194.019866943 159.14477539
		 -29.54420662 190.92774963 154.33886719 -28.040576935 186.30004883 151.12762451 -26.2669239 180.84130859 150
		 -58.77853775 180.90171814 164.81378174 -58.10746765 179.97807312 159.14477539 -56.19642639 177.3477478 154.33886719
		 -53.3363533 173.41119385 151.12762451 -49.96266174 168.76771545 150 -80.90171814 158.77851868 164.81378174
		 -79.97807312 158.10745239 159.14477539 -77.3477478 156.19641113 154.33886719 -73.41119385 153.33633423 151.12762451
		 -68.7677002 149.96264648 150 -95.10566711 130.90168762 164.81378174 -94.019851685 130.54888916 159.14477539
		 -90.92771912 129.54418945 154.33886719 -86.30001831 128.040557861 151.12762451 -80.84127808 126.26691437 150
		 -100.000015258789 99.99998474 164.81378174 -98.85832214 99.99998474 159.14477539
		 -95.60707092 99.99998474 154.33886719 -90.74121094 99.99998474 151.12762451 -85.0015563965 99.99998474 150
		 -95.10566711 69.09828186 164.81378174 -94.019851685 69.45108032 159.14477539 -90.92771912 70.45578003 154.33886719
		 -86.30001831 71.95941162 151.12762451 -80.84127808 73.73306274 150 -80.90170288 41.22144699 164.81378174
		 -79.97805786 41.89251709 159.14477539 -77.34773254 43.80355453 154.33886719 -73.41117859 46.66363144 151.12762451
		 -68.7677002 50.037319183 150 -58.77852631 19.098274231 164.81378174 -58.10745621 20.02191925 159.14477539
		 -56.19641876 22.65224457 154.33886719 -53.33634186 26.58879852 151.12762451 -49.96265411 31.23228455 150
		 -30.90169525 4.89431763 164.81378174 -30.54889297 5.98012543 159.14477539 -29.54419899 9.072257996 154.33886719
		 -28.040569305 13.69995117 151.12762451 -26.26691628 19.15869904 150 8.4638596e-06 -3.0517578e-05 164.81378174
		 8.316164e-06 1.1416626 159.14477539 7.8955618e-06 4.39291382 154.33886719 7.2660864e-06 9.25876617 151.12762451
		 6.5235699e-06 14.99842834 150 30.9017086 4.89432526 164.81378174 30.54890633 5.98013306 159.14477539
		 29.54421234 9.072265625 154.33886719 28.04058075 13.69996643 151.12762451 26.26692772 19.15870667 150
		 58.77853775 19.09828186 164.81378174 58.10746765 20.02192688 159.14477539 56.19643021 22.6522522 154.33886719
		 53.3363533 26.58880615 151.12762451 49.96266556 31.23228455 150 80.90171814 41.22145462 164.81378174
		 79.97807312 41.89252472 159.14477539 77.3477478 43.80356216 154.33886719 73.41119385 46.66363907 151.12762451
		 68.76771545 50.037326813 150 95.10566711 69.09828186 164.81378174 94.019866943 69.45108032 159.14477539
		 90.92773438 70.4557724 154.33886719 86.30003357 71.95940399 151.12762451 80.84129333 73.73305511 150
		 100.000015258789 99.99998474 164.81378174 98.8583374 99.99998474 159.14477539 95.60707092 99.99999237 154.33886719
		 90.7412262 99.99999237 151.12762451 85.0015716553 100 150 95.10572815 130.90170288 335.18618774
		 94.01991272 130.54890442 340.85519409 90.92779541 129.54420471 345.66113281 86.3000946 128.040588379 348.87237549
		 80.84133911 126.26693726 350 80.90176392 158.77854919 335.18618774 79.9781189 158.10748291 340.85519409
		 77.34779358 156.19644165 345.66113281 73.41123962 153.33636475 348.87237549 68.76776123 149.962677 350
		 58.77857208 180.9017334 335.18618774 58.1075058 179.97808838 340.85519409 56.19646454 177.34776306 345.66113281
		 53.33639145 173.41120911 348.87237549 49.9627037 168.76773071 350 30.90172577 195.10568237 335.18618774
		 30.5489254 194.019866943 340.85519409 29.54423141 190.92774963 345.66113281 28.04060173 186.30004883 348.87237549
		 26.26695061 180.84130859 350 1.1444092e-05 200.000030517578 335.18618774 1.1444092e-05 198.8583374 340.85519409
		 1.1444092e-05 195.60708618 345.66113281 1.1444092e-05 190.7412262 348.87237549 1.1444092e-05 185.0015716553 350
		 -30.90170288 195.10568237 335.18618774 -30.5489006 194.019866943 340.85519409 -29.54420662 190.92774963 345.66113281
		 -28.040576935 186.30004883 348.87237549 -26.2669239 180.84130859 350 -58.77853775 180.90171814 335.18618774
		 -58.10746765 179.97807312 340.85519409 -56.19643021 177.3477478 345.66113281 -53.3363533 173.41119385 348.87237549
		 -49.96266556 168.76771545 350 -80.90171814 158.77853394 335.18618774 -79.97807312 158.10746765 340.85519409
		 -77.3477478 156.19642639 345.66113281 -73.41119385 153.33634949 348.87237549 -68.7677002 149.96266174 350
		 -95.10566711 130.90168762 335.18618774 -94.019851685 130.54888916 340.85519409 -90.92771912 129.54418945 345.66113281
		 -86.30001831 128.040557861 348.87237549 -80.84127808 126.26691437 350 -100.000015258789 99.99998474 335.18618774
		 -98.85832214 99.99998474 340.85519409 -95.60707092 99.99998474 345.66113281 -90.74121094 99.99998474 348.87237549
		 -85.0015563965 99.99998474 350 -95.10566711 69.09828186 335.18618774 -94.019851685 69.45108032 340.85519409
		 -90.92771912 70.45578003 345.66113281 -86.30001831 71.95941162 348.87237549 -80.84127808 73.73306274 350
		 -80.90170288 41.22145081 335.18618774 -79.97805786 41.8925209 340.85519409 -77.34773254 43.80356216 345.66113281
		 -73.41117859 46.66363525 348.87237549 -68.7677002 50.037326813 350 -58.77852631 19.09828186 335.18618774
		 -58.10745621 20.02192688 340.85519409 -56.19641876 22.6522522 345.66113281 -53.33634186 26.58880615 348.87237549;
	setAttr ".vt[166:201]" -49.96265411 31.23228455 350 -30.90169525 4.89431763 335.18618774
		 -30.54889297 5.98012543 340.85519409 -29.54419899 9.072257996 345.66113281 -28.040569305 13.69995117 348.87237549
		 -26.26691628 19.15869904 350 8.4638596e-06 -3.0517578e-05 335.18618774 8.1786757e-06 1.1416626 340.85519409
		 7.3665401e-06 4.39291382 345.66113281 6.1510937e-06 9.25876617 348.87237549 4.7173771e-06 14.99842834 350
		 30.9017086 4.89433289 335.18618774 30.54890633 5.98014069 340.85519409 29.54421234 9.072273254 345.66113281
		 28.04058075 13.69996643 348.87237549 26.26692772 19.15870667 350 58.77853775 19.09828186 335.18618774
		 58.10747147 20.02192688 340.85519409 56.19643021 22.6522522 345.66113281 53.33635712 26.58880615 348.87237549
		 49.96266937 31.23229218 350 80.90171814 41.22145081 335.18618774 79.97807312 41.8925209 340.85519409
		 77.3477478 43.80355835 345.66113281 73.41119385 46.66363525 348.87237549 68.76771545 50.037322998 350
		 95.10566711 69.09828186 335.18618774 94.019866943 69.45108032 340.85519409 90.92773438 70.4557724 345.66113281
		 86.30003357 71.95940399 348.87237549 80.84129333 73.73305511 350 100.000015258789 99.99998474 335.18618774
		 98.8583374 99.99998474 340.85519409 95.60707092 99.99999237 345.66113281 90.7412262 99.99999237 348.87237549
		 85.0015716553 100 350;
	setAttr -s 420 ".ed";
	setAttr ".ed[0:165]"  8 7 1 7 2 1 9 8 1 10 9 1 6 11 1 11 10 1 6 5 1 101 6 1
		 5 4 1 4 3 1 3 2 1 2 97 1 13 12 1 12 7 1 14 13 1 15 14 1 11 16 1 16 15 1 18 17 1 17 12 1
		 19 18 1 20 19 1 16 21 1 21 20 1 23 22 1 22 17 1 24 23 1 25 24 1 21 26 1 26 25 1 28 27 1
		 27 22 1 29 28 1 30 29 1 26 31 1 31 30 1 33 32 1 32 27 1 34 33 1 35 34 1 31 36 1 36 35 1
		 38 37 1 37 32 1 39 38 1 40 39 1 36 41 1 41 40 1 43 42 1 42 37 1 44 43 1 45 44 1 41 46 1
		 46 45 1 48 47 1 47 42 1 49 48 1 50 49 1 46 51 1 51 50 1 53 52 1 52 47 1 54 53 1 55 54 1
		 51 56 1 56 55 1 58 57 1 57 52 1 59 58 1 60 59 1 56 61 1 61 60 1 63 62 1 62 57 1 64 63 1
		 65 64 1 61 66 1 66 65 1 68 67 1 67 62 1 69 68 1 70 69 1 66 71 1 71 70 1 73 72 1 72 67 1
		 74 73 1 75 74 1 71 76 1 76 75 1 78 77 1 77 72 1 79 78 1 80 79 1 76 81 1 81 80 1 83 82 1
		 82 77 1 84 83 1 85 84 1 81 86 1 86 85 1 88 87 1 87 82 1 89 88 1 90 89 1 86 91 1 91 90 1
		 93 92 1 92 87 1 94 93 1 95 94 1 91 96 1 96 95 1 98 97 1 97 92 1 99 98 1 100 99 1
		 96 101 1 101 100 1 198 197 1 197 102 1 199 198 1 200 199 1 106 201 1 201 200 1 106 105 1
		 111 106 1 105 104 1 104 103 1 103 102 1 102 107 1 111 110 1 116 111 1 110 109 1 109 108 1
		 108 107 1 107 112 1 116 115 1 121 116 1 115 114 1 114 113 1 113 112 1 112 117 1 121 120 1
		 126 121 1 120 119 1 119 118 1 118 117 1 117 122 1 126 125 1 131 126 1 125 124 1 124 123 1
		 123 122 1 122 127 1 131 130 1 136 131 1 130 129 1 129 128 1 128 127 1 127 132 1 136 135 1
		 141 136 1 135 134 1 134 133 1;
	setAttr ".ed[166:331]" 133 132 1 132 137 1 141 140 1 146 141 1 140 139 1 139 138 1
		 138 137 1 137 142 1 146 145 1 151 146 1 145 144 1 144 143 1 143 142 1 142 147 1 151 150 1
		 156 151 1 150 149 1 149 148 1 148 147 1 147 152 1 156 155 1 161 156 1 155 154 1 154 153 1
		 153 152 1 152 157 1 161 160 1 166 161 1 160 159 1 159 158 1 158 157 1 157 162 1 166 165 1
		 171 166 1 165 164 1 164 163 1 163 162 1 162 167 1 171 170 1 176 171 1 170 169 1 169 168 1
		 168 167 1 167 172 1 176 175 1 181 176 1 175 174 1 174 173 1 173 172 1 172 177 1 181 180 1
		 186 181 1 180 179 1 179 178 1 178 177 1 177 182 1 186 185 1 191 186 1 185 184 1 184 183 1
		 183 182 1 182 187 1 191 190 1 196 191 1 190 189 1 189 188 1 188 187 1 187 192 1 196 195 1
		 201 196 1 195 194 1 194 193 1 193 192 1 192 197 1 7 107 1 102 2 1 12 112 1 17 117 1
		 22 122 1 27 127 1 32 132 1 37 137 1 42 142 1 47 147 1 52 152 1 57 157 1 62 162 1
		 67 167 1 72 172 1 77 177 1 82 182 1 87 187 1 92 192 1 97 197 1 6 0 1 0 11 1 0 16 1
		 0 21 1 0 26 1 0 31 1 0 36 1 0 41 1 0 46 1 0 51 1 0 56 1 0 61 1 0 66 1 0 71 1 0 76 1
		 0 81 1 0 86 1 0 91 1 0 96 1 0 101 1 111 1 1 1 106 1 116 1 1 121 1 1 126 1 1 131 1 1
		 136 1 1 141 1 1 146 1 1 151 1 1 156 1 1 161 1 1 166 1 1 171 1 1 176 1 1 181 1 1 186 1 1
		 191 1 1 196 1 1 201 1 1 5 10 1 4 9 1 3 8 1 10 15 1 9 14 1 8 13 1 15 20 1 14 19 1
		 13 18 1 20 25 1 19 24 1 18 23 1 25 30 1 24 29 1 23 28 1 30 35 1 29 34 1 28 33 1 35 40 1
		 34 39 1 33 38 1 40 45 1 39 44 1 38 43 1 45 50 1 44 49 1 43 48 1 50 55 1 49 54 1 48 53 1
		 55 60 1 54 59 1;
	setAttr ".ed[332:419]" 53 58 1 60 65 1 59 64 1 58 63 1 65 70 1 64 69 1 63 68 1
		 70 75 1 69 74 1 68 73 1 75 80 1 74 79 1 73 78 1 80 85 1 79 84 1 78 83 1 85 90 1 84 89 1
		 83 88 1 90 95 1 89 94 1 88 93 1 95 100 1 94 99 1 93 98 1 5 100 1 4 99 1 3 98 1 105 200 1
		 104 199 1 103 198 1 105 110 1 104 109 1 103 108 1 110 115 1 109 114 1 108 113 1 115 120 1
		 114 119 1 113 118 1 120 125 1 119 124 1 118 123 1 125 130 1 124 129 1 123 128 1 130 135 1
		 129 134 1 128 133 1 135 140 1 134 139 1 133 138 1 140 145 1 139 144 1 138 143 1 145 150 1
		 144 149 1 143 148 1 150 155 1 149 154 1 148 153 1 155 160 1 154 159 1 153 158 1 160 165 1
		 159 164 1 158 163 1 165 170 1 164 169 1 163 168 1 170 175 1 169 174 1 168 173 1 175 180 1
		 174 179 1 173 178 1 180 185 1 179 184 1 178 183 1 185 190 1 184 189 1 183 188 1 190 195 1
		 189 194 1 188 193 1 195 200 1 194 199 1 193 198 1;
	setAttr -s 220 -ch 840 ".fc[0:219]" -type "polyFaces" 
		f 4 -2 240 -132 241
		mu 0 4 82 0 3 1
		f 4 -14 242 -138 -241
		mu 0 4 0 2 5 3
		f 4 -20 243 -144 -243
		mu 0 4 2 4 7 5
		f 4 -26 244 -150 -244
		mu 0 4 4 6 9 7
		f 4 -32 245 -156 -245
		mu 0 4 6 8 11 9
		f 4 -38 246 -162 -246
		mu 0 4 8 10 13 11
		f 4 -44 247 -168 -247
		mu 0 4 10 12 15 13
		f 4 -50 248 -174 -248
		mu 0 4 12 14 17 15
		f 4 -56 249 -180 -249
		mu 0 4 14 16 19 17
		f 4 -62 250 -186 -250
		mu 0 4 16 18 21 19
		f 4 -68 251 -192 -251
		mu 0 4 18 20 23 21
		f 4 -74 252 -198 -252
		mu 0 4 20 22 25 23
		f 4 -80 253 -204 -253
		mu 0 4 22 24 27 25
		f 4 -86 254 -210 -254
		mu 0 4 24 26 29 27
		f 4 -92 255 -216 -255
		mu 0 4 26 28 31 29
		f 4 -98 256 -222 -256
		mu 0 4 28 30 33 31
		f 4 -104 257 -228 -257
		mu 0 4 30 32 35 33
		f 4 -110 258 -234 -258
		mu 0 4 32 34 37 35
		f 4 -116 259 -240 -259
		mu 0 4 34 36 39 37
		f 4 -12 -242 -122 -260
		mu 0 4 36 38 83 39
		f 3 -5 260 261
		mu 0 3 41 40 59
		f 3 -17 -262 262
		mu 0 3 42 41 59
		f 3 -23 -263 263
		mu 0 3 43 42 59
		f 3 -29 -264 264
		mu 0 3 44 43 59
		f 3 -35 -265 265
		mu 0 3 45 44 59
		f 3 -41 -266 266
		mu 0 3 46 45 59
		f 3 -47 -267 267
		mu 0 3 47 46 59
		f 3 -53 -268 268
		mu 0 3 48 47 59
		f 3 -59 -269 269
		mu 0 3 49 48 59
		f 3 -65 -270 270
		mu 0 3 50 49 59
		f 3 -71 -271 271
		mu 0 3 51 50 59
		f 3 -77 -272 272
		mu 0 3 52 51 59
		f 3 -83 -273 273
		mu 0 3 53 52 59
		f 3 -89 -274 274
		mu 0 3 54 53 59
		f 3 -95 -275 275
		mu 0 3 55 54 59
		f 3 -101 -276 276
		mu 0 3 56 55 59
		f 3 -107 -277 277
		mu 0 3 57 56 59
		f 3 -113 -278 278
		mu 0 3 58 57 59
		f 3 -119 -279 279
		mu 0 3 60 58 59
		f 3 -8 -280 -261
		mu 0 3 40 60 59
		f 3 -128 280 281
		mu 0 3 80 61 81
		f 3 -134 282 -281
		mu 0 3 61 62 81
		f 3 -140 283 -283
		mu 0 3 62 63 81
		f 3 -146 284 -284
		mu 0 3 63 64 81
		f 3 -152 285 -285
		mu 0 3 64 65 81
		f 3 -158 286 -286
		mu 0 3 65 66 81
		f 3 -164 287 -287
		mu 0 3 66 67 81
		f 3 -170 288 -288
		mu 0 3 67 68 81
		f 3 -176 289 -289
		mu 0 3 68 69 81
		f 3 -182 290 -290
		mu 0 3 69 70 81
		f 3 -188 291 -291
		mu 0 3 70 71 81
		f 3 -194 292 -292
		mu 0 3 71 72 81
		f 3 -200 293 -293
		mu 0 3 72 73 81
		f 3 -206 294 -294
		mu 0 3 73 74 81
		f 3 -212 295 -295
		mu 0 3 74 75 81
		f 3 -218 296 -296
		mu 0 3 75 76 81
		f 3 -224 297 -297
		mu 0 3 76 77 81
		f 3 -230 298 -298
		mu 0 3 77 78 81
		f 3 -236 299 -299
		mu 0 3 78 79 81
		f 3 -125 -282 -300
		mu 0 3 79 80 81
		f 4 -7 4 5 -301
		mu 0 4 89 40 41 93
		f 4 -9 300 3 -302
		mu 0 4 87 89 93 91
		f 4 -11 302 0 1
		mu 0 4 82 85 90 0
		f 4 -10 301 2 -303
		mu 0 4 85 88 92 90
		f 4 -6 16 17 -304
		mu 0 4 93 41 42 97
		f 4 -4 303 15 -305
		mu 0 4 91 93 97 95
		f 4 -1 305 12 13
		mu 0 4 0 90 94 2
		f 4 -3 304 14 -306
		mu 0 4 90 92 96 94
		f 4 -18 22 23 -307
		mu 0 4 97 42 43 101
		f 4 -16 306 21 -308
		mu 0 4 95 97 101 99
		f 4 -13 308 18 19
		mu 0 4 2 94 98 4
		f 4 -15 307 20 -309
		mu 0 4 94 96 100 98
		f 4 -24 28 29 -310
		mu 0 4 101 43 44 105
		f 4 -22 309 27 -311
		mu 0 4 99 101 105 103
		f 4 -19 311 24 25
		mu 0 4 4 98 102 6
		f 4 -21 310 26 -312
		mu 0 4 98 100 104 102
		f 4 -30 34 35 -313
		mu 0 4 105 44 45 109
		f 4 -28 312 33 -314
		mu 0 4 103 105 109 107
		f 4 -25 314 30 31
		mu 0 4 6 102 106 8
		f 4 -27 313 32 -315
		mu 0 4 102 104 108 106
		f 4 -36 40 41 -316
		mu 0 4 109 45 46 113
		f 4 -34 315 39 -317
		mu 0 4 107 109 113 111
		f 4 -31 317 36 37
		mu 0 4 8 106 110 10
		f 4 -33 316 38 -318
		mu 0 4 106 108 112 110
		f 4 -42 46 47 -319
		mu 0 4 113 46 47 117
		f 4 -40 318 45 -320
		mu 0 4 111 113 117 115
		f 4 -37 320 42 43
		mu 0 4 10 110 114 12
		f 4 -39 319 44 -321
		mu 0 4 110 112 116 114
		f 4 -48 52 53 -322
		mu 0 4 117 47 48 121
		f 4 -46 321 51 -323
		mu 0 4 115 117 121 119
		f 4 -43 323 48 49
		mu 0 4 12 114 118 14
		f 4 -45 322 50 -324
		mu 0 4 114 116 120 118
		f 4 -54 58 59 -325
		mu 0 4 121 48 49 125
		f 4 -52 324 57 -326
		mu 0 4 119 121 125 123
		f 4 -49 326 54 55
		mu 0 4 14 118 122 16
		f 4 -51 325 56 -327
		mu 0 4 118 120 124 122
		f 4 -60 64 65 -328
		mu 0 4 125 49 50 129
		f 4 -58 327 63 -329
		mu 0 4 123 125 129 127
		f 4 -55 329 60 61
		mu 0 4 16 122 126 18
		f 4 -57 328 62 -330
		mu 0 4 122 124 128 126
		f 4 -66 70 71 -331
		mu 0 4 129 50 51 133
		f 4 -64 330 69 -332
		mu 0 4 127 129 133 131
		f 4 -61 332 66 67
		mu 0 4 18 126 130 20
		f 4 -63 331 68 -333
		mu 0 4 126 128 132 130
		f 4 -72 76 77 -334
		mu 0 4 133 51 52 137
		f 4 -70 333 75 -335
		mu 0 4 131 133 137 135
		f 4 -67 335 72 73
		mu 0 4 20 130 134 22
		f 4 -69 334 74 -336
		mu 0 4 130 132 136 134
		f 4 -78 82 83 -337
		mu 0 4 137 52 53 141
		f 4 -76 336 81 -338
		mu 0 4 135 137 141 139
		f 4 -73 338 78 79
		mu 0 4 22 134 138 24
		f 4 -75 337 80 -339
		mu 0 4 134 136 140 138
		f 4 -84 88 89 -340
		mu 0 4 141 53 54 145
		f 4 -82 339 87 -341
		mu 0 4 139 141 145 143
		f 4 -79 341 84 85
		mu 0 4 24 138 142 26
		f 4 -81 340 86 -342
		mu 0 4 138 140 144 142
		f 4 -90 94 95 -343
		mu 0 4 145 54 55 149
		f 4 -88 342 93 -344
		mu 0 4 143 145 149 147
		f 4 -85 344 90 91
		mu 0 4 26 142 146 28
		f 4 -87 343 92 -345
		mu 0 4 142 144 148 146
		f 4 -96 100 101 -346
		mu 0 4 149 55 56 153
		f 4 -94 345 99 -347
		mu 0 4 147 149 153 151
		f 4 -91 347 96 97
		mu 0 4 28 146 150 30
		f 4 -93 346 98 -348
		mu 0 4 146 148 152 150
		f 4 -102 106 107 -349
		mu 0 4 153 56 57 157
		f 4 -100 348 105 -350
		mu 0 4 151 153 157 155
		f 4 -97 350 102 103
		mu 0 4 30 150 154 32
		f 4 -99 349 104 -351
		mu 0 4 150 152 156 154
		f 4 -108 112 113 -352
		mu 0 4 157 57 58 161
		f 4 -106 351 111 -353
		mu 0 4 155 157 161 159
		f 4 -103 353 108 109
		mu 0 4 32 154 158 34
		f 4 -105 352 110 -354
		mu 0 4 154 156 160 158
		f 4 -114 118 119 -355
		mu 0 4 161 58 60 165
		f 4 -112 354 117 -356
		mu 0 4 159 161 165 163
		f 4 -109 356 114 115
		mu 0 4 34 158 162 36
		f 4 -111 355 116 -357
		mu 0 4 158 160 164 162
		f 4 6 357 -120 7
		mu 0 4 40 89 165 60
		f 4 8 358 -118 -358
		mu 0 4 89 87 163 165
		f 4 9 359 -117 -359
		mu 0 4 86 84 162 164
		f 4 10 11 -115 -360
		mu 0 4 84 38 36 162
		f 4 -127 124 125 -361
		mu 0 4 171 80 79 247
		f 4 -129 360 123 -362
		mu 0 4 169 171 247 245
		f 4 -131 362 120 121
		mu 0 4 83 167 244 39
		f 4 -130 361 122 -363
		mu 0 4 167 170 246 244
		f 4 126 363 -133 127
		mu 0 4 80 171 175 61
		f 4 128 364 -135 -364
		mu 0 4 171 169 174 175
		f 4 129 365 -136 -365
		mu 0 4 168 166 172 173
		f 4 130 131 -137 -366
		mu 0 4 166 1 3 172
		f 4 132 366 -139 133
		mu 0 4 61 175 179 62
		f 4 134 367 -141 -367
		mu 0 4 175 174 178 179
		f 4 135 368 -142 -368
		mu 0 4 173 172 176 177
		f 4 136 137 -143 -369
		mu 0 4 172 3 5 176
		f 4 138 369 -145 139
		mu 0 4 62 179 183 63
		f 4 140 370 -147 -370
		mu 0 4 179 178 182 183
		f 4 141 371 -148 -371
		mu 0 4 177 176 180 181
		f 4 142 143 -149 -372
		mu 0 4 176 5 7 180
		f 4 144 372 -151 145
		mu 0 4 63 183 187 64
		f 4 146 373 -153 -373
		mu 0 4 183 182 186 187
		f 4 147 374 -154 -374
		mu 0 4 181 180 184 185
		f 4 148 149 -155 -375
		mu 0 4 180 7 9 184
		f 4 150 375 -157 151
		mu 0 4 64 187 191 65
		f 4 152 376 -159 -376
		mu 0 4 187 186 190 191
		f 4 153 377 -160 -377
		mu 0 4 185 184 188 189
		f 4 154 155 -161 -378
		mu 0 4 184 9 11 188
		f 4 156 378 -163 157
		mu 0 4 65 191 195 66
		f 4 158 379 -165 -379
		mu 0 4 191 190 194 195
		f 4 159 380 -166 -380
		mu 0 4 189 188 192 193
		f 4 160 161 -167 -381
		mu 0 4 188 11 13 192
		f 4 162 381 -169 163
		mu 0 4 66 195 199 67
		f 4 164 382 -171 -382
		mu 0 4 195 194 198 199
		f 4 165 383 -172 -383
		mu 0 4 193 192 196 197
		f 4 166 167 -173 -384
		mu 0 4 192 13 15 196
		f 4 168 384 -175 169
		mu 0 4 67 199 203 68
		f 4 170 385 -177 -385
		mu 0 4 199 198 202 203
		f 4 171 386 -178 -386
		mu 0 4 197 196 200 201
		f 4 172 173 -179 -387
		mu 0 4 196 15 17 200
		f 4 174 387 -181 175
		mu 0 4 68 203 207 69
		f 4 176 388 -183 -388
		mu 0 4 203 202 206 207
		f 4 177 389 -184 -389
		mu 0 4 201 200 204 205
		f 4 178 179 -185 -390
		mu 0 4 200 17 19 204
		f 4 180 390 -187 181
		mu 0 4 69 207 211 70
		f 4 182 391 -189 -391
		mu 0 4 207 206 210 211
		f 4 183 392 -190 -392
		mu 0 4 205 204 208 209
		f 4 184 185 -191 -393
		mu 0 4 204 19 21 208
		f 4 186 393 -193 187
		mu 0 4 70 211 215 71
		f 4 188 394 -195 -394
		mu 0 4 211 210 214 215
		f 4 189 395 -196 -395
		mu 0 4 209 208 212 213
		f 4 190 191 -197 -396
		mu 0 4 208 21 23 212
		f 4 192 396 -199 193
		mu 0 4 71 215 219 72
		f 4 194 397 -201 -397
		mu 0 4 215 214 218 219
		f 4 195 398 -202 -398
		mu 0 4 213 212 216 217
		f 4 196 197 -203 -399
		mu 0 4 212 23 25 216
		f 4 198 399 -205 199
		mu 0 4 72 219 223 73
		f 4 200 400 -207 -400
		mu 0 4 219 218 222 223
		f 4 201 401 -208 -401
		mu 0 4 217 216 220 221
		f 4 202 203 -209 -402
		mu 0 4 216 25 27 220
		f 4 204 402 -211 205
		mu 0 4 73 223 227 74
		f 4 206 403 -213 -403
		mu 0 4 223 222 226 227
		f 4 207 404 -214 -404
		mu 0 4 221 220 224 225
		f 4 208 209 -215 -405
		mu 0 4 220 27 29 224
		f 4 210 405 -217 211
		mu 0 4 74 227 231 75
		f 4 212 406 -219 -406
		mu 0 4 227 226 230 231
		f 4 213 407 -220 -407
		mu 0 4 225 224 228 229
		f 4 214 215 -221 -408
		mu 0 4 224 29 31 228
		f 4 216 408 -223 217
		mu 0 4 75 231 235 76
		f 4 218 409 -225 -409
		mu 0 4 231 230 234 235
		f 4 219 410 -226 -410
		mu 0 4 229 228 232 233
		f 4 220 221 -227 -411
		mu 0 4 228 31 33 232
		f 4 222 411 -229 223
		mu 0 4 76 235 239 77
		f 4 224 412 -231 -412
		mu 0 4 235 234 238 239
		f 4 225 413 -232 -413
		mu 0 4 233 232 236 237
		f 4 226 227 -233 -414
		mu 0 4 232 33 35 236
		f 4 228 414 -235 229
		mu 0 4 77 239 243 78
		f 4 230 415 -237 -415
		mu 0 4 239 238 242 243
		f 4 231 416 -238 -416
		mu 0 4 237 236 240 241
		f 4 232 233 -239 -417
		mu 0 4 236 35 37 240
		f 4 234 417 -126 235
		mu 0 4 78 243 247 79
		f 4 236 418 -124 -418
		mu 0 4 243 242 245 247
		f 4 237 419 -123 -419
		mu 0 4 241 240 244 246
		f 4 238 239 -121 -420
		mu 0 4 240 37 39 244;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BarrleMedium" -p "BlocksRound";
	rename -uid "E4DAAD5B-4EA6-1AD6-887D-A5A36DAC8B28";
	setAttr ".rp" -type "double3" -300 0 300 ;
	setAttr ".sp" -type "double3" -300 0 300 ;
createNode mesh -n "BarrleMediumShape" -p "|BlocksRound|BarrleMedium";
	rename -uid "5B2F1ED3-4DE3-A898-032E-D4A32017C0F0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 21 "f[20:39]" "f[60:61]" "f[64:65]" "f[68:69]" "f[72:73]" "f[76:77]" "f[80:81]" "f[84:85]" "f[88:89]" "f[92:93]" "f[96:97]" "f[100:101]" "f[104:105]" "f[108:109]" "f[112:113]" "f[116:117]" "f[120:121]" "f[124:125]" "f[128:129]" "f[132:133]" "f[136:137]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[1]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 41 "f[0:19]" "f[62:63]" "f[66:67]" "f[70:71]" "f[74:75]" "f[78:79]" "f[82:83]" "f[86:87]" "f[90:91]" "f[94:95]" "f[98:99]" "f[102:103]" "f[106:107]" "f[110:111]" "f[114:115]" "f[118:119]" "f[122:123]" "f[126:127]" "f[130:131]" "f[134:135]" "f[138:139]" "f[142:143]" "f[146:147]" "f[150:151]" "f[154:155]" "f[158:159]" "f[162:163]" "f[166:167]" "f[170:171]" "f[174:175]" "f[178:179]" "f[182:183]" "f[186:187]" "f[190:191]" "f[194:195]" "f[198:199]" "f[202:203]" "f[206:207]" "f[210:211]" "f[214:215]" "f[218:219]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 21 "f[40:59]" "f[140:141]" "f[144:145]" "f[148:149]" "f[152:153]" "f[156:157]" "f[160:161]" "f[164:165]" "f[168:169]" "f[172:173]" "f[176:177]" "f[180:181]" "f[184:185]" "f[188:189]" "f[192:193]" "f[196:197]" "f[200:201]" "f[204:205]" "f[208:209]" "f[212:213]" "f[216:217]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.43046277761459351 0.059862568974494934 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 248 ".uvst[0].uvsp[0:247]" -type "float2" 0.67446625 0.13759995
		 0.32452852 0.097224295 0.67414403 0.17785275 0.32547599 0.137604 0.6740641 0.21811768
		 0.32580894 0.1779111 0.67406964 0.25838596 0.32589835 0.21818712 0.67409992 0.29865435
		 0.32590097 0.25845128 0.67413229 0.33892226 0.3258779 0.2987116 0.67415887 0.37918895
		 0.3258518 0.33897135 0.67417824 0.41945487 0.3258301 0.37923124 0.67419028 0.45971957
		 0.32581472 0.41949204 0.67419541 0.49998331 0.32580632 0.45975384 0.67419374 0.54024595
		 0.32580459 0.50001663 0.67418516 0.58050787 0.3258096 0.54028046 0.67417002 0.62076855
		 0.32582164 0.58054513 0.67414808 0.66102868 0.32584101 0.62081081 0.67412198 0.70128828
		 0.32586777 0.66107762 0.67409897 0.7415486 0.32590014 0.70134562 0.67410159 0.78181273
		 0.3259303 0.74161381 0.674191 0.82208872 0.32593584 0.78188205 0.67452395 0.86239588
		 0.32585591 0.82214695 0.67547131 0.90277565 0.32553351 0.86239994 0.59758371 0.54970497
		 0.60816735 0.5171172 0.6081627 0.48285377 0.59757048 0.45026892 0.57742697 0.42255217
		 0.54970479 0.40241635 0.5171169 0.39183277 0.48285377 0.39183742 0.45026875 0.40242976
		 0.42255187 0.42257303 0.40241623 0.45029539 0.39183277 0.4828831 0.3918373 0.51714641
		 0.40242964 0.54973131 0.42257285 0.57744807 0.45029521 0.59758377 0.48288298 0.60816741
		 0.51714641 0.60816276 0.54973108 0.59757048 0.5 0.50000006 0.57744807 0.57742709
		 0.51712501 0.6081661 0.48286176 0.60816401 0.45027608 0.59757406 0.42255771 0.57743281
		 0.40241995 0.54971206 0.39183396 0.51712501 0.39183605 0.4828617 0.40242606 0.45027608
		 0.42256722 0.42255771 0.450288 0.40241992 0.48287505 0.39183396 0.51713836 0.39183617
		 0.54972398 0.40242606 0.57744241 0.42256731 0.59757996 0.45028806 0.6081661 0.48287499
		 0.60816407 0.51713824 0.597574 0.54972392 0.57743281 0.57744241 0.54971206 0.59758019
		 0.50000012 0.49999994 0.67538393 0.097391576 0.32461596 0.90260828 0.68309063 0.90200734
		 0.6830048 0.098086506 0.69055271 0.90081728 0.61100131 0.55654776 0.6905117 0.099244028
		 0.60430008 0.55312693 0.68186182 0.13794583 0.62304276 0.51947874 0.68929553 0.13829058
		 0.61561233 0.51829624 0.6815722 0.17798832 0.62303978 0.48050302 0.68901068 0.17811018
		 0.61560762 0.48167449 0.68150461 0.2181685 0.61099309 0.44343591 0.68894583 0.21820807
		 0.60428643 0.44684666 0.68151516 0.25840312 0.58808118 0.41190571 0.68895733 0.25841099
		 0.58275706 0.41722184 0.68154746 0.29865894 0.55654752 0.38899869 0.68898958 0.29865468
		 0.55312699 0.39570004 0.68158042 0.33892226 0.51947856 0.3769573 0.68902302 0.33891407
		 0.51829594 0.38438779 0.68160772 0.37918788 0.48050296 0.37696022 0.6890502 0.37917855
		 0.48167443 0.38439238 0.68162727 0.41945368 0.44343567 0.38900727 0.68906987 0.41944441
		 0.4468466 0.39571363 0.68163937 0.45971891 0.41190559 0.41191888 0.68908197 0.45971027
		 0.41722184 0.41724294 0.68164432 0.49998331 0.38899863 0.4434526 0.68908703 0.49997532
		 0.39569992 0.44687325 0.68164283 0.54024667 0.37695712 0.4805215 0.6890853 0.54023933
		 0.38438749 0.481704 0.68163413 0.58050919 0.37696022 0.5194971 0.6890766 0.58050239
		 0.38439238 0.51832563 0.68161881 0.62076998 0.38900703 0.55656421 0.68906116 0.62076342
		 0.39571345 0.55315346 0.68159652 0.66102886 0.4119187 0.58809453 0.68903875 0.66102159
		 0.41724294 0.58277833 0.68156928 0.70128447 0.44345242 0.61100149 0.68901104 0.7012732
		 0.44687319 0.60430014 0.68154353 0.7415328 0.48052132 0.62304264 0.68898427 0.74151003
		 0.48170376 0.61561239 0.68153942 0.78176457 0.51949692 0.6230399 0.68897736 0.78171134
		 0.51832545 0.61560756 0.68161184 0.82195842 0.55656409 0.61099303 0.68904239 0.82182461
		 0.55315334 0.60428667 0.68190932 0.86206377 0.58809423 0.58808136 0.68931395 0.86170971
		 0.5827781 0.58275723 0.31690943 0.097992331 0.3169952 0.90191317 0.30944729 0.099182546
		 0.5565424 0.61100405 0.30948812 0.900756 0.55313295 0.60429704 0.31809074 0.13793612
		 0.31068599 0.13829005 0.51947296 0.62304372 0.51830298 0.61561143 0.31838822 0.17804134
		 0.31095773 0.17817524 0.48049724 0.62303901 0.48168123 0.61560881 0.31846052 0.21823528
		 0.31102246 0.21828842 0.4434306 0.61099029 0.44685271 0.60428971 0.31845653 0.2584672
		 0.31101573 0.25848973 0.41190147 0.58807713 0.41722667 0.58276206 0.31843072 0.29871541
		 0.31098884 0.29872665 0.38899601 0.55654234 0.39570305 0.55313289 0.31840354 0.33897096
		 0.31096119 0.33897847 0.37695634 0.51947284 0.38438872 0.51830286 0.31838119 0.37922987
		 0.31093872 0.37923649 0.37696105 0.48049718 0.38439128 0.48168111 0.31836587 0.41949093
		 0.31092322 0.41949755 0.38900983 0.4434306 0.39571038 0.44685274 0.31835735 0.45975322
		 0.3109147 0.45976049 0.4119229 0.41190153 0.41723818 0.41722661 0.31835556 0.50001663
		 0.31091297 0.50002468 0.44345769 0.38899595 0.44686711 0.39570302 0.31836063 0.540281
		 0.31091791 0.54028958 0.48052719 0.37695634 0.4816972 0.38438874 0.31837273 0.58054632
		 0.31093013 0.58055532 0.51950282 0.37696111 0.51831883 0.38439131 0.31839228 0.620812
		 0.31094974 0.62082124 0.5565694 0.38900977 0.55314749 0.39571041 0.3184194 0.66107756
		 0.31097692 0.66108602 0.58809865 0.41192293 0.58277339 0.41723812 0.3184526 0.70134097
		 0.31101024 0.70134521 0.61100405 0.44345772 0.60429716 0.44686711 0.31848472 0.74159676
		 0.31104267 0.74158895 0.62304366 0.4805271 0.6156112 0.48169714 0.31849539 0.7818315
		 0.31105417 0.78179169 0.62303901 0.51950282 0.61560869 0.51831877 0.31842786 0.82201153
		 0.31098926 0.82188964 0.61099029 0.55656934 0.60428977 0.55314732 0.31813812 0.86205399
		 0.58807713 0.58809865 0.31070435 0.86170912 0.58276188 0.58277339;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 202 ".vt";
	setAttr ".vt[0:165]"  -300 99.99998474 150 -300 99.99998474 450 -204.89428711 130.90170288 164.81378174
		 -205.98010254 130.54890442 159.14477539 -209.072235107 129.54421997 154.33886719
		 -213.69993591 128.040588379 151.12762451 -219.15867615 126.26694489 150 -219.098236084 158.77854919 164.81378174
		 -220.021881104 158.10748291 159.14477539 -222.65220642 156.19644165 154.33886719
		 -226.58876038 153.33636475 151.12762451 -231.23223877 149.962677 150 -241.22143555 180.9017334 164.81378174
		 -241.89250183 179.97808838 159.14477539 -243.80354309 177.34776306 154.33886719 -246.66360474 173.41120911 151.12762451
		 -250.03729248 168.76773071 150 -269.098297119 195.10568237 164.81378174 -269.45111084 194.019866943 159.14477539
		 -270.45578003 190.92774963 154.33886719 -271.95941162 186.30004883 151.12762451 -273.73306274 180.84130859 150
		 -300 200.000030517578 164.81378174 -300 198.8583374 159.14477539 -300 195.60708618 154.33886719
		 -300 190.74124146 151.12762451 -300 185.0015869141 150 -330.90170288 195.10568237 164.81378174
		 -330.54888916 194.019866943 159.14477539 -329.54421997 190.92774963 154.33886719
		 -328.040588379 186.30004883 151.12762451 -326.26693726 180.84130859 150 -358.77856445 180.90171814 164.81378174
		 -358.10748291 179.97807312 159.14477539 -356.19647217 177.3477478 154.33886719 -353.33639526 173.41119385 151.12762451
		 -349.96270752 168.76771545 150 -380.9017334 158.77853394 164.81378174 -379.97808838 158.10746765 159.14477539
		 -377.34777832 156.19642639 154.33886719 -373.41122437 153.33636475 151.12762451 -368.76773071 149.962677 150
		 -395.10568237 130.90168762 164.81378174 -394.019866943 130.54888916 159.14477539
		 -390.92773438 129.54418945 154.33886719 -386.30004883 128.040557861 151.12762451
		 -380.84130859 126.26691437 150 -400.000030517578 99.99998474 164.81378174 -398.8583374 99.99998474 159.14477539
		 -395.60708618 99.99998474 154.33886719 -390.74124146 99.99998474 151.12762451 -385.0015869141 99.99998474 150
		 -395.10568237 69.09828186 164.81378174 -394.019866943 69.45108032 159.14477539 -390.92773438 70.4557724 154.33886719
		 -386.30004883 71.95940399 151.12762451 -380.84130859 73.73305511 150 -380.9017334 41.22144699 164.81378174
		 -379.97808838 41.89251709 159.14477539 -377.34777832 43.80355453 154.33886719 -373.41122437 46.66363144 151.12762451
		 -368.76773071 50.037319183 150 -358.77853394 19.098274231 164.81378174 -358.10745239 20.02191925 159.14477539
		 -356.19644165 22.65223694 154.33886719 -353.33636475 26.58879089 151.12762451 -349.962677 31.23227692 150
		 -330.90170288 4.89431763 164.81378174 -330.54888916 5.98012543 159.14477539 -329.54421997 9.072257996 154.33886719
		 -328.040588379 13.69995117 151.12762451 -326.26693726 19.15869141 150 -300 -3.0517578e-05 164.81378174
		 -300 1.14165497 159.14477539 -300 4.39291382 154.33886719 -300 9.25875854 151.12762451
		 -300 14.99842072 150 -269.098297119 4.89432526 164.81378174 -269.45111084 5.98013306 159.14477539
		 -270.45578003 9.072265625 154.33886719 -271.95941162 13.6999588 151.12762451 -273.73306274 19.15869904 150
		 -241.22146606 19.09828186 164.81378174 -241.89253235 20.02192688 159.14477539 -243.80357361 22.6522522 154.33886719
		 -246.66365051 26.58880615 151.12762451 -250.037338257 31.23228455 150 -219.098297119 41.22145462 164.81378174
		 -220.021942139 41.8925209 159.14477539 -222.65226746 43.80356216 154.33886719 -226.58882141 46.66363525 151.12762451
		 -231.2322998 50.037322998 150 -204.89434814 69.09828186 164.81378174 -205.98016357 69.45108032 159.14477539
		 -209.072280884 70.4557724 154.33886719 -213.69998169 71.95940399 151.12762451 -219.15872192 73.73305511 150
		 -200 99.99998474 164.81378174 -201.14169312 99.99998474 159.14477539 -204.39294434 99.99999237 154.33886719
		 -209.25878906 99.99999237 151.12762451 -214.9984436 100 150 -204.89428711 130.90170288 435.18621826
		 -205.98010254 130.54890442 440.85519409 -209.072235107 129.54421997 445.66113281
		 -213.69993591 128.040588379 448.87237549 -219.15867615 126.26694489 450 -219.098236084 158.77854919 435.18621826
		 -220.021881104 158.10748291 440.85519409 -222.65220642 156.19644165 445.66113281
		 -226.58876038 153.33636475 448.87237549 -231.23223877 149.962677 450 -241.22143555 180.9017334 435.18621826
		 -241.89250183 179.97808838 440.85519409 -243.80354309 177.34776306 445.66113281 -246.66360474 173.41120911 448.87237549
		 -250.03729248 168.76773071 450 -269.098297119 195.10568237 435.18621826 -269.45111084 194.019866943 440.85519409
		 -270.45578003 190.92774963 445.66113281 -271.95941162 186.30004883 448.87237549 -273.73306274 180.84130859 450
		 -300 200.000030517578 435.18621826 -300 198.8583374 440.85519409 -300 195.60708618 445.66113281
		 -300 190.74124146 448.87237549 -300 185.0015869141 450 -330.90170288 195.10568237 435.18621826
		 -330.54888916 194.019866943 440.85519409 -329.54421997 190.92774963 445.66113281
		 -328.040588379 186.30004883 448.87237549 -326.26693726 180.84130859 450 -358.77856445 180.90171814 435.18621826
		 -358.10748291 179.97807312 440.85519409 -356.19647217 177.3477478 445.66113281 -353.33639526 173.41119385 448.87237549
		 -349.96270752 168.76771545 450 -380.9017334 158.77853394 435.18621826 -379.97808838 158.10746765 440.85519409
		 -377.34777832 156.19642639 445.66113281 -373.41122437 153.33636475 448.87237549 -368.76773071 149.962677 450
		 -395.10568237 130.90168762 435.18621826 -394.019866943 130.54888916 440.85519409
		 -390.92773438 129.54418945 445.66113281 -386.30004883 128.040557861 448.87237549
		 -380.84130859 126.26691437 450 -400.000030517578 99.99998474 435.18621826 -398.8583374 99.99998474 440.85519409
		 -395.60708618 99.99998474 445.66113281 -390.74124146 99.99998474 448.87237549 -385.0015869141 99.99998474 450
		 -395.10568237 69.09828186 435.18621826 -394.019866943 69.45108032 440.85519409 -390.92773438 70.4557724 445.66113281
		 -386.30004883 71.95940399 448.87237549 -380.84130859 73.73305511 450 -380.9017334 41.22144699 435.18621826
		 -379.97808838 41.89251709 440.85519409 -377.34777832 43.80355453 445.66113281 -373.41122437 46.66363144 448.87237549
		 -368.76773071 50.037319183 450 -358.77853394 19.098274231 435.18621826 -358.10745239 20.02191925 440.85519409
		 -356.19644165 22.65223694 445.66113281 -353.33636475 26.58879089 448.87237549;
	setAttr ".vt[166:201]" -349.962677 31.23227692 450 -330.90170288 4.89431763 435.18621826
		 -330.54888916 5.98012543 440.85519409 -329.54421997 9.072257996 445.66113281 -328.040588379 13.69995117 448.87237549
		 -326.26693726 19.15869141 450 -300 -3.0517578e-05 435.18621826 -300 1.14165497 440.85519409
		 -300 4.39291382 445.66113281 -300 9.25875854 448.87237549 -300 14.99842072 450 -269.098297119 4.89432526 435.18621826
		 -269.45111084 5.98013306 440.85519409 -270.45578003 9.072265625 445.66113281 -271.95941162 13.6999588 448.87237549
		 -273.73306274 19.15869904 450 -241.22146606 19.09828186 435.18621826 -241.89253235 20.02192688 440.85519409
		 -243.80357361 22.6522522 445.66113281 -246.66365051 26.58880615 448.87237549 -250.037338257 31.23228455 450
		 -219.098297119 41.22145462 435.18621826 -220.021942139 41.8925209 440.85519409 -222.65226746 43.80356216 445.66113281
		 -226.58882141 46.66363525 448.87237549 -231.2322998 50.037322998 450 -204.89434814 69.09828186 435.18621826
		 -205.98016357 69.45108032 440.85519409 -209.072280884 70.4557724 445.66113281 -213.69998169 71.95940399 448.87237549
		 -219.15872192 73.73305511 450 -200 99.99998474 435.18621826 -201.14169312 99.99998474 440.85519409
		 -204.39294434 99.99999237 445.66113281 -209.25878906 99.99999237 448.87237549 -214.9984436 100 450;
	setAttr -s 420 ".ed";
	setAttr ".ed[0:165]"  8 7 1 7 2 1 9 8 1 10 9 1 6 11 1 11 10 1 6 5 1 101 6 1
		 5 4 1 4 3 1 3 2 1 2 97 1 13 12 1 12 7 1 14 13 1 15 14 1 11 16 1 16 15 1 18 17 1 17 12 1
		 19 18 1 20 19 1 16 21 1 21 20 1 23 22 1 22 17 1 24 23 1 25 24 1 21 26 1 26 25 1 28 27 1
		 27 22 1 29 28 1 30 29 1 26 31 1 31 30 1 33 32 1 32 27 1 34 33 1 35 34 1 31 36 1 36 35 1
		 38 37 1 37 32 1 39 38 1 40 39 1 36 41 1 41 40 1 43 42 1 42 37 1 44 43 1 45 44 1 41 46 1
		 46 45 1 48 47 1 47 42 1 49 48 1 50 49 1 46 51 1 51 50 1 53 52 1 52 47 1 54 53 1 55 54 1
		 51 56 1 56 55 1 58 57 1 57 52 1 59 58 1 60 59 1 56 61 1 61 60 1 63 62 1 62 57 1 64 63 1
		 65 64 1 61 66 1 66 65 1 68 67 1 67 62 1 69 68 1 70 69 1 66 71 1 71 70 1 73 72 1 72 67 1
		 74 73 1 75 74 1 71 76 1 76 75 1 78 77 1 77 72 1 79 78 1 80 79 1 76 81 1 81 80 1 83 82 1
		 82 77 1 84 83 1 85 84 1 81 86 1 86 85 1 88 87 1 87 82 1 89 88 1 90 89 1 86 91 1 91 90 1
		 93 92 1 92 87 1 94 93 1 95 94 1 91 96 1 96 95 1 98 97 1 97 92 1 99 98 1 100 99 1
		 96 101 1 101 100 1 198 197 1 197 102 1 199 198 1 200 199 1 106 201 1 201 200 1 106 105 1
		 111 106 1 105 104 1 104 103 1 103 102 1 102 107 1 111 110 1 116 111 1 110 109 1 109 108 1
		 108 107 1 107 112 1 116 115 1 121 116 1 115 114 1 114 113 1 113 112 1 112 117 1 121 120 1
		 126 121 1 120 119 1 119 118 1 118 117 1 117 122 1 126 125 1 131 126 1 125 124 1 124 123 1
		 123 122 1 122 127 1 131 130 1 136 131 1 130 129 1 129 128 1 128 127 1 127 132 1 136 135 1
		 141 136 1 135 134 1 134 133 1;
	setAttr ".ed[166:331]" 133 132 1 132 137 1 141 140 1 146 141 1 140 139 1 139 138 1
		 138 137 1 137 142 1 146 145 1 151 146 1 145 144 1 144 143 1 143 142 1 142 147 1 151 150 1
		 156 151 1 150 149 1 149 148 1 148 147 1 147 152 1 156 155 1 161 156 1 155 154 1 154 153 1
		 153 152 1 152 157 1 161 160 1 166 161 1 160 159 1 159 158 1 158 157 1 157 162 1 166 165 1
		 171 166 1 165 164 1 164 163 1 163 162 1 162 167 1 171 170 1 176 171 1 170 169 1 169 168 1
		 168 167 1 167 172 1 176 175 1 181 176 1 175 174 1 174 173 1 173 172 1 172 177 1 181 180 1
		 186 181 1 180 179 1 179 178 1 178 177 1 177 182 1 186 185 1 191 186 1 185 184 1 184 183 1
		 183 182 1 182 187 1 191 190 1 196 191 1 190 189 1 189 188 1 188 187 1 187 192 1 196 195 1
		 201 196 1 195 194 1 194 193 1 193 192 1 192 197 1 7 107 1 102 2 1 12 112 1 17 117 1
		 22 122 1 27 127 1 32 132 1 37 137 1 42 142 1 47 147 1 52 152 1 57 157 1 62 162 1
		 67 167 1 72 172 1 77 177 1 82 182 1 87 187 1 92 192 1 97 197 1 6 0 1 0 11 1 0 16 1
		 0 21 1 0 26 1 0 31 1 0 36 1 0 41 1 0 46 1 0 51 1 0 56 1 0 61 1 0 66 1 0 71 1 0 76 1
		 0 81 1 0 86 1 0 91 1 0 96 1 0 101 1 111 1 1 1 106 1 116 1 1 121 1 1 126 1 1 131 1 1
		 136 1 1 141 1 1 146 1 1 151 1 1 156 1 1 161 1 1 166 1 1 171 1 1 176 1 1 181 1 1 186 1 1
		 191 1 1 196 1 1 201 1 1 5 10 1 4 9 1 3 8 1 10 15 1 9 14 1 8 13 1 15 20 1 14 19 1
		 13 18 1 20 25 1 19 24 1 18 23 1 25 30 1 24 29 1 23 28 1 30 35 1 29 34 1 28 33 1 35 40 1
		 34 39 1 33 38 1 40 45 1 39 44 1 38 43 1 45 50 1 44 49 1 43 48 1 50 55 1 49 54 1 48 53 1
		 55 60 1 54 59 1;
	setAttr ".ed[332:419]" 53 58 1 60 65 1 59 64 1 58 63 1 65 70 1 64 69 1 63 68 1
		 70 75 1 69 74 1 68 73 1 75 80 1 74 79 1 73 78 1 80 85 1 79 84 1 78 83 1 85 90 1 84 89 1
		 83 88 1 90 95 1 89 94 1 88 93 1 95 100 1 94 99 1 93 98 1 5 100 1 4 99 1 3 98 1 105 200 1
		 104 199 1 103 198 1 105 110 1 104 109 1 103 108 1 110 115 1 109 114 1 108 113 1 115 120 1
		 114 119 1 113 118 1 120 125 1 119 124 1 118 123 1 125 130 1 124 129 1 123 128 1 130 135 1
		 129 134 1 128 133 1 135 140 1 134 139 1 133 138 1 140 145 1 139 144 1 138 143 1 145 150 1
		 144 149 1 143 148 1 150 155 1 149 154 1 148 153 1 155 160 1 154 159 1 153 158 1 160 165 1
		 159 164 1 158 163 1 165 170 1 164 169 1 163 168 1 170 175 1 169 174 1 168 173 1 175 180 1
		 174 179 1 173 178 1 180 185 1 179 184 1 178 183 1 185 190 1 184 189 1 183 188 1 190 195 1
		 189 194 1 188 193 1 195 200 1 194 199 1 193 198 1;
	setAttr -s 220 -ch 840 ".fc[0:219]" -type "polyFaces" 
		f 4 -2 240 -132 241
		mu 0 4 82 0 3 1
		f 4 -14 242 -138 -241
		mu 0 4 0 2 5 3
		f 4 -20 243 -144 -243
		mu 0 4 2 4 7 5
		f 4 -26 244 -150 -244
		mu 0 4 4 6 9 7
		f 4 -32 245 -156 -245
		mu 0 4 6 8 11 9
		f 4 -38 246 -162 -246
		mu 0 4 8 10 13 11
		f 4 -44 247 -168 -247
		mu 0 4 10 12 15 13
		f 4 -50 248 -174 -248
		mu 0 4 12 14 17 15
		f 4 -56 249 -180 -249
		mu 0 4 14 16 19 17
		f 4 -62 250 -186 -250
		mu 0 4 16 18 21 19
		f 4 -68 251 -192 -251
		mu 0 4 18 20 23 21
		f 4 -74 252 -198 -252
		mu 0 4 20 22 25 23
		f 4 -80 253 -204 -253
		mu 0 4 22 24 27 25
		f 4 -86 254 -210 -254
		mu 0 4 24 26 29 27
		f 4 -92 255 -216 -255
		mu 0 4 26 28 31 29
		f 4 -98 256 -222 -256
		mu 0 4 28 30 33 31
		f 4 -104 257 -228 -257
		mu 0 4 30 32 35 33
		f 4 -110 258 -234 -258
		mu 0 4 32 34 37 35
		f 4 -116 259 -240 -259
		mu 0 4 34 36 39 37
		f 4 -12 -242 -122 -260
		mu 0 4 36 38 83 39
		f 3 -5 260 261
		mu 0 3 41 40 59
		f 3 -17 -262 262
		mu 0 3 42 41 59
		f 3 -23 -263 263
		mu 0 3 43 42 59
		f 3 -29 -264 264
		mu 0 3 44 43 59
		f 3 -35 -265 265
		mu 0 3 45 44 59
		f 3 -41 -266 266
		mu 0 3 46 45 59
		f 3 -47 -267 267
		mu 0 3 47 46 59
		f 3 -53 -268 268
		mu 0 3 48 47 59
		f 3 -59 -269 269
		mu 0 3 49 48 59
		f 3 -65 -270 270
		mu 0 3 50 49 59
		f 3 -71 -271 271
		mu 0 3 51 50 59
		f 3 -77 -272 272
		mu 0 3 52 51 59
		f 3 -83 -273 273
		mu 0 3 53 52 59
		f 3 -89 -274 274
		mu 0 3 54 53 59
		f 3 -95 -275 275
		mu 0 3 55 54 59
		f 3 -101 -276 276
		mu 0 3 56 55 59
		f 3 -107 -277 277
		mu 0 3 57 56 59
		f 3 -113 -278 278
		mu 0 3 58 57 59
		f 3 -119 -279 279
		mu 0 3 60 58 59
		f 3 -8 -280 -261
		mu 0 3 40 60 59
		f 3 -128 280 281
		mu 0 3 80 61 81
		f 3 -134 282 -281
		mu 0 3 61 62 81
		f 3 -140 283 -283
		mu 0 3 62 63 81
		f 3 -146 284 -284
		mu 0 3 63 64 81
		f 3 -152 285 -285
		mu 0 3 64 65 81
		f 3 -158 286 -286
		mu 0 3 65 66 81
		f 3 -164 287 -287
		mu 0 3 66 67 81
		f 3 -170 288 -288
		mu 0 3 67 68 81
		f 3 -176 289 -289
		mu 0 3 68 69 81
		f 3 -182 290 -290
		mu 0 3 69 70 81
		f 3 -188 291 -291
		mu 0 3 70 71 81
		f 3 -194 292 -292
		mu 0 3 71 72 81
		f 3 -200 293 -293
		mu 0 3 72 73 81
		f 3 -206 294 -294
		mu 0 3 73 74 81
		f 3 -212 295 -295
		mu 0 3 74 75 81
		f 3 -218 296 -296
		mu 0 3 75 76 81
		f 3 -224 297 -297
		mu 0 3 76 77 81
		f 3 -230 298 -298
		mu 0 3 77 78 81
		f 3 -236 299 -299
		mu 0 3 78 79 81
		f 3 -125 -282 -300
		mu 0 3 79 80 81
		f 4 -7 4 5 -301
		mu 0 4 89 40 41 93
		f 4 -9 300 3 -302
		mu 0 4 87 89 93 91
		f 4 -11 302 0 1
		mu 0 4 82 85 90 0
		f 4 -10 301 2 -303
		mu 0 4 85 88 92 90
		f 4 -6 16 17 -304
		mu 0 4 93 41 42 97
		f 4 -4 303 15 -305
		mu 0 4 91 93 97 95
		f 4 -1 305 12 13
		mu 0 4 0 90 94 2
		f 4 -3 304 14 -306
		mu 0 4 90 92 96 94
		f 4 -18 22 23 -307
		mu 0 4 97 42 43 101
		f 4 -16 306 21 -308
		mu 0 4 95 97 101 99
		f 4 -13 308 18 19
		mu 0 4 2 94 98 4
		f 4 -15 307 20 -309
		mu 0 4 94 96 100 98
		f 4 -24 28 29 -310
		mu 0 4 101 43 44 105
		f 4 -22 309 27 -311
		mu 0 4 99 101 105 103
		f 4 -19 311 24 25
		mu 0 4 4 98 102 6
		f 4 -21 310 26 -312
		mu 0 4 98 100 104 102
		f 4 -30 34 35 -313
		mu 0 4 105 44 45 109
		f 4 -28 312 33 -314
		mu 0 4 103 105 109 107
		f 4 -25 314 30 31
		mu 0 4 6 102 106 8
		f 4 -27 313 32 -315
		mu 0 4 102 104 108 106
		f 4 -36 40 41 -316
		mu 0 4 109 45 46 113
		f 4 -34 315 39 -317
		mu 0 4 107 109 113 111
		f 4 -31 317 36 37
		mu 0 4 8 106 110 10
		f 4 -33 316 38 -318
		mu 0 4 106 108 112 110
		f 4 -42 46 47 -319
		mu 0 4 113 46 47 117
		f 4 -40 318 45 -320
		mu 0 4 111 113 117 115
		f 4 -37 320 42 43
		mu 0 4 10 110 114 12
		f 4 -39 319 44 -321
		mu 0 4 110 112 116 114
		f 4 -48 52 53 -322
		mu 0 4 117 47 48 121
		f 4 -46 321 51 -323
		mu 0 4 115 117 121 119
		f 4 -43 323 48 49
		mu 0 4 12 114 118 14
		f 4 -45 322 50 -324
		mu 0 4 114 116 120 118
		f 4 -54 58 59 -325
		mu 0 4 121 48 49 125
		f 4 -52 324 57 -326
		mu 0 4 119 121 125 123
		f 4 -49 326 54 55
		mu 0 4 14 118 122 16
		f 4 -51 325 56 -327
		mu 0 4 118 120 124 122
		f 4 -60 64 65 -328
		mu 0 4 125 49 50 129
		f 4 -58 327 63 -329
		mu 0 4 123 125 129 127
		f 4 -55 329 60 61
		mu 0 4 16 122 126 18
		f 4 -57 328 62 -330
		mu 0 4 122 124 128 126
		f 4 -66 70 71 -331
		mu 0 4 129 50 51 133
		f 4 -64 330 69 -332
		mu 0 4 127 129 133 131
		f 4 -61 332 66 67
		mu 0 4 18 126 130 20
		f 4 -63 331 68 -333
		mu 0 4 126 128 132 130
		f 4 -72 76 77 -334
		mu 0 4 133 51 52 137
		f 4 -70 333 75 -335
		mu 0 4 131 133 137 135
		f 4 -67 335 72 73
		mu 0 4 20 130 134 22
		f 4 -69 334 74 -336
		mu 0 4 130 132 136 134
		f 4 -78 82 83 -337
		mu 0 4 137 52 53 141
		f 4 -76 336 81 -338
		mu 0 4 135 137 141 139
		f 4 -73 338 78 79
		mu 0 4 22 134 138 24
		f 4 -75 337 80 -339
		mu 0 4 134 136 140 138
		f 4 -84 88 89 -340
		mu 0 4 141 53 54 145
		f 4 -82 339 87 -341
		mu 0 4 139 141 145 143
		f 4 -79 341 84 85
		mu 0 4 24 138 142 26
		f 4 -81 340 86 -342
		mu 0 4 138 140 144 142
		f 4 -90 94 95 -343
		mu 0 4 145 54 55 149
		f 4 -88 342 93 -344
		mu 0 4 143 145 149 147
		f 4 -85 344 90 91
		mu 0 4 26 142 146 28
		f 4 -87 343 92 -345
		mu 0 4 142 144 148 146
		f 4 -96 100 101 -346
		mu 0 4 149 55 56 153
		f 4 -94 345 99 -347
		mu 0 4 147 149 153 151
		f 4 -91 347 96 97
		mu 0 4 28 146 150 30
		f 4 -93 346 98 -348
		mu 0 4 146 148 152 150
		f 4 -102 106 107 -349
		mu 0 4 153 56 57 157
		f 4 -100 348 105 -350
		mu 0 4 151 153 157 155
		f 4 -97 350 102 103
		mu 0 4 30 150 154 32
		f 4 -99 349 104 -351
		mu 0 4 150 152 156 154
		f 4 -108 112 113 -352
		mu 0 4 157 57 58 161
		f 4 -106 351 111 -353
		mu 0 4 155 157 161 159
		f 4 -103 353 108 109
		mu 0 4 32 154 158 34
		f 4 -105 352 110 -354
		mu 0 4 154 156 160 158
		f 4 -114 118 119 -355
		mu 0 4 161 58 60 165
		f 4 -112 354 117 -356
		mu 0 4 159 161 165 163
		f 4 -109 356 114 115
		mu 0 4 34 158 162 36
		f 4 -111 355 116 -357
		mu 0 4 158 160 164 162
		f 4 6 357 -120 7
		mu 0 4 40 89 165 60
		f 4 8 358 -118 -358
		mu 0 4 89 87 163 165
		f 4 9 359 -117 -359
		mu 0 4 86 84 162 164
		f 4 10 11 -115 -360
		mu 0 4 84 38 36 162
		f 4 -127 124 125 -361
		mu 0 4 171 80 79 247
		f 4 -129 360 123 -362
		mu 0 4 169 171 247 245
		f 4 -131 362 120 121
		mu 0 4 83 167 244 39
		f 4 -130 361 122 -363
		mu 0 4 167 170 246 244
		f 4 126 363 -133 127
		mu 0 4 80 171 175 61
		f 4 128 364 -135 -364
		mu 0 4 171 169 174 175
		f 4 129 365 -136 -365
		mu 0 4 168 166 172 173
		f 4 130 131 -137 -366
		mu 0 4 166 1 3 172
		f 4 132 366 -139 133
		mu 0 4 61 175 179 62
		f 4 134 367 -141 -367
		mu 0 4 175 174 178 179
		f 4 135 368 -142 -368
		mu 0 4 173 172 176 177
		f 4 136 137 -143 -369
		mu 0 4 172 3 5 176
		f 4 138 369 -145 139
		mu 0 4 62 179 183 63
		f 4 140 370 -147 -370
		mu 0 4 179 178 182 183
		f 4 141 371 -148 -371
		mu 0 4 177 176 180 181
		f 4 142 143 -149 -372
		mu 0 4 176 5 7 180
		f 4 144 372 -151 145
		mu 0 4 63 183 187 64
		f 4 146 373 -153 -373
		mu 0 4 183 182 186 187
		f 4 147 374 -154 -374
		mu 0 4 181 180 184 185
		f 4 148 149 -155 -375
		mu 0 4 180 7 9 184
		f 4 150 375 -157 151
		mu 0 4 64 187 191 65
		f 4 152 376 -159 -376
		mu 0 4 187 186 190 191
		f 4 153 377 -160 -377
		mu 0 4 185 184 188 189
		f 4 154 155 -161 -378
		mu 0 4 184 9 11 188
		f 4 156 378 -163 157
		mu 0 4 65 191 195 66
		f 4 158 379 -165 -379
		mu 0 4 191 190 194 195
		f 4 159 380 -166 -380
		mu 0 4 189 188 192 193
		f 4 160 161 -167 -381
		mu 0 4 188 11 13 192
		f 4 162 381 -169 163
		mu 0 4 66 195 199 67
		f 4 164 382 -171 -382
		mu 0 4 195 194 198 199
		f 4 165 383 -172 -383
		mu 0 4 193 192 196 197
		f 4 166 167 -173 -384
		mu 0 4 192 13 15 196
		f 4 168 384 -175 169
		mu 0 4 67 199 203 68
		f 4 170 385 -177 -385
		mu 0 4 199 198 202 203
		f 4 171 386 -178 -386
		mu 0 4 197 196 200 201
		f 4 172 173 -179 -387
		mu 0 4 196 15 17 200
		f 4 174 387 -181 175
		mu 0 4 68 203 207 69
		f 4 176 388 -183 -388
		mu 0 4 203 202 206 207
		f 4 177 389 -184 -389
		mu 0 4 201 200 204 205
		f 4 178 179 -185 -390
		mu 0 4 200 17 19 204
		f 4 180 390 -187 181
		mu 0 4 69 207 211 70
		f 4 182 391 -189 -391
		mu 0 4 207 206 210 211
		f 4 183 392 -190 -392
		mu 0 4 205 204 208 209
		f 4 184 185 -191 -393
		mu 0 4 204 19 21 208
		f 4 186 393 -193 187
		mu 0 4 70 211 215 71
		f 4 188 394 -195 -394
		mu 0 4 211 210 214 215
		f 4 189 395 -196 -395
		mu 0 4 209 208 212 213
		f 4 190 191 -197 -396
		mu 0 4 208 21 23 212
		f 4 192 396 -199 193
		mu 0 4 71 215 219 72
		f 4 194 397 -201 -397
		mu 0 4 215 214 218 219
		f 4 195 398 -202 -398
		mu 0 4 213 212 216 217
		f 4 196 197 -203 -399
		mu 0 4 212 23 25 216
		f 4 198 399 -205 199
		mu 0 4 72 219 223 73
		f 4 200 400 -207 -400
		mu 0 4 219 218 222 223
		f 4 201 401 -208 -401
		mu 0 4 217 216 220 221
		f 4 202 203 -209 -402
		mu 0 4 216 25 27 220
		f 4 204 402 -211 205
		mu 0 4 73 223 227 74
		f 4 206 403 -213 -403
		mu 0 4 223 222 226 227
		f 4 207 404 -214 -404
		mu 0 4 221 220 224 225
		f 4 208 209 -215 -405
		mu 0 4 220 27 29 224
		f 4 210 405 -217 211
		mu 0 4 74 227 231 75
		f 4 212 406 -219 -406
		mu 0 4 227 226 230 231
		f 4 213 407 -220 -407
		mu 0 4 225 224 228 229
		f 4 214 215 -221 -408
		mu 0 4 224 29 31 228
		f 4 216 408 -223 217
		mu 0 4 75 231 235 76
		f 4 218 409 -225 -409
		mu 0 4 231 230 234 235
		f 4 219 410 -226 -410
		mu 0 4 229 228 232 233
		f 4 220 221 -227 -411
		mu 0 4 228 31 33 232
		f 4 222 411 -229 223
		mu 0 4 76 235 239 77
		f 4 224 412 -231 -412
		mu 0 4 235 234 238 239
		f 4 225 413 -232 -413
		mu 0 4 233 232 236 237
		f 4 226 227 -233 -414
		mu 0 4 232 33 35 236
		f 4 228 414 -235 229
		mu 0 4 77 239 243 78
		f 4 230 415 -237 -415
		mu 0 4 239 238 242 243
		f 4 231 416 -238 -416
		mu 0 4 237 236 240 241
		f 4 232 233 -239 -417
		mu 0 4 236 35 37 240
		f 4 234 417 -126 235
		mu 0 4 78 243 247 79
		f 4 236 418 -124 -418
		mu 0 4 243 242 245 247
		f 4 237 419 -123 -419
		mu 0 4 241 240 244 246
		f 4 238 239 -121 -420
		mu 0 4 240 37 39 244;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BarrleLarge" -p "BlocksRound";
	rename -uid "7808389F-4EF5-9C74-D11F-8FA15BC25948";
	setAttr ".rp" -type "double3" -600 0 350 ;
	setAttr ".sp" -type "double3" -600 0 350 ;
createNode mesh -n "BarrleLargeShape" -p "|BlocksRound|BarrleLarge";
	rename -uid "27521FA4-4743-40C1-7711-2A91946DBD4A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 21 "f[20:39]" "f[60:61]" "f[64:65]" "f[68:69]" "f[72:73]" "f[76:77]" "f[80:81]" "f[84:85]" "f[88:89]" "f[92:93]" "f[96:97]" "f[100:101]" "f[104:105]" "f[108:109]" "f[112:113]" "f[116:117]" "f[120:121]" "f[124:125]" "f[128:129]" "f[132:133]" "f[136:137]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[1]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 41 "f[0:19]" "f[62:63]" "f[66:67]" "f[70:71]" "f[74:75]" "f[78:79]" "f[82:83]" "f[86:87]" "f[90:91]" "f[94:95]" "f[98:99]" "f[102:103]" "f[106:107]" "f[110:111]" "f[114:115]" "f[118:119]" "f[122:123]" "f[126:127]" "f[130:131]" "f[134:135]" "f[138:139]" "f[142:143]" "f[146:147]" "f[150:151]" "f[154:155]" "f[158:159]" "f[162:163]" "f[166:167]" "f[170:171]" "f[174:175]" "f[178:179]" "f[182:183]" "f[186:187]" "f[190:191]" "f[194:195]" "f[198:199]" "f[202:203]" "f[206:207]" "f[210:211]" "f[214:215]" "f[218:219]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 21 "f[40:59]" "f[140:141]" "f[144:145]" "f[148:149]" "f[152:153]" "f[156:157]" "f[160:161]" "f[164:165]" "f[168:169]" "f[172:173]" "f[176:177]" "f[180:181]" "f[184:185]" "f[188:189]" "f[192:193]" "f[196:197]" "f[200:201]" "f[204:205]" "f[208:209]" "f[212:213]" "f[216:217]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.93241506814956665 0.68750479817390442 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 248 ".uvst[0].uvsp[0:247]" -type "float2" 0.13743699 0.26107585
		 0.097154558 0.74000746 0.17770502 0.26141107 0.13751751 0.7390728 0.21798265 0.26151192
		 0.17782941 0.73871547 0.25826329 0.26152316 0.21811843 0.73859614 0.2985445 0.26150382
		 0.25839835 0.73856777 0.33882546 0.2614772 0.29867494 0.73857057 0.37910566 0.26145199
		 0.33895069 0.73858166 0.41938537 0.26143116 0.37922657 0.73859173 0.45966437 0.26141587
		 0.41950288 0.73859733 0.49994263 0.26140589 0.45977992 0.73859853 0.54022014 0.2614015
		 0.50005752 0.73859388 0.58049715 0.26140237 0.54033589 0.73858416 0.62077355 0.26140836
		 0.58061486 0.73856872 0.66104943 0.2614184 0.62089443 0.73854798 0.70132506 0.26142931
		 0.66117477 0.73852283 0.74160165 0.26143223 0.70145565 0.73849607 0.78188157 0.26140383
		 0.74173677 0.73847681 0.82217062 0.26128465 0.78201735 0.73848808 0.86248243 0.26092726
		 0.82229495 0.73858881 0.90284538 0.25999242 0.86256289 0.73892391 0.59758377 0.54970485
		 0.60816729 0.51711702 0.60816282 0.48285377 0.59757042 0.45026881 0.57742727 0.42255193
		 0.54970491 0.40241623 0.5171169 0.39183277 0.48285389 0.39183742 0.45026889 0.40242976
		 0.42255202 0.42257291 0.40241629 0.45029539 0.39183274 0.48288292 0.39183733 0.51714617
		 0.4024297 0.54973119 0.42257297 0.57744807 0.45029521 0.59758377 0.48288301 0.60816729
		 0.51714635 0.60816276 0.54973125 0.5975703 0.50000012 0.50000006 0.57744807 0.57742709
		 0.51712501 0.60816604 0.48286176 0.60816401 0.45027602 0.59757417 0.42255783 0.57743281
		 0.40241981 0.54971206 0.39183396 0.51712495 0.39183617 0.48286188 0.40242612 0.45027614
		 0.42256719 0.42255783 0.450288 0.40241998 0.48287505 0.39183414 0.51713818 0.39183617
		 0.54972398 0.40242594 0.57744247 0.42256725 0.59757996 0.45028806 0.60816598 0.48287499
		 0.60816389 0.51713836 0.59757382 0.54972398 0.57743281 0.57744241 0.54971194 0.59758002
		 0.5 0.50000012 0.097202569 0.2601864 0.90279752 0.73981333 0.9020735 0.25237018 0.097906232
		 0.25256157 0.90087867 0.2449075 0.61100131 0.55654758 0.099070221 0.24505344 0.60430008
		 0.55312681 0.13778737 0.25368252 0.62304276 0.51947862 0.13813636 0.24625012 0.61561239
		 0.51829612 0.17784479 0.25398418 0.62303984 0.48050302 0.17797023 0.24654624 0.61560768
		 0.48167449 0.21803638 0.25407177 0.61099303 0.44343591 0.21807852 0.24663091 0.60428667
		 0.44684666 0.2582823 0.25407791 0.58808118 0.41190571 0.25829148 0.24663603 0.58275706
		 0.41722178 0.29854983 0.25405639 0.55654752 0.38899857 0.29854631 0.24661434 0.55312681
		 0.39569992 0.33882564 0.25402886 0.51947856 0.3769573 0.33881751 0.2465868 0.51829624
		 0.38438779 0.37910435 0.25400329 0.48050308 0.37696004 0.37909475 0.24656093 0.48167455
		 0.38439226 0.4193837 0.25398231 0.44343594 0.38900715 0.41937387 0.24654013 0.44684672
		 0.39571345 0.45966294 0.25396687 0.41190565 0.41191876 0.45965344 0.24652454 0.41722193
		 0.41724294 0.49994168 0.25395709 0.38899869 0.44345242 0.49993259 0.24651477 0.39570001
		 0.44687325 0.54021978 0.25395265 0.3769573 0.48052138 0.5402112 0.24651024 0.38438764
		 0.48170388 0.58049691 0.25395352 0.37696022 0.51949698 0.58048856 0.24651131 0.38439238
		 0.51832551 0.62077302 0.25395977 0.38900709 0.55656403 0.62076467 0.24651757 0.39571348
		 0.5531534 0.66104758 0.25397021 0.41191882 0.58809441 0.66103774 0.24652821 0.41724294
		 0.5827781 0.70131838 0.25398231 0.44345254 0.61100137 0.70130438 0.24654073 0.44687322
		 0.60430014 0.7415818 0.25398797 0.48052144 0.62304264 0.74155575 0.24654758 0.481704
		 0.61561221 0.78182793 0.25396648 0.51949692 0.6230399 0.78176987 0.24652895 0.51832557
		 0.61560756 0.82203275 0.25386471 0.55656409 0.61099291 0.82189286 0.24643508 0.5531534
		 0.60428649 0.86214203 0.25354359 0.58809447 0.58808124 0.86178148 0.24613997 0.5827781
		 0.58275712 0.097926468 0.7476297 0.90209377 0.74743813 0.099121302 0.75509244 0.55654228
		 0.61100405 0.90092981 0.75494635 0.55313301 0.6042971 0.13785806 0.74645638 0.13821858
		 0.75385976 0.5194729 0.62304372 0.51830298 0.61561143 0.17796725 0.74613535 0.17810711
		 0.75356495 0.48049718 0.62303901 0.48168111 0.61560881 0.21817207 0.74603349 0.21823013
		 0.75347108 0.4434306 0.61099029 0.44685274 0.60428971 0.2584182 0.74601203 0.25844434
		 0.7534523 0.41190135 0.58807713 0.41722673 0.58276206 0.2986818 0.74601775 0.2986958
		 0.7534591 0.38899589 0.5565424 0.39570308 0.55313289 0.33895269 0.7460295 0.33896241
		 0.75347161 0.37695634 0.51947284 0.38438874 0.51830298 0.37922704 0.74603999 0.37923548
		 0.7534821 0.37696099 0.48049718 0.38439125 0.48168129 0.41950315 0.74604613 0.41951153
		 0.75348854 0.38900971 0.44343066 0.39571041 0.44685274 0.45978045 0.74604702 0.45978904
		 0.75348961 0.41192287 0.41190159 0.41723812 0.41722673 0.50005841 0.74604291 0.50006753
		 0.75348508 0.44345766 0.38899601 0.44686717 0.3957032 0.54033715 0.74603295 0.54034674
		 0.75347507 0.4805271 0.37695634 0.48169714 0.3843888 0.58061653 0.74601734 0.58062613
		 0.75345993 0.51950276 0.37696117 0.51831877 0.38439125 0.62089568 0.74599636 0.6209054
		 0.75343889 0.55656922 0.38900971 0.55314726 0.39571041 0.66117448 0.7459712 0.66118264
		 0.75341308 0.58809865 0.41192287 0.58277327 0.41723812 0.70145011 0.74594355 0.70145369
		 0.75338578 0.61100405 0.44345772 0.60429698 0.44686705 0.74171758 0.74592209 0.74170864
		 0.75336385 0.62304354 0.48052722 0.61561137 0.4816972 0.78196365 0.74592823 0.78192151
		 0.75336903 0.62303907 0.51950294 0.61560881 0.51831883 0.82215512 0.74601579 0.82202971
		 0.75345379 0.61099035 0.55656934 0.60428959 0.55314738 0.86221266 0.74631709 0.58807707
		 0.58809865 0.86186373 0.75374979 0.58276194 0.58277333;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 202 ".vt";
	setAttr ".vt[0:165]"  -600 99.99998474 150 -600 99.99998474 550 -504.89428711 130.90170288 164.81378174
		 -505.98010254 130.54890442 159.14477539 -509.072235107 129.54420471 154.33886719
		 -513.69995117 128.040588379 151.12762451 -519.15869141 126.26693726 150 -519.098266602 158.77854919 164.81378174
		 -520.021911621 158.10748291 159.14477539 -522.65222168 156.19644165 154.33886719
		 -526.58880615 153.33636475 151.12762451 -531.2322998 149.962677 150 -541.22143555 180.9017334 164.81378174
		 -541.89251709 179.97808838 159.14477539 -543.80352783 177.34776306 154.33886719 -546.66363525 173.41120911 151.12762451
		 -550.03729248 168.76773071 150 -569.098266602 195.10568237 164.81378174 -569.4510498 194.019866943 159.14477539
		 -570.45574951 190.92774963 154.33886719 -571.95941162 186.30004883 151.12762451 -573.73303223 180.84130859 150
		 -600 200.000030517578 164.81378174 -600 198.8583374 159.14477539 -600 195.60708618 154.33886719
		 -600 190.7412262 151.12762451 -600 185.0015716553 150 -630.9017334 195.10568237 164.81378174
		 -630.5489502 194.019866943 159.14477539 -629.54425049 190.92774963 154.33886719 -628.040588379 186.30004883 151.12762451
		 -626.26696777 180.84130859 150 -658.77856445 180.90171814 164.81378174 -658.10748291 179.97807312 159.14477539
		 -656.19647217 177.3477478 154.33886719 -653.33636475 173.41119385 151.12762451 -649.96270752 168.76771545 150
		 -680.9017334 158.77853394 164.81378174 -679.97808838 158.10746765 159.14477539 -677.34777832 156.19642639 154.33886719
		 -673.41119385 153.33636475 151.12762451 -668.7677002 149.962677 150 -695.10565186 130.90168762 164.81378174
		 -694.019836426 130.54888916 159.14477539 -690.92773438 129.54418945 154.33886719
		 -686.29998779 128.04057312 151.12762451 -680.84124756 126.266922 150 -700 99.99998474 164.81378174
		 -698.8583374 99.99998474 159.14477539 -695.60705566 99.99998474 154.33886719 -690.74121094 99.99998474 151.12762451
		 -685.0015258789 99.99998474 150 -695.10565186 69.09828186 164.81378174 -694.019836426 69.45108032 159.14477539
		 -690.92773438 70.4557724 154.33886719 -686.29998779 71.95940399 151.12762451 -680.84124756 73.73305511 150
		 -680.9017334 41.22144699 164.81378174 -679.97808838 41.89251328 159.14477539 -677.34777832 43.80355453 154.33886719
		 -673.41119385 46.66362762 151.12762451 -668.7677002 50.037311554 150 -658.77856445 19.098274231 164.81378174
		 -658.10748291 20.02191925 159.14477539 -656.19647217 22.65224457 154.33886719 -653.33636475 26.58879852 151.12762451
		 -649.96270752 31.23227692 150 -630.9017334 4.89431763 164.81378174 -630.5489502 5.98012543 159.14477539
		 -629.54425049 9.072257996 154.33886719 -628.040588379 13.69995117 151.12762451 -626.26696777 19.15869904 150
		 -600 -3.0517578e-05 164.81378174 -600 1.1416626 159.14477539 -600 4.39291382 154.33886719
		 -600 9.25876617 151.12762451 -600 14.99842834 150 -569.098327637 4.89432526 164.81378174
		 -569.45111084 5.98013306 159.14477539 -570.45581055 9.072265625 154.33886719 -571.95947266 13.6999588 151.12762451
		 -573.73309326 19.15870667 150 -541.22149658 19.09828186 164.81378174 -541.89257813 20.02192688 159.14477539
		 -543.80358887 22.6522522 154.33886719 -546.66369629 26.58880615 151.12762451 -550.037353516 31.23229218 150
		 -519.098266602 41.22145462 164.81378174 -520.021911621 41.89252472 159.14477539 -522.65222168 43.80356598 154.33886719
		 -526.58880615 46.66363907 151.12762451 -531.2322998 50.037330627 150 -504.89434814 69.09828186 164.81378174
		 -505.98016357 69.45108032 159.14477539 -509.072296143 70.4557724 154.33886719 -513.70001221 71.95940399 151.12762451
		 -519.15875244 73.73305511 150 -500 99.99998474 164.81378174 -501.14169312 99.99998474 159.14477539
		 -504.39294434 99.99999237 154.33886719 -509.25881958 99.99999237 151.12762451 -514.99847412 100 150
		 -504.89428711 130.90170288 535.18615723 -505.98010254 130.54890442 540.85522461 -509.072235107 129.54420471 545.66113281
		 -513.69995117 128.040588379 548.87237549 -519.15869141 126.26693726 550 -519.098266602 158.77854919 535.18615723
		 -520.021911621 158.10748291 540.85522461 -522.65222168 156.19644165 545.66113281
		 -526.58880615 153.33636475 548.87237549 -531.2322998 149.962677 550 -541.22143555 180.9017334 535.18615723
		 -541.89251709 179.97808838 540.85522461 -543.80352783 177.34776306 545.66113281 -546.66363525 173.41120911 548.87237549
		 -550.03729248 168.76773071 550 -569.098266602 195.10568237 535.18615723 -569.4510498 194.019866943 540.85522461
		 -570.45574951 190.92774963 545.66113281 -571.95941162 186.30004883 548.87237549 -573.73303223 180.84130859 550
		 -600 200.000030517578 535.18615723 -600 198.8583374 540.85522461 -600 195.60708618 545.66113281
		 -600 190.7412262 548.87237549 -600 185.0015716553 550 -630.9017334 195.10568237 535.18615723
		 -630.5489502 194.019866943 540.85522461 -629.54425049 190.92774963 545.66113281 -628.040588379 186.30004883 548.87237549
		 -626.26696777 180.84130859 550 -658.77856445 180.90171814 535.18615723 -658.10748291 179.97807312 540.85522461
		 -656.19647217 177.3477478 545.66113281 -653.33636475 173.41119385 548.87237549 -649.96270752 168.76771545 550
		 -680.9017334 158.77853394 535.18615723 -679.97808838 158.10746765 540.85522461 -677.34777832 156.19642639 545.66113281
		 -673.41119385 153.33636475 548.87237549 -668.7677002 149.962677 550 -695.10565186 130.90168762 535.18615723
		 -694.019836426 130.54888916 540.85522461 -690.92773438 129.54418945 545.66113281
		 -686.29998779 128.04057312 548.87237549 -680.84124756 126.266922 550 -700 99.99998474 535.18615723
		 -698.8583374 99.99998474 540.85522461 -695.60705566 99.99998474 545.66113281 -690.74121094 99.99998474 548.87237549
		 -685.0015258789 99.99998474 550 -695.10565186 69.09828186 535.18615723 -694.019836426 69.45108032 540.85522461
		 -690.92773438 70.4557724 545.66113281 -686.29998779 71.95940399 548.87237549 -680.84124756 73.73305511 550
		 -680.9017334 41.22144699 535.18615723 -679.97808838 41.89251328 540.85522461 -677.34777832 43.80355453 545.66113281
		 -673.41119385 46.66362762 548.87237549 -668.7677002 50.037311554 550 -658.77856445 19.098274231 535.18615723
		 -658.10748291 20.02191925 540.85522461 -656.19647217 22.65224457 545.66113281 -653.33636475 26.58879852 548.87237549;
	setAttr ".vt[166:201]" -649.96270752 31.23227692 550 -630.9017334 4.89431763 535.18615723
		 -630.5489502 5.98012543 540.85522461 -629.54425049 9.072257996 545.66113281 -628.040588379 13.69995117 548.87237549
		 -626.26696777 19.15869904 550 -600 -3.0517578e-05 535.18615723 -600 1.1416626 540.85522461
		 -600 4.39291382 545.66113281 -600 9.25876617 548.87237549 -600 14.99842834 550 -569.098327637 4.89432526 535.18615723
		 -569.45111084 5.98013306 540.85522461 -570.45581055 9.072265625 545.66113281 -571.95947266 13.6999588 548.87237549
		 -573.73309326 19.15870667 550 -541.22149658 19.09828186 535.18615723 -541.89257813 20.02192688 540.85522461
		 -543.80358887 22.6522522 545.66113281 -546.66369629 26.58880615 548.87237549 -550.037353516 31.23229218 550
		 -519.098266602 41.22145462 535.18615723 -520.021911621 41.89252472 540.85522461 -522.65222168 43.80356598 545.66113281
		 -526.58880615 46.66363907 548.87237549 -531.2322998 50.037330627 550 -504.89434814 69.09828186 535.18615723
		 -505.98016357 69.45108032 540.85522461 -509.072296143 70.4557724 545.66113281 -513.70001221 71.95940399 548.87237549
		 -519.15875244 73.73305511 550 -500 99.99998474 535.18615723 -501.14169312 99.99998474 540.85522461
		 -504.39294434 99.99999237 545.66113281 -509.25881958 99.99999237 548.87237549 -514.99847412 100 550;
	setAttr -s 420 ".ed";
	setAttr ".ed[0:165]"  8 7 1 7 2 1 9 8 1 10 9 1 6 11 1 11 10 1 6 5 1 101 6 1
		 5 4 1 4 3 1 3 2 1 2 97 1 13 12 1 12 7 1 14 13 1 15 14 1 11 16 1 16 15 1 18 17 1 17 12 1
		 19 18 1 20 19 1 16 21 1 21 20 1 23 22 1 22 17 1 24 23 1 25 24 1 21 26 1 26 25 1 28 27 1
		 27 22 1 29 28 1 30 29 1 26 31 1 31 30 1 33 32 1 32 27 1 34 33 1 35 34 1 31 36 1 36 35 1
		 38 37 1 37 32 1 39 38 1 40 39 1 36 41 1 41 40 1 43 42 1 42 37 1 44 43 1 45 44 1 41 46 1
		 46 45 1 48 47 1 47 42 1 49 48 1 50 49 1 46 51 1 51 50 1 53 52 1 52 47 1 54 53 1 55 54 1
		 51 56 1 56 55 1 58 57 1 57 52 1 59 58 1 60 59 1 56 61 1 61 60 1 63 62 1 62 57 1 64 63 1
		 65 64 1 61 66 1 66 65 1 68 67 1 67 62 1 69 68 1 70 69 1 66 71 1 71 70 1 73 72 1 72 67 1
		 74 73 1 75 74 1 71 76 1 76 75 1 78 77 1 77 72 1 79 78 1 80 79 1 76 81 1 81 80 1 83 82 1
		 82 77 1 84 83 1 85 84 1 81 86 1 86 85 1 88 87 1 87 82 1 89 88 1 90 89 1 86 91 1 91 90 1
		 93 92 1 92 87 1 94 93 1 95 94 1 91 96 1 96 95 1 98 97 1 97 92 1 99 98 1 100 99 1
		 96 101 1 101 100 1 198 197 1 197 102 1 199 198 1 200 199 1 106 201 1 201 200 1 106 105 1
		 111 106 1 105 104 1 104 103 1 103 102 1 102 107 1 111 110 1 116 111 1 110 109 1 109 108 1
		 108 107 1 107 112 1 116 115 1 121 116 1 115 114 1 114 113 1 113 112 1 112 117 1 121 120 1
		 126 121 1 120 119 1 119 118 1 118 117 1 117 122 1 126 125 1 131 126 1 125 124 1 124 123 1
		 123 122 1 122 127 1 131 130 1 136 131 1 130 129 1 129 128 1 128 127 1 127 132 1 136 135 1
		 141 136 1 135 134 1 134 133 1;
	setAttr ".ed[166:331]" 133 132 1 132 137 1 141 140 1 146 141 1 140 139 1 139 138 1
		 138 137 1 137 142 1 146 145 1 151 146 1 145 144 1 144 143 1 143 142 1 142 147 1 151 150 1
		 156 151 1 150 149 1 149 148 1 148 147 1 147 152 1 156 155 1 161 156 1 155 154 1 154 153 1
		 153 152 1 152 157 1 161 160 1 166 161 1 160 159 1 159 158 1 158 157 1 157 162 1 166 165 1
		 171 166 1 165 164 1 164 163 1 163 162 1 162 167 1 171 170 1 176 171 1 170 169 1 169 168 1
		 168 167 1 167 172 1 176 175 1 181 176 1 175 174 1 174 173 1 173 172 1 172 177 1 181 180 1
		 186 181 1 180 179 1 179 178 1 178 177 1 177 182 1 186 185 1 191 186 1 185 184 1 184 183 1
		 183 182 1 182 187 1 191 190 1 196 191 1 190 189 1 189 188 1 188 187 1 187 192 1 196 195 1
		 201 196 1 195 194 1 194 193 1 193 192 1 192 197 1 7 107 1 102 2 1 12 112 1 17 117 1
		 22 122 1 27 127 1 32 132 1 37 137 1 42 142 1 47 147 1 52 152 1 57 157 1 62 162 1
		 67 167 1 72 172 1 77 177 1 82 182 1 87 187 1 92 192 1 97 197 1 6 0 1 0 11 1 0 16 1
		 0 21 1 0 26 1 0 31 1 0 36 1 0 41 1 0 46 1 0 51 1 0 56 1 0 61 1 0 66 1 0 71 1 0 76 1
		 0 81 1 0 86 1 0 91 1 0 96 1 0 101 1 111 1 1 1 106 1 116 1 1 121 1 1 126 1 1 131 1 1
		 136 1 1 141 1 1 146 1 1 151 1 1 156 1 1 161 1 1 166 1 1 171 1 1 176 1 1 181 1 1 186 1 1
		 191 1 1 196 1 1 201 1 1 5 10 1 4 9 1 3 8 1 10 15 1 9 14 1 8 13 1 15 20 1 14 19 1
		 13 18 1 20 25 1 19 24 1 18 23 1 25 30 1 24 29 1 23 28 1 30 35 1 29 34 1 28 33 1 35 40 1
		 34 39 1 33 38 1 40 45 1 39 44 1 38 43 1 45 50 1 44 49 1 43 48 1 50 55 1 49 54 1 48 53 1
		 55 60 1 54 59 1;
	setAttr ".ed[332:419]" 53 58 1 60 65 1 59 64 1 58 63 1 65 70 1 64 69 1 63 68 1
		 70 75 1 69 74 1 68 73 1 75 80 1 74 79 1 73 78 1 80 85 1 79 84 1 78 83 1 85 90 1 84 89 1
		 83 88 1 90 95 1 89 94 1 88 93 1 95 100 1 94 99 1 93 98 1 5 100 1 4 99 1 3 98 1 105 200 1
		 104 199 1 103 198 1 105 110 1 104 109 1 103 108 1 110 115 1 109 114 1 108 113 1 115 120 1
		 114 119 1 113 118 1 120 125 1 119 124 1 118 123 1 125 130 1 124 129 1 123 128 1 130 135 1
		 129 134 1 128 133 1 135 140 1 134 139 1 133 138 1 140 145 1 139 144 1 138 143 1 145 150 1
		 144 149 1 143 148 1 150 155 1 149 154 1 148 153 1 155 160 1 154 159 1 153 158 1 160 165 1
		 159 164 1 158 163 1 165 170 1 164 169 1 163 168 1 170 175 1 169 174 1 168 173 1 175 180 1
		 174 179 1 173 178 1 180 185 1 179 184 1 178 183 1 185 190 1 184 189 1 183 188 1 190 195 1
		 189 194 1 188 193 1 195 200 1 194 199 1 193 198 1;
	setAttr -s 220 -ch 840 ".fc[0:219]" -type "polyFaces" 
		f 4 -2 240 -132 241
		mu 0 4 82 0 3 1
		f 4 -14 242 -138 -241
		mu 0 4 0 2 5 3
		f 4 -20 243 -144 -243
		mu 0 4 2 4 7 5
		f 4 -26 244 -150 -244
		mu 0 4 4 6 9 7
		f 4 -32 245 -156 -245
		mu 0 4 6 8 11 9
		f 4 -38 246 -162 -246
		mu 0 4 8 10 13 11
		f 4 -44 247 -168 -247
		mu 0 4 10 12 15 13
		f 4 -50 248 -174 -248
		mu 0 4 12 14 17 15
		f 4 -56 249 -180 -249
		mu 0 4 14 16 19 17
		f 4 -62 250 -186 -250
		mu 0 4 16 18 21 19
		f 4 -68 251 -192 -251
		mu 0 4 18 20 23 21
		f 4 -74 252 -198 -252
		mu 0 4 20 22 25 23
		f 4 -80 253 -204 -253
		mu 0 4 22 24 27 25
		f 4 -86 254 -210 -254
		mu 0 4 24 26 29 27
		f 4 -92 255 -216 -255
		mu 0 4 26 28 31 29
		f 4 -98 256 -222 -256
		mu 0 4 28 30 33 31
		f 4 -104 257 -228 -257
		mu 0 4 30 32 35 33
		f 4 -110 258 -234 -258
		mu 0 4 32 34 37 35
		f 4 -116 259 -240 -259
		mu 0 4 34 36 39 37
		f 4 -12 -242 -122 -260
		mu 0 4 36 38 83 39
		f 3 -5 260 261
		mu 0 3 41 40 59
		f 3 -17 -262 262
		mu 0 3 42 41 59
		f 3 -23 -263 263
		mu 0 3 43 42 59
		f 3 -29 -264 264
		mu 0 3 44 43 59
		f 3 -35 -265 265
		mu 0 3 45 44 59
		f 3 -41 -266 266
		mu 0 3 46 45 59
		f 3 -47 -267 267
		mu 0 3 47 46 59
		f 3 -53 -268 268
		mu 0 3 48 47 59
		f 3 -59 -269 269
		mu 0 3 49 48 59
		f 3 -65 -270 270
		mu 0 3 50 49 59
		f 3 -71 -271 271
		mu 0 3 51 50 59
		f 3 -77 -272 272
		mu 0 3 52 51 59
		f 3 -83 -273 273
		mu 0 3 53 52 59
		f 3 -89 -274 274
		mu 0 3 54 53 59
		f 3 -95 -275 275
		mu 0 3 55 54 59
		f 3 -101 -276 276
		mu 0 3 56 55 59
		f 3 -107 -277 277
		mu 0 3 57 56 59
		f 3 -113 -278 278
		mu 0 3 58 57 59
		f 3 -119 -279 279
		mu 0 3 60 58 59
		f 3 -8 -280 -261
		mu 0 3 40 60 59
		f 3 -128 280 281
		mu 0 3 80 61 81
		f 3 -134 282 -281
		mu 0 3 61 62 81
		f 3 -140 283 -283
		mu 0 3 62 63 81
		f 3 -146 284 -284
		mu 0 3 63 64 81
		f 3 -152 285 -285
		mu 0 3 64 65 81
		f 3 -158 286 -286
		mu 0 3 65 66 81
		f 3 -164 287 -287
		mu 0 3 66 67 81
		f 3 -170 288 -288
		mu 0 3 67 68 81
		f 3 -176 289 -289
		mu 0 3 68 69 81
		f 3 -182 290 -290
		mu 0 3 69 70 81
		f 3 -188 291 -291
		mu 0 3 70 71 81
		f 3 -194 292 -292
		mu 0 3 71 72 81
		f 3 -200 293 -293
		mu 0 3 72 73 81
		f 3 -206 294 -294
		mu 0 3 73 74 81
		f 3 -212 295 -295
		mu 0 3 74 75 81
		f 3 -218 296 -296
		mu 0 3 75 76 81
		f 3 -224 297 -297
		mu 0 3 76 77 81
		f 3 -230 298 -298
		mu 0 3 77 78 81
		f 3 -236 299 -299
		mu 0 3 78 79 81
		f 3 -125 -282 -300
		mu 0 3 79 80 81
		f 4 -7 4 5 -301
		mu 0 4 89 40 41 93
		f 4 -9 300 3 -302
		mu 0 4 87 89 93 91
		f 4 -11 302 0 1
		mu 0 4 82 85 90 0
		f 4 -10 301 2 -303
		mu 0 4 85 88 92 90
		f 4 -6 16 17 -304
		mu 0 4 93 41 42 97
		f 4 -4 303 15 -305
		mu 0 4 91 93 97 95
		f 4 -1 305 12 13
		mu 0 4 0 90 94 2
		f 4 -3 304 14 -306
		mu 0 4 90 92 96 94
		f 4 -18 22 23 -307
		mu 0 4 97 42 43 101
		f 4 -16 306 21 -308
		mu 0 4 95 97 101 99
		f 4 -13 308 18 19
		mu 0 4 2 94 98 4
		f 4 -15 307 20 -309
		mu 0 4 94 96 100 98
		f 4 -24 28 29 -310
		mu 0 4 101 43 44 105
		f 4 -22 309 27 -311
		mu 0 4 99 101 105 103
		f 4 -19 311 24 25
		mu 0 4 4 98 102 6
		f 4 -21 310 26 -312
		mu 0 4 98 100 104 102
		f 4 -30 34 35 -313
		mu 0 4 105 44 45 109
		f 4 -28 312 33 -314
		mu 0 4 103 105 109 107
		f 4 -25 314 30 31
		mu 0 4 6 102 106 8
		f 4 -27 313 32 -315
		mu 0 4 102 104 108 106
		f 4 -36 40 41 -316
		mu 0 4 109 45 46 113
		f 4 -34 315 39 -317
		mu 0 4 107 109 113 111
		f 4 -31 317 36 37
		mu 0 4 8 106 110 10
		f 4 -33 316 38 -318
		mu 0 4 106 108 112 110
		f 4 -42 46 47 -319
		mu 0 4 113 46 47 117
		f 4 -40 318 45 -320
		mu 0 4 111 113 117 115
		f 4 -37 320 42 43
		mu 0 4 10 110 114 12
		f 4 -39 319 44 -321
		mu 0 4 110 112 116 114
		f 4 -48 52 53 -322
		mu 0 4 117 47 48 121
		f 4 -46 321 51 -323
		mu 0 4 115 117 121 119
		f 4 -43 323 48 49
		mu 0 4 12 114 118 14
		f 4 -45 322 50 -324
		mu 0 4 114 116 120 118
		f 4 -54 58 59 -325
		mu 0 4 121 48 49 125
		f 4 -52 324 57 -326
		mu 0 4 119 121 125 123
		f 4 -49 326 54 55
		mu 0 4 14 118 122 16
		f 4 -51 325 56 -327
		mu 0 4 118 120 124 122
		f 4 -60 64 65 -328
		mu 0 4 125 49 50 129
		f 4 -58 327 63 -329
		mu 0 4 123 125 129 127
		f 4 -55 329 60 61
		mu 0 4 16 122 126 18
		f 4 -57 328 62 -330
		mu 0 4 122 124 128 126
		f 4 -66 70 71 -331
		mu 0 4 129 50 51 133
		f 4 -64 330 69 -332
		mu 0 4 127 129 133 131
		f 4 -61 332 66 67
		mu 0 4 18 126 130 20
		f 4 -63 331 68 -333
		mu 0 4 126 128 132 130
		f 4 -72 76 77 -334
		mu 0 4 133 51 52 137
		f 4 -70 333 75 -335
		mu 0 4 131 133 137 135
		f 4 -67 335 72 73
		mu 0 4 20 130 134 22
		f 4 -69 334 74 -336
		mu 0 4 130 132 136 134
		f 4 -78 82 83 -337
		mu 0 4 137 52 53 141
		f 4 -76 336 81 -338
		mu 0 4 135 137 141 139
		f 4 -73 338 78 79
		mu 0 4 22 134 138 24
		f 4 -75 337 80 -339
		mu 0 4 134 136 140 138
		f 4 -84 88 89 -340
		mu 0 4 141 53 54 145
		f 4 -82 339 87 -341
		mu 0 4 139 141 145 143
		f 4 -79 341 84 85
		mu 0 4 24 138 142 26
		f 4 -81 340 86 -342
		mu 0 4 138 140 144 142
		f 4 -90 94 95 -343
		mu 0 4 145 54 55 149
		f 4 -88 342 93 -344
		mu 0 4 143 145 149 147
		f 4 -85 344 90 91
		mu 0 4 26 142 146 28
		f 4 -87 343 92 -345
		mu 0 4 142 144 148 146
		f 4 -96 100 101 -346
		mu 0 4 149 55 56 153
		f 4 -94 345 99 -347
		mu 0 4 147 149 153 151
		f 4 -91 347 96 97
		mu 0 4 28 146 150 30
		f 4 -93 346 98 -348
		mu 0 4 146 148 152 150
		f 4 -102 106 107 -349
		mu 0 4 153 56 57 157
		f 4 -100 348 105 -350
		mu 0 4 151 153 157 155
		f 4 -97 350 102 103
		mu 0 4 30 150 154 32
		f 4 -99 349 104 -351
		mu 0 4 150 152 156 154
		f 4 -108 112 113 -352
		mu 0 4 157 57 58 161
		f 4 -106 351 111 -353
		mu 0 4 155 157 161 159
		f 4 -103 353 108 109
		mu 0 4 32 154 158 34
		f 4 -105 352 110 -354
		mu 0 4 154 156 160 158
		f 4 -114 118 119 -355
		mu 0 4 161 58 60 165
		f 4 -112 354 117 -356
		mu 0 4 159 161 165 163
		f 4 -109 356 114 115
		mu 0 4 34 158 162 36
		f 4 -111 355 116 -357
		mu 0 4 158 160 164 162
		f 4 6 357 -120 7
		mu 0 4 40 89 165 60
		f 4 8 358 -118 -358
		mu 0 4 89 87 163 165
		f 4 9 359 -117 -359
		mu 0 4 86 84 162 164
		f 4 10 11 -115 -360
		mu 0 4 84 38 36 162
		f 4 -127 124 125 -361
		mu 0 4 171 80 79 247
		f 4 -129 360 123 -362
		mu 0 4 169 171 247 245
		f 4 -131 362 120 121
		mu 0 4 83 167 244 39
		f 4 -130 361 122 -363
		mu 0 4 167 170 246 244
		f 4 126 363 -133 127
		mu 0 4 80 171 175 61
		f 4 128 364 -135 -364
		mu 0 4 171 169 174 175
		f 4 129 365 -136 -365
		mu 0 4 168 166 172 173
		f 4 130 131 -137 -366
		mu 0 4 166 1 3 172
		f 4 132 366 -139 133
		mu 0 4 61 175 179 62
		f 4 134 367 -141 -367
		mu 0 4 175 174 178 179
		f 4 135 368 -142 -368
		mu 0 4 173 172 176 177
		f 4 136 137 -143 -369
		mu 0 4 172 3 5 176
		f 4 138 369 -145 139
		mu 0 4 62 179 183 63
		f 4 140 370 -147 -370
		mu 0 4 179 178 182 183
		f 4 141 371 -148 -371
		mu 0 4 177 176 180 181
		f 4 142 143 -149 -372
		mu 0 4 176 5 7 180
		f 4 144 372 -151 145
		mu 0 4 63 183 187 64
		f 4 146 373 -153 -373
		mu 0 4 183 182 186 187
		f 4 147 374 -154 -374
		mu 0 4 181 180 184 185
		f 4 148 149 -155 -375
		mu 0 4 180 7 9 184
		f 4 150 375 -157 151
		mu 0 4 64 187 191 65
		f 4 152 376 -159 -376
		mu 0 4 187 186 190 191
		f 4 153 377 -160 -377
		mu 0 4 185 184 188 189
		f 4 154 155 -161 -378
		mu 0 4 184 9 11 188
		f 4 156 378 -163 157
		mu 0 4 65 191 195 66
		f 4 158 379 -165 -379
		mu 0 4 191 190 194 195
		f 4 159 380 -166 -380
		mu 0 4 189 188 192 193
		f 4 160 161 -167 -381
		mu 0 4 188 11 13 192
		f 4 162 381 -169 163
		mu 0 4 66 195 199 67
		f 4 164 382 -171 -382
		mu 0 4 195 194 198 199
		f 4 165 383 -172 -383
		mu 0 4 193 192 196 197
		f 4 166 167 -173 -384
		mu 0 4 192 13 15 196
		f 4 168 384 -175 169
		mu 0 4 67 199 203 68
		f 4 170 385 -177 -385
		mu 0 4 199 198 202 203
		f 4 171 386 -178 -386
		mu 0 4 197 196 200 201
		f 4 172 173 -179 -387
		mu 0 4 196 15 17 200
		f 4 174 387 -181 175
		mu 0 4 68 203 207 69
		f 4 176 388 -183 -388
		mu 0 4 203 202 206 207
		f 4 177 389 -184 -389
		mu 0 4 201 200 204 205
		f 4 178 179 -185 -390
		mu 0 4 200 17 19 204
		f 4 180 390 -187 181
		mu 0 4 69 207 211 70
		f 4 182 391 -189 -391
		mu 0 4 207 206 210 211
		f 4 183 392 -190 -392
		mu 0 4 205 204 208 209
		f 4 184 185 -191 -393
		mu 0 4 204 19 21 208
		f 4 186 393 -193 187
		mu 0 4 70 211 215 71
		f 4 188 394 -195 -394
		mu 0 4 211 210 214 215
		f 4 189 395 -196 -395
		mu 0 4 209 208 212 213
		f 4 190 191 -197 -396
		mu 0 4 208 21 23 212
		f 4 192 396 -199 193
		mu 0 4 71 215 219 72
		f 4 194 397 -201 -397
		mu 0 4 215 214 218 219
		f 4 195 398 -202 -398
		mu 0 4 213 212 216 217
		f 4 196 197 -203 -399
		mu 0 4 212 23 25 216
		f 4 198 399 -205 199
		mu 0 4 72 219 223 73
		f 4 200 400 -207 -400
		mu 0 4 219 218 222 223
		f 4 201 401 -208 -401
		mu 0 4 217 216 220 221
		f 4 202 203 -209 -402
		mu 0 4 216 25 27 220
		f 4 204 402 -211 205
		mu 0 4 73 223 227 74
		f 4 206 403 -213 -403
		mu 0 4 223 222 226 227
		f 4 207 404 -214 -404
		mu 0 4 221 220 224 225
		f 4 208 209 -215 -405
		mu 0 4 220 27 29 224
		f 4 210 405 -217 211
		mu 0 4 74 227 231 75
		f 4 212 406 -219 -406
		mu 0 4 227 226 230 231
		f 4 213 407 -220 -407
		mu 0 4 225 224 228 229
		f 4 214 215 -221 -408
		mu 0 4 224 29 31 228
		f 4 216 408 -223 217
		mu 0 4 75 231 235 76
		f 4 218 409 -225 -409
		mu 0 4 231 230 234 235
		f 4 219 410 -226 -410
		mu 0 4 229 228 232 233
		f 4 220 221 -227 -411
		mu 0 4 228 31 33 232
		f 4 222 411 -229 223
		mu 0 4 76 235 239 77
		f 4 224 412 -231 -412
		mu 0 4 235 234 238 239
		f 4 225 413 -232 -413
		mu 0 4 233 232 236 237
		f 4 226 227 -233 -414
		mu 0 4 232 33 35 236
		f 4 228 414 -235 229
		mu 0 4 77 239 243 78
		f 4 230 415 -237 -415
		mu 0 4 239 238 242 243
		f 4 231 416 -238 -416
		mu 0 4 237 236 240 241
		f 4 232 233 -239 -417
		mu 0 4 236 35 37 240
		f 4 234 417 -126 235
		mu 0 4 78 243 247 79
		f 4 236 418 -124 -418
		mu 0 4 243 242 245 247
		f 4 237 419 -123 -419
		mu 0 4 241 240 244 246
		f 4 238 239 -121 -420
		mu 0 4 240 37 39 244;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ramp" -p "BlocksRound";
	rename -uid "54A95783-4A35-713C-4990-E1AF621A1656";
	setAttr ".rp" -type "double3" 300 0 250 ;
	setAttr ".sp" -type "double3" 300 0 250 ;
createNode mesh -n "RampShape" -p "|BlocksRound|Ramp";
	rename -uid "4DD1C514-4312-62BD-CA7B-E59EF51A4557";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 13 "f[0:1]" "f[6:7]" "f[14:15]" "f[32:33]" "f[38]" "f[43:45]" "f[51]" "f[53:54]" "f[61:62]" "f[89:90]" "f[97:98]" "f[103:105]" "f[111]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 13 "f[4:5]" "f[10:11]" "f[16:17]" "f[26:27]" "f[36]" "f[46:48]" "f[52]" "f[58:60]" "f[64]" "f[70:72]" "f[76]" "f[82:84]" "f[88]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[2:3]" "f[8:9]" "f[20:21]" "f[40:42]" "f[49:50]" "f[67:69]" "f[75]" "f[91:93]" "f[99]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "f[12:13]" "f[18:19]" "f[30:31]" "f[39]" "f[55:57]" "f[63]" "f[77:78]" "f[85:86]" "f[101:102]" "f[109:110]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 12 "f[22:25]" "f[28:29]" "f[34:35]" "f[37]" "f[65:66]" "f[73:74]" "f[79:81]" "f[87]" "f[94:96]" "f[100]" "f[106:108]" "f[112]";
	setAttr ".pv" -type "double2" 0.5 0.39949819445610046 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 138 ".uvst[0].uvsp[0:137]" -type "float2" 0.37375146 0.89216542
		 0.38290337 0.1078575 0.60186303 0.89207518 0.64394063 0.1110346 0.15976828 0.12628025
		 0.38695043 0.3160851 0.60821712 0.32258323 0.63417065 0.30808461 0.83964038 0.13358459
		 0.60210687 0.68262702 0.37764537 0.65035009 0.60358739 0.65591848 0.61720717 0.10798949
		 0.38507158 0.34347695 0.60821724 0.3490591 0.37744683 0.67797005 0.35610533 0.10938427
		 0.36081845 0.30355525 0.35581565 0.10286459 0.36072654 0.89158273 0.35555798 0.09634608
		 0.36723638 0.89183998 0.37368602 0.89867234 0.38225877 0.094820082 0.37352681 0.90517986
		 0.38262293 0.10133427 0.37619004 0.10822263 0.36949015 0.10860258 0.36279726 0.1089929
		 0.6083889 0.89190161 0.64485931 0.098003238 0.6149044 0.89178169 0.64441586 0.10451549
		 0.63725507 0.11026928 0.63057518 0.10950434 0.62389421 0.10874474 0.61749053 0.10149273
		 0.60217786 0.90510106 0.61784703 0.0950014 0.60196447 0.8985855 0.37878454 0.34400254
		 0.36099356 0.32254937 0.3721081 0.34700817 0.36108804 0.31337684 0.36784983 0.30911091
		 0.37462237 0.31349337 0.38095999 0.31588274 0.38666752 0.32295379 0.38622448 0.32979882
		 0.38568199 0.33663744 0.63369489 0.31794494 0.62103087 0.35308427 0.63361162 0.32713962
		 0.61448294 0.34981698 0.60805357 0.34204462 0.60802627 0.33533543 0.60808778 0.32879952
		 0.61384267 0.32212567 0.6200223 0.31928328 0.62687969 0.31429613 0.37117311 0.67825937
		 0.14650893 0.1131863 0.36451411 0.68097156 0.15267566 0.11966628 0.15043494 0.12766159
		 0.36484897 0.64611304 0.14193895 0.12946752 0.37137875 0.64945173 0.37780637 0.65726161
		 0.37783596 0.66416824 0.37770829 0.6710701 0.84691954 0.12716308 0.61500514 0.68581009
		 0.85326159 0.12085557 0.60838985 0.68300784 0.6022619 0.67555082 0.60260695 0.66877925
		 0.60308623 0.66218239 0.60951447 0.65506828 0.85824597 0.1364477 0.61594707 0.65161443
		 0.84943032 0.1348516 0.3621999 0.10318819 0.36122942 0.89699185 0.36193848 0.096735001
		 0.36778635 0.89769363 0.37571353 0.095924377 0.36794439 0.9042275 0.37619227 0.10236079
		 0.36922115 0.1036188 0.36245093 0.90251803 0.36888713 0.098167002 0.60782653 0.89771622
		 0.63851058 0.098050833 0.6143707 0.8971262 0.63802868 0.10448673 0.63098258 0.10451624
		 0.62399477 0.10285893 0.60766017 0.90423167 0.62459064 0.096423358 0.6314798 0.099067211
		 0.61312485 0.90260601 0.37998509 0.33651012 0.36786807 0.32606727 0.37286907 0.3380228
		 0.36758038 0.31735849 0.37493557 0.32052088 0.38135374 0.32253531 0.38147008 0.32940161
		 0.37505159 0.32821995 0.62701118 0.32241952 0.6207301 0.34383583 0.62655556 0.33112335
		 0.61375296 0.34198418 0.61269498 0.33491373 0.61316884 0.32828408 0.61952639 0.32609606
		 0.61913061 0.33373436 0.37222081 0.67113936 0.14062142 0.11550242 0.36520594 0.67263496
		 0.14547199 0.1217818 0.36527726 0.65474188 0.13806263 0.12437645 0.37229222 0.65676552
		 0.37323695 0.66400665 0.13550043 0.11879879 0.36721113 0.66380328 0.85441172 0.1292429
		 0.61457533 0.67741007 0.85932314 0.12317988 0.60769331 0.67567945 0.60704684 0.66865778
		 0.6083048 0.66174674 0.86197484 0.13178825 0.61525416 0.65981692 0.61298203 0.6685859
		 0.86449957 0.12643388;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 76 ".pt";
	setAttr ".pt[24]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[25]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[26]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[27]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[28]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[29]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[30]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[31]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[32]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[33]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[34]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[35]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[36]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[37]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[38]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[39]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[40]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[41]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[42]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[43]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[44]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[45]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[46]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[47]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[48]" -type "float3" 0 0 -11.954653 ;
	setAttr ".pt[49]" -type "float3" 0 0 -11.95466 ;
	setAttr ".pt[50]" -type "float3" 0 0 -11.954645 ;
	setAttr ".pt[51]" -type "float3" 0 0 -11.954672 ;
	setAttr ".pt[52]" -type "float3" 0 0 -11.954678 ;
	setAttr ".pt[53]" -type "float3" 0 0 -11.954659 ;
	setAttr ".pt[54]" -type "float3" 0 0 -11.954662 ;
	setAttr ".pt[55]" -type "float3" 0 0 -11.954666 ;
	setAttr ".pt[56]" -type "float3" 0 0 -11.954657 ;
	setAttr ".pt[57]" -type "float3" 0 0 -11.954668 ;
	setAttr ".pt[58]" -type "float3" 0 0 -11.954674 ;
	setAttr ".pt[59]" -type "float3" 0 0 -11.954666 ;
	setAttr ".pt[60]" -type "float3" 0 0 -11.954645 ;
	setAttr ".pt[61]" -type "float3" 0 0 -11.95466 ;
	setAttr ".pt[62]" -type "float3" 0 0 -11.954653 ;
	setAttr ".pt[63]" -type "float3" 0 0 -11.954666 ;
	setAttr ".pt[64]" -type "float3" 0 0 -11.954674 ;
	setAttr ".pt[65]" -type "float3" 0 0 -11.954655 ;
	setAttr ".pt[66]" -type "float3" 0 0 -11.954659 ;
	setAttr ".pt[67]" -type "float3" 0 0 -11.954678 ;
	setAttr ".pt[68]" -type "float3" 0 0 -11.954659 ;
	setAttr ".pt[69]" -type "float3" 0 0 -11.954657 ;
	setAttr ".pt[70]" -type "float3" 0 0 -11.954678 ;
	setAttr ".pt[71]" -type "float3" 0 0 -11.954672 ;
	setAttr ".pt[86]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[87]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[88]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[89]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[90]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[91]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[92]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[93]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[94]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[95]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[96]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[97]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[98]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[99]" -type "float3" 0 12.037531 0 ;
	setAttr ".pt[100]" -type "float3" 0 0 -11.95467 ;
	setAttr ".pt[101]" -type "float3" 0 0 -11.954678 ;
	setAttr ".pt[102]" -type "float3" 0 0 -11.954678 ;
	setAttr ".pt[103]" -type "float3" 0 0 -11.954678 ;
	setAttr ".pt[104]" -type "float3" 0 0 -11.95467 ;
	setAttr ".pt[105]" -type "float3" 0 0 -11.954659 ;
	setAttr ".pt[106]" -type "float3" 0 0 -11.954666 ;
	setAttr ".pt[107]" -type "float3" 0 0 -11.954653 ;
	setAttr ".pt[108]" -type "float3" 0 0 -11.954678 ;
	setAttr ".pt[109]" -type "float3" 0 0 -11.954668 ;
	setAttr ".pt[110]" -type "float3" 0 0 -11.954655 ;
	setAttr ".pt[111]" -type "float3" 0 0 -11.954655 ;
	setAttr ".pt[112]" -type "float3" 0 0 -11.954668 ;
	setAttr ".pt[113]" -type "float3" 0 0 -11.954678 ;
	setAttr -s 114 ".vt[0:113]"  200.98638916 8.00043773651 337.062255859
		 203.79568481 3.79602027 337.070007324 208.00019836426 0.98663437 337.062255859 212.95977783 0 337.040222168
		 212.97624207 0.98650861 341.99969482 212.98204041 3.79584432 346.2041626 212.97624207 8.00030136108 349.01348877
		 212.95977783 12.95977688 350 208.00019836426 12.93773174 349.013366699 203.79568481 12.92999077 346.20397949
		 200.98638916 12.93773174 341.99957275 200 12.95977688 337.040222168 391.99981689 0.98663437 337.062255859
		 396.20431519 3.79602027 337.070007324 399.01361084 8.00043773651 337.062255859 400 12.95977688 337.040222168
		 399.01361084 12.93773174 341.99957275 396.20431519 12.92999077 346.20397949 391.99981689 12.93773174 349.013366699
		 387.040222168 12.95977688 350 387.015655518 8.00037288666 349.013549805 387.007019043 3.79592872 346.20419312
		 387.015655518 0.98656416 341.99972534 387.040222168 0 337.040222168 207.5730896 182.49382019 334.2052002
		 203.58616638 178.30938721 334.5581665 200.92660522 172.042617798 334.96258545 200 164.64819336 335.35681152
		 200.92279053 169.59931946 340.84545898 203.57867432 173.74388123 345.55465698 207.56480408 176.45175171 348.76855469
		 212.27839661 177.31248474 350 212.26893616 182.53343201 348.41625977 212.26538086 185.99459839 344.1987915
		 212.26893616 186.52938843 338.76919556 212.27839661 183.95750427 333.95751953 399.073394775 172.042617798 334.96258545
		 396.41381836 178.30938721 334.5581665 392.42694092 182.49382019 334.2052002 387.72161865 183.95750427 333.95751953
		 387.87243652 186.73469543 338.82528687 388.081329346 186.43530273 344.19238281 388.28179932 183.29653931 348.39706421
		 388.40298462 178.57151794 350 392.8359375 177.57092285 348.84820557 396.60128784 174.57124329 345.65841675
		 399.1178894 170.03302002 340.92047119 400 164.64819336 335.35681152 207.57049561 1.22811437 173.5289917
		 203.5821991 4.44314003 176.23199463 200.92344666 9.15412521 180.38378906 200 14.64319611 185.35180664
		 200.92591858 15.049035072 177.96966553 203.58261108 15.45733547 171.70922852 207.56738281 15.80607414 167.52215576
		 212.27839661 16.04249382 166.042480469 212.26893616 11.23082638 163.47058105 212.26538086 5.80120945 164.0053710938
		 212.26893616 1.58375371 167.46655273 212.27839661 0 172.6875 399.076568604 9.15412521 180.38378906
		 396.41781616 4.44314003 176.23199463 392.42950439 1.22811425 173.5289917 387.72161865 0 172.6875
		 387.87612915 1.47904325 167.28253174 388.086273193 5.48567247 163.69958496 388.28527832 10.67770195 162.94555664
		 388.40298462 15.15222454 165.15222168 392.83505249 15.070357323 166.67431641 396.59991455 14.94475746 171.05090332
		 399.11676025 14.79473782 177.61004639 400 14.64319611 185.35180664 201.65489197 8.47296333 341.52703857
		 204.21061707 4.19866753 340.85922241 208.49673462 1.64945471 341.52810669 209.17753601 4.19903898 345.80102539
		 208.49671936 8.47194386 348.35058594 204.21061707 9.14080334 345.80136108 205.4889679 5.46760225 344.53244019
		 391.49832153 1.64941263 341.52706909 395.78738403 4.19860411 340.8583374 398.34423828 8.47289181 341.52664185
		 395.78707886 9.14054203 345.80065918 391.49856567 8.47177792 348.349823 390.81506348 4.19890165 345.79992676
		 394.50698853 5.46736813 344.53121948 208.018371582 185.14987183 338.50598145 203.95397949 180.93858337 338.36032104
		 201.53103638 175.46034241 339.82272339 203.94927979 178.29925537 344.72598267 208.014694214 181.37866211 347.60812378
		 208.65539551 185.09387207 343.81707764 205.15658569 182.26345825 342.6395874 398.50189209 175.7464447 339.88098145
		 396.084472656 181.12730408 338.41955566 392.067626953 185.34860229 338.57641602 391.58065796 185.52024841 343.84793091
		 392.331604 182.090789795 347.65231323 396.21157837 178.86991882 344.79983521 394.97781372 182.65052795 342.69329834
		 208.017318726 2.39137745 168.6137085 203.95120239 5.27590609 171.68951416 201.53100586 10.18401241 174.53686523
		 203.95199585 11.64897633 169.067993164 208.015716553 11.49907017 164.85583496 208.65536499 6.18527126 164.90515137
		 205.15655518 7.36555338 167.734375 398.50375366 10.022084236 174.29400635 396.089385986 5.18381643 171.51538086
		 392.071228027 2.30043721 168.42449951 391.58486938 5.90483093 164.58312988 392.33395386 11.025364876 164.32177734
		 396.21154785 11.2961874 168.61315918 394.98120117 7.12867641 167.42425537;
	setAttr -s 225 ".ed";
	setAttr ".ed[0:165]"  3 2 1 2 48 1 48 59 1 59 3 1 2 1 1 1 49 1 49 48 1 1 0 1
		 0 50 1 50 49 1 0 11 1 11 51 1 51 50 1 7 6 1 6 20 1 20 19 1 19 7 1 6 5 1 5 21 1 21 20 1
		 5 4 1 4 22 1 22 21 1 4 3 1 3 23 1 23 22 1 11 10 1 10 28 1 28 27 1 27 11 1 10 9 1
		 9 29 1 29 28 1 9 8 1 8 30 1 30 29 1 8 7 1 7 31 1 31 30 1 15 14 1 14 60 1 60 71 1
		 71 15 1 14 13 1 13 61 1 61 60 1 13 12 1 12 62 1 62 61 1 12 23 1 23 63 1 63 62 1 19 18 1
		 18 44 1 44 43 1 43 19 1 18 17 1 17 45 1 45 44 1 17 16 1 16 46 1 46 45 1 16 15 1 15 47 1
		 47 46 1 27 26 1 26 52 1 52 51 1 51 27 1 26 25 1 25 53 1 53 52 1 25 24 1 24 54 1 54 53 1
		 24 35 1 35 55 1 55 54 1 35 34 1 34 40 1 40 39 1 39 35 1 34 33 1 33 41 1 41 40 1 33 32 1
		 32 42 1 42 41 1 32 31 1 31 43 1 43 42 1 39 38 1 38 68 1 68 67 1 67 39 1 38 37 1 37 69 1
		 69 68 1 37 36 1 36 70 1 70 69 1 36 47 1 47 71 1 71 70 1 59 58 1 58 64 1 64 63 1 63 59 1
		 58 57 1 57 65 1 65 64 1 57 56 1 56 66 1 66 65 1 56 55 1 55 67 1 67 66 1 0 72 1 72 10 1
		 1 73 1 73 72 1 2 74 1 74 73 1 4 74 1 5 75 1 75 74 1 6 76 1 76 75 1 8 76 1 9 77 1
		 77 76 1 72 77 1 73 78 1 78 77 1 75 78 1 12 79 1 79 22 1 13 80 1 80 79 1 14 81 1 81 80 1
		 16 81 1 17 82 1 82 81 1 18 83 1 83 82 1 20 83 1 21 84 1 84 83 1 79 84 1 80 85 1 85 84 1
		 82 85 1 24 86 1 86 34 1 25 87 1 87 86 1 26 88 1 88 87 1 28 88 1 29 89 1 89 88 1 30 90 1
		 90 89 1 32 90 1 33 91 1;
	setAttr ".ed[166:224]" 91 90 1 86 91 1 87 92 1 92 91 1 89 92 1 36 93 1 93 46 1
		 37 94 1 94 93 1 38 95 1 95 94 1 40 95 1 41 96 1 96 95 1 42 97 1 97 96 1 44 97 1 45 98 1
		 98 97 1 93 98 1 94 99 1 99 98 1 96 99 1 48 100 1 100 58 1 49 101 1 101 100 1 50 102 1
		 102 101 1 52 102 1 53 103 1 103 102 1 54 104 1 104 103 1 56 104 1 57 105 1 105 104 1
		 100 105 1 101 106 1 106 105 1 103 106 1 60 107 1 107 70 1 61 108 1 108 107 1 62 109 1
		 109 108 1 64 109 1 65 110 1 110 109 1 66 111 1 111 110 1 68 111 1 69 112 1 112 111 1
		 107 112 1 108 113 1 113 112 1 110 113 1;
	setAttr -s 113 -ch 450 ".fc[0:112]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 21 60 15
		f 4 4 5 6 -2
		mu 0 4 21 19 62 60
		f 4 7 8 9 -6
		mu 0 4 20 18 63 61
		f 4 10 11 12 -9
		mu 0 4 18 16 4 63
		f 4 13 14 15 16
		mu 0 4 1 25 36 12
		f 4 17 18 19 -15
		mu 0 4 25 23 38 36
		f 4 20 21 22 -19
		mu 0 4 24 22 39 37
		f 4 23 24 25 -22
		mu 0 4 22 0 2 39
		f 4 26 27 28 29
		mu 0 4 16 28 44 17
		f 4 30 31 32 -28
		mu 0 4 28 27 45 44
		f 4 33 34 35 -32
		mu 0 4 27 26 46 45
		f 4 36 37 38 -35
		mu 0 4 26 1 5 46
		f 4 39 40 41 42
		mu 0 4 3 32 71 8
		f 4 43 44 45 -41
		mu 0 4 32 30 73 71
		f 4 46 47 48 -45
		mu 0 4 31 29 74 72
		f 4 49 50 51 -48
		mu 0 4 29 2 9 74
		f 4 52 53 54 55
		mu 0 4 12 35 57 6
		f 4 56 57 58 -54
		mu 0 4 35 34 58 57
		f 4 59 60 61 -58
		mu 0 4 34 33 59 58
		f 4 62 63 64 -61
		mu 0 4 33 3 7 59
		f 4 65 66 67 68
		mu 0 4 17 43 64 4
		f 4 69 70 71 -67
		mu 0 4 43 41 66 64
		f 4 72 73 74 -71
		mu 0 4 42 40 67 65
		f 4 75 76 77 -74
		mu 0 4 40 13 10 67
		f 4 78 79 80 81
		mu 0 4 13 49 54 14
		f 4 82 83 84 -80
		mu 0 4 49 48 55 54
		f 4 85 86 87 -84
		mu 0 4 48 47 56 55
		f 4 88 89 90 -87
		mu 0 4 47 5 6 56
		f 4 91 92 93 94
		mu 0 4 14 53 78 11
		f 4 95 96 97 -93
		mu 0 4 53 51 80 78
		f 4 98 99 100 -97
		mu 0 4 52 50 81 79
		f 4 101 102 103 -100
		mu 0 4 50 7 8 81
		f 4 104 105 106 107
		mu 0 4 15 70 75 9
		f 4 108 109 110 -106
		mu 0 4 70 69 76 75
		f 4 111 112 113 -110
		mu 0 4 69 68 77 76
		f 4 114 115 116 -113
		mu 0 4 68 10 11 77
		f 4 -17 -56 -90 -38
		mu 0 4 1 12 6 5
		f 4 -82 -95 -116 -77
		mu 0 4 13 14 11 10
		f 4 -108 -51 -25 -4
		mu 0 4 15 9 2 0
		f 3 -43 -103 -64
		mu 0 3 3 8 7
		f 3 -12 -30 -69
		mu 0 3 4 16 17
		f 4 -27 -11 117 118
		mu 0 4 28 16 18 82
		f 4 -118 -8 119 120
		mu 0 4 82 18 20 84
		f 4 -120 -5 121 122
		mu 0 4 83 19 21 85
		f 4 -1 -24 123 -122
		mu 0 4 21 0 22 85
		f 4 -124 -21 124 125
		mu 0 4 85 22 24 87
		f 4 -125 -18 126 127
		mu 0 4 86 23 25 88
		f 4 -14 -37 128 -127
		mu 0 4 25 1 26 88
		f 4 -129 -34 129 130
		mu 0 4 88 26 27 89
		f 4 -130 -31 -119 131
		mu 0 4 89 27 28 82
		f 4 -132 -121 132 133
		mu 0 4 89 82 84 91
		f 4 -123 -126 134 -133
		mu 0 4 83 85 87 90
		f 4 -128 -131 -134 -135
		mu 0 4 86 88 89 91
		f 4 -26 -50 135 136
		mu 0 4 39 2 29 92
		f 4 -136 -47 137 138
		mu 0 4 92 29 31 94
		f 4 -138 -44 139 140
		mu 0 4 93 30 32 95
		f 4 -40 -63 141 -140
		mu 0 4 32 3 33 95
		f 4 -142 -60 142 143
		mu 0 4 95 33 34 96
		f 4 -143 -57 144 145
		mu 0 4 96 34 35 97
		f 4 -53 -16 146 -145
		mu 0 4 35 12 36 97
		f 4 -147 -20 147 148
		mu 0 4 97 36 38 99
		f 4 -148 -23 -137 149
		mu 0 4 98 37 39 92
		f 4 -150 -139 150 151
		mu 0 4 98 92 94 101
		f 4 -141 -144 152 -151
		mu 0 4 93 95 96 100
		f 4 -146 -149 -152 -153
		mu 0 4 96 97 99 100
		f 4 -79 -76 153 154
		mu 0 4 49 13 40 102
		f 4 -154 -73 155 156
		mu 0 4 102 40 42 104
		f 4 -156 -70 157 158
		mu 0 4 103 41 43 105
		f 4 -66 -29 159 -158
		mu 0 4 43 17 44 105
		f 4 -160 -33 160 161
		mu 0 4 105 44 45 106
		f 4 -161 -36 162 163
		mu 0 4 106 45 46 107
		f 4 -39 -89 164 -163
		mu 0 4 46 5 47 107
		f 4 -165 -86 165 166
		mu 0 4 107 47 48 108
		f 4 -166 -83 -155 167
		mu 0 4 108 48 49 102
		f 4 -168 -157 168 169
		mu 0 4 108 102 104 109
		f 4 -159 -162 170 -169
		mu 0 4 103 105 106 109
		f 4 -164 -167 -170 -171
		mu 0 4 106 107 108 109
		f 4 -65 -102 171 172
		mu 0 4 59 7 50 110
		f 4 -172 -99 173 174
		mu 0 4 110 50 52 112
		f 4 -174 -96 175 176
		mu 0 4 111 51 53 113
		f 4 -92 -81 177 -176
		mu 0 4 53 14 54 113
		f 4 -178 -85 178 179
		mu 0 4 113 54 55 114
		f 4 -179 -88 180 181
		mu 0 4 114 55 56 115
		f 4 -91 -55 182 -181
		mu 0 4 56 6 57 115
		f 4 -183 -59 183 184
		mu 0 4 115 57 58 116
		f 4 -184 -62 -173 185
		mu 0 4 116 58 59 110
		f 4 -186 -175 186 187
		mu 0 4 116 110 112 117
		f 4 -177 -180 188 -187
		mu 0 4 111 113 114 117
		f 4 -182 -185 -188 -189
		mu 0 4 114 115 116 117
		f 4 -105 -3 189 190
		mu 0 4 70 15 60 118
		f 4 -190 -7 191 192
		mu 0 4 118 60 62 120
		f 4 -192 -10 193 194
		mu 0 4 119 61 63 121
		f 4 -13 -68 195 -194
		mu 0 4 63 4 64 121
		f 4 -196 -72 196 197
		mu 0 4 121 64 66 123
		f 4 -197 -75 198 199
		mu 0 4 122 65 67 124
		f 4 -78 -115 200 -199
		mu 0 4 67 10 68 124
		f 4 -201 -112 201 202
		mu 0 4 124 68 69 125
		f 4 -202 -109 -191 203
		mu 0 4 125 69 70 118
		f 4 -204 -193 204 205
		mu 0 4 125 118 120 127
		f 4 -195 -198 206 -205
		mu 0 4 119 121 123 126
		f 4 -200 -203 -206 -207
		mu 0 4 122 124 125 127
		f 4 -104 -42 207 208
		mu 0 4 81 8 71 128
		f 4 -208 -46 209 210
		mu 0 4 128 71 73 130
		f 4 -210 -49 211 212
		mu 0 4 129 72 74 131
		f 4 -52 -107 213 -212
		mu 0 4 74 9 75 131
		f 4 -214 -111 214 215
		mu 0 4 131 75 76 132
		f 4 -215 -114 216 217
		mu 0 4 132 76 77 133
		f 4 -117 -94 218 -217
		mu 0 4 77 11 78 133
		f 4 -219 -98 219 220
		mu 0 4 133 78 80 135
		f 4 -220 -101 -209 221
		mu 0 4 134 79 81 128
		f 4 -222 -211 222 223
		mu 0 4 134 128 130 137
		f 4 -213 -216 224 -223
		mu 0 4 129 131 132 136
		f 4 -218 -221 -224 -225
		mu 0 4 132 133 135 136;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Roof" -p "BlocksRound";
	rename -uid "9BF53180-44D1-5BD4-A5F2-7B93414041F1";
	setAttr ".rp" -type "double3" 650 0 250 ;
	setAttr ".sp" -type "double3" 650 0 250 ;
createNode mesh -n "RoofShape" -p "|BlocksRound|Roof";
	rename -uid "997B9310-465D-E314-CA86-6ABD72703031";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[22:25]" "f[28:29]" "f[38]" "f[65:66]" "f[73:74]" "f[82:84]" "f[88]" "f[103:105]" "f[111]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 12 "f[2:3]" "f[8:9]" "f[20:21]" "f[34:35]" "f[39]" "f[41:42]" "f[49:50]" "f[67:69]" "f[75]" "f[94:96]" "f[100:102]" "f[109:110]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 10 "f[0:1]" "f[6:7]" "f[18:19]" "f[36]" "f[43:45]" "f[51]" "f[58:60]" "f[64]" "f[91:93]" "f[99]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 16 "f[4:5]" "f[10:17]" "f[26:27]" "f[30:33]" "f[37]" "f[40]" "f[46:48]" "f[52:57]" "f[61:63]" "f[70:72]" "f[76:81]" "f[85:87]" "f[89:90]" "f[97:98]" "f[106:108]" "f[112]";
	setAttr ".pv" -type "double2" 0.29330291599035263 0.50252968817949295 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 139 ".uvst[0].uvsp[0:138]" -type "float2" 0.34381437 0.18500596
		 0.31181157 0.20491441 0.50534081 0.28946495 0.66021633 0.18766022 0.24863374 0.42592767
		 0.47612834 0.50492364 0.65406042 0.5553354 0.50987279 0.50490898 0.75611931 0.44539267
		 0.6751194 0.8217122 0.67159373 0.58506459 0.49450487 0.30714035 0.35149571 0.55682915
		 0.50253296 0.39994833 0.33149904 0.82029754 0.3339628 0.58687532 0.51682019 0.30853188
		 0.68992245 0.20794375 0.33249918 0.82725316 0.3286725 0.17046334 0.33605534 0.83459604
		 0.33609909 0.17766681 0.33315784 0.18872845 0.32374781 0.1931949 0.31654635 0.19857834
		 0.30527148 0.20162921 0.31585991 0.82070327 0.29888958 0.19793737 0.32368022 0.82025242
		 0.51119745 0.30903786 0.50558341 0.30895427 0.50000834 0.3083325 0.49660444 0.30227977
		 0.49913922 0.29769915 0.5020538 0.29341477 0.50883061 0.29374811 0.51191574 0.29837453
		 0.5145967 0.30330604 0.3445299 0.56483042 0.33881682 0.57259536 0.33517572 0.57992965
		 0.32598689 0.58611274 0.23526491 0.42150408 0.31839812 0.58478212 0.24216157 0.42360213
		 0.24788661 0.43233833 0.3296482 0.5568136 0.34017533 0.556916 0.48456451 0.50521332
		 0.49301976 0.50530481 0.50146592 0.50520968 0.51059896 0.51172084 0.51263356 0.38950723
		 0.50763774 0.39478475 0.49741212 0.39480436 0.4738166 0.5183481 0.47492859 0.51159787
		 0.68570793 0.20156085 0.67907345 0.19610141 0.67026955 0.19152394 0.66803461 0.18046489
		 0.67056072 0.83598822 0.67556399 0.17343742 0.67411983 0.82866287 0.68292838 0.82161659
		 0.70315939 0.20129313 0.6907084 0.8220135 0.69663447 0.20487319 0.67035651 0.57816422
		 0.66672665 0.57090855 0.66102898 0.56323832 0.66490674 0.5550037 0.7544921 0.45989317
		 0.75661397 0.45213237 0.76324725 0.44318897 0.6871013 0.58330274 0.77047187 0.44146606
		 0.6793642 0.58444995 0.32524413 0.82635796 0.32012519 0.17738019 0.32846761 0.8342182
		 0.32715026 0.18253519 0.31843749 0.18950598 0.31041473 0.19572544 0.31750804 0.82669348
		 0.30446965 0.19177449 0.31325722 0.18579993 0.32115036 0.83321017 0.51056314 0.30477703
		 0.50558823 0.30556744 0.50062513 0.30420011 0.50215435 0.29962754 0.50549585 0.29619965
		 0.5089463 0.29999205 0.50556803 0.30174455 0.3356047 0.56410575 0.33193532 0.57240397
		 0.32791525 0.5799349 0.23511012 0.42744964 0.32052621 0.57860416 0.24200971 0.429452
		 0.32641482 0.56392813 0.32522419 0.57173365 0.48348546 0.5113436 0.49282375 0.51063269
		 0.5020923 0.51138437 0.5078814 0.38587096 0.50251853 0.39075831 0.48271757 0.51815182
		 0.49258116 0.51640368 0.69189537 0.198864 0.68440682 0.19252665 0.67637628 0.18546133
		 0.67817163 0.83559841 0.68337256 0.1804214 0.68137872 0.82773066 0.69787663 0.19501211
		 0.68910694 0.82802033 0.68958122 0.18890055 0.68549299 0.83455598 0.67736816 0.57822287
		 0.67337507 0.57067168 0.66962701 0.56230921 0.76191217 0.45754868 0.76321304 0.44935462
		 0.68481404 0.57690817 0.77044308 0.44759443 0.68000937 0.56990284 0.67864853 0.56187928
		 0.76859474 0.45467263 0.67510498 0.55441839 0.50228405 0.51819307 0.50250435 0.38270861
		 0.49713871 0.38589051 0.49239892 0.3895449 0.5111599 0.51856452 0.23662016 0.43449479
		 0.2429184 0.43756151 0.24962261 0.4401474;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 76 ".pt";
	setAttr ".pt[0]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[1]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[2]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[3]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[4]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[5]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[6]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[7]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[8]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[9]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[10]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[11]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[24]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[25]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[26]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[27]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[28]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[29]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[30]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[31]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[32]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[33]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[34]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[35]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[48]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[49]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[50]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[51]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[52]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[53]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[54]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[55]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[56]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[57]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[58]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[59]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[60]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[61]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[62]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[63]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[64]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[65]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[66]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[67]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[68]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[69]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[70]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[71]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[72]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[73]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[74]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[75]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[76]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[77]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[78]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[86]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[87]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[88]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[89]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[90]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[91]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[92]" -type "float3" -13.802894 0 0 ;
	setAttr ".pt[100]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[101]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[102]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[103]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[104]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[105]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[106]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[107]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[108]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[109]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[110]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[111]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[112]" -type "float3" 12.548085 0 0 ;
	setAttr ".pt[113]" -type "float3" 12.548085 0 0 ;
	setAttr -s 114 ".vt[0:113]"  524.97576904 1.28351021 341.9675293 527.84936523 4.68656778 346.19628906
		 532.24609375 9.68995762 349.017181396 537.49627686 15.53145504 350 529.6673584 15.93545151 349.021270752
		 523.02746582 16.35922813 346.20449829 518.5859375 16.73841476 341.97674561 517.015625 17.015634537 336.97680664
		 514.28771973 11.91211033 336.98684692 514.85491943 6.15313578 336.99060059 518.52606201 1.6798408 336.98684692
		 524.063720703 0 336.97680664 655.26037598 143.25990295 336.2366333 650 144.3062439 336.23046875
		 644.73962402 143.25990295 336.2366333 640.28015137 140.28016663 336.25408936 641.036682129 139.55673218 341.51452637
		 643.14953613 137.45549011 345.97406006 646.29699707 134.29637146 348.95376587 650 130.56033325 350
		 653.70300293 134.29637146 348.95376587 656.85046387 137.45549011 345.97406006 658.96331787 139.55673218 341.51452637
		 659.71984863 140.28016663 336.25408936 532.24609375 9.68995762 150.98278809 527.84936523 4.68656778 153.80371094
		 524.97576904 1.28351021 158.032470703 524.063720703 0 163.023193359 518.33013916 1.56817067 162.85638428
		 514.52960205 5.8180542 162.63244629 513.73016357 11.32553005 162.42248535 516.071350098 16.071361542 162.30047607
		 517.68457031 15.95712471 157.59912109 522.32653809 15.81424522 153.60516357 529.28405762 15.66474152 150.93566895
		 537.49627686 15.53145504 150 644.73956299 143.25987244 163.77197266 649.99987793 144.30621338 163.78112793
		 655.26031494 143.25987244 163.77197266 659.71984863 140.28016663 163.74591064 658.96331787 139.55673218 158.48547363
		 656.85046387 137.45549011 154.025939941 653.70300293 134.29637146 151.046203613 650 130.56033325 150
		 646.29699707 134.29637146 151.046203613 643.14953613 137.45549011 154.025939941 641.036682129 139.55673218 158.48547363
		 640.28015137 140.28016663 163.74591064 781.43218994 16.72566795 341.97027588 776.99365234 16.34165382 346.20050049
		 770.34655762 15.92227077 349.02053833 762.50372314 15.53145504 350 767.75390625 9.68995762 349.017181396
		 772.15063477 4.68656778 346.19628906 775.024230957 1.28351021 341.9675293 775.9362793 0 336.97680664
		 781.47393799 1.6798408 336.98684692 785.14508057 6.15313578 336.99060059 785.71228027 11.91211033 336.98684692
		 782.984375 17.015634537 336.97680664 775.024230957 1.28351021 158.032470703 772.15063477 4.68656778 153.80371094
		 767.75390625 9.68995762 150.98278809 762.50372314 15.53145504 150 770.34655762 15.92227077 150.97943115
		 776.99365234 16.34165382 153.79949951 781.43218994 16.72566795 158.029724121 782.984375 17.015634537 163.023193359
		 785.71228027 11.91211033 163.013183594 785.14508057 6.15313578 163.0093994141 781.47393799 1.6798408 163.013183594
		 775.9362793 0 163.023193359 519.75836182 2.51722622 341.49536133 523.026184082 5.56655693 345.8062439
		 526.038330078 10.77231503 348.37612915 520.23199463 12.3208313 345.81137085 515.76062012 12.17259216 341.49945068
		 515.81719971 6.54270172 340.8197937 518.82330322 7.78258562 344.53082275 655.11682129 142.40898132 340.987854
		 649.99993896 143.70149231 340.26577759 644.88311768 142.40898132 340.987854 646.293396 139.9954071 345.53396606
		 650 137.29055786 348.24472046 653.706604 139.9954071 345.53396606 650 141.79862976 344.17807007
		 525.77911377 10.60007477 151.58813477 522.83972168 5.46844435 154.15093994 519.55603027 2.42028356 158.40966797
		 515.47357178 6.24485064 158.92382813 515.19195557 11.67003727 158.12969971 519.74688721 11.94606876 154.016662598
		 518.49176025 7.53081036 155.32324219 644.88378906 142.40855408 159.017089844 650.00091552734 143.70077515 159.74206543
		 655.11761475 142.4082489 159.01739502 653.70733643 139.99479675 154.46813965 650.00036621094 137.29031372 151.75622559
		 646.29412842 139.99508667 154.46850586 650.0010986328 141.79788208 155.82623291 784.25036621 12.16530418 341.49508667
		 779.78234863 12.30895042 345.80841064 773.97094727 10.7640028 348.37567139 776.97961426 5.56263351 345.80548096
		 780.24591064 2.51515698 341.49398804 784.18920898 6.53848696 340.81695557 781.18591309 7.77532864 344.52844238
		 780.24591064 2.51515698 158.50598145 776.97961426 5.56263351 154.19451904 773.97094727 10.7640028 151.62432861
		 779.78234863 12.30895042 154.19158936 784.25036621 12.16530418 158.50488281 784.18920898 6.53848696 159.18304443
		 781.18591309 7.77532864 155.47155762;
	setAttr -s 225 ".ed";
	setAttr ".ed[0:165]"  3 2 1 2 52 1 52 51 1 51 3 1 2 1 1 1 53 1 53 52 1 1 0 1
		 0 54 1 54 53 1 0 11 1 11 55 1 55 54 1 7 6 1 6 16 1 16 15 1 15 7 1 6 5 1 5 17 1 17 16 1
		 5 4 1 4 18 1 18 17 1 4 3 1 3 19 1 19 18 1 11 10 1 10 28 1 28 27 1 27 11 1 10 9 1
		 9 29 1 29 28 1 9 8 1 8 30 1 30 29 1 8 7 1 7 31 1 31 30 1 15 14 1 14 36 1 36 47 1
		 47 15 1 14 13 1 13 37 1 37 36 1 13 12 1 12 38 1 38 37 1 12 23 1 23 39 1 39 38 1 23 22 1
		 22 48 1 48 59 1 59 23 1 22 21 1 21 49 1 49 48 1 21 20 1 20 50 1 50 49 1 20 19 1 19 51 1
		 51 50 1 27 26 1 26 60 1 60 71 1 71 27 1 26 25 1 25 61 1 61 60 1 25 24 1 24 62 1 62 61 1
		 24 35 1 35 63 1 63 62 1 35 34 1 34 44 1 44 43 1 43 35 1 34 33 1 33 45 1 45 44 1 33 32 1
		 32 46 1 46 45 1 32 31 1 31 47 1 47 46 1 43 42 1 42 64 1 64 63 1 63 43 1 42 41 1 41 65 1
		 65 64 1 41 40 1 40 66 1 66 65 1 40 39 1 39 67 1 67 66 1 59 58 1 58 68 1 68 67 1 67 59 1
		 58 57 1 57 69 1 69 68 1 57 56 1 56 70 1 70 69 1 56 55 1 55 71 1 71 70 1 0 72 1 72 10 1
		 1 73 1 73 72 1 2 74 1 74 73 1 4 74 1 5 75 1 75 74 1 6 76 1 76 75 1 8 76 1 9 77 1
		 77 76 1 72 77 1 73 78 1 78 77 1 75 78 1 12 79 1 79 22 1 13 80 1 80 79 1 14 81 1 81 80 1
		 16 81 1 17 82 1 82 81 1 18 83 1 83 82 1 20 83 1 21 84 1 84 83 1 79 84 1 80 85 1 85 84 1
		 82 85 1 24 86 1 86 34 1 25 87 1 87 86 1 26 88 1 88 87 1 28 88 1 29 89 1 89 88 1 30 90 1
		 90 89 1 32 90 1 33 91 1;
	setAttr ".ed[166:224]" 91 90 1 86 91 1 87 92 1 92 91 1 89 92 1 36 93 1 93 46 1
		 37 94 1 94 93 1 38 95 1 95 94 1 40 95 1 41 96 1 96 95 1 42 97 1 97 96 1 44 97 1 45 98 1
		 98 97 1 93 98 1 94 99 1 99 98 1 96 99 1 48 100 1 100 58 1 49 101 1 101 100 1 50 102 1
		 102 101 1 52 102 1 53 103 1 103 102 1 54 104 1 104 103 1 56 104 1 57 105 1 105 104 1
		 100 105 1 101 106 1 106 105 1 103 106 1 60 107 1 107 70 1 61 108 1 108 107 1 62 109 1
		 109 108 1 64 109 1 65 110 1 110 109 1 66 111 1 111 110 1 68 111 1 69 112 1 112 111 1
		 107 112 1 108 113 1 113 112 1 110 113 1;
	setAttr -s 113 -ch 450 ".fc[0:112]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 21 60 3
		f 4 4 5 6 -2
		mu 0 4 21 19 62 60
		f 4 7 8 9 -6
		mu 0 4 20 18 63 61
		f 4 10 11 12 -9
		mu 0 4 18 14 9 63
		f 4 13 14 15 16
		mu 0 4 1 24 32 11
		f 4 17 18 19 -15
		mu 0 4 24 23 33 32
		f 4 20 21 22 -19
		mu 0 4 23 22 34 33
		f 4 23 24 25 -22
		mu 0 4 22 0 2 34
		f 4 26 27 28 29
		mu 0 4 14 28 41 15
		f 4 30 31 32 -28
		mu 0 4 28 26 43 41
		f 4 33 34 35 -32
		mu 0 4 27 25 44 42
		f 4 36 37 38 -35
		mu 0 4 25 1 4 44
		f 4 39 40 41 42
		mu 0 4 11 31 48 5
		f 4 43 44 45 -41
		mu 0 4 31 30 49 48
		f 4 46 47 48 -45
		mu 0 4 30 29 50 49
		f 4 49 50 51 -48
		mu 0 4 29 16 7 50
		f 4 52 53 54 55
		mu 0 4 16 37 57 17
		f 4 56 57 58 -54
		mu 0 4 37 36 58 57
		f 4 59 60 61 -58
		mu 0 4 36 35 59 58
		f 4 62 63 64 -61
		mu 0 4 35 2 3 59
		f 4 65 66 67 68
		mu 0 4 15 40 68 10
		f 4 69 70 71 -67
		mu 0 4 40 39 69 68
		f 4 72 73 74 -71
		mu 0 4 39 38 70 69
		f 4 75 76 77 -74
		mu 0 4 38 12 6 70
		f 4 78 79 80 81
		mu 0 4 12 47 54 13
		f 4 82 83 84 -80
		mu 0 4 47 46 134 54
		f 4 85 86 87 -84
		mu 0 4 138 45 56 55
		f 4 88 89 90 -87
		mu 0 4 45 4 5 56
		f 4 91 92 93 94
		mu 0 4 13 53 71 6
		f 4 95 96 97 -93
		mu 0 4 53 52 130 71
		f 4 98 99 100 -97
		mu 0 4 135 51 73 72
		f 4 101 102 103 -100
		mu 0 4 51 7 8 73
		f 4 104 105 106 107
		mu 0 4 17 67 74 8
		f 4 108 109 110 -106
		mu 0 4 67 65 76 74
		f 4 111 112 113 -110
		mu 0 4 66 64 77 75
		f 4 114 115 116 -113
		mu 0 4 64 9 10 77
		f 3 -25 -4 -64
		mu 0 3 2 0 3
		f 4 -17 -43 -90 -38
		mu 0 4 1 11 5 4
		f 3 -82 -95 -77
		mu 0 3 12 13 6
		f 4 -30 -69 -116 -12
		mu 0 4 14 15 10 9
		f 4 -51 -56 -108 -103
		mu 0 4 7 16 17 8
		f 4 -27 -11 117 118
		mu 0 4 28 14 18 78
		f 4 -118 -8 119 120
		mu 0 4 78 18 20 80
		f 4 -120 -5 121 122
		mu 0 4 79 19 21 81
		f 4 -1 -24 123 -122
		mu 0 4 21 0 22 81
		f 4 -124 -21 124 125
		mu 0 4 81 22 23 82
		f 4 -125 -18 126 127
		mu 0 4 82 23 24 83
		f 4 -14 -37 128 -127
		mu 0 4 24 1 25 83
		f 4 -129 -34 129 130
		mu 0 4 83 25 27 85
		f 4 -130 -31 -119 131
		mu 0 4 84 26 28 78
		f 4 -132 -121 132 133
		mu 0 4 84 78 80 87
		f 4 -123 -126 134 -133
		mu 0 4 79 81 82 86
		f 4 -128 -131 -134 -135
		mu 0 4 82 83 85 86
		f 4 -53 -50 135 136
		mu 0 4 37 16 29 88
		f 4 -136 -47 137 138
		mu 0 4 88 29 30 89
		f 4 -138 -44 139 140
		mu 0 4 89 30 31 90
		f 4 -40 -16 141 -140
		mu 0 4 31 11 32 90
		f 4 -142 -20 142 143
		mu 0 4 90 32 33 91
		f 4 -143 -23 144 145
		mu 0 4 91 33 34 92
		f 4 -26 -63 146 -145
		mu 0 4 34 2 35 92
		f 4 -147 -60 147 148
		mu 0 4 92 35 36 93
		f 4 -148 -57 -137 149
		mu 0 4 93 36 37 88
		f 4 -150 -139 150 151
		mu 0 4 93 88 89 94
		f 4 -141 -144 152 -151
		mu 0 4 89 90 91 94
		f 4 -146 -149 -152 -153
		mu 0 4 91 92 93 94
		f 4 -79 -76 153 154
		mu 0 4 47 12 38 95
		f 4 -154 -73 155 156
		mu 0 4 95 38 39 96
		f 4 -156 -70 157 158
		mu 0 4 96 39 40 97
		f 4 -66 -29 159 -158
		mu 0 4 40 15 41 97
		f 4 -160 -33 160 161
		mu 0 4 97 41 43 99
		f 4 -161 -36 162 163
		mu 0 4 98 42 44 100
		f 4 -39 -89 164 -163
		mu 0 4 44 4 45 100
		f 4 -165 -86 165 166
		mu 0 4 100 45 138 137
		f 4 -166 -83 -155 167
		mu 0 4 101 46 47 95
		f 4 -168 -157 168 169
		mu 0 4 101 95 96 102
		f 4 -159 -162 170 -169
		mu 0 4 96 97 99 102
		f 4 -164 -167 -170 -171
		mu 0 4 98 100 137 136
		f 4 -91 -42 171 172
		mu 0 4 56 5 48 103
		f 4 -172 -46 173 174
		mu 0 4 103 48 49 104
		f 4 -174 -49 175 176
		mu 0 4 104 49 50 105
		f 4 -52 -102 177 -176
		mu 0 4 50 7 51 105
		f 4 -178 -99 178 179
		mu 0 4 105 51 135 131
		f 4 -179 -96 180 181
		mu 0 4 106 52 53 107
		f 4 -92 -81 182 -181
		mu 0 4 53 13 54 107
		f 4 -183 -85 183 184
		mu 0 4 107 54 134 133
		f 4 -184 -88 -173 185
		mu 0 4 108 55 56 103
		f 4 -186 -175 186 187
		mu 0 4 108 103 104 109
		f 4 -177 -180 188 -187
		mu 0 4 104 105 131 109
		f 4 -182 -185 -188 -189
		mu 0 4 106 107 133 132
		f 4 -105 -55 189 190
		mu 0 4 67 17 57 110
		f 4 -190 -59 191 192
		mu 0 4 110 57 58 111
		f 4 -192 -62 193 194
		mu 0 4 111 58 59 112
		f 4 -65 -3 195 -194
		mu 0 4 59 3 60 112
		f 4 -196 -7 196 197
		mu 0 4 112 60 62 114
		f 4 -197 -10 198 199
		mu 0 4 113 61 63 115
		f 4 -13 -115 200 -199
		mu 0 4 63 9 64 115
		f 4 -201 -112 201 202
		mu 0 4 115 64 66 117
		f 4 -202 -109 -191 203
		mu 0 4 116 65 67 110
		f 4 -204 -193 204 205
		mu 0 4 116 110 111 118
		f 4 -195 -198 206 -205
		mu 0 4 111 112 114 118
		f 4 -200 -203 -206 -207
		mu 0 4 113 115 117 119
		f 4 -117 -68 207 208
		mu 0 4 77 10 68 120
		f 4 -208 -72 209 210
		mu 0 4 120 68 69 121
		f 4 -210 -75 211 212
		mu 0 4 121 69 70 122
		f 4 -78 -94 213 -212
		mu 0 4 70 6 71 122
		f 4 -214 -98 214 215
		mu 0 4 122 71 130 128
		f 4 -215 -101 216 217
		mu 0 4 123 72 73 124
		f 4 -104 -107 218 -217
		mu 0 4 73 8 74 124
		f 4 -219 -111 219 220
		mu 0 4 124 74 76 126
		f 4 -220 -114 -209 221
		mu 0 4 125 75 77 120
		f 4 -222 -211 222 223
		mu 0 4 125 120 121 127
		f 4 -213 -216 224 -223
		mu 0 4 121 122 128 127
		f 4 -218 -221 -224 -225
		mu 0 4 123 124 126 129;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LargeCube" -p "BlocksRound";
	rename -uid "50B5C130-477A-8954-CD5B-3C81CD50EE3D";
	setAttr ".rp" -type "double3" 1000 0 250 ;
	setAttr ".sp" -type "double3" 1000 0 250 ;
createNode mesh -n "LargeCubeShape" -p "|BlocksRound|LargeCube";
	rename -uid "6109A45E-4E26-DDDC-5A8D-8D8B198D1DF4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 12 "f[34:37]" "f[40:41]" "f[46:47]" "f[50]" "f[102:103]" "f[110:111]" "f[116:118]" "f[124]" "f[131:133]" "f[137]" "f[143:145]" "f[149]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 13 "f[0:1]" "f[6:7]" "f[14:15]" "f[44:45]" "f[51]" "f[56:58]" "f[64]" "f[66:67]" "f[74:75]" "f[126:127]" "f[134:135]" "f[140:142]" "f[148]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 13 "f[4:5]" "f[10:11]" "f[16:17]" "f[26:27]" "f[48]" "f[59:61]" "f[65]" "f[71:73]" "f[77]" "f[83:85]" "f[89]" "f[95:97]" "f[101]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 12 "f[2:3]" "f[8:9]" "f[20:21]" "f[32:33]" "f[53:55]" "f[62:63]" "f[80:82]" "f[88]" "f[104:106]" "f[112]" "f[128:130]" "f[136]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 13 "f[12:13]" "f[18:19]" "f[30:31]" "f[42:43]" "f[52]" "f[68:70]" "f[76]" "f[90:91]" "f[98:99]" "f[114:115]" "f[122:123]" "f[138:139]" "f[146:147]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 12 "f[22:25]" "f[28:29]" "f[38:39]" "f[49]" "f[78:79]" "f[86:87]" "f[92:94]" "f[100]" "f[107:109]" "f[113]" "f[119:121]" "f[125]";
	setAttr ".pv" -type "double2" 0.18375053629279137 0.24202937539666891 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 186 ".uvst[0].uvsp[0:185]" -type "float2" 0.38354236 0.98239529
		 0.38730595 0.017626226 0.60375744 0.98241007 0.6414696 0.019060284 0.39034477 0.23476121
		 0.60616696 0.2366724 0.63528907 0.23813474 0.137371 0.02474016 0.38665152 0.483854
		 0.60587323 0.48520786 0.85172939 0.25000948 0.86262393 0.029345244 0.6036272 0.76406169
		 0.38521487 0.73268479 0.60393095 0.73421091 0.61099815 0.017560035 0.38916534 0.26449227
		 0.60682303 0.2664575 0.38646346 0.51370049 0.60566074 0.51505846 0.38509801 0.76256561
		 0.35684398 0.01844281 0.36116925 0.23641533 0.14272043 0.24475235 0.35695195 0.010905921
		 0.36845839 0.98233235 0.35714418 0.003380239 0.37600237 0.98230958 0.38346636 0.98992133
		 0.38664824 0.0025458336 0.3832826 0.99744761 0.38702148 0.010081232 0.37968004 0.017875046
		 0.37206152 0.01809743 0.36444986 0.018289983 0.61129403 0.98238742 0.64144111 0.0039710701
		 0.61882478 0.98246634 0.64150316 0.011513561 0.63385463 0.018740833 0.62623769 0.018380076
		 0.61861777 0.017986208 0.6112994 0.010035753 0.60403943 0.99747646 0.61167872 0.0025236309
		 0.60384142 0.98993981 0.38161993 0.26409489 0.36266989 0.25145131 0.37410179 0.26362234
		 0.36186731 0.24394426 0.36847228 0.23598382 0.37576318 0.2355586 0.3830485 0.23511752
		 0.39009267 0.2422092 0.38976604 0.24963737 0.38946158 0.25706309 0.63447285 0.24565881
		 0.62193078 0.2657885 0.63356447 0.25314474 0.61438715 0.2661581 0.60666186 0.25900775
		 0.60648996 0.2515642 0.60629272 0.24412265 0.61344934 0.2369765 0.62072021 0.23736909
		 0.62799799 0.23774675 0.37892491 0.51340538 0.12767634 0.24547836 0.37140614 0.51302105
		 0.13520196 0.24506259 0.14309543 0.25228155 0.37155479 0.48423588 0.14336696 0.25980836
		 0.37909764 0.48399812 0.38667673 0.49131703 0.38665316 0.49877918 0.3865841 0.50624037
		 0.85923344 0.25052023 0.62075269 0.51457286 0.86673445 0.25114122 0.61321229 0.5148617
		 0.60564071 0.50759298 0.60567153 0.50012946 0.60574752 0.49266768 0.61341423 0.48546714
		 0.85085928 0.26507878 0.62093461 0.48581463 0.85124564 0.25754201 0.37756979 0.7621913
		 0.13684776 0.0096630752 0.37005672 0.7617141 0.13716233 0.017200857 0.12984186 0.024877846
		 0.37012497 0.73316813 0.12231201 0.024903744 0.37766486 0.73287976 0.38526732 0.74015617
		 0.38526434 0.74762672 0.38521007 0.75509655 0.86296034 0.021820635 0.61869895 0.76331681
		 0.86340821 0.01430425 0.61116773 0.76373911 0.60361946 0.75659382 0.60367018 0.74912983
		 0.60377258 0.7416687 0.61146677 0.7345019 0.87768799 0.029926002 0.6189847 0.73488468
		 0.87015104 0.029691011 0.36410874 0.01158461 0.3691901 0.98852521 0.36424199 0.004132688
		 0.37673479 0.98902673 0.37942228 0.0036725104 0.3770372 0.99656332 0.37982649 0.011131346
		 0.37197155 0.012362957 0.37074226 0.99483728 0.37184536 0.0060692728 0.61055428 0.9890914
		 0.63430327 0.0045757592 0.61808932 0.98863411 0.63431126 0.012031645 0.62641007 0.012635887
		 0.61853397 0.011231124 0.61024648 0.99662173 0.6189971 0.0037740171 0.62661934 0.0063380301
		 0.61652923 0.994928 0.38252938 0.2569744 0.36951056 0.25048125 0.3749786 0.25645411
		 0.36876237 0.24292305 0.37613577 0.24167237 0.38343576 0.24189904 0.38373321 0.24936453
		 0.37686282 0.24868029 0.6276086 0.24469462 0.62117189 0.25853682 0.62678188 0.2522518
		 0.61361045 0.25897372 0.61254394 0.25129825 0.6129626 0.24379101 0.6202631 0.24351975
		 0.61943942 0.25059372 0.37985235 0.50639689 0.12879938 0.25172693 0.37239701 0.50603592
		 0.1363475 0.25177449 0.37246954 0.49126333 0.13713807 0.25930285 0.37993833 0.49103034
		 0.38091046 0.49872428 0.13076478 0.25797325 0.3746134 0.49867195 0.85797995 0.25719154
		 0.61983562 0.50757784 0.86551452 0.25732023 0.61237234 0.5078432 0.61141253 0.50015879
		 0.61248308 0.49248248 0.85706341 0.26469761 0.61994278 0.49281806 0.61770892 0.5001905
		 0.86344337 0.26350671 0.37850454 0.7552157 0.13070315 0.010596901 0.37106407 0.75479639
		 0.13048351 0.018143207 0.37108266 0.74015599 0.12296665 0.018683314 0.37854567 0.73988914
		 0.37954557 0.74756587 0.12446016 0.012354493 0.37326509 0.74750477 0.86963129 0.022923261
		 0.61776531 0.75642359 0.86954808 0.015365541 0.61032045 0.75677574 0.60938448 0.74913418
		 0.61049032 0.74148619 0.87714249 0.023640692 0.61794525 0.74184155 0.61566329 0.7491411
		 0.87576449 0.017260164;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 152 ".vt[0:151]"  901.1416626 9.25882244 335.0014953613 904.39294434 4.39295912 335.0014953613
		 909.25878906 1.14169288 335.0014953613 914.99847412 0 335.0014953613 914.99847412 1.14169288 340.74118042
		 914.99847412 4.39295912 345.60702515 914.99847412 9.25882244 348.85830688 914.99847412 14.99849987 350
		 909.25878906 14.99849987 348.85830688 904.39294434 14.99849987 345.60702515 901.1416626 14.99849987 340.74118042
		 900 14.99849987 335.0014953613 1090.74121094 1.14169288 335.0014953613 1095.60705566 4.39295912 335.0014953613
		 1098.85827637 9.25882244 335.0014953613 1100 14.99849987 335.0014953613 1098.85827637 14.99849987 340.74118042
		 1095.60705566 14.99849987 345.60702515 1090.74121094 14.99849987 348.85830688 1085.0014648438 14.99849987 350
		 1085.0014648438 9.25882244 348.85830688 1085.0014648438 4.39295912 345.60702515 1085.0014648438 1.14169288 340.74118042
		 1085.0014648438 0 335.0014953613 909.25878906 198.85830688 335.0014953613 904.39294434 195.60704041 335.0014953613
		 901.1416626 190.74118042 335.0014953613 900 185.0014953613 335.0014953613 901.1416626 185.0014953613 340.74118042
		 904.39294434 185.0014953613 345.60702515 909.25878906 185.0014953613 348.85830688
		 914.99847412 185.0014953613 350 914.99847412 190.74118042 348.85830688 914.99847412 195.60704041 345.60702515
		 914.99847412 198.85830688 340.74118042 914.99847412 200 335.0014953613 1098.85827637 190.74118042 335.0014953613
		 1095.60705566 195.60704041 335.0014953613 1090.74121094 198.85830688 335.0014953613
		 1085.0014648438 200 335.0014953613 1085.0014648438 198.85830688 340.74118042 1085.0014648438 195.60704041 345.60702515
		 1085.0014648438 190.74118042 348.85830688 1085.0014648438 185.0014953613 350 1090.74121094 185.0014953613 348.85830688
		 1095.60705566 185.0014953613 345.60702515 1098.85827637 185.0014953613 340.74118042
		 1100 185.0014953613 335.0014953613 909.25878906 185.0014953613 151.1416626 904.39294434 185.0014953613 154.39294434
		 901.1416626 185.0014953613 159.25878906 900 185.0014953613 164.99847412 901.1416626 190.74118042 164.99847412
		 904.39294434 195.60704041 164.99847412 909.25878906 198.85830688 164.99847412 914.99847412 200 164.99847412
		 914.99847412 198.85830688 159.25878906 914.99847412 195.60704041 154.39294434 914.99847412 190.74118042 151.1416626
		 914.99847412 185.0014953613 150 1098.85827637 185.0014953613 159.25878906 1095.60705566 185.0014953613 154.39294434
		 1090.74121094 185.0014953613 151.1416626 1085.0014648438 185.0014953613 150 1085.0014648438 190.74118042 151.1416626
		 1085.0014648438 195.60704041 154.39294434 1085.0014648438 198.85830688 159.25878906
		 1085.0014648438 200 164.99847412 1090.74121094 198.85830688 164.99847412 1095.60705566 195.60704041 164.99847412
		 1098.85827637 190.74118042 164.99847412 1100 185.0014953613 164.99847412 909.25878906 1.14169288 164.99847412
		 904.39294434 4.39295912 164.99847412 901.1416626 9.25882244 164.99847412 900 14.99849987 164.99847412
		 901.1416626 14.99849987 159.25878906 904.39294434 14.99849987 154.39294434 909.25878906 14.99849987 151.1416626
		 914.99847412 14.99849987 150 914.99847412 9.25882244 151.1416626 914.99847412 4.39295912 154.39294434
		 914.99847412 1.14169288 159.25878906 914.99847412 0 164.99847412 1098.85827637 9.25882244 164.99847412
		 1095.60705566 4.39295912 164.99847412 1090.74121094 1.14169288 164.99847412 1085.0014648438 0 164.99847412
		 1085.0014648438 1.14169288 159.25878906 1085.0014648438 4.39295912 154.39294434 1085.0014648438 9.25882244 151.1416626
		 1085.0014648438 14.99849987 150 1090.74121094 14.99849987 151.1416626 1095.60705566 14.99849987 154.39294434
		 1098.85827637 14.99849987 159.25878906 1100 14.99849987 164.99847412 901.9128418 9.82150841 340.17849731
		 904.86743164 4.86746407 339.39682007 909.82147217 1.91285253 340.17849731 910.60314941 4.86746407 345.13253784
		 909.82147217 9.82150841 348.087158203 904.86743164 10.60316753 345.13253784 906.34210205 6.34213638 343.65786743
		 1090.1784668 1.91285253 340.17849731 1095.13256836 4.86746407 339.39682007 1098.087158203 9.82150841 340.17849731
		 1095.13256836 10.60316753 345.13253784 1090.1784668 9.82150841 348.087158203 1089.39685059 4.86746407 345.13253784
		 1093.65783691 6.34213638 343.65786743 909.82147217 198.087142944 340.17849731 904.86743164 195.13253784 339.39682007
		 901.9128418 190.17848206 340.17849731 904.86743164 189.39683533 345.13253784 909.82147217 190.17848206 348.087158203
		 910.60314941 195.13253784 345.13253784 906.34210205 193.65786743 343.65786743 1098.087158203 190.17848206 340.17849731
		 1095.13256836 195.13253784 339.39682007 1090.1784668 198.087142944 340.17849731 1089.39685059 195.13253784 345.13253784
		 1090.1784668 190.17848206 348.087158203 1095.13256836 189.39683533 345.13253784 1093.65783691 193.65786743 343.65786743
		 909.82147217 190.17848206 151.9128418 904.86743164 189.39683533 154.86743164 901.9128418 190.17848206 159.82147217
		 904.86743164 195.13253784 160.60314941 909.82147217 198.087142944 159.82147217 910.60314941 195.13253784 154.86743164
		 906.34210205 193.65786743 156.34210205 1098.087158203 190.17848206 159.82147217 1095.13256836 189.39683533 154.86743164
		 1090.1784668 190.17848206 151.9128418 1089.39685059 195.13253784 154.86743164 1090.1784668 198.087142944 159.82147217
		 1095.13256836 195.13253784 160.60314941 1093.65783691 193.65786743 156.34210205 909.82147217 1.91285253 159.82147217
		 904.86743164 4.86746407 160.60314941 901.9128418 9.82150841 159.82147217 904.86743164 10.60316753 154.86743164
		 909.82147217 9.82150841 151.9128418 910.60314941 4.86746407 154.86743164 906.34210205 6.34213638 156.34210205
		 1098.087158203 9.82150841 159.82147217 1095.13256836 4.86746407 160.60314941 1090.1784668 1.91285253 159.82147217
		 1089.39685059 4.86746407 154.86743164 1090.1784668 9.82150841 151.9128418 1095.13256836 10.60316753 154.86743164
		 1093.65783691 6.34213638 156.34210205;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  3 2 1 2 72 1 72 83 1 83 3 1 2 1 1 1 73 1 73 72 1 1 0 1
		 0 74 1 74 73 1 0 11 1 11 75 1 75 74 1 7 6 1 6 20 1 20 19 1 19 7 1 6 5 1 5 21 1 21 20 1
		 5 4 1 4 22 1 22 21 1 4 3 1 3 23 1 23 22 1 11 10 1 10 28 1 28 27 1 27 11 1 10 9 1
		 9 29 1 29 28 1 9 8 1 8 30 1 30 29 1 8 7 1 7 31 1 31 30 1 15 14 1 14 84 1 84 95 1
		 95 15 1 14 13 1 13 85 1 85 84 1 13 12 1 12 86 1 86 85 1 12 23 1 23 87 1 87 86 1 19 18 1
		 18 44 1 44 43 1 43 19 1 18 17 1 17 45 1 45 44 1 17 16 1 16 46 1 46 45 1 16 15 1 15 47 1
		 47 46 1 27 26 1 26 52 1 52 51 1 51 27 1 26 25 1 25 53 1 53 52 1 25 24 1 24 54 1 54 53 1
		 24 35 1 35 55 1 55 54 1 35 34 1 34 40 1 40 39 1 39 35 1 34 33 1 33 41 1 41 40 1 33 32 1
		 32 42 1 42 41 1 32 31 1 31 43 1 43 42 1 39 38 1 38 68 1 68 67 1 67 39 1 38 37 1 37 69 1
		 69 68 1 37 36 1 36 70 1 70 69 1 36 47 1 47 71 1 71 70 1 51 50 1 50 76 1 76 75 1 75 51 1
		 50 49 1 49 77 1 77 76 1 49 48 1 48 78 1 78 77 1 48 59 1 59 79 1 79 78 1 59 58 1 58 64 1
		 64 63 1 63 59 1 58 57 1 57 65 1 65 64 1 57 56 1 56 66 1 66 65 1 56 55 1 55 67 1 67 66 1
		 63 62 1 62 92 1 92 91 1 91 63 1 62 61 1 61 93 1 93 92 1 61 60 1 60 94 1 94 93 1 60 71 1
		 71 95 1 95 94 1 83 82 1 82 88 1 88 87 1 87 83 1 82 81 1 81 89 1 89 88 1 81 80 1 80 90 1
		 90 89 1 80 79 1 79 91 1 91 90 1 0 96 1 96 10 1 1 97 1 97 96 1 2 98 1 98 97 1 4 98 1
		 5 99 1 99 98 1 6 100 1;
	setAttr ".ed[166:299]" 100 99 1 8 100 1 9 101 1 101 100 1 96 101 1 97 102 1
		 102 101 1 99 102 1 12 103 1 103 22 1 13 104 1 104 103 1 14 105 1 105 104 1 16 105 1
		 17 106 1 106 105 1 18 107 1 107 106 1 20 107 1 21 108 1 108 107 1 103 108 1 104 109 1
		 109 108 1 106 109 1 24 110 1 110 34 1 25 111 1 111 110 1 26 112 1 112 111 1 28 112 1
		 29 113 1 113 112 1 30 114 1 114 113 1 32 114 1 33 115 1 115 114 1 110 115 1 111 116 1
		 116 115 1 113 116 1 36 117 1 117 46 1 37 118 1 118 117 1 38 119 1 119 118 1 40 119 1
		 41 120 1 120 119 1 42 121 1 121 120 1 44 121 1 45 122 1 122 121 1 117 122 1 118 123 1
		 123 122 1 120 123 1 48 124 1 124 58 1 49 125 1 125 124 1 50 126 1 126 125 1 52 126 1
		 53 127 1 127 126 1 54 128 1 128 127 1 56 128 1 57 129 1 129 128 1 124 129 1 125 130 1
		 130 129 1 127 130 1 60 131 1 131 70 1 61 132 1 132 131 1 62 133 1 133 132 1 64 133 1
		 65 134 1 134 133 1 66 135 1 135 134 1 68 135 1 69 136 1 136 135 1 131 136 1 132 137 1
		 137 136 1 134 137 1 72 138 1 138 82 1 73 139 1 139 138 1 74 140 1 140 139 1 76 140 1
		 77 141 1 141 140 1 78 142 1 142 141 1 80 142 1 81 143 1 143 142 1 138 143 1 139 144 1
		 144 143 1 141 144 1 84 145 1 145 94 1 85 146 1 146 145 1 86 147 1 147 146 1 88 147 1
		 89 148 1 148 147 1 90 149 1 149 148 1 92 149 1 93 150 1 150 149 1 145 150 1 146 151 1
		 151 150 1 148 151 1;
	setAttr -s 150 -ch 600 ".fc[0:149]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 27 88 20
		f 4 4 5 6 -2
		mu 0 4 27 25 90 88
		f 4 7 8 9 -6
		mu 0 4 26 24 91 89
		f 4 10 11 12 -9
		mu 0 4 24 21 7 91
		f 4 13 14 15 16
		mu 0 4 1 31 42 15
		f 4 17 18 19 -15
		mu 0 4 31 29 44 42
		f 4 20 21 22 -19
		mu 0 4 30 28 45 43
		f 4 23 24 25 -22
		mu 0 4 28 0 2 45
		f 4 26 27 28 29
		mu 0 4 21 34 50 22
		f 4 30 31 32 -28
		mu 0 4 34 33 51 50
		f 4 33 34 35 -32
		mu 0 4 33 32 52 51
		f 4 36 37 38 -35
		mu 0 4 32 1 4 52
		f 4 39 40 41 42
		mu 0 4 3 38 99 11
		f 4 43 44 45 -41
		mu 0 4 38 36 101 99
		f 4 46 47 48 -45
		mu 0 4 37 35 102 100
		f 4 49 50 51 -48
		mu 0 4 35 2 12 102
		f 4 52 53 54 55
		mu 0 4 15 41 63 5
		f 4 56 57 58 -54
		mu 0 4 41 40 64 63
		f 4 59 60 61 -58
		mu 0 4 40 39 65 64
		f 4 62 63 64 -61
		mu 0 4 39 3 6 65
		f 4 65 66 67 68
		mu 0 4 22 49 70 23
		f 4 69 70 71 -67
		mu 0 4 49 47 72 70
		f 4 72 73 74 -71
		mu 0 4 48 46 73 71
		f 4 75 76 77 -74
		mu 0 4 46 16 8 73
		f 4 78 79 80 81
		mu 0 4 16 55 60 17
		f 4 82 83 84 -80
		mu 0 4 55 54 61 60
		f 4 85 86 87 -84
		mu 0 4 54 53 62 61
		f 4 88 89 90 -87
		mu 0 4 53 4 5 62
		f 4 91 92 93 94
		mu 0 4 17 59 84 9
		f 4 95 96 97 -93
		mu 0 4 59 57 86 84
		f 4 98 99 100 -97
		mu 0 4 58 56 87 85
		f 4 101 102 103 -100
		mu 0 4 56 6 10 87
		f 4 104 105 106 107
		mu 0 4 23 69 92 7
		f 4 108 109 110 -106
		mu 0 4 69 67 94 92
		f 4 111 112 113 -110
		mu 0 4 68 66 95 93
		f 4 114 115 116 -113
		mu 0 4 66 18 13 95
		f 4 117 118 119 120
		mu 0 4 18 76 81 19
		f 4 121 122 123 -119
		mu 0 4 76 75 82 81
		f 4 124 125 126 -123
		mu 0 4 75 74 83 82
		f 4 127 128 129 -126
		mu 0 4 74 8 9 83
		f 4 130 131 132 133
		mu 0 4 19 80 106 14
		f 4 134 135 136 -132
		mu 0 4 80 78 108 106
		f 4 137 138 139 -136
		mu 0 4 79 77 109 107
		f 4 140 141 142 -139
		mu 0 4 77 10 11 109
		f 4 143 144 145 146
		mu 0 4 20 98 103 12
		f 4 147 148 149 -145
		mu 0 4 98 97 104 103
		f 4 150 151 152 -149
		mu 0 4 97 96 105 104
		f 4 153 154 155 -152
		mu 0 4 96 13 14 105
		f 4 -17 -56 -90 -38
		mu 0 4 1 15 5 4
		f 4 -82 -95 -129 -77
		mu 0 4 16 17 9 8
		f 4 -121 -134 -155 -116
		mu 0 4 18 19 14 13
		f 4 -147 -51 -25 -4
		mu 0 4 20 12 2 0
		f 4 -43 -142 -103 -64
		mu 0 4 3 11 10 6
		f 4 -12 -30 -69 -108
		mu 0 4 7 21 22 23
		f 4 -27 -11 156 157
		mu 0 4 34 21 24 110
		f 4 -157 -8 158 159
		mu 0 4 110 24 26 112
		f 4 -159 -5 160 161
		mu 0 4 111 25 27 113
		f 4 -1 -24 162 -161
		mu 0 4 27 0 28 113
		f 4 -163 -21 163 164
		mu 0 4 113 28 30 115
		f 4 -164 -18 165 166
		mu 0 4 114 29 31 116
		f 4 -14 -37 167 -166
		mu 0 4 31 1 32 116
		f 4 -168 -34 168 169
		mu 0 4 116 32 33 117
		f 4 -169 -31 -158 170
		mu 0 4 117 33 34 110
		f 4 -171 -160 171 172
		mu 0 4 117 110 112 119
		f 4 -162 -165 173 -172
		mu 0 4 111 113 115 118
		f 4 -167 -170 -173 -174
		mu 0 4 114 116 117 119
		f 4 -26 -50 174 175
		mu 0 4 45 2 35 120
		f 4 -175 -47 176 177
		mu 0 4 120 35 37 122
		f 4 -177 -44 178 179
		mu 0 4 121 36 38 123
		f 4 -40 -63 180 -179
		mu 0 4 38 3 39 123
		f 4 -181 -60 181 182
		mu 0 4 123 39 40 124
		f 4 -182 -57 183 184
		mu 0 4 124 40 41 125
		f 4 -53 -16 185 -184
		mu 0 4 41 15 42 125
		f 4 -186 -20 186 187
		mu 0 4 125 42 44 127
		f 4 -187 -23 -176 188
		mu 0 4 126 43 45 120
		f 4 -189 -178 189 190
		mu 0 4 126 120 122 129
		f 4 -180 -183 191 -190
		mu 0 4 121 123 124 128
		f 4 -185 -188 -191 -192
		mu 0 4 124 125 127 128
		f 4 -79 -76 192 193
		mu 0 4 55 16 46 130
		f 4 -193 -73 194 195
		mu 0 4 130 46 48 132
		f 4 -195 -70 196 197
		mu 0 4 131 47 49 133
		f 4 -66 -29 198 -197
		mu 0 4 49 22 50 133
		f 4 -199 -33 199 200
		mu 0 4 133 50 51 134
		f 4 -200 -36 201 202
		mu 0 4 134 51 52 135
		f 4 -39 -89 203 -202
		mu 0 4 52 4 53 135
		f 4 -204 -86 204 205
		mu 0 4 135 53 54 136
		f 4 -205 -83 -194 206
		mu 0 4 136 54 55 130
		f 4 -207 -196 207 208
		mu 0 4 136 130 132 137
		f 4 -198 -201 209 -208
		mu 0 4 131 133 134 137
		f 4 -203 -206 -209 -210
		mu 0 4 134 135 136 137
		f 4 -65 -102 210 211
		mu 0 4 65 6 56 138
		f 4 -211 -99 212 213
		mu 0 4 138 56 58 140
		f 4 -213 -96 214 215
		mu 0 4 139 57 59 141
		f 4 -92 -81 216 -215
		mu 0 4 59 17 60 141
		f 4 -217 -85 217 218
		mu 0 4 141 60 61 142
		f 4 -218 -88 219 220
		mu 0 4 142 61 62 143
		f 4 -91 -55 221 -220
		mu 0 4 62 5 63 143
		f 4 -222 -59 222 223
		mu 0 4 143 63 64 144
		f 4 -223 -62 -212 224
		mu 0 4 144 64 65 138
		f 4 -225 -214 225 226
		mu 0 4 144 138 140 145
		f 4 -216 -219 227 -226
		mu 0 4 139 141 142 145
		f 4 -221 -224 -227 -228
		mu 0 4 142 143 144 145
		f 4 -118 -115 228 229
		mu 0 4 76 18 66 146
		f 4 -229 -112 230 231
		mu 0 4 146 66 68 148
		f 4 -231 -109 232 233
		mu 0 4 147 67 69 149
		f 4 -105 -68 234 -233
		mu 0 4 69 23 70 149
		f 4 -235 -72 235 236
		mu 0 4 149 70 72 151
		f 4 -236 -75 237 238
		mu 0 4 150 71 73 152
		f 4 -78 -128 239 -238
		mu 0 4 73 8 74 152
		f 4 -240 -125 240 241
		mu 0 4 152 74 75 153
		f 4 -241 -122 -230 242
		mu 0 4 153 75 76 146
		f 4 -243 -232 243 244
		mu 0 4 153 146 148 155
		f 4 -234 -237 245 -244
		mu 0 4 147 149 151 154
		f 4 -239 -242 -245 -246
		mu 0 4 150 152 153 155
		f 4 -104 -141 246 247
		mu 0 4 87 10 77 156
		f 4 -247 -138 248 249
		mu 0 4 156 77 79 158
		f 4 -249 -135 250 251
		mu 0 4 157 78 80 159
		f 4 -131 -120 252 -251
		mu 0 4 80 19 81 159
		f 4 -253 -124 253 254
		mu 0 4 159 81 82 160
		f 4 -254 -127 255 256
		mu 0 4 160 82 83 161
		f 4 -130 -94 257 -256
		mu 0 4 83 9 84 161
		f 4 -258 -98 258 259
		mu 0 4 161 84 86 163
		f 4 -259 -101 -248 260
		mu 0 4 162 85 87 156
		f 4 -261 -250 261 262
		mu 0 4 162 156 158 165
		f 4 -252 -255 263 -262
		mu 0 4 157 159 160 164
		f 4 -257 -260 -263 -264
		mu 0 4 160 161 163 164
		f 4 -144 -3 264 265
		mu 0 4 98 20 88 166
		f 4 -265 -7 266 267
		mu 0 4 166 88 90 168
		f 4 -267 -10 268 269
		mu 0 4 167 89 91 169
		f 4 -13 -107 270 -269
		mu 0 4 91 7 92 169
		f 4 -271 -111 271 272
		mu 0 4 169 92 94 171
		f 4 -272 -114 273 274
		mu 0 4 170 93 95 172
		f 4 -117 -154 275 -274
		mu 0 4 95 13 96 172
		f 4 -276 -151 276 277
		mu 0 4 172 96 97 173
		f 4 -277 -148 -266 278
		mu 0 4 173 97 98 166
		f 4 -279 -268 279 280
		mu 0 4 173 166 168 175
		f 4 -270 -273 281 -280
		mu 0 4 167 169 171 174
		f 4 -275 -278 -281 -282
		mu 0 4 170 172 173 175
		f 4 -143 -42 282 283
		mu 0 4 109 11 99 176
		f 4 -283 -46 284 285
		mu 0 4 176 99 101 178
		f 4 -285 -49 286 287
		mu 0 4 177 100 102 179
		f 4 -52 -146 288 -287
		mu 0 4 102 12 103 179
		f 4 -289 -150 289 290
		mu 0 4 179 103 104 180
		f 4 -290 -153 291 292
		mu 0 4 180 104 105 181
		f 4 -156 -133 293 -292
		mu 0 4 105 14 106 181
		f 4 -294 -137 294 295
		mu 0 4 181 106 108 183
		f 4 -295 -140 -284 296
		mu 0 4 182 107 109 176
		f 4 -297 -286 297 298
		mu 0 4 182 176 178 185
		f 4 -288 -291 299 -298
		mu 0 4 177 179 180 184
		f 4 -293 -296 -299 -300
		mu 0 4 180 181 183 184;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "StretchCube" -p "BlocksRound";
	rename -uid "1CC799F3-42BA-6D83-7C42-C2BFA7821798";
	setAttr ".rp" -type "double3" 1400 0 150 ;
	setAttr ".sp" -type "double3" 1400 0 150 ;
createNode mesh -n "StretchCubeShape" -p "|BlocksRound|StretchCube";
	rename -uid "5BEA672F-4762-E341-6D9A-B3ABEF27B65D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 12 "f[34:37]" "f[40:41]" "f[46:47]" "f[50]" "f[102:103]" "f[110:111]" "f[116:118]" "f[124]" "f[131:133]" "f[137]" "f[143:145]" "f[149]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 13 "f[0:1]" "f[6:7]" "f[14:15]" "f[44:45]" "f[51]" "f[56:58]" "f[64]" "f[66:67]" "f[74:75]" "f[126:127]" "f[134:135]" "f[140:142]" "f[148]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 13 "f[4:5]" "f[10:11]" "f[16:17]" "f[26:27]" "f[48]" "f[59:61]" "f[65]" "f[71:73]" "f[77]" "f[83:85]" "f[89]" "f[95:97]" "f[101]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 12 "f[2:3]" "f[8:9]" "f[20:21]" "f[32:33]" "f[53:55]" "f[62:63]" "f[80:82]" "f[88]" "f[104:106]" "f[112]" "f[128:130]" "f[136]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 13 "f[12:13]" "f[18:19]" "f[30:31]" "f[42:43]" "f[52]" "f[68:70]" "f[76]" "f[90:91]" "f[98:99]" "f[114:115]" "f[122:123]" "f[138:139]" "f[146:147]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 12 "f[22:25]" "f[28:29]" "f[38:39]" "f[49]" "f[78:79]" "f[86:87]" "f[92:94]" "f[100]" "f[107:109]" "f[113]" "f[119:121]" "f[125]";
	setAttr ".pv" -type "double2" 0.65945813059806824 0.36724208295345306 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 186 ".uvst[0].uvsp[0:185]" -type "float2" 0.38368815 0.79504853
		 0.38505137 0.20496294 0.61056131 0.79496562 0.63970667 0.20717114 0.3877055 0.3007392
		 0.61111701 0.3021436 0.63498193 0.30386841 0.19842258 0.215404 0.38553983 0.48685119
		 0.61104459 0.4879677 0.79441166 0.3155576 0.80156875 0.21860257 0.60993302 0.6344921
		 0.38509399 0.6083684 0.61013138 0.60955739 0.61437684 0.205351 0.38704133 0.32561237
		 0.61148512 0.32704258 0.38543057 0.51177913 0.61088967 0.5128988 0.38502085 0.633322
		 0.35970795 0.2062647 0.36381644 0.30268323 0.20351714 0.31223184 0.35962719 0.19998229
		 0.37111741 0.79495871 0.35961235 0.19371009 0.37740463 0.79495722 0.38362724 0.80132258
		 0.38450593 0.19240314 0.3834815 0.80759686 0.38481063 0.19868091 0.37870073 0.20531249
		 0.37236017 0.20565006 0.36602974 0.20597151 0.61684108 0.79491591 0.63998353 0.19459581
		 0.62311596 0.79495168 0.63988197 0.20088142 0.63337922 0.20675743 0.62704831 0.20631188
		 0.62071216 0.20584354 0.61464489 0.19908366 0.61080039 0.80752331 0.61497027 0.19282252
		 0.61063564 0.80124223 0.38075244 0.32528311 0.36524427 0.31519604 0.37448847 0.32489252
		 0.36448348 0.3089503 0.369802 0.30219182 0.37577033 0.3017036 0.38173038 0.30118364
		 0.38759917 0.30696988 0.38741547 0.31318587 0.38723141 0.3193984 0.63423812 0.3101311
		 0.62407601 0.3264522 0.63340795 0.31635845 0.61778969 0.32677567 0.61137414 0.32081705
		 0.61126572 0.31459528 0.61115444 0.30837315 0.61708558 0.30252779 0.62303793 0.30299354
		 0.62900043 0.30342764 0.37914997 0.51146919 0.19101056 0.31318375 0.37289768 0.51109815
		 0.19726744 0.31265533 0.20391771 0.31850022 0.37295789 0.48721221 0.20422953 0.32476753
		 0.37924355 0.48699391 0.3855707 0.49308327 0.38556266 0.49931487 0.38551772 0.50554669
		 0.80064607 0.31611806 0.62347442 0.51235914 0.8068735 0.31678569 0.61719012 0.51266074
		 0.61087012 0.50666279 0.61089081 0.50042921 0.61094797 0.49419793 0.61732846 0.48818821
		 0.79353821 0.32810569 0.62359381 0.48848 0.7939319 0.3218289 0.37874949 0.6329807
		 0.19759575 0.202858 0.37249172 0.63255548 0.19805503 0.20912886 0.19216222 0.21567577
		 0.37251133 0.60891294 0.18589869 0.21584019 0.37879515 0.60860676 0.38514239 0.61460882
		 0.38514602 0.62084734 0.38510746 0.62708497 0.80202454 0.21234277 0.62248796 0.63378215
		 0.8025744 0.20609334 0.61621463 0.63417709 0.60991156 0.62825572 0.60993999 0.62202162
		 0.61001217 0.61578918 0.61640894 0.60986453 0.81410122 0.21932721 0.62265998 0.61023891
		 0.80782688 0.21901867 0.36562043 0.2003797 0.37172234 0.80012906 0.3655777 0.19416577
		 0.37801224 0.80056202 0.37838203 0.19345713 0.37826335 0.80684674 0.37876958 0.19967577
		 0.37220436 0.20085815 0.37301308 0.80539668 0.37200868 0.19560525 0.61623526 0.80051041
		 0.63400364 0.19494653 0.62251687 0.80010235 0.63387209 0.20116267 0.62726927 0.20151266
		 0.62070137 0.20019671 0.61598909 0.80678999 0.62114322 0.19397894 0.62752968 0.19625714
		 0.62122858 0.80535686 0.38149005 0.31937253 0.37085307 0.31424594 0.37521374 0.31896675
		 0.37012154 0.30796209 0.37614399 0.30676955 0.38213295 0.30682409 0.38245058 0.31303602
		 0.37680292 0.3125625 0.62862307 0.30920166 0.62341624 0.32046115 0.62785602 0.31548518
		 0.61713171 0.32081783 0.61624837 0.31443661 0.61663085 0.30819303 0.62261951 0.30808723
		 0.62191361 0.31393111 0.37991643 0.50564921 0.19202581 0.31831425 0.37370914 0.50532842
		 0.19830424 0.31820732 0.37373483 0.49305999 0.19905794 0.32445604 0.37995785 0.49285251
		 0.38078296 0.49926388 0.19374409 0.32346284 0.37553847 0.49922016 0.79953325 0.32164246
		 0.6226964 0.50657475 0.80579865 0.32186854 0.61647832 0.50683153 0.61567128 0.50043619
		 0.61655718 0.49403575 0.79869378 0.32787585 0.62277281 0.49430874 0.62091702 0.50044656
		 0.80401111 0.32697546 0.37952703 0.62717628 0.19251484 0.2037763 0.37333047 0.62681758
		 0.19252488 0.21006089 0.37332618 0.61468124 0.18628365 0.21067467 0.37954402 0.6144228
		 0.38038713 0.62080634 0.18736634 0.20538139 0.37515682 0.62076569 0.80754888 0.21338493
		 0.62168908 0.62806344 0.80765134 0.20709631 0.61548901 0.62838435 0.61469269 0.62202328
		 0.61560035 0.61566126 0.81378555 0.21411985 0.6218068 0.61597908 0.61991996 0.62202448
		 0.8127799 0.20879337;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 152 ".vt[0:151]"  1200.95141602 7.71568537 287.5012207 1203.6607666 3.66079903 287.5012207
		 1207.71569824 0.95141065 287.5012207 1212.4987793 0 287.5012207 1212.4987793 0.95141065 292.28430176
		 1212.4987793 3.66079903 296.33920288 1212.4987793 7.71568537 299.048583984 1212.4987793 12.49874973 300
		 1207.71569824 12.49874973 299.048583984 1203.6607666 12.49874973 296.33920288 1200.95141602 12.49874973 292.28430176
		 1200 12.49874973 287.5012207 1392.28430176 0.95141065 287.5012207 1396.3392334 3.66079903 287.5012207
		 1399.048583984 7.71568537 287.5012207 1400 12.49874973 287.5012207 1399.048583984 12.49874973 292.28430176
		 1396.3392334 12.49874973 296.33920288 1392.28430176 12.49874973 299.048583984 1387.5012207 12.49874973 300
		 1387.5012207 7.71568537 299.048583984 1387.5012207 3.66079903 296.33920288 1387.5012207 0.95141065 292.28430176
		 1387.5012207 0 287.5012207 1207.71569824 99.048591614 287.5012207 1203.6607666 96.33920288 287.5012207
		 1200.95141602 92.28431702 287.5012207 1200 87.50125122 287.5012207 1200.95141602 87.50125122 292.28430176
		 1203.6607666 87.50125122 296.33920288 1207.71569824 87.50125122 299.048583984 1212.4987793 87.50125122 300
		 1212.4987793 92.28431702 299.048583984 1212.4987793 96.33920288 296.33920288 1212.4987793 99.048591614 292.28430176
		 1212.4987793 100 287.5012207 1399.048583984 92.28431702 287.5012207 1396.3392334 96.33920288 287.5012207
		 1392.28430176 99.048591614 287.5012207 1387.5012207 100 287.5012207 1387.5012207 99.048591614 292.28430176
		 1387.5012207 96.33920288 296.33920288 1387.5012207 92.28431702 299.048583984 1387.5012207 87.50125122 300
		 1392.28430176 87.50125122 299.048583984 1396.3392334 87.50125122 296.33920288 1399.048583984 87.50125122 292.28430176
		 1400 87.50125122 287.5012207 1207.71569824 87.50125122 150.95141602 1203.6607666 87.50125122 153.66082764
		 1200.95141602 87.50125122 157.71569824 1200 87.50125122 162.4987793 1200.95141602 92.28431702 162.4987793
		 1203.6607666 96.33920288 162.4987793 1207.71569824 99.048591614 162.4987793 1212.4987793 100 162.4987793
		 1212.4987793 99.048591614 157.71569824 1212.4987793 96.33920288 153.66082764 1212.4987793 92.28431702 150.95141602
		 1212.4987793 87.50125122 150 1399.048583984 87.50125122 157.71569824 1396.3392334 87.50125122 153.66082764
		 1392.28430176 87.50125122 150.95141602 1387.5012207 87.50125122 150 1387.5012207 92.28431702 150.95141602
		 1387.5012207 96.33920288 153.66082764 1387.5012207 99.048591614 157.71569824 1387.5012207 100 162.4987793
		 1392.28430176 99.048591614 162.4987793 1396.3392334 96.33920288 162.4987793 1399.048583984 92.28431702 162.4987793
		 1400 87.50125122 162.4987793 1207.71569824 0.95141065 162.4987793 1203.6607666 3.66079903 162.4987793
		 1200.95141602 7.71568537 162.4987793 1200 12.49874973 162.4987793 1200.95141602 12.49874973 157.71569824
		 1203.6607666 12.49874973 153.66082764 1207.71569824 12.49874973 150.95141602 1212.4987793 12.49874973 150
		 1212.4987793 7.71568537 150.95141602 1212.4987793 3.66079903 153.66082764 1212.4987793 0.95141065 157.71569824
		 1212.4987793 0 162.4987793 1399.048583984 7.71568537 162.4987793 1396.3392334 3.66079903 162.4987793
		 1392.28430176 0.95141065 162.4987793 1387.5012207 0 162.4987793 1387.5012207 0.95141065 157.71569824
		 1387.5012207 3.66079903 153.66082764 1387.5012207 7.71568537 150.95141602 1387.5012207 12.49874973 150
		 1392.28430176 12.49874973 150.95141602 1396.3392334 12.49874973 153.66082764 1399.048583984 12.49874973 157.71569824
		 1400 12.49874973 162.4987793 1201.59399414 8.18459034 291.81539917 1204.056274414 4.056219578 291.16400146
		 1208.18457031 1.59404385 291.81539917 1208.8359375 4.056219578 295.9437561 1208.18457031 8.18459034 298.40594482
		 1204.056274414 8.83597279 295.9437561 1205.28515625 5.28511381 294.71487427 1391.81542969 1.59404385 291.81539917
		 1395.94372559 4.056219578 291.16400146 1398.40600586 8.18459034 291.81539917 1395.94372559 8.83597279 295.9437561
		 1391.81542969 8.18459034 298.40594482 1391.1640625 4.056219578 295.9437561 1394.71484375 5.28511381 294.71487427
		 1208.18457031 98.40596008 291.81539917 1204.056274414 95.94377899 291.16400146 1201.59399414 91.8154068 291.81539917
		 1204.056274414 91.16402435 295.9437561 1208.18457031 91.8154068 298.40594482 1208.8359375 95.94377899 295.9437561
		 1205.28515625 94.71488953 294.71487427 1398.40600586 91.8154068 291.81539917 1395.94372559 95.94377899 291.16400146
		 1391.81542969 98.40596008 291.81539917 1391.1640625 95.94377899 295.9437561 1391.81542969 91.8154068 298.40594482
		 1395.94372559 91.16402435 295.9437561 1394.71484375 94.71488953 294.71487427 1208.18457031 91.8154068 151.59405518
		 1204.056274414 91.16402435 154.056213379 1201.59399414 91.8154068 158.18463135 1204.056274414 95.94377899 158.83599854
		 1208.18457031 98.40596008 158.18463135 1208.8359375 95.94377899 154.056213379 1205.28515625 94.71488953 155.28515625
		 1398.40600586 91.8154068 158.18463135 1395.94372559 91.16402435 154.056213379 1391.81542969 91.8154068 151.59405518
		 1391.1640625 95.94377899 154.056213379 1391.81542969 98.40596008 158.18463135 1395.94372559 95.94377899 158.83599854
		 1394.71484375 94.71488953 155.28515625 1208.18457031 1.59404385 158.18463135 1204.056274414 4.056219578 158.83599854
		 1201.59399414 8.18459034 158.18463135 1204.056274414 8.83597279 154.056213379 1208.18457031 8.18459034 151.59405518
		 1208.8359375 4.056219578 154.056213379 1205.28515625 5.28511381 155.28515625 1398.40600586 8.18459034 158.18463135
		 1395.94372559 4.056219578 158.83599854 1391.81542969 1.59404385 158.18463135 1391.1640625 4.056219578 154.056213379
		 1391.81542969 8.18459034 151.59405518 1395.94372559 8.83597279 154.056213379 1394.71484375 5.28511381 155.28515625;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  3 2 1 2 72 1 72 83 1 83 3 1 2 1 1 1 73 1 73 72 1 1 0 1
		 0 74 1 74 73 1 0 11 1 11 75 1 75 74 1 7 6 1 6 20 1 20 19 1 19 7 1 6 5 1 5 21 1 21 20 1
		 5 4 1 4 22 1 22 21 1 4 3 1 3 23 1 23 22 1 11 10 1 10 28 1 28 27 1 27 11 1 10 9 1
		 9 29 1 29 28 1 9 8 1 8 30 1 30 29 1 8 7 1 7 31 1 31 30 1 15 14 1 14 84 1 84 95 1
		 95 15 1 14 13 1 13 85 1 85 84 1 13 12 1 12 86 1 86 85 1 12 23 1 23 87 1 87 86 1 19 18 1
		 18 44 1 44 43 1 43 19 1 18 17 1 17 45 1 45 44 1 17 16 1 16 46 1 46 45 1 16 15 1 15 47 1
		 47 46 1 27 26 1 26 52 1 52 51 1 51 27 1 26 25 1 25 53 1 53 52 1 25 24 1 24 54 1 54 53 1
		 24 35 1 35 55 1 55 54 1 35 34 1 34 40 1 40 39 1 39 35 1 34 33 1 33 41 1 41 40 1 33 32 1
		 32 42 1 42 41 1 32 31 1 31 43 1 43 42 1 39 38 1 38 68 1 68 67 1 67 39 1 38 37 1 37 69 1
		 69 68 1 37 36 1 36 70 1 70 69 1 36 47 1 47 71 1 71 70 1 51 50 1 50 76 1 76 75 1 75 51 1
		 50 49 1 49 77 1 77 76 1 49 48 1 48 78 1 78 77 1 48 59 1 59 79 1 79 78 1 59 58 1 58 64 1
		 64 63 1 63 59 1 58 57 1 57 65 1 65 64 1 57 56 1 56 66 1 66 65 1 56 55 1 55 67 1 67 66 1
		 63 62 1 62 92 1 92 91 1 91 63 1 62 61 1 61 93 1 93 92 1 61 60 1 60 94 1 94 93 1 60 71 1
		 71 95 1 95 94 1 83 82 1 82 88 1 88 87 1 87 83 1 82 81 1 81 89 1 89 88 1 81 80 1 80 90 1
		 90 89 1 80 79 1 79 91 1 91 90 1 0 96 1 96 10 1 1 97 1 97 96 1 2 98 1 98 97 1 4 98 1
		 5 99 1 99 98 1 6 100 1;
	setAttr ".ed[166:299]" 100 99 1 8 100 1 9 101 1 101 100 1 96 101 1 97 102 1
		 102 101 1 99 102 1 12 103 1 103 22 1 13 104 1 104 103 1 14 105 1 105 104 1 16 105 1
		 17 106 1 106 105 1 18 107 1 107 106 1 20 107 1 21 108 1 108 107 1 103 108 1 104 109 1
		 109 108 1 106 109 1 24 110 1 110 34 1 25 111 1 111 110 1 26 112 1 112 111 1 28 112 1
		 29 113 1 113 112 1 30 114 1 114 113 1 32 114 1 33 115 1 115 114 1 110 115 1 111 116 1
		 116 115 1 113 116 1 36 117 1 117 46 1 37 118 1 118 117 1 38 119 1 119 118 1 40 119 1
		 41 120 1 120 119 1 42 121 1 121 120 1 44 121 1 45 122 1 122 121 1 117 122 1 118 123 1
		 123 122 1 120 123 1 48 124 1 124 58 1 49 125 1 125 124 1 50 126 1 126 125 1 52 126 1
		 53 127 1 127 126 1 54 128 1 128 127 1 56 128 1 57 129 1 129 128 1 124 129 1 125 130 1
		 130 129 1 127 130 1 60 131 1 131 70 1 61 132 1 132 131 1 62 133 1 133 132 1 64 133 1
		 65 134 1 134 133 1 66 135 1 135 134 1 68 135 1 69 136 1 136 135 1 131 136 1 132 137 1
		 137 136 1 134 137 1 72 138 1 138 82 1 73 139 1 139 138 1 74 140 1 140 139 1 76 140 1
		 77 141 1 141 140 1 78 142 1 142 141 1 80 142 1 81 143 1 143 142 1 138 143 1 139 144 1
		 144 143 1 141 144 1 84 145 1 145 94 1 85 146 1 146 145 1 86 147 1 147 146 1 88 147 1
		 89 148 1 148 147 1 90 149 1 149 148 1 92 149 1 93 150 1 150 149 1 145 150 1 146 151 1
		 151 150 1 148 151 1;
	setAttr -s 150 -ch 600 ".fc[0:149]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 27 88 20
		f 4 4 5 6 -2
		mu 0 4 27 25 90 88
		f 4 7 8 9 -6
		mu 0 4 26 24 91 89
		f 4 10 11 12 -9
		mu 0 4 24 21 7 91
		f 4 13 14 15 16
		mu 0 4 1 31 42 15
		f 4 17 18 19 -15
		mu 0 4 31 29 44 42
		f 4 20 21 22 -19
		mu 0 4 30 28 45 43
		f 4 23 24 25 -22
		mu 0 4 28 0 2 45
		f 4 26 27 28 29
		mu 0 4 21 34 50 22
		f 4 30 31 32 -28
		mu 0 4 34 33 51 50
		f 4 33 34 35 -32
		mu 0 4 33 32 52 51
		f 4 36 37 38 -35
		mu 0 4 32 1 4 52
		f 4 39 40 41 42
		mu 0 4 3 38 99 11
		f 4 43 44 45 -41
		mu 0 4 38 36 101 99
		f 4 46 47 48 -45
		mu 0 4 37 35 102 100
		f 4 49 50 51 -48
		mu 0 4 35 2 12 102
		f 4 52 53 54 55
		mu 0 4 15 41 63 5
		f 4 56 57 58 -54
		mu 0 4 41 40 64 63
		f 4 59 60 61 -58
		mu 0 4 40 39 65 64
		f 4 62 63 64 -61
		mu 0 4 39 3 6 65
		f 4 65 66 67 68
		mu 0 4 22 49 70 23
		f 4 69 70 71 -67
		mu 0 4 49 47 72 70
		f 4 72 73 74 -71
		mu 0 4 48 46 73 71
		f 4 75 76 77 -74
		mu 0 4 46 16 8 73
		f 4 78 79 80 81
		mu 0 4 16 55 60 17
		f 4 82 83 84 -80
		mu 0 4 55 54 61 60
		f 4 85 86 87 -84
		mu 0 4 54 53 62 61
		f 4 88 89 90 -87
		mu 0 4 53 4 5 62
		f 4 91 92 93 94
		mu 0 4 17 59 84 9
		f 4 95 96 97 -93
		mu 0 4 59 57 86 84
		f 4 98 99 100 -97
		mu 0 4 58 56 87 85
		f 4 101 102 103 -100
		mu 0 4 56 6 10 87
		f 4 104 105 106 107
		mu 0 4 23 69 92 7
		f 4 108 109 110 -106
		mu 0 4 69 67 94 92
		f 4 111 112 113 -110
		mu 0 4 68 66 95 93
		f 4 114 115 116 -113
		mu 0 4 66 18 13 95
		f 4 117 118 119 120
		mu 0 4 18 76 81 19
		f 4 121 122 123 -119
		mu 0 4 76 75 82 81
		f 4 124 125 126 -123
		mu 0 4 75 74 83 82
		f 4 127 128 129 -126
		mu 0 4 74 8 9 83
		f 4 130 131 132 133
		mu 0 4 19 80 106 14
		f 4 134 135 136 -132
		mu 0 4 80 78 108 106
		f 4 137 138 139 -136
		mu 0 4 79 77 109 107
		f 4 140 141 142 -139
		mu 0 4 77 10 11 109
		f 4 143 144 145 146
		mu 0 4 20 98 103 12
		f 4 147 148 149 -145
		mu 0 4 98 97 104 103
		f 4 150 151 152 -149
		mu 0 4 97 96 105 104
		f 4 153 154 155 -152
		mu 0 4 96 13 14 105
		f 4 -17 -56 -90 -38
		mu 0 4 1 15 5 4
		f 4 -82 -95 -129 -77
		mu 0 4 16 17 9 8
		f 4 -121 -134 -155 -116
		mu 0 4 18 19 14 13
		f 4 -147 -51 -25 -4
		mu 0 4 20 12 2 0
		f 4 -43 -142 -103 -64
		mu 0 4 3 11 10 6
		f 4 -12 -30 -69 -108
		mu 0 4 7 21 22 23
		f 4 -27 -11 156 157
		mu 0 4 34 21 24 110
		f 4 -157 -8 158 159
		mu 0 4 110 24 26 112
		f 4 -159 -5 160 161
		mu 0 4 111 25 27 113
		f 4 -1 -24 162 -161
		mu 0 4 27 0 28 113
		f 4 -163 -21 163 164
		mu 0 4 113 28 30 115
		f 4 -164 -18 165 166
		mu 0 4 114 29 31 116
		f 4 -14 -37 167 -166
		mu 0 4 31 1 32 116
		f 4 -168 -34 168 169
		mu 0 4 116 32 33 117
		f 4 -169 -31 -158 170
		mu 0 4 117 33 34 110
		f 4 -171 -160 171 172
		mu 0 4 117 110 112 119
		f 4 -162 -165 173 -172
		mu 0 4 111 113 115 118
		f 4 -167 -170 -173 -174
		mu 0 4 114 116 117 119
		f 4 -26 -50 174 175
		mu 0 4 45 2 35 120
		f 4 -175 -47 176 177
		mu 0 4 120 35 37 122
		f 4 -177 -44 178 179
		mu 0 4 121 36 38 123
		f 4 -40 -63 180 -179
		mu 0 4 38 3 39 123
		f 4 -181 -60 181 182
		mu 0 4 123 39 40 124
		f 4 -182 -57 183 184
		mu 0 4 124 40 41 125
		f 4 -53 -16 185 -184
		mu 0 4 41 15 42 125
		f 4 -186 -20 186 187
		mu 0 4 125 42 44 127
		f 4 -187 -23 -176 188
		mu 0 4 126 43 45 120
		f 4 -189 -178 189 190
		mu 0 4 126 120 122 129
		f 4 -180 -183 191 -190
		mu 0 4 121 123 124 128
		f 4 -185 -188 -191 -192
		mu 0 4 124 125 127 128
		f 4 -79 -76 192 193
		mu 0 4 55 16 46 130
		f 4 -193 -73 194 195
		mu 0 4 130 46 48 132
		f 4 -195 -70 196 197
		mu 0 4 131 47 49 133
		f 4 -66 -29 198 -197
		mu 0 4 49 22 50 133
		f 4 -199 -33 199 200
		mu 0 4 133 50 51 134
		f 4 -200 -36 201 202
		mu 0 4 134 51 52 135
		f 4 -39 -89 203 -202
		mu 0 4 52 4 53 135
		f 4 -204 -86 204 205
		mu 0 4 135 53 54 136
		f 4 -205 -83 -194 206
		mu 0 4 136 54 55 130
		f 4 -207 -196 207 208
		mu 0 4 136 130 132 137
		f 4 -198 -201 209 -208
		mu 0 4 131 133 134 137
		f 4 -203 -206 -209 -210
		mu 0 4 134 135 136 137
		f 4 -65 -102 210 211
		mu 0 4 65 6 56 138
		f 4 -211 -99 212 213
		mu 0 4 138 56 58 140
		f 4 -213 -96 214 215
		mu 0 4 139 57 59 141
		f 4 -92 -81 216 -215
		mu 0 4 59 17 60 141
		f 4 -217 -85 217 218
		mu 0 4 141 60 61 142
		f 4 -218 -88 219 220
		mu 0 4 142 61 62 143
		f 4 -91 -55 221 -220
		mu 0 4 62 5 63 143
		f 4 -222 -59 222 223
		mu 0 4 143 63 64 144
		f 4 -223 -62 -212 224
		mu 0 4 144 64 65 138
		f 4 -225 -214 225 226
		mu 0 4 144 138 140 145
		f 4 -216 -219 227 -226
		mu 0 4 139 141 142 145
		f 4 -221 -224 -227 -228
		mu 0 4 142 143 144 145
		f 4 -118 -115 228 229
		mu 0 4 76 18 66 146
		f 4 -229 -112 230 231
		mu 0 4 146 66 68 148
		f 4 -231 -109 232 233
		mu 0 4 147 67 69 149
		f 4 -105 -68 234 -233
		mu 0 4 69 23 70 149
		f 4 -235 -72 235 236
		mu 0 4 149 70 72 151
		f 4 -236 -75 237 238
		mu 0 4 150 71 73 152
		f 4 -78 -128 239 -238
		mu 0 4 73 8 74 152
		f 4 -240 -125 240 241
		mu 0 4 152 74 75 153
		f 4 -241 -122 -230 242
		mu 0 4 153 75 76 146
		f 4 -243 -232 243 244
		mu 0 4 153 146 148 155
		f 4 -234 -237 245 -244
		mu 0 4 147 149 151 154
		f 4 -239 -242 -245 -246
		mu 0 4 150 152 153 155
		f 4 -104 -141 246 247
		mu 0 4 87 10 77 156
		f 4 -247 -138 248 249
		mu 0 4 156 77 79 158
		f 4 -249 -135 250 251
		mu 0 4 157 78 80 159
		f 4 -131 -120 252 -251
		mu 0 4 80 19 81 159
		f 4 -253 -124 253 254
		mu 0 4 159 81 82 160
		f 4 -254 -127 255 256
		mu 0 4 160 82 83 161
		f 4 -130 -94 257 -256
		mu 0 4 83 9 84 161
		f 4 -258 -98 258 259
		mu 0 4 161 84 86 163
		f 4 -259 -101 -248 260
		mu 0 4 162 85 87 156
		f 4 -261 -250 261 262
		mu 0 4 162 156 158 165
		f 4 -252 -255 263 -262
		mu 0 4 157 159 160 164
		f 4 -257 -260 -263 -264
		mu 0 4 160 161 163 164
		f 4 -144 -3 264 265
		mu 0 4 98 20 88 166
		f 4 -265 -7 266 267
		mu 0 4 166 88 90 168
		f 4 -267 -10 268 269
		mu 0 4 167 89 91 169
		f 4 -13 -107 270 -269
		mu 0 4 91 7 92 169
		f 4 -271 -111 271 272
		mu 0 4 169 92 94 171
		f 4 -272 -114 273 274
		mu 0 4 170 93 95 172
		f 4 -117 -154 275 -274
		mu 0 4 95 13 96 172
		f 4 -276 -151 276 277
		mu 0 4 172 96 97 173
		f 4 -277 -148 -266 278
		mu 0 4 173 97 98 166
		f 4 -279 -268 279 280
		mu 0 4 173 166 168 175
		f 4 -270 -273 281 -280
		mu 0 4 167 169 171 174
		f 4 -275 -278 -281 -282
		mu 0 4 170 172 173 175
		f 4 -143 -42 282 283
		mu 0 4 109 11 99 176
		f 4 -283 -46 284 285
		mu 0 4 176 99 101 178
		f 4 -285 -49 286 287
		mu 0 4 177 100 102 179
		f 4 -52 -146 288 -287
		mu 0 4 102 12 103 179
		f 4 -289 -150 289 290
		mu 0 4 179 103 104 180
		f 4 -290 -153 291 292
		mu 0 4 180 104 105 181
		f 4 -156 -133 293 -292
		mu 0 4 105 14 106 181
		f 4 -294 -137 294 295
		mu 0 4 181 106 108 183
		f 4 -295 -140 -284 296
		mu 0 4 182 107 109 176
		f 4 -297 -286 297 298
		mu 0 4 182 176 178 185
		f 4 -288 -291 299 -298
		mu 0 4 177 179 180 184
		f 4 -293 -296 -299 -300
		mu 0 4 180 181 183 184;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FullCube" -p "BlocksRound";
	rename -uid "813CD2B4-45CA-8E4F-A325-BBA319A3458F";
	setAttr ".rp" -type "double3" 1550 0 200 ;
	setAttr ".sp" -type "double3" 1550 0 200 ;
createNode mesh -n "FullCubeShape" -p "|BlocksRound|FullCube";
	rename -uid "D631D922-4DFA-E722-41E1-669E2463D51E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 12 "f[34:37]" "f[40:41]" "f[46:47]" "f[50]" "f[102:103]" "f[110:111]" "f[116:118]" "f[124]" "f[131:133]" "f[137]" "f[143:145]" "f[149]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 13 "f[0:1]" "f[6:7]" "f[14:15]" "f[44:45]" "f[51]" "f[56:58]" "f[64]" "f[66:67]" "f[74:75]" "f[126:127]" "f[134:135]" "f[140:142]" "f[148]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 13 "f[4:5]" "f[10:11]" "f[16:17]" "f[26:27]" "f[48]" "f[59:61]" "f[65]" "f[71:73]" "f[77]" "f[83:85]" "f[89]" "f[95:97]" "f[101]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 12 "f[2:3]" "f[8:9]" "f[20:21]" "f[32:33]" "f[53:55]" "f[62:63]" "f[80:82]" "f[88]" "f[104:106]" "f[112]" "f[128:130]" "f[136]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 13 "f[12:13]" "f[18:19]" "f[30:31]" "f[42:43]" "f[52]" "f[68:70]" "f[76]" "f[90:91]" "f[98:99]" "f[114:115]" "f[122:123]" "f[138:139]" "f[146:147]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 12 "f[22:25]" "f[28:29]" "f[38:39]" "f[49]" "f[78:79]" "f[86:87]" "f[92:94]" "f[100]" "f[107:109]" "f[113]" "f[119:121]" "f[125]";
	setAttr ".pv" -type "double2" 0.50000002980232239 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 186 ".uvst[0].uvsp[0:185]" -type "float2" 0.4485212 0.72993654
		 0.45040089 0.27008578 0.54576427 0.72994858 0.57406676 0.27128112 0.4518441 0.36571717
		 0.54673898 0.3665095 0.57089245 0.36794102 0.32852083 0.27400255 0.449983 0.48699114
		 0.54680097 0.48758405 0.66645229 0.37340921 0.67146403 0.2759912 0.54564136 0.63363665
		 0.44934857 0.6082592 0.54588103 0.60890782 0.54890829 0.27000481 0.45089829 0.39031446
		 0.54729319 0.3911294 0.44984674 0.51170838 0.54661208 0.51229537 0.44925904 0.6330049
		 0.42524529 0.27089506 0.42764127 0.36720598 0.33126998 0.37122929 0.42538875 0.26461577
		 0.43594581 0.72991866 0.42559302 0.25835449 0.44223535 0.72987562 0.44844216 0.73619914
		 0.44972265 0.25751781 0.44826162 0.74246156 0.45009613 0.26379621 0.44409543 0.2703222
		 0.43780375 0.27054125 0.43152207 0.27073687 0.55204314 0.72994167 0.5739314 0.25870115
		 0.55831152 0.7300294 0.57403636 0.26498759 0.56778187 0.27101126 0.56149572 0.27070326
		 0.5552038 0.27036786 0.54922813 0.26374602 0.54603028 0.74249673 0.54960477 0.25750321
		 0.54584271 0.7362175 0.44460541 0.38992169 0.4290207 0.37973946 0.4383508 0.38947564
		 0.42828858 0.37348533 0.43370694 0.36682928 0.43975323 0.36645317 0.44579101 0.36604518
		 0.4516387 0.37188929 0.45136303 0.37803102 0.45112443 0.3841691 0.57014894 0.37421292
		 0.55990332 0.3904407 0.56933552 0.38043913 0.55361235 0.390809 0.547171 0.38497055
		 0.54703134 0.37882209 0.54685104 0.37267417 0.55278033 0.36681646 0.55880427 0.36720949
		 0.56483829 0.36757219 0.44356495 0.51140726 0.31874683 0.37191182 0.43731147 0.51103526
		 0.32501405 0.37151974 0.33157855 0.37750354 0.43738943 0.48743892 0.33178812 0.38376942
		 0.44367784 0.48717704 0.45001882 0.49317366 0.4500072 0.49935281 0.44995248 0.50553042
		 0.67269433 0.3738513 0.55919898 0.51177621 0.67893338 0.37439835 0.55291325 0.5120728
		 0.54658866 0.50611222 0.54661429 0.49993414 0.54668289 0.49375874 0.55308557 0.48786241
		 0.66575813 0.38597977 0.55934 0.48821089 0.66606009 0.37969363 0.44299084 0.63264078
		 0.32802129 0.26143235 0.43674278 0.63219154 0.32832098 0.26771605 0.3222537 0.27412605
		 0.43676513 0.60877931 0.31598693 0.27414292 0.44305003 0.60848129 0.44940305 0.61444843
		 0.44940561 0.62063432 0.44936031 0.62681913 0.67175692 0.2697238 0.55820036 0.63290101
		 0.67215735 0.26346916 0.5519262 0.63330913 0.54562187 0.62744594 0.54565841 0.62126255
		 0.54574275 0.61508405 0.55215871 0.60920554 0.68401313 0.27645075 0.55841064 0.60957748
		 0.67773211 0.27627462 0.43126225 0.26515666 0.43655229 0.73506367 0.43139362 0.25895077
		 0.44283646 0.73546737 0.44380462 0.25849229 0.44308037 0.74174231 0.44418317 0.26470673
		 0.43772489 0.26576954 0.43784279 0.74031591 0.43761122 0.26052946 0.55143309 0.73552322
		 0.56809258 0.25920951 0.55770826 0.73515332 0.56813228 0.26542258 0.56163973 0.26592284
		 0.55516768 0.26474819 0.55118513 0.74179459 0.55558449 0.25853965 0.56181228 0.26067853
		 0.55641425 0.74039078 0.44537091 0.38407671 0.43465209 0.37887102 0.43909061 0.38361591
		 0.43397737 0.37258863 0.44007182 0.37150049 0.44611996 0.37165213 0.44637054 0.3778145
		 0.44068593 0.37727666 0.56448853 0.3733331 0.55923194 0.38453129 0.56375104 0.37961096
		 0.55293888 0.38492763 0.55203635 0.37862605 0.55237657 0.37244076 0.55842042 0.37227678
		 0.55773562 0.37808999 0.44434506 0.50563496 0.31967738 0.37708867 0.43813467 0.50530803
		 0.32596183 0.37710372 0.43817526 0.4932 0.32661688 0.38337013 0.44440114 0.49296767
		 0.44522405 0.49930969 0.32131356 0.38228026 0.43997782 0.4992708 0.67166275 0.37940955
		 0.55842012 0.50604165 0.67793423 0.379527 0.55219954 0.50629449 0.55139583 0.49996167
		 0.55229378 0.49363688 0.67091101 0.38566384 0.55850786 0.49394941 0.55664128 0.49998862
		 0.67621881 0.38467541 0.44377577 0.62689322 0.32291883 0.26222312 0.43757856 0.62651777
		 0.32276306 0.26851156 0.43758023 0.61451077 0.31650537 0.26897147 0.44380039 0.61425501
		 0.44464213 0.62058473 0.31772751 0.26369876 0.43941015 0.62053704 0.6773141 0.27063945
		 0.55740869 0.62724602 0.67726034 0.26434663 0.55120498 0.62757087 0.55041683 0.62126786
		 0.5513376 0.61496031 0.68357098 0.27123356 0.55754679 0.61528468 0.5556469 0.62127268
		 0.68243378 0.2659232;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 152 ".vt[0:151]"  1500.95141602 7.71568537 237.5012207 1503.6607666 3.66079903 237.5012207
		 1507.71569824 0.95141065 237.5012207 1512.4987793 0 237.5012207 1512.4987793 0.95141065 242.28430176
		 1512.4987793 3.66079903 246.33917236 1512.4987793 7.71568537 249.048583984 1512.4987793 12.49874973 250
		 1507.71569824 12.49874973 249.048583984 1503.6607666 12.49874973 246.33917236 1500.95141602 12.49874973 242.28430176
		 1500 12.49874973 237.5012207 1592.28430176 0.95141065 237.5012207 1596.3392334 3.66079903 237.5012207
		 1599.048583984 7.71568537 237.5012207 1600 12.49874973 237.5012207 1599.048583984 12.49874973 242.28430176
		 1596.3392334 12.49874973 246.33917236 1592.28430176 12.49874973 249.048583984 1587.5012207 12.49874973 250
		 1587.5012207 7.71568537 249.048583984 1587.5012207 3.66079903 246.33917236 1587.5012207 0.95141065 242.28430176
		 1587.5012207 0 237.5012207 1507.71569824 99.048591614 237.5012207 1503.6607666 96.33920288 237.5012207
		 1500.95141602 92.28431702 237.5012207 1500 87.50125122 237.5012207 1500.95141602 87.50125122 242.28430176
		 1503.6607666 87.50125122 246.33917236 1507.71569824 87.50125122 249.048583984 1512.4987793 87.50125122 250
		 1512.4987793 92.28431702 249.048583984 1512.4987793 96.33920288 246.33917236 1512.4987793 99.048591614 242.28430176
		 1512.4987793 100 237.5012207 1599.048583984 92.28431702 237.5012207 1596.3392334 96.33920288 237.5012207
		 1592.28430176 99.048591614 237.5012207 1587.5012207 100 237.5012207 1587.5012207 99.048591614 242.28430176
		 1587.5012207 96.33920288 246.33917236 1587.5012207 92.28431702 249.048583984 1587.5012207 87.50125122 250
		 1592.28430176 87.50125122 249.048583984 1596.3392334 87.50125122 246.33917236 1599.048583984 87.50125122 242.28430176
		 1600 87.50125122 237.5012207 1507.71569824 87.50125122 150.95141602 1503.6607666 87.50125122 153.66082764
		 1500.95141602 87.50125122 157.71569824 1500 87.50125122 162.4987793 1500.95141602 92.28431702 162.4987793
		 1503.6607666 96.33920288 162.4987793 1507.71569824 99.048591614 162.4987793 1512.4987793 100 162.4987793
		 1512.4987793 99.048591614 157.71569824 1512.4987793 96.33920288 153.66082764 1512.4987793 92.28431702 150.95141602
		 1512.4987793 87.50125122 150 1599.048583984 87.50125122 157.71569824 1596.3392334 87.50125122 153.66082764
		 1592.28430176 87.50125122 150.95141602 1587.5012207 87.50125122 150 1587.5012207 92.28431702 150.95141602
		 1587.5012207 96.33920288 153.66082764 1587.5012207 99.048591614 157.71569824 1587.5012207 100 162.4987793
		 1592.28430176 99.048591614 162.4987793 1596.3392334 96.33920288 162.4987793 1599.048583984 92.28431702 162.4987793
		 1600 87.50125122 162.4987793 1507.71569824 0.95141065 162.4987793 1503.6607666 3.66079903 162.4987793
		 1500.95141602 7.71568537 162.4987793 1500 12.49874973 162.4987793 1500.95141602 12.49874973 157.71569824
		 1503.6607666 12.49874973 153.66082764 1507.71569824 12.49874973 150.95141602 1512.4987793 12.49874973 150
		 1512.4987793 7.71568537 150.95141602 1512.4987793 3.66079903 153.66082764 1512.4987793 0.95141065 157.71569824
		 1512.4987793 0 162.4987793 1599.048583984 7.71568537 162.4987793 1596.3392334 3.66079903 162.4987793
		 1592.28430176 0.95141065 162.4987793 1587.5012207 0 162.4987793 1587.5012207 0.95141065 157.71569824
		 1587.5012207 3.66079903 153.66082764 1587.5012207 7.71568537 150.95141602 1587.5012207 12.49874973 150
		 1592.28430176 12.49874973 150.95141602 1596.3392334 12.49874973 153.66082764 1599.048583984 12.49874973 157.71569824
		 1600 12.49874973 162.4987793 1501.59399414 8.18459034 241.81536865 1504.056274414 4.056219578 241.16400146
		 1508.18457031 1.59404385 241.81536865 1508.8359375 4.056219578 245.94378662 1508.18457031 8.18459034 248.40594482
		 1504.056274414 8.83597279 245.94378662 1505.28515625 5.28511381 244.71484375 1591.81542969 1.59404385 241.81536865
		 1595.94372559 4.056219578 241.16400146 1598.40600586 8.18459034 241.81536865 1595.94372559 8.83597279 245.94378662
		 1591.81542969 8.18459034 248.40594482 1591.1640625 4.056219578 245.94378662 1594.71484375 5.28511381 244.71484375
		 1508.18457031 98.40596008 241.81536865 1504.056274414 95.94377899 241.16400146 1501.59399414 91.8154068 241.81536865
		 1504.056274414 91.16402435 245.94378662 1508.18457031 91.8154068 248.40594482 1508.8359375 95.94377899 245.94378662
		 1505.28515625 94.71488953 244.71484375 1598.40600586 91.8154068 241.81536865 1595.94372559 95.94377899 241.16400146
		 1591.81542969 98.40596008 241.81536865 1591.1640625 95.94377899 245.94378662 1591.81542969 91.8154068 248.40594482
		 1595.94372559 91.16402435 245.94378662 1594.71484375 94.71488953 244.71484375 1508.18457031 91.8154068 151.59405518
		 1504.056274414 91.16402435 154.056213379 1501.59399414 91.8154068 158.18463135 1504.056274414 95.94377899 158.83599854
		 1508.18457031 98.40596008 158.18463135 1508.8359375 95.94377899 154.056213379 1505.28515625 94.71488953 155.28515625
		 1598.40600586 91.8154068 158.18463135 1595.94372559 91.16402435 154.056213379 1591.81542969 91.8154068 151.59405518
		 1591.1640625 95.94377899 154.056213379 1591.81542969 98.40596008 158.18463135 1595.94372559 95.94377899 158.83599854
		 1594.71484375 94.71488953 155.28515625 1508.18457031 1.59404385 158.18463135 1504.056274414 4.056219578 158.83599854
		 1501.59399414 8.18459034 158.18463135 1504.056274414 8.83597279 154.056213379 1508.18457031 8.18459034 151.59405518
		 1508.8359375 4.056219578 154.056213379 1505.28515625 5.28511381 155.28515625 1598.40600586 8.18459034 158.18463135
		 1595.94372559 4.056219578 158.83599854 1591.81542969 1.59404385 158.18463135 1591.1640625 4.056219578 154.056213379
		 1591.81542969 8.18459034 151.59405518 1595.94372559 8.83597279 154.056213379 1594.71484375 5.28511381 155.28515625;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  3 2 1 2 72 1 72 83 1 83 3 1 2 1 1 1 73 1 73 72 1 1 0 1
		 0 74 1 74 73 1 0 11 1 11 75 1 75 74 1 7 6 1 6 20 1 20 19 1 19 7 1 6 5 1 5 21 1 21 20 1
		 5 4 1 4 22 1 22 21 1 4 3 1 3 23 1 23 22 1 11 10 1 10 28 1 28 27 1 27 11 1 10 9 1
		 9 29 1 29 28 1 9 8 1 8 30 1 30 29 1 8 7 1 7 31 1 31 30 1 15 14 1 14 84 1 84 95 1
		 95 15 1 14 13 1 13 85 1 85 84 1 13 12 1 12 86 1 86 85 1 12 23 1 23 87 1 87 86 1 19 18 1
		 18 44 1 44 43 1 43 19 1 18 17 1 17 45 1 45 44 1 17 16 1 16 46 1 46 45 1 16 15 1 15 47 1
		 47 46 1 27 26 1 26 52 1 52 51 1 51 27 1 26 25 1 25 53 1 53 52 1 25 24 1 24 54 1 54 53 1
		 24 35 1 35 55 1 55 54 1 35 34 1 34 40 1 40 39 1 39 35 1 34 33 1 33 41 1 41 40 1 33 32 1
		 32 42 1 42 41 1 32 31 1 31 43 1 43 42 1 39 38 1 38 68 1 68 67 1 67 39 1 38 37 1 37 69 1
		 69 68 1 37 36 1 36 70 1 70 69 1 36 47 1 47 71 1 71 70 1 51 50 1 50 76 1 76 75 1 75 51 1
		 50 49 1 49 77 1 77 76 1 49 48 1 48 78 1 78 77 1 48 59 1 59 79 1 79 78 1 59 58 1 58 64 1
		 64 63 1 63 59 1 58 57 1 57 65 1 65 64 1 57 56 1 56 66 1 66 65 1 56 55 1 55 67 1 67 66 1
		 63 62 1 62 92 1 92 91 1 91 63 1 62 61 1 61 93 1 93 92 1 61 60 1 60 94 1 94 93 1 60 71 1
		 71 95 1 95 94 1 83 82 1 82 88 1 88 87 1 87 83 1 82 81 1 81 89 1 89 88 1 81 80 1 80 90 1
		 90 89 1 80 79 1 79 91 1 91 90 1 0 96 1 96 10 1 1 97 1 97 96 1 2 98 1 98 97 1 4 98 1
		 5 99 1 99 98 1 6 100 1;
	setAttr ".ed[166:299]" 100 99 1 8 100 1 9 101 1 101 100 1 96 101 1 97 102 1
		 102 101 1 99 102 1 12 103 1 103 22 1 13 104 1 104 103 1 14 105 1 105 104 1 16 105 1
		 17 106 1 106 105 1 18 107 1 107 106 1 20 107 1 21 108 1 108 107 1 103 108 1 104 109 1
		 109 108 1 106 109 1 24 110 1 110 34 1 25 111 1 111 110 1 26 112 1 112 111 1 28 112 1
		 29 113 1 113 112 1 30 114 1 114 113 1 32 114 1 33 115 1 115 114 1 110 115 1 111 116 1
		 116 115 1 113 116 1 36 117 1 117 46 1 37 118 1 118 117 1 38 119 1 119 118 1 40 119 1
		 41 120 1 120 119 1 42 121 1 121 120 1 44 121 1 45 122 1 122 121 1 117 122 1 118 123 1
		 123 122 1 120 123 1 48 124 1 124 58 1 49 125 1 125 124 1 50 126 1 126 125 1 52 126 1
		 53 127 1 127 126 1 54 128 1 128 127 1 56 128 1 57 129 1 129 128 1 124 129 1 125 130 1
		 130 129 1 127 130 1 60 131 1 131 70 1 61 132 1 132 131 1 62 133 1 133 132 1 64 133 1
		 65 134 1 134 133 1 66 135 1 135 134 1 68 135 1 69 136 1 136 135 1 131 136 1 132 137 1
		 137 136 1 134 137 1 72 138 1 138 82 1 73 139 1 139 138 1 74 140 1 140 139 1 76 140 1
		 77 141 1 141 140 1 78 142 1 142 141 1 80 142 1 81 143 1 143 142 1 138 143 1 139 144 1
		 144 143 1 141 144 1 84 145 1 145 94 1 85 146 1 146 145 1 86 147 1 147 146 1 88 147 1
		 89 148 1 148 147 1 90 149 1 149 148 1 92 149 1 93 150 1 150 149 1 145 150 1 146 151 1
		 151 150 1 148 151 1;
	setAttr -s 150 -ch 600 ".fc[0:149]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 27 88 20
		f 4 4 5 6 -2
		mu 0 4 27 25 90 88
		f 4 7 8 9 -6
		mu 0 4 26 24 91 89
		f 4 10 11 12 -9
		mu 0 4 24 21 7 91
		f 4 13 14 15 16
		mu 0 4 1 31 42 15
		f 4 17 18 19 -15
		mu 0 4 31 29 44 42
		f 4 20 21 22 -19
		mu 0 4 30 28 45 43
		f 4 23 24 25 -22
		mu 0 4 28 0 2 45
		f 4 26 27 28 29
		mu 0 4 21 34 50 22
		f 4 30 31 32 -28
		mu 0 4 34 33 51 50
		f 4 33 34 35 -32
		mu 0 4 33 32 52 51
		f 4 36 37 38 -35
		mu 0 4 32 1 4 52
		f 4 39 40 41 42
		mu 0 4 3 38 99 11
		f 4 43 44 45 -41
		mu 0 4 38 36 101 99
		f 4 46 47 48 -45
		mu 0 4 37 35 102 100
		f 4 49 50 51 -48
		mu 0 4 35 2 12 102
		f 4 52 53 54 55
		mu 0 4 15 41 63 5
		f 4 56 57 58 -54
		mu 0 4 41 40 64 63
		f 4 59 60 61 -58
		mu 0 4 40 39 65 64
		f 4 62 63 64 -61
		mu 0 4 39 3 6 65
		f 4 65 66 67 68
		mu 0 4 22 49 70 23
		f 4 69 70 71 -67
		mu 0 4 49 47 72 70
		f 4 72 73 74 -71
		mu 0 4 48 46 73 71
		f 4 75 76 77 -74
		mu 0 4 46 16 8 73
		f 4 78 79 80 81
		mu 0 4 16 55 60 17
		f 4 82 83 84 -80
		mu 0 4 55 54 61 60
		f 4 85 86 87 -84
		mu 0 4 54 53 62 61
		f 4 88 89 90 -87
		mu 0 4 53 4 5 62
		f 4 91 92 93 94
		mu 0 4 17 59 84 9
		f 4 95 96 97 -93
		mu 0 4 59 57 86 84
		f 4 98 99 100 -97
		mu 0 4 58 56 87 85
		f 4 101 102 103 -100
		mu 0 4 56 6 10 87
		f 4 104 105 106 107
		mu 0 4 23 69 92 7
		f 4 108 109 110 -106
		mu 0 4 69 67 94 92
		f 4 111 112 113 -110
		mu 0 4 68 66 95 93
		f 4 114 115 116 -113
		mu 0 4 66 18 13 95
		f 4 117 118 119 120
		mu 0 4 18 76 81 19
		f 4 121 122 123 -119
		mu 0 4 76 75 82 81
		f 4 124 125 126 -123
		mu 0 4 75 74 83 82
		f 4 127 128 129 -126
		mu 0 4 74 8 9 83
		f 4 130 131 132 133
		mu 0 4 19 80 106 14
		f 4 134 135 136 -132
		mu 0 4 80 78 108 106
		f 4 137 138 139 -136
		mu 0 4 79 77 109 107
		f 4 140 141 142 -139
		mu 0 4 77 10 11 109
		f 4 143 144 145 146
		mu 0 4 20 98 103 12
		f 4 147 148 149 -145
		mu 0 4 98 97 104 103
		f 4 150 151 152 -149
		mu 0 4 97 96 105 104
		f 4 153 154 155 -152
		mu 0 4 96 13 14 105
		f 4 -17 -56 -90 -38
		mu 0 4 1 15 5 4
		f 4 -82 -95 -129 -77
		mu 0 4 16 17 9 8
		f 4 -121 -134 -155 -116
		mu 0 4 18 19 14 13
		f 4 -147 -51 -25 -4
		mu 0 4 20 12 2 0
		f 4 -43 -142 -103 -64
		mu 0 4 3 11 10 6
		f 4 -12 -30 -69 -108
		mu 0 4 7 21 22 23
		f 4 -27 -11 156 157
		mu 0 4 34 21 24 110
		f 4 -157 -8 158 159
		mu 0 4 110 24 26 112
		f 4 -159 -5 160 161
		mu 0 4 111 25 27 113
		f 4 -1 -24 162 -161
		mu 0 4 27 0 28 113
		f 4 -163 -21 163 164
		mu 0 4 113 28 30 115
		f 4 -164 -18 165 166
		mu 0 4 114 29 31 116
		f 4 -14 -37 167 -166
		mu 0 4 31 1 32 116
		f 4 -168 -34 168 169
		mu 0 4 116 32 33 117
		f 4 -169 -31 -158 170
		mu 0 4 117 33 34 110
		f 4 -171 -160 171 172
		mu 0 4 117 110 112 119
		f 4 -162 -165 173 -172
		mu 0 4 111 113 115 118
		f 4 -167 -170 -173 -174
		mu 0 4 114 116 117 119
		f 4 -26 -50 174 175
		mu 0 4 45 2 35 120
		f 4 -175 -47 176 177
		mu 0 4 120 35 37 122
		f 4 -177 -44 178 179
		mu 0 4 121 36 38 123
		f 4 -40 -63 180 -179
		mu 0 4 38 3 39 123
		f 4 -181 -60 181 182
		mu 0 4 123 39 40 124
		f 4 -182 -57 183 184
		mu 0 4 124 40 41 125
		f 4 -53 -16 185 -184
		mu 0 4 41 15 42 125
		f 4 -186 -20 186 187
		mu 0 4 125 42 44 127
		f 4 -187 -23 -176 188
		mu 0 4 126 43 45 120
		f 4 -189 -178 189 190
		mu 0 4 126 120 122 129
		f 4 -180 -183 191 -190
		mu 0 4 121 123 124 128
		f 4 -185 -188 -191 -192
		mu 0 4 124 125 127 128
		f 4 -79 -76 192 193
		mu 0 4 55 16 46 130
		f 4 -193 -73 194 195
		mu 0 4 130 46 48 132
		f 4 -195 -70 196 197
		mu 0 4 131 47 49 133
		f 4 -66 -29 198 -197
		mu 0 4 49 22 50 133
		f 4 -199 -33 199 200
		mu 0 4 133 50 51 134
		f 4 -200 -36 201 202
		mu 0 4 134 51 52 135
		f 4 -39 -89 203 -202
		mu 0 4 52 4 53 135
		f 4 -204 -86 204 205
		mu 0 4 135 53 54 136
		f 4 -205 -83 -194 206
		mu 0 4 136 54 55 130
		f 4 -207 -196 207 208
		mu 0 4 136 130 132 137
		f 4 -198 -201 209 -208
		mu 0 4 131 133 134 137
		f 4 -203 -206 -209 -210
		mu 0 4 134 135 136 137
		f 4 -65 -102 210 211
		mu 0 4 65 6 56 138
		f 4 -211 -99 212 213
		mu 0 4 138 56 58 140
		f 4 -213 -96 214 215
		mu 0 4 139 57 59 141
		f 4 -92 -81 216 -215
		mu 0 4 59 17 60 141
		f 4 -217 -85 217 218
		mu 0 4 141 60 61 142
		f 4 -218 -88 219 220
		mu 0 4 142 61 62 143
		f 4 -91 -55 221 -220
		mu 0 4 62 5 63 143
		f 4 -222 -59 222 223
		mu 0 4 143 63 64 144
		f 4 -223 -62 -212 224
		mu 0 4 144 64 65 138
		f 4 -225 -214 225 226
		mu 0 4 144 138 140 145
		f 4 -216 -219 227 -226
		mu 0 4 139 141 142 145
		f 4 -221 -224 -227 -228
		mu 0 4 142 143 144 145
		f 4 -118 -115 228 229
		mu 0 4 76 18 66 146
		f 4 -229 -112 230 231
		mu 0 4 146 66 68 148
		f 4 -231 -109 232 233
		mu 0 4 147 67 69 149
		f 4 -105 -68 234 -233
		mu 0 4 69 23 70 149
		f 4 -235 -72 235 236
		mu 0 4 149 70 72 151
		f 4 -236 -75 237 238
		mu 0 4 150 71 73 152
		f 4 -78 -128 239 -238
		mu 0 4 73 8 74 152
		f 4 -240 -125 240 241
		mu 0 4 152 74 75 153
		f 4 -241 -122 -230 242
		mu 0 4 153 75 76 146
		f 4 -243 -232 243 244
		mu 0 4 153 146 148 155
		f 4 -234 -237 245 -244
		mu 0 4 147 149 151 154
		f 4 -239 -242 -245 -246
		mu 0 4 150 152 153 155
		f 4 -104 -141 246 247
		mu 0 4 87 10 77 156
		f 4 -247 -138 248 249
		mu 0 4 156 77 79 158
		f 4 -249 -135 250 251
		mu 0 4 157 78 80 159
		f 4 -131 -120 252 -251
		mu 0 4 80 19 81 159
		f 4 -253 -124 253 254
		mu 0 4 159 81 82 160
		f 4 -254 -127 255 256
		mu 0 4 160 82 83 161
		f 4 -130 -94 257 -256
		mu 0 4 83 9 84 161
		f 4 -258 -98 258 259
		mu 0 4 161 84 86 163
		f 4 -259 -101 -248 260
		mu 0 4 162 85 87 156
		f 4 -261 -250 261 262
		mu 0 4 162 156 158 165
		f 4 -252 -255 263 -262
		mu 0 4 157 159 160 164
		f 4 -257 -260 -263 -264
		mu 0 4 160 161 163 164
		f 4 -144 -3 264 265
		mu 0 4 98 20 88 166
		f 4 -265 -7 266 267
		mu 0 4 166 88 90 168
		f 4 -267 -10 268 269
		mu 0 4 167 89 91 169
		f 4 -13 -107 270 -269
		mu 0 4 91 7 92 169
		f 4 -271 -111 271 272
		mu 0 4 169 92 94 171
		f 4 -272 -114 273 274
		mu 0 4 170 93 95 172
		f 4 -117 -154 275 -274
		mu 0 4 95 13 96 172
		f 4 -276 -151 276 277
		mu 0 4 172 96 97 173
		f 4 -277 -148 -266 278
		mu 0 4 173 97 98 166
		f 4 -279 -268 279 280
		mu 0 4 173 166 168 175
		f 4 -270 -273 281 -280
		mu 0 4 167 169 171 174
		f 4 -275 -278 -281 -282
		mu 0 4 170 172 173 175
		f 4 -143 -42 282 283
		mu 0 4 109 11 99 176
		f 4 -283 -46 284 285
		mu 0 4 176 99 101 178
		f 4 -285 -49 286 287
		mu 0 4 177 100 102 179
		f 4 -52 -146 288 -287
		mu 0 4 102 12 103 179
		f 4 -289 -150 289 290
		mu 0 4 179 103 104 180
		f 4 -290 -153 291 292
		mu 0 4 180 104 105 181
		f 4 -156 -133 293 -292
		mu 0 4 105 14 106 181
		f 4 -294 -137 294 295
		mu 0 4 181 106 108 183
		f 4 -295 -140 -284 296
		mu 0 4 182 107 109 176
		f 4 -297 -286 297 298
		mu 0 4 182 176 178 185
		f 4 -288 -291 299 -298
		mu 0 4 177 179 180 184
		f 4 -293 -296 -299 -300
		mu 0 4 180 181 183 184;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "HalfCube" -p "BlocksRound";
	rename -uid "C7E7F7ED-4C4E-0340-E6C2-939AA6965BCA";
	setAttr ".rp" -type "double3" 1750 0 200 ;
	setAttr ".sp" -type "double3" 1750 0 200 ;
createNode mesh -n "HalfCubeShape" -p "|BlocksRound|HalfCube";
	rename -uid "04C19F38-434E-6412-C22D-F99E83B827FC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 12 "f[34:37]" "f[40:41]" "f[46:47]" "f[50]" "f[102:103]" "f[110:111]" "f[116:118]" "f[124]" "f[131:133]" "f[137]" "f[143:145]" "f[149]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 13 "f[0:1]" "f[6:7]" "f[14:15]" "f[44:45]" "f[51]" "f[56:58]" "f[64]" "f[66:67]" "f[74:75]" "f[126:127]" "f[134:135]" "f[140:142]" "f[148]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 13 "f[4:5]" "f[10:11]" "f[16:17]" "f[26:27]" "f[48]" "f[59:61]" "f[65]" "f[71:73]" "f[77]" "f[83:85]" "f[89]" "f[95:97]" "f[101]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 12 "f[2:3]" "f[8:9]" "f[20:21]" "f[32:33]" "f[53:55]" "f[62:63]" "f[80:82]" "f[88]" "f[104:106]" "f[112]" "f[128:130]" "f[136]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 13 "f[12:13]" "f[18:19]" "f[30:31]" "f[42:43]" "f[52]" "f[68:70]" "f[76]" "f[90:91]" "f[98:99]" "f[114:115]" "f[122:123]" "f[138:139]" "f[146:147]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 12 "f[22:25]" "f[28:29]" "f[38:39]" "f[49]" "f[78:79]" "f[86:87]" "f[92:94]" "f[100]" "f[107:109]" "f[113]" "f[119:121]" "f[125]";
	setAttr ".pv" -type "double2" 0.63359013199806213 0.087548017501831055 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 186 ".uvst[0].uvsp[0:185]" -type "float2" 0.44845349 0.66867125
		 0.44941705 0.33134478 0.54892516 0.66847831 0.57275784 0.33336237 0.45044088 0.3664009
		 0.54921842 0.36696011 0.57047737 0.36885116 0.32743621 0.33938491 0.44921666 0.48853636
		 0.54921329 0.48897648 0.66968918 0.37661695 0.67253309 0.34116709 0.54861027 0.56894052
		 0.4490633 0.5461486 0.54879415 0.54662544 0.55049318 0.33157161 0.44986033 0.38863933
		 0.54955828 0.38921848 0.44914395 0.51083601 0.54906607 0.51128066 0.44901264 0.56847441
		 0.42714435 0.33280674 0.42914516 0.36827654 0.32969248 0.37484106 0.42703027 0.32714811
		 0.43713635 0.66867065 0.42698187 0.3215059 0.44279659 0.66862595 0.4483974 0.67431021
		 0.4488076 0.32005039 0.4482531 0.67994958 0.44913739 0.32569638 0.44382012 0.33172375
		 0.43824762 0.33210361 0.43269181 0.33247244 0.55457681 0.66845775 0.57305896 0.32203692
		 0.56022084 0.66851985 0.57294357 0.32769608 0.56720096 0.33295241 0.56164277 0.33250925
		 0.55607182 0.33204985 0.55080634 0.32594699 0.54918146 0.67977393 0.55116248 0.3203302
		 0.54900581 0.6741221 0.44419891 0.38832706 0.43046665 0.37954482 0.43856657 0.38796028
		 0.42976099 0.37392306 0.43448859 0.36782551 0.4398039 0.36737019 0.44510806 0.36684424
		 0.45035845 0.3719846 0.45018792 0.37754041 0.4500255 0.38308895 0.56979847 0.3744868
		 0.56089729 0.38863069 0.56903446 0.38008487 0.55523813 0.38895062 0.54945731 0.38365754
		 0.54935592 0.37810078 0.54924411 0.3725394 0.5545454 0.36739594 0.55983752 0.36792648
		 0.56514382 0.3683883 0.44349164 0.51047587 0.31846318 0.37583753 0.43789649 0.51004475
		 0.32408512 0.37527281 0.33004504 0.38048232 0.43788671 0.48894721 0.33030868 0.38612032
		 0.4435451 0.48870742 0.44926101 0.49410999 0.44926339 0.49968255 0.44922686 0.50525683
		 0.67528147 0.37714475 0.56041598 0.51060724 0.68085957 0.37780339 0.55475569 0.51097935
		 0.54904413 0.50569564 0.54906273 0.50011879 0.54911709 0.49454647 0.55486935 0.48920476
		 0.66892833 0.38791591 0.56050217 0.48949599 0.66926444 0.38226345 0.44336921 0.56817126
		 0.32654524 0.32809854 0.43774176 0.56779194 0.32703626 0.33373868 0.3218236 0.33967274
		 0.43771601 0.54683435 0.31620765 0.33982882 0.44337553 0.54645371 0.4491151 0.55173695
		 0.44912368 0.55731839 0.44909209 0.56289667 0.67300552 0.33553723 0.55991244 0.5682835
		 0.67356837 0.32992202 0.55426574 0.5686487 0.54858553 0.56335908 0.54861015 0.5577817
		 0.5486778 0.55220503 0.55444193 0.5469842 0.68379223 0.34181291 0.56003493 0.54742163
		 0.67814684 0.34155601 0.43229604 0.32743716 0.43769246 0.67330462 0.43222666 0.32184374
		 0.44335002 0.67365909 0.44342792 0.32105708 0.44358337 0.67930794 0.44383234 0.32665247
		 0.43807566 0.3277905 0.43886465 0.6780315 0.43786508 0.32306477 0.55403709 0.67348379
		 0.56779933 0.32231712 0.55968559 0.67313641 0.56766379 0.32791442 0.56186974 0.32819206
		 0.55611593 0.32697493 0.55382395 0.6791296 0.55656385 0.32138512 0.5621298 0.32346439
		 0.55852956 0.67785448 0.44487786 0.38307089 0.43545532 0.37864441 0.4392392 0.3826983
		 0.43477637 0.37300044 0.4401347 0.37188584 0.44547457 0.37188685 0.44575381 0.37742883
		 0.44071603 0.37704289 0.56480348 0.37356114 0.56026095 0.38334042 0.56408334 0.37919956
		 0.55461442 0.38367283 0.55379611 0.37800717 0.55413038 0.37245023 0.55946428 0.37245315
		 0.55884039 0.3776291 0.44419128 0.50530809 0.3193664 0.38038832 0.43861359 0.50497425
		 0.32500565 0.38025254 0.43860811 0.4941349 0.32567376 0.3858647 0.44420958 0.49392182
		 0.44496632 0.49962997 0.32090303 0.38499397 0.44024915 0.4995867 0.67429376 0.3821094
		 0.55969417 0.50552094 0.67991996 0.38233024 0.55409604 0.50580341 0.55336392 0.50011504
		 0.5541653 0.49441332 0.67355657 0.38771439 0.55975908 0.49467272 0.55808473 0.50011313
		 0.67833191 0.38690889 0.44406635 0.56298876 0.32199478 0.32896933 0.43848711 0.56267548
		 0.32208073 0.33462006 0.43847138 0.55191123 0.31648129 0.3352176 0.44406939 0.55162203
		 0.44483775 0.55730397 0.31738704 0.330459 0.44012851 0.5572896 0.6779592 0.33649701
		 0.55918944 0.56318849 0.67811579 0.33084846 0.55360723 0.56347895 0.55288619 0.55780321
		 0.55370313 0.55213892 0.68355906 0.33718157 0.55927938 0.55247474 0.55758941 0.55781955
		 0.68270862 0.33240288;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 152 ".vt[0:151]"  1700.85632324 6.94411659 238.75109863 1703.29467773 3.29471922 238.75109863
		 1706.9440918 0.8562696 238.75109863 1711.24890137 0 238.75109863 1711.24890137 0.8562696 243.055847168
		 1711.24890137 3.29471922 246.70526123 1711.24890137 6.94411659 249.14373779 1711.24890137 11.24887466 250
		 1706.9440918 11.24887466 249.14373779 1703.29467773 11.24887466 246.70526123 1700.85632324 11.24887466 243.055847168
		 1700 11.24887466 238.75109863 1793.055908203 0.8562696 238.75109863 1796.70532227 3.29471922 238.75109863
		 1799.14367676 6.94411659 238.75109863 1800 11.24887466 238.75109863 1799.14367676 11.24887466 243.055847168
		 1796.70532227 11.24887466 246.70526123 1793.055908203 11.24887466 249.14373779 1788.75109863 11.24887466 250
		 1788.75109863 6.94411659 249.14373779 1788.75109863 3.29471922 246.70526123 1788.75109863 0.8562696 243.055847168
		 1788.75109863 0 238.75109863 1706.9440918 49.14373016 238.75109863 1703.29467773 46.7052803 238.75109863
		 1700.85632324 43.0558815 238.75109863 1700 38.75112534 238.75109863 1700.85632324 38.75112534 243.055847168
		 1703.29467773 38.75112534 246.70526123 1706.9440918 38.75112534 249.14373779 1711.24890137 38.75112534 250
		 1711.24890137 43.0558815 249.14373779 1711.24890137 46.7052803 246.70526123 1711.24890137 49.14373016 243.055847168
		 1711.24890137 50 238.75109863 1799.14367676 43.0558815 238.75109863 1796.70532227 46.7052803 238.75109863
		 1793.055908203 49.14373016 238.75109863 1788.75109863 50 238.75109863 1788.75109863 49.14373016 243.055847168
		 1788.75109863 46.7052803 246.70526123 1788.75109863 43.0558815 249.14373779 1788.75109863 38.75112534 250
		 1793.055908203 38.75112534 249.14373779 1796.70532227 38.75112534 246.70526123 1799.14367676 38.75112534 243.055847168
		 1800 38.75112534 238.75109863 1706.9440918 38.75112534 150.85626221 1703.29467773 38.75112534 153.29473877
		 1700.85632324 38.75112534 156.94415283 1700 38.75112534 161.24890137 1700.85632324 43.0558815 161.24890137
		 1703.29467773 46.7052803 161.24890137 1706.9440918 49.14373016 161.24890137 1711.24890137 50 161.24890137
		 1711.24890137 49.14373016 156.94415283 1711.24890137 46.7052803 153.29473877 1711.24890137 43.0558815 150.85626221
		 1711.24890137 38.75112534 150 1799.14367676 38.75112534 156.94415283 1796.70532227 38.75112534 153.29473877
		 1793.055908203 38.75112534 150.85626221 1788.75109863 38.75112534 150 1788.75109863 43.0558815 150.85626221
		 1788.75109863 46.7052803 153.29473877 1788.75109863 49.14373016 156.94415283 1788.75109863 50 161.24890137
		 1793.055908203 49.14373016 161.24890137 1796.70532227 46.7052803 161.24890137 1799.14367676 43.0558815 161.24890137
		 1800 38.75112534 161.24890137 1706.9440918 0.8562696 161.24890137 1703.29467773 3.29471922 161.24890137
		 1700.85632324 6.94411659 161.24890137 1700 11.24887466 161.24890137 1700.85632324 11.24887466 156.94415283
		 1703.29467773 11.24887466 153.29473877 1706.9440918 11.24887466 150.85626221 1711.24890137 11.24887466 150
		 1711.24890137 6.94411659 150.85626221 1711.24890137 3.29471922 153.29473877 1711.24890137 0.8562696 156.94415283
		 1711.24890137 0 161.24890137 1799.14367676 6.94411659 161.24890137 1796.70532227 3.29471922 161.24890137
		 1793.055908203 0.8562696 161.24890137 1788.75109863 0 161.24890137 1788.75109863 0.8562696 156.94415283
		 1788.75109863 3.29471922 153.29473877 1788.75109863 6.94411659 150.85626221 1788.75109863 11.24887466 150
		 1793.055908203 11.24887466 150.85626221 1796.70532227 11.24887466 153.29473877 1799.14367676 11.24887466 156.94415283
		 1800 11.24887466 161.24890137 1701.43469238 7.36613131 242.6338501 1703.65063477 3.65059781 242.047607422
		 1707.36608887 1.43463945 242.6338501 1707.95239258 3.65059781 246.34936523 1707.36608887 7.36613131 248.56536865
		 1703.65063477 7.95237541 246.34936523 1704.7565918 4.75660229 245.2434082 1792.63391113 1.43463945 242.6338501
		 1796.34936523 3.65059781 242.047607422 1798.56530762 7.36613131 242.6338501 1796.34936523 7.95237541 246.34936523
		 1792.63391113 7.36613131 248.56536865 1792.047607422 3.65059781 246.34936523 1795.2434082 4.75660229 245.2434082
		 1707.36608887 48.56536102 242.6338501 1703.65063477 46.34940338 242.047607422 1701.43469238 42.63386917 242.6338501
		 1703.65063477 42.047626495 246.34936523 1707.36608887 42.63386917 248.56536865 1707.95239258 46.34940338 246.34936523
		 1704.7565918 45.24339676 245.2434082 1798.56530762 42.63386917 242.6338501 1796.34936523 46.34940338 242.047607422
		 1792.63391113 48.56536102 242.6338501 1792.047607422 46.34940338 246.34936523 1792.63391113 42.63386917 248.56536865
		 1796.34936523 42.047626495 246.34936523 1795.2434082 45.24339676 245.2434082 1707.36608887 42.63386917 151.43463135
		 1703.65063477 42.047626495 153.65063477 1701.43469238 42.63386917 157.3661499 1703.65063477 46.34940338 157.95239258
		 1707.36608887 48.56536102 157.3661499 1707.95239258 46.34940338 153.65063477 1704.7565918 45.24339676 154.7565918
		 1798.56530762 42.63386917 157.3661499 1796.34936523 42.047626495 153.65063477 1792.63391113 42.63386917 151.43463135
		 1792.047607422 46.34940338 153.65063477 1792.63391113 48.56536102 157.3661499 1796.34936523 46.34940338 157.95239258
		 1795.2434082 45.24339676 154.7565918 1707.36608887 1.43463945 157.3661499 1703.65063477 3.65059781 157.95239258
		 1701.43469238 7.36613131 157.3661499 1703.65063477 7.95237541 153.65063477 1707.36608887 7.36613131 151.43463135
		 1707.95239258 3.65059781 153.65063477 1704.7565918 4.75660229 154.7565918 1798.56530762 7.36613131 157.3661499
		 1796.34936523 3.65059781 157.95239258 1792.63391113 1.43463945 157.3661499 1792.047607422 3.65059781 153.65063477
		 1792.63391113 7.36613131 151.43463135 1796.34936523 7.95237541 153.65063477 1795.2434082 4.75660229 154.7565918;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  3 2 1 2 72 1 72 83 1 83 3 1 2 1 1 1 73 1 73 72 1 1 0 1
		 0 74 1 74 73 1 0 11 1 11 75 1 75 74 1 7 6 1 6 20 1 20 19 1 19 7 1 6 5 1 5 21 1 21 20 1
		 5 4 1 4 22 1 22 21 1 4 3 1 3 23 1 23 22 1 11 10 1 10 28 1 28 27 1 27 11 1 10 9 1
		 9 29 1 29 28 1 9 8 1 8 30 1 30 29 1 8 7 1 7 31 1 31 30 1 15 14 1 14 84 1 84 95 1
		 95 15 1 14 13 1 13 85 1 85 84 1 13 12 1 12 86 1 86 85 1 12 23 1 23 87 1 87 86 1 19 18 1
		 18 44 1 44 43 1 43 19 1 18 17 1 17 45 1 45 44 1 17 16 1 16 46 1 46 45 1 16 15 1 15 47 1
		 47 46 1 27 26 1 26 52 1 52 51 1 51 27 1 26 25 1 25 53 1 53 52 1 25 24 1 24 54 1 54 53 1
		 24 35 1 35 55 1 55 54 1 35 34 1 34 40 1 40 39 1 39 35 1 34 33 1 33 41 1 41 40 1 33 32 1
		 32 42 1 42 41 1 32 31 1 31 43 1 43 42 1 39 38 1 38 68 1 68 67 1 67 39 1 38 37 1 37 69 1
		 69 68 1 37 36 1 36 70 1 70 69 1 36 47 1 47 71 1 71 70 1 51 50 1 50 76 1 76 75 1 75 51 1
		 50 49 1 49 77 1 77 76 1 49 48 1 48 78 1 78 77 1 48 59 1 59 79 1 79 78 1 59 58 1 58 64 1
		 64 63 1 63 59 1 58 57 1 57 65 1 65 64 1 57 56 1 56 66 1 66 65 1 56 55 1 55 67 1 67 66 1
		 63 62 1 62 92 1 92 91 1 91 63 1 62 61 1 61 93 1 93 92 1 61 60 1 60 94 1 94 93 1 60 71 1
		 71 95 1 95 94 1 83 82 1 82 88 1 88 87 1 87 83 1 82 81 1 81 89 1 89 88 1 81 80 1 80 90 1
		 90 89 1 80 79 1 79 91 1 91 90 1 0 96 1 96 10 1 1 97 1 97 96 1 2 98 1 98 97 1 4 98 1
		 5 99 1 99 98 1 6 100 1;
	setAttr ".ed[166:299]" 100 99 1 8 100 1 9 101 1 101 100 1 96 101 1 97 102 1
		 102 101 1 99 102 1 12 103 1 103 22 1 13 104 1 104 103 1 14 105 1 105 104 1 16 105 1
		 17 106 1 106 105 1 18 107 1 107 106 1 20 107 1 21 108 1 108 107 1 103 108 1 104 109 1
		 109 108 1 106 109 1 24 110 1 110 34 1 25 111 1 111 110 1 26 112 1 112 111 1 28 112 1
		 29 113 1 113 112 1 30 114 1 114 113 1 32 114 1 33 115 1 115 114 1 110 115 1 111 116 1
		 116 115 1 113 116 1 36 117 1 117 46 1 37 118 1 118 117 1 38 119 1 119 118 1 40 119 1
		 41 120 1 120 119 1 42 121 1 121 120 1 44 121 1 45 122 1 122 121 1 117 122 1 118 123 1
		 123 122 1 120 123 1 48 124 1 124 58 1 49 125 1 125 124 1 50 126 1 126 125 1 52 126 1
		 53 127 1 127 126 1 54 128 1 128 127 1 56 128 1 57 129 1 129 128 1 124 129 1 125 130 1
		 130 129 1 127 130 1 60 131 1 131 70 1 61 132 1 132 131 1 62 133 1 133 132 1 64 133 1
		 65 134 1 134 133 1 66 135 1 135 134 1 68 135 1 69 136 1 136 135 1 131 136 1 132 137 1
		 137 136 1 134 137 1 72 138 1 138 82 1 73 139 1 139 138 1 74 140 1 140 139 1 76 140 1
		 77 141 1 141 140 1 78 142 1 142 141 1 80 142 1 81 143 1 143 142 1 138 143 1 139 144 1
		 144 143 1 141 144 1 84 145 1 145 94 1 85 146 1 146 145 1 86 147 1 147 146 1 88 147 1
		 89 148 1 148 147 1 90 149 1 149 148 1 92 149 1 93 150 1 150 149 1 145 150 1 146 151 1
		 151 150 1 148 151 1;
	setAttr -s 150 -ch 600 ".fc[0:149]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 27 88 20
		f 4 4 5 6 -2
		mu 0 4 27 25 90 88
		f 4 7 8 9 -6
		mu 0 4 26 24 91 89
		f 4 10 11 12 -9
		mu 0 4 24 21 7 91
		f 4 13 14 15 16
		mu 0 4 1 31 42 15
		f 4 17 18 19 -15
		mu 0 4 31 29 44 42
		f 4 20 21 22 -19
		mu 0 4 30 28 45 43
		f 4 23 24 25 -22
		mu 0 4 28 0 2 45
		f 4 26 27 28 29
		mu 0 4 21 34 50 22
		f 4 30 31 32 -28
		mu 0 4 34 33 51 50
		f 4 33 34 35 -32
		mu 0 4 33 32 52 51
		f 4 36 37 38 -35
		mu 0 4 32 1 4 52
		f 4 39 40 41 42
		mu 0 4 3 38 99 11
		f 4 43 44 45 -41
		mu 0 4 38 36 101 99
		f 4 46 47 48 -45
		mu 0 4 37 35 102 100
		f 4 49 50 51 -48
		mu 0 4 35 2 12 102
		f 4 52 53 54 55
		mu 0 4 15 41 63 5
		f 4 56 57 58 -54
		mu 0 4 41 40 64 63
		f 4 59 60 61 -58
		mu 0 4 40 39 65 64
		f 4 62 63 64 -61
		mu 0 4 39 3 6 65
		f 4 65 66 67 68
		mu 0 4 22 49 70 23
		f 4 69 70 71 -67
		mu 0 4 49 47 72 70
		f 4 72 73 74 -71
		mu 0 4 48 46 73 71
		f 4 75 76 77 -74
		mu 0 4 46 16 8 73
		f 4 78 79 80 81
		mu 0 4 16 55 60 17
		f 4 82 83 84 -80
		mu 0 4 55 54 61 60
		f 4 85 86 87 -84
		mu 0 4 54 53 62 61
		f 4 88 89 90 -87
		mu 0 4 53 4 5 62
		f 4 91 92 93 94
		mu 0 4 17 59 84 9
		f 4 95 96 97 -93
		mu 0 4 59 57 86 84
		f 4 98 99 100 -97
		mu 0 4 58 56 87 85
		f 4 101 102 103 -100
		mu 0 4 56 6 10 87
		f 4 104 105 106 107
		mu 0 4 23 69 92 7
		f 4 108 109 110 -106
		mu 0 4 69 67 94 92
		f 4 111 112 113 -110
		mu 0 4 68 66 95 93
		f 4 114 115 116 -113
		mu 0 4 66 18 13 95
		f 4 117 118 119 120
		mu 0 4 18 76 81 19
		f 4 121 122 123 -119
		mu 0 4 76 75 82 81
		f 4 124 125 126 -123
		mu 0 4 75 74 83 82
		f 4 127 128 129 -126
		mu 0 4 74 8 9 83
		f 4 130 131 132 133
		mu 0 4 19 80 106 14
		f 4 134 135 136 -132
		mu 0 4 80 78 108 106
		f 4 137 138 139 -136
		mu 0 4 79 77 109 107
		f 4 140 141 142 -139
		mu 0 4 77 10 11 109
		f 4 143 144 145 146
		mu 0 4 20 98 103 12
		f 4 147 148 149 -145
		mu 0 4 98 97 104 103
		f 4 150 151 152 -149
		mu 0 4 97 96 105 104
		f 4 153 154 155 -152
		mu 0 4 96 13 14 105
		f 4 -17 -56 -90 -38
		mu 0 4 1 15 5 4
		f 4 -82 -95 -129 -77
		mu 0 4 16 17 9 8
		f 4 -121 -134 -155 -116
		mu 0 4 18 19 14 13
		f 4 -147 -51 -25 -4
		mu 0 4 20 12 2 0
		f 4 -43 -142 -103 -64
		mu 0 4 3 11 10 6
		f 4 -12 -30 -69 -108
		mu 0 4 7 21 22 23
		f 4 -27 -11 156 157
		mu 0 4 34 21 24 110
		f 4 -157 -8 158 159
		mu 0 4 110 24 26 112
		f 4 -159 -5 160 161
		mu 0 4 111 25 27 113
		f 4 -1 -24 162 -161
		mu 0 4 27 0 28 113
		f 4 -163 -21 163 164
		mu 0 4 113 28 30 115
		f 4 -164 -18 165 166
		mu 0 4 114 29 31 116
		f 4 -14 -37 167 -166
		mu 0 4 31 1 32 116
		f 4 -168 -34 168 169
		mu 0 4 116 32 33 117
		f 4 -169 -31 -158 170
		mu 0 4 117 33 34 110
		f 4 -171 -160 171 172
		mu 0 4 117 110 112 119
		f 4 -162 -165 173 -172
		mu 0 4 111 113 115 118
		f 4 -167 -170 -173 -174
		mu 0 4 114 116 117 119
		f 4 -26 -50 174 175
		mu 0 4 45 2 35 120
		f 4 -175 -47 176 177
		mu 0 4 120 35 37 122
		f 4 -177 -44 178 179
		mu 0 4 121 36 38 123
		f 4 -40 -63 180 -179
		mu 0 4 38 3 39 123
		f 4 -181 -60 181 182
		mu 0 4 123 39 40 124
		f 4 -182 -57 183 184
		mu 0 4 124 40 41 125
		f 4 -53 -16 185 -184
		mu 0 4 41 15 42 125
		f 4 -186 -20 186 187
		mu 0 4 125 42 44 127
		f 4 -187 -23 -176 188
		mu 0 4 126 43 45 120
		f 4 -189 -178 189 190
		mu 0 4 126 120 122 129
		f 4 -180 -183 191 -190
		mu 0 4 121 123 124 128
		f 4 -185 -188 -191 -192
		mu 0 4 124 125 127 128
		f 4 -79 -76 192 193
		mu 0 4 55 16 46 130
		f 4 -193 -73 194 195
		mu 0 4 130 46 48 132
		f 4 -195 -70 196 197
		mu 0 4 131 47 49 133
		f 4 -66 -29 198 -197
		mu 0 4 49 22 50 133
		f 4 -199 -33 199 200
		mu 0 4 133 50 51 134
		f 4 -200 -36 201 202
		mu 0 4 134 51 52 135
		f 4 -39 -89 203 -202
		mu 0 4 52 4 53 135
		f 4 -204 -86 204 205
		mu 0 4 135 53 54 136
		f 4 -205 -83 -194 206
		mu 0 4 136 54 55 130
		f 4 -207 -196 207 208
		mu 0 4 136 130 132 137
		f 4 -198 -201 209 -208
		mu 0 4 131 133 134 137
		f 4 -203 -206 -209 -210
		mu 0 4 134 135 136 137
		f 4 -65 -102 210 211
		mu 0 4 65 6 56 138
		f 4 -211 -99 212 213
		mu 0 4 138 56 58 140
		f 4 -213 -96 214 215
		mu 0 4 139 57 59 141
		f 4 -92 -81 216 -215
		mu 0 4 59 17 60 141
		f 4 -217 -85 217 218
		mu 0 4 141 60 61 142
		f 4 -218 -88 219 220
		mu 0 4 142 61 62 143
		f 4 -91 -55 221 -220
		mu 0 4 62 5 63 143
		f 4 -222 -59 222 223
		mu 0 4 143 63 64 144
		f 4 -223 -62 -212 224
		mu 0 4 144 64 65 138
		f 4 -225 -214 225 226
		mu 0 4 144 138 140 145
		f 4 -216 -219 227 -226
		mu 0 4 139 141 142 145
		f 4 -221 -224 -227 -228
		mu 0 4 142 143 144 145
		f 4 -118 -115 228 229
		mu 0 4 76 18 66 146
		f 4 -229 -112 230 231
		mu 0 4 146 66 68 148
		f 4 -231 -109 232 233
		mu 0 4 147 67 69 149
		f 4 -105 -68 234 -233
		mu 0 4 69 23 70 149
		f 4 -235 -72 235 236
		mu 0 4 149 70 72 151
		f 4 -236 -75 237 238
		mu 0 4 150 71 73 152
		f 4 -78 -128 239 -238
		mu 0 4 73 8 74 152
		f 4 -240 -125 240 241
		mu 0 4 152 74 75 153
		f 4 -241 -122 -230 242
		mu 0 4 153 75 76 146
		f 4 -243 -232 243 244
		mu 0 4 153 146 148 155
		f 4 -234 -237 245 -244
		mu 0 4 147 149 151 154
		f 4 -239 -242 -245 -246
		mu 0 4 150 152 153 155
		f 4 -104 -141 246 247
		mu 0 4 87 10 77 156
		f 4 -247 -138 248 249
		mu 0 4 156 77 79 158
		f 4 -249 -135 250 251
		mu 0 4 157 78 80 159
		f 4 -131 -120 252 -251
		mu 0 4 80 19 81 159
		f 4 -253 -124 253 254
		mu 0 4 159 81 82 160
		f 4 -254 -127 255 256
		mu 0 4 160 82 83 161
		f 4 -130 -94 257 -256
		mu 0 4 83 9 84 161
		f 4 -258 -98 258 259
		mu 0 4 161 84 86 163
		f 4 -259 -101 -248 260
		mu 0 4 162 85 87 156
		f 4 -261 -250 261 262
		mu 0 4 162 156 158 165
		f 4 -252 -255 263 -262
		mu 0 4 157 159 160 164
		f 4 -257 -260 -263 -264
		mu 0 4 160 161 163 164
		f 4 -144 -3 264 265
		mu 0 4 98 20 88 166
		f 4 -265 -7 266 267
		mu 0 4 166 88 90 168
		f 4 -267 -10 268 269
		mu 0 4 167 89 91 169
		f 4 -13 -107 270 -269
		mu 0 4 91 7 92 169
		f 4 -271 -111 271 272
		mu 0 4 169 92 94 171
		f 4 -272 -114 273 274
		mu 0 4 170 93 95 172
		f 4 -117 -154 275 -274
		mu 0 4 95 13 96 172
		f 4 -276 -151 276 277
		mu 0 4 172 96 97 173
		f 4 -277 -148 -266 278
		mu 0 4 173 97 98 166
		f 4 -279 -268 279 280
		mu 0 4 173 166 168 175
		f 4 -270 -273 281 -280
		mu 0 4 167 169 171 174
		f 4 -275 -278 -281 -282
		mu 0 4 170 172 173 175
		f 4 -143 -42 282 283
		mu 0 4 109 11 99 176
		f 4 -283 -46 284 285
		mu 0 4 176 99 101 178
		f 4 -285 -49 286 287
		mu 0 4 177 100 102 179
		f 4 -52 -146 288 -287
		mu 0 4 102 12 103 179
		f 4 -289 -150 289 290
		mu 0 4 179 103 104 180
		f 4 -290 -153 291 292
		mu 0 4 180 104 105 181
		f 4 -156 -133 293 -292
		mu 0 4 105 14 106 181
		f 4 -294 -137 294 295
		mu 0 4 181 106 108 183
		f 4 -295 -140 -284 296
		mu 0 4 182 107 109 176
		f 4 -297 -286 297 298
		mu 0 4 182 176 178 185
		f 4 -288 -291 299 -298
		mu 0 4 177 179 180 184
		f 4 -293 -296 -299 -300
		mu 0 4 180 181 183 184;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C9DB35F8-48B6-6A33-01D7-93B27A57BDA2";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "93F193B0-4771-576C-179E-B395A10926C7";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C052A628-4C4E-0685-E0C3-4EA0FF19FACE";
createNode displayLayerManager -n "layerManager";
	rename -uid "E341BB4C-44C5-C77E-E791-EB93B8F549BB";
createNode displayLayer -n "defaultLayer";
	rename -uid "271D3229-41EE-F892-1D6A-64969E3FF1EB";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7972A57F-47B5-2CCC-07E2-F9BB993D4324";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "36D4BFD4-4C66-68D8-D95B-B1B2788A3A5F";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "EA61B9EF-4690-17B9-B82B-3387F8F8F1B3";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "531B7740-44C4-16E0-1A4B-7DA3ACB34660";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "B8047F16-41C7-A592-1D6E-39984F176BAA";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "CC0984B8-45CC-20A1-E6A8-BB81E9137B40";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "FBAB1318-4F56-804A-6222-76BC014E2731";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1318\n            -height 723\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 898\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|top\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1318\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|top\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1318\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 10000 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CEEB5164-46D8-90AD-E943-8DA22019B844";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "45E114DA-45B7-84A0-D959-A4805D5AF882";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV2";
	rename -uid "6CC99D92-42ED-6217-D04F-96B45612E506";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV3";
	rename -uid "435ED15F-4686-B9DA-26C1-DEA891182C3A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV4";
	rename -uid "37283384-466F-5DFF-65E1-F3A3933A943C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV5";
	rename -uid "ACA078D6-4258-82D5-475A-87B6E61CAC3F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV6";
	rename -uid "C328A0A4-4F34-BFF2-4449-329E025DF72D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV7";
	rename -uid "9672494D-4827-DDAD-769F-E189D210E64B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV8";
	rename -uid "91F91FA6-41F4-68EF-E091-9B9FEE0389F5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV9";
	rename -uid "5894AC75-4DDB-5DD4-60DF-9A82A8BCAABC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "D7810CF3-4ABF-179A-550F-7D9E74A8A815";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" 0.091825634 0.36061022 -0.091825634
		 0.36061022 0.091825634 0.17695893 -0.091825634 0.17695896 0.091825634 -0.0066922903
		 -0.091825634 -0.0066922903 0.091825604 -0.19034353 -0.091825634 -0.19034353 0.091825604
		 -0.37399474 -0.091825634 -0.37399474 -0.27547687 0.36061022 -0.27547687 0.17695896
		 0.27547687 0.36061019 0.27547687 0.17695893;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "05580468-4BEF-265D-572F-3E8329B1CA3E";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" 0.058651224 0.22791274 -0.058651268
		 0.22791274 0.058651224 0.11061025 -0.058651268 0.11061025 0.058651254 -0.0066922605
		 -0.058651268 -0.0066922605 0.058651254 -0.12399477 -0.058651268 -0.12399477 0.058651254
		 -0.24129733 -0.058651268 -0.24129733 -0.17595378 0.22791274 -0.17595378 0.11061025
		 0.17595375 0.22791274 0.17595375 0.11061025;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "32D107DA-43F6-92D4-7132-B6BAEF4C9381";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" 0.052590176 0.33169451 -0.064877376
		 0.32507834 0.055898264 0.14796072 -0.061569259 0.14134455 0.060860381 -0.0026399568
		 -0.056607112 -0.0092561021 0.064168468 -0.18637368 -0.053299055 -0.19298986 0.069130585
		 -0.33697441 -0.048336908 -0.34359059 -0.21547799 0.32011619 -0.21216993 0.13638243
		 0.20319083 0.33665663 0.20649892 0.15292284;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "7001D4A7-44B1-8529-2A27-3BB3E7CD7C86";
	setAttr ".uopa" yes;
	setAttr -s 68 ".uvtk[0:67]" -type "float2" -0.088173836 0.35459653 -0.074750215
		 0.38700414 -0.049946517 0.41180781 -0.017538879 0.42523152 0.017538812 0.42523155
		 0.049946394 0.41180789 0.074750125 0.38700423 0.088173807 0.35459661 0.088173836
		 0.31951889 0.074750155 0.28711122 0.049946453 0.26230755 0.017538872 0.2488839 -0.017538819
		 0.24888387 -0.049946517 0.26230755 -0.074750215 0.28711116 -0.088173836 0.31951886
		 -0.086267248 0.090457946 -0.076029167 0.089323223 -0.065791056 0.088188499 -0.055552915
		 0.087053776 -0.045314744 0.085919082 -0.035076633 0.084784359 -0.024838522 0.083649635
		 -0.014600411 0.082514912 -0.0043623 0.081380218 0.005875811 0.080245495 0.016113952
		 0.079110771 0.026352122 0.077976048 0.036590204 0.076841325 0.046828315 0.075706631
		 0.057066426 0.074571908 0.067304626 0.073437184 0.077542648 0.072302461 -0.077542707
		 -0.085687101 -0.067304626 -0.086821795 -0.057066485 -0.087956488 -0.046828374 -0.089091241
		 -0.036590204 -0.090225995 -0.026352093 -0.091360688 -0.016113952 -0.092495382 -0.0058758706
		 -0.093630075 0.0043622702 -0.094764829 0.014600381 -0.095899522 0.024838522 -0.097034276
		 0.035076693 -0.098168969 0.045314774 -0.099303663 0.055552885 -0.10043842 0.065790996
		 -0.10157311 0.076029137 -0.10270786 0.086267218 -0.10384256 -0.088173866 -0.33290347
		 -0.074750185 -0.30049586 -0.049946487 -0.27569214 -0.017538905 -0.26226851 0.017538786
		 -0.26226845 0.049946398 -0.27569214 0.074750155 -0.30049586 0.088173807 -0.33290336
		 0.088173836 -0.36798111 0.074750155 -0.40038881 0.049946427 -0.42519239 0.017538875
		 -0.43861613 -0.017538846 -0.43861613 -0.049946487 -0.42519251 -0.074750185 -0.40038881
		 -0.088173866 -0.36798111 -3.7252903e-09 0.33705771 -2.9802322e-08 -0.35044229;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "74EAFCBB-44F1-2FE9-8E2A-A491D8737FD4";
	setAttr ".uopa" yes;
	setAttr -s 68 ".uvtk[0:67]" -type "float2" -0.088173851 0.35459653 -0.07475017
		 0.38700411 -0.049946532 0.41180781 -0.01753895 0.42523149 0.017538771 0.42523155
		 0.049946398 0.41180789 0.074750096 0.38700423 0.088173807 0.35459661 0.088173836
		 0.31951886 0.074750155 0.28711122 0.049946457 0.26230755 0.01753886 0.24888389 -0.017538831
		 0.24888386 -0.049946472 0.26230755 -0.07475017 0.28711116 -0.088173851 0.31951886
		 -0.085712194 0.053917646 -0.075459182 0.053198129 -0.06520617 0.052478611 -0.054953188
		 0.051759064 -0.044700176 0.051039547 -0.034447193 0.050320029 -0.024194181 0.049600482
		 -0.013941199 0.048880965 -0.0036881864 0.048161417 0.0065647662 0.0474419 0.016817808
		 0.046722382 0.02707082 0.046002835 0.037323803 0.045283318 0.047576874 0.0445638
		 0.057829797 0.043844253 0.06808278 0.043124735 0.078335732 0.042405218 -0.078335822
		 -0.055789798 -0.068082809 -0.056509346 -0.057829827 -0.057228893 -0.047576845 -0.057948381
		 -0.037323833 -0.058667928 -0.02707085 -0.059387475 -0.016817838 -0.060106963 -0.0065648258
		 -0.06082651 0.0036881566 -0.061546057 0.013941139 -0.062265545 0.024194181 -0.062985092
		 0.034447193 -0.06370464 0.044700176 -0.064424127 0.054953188 -0.065143675 0.06520617
		 -0.065863222 0.075459152 -0.066582769 0.085712105 -0.067302257 -0.088173866 -0.33290347
		 -0.074750185 -0.30049586 -0.049946547 -0.27569214 -0.017538965 -0.26226848 0.017538786
		 -0.26226842 0.049946398 -0.27569211 0.074750155 -0.30049583 0.088173807 -0.33290336
		 0.088173836 -0.36798111 0.074750185 -0.40038881 0.049946427 -0.42519239 0.017538875
		 -0.43861613 -0.017538846 -0.43861613 -0.049946487 -0.42519245 -0.074750185 -0.40038881
		 -0.088173866 -0.36798111 -4.4703484e-08 0.33705771 -2.9802322e-08 -0.35044229;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "476969AD-4E62-267F-6A59-79AC712B0FC4";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" 0.087554336 0.40115678 -0.096220255
		 0.3971127 0.089576393 0.18426946 -0.094198227 0.18022537 0.093620479 0.00049483776
		 -0.090154171 -0.003549248 0.095642537 -0.21639249 -0.088132083 -0.2204366 0.099686623
		 -0.40016711 -0.084088027 -0.40421116 -0.2799949 0.39306858 -0.27797288 0.17618129
		 0.27132896 0.40520087 0.27335101 0.18831354;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "50B66FC2-4DEF-9FA3-435B-EB82FFC1DBE3";
	setAttr ".uopa" yes;
	setAttr -s 68 ".uvtk[0:67]" -type "float2" -0.088173851 0.35459653 -0.07475017
		 0.38700414 -0.049946535 0.41180784 -0.01753895 0.42523152 0.017538801 0.42523158
		 0.049946383 0.41180789 0.074750111 0.38700423 0.088173822 0.35459661 0.088173822
		 0.31951889 0.07475017 0.28711122 0.049946472 0.26230755 0.01753889 0.2488839 -0.017538831
		 0.24888386 -0.049946476 0.26230755 -0.07475017 0.28711116 -0.088173851 0.31951886
		 -0.086519286 0.13027242 -0.076330051 0.12831938 -0.066140845 0.12636635 -0.05595161
		 0.12441328 -0.045762375 0.12246025 -0.03557317 0.12050721 -0.025383934 0.11855415
		 -0.015194699 0.11660111 -0.005005464 0.11464807 0.0051837415 0.11269501 0.015372977
		 0.11074197 0.025562212 0.10878894 0.035751387 0.10683587 0.045940623 0.10488284 0.056129858
		 0.1029298 0.066319093 0.10097674 0.076508269 0.0990237 -0.076508328 -0.11240825 -0.066319093
		 -0.11436132 -0.056129858 -0.11631432 -0.045940623 -0.11826739 -0.035751417 -0.12022045
		 -0.025562182 -0.12217346 -0.015372947 -0.12412652 -0.0051837116 -0.12607959 0.0050054938
		 -0.12803259 0.015194699 -0.12998566 0.025383934 -0.13193873 0.03557317 -0.13389173
		 0.045762405 -0.1358448 0.05595164 -0.13779786 0.066140816 -0.13975087 0.076330051
		 -0.14170393 0.086519226 -0.143657 -0.088173866 -0.33290347 -0.074750185 -0.30049586
		 -0.049946547 -0.27569214 -0.017538965 -0.26226848 0.017538816 -0.26226842 0.049946398
		 -0.27569211 0.074750155 -0.30049583 0.088173807 -0.33290336 0.088173836 -0.36798114
		 0.074750155 -0.40038878 0.049946457 -0.42519242 0.017538875 -0.43861616 -0.017538846
		 -0.43861616 -0.049946487 -0.42519248 -0.074750185 -0.40038878 -0.088173866 -0.36798114
		 -1.4901161e-08 0.33705771 -2.9802322e-08 -0.35044229;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "645788EB-4CEB-75C9-D58C-A48B5537B02D";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[0:9]" -type "float2" 0.046777934 0.27581239 -0.070816755
		 0.2670114 0.055578947 0.15821773 -0.062015712 0.14941671 0.06802544 -0.15453285 -0.049569249
		 -0.16333389 0.076826423 -0.27212757 -0.040768266 -0.28092855 -0.18841141 0.16997509
		 0.16437265 0.19637808;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "903EC719-4F99-E9A8-0E50-B99E8F5CDC33";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0.041407764 0.37501562 -0.019720659
		 0.39199424 -0.0011925101 -0.13778129 -0.0055351704 -0.11894074 -0.0092448592 -0.30518636
		 -0.019292518 -0.28751442 0.0071291327 0.16310698 0.00036692619 0.0049254894;
createNode polyLayoutUV -n "polyLayoutUV10";
	rename -uid "722B2933-47B2-3B3F-C83F-B2AEDFA725F3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV11";
	rename -uid "64D5BB4B-4B83-4581-8DFC-ABA05BABC2EC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV12";
	rename -uid "C2630A8D-412E-3B66-7291-3187FF62E4E8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV13";
	rename -uid "6060990D-4037-99D2-E190-A495686F38C6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV14";
	rename -uid "51746E76-4473-F97B-6E84-988CBCF472B4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV15";
	rename -uid "93461264-4CF8-9DCA-F498-B6AD8F1F7DD4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV16";
	rename -uid "4ED3D89F-4242-E627-20E9-D1B9CEE5AF2F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV17";
	rename -uid "9AFE6CD0-4396-C11A-6641-49A7AEF81EE8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV18";
	rename -uid "0C87E16A-47AF-C314-F97A-6F889E28932F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "9C6A49DB-4CAF-C179-D56B-44A1DEACE2EC";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" -0.027885675 -0.10485061
		 0.027885705 -0.10485061 -0.027885675 -0.049079224 0.027885705 -0.049079165 -0.027885675
		 0.0066922158 0.027885705 0.0066922158 -0.027885765 0.062463656 0.027885705 0.062463656
		 -0.027885765 0.11823513 0.027885705 0.11823513 0.083657116 -0.10485061 0.083657116
		 -0.049079165 -0.083657175 -0.10485063 -0.083657175 -0.049079224;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "DE713387-4283-7DE8-39A6-679DEAEEF398";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" -0.0557715 -0.21639329 0.055771381
		 -0.21639329 -0.0557715 -0.10485045 0.055771381 -0.10485045 -0.05577144 0.0066923574
		 0.055771381 0.0066923574 -0.05577144 0.11823518 0.055771381 0.11823518 -0.05577144
		 0.22977796 0.055771381 0.22977796 0.1673142 -0.21639329 0.1673142 -0.10485045 -0.16731428
		 -0.21639329 -0.16731428 -0.10485045;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "36AEB724-4D48-8803-BB42-04AB5512CD93";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" -0.055769861 -0.13352981
		 0.05577302 -0.13353264 -0.0557684 -0.077758417 0.05577445 -0.077761248 -0.055766255
		 0.0058986992 0.055776656 0.0058958977 -0.055764914 0.06167008 0.055777967 0.061667338
		 -0.055762738 0.14532724 0.055780113 0.14532432 0.13943022 -0.13353476 0.1394316 -0.077763334
		 -0.13942693 -0.1335277 -0.13942553 -0.07775633;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "BC03108A-4835-7655-F9A4-16A607900043";
	setAttr ".uopa" yes;
	setAttr -s 68 ".uvtk[0:67]" -type "float2" 0.054699823 0.01757282 0.054699823
		 -0.0041880906 0.04637228 -0.024292558 0.030985042 -0.039679855 0.010880455 -0.048007429
		 -0.010880426 -0.048007429 -0.030984893 -0.039679855 -0.04637219 -0.024292588 -0.054699734
		 -0.0041881204 -0.054699734 0.017572701 -0.04637222 0.037677228 -0.030984893 0.053064525
		 -0.010880426 0.061392069 0.010880336 0.061392069 0.030985042 0.053064525 0.046372339
		 0.037677228 -0.17409809 -0.076942638 -0.15233715 -0.076945409 -0.13057627 -0.076948181
		 -0.10881534 -0.076950952 -0.087054312 -0.076953724 -0.065293461 -0.076956496 -0.043532431
		 -0.076959297 -0.02177158 -0.076962039 -1.0699034e-05 -0.076964781 0.021750242 -0.076967582
		 0.043511182 -0.076970354 0.065272063 -0.076973155 0.087033063 -0.076975927 0.10879394
		 -0.076978669 0.13055488 -0.07698144 0.15231588 -0.076984212 0.17407671 -0.076986983
		 -0.17407675 0.090371564 -0.1523159 0.090368882 -0.1305549 0.09036608 -0.10879406
		 0.090363279 -0.087033123 0.090360478 -0.065272152 0.090357736 -0.043511182 0.090355054
		 -0.021750271 0.090352252 1.0639429e-05 0.090349451 0.02177152 0.090346709 0.043532521
		 0.090343907 0.065293461 0.090341166 0.087054342 0.090338364 0.10881528 0.090335563
		 0.13057616 0.090332821 0.15233716 0.09033002 0.17409804 0.090327278 0.054699823 -0.0041880906
		 0.046372339 -0.024292558 0.030985042 -0.039679855 0.010880455 -0.048007429 -0.010880426
		 -0.048007429 -0.030984893 -0.039679915 -0.04637219 -0.024292618 -0.054699734 -0.0041881204
		 -0.054699734 0.017572761 -0.04637222 0.037677169 -0.030984923 0.053064525 -0.010880426
		 0.061392069 0.010880515 0.061392069 0.030984983 0.053064525 0.046372339 0.037677169
		 0.054699823 0.01757288 7.4505806e-08 0.0066923201 1.4901161e-08 0.0066923201;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "E5DEB38C-4064-536B-F041-F09489089C87";
	setAttr ".uopa" yes;
	setAttr -s 68 ".uvtk[0:67]" -type "float2" 0.054699823 -0.0041880608
		 0.046372339 -0.024292558 0.030984983 -0.039679885 0.010880515 -0.048007429 -0.010880455
		 -0.048007429 -0.030984893 -0.039679885 -0.04637222 -0.024292558 -0.054699734 -0.0041881204
		 -0.054699734 0.017572761 -0.04637222 0.037677169 -0.030984923 0.053064525 -0.010880455
		 0.061392069 0.010880515 0.061392069 0.030984983 0.053064525 0.046372339 0.037677169
		 0.054699823 0.017572761 -0.17410807 -0.10481821 -0.15234716 -0.10482223 -0.13058619
		 -0.10482624 -0.10882525 -0.10483029 -0.087064341 -0.10483436 -0.06530343 -0.10483837
		 -0.043542489 -0.10484242 -0.021781579 -0.10484649 -2.0638108e-05 -0.10485055 0.021740273
		 -0.10485455 0.043501154 -0.10485858 0.065262154 -0.10486268 0.087023154 -0.1048667
		 0.10878409 -0.10487071 0.13054492 -0.10487476 0.15230592 -0.10487883 0.17406674 -0.10488288
		 -0.17406662 0.11826749 -0.15230568 0.11826344 -0.13054477 0.11825939 -0.10878383
		 0.11825545 -0.087022915 0.11825134 -0.065262005 0.11824729 -0.043501064 0.11824323
		 -0.021740124 0.11823918 2.0757318e-05 0.11823513 0.021781757 0.11823119 0.043542638
		 0.11822714 0.065303639 0.11822303 0.08706452 0.11821903 0.10882546 0.11821492 0.1305864
		 0.11821087 0.15234734 0.11820681 0.17410816 0.11820288 0.054699823 -0.0041881353
		 0.046372339 -0.024292633 0.030984983 -0.03967993 0.010880515 -0.048007473 -0.010880426
		 -0.048007473 -0.030984893 -0.039679959 -0.04637219 -0.024292663 -0.054699734 -0.0041881949
		 -0.054699734 0.017572805 -0.04637219 0.037677214 -0.030984923 0.05306457 -0.010880426
		 0.061392114 0.010880515 0.061392114 0.030984983 0.05306457 0.046372339 0.037677214
		 0.054699823 0.017572924 -1.4901161e-08 0.0066923201 1.4901161e-08 0.0066922754;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "172BD41F-4C1B-62CF-5691-ED88A4FB3669";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" -0.027822807 -0.08204487
		 0.027948603 -0.082131237 -0.027779654 -0.054159224 0.027991816 -0.054245532 -0.027693287
		 0.0016120672 0.028077945 0.0015257597 -0.027650103 0.029497713 0.028121218 0.029411405
		 -0.027563766 0.085269064 0.028207585 0.085182816 0.083719894 -0.082217574 0.083762988
		 -0.054331899 -0.083594158 -0.081958532 -0.083550975 -0.054072887;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "52083C2B-4B11-C6BF-7262-9D9FE5506A19";
	setAttr ".uopa" yes;
	setAttr -s 68 ".uvtk[0:67]" -type "float2" 0.054699838 -0.0041881353
		 0.046372354 -0.024292633 0.030984998 -0.03967993 0.01088053 -0.048007473 -0.010880381
		 -0.048007473 -0.030984908 -0.039679959 -0.046372145 -0.024292633 -0.054699689 -0.0041881949
		 -0.054699689 0.017572805 -0.046372145 0.037677214 -0.030984908 0.05306457 -0.010880381
		 0.061392114 0.01088053 0.061392114 0.030984998 0.05306457 0.046372354 0.037677214
		 0.054699838 0.017572805 -0.17408539 -0.04908514 -0.15232454 -0.049084395 -0.13056357
		 -0.04908362 -0.10880259 -0.049082875 -0.087041646 -0.04908213 -0.065280855 -0.049081355
		 -0.043519914 -0.04908064 -0.021758884 -0.049079865 2.0861626e-06 -0.04907909 0.021763027
		 -0.049078375 0.043523908 -0.04907757 0.065284848 -0.049076825 0.087045789 -0.04907611
		 0.10880673 -0.049075335 0.13056761 -0.04907459 0.15232855 -0.049073815 0.17408943
		 -0.04907307 -0.1740893 0.062457591 -0.15232836 0.062458366 -0.13056748 0.062459201
		 -0.10880655 0.062459856 -0.08704558 0.062460631 -0.06528464 0.062461406 -0.043523729
		 0.062462121 -0.021762788 0.062462956 -1.8775463e-06 0.062463671 0.021759093 0.062464386
		 0.043520033 0.062465221 0.065280974 0.062465996 0.087041914 0.062466651 0.10880286
		 0.062467426 0.13056374 0.062468261 0.15232474 0.062468916 0.17408556 0.062469691
		 0.054699823 -0.0041881353 0.046372339 -0.024292633 0.030984983 -0.03967993 0.010880515
		 -0.048007473 -0.010880426 -0.048007473 -0.030984893 -0.039679959 -0.04637219 -0.024292663
		 -0.054699734 -0.0041881949 -0.054699734 0.017572805 -0.04637222 0.037677273 -0.030984893
		 0.05306457 -0.010880426 0.061392114 0.010880515 0.061392114 0.030984983 0.05306457
		 0.046372339 0.037677273 0.054699823 0.017572865 1.1920929e-07 0.0066922754 1.4901161e-08
		 0.0066922754;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "89820FB8-46CB-3DCE-09A4-8B92CCA41F57";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[0:9]" -type "float2" -0.055766359 -0.18795222
		 0.055776432 -0.18795532 -0.05576326 -0.0764094 0.055779591 -0.076412529 -0.055758849
		 0.081335992 0.055783942 0.081332833 -0.055755749 0.19287878 0.055787042 0.19287568
		 0.16731931 -0.18795845 -0.16730918 -0.18794915;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "B5BFE41A-4EE5-E82B-F410-7A979C3B6545";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" -0.096418038 -0.17688254
		 0.097892597 -0.1769051 -0.10705356 -0.01428555 0.10856582 -0.014310524 -0.10035203
		 0.11051328 0.10189332 0.11048986 0.00074221194 -0.13438404 0.00075121224 -0.056994244;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 18 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyTweakUV14.out" "|BlocksSharp|BarrleLarge|BarrleLargeShape.i";
connectAttr "polyTweakUV14.uvtk[0]" "|BlocksSharp|BarrleLarge|BarrleLargeShape.uvst[0].uvtw"
		;
connectAttr "polyTweakUV13.out" "|BlocksSharp|BarrleMedium|BarrleMediumShape.i";
connectAttr "polyTweakUV13.uvtk[0]" "|BlocksSharp|BarrleMedium|BarrleMediumShape.uvst[0].uvtw"
		;
connectAttr "polyTweakUV16.out" "|BlocksSharp|BarrleSmall|BarrleSmallShape.i";
connectAttr "polyTweakUV16.uvtk[0]" "|BlocksSharp|BarrleSmall|BarrleSmallShape.uvst[0].uvtw"
		;
connectAttr "polyTweakUV17.out" "|BlocksSharp|Ramp|RampShape.i";
connectAttr "polyTweakUV17.uvtk[0]" "|BlocksSharp|Ramp|RampShape.uvst[0].uvtw";
connectAttr "polyTweakUV18.out" "|BlocksSharp|Roof|RoofShape.i";
connectAttr "polyTweakUV18.uvtk[0]" "|BlocksSharp|Roof|RoofShape.uvst[0].uvtw";
connectAttr "polyTweakUV11.out" "|BlocksSharp|LargeCube|LargeCubeShape.i";
connectAttr "polyTweakUV11.uvtk[0]" "|BlocksSharp|LargeCube|LargeCubeShape.uvst[0].uvtw"
		;
connectAttr "polyTweakUV12.out" "|BlocksSharp|StretchCube|StretchCubeShape.i";
connectAttr "polyTweakUV12.uvtk[0]" "|BlocksSharp|StretchCube|StretchCubeShape.uvst[0].uvtw"
		;
connectAttr "polyTweakUV10.out" "|BlocksSharp|FullCube|FullCubeShape.i";
connectAttr "polyTweakUV10.uvtk[0]" "|BlocksSharp|FullCube|FullCubeShape.uvst[0].uvtw"
		;
connectAttr "polyTweakUV15.out" "|BlocksSharp|HalfCube|HalfCubeShape.i";
connectAttr "polyTweakUV15.uvtk[0]" "|BlocksSharp|HalfCube|HalfCubeShape.uvst[0].uvtw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polySurfaceShape1.o" "polyLayoutUV1.ip";
connectAttr "polySurfaceShape2.o" "polyLayoutUV2.ip";
connectAttr "polySurfaceShape3.o" "polyLayoutUV3.ip";
connectAttr "polySurfaceShape4.o" "polyLayoutUV4.ip";
connectAttr "polySurfaceShape5.o" "polyLayoutUV5.ip";
connectAttr "polySurfaceShape6.o" "polyLayoutUV6.ip";
connectAttr "polySurfaceShape7.o" "polyLayoutUV7.ip";
connectAttr "polySurfaceShape8.o" "polyLayoutUV8.ip";
connectAttr "polySurfaceShape9.o" "polyLayoutUV9.ip";
connectAttr "polyLayoutUV1.out" "polyTweakUV1.ip";
connectAttr "polyLayoutUV2.out" "polyTweakUV2.ip";
connectAttr "polyLayoutUV3.out" "polyTweakUV3.ip";
connectAttr "polyLayoutUV4.out" "polyTweakUV4.ip";
connectAttr "polyLayoutUV5.out" "polyTweakUV5.ip";
connectAttr "polyLayoutUV6.out" "polyTweakUV6.ip";
connectAttr "polyLayoutUV7.out" "polyTweakUV7.ip";
connectAttr "polyLayoutUV8.out" "polyTweakUV8.ip";
connectAttr "polyLayoutUV9.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV1.out" "polyLayoutUV10.ip";
connectAttr "polyTweakUV2.out" "polyLayoutUV11.ip";
connectAttr "polyTweakUV3.out" "polyLayoutUV12.ip";
connectAttr "polyTweakUV4.out" "polyLayoutUV13.ip";
connectAttr "polyTweakUV5.out" "polyLayoutUV14.ip";
connectAttr "polyTweakUV6.out" "polyLayoutUV15.ip";
connectAttr "polyTweakUV7.out" "polyLayoutUV16.ip";
connectAttr "polyTweakUV8.out" "polyLayoutUV17.ip";
connectAttr "polyTweakUV9.out" "polyLayoutUV18.ip";
connectAttr "polyLayoutUV10.out" "polyTweakUV10.ip";
connectAttr "polyLayoutUV11.out" "polyTweakUV11.ip";
connectAttr "polyLayoutUV12.out" "polyTweakUV12.ip";
connectAttr "polyLayoutUV13.out" "polyTweakUV13.ip";
connectAttr "polyLayoutUV14.out" "polyTweakUV14.ip";
connectAttr "polyLayoutUV15.out" "polyTweakUV15.ip";
connectAttr "polyLayoutUV16.out" "polyTweakUV16.ip";
connectAttr "polyLayoutUV17.out" "polyTweakUV17.ip";
connectAttr "polyLayoutUV18.out" "polyTweakUV18.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "|BlocksSharp|FullCube|FullCubeShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksSharp|HalfCube|HalfCubeShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksSharp|LargeCube|LargeCubeShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksSharp|StretchCube|StretchCubeShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksSharp|Ramp|RampShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|BlocksSharp|Roof|RoofShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|BlocksSharp|BarrleSmall|BarrleSmallShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksSharp|BarrleMedium|BarrleMediumShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksSharp|BarrleLarge|BarrleLargeShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksRound|Ramp|RampShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|BlocksRound|Roof|RoofShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|BlocksRound|LargeCube|LargeCubeShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksRound|StretchCube|StretchCubeShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksRound|FullCube|FullCubeShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksRound|HalfCube|HalfCubeShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksRound|BarrleSmall|BarrleSmallShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksRound|BarrleMedium|BarrleMediumShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BlocksRound|BarrleLarge|BarrleLargeShape.iog" ":initialShadingGroup.dsm"
		 -na;
// End of BlockAssets.ma
