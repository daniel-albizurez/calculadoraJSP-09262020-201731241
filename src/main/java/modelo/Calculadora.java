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
    
     public String higher(double number1, double number2){
         return String.valueOf((number1>=number2) ? number1 : number2);
     }
     
     public String power(double number1, double number2){
         return String.valueOf(Math.pow(number1, number2));
     }
     
     public String binary(double number){
         String binary = "";
         int n = (int)number;
         int remainder = 0;
         while (n != 0) {             
             remainder = n%2;
             if (remainder == 1) {
                 n -= 1;
             }
             n /= 2;
             binary += remainder;
         }
         return binary;
     }
}
