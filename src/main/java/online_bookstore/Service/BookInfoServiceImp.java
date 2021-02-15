package online_bookstore.Service;

import online_bookstore.DTO.BookDTO;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

import online_bookstore.DTO.BookDTO;

@Service
public class BookInfoServiceImp implements BookInfoService{

    String strurl;

    @Override
    public ArrayList<BookDTO> booklist() {
        ArrayList<BookDTO> arrayList=new ArrayList<BookDTO>();
        strurl="http://www.aladin.co.kr/ttb/api/ItemList.aspx?ttbkey=ttbinpo33350927001&QueryType=ItemNewAll&MaxResults=10&start=1&SearchTarget=Book&output=js&Version=20131101";
        JSONArray jsonArray=JSONParsing(strurl);

        for (int i = 0; i <jsonArray.size() ; i++) {
            JSONObject date=(JSONObject) jsonArray.get(i);
            BookDTO bookDTO=new BookDTO(
                    date.get("isbn13").toString(),
                    date.get("title").toString(),
                    date.get("author").toString(),
                    date.get("description").toString(),
                    Integer.parseInt(date.get("priceSales").toString()),
                    date.get("cover").toString(),
                    date.get("publisher").toString()
            );
            arrayList.add(bookDTO);
        }
        return arrayList;
    }

    @Override
    public ArrayList<BookDTO> bookSearchbyId(String book_id){
        ArrayList<BookDTO> arrayList=new ArrayList<BookDTO>();
        strurl="http://www.aladin.co.kr/ttb/api/ItemLookUp.aspx?ttbkey=ttbinpo33350927001&itemIdType=ISBN13&ItemId="+book_id+"&output=js&Version=20131101";
        JSONArray jsonArray;
        jsonArray = JSONParsing(strurl);
        for (int i = 0; i <jsonArray.size() ; i++) {
            JSONObject date=(JSONObject) jsonArray.get(i);
            BookDTO bookDTO=new BookDTO(

                    date.get("isbn13").toString(),
                    date.get("title").toString(),
                    date.get("author").toString(),
                    date.get("description").toString(),
                    Integer.parseInt(date.get("priceSales").toString()),
                    date.get("cover").toString(),
                    date.get("publisher").toString()
            );
            arrayList.add(bookDTO);
        }
        return arrayList;
    }



    @Override
    public ArrayList<BookDTO> newbooklist() {
        ArrayList<BookDTO> arrayList=new ArrayList<BookDTO>();
        strurl="http://www.aladin.co.kr/ttb/api/ItemList.aspx?ttbkey=ttbinpo33350927001&QueryType=ItemNewAll&MaxResults=30&start=1&Cover=Big&SearchTarget=Book&output=js&Version=20131101";
        JSONArray jsonArray=JSONParsing(strurl);

        for (int i = 0; i <jsonArray.size() ; i++) {
            JSONObject date=(JSONObject) jsonArray.get(i);
            BookDTO bookDTO=new BookDTO(
                    date.get("isbn13").toString(),
                    date.get("title").toString(),
                    date.get("author").toString(),
                    date.get("description").toString(),
                    Integer.parseInt(date.get("priceSales").toString()),
                    date.get("cover").toString(),
                    date.get("publisher").toString()
            );
            arrayList.add(bookDTO);
        }
        return arrayList;
    }
    @Override
    public ArrayList<BookDTO> bestbooklist() {
        ArrayList<BookDTO> arrayList=new ArrayList<BookDTO>();
        strurl="http://www.aladin.co.kr/ttb/api/ItemList.aspx?ttbkey=ttbinpo33350927001&QueryType=Bestseller&MaxResults=9&start=1&Cover=Big&SearchTarget=Book&output=js&Version=20131101";
        JSONArray jsonArray=JSONParsing(strurl);

        for (int i = 0; i <jsonArray.size() ; i++) {
            JSONObject date=(JSONObject) jsonArray.get(i);
            BookDTO bookDTO=new BookDTO(
                    date.get("isbn13").toString(),
                    date.get("title").toString(),
                    date.get("author").toString(),
                    date.get("description").toString(),
                    Integer.parseInt(date.get("priceSales").toString()),
                    date.get("cover").toString(),
                    date.get("publisher").toString()
            );
            arrayList.add(bookDTO);
        }
        return arrayList;
    }
    @Override
    public ArrayList<BookDTO> choicebooklist() {
        ArrayList<BookDTO> arrayList=new ArrayList<BookDTO>();
        strurl="http://www.aladin.co.kr/ttb/api/ItemList.aspx?ttbkey=ttbinpo33350927001&QueryType=ItemNewSpecial&MaxResults=30&start=1&Cover=Big&SearchTarget=Book&output=js&Version=20131101";
        JSONArray jsonArray=JSONParsing(strurl);

        for (int i = 0; i <jsonArray.size() ; i++) {
            JSONObject date=(JSONObject) jsonArray.get(i);
            BookDTO bookDTO=new BookDTO(
                    date.get("isbn13").toString(),
                    date.get("title").toString(),
                    date.get("author").toString(),
                    date.get("description").toString(),
                    Integer.parseInt(date.get("priceSales").toString()),
                    date.get("cover").toString(),
                    date.get("publisher").toString()
            );
            arrayList.add(bookDTO);
        }
        return arrayList;
    }
    @Override
    public ArrayList<BookDTO> booksearch(String title) {
        ArrayList<BookDTO> arrayList=new ArrayList<BookDTO>();
        strurl="http://www.aladin.co.kr/ttb/api/ItemSearch.aspx?ttbkey=ttbinpo33350927001&Query="+title+"&QueryType=Title&MaxResults=10&start=1&SearchTarget=Book&output=js&Version=20131101";
        JSONArray jsonArray=JSONParsing(strurl);

        for (int i = 0; i <jsonArray.size() ; i++) {
            JSONObject date=(JSONObject) jsonArray.get(i);
            BookDTO bookDTO=new BookDTO(
                    date.get("isbn13").toString(),
                    date.get("title").toString(),
                    date.get("author").toString(),
                    date.get("description").toString(),
                    Integer.parseInt(date.get("priceSales").toString()),
                    date.get("cover").toString(),
                    date.get("publisher").toString()
            );
            arrayList.add(bookDTO);
        }
        return arrayList;
    }
    
