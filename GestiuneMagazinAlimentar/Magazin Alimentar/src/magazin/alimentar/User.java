package magazin.alimentar;

/**
 *
 * @author lupua
 */
class User {
    private int produs_id;
    private int categorie_id;
    private String nume_produs;
    private String producator;
    private float pret;
    private int stoc_disponibil;
    
    public User(int produs_id, int categorie_id, String nume_produs, String producator, float pret, int stoc_disponibil){
        this.produs_id = produs_id;
        this.categorie_id = categorie_id;
        this.nume_produs = nume_produs;
        this.producator = producator;
        this.pret = pret;
        this.stoc_disponibil = stoc_disponibil;
        
    }
    public int getprodus_id(){
        return produs_id;
    }
    
    public int getcategorie_id(){
        return categorie_id;
    }
    
    public String getnume_produs(){
        return nume_produs;
    }
    
    public String getproducator(){
        return producator;
    }
    
    public float getpret(){
        return pret;
    }
    
    public int getstoc_disponibil(){
        return stoc_disponibil;
    }
   
            
}