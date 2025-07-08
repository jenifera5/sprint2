db.gafas.insertOne({
    marca:"Rayban",
    graduacion:{
         ojo_izquierdo: 1.5,
         ojo_derecho: 1.75
    },
    montura:{
         tipo:"metalica",
         color:"negro"
    },
    vidrio:{
        color_izquierdo:"negro",
        color_derecho:"negro"
    },

    precio:120,
    proveedor:{
        _id: ObjectId("662c90ad219a1eabc9d3f3f4"),
        nombre:"VisionLux",
        direccion:{
            calle: "Calle Diagonal",
            numero:430,
            piso:"2",
            puerta:"3",
            ciudad:"Barcelona",
            codigo_postal:"08018",
            pais:"España"

        },
        telefono:933478192,
        fax:933478332,
        nif:"Z12312413456"
    },
    clientes_que_la_compraron:[
        {
             _id: ObjectId("68626abe2faa0e771a748a5f"),
            nombre: "Ana Gómez",
            fecha_compra: ISODate("2025-06-12T17:45:00Z"),
            atendido_por:{
                nombre: "Jordi Martí",
                email: "jordi@culdampolla.com",
                telefono: 9382192932
    }
        }
    ],
   
  
  

});