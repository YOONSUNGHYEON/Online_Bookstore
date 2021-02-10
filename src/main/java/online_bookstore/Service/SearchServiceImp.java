package online_bookstore.Service;

import online_bookstore.DTO.BookDTO;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import java.awt.print.Book;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@Service
public class SearchServiceImp implements SearchService {

    String strurl;

    @Override
    public ArrayList<BookDTO> bookSearchByTermAndCategory(String authorOrBook, String searchTerm, String sortType, String categoryId ){
        ArrayList<BookDTO> arrayList=new ArrayList<BookDTO>();
        strurl = "http://www.aladin.co.kr/ttb/api/ItemSearch.aspx?ttbkey=ttbinpo33350927001&Query="+searchTerm+"&QueryType="+authorOrBook+"&MaxResults=24&Sort="+sortType+"&start=1&SearchTarget=Book&output=js&Version=20131101&CategoryId"+categoryId;
        JSONArray jsonArray;
        jsonArray = JSONParsing(strurl);
        for (int i = 0; i <jsonArray.size() ; i++) {
            JSONObject date=(JSONObject) jsonArray.get(i);
            BookDTO bookDTO=new BookDTO(
                    date.get("isbn13").toString(),
                    date.get("title").toString(),
                    date.get("author").toString(),
                    date.get("description").toString(),
                    Integer.parseInt(date.get("priceStarndard").toString()),
                    date.get("cover").toString(),
                    date.get("publisher").toString()

            );
            arrayList.add(bookDTO);
        }
        return arrayList;

    }
    @Override
    public ArrayList<BookDTO> bookSearchByTerm(String authorOrBook , String searchTerm, String sortType){
        ArrayList<BookDTO> arrayList=new ArrayList<BookDTO>();
        strurl ="http://www.aladin.co.kr/ttb/api/ItemSearch.aspx?ttbkey=ttbinpo33350927001&Query="+searchTerm+"&QueryType="+authorOrBook+"&MaxResults=24&Sort="+sortType+"&start=1&SearchTarget=eBook&output=js&Version=20131101";
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
                    Integer.parseInt(date.get("priceSales").toString()),
                    date.get("cover").toString(),
                    date.get("publisher").toString(),
                    date.get("categoryName").toString()
            );
            arrayList.add(bookDTO);
        }
        return arrayList;
    }

    @Override
    public ArrayList<String> bookSearchGetCategory(ArrayList<BookDTO> searchResult){
        Set<String> set = new HashSet<>();
        String category;
        String[] categoryArray;
        for(int i=0; i<searchResult.size(); i++){
            category = searchResult.get(i).getBook_CategoryName();
            if(category !=null) {
                categoryArray = category.split(">");
                set.add(categoryArray[1]);
            }
        }

        ArrayList<String>categoryList = new ArrayList<>();
        categoryList.addAll(set);
        return categoryList;
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
