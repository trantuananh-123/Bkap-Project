package Exceptions;

public class StringTooLongException extends Exception{

	public StringTooLongException() {

	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Tên danh mục không được dài quá 30 ký tự";
	}
	
	
}
