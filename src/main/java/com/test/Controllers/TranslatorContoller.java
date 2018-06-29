package com.test.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/translate")
public class TranslatorContoller
{
    @GetMapping
    public String getTranslatorPage()
    {
        return "translatorPage";
    }

    /**
     * Нужно сделать кнопку на форме хтмл с иминем пользователя и кнопку лагаута если он зшаел
     * Ну и начать подрубать яндекс апи
     */
}
