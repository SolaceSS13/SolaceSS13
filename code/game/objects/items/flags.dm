////////////////////
/obj/item/sign/flag/Initialize(mapload)
	. = ..()
	var/matrix/rotation_reset = matrix()
	rotation_reset.Turn(0)
	transform = rotation_reset

/obj/structure/sign/flag/pride_flag
	name = "coder pride flag"
	desc = "You probably shouldn't be seeing this. Yell at the coders about it."
	icon = 'icons/obj/fluff/flags.dmi'
	var/item_flag = /obj/item/sign/flag/pride_flag
	var/select = 1
	var/list/orientation = list()

/obj/structure/sign/flag/pride_flag/add_context(atom/source, list/context, obj/item/held_item, mob/user)
	. = ..()
	if(!Adjacent(user))
		return .
	context[SCREENTIP_CONTEXT_ALT_RMB] = "Rotate"
	return CONTEXTUAL_SCREENTIP_SET

/obj/structure/sign/flag/pride_flag/MouseDrop(over_object, src_location, over_location)
	. = ..()
	if(over_object == usr && Adjacent(usr))
		if(!item_flag || src.obj_flags & NO_DEBRIS_AFTER_DECONSTRUCTION)
			return
		if(!usr.can_perform_action(src, NEED_DEXTERITY))
			return
		usr.visible_message(span_notice("[usr] grabs and folds \the [src.name]."), span_notice("You grab and fold \the [src.name]."))
		var/obj/item/flag_item = new item_flag(loc)
		TransferComponents(flag_item)
		usr.put_in_hands(flag_item)
		qdel(src)

/obj/structure/sign/flag/pride_flag/alt_click_secondary(mob/living/user)
	if(!Adjacent(user))
		return .
	select++
	if (select > orientation.len)
		select = 1
	var/obj/structure/sign/flag/pride_flag/rotate = orientation[select]
	icon_state = rotate
	update_appearance()

/////////////////////HORIZONTAL/////////////////////

/obj/structure/sign/flag/pride_flag/rainbow
	name = "rainbow pride flag"
	desc = "The flag of LGBT pride."
	icon_state = "flag_rainbow"
	item_flag = /obj/item/sign/flag/pride_flag/rainbow
	orientation = list("flag_rainbow", "flag_rainbow_vertical")

/obj/structure/sign/flag/pride_flag/ace
	name = "asexual pride flag"
	desc = "The flag of asexual pride."
	icon_state = "flag_ace"
	item_flag = /obj/item/sign/flag/pride_flag/ace
	orientation = list("flag_ace", "flag_ace_vertical")

/obj/structure/sign/flag/pride_flag/bi
	name = "bisexual pride flag"
	desc = "The flag of bisexual pride."
	icon_state = "flag_bi"
	item_flag = /obj/item/sign/flag/pride_flag/bi
	orientation = list("flag_bi", "flag_bi_vertical")

/obj/structure/sign/flag/pride_flag/enby
	name = "enby pride flag"
	desc = "The flag of non-binary pride."
	icon_state = "flag_enby"
	item_flag = /obj/item/sign/flag/pride_flag/enby
	orientation = list("flag_enby", "flag_enby_vertical")

/obj/structure/sign/flag/pride_flag/intersex
	name = "intersex pride flag"
	desc = "The flag of intersex pride."
	icon_state = "flag_intersex"
	item_flag = /obj/item/sign/flag/pride_flag/intersex
	orientation = list("flag_intersex", "flag_intersex_vertical")

/obj/structure/sign/flag/pride_flag/lesbian
	name = "lesbian pride flag"
	desc = "The flag of lesbian pride."
	icon_state = "flag_lesbian"
	item_flag = /obj/item/sign/flag/pride_flag/lesbian
	orientation = list("flag_lesbian", "flag_lesbian_vertical")

/obj/structure/sign/flag/pride_flag/mlm
	name = "MLM pride flag"
	desc = "The flag of MLM pride."
	icon_state = "flag_mlm"
	item_flag = /obj/item/sign/flag/pride_flag/mlm
	orientation = list("flag_mlm", "flag_mlm_vertical")

/obj/structure/sign/flag/pride_flag/pan
	name = "pansexual pride flag"
	desc = "The flag of pansexual pride."
	icon_state = "flag_pan"
	item_flag = /obj/item/sign/flag/pride_flag/pan
	orientation = list("flag_pan", "flag_pan_vertical")

/obj/structure/sign/flag/pride_flag/trans
	name = "trans pride flag"
	desc = "The flag of trans pride."
	icon_state = "flag_trans"
	item_flag = /obj/item/sign/flag/pride_flag/trans
	orientation = list("flag_trans", "flag_trans_vertical")

/////////////////////FOLDED/////////////////////

/obj/item/sign/flag/pride_flag
	name = "folded coder pride flag"
	desc = "You probably shouldn't be seeing this. Yell at the coders about it."
	icon = 'icons/obj/fluff/flags.dmi'
	icon_state = "flag_coder"

/obj/item/sign/flag/pride_flag/rainbow
	name = "folded rainbow pride flag"
	desc = "The folded flag of LGBT pride."
	icon_state = "folded_rainbow"
	sign_path = /obj/structure/sign/flag/pride_flag/rainbow

/obj/item/sign/flag/pride_flag/ace
	name = "folded asexual pride flag"
	desc = "The folded flag of asexual pride."
	icon_state = "folded_pride_ace"
	sign_path = /obj/structure/sign/flag/pride_flag/ace

/obj/item/sign/flag/pride_flag/bi
	name = "folded bisexual pride flag"
	desc = "The folded flag of bisexual pride."
	icon_state = "folded_pride_bi"
	sign_path = /obj/structure/sign/flag/pride_flag/bi

/obj/item/sign/flag/pride_flag/enby
	name = "folded enby pride flag"
	desc = "The folded flag of non-binary pride."
	icon_state = "folded_pride_enby"
	sign_path = /obj/structure/sign/flag/pride_flag/enby

/obj/item/sign/flag/pride_flag/intersex
	name = "folded intersex pride flag"
	desc = "The folded flag of intersex pride."
	icon_state = "folded_pride_intersex"
	sign_path = /obj/structure/sign/flag/pride_flag/intersex

/obj/item/sign/flag/pride_flag/lesbian
	name = "folded lesbian pride flag"
	desc = "The folded flag of lesbian pride."
	icon_state = "folded_pride_lesbian"
	sign_path = /obj/structure/sign/flag/pride_flag/lesbian

/obj/item/sign/flag/pride_flag/mlm
	name = "folded MLM pride flag"
	desc = "The folded flag of MLM pride."
	icon_state = "folded_pride_mlm"
	sign_path = /obj/structure/sign/flag/pride_flag/mlm

/obj/item/sign/flag/pride_flag/pan
	name = "folded pansexual pride flag"
	desc = "The folded flag of pansexual pride."
	icon_state = "folded_pride_pan"
	sign_path = /obj/structure/sign/flag/pride_flag/pan

/obj/item/sign/flag/pride_flag/trans
	name = "folded trans pride flag"
	desc = "The folded flag of trans pride."
	icon_state = "folded_pride_trans"
	sign_path = /obj/structure/sign/flag/pride_flag/trans


