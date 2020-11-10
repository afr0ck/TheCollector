{
  "spriteId": {
    "name": "spr_Slime",
    "path": "sprites/spr_Slime/spr_Slime.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": null,
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
    {"isDnD":true,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_EnemyBound","path":"objects/obj_EnemyBound/obj_EnemyBound.yy",},"parent":{"name":"obj_Slime","path":"objects/obj_Slime/obj_Slime.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":0,"eventType":1,"collisionObjectId":null,"parent":{"name":"obj_Slime","path":"objects/obj_Slime/obj_Slime.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_Slime","path":"objects/obj_Slime/obj_Slime.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_Slime","path":"objects/obj_Slime/obj_Slime.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":64,"eventType":8,"collisionObjectId":null,"parent":{"name":"obj_Slime","path":"objects/obj_Slime/obj_Slime.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":0,"eventType":2,"collisionObjectId":null,"parent":{"name":"obj_Slime","path":"objects/obj_Slime/obj_Slime.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":0,"value":"-2","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"hsp","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"obj_SlimeDeath","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMObject",
      ],"resourceVersion":"1.0","name":"death_object","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"20","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"monster_health","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"false","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"hit","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"spr_SlimeHurt","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMSprite",
      ],"resourceVersion":"1.0","name":"hit_sprite","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"-1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"damage","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"hpBar","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Monsters",
    "path": "folders/Objects/Monsters.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_Slime",
  "tags": [],
  "resourceType": "GMObject",
}