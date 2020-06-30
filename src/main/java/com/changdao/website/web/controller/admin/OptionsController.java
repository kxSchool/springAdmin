package com.changdao.website.web.controller.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.changdao.website.model.domain.Options;
import com.changdao.website.model.dto.JsonResult;
import com.changdao.website.model.dto.ChangdaoConst;
import com.changdao.website.model.enums.ChangdaoEnums;
import com.changdao.website.service.OptionsService;



@Controller
@RequestMapping("/admin/option")
public class OptionsController extends BaseController {
	@Autowired
	private OptionsService optionsService;

	/**
	 * 所有设置选项
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping
	public String option(Model model) {
		return "admin/admin_options";
	}

	/**
	 * 保存设置
	 * 
	 * @param map
	 * @return
	 */
	@PostMapping(value = "/save")
	@ResponseBody
	public JsonResult save(@RequestParam Map<String, String> map) {
		try {
			optionsService.save(map);
			ChangdaoConst.OPTIONS.clear();
			List<Options> listMap = optionsService.selectMap();
			for (Options options : listMap) {
				ChangdaoConst.OPTIONS.put(options.getOptionName(), options.getOptionValue());
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			return new JsonResult(ChangdaoEnums.PRESERVE_ERROR.isFlag(), ChangdaoEnums.PRESERVE_ERROR.getMessage());
		}
		return new JsonResult(ChangdaoEnums.PRESERVE_SUCCESS.isFlag(), ChangdaoEnums.PRESERVE_SUCCESS.getMessage());
	}
}
