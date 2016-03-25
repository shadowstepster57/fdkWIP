-- SPEC ID 251
ProbablyEngine.rotation.register(251, {

  -- Survival
  { "/use 13", "player.lastcast(Pillar of Frost)" },
  { "Death Siphon", {
			"player.health <= 60",
			"player.runes(death).count >= 1"
  }, "target"},
  { "Gift of the Naaru", "player.health < 45"},
  { "Icebound Fortitude", "player.health <= 45" },
  { "Anti-Magic Shell", "player.health <= 45" },
  { "Lichborne", "player.health < 50" },

  -- Interrupts
  { "Mind Freeze", {"modifier.interrupts", "target.casting.percent >= 60" } },
  { "Strangualte", {  "modifier.interrupts", "!modifier.last(Mind Freeze)" } },

  { "Chains of Ice", "modifier.control" },

  -- Cooldowns
  { "Pillar of Frost", "modifier.cooldowns" },
  { "Raise Dead", {
    "modifier.cooldowns",
    "player.buff(Pillar of Frost)"
  }},
  { "Empower Rune Weapon", {
    "modifier.cooldowns", 
    "player.runicpower <= 70", 
    "player.runes(unholy).count = 0", 
    "player.runes(frost).count = 0", 
    "player.runes(death).count = 0"
  }},
  

  -- Disease Control
   {{
    {{
       { "Plague Leech", "player.runes(unholy).count = 0" },
       { "Plague Leech", "player.runes(frost).count = 0" },
       { "Plague Leech", "player.runes(death).count = 0" },
     }, "player.spell(Outbreak).cooldown = 0" },
    {{
       { "Plague Leech", "player.runes(unholy).count = 0" },
       { "Plague Leech", "player.runes(frost).count = 0" },
       { "Plague Leech", "player.runes(death).count = 0" },
     }, "target.debuff(Necrotic Plague).duration < 6" },
   } , {
     "target.debuff(Necrotic Plague)",
   }},
   { "Outbreak" },
   { "Death and Decay", "modifier.shift", "target.ground" },

    -- Single Target
  { "Icy Touch", "target.buff(Power Word: Shield)"}, 
  { "Icy Touch", "target.buff(Rejuvenation)"},
  { "Frost Strike", "player.buff(Killing Machine)" },
  { "Frost Strike", "player.runicpower > 88" },
  { "Howling Blast", "player.runes(death).count > 1" },
  { "Howling Blast", "player.runes(frost).count > 1" },
  { "Soul Reaper", "target.health < 35" },
  { "Howling Blast", "player.buff(Freezing Fog)" },
  { "Frost Strike", "player.runicpower > 76" },
  { "Death Strike", "player.buff(Dark Succor)" },
  { "Obliterate", {
    "player.runes(unholy).count > 0",
    "!player.buff(Killing Machine)"
  }},
   { "Howling Blast" },
   { "Frost Strike", "player.runicpower >= 40" },

    




},{
  { "Horn of Winter", "!player.buff(Horn of Winter)" },
})