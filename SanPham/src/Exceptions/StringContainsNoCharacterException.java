package Exceptions;

public class StringContainsNoCharacterException extends Exception {

	public StringContainsNoCharacterException() {

	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Tên danh mục phải chứa ít nhất 1 chữ";
	}
	
	
}
