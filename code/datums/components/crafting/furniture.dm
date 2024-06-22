/datum/crafting_recipe/curtain
	name = "Curtains"
	reqs = list(
		/obj/item/stack/sheet/cloth = 4,
		/obj/item/stack/rods = 1,
	)
	result = /obj/structure/curtain/cloth
	category = CAT_FURNITURE

/datum/crafting_recipe/showercurtain
	name = "Shower Curtains"
	reqs = list(
		/obj/item/stack/sheet/cloth = 2,
		/obj/item/stack/sheet/plastic = 2,
		/obj/item/stack/rods = 1,
	)
	result = /obj/structure/curtain
	category = CAT_FURNITURE

/datum/crafting_recipe/aquarium
	name = "Aquarium"
	result = /obj/structure/aquarium
	time = 10 SECONDS
	reqs = list(
		/obj/item/stack/sheet/iron = 15,
		/obj/item/stack/sheet/glass = 10,
		/obj/item/aquarium_kit = 1,
	)
	category = CAT_FURNITURE

/datum/crafting_recipe/mirror
	name = "Mirror"
	result = /obj/item/wallframe/mirror
	reqs = list(
		/obj/item/stack/sheet/glass = 5,
		/obj/item/stack/sheet/mineral/silver = 2,
	)
	category = CAT_FURNITURE

/datum/crafting_recipe/surgery_tray
	name = "Surgery Tray"
	reqs = list(
		/obj/item/stack/sheet/mineral/silver = 1,
		/obj/item/stack/rods = 2
	)
	result = /obj/item/surgery_tray
	tool_behaviors = list(TOOL_SCREWDRIVER)
	category = CAT_FURNITURE
	time = 5 SECONDS

/datum/crafting_recipe/defib_mobile
	name = "Mobile Defibrillator Mount"
	reqs = list(
		/obj/item/stack/sheet/mineral/silver = 1,
		/obj/item/stack/sheet/iron = 5,
		/obj/item/stack/cable_coil = 15,
	)
	result = /obj/machinery/defibrillator_mount/mobile
	tool_behaviors = list(TOOL_SCREWDRIVER)
	category = CAT_FURNITURE
	time = 7 SECONDS

/datum/crafting_recipe/pride_flag/rainbow
	name = "rainbow pride flag"
	reqs = list(
		/obj/item/stack/sheet/cloth = 3,
	)
	result = /obj/item/sign/flag/pride_flag/rainbow
	category = CAT_FURNITURE

/datum/crafting_recipe/pride_flag/ace
	name = "ace pride flag"
	reqs = list(
		/obj/item/stack/sheet/cloth = 3,
	)
	result = /obj/item/sign/flag/pride_flag/ace
	category = CAT_FURNITURE

/datum/crafting_recipe/pride_flag/bi
	name = "bi pride flag"
	reqs = list(
		/obj/item/stack/sheet/cloth = 3,
	)
	result = /obj/item/sign/flag/pride_flag/bi
	category = CAT_FURNITURE

/datum/crafting_recipe/pride_flag/enby
	name = "enby pride flag"
	reqs = list(
		/obj/item/stack/sheet/cloth = 3,
	)
	result = /obj/item/sign/flag/pride_flag/enby
	category = CAT_FURNITURE

/datum/crafting_recipe/pride_flag/intersex
	name = "intersex pride flag"
	reqs = list(
		/obj/item/stack/sheet/cloth = 3,
	)
	result = /obj/item/sign/flag/pride_flag/intersex
	category = CAT_FURNITURE

/datum/crafting_recipe/pride_flag/lesbian
	name = "lesbian pride flag"
	reqs = list(
		/obj/item/stack/sheet/cloth = 3,
	)
	result = /obj/item/sign/flag/pride_flag/lesbian
	category = CAT_FURNITURE

/datum/crafting_recipe/pride_flag/mlm
	name = "mlm pride flag"
	reqs = list(
		/obj/item/stack/sheet/cloth = 3,
	)
	result = /obj/item/sign/flag/pride_flag/mlm
	category = CAT_FURNITURE

/datum/crafting_recipe/pride_flag/pan
	name = "pan pride flag"
	reqs = list(
		/obj/item/stack/sheet/cloth = 3,
	)
	result = /obj/item/sign/flag/pride_flag/pan
	category = CAT_FURNITURE

/datum/crafting_recipe/pride_flag/trans
	name = "trans pride flag"
	reqs = list(
		/obj/item/stack/sheet/cloth = 3,
	)
	result = /obj/item/sign/flag/pride_flag/trans
	category = CAT_FURNITURE
