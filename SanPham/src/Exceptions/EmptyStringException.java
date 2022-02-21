package Exceptions;

public class EmptyStringException extends Exception {

	public EmptyStringException() {

	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Không được để trống phần mô tả";
	}
	
	
}
