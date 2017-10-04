// Place your Spring DSL code here
import au.org.ala.userdetails.marshaller.*;
import au.org.ala.auth.SmartConfigLocaleResolver
import org.springframework.web.servlet.i18n.SessionLocaleResolver


beans = {
    localeResolver(SmartConfigLocaleResolver) {
        supportedLocales = grailsApplication.config.languages.enabled.tokenize(',').collect() { new Locale(it.tokenize("_")[0], it.tokenize("_")[1]) } ?: [grailsApplication.config.languages.default ? new Locale(grailsApplication.config.languages.default): new Locale('en', 'US')]
        defaultLocale = grailsApplication.config.languages.default ? new Locale(grailsApplication.config.languages.default): new Locale('en','US')
    }
    customObjectMarshallers(CustomObjectMarshallers){
        marshallers =[
                new UserPropertyMarshaller(),
                new UserMarshaller()
        ]
    }
}
