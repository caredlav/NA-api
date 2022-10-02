const express=require("express");
const app =express();
const port=process.env.PORT || 4000;
const apiRouter=require("./routes/api.routes");

app.use(express.urlencoded({extended:false}));
app.use(express.json());

app.use("/",apiRouter);

app.use((req,res,next)=>{
    res.status(404).json({
        status: 404,
        msg: "¡Oops! al parecer le dirección que estas buscando no existe."
    });
})

app.listen(port,()=>console.log(`Corriendo en pueerto: ${port}`));