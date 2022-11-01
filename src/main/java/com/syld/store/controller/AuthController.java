package com.syld.store.controller;


import com.auth0.jwt.JWT;
import com.syld.store.config.message.MessageConfig;
import com.syld.store.dto.*;
import com.syld.store.services.mail.MailService;
import com.syld.store.services.user.UserService;
import com.syld.store.ultis.JWTHelper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.*;

@Controller
@RequestMapping(path = "/auth")
@RequiredArgsConstructor
@Slf4j
public class AuthController extends BaseController {

    private final UserService userService;
    private final MailService mailService;
    @Autowired
    MessageConfig messageConfig;

    @GetMapping("/reset_password")
    public String ActivePassword(@RequestParam String token, Model model) {
        try {
            if (!Objects.equals(token, "") && token != null) {
                String subject = JWTHelper.verifyToken(token);
                if (!Objects.equals(subject, "")) {
                    model.addAttribute("user_email", subject);
                    model.addAttribute("user", new ResetPasswordDto());
                    return view(model, "Syld - Reset password", "reset_password", this.layout_path, true);
                }
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        model.addAttribute("message", "Invalid Token");
        return view(model, "Syld - Notification", "notification", this.layout_path, true);

        return token;
    }

    @PostMapping(path = "/reset_password")
    public String ResetPassword(@ModelAttribute("user") ResetPasswordDto resetPasswordDto, BindingResult bindingResult) {
        if (!Objects.equals(resetPasswordDto.getRe_new_password(), resetPasswordDto.getNew_password())) {
            bindingResult.rejectValue("re_new_password", "", "Password not match!");
        }
        try {
            userService.resetPassword(resetPasswordDto.getEmail(), resetPasswordDto.getNew_password());
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/auth/login";
    }

    @PostMapping("/forgot_password")
    public String ForgotPassword(@ModelAttribute("user") UserForgotPassword userForgotPassword, BindingResult bindingResult, Model model) {
        try {
            UserClientDto userClientDto = userService.findByEmail(userForgotPassword.getEmailOrPhone());
            UserClientDto userClientDto_ = userService.findByNumberPhone(userForgotPassword.getEmailOrPhone());
            if (userClientDto_ != null) {
//                change by phone
            } else if (userClientDto != null) {
                boolean result = CreateResetPasswordRequestWithEmail(userForgotPassword.getEmailOrPhone());
                if (result) {
                    model.addAttribute("message", "We has send reset password mail for you, please,check your mail box!");
                    return view(model, "Syld - Notification", "notification", this.layout_path, true);
                }
            }
            if (userClientDto_ == null && userClientDto == null) {
                bindingResult.rejectValue("emailOrPhone", "", "Email or number phone not found!");
            }
            if (bindingResult.hasErrors()) {
                return view(model, "Syld - forgot password", "forgot_password", this.layout_path, true);

            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        model.addAttribute("message", "Something error , please try later!");
        return view(model, "Syld - Actions", "notification", this.layout_path, true);
    }

    private boolean CreateResetPasswordRequestWithEmail(String to) {
        try {
//            create new token
            TokenDetail tokenDetail = new TokenDetail();
            tokenDetail.setSubject(to);
            tokenDetail.setExpire_at(new Date(System.currentTimeMillis() + 1000 * 60 * 30));// 30 minute
            String token = JWTHelper.generateToken(tokenDetail);
            MailDetail mailDetail = new MailDetail();
            mailDetail.setTo(to);
            String base_url = ServletUriComponentsBuilder.fromCurrentContextPath().toUriString();
            String reset_uri = String.format("%s/%s?token=%s", base_url, "auth/reset_password", token);
            mailDetail.setMgs(String.format("<h6>Hi ! %s</h6> <br> <p>You have took an reset password request!<a href='%s'>Click here to reset your password</a></p>", to, reset_uri));
            mailDetail.setSubject("Reset Your Password!");
            return mailService.sendSimpleMail(mailDetail);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return false;
    }

    @GetMapping(path = "/forgot_password")
    public String ForgotPassword(Model model) {
        model.addAttribute("user", new UserForgotPassword());
        return view(model, "Syld - forgot password", "forgot_password", this.layout_path, true);
    }

    @GetMapping(path = "/login")
    public String Login(Model model, @RequestParam(required = false, value = "error") String error, HttpServletRequest request) {
        if (!Objects.equals(SecurityContextHolder.getContext().getAuthentication().getName(), "anonymousUser")) {
            return "redirect:/home";
        }
        Map<String, ?> inputFlashMap = RequestContextUtils.getInputFlashMap(request);
        if (inputFlashMap != null) {
            model.addAttribute("message", inputFlashMap.get("message"));
        }
        if (this.isLogin() != null) {
            return this.isLogin();
        }
        model.addAttribute("user", new UserClientDto());
        if (error != null)
            model.addAttribute("message", getAuthErr(error));
        return view(model, "Login Page ", "login", "layout/client_layout", true);
    }

    @PostMapping(path = "/valid_email")
    public ResponseEntity<?> GetUserByEmail(@RequestBody String payload) {
        Map<String, String> result = new HashMap<>();
        try {
            log.info(payload);
            UserClientDto userClientDto = userService.findByEmail(payload);
            if (userClientDto != null) {
                result.put("result", "false");
            } else {
                result.put("result", "true");
            }
        } catch (Exception e) {
            result.put("result", e.getMessage());
            result.put("error", "true");
        }
        return ResponseEntity.ok().body(result);
    }

    @GetMapping(path = "/register")
    public String Register(Model model, @RequestParam(required = false) String error, HttpServletRequest request) {
        Map<String, ?> inputFlashMap = RequestContextUtils.getInputFlashMap(request);
        if (inputFlashMap != null) {
            model.addAttribute("message", inputFlashMap.get("message"));
        }
        if (this.isLogin() != null) {
            return this.isLogin();
        }
        if (error != null)
            model.addAttribute("message", getAuthErr(error));
        model.addAttribute("user_reg", new UserClientDto());
        return view(model, "Register Page ", "register", "layout/client_layout", true);
    }


    @PostMapping(path = "/register")
    public String Register(@Valid @ModelAttribute("user_reg") UserClientDto userClientDto, BindingResult bindingResult, RedirectAttributes redirectAttr, Model model) {
        try {
            if (!Objects.equals(userClientDto.getPassword(), userClientDto.getRePassword())) {
                bindingResult.rejectValue("RePassword", "error.userClient", "Mật khẩu không trùng khớp !");
            }
            if (bindingResult.hasErrors()) {
                return view(model, "Register", "register", "layout/client_layout");
            }
            try {
                userService.save(userClientDto);
                redirectAttr.addFlashAttribute("message", "Tạo tài khoản mới thành công !");
                return "redirect:/auth/login";
            } catch (Exception e) {
                log.info(e.getMessage());
                redirectAttr.addFlashAttribute("message", "Tạo tài khoản mới không thành công !");
            }
        } catch (Exception e) {
            log.info("Errors  : {}", e.getMessage());
        }
        return "redirect:/auth/register";
    }

    @PostMapping(path = "/logout")
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "redirect:/auth/logout";
    }

}
