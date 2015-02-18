package com.springapp.mvc;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
public class HelloController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello world!");
		return "hello";
	}

	@RequestMapping(value = "/getdata", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public String getData() throws IOException {
		Map<String, String> data = new HashMap<String, String>();
		data.put("hello", "hi there");
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(data);
	}
}