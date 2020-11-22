package org.goal.rgas.payment;

import java.util.List;

import org.goal.rgas.mission.Mission;

public interface PaymentService {
	public IamportRequest paymentProcess(Mission mission) throws Exception;
	public void paymentRegister(Payment payment) throws Exception;
	public List<Payment> paymentList(Payment payment) throws Exception;
	public Payment paymentInquiry(Payment payment) throws Exception;
	public void paymentCancel(Payment payment) throws Exception;
}
