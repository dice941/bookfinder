package com.BookFinder.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.slf4j.Slf4j;
import com.BookFinder.helper.WebHelper;

import uap_clj.java.api.Browser;
import uap_clj.java.api.Device;
import uap_clj.java.api.OS;

@Slf4j
public class AppIntercepter extends HandlerInterceptorAdapter {
	long startTime = 0, endTime = 0;

	/** WebHelper ��ü ���� */
	// --> import {�ڽ���_��Ű��_�̸�}.helper.WebHelper;
	@Autowired
	WebHelper webHelper;

	/**
	 * Controller ���� ��û ���� ����Ǵ� �޼��� Ŭ���̾�Ʈ�� ��û�� ��Ʈ�ѷ��� ���� �ϱ� ���� ȣ��ȴ�. return ������
	 * boolean ���� �����ϴµ� false �� ��� controller�� ���� ��Ű�� �ʰ� ��û�� �����Ѵ�. ���� �̰����� ����
	 * üũ�۾��� �α׸� ����ϴ� �۾��� �����Ѵ�.
	 */
	@SuppressWarnings("unchecked")
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// log.debug("AppInterceptor.preHandle �����");

		// WebHelper�� �ʱ�ȭ�� ��� ��Ʈ�ѷ����� ���������� ȣ��Ǿ�� �Ѵ�.
		// Interceptor���� �� �۾��� �����ϸ� ��� �޼��帶�� �����ϴ� ���� �۾��� �ϰ�ó���� �� �ִ�.
		webHelper.init(request, response);

		// ��Ʈ�ѷ� ���� ������ ���� �ð��� �����Ѵ�.
		startTime = System.currentTimeMillis();

		/** 1) Ŭ���̾�Ʈ�� ��û ���� Ȯ���ϱ� */
		// ���� URL ȹ��
		String url = request.getRequestURL().toString();

		// GET�������, POST������� ��ȸ�Ѵ�.
		String methodName = request.getMethod();

		// URL���� "?"���Ŀ� ���޵Ǵ� GET�Ķ���� ���ڿ��� ��� �����´�.
		String queryString = request.getQueryString();

		// ������ ���� �ִٸ� URL�� �����Ͽ� ������ URL�� �����Ѵ�.
		if (queryString != null) {
			url = url + "?" + queryString;
		}

		// ȹ���� ������ �α׷� ǥ���Ѵ�.
		log.debug(String.format("[%s] %s", methodName, url));

		/** 2) Ŭ���̾�Ʈ�� ������ ��� �Ķ���� Ȯ���ϱ� */
		Map<String, String[]> params = request.getParameterMap();

		for (String key : params.keySet()) {
			String[] value = params.get(key);
			log.debug(String.format("(p) <-- %s = %s", key, String.join(",", value)));
		}

		/** 3) Ŭ���̾�Ʈ�� �ӹ����� ���� �������� ���� �������� �ӹ� �ð� Ȯ���ϱ� */
		// ������ �ӹ����� ������
		String referer = request.getHeader("referer");

		// ���� ���� �ð��� 0���� ũ�ٸ� ���ο� ���۽ð����� ���̴� ���� �������� �ӹ� �ð��� �ǹ��Ѵ�.
		if (referer != null && endTime > 0) {
			log.debug(String.format("- REFERER : time=%d, url=%s", startTime - endTime, referer));
		}

		/** 4) ������ Ŭ���̾�Ʈ�� ��ġ ������ �α׷� ��� */
		// ������ Ŭ���̾�Ʈ�� HTTP ��� ���� ��������

		// "uap" ���̺귯���� ����� ���� UserAgent ���� �Ľ�
		String ua = request.getHeader("User-Agent");
		// -> import uap_clj.java.api.Browser;
		Map<String, String> browser = Browser.lookup(ua);
		// -> import uap_clj.java.api.OS;
		Map<String, String> os = (Map<String, String>) OS.lookup(ua);
		// -> import uap_clj.java.api.Device;
		Map<String, String> device = (Map<String, String>) Device.lookup(ua);

		// ����� �������� ����ϱ� ���� ���ڿ��� ����
		String browserStr = String.format("- Browser: {family=%s, patch=%s, major=%s, minor=%s}", browser.get("family"),
				browser.get("patch"), browser.get("major"), browser.get("minor"));

		String osStr = String.format("- OS: {family=%s, patch=%s, patch_minor=%s, major=%s, minor=%s}",
				os.get("family"), os.get("patch"), os.get("patch_minor"), os.get("major"), os.get("minor"));

		String deviceStr = String.format("- Device: {family=%s, model=%s, brand=%s}", device.get("family"),
				device.get("model"), device.get("brand"));

		// �α� ����
		log.debug(browserStr);
		log.debug(osStr);
		log.debug(deviceStr);

		return super.preHandle(request, response, handler);
	}

	/**
	 * view ������ forward �Ǳ� ���� ����. ��Ʈ�ѷ� ������ ����� ���� ȣ��ȴ�. ��Ʈ�ѷ� �ܿ��� ���� �߻� �� �ش� �޼����
	 * ������� �ʴ´�. request�� �Ѿ�� ������ ���� �� ���� ���ȴ�.
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// log.debug("AppInterceptor.postHandle �����");

		// ��Ʈ�ѷ� ������� �ð��� �����´�.
		endTime = System.currentTimeMillis();

		// ���۽ð��� ����ð� ������ ���̸� ���ϸ� �������� ����ð��� ���� �� �ִ�.
		log.debug(String.format("running time: %d(ms)\n", endTime - startTime));

		super.postHandle(request, response, handler, modelAndView);
	}

	/**
	 * ��Ʈ�ѷ� ���� �� view�� ���������� ������ �� �� ���� �������� ������ �Ǵ� �޼���.
	 */
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// log.debug("AppInterceptor.afterCompletion �����");
		super.afterCompletion(request, response, handler, ex);
	}

	/**
	 * Servlet 3.0���� �񵿱� ��û�� ���������� ���� �񵿱� ��û �� PostHandle�� afterCompletion�޼��带
	 * �������� �ʰ� �� �޼��带 �����ϰ� �ȴ�. ���� ��� ����.
	 */
	@Override
	public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// log.debug("AppInterceptor.afterConcurrentHandlingStarted �����");
		super.afterConcurrentHandlingStarted(request, response, handler);
	}
}
