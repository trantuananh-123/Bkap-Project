package Exceptions;

public class DuplicateException extends Exception {
	
	public DuplicateException() {
		
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Id danh mục không được trùng nhau";
	}

	
}
