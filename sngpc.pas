// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://sngpc.anvisa.gov.br/webservice/sngpc.asmx?WSDL
//  >Import : http://sngpc.anvisa.gov.br/webservice/sngpc.asmx?WSDL>0
// Encoding : utf-8
// Version  : 1.0
// (08/04/2020 16:50:38 - - $Rev: 93209 $)
// ************************************************************************ //

unit sngpc;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : sngpcSoap
  // service   : sngpc
  // port      : sngpcSoap
  // URL       : http://sngpc.anvisa.gov.br/webservice/sngpc.asmx
  // ************************************************************************ //
  sngpcSoap = interface(IInvokable)
  ['{7B0BED3D-F163-6734-5EF6-E4C4D60D2270}']
    function  ValidarUsuario(const Email: string; const Senha: string): string; stdcall;
    function  EnviaArquivoSNGPC(const Email: string; const Senha: string; const Arq: TArray<System.Byte>; const HashIdentificacao: string): string; stdcall;
    function  ConsultaDadosArquivoSNGPC(const Email: string; const Senha: string; const CNPJ: string; const Hash: string): string; stdcall;
  end;

function GetsngpcSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): sngpcSoap;


implementation
  uses System.SysUtils;

function GetsngpcSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): sngpcSoap;
const
  defWSDL = 'http://sngpc.anvisa.gov.br/webservice/sngpc.asmx?WSDL';
  defURL  = 'http://sngpc.anvisa.gov.br/webservice/sngpc.asmx';
  defSvc  = 'sngpc';
  defPrt  = 'sngpcSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as sngpcSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { sngpcSoap }
  InvRegistry.RegisterInterface(TypeInfo(sngpcSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(sngpcSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(sngpcSoap), ioDocument);
  { sngpcSoap.ValidarUsuario }
  InvRegistry.RegisterMethodInfo(TypeInfo(sngpcSoap), 'ValidarUsuario', '',
                                 '[ReturnName="ValidarUsuarioResult"]', IS_OPTN);
  { sngpcSoap.EnviaArquivoSNGPC }
  InvRegistry.RegisterMethodInfo(TypeInfo(sngpcSoap), 'EnviaArquivoSNGPC', '',
                                 '[ReturnName="EnviaArquivoSNGPCResult"]', IS_OPTN);
  { sngpcSoap.ConsultaDadosArquivoSNGPC }
  InvRegistry.RegisterMethodInfo(TypeInfo(sngpcSoap), 'ConsultaDadosArquivoSNGPC', '',
                                 '[ReturnName="ConsultaDadosArquivoSNGPCResult"]', IS_OPTN);

end.