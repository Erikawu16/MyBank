package mailsend;

import java.net.URISyntaxException;
import java.nio.file.Path;

import aweit.mail.GMail;

/**
 * 應用程式密碼：Google 帳戶 -> 安全性 -> 兩步驟驗證 -> 應用程式密碼 -> 輸入「send gmail」取得 Token (例如：rkrb vuai biti ssyf)
 */
public class GmailDemo {

	public static void main(String[] args) throws URISyntaxException {
		
		GMail mail = new GMail("np93021233@gmail.com", "saca zpxf fdbf opiy");
		
		mail.from("np93021233@gmail.com")
		    .to("np93021233@gmail.com")
		    .to("np93021233@yahoo.com.tw")
		    .cc("np93021233@gmail.com")
		    .personal("吳佳謓")
		    .subject("測試信件")
		    .context("謝謝助教~~聖誕節快樂~")
		    //.attachement(Path.of(GmailDemo.class.getClassLoader().getResource("123.txt").toURI()))
		    .send();

	}

}
