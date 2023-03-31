package dto;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class Borrow {
    private int id;
    private int bookId;
    private int generalId;
    private LocalDateTime borrowDatetime;
    private LocalDate limitDate;
    private LocalDateTime returnDatetime;
    
	public Borrow(int id, int bookId, int generalId, LocalDateTime borrowDatetime, LocalDate limitDate,
			LocalDateTime returnDatetime) {
		super();
		this.id = id;
		this.bookId = bookId;
		this.generalId = generalId;
		this.borrowDatetime = borrowDatetime;
		this.limitDate = limitDate;
		this.returnDatetime = returnDatetime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public int getGeneralId() {
		return generalId;
	}

	public void setGeneralId(int generalId) {
		this.generalId = generalId;
	}

	public LocalDateTime getBorrowDatetime() {
		return borrowDatetime;
	}

	public void setBorrowDatetime(LocalDateTime borrowDatetime) {
		this.borrowDatetime = borrowDatetime;
	}

	public LocalDate getLimitDate() {
		return limitDate;
	}

	public void setLimitDate(LocalDate limitDate) {
		this.limitDate = limitDate;
	}

	public LocalDateTime getReturnDatetime() {
		return returnDatetime;
	}

	public void setReturnDatetime(LocalDateTime returnDatetime) {
		this.returnDatetime = returnDatetime;
	}

}