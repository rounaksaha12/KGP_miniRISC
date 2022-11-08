OPCODE = {
    "add": 0, "comp": 0,
    "and": 0, "xor": 0,
    "shll": 0, "shrl": 0,
    "shllv": 0, "shrlv": 0,
    "shra": 0, "shrav": 0,
    "br": 0,"addi": 8,
     "compi": 9,"lw": 25, 
    "sw": 59,"b": 32, 
    "bltz": 43, "bz": 45,
    "bnz": 46, "bl": 33,
    "bcy": 38, "bncy": 39,"diff": 0
}


RFORMATS = {
    "add", "comp",
    "and", "xor",
    "shll", "shrl",
    "shllv", "shrlv",
    "shra", "shrav",
    "diff"
    }


FUNCODE = {
    "add": 8, "comp": 9,
    "and": 24, "xor": 16,
    "shll": 0, "shrl": 1,
    "shllv": 4, "shrlv": 5,
    "shra": 2, "shrav": 6,"diff": 32,"br":63}