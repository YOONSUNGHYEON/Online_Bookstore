package online_bookstore.Service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online_bookstore.DTO.LiketoDTO;
import online_bookstore.Entity.Liketo;
import online_bookstore.Repository.LiketoRepository;

@Service
@Transactional
public class LiketoService {

    @Autowired
    LiketoRepository liketoRepository;

	public void save(LiketoDTO liketoDTO){
		Liketo liketo = new Liketo(liketoDTO);
		Liketo tempLiketo = findByMemberNumandReviewID(liketo.getMember().getMember_Num(),liketo.getReview().getId());
		if(tempLiketo == null)
			tempLiketo = liketoRepository.save(liketo);
		else if(tempLiketo.getLike_check() == 1)
			liketoRepository.updateLikeCheck(tempLiketo.getId(), 0);
		else
			liketoRepository.updateLikeCheck(tempLiketo.getId(), 1);
	}

	//해당 리뷰에 좋아요를 눌렀는지 안눌렀는지
	public Liketo findByMemberNumandReviewID(int memberNum, long reviewId)
	{
		return liketoRepository.findByMemberNumandReviewID(memberNum, reviewId);
	}

	public int countByReviewIdandLikeCheck(Long id) {
		// TODO Auto-generated method stub
		return liketoRepository.countByReviewIdandLikeCheck(id);
	}

	public void deleteAllByReviewIdInQuery(Long id)
	{
		liketoRepository.deleteAllByReviewIdInQuery(id);
	}
}
