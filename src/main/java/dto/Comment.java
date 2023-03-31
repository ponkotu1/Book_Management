package dto;

public class Comment {
    private int id;
    private String isbn;
    private int generalId;
    private String comment;
	public Comment(int id, String isbn, int generalId, String comment) {
		super();
		this.id = id;
		this.isbn = isbn;
		this.generalId = generalId;
		this.comment = comment;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public int getGeneralId() {
		return generalId;
	}
	public void setGeneralId(int generalId) {
		this.generalId = generalId;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
    
}
