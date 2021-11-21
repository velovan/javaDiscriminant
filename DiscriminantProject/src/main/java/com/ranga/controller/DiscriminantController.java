package com.ranga.controller;
import com.ranga.model.Discriminant;
import com.ranga.service.DiscriminantService;

import org.jboss.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class DiscriminantController {
	
	private static final Logger logger = Logger.getLogger(DiscriminantController.class);
	
	public DiscriminantController() {
		System.out.println("DiscriminantController()");
	}

    @Autowired
    private DiscriminantService discriminantService;

    @RequestMapping("createDiscriminant") 
    public ModelAndView createDiscriminant(@ModelAttribute Discriminant discriminant) { 
    	logger.info("Creating Discriminant. Data: "+ discriminant);
	    
        return new ModelAndView("discriminantForm");
    }
    
    @RequestMapping("editDiscriminant") 
    public ModelAndView editDiscriminant(@RequestParam long id, @ModelAttribute Discriminant discriminant) {
    	logger.info("Updating the Discriminant for the Id "+id);
        discriminant = discriminantService.getDiscriminant(id);
	    
        return new ModelAndView("discriminantForm", "discriminantObject", discriminant); 
    }
    
    @RequestMapping("saveDiscriminant") 
    public ModelAndView saveDiscriminant(@ModelAttribute Discriminant discriminant) {
    	logger.info("Saving the Discriminant. Data : "+discriminant);
        if(discriminant.getId() == 0){ 
            discriminantService.createDiscriminantt(discriminant);
        } else {
            discriminantService.updateDiscriminantt(discriminant);
        }
	    
        return new ModelAndView("redirect:getAllDiscriminant"); 
    }
    
    @RequestMapping("deleteDiscriminant") 
    public ModelAndView deleteDiscriminant(@RequestParam long id) {
    	logger.info("Deleting the Discriminant. Id : "+id);
        discriminantService.deleteDiscriminantt(id);
        return new ModelAndView("redirect:getAllDiscriminant"); 
    }
    
    @RequestMapping(value = {"getAllDiscriminant", "/"}) 
    public ModelAndView getAllDiscriminant() {
    	logger.info("Getting the all Discriminant.");
        List<Discriminant> discriminantList = discriminantService.getAllDiscriminant();
        return new ModelAndView("discriminantList", "discriminantList", discriminantList);
    }
 
}
