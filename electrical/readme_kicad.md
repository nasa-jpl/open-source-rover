## Important things to keep in mind when updating schematics

- make sure you're being cleanly about updating symbols in the schematic
    - you should update them in the JPL_Robotics_Lib.lib file, then pull those changes into the local schematic file in kicad
- if kicad creates "cache" or "rescue" libarary files, think before committing those to git. 
    - cache files _should_ be okay, but that's unclear. Ask someone before adding those to git versioning.
    - rescue files _should not_ be commited - but that's also unclear. Ask someone before adding those to git versioning.
- Reference Designators
    - it's important to retain the same reference designators (e.g. J12, U1, C3, etc) when revving the PCB - a lot of the discussion in the open source rover forums have referenced components by the reference designator, so that's a useful well-known name.
    - whenever annotating reference designators in kicad (with `Annotate Schematic...` ), make sure to check `keep existing annotations`
    - of course, if new components are added to the PCB schematic, these will need new completely designators. It's fine to use auto numbering for these.
    - in the worst case, you can always go into the .sch file and fix things by hand in a text editor

