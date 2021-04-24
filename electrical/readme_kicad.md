## Important things to keep in mind when updating schematics

- make sure you're being cleanly about updating symbols in the schematic
    - you should update them in the JPL_Robotics_Lib.lib file, then pull those changes into the local schematic file in kicad
- if kicad creates "cache" or "rescue" libarary files, think before committing those to git. 
    - cache files _should_ be okay, but that's unclear. Ask someone before adding those to git versioning.
    - rescue files _should not_ be commited - but that's also unclear. Ask someone before adding those to git versioning.