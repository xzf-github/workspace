package LecturePractice;
class DangerException extends Exception{
	public DangerException() {
		super();
	}
	public void toShow() {
		System.out.println("属于危险品");
	}
}
class Goods{
	private boolean state;
	public Goods(boolean state){
		this.state = state;
	}
	public boolean getState() {
		return state;
	}
	
}
class Machine{
	public void checkBag(Goods goods) throws DangerException {  
        if (goods.getState()) {  
            throw new DangerException();  
        }  
    }  
}
public class pa5_2 {
	public static void main(String[] args) {
		try {  
            Machine machine = new Machine();  
            Goods gd = new Goods(true);
            machine.checkBag(gd);  
        } catch (DangerException e) {  
            e.toShow(); 
        }  
	}
}