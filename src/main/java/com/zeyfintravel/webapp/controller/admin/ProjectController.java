package com.zeyfintravel.webapp.controller.admin;


import com.zeyfintravel.webapp.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class ProjectController {

    @Value("${buta.dir.project}")
    String directory;
    Logger logger= LoggerFactory.getLogger(ProjectController.class);
    private String site_name = "BUTACONSTRUCTION : ";
    private UserService userService;
/*

    @Autowired
    public ProjectController(UserService userService, ProjectService projectService, ImageEntitytService imageEntitytService, RoleRepository roleRepository, UserValidator userValidator) {
        this.userService = userService;
        this.projectService = projectService;
        this.imageEntitytService = imageEntitytService;
        this.roleRepository = roleRepository;
        this.userValidator = userValidator;
    }

    @RequestMapping(value = {"/project"}, method = RequestMethod.GET)
    public ModelAndView projects() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("title", site_name + " Project");
        modelAndView.addObject("projects", projectService.findAll());

        User user = userService.findByUsername(UserUtil.getAuthenticatedUser());
        modelAndView.addObject("user", user);
        modelAndView.setViewName("admin/projects");
        return modelAndView;
    }

    @RequestMapping(value = {"/project/add"}, method = RequestMethod.GET)
    public ModelAndView addProject() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("title", site_name + "Project : Add");
        modelAndView.addObject("project", new ProjectEntity());
        modelAndView.addObject("button", "Add");
        User user = userService.findByUsername(UserUtil.getAuthenticatedUser());
        modelAndView.addObject("user", user);
        modelAndView.setViewName("admin/project-ops");
        return modelAndView;
    }

    @RequestMapping(value = {"/project/save"}, method = RequestMethod.POST)
    public ModelAndView saveProject(@ModelAttribute("project") ProjectEntity projectEntity) {
        System.out.println(projectEntity);
        ModelAndView modelAndView = new ModelAndView();
        try {
            ProjectEntity projectEntityOld = projectService.getOne(projectEntity.getId());
            projectEntity.setImages(projectEntityOld.getImages());
        }catch (Exception e){

        }
        try {
           projectService.save(projectEntity);
           modelAndView.setViewName("redirect:/admin/project");
       }catch (Exception e){
           logger.error(e.getMessage());
           modelAndView.addObject("title", site_name + "Project : Add");
           modelAndView.addObject("project", projectEntity);
           modelAndView.addObject("button", "Add");
           User user = userService.findByUsername(UserUtil.getAuthenticatedUser());
           modelAndView.addObject("user", user);
           modelAndView.setViewName("admin/project-ops");
       }

        return modelAndView;
    }

    @RequestMapping(value = {"/project/edit/{id}"}, method = RequestMethod.GET)
    public ModelAndView editProject(@PathVariable("id") Long id) {
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("title", site_name + "Project : Edit");

        modelAndView.addObject("project", projectService.getOne(id));
        modelAndView.addObject("button", "Edit");

        User user = userService.findByUsername(UserUtil.getAuthenticatedUser());
        modelAndView.addObject("user", user);
        modelAndView.setViewName("admin/project-ops");
        return modelAndView;
    }


    @RequestMapping(value = {"/project/delete"}, method = RequestMethod.POST)
    public ModelAndView deleteProject(@RequestParam("pid") Long id) {
        ModelAndView modelAndView = new ModelAndView();
        projectService.delete(id);
        modelAndView.setViewName("redirect:/admin/project");
        return modelAndView;
    }



    @RequestMapping(value = {"/project/{id}/images"}, method = RequestMethod.GET)
    public ModelAndView getProjectImages(@PathVariable("id") Long id) {
        ModelAndView modelAndView = new ModelAndView();


        // System.out.println(imageEntitytService.getImages());
        ProjectEntity projectEntity = projectService.getOne(id);
        modelAndView.addObject("project", projectEntity);
        modelAndView.addObject("images", imageEntitytService.getImages(projectEntity));
        modelAndView.addObject("title", site_name + "Project : " + projectEntity.getProjectName());
        modelAndView.addObject("button", "Add");

        User user = userService.findByUsername(UserUtil.getAuthenticatedUser());
        modelAndView.addObject("user", user);
        modelAndView.setViewName("admin/project-images");
        return modelAndView;
    }

    @RequestMapping(value = {"/project/image/save"}, method = RequestMethod.POST)
    public ModelAndView saveProjectImage(@RequestParam("image") MultipartFile image,
                                         @RequestParam("pid") Long id) {
        ModelAndView modelAndView = new ModelAndView();

        imageEntitytService.save(id, directory, image);

        modelAndView.setViewName("redirect:/admin/project/" + id + "/images");
        return modelAndView;
    }

    @RequestMapping(value = {"/project/image/delete"}, method = RequestMethod.POST)
    public ModelAndView deleteProjectImage(@RequestParam("id") Long id,
                                           @RequestParam("imageId") Long imageId) {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("id " + id);
        System.out.println("/image " + imageId);
        imageEntitytService.delete(imageId);
        modelAndView.setViewName("redirect:/admin/project/" + id + "/images");
        return modelAndView;
    }
    */
}
