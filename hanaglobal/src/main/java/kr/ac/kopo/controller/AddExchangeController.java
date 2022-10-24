package kr.ac.kopo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.stereotype.Controller;

import kr.ac.kopo.service.ExchangeService;
import kr.ac.kopo.vo.ExchangeVO;

@Controller
@EnableScheduling
public class AddExchangeController {

	@Autowired
	private ExchangeService exchangeService;

//	@Scheduled(cron = "0 * * * * *")
	public void addExchange() {
		String url = "https://finance.naver.com/marketindex/exchangeList.naver";
		Document doc = null;

		List<ExchangeVO> exchangeList = new ArrayList<>();
		exchangeService.deleteAll();

		try {

			doc = Jsoup.connect(url).get(); 

		} catch (IOException e) {

			e.printStackTrace();

		}
		Elements element1 = doc.select("table tbody");
		Elements element2 = element1.select("tr");
		String[] a = null;

		for (Element element : element2) {
			int i = 0;
			a = element.text().split(" ");
			for (int j = 0; j < a.length; j++) {
				if (a[j].equals("N/A")) {
					a[j] = "0";
				}
			}

			ExchangeVO exvo = new ExchangeVO();
			if (a[2].equals("(100엔)") || a[2].equals("ZAR")) {
				exvo.setNationKr(a[i++] + a[i++] + a[i++]);
			} else {
				exvo.setNationKr(a[i++] + a[i++]);
			}
			exvo.setBuyBasicRate(Float.parseFloat(a[i++].replace(",", "")));
			exvo.setCashBuyRate(Float.parseFloat(a[i++].replace(",", "")));
			exvo.setCashSellRate(Float.parseFloat(a[i++].replace(",", "")));
			exvo.setTransferSendRate(Float.parseFloat(a[i++].replace(",", "")));
			exvo.setTransferReceiveRate(Float.parseFloat(a[i++].replace(",", "")));
			exvo.setUsdChangeRate(Float.parseFloat(a[i].replace(",", "")));
			exchangeList.add(exvo);

			exchangeService.insert(exvo); // 삽입해봄
		}

	}
}
