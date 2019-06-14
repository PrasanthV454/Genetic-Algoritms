/*package whatever //do not write package name here */

import java.util.*;
import java.lang.*;
import java.io.*;

class GFG {
	public static void main (String[] args) throws IOException {
	    BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
	    int t= Integer.parseInt(reader.readLine());
	    while(t-->0){
            String [] f = reader.readLine().split(" ");
            long m,n;
            m=Long.parseLong(f[0]);
            n=Long.parseLong(f[1]);
            
            
            
            String[] s1=reader.readLine().split(" ");
            long[] a1=new long[(int)m];
            
            for(long i=0;i<m;i++){
                a1[(int)i]=Long.parseLong(s1[(int)i]);
            }
            
            String[] s2=reader.readLine().split(" ");
            long[] a2=new long[(int)n];
            
            for(long i=0;i<n;i++){
                a2[(int)i]=Integer.parseInt(s2[(int)i]);
            }
            
            
            int i,j;
            j=0;
            for(i=0;i<m;i++){
                if(j<n){
                    while(a1[i]>a2[j]){
                        System.out.print(a2[j] + " ");
                        if(j<n){
                            j++;
                        }
                    }
                }
                System.out.print(a1[i] + " ");
            }
            for(;j<n;j++){
                System.out.print(a2[j] + " ");
            }
	    }
	    if(t>2){
	        System.out.print("\n");
        }		
        //code
	}
}
