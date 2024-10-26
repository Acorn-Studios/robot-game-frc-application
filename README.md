# Robot Game (frc application)
I'm applying for my FRC team this is the project!

1-week deadline from Thursday Oct 17th

## 🔗 Links 
[Robot model](https://grabcad.com/library/frc-2881-2024-off-season-robot-1) <br>
FRC Stage model ([Download↗](https://firstfrc.blob.core.windows.net/frc2024/FieldAssets/CRESCENDO2024Field-STEP.zip)) <br>
**Godot Resources** <br>
- [Main website](https://godotengine.org)
- [Source code](https://github.com/godotengine/godot)
- [Documentation](http://docs.godotengine.org)
- [Community hub](https://godotengine.org/community)
- [Other demos](https://github.com/godotengine/godot-demo-projects)


## 🛠️ Changelog (only updated during dev)

### Oct 17th
Gathered Robot Model (From [Robot model](https://grabcad.com/library/frc-2881-2024-off-season-robot-1))* 
Gathered FRC Stage Model (From [Robot model](https://grabcad.com/library/frc-2881-2024-off-season-robot-1))* 

### Oct 18th
Started work on:
 - Mats for `frc_stage_v1`
 - Mats for `robot_model`
Implemented models from `Oct 17th`
<br>
Created Materials:
 - `metal`
 - `black_rubber`

### Oct 19th
Finished materials work for `robot_model`
Started working on Swerve Drive emulation movement **[SCRAPPED]**
Kept on adding materials. 

### Oct 20th
Started implementing Swerve Drive emulation movement **[SCRAPPED]**
Kept on adding materials. 

### Oct 21th
Break to focus on academics.

### Oct 22th
Pivoted to Platformer type game
 - Implemented Movement System
 - Implemented 3rd person camera controller
 - Added `wood` material
 - Added a dull and darker metal material
Started work on world env.

### Oct 23th
Finished materials work for `frc_stage_v1`
Started work on Level Select
Started work on Levels 1-3
Finished work on world evn. node

*For replication, see `How to convert CAD models` below

### Oct 24th
Started work on main level, about 1/3 (`33%`) done
Uses: 
 - CSG Cubes
 - CSG Polygons

Added rotation script for rotating blocks for higher up

### Oct 25th
Started work on main level, about 1/2 (`50%`) done
Uses: 
 - CSG Cubes
 - CSG Polygons

Finished rotating section.

## Steps for replication
### How to convert CAD models
1. Download the `.STEP` file
2. Open in [Fusion](https://www.autodesk.com/products/fusion-360/overview)
3. Save in Fusion's could
4. Export as `.FBX`
5. Convert to `.GLB` in [Blender](https://www.blender.org/) (you may need to compress it using the [Decimate Modifier](https://docs.blender.org/manual/en/latest/modeling/modifiers/generate/decimate.html))
6. Put into Godot

## Notes
### Running

You need [Godot Engine](https://godotengine.org) to run this project.
Download the latest stable version [from the website](https://godotengine.org/download/),
or [build it from source](https://github.com/godotengine/godot).

If you only want the game, see `releases` ([See Releases↗](https://github.com/Acorn-Studios/robot-game-frc-application/releases))
