package com.amdocs.onecommunity;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.amdocs.onecommunity.model.ClientMain;
import com.amdocs.onecommunity.service.ClientMainService;

@Controller
public class AppController {

	@RequestMapping(value="/", method = RequestMethod.GET)
    public String showHomeController() {
        return "index";
    }

	@RequestMapping(value = "/client", method = RequestMethod.GET)
	public String showClientMainPage(Model model,RedirectAttributes redirectAttributes) {

		ClientMainService clientMainService = new ClientMainService();
		List<ClientMain> clientMain = clientMainService.getClientList();
		model.addAttribute("clientMain", clientMain);

		return "client";
	}

	@RequestMapping(value = "/socialmedia", method = RequestMethod.GET)
	public String showSocialMediaMainPage(Model model,RedirectAttributes redirectAttributes) {

		ClientMainService clientManiService = new ClientMainService();
		List<ClientMain> clientMain = clientManiService.getClientList();
		model.addAttribute("clientMain", clientMain);

		return "socialmedia";
	}

	@RequestMapping(value = "/queue", method = RequestMethod.GET)
	public String showQueueManagementMainPage(Model model,RedirectAttributes redirectAttributes) {

		ClientMainService clientManiService = new ClientMainService();
		List<ClientMain> clientMain = clientManiService.getClientList();
		model.addAttribute("clientMain", clientMain);

		return "queue";
	}

	@RequestMapping(value = "/setting", method = RequestMethod.GET)
	public String showSettingPage(Model model,RedirectAttributes redirectAttributes) {

		ClientMainService clientManiService = new ClientMainService();
		List<ClientMain> clientMain = clientManiService.getClientList();
		model.addAttribute("clientMain", clientMain);

		return "setting";
	}

}
