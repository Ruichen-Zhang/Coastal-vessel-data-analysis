package com.bf.bfadmin.Config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 *  实现前后端链接，实现资源共享，关闭跨域访问
 *
 * 1. 实现WebMvcConfigurer接口，重写addCorsMappings方法，配置跨域访问的参数，
 *    允许所有来源的请求访问，允许所有方法和请求头，不允许携带cookie，缓存时间为1小时。
 *    
 * 2. 重写configurePathMatch方法，设置是否使用后缀匹配模式，默认为true，这里设置为false。
 *
 * 3. 重写configureContentNegotiation方法，设置是否支持通过请求路径的后缀来进行内容协
 *    商，默认为true，这里设置为false。
 *
 * @author SDU Wang Yishuo
 * @since 2023-4-17
 */

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("*")
                .allowedMethods("*")
                .allowedHeaders("*")
                .allowCredentials(false)
                .maxAge(3600);
    }

    @Override
    public void configurePathMatch(PathMatchConfigurer configurer) {
        configurer.setUseSuffixPatternMatch(false);
    }

    @Override
    public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
        configurer.favorPathExtension(false);
    }

    @Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration config = new CorsConfiguration();
        config.addAllowedOrigin("*");
        config.addAllowedHeader("*");
        config.addAllowedMethod("*");
        source.registerCorsConfiguration("/**", config);
        return new CorsFilter(source);
    }

}

