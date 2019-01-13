/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Metode;

/**
 *
 * @author confus1on
 */
public class Stack {
    
    public NodeStack first = null;
    public static String nama,sks,kuliah;
    
    public void stackPush(String newNama, String newSks, String newKuliah)
    {
        NodeStack n = new NodeStack();
        n.nama = newNama;
        n.kuliah = newKuliah;
        n.sks = newSks;
        n.next = first;
        first = n;
    }
    
    public void tampilkanStack()
    {
        NodeStack cur = first;
        while(cur != null)
        {
           nama = cur.nama;
           kuliah = cur.kuliah;
           sks = cur.sks;
            cur = cur.next;
        }
    }
}
