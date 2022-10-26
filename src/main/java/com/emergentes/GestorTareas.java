
package com.emergentes;

import java.util.ArrayList;
import java.util.Iterator;

public class GestorTareas {
    private ArrayList<tarea> lista;

    public GestorTareas() {
        lista = new  ArrayList<tarea>();
    }
   public  ArrayList<tarea> getLista(){
       return lista;
   }
   public void setLista( ArrayList<tarea> lista){
       this.lista = lista;
   }
   public void insertarTarea(tarea item){
       lista.add(item);
   }
   public void modigicaTarea(int pos, tarea item){
       lista.set(pos, item);
   }
   public void eliminarTarea(int pos){
       lista.remove(pos);
   }
   
   public int obtieneId(){
       int idaux =0;
       for(tarea item : lista){
           idaux = item.getId();
       }
       return idaux + 1;
   }
   public int ubicarTarea(int id){
       int pos = -1;
       Iterator<tarea> it =lista.iterator();
       
       while(it.hasNext()){
           ++pos;
           tarea aux = it.next();
           if(aux.getId() == id){
               break;
           }
       }
       return pos;
   }
}

