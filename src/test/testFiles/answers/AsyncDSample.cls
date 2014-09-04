//Generated by wsdl2apex

public class AsyncDSample {
    public class EchoStringResponse_elementFuture extends System.WebServiceCalloutFuture {
        public String getValue() {
            dSample.EchoStringResponse_element response = (dSample.EchoStringResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.name;
        }
    }
    public class AsyncDocSamplePort {
        public String endpoint_x = 'http://www.qaresponder.info/WebServices/DocSample.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://doc.sample.com/docSample', 'dSample'};
        public AsyncDSample.EchoStringResponse_elementFuture beginEchoString(System.Continuation continuation,String input) {
            dSample.EchoString_element request_x = new dSample.EchoString_element();
            request_x.input = input;
            return (AsyncDSample.EchoStringResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDSample.EchoStringResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'urn:dotnet.callouttest.soap.sforce.com/EchoString',
              'http://doc.sample.com/docSample',
              'EchoString',
              'http://doc.sample.com/docSample',
              'EchoStringResponse',
              'dSample.EchoStringResponse_element'}
            );
        }
    }
}