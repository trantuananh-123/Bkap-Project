package Exceptions;

public class NonExistenceValueException extends Exception {

	public NonExistenceValueException() {

	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Id danh mục cha không tồn tại";
	}
	
	
}