    @Override
    public BookDTO booksearchById1(String id) {
        strurl="http://www.aladin.co.kr/ttb/api/ItemLookUp.aspx?ttbkey=ttbinpo33350927001&itemIdType=ISBN13&ItemId="+id+"&output=js&Version=20131101&Cover=Big";
        JSONArray jsonArray=JSONParsing(strurl);
        JSONObject date=(JSONObject) jsonArray.get(0);
        BookDTO bookDTO=new BookDTO(
                date.get("isbn13").toString(),
                date.get("title").toString(),
                date.get("author").toString(),
                date.get("description").toString(),
                Integer.parseInt(date.get("priceSales").toString()),
                date.get("cover").toString(),
                date.get("publisher").toString()
        );
        return bookDTO;
    }
    @Override
    public ArrayList<BookDTO> categoryBookList(int id, int page) {
        ArrayList<BookDTO> arrayList=new ArrayList<BookDTO>();
        strurl="http://www.aladin.co.kr/ttb/api/ItemList.aspx?ttbkey=ttbinpo33350927001"
        		+ "&QueryType=ItemNewAll&MaxResults=30&Cover=Big"
        		+ "&SearchTarget=Book&output=js&Version=20131101"
        		+ "&CategoryId=" + id
        		+ "&Start=" + page;
        JSONArray jsonArray=JSONParsing(strurl);

        for (int i = 0; i <jsonArray.size() ; i++) {
            JSONObject date=(JSONObject) jsonArray.get(i);
            BookDTO bookDTO=new BookDTO(
                    date.get("isbn13").toString(),
                    date.get("title").toString(),
                    date.get("author").toString(),
                    date.get("description").toString(),
                    Integer.parseInt(date.get("priceSales").toString()),
                    date.get("cover").toString(),
                    date.get("publisher").toString()
            );
            arrayList.add(bookDTO);
        }
        return arrayList;
    }

    @Override
    public ArrayList<BookDTO> booksearch(String title, int page) {
        return null;
    }


    @Override
	public BookDTO booksearchById(String id) {
		strurl = "http://www.aladin.co.kr/ttb/api/ItemSearch.aspx?ttbkey=ttbinpo33350927001&Query=" + id
				+ "&QueryType=Isbn13&MaxResults=10&start=1&SearchTarget=Book&output=js&Version=20131101";
		JSONArray jsonArray = JSONParsing(strurl);
		JSONObject date = (JSONObject) jsonArray.get(0);
		BookDTO bookDTO = new BookDTO(date.get("isbn13").toString(), date.get("title").toString(),
				date.get("author").toString(), date.get("description").toString(),
				Integer.parseInt(date.get("priceStandard").toString()),Integer.parseInt(date.get("priceSales").toString()), date.get("cover").toString().replaceAll("coversum", "cover500"),
				date.get("publisher").toString(), date.get("categoryName").toString());
		return bookDTO;
	}

	@Override
	public ArrayList<BookDTO> bookArraySearchById(String id) {
    	ArrayList<BookDTO> arrayList=new ArrayList<BookDTO>();
		strurl = "http://www.aladin.co.kr/ttb/api/ItemSearch.aspx?ttbkey=ttbinpo33350927001&Query=" + id
				+ "&QueryType=Isbn13&MaxResults=10&start=1&SearchTarget=Book&output=js&Version=20131101";
		JSONArray jsonArray = JSONParsing(strurl);
		JSONObject date = (JSONObject) jsonArray.get(0);
		BookDTO bookDTO = new BookDTO(date.get("isbn13").toString(), date.get("title").toString(),
				date.get("author").toString(), date.get("description").toString(),
				Integer.parseInt(date.get("priceStandard").toString()),Integer.parseInt(date.get("priceSales").toString()), date.get("cover").toString().replaceAll("coversum", "cover500"),
				date.get("publisher").toString(), date.get("categoryName").toString());
		arrayList.add(bookDTO);
		return arrayList;
	}

    public JSONArray JSONParsing(String strurl){
        JSONArray JsonArray=null;
        StringBuffer stringBuffer =new StringBuffer();
        try{
            URL url = new URL(strurl);
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("GET");

            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
            String stringline;

            while ((stringline = bufferedReader.readLine()) != null) {
                stringBuffer.append(stringline + "\n");
            }

            JSONParser jsonParser=new JSONParser();
            JSONObject jsonObject=(JSONObject) jsonParser.parse(String.valueOf(stringBuffer));
            JsonArray=(JSONArray) jsonObject.get("item");
            httpURLConnection.disconnect();

        }catch (Exception e){
            System.out.println("JSONParsing 오류"+e);
        }
        return JsonArray;
    }
}
