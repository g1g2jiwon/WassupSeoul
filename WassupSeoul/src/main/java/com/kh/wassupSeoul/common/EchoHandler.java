package com.kh.wassupSeoul.common;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.wassupSeoul.member.model.vo.Member;

public class EchoHandler extends TextWebSocketHandler {

	private List<WebSocketSession> sessionList = new ArrayList();
	private Logger logger = LoggerFactory.getLogger(EchoHandler.class);

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessionList.add(session);

		//logger.info("{}연결됨", session.getId());
		
		Member loginMember = (Member)session.getAttributes().get("loginMember");
		System.out.println("wassupSeoul 접속자 멤버넘버 :"+ loginMember.getMemberNo());
		// super.afterConnectionEstablished(session);
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		//session.sendMessage(new TextMessage(session.getId() + "|" + message.getPayload()));
		//System.out.println("session주소 : "+session.getRemoteAddress());
		//System.out.println(session.getAttributes().get("loginMember"));
		Member loginMember = null;
		
		for (WebSocketSession sss : sessionList) {
			//sss.sendMessage(new TextMessage(session.getId() + " | " + message.getPayload()+"|"+session.getRemoteAddress()+"|"+session.getAttributes().get("userName")));
			loginMember = (Member)sss.getAttributes().get("loginMember");
			if(loginMember.getMemberNo() == Integer.parseInt(message.getPayload())) {
				sss.sendMessage(message);;
			}
		}
		// super.handleTextMessage(session, message);
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		
		sessionList.remove(session);
		//logger.info("{}연결끊김",session.getId());
		/*
		for (WebSocketSession sss : sessionList) {
			if(sss==session) continue;
			sss.sendMessage(new TextMessage(session.getAttributes().get("userName")+"님이 퇴장하셨습니다."));
		}
		*/
		
		
		//super.afterConnectionClosed(session, status);
	}
	
	
	public List<WebSocketSession> getSessionList() {
		return sessionList;
	}

}
