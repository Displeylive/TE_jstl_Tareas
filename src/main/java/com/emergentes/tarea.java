
package com.emergentes;

public class tarea {
    private int id;
   private String tarea ;
   private String prioridad;

    public tarea() {
        id=0;
        tarea="";
        prioridad="";
    }

    public tarea(int id, String tarea, String prioridad) {
        this.id = id;
        this.tarea = tarea;
        this.prioridad = prioridad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTarea() {
        return tarea;
    }

    public void setTarea(String tarea) {
        this.tarea = tarea;
    }

    public String getPrioridad() {
        return prioridad;
    }

    public void setPrioridad(String prioridad) {
        this.prioridad = prioridad;
    }
    
   
  
}
