/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package holamundo;

/**
 *
 * @author RigoBono
 */
import jpl.*;
public class HolaMundo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("Hola mundo!");
        System.out.println("ok");
		String t1 = "consult('SistemaExpertoMejorado.pl')";
		Query q1 = new Query(t1);
		System.out.println( t1 + " " + (q1.hasSolution() ? "Conexion a prolog exitosa" : "Conexion a prolog fallida") );
        Inicial i=new Inicial();
        i.setVisible(true);
    }
    
}
