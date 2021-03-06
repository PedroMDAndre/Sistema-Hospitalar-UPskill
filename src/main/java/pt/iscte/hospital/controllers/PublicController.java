package pt.iscte.hospital.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pt.iscte.hospital.controllers.utils.Common;
import pt.iscte.hospital.entities.User;
import pt.iscte.hospital.services.RegistrationService;
import pt.iscte.hospital.services.user.UserService;

@Controller
public class PublicController {
    private final UserService userService;
    private final RegistrationService registrationService;
    private final Common common;

    @Autowired
    public PublicController(UserService userService, RegistrationService registrationService, Common common) {
        this.userService = userService;
        this.registrationService = registrationService;
        this.common = common;
    }

    @GetMapping(value = "/public/contacts")
    public String ShowContacts(ModelMap modelMap) {
        modelMap.addAllAttributes(common.sideNavMap());
        return "public/contacts";
    }

    @GetMapping(value = {"/public/main", "/", "/public"})
    public String showMainPage(ModelMap modelMap) {
        User user = userService.currentUser();
        String mainPage = userService.getUserMainPage(user);
        if(user != null){
            return "redirect:" + mainPage;
        }
        modelMap.addAllAttributes(common.sideNavMap());
        return mainPage;
    }

    @GetMapping(value = "/public/general-information")
    public String showGeneralInformation(ModelMap modelMap) {
        modelMap.addAllAttributes(common.sideNavMap());
        return "public/general-information";
    }

    //login
    @GetMapping(value = "/public/login")
    public String showLoginPage() {

        return "public/login";
    }

    //recover password
    @GetMapping(value = "/public/recover-password")
    public String showRecoverPasswordPage(ModelMap modelMap) {
        modelMap.put("username", "");
        modelMap.put("email", "");

        return "public/recover-password";
    }

    @PostMapping(value = "/public/recover-password")
    public String recoverPassword(ModelMap modelMap,
                                  @RequestParam String username,
                                  @RequestParam String email,
                                  @RequestParam String password1,
                                  @RequestParam String password2) {
        if (userService.validateUserMail(username, email)) {
            if (password1.equals(password2)) {
                User user = userService.findUser(username);
                registrationService.changeEncryptPassword(user, password1);
                userService.addUser(user);
                return "redirect:/public/login";
            } else {
                modelMap.put("errorMessage", "Palavras-passe n??o coincidem");
            }
        } else {
            modelMap.put("errorMessage", "Username/Email inv??lido");
        }
        modelMap.put("username", username);
        modelMap.put("email", email);
        return "public/recover-password";
    }

    // terms and conditions
    @GetMapping(value = "/public/termsandconditions")
    public String showTermsAndConditions(){
        return "public/termsandconditions";
    }

}
