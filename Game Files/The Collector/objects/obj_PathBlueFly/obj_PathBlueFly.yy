{
  "spriteId": {
    "name": "spr_BlueFly",
    "path": "sprites/spr_BlueFly/spr_BlueFly.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_BlueFly",
    "path": "objects/obj_BlueFly/obj_BlueFly.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":true,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_PathBlueFly","path":"objects/obj_PathBlueFly/obj_PathBlueFly.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":5,"value":"noone","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMPath",
      ],"resourceVersion":"1.0","name":"fly_path","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [
    {"propertyId":{"name":"death_object","path":"objects/obj_Slime/obj_Slime.yy",},"objectId":{"name":"obj_Slime","path":"objects/obj_Slime/obj_Slime.yy",},"value":"obj_BlueFlyDeath","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"hit_sprite","path":"objects/obj_Slime/obj_Slime.yy",},"objectId":{"name":"obj_Slime","path":"objects/obj_Slime/obj_Slime.yy",},"value":"spr_BlueFlyHurt","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"monster_health","path":"objects/obj_Slime/obj_Slime.yy",},"objectId":{"name":"obj_Slime","path":"objects/obj_Slime/obj_Slime.yy",},"value":"10","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"hsp","path":"objects/obj_Slime/obj_Slime.yy",},"objectId":{"name":"obj_Slime","path":"objects/obj_Slime/obj_Slime.yy",},"value":"-4","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Monsters",
    "path": "folders/Objects/Monsters.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_PathBlueFly",
  "tags": [],
  "resourceType": "GMObject",
}