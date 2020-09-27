/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author DANIEL
 */
public class Calculadora {
    
    public String add(double number1, double number2){
        return String.valueOf(number1 + number2);
    }
    
    public String substract(double number1, double number2){
        return String.valueOf(number1 - number2);
    }
    
    public String multiply(double number1, double number2){
        return String.valueOf(number1 * number2);
    }
    
    public String divide(double number1, double number2){
        return (number2 != 0) ? String.valueOf(number1 / number2) : "0";
    }
}
