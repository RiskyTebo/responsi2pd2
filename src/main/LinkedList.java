/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

/**
 *
 * @author confus1on
 */
public class LinkedList {
    static Node first = null;
    static Node last = null;
    public static String nama_tugasAkhir;
    public static String keterangan_tugasAkhir;
    public static String metode_tugasAkhir;
    public static String status_tugasAkhir;
    
    public void PushData(String new_namaTugas, String new_keterangan, String new_Metode, String new_Status)
    {
        Node old = last;
        last = new Node(new_namaTugas, new_keterangan, new_Metode, new_Status);
        
        if(first == null)
        {
            first = last;
        }
        else
        {
            old.next = last;
        }
    }
    
    public void tampilkan()
    {
        Node current = first;
        while(current != null)
        {
//            nama_tugasAkhir = current.nama_tugas;
//            keterangan_tugasAkhir = current.keterangan;
//            metode_tugasAkhir = current.metode;
               
              DetailTugasAkhir.labelTugasakhir.setText(current.nama_tugas);
              DetailTugasAkhir.labelKeterangan.setText(current.keterangan);
              DetailTugasAkhir.labelMetode.setText(current.metode);
              DetailTugasAkhir.labelMetode1.setText(current.status);
              System.out.println(current.nama_tugas);
              System.out.println(current.keterangan);
            
            current = current.next;
        }
    }
}
