package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SendMailServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");

		// フォームから送信先、件名、本文を取得
		String to = request.getParameter("to");
		String subject = request.getParameter("subject");
		String body = request.getParameter("body");

		// メールを送信するためのプロパティを設定
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.example.com"); // SMTPサーバーのホスト名
		props.put("mail.smtp.port", "587"); // SMTPサーバーのポート番号
		props.put("mail.smtp.auth", "true"); // 認証を使用する
		props.put("mail.smtp.starttls.enable", "true"); // TLSを有効にする

		// メールセッションを作成
		Session session = Session.getInstance(props);

		try {
			// メッセージを作成
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("from@example.com")); // 送信元アドレス
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to)); // 送信先アドレス
			message.setSubject(subject); // 件名
			message.setText(body); // 本文

			// メールを送信
			Transport.send(message);

			// 送信完了メッセージを出力
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head><title>メール送信完了</title></head>");
			out.println("<body>");
			out.println("<p>メールを送信しました。</p>");
			out.println("</body>");
			out.println("</html>");

		} catch (MessagingException e) {
			// 送信エラー時の処理
			throw new RuntimeException(e);
		}
	}

}

