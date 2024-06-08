/turf/open/misc/roots
	name = "roots"
	desc = "A gritted soily ground, embroidered with a system of crystalline roots"
	icon = 'icons/turf/floors.dmi'
	icon_state = "roots"
	base_icon_state = "roots"
	baseturfs = /turf/open/misc/sandy_dirt //change to appropriate soil in future.
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS //change to our own soon
	planetary_atmos = TRUE

	footstep = FOOTSTEP_ROOTS
	barefootstep = FOOTSTEP_ROOTS
	clawfootstep = FOOTSTEP_ROOTS
	heavyfootstep = FOOTSTEP_ROOTS


/// chance of walking on a tile and breaking a root, causing ouchies.
/turf/open/misc/roots/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/caltrop, min_damage = 3, max_damage = 10, probability = 15, paralyze_duration = 0 SECONDS, flags = CALTROP_BYPASS_SHOES, soundfile = 'sound/effects/footstep/rootbreaks.ogg')

/*


/obj/item/clothing/shoes/equipped(mob/user, slot)
	. = ..()
	if(can_be_tied && tied == SHOES_UNTIED)
		our_alert_ref = WEAKREF(user.throw_alert(ALERT_SHOES_KNOT, /atom/movable/screen/alert/shoes/untied))
		RegisterSignal(src, COMSIG_SHOES_STEP_ACTION, PROC_REF(check_trip), override=TRUE)






var/obj/item/clothing/shoes/clown_shoes = digitigrade_fan.get_item_by_slot(ITEM_SLOT_FEET)
	if(istype(clown_shoes))
		return





	var/obj/item/clothing/shoes/root_safe = digitigrade_fan.get_item_by_slot(ITEM_SLOT_FEET)
	if(root_safe == TRUE)
		return

	/mob/proc/update_equipment_speed_mods()
		var/speedies = 0
		var/immutable_speedies = 0
		for(var/obj/item/thing in get_equipped_speed_mod_items())
			if(thing.item_flags & IMMUTABLE_SLOW)
				immutable_speedies += thing.slowdown


*/
