
package magazin.alimentar;


/**
 *
 * @author lupua
 */
class Comanda {
    private int comanda_id;
    private int produs_id;
    private int cantitate;
    private int angajati_id;
    private String data_comanda; 
    
    public Comanda(int comanda_id, int produs_id, int cantitate, int angajati_id, String data_comanda){
        this.comanda_id=comanda_id;
        this.produs_id=produs_id;
        this.cantitate=cantitate;
        this.angajati_id=angajati_id;
        this.data_comanda=data_comanda;
    }
    public int getcomanda_id(){
        return comanda_id;
    }
    
    public int getprodus_id(){
        return produs_id;
    }
    
    public int getcantitate(){
        return cantitate;
    }
    
    public int getangajati_id(){
        return angajati_id;
    }
    
    public String getdata_comanda(){
        return data_comanda;
    }
    
            
    
}
