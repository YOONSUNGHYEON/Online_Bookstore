package online_bookstore.DTO;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.Getter;

@Data
public class BookDTO {
	
    @Id
    private String Book_Id;
    private String Book_Title;
    private String Book_Subtitle;
    private String Book_Author;
    private String Book_Translator;
    private String Book_Description;
    private int Book_Price;
    private int Book_PriceSales;
    private String Book_Cover;
    private String Book_Publisher;
    private String Book_CategoryName;

    public BookDTO(String book_Id, String book_Title, String book_Author, String book_Description, int book_Price, String book_Cover, String book_Publisher) {
        Book_Id = book_Id;
        Book_Title = book_Title;
        Book_Author = book_Author;
        Book_Description = book_Description;
        Book_Price = book_Price;
        Book_Cover = book_Cover;
        Book_Publisher = book_Publisher;
    }

    public BookDTO(String book_Id, String book_Title, String book_Author, String book_Description, int book_Price,int book_PriceSales, String book_Cover, String book_Publisher, String book_CategoryName) {
        Book_Id = book_Id;
        Book_PriceSales = book_PriceSales;
        Book_Description = book_Description;
        Book_Price = book_Price;
        Book_Cover = book_Cover;
        Book_Publisher = book_Publisher;
        Book_CategoryName = book_CategoryName;
        TitleAndSubtitle(book_Title);
        AuthorAndTranslator(book_Author);
    }


    public BookDTO() {
    }

    //json에서 받은 author정보를 지은이와 옮긴이로 나눠서 넣기
    public void AuthorAndTranslator(String book_Author)
    {
    	String[] str = book_Author.split("\\(지은이\\)");
    	Book_Author = str[0];
    	if(str.length==2)
    		Book_Translator = str[1].replaceAll("\\(옮긴이\\)", "");
    	else
    		Book_Translator=null;
    }

  //json에서 받은 title정보를 title과 subtitle로 나눠서 넣기
    public void TitleAndSubtitle(String book_Author)
    {
    	String[] str;
    	if(book_Author.contains("-"))
    	{
    		str = book_Author.split("-");
    		Book_Title = str[0];
    		Book_Subtitle=str[1];
    	}
    	else
    		Book_Title=book_Author;

    }


}
