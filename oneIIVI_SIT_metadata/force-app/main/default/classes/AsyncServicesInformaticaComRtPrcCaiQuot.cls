//Generated by wsdl2apex

public class AsyncServicesInformaticaComRtPrcCaiQuot {
    public class prc_cai_quote_mainResponse_elementFuture extends System.WebServiceCalloutFuture {
        public servicesInformaticaComRtPrcCaiQuot.prc_cai_quote_mainResponse_element getValue() {
            servicesInformaticaComRtPrcCaiQuot.prc_cai_quote_mainResponse_element response = (servicesInformaticaComRtPrcCaiQuot.prc_cai_quote_mainResponse_element)System.WebServiceCallout.endInvoke(this);
            return response;
        }
    }
    public class Asyncprc_cai_quote_main_Service {
        public String endpoint_x = 'https://na1.ai.dm-us.informaticacloud.com/active-bpel/public/soap/2yrnmaQUm2fiMBfHxHZd0l/prc_cai_quote_main';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://services.informatica.com/rt/prc_cai_quote_main', 'servicesInformaticaComRtPrcCaiQuot'};
        public AsyncServicesInformaticaComRtPrcCaiQuot.prc_cai_quote_mainResponse_elementFuture beginPrc_cai_quote_main(System.Continuation continuation,String in_quote_number) {
            servicesInformaticaComRtPrcCaiQuot.prc_cai_quote_mainRequest_element request_x = new servicesInformaticaComRtPrcCaiQuot.prc_cai_quote_mainRequest_element();
            request_x.in_quote_number = in_quote_number;
            return (AsyncServicesInformaticaComRtPrcCaiQuot.prc_cai_quote_mainResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncServicesInformaticaComRtPrcCaiQuot.prc_cai_quote_mainResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'prc_cai_quote_main',
              'http://services.informatica.com/rt/prc_cai_quote_main',
              'prc_cai_quote_mainRequest',
              'http://services.informatica.com/rt/prc_cai_quote_main',
              'prc_cai_quote_mainResponse',
              'servicesInformaticaComRtPrcCaiQuot.prc_cai_quote_mainResponse_element'}
            );
        }
    }
}