package org.goal.rgas.donation;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

import org.goal.rgas.charity.Charity;
import org.goal.rgas.payment.IamportRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DonationServiceImpl implements DonationService {
	@Autowired
	DonationTransferMapper donationTransferMapper;

	@Autowired
	DonationSaveMapper donationSaveMapper;

	//기부금 이체 창 띄우기
	@Override
	public IamportRequest donationTransferProcess(Charity charity) throws Exception {
		IamportRequest iamportRequest = new IamportRequest();
		int totalAmount = 0;

		if (charity != null) {
			UUID uuid = UUID.randomUUID();
			iamportRequest.setMerchantUid(uuid.toString());
			//찾기
			iamportRequest.setBuyerName("환급형 목표달성 시스템");
			iamportRequest.setBuyerEmail("jjjj04090@gmail.com");
			iamportRequest.setPaymentName(charity.getName());
			//시간
			
			DonationSave donationSave = new DonationSave();
			donationSave.setSaveDate(LocalDate.now());
			List<DonationSave> donationSaveList = donationSaveMapper.list(donationSave);

			for (int i = 0; i < donationSaveList.size(); i++) {
				totalAmount += donationSaveList.get(i).getAmount();
			}

			iamportRequest.setAmount(totalAmount);
			return iamportRequest;
		}
		return null;
	}

	//기부금 이체 내역 등록
	@Override
	public void donationTransferRegister(DonationTransfer donationTransfer) throws Exception {
		if (donationTransfer != null) {
			donationTransferMapper.insert(donationTransfer);
		}
	}

	//기부금 이체 내역 목록 조회
	@Override
	public List<DonationTransfer> donationTransferList(DonationTransfer donationTransfer) throws Exception {
		List<DonationTransfer> donationTransferList = null;
		donationTransferList = donationTransferMapper.list(donationTransfer);
		return donationTransferList;
	}

	//기부금 적립 내역 목록 조회
	@Override
	public List<DonationSave> donationSaveList(DonationSave donationSave) throws Exception {
		List<DonationSave> donationSaveList = donationSaveMapper.list(donationSave);
		return donationSaveList;
	}

	//기부금 적립 내역 수정
	@Override
	public void donationSaveModify(DonationSave donationSave) throws Exception {
		if (donationSave != null) {
			donationSaveMapper.update(donationSave);
		}
	}
}
