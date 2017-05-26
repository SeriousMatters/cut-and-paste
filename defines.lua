mod = {}

mod.name = 'cut-and-paste'
mod.prefix = mod.name .. '-'
mod.dir = '__' .. mod.name .. '__'

mod.tools = {
    cut  = mod.prefix .. 'tool-cut',
    copy = mod.prefix .. 'tool-copy',
}
mod.blueprints = {
    cut  = mod.prefix .. 'blueprint-cut',
    copy = mod.prefix .. 'blueprint-copy'
}

mod.placeholders = {
    top    = mod.prefix .. 'placeholder-top',
    center = mod.prefix .. 'placeholder-center',
}

mod.setting_names = {
    replace_mode         = mod.prefix .. 'replace-mode',
    reuse_copy_blueprint = mod.prefix .. 'reuse-copy-blueprint',
    reconnect_wires      = mod.prefix .. 'reconnect-wires',
    keep_tiles           = mod.prefix .. 'keep-tiles',
    copy_items           = mod.prefix .. 'copy-items',
}
mod.setting_values = {
    replace_mode = {
        when_different = 'When different',
        always = 'Always',
        never = 'Never',
    },
    copy_items = {
        move_only = 'Move only',
        always = 'Always',
        never = 'Never',
    },
}

item_state = {
    moving_to_hand = 1,
    in_hand = 2,
    placing = 3,
    placed = 4,
}

-- Those inventories will not be moved to the destination
inventory_blacklists = {
    ['furnace']            = { [defines.inventory.furnace_result] = true },
    ['assembling-machine'] = { [defines.inventory.assembling_machine_output] = true },
    ['rocket-silo']        = { [defines.inventory.rocket_silo_result] = true },

    -- FIXME burnt_result: which entities have it?
}
