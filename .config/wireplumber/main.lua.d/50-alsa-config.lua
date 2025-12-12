alsa_monitor.rules = {
  {
    matches = { { "device.name", "equals", "alsa_card.pci-0000_30_00.6" }, },
    apply_properties = {
      ["api.acp.auto-port"] = true,
      ["api.acp.auto-profile"] = true,
    },
  },
}

