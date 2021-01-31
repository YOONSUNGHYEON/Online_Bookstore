package online_bookstore.Service;

import online_bookstore.DTO.BookDTO;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.DTO.PaymentDTO;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Payment;
import online_bookstore.Repository.PaymentRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;

@Service
@Transactional
public class PaymentService {
    @Autowired
    PaymentRepository paymentRepository;
    @Autowired
    ModelMapper modelMapper;
    @Autowired
    BookInfoService bookInfoService;


    public ArrayList<PaymentDTO> myPayment(int num, int page) {
        page=(page-1)*5;
        ArrayList<PaymentDTO> arrayList=new ArrayList<PaymentDTO>();
        ArrayList<Payment> payment =paymentRepository.myPayment(num,page);
        for (int i = 0; i <payment.size() ; i++) {
            PaymentDTO paymentDTO=new PaymentDTO(payment.get(i));
            BookDTO bookDTO=bookInfoService.booksearchById1(payment.get(i).getOrders().getBook_Id());
            paymentDTO.setBook_name(bookDTO.getBook_Title());
            arrayList.add(paymentDTO);
        }
        return arrayList ;
    }


    public Long paymentcount(int num) {
        return paymentRepository.paymentcount(num);
    }

    public PaymentDTO toPaymentDTO(Payment payment){
        return modelMapper.map(payment,PaymentDTO.class);
    }

}
