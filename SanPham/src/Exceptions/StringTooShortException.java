package Exceptions;

public class StringTooShortException extends Exception {

	public StringTooShortException() {

	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Tên danh mục phải dài ít nhất 6 ký tự";
	}
	
	
}
