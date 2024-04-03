//Univ: JOAQUIN COARITI ALIAGA RU: 200050816
package com.emergentes;

public class Persona {
    private int id;
    private String nombre;
    private int pParcial;
    private int sParcial;
    private int tParcial;

    public Persona() {
        this.id = 0;
        this.nombre = "";
        this.pParcial = 0;
        this.sParcial = 0;
        this.tParcial = 0;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getpParcial() {
        return pParcial;
    }

    public void setpParcial(int pParcial) {
        this.pParcial = pParcial;
    }

    public int getsParcial() {
        return sParcial;
    }

    public void setsParcial(int sParcial) {
        this.sParcial = sParcial;
    }

    public int gettParcial() {
        return tParcial;
    }

    public void settParcial(int tParcial) {
        this.tParcial = tParcial;
    }
    
}
