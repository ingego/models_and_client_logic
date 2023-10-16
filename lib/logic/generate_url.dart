String generateUrl(String appDomain, String base64String) =>
    "https://$appDomain/config/3/?app_general_info=$base64String";
