package online_bookstore.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.BookDTO;
import online_bookstore.DTO.HeartedDTO;
import online_bookstore.DTO.usedBook.UsedBookDTO;
import online_bookstore.DTO.usedBook.UsedBookInfoDTO;
import online_bookstore.DTO.usedBook.UsedBookSaveDTO;
import online_bookstore.Entity.UsedBook;
import online_bookstore.Repository.HeartedRepository;
import online_bookstore.Repository.UsedBookRepository;

@RequiredArgsConstructor
@Service
public class UsedBookService {
	private final UsedBookRepository usedBookRepository;
	private final HeartedRepository heartedRepository;
	private final BookInfoService bookInfoService;
	
	@Transactional(readOnly = true)
	public List<UsedBookInfoDTO> findAll(){
		ArrayList<UsedBookInfoDTO> arrayList=new ArrayList<UsedBookInfoDTO>();
		List<UsedBookDTO> data = usedBookRepository.findAll()
				.stream().map(UsedBookDTO::new)
				.collect(Collectors.toList());
		for(int i=0; i<data.size(); i++) {
			BookDTO book = bookInfoService.booksearchById1(data.get(i).getBook_Id());
			UsedBookInfoDTO usedbook = new UsedBookInfoDTO(data.get(i), book);
			arrayList.add(usedbook);
		}
		return arrayList;
	}
	
	@Transactional
	public UsedBookInfoDTO findById(Long id) {
		UsedBook usedBook = usedBookRepository.findById(id).orElseThrow(
				() -> new IllegalArgumentException("해당 게시물이 없습니다. id = "+id));
		UsedBookDTO dto = new UsedBookDTO(usedBook);
		BookDTO book = bookInfoService.booksearchById1(usedBook.getBook_Id());
		UsedBookInfoDTO usedBookInfo = new UsedBookInfoDTO(dto, book);		
		return usedBookInfo;
	}
	
	@Transactional
	public Long save(UsedBookSaveDTO usedBookSaveDTO) {
		return usedBookRepository.save(usedBookSaveDTO.toEntity()).getId();
	}
	
	@Transactional
	public void hearted(Long id, int member_id) {
		HeartedDTO dto = new HeartedDTO(id, member_id);
		heartedRepository.save(dto.toEntity());
	}
	
	@Transactional
	public void heartedDelete(Long id, int member_id) {
		usedBookRepository.heartedDelete(id, member_id);
	}
	
	@Transactional
	public int isHearted(Long id, int member_id) {
		int isHearted = usedBookRepository.findHeartedMember(id, member_id);
		return isHearted;
	}
	
	@Transactional
	public int heartedCount(Long id) {
		int heartedCount = usedBookRepository.heartedCount(id);
		return heartedCount;
	}
	
	@Transactional
	public void saleStatusChange(Long id, int saleStatus) {
		usedBookRepository.saleStatusChange(id, saleStatus);
	}

	public List<UsedBookInfoDTO> searchUsedBook(String title) {
		ArrayList<UsedBookInfoDTO> arrayList=new ArrayList<UsedBookInfoDTO>();
		List<UsedBookDTO> data = usedBookRepository.findByBook_titleLike(title)
				.stream().map(UsedBookDTO::new)
				.collect(Collectors.toList());
		for(int i=0; i<data.size(); i++) {
			BookDTO book = bookInfoService.booksearchById1(data.get(i).getBook_Id());
			UsedBookInfoDTO usedbook = new UsedBookInfoDTO(data.get(i), book);
			arrayList.add(usedbook);
		}
		return arrayList;
	}
}
