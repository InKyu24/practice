package web.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AccountDAOImpl implements AccountDAO {

	@Autowired
	SqlSession sqlSession;

	// 첫 번째 update문을 실행해 홍길동 계좌에서 출금
	@Override
	public void updateBalance1() {
		sqlSession.update("mapper.account.updateBalance1");
	}

	// 두 번째 update문을 실행해 김유신 계좌에 입금
	@Override
	public void updateBalance2() {
		sqlSession.update("mapper.account.updateBalance2");
	}

}
