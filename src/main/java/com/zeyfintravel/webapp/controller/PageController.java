package com.zeyfintravel.webapp.controller;


import lombok.AllArgsConstructor;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@EnableAutoConfiguration
@Controller
@AllArgsConstructor
public class PageController {


    @GetMapping(value = {"/", "/home", "/index"})
    public ModelAndView index() {


        ModelAndView modelAndView = new ModelAndView();
        // modelAndView.addObject("sliders",sliderService.findAll());
      // modelAndView.addObject("scopes", scopeOfActivityRepository.findAll());
      //  modelAndView.addObject("slides", sliderService.findAll());
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @GetMapping(value = { "/about"})
    public ModelAndView about() {
        ModelAndView modelAndView = new ModelAndView();
        // modelAndView.addObject("sliders",sliderService.findAll());
        // modelAndView.addObject("scopes", scopeOfActivityRepository.findAll());
        //  modelAndView.addObject("slides", sliderService.findAll());
        modelAndView.setViewName("about");
        return modelAndView;
    }
/*
    @GetMapping(value = {"/projects/{category}"})
    public ModelAndView projectList(@PathVariable("category") String category) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("scopes", scopeOfActivityRepository.findAll());
        modelAndView.addObject("projects", projectService.getProjectByType(category));

        modelAndView.setViewName("public/project-list");
        return modelAndView;
    }

    @GetMapping(value = {"/project/{id}"})
    public ModelAndView getProject(@PathVariable("id") Long id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("scopes", scopeOfActivityRepository.findAll());
        modelAndView.addObject("project", projectService.getOne(id));

        modelAndView.setViewName("public/project");
        return modelAndView;
    }


    @GetMapping(value = {"/about"})
    public ModelAndView aboutUs() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("scopes", scopeOfActivityRepository.findAll());
        modelAndView.setViewName("public/about");
        return modelAndView;
    }
    @GetMapping(value = {"/contact"})
    public ModelAndView contact() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("scopes", scopeOfActivityRepository.findAll());
        modelAndView.setViewName("public/contact");
        return modelAndView;
    }


    @GetMapping(value = {"/certificate"})
    public ModelAndView certificate() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("certificates", certificateRepository.findAll());
        modelAndView.addObject("scopes", scopeOfActivityRepository.findAll());

        modelAndView.setViewName("public/certificate");
        return modelAndView;
    }

    @GetMapping(value = {"/partners"})
    public ModelAndView partners() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("partners", partnerRepository.findAll());
        modelAndView.addObject("scopes", scopeOfActivityRepository.findAll());

        modelAndView.setViewName("public/partners");
        return modelAndView;
    }
    @GetMapping(value = {"/activity/{scopeID}"})
    public ModelAndView activity(@PathVariable("scopeID" ) Long scopeId) {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("id "+scopeId);
        ScopeOfActivity scopeOfActivity=scopeService.scopeOfActivityById(scopeId);
        modelAndView.addObject("scope", scopeOfActivity);
        modelAndView.addObject("scopes", scopeOfActivityRepository.findAll());
        modelAndView.addObject("images", getImagesScopes.getImagesScopes(scopeOfActivity));
        System.out.println(scopeOfActivityRepository.getOne(scopeId).getImages().size());
        modelAndView.addObject("scope",scopeOfActivityRepository.getOne(scopeId));
        modelAndView.setViewName("public/scope");
        return modelAndView;
    }
/*

    @GetMapping(value = {"/calculation"})
    public ModelAndView calculation() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("partners", partnerService.findAll());
        modelAndView.addObject("contact", contactInfoService.findAll());

        modelAndView.setViewName("calculation");
        return modelAndView;
    }


    @GetMapping(value = {"/contact"})
    public ModelAndView contact() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("partners", partnerService.findAll());
        modelAndView.addObject("contact", contactInfoService.findAll());
        modelAndView.addObject("messageAttrib",new Message());
        modelAndView.setViewName("contact");
        return modelAndView;
    }

    @Autowired
    MessageService messageService;

    @PostMapping(value = {"/contact"})
    public ModelAndView contactSave(@ModelAttribute("messsage") Message message) {
        ModelAndView modelAndView = new ModelAndView();
        messageService.save(message);
        modelAndView.setViewName("redirect:/");
        return modelAndView;
    }

    @GetMapping(value = {"/partners"})
    public ModelAndView partners() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("contact", contactInfoService.findAll());
        modelAndView.addObject("partners", partnerService.findAll());
        modelAndView.setViewName("partners");
        return modelAndView;
    }

    @GetMapping(value = {"/partner/{id}"})
    public ModelAndView products(@PathVariable("id") Long id) {


        ModelAndView modelAndView = new ModelAndView();
        PartnerController partner = partnerService.findOne(id);
        modelAndView.addObject("partners", partnerService.findAll());
        modelAndView.addObject("partner_detail", partner);
        modelAndView.addObject("categories", categoryService.findCategoriesByPartner(partner));
        modelAndView.addObject("contact", contactInfoService.findAll());
        modelAndView.setViewName("partner-detail");
        return modelAndView;
    }


    @Autowired
    CertificateService certificateService;

    @RequestMapping(value = {"/certificate"}, method = RequestMethod.GET)
    public ModelAndView certifcates() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("partners", partnerService.findAll());
        modelAndView.addObject("certificates", certificateService.findAll());
        modelAndView.addObject("contact", contactInfoService.findAll());
        modelAndView.setViewName("certificate");
        return modelAndView;
    }

    @GetMapping(value = {"/products/cat/{id}"})
    public ModelAndView productCategory(@PathVariable("id") Long id) {
        ModelAndView modelAndView = new ModelAndView();
        Category category = categoryService.findOne(id);

        modelAndView.addObject("partners", partnerService.findAll());
        modelAndView.addObject("contact", contactInfoService.findAll());
        modelAndView.addObject("category", category);
        modelAndView.addObject("products", productService.findProductByCategory(category));
        modelAndView.setViewName("productsbycat");
        return modelAndView;
    }


    @GetMapping(value = {"/product/{id}"})
    public ModelAndView productDetail(@PathVariable("id") Long id) {
        ModelAndView modelAndView = new ModelAndView();
        Product product = productService.findOne(id);
        modelAndView.addObject("product", product);
        modelAndView.addObject("title", product.getName());
        modelAndView.addObject("partners", partnerService.findAll());
        modelAndView.addObject("contact", contactInfoService.findAll());
        modelAndView.setViewName("productdetail");
        return modelAndView;
    }

*/
}
