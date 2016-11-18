package com.eutacompany.figure;


public class Triangle {
    private int a;
    private int b;
    private int c;

    public Triangle(){}

    public Triangle(int a, int b){
        this.a = a;
        this.b = b;
    }

    public int hypotenuse(int a, int b){
        return this.c = (int)Math.sqrt(Math.pow(a,2)+Math.pow(b,2));
    }

    public int getA() {
        return a;
    }

    public void setA(int a) {
        this.a = a;
    }

    public int getB() {
        return b;
    }

    public void setB(int b) {
        this.b = b;
    }

    public int getC() {
        return c;
    }

    public void setC(int c) {
        this.c = c;
    }
}
