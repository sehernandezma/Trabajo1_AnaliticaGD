db.pacientes.aggregate(
   [
     {
       $group:
         {
           _id: null,
           suma_edades: { $sum: '$edad' }
		
         }
     }
   ]
)

db.pacientes.aggregate(
   [
     {
       $group:
         {
           _id: "$item",
           promedio_edad: { $avg: "$edad" }
         }
     }
   ]
)



db.pacientes.aggregate(
   [
     {
       $group:
         {
           _id: "$item",
           maxEdad: { $max: "$edad" }
         }
     }
   ]
)
