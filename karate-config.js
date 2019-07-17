function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('Get env property from Runner class karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	SoapEndPoint:'http://www.dneonline.com/calculator.asmx',
      AzpPepSoapEndPoint: 'https://azp-ms-pep-1-0-10.service.test.dfl.nednet.co.za/azp-ms-policy-enforcement-point-1.0.10-RELEASE/api'

  }

  if (env == 'dev') {
       config.SoapEndPoint = 'http://www.dneonline.com/calculator.asmx'
      config.AzpPepSoapEndPoint = 'https://azp-ms-pep-1-0-10.service.test.dfl.nednet.co.za/azp-ms-policy-enforcement-point-1.0.10-RELEASE/api'
	  karate.configure('ssl', true);

  } else if (env == 'e2e') {
        config.SoapEndPoint = 'http://www.dneonline.com/calculator.asmx'
      config.AzpPepSoapEndPoint = 'https://azp-ms-pep-1-0-10.service.test.dfl.nednet.co.za/azp-ms-policy-enforcement-point-1.0.10-RELEASE/api';
  } else if(env == 'kubernetes')
  {
      config.AzpPepSoapEndPoint = 'https://azp-ms-pep-1-0-10.service.test.dfl.nednet.co.za/azp-ms-policy-enforcement-point-1.0.10-RELEASE/api';
  }

 //karate.configure('ssl', true);
  return config;
}