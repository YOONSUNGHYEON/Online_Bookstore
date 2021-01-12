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
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

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
                    Long.parseLong(date.get("isbn13").toString()),
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
                    Long.parseLong(date.get("isbn13").toString()),
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





    public JSONArray JSONParsing(String strurl){
        JSONArray JsonArray=null;
        StringBuffer stringBuffer =new StringBuffer();
        try{
            URL url = new URL(strurl);
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("GET");

            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), StandardCharsets.UTF_8));
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
