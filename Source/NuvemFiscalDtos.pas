unit NuvemFiscalDtos;

interface

uses
  System.Generics.Collections, 
  System.SysUtils;

type
  TEmpresaEndereco = class;
  TEmpresaConfigNfe = class;
  TEmpresaConfigNfceSefaz = class;
  TEmpresaConfigNfce = class;
  TEmpresaConfigMdfe = class;
  TEmpresaConfigCte = class;
  TEmpresaConfigCteOs = class;
  TEmpresaConfigRps = class;
  TEmpresaConfigPrefeitura = class;
  TEmpresaConfigNfse = class;
  TEmpresa = class;
  TEmpresaList = class;
  TEmpresaListagem = class;
  TEmpresaPedidoCadastroCertificado = class;
  TEmpresaCertificado = class;
  TRpsIdentificacaoPrestador = class;
  TRpsDadosTomador = class;
  TRpsDadosIntermediario = class;
  TRpsDadosConstrucaoCivil = class;
  TRpsServicoValores = class;
  TRpsDadosServico = class;
  TRpsDadosServicoList = class;
  TRpsPedidoEmissao = class;
  TRpsPedidoEmissaoList = class;
  TRpsPedidoEmissaoLote = class;
  TRpsIdentificacao = class;
  TRpsDados = class;
  TRpsDadosPrestador = class;
  TRps = class;
  TNfseMensagemRetorno = class;
  TNfseMensagemRetornoList = class;
  TNfseCancelamento = class;
  TNfse = class;
  TNfseList = class;
  TRpsLote = class;
  TRpsLoteList = class;
  TRpsLoteListagem = class;
  TNfsePedidoEmissao = class;
  TNfseListagem = class;
  TDfeSefazStatus = class;
  TDfeVisaoGeralSefazStatus = class;
  TCteSefazToma3 = class;
  TCteSefazEndereco = class;
  TCteSefazToma4 = class;
  TCteSefazIde = class;
  TCteSefazPass = class;
  TCteSefazPassList = class;
  TCteSefazFluxo = class;
  TCteSefazSemData = class;
  TCteSefazComData = class;
  TCteSefazNoPeriodo = class;
  TCteSefazSemHora = class;
  TCteSefazComHora = class;
  TCteSefazNoInter = class;
  TCteSefazEntrega = class;
  TCteSefazObsCont = class;
  TCteSefazObsContList = class;
  TCteSefazObsFisco = class;
  TCteSefazObsFiscoList = class;
  TCteSefazCompl = class;
  TCteSefazEndeEmi = class;
  TCteSefazEmit = class;
  TCteSefazRem = class;
  TCteSefazExped = class;
  TCteSefazReceb = class;
  TCteSefazDest = class;
  TCteSefazComp = class;
  TCteSefazCompList = class;
  TCteSefazVPrest = class;
  TCteSefazICMS00 = class;
  TCteSefazICMS20 = class;
  TCteSefazICMS45 = class;
  TCteSefazICMS60 = class;
  TCteSefazICMS90 = class;
  TCteSefazICMSOutraUF = class;
  TCteSefazICMSSN = class;
  TCteSefazImp = class;
  TCteSefazICMSUFFim = class;
  TCteSefazInfCteImp = class;
  TCteSefazInfQ = class;
  TCteSefazInfQList = class;
  TCteSefazInfCarga = class;
  TCteSefazLacUnidCarga = class;
  TCteSefazLacUnidCargaList = class;
  TCteSefazUnidCarga = class;
  TCteSefazUnidCargaList = class;
  TCteSefazLacUnidTransp = class;
  TCteSefazLacUnidTranspList = class;
  TCteSefazUnidadeTransp = class;
  TCteSefazUnidadeTranspList = class;
  TCteSefazInfNF = class;
  TCteSefazInfNFList = class;
  TCteSefazInfNFe = class;
  TCteSefazInfNFeList = class;
  TCteSefazInfOutros = class;
  TCteSefazInfOutrosList = class;
  TCteSefazInfDoc = class;
  TCteSefazIdDocAntPap = class;
  TCteSefazIdDocAntPapList = class;
  TCteSefazIdDocAntEle = class;
  TCteSefazIdDocAntEleList = class;
  TCteSefazIdDocAnt = class;
  TCteSefazIdDocAntList = class;
  TCteSefazEmiDocAnt = class;
  TCteSefazEmiDocAntList = class;
  TCteSefazDocAnt = class;
  TCteSefazEmiOcc = class;
  TCteSefazOcc = class;
  TCteSefazOccList = class;
  TCteSefazRodo = class;
  stringList = class;
  TCteSefazNatCarga = class;
  TCteSefazTarifa = class;
  TCteSefazInfTotAP = class;
  TCteSefazPeri = class;
  TCteSefazPeriList = class;
  TCteSefazAereo = class;
  TCteSefazEnderFer = class;
  TCteSefazFerroEnv = class;
  TCteSefazFerroEnvList = class;
  TCteSefazTrafMut = class;
  TCteSefazFerrov = class;
  TCteSefazBalsa = class;
  TCteSefazBalsaList = class;
  TCteSefazLacre = class;
  TCteSefazLacreList = class;
  TCteSefazDetContInfDocInfNF = class;
  TCteSefazDetContInfDocInfNFList = class;
  TCteSefazDetContInfDocInfNFe = class;
  TCteSefazDetContInfDocInfNFeList = class;
  TCteSefazDetContInfDoc = class;
  TCteSefazDetCont = class;
  TCteSefazDetContList = class;
  TCteSefazAquav = class;
  TCteSefazDuto = class;
  TCteSefazInfSeg = class;
  TCteSefazSeg = class;
  TCteSefazMultimodal = class;
  TCteSefazInfModal = class;
  TCteSefazVeicNovos = class;
  TCteSefazVeicNovosList = class;
  TCteSefazFat = class;
  TCteSefazDup = class;
  TCteSefazDupList = class;
  TCteSefazCobr = class;
  TCteSefazRefNF = class;
  TCteSefazTomaICMS = class;
  TCteSefazInfCteSub = class;
  TCteSefazInfGlobalizado = class;
  TCteSefazInfCTeMultimodal = class;
  TCteSefazInfCTeMultimodalList = class;
  TCteSefazInfServVinc = class;
  TCteSefazInfCTeNorm = class;
  TCteSefazInfCteComp = class;
  TCteSefazInfCteAnu = class;
  TCteSefazAutXML = class;
  TCteSefazAutXMLList = class;
  TCteSefazRespTec = class;
  TCteSefazInfSolicNFF = class;
  TCteSefazInfCte = class;
  TCteSefazInfCTeSupl = class;
  TCtePedidoEmissao = class;
  TCtePedidoEmissaoList = class;
  TCtePedidoEmissaoLote = class;
  TDfeRecibo = class;
  TDfeAutorEvento = class;
  TDfeAutorizacao = class;
  TDfe = class;
  TDfeList = class;
  TDfeLote = class;
  TCtePedidoCancelamento = class;
  TDfeCancelamento = class;
  TCteInfCorrecao = class;
  TCteInfCorrecaoList = class;
  TCtePedidoCartaCorrecao = class;
  TCteCartaCorrecao = class;
  TDfePedidoInutilizacao = class;
  TDfeInutilizacao = class;
  TDfeEvento = class;
  TMdfeSefazInfMunCarrega = class;
  TMdfeSefazInfMunCarregaList = class;
  TMdfeSefazInfPercurso = class;
  TMdfeSefazInfPercursoList = class;
  TMdfeSefazIde = class;
  TMdfeSefazEndeEmi = class;
  TMdfeSefazEmit = class;
  TMdfeSefazAereo = class;
  TMdfeSefazInfCIOT = class;
  TMdfeSefazInfCIOTList = class;
  TMdfeSefazDisp = class;
  TMdfeSefazDispList = class;
  TMdfeSefazValePed = class;
  TMdfeSefazInfContratante = class;
  TMdfeSefazInfContratanteList = class;
  TMdfeSefazComp = class;
  TMdfeSefazCompList = class;
  TMdfeSefazInfPrazo = class;
  TMdfeSefazInfPrazoList = class;
  TMdfeSefazInfBanc = class;
  TMdfeSefazInfPag = class;
  TMdfeSefazInfPagList = class;
  TMdfeSefazInfANTT = class;
  TMdfeSefazProp = class;
  TMdfeSefazCondutor = class;
  TMdfeSefazCondutorList = class;
  TMdfeSefazVeicTracao = class;
  TMdfeSefazVeicReboqueProp = class;
  TMdfeSefazVeicReboque = class;
  TMdfeSefazVeicReboqueList = class;
  TMdfeSefazLacRodo = class;
  TMdfeSefazLacRodoList = class;
  TMdfeSefazRodo = class;
  TMdfeSefazInfTermCarreg = class;
  TMdfeSefazInfTermCarregList = class;
  TMdfeSefazInfTermDescarreg = class;
  TMdfeSefazInfTermDescarregList = class;
  TMdfeSefazInfEmbComb = class;
  TMdfeSefazInfEmbCombList = class;
  TMdfeSefazInfUnidCargaVazia = class;
  TMdfeSefazInfUnidCargaVaziaList = class;
  TMdfeSefazInfUnidTranspVazia = class;
  TMdfeSefazInfUnidTranspVaziaList = class;
  TMdfeSefazAquav = class;
  TMdfeSefazTrem = class;
  TMdfeSefazVag = class;
  TMdfeSefazVagList = class;
  TMdfeSefazFerrov = class;
  TMdfeSefazInfModal = class;
  TMdfeSefazLacUnidTransp = class;
  TMdfeSefazLacUnidTranspList = class;
  TMdfeSefazLacUnidCarga = class;
  TMdfeSefazLacUnidCargaList = class;
  TMdfeSefazUnidCarga = class;
  TMdfeSefazUnidCargaList = class;
  TMdfeSefazUnidadeTransp = class;
  TMdfeSefazUnidadeTranspList = class;
  TMdfeSefazPeri = class;
  TMdfeSefazPeriList = class;
  TMdfeSefazInfEntregaParcial = class;
  TMdfeSefazInfCTe = class;
  TMdfeSefazInfCTeList = class;
  TMdfeSefazInfNFePeri = class;
  TMdfeSefazInfNFePeriList = class;
  TMdfeSefazInfNFe = class;
  TMdfeSefazInfNFeList = class;
  TMdfeSefazInfMDFeTranspPeri = class;
  TMdfeSefazInfMDFeTranspPeriList = class;
  TMdfeSefazInfMDFeTransp = class;
  TMdfeSefazInfMDFeTranspList = class;
  TMdfeSefazInfMunDescarga = class;
  TMdfeSefazInfMunDescargaList = class;
  TMdfeSefazInfDoc = class;
  TMdfeSefazInfResp = class;
  TMdfeSefazInfSeg = class;
  TMdfeSefazSeg = class;
  TMdfeSefazSegList = class;
  TMdfeSefazInfLocalCarrega = class;
  TMdfeSefazInfLocalDescarrega = class;
  TMdfeSefazInfLotacao = class;
  TMdfeSefazProdPred = class;
  TMdfeSefazTot = class;
  TMdfeSefazLacres = class;
  TMdfeSefazLacresList = class;
  TMdfeSefazAutXML = class;
  TMdfeSefazAutXMLList = class;
  TMdfeSefazInfAdic = class;
  TMdfeSefazRespTec = class;
  TMdfeSefazInfSolicNFF = class;
  TMdfeSefazInfMDFe = class;
  TMdfeSefazInfMDFeSupl = class;
  TMdfePedidoEmissao = class;
  TMdfePedidoEmissaoList = class;
  TMdfePedidoEmissaoLote = class;
  TMdfePedidoCancelamento = class;
  TMdfePedidoEncerramento = class;
  TMdfeEncerramento = class;
  TMdfePedidoInclusaoCondutor = class;
  TMdfeInclusaoCondutor = class;
  TMdfeDocumentoVinculado = class;
  TMdfeDocumentoVinculadoList = class;
  TMdfePedidoInclusaoDfe = class;
  TMdfeInclusaoDfe = class;
  TNfeSefazRefNF = class;
  TNfeSefazRefNFP = class;
  TNfeSefazRefECF = class;
  TNfeSefazNFref = class;
  TNfeSefazNFrefList = class;
  TNfeSefazIde = class;
  TNfeSefazEnderEmi = class;
  TNfeSefazEmit = class;
  TNfeSefazAvulsa = class;
  TNfeSefazEndereco = class;
  TNfeSefazDest = class;
  TNfeSefazLocal = class;
  TNfeSefazAutXML = class;
  TNfeSefazAutXMLList = class;
  TNfeSefazAdi = class;
  TNfeSefazAdiList = class;
  TNfeSefazDI = class;
  TNfeSefazDIList = class;
  TNfeSefazExportInd = class;
  TNfeSefazDetExport = class;
  TNfeSefazDetExportList = class;
  TNfeSefazRastro = class;
  TNfeSefazRastroList = class;
  TNfeSefazInfProdNFF = class;
  TNfeSefazInfProdEmb = class;
  TNfeSefazVeicProd = class;
  TNfeSefazMed = class;
  TNfeSefazArma = class;
  TNfeSefazArmaList = class;
  TNfeSefazCIDE = class;
  TNfeSefazEncerrante = class;
  TNfeSefazComb = class;
  TNfeSefazProd = class;
  TNfeSefazICMS00 = class;
  TNfeSefazICMS10 = class;
  TNfeSefazICMS20 = class;
  TNfeSefazICMS30 = class;
  TNfeSefazICMS40 = class;
  TNfeSefazICMS51 = class;
  TNfeSefazICMS60 = class;
  TNfeSefazICMS70 = class;
  TNfeSefazICMS90 = class;
  TNfeSefazICMSPart = class;
  TNfeSefazICMSST = class;
  TNfeSefazICMSSN101 = class;
  TNfeSefazICMSSN102 = class;
  TNfeSefazICMSSN201 = class;
  TNfeSefazICMSSN202 = class;
  TNfeSefazICMSSN500 = class;
  TNfeSefazICMSSN900 = class;
  TNfeSefazICMS = class;
  TNfeSefazIPITrib = class;
  TNfeSefazIPINT = class;
  TNfeSefazIpi = class;
  TNfeSefazII = class;
  TNfeSefazISSQN = class;
  TNfeSefazPISAliq = class;
  TNfeSefazPISQtde = class;
  TNfeSefazPISNT = class;
  TNfeSefazPISOutr = class;
  TNfeSefazPIS = class;
  TNfeSefazPISST = class;
  TNfeSefazCOFINSAliq = class;
  TNfeSefazCOFINSQtde = class;
  TNfeSefazCOFINSNT = class;
  TNfeSefazCOFINSOutr = class;
  TNfeSefazCOFINS = class;
  TNfeSefazCOFINSST = class;
  TNfeSefazICMSUFDest = class;
  TNfeSefazImposto = class;
  TNfeSefazImpostoDevolIPI = class;
  TNfeSefazImpostoDevol = class;
  TNfeSefazDet = class;
  TNfeSefazDetList = class;
  TNfeSefazICMSTot = class;
  TNfeSefazISSQNtot = class;
  TNfeSefazRetTrib = class;
  TNfeSefazTotal = class;
  TNfeSefazTransporta = class;
  TNfeSefazRetTransp = class;
  TNfeSefazVeiculo = class;
  TNfeSefazVeiculoList = class;
  TNfeSefazLacres = class;
  TNfeSefazLacresList = class;
  TNfeSefazVol = class;
  TNfeSefazVolList = class;
  TNfeSefazTransp = class;
  TNfeSefazFat = class;
  TNfeSefazDup = class;
  TNfeSefazDupList = class;
  TNfeSefazCobr = class;
  TNfeSefazCard = class;
  TNfeSefazDetPag = class;
  TNfeSefazDetPagList = class;
  TNfeSefazPag = class;
  TNfeSefazInfIntermed = class;
  TNfeSefazObsCont = class;
  TNfeSefazObsContList = class;
  TNfeSefazObsFisco = class;
  TNfeSefazObsFiscoList = class;
  TNfeSefazProcRef = class;
  TNfeSefazProcRefList = class;
  TNfeSefazInfAdic = class;
  TNfeSefazExporta = class;
  TNfeSefazCompra = class;
  TNfeSefazForDia = class;
  TNfeSefazForDiaList = class;
  TNfeSefazDeduc = class;
  TNfeSefazDeducList = class;
  TNfeSefazCana = class;
  TNfeSefazInfRespTec = class;
  TNfeSefazInfSolicNFF = class;
  TNfeSefazInfNFe = class;
  TNfeSefazInfNFeSupl = class;
  TNfePedidoEmissao = class;
  TNfePedidoEmissaoList = class;
  TNfePedidoEmissaoLote = class;
  TNfePedidoCancelamento = class;
  TNfePedidoCartaCorrecao = class;
  TDfeCartaCorrecao = class;
  TCnpjNaturezaJuridica = class;
  TCnpjPorteEmpresa = class;
  TCnpjSituacaoCadastral = class;
  TCnpjPais = class;
  TCnpjCnae = class;
  TCnpjCnaeList = class;
  TCnpjMunicipio = class;
  TCnpjEndereco = class;
  TCnpjTelefone = class;
  TCnpjTelefoneList = class;
  TCnpjOpcaoSimples = class;
  TCnpjIdentificadorSocio = class;
  TCnpjQualificacaoSocio = class;
  TCnpjRepresentanteLegal = class;
  TCnpjFaixaEtaria = class;
  TCnpjSocio = class;
  TCnpjSocioList = class;
  TCnpjEmpresa = class;
  TCepEndereco = class;
  
  TEmpresaEndereco = class
  private
    FLogradouro: string;
    FLogradouroHasValue: Boolean;
    FNumero: string;
    FNumeroHasValue: Boolean;
    FComplemento: string;
    FComplementoHasValue: Boolean;
    FBairro: string;
    FBairroHasValue: Boolean;
    FCodigoMunicipio: string;
    FCodigoMunicipioHasValue: Boolean;
    FCidade: string;
    FCidadeHasValue: Boolean;
    FUf: string;
    FUfHasValue: Boolean;
    FCodigoPais: string;
    FCodigoPaisHasValue: Boolean;
    FPais: string;
    FPaisHasValue: Boolean;
    FCep: string;
    FCepHasValue: Boolean;
    procedure SetLogradouro(const Value: string);
    procedure SetNumero(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetBairro(const Value: string);
    procedure SetCodigoMunicipio(const Value: string);
    procedure SetCidade(const Value: string);
    procedure SetUf(const Value: string);
    procedure SetCodigoPais(const Value: string);
    procedure SetPais(const Value: string);
    procedure SetCep(const Value: string);
  public
    property Logradouro: string read FLogradouro write SetLogradouro;
    property LogradouroHasValue: Boolean read FLogradouroHasValue write FLogradouroHasValue;
    property Numero: string read FNumero write SetNumero;
    property NumeroHasValue: Boolean read FNumeroHasValue write FNumeroHasValue;
    property Complemento: string read FComplemento write SetComplemento;
    property ComplementoHasValue: Boolean read FComplementoHasValue write FComplementoHasValue;
    property Bairro: string read FBairro write SetBairro;
    property BairroHasValue: Boolean read FBairroHasValue write FBairroHasValue;
    property CodigoMunicipio: string read FCodigoMunicipio write SetCodigoMunicipio;
    property CodigoMunicipioHasValue: Boolean read FCodigoMunicipioHasValue write FCodigoMunicipioHasValue;
    property Cidade: string read FCidade write SetCidade;
    property CidadeHasValue: Boolean read FCidadeHasValue write FCidadeHasValue;
    property Uf: string read FUf write SetUf;
    property UfHasValue: Boolean read FUfHasValue write FUfHasValue;
    property CodigoPais: string read FCodigoPais write SetCodigoPais;
    property CodigoPaisHasValue: Boolean read FCodigoPaisHasValue write FCodigoPaisHasValue;
    property Pais: string read FPais write SetPais;
    property PaisHasValue: Boolean read FPaisHasValue write FPaisHasValue;
    property Cep: string read FCep write SetCep;
    property CepHasValue: Boolean read FCepHasValue write FCepHasValue;
  end;
  
  TEmpresaConfigNfe = class
  private
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    procedure SetAmbiente(const Value: string);
  public
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
  end;
  
  TEmpresaConfigNfceSefaz = class
  private
    FIdCsc: Integer;
    FIdCscHasValue: Boolean;
    FCsc: string;
    FCscHasValue: Boolean;
    procedure SetIdCsc(const Value: Integer);
    procedure SetCsc(const Value: string);
  public
    property IdCsc: Integer read FIdCsc write SetIdCsc;
    property IdCscHasValue: Boolean read FIdCscHasValue write FIdCscHasValue;
    property Csc: string read FCsc write SetCsc;
    property CscHasValue: Boolean read FCscHasValue write FCscHasValue;
  end;
  
  TEmpresaConfigNfce = class
  private
    FSefaz: TEmpresaConfigNfceSefaz;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    procedure SetSefaz(const Value: TEmpresaConfigNfceSefaz);
    procedure SetAmbiente(const Value: string);
  public
    destructor Destroy; override;
    property Sefaz: TEmpresaConfigNfceSefaz read FSefaz write SetSefaz;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
  end;
  
  TEmpresaConfigMdfe = class
  private
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    procedure SetAmbiente(const Value: string);
  public
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
  end;
  
  TEmpresaConfigCte = class
  private
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    procedure SetAmbiente(const Value: string);
  public
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
  end;
  
  TEmpresaConfigCteOs = class
  private
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    procedure SetAmbiente(const Value: string);
  public
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
  end;
  
  TEmpresaConfigRps = class
  private
    FLote: Integer;
    FLoteHasValue: Boolean;
    FSerie: string;
    FSerieHasValue: Boolean;
    FNumero: Integer;
    FNumeroHasValue: Boolean;
    procedure SetLote(const Value: Integer);
    procedure SetSerie(const Value: string);
    procedure SetNumero(const Value: Integer);
  public
    property Lote: Integer read FLote write SetLote;
    property LoteHasValue: Boolean read FLoteHasValue write FLoteHasValue;
    property Serie: string read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property Numero: Integer read FNumero write SetNumero;
    property NumeroHasValue: Boolean read FNumeroHasValue write FNumeroHasValue;
  end;
  
  TEmpresaConfigPrefeitura = class
  private
    FLogin: string;
    FLoginHasValue: Boolean;
    FSenha: string;
    FSenhaHasValue: Boolean;
    FToken: string;
    FTokenHasValue: Boolean;
    procedure SetLogin(const Value: string);
    procedure SetSenha(const Value: string);
    procedure SetToken(const Value: string);
  public
    property Login: string read FLogin write SetLogin;
    property LoginHasValue: Boolean read FLoginHasValue write FLoginHasValue;
    property Senha: string read FSenha write SetSenha;
    property SenhaHasValue: Boolean read FSenhaHasValue write FSenhaHasValue;
    property Token: string read FToken write SetToken;
    property TokenHasValue: Boolean read FTokenHasValue write FTokenHasValue;
  end;
  
  TEmpresaConfigNfse = class
  private
    FRps: TEmpresaConfigRps;
    FPrefeitura: TEmpresaConfigPrefeitura;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    procedure SetRps(const Value: TEmpresaConfigRps);
    procedure SetPrefeitura(const Value: TEmpresaConfigPrefeitura);
    procedure SetAmbiente(const Value: string);
  public
    destructor Destroy; override;
    property Rps: TEmpresaConfigRps read FRps write SetRps;
    property Prefeitura: TEmpresaConfigPrefeitura read FPrefeitura write SetPrefeitura;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
  end;
  
  TEmpresa = class
  private
    FCpfCnpj: string;
    FCpfCnpjHasValue: Boolean;
    FCreatedAt: TDateTime;
    FCreatedAtHasValue: Boolean;
    FUpdatedAt: TDateTime;
    FUpdatedAtHasValue: Boolean;
    FInscricaoEstadual: string;
    FInscricaoEstadualHasValue: Boolean;
    FInscricaoMunicipal: string;
    FInscricaoMunicipalHasValue: Boolean;
    FNomeRazaoSocial: string;
    FNomeRazaoSocialHasValue: Boolean;
    FNomeFantasia: string;
    FNomeFantasiaHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FEmail: string;
    FEmailHasValue: Boolean;
    FEndereco: TEmpresaEndereco;
    FOptanteSimplesNacional: Boolean;
    FOptanteSimplesNacionalHasValue: Boolean;
    FRegimeTributacao: Integer;
    FRegimeTributacaoHasValue: Boolean;
    FRegimeEspecialTributacao: Integer;
    FRegimeEspecialTributacaoHasValue: Boolean;
    FIncentivoFiscal: Boolean;
    FIncentivoFiscalHasValue: Boolean;
    FIncentivadorCultural: Boolean;
    FIncentivadorCulturalHasValue: Boolean;
    FNfe: TEmpresaConfigNfe;
    FNfce: TEmpresaConfigNfce;
    FMdfe: TEmpresaConfigMdfe;
    FCte: TEmpresaConfigCte;
    FCteOs: TEmpresaConfigCteOs;
    FNfse: TEmpresaConfigNfse;
    procedure SetCpfCnpj(const Value: string);
    procedure SetCreatedAt(const Value: TDateTime);
    procedure SetUpdatedAt(const Value: TDateTime);
    procedure SetInscricaoEstadual(const Value: string);
    procedure SetInscricaoMunicipal(const Value: string);
    procedure SetNomeRazaoSocial(const Value: string);
    procedure SetNomeFantasia(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetEndereco(const Value: TEmpresaEndereco);
    procedure SetOptanteSimplesNacional(const Value: Boolean);
    procedure SetRegimeTributacao(const Value: Integer);
    procedure SetRegimeEspecialTributacao(const Value: Integer);
    procedure SetIncentivoFiscal(const Value: Boolean);
    procedure SetIncentivadorCultural(const Value: Boolean);
    procedure SetNfe(const Value: TEmpresaConfigNfe);
    procedure SetNfce(const Value: TEmpresaConfigNfce);
    procedure SetMdfe(const Value: TEmpresaConfigMdfe);
    procedure SetCte(const Value: TEmpresaConfigCte);
    procedure SetCteOs(const Value: TEmpresaConfigCteOs);
    procedure SetNfse(const Value: TEmpresaConfigNfse);
  public
    destructor Destroy; override;
    property CpfCnpj: string read FCpfCnpj write SetCpfCnpj;
    property CpfCnpjHasValue: Boolean read FCpfCnpjHasValue write FCpfCnpjHasValue;
    property CreatedAt: TDateTime read FCreatedAt write SetCreatedAt;
    property CreatedAtHasValue: Boolean read FCreatedAtHasValue write FCreatedAtHasValue;
    property UpdatedAt: TDateTime read FUpdatedAt write SetUpdatedAt;
    property UpdatedAtHasValue: Boolean read FUpdatedAtHasValue write FUpdatedAtHasValue;
    property InscricaoEstadual: string read FInscricaoEstadual write SetInscricaoEstadual;
    property InscricaoEstadualHasValue: Boolean read FInscricaoEstadualHasValue write FInscricaoEstadualHasValue;
    property InscricaoMunicipal: string read FInscricaoMunicipal write SetInscricaoMunicipal;
    property InscricaoMunicipalHasValue: Boolean read FInscricaoMunicipalHasValue write FInscricaoMunicipalHasValue;
    property NomeRazaoSocial: string read FNomeRazaoSocial write SetNomeRazaoSocial;
    property NomeRazaoSocialHasValue: Boolean read FNomeRazaoSocialHasValue write FNomeRazaoSocialHasValue;
    property NomeFantasia: string read FNomeFantasia write SetNomeFantasia;
    property NomeFantasiaHasValue: Boolean read FNomeFantasiaHasValue write FNomeFantasiaHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
    property Endereco: TEmpresaEndereco read FEndereco write SetEndereco;
    property OptanteSimplesNacional: Boolean read FOptanteSimplesNacional write SetOptanteSimplesNacional;
    property OptanteSimplesNacionalHasValue: Boolean read FOptanteSimplesNacionalHasValue write FOptanteSimplesNacionalHasValue;
    property RegimeTributacao: Integer read FRegimeTributacao write SetRegimeTributacao;
    property RegimeTributacaoHasValue: Boolean read FRegimeTributacaoHasValue write FRegimeTributacaoHasValue;
    property RegimeEspecialTributacao: Integer read FRegimeEspecialTributacao write SetRegimeEspecialTributacao;
    property RegimeEspecialTributacaoHasValue: Boolean read FRegimeEspecialTributacaoHasValue write FRegimeEspecialTributacaoHasValue;
    property IncentivoFiscal: Boolean read FIncentivoFiscal write SetIncentivoFiscal;
    property IncentivoFiscalHasValue: Boolean read FIncentivoFiscalHasValue write FIncentivoFiscalHasValue;
    property IncentivadorCultural: Boolean read FIncentivadorCultural write SetIncentivadorCultural;
    property IncentivadorCulturalHasValue: Boolean read FIncentivadorCulturalHasValue write FIncentivadorCulturalHasValue;
    property Nfe: TEmpresaConfigNfe read FNfe write SetNfe;
    property Nfce: TEmpresaConfigNfce read FNfce write SetNfce;
    property Mdfe: TEmpresaConfigMdfe read FMdfe write SetMdfe;
    property Cte: TEmpresaConfigCte read FCte write SetCte;
    property CteOs: TEmpresaConfigCteOs read FCteOs write SetCteOs;
    property Nfse: TEmpresaConfigNfse read FNfse write SetNfse;
  end;
  
  TEmpresaList = class(TObjectList<TEmpresa>)
  end;
  
  TEmpresaListagem = class
  private
    FCount: Integer;
    FCountHasValue: Boolean;
    FData: TEmpresaList;
    procedure SetCount(const Value: Integer);
    procedure SetData(const Value: TEmpresaList);
  public
    destructor Destroy; override;
    property Count: Integer read FCount write SetCount;
    property CountHasValue: Boolean read FCountHasValue write FCountHasValue;
    property Data: TEmpresaList read FData write SetData;
  end;
  
  TEmpresaPedidoCadastroCertificado = class
  private
    FCertificado: TBytes;
    FCertificadoHasValue: Boolean;
    FPassword: string;
    FPasswordHasValue: Boolean;
    procedure SetCertificado(const Value: TBytes);
    procedure SetPassword(const Value: string);
  public
    property Certificado: TBytes read FCertificado write SetCertificado;
    property CertificadoHasValue: Boolean read FCertificadoHasValue write FCertificadoHasValue;
    property Password: string read FPassword write SetPassword;
    property PasswordHasValue: Boolean read FPasswordHasValue write FPasswordHasValue;
  end;
  
  TEmpresaCertificado = class
  private
    FSerialNumber: string;
    FSerialNumberHasValue: Boolean;
    FIssuerName: string;
    FIssuerNameHasValue: Boolean;
    FNotValidBefore: TDateTime;
    FNotValidBeforeHasValue: Boolean;
    FNotValidAfter: TDateTime;
    FNotValidAfterHasValue: Boolean;
    FThumbprint: string;
    FThumbprintHasValue: Boolean;
    FSubjectName: string;
    FSubjectNameHasValue: Boolean;
    FCpfCnpj: string;
    FCpfCnpjHasValue: Boolean;
    FNomeRazaoSocial: string;
    FNomeRazaoSocialHasValue: Boolean;
    procedure SetSerialNumber(const Value: string);
    procedure SetIssuerName(const Value: string);
    procedure SetNotValidBefore(const Value: TDateTime);
    procedure SetNotValidAfter(const Value: TDateTime);
    procedure SetThumbprint(const Value: string);
    procedure SetSubjectName(const Value: string);
    procedure SetCpfCnpj(const Value: string);
    procedure SetNomeRazaoSocial(const Value: string);
  public
    property SerialNumber: string read FSerialNumber write SetSerialNumber;
    property SerialNumberHasValue: Boolean read FSerialNumberHasValue write FSerialNumberHasValue;
    property IssuerName: string read FIssuerName write SetIssuerName;
    property IssuerNameHasValue: Boolean read FIssuerNameHasValue write FIssuerNameHasValue;
    property NotValidBefore: TDateTime read FNotValidBefore write SetNotValidBefore;
    property NotValidBeforeHasValue: Boolean read FNotValidBeforeHasValue write FNotValidBeforeHasValue;
    property NotValidAfter: TDateTime read FNotValidAfter write SetNotValidAfter;
    property NotValidAfterHasValue: Boolean read FNotValidAfterHasValue write FNotValidAfterHasValue;
    property Thumbprint: string read FThumbprint write SetThumbprint;
    property ThumbprintHasValue: Boolean read FThumbprintHasValue write FThumbprintHasValue;
    property SubjectName: string read FSubjectName write SetSubjectName;
    property SubjectNameHasValue: Boolean read FSubjectNameHasValue write FSubjectNameHasValue;
    property CpfCnpj: string read FCpfCnpj write SetCpfCnpj;
    property CpfCnpjHasValue: Boolean read FCpfCnpjHasValue write FCpfCnpjHasValue;
    property NomeRazaoSocial: string read FNomeRazaoSocial write SetNomeRazaoSocial;
    property NomeRazaoSocialHasValue: Boolean read FNomeRazaoSocialHasValue write FNomeRazaoSocialHasValue;
  end;
  
  TRpsIdentificacaoPrestador = class
  private
    FCpfCnpj: string;
    FCpfCnpjHasValue: Boolean;
    procedure SetCpfCnpj(const Value: string);
  public
    property CpfCnpj: string read FCpfCnpj write SetCpfCnpj;
    property CpfCnpjHasValue: Boolean read FCpfCnpjHasValue write FCpfCnpjHasValue;
  end;
  
  TRpsDadosTomador = class
  private
    FCpfCnpj: string;
    FCpfCnpjHasValue: Boolean;
    FInscricaoMunicipal: string;
    FInscricaoMunicipalHasValue: Boolean;
    FNomeRazaoSocial: string;
    FNomeRazaoSocialHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FEmail: string;
    FEmailHasValue: Boolean;
    FEndereco: TEmpresaEndereco;
    procedure SetCpfCnpj(const Value: string);
    procedure SetInscricaoMunicipal(const Value: string);
    procedure SetNomeRazaoSocial(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetEndereco(const Value: TEmpresaEndereco);
  public
    destructor Destroy; override;
    property CpfCnpj: string read FCpfCnpj write SetCpfCnpj;
    property CpfCnpjHasValue: Boolean read FCpfCnpjHasValue write FCpfCnpjHasValue;
    property InscricaoMunicipal: string read FInscricaoMunicipal write SetInscricaoMunicipal;
    property InscricaoMunicipalHasValue: Boolean read FInscricaoMunicipalHasValue write FInscricaoMunicipalHasValue;
    property NomeRazaoSocial: string read FNomeRazaoSocial write SetNomeRazaoSocial;
    property NomeRazaoSocialHasValue: Boolean read FNomeRazaoSocialHasValue write FNomeRazaoSocialHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
    property Endereco: TEmpresaEndereco read FEndereco write SetEndereco;
  end;
  
  TRpsDadosIntermediario = class
  private
    FCpfCnpj: string;
    FCpfCnpjHasValue: Boolean;
    FNomeRazaoSocial: string;
    FNomeRazaoSocialHasValue: Boolean;
    FInscricaoMunicipal: string;
    FInscricaoMunicipalHasValue: Boolean;
    procedure SetCpfCnpj(const Value: string);
    procedure SetNomeRazaoSocial(const Value: string);
    procedure SetInscricaoMunicipal(const Value: string);
  public
    property CpfCnpj: string read FCpfCnpj write SetCpfCnpj;
    property CpfCnpjHasValue: Boolean read FCpfCnpjHasValue write FCpfCnpjHasValue;
    property NomeRazaoSocial: string read FNomeRazaoSocial write SetNomeRazaoSocial;
    property NomeRazaoSocialHasValue: Boolean read FNomeRazaoSocialHasValue write FNomeRazaoSocialHasValue;
    property InscricaoMunicipal: string read FInscricaoMunicipal write SetInscricaoMunicipal;
    property InscricaoMunicipalHasValue: Boolean read FInscricaoMunicipalHasValue write FInscricaoMunicipalHasValue;
  end;
  
  TRpsDadosConstrucaoCivil = class
  private
    FCodigoObra: string;
    FCodigoObraHasValue: Boolean;
    FArt: string;
    FArtHasValue: Boolean;
    procedure SetCodigoObra(const Value: string);
    procedure SetArt(const Value: string);
  public
    property CodigoObra: string read FCodigoObra write SetCodigoObra;
    property CodigoObraHasValue: Boolean read FCodigoObraHasValue write FCodigoObraHasValue;
    property Art: string read FArt write SetArt;
    property ArtHasValue: Boolean read FArtHasValue write FArtHasValue;
  end;
  
  TRpsServicoValores = class
  private
    FValorUnitario: Double;
    FValorUnitarioHasValue: Boolean;
    FValorServicos: Double;
    FValorServicosHasValue: Boolean;
    FValorDeducoes: Double;
    FValorDeducoesHasValue: Boolean;
    FValorPis: Double;
    FValorPisHasValue: Boolean;
    FValorCofins: Double;
    FValorCofinsHasValue: Boolean;
    FValorInss: Double;
    FValorInssHasValue: Boolean;
    FValorIr: Double;
    FValorIrHasValue: Boolean;
    FValorCsll: Double;
    FValorCsllHasValue: Boolean;
    FValorOutrasRetencoes: Double;
    FValorOutrasRetencoesHasValue: Boolean;
    FValorIss: Double;
    FValorIssHasValue: Boolean;
    FValorIssRetido: Double;
    FValorIssRetidoHasValue: Boolean;
    FValorLiquido: Double;
    FValorLiquidoHasValue: Boolean;
    FAliquotaIss: Double;
    FAliquotaIssHasValue: Boolean;
    FAliquotaPis: Double;
    FAliquotaPisHasValue: Boolean;
    FAliquotaCofins: Double;
    FAliquotaCofinsHasValue: Boolean;
    FAliquotaInss: Double;
    FAliquotaInssHasValue: Boolean;
    FAliquotaIr: Double;
    FAliquotaIrHasValue: Boolean;
    FAliquotaCsll: Double;
    FAliquotaCsllHasValue: Boolean;
    FDescontoIncondicionado: Double;
    FDescontoIncondicionadoHasValue: Boolean;
    FDescontoCondicionado: Double;
    FDescontoCondicionadoHasValue: Boolean;
    procedure SetValorUnitario(const Value: Double);
    procedure SetValorServicos(const Value: Double);
    procedure SetValorDeducoes(const Value: Double);
    procedure SetValorPis(const Value: Double);
    procedure SetValorCofins(const Value: Double);
    procedure SetValorInss(const Value: Double);
    procedure SetValorIr(const Value: Double);
    procedure SetValorCsll(const Value: Double);
    procedure SetValorOutrasRetencoes(const Value: Double);
    procedure SetValorIss(const Value: Double);
    procedure SetValorIssRetido(const Value: Double);
    procedure SetValorLiquido(const Value: Double);
    procedure SetAliquotaIss(const Value: Double);
    procedure SetAliquotaPis(const Value: Double);
    procedure SetAliquotaCofins(const Value: Double);
    procedure SetAliquotaInss(const Value: Double);
    procedure SetAliquotaIr(const Value: Double);
    procedure SetAliquotaCsll(const Value: Double);
    procedure SetDescontoIncondicionado(const Value: Double);
    procedure SetDescontoCondicionado(const Value: Double);
  public
    property ValorUnitario: Double read FValorUnitario write SetValorUnitario;
    property ValorUnitarioHasValue: Boolean read FValorUnitarioHasValue write FValorUnitarioHasValue;
    property ValorServicos: Double read FValorServicos write SetValorServicos;
    property ValorServicosHasValue: Boolean read FValorServicosHasValue write FValorServicosHasValue;
    property ValorDeducoes: Double read FValorDeducoes write SetValorDeducoes;
    property ValorDeducoesHasValue: Boolean read FValorDeducoesHasValue write FValorDeducoesHasValue;
    property ValorPis: Double read FValorPis write SetValorPis;
    property ValorPisHasValue: Boolean read FValorPisHasValue write FValorPisHasValue;
    property ValorCofins: Double read FValorCofins write SetValorCofins;
    property ValorCofinsHasValue: Boolean read FValorCofinsHasValue write FValorCofinsHasValue;
    property ValorInss: Double read FValorInss write SetValorInss;
    property ValorInssHasValue: Boolean read FValorInssHasValue write FValorInssHasValue;
    property ValorIr: Double read FValorIr write SetValorIr;
    property ValorIrHasValue: Boolean read FValorIrHasValue write FValorIrHasValue;
    property ValorCsll: Double read FValorCsll write SetValorCsll;
    property ValorCsllHasValue: Boolean read FValorCsllHasValue write FValorCsllHasValue;
    property ValorOutrasRetencoes: Double read FValorOutrasRetencoes write SetValorOutrasRetencoes;
    property ValorOutrasRetencoesHasValue: Boolean read FValorOutrasRetencoesHasValue write FValorOutrasRetencoesHasValue;
    property ValorIss: Double read FValorIss write SetValorIss;
    property ValorIssHasValue: Boolean read FValorIssHasValue write FValorIssHasValue;
    property ValorIssRetido: Double read FValorIssRetido write SetValorIssRetido;
    property ValorIssRetidoHasValue: Boolean read FValorIssRetidoHasValue write FValorIssRetidoHasValue;
    property ValorLiquido: Double read FValorLiquido write SetValorLiquido;
    property ValorLiquidoHasValue: Boolean read FValorLiquidoHasValue write FValorLiquidoHasValue;
    property AliquotaIss: Double read FAliquotaIss write SetAliquotaIss;
    property AliquotaIssHasValue: Boolean read FAliquotaIssHasValue write FAliquotaIssHasValue;
    property AliquotaPis: Double read FAliquotaPis write SetAliquotaPis;
    property AliquotaPisHasValue: Boolean read FAliquotaPisHasValue write FAliquotaPisHasValue;
    property AliquotaCofins: Double read FAliquotaCofins write SetAliquotaCofins;
    property AliquotaCofinsHasValue: Boolean read FAliquotaCofinsHasValue write FAliquotaCofinsHasValue;
    property AliquotaInss: Double read FAliquotaInss write SetAliquotaInss;
    property AliquotaInssHasValue: Boolean read FAliquotaInssHasValue write FAliquotaInssHasValue;
    property AliquotaIr: Double read FAliquotaIr write SetAliquotaIr;
    property AliquotaIrHasValue: Boolean read FAliquotaIrHasValue write FAliquotaIrHasValue;
    property AliquotaCsll: Double read FAliquotaCsll write SetAliquotaCsll;
    property AliquotaCsllHasValue: Boolean read FAliquotaCsllHasValue write FAliquotaCsllHasValue;
    property DescontoIncondicionado: Double read FDescontoIncondicionado write SetDescontoIncondicionado;
    property DescontoIncondicionadoHasValue: Boolean read FDescontoIncondicionadoHasValue write FDescontoIncondicionadoHasValue;
    property DescontoCondicionado: Double read FDescontoCondicionado write SetDescontoCondicionado;
    property DescontoCondicionadoHasValue: Boolean read FDescontoCondicionadoHasValue write FDescontoCondicionadoHasValue;
  end;
  
  TRpsDadosServico = class
  private
    FIssRetido: Boolean;
    FIssRetidoHasValue: Boolean;
    FResponsavelRetencao: Integer;
    FResponsavelRetencaoHasValue: Boolean;
    FItemListaServico: string;
    FItemListaServicoHasValue: Boolean;
    FCodigoCnae: string;
    FCodigoCnaeHasValue: Boolean;
    FCodigoTributacaoMunicipio: string;
    FCodigoTributacaoMunicipioHasValue: Boolean;
    FDiscriminacao: string;
    FDiscriminacaoHasValue: Boolean;
    FCodigoMunicipio: string;
    FCodigoMunicipioHasValue: Boolean;
    FCodigoPais: string;
    FCodigoPaisHasValue: Boolean;
    FTipoTributacao: Integer;
    FTipoTributacaoHasValue: Boolean;
    FExigibilidadeIss: Integer;
    FExigibilidadeIssHasValue: Boolean;
    FCodigoMunicipioIncidencia: string;
    FCodigoMunicipioIncidenciaHasValue: Boolean;
    FNumeroProcesso: string;
    FNumeroProcessoHasValue: Boolean;
    FUnidade: string;
    FUnidadeHasValue: Boolean;
    FQuantidade: Double;
    FQuantidadeHasValue: Boolean;
    FValores: TRpsServicoValores;
    procedure SetIssRetido(const Value: Boolean);
    procedure SetResponsavelRetencao(const Value: Integer);
    procedure SetItemListaServico(const Value: string);
    procedure SetCodigoCnae(const Value: string);
    procedure SetCodigoTributacaoMunicipio(const Value: string);
    procedure SetDiscriminacao(const Value: string);
    procedure SetCodigoMunicipio(const Value: string);
    procedure SetCodigoPais(const Value: string);
    procedure SetTipoTributacao(const Value: Integer);
    procedure SetExigibilidadeIss(const Value: Integer);
    procedure SetCodigoMunicipioIncidencia(const Value: string);
    procedure SetNumeroProcesso(const Value: string);
    procedure SetUnidade(const Value: string);
    procedure SetQuantidade(const Value: Double);
    procedure SetValores(const Value: TRpsServicoValores);
  public
    destructor Destroy; override;
    property IssRetido: Boolean read FIssRetido write SetIssRetido;
    property IssRetidoHasValue: Boolean read FIssRetidoHasValue write FIssRetidoHasValue;
    property ResponsavelRetencao: Integer read FResponsavelRetencao write SetResponsavelRetencao;
    property ResponsavelRetencaoHasValue: Boolean read FResponsavelRetencaoHasValue write FResponsavelRetencaoHasValue;
    property ItemListaServico: string read FItemListaServico write SetItemListaServico;
    property ItemListaServicoHasValue: Boolean read FItemListaServicoHasValue write FItemListaServicoHasValue;
    property CodigoCnae: string read FCodigoCnae write SetCodigoCnae;
    property CodigoCnaeHasValue: Boolean read FCodigoCnaeHasValue write FCodigoCnaeHasValue;
    property CodigoTributacaoMunicipio: string read FCodigoTributacaoMunicipio write SetCodigoTributacaoMunicipio;
    property CodigoTributacaoMunicipioHasValue: Boolean read FCodigoTributacaoMunicipioHasValue write FCodigoTributacaoMunicipioHasValue;
    property Discriminacao: string read FDiscriminacao write SetDiscriminacao;
    property DiscriminacaoHasValue: Boolean read FDiscriminacaoHasValue write FDiscriminacaoHasValue;
    property CodigoMunicipio: string read FCodigoMunicipio write SetCodigoMunicipio;
    property CodigoMunicipioHasValue: Boolean read FCodigoMunicipioHasValue write FCodigoMunicipioHasValue;
    property CodigoPais: string read FCodigoPais write SetCodigoPais;
    property CodigoPaisHasValue: Boolean read FCodigoPaisHasValue write FCodigoPaisHasValue;
    property TipoTributacao: Integer read FTipoTributacao write SetTipoTributacao;
    property TipoTributacaoHasValue: Boolean read FTipoTributacaoHasValue write FTipoTributacaoHasValue;
    property ExigibilidadeIss: Integer read FExigibilidadeIss write SetExigibilidadeIss;
    property ExigibilidadeIssHasValue: Boolean read FExigibilidadeIssHasValue write FExigibilidadeIssHasValue;
    property CodigoMunicipioIncidencia: string read FCodigoMunicipioIncidencia write SetCodigoMunicipioIncidencia;
    property CodigoMunicipioIncidenciaHasValue: Boolean read FCodigoMunicipioIncidenciaHasValue write FCodigoMunicipioIncidenciaHasValue;
    property NumeroProcesso: string read FNumeroProcesso write SetNumeroProcesso;
    property NumeroProcessoHasValue: Boolean read FNumeroProcessoHasValue write FNumeroProcessoHasValue;
    property Unidade: string read FUnidade write SetUnidade;
    property UnidadeHasValue: Boolean read FUnidadeHasValue write FUnidadeHasValue;
    property Quantidade: Double read FQuantidade write SetQuantidade;
    property QuantidadeHasValue: Boolean read FQuantidadeHasValue write FQuantidadeHasValue;
    property Valores: TRpsServicoValores read FValores write SetValores;
  end;
  
  TRpsDadosServicoList = class(TObjectList<TRpsDadosServico>)
  end;
  
  TRpsPedidoEmissao = class
  private
    FReferencia: string;
    FReferenciaHasValue: Boolean;
    FDataEmissao: TDateTime;
    FDataEmissaoHasValue: Boolean;
    FCompetencia: TDate;
    FCompetenciaHasValue: Boolean;
    FNaturezaTributacao: Integer;
    FNaturezaTributacaoHasValue: Boolean;
    FPrestador: TRpsIdentificacaoPrestador;
    FTomador: TRpsDadosTomador;
    FIntermediario: TRpsDadosIntermediario;
    FConstrucaoCivil: TRpsDadosConstrucaoCivil;
    FServicos: TRpsDadosServicoList;
    procedure SetReferencia(const Value: string);
    procedure SetDataEmissao(const Value: TDateTime);
    procedure SetCompetencia(const Value: TDate);
    procedure SetNaturezaTributacao(const Value: Integer);
    procedure SetPrestador(const Value: TRpsIdentificacaoPrestador);
    procedure SetTomador(const Value: TRpsDadosTomador);
    procedure SetIntermediario(const Value: TRpsDadosIntermediario);
    procedure SetConstrucaoCivil(const Value: TRpsDadosConstrucaoCivil);
    procedure SetServicos(const Value: TRpsDadosServicoList);
  public
    destructor Destroy; override;
    property Referencia: string read FReferencia write SetReferencia;
    property ReferenciaHasValue: Boolean read FReferenciaHasValue write FReferenciaHasValue;
    property DataEmissao: TDateTime read FDataEmissao write SetDataEmissao;
    property DataEmissaoHasValue: Boolean read FDataEmissaoHasValue write FDataEmissaoHasValue;
    property Competencia: TDate read FCompetencia write SetCompetencia;
    property CompetenciaHasValue: Boolean read FCompetenciaHasValue write FCompetenciaHasValue;
    property NaturezaTributacao: Integer read FNaturezaTributacao write SetNaturezaTributacao;
    property NaturezaTributacaoHasValue: Boolean read FNaturezaTributacaoHasValue write FNaturezaTributacaoHasValue;
    property Prestador: TRpsIdentificacaoPrestador read FPrestador write SetPrestador;
    property Tomador: TRpsDadosTomador read FTomador write SetTomador;
    property Intermediario: TRpsDadosIntermediario read FIntermediario write SetIntermediario;
    property ConstrucaoCivil: TRpsDadosConstrucaoCivil read FConstrucaoCivil write SetConstrucaoCivil;
    property Servicos: TRpsDadosServicoList read FServicos write SetServicos;
  end;
  
  TRpsPedidoEmissaoList = class(TObjectList<TRpsPedidoEmissao>)
  end;
  
  TRpsPedidoEmissaoLote = class
  private
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FReferencia: string;
    FReferenciaHasValue: Boolean;
    FListaRps: TRpsPedidoEmissaoList;
    procedure SetAmbiente(const Value: string);
    procedure SetReferencia(const Value: string);
    procedure SetListaRps(const Value: TRpsPedidoEmissaoList);
  public
    destructor Destroy; override;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Referencia: string read FReferencia write SetReferencia;
    property ReferenciaHasValue: Boolean read FReferenciaHasValue write FReferenciaHasValue;
    property ListaRps: TRpsPedidoEmissaoList read FListaRps write SetListaRps;
  end;
  
  TRpsIdentificacao = class
  private
    FNumero: string;
    FNumeroHasValue: Boolean;
    FSerie: string;
    FSerieHasValue: Boolean;
    FTipo: string;
    FTipoHasValue: Boolean;
    procedure SetNumero(const Value: string);
    procedure SetSerie(const Value: string);
    procedure SetTipo(const Value: string);
  public
    property Numero: string read FNumero write SetNumero;
    property NumeroHasValue: Boolean read FNumeroHasValue write FNumeroHasValue;
    property Serie: string read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property Tipo: string read FTipo write SetTipo;
    property TipoHasValue: Boolean read FTipoHasValue write FTipoHasValue;
  end;
  
  TRpsDados = class
  private
    FIdentificacaoRps: TRpsIdentificacao;
    FDataEmissao: TDateTime;
    FDataEmissaoHasValue: Boolean;
    procedure SetIdentificacaoRps(const Value: TRpsIdentificacao);
    procedure SetDataEmissao(const Value: TDateTime);
  public
    destructor Destroy; override;
    property IdentificacaoRps: TRpsIdentificacao read FIdentificacaoRps write SetIdentificacaoRps;
    property DataEmissao: TDateTime read FDataEmissao write SetDataEmissao;
    property DataEmissaoHasValue: Boolean read FDataEmissaoHasValue write FDataEmissaoHasValue;
  end;
  
  TRpsDadosPrestador = class
  private
    FCpfCnpj: string;
    FCpfCnpjHasValue: Boolean;
    FInscricaoMunicipal: string;
    FInscricaoMunicipalHasValue: Boolean;
    FNomeRazaoSocial: string;
    FNomeRazaoSocialHasValue: Boolean;
    FNomeFantasia: string;
    FNomeFantasiaHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FEmail: string;
    FEmailHasValue: Boolean;
    FEndereco: TEmpresaEndereco;
    FOptanteSimplesNacional: Boolean;
    FOptanteSimplesNacionalHasValue: Boolean;
    FRegimeTributacao: Integer;
    FRegimeTributacaoHasValue: Boolean;
    FRegimeEspecialTributacao: Integer;
    FRegimeEspecialTributacaoHasValue: Boolean;
    FIncentivoFiscal: Boolean;
    FIncentivoFiscalHasValue: Boolean;
    FIncentivadorCultural: Boolean;
    FIncentivadorCulturalHasValue: Boolean;
    procedure SetCpfCnpj(const Value: string);
    procedure SetInscricaoMunicipal(const Value: string);
    procedure SetNomeRazaoSocial(const Value: string);
    procedure SetNomeFantasia(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetEndereco(const Value: TEmpresaEndereco);
    procedure SetOptanteSimplesNacional(const Value: Boolean);
    procedure SetRegimeTributacao(const Value: Integer);
    procedure SetRegimeEspecialTributacao(const Value: Integer);
    procedure SetIncentivoFiscal(const Value: Boolean);
    procedure SetIncentivadorCultural(const Value: Boolean);
  public
    destructor Destroy; override;
    property CpfCnpj: string read FCpfCnpj write SetCpfCnpj;
    property CpfCnpjHasValue: Boolean read FCpfCnpjHasValue write FCpfCnpjHasValue;
    property InscricaoMunicipal: string read FInscricaoMunicipal write SetInscricaoMunicipal;
    property InscricaoMunicipalHasValue: Boolean read FInscricaoMunicipalHasValue write FInscricaoMunicipalHasValue;
    property NomeRazaoSocial: string read FNomeRazaoSocial write SetNomeRazaoSocial;
    property NomeRazaoSocialHasValue: Boolean read FNomeRazaoSocialHasValue write FNomeRazaoSocialHasValue;
    property NomeFantasia: string read FNomeFantasia write SetNomeFantasia;
    property NomeFantasiaHasValue: Boolean read FNomeFantasiaHasValue write FNomeFantasiaHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
    property Endereco: TEmpresaEndereco read FEndereco write SetEndereco;
    property OptanteSimplesNacional: Boolean read FOptanteSimplesNacional write SetOptanteSimplesNacional;
    property OptanteSimplesNacionalHasValue: Boolean read FOptanteSimplesNacionalHasValue write FOptanteSimplesNacionalHasValue;
    property RegimeTributacao: Integer read FRegimeTributacao write SetRegimeTributacao;
    property RegimeTributacaoHasValue: Boolean read FRegimeTributacaoHasValue write FRegimeTributacaoHasValue;
    property RegimeEspecialTributacao: Integer read FRegimeEspecialTributacao write SetRegimeEspecialTributacao;
    property RegimeEspecialTributacaoHasValue: Boolean read FRegimeEspecialTributacaoHasValue write FRegimeEspecialTributacaoHasValue;
    property IncentivoFiscal: Boolean read FIncentivoFiscal write SetIncentivoFiscal;
    property IncentivoFiscalHasValue: Boolean read FIncentivoFiscalHasValue write FIncentivoFiscalHasValue;
    property IncentivadorCultural: Boolean read FIncentivadorCultural write SetIncentivadorCultural;
    property IncentivadorCulturalHasValue: Boolean read FIncentivadorCulturalHasValue write FIncentivadorCulturalHasValue;
  end;
  
  TRps = class
  private
    FRps: TRpsDados;
    FCompetencia: TDate;
    FCompetenciaHasValue: Boolean;
    FNaturezaTributacao: Integer;
    FNaturezaTributacaoHasValue: Boolean;
    FPrestador: TRpsDadosPrestador;
    FTomador: TRpsDadosTomador;
    FIntermediario: TRpsDadosIntermediario;
    FConstrucaoCivil: TRpsDadosConstrucaoCivil;
    FServicos: TRpsDadosServicoList;
    procedure SetRps(const Value: TRpsDados);
    procedure SetCompetencia(const Value: TDate);
    procedure SetNaturezaTributacao(const Value: Integer);
    procedure SetPrestador(const Value: TRpsDadosPrestador);
    procedure SetTomador(const Value: TRpsDadosTomador);
    procedure SetIntermediario(const Value: TRpsDadosIntermediario);
    procedure SetConstrucaoCivil(const Value: TRpsDadosConstrucaoCivil);
    procedure SetServicos(const Value: TRpsDadosServicoList);
  public
    destructor Destroy; override;
    property Rps: TRpsDados read FRps write SetRps;
    property Competencia: TDate read FCompetencia write SetCompetencia;
    property CompetenciaHasValue: Boolean read FCompetenciaHasValue write FCompetenciaHasValue;
    property NaturezaTributacao: Integer read FNaturezaTributacao write SetNaturezaTributacao;
    property NaturezaTributacaoHasValue: Boolean read FNaturezaTributacaoHasValue write FNaturezaTributacaoHasValue;
    property Prestador: TRpsDadosPrestador read FPrestador write SetPrestador;
    property Tomador: TRpsDadosTomador read FTomador write SetTomador;
    property Intermediario: TRpsDadosIntermediario read FIntermediario write SetIntermediario;
    property ConstrucaoCivil: TRpsDadosConstrucaoCivil read FConstrucaoCivil write SetConstrucaoCivil;
    property Servicos: TRpsDadosServicoList read FServicos write SetServicos;
  end;
  
  TNfseMensagemRetorno = class
  private
    FCodigo: string;
    FCodigoHasValue: Boolean;
    FDescricao: string;
    FDescricaoHasValue: Boolean;
    FCorrecao: string;
    FCorrecaoHasValue: Boolean;
    procedure SetCodigo(const Value: string);
    procedure SetDescricao(const Value: string);
    procedure SetCorrecao(const Value: string);
  public
    property Codigo: string read FCodigo write SetCodigo;
    property CodigoHasValue: Boolean read FCodigoHasValue write FCodigoHasValue;
    property Descricao: string read FDescricao write SetDescricao;
    property DescricaoHasValue: Boolean read FDescricaoHasValue write FDescricaoHasValue;
    property Correcao: string read FCorrecao write SetCorrecao;
    property CorrecaoHasValue: Boolean read FCorrecaoHasValue write FCorrecaoHasValue;
  end;
  
  TNfseMensagemRetornoList = class(TObjectList<TNfseMensagemRetorno>)
  end;
  
  TNfseCancelamento = class
  private
    FId: string;
    FIdHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FDataHora: TDateTime;
    FDataHoraHasValue: Boolean;
    FMensagens: TNfseMensagemRetornoList;
    procedure SetId(const Value: string);
    procedure SetStatus(const Value: string);
    procedure SetDataHora(const Value: TDateTime);
    procedure SetMensagens(const Value: TNfseMensagemRetornoList);
  public
    destructor Destroy; override;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property DataHora: TDateTime read FDataHora write SetDataHora;
    property DataHoraHasValue: Boolean read FDataHoraHasValue write FDataHoraHasValue;
    property Mensagens: TNfseMensagemRetornoList read FMensagens write SetMensagens;
  end;
  
  TNfse = class
  private
    FId: string;
    FIdHasValue: Boolean;
    FCreatedAt: TDateTime;
    FCreatedAtHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FNumero: string;
    FNumeroHasValue: Boolean;
    FCodigoVerificacao: string;
    FCodigoVerificacaoHasValue: Boolean;
    FLinkUrl: string;
    FLinkUrlHasValue: Boolean;
    FDataEmissao: TDateTime;
    FDataEmissaoHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FReferencia: string;
    FReferenciaHasValue: Boolean;
    FDeclaracaoPrestacaoServico: TRps;
    FCancelamento: TNfseCancelamento;
    FMensagens: TNfseMensagemRetornoList;
    procedure SetId(const Value: string);
    procedure SetCreatedAt(const Value: TDateTime);
    procedure SetStatus(const Value: string);
    procedure SetNumero(const Value: string);
    procedure SetCodigoVerificacao(const Value: string);
    procedure SetLinkUrl(const Value: string);
    procedure SetDataEmissao(const Value: TDateTime);
    procedure SetAmbiente(const Value: string);
    procedure SetReferencia(const Value: string);
    procedure SetDeclaracaoPrestacaoServico(const Value: TRps);
    procedure SetCancelamento(const Value: TNfseCancelamento);
    procedure SetMensagens(const Value: TNfseMensagemRetornoList);
  public
    destructor Destroy; override;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property CreatedAt: TDateTime read FCreatedAt write SetCreatedAt;
    property CreatedAtHasValue: Boolean read FCreatedAtHasValue write FCreatedAtHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Numero: string read FNumero write SetNumero;
    property NumeroHasValue: Boolean read FNumeroHasValue write FNumeroHasValue;
    property CodigoVerificacao: string read FCodigoVerificacao write SetCodigoVerificacao;
    property CodigoVerificacaoHasValue: Boolean read FCodigoVerificacaoHasValue write FCodigoVerificacaoHasValue;
    property LinkUrl: string read FLinkUrl write SetLinkUrl;
    property LinkUrlHasValue: Boolean read FLinkUrlHasValue write FLinkUrlHasValue;
    property DataEmissao: TDateTime read FDataEmissao write SetDataEmissao;
    property DataEmissaoHasValue: Boolean read FDataEmissaoHasValue write FDataEmissaoHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Referencia: string read FReferencia write SetReferencia;
    property ReferenciaHasValue: Boolean read FReferenciaHasValue write FReferenciaHasValue;
    property DeclaracaoPrestacaoServico: TRps read FDeclaracaoPrestacaoServico write SetDeclaracaoPrestacaoServico;
    property Cancelamento: TNfseCancelamento read FCancelamento write SetCancelamento;
    property Mensagens: TNfseMensagemRetornoList read FMensagens write SetMensagens;
  end;
  
  TNfseList = class(TObjectList<TNfse>)
  end;
  
  TRpsLote = class
  private
    FId: string;
    FIdHasValue: Boolean;
    FCreatedAt: TDateTime;
    FCreatedAtHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FNumero: string;
    FNumeroHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FReferencia: string;
    FReferenciaHasValue: Boolean;
    FNotas: TNfseList;
    procedure SetId(const Value: string);
    procedure SetCreatedAt(const Value: TDateTime);
    procedure SetStatus(const Value: string);
    procedure SetNumero(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetReferencia(const Value: string);
    procedure SetNotas(const Value: TNfseList);
  public
    destructor Destroy; override;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property CreatedAt: TDateTime read FCreatedAt write SetCreatedAt;
    property CreatedAtHasValue: Boolean read FCreatedAtHasValue write FCreatedAtHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Numero: string read FNumero write SetNumero;
    property NumeroHasValue: Boolean read FNumeroHasValue write FNumeroHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Referencia: string read FReferencia write SetReferencia;
    property ReferenciaHasValue: Boolean read FReferenciaHasValue write FReferenciaHasValue;
    property Notas: TNfseList read FNotas write SetNotas;
  end;
  
  TRpsLoteList = class(TObjectList<TRpsLote>)
  end;
  
  TRpsLoteListagem = class
  private
    FCount: Integer;
    FCountHasValue: Boolean;
    FData: TRpsLoteList;
    procedure SetCount(const Value: Integer);
    procedure SetData(const Value: TRpsLoteList);
  public
    destructor Destroy; override;
    property Count: Integer read FCount write SetCount;
    property CountHasValue: Boolean read FCountHasValue write FCountHasValue;
    property Data: TRpsLoteList read FData write SetData;
  end;
  
  TNfsePedidoEmissao = class
  private
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FRps: TRpsPedidoEmissao;
    procedure SetAmbiente(const Value: string);
    procedure SetRps(const Value: TRpsPedidoEmissao);
  public
    destructor Destroy; override;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Rps: TRpsPedidoEmissao read FRps write SetRps;
  end;
  
  TNfseListagem = class
  private
    FCount: Integer;
    FCountHasValue: Boolean;
    FData: TNfseList;
    procedure SetCount(const Value: Integer);
    procedure SetData(const Value: TNfseList);
  public
    destructor Destroy; override;
    property Count: Integer read FCount write SetCount;
    property CountHasValue: Boolean read FCountHasValue write FCountHasValue;
    property Data: TNfseList read FData write SetData;
  end;
  
  TDfeSefazStatus = class
  private
    FAutorizador: string;
    FAutorizadorHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FDataHoraConsulta: TDateTime;
    FDataHoraConsultaHasValue: Boolean;
    FCodigoStatus: Integer;
    FCodigoStatusHasValue: Boolean;
    FMotivoStatus: string;
    FMotivoStatusHasValue: Boolean;
    FTempoMedioResposta: Integer;
    FTempoMedioRespostaHasValue: Boolean;
    FDataHoraRetorno: TDateTime;
    FDataHoraRetornoHasValue: Boolean;
    procedure SetAutorizador(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetDataHoraConsulta(const Value: TDateTime);
    procedure SetCodigoStatus(const Value: Integer);
    procedure SetMotivoStatus(const Value: string);
    procedure SetTempoMedioResposta(const Value: Integer);
    procedure SetDataHoraRetorno(const Value: TDateTime);
  public
    property Autorizador: string read FAutorizador write SetAutorizador;
    property AutorizadorHasValue: Boolean read FAutorizadorHasValue write FAutorizadorHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property DataHoraConsulta: TDateTime read FDataHoraConsulta write SetDataHoraConsulta;
    property DataHoraConsultaHasValue: Boolean read FDataHoraConsultaHasValue write FDataHoraConsultaHasValue;
    property CodigoStatus: Integer read FCodigoStatus write SetCodigoStatus;
    property CodigoStatusHasValue: Boolean read FCodigoStatusHasValue write FCodigoStatusHasValue;
    property MotivoStatus: string read FMotivoStatus write SetMotivoStatus;
    property MotivoStatusHasValue: Boolean read FMotivoStatusHasValue write FMotivoStatusHasValue;
    property TempoMedioResposta: Integer read FTempoMedioResposta write SetTempoMedioResposta;
    property TempoMedioRespostaHasValue: Boolean read FTempoMedioRespostaHasValue write FTempoMedioRespostaHasValue;
    property DataHoraRetorno: TDateTime read FDataHoraRetorno write SetDataHoraRetorno;
    property DataHoraRetornoHasValue: Boolean read FDataHoraRetornoHasValue write FDataHoraRetornoHasValue;
  end;
  
  TDfeVisaoGeralSefazStatus = class
  private
    FAC: TDfeSefazStatus;
    FAL: TDfeSefazStatus;
    FAP: TDfeSefazStatus;
    FAM: TDfeSefazStatus;
    FBA: TDfeSefazStatus;
    FCE: TDfeSefazStatus;
    FDF: TDfeSefazStatus;
    FES: TDfeSefazStatus;
    FGO: TDfeSefazStatus;
    FMA: TDfeSefazStatus;
    FMT: TDfeSefazStatus;
    FMS: TDfeSefazStatus;
    FMG: TDfeSefazStatus;
    FPA: TDfeSefazStatus;
    FPB: TDfeSefazStatus;
    FPR: TDfeSefazStatus;
    FPE: TDfeSefazStatus;
    FPI: TDfeSefazStatus;
    FRJ: TDfeSefazStatus;
    FRN: TDfeSefazStatus;
    FRS: TDfeSefazStatus;
    FRO: TDfeSefazStatus;
    FRR: TDfeSefazStatus;
    FSC: TDfeSefazStatus;
    FSP: TDfeSefazStatus;
    FSE: TDfeSefazStatus;
    FTO: TDfeSefazStatus;
    procedure SetAC(const Value: TDfeSefazStatus);
    procedure SetAL(const Value: TDfeSefazStatus);
    procedure SetAP(const Value: TDfeSefazStatus);
    procedure SetAM(const Value: TDfeSefazStatus);
    procedure SetBA(const Value: TDfeSefazStatus);
    procedure SetCE(const Value: TDfeSefazStatus);
    procedure SetDF(const Value: TDfeSefazStatus);
    procedure SetES(const Value: TDfeSefazStatus);
    procedure SetGO(const Value: TDfeSefazStatus);
    procedure SetMA(const Value: TDfeSefazStatus);
    procedure SetMT(const Value: TDfeSefazStatus);
    procedure SetMS(const Value: TDfeSefazStatus);
    procedure SetMG(const Value: TDfeSefazStatus);
    procedure SetPA(const Value: TDfeSefazStatus);
    procedure SetPB(const Value: TDfeSefazStatus);
    procedure SetPR(const Value: TDfeSefazStatus);
    procedure SetPE(const Value: TDfeSefazStatus);
    procedure SetPI(const Value: TDfeSefazStatus);
    procedure SetRJ(const Value: TDfeSefazStatus);
    procedure SetRN(const Value: TDfeSefazStatus);
    procedure SetRS(const Value: TDfeSefazStatus);
    procedure SetRO(const Value: TDfeSefazStatus);
    procedure SetRR(const Value: TDfeSefazStatus);
    procedure SetSC(const Value: TDfeSefazStatus);
    procedure SetSP(const Value: TDfeSefazStatus);
    procedure SetSE(const Value: TDfeSefazStatus);
    procedure SetTO(const Value: TDfeSefazStatus);
  public
    destructor Destroy; override;
    property AC: TDfeSefazStatus read FAC write SetAC;
    property AL: TDfeSefazStatus read FAL write SetAL;
    property AP: TDfeSefazStatus read FAP write SetAP;
    property AM: TDfeSefazStatus read FAM write SetAM;
    property BA: TDfeSefazStatus read FBA write SetBA;
    property CE: TDfeSefazStatus read FCE write SetCE;
    property DF: TDfeSefazStatus read FDF write SetDF;
    property ES: TDfeSefazStatus read FES write SetES;
    property GO: TDfeSefazStatus read FGO write SetGO;
    property MA: TDfeSefazStatus read FMA write SetMA;
    property MT: TDfeSefazStatus read FMT write SetMT;
    property MS: TDfeSefazStatus read FMS write SetMS;
    property MG: TDfeSefazStatus read FMG write SetMG;
    property PA: TDfeSefazStatus read FPA write SetPA;
    property PB: TDfeSefazStatus read FPB write SetPB;
    property PR: TDfeSefazStatus read FPR write SetPR;
    property PE: TDfeSefazStatus read FPE write SetPE;
    property PI: TDfeSefazStatus read FPI write SetPI;
    property RJ: TDfeSefazStatus read FRJ write SetRJ;
    property RN: TDfeSefazStatus read FRN write SetRN;
    property RS: TDfeSefazStatus read FRS write SetRS;
    property RO: TDfeSefazStatus read FRO write SetRO;
    property RR: TDfeSefazStatus read FRR write SetRR;
    property SC: TDfeSefazStatus read FSC write SetSC;
    property SP: TDfeSefazStatus read FSP write SetSP;
    property SE: TDfeSefazStatus read FSE write SetSE;
    property &TO: TDfeSefazStatus read FTO write SetTO;
  end;
  
  TCteSefazToma3 = class
  private
    FToma: Integer;
    FTomaHasValue: Boolean;
    procedure SetToma(const Value: Integer);
  public
    property Toma: Integer read FToma write SetToma;
    property TomaHasValue: Boolean read FTomaHasValue write FTomaHasValue;
  end;
  
  TCteSefazEndereco = class
  private
    FXLgr: string;
    FXLgrHasValue: Boolean;
    FNro: string;
    FNroHasValue: Boolean;
    FXCpl: string;
    FXCplHasValue: Boolean;
    FXBairro: string;
    FXBairroHasValue: Boolean;
    FCMun: Integer;
    FCMunHasValue: Boolean;
    FXMun: string;
    FXMunHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FCPais: Integer;
    FCPaisHasValue: Boolean;
    FXPais: string;
    FXPaisHasValue: Boolean;
    procedure SetXLgr(const Value: string);
    procedure SetNro(const Value: string);
    procedure SetXCpl(const Value: string);
    procedure SetXBairro(const Value: string);
    procedure SetCMun(const Value: Integer);
    procedure SetXMun(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetUF(const Value: string);
    procedure SetCPais(const Value: Integer);
    procedure SetXPais(const Value: string);
  public
    property XLgr: string read FXLgr write SetXLgr;
    property XLgrHasValue: Boolean read FXLgrHasValue write FXLgrHasValue;
    property Nro: string read FNro write SetNro;
    property NroHasValue: Boolean read FNroHasValue write FNroHasValue;
    property XCpl: string read FXCpl write SetXCpl;
    property XCplHasValue: Boolean read FXCplHasValue write FXCplHasValue;
    property XBairro: string read FXBairro write SetXBairro;
    property XBairroHasValue: Boolean read FXBairroHasValue write FXBairroHasValue;
    property CMun: Integer read FCMun write SetCMun;
    property CMunHasValue: Boolean read FCMunHasValue write FCMunHasValue;
    property XMun: string read FXMun write SetXMun;
    property XMunHasValue: Boolean read FXMunHasValue write FXMunHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property CPais: Integer read FCPais write SetCPais;
    property CPaisHasValue: Boolean read FCPaisHasValue write FCPaisHasValue;
    property XPais: string read FXPais write SetXPais;
    property XPaisHasValue: Boolean read FXPaisHasValue write FXPaisHasValue;
  end;
  
  TCteSefazToma4 = class
  private
    FToma: Integer;
    FTomaHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FXFant: string;
    FXFantHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FEnderToma: TCteSefazEndereco;
    FEmail: string;
    FEmailHasValue: Boolean;
    procedure SetToma(const Value: Integer);
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetXFant(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetEnderToma(const Value: TCteSefazEndereco);
    procedure SetEmail(const Value: string);
  public
    destructor Destroy; override;
    property Toma: Integer read FToma write SetToma;
    property TomaHasValue: Boolean read FTomaHasValue write FTomaHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property XFant: string read FXFant write SetXFant;
    property XFantHasValue: Boolean read FXFantHasValue write FXFantHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property EnderToma: TCteSefazEndereco read FEnderToma write SetEnderToma;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
  end;
  
  TCteSefazIde = class
  private
    FCUF: Integer;
    FCUFHasValue: Boolean;
    FCCT: Integer;
    FCCTHasValue: Boolean;
    FCFOP: Integer;
    FCFOPHasValue: Boolean;
    FNatOp: string;
    FNatOpHasValue: Boolean;
    FMod: Integer;
    FModHasValue: Boolean;
    FSerie: Integer;
    FSerieHasValue: Boolean;
    FNCT: Integer;
    FNCTHasValue: Boolean;
    FDhEmi: TDateTime;
    FDhEmiHasValue: Boolean;
    FTpImp: Integer;
    FTpImpHasValue: Boolean;
    FTpEmis: Integer;
    FTpEmisHasValue: Boolean;
    FCDV: Integer;
    FCDVHasValue: Boolean;
    FTpAmb: Integer;
    FTpAmbHasValue: Boolean;
    FTpCTe: Integer;
    FTpCTeHasValue: Boolean;
    FProcEmi: Integer;
    FProcEmiHasValue: Boolean;
    FVerProc: string;
    FVerProcHasValue: Boolean;
    FIndGlobalizado: Integer;
    FIndGlobalizadoHasValue: Boolean;
    FCMunEnv: Integer;
    FCMunEnvHasValue: Boolean;
    FXMunEnv: string;
    FXMunEnvHasValue: Boolean;
    FUFEnv: string;
    FUFEnvHasValue: Boolean;
    FModal: string;
    FModalHasValue: Boolean;
    FTpServ: Integer;
    FTpServHasValue: Boolean;
    FCMunIni: Integer;
    FCMunIniHasValue: Boolean;
    FXMunIni: string;
    FXMunIniHasValue: Boolean;
    FUFIni: string;
    FUFIniHasValue: Boolean;
    FCMunFim: Integer;
    FCMunFimHasValue: Boolean;
    FXMunFim: string;
    FXMunFimHasValue: Boolean;
    FUFFim: string;
    FUFFimHasValue: Boolean;
    FRetira: Integer;
    FRetiraHasValue: Boolean;
    FXDetRetira: string;
    FXDetRetiraHasValue: Boolean;
    FIndIEToma: Integer;
    FIndIETomaHasValue: Boolean;
    FToma3: TCteSefazToma3;
    FToma4: TCteSefazToma4;
    FDhCont: TDateTime;
    FDhContHasValue: Boolean;
    FXJust: string;
    FXJustHasValue: Boolean;
    procedure SetCUF(const Value: Integer);
    procedure SetCCT(const Value: Integer);
    procedure SetCFOP(const Value: Integer);
    procedure SetNatOp(const Value: string);
    procedure SetMod(const Value: Integer);
    procedure SetSerie(const Value: Integer);
    procedure SetNCT(const Value: Integer);
    procedure SetDhEmi(const Value: TDateTime);
    procedure SetTpImp(const Value: Integer);
    procedure SetTpEmis(const Value: Integer);
    procedure SetCDV(const Value: Integer);
    procedure SetTpAmb(const Value: Integer);
    procedure SetTpCTe(const Value: Integer);
    procedure SetProcEmi(const Value: Integer);
    procedure SetVerProc(const Value: string);
    procedure SetIndGlobalizado(const Value: Integer);
    procedure SetCMunEnv(const Value: Integer);
    procedure SetXMunEnv(const Value: string);
    procedure SetUFEnv(const Value: string);
    procedure SetModal(const Value: string);
    procedure SetTpServ(const Value: Integer);
    procedure SetCMunIni(const Value: Integer);
    procedure SetXMunIni(const Value: string);
    procedure SetUFIni(const Value: string);
    procedure SetCMunFim(const Value: Integer);
    procedure SetXMunFim(const Value: string);
    procedure SetUFFim(const Value: string);
    procedure SetRetira(const Value: Integer);
    procedure SetXDetRetira(const Value: string);
    procedure SetIndIEToma(const Value: Integer);
    procedure SetToma3(const Value: TCteSefazToma3);
    procedure SetToma4(const Value: TCteSefazToma4);
    procedure SetDhCont(const Value: TDateTime);
    procedure SetXJust(const Value: string);
  public
    destructor Destroy; override;
    property CUF: Integer read FCUF write SetCUF;
    property CUFHasValue: Boolean read FCUFHasValue write FCUFHasValue;
    property CCT: Integer read FCCT write SetCCT;
    property CCTHasValue: Boolean read FCCTHasValue write FCCTHasValue;
    property CFOP: Integer read FCFOP write SetCFOP;
    property CFOPHasValue: Boolean read FCFOPHasValue write FCFOPHasValue;
    property NatOp: string read FNatOp write SetNatOp;
    property NatOpHasValue: Boolean read FNatOpHasValue write FNatOpHasValue;
    property &Mod: Integer read FMod write SetMod;
    property &ModHasValue: Boolean read FModHasValue write FModHasValue;
    property Serie: Integer read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property NCT: Integer read FNCT write SetNCT;
    property NCTHasValue: Boolean read FNCTHasValue write FNCTHasValue;
    property DhEmi: TDateTime read FDhEmi write SetDhEmi;
    property DhEmiHasValue: Boolean read FDhEmiHasValue write FDhEmiHasValue;
    property TpImp: Integer read FTpImp write SetTpImp;
    property TpImpHasValue: Boolean read FTpImpHasValue write FTpImpHasValue;
    property TpEmis: Integer read FTpEmis write SetTpEmis;
    property TpEmisHasValue: Boolean read FTpEmisHasValue write FTpEmisHasValue;
    property CDV: Integer read FCDV write SetCDV;
    property CDVHasValue: Boolean read FCDVHasValue write FCDVHasValue;
    property TpAmb: Integer read FTpAmb write SetTpAmb;
    property TpAmbHasValue: Boolean read FTpAmbHasValue write FTpAmbHasValue;
    property TpCTe: Integer read FTpCTe write SetTpCTe;
    property TpCTeHasValue: Boolean read FTpCTeHasValue write FTpCTeHasValue;
    property ProcEmi: Integer read FProcEmi write SetProcEmi;
    property ProcEmiHasValue: Boolean read FProcEmiHasValue write FProcEmiHasValue;
    property VerProc: string read FVerProc write SetVerProc;
    property VerProcHasValue: Boolean read FVerProcHasValue write FVerProcHasValue;
    property IndGlobalizado: Integer read FIndGlobalizado write SetIndGlobalizado;
    property IndGlobalizadoHasValue: Boolean read FIndGlobalizadoHasValue write FIndGlobalizadoHasValue;
    property CMunEnv: Integer read FCMunEnv write SetCMunEnv;
    property CMunEnvHasValue: Boolean read FCMunEnvHasValue write FCMunEnvHasValue;
    property XMunEnv: string read FXMunEnv write SetXMunEnv;
    property XMunEnvHasValue: Boolean read FXMunEnvHasValue write FXMunEnvHasValue;
    property UFEnv: string read FUFEnv write SetUFEnv;
    property UFEnvHasValue: Boolean read FUFEnvHasValue write FUFEnvHasValue;
    property Modal: string read FModal write SetModal;
    property ModalHasValue: Boolean read FModalHasValue write FModalHasValue;
    property TpServ: Integer read FTpServ write SetTpServ;
    property TpServHasValue: Boolean read FTpServHasValue write FTpServHasValue;
    property CMunIni: Integer read FCMunIni write SetCMunIni;
    property CMunIniHasValue: Boolean read FCMunIniHasValue write FCMunIniHasValue;
    property XMunIni: string read FXMunIni write SetXMunIni;
    property XMunIniHasValue: Boolean read FXMunIniHasValue write FXMunIniHasValue;
    property UFIni: string read FUFIni write SetUFIni;
    property UFIniHasValue: Boolean read FUFIniHasValue write FUFIniHasValue;
    property CMunFim: Integer read FCMunFim write SetCMunFim;
    property CMunFimHasValue: Boolean read FCMunFimHasValue write FCMunFimHasValue;
    property XMunFim: string read FXMunFim write SetXMunFim;
    property XMunFimHasValue: Boolean read FXMunFimHasValue write FXMunFimHasValue;
    property UFFim: string read FUFFim write SetUFFim;
    property UFFimHasValue: Boolean read FUFFimHasValue write FUFFimHasValue;
    property Retira: Integer read FRetira write SetRetira;
    property RetiraHasValue: Boolean read FRetiraHasValue write FRetiraHasValue;
    property XDetRetira: string read FXDetRetira write SetXDetRetira;
    property XDetRetiraHasValue: Boolean read FXDetRetiraHasValue write FXDetRetiraHasValue;
    property IndIEToma: Integer read FIndIEToma write SetIndIEToma;
    property IndIETomaHasValue: Boolean read FIndIETomaHasValue write FIndIETomaHasValue;
    property Toma3: TCteSefazToma3 read FToma3 write SetToma3;
    property Toma4: TCteSefazToma4 read FToma4 write SetToma4;
    property DhCont: TDateTime read FDhCont write SetDhCont;
    property DhContHasValue: Boolean read FDhContHasValue write FDhContHasValue;
    property XJust: string read FXJust write SetXJust;
    property XJustHasValue: Boolean read FXJustHasValue write FXJustHasValue;
  end;
  
  TCteSefazPass = class
  private
    FXPass: string;
    FXPassHasValue: Boolean;
    procedure SetXPass(const Value: string);
  public
    property XPass: string read FXPass write SetXPass;
    property XPassHasValue: Boolean read FXPassHasValue write FXPassHasValue;
  end;
  
  TCteSefazPassList = class(TObjectList<TCteSefazPass>)
  end;
  
  TCteSefazFluxo = class
  private
    FXOrig: string;
    FXOrigHasValue: Boolean;
    FPass: TCteSefazPassList;
    FXDest: string;
    FXDestHasValue: Boolean;
    FXRota: string;
    FXRotaHasValue: Boolean;
    procedure SetXOrig(const Value: string);
    procedure SetPass(const Value: TCteSefazPassList);
    procedure SetXDest(const Value: string);
    procedure SetXRota(const Value: string);
  public
    destructor Destroy; override;
    property XOrig: string read FXOrig write SetXOrig;
    property XOrigHasValue: Boolean read FXOrigHasValue write FXOrigHasValue;
    property Pass: TCteSefazPassList read FPass write SetPass;
    property XDest: string read FXDest write SetXDest;
    property XDestHasValue: Boolean read FXDestHasValue write FXDestHasValue;
    property XRota: string read FXRota write SetXRota;
    property XRotaHasValue: Boolean read FXRotaHasValue write FXRotaHasValue;
  end;
  
  TCteSefazSemData = class
  private
    FTpPer: Integer;
    FTpPerHasValue: Boolean;
    procedure SetTpPer(const Value: Integer);
  public
    property TpPer: Integer read FTpPer write SetTpPer;
    property TpPerHasValue: Boolean read FTpPerHasValue write FTpPerHasValue;
  end;
  
  TCteSefazComData = class
  private
    FTpPer: Integer;
    FTpPerHasValue: Boolean;
    FDProg: TDate;
    FDProgHasValue: Boolean;
    procedure SetTpPer(const Value: Integer);
    procedure SetDProg(const Value: TDate);
  public
    property TpPer: Integer read FTpPer write SetTpPer;
    property TpPerHasValue: Boolean read FTpPerHasValue write FTpPerHasValue;
    property DProg: TDate read FDProg write SetDProg;
    property DProgHasValue: Boolean read FDProgHasValue write FDProgHasValue;
  end;
  
  TCteSefazNoPeriodo = class
  private
    FTpPer: Integer;
    FTpPerHasValue: Boolean;
    FDIni: TDate;
    FDIniHasValue: Boolean;
    FDFim: TDate;
    FDFimHasValue: Boolean;
    procedure SetTpPer(const Value: Integer);
    procedure SetDIni(const Value: TDate);
    procedure SetDFim(const Value: TDate);
  public
    property TpPer: Integer read FTpPer write SetTpPer;
    property TpPerHasValue: Boolean read FTpPerHasValue write FTpPerHasValue;
    property DIni: TDate read FDIni write SetDIni;
    property DIniHasValue: Boolean read FDIniHasValue write FDIniHasValue;
    property DFim: TDate read FDFim write SetDFim;
    property DFimHasValue: Boolean read FDFimHasValue write FDFimHasValue;
  end;
  
  TCteSefazSemHora = class
  private
    FTpHor: Integer;
    FTpHorHasValue: Boolean;
    procedure SetTpHor(const Value: Integer);
  public
    property TpHor: Integer read FTpHor write SetTpHor;
    property TpHorHasValue: Boolean read FTpHorHasValue write FTpHorHasValue;
  end;
  
  TCteSefazComHora = class
  private
    FTpHor: Integer;
    FTpHorHasValue: Boolean;
    FHProg: string;
    FHProgHasValue: Boolean;
    procedure SetTpHor(const Value: Integer);
    procedure SetHProg(const Value: string);
  public
    property TpHor: Integer read FTpHor write SetTpHor;
    property TpHorHasValue: Boolean read FTpHorHasValue write FTpHorHasValue;
    property HProg: string read FHProg write SetHProg;
    property HProgHasValue: Boolean read FHProgHasValue write FHProgHasValue;
  end;
  
  TCteSefazNoInter = class
  private
    FTpHor: Integer;
    FTpHorHasValue: Boolean;
    FHIni: string;
    FHIniHasValue: Boolean;
    FHFim: string;
    FHFimHasValue: Boolean;
    procedure SetTpHor(const Value: Integer);
    procedure SetHIni(const Value: string);
    procedure SetHFim(const Value: string);
  public
    property TpHor: Integer read FTpHor write SetTpHor;
    property TpHorHasValue: Boolean read FTpHorHasValue write FTpHorHasValue;
    property HIni: string read FHIni write SetHIni;
    property HIniHasValue: Boolean read FHIniHasValue write FHIniHasValue;
    property HFim: string read FHFim write SetHFim;
    property HFimHasValue: Boolean read FHFimHasValue write FHFimHasValue;
  end;
  
  TCteSefazEntrega = class
  private
    FSemData: TCteSefazSemData;
    FComData: TCteSefazComData;
    FNoPeriodo: TCteSefazNoPeriodo;
    FSemHora: TCteSefazSemHora;
    FComHora: TCteSefazComHora;
    FNoInter: TCteSefazNoInter;
    procedure SetSemData(const Value: TCteSefazSemData);
    procedure SetComData(const Value: TCteSefazComData);
    procedure SetNoPeriodo(const Value: TCteSefazNoPeriodo);
    procedure SetSemHora(const Value: TCteSefazSemHora);
    procedure SetComHora(const Value: TCteSefazComHora);
    procedure SetNoInter(const Value: TCteSefazNoInter);
  public
    destructor Destroy; override;
    property SemData: TCteSefazSemData read FSemData write SetSemData;
    property ComData: TCteSefazComData read FComData write SetComData;
    property NoPeriodo: TCteSefazNoPeriodo read FNoPeriodo write SetNoPeriodo;
    property SemHora: TCteSefazSemHora read FSemHora write SetSemHora;
    property ComHora: TCteSefazComHora read FComHora write SetComHora;
    property NoInter: TCteSefazNoInter read FNoInter write SetNoInter;
  end;
  
  TCteSefazObsCont = class
  private
    FXCampo: string;
    FXCampoHasValue: Boolean;
    FXTexto: string;
    FXTextoHasValue: Boolean;
    procedure SetXCampo(const Value: string);
    procedure SetXTexto(const Value: string);
  public
    property XCampo: string read FXCampo write SetXCampo;
    property XCampoHasValue: Boolean read FXCampoHasValue write FXCampoHasValue;
    property XTexto: string read FXTexto write SetXTexto;
    property XTextoHasValue: Boolean read FXTextoHasValue write FXTextoHasValue;
  end;
  
  TCteSefazObsContList = class(TObjectList<TCteSefazObsCont>)
  end;
  
  TCteSefazObsFisco = class
  private
    FXCampo: string;
    FXCampoHasValue: Boolean;
    FXTexto: string;
    FXTextoHasValue: Boolean;
    procedure SetXCampo(const Value: string);
    procedure SetXTexto(const Value: string);
  public
    property XCampo: string read FXCampo write SetXCampo;
    property XCampoHasValue: Boolean read FXCampoHasValue write FXCampoHasValue;
    property XTexto: string read FXTexto write SetXTexto;
    property XTextoHasValue: Boolean read FXTextoHasValue write FXTextoHasValue;
  end;
  
  TCteSefazObsFiscoList = class(TObjectList<TCteSefazObsFisco>)
  end;
  
  TCteSefazCompl = class
  private
    FXCaracAd: string;
    FXCaracAdHasValue: Boolean;
    FXCaracSer: string;
    FXCaracSerHasValue: Boolean;
    FXEmi: string;
    FXEmiHasValue: Boolean;
    FFluxo: TCteSefazFluxo;
    FEntrega: TCteSefazEntrega;
    FOrigCalc: string;
    FOrigCalcHasValue: Boolean;
    FDestCalc: string;
    FDestCalcHasValue: Boolean;
    FXObs: string;
    FXObsHasValue: Boolean;
    FObsCont: TCteSefazObsContList;
    FObsFisco: TCteSefazObsFiscoList;
    procedure SetXCaracAd(const Value: string);
    procedure SetXCaracSer(const Value: string);
    procedure SetXEmi(const Value: string);
    procedure SetFluxo(const Value: TCteSefazFluxo);
    procedure SetEntrega(const Value: TCteSefazEntrega);
    procedure SetOrigCalc(const Value: string);
    procedure SetDestCalc(const Value: string);
    procedure SetXObs(const Value: string);
    procedure SetObsCont(const Value: TCteSefazObsContList);
    procedure SetObsFisco(const Value: TCteSefazObsFiscoList);
  public
    destructor Destroy; override;
    property XCaracAd: string read FXCaracAd write SetXCaracAd;
    property XCaracAdHasValue: Boolean read FXCaracAdHasValue write FXCaracAdHasValue;
    property XCaracSer: string read FXCaracSer write SetXCaracSer;
    property XCaracSerHasValue: Boolean read FXCaracSerHasValue write FXCaracSerHasValue;
    property XEmi: string read FXEmi write SetXEmi;
    property XEmiHasValue: Boolean read FXEmiHasValue write FXEmiHasValue;
    property Fluxo: TCteSefazFluxo read FFluxo write SetFluxo;
    property Entrega: TCteSefazEntrega read FEntrega write SetEntrega;
    property OrigCalc: string read FOrigCalc write SetOrigCalc;
    property OrigCalcHasValue: Boolean read FOrigCalcHasValue write FOrigCalcHasValue;
    property DestCalc: string read FDestCalc write SetDestCalc;
    property DestCalcHasValue: Boolean read FDestCalcHasValue write FDestCalcHasValue;
    property XObs: string read FXObs write SetXObs;
    property XObsHasValue: Boolean read FXObsHasValue write FXObsHasValue;
    property ObsCont: TCteSefazObsContList read FObsCont write SetObsCont;
    property ObsFisco: TCteSefazObsFiscoList read FObsFisco write SetObsFisco;
  end;
  
  TCteSefazEndeEmi = class
  private
    FXLgr: string;
    FXLgrHasValue: Boolean;
    FNro: string;
    FNroHasValue: Boolean;
    FXCpl: string;
    FXCplHasValue: Boolean;
    FXBairro: string;
    FXBairroHasValue: Boolean;
    FCMun: Integer;
    FCMunHasValue: Boolean;
    FXMun: string;
    FXMunHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    procedure SetXLgr(const Value: string);
    procedure SetNro(const Value: string);
    procedure SetXCpl(const Value: string);
    procedure SetXBairro(const Value: string);
    procedure SetCMun(const Value: Integer);
    procedure SetXMun(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetUF(const Value: string);
    procedure SetFone(const Value: string);
  public
    property XLgr: string read FXLgr write SetXLgr;
    property XLgrHasValue: Boolean read FXLgrHasValue write FXLgrHasValue;
    property Nro: string read FNro write SetNro;
    property NroHasValue: Boolean read FNroHasValue write FNroHasValue;
    property XCpl: string read FXCpl write SetXCpl;
    property XCplHasValue: Boolean read FXCplHasValue write FXCplHasValue;
    property XBairro: string read FXBairro write SetXBairro;
    property XBairroHasValue: Boolean read FXBairroHasValue write FXBairroHasValue;
    property CMun: Integer read FCMun write SetCMun;
    property CMunHasValue: Boolean read FCMunHasValue write FCMunHasValue;
    property XMun: string read FXMun write SetXMun;
    property XMunHasValue: Boolean read FXMunHasValue write FXMunHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
  end;
  
  TCteSefazEmit = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FIEST: string;
    FIESTHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FXFant: string;
    FXFantHasValue: Boolean;
    FEnderEmit: TCteSefazEndeEmi;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetIEST(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetXFant(const Value: string);
    procedure SetEnderEmit(const Value: TCteSefazEndeEmi);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property IEST: string read FIEST write SetIEST;
    property IESTHasValue: Boolean read FIESTHasValue write FIESTHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property XFant: string read FXFant write SetXFant;
    property XFantHasValue: Boolean read FXFantHasValue write FXFantHasValue;
    property EnderEmit: TCteSefazEndeEmi read FEnderEmit write SetEnderEmit;
  end;
  
  TCteSefazRem = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FXFant: string;
    FXFantHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FEnderReme: TCteSefazEndereco;
    FEmail: string;
    FEmailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetXFant(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetEnderReme(const Value: TCteSefazEndereco);
    procedure SetEmail(const Value: string);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property XFant: string read FXFant write SetXFant;
    property XFantHasValue: Boolean read FXFantHasValue write FXFantHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property EnderReme: TCteSefazEndereco read FEnderReme write SetEnderReme;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
  end;
  
  TCteSefazExped = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FEnderExped: TCteSefazEndereco;
    FEmail: string;
    FEmailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetEnderExped(const Value: TCteSefazEndereco);
    procedure SetEmail(const Value: string);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property EnderExped: TCteSefazEndereco read FEnderExped write SetEnderExped;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
  end;
  
  TCteSefazReceb = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FEnderReceb: TCteSefazEndereco;
    FEmail: string;
    FEmailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetEnderReceb(const Value: TCteSefazEndereco);
    procedure SetEmail(const Value: string);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property EnderReceb: TCteSefazEndereco read FEnderReceb write SetEnderReceb;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
  end;
  
  TCteSefazDest = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FISUF: string;
    FISUFHasValue: Boolean;
    FEnderDest: TCteSefazEndereco;
    FEmail: string;
    FEmailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetISUF(const Value: string);
    procedure SetEnderDest(const Value: TCteSefazEndereco);
    procedure SetEmail(const Value: string);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property ISUF: string read FISUF write SetISUF;
    property ISUFHasValue: Boolean read FISUFHasValue write FISUFHasValue;
    property EnderDest: TCteSefazEndereco read FEnderDest write SetEnderDest;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
  end;
  
  TCteSefazComp = class
  private
    FXNome: string;
    FXNomeHasValue: Boolean;
    FVComp: Double;
    FVCompHasValue: Boolean;
    procedure SetXNome(const Value: string);
    procedure SetVComp(const Value: Double);
  public
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property VComp: Double read FVComp write SetVComp;
    property VCompHasValue: Boolean read FVCompHasValue write FVCompHasValue;
  end;
  
  TCteSefazCompList = class(TObjectList<TCteSefazComp>)
  end;
  
  TCteSefazVPrest = class
  private
    FVTPrest: Double;
    FVTPrestHasValue: Boolean;
    FVRec: Double;
    FVRecHasValue: Boolean;
    FComp: TCteSefazCompList;
    procedure SetVTPrest(const Value: Double);
    procedure SetVRec(const Value: Double);
    procedure SetComp(const Value: TCteSefazCompList);
  public
    destructor Destroy; override;
    property VTPrest: Double read FVTPrest write SetVTPrest;
    property VTPrestHasValue: Boolean read FVTPrestHasValue write FVTPrestHasValue;
    property VRec: Double read FVRec write SetVRec;
    property VRecHasValue: Boolean read FVRecHasValue write FVRecHasValue;
    property Comp: TCteSefazCompList read FComp write SetComp;
  end;
  
  TCteSefazICMS00 = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPICMS: Double;
    FPICMSHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetVBC(const Value: Double);
    procedure SetPICMS(const Value: Double);
    procedure SetVICMS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PICMS: Double read FPICMS write SetPICMS;
    property PICMSHasValue: Boolean read FPICMSHasValue write FPICMSHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
  end;
  
  TCteSefazICMS20 = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FPRedBC: Double;
    FPRedBCHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPICMS: Double;
    FPICMSHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetPRedBC(const Value: Double);
    procedure SetVBC(const Value: Double);
    procedure SetPICMS(const Value: Double);
    procedure SetVICMS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property PRedBC: Double read FPRedBC write SetPRedBC;
    property PRedBCHasValue: Boolean read FPRedBCHasValue write FPRedBCHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PICMS: Double read FPICMS write SetPICMS;
    property PICMSHasValue: Boolean read FPICMSHasValue write FPICMSHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
  end;
  
  TCteSefazICMS45 = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    procedure SetCST(const Value: string);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
  end;
  
  TCteSefazICMS60 = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FVBCSTRet: Double;
    FVBCSTRetHasValue: Boolean;
    FVICMSSTRet: Double;
    FVICMSSTRetHasValue: Boolean;
    FPICMSSTRet: Double;
    FPICMSSTRetHasValue: Boolean;
    FVCred: Double;
    FVCredHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetVBCSTRet(const Value: Double);
    procedure SetVICMSSTRet(const Value: Double);
    procedure SetPICMSSTRet(const Value: Double);
    procedure SetVCred(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property VBCSTRet: Double read FVBCSTRet write SetVBCSTRet;
    property VBCSTRetHasValue: Boolean read FVBCSTRetHasValue write FVBCSTRetHasValue;
    property VICMSSTRet: Double read FVICMSSTRet write SetVICMSSTRet;
    property VICMSSTRetHasValue: Boolean read FVICMSSTRetHasValue write FVICMSSTRetHasValue;
    property PICMSSTRet: Double read FPICMSSTRet write SetPICMSSTRet;
    property PICMSSTRetHasValue: Boolean read FPICMSSTRetHasValue write FPICMSSTRetHasValue;
    property VCred: Double read FVCred write SetVCred;
    property VCredHasValue: Boolean read FVCredHasValue write FVCredHasValue;
  end;
  
  TCteSefazICMS90 = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FPRedBC: Double;
    FPRedBCHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPICMS: Double;
    FPICMSHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    FVCred: Double;
    FVCredHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetPRedBC(const Value: Double);
    procedure SetVBC(const Value: Double);
    procedure SetPICMS(const Value: Double);
    procedure SetVICMS(const Value: Double);
    procedure SetVCred(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property PRedBC: Double read FPRedBC write SetPRedBC;
    property PRedBCHasValue: Boolean read FPRedBCHasValue write FPRedBCHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PICMS: Double read FPICMS write SetPICMS;
    property PICMSHasValue: Boolean read FPICMSHasValue write FPICMSHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
    property VCred: Double read FVCred write SetVCred;
    property VCredHasValue: Boolean read FVCredHasValue write FVCredHasValue;
  end;
  
  TCteSefazICMSOutraUF = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FPRedBCOutraUF: Double;
    FPRedBCOutraUFHasValue: Boolean;
    FVBCOutraUF: Double;
    FVBCOutraUFHasValue: Boolean;
    FPICMSOutraUF: Double;
    FPICMSOutraUFHasValue: Boolean;
    FVICMSOutraUF: Double;
    FVICMSOutraUFHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetPRedBCOutraUF(const Value: Double);
    procedure SetVBCOutraUF(const Value: Double);
    procedure SetPICMSOutraUF(const Value: Double);
    procedure SetVICMSOutraUF(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property PRedBCOutraUF: Double read FPRedBCOutraUF write SetPRedBCOutraUF;
    property PRedBCOutraUFHasValue: Boolean read FPRedBCOutraUFHasValue write FPRedBCOutraUFHasValue;
    property VBCOutraUF: Double read FVBCOutraUF write SetVBCOutraUF;
    property VBCOutraUFHasValue: Boolean read FVBCOutraUFHasValue write FVBCOutraUFHasValue;
    property PICMSOutraUF: Double read FPICMSOutraUF write SetPICMSOutraUF;
    property PICMSOutraUFHasValue: Boolean read FPICMSOutraUFHasValue write FPICMSOutraUFHasValue;
    property VICMSOutraUF: Double read FVICMSOutraUF write SetVICMSOutraUF;
    property VICMSOutraUFHasValue: Boolean read FVICMSOutraUFHasValue write FVICMSOutraUFHasValue;
  end;
  
  TCteSefazICMSSN = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FIndSN: Integer;
    FIndSNHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetIndSN(const Value: Integer);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property IndSN: Integer read FIndSN write SetIndSN;
    property IndSNHasValue: Boolean read FIndSNHasValue write FIndSNHasValue;
  end;
  
  TCteSefazImp = class
  private
    FICMS00: TCteSefazICMS00;
    FICMS20: TCteSefazICMS20;
    FICMS45: TCteSefazICMS45;
    FICMS60: TCteSefazICMS60;
    FICMS90: TCteSefazICMS90;
    FICMSOutraUF: TCteSefazICMSOutraUF;
    FICMSSN: TCteSefazICMSSN;
    procedure SetICMS00(const Value: TCteSefazICMS00);
    procedure SetICMS20(const Value: TCteSefazICMS20);
    procedure SetICMS45(const Value: TCteSefazICMS45);
    procedure SetICMS60(const Value: TCteSefazICMS60);
    procedure SetICMS90(const Value: TCteSefazICMS90);
    procedure SetICMSOutraUF(const Value: TCteSefazICMSOutraUF);
    procedure SetICMSSN(const Value: TCteSefazICMSSN);
  public
    destructor Destroy; override;
    property ICMS00: TCteSefazICMS00 read FICMS00 write SetICMS00;
    property ICMS20: TCteSefazICMS20 read FICMS20 write SetICMS20;
    property ICMS45: TCteSefazICMS45 read FICMS45 write SetICMS45;
    property ICMS60: TCteSefazICMS60 read FICMS60 write SetICMS60;
    property ICMS90: TCteSefazICMS90 read FICMS90 write SetICMS90;
    property ICMSOutraUF: TCteSefazICMSOutraUF read FICMSOutraUF write SetICMSOutraUF;
    property ICMSSN: TCteSefazICMSSN read FICMSSN write SetICMSSN;
  end;
  
  TCteSefazICMSUFFim = class
  private
    FVBCUFFim: Double;
    FVBCUFFimHasValue: Boolean;
    FPFCPUFFim: Double;
    FPFCPUFFimHasValue: Boolean;
    FPICMSUFFim: Double;
    FPICMSUFFimHasValue: Boolean;
    FPICMSInter: Double;
    FPICMSInterHasValue: Boolean;
    FVFCPUFFim: Double;
    FVFCPUFFimHasValue: Boolean;
    FVICMSUFFim: Double;
    FVICMSUFFimHasValue: Boolean;
    FVICMSUFIni: Double;
    FVICMSUFIniHasValue: Boolean;
    procedure SetVBCUFFim(const Value: Double);
    procedure SetPFCPUFFim(const Value: Double);
    procedure SetPICMSUFFim(const Value: Double);
    procedure SetPICMSInter(const Value: Double);
    procedure SetVFCPUFFim(const Value: Double);
    procedure SetVICMSUFFim(const Value: Double);
    procedure SetVICMSUFIni(const Value: Double);
  public
    property VBCUFFim: Double read FVBCUFFim write SetVBCUFFim;
    property VBCUFFimHasValue: Boolean read FVBCUFFimHasValue write FVBCUFFimHasValue;
    property PFCPUFFim: Double read FPFCPUFFim write SetPFCPUFFim;
    property PFCPUFFimHasValue: Boolean read FPFCPUFFimHasValue write FPFCPUFFimHasValue;
    property PICMSUFFim: Double read FPICMSUFFim write SetPICMSUFFim;
    property PICMSUFFimHasValue: Boolean read FPICMSUFFimHasValue write FPICMSUFFimHasValue;
    property PICMSInter: Double read FPICMSInter write SetPICMSInter;
    property PICMSInterHasValue: Boolean read FPICMSInterHasValue write FPICMSInterHasValue;
    property VFCPUFFim: Double read FVFCPUFFim write SetVFCPUFFim;
    property VFCPUFFimHasValue: Boolean read FVFCPUFFimHasValue write FVFCPUFFimHasValue;
    property VICMSUFFim: Double read FVICMSUFFim write SetVICMSUFFim;
    property VICMSUFFimHasValue: Boolean read FVICMSUFFimHasValue write FVICMSUFFimHasValue;
    property VICMSUFIni: Double read FVICMSUFIni write SetVICMSUFIni;
    property VICMSUFIniHasValue: Boolean read FVICMSUFIniHasValue write FVICMSUFIniHasValue;
  end;
  
  TCteSefazInfCteImp = class
  private
    FICMS: TCteSefazImp;
    FVTotTrib: Double;
    FVTotTribHasValue: Boolean;
    FInfAdFisco: string;
    FInfAdFiscoHasValue: Boolean;
    FICMSUFFim: TCteSefazICMSUFFim;
    procedure SetICMS(const Value: TCteSefazImp);
    procedure SetVTotTrib(const Value: Double);
    procedure SetInfAdFisco(const Value: string);
    procedure SetICMSUFFim(const Value: TCteSefazICMSUFFim);
  public
    destructor Destroy; override;
    property ICMS: TCteSefazImp read FICMS write SetICMS;
    property VTotTrib: Double read FVTotTrib write SetVTotTrib;
    property VTotTribHasValue: Boolean read FVTotTribHasValue write FVTotTribHasValue;
    property InfAdFisco: string read FInfAdFisco write SetInfAdFisco;
    property InfAdFiscoHasValue: Boolean read FInfAdFiscoHasValue write FInfAdFiscoHasValue;
    property ICMSUFFim: TCteSefazICMSUFFim read FICMSUFFim write SetICMSUFFim;
  end;
  
  TCteSefazInfQ = class
  private
    FCUnid: string;
    FCUnidHasValue: Boolean;
    FTpMed: string;
    FTpMedHasValue: Boolean;
    FQCarga: Double;
    FQCargaHasValue: Boolean;
    procedure SetCUnid(const Value: string);
    procedure SetTpMed(const Value: string);
    procedure SetQCarga(const Value: Double);
  public
    property CUnid: string read FCUnid write SetCUnid;
    property CUnidHasValue: Boolean read FCUnidHasValue write FCUnidHasValue;
    property TpMed: string read FTpMed write SetTpMed;
    property TpMedHasValue: Boolean read FTpMedHasValue write FTpMedHasValue;
    property QCarga: Double read FQCarga write SetQCarga;
    property QCargaHasValue: Boolean read FQCargaHasValue write FQCargaHasValue;
  end;
  
  TCteSefazInfQList = class(TObjectList<TCteSefazInfQ>)
  end;
  
  TCteSefazInfCarga = class
  private
    FVCarga: Double;
    FVCargaHasValue: Boolean;
    FProPred: string;
    FProPredHasValue: Boolean;
    FXOutCat: string;
    FXOutCatHasValue: Boolean;
    FInfQ: TCteSefazInfQList;
    FVCargaAverb: Double;
    FVCargaAverbHasValue: Boolean;
    procedure SetVCarga(const Value: Double);
    procedure SetProPred(const Value: string);
    procedure SetXOutCat(const Value: string);
    procedure SetInfQ(const Value: TCteSefazInfQList);
    procedure SetVCargaAverb(const Value: Double);
  public
    destructor Destroy; override;
    property VCarga: Double read FVCarga write SetVCarga;
    property VCargaHasValue: Boolean read FVCargaHasValue write FVCargaHasValue;
    property ProPred: string read FProPred write SetProPred;
    property ProPredHasValue: Boolean read FProPredHasValue write FProPredHasValue;
    property XOutCat: string read FXOutCat write SetXOutCat;
    property XOutCatHasValue: Boolean read FXOutCatHasValue write FXOutCatHasValue;
    property InfQ: TCteSefazInfQList read FInfQ write SetInfQ;
    property VCargaAverb: Double read FVCargaAverb write SetVCargaAverb;
    property VCargaAverbHasValue: Boolean read FVCargaAverbHasValue write FVCargaAverbHasValue;
  end;
  
  TCteSefazLacUnidCarga = class
  private
    FNLacre: string;
    FNLacreHasValue: Boolean;
    procedure SetNLacre(const Value: string);
  public
    property NLacre: string read FNLacre write SetNLacre;
    property NLacreHasValue: Boolean read FNLacreHasValue write FNLacreHasValue;
  end;
  
  TCteSefazLacUnidCargaList = class(TObjectList<TCteSefazLacUnidCarga>)
  end;
  
  TCteSefazUnidCarga = class
  private
    FTpUnidCarga: Integer;
    FTpUnidCargaHasValue: Boolean;
    FIdUnidCarga: string;
    FIdUnidCargaHasValue: Boolean;
    FLacUnidCarga: TCteSefazLacUnidCargaList;
    FQtdRat: Double;
    FQtdRatHasValue: Boolean;
    procedure SetTpUnidCarga(const Value: Integer);
    procedure SetIdUnidCarga(const Value: string);
    procedure SetLacUnidCarga(const Value: TCteSefazLacUnidCargaList);
    procedure SetQtdRat(const Value: Double);
  public
    destructor Destroy; override;
    property TpUnidCarga: Integer read FTpUnidCarga write SetTpUnidCarga;
    property TpUnidCargaHasValue: Boolean read FTpUnidCargaHasValue write FTpUnidCargaHasValue;
    property IdUnidCarga: string read FIdUnidCarga write SetIdUnidCarga;
    property IdUnidCargaHasValue: Boolean read FIdUnidCargaHasValue write FIdUnidCargaHasValue;
    property LacUnidCarga: TCteSefazLacUnidCargaList read FLacUnidCarga write SetLacUnidCarga;
    property QtdRat: Double read FQtdRat write SetQtdRat;
    property QtdRatHasValue: Boolean read FQtdRatHasValue write FQtdRatHasValue;
  end;
  
  TCteSefazUnidCargaList = class(TObjectList<TCteSefazUnidCarga>)
  end;
  
  TCteSefazLacUnidTransp = class
  private
    FNLacre: string;
    FNLacreHasValue: Boolean;
    procedure SetNLacre(const Value: string);
  public
    property NLacre: string read FNLacre write SetNLacre;
    property NLacreHasValue: Boolean read FNLacreHasValue write FNLacreHasValue;
  end;
  
  TCteSefazLacUnidTranspList = class(TObjectList<TCteSefazLacUnidTransp>)
  end;
  
  TCteSefazUnidadeTransp = class
  private
    FTpUnidTransp: Integer;
    FTpUnidTranspHasValue: Boolean;
    FIdUnidTransp: string;
    FIdUnidTranspHasValue: Boolean;
    FLacUnidTransp: TCteSefazLacUnidTranspList;
    FInfUnidCarga: TCteSefazUnidCargaList;
    FQtdRat: Double;
    FQtdRatHasValue: Boolean;
    procedure SetTpUnidTransp(const Value: Integer);
    procedure SetIdUnidTransp(const Value: string);
    procedure SetLacUnidTransp(const Value: TCteSefazLacUnidTranspList);
    procedure SetInfUnidCarga(const Value: TCteSefazUnidCargaList);
    procedure SetQtdRat(const Value: Double);
  public
    destructor Destroy; override;
    property TpUnidTransp: Integer read FTpUnidTransp write SetTpUnidTransp;
    property TpUnidTranspHasValue: Boolean read FTpUnidTranspHasValue write FTpUnidTranspHasValue;
    property IdUnidTransp: string read FIdUnidTransp write SetIdUnidTransp;
    property IdUnidTranspHasValue: Boolean read FIdUnidTranspHasValue write FIdUnidTranspHasValue;
    property LacUnidTransp: TCteSefazLacUnidTranspList read FLacUnidTransp write SetLacUnidTransp;
    property InfUnidCarga: TCteSefazUnidCargaList read FInfUnidCarga write SetInfUnidCarga;
    property QtdRat: Double read FQtdRat write SetQtdRat;
    property QtdRatHasValue: Boolean read FQtdRatHasValue write FQtdRatHasValue;
  end;
  
  TCteSefazUnidadeTranspList = class(TObjectList<TCteSefazUnidadeTransp>)
  end;
  
  TCteSefazInfNF = class
  private
    FNRoma: string;
    FNRomaHasValue: Boolean;
    FNPed: string;
    FNPedHasValue: Boolean;
    FMod: string;
    FModHasValue: Boolean;
    FSerie: string;
    FSerieHasValue: Boolean;
    FNDoc: string;
    FNDocHasValue: Boolean;
    FDEmi: TDate;
    FDEmiHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    FVBCST: Double;
    FVBCSTHasValue: Boolean;
    FVST: Double;
    FVSTHasValue: Boolean;
    FVProd: Double;
    FVProdHasValue: Boolean;
    FVNF: Double;
    FVNFHasValue: Boolean;
    FNCFOP: Integer;
    FNCFOPHasValue: Boolean;
    FNPeso: Double;
    FNPesoHasValue: Boolean;
    FPIN: string;
    FPINHasValue: Boolean;
    FDPrev: TDate;
    FDPrevHasValue: Boolean;
    FInfUnidCarga: TCteSefazUnidCargaList;
    FInfUnidTransp: TCteSefazUnidadeTranspList;
    procedure SetNRoma(const Value: string);
    procedure SetNPed(const Value: string);
    procedure SetMod(const Value: string);
    procedure SetSerie(const Value: string);
    procedure SetNDoc(const Value: string);
    procedure SetDEmi(const Value: TDate);
    procedure SetVBC(const Value: Double);
    procedure SetVICMS(const Value: Double);
    procedure SetVBCST(const Value: Double);
    procedure SetVST(const Value: Double);
    procedure SetVProd(const Value: Double);
    procedure SetVNF(const Value: Double);
    procedure SetNCFOP(const Value: Integer);
    procedure SetNPeso(const Value: Double);
    procedure SetPIN(const Value: string);
    procedure SetDPrev(const Value: TDate);
    procedure SetInfUnidCarga(const Value: TCteSefazUnidCargaList);
    procedure SetInfUnidTransp(const Value: TCteSefazUnidadeTranspList);
  public
    destructor Destroy; override;
    property NRoma: string read FNRoma write SetNRoma;
    property NRomaHasValue: Boolean read FNRomaHasValue write FNRomaHasValue;
    property NPed: string read FNPed write SetNPed;
    property NPedHasValue: Boolean read FNPedHasValue write FNPedHasValue;
    property &Mod: string read FMod write SetMod;
    property &ModHasValue: Boolean read FModHasValue write FModHasValue;
    property Serie: string read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property NDoc: string read FNDoc write SetNDoc;
    property NDocHasValue: Boolean read FNDocHasValue write FNDocHasValue;
    property DEmi: TDate read FDEmi write SetDEmi;
    property DEmiHasValue: Boolean read FDEmiHasValue write FDEmiHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
    property VBCST: Double read FVBCST write SetVBCST;
    property VBCSTHasValue: Boolean read FVBCSTHasValue write FVBCSTHasValue;
    property VST: Double read FVST write SetVST;
    property VSTHasValue: Boolean read FVSTHasValue write FVSTHasValue;
    property VProd: Double read FVProd write SetVProd;
    property VProdHasValue: Boolean read FVProdHasValue write FVProdHasValue;
    property VNF: Double read FVNF write SetVNF;
    property VNFHasValue: Boolean read FVNFHasValue write FVNFHasValue;
    property NCFOP: Integer read FNCFOP write SetNCFOP;
    property NCFOPHasValue: Boolean read FNCFOPHasValue write FNCFOPHasValue;
    property NPeso: Double read FNPeso write SetNPeso;
    property NPesoHasValue: Boolean read FNPesoHasValue write FNPesoHasValue;
    property PIN: string read FPIN write SetPIN;
    property PINHasValue: Boolean read FPINHasValue write FPINHasValue;
    property DPrev: TDate read FDPrev write SetDPrev;
    property DPrevHasValue: Boolean read FDPrevHasValue write FDPrevHasValue;
    property InfUnidCarga: TCteSefazUnidCargaList read FInfUnidCarga write SetInfUnidCarga;
    property InfUnidTransp: TCteSefazUnidadeTranspList read FInfUnidTransp write SetInfUnidTransp;
  end;
  
  TCteSefazInfNFList = class(TObjectList<TCteSefazInfNF>)
  end;
  
  TCteSefazInfNFe = class
  private
    FChave: string;
    FChaveHasValue: Boolean;
    FPIN: string;
    FPINHasValue: Boolean;
    FDPrev: TDate;
    FDPrevHasValue: Boolean;
    FInfUnidCarga: TCteSefazUnidCargaList;
    FInfUnidTransp: TCteSefazUnidadeTranspList;
    procedure SetChave(const Value: string);
    procedure SetPIN(const Value: string);
    procedure SetDPrev(const Value: TDate);
    procedure SetInfUnidCarga(const Value: TCteSefazUnidCargaList);
    procedure SetInfUnidTransp(const Value: TCteSefazUnidadeTranspList);
  public
    destructor Destroy; override;
    property Chave: string read FChave write SetChave;
    property ChaveHasValue: Boolean read FChaveHasValue write FChaveHasValue;
    property PIN: string read FPIN write SetPIN;
    property PINHasValue: Boolean read FPINHasValue write FPINHasValue;
    property DPrev: TDate read FDPrev write SetDPrev;
    property DPrevHasValue: Boolean read FDPrevHasValue write FDPrevHasValue;
    property InfUnidCarga: TCteSefazUnidCargaList read FInfUnidCarga write SetInfUnidCarga;
    property InfUnidTransp: TCteSefazUnidadeTranspList read FInfUnidTransp write SetInfUnidTransp;
  end;
  
  TCteSefazInfNFeList = class(TObjectList<TCteSefazInfNFe>)
  end;
  
  TCteSefazInfOutros = class
  private
    FTpDoc: string;
    FTpDocHasValue: Boolean;
    FDescOutros: string;
    FDescOutrosHasValue: Boolean;
    FNDoc: string;
    FNDocHasValue: Boolean;
    FDEmi: TDate;
    FDEmiHasValue: Boolean;
    FVDocFisc: Double;
    FVDocFiscHasValue: Boolean;
    FDPrev: TDate;
    FDPrevHasValue: Boolean;
    FInfUnidCarga: TCteSefazUnidCargaList;
    FInfUnidTransp: TCteSefazUnidadeTranspList;
    procedure SetTpDoc(const Value: string);
    procedure SetDescOutros(const Value: string);
    procedure SetNDoc(const Value: string);
    procedure SetDEmi(const Value: TDate);
    procedure SetVDocFisc(const Value: Double);
    procedure SetDPrev(const Value: TDate);
    procedure SetInfUnidCarga(const Value: TCteSefazUnidCargaList);
    procedure SetInfUnidTransp(const Value: TCteSefazUnidadeTranspList);
  public
    destructor Destroy; override;
    property TpDoc: string read FTpDoc write SetTpDoc;
    property TpDocHasValue: Boolean read FTpDocHasValue write FTpDocHasValue;
    property DescOutros: string read FDescOutros write SetDescOutros;
    property DescOutrosHasValue: Boolean read FDescOutrosHasValue write FDescOutrosHasValue;
    property NDoc: string read FNDoc write SetNDoc;
    property NDocHasValue: Boolean read FNDocHasValue write FNDocHasValue;
    property DEmi: TDate read FDEmi write SetDEmi;
    property DEmiHasValue: Boolean read FDEmiHasValue write FDEmiHasValue;
    property VDocFisc: Double read FVDocFisc write SetVDocFisc;
    property VDocFiscHasValue: Boolean read FVDocFiscHasValue write FVDocFiscHasValue;
    property DPrev: TDate read FDPrev write SetDPrev;
    property DPrevHasValue: Boolean read FDPrevHasValue write FDPrevHasValue;
    property InfUnidCarga: TCteSefazUnidCargaList read FInfUnidCarga write SetInfUnidCarga;
    property InfUnidTransp: TCteSefazUnidadeTranspList read FInfUnidTransp write SetInfUnidTransp;
  end;
  
  TCteSefazInfOutrosList = class(TObjectList<TCteSefazInfOutros>)
  end;
  
  TCteSefazInfDoc = class
  private
    FInfNF: TCteSefazInfNFList;
    FInfNFe: TCteSefazInfNFeList;
    FInfOutros: TCteSefazInfOutrosList;
    procedure SetInfNF(const Value: TCteSefazInfNFList);
    procedure SetInfNFe(const Value: TCteSefazInfNFeList);
    procedure SetInfOutros(const Value: TCteSefazInfOutrosList);
  public
    destructor Destroy; override;
    property InfNF: TCteSefazInfNFList read FInfNF write SetInfNF;
    property InfNFe: TCteSefazInfNFeList read FInfNFe write SetInfNFe;
    property InfOutros: TCteSefazInfOutrosList read FInfOutros write SetInfOutros;
  end;
  
  TCteSefazIdDocAntPap = class
  private
    FTpDoc: string;
    FTpDocHasValue: Boolean;
    FSerie: string;
    FSerieHasValue: Boolean;
    FSubser: string;
    FSubserHasValue: Boolean;
    FNDoc: string;
    FNDocHasValue: Boolean;
    FDEmi: TDate;
    FDEmiHasValue: Boolean;
    procedure SetTpDoc(const Value: string);
    procedure SetSerie(const Value: string);
    procedure SetSubser(const Value: string);
    procedure SetNDoc(const Value: string);
    procedure SetDEmi(const Value: TDate);
  public
    property TpDoc: string read FTpDoc write SetTpDoc;
    property TpDocHasValue: Boolean read FTpDocHasValue write FTpDocHasValue;
    property Serie: string read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property Subser: string read FSubser write SetSubser;
    property SubserHasValue: Boolean read FSubserHasValue write FSubserHasValue;
    property NDoc: string read FNDoc write SetNDoc;
    property NDocHasValue: Boolean read FNDocHasValue write FNDocHasValue;
    property DEmi: TDate read FDEmi write SetDEmi;
    property DEmiHasValue: Boolean read FDEmiHasValue write FDEmiHasValue;
  end;
  
  TCteSefazIdDocAntPapList = class(TObjectList<TCteSefazIdDocAntPap>)
  end;
  
  TCteSefazIdDocAntEle = class
  private
    FChCTe: string;
    FChCTeHasValue: Boolean;
    procedure SetChCTe(const Value: string);
  public
    property ChCTe: string read FChCTe write SetChCTe;
    property ChCTeHasValue: Boolean read FChCTeHasValue write FChCTeHasValue;
  end;
  
  TCteSefazIdDocAntEleList = class(TObjectList<TCteSefazIdDocAntEle>)
  end;
  
  TCteSefazIdDocAnt = class
  private
    FIdDocAntPap: TCteSefazIdDocAntPapList;
    FIdDocAntEle: TCteSefazIdDocAntEleList;
    procedure SetIdDocAntPap(const Value: TCteSefazIdDocAntPapList);
    procedure SetIdDocAntEle(const Value: TCteSefazIdDocAntEleList);
  public
    destructor Destroy; override;
    property IdDocAntPap: TCteSefazIdDocAntPapList read FIdDocAntPap write SetIdDocAntPap;
    property IdDocAntEle: TCteSefazIdDocAntEleList read FIdDocAntEle write SetIdDocAntEle;
  end;
  
  TCteSefazIdDocAntList = class(TObjectList<TCteSefazIdDocAnt>)
  end;
  
  TCteSefazEmiDocAnt = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FIdDocAnt: TCteSefazIdDocAntList;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetIdDocAnt(const Value: TCteSefazIdDocAntList);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property IdDocAnt: TCteSefazIdDocAntList read FIdDocAnt write SetIdDocAnt;
  end;
  
  TCteSefazEmiDocAntList = class(TObjectList<TCteSefazEmiDocAnt>)
  end;
  
  TCteSefazDocAnt = class
  private
    FEmiDocAnt: TCteSefazEmiDocAntList;
    procedure SetEmiDocAnt(const Value: TCteSefazEmiDocAntList);
  public
    destructor Destroy; override;
    property EmiDocAnt: TCteSefazEmiDocAntList read FEmiDocAnt write SetEmiDocAnt;
  end;
  
  TCteSefazEmiOcc = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCInt: string;
    FCIntHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCInt(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetFone(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CInt: string read FCInt write SetCInt;
    property CIntHasValue: Boolean read FCIntHasValue write FCIntHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
  end;
  
  TCteSefazOcc = class
  private
    FSerie: string;
    FSerieHasValue: Boolean;
    FNOcc: Integer;
    FNOccHasValue: Boolean;
    FDEmi: TDate;
    FDEmiHasValue: Boolean;
    FEmiOcc: TCteSefazEmiOcc;
    procedure SetSerie(const Value: string);
    procedure SetNOcc(const Value: Integer);
    procedure SetDEmi(const Value: TDate);
    procedure SetEmiOcc(const Value: TCteSefazEmiOcc);
  public
    destructor Destroy; override;
    property Serie: string read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property NOcc: Integer read FNOcc write SetNOcc;
    property NOccHasValue: Boolean read FNOccHasValue write FNOccHasValue;
    property DEmi: TDate read FDEmi write SetDEmi;
    property DEmiHasValue: Boolean read FDEmiHasValue write FDEmiHasValue;
    property EmiOcc: TCteSefazEmiOcc read FEmiOcc write SetEmiOcc;
  end;
  
  TCteSefazOccList = class(TObjectList<TCteSefazOcc>)
  end;
  
  TCteSefazRodo = class
  private
    FRNTRC: string;
    FRNTRCHasValue: Boolean;
    FOcc: TCteSefazOccList;
    procedure SetRNTRC(const Value: string);
    procedure SetOcc(const Value: TCteSefazOccList);
  public
    destructor Destroy; override;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRCHasValue: Boolean read FRNTRCHasValue write FRNTRCHasValue;
    property Occ: TCteSefazOccList read FOcc write SetOcc;
  end;
  
  stringList = class(TList<string>)
  end;
  
  TCteSefazNatCarga = class
  private
    FXDime: string;
    FXDimeHasValue: Boolean;
    FCInfManu: stringList;
    procedure SetXDime(const Value: string);
    procedure SetCInfManu(const Value: stringList);
  public
    destructor Destroy; override;
    property XDime: string read FXDime write SetXDime;
    property XDimeHasValue: Boolean read FXDimeHasValue write FXDimeHasValue;
    property CInfManu: stringList read FCInfManu write SetCInfManu;
  end;
  
  TCteSefazTarifa = class
  private
    FCL: string;
    FCLHasValue: Boolean;
    FCTar: string;
    FCTarHasValue: Boolean;
    FVTar: Double;
    FVTarHasValue: Boolean;
    procedure SetCL(const Value: string);
    procedure SetCTar(const Value: string);
    procedure SetVTar(const Value: Double);
  public
    property CL: string read FCL write SetCL;
    property CLHasValue: Boolean read FCLHasValue write FCLHasValue;
    property CTar: string read FCTar write SetCTar;
    property CTarHasValue: Boolean read FCTarHasValue write FCTarHasValue;
    property VTar: Double read FVTar write SetVTar;
    property VTarHasValue: Boolean read FVTarHasValue write FVTarHasValue;
  end;
  
  TCteSefazInfTotAP = class
  private
    FQTotProd: Double;
    FQTotProdHasValue: Boolean;
    FUniAP: Integer;
    FUniAPHasValue: Boolean;
    procedure SetQTotProd(const Value: Double);
    procedure SetUniAP(const Value: Integer);
  public
    property QTotProd: Double read FQTotProd write SetQTotProd;
    property QTotProdHasValue: Boolean read FQTotProdHasValue write FQTotProdHasValue;
    property UniAP: Integer read FUniAP write SetUniAP;
    property UniAPHasValue: Boolean read FUniAPHasValue write FUniAPHasValue;
  end;
  
  TCteSefazPeri = class
  private
    FNONU: string;
    FNONUHasValue: Boolean;
    FQTotEmb: string;
    FQTotEmbHasValue: Boolean;
    FInfTotAP: TCteSefazInfTotAP;
    procedure SetNONU(const Value: string);
    procedure SetQTotEmb(const Value: string);
    procedure SetInfTotAP(const Value: TCteSefazInfTotAP);
  public
    destructor Destroy; override;
    property NONU: string read FNONU write SetNONU;
    property NONUHasValue: Boolean read FNONUHasValue write FNONUHasValue;
    property QTotEmb: string read FQTotEmb write SetQTotEmb;
    property QTotEmbHasValue: Boolean read FQTotEmbHasValue write FQTotEmbHasValue;
    property InfTotAP: TCteSefazInfTotAP read FInfTotAP write SetInfTotAP;
  end;
  
  TCteSefazPeriList = class(TObjectList<TCteSefazPeri>)
  end;
  
  TCteSefazAereo = class
  private
    FNMinu: Integer;
    FNMinuHasValue: Boolean;
    FNOCA: string;
    FNOCAHasValue: Boolean;
    FDPrevAereo: TDate;
    FDPrevAereoHasValue: Boolean;
    FNatCarga: TCteSefazNatCarga;
    FTarifa: TCteSefazTarifa;
    FPeri: TCteSefazPeriList;
    procedure SetNMinu(const Value: Integer);
    procedure SetNOCA(const Value: string);
    procedure SetDPrevAereo(const Value: TDate);
    procedure SetNatCarga(const Value: TCteSefazNatCarga);
    procedure SetTarifa(const Value: TCteSefazTarifa);
    procedure SetPeri(const Value: TCteSefazPeriList);
  public
    destructor Destroy; override;
    property NMinu: Integer read FNMinu write SetNMinu;
    property NMinuHasValue: Boolean read FNMinuHasValue write FNMinuHasValue;
    property NOCA: string read FNOCA write SetNOCA;
    property NOCAHasValue: Boolean read FNOCAHasValue write FNOCAHasValue;
    property DPrevAereo: TDate read FDPrevAereo write SetDPrevAereo;
    property DPrevAereoHasValue: Boolean read FDPrevAereoHasValue write FDPrevAereoHasValue;
    property NatCarga: TCteSefazNatCarga read FNatCarga write SetNatCarga;
    property Tarifa: TCteSefazTarifa read FTarifa write SetTarifa;
    property Peri: TCteSefazPeriList read FPeri write SetPeri;
  end;
  
  TCteSefazEnderFer = class
  private
    FXLgr: string;
    FXLgrHasValue: Boolean;
    FNro: string;
    FNroHasValue: Boolean;
    FXCpl: string;
    FXCplHasValue: Boolean;
    FXBairro: string;
    FXBairroHasValue: Boolean;
    FCMun: Integer;
    FCMunHasValue: Boolean;
    FXMun: string;
    FXMunHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    procedure SetXLgr(const Value: string);
    procedure SetNro(const Value: string);
    procedure SetXCpl(const Value: string);
    procedure SetXBairro(const Value: string);
    procedure SetCMun(const Value: Integer);
    procedure SetXMun(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetUF(const Value: string);
  public
    property XLgr: string read FXLgr write SetXLgr;
    property XLgrHasValue: Boolean read FXLgrHasValue write FXLgrHasValue;
    property Nro: string read FNro write SetNro;
    property NroHasValue: Boolean read FNroHasValue write FNroHasValue;
    property XCpl: string read FXCpl write SetXCpl;
    property XCplHasValue: Boolean read FXCplHasValue write FXCplHasValue;
    property XBairro: string read FXBairro write SetXBairro;
    property XBairroHasValue: Boolean read FXBairroHasValue write FXBairroHasValue;
    property CMun: Integer read FCMun write SetCMun;
    property CMunHasValue: Boolean read FCMunHasValue write FCMunHasValue;
    property XMun: string read FXMun write SetXMun;
    property XMunHasValue: Boolean read FXMunHasValue write FXMunHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
  end;
  
  TCteSefazFerroEnv = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCInt: string;
    FCIntHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FEnderFerro: TCteSefazEnderFer;
    procedure SetCNPJ(const Value: string);
    procedure SetCInt(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetEnderFerro(const Value: TCteSefazEnderFer);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CInt: string read FCInt write SetCInt;
    property CIntHasValue: Boolean read FCIntHasValue write FCIntHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property EnderFerro: TCteSefazEnderFer read FEnderFerro write SetEnderFerro;
  end;
  
  TCteSefazFerroEnvList = class(TObjectList<TCteSefazFerroEnv>)
  end;
  
  TCteSefazTrafMut = class
  private
    FRespFat: Integer;
    FRespFatHasValue: Boolean;
    FFerrEmi: Integer;
    FFerrEmiHasValue: Boolean;
    FVFrete: Double;
    FVFreteHasValue: Boolean;
    FChCTeFerroOrigem: string;
    FChCTeFerroOrigemHasValue: Boolean;
    FFerroEnv: TCteSefazFerroEnvList;
    procedure SetRespFat(const Value: Integer);
    procedure SetFerrEmi(const Value: Integer);
    procedure SetVFrete(const Value: Double);
    procedure SetChCTeFerroOrigem(const Value: string);
    procedure SetFerroEnv(const Value: TCteSefazFerroEnvList);
  public
    destructor Destroy; override;
    property RespFat: Integer read FRespFat write SetRespFat;
    property RespFatHasValue: Boolean read FRespFatHasValue write FRespFatHasValue;
    property FerrEmi: Integer read FFerrEmi write SetFerrEmi;
    property FerrEmiHasValue: Boolean read FFerrEmiHasValue write FFerrEmiHasValue;
    property VFrete: Double read FVFrete write SetVFrete;
    property VFreteHasValue: Boolean read FVFreteHasValue write FVFreteHasValue;
    property ChCTeFerroOrigem: string read FChCTeFerroOrigem write SetChCTeFerroOrigem;
    property ChCTeFerroOrigemHasValue: Boolean read FChCTeFerroOrigemHasValue write FChCTeFerroOrigemHasValue;
    property FerroEnv: TCteSefazFerroEnvList read FFerroEnv write SetFerroEnv;
  end;
  
  TCteSefazFerrov = class
  private
    FTpTraf: Integer;
    FTpTrafHasValue: Boolean;
    FTrafMut: TCteSefazTrafMut;
    FFluxo: string;
    FFluxoHasValue: Boolean;
    procedure SetTpTraf(const Value: Integer);
    procedure SetTrafMut(const Value: TCteSefazTrafMut);
    procedure SetFluxo(const Value: string);
  public
    destructor Destroy; override;
    property TpTraf: Integer read FTpTraf write SetTpTraf;
    property TpTrafHasValue: Boolean read FTpTrafHasValue write FTpTrafHasValue;
    property TrafMut: TCteSefazTrafMut read FTrafMut write SetTrafMut;
    property Fluxo: string read FFluxo write SetFluxo;
    property FluxoHasValue: Boolean read FFluxoHasValue write FFluxoHasValue;
  end;
  
  TCteSefazBalsa = class
  private
    FXBalsa: string;
    FXBalsaHasValue: Boolean;
    procedure SetXBalsa(const Value: string);
  public
    property XBalsa: string read FXBalsa write SetXBalsa;
    property XBalsaHasValue: Boolean read FXBalsaHasValue write FXBalsaHasValue;
  end;
  
  TCteSefazBalsaList = class(TObjectList<TCteSefazBalsa>)
  end;
  
  TCteSefazLacre = class
  private
    FNLacre: string;
    FNLacreHasValue: Boolean;
    procedure SetNLacre(const Value: string);
  public
    property NLacre: string read FNLacre write SetNLacre;
    property NLacreHasValue: Boolean read FNLacreHasValue write FNLacreHasValue;
  end;
  
  TCteSefazLacreList = class(TObjectList<TCteSefazLacre>)
  end;
  
  TCteSefazDetContInfDocInfNF = class
  private
    FSerie: string;
    FSerieHasValue: Boolean;
    FNDoc: string;
    FNDocHasValue: Boolean;
    FUnidRat: Double;
    FUnidRatHasValue: Boolean;
    procedure SetSerie(const Value: string);
    procedure SetNDoc(const Value: string);
    procedure SetUnidRat(const Value: Double);
  public
    property Serie: string read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property NDoc: string read FNDoc write SetNDoc;
    property NDocHasValue: Boolean read FNDocHasValue write FNDocHasValue;
    property UnidRat: Double read FUnidRat write SetUnidRat;
    property UnidRatHasValue: Boolean read FUnidRatHasValue write FUnidRatHasValue;
  end;
  
  TCteSefazDetContInfDocInfNFList = class(TObjectList<TCteSefazDetContInfDocInfNF>)
  end;
  
  TCteSefazDetContInfDocInfNFe = class
  private
    FChave: string;
    FChaveHasValue: Boolean;
    FUnidRat: Double;
    FUnidRatHasValue: Boolean;
    procedure SetChave(const Value: string);
    procedure SetUnidRat(const Value: Double);
  public
    property Chave: string read FChave write SetChave;
    property ChaveHasValue: Boolean read FChaveHasValue write FChaveHasValue;
    property UnidRat: Double read FUnidRat write SetUnidRat;
    property UnidRatHasValue: Boolean read FUnidRatHasValue write FUnidRatHasValue;
  end;
  
  TCteSefazDetContInfDocInfNFeList = class(TObjectList<TCteSefazDetContInfDocInfNFe>)
  end;
  
  TCteSefazDetContInfDoc = class
  private
    FInfNF: TCteSefazDetContInfDocInfNFList;
    FInfNFe: TCteSefazDetContInfDocInfNFeList;
    procedure SetInfNF(const Value: TCteSefazDetContInfDocInfNFList);
    procedure SetInfNFe(const Value: TCteSefazDetContInfDocInfNFeList);
  public
    destructor Destroy; override;
    property InfNF: TCteSefazDetContInfDocInfNFList read FInfNF write SetInfNF;
    property InfNFe: TCteSefazDetContInfDocInfNFeList read FInfNFe write SetInfNFe;
  end;
  
  TCteSefazDetCont = class
  private
    FNCont: string;
    FNContHasValue: Boolean;
    FLacre: TCteSefazLacreList;
    FInfDoc: TCteSefazDetContInfDoc;
    procedure SetNCont(const Value: string);
    procedure SetLacre(const Value: TCteSefazLacreList);
    procedure SetInfDoc(const Value: TCteSefazDetContInfDoc);
  public
    destructor Destroy; override;
    property NCont: string read FNCont write SetNCont;
    property NContHasValue: Boolean read FNContHasValue write FNContHasValue;
    property Lacre: TCteSefazLacreList read FLacre write SetLacre;
    property InfDoc: TCteSefazDetContInfDoc read FInfDoc write SetInfDoc;
  end;
  
  TCteSefazDetContList = class(TObjectList<TCteSefazDetCont>)
  end;
  
  TCteSefazAquav = class
  private
    FVPrest: Double;
    FVPrestHasValue: Boolean;
    FVAFRMM: Double;
    FVAFRMMHasValue: Boolean;
    FXNavio: string;
    FXNavioHasValue: Boolean;
    FBalsa: TCteSefazBalsaList;
    FNViag: string;
    FNViagHasValue: Boolean;
    FDirec: string;
    FDirecHasValue: Boolean;
    FIrin: string;
    FIrinHasValue: Boolean;
    FDetCont: TCteSefazDetContList;
    FTpNav: Integer;
    FTpNavHasValue: Boolean;
    procedure SetVPrest(const Value: Double);
    procedure SetVAFRMM(const Value: Double);
    procedure SetXNavio(const Value: string);
    procedure SetBalsa(const Value: TCteSefazBalsaList);
    procedure SetNViag(const Value: string);
    procedure SetDirec(const Value: string);
    procedure SetIrin(const Value: string);
    procedure SetDetCont(const Value: TCteSefazDetContList);
    procedure SetTpNav(const Value: Integer);
  public
    destructor Destroy; override;
    property VPrest: Double read FVPrest write SetVPrest;
    property VPrestHasValue: Boolean read FVPrestHasValue write FVPrestHasValue;
    property VAFRMM: Double read FVAFRMM write SetVAFRMM;
    property VAFRMMHasValue: Boolean read FVAFRMMHasValue write FVAFRMMHasValue;
    property XNavio: string read FXNavio write SetXNavio;
    property XNavioHasValue: Boolean read FXNavioHasValue write FXNavioHasValue;
    property Balsa: TCteSefazBalsaList read FBalsa write SetBalsa;
    property NViag: string read FNViag write SetNViag;
    property NViagHasValue: Boolean read FNViagHasValue write FNViagHasValue;
    property Direc: string read FDirec write SetDirec;
    property DirecHasValue: Boolean read FDirecHasValue write FDirecHasValue;
    property Irin: string read FIrin write SetIrin;
    property IrinHasValue: Boolean read FIrinHasValue write FIrinHasValue;
    property DetCont: TCteSefazDetContList read FDetCont write SetDetCont;
    property TpNav: Integer read FTpNav write SetTpNav;
    property TpNavHasValue: Boolean read FTpNavHasValue write FTpNavHasValue;
  end;
  
  TCteSefazDuto = class
  private
    FVTar: Double;
    FVTarHasValue: Boolean;
    FDIni: TDate;
    FDIniHasValue: Boolean;
    FDFim: TDate;
    FDFimHasValue: Boolean;
    procedure SetVTar(const Value: Double);
    procedure SetDIni(const Value: TDate);
    procedure SetDFim(const Value: TDate);
  public
    property VTar: Double read FVTar write SetVTar;
    property VTarHasValue: Boolean read FVTarHasValue write FVTarHasValue;
    property DIni: TDate read FDIni write SetDIni;
    property DIniHasValue: Boolean read FDIniHasValue write FDIniHasValue;
    property DFim: TDate read FDFim write SetDFim;
    property DFimHasValue: Boolean read FDFimHasValue write FDFimHasValue;
  end;
  
  TCteSefazInfSeg = class
  private
    FXSeg: string;
    FXSegHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    procedure SetXSeg(const Value: string);
    procedure SetCNPJ(const Value: string);
  public
    property XSeg: string read FXSeg write SetXSeg;
    property XSegHasValue: Boolean read FXSegHasValue write FXSegHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
  end;
  
  TCteSefazSeg = class
  private
    FInfSeg: TCteSefazInfSeg;
    FNApol: string;
    FNApolHasValue: Boolean;
    FNAver: string;
    FNAverHasValue: Boolean;
    procedure SetInfSeg(const Value: TCteSefazInfSeg);
    procedure SetNApol(const Value: string);
    procedure SetNAver(const Value: string);
  public
    destructor Destroy; override;
    property InfSeg: TCteSefazInfSeg read FInfSeg write SetInfSeg;
    property NApol: string read FNApol write SetNApol;
    property NApolHasValue: Boolean read FNApolHasValue write FNApolHasValue;
    property NAver: string read FNAver write SetNAver;
    property NAverHasValue: Boolean read FNAverHasValue write FNAverHasValue;
  end;
  
  TCteSefazMultimodal = class
  private
    FCOTM: string;
    FCOTMHasValue: Boolean;
    FIndNegociavel: Integer;
    FIndNegociavelHasValue: Boolean;
    FSeg: TCteSefazSeg;
    procedure SetCOTM(const Value: string);
    procedure SetIndNegociavel(const Value: Integer);
    procedure SetSeg(const Value: TCteSefazSeg);
  public
    destructor Destroy; override;
    property COTM: string read FCOTM write SetCOTM;
    property COTMHasValue: Boolean read FCOTMHasValue write FCOTMHasValue;
    property IndNegociavel: Integer read FIndNegociavel write SetIndNegociavel;
    property IndNegociavelHasValue: Boolean read FIndNegociavelHasValue write FIndNegociavelHasValue;
    property Seg: TCteSefazSeg read FSeg write SetSeg;
  end;
  
  TCteSefazInfModal = class
  private
    FVersaoModal: string;
    FVersaoModalHasValue: Boolean;
    FRodo: TCteSefazRodo;
    FAereo: TCteSefazAereo;
    FFerrov: TCteSefazFerrov;
    FAquav: TCteSefazAquav;
    FDuto: TCteSefazDuto;
    FMultimodal: TCteSefazMultimodal;
    procedure SetVersaoModal(const Value: string);
    procedure SetRodo(const Value: TCteSefazRodo);
    procedure SetAereo(const Value: TCteSefazAereo);
    procedure SetFerrov(const Value: TCteSefazFerrov);
    procedure SetAquav(const Value: TCteSefazAquav);
    procedure SetDuto(const Value: TCteSefazDuto);
    procedure SetMultimodal(const Value: TCteSefazMultimodal);
  public
    destructor Destroy; override;
    property VersaoModal: string read FVersaoModal write SetVersaoModal;
    property VersaoModalHasValue: Boolean read FVersaoModalHasValue write FVersaoModalHasValue;
    property Rodo: TCteSefazRodo read FRodo write SetRodo;
    property Aereo: TCteSefazAereo read FAereo write SetAereo;
    property Ferrov: TCteSefazFerrov read FFerrov write SetFerrov;
    property Aquav: TCteSefazAquav read FAquav write SetAquav;
    property Duto: TCteSefazDuto read FDuto write SetDuto;
    property Multimodal: TCteSefazMultimodal read FMultimodal write SetMultimodal;
  end;
  
  TCteSefazVeicNovos = class
  private
    FChassi: string;
    FChassiHasValue: Boolean;
    FCCor: string;
    FCCorHasValue: Boolean;
    FXCor: string;
    FXCorHasValue: Boolean;
    FCMod: string;
    FCModHasValue: Boolean;
    FVUnit: Double;
    FVUnitHasValue: Boolean;
    FVFrete: Double;
    FVFreteHasValue: Boolean;
    procedure SetChassi(const Value: string);
    procedure SetCCor(const Value: string);
    procedure SetXCor(const Value: string);
    procedure SetCMod(const Value: string);
    procedure SetVUnit(const Value: Double);
    procedure SetVFrete(const Value: Double);
  public
    property Chassi: string read FChassi write SetChassi;
    property ChassiHasValue: Boolean read FChassiHasValue write FChassiHasValue;
    property CCor: string read FCCor write SetCCor;
    property CCorHasValue: Boolean read FCCorHasValue write FCCorHasValue;
    property XCor: string read FXCor write SetXCor;
    property XCorHasValue: Boolean read FXCorHasValue write FXCorHasValue;
    property CMod: string read FCMod write SetCMod;
    property CModHasValue: Boolean read FCModHasValue write FCModHasValue;
    property VUnit: Double read FVUnit write SetVUnit;
    property VUnitHasValue: Boolean read FVUnitHasValue write FVUnitHasValue;
    property VFrete: Double read FVFrete write SetVFrete;
    property VFreteHasValue: Boolean read FVFreteHasValue write FVFreteHasValue;
  end;
  
  TCteSefazVeicNovosList = class(TObjectList<TCteSefazVeicNovos>)
  end;
  
  TCteSefazFat = class
  private
    FNFat: string;
    FNFatHasValue: Boolean;
    FVOrig: Double;
    FVOrigHasValue: Boolean;
    FVDesc: Double;
    FVDescHasValue: Boolean;
    FVLiq: Double;
    FVLiqHasValue: Boolean;
    procedure SetNFat(const Value: string);
    procedure SetVOrig(const Value: Double);
    procedure SetVDesc(const Value: Double);
    procedure SetVLiq(const Value: Double);
  public
    property NFat: string read FNFat write SetNFat;
    property NFatHasValue: Boolean read FNFatHasValue write FNFatHasValue;
    property VOrig: Double read FVOrig write SetVOrig;
    property VOrigHasValue: Boolean read FVOrigHasValue write FVOrigHasValue;
    property VDesc: Double read FVDesc write SetVDesc;
    property VDescHasValue: Boolean read FVDescHasValue write FVDescHasValue;
    property VLiq: Double read FVLiq write SetVLiq;
    property VLiqHasValue: Boolean read FVLiqHasValue write FVLiqHasValue;
  end;
  
  TCteSefazDup = class
  private
    FNDup: string;
    FNDupHasValue: Boolean;
    FDVenc: TDate;
    FDVencHasValue: Boolean;
    FVDup: Double;
    FVDupHasValue: Boolean;
    procedure SetNDup(const Value: string);
    procedure SetDVenc(const Value: TDate);
    procedure SetVDup(const Value: Double);
  public
    property NDup: string read FNDup write SetNDup;
    property NDupHasValue: Boolean read FNDupHasValue write FNDupHasValue;
    property DVenc: TDate read FDVenc write SetDVenc;
    property DVencHasValue: Boolean read FDVencHasValue write FDVencHasValue;
    property VDup: Double read FVDup write SetVDup;
    property VDupHasValue: Boolean read FVDupHasValue write FVDupHasValue;
  end;
  
  TCteSefazDupList = class(TObjectList<TCteSefazDup>)
  end;
  
  TCteSefazCobr = class
  private
    FFat: TCteSefazFat;
    FDup: TCteSefazDupList;
    procedure SetFat(const Value: TCteSefazFat);
    procedure SetDup(const Value: TCteSefazDupList);
  public
    destructor Destroy; override;
    property Fat: TCteSefazFat read FFat write SetFat;
    property Dup: TCteSefazDupList read FDup write SetDup;
  end;
  
  TCteSefazRefNF = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FMod: string;
    FModHasValue: Boolean;
    FSerie: Integer;
    FSerieHasValue: Boolean;
    FSubserie: Integer;
    FSubserieHasValue: Boolean;
    FNro: Integer;
    FNroHasValue: Boolean;
    FValor: Double;
    FValorHasValue: Boolean;
    FDEmi: TDate;
    FDEmiHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetMod(const Value: string);
    procedure SetSerie(const Value: Integer);
    procedure SetSubserie(const Value: Integer);
    procedure SetNro(const Value: Integer);
    procedure SetValor(const Value: Double);
    procedure SetDEmi(const Value: TDate);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property &Mod: string read FMod write SetMod;
    property &ModHasValue: Boolean read FModHasValue write FModHasValue;
    property Serie: Integer read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property Subserie: Integer read FSubserie write SetSubserie;
    property SubserieHasValue: Boolean read FSubserieHasValue write FSubserieHasValue;
    property Nro: Integer read FNro write SetNro;
    property NroHasValue: Boolean read FNroHasValue write FNroHasValue;
    property Valor: Double read FValor write SetValor;
    property ValorHasValue: Boolean read FValorHasValue write FValorHasValue;
    property DEmi: TDate read FDEmi write SetDEmi;
    property DEmiHasValue: Boolean read FDEmiHasValue write FDEmiHasValue;
  end;
  
  TCteSefazTomaICMS = class
  private
    FRefNFe: string;
    FRefNFeHasValue: Boolean;
    FRefNF: TCteSefazRefNF;
    FRefCte: string;
    FRefCteHasValue: Boolean;
    procedure SetRefNFe(const Value: string);
    procedure SetRefNF(const Value: TCteSefazRefNF);
    procedure SetRefCte(const Value: string);
  public
    destructor Destroy; override;
    property RefNFe: string read FRefNFe write SetRefNFe;
    property RefNFeHasValue: Boolean read FRefNFeHasValue write FRefNFeHasValue;
    property RefNF: TCteSefazRefNF read FRefNF write SetRefNF;
    property RefCte: string read FRefCte write SetRefCte;
    property RefCteHasValue: Boolean read FRefCteHasValue write FRefCteHasValue;
  end;
  
  TCteSefazInfCteSub = class
  private
    FChCte: string;
    FChCteHasValue: Boolean;
    FRefCteAnu: string;
    FRefCteAnuHasValue: Boolean;
    FTomaICMS: TCteSefazTomaICMS;
    FIndAlteraToma: Integer;
    FIndAlteraTomaHasValue: Boolean;
    procedure SetChCte(const Value: string);
    procedure SetRefCteAnu(const Value: string);
    procedure SetTomaICMS(const Value: TCteSefazTomaICMS);
    procedure SetIndAlteraToma(const Value: Integer);
  public
    destructor Destroy; override;
    property ChCte: string read FChCte write SetChCte;
    property ChCteHasValue: Boolean read FChCteHasValue write FChCteHasValue;
    property RefCteAnu: string read FRefCteAnu write SetRefCteAnu;
    property RefCteAnuHasValue: Boolean read FRefCteAnuHasValue write FRefCteAnuHasValue;
    property TomaICMS: TCteSefazTomaICMS read FTomaICMS write SetTomaICMS;
    property IndAlteraToma: Integer read FIndAlteraToma write SetIndAlteraToma;
    property IndAlteraTomaHasValue: Boolean read FIndAlteraTomaHasValue write FIndAlteraTomaHasValue;
  end;
  
  TCteSefazInfGlobalizado = class
  private
    FXObs: string;
    FXObsHasValue: Boolean;
    procedure SetXObs(const Value: string);
  public
    property XObs: string read FXObs write SetXObs;
    property XObsHasValue: Boolean read FXObsHasValue write FXObsHasValue;
  end;
  
  TCteSefazInfCTeMultimodal = class
  private
    FChCTeMultimodal: string;
    FChCTeMultimodalHasValue: Boolean;
    procedure SetChCTeMultimodal(const Value: string);
  public
    property ChCTeMultimodal: string read FChCTeMultimodal write SetChCTeMultimodal;
    property ChCTeMultimodalHasValue: Boolean read FChCTeMultimodalHasValue write FChCTeMultimodalHasValue;
  end;
  
  TCteSefazInfCTeMultimodalList = class(TObjectList<TCteSefazInfCTeMultimodal>)
  end;
  
  TCteSefazInfServVinc = class
  private
    FInfCTeMultimodal: TCteSefazInfCTeMultimodalList;
    procedure SetInfCTeMultimodal(const Value: TCteSefazInfCTeMultimodalList);
  public
    destructor Destroy; override;
    property InfCTeMultimodal: TCteSefazInfCTeMultimodalList read FInfCTeMultimodal write SetInfCTeMultimodal;
  end;
  
  TCteSefazInfCTeNorm = class
  private
    FInfCarga: TCteSefazInfCarga;
    FInfDoc: TCteSefazInfDoc;
    FDocAnt: TCteSefazDocAnt;
    FInfModal: TCteSefazInfModal;
    FVeicNovos: TCteSefazVeicNovosList;
    FCobr: TCteSefazCobr;
    FInfCteSub: TCteSefazInfCteSub;
    FInfGlobalizado: TCteSefazInfGlobalizado;
    FInfServVinc: TCteSefazInfServVinc;
    procedure SetInfCarga(const Value: TCteSefazInfCarga);
    procedure SetInfDoc(const Value: TCteSefazInfDoc);
    procedure SetDocAnt(const Value: TCteSefazDocAnt);
    procedure SetInfModal(const Value: TCteSefazInfModal);
    procedure SetVeicNovos(const Value: TCteSefazVeicNovosList);
    procedure SetCobr(const Value: TCteSefazCobr);
    procedure SetInfCteSub(const Value: TCteSefazInfCteSub);
    procedure SetInfGlobalizado(const Value: TCteSefazInfGlobalizado);
    procedure SetInfServVinc(const Value: TCteSefazInfServVinc);
  public
    destructor Destroy; override;
    property InfCarga: TCteSefazInfCarga read FInfCarga write SetInfCarga;
    property InfDoc: TCteSefazInfDoc read FInfDoc write SetInfDoc;
    property DocAnt: TCteSefazDocAnt read FDocAnt write SetDocAnt;
    property InfModal: TCteSefazInfModal read FInfModal write SetInfModal;
    property VeicNovos: TCteSefazVeicNovosList read FVeicNovos write SetVeicNovos;
    property Cobr: TCteSefazCobr read FCobr write SetCobr;
    property InfCteSub: TCteSefazInfCteSub read FInfCteSub write SetInfCteSub;
    property InfGlobalizado: TCteSefazInfGlobalizado read FInfGlobalizado write SetInfGlobalizado;
    property InfServVinc: TCteSefazInfServVinc read FInfServVinc write SetInfServVinc;
  end;
  
  TCteSefazInfCteComp = class
  private
    FChCTe: string;
    FChCTeHasValue: Boolean;
    procedure SetChCTe(const Value: string);
  public
    property ChCTe: string read FChCTe write SetChCTe;
    property ChCTeHasValue: Boolean read FChCTeHasValue write FChCTeHasValue;
  end;
  
  TCteSefazInfCteAnu = class
  private
    FChCte: string;
    FChCteHasValue: Boolean;
    FDEmi: TDate;
    FDEmiHasValue: Boolean;
    procedure SetChCte(const Value: string);
    procedure SetDEmi(const Value: TDate);
  public
    property ChCte: string read FChCte write SetChCte;
    property ChCteHasValue: Boolean read FChCteHasValue write FChCteHasValue;
    property DEmi: TDate read FDEmi write SetDEmi;
    property DEmiHasValue: Boolean read FDEmiHasValue write FDEmiHasValue;
  end;
  
  TCteSefazAutXML = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
  end;
  
  TCteSefazAutXMLList = class(TObjectList<TCteSefazAutXML>)
  end;
  
  TCteSefazRespTec = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FXContato: string;
    FXContatoHasValue: Boolean;
    FEmail: string;
    FEmailHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FIdCSRT: Integer;
    FIdCSRTHasValue: Boolean;
    FHashCSRT: string;
    FHashCSRTHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetXContato(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetIdCSRT(const Value: Integer);
    procedure SetHashCSRT(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property XContato: string read FXContato write SetXContato;
    property XContatoHasValue: Boolean read FXContatoHasValue write FXContatoHasValue;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property IdCSRT: Integer read FIdCSRT write SetIdCSRT;
    property IdCSRTHasValue: Boolean read FIdCSRTHasValue write FIdCSRTHasValue;
    property HashCSRT: string read FHashCSRT write SetHashCSRT;
    property HashCSRTHasValue: Boolean read FHashCSRTHasValue write FHashCSRTHasValue;
  end;
  
  TCteSefazInfSolicNFF = class
  private
    FXSolic: string;
    FXSolicHasValue: Boolean;
    procedure SetXSolic(const Value: string);
  public
    property XSolic: string read FXSolic write SetXSolic;
    property XSolicHasValue: Boolean read FXSolicHasValue write FXSolicHasValue;
  end;
  
  TCteSefazInfCte = class
  private
    FVersao: string;
    FVersaoHasValue: Boolean;
    FId: string;
    FIdHasValue: Boolean;
    FIde: TCteSefazIde;
    FCompl: TCteSefazCompl;
    FEmit: TCteSefazEmit;
    FRem: TCteSefazRem;
    FExped: TCteSefazExped;
    FReceb: TCteSefazReceb;
    FDest: TCteSefazDest;
    FVPrest: TCteSefazVPrest;
    FImp: TCteSefazInfCteImp;
    FInfCTeNorm: TCteSefazInfCTeNorm;
    FInfCteComp: TCteSefazInfCteComp;
    FInfCteAnu: TCteSefazInfCteAnu;
    FAutXML: TCteSefazAutXMLList;
    FInfRespTec: TCteSefazRespTec;
    FInfSolicNFF: TCteSefazInfSolicNFF;
    procedure SetVersao(const Value: string);
    procedure SetId(const Value: string);
    procedure SetIde(const Value: TCteSefazIde);
    procedure SetCompl(const Value: TCteSefazCompl);
    procedure SetEmit(const Value: TCteSefazEmit);
    procedure SetRem(const Value: TCteSefazRem);
    procedure SetExped(const Value: TCteSefazExped);
    procedure SetReceb(const Value: TCteSefazReceb);
    procedure SetDest(const Value: TCteSefazDest);
    procedure SetVPrest(const Value: TCteSefazVPrest);
    procedure SetImp(const Value: TCteSefazInfCteImp);
    procedure SetInfCTeNorm(const Value: TCteSefazInfCTeNorm);
    procedure SetInfCteComp(const Value: TCteSefazInfCteComp);
    procedure SetInfCteAnu(const Value: TCteSefazInfCteAnu);
    procedure SetAutXML(const Value: TCteSefazAutXMLList);
    procedure SetInfRespTec(const Value: TCteSefazRespTec);
    procedure SetInfSolicNFF(const Value: TCteSefazInfSolicNFF);
  public
    destructor Destroy; override;
    property Versao: string read FVersao write SetVersao;
    property VersaoHasValue: Boolean read FVersaoHasValue write FVersaoHasValue;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ide: TCteSefazIde read FIde write SetIde;
    property Compl: TCteSefazCompl read FCompl write SetCompl;
    property Emit: TCteSefazEmit read FEmit write SetEmit;
    property Rem: TCteSefazRem read FRem write SetRem;
    property Exped: TCteSefazExped read FExped write SetExped;
    property Receb: TCteSefazReceb read FReceb write SetReceb;
    property Dest: TCteSefazDest read FDest write SetDest;
    property VPrest: TCteSefazVPrest read FVPrest write SetVPrest;
    property Imp: TCteSefazInfCteImp read FImp write SetImp;
    property InfCTeNorm: TCteSefazInfCTeNorm read FInfCTeNorm write SetInfCTeNorm;
    property InfCteComp: TCteSefazInfCteComp read FInfCteComp write SetInfCteComp;
    property InfCteAnu: TCteSefazInfCteAnu read FInfCteAnu write SetInfCteAnu;
    property AutXML: TCteSefazAutXMLList read FAutXML write SetAutXML;
    property InfRespTec: TCteSefazRespTec read FInfRespTec write SetInfRespTec;
    property InfSolicNFF: TCteSefazInfSolicNFF read FInfSolicNFF write SetInfSolicNFF;
  end;
  
  TCteSefazInfCTeSupl = class
  private
    FQrCodCTe: string;
    FQrCodCTeHasValue: Boolean;
    procedure SetQrCodCTe(const Value: string);
  public
    property QrCodCTe: string read FQrCodCTe write SetQrCodCTe;
    property QrCodCTeHasValue: Boolean read FQrCodCTeHasValue write FQrCodCTeHasValue;
  end;
  
  TCtePedidoEmissao = class
  private
    FInfCte: TCteSefazInfCte;
    FInfCTeSupl: TCteSefazInfCTeSupl;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FReferencia: string;
    FReferenciaHasValue: Boolean;
    procedure SetInfCte(const Value: TCteSefazInfCte);
    procedure SetInfCTeSupl(const Value: TCteSefazInfCTeSupl);
    procedure SetAmbiente(const Value: string);
    procedure SetReferencia(const Value: string);
  public
    destructor Destroy; override;
    property InfCte: TCteSefazInfCte read FInfCte write SetInfCte;
    property InfCTeSupl: TCteSefazInfCTeSupl read FInfCTeSupl write SetInfCTeSupl;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Referencia: string read FReferencia write SetReferencia;
    property ReferenciaHasValue: Boolean read FReferenciaHasValue write FReferenciaHasValue;
  end;
  
  TCtePedidoEmissaoList = class(TObjectList<TCtePedidoEmissao>)
  end;
  
  TCtePedidoEmissaoLote = class
  private
    FDocumentos: TCtePedidoEmissaoList;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FReferencia: string;
    FReferenciaHasValue: Boolean;
    FIdLote: string;
    FIdLoteHasValue: Boolean;
    procedure SetDocumentos(const Value: TCtePedidoEmissaoList);
    procedure SetAmbiente(const Value: string);
    procedure SetReferencia(const Value: string);
    procedure SetIdLote(const Value: string);
  public
    destructor Destroy; override;
    property Documentos: TCtePedidoEmissaoList read FDocumentos write SetDocumentos;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Referencia: string read FReferencia write SetReferencia;
    property ReferenciaHasValue: Boolean read FReferenciaHasValue write FReferenciaHasValue;
    property IdLote: string read FIdLote write SetIdLote;
    property IdLoteHasValue: Boolean read FIdLoteHasValue write FIdLoteHasValue;
  end;
  
  TDfeRecibo = class
  private
    FNumero: string;
    FNumeroHasValue: Boolean;
    FCodigoStatus: Integer;
    FCodigoStatusHasValue: Boolean;
    FMotivoStatus: string;
    FMotivoStatusHasValue: Boolean;
    FDataRecebimento: TDateTime;
    FDataRecebimentoHasValue: Boolean;
    FCodigoMensagem: Integer;
    FCodigoMensagemHasValue: Boolean;
    FMensagem: string;
    FMensagemHasValue: Boolean;
    procedure SetNumero(const Value: string);
    procedure SetCodigoStatus(const Value: Integer);
    procedure SetMotivoStatus(const Value: string);
    procedure SetDataRecebimento(const Value: TDateTime);
    procedure SetCodigoMensagem(const Value: Integer);
    procedure SetMensagem(const Value: string);
  public
    property Numero: string read FNumero write SetNumero;
    property NumeroHasValue: Boolean read FNumeroHasValue write FNumeroHasValue;
    property CodigoStatus: Integer read FCodigoStatus write SetCodigoStatus;
    property CodigoStatusHasValue: Boolean read FCodigoStatusHasValue write FCodigoStatusHasValue;
    property MotivoStatus: string read FMotivoStatus write SetMotivoStatus;
    property MotivoStatusHasValue: Boolean read FMotivoStatusHasValue write FMotivoStatusHasValue;
    property DataRecebimento: TDateTime read FDataRecebimento write SetDataRecebimento;
    property DataRecebimentoHasValue: Boolean read FDataRecebimentoHasValue write FDataRecebimentoHasValue;
    property CodigoMensagem: Integer read FCodigoMensagem write SetCodigoMensagem;
    property CodigoMensagemHasValue: Boolean read FCodigoMensagemHasValue write FCodigoMensagemHasValue;
    property Mensagem: string read FMensagem write SetMensagem;
    property MensagemHasValue: Boolean read FMensagemHasValue write FMensagemHasValue;
  end;
  
  TDfeAutorEvento = class
  private
    FCpfCnpj: string;
    FCpfCnpjHasValue: Boolean;
    procedure SetCpfCnpj(const Value: string);
  public
    property CpfCnpj: string read FCpfCnpj write SetCpfCnpj;
    property CpfCnpjHasValue: Boolean read FCpfCnpjHasValue write FCpfCnpjHasValue;
  end;
  
  TDfeAutorizacao = class
  private
    FDigestValue: string;
    FDigestValueHasValue: Boolean;
    FId: string;
    FIdHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FAutor: TDfeAutorEvento;
    FChaveAcesso: string;
    FChaveAcessoHasValue: Boolean;
    FDataEvento: TDateTime;
    FDataEventoHasValue: Boolean;
    FNumeroSequencial: Integer;
    FNumeroSequencialHasValue: Boolean;
    FDataRecebimento: TDateTime;
    FDataRecebimentoHasValue: Boolean;
    FCodigoStatus: Integer;
    FCodigoStatusHasValue: Boolean;
    FMotivoStatus: string;
    FMotivoStatusHasValue: Boolean;
    FNumeroProtocolo: string;
    FNumeroProtocoloHasValue: Boolean;
    FCodigoMensagem: Integer;
    FCodigoMensagemHasValue: Boolean;
    FMensagem: string;
    FMensagemHasValue: Boolean;
    FTipoEvento: string;
    FTipoEventoHasValue: Boolean;
    procedure SetDigestValue(const Value: string);
    procedure SetId(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetStatus(const Value: string);
    procedure SetAutor(const Value: TDfeAutorEvento);
    procedure SetChaveAcesso(const Value: string);
    procedure SetDataEvento(const Value: TDateTime);
    procedure SetNumeroSequencial(const Value: Integer);
    procedure SetDataRecebimento(const Value: TDateTime);
    procedure SetCodigoStatus(const Value: Integer);
    procedure SetMotivoStatus(const Value: string);
    procedure SetNumeroProtocolo(const Value: string);
    procedure SetCodigoMensagem(const Value: Integer);
    procedure SetMensagem(const Value: string);
    procedure SetTipoEvento(const Value: string);
  public
    destructor Destroy; override;
    property DigestValue: string read FDigestValue write SetDigestValue;
    property DigestValueHasValue: Boolean read FDigestValueHasValue write FDigestValueHasValue;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Autor: TDfeAutorEvento read FAutor write SetAutor;
    property ChaveAcesso: string read FChaveAcesso write SetChaveAcesso;
    property ChaveAcessoHasValue: Boolean read FChaveAcessoHasValue write FChaveAcessoHasValue;
    property DataEvento: TDateTime read FDataEvento write SetDataEvento;
    property DataEventoHasValue: Boolean read FDataEventoHasValue write FDataEventoHasValue;
    property NumeroSequencial: Integer read FNumeroSequencial write SetNumeroSequencial;
    property NumeroSequencialHasValue: Boolean read FNumeroSequencialHasValue write FNumeroSequencialHasValue;
    property DataRecebimento: TDateTime read FDataRecebimento write SetDataRecebimento;
    property DataRecebimentoHasValue: Boolean read FDataRecebimentoHasValue write FDataRecebimentoHasValue;
    property CodigoStatus: Integer read FCodigoStatus write SetCodigoStatus;
    property CodigoStatusHasValue: Boolean read FCodigoStatusHasValue write FCodigoStatusHasValue;
    property MotivoStatus: string read FMotivoStatus write SetMotivoStatus;
    property MotivoStatusHasValue: Boolean read FMotivoStatusHasValue write FMotivoStatusHasValue;
    property NumeroProtocolo: string read FNumeroProtocolo write SetNumeroProtocolo;
    property NumeroProtocoloHasValue: Boolean read FNumeroProtocoloHasValue write FNumeroProtocoloHasValue;
    property CodigoMensagem: Integer read FCodigoMensagem write SetCodigoMensagem;
    property CodigoMensagemHasValue: Boolean read FCodigoMensagemHasValue write FCodigoMensagemHasValue;
    property Mensagem: string read FMensagem write SetMensagem;
    property MensagemHasValue: Boolean read FMensagemHasValue write FMensagemHasValue;
    property TipoEvento: string read FTipoEvento write SetTipoEvento;
    property TipoEventoHasValue: Boolean read FTipoEventoHasValue write FTipoEventoHasValue;
  end;
  
  TDfe = class
  private
    FId: string;
    FIdHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FCreatedAt: TDateTime;
    FCreatedAtHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FReferencia: string;
    FReferenciaHasValue: Boolean;
    FDataEmissao: TDateTime;
    FDataEmissaoHasValue: Boolean;
    FModelo: Integer;
    FModeloHasValue: Boolean;
    FSerie: Integer;
    FSerieHasValue: Boolean;
    FNumero: Integer;
    FNumeroHasValue: Boolean;
    FValorTotal: Double;
    FValorTotalHasValue: Boolean;
    FChave: string;
    FChaveHasValue: Boolean;
    FAutorizacao: TDfeAutorizacao;
    procedure SetId(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetCreatedAt(const Value: TDateTime);
    procedure SetStatus(const Value: string);
    procedure SetReferencia(const Value: string);
    procedure SetDataEmissao(const Value: TDateTime);
    procedure SetModelo(const Value: Integer);
    procedure SetSerie(const Value: Integer);
    procedure SetNumero(const Value: Integer);
    procedure SetValorTotal(const Value: Double);
    procedure SetChave(const Value: string);
    procedure SetAutorizacao(const Value: TDfeAutorizacao);
  public
    destructor Destroy; override;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property CreatedAt: TDateTime read FCreatedAt write SetCreatedAt;
    property CreatedAtHasValue: Boolean read FCreatedAtHasValue write FCreatedAtHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Referencia: string read FReferencia write SetReferencia;
    property ReferenciaHasValue: Boolean read FReferenciaHasValue write FReferenciaHasValue;
    property DataEmissao: TDateTime read FDataEmissao write SetDataEmissao;
    property DataEmissaoHasValue: Boolean read FDataEmissaoHasValue write FDataEmissaoHasValue;
    property Modelo: Integer read FModelo write SetModelo;
    property ModeloHasValue: Boolean read FModeloHasValue write FModeloHasValue;
    property Serie: Integer read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property Numero: Integer read FNumero write SetNumero;
    property NumeroHasValue: Boolean read FNumeroHasValue write FNumeroHasValue;
    property ValorTotal: Double read FValorTotal write SetValorTotal;
    property ValorTotalHasValue: Boolean read FValorTotalHasValue write FValorTotalHasValue;
    property Chave: string read FChave write SetChave;
    property ChaveHasValue: Boolean read FChaveHasValue write FChaveHasValue;
    property Autorizacao: TDfeAutorizacao read FAutorizacao write SetAutorizacao;
  end;
  
  TDfeList = class(TObjectList<TDfe>)
  end;
  
  TDfeLote = class
  private
    FId: string;
    FIdHasValue: Boolean;
    FCreatedAt: TDateTime;
    FCreatedAtHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FReferencia: string;
    FReferenciaHasValue: Boolean;
    FIdLote: string;
    FIdLoteHasValue: Boolean;
    FRecibo: TDfeRecibo;
    FDocumentos: TDfeList;
    procedure SetId(const Value: string);
    procedure SetCreatedAt(const Value: TDateTime);
    procedure SetStatus(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetReferencia(const Value: string);
    procedure SetIdLote(const Value: string);
    procedure SetRecibo(const Value: TDfeRecibo);
    procedure SetDocumentos(const Value: TDfeList);
  public
    destructor Destroy; override;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property CreatedAt: TDateTime read FCreatedAt write SetCreatedAt;
    property CreatedAtHasValue: Boolean read FCreatedAtHasValue write FCreatedAtHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Referencia: string read FReferencia write SetReferencia;
    property ReferenciaHasValue: Boolean read FReferenciaHasValue write FReferenciaHasValue;
    property IdLote: string read FIdLote write SetIdLote;
    property IdLoteHasValue: Boolean read FIdLoteHasValue write FIdLoteHasValue;
    property Recibo: TDfeRecibo read FRecibo write SetRecibo;
    property Documentos: TDfeList read FDocumentos write SetDocumentos;
  end;
  
  TCtePedidoCancelamento = class
  private
    FJustificativa: string;
    FJustificativaHasValue: Boolean;
    procedure SetJustificativa(const Value: string);
  public
    property Justificativa: string read FJustificativa write SetJustificativa;
    property JustificativaHasValue: Boolean read FJustificativaHasValue write FJustificativaHasValue;
  end;
  
  TDfeCancelamento = class
  private
    FJustificativa: string;
    FJustificativaHasValue: Boolean;
    FId: string;
    FIdHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FAutor: TDfeAutorEvento;
    FChaveAcesso: string;
    FChaveAcessoHasValue: Boolean;
    FDataEvento: TDateTime;
    FDataEventoHasValue: Boolean;
    FNumeroSequencial: Integer;
    FNumeroSequencialHasValue: Boolean;
    FDataRecebimento: TDateTime;
    FDataRecebimentoHasValue: Boolean;
    FCodigoStatus: Integer;
    FCodigoStatusHasValue: Boolean;
    FMotivoStatus: string;
    FMotivoStatusHasValue: Boolean;
    FNumeroProtocolo: string;
    FNumeroProtocoloHasValue: Boolean;
    FCodigoMensagem: Integer;
    FCodigoMensagemHasValue: Boolean;
    FMensagem: string;
    FMensagemHasValue: Boolean;
    FTipoEvento: string;
    FTipoEventoHasValue: Boolean;
    procedure SetJustificativa(const Value: string);
    procedure SetId(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetStatus(const Value: string);
    procedure SetAutor(const Value: TDfeAutorEvento);
    procedure SetChaveAcesso(const Value: string);
    procedure SetDataEvento(const Value: TDateTime);
    procedure SetNumeroSequencial(const Value: Integer);
    procedure SetDataRecebimento(const Value: TDateTime);
    procedure SetCodigoStatus(const Value: Integer);
    procedure SetMotivoStatus(const Value: string);
    procedure SetNumeroProtocolo(const Value: string);
    procedure SetCodigoMensagem(const Value: Integer);
    procedure SetMensagem(const Value: string);
    procedure SetTipoEvento(const Value: string);
  public
    destructor Destroy; override;
    property Justificativa: string read FJustificativa write SetJustificativa;
    property JustificativaHasValue: Boolean read FJustificativaHasValue write FJustificativaHasValue;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Autor: TDfeAutorEvento read FAutor write SetAutor;
    property ChaveAcesso: string read FChaveAcesso write SetChaveAcesso;
    property ChaveAcessoHasValue: Boolean read FChaveAcessoHasValue write FChaveAcessoHasValue;
    property DataEvento: TDateTime read FDataEvento write SetDataEvento;
    property DataEventoHasValue: Boolean read FDataEventoHasValue write FDataEventoHasValue;
    property NumeroSequencial: Integer read FNumeroSequencial write SetNumeroSequencial;
    property NumeroSequencialHasValue: Boolean read FNumeroSequencialHasValue write FNumeroSequencialHasValue;
    property DataRecebimento: TDateTime read FDataRecebimento write SetDataRecebimento;
    property DataRecebimentoHasValue: Boolean read FDataRecebimentoHasValue write FDataRecebimentoHasValue;
    property CodigoStatus: Integer read FCodigoStatus write SetCodigoStatus;
    property CodigoStatusHasValue: Boolean read FCodigoStatusHasValue write FCodigoStatusHasValue;
    property MotivoStatus: string read FMotivoStatus write SetMotivoStatus;
    property MotivoStatusHasValue: Boolean read FMotivoStatusHasValue write FMotivoStatusHasValue;
    property NumeroProtocolo: string read FNumeroProtocolo write SetNumeroProtocolo;
    property NumeroProtocoloHasValue: Boolean read FNumeroProtocoloHasValue write FNumeroProtocoloHasValue;
    property CodigoMensagem: Integer read FCodigoMensagem write SetCodigoMensagem;
    property CodigoMensagemHasValue: Boolean read FCodigoMensagemHasValue write FCodigoMensagemHasValue;
    property Mensagem: string read FMensagem write SetMensagem;
    property MensagemHasValue: Boolean read FMensagemHasValue write FMensagemHasValue;
    property TipoEvento: string read FTipoEvento write SetTipoEvento;
    property TipoEventoHasValue: Boolean read FTipoEventoHasValue write FTipoEventoHasValue;
  end;
  
  TCteInfCorrecao = class
  private
    FGrupoAlterado: string;
    FGrupoAlteradoHasValue: Boolean;
    FCampoAlterado: string;
    FCampoAlteradoHasValue: Boolean;
    FValorAlterado: string;
    FValorAlteradoHasValue: Boolean;
    FNumeroItemAlterado: Integer;
    FNumeroItemAlteradoHasValue: Boolean;
    procedure SetGrupoAlterado(const Value: string);
    procedure SetCampoAlterado(const Value: string);
    procedure SetValorAlterado(const Value: string);
    procedure SetNumeroItemAlterado(const Value: Integer);
  public
    property GrupoAlterado: string read FGrupoAlterado write SetGrupoAlterado;
    property GrupoAlteradoHasValue: Boolean read FGrupoAlteradoHasValue write FGrupoAlteradoHasValue;
    property CampoAlterado: string read FCampoAlterado write SetCampoAlterado;
    property CampoAlteradoHasValue: Boolean read FCampoAlteradoHasValue write FCampoAlteradoHasValue;
    property ValorAlterado: string read FValorAlterado write SetValorAlterado;
    property ValorAlteradoHasValue: Boolean read FValorAlteradoHasValue write FValorAlteradoHasValue;
    property NumeroItemAlterado: Integer read FNumeroItemAlterado write SetNumeroItemAlterado;
    property NumeroItemAlteradoHasValue: Boolean read FNumeroItemAlteradoHasValue write FNumeroItemAlteradoHasValue;
  end;
  
  TCteInfCorrecaoList = class(TObjectList<TCteInfCorrecao>)
  end;
  
  TCtePedidoCartaCorrecao = class
  private
    FCorrecoes: TCteInfCorrecaoList;
    procedure SetCorrecoes(const Value: TCteInfCorrecaoList);
  public
    destructor Destroy; override;
    property Correcoes: TCteInfCorrecaoList read FCorrecoes write SetCorrecoes;
  end;
  
  TCteCartaCorrecao = class
  private
    FCorrecoes: TCteInfCorrecaoList;
    FId: string;
    FIdHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FAutor: TDfeAutorEvento;
    FChaveAcesso: string;
    FChaveAcessoHasValue: Boolean;
    FDataEvento: TDateTime;
    FDataEventoHasValue: Boolean;
    FNumeroSequencial: Integer;
    FNumeroSequencialHasValue: Boolean;
    FDataRecebimento: TDateTime;
    FDataRecebimentoHasValue: Boolean;
    FCodigoStatus: Integer;
    FCodigoStatusHasValue: Boolean;
    FMotivoStatus: string;
    FMotivoStatusHasValue: Boolean;
    FNumeroProtocolo: string;
    FNumeroProtocoloHasValue: Boolean;
    FCodigoMensagem: Integer;
    FCodigoMensagemHasValue: Boolean;
    FMensagem: string;
    FMensagemHasValue: Boolean;
    FTipoEvento: string;
    FTipoEventoHasValue: Boolean;
    procedure SetCorrecoes(const Value: TCteInfCorrecaoList);
    procedure SetId(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetStatus(const Value: string);
    procedure SetAutor(const Value: TDfeAutorEvento);
    procedure SetChaveAcesso(const Value: string);
    procedure SetDataEvento(const Value: TDateTime);
    procedure SetNumeroSequencial(const Value: Integer);
    procedure SetDataRecebimento(const Value: TDateTime);
    procedure SetCodigoStatus(const Value: Integer);
    procedure SetMotivoStatus(const Value: string);
    procedure SetNumeroProtocolo(const Value: string);
    procedure SetCodigoMensagem(const Value: Integer);
    procedure SetMensagem(const Value: string);
    procedure SetTipoEvento(const Value: string);
  public
    destructor Destroy; override;
    property Correcoes: TCteInfCorrecaoList read FCorrecoes write SetCorrecoes;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Autor: TDfeAutorEvento read FAutor write SetAutor;
    property ChaveAcesso: string read FChaveAcesso write SetChaveAcesso;
    property ChaveAcessoHasValue: Boolean read FChaveAcessoHasValue write FChaveAcessoHasValue;
    property DataEvento: TDateTime read FDataEvento write SetDataEvento;
    property DataEventoHasValue: Boolean read FDataEventoHasValue write FDataEventoHasValue;
    property NumeroSequencial: Integer read FNumeroSequencial write SetNumeroSequencial;
    property NumeroSequencialHasValue: Boolean read FNumeroSequencialHasValue write FNumeroSequencialHasValue;
    property DataRecebimento: TDateTime read FDataRecebimento write SetDataRecebimento;
    property DataRecebimentoHasValue: Boolean read FDataRecebimentoHasValue write FDataRecebimentoHasValue;
    property CodigoStatus: Integer read FCodigoStatus write SetCodigoStatus;
    property CodigoStatusHasValue: Boolean read FCodigoStatusHasValue write FCodigoStatusHasValue;
    property MotivoStatus: string read FMotivoStatus write SetMotivoStatus;
    property MotivoStatusHasValue: Boolean read FMotivoStatusHasValue write FMotivoStatusHasValue;
    property NumeroProtocolo: string read FNumeroProtocolo write SetNumeroProtocolo;
    property NumeroProtocoloHasValue: Boolean read FNumeroProtocoloHasValue write FNumeroProtocoloHasValue;
    property CodigoMensagem: Integer read FCodigoMensagem write SetCodigoMensagem;
    property CodigoMensagemHasValue: Boolean read FCodigoMensagemHasValue write FCodigoMensagemHasValue;
    property Mensagem: string read FMensagem write SetMensagem;
    property MensagemHasValue: Boolean read FMensagemHasValue write FMensagemHasValue;
    property TipoEvento: string read FTipoEvento write SetTipoEvento;
    property TipoEventoHasValue: Boolean read FTipoEventoHasValue write FTipoEventoHasValue;
  end;
  
  TDfePedidoInutilizacao = class
  private
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FCnpj: string;
    FCnpjHasValue: Boolean;
    FAno: Integer;
    FAnoHasValue: Boolean;
    FSerie: Integer;
    FSerieHasValue: Boolean;
    FNumeroInicial: Integer;
    FNumeroInicialHasValue: Boolean;
    FNumeroFinal: Integer;
    FNumeroFinalHasValue: Boolean;
    FJustificativa: string;
    FJustificativaHasValue: Boolean;
    procedure SetAmbiente(const Value: string);
    procedure SetCnpj(const Value: string);
    procedure SetAno(const Value: Integer);
    procedure SetSerie(const Value: Integer);
    procedure SetNumeroInicial(const Value: Integer);
    procedure SetNumeroFinal(const Value: Integer);
    procedure SetJustificativa(const Value: string);
  public
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Cnpj: string read FCnpj write SetCnpj;
    property CnpjHasValue: Boolean read FCnpjHasValue write FCnpjHasValue;
    property Ano: Integer read FAno write SetAno;
    property AnoHasValue: Boolean read FAnoHasValue write FAnoHasValue;
    property Serie: Integer read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property NumeroInicial: Integer read FNumeroInicial write SetNumeroInicial;
    property NumeroInicialHasValue: Boolean read FNumeroInicialHasValue write FNumeroInicialHasValue;
    property NumeroFinal: Integer read FNumeroFinal write SetNumeroFinal;
    property NumeroFinalHasValue: Boolean read FNumeroFinalHasValue write FNumeroFinalHasValue;
    property Justificativa: string read FJustificativa write SetJustificativa;
    property JustificativaHasValue: Boolean read FJustificativaHasValue write FJustificativaHasValue;
  end;
  
  TDfeInutilizacao = class
  private
    FCnpj: string;
    FCnpjHasValue: Boolean;
    FAno: Integer;
    FAnoHasValue: Boolean;
    FModelo: Integer;
    FModeloHasValue: Boolean;
    FSerie: Integer;
    FSerieHasValue: Boolean;
    FNumeroInicial: Integer;
    FNumeroInicialHasValue: Boolean;
    FNumeroFinal: Integer;
    FNumeroFinalHasValue: Boolean;
    FJustificativa: string;
    FJustificativaHasValue: Boolean;
    FId: string;
    FIdHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FAutor: TDfeAutorEvento;
    FChaveAcesso: string;
    FChaveAcessoHasValue: Boolean;
    FDataEvento: TDateTime;
    FDataEventoHasValue: Boolean;
    FNumeroSequencial: Integer;
    FNumeroSequencialHasValue: Boolean;
    FDataRecebimento: TDateTime;
    FDataRecebimentoHasValue: Boolean;
    FCodigoStatus: Integer;
    FCodigoStatusHasValue: Boolean;
    FMotivoStatus: string;
    FMotivoStatusHasValue: Boolean;
    FNumeroProtocolo: string;
    FNumeroProtocoloHasValue: Boolean;
    FCodigoMensagem: Integer;
    FCodigoMensagemHasValue: Boolean;
    FMensagem: string;
    FMensagemHasValue: Boolean;
    FTipoEvento: string;
    FTipoEventoHasValue: Boolean;
    procedure SetCnpj(const Value: string);
    procedure SetAno(const Value: Integer);
    procedure SetModelo(const Value: Integer);
    procedure SetSerie(const Value: Integer);
    procedure SetNumeroInicial(const Value: Integer);
    procedure SetNumeroFinal(const Value: Integer);
    procedure SetJustificativa(const Value: string);
    procedure SetId(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetStatus(const Value: string);
    procedure SetAutor(const Value: TDfeAutorEvento);
    procedure SetChaveAcesso(const Value: string);
    procedure SetDataEvento(const Value: TDateTime);
    procedure SetNumeroSequencial(const Value: Integer);
    procedure SetDataRecebimento(const Value: TDateTime);
    procedure SetCodigoStatus(const Value: Integer);
    procedure SetMotivoStatus(const Value: string);
    procedure SetNumeroProtocolo(const Value: string);
    procedure SetCodigoMensagem(const Value: Integer);
    procedure SetMensagem(const Value: string);
    procedure SetTipoEvento(const Value: string);
  public
    destructor Destroy; override;
    property Cnpj: string read FCnpj write SetCnpj;
    property CnpjHasValue: Boolean read FCnpjHasValue write FCnpjHasValue;
    property Ano: Integer read FAno write SetAno;
    property AnoHasValue: Boolean read FAnoHasValue write FAnoHasValue;
    property Modelo: Integer read FModelo write SetModelo;
    property ModeloHasValue: Boolean read FModeloHasValue write FModeloHasValue;
    property Serie: Integer read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property NumeroInicial: Integer read FNumeroInicial write SetNumeroInicial;
    property NumeroInicialHasValue: Boolean read FNumeroInicialHasValue write FNumeroInicialHasValue;
    property NumeroFinal: Integer read FNumeroFinal write SetNumeroFinal;
    property NumeroFinalHasValue: Boolean read FNumeroFinalHasValue write FNumeroFinalHasValue;
    property Justificativa: string read FJustificativa write SetJustificativa;
    property JustificativaHasValue: Boolean read FJustificativaHasValue write FJustificativaHasValue;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Autor: TDfeAutorEvento read FAutor write SetAutor;
    property ChaveAcesso: string read FChaveAcesso write SetChaveAcesso;
    property ChaveAcessoHasValue: Boolean read FChaveAcessoHasValue write FChaveAcessoHasValue;
    property DataEvento: TDateTime read FDataEvento write SetDataEvento;
    property DataEventoHasValue: Boolean read FDataEventoHasValue write FDataEventoHasValue;
    property NumeroSequencial: Integer read FNumeroSequencial write SetNumeroSequencial;
    property NumeroSequencialHasValue: Boolean read FNumeroSequencialHasValue write FNumeroSequencialHasValue;
    property DataRecebimento: TDateTime read FDataRecebimento write SetDataRecebimento;
    property DataRecebimentoHasValue: Boolean read FDataRecebimentoHasValue write FDataRecebimentoHasValue;
    property CodigoStatus: Integer read FCodigoStatus write SetCodigoStatus;
    property CodigoStatusHasValue: Boolean read FCodigoStatusHasValue write FCodigoStatusHasValue;
    property MotivoStatus: string read FMotivoStatus write SetMotivoStatus;
    property MotivoStatusHasValue: Boolean read FMotivoStatusHasValue write FMotivoStatusHasValue;
    property NumeroProtocolo: string read FNumeroProtocolo write SetNumeroProtocolo;
    property NumeroProtocoloHasValue: Boolean read FNumeroProtocoloHasValue write FNumeroProtocoloHasValue;
    property CodigoMensagem: Integer read FCodigoMensagem write SetCodigoMensagem;
    property CodigoMensagemHasValue: Boolean read FCodigoMensagemHasValue write FCodigoMensagemHasValue;
    property Mensagem: string read FMensagem write SetMensagem;
    property MensagemHasValue: Boolean read FMensagemHasValue write FMensagemHasValue;
    property TipoEvento: string read FTipoEvento write SetTipoEvento;
    property TipoEventoHasValue: Boolean read FTipoEventoHasValue write FTipoEventoHasValue;
  end;
  
  TDfeEvento = class
  private
    FId: string;
    FIdHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FAutor: TDfeAutorEvento;
    FChaveAcesso: string;
    FChaveAcessoHasValue: Boolean;
    FDataEvento: TDateTime;
    FDataEventoHasValue: Boolean;
    FNumeroSequencial: Integer;
    FNumeroSequencialHasValue: Boolean;
    FDataRecebimento: TDateTime;
    FDataRecebimentoHasValue: Boolean;
    FCodigoStatus: Integer;
    FCodigoStatusHasValue: Boolean;
    FMotivoStatus: string;
    FMotivoStatusHasValue: Boolean;
    FNumeroProtocolo: string;
    FNumeroProtocoloHasValue: Boolean;
    FCodigoMensagem: Integer;
    FCodigoMensagemHasValue: Boolean;
    FMensagem: string;
    FMensagemHasValue: Boolean;
    FTipoEvento: string;
    FTipoEventoHasValue: Boolean;
    procedure SetId(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetStatus(const Value: string);
    procedure SetAutor(const Value: TDfeAutorEvento);
    procedure SetChaveAcesso(const Value: string);
    procedure SetDataEvento(const Value: TDateTime);
    procedure SetNumeroSequencial(const Value: Integer);
    procedure SetDataRecebimento(const Value: TDateTime);
    procedure SetCodigoStatus(const Value: Integer);
    procedure SetMotivoStatus(const Value: string);
    procedure SetNumeroProtocolo(const Value: string);
    procedure SetCodigoMensagem(const Value: Integer);
    procedure SetMensagem(const Value: string);
    procedure SetTipoEvento(const Value: string);
  public
    destructor Destroy; override;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Autor: TDfeAutorEvento read FAutor write SetAutor;
    property ChaveAcesso: string read FChaveAcesso write SetChaveAcesso;
    property ChaveAcessoHasValue: Boolean read FChaveAcessoHasValue write FChaveAcessoHasValue;
    property DataEvento: TDateTime read FDataEvento write SetDataEvento;
    property DataEventoHasValue: Boolean read FDataEventoHasValue write FDataEventoHasValue;
    property NumeroSequencial: Integer read FNumeroSequencial write SetNumeroSequencial;
    property NumeroSequencialHasValue: Boolean read FNumeroSequencialHasValue write FNumeroSequencialHasValue;
    property DataRecebimento: TDateTime read FDataRecebimento write SetDataRecebimento;
    property DataRecebimentoHasValue: Boolean read FDataRecebimentoHasValue write FDataRecebimentoHasValue;
    property CodigoStatus: Integer read FCodigoStatus write SetCodigoStatus;
    property CodigoStatusHasValue: Boolean read FCodigoStatusHasValue write FCodigoStatusHasValue;
    property MotivoStatus: string read FMotivoStatus write SetMotivoStatus;
    property MotivoStatusHasValue: Boolean read FMotivoStatusHasValue write FMotivoStatusHasValue;
    property NumeroProtocolo: string read FNumeroProtocolo write SetNumeroProtocolo;
    property NumeroProtocoloHasValue: Boolean read FNumeroProtocoloHasValue write FNumeroProtocoloHasValue;
    property CodigoMensagem: Integer read FCodigoMensagem write SetCodigoMensagem;
    property CodigoMensagemHasValue: Boolean read FCodigoMensagemHasValue write FCodigoMensagemHasValue;
    property Mensagem: string read FMensagem write SetMensagem;
    property MensagemHasValue: Boolean read FMensagemHasValue write FMensagemHasValue;
    property TipoEvento: string read FTipoEvento write SetTipoEvento;
    property TipoEventoHasValue: Boolean read FTipoEventoHasValue write FTipoEventoHasValue;
  end;
  
  TMdfeSefazInfMunCarrega = class
  private
    FCMunCarrega: Integer;
    FCMunCarregaHasValue: Boolean;
    FXMunCarrega: string;
    FXMunCarregaHasValue: Boolean;
    procedure SetCMunCarrega(const Value: Integer);
    procedure SetXMunCarrega(const Value: string);
  public
    property CMunCarrega: Integer read FCMunCarrega write SetCMunCarrega;
    property CMunCarregaHasValue: Boolean read FCMunCarregaHasValue write FCMunCarregaHasValue;
    property XMunCarrega: string read FXMunCarrega write SetXMunCarrega;
    property XMunCarregaHasValue: Boolean read FXMunCarregaHasValue write FXMunCarregaHasValue;
  end;
  
  TMdfeSefazInfMunCarregaList = class(TObjectList<TMdfeSefazInfMunCarrega>)
  end;
  
  TMdfeSefazInfPercurso = class
  private
    FUFPer: string;
    FUFPerHasValue: Boolean;
    procedure SetUFPer(const Value: string);
  public
    property UFPer: string read FUFPer write SetUFPer;
    property UFPerHasValue: Boolean read FUFPerHasValue write FUFPerHasValue;
  end;
  
  TMdfeSefazInfPercursoList = class(TObjectList<TMdfeSefazInfPercurso>)
  end;
  
  TMdfeSefazIde = class
  private
    FCUF: Integer;
    FCUFHasValue: Boolean;
    FTpAmb: Integer;
    FTpAmbHasValue: Boolean;
    FTpEmit: Integer;
    FTpEmitHasValue: Boolean;
    FTpTransp: Integer;
    FTpTranspHasValue: Boolean;
    FMod: Integer;
    FModHasValue: Boolean;
    FSerie: Integer;
    FSerieHasValue: Boolean;
    FNMDF: Integer;
    FNMDFHasValue: Boolean;
    FCMDF: Integer;
    FCMDFHasValue: Boolean;
    FCDV: Integer;
    FCDVHasValue: Boolean;
    FModal: Integer;
    FModalHasValue: Boolean;
    FDhEmi: TDateTime;
    FDhEmiHasValue: Boolean;
    FTpEmis: Integer;
    FTpEmisHasValue: Boolean;
    FProcEmi: string;
    FProcEmiHasValue: Boolean;
    FVerProc: string;
    FVerProcHasValue: Boolean;
    FUFIni: string;
    FUFIniHasValue: Boolean;
    FUFFim: string;
    FUFFimHasValue: Boolean;
    FInfMunCarrega: TMdfeSefazInfMunCarregaList;
    FInfPercurso: TMdfeSefazInfPercursoList;
    FDhIniViagem: TDateTime;
    FDhIniViagemHasValue: Boolean;
    FIndCanalVerde: Integer;
    FIndCanalVerdeHasValue: Boolean;
    FIndCarregaPosterior: Integer;
    FIndCarregaPosteriorHasValue: Boolean;
    procedure SetCUF(const Value: Integer);
    procedure SetTpAmb(const Value: Integer);
    procedure SetTpEmit(const Value: Integer);
    procedure SetTpTransp(const Value: Integer);
    procedure SetMod(const Value: Integer);
    procedure SetSerie(const Value: Integer);
    procedure SetNMDF(const Value: Integer);
    procedure SetCMDF(const Value: Integer);
    procedure SetCDV(const Value: Integer);
    procedure SetModal(const Value: Integer);
    procedure SetDhEmi(const Value: TDateTime);
    procedure SetTpEmis(const Value: Integer);
    procedure SetProcEmi(const Value: string);
    procedure SetVerProc(const Value: string);
    procedure SetUFIni(const Value: string);
    procedure SetUFFim(const Value: string);
    procedure SetInfMunCarrega(const Value: TMdfeSefazInfMunCarregaList);
    procedure SetInfPercurso(const Value: TMdfeSefazInfPercursoList);
    procedure SetDhIniViagem(const Value: TDateTime);
    procedure SetIndCanalVerde(const Value: Integer);
    procedure SetIndCarregaPosterior(const Value: Integer);
  public
    destructor Destroy; override;
    property CUF: Integer read FCUF write SetCUF;
    property CUFHasValue: Boolean read FCUFHasValue write FCUFHasValue;
    property TpAmb: Integer read FTpAmb write SetTpAmb;
    property TpAmbHasValue: Boolean read FTpAmbHasValue write FTpAmbHasValue;
    property TpEmit: Integer read FTpEmit write SetTpEmit;
    property TpEmitHasValue: Boolean read FTpEmitHasValue write FTpEmitHasValue;
    property TpTransp: Integer read FTpTransp write SetTpTransp;
    property TpTranspHasValue: Boolean read FTpTranspHasValue write FTpTranspHasValue;
    property &Mod: Integer read FMod write SetMod;
    property &ModHasValue: Boolean read FModHasValue write FModHasValue;
    property Serie: Integer read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property NMDF: Integer read FNMDF write SetNMDF;
    property NMDFHasValue: Boolean read FNMDFHasValue write FNMDFHasValue;
    property CMDF: Integer read FCMDF write SetCMDF;
    property CMDFHasValue: Boolean read FCMDFHasValue write FCMDFHasValue;
    property CDV: Integer read FCDV write SetCDV;
    property CDVHasValue: Boolean read FCDVHasValue write FCDVHasValue;
    property Modal: Integer read FModal write SetModal;
    property ModalHasValue: Boolean read FModalHasValue write FModalHasValue;
    property DhEmi: TDateTime read FDhEmi write SetDhEmi;
    property DhEmiHasValue: Boolean read FDhEmiHasValue write FDhEmiHasValue;
    property TpEmis: Integer read FTpEmis write SetTpEmis;
    property TpEmisHasValue: Boolean read FTpEmisHasValue write FTpEmisHasValue;
    property ProcEmi: string read FProcEmi write SetProcEmi;
    property ProcEmiHasValue: Boolean read FProcEmiHasValue write FProcEmiHasValue;
    property VerProc: string read FVerProc write SetVerProc;
    property VerProcHasValue: Boolean read FVerProcHasValue write FVerProcHasValue;
    property UFIni: string read FUFIni write SetUFIni;
    property UFIniHasValue: Boolean read FUFIniHasValue write FUFIniHasValue;
    property UFFim: string read FUFFim write SetUFFim;
    property UFFimHasValue: Boolean read FUFFimHasValue write FUFFimHasValue;
    property InfMunCarrega: TMdfeSefazInfMunCarregaList read FInfMunCarrega write SetInfMunCarrega;
    property InfPercurso: TMdfeSefazInfPercursoList read FInfPercurso write SetInfPercurso;
    property DhIniViagem: TDateTime read FDhIniViagem write SetDhIniViagem;
    property DhIniViagemHasValue: Boolean read FDhIniViagemHasValue write FDhIniViagemHasValue;
    property IndCanalVerde: Integer read FIndCanalVerde write SetIndCanalVerde;
    property IndCanalVerdeHasValue: Boolean read FIndCanalVerdeHasValue write FIndCanalVerdeHasValue;
    property IndCarregaPosterior: Integer read FIndCarregaPosterior write SetIndCarregaPosterior;
    property IndCarregaPosteriorHasValue: Boolean read FIndCarregaPosteriorHasValue write FIndCarregaPosteriorHasValue;
  end;
  
  TMdfeSefazEndeEmi = class
  private
    FXLgr: string;
    FXLgrHasValue: Boolean;
    FNro: string;
    FNroHasValue: Boolean;
    FXCpl: string;
    FXCplHasValue: Boolean;
    FXBairro: string;
    FXBairroHasValue: Boolean;
    FCMun: Integer;
    FCMunHasValue: Boolean;
    FXMun: string;
    FXMunHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FEmail: string;
    FEmailHasValue: Boolean;
    procedure SetXLgr(const Value: string);
    procedure SetNro(const Value: string);
    procedure SetXCpl(const Value: string);
    procedure SetXBairro(const Value: string);
    procedure SetCMun(const Value: Integer);
    procedure SetXMun(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetUF(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetEmail(const Value: string);
  public
    property XLgr: string read FXLgr write SetXLgr;
    property XLgrHasValue: Boolean read FXLgrHasValue write FXLgrHasValue;
    property Nro: string read FNro write SetNro;
    property NroHasValue: Boolean read FNroHasValue write FNroHasValue;
    property XCpl: string read FXCpl write SetXCpl;
    property XCplHasValue: Boolean read FXCplHasValue write FXCplHasValue;
    property XBairro: string read FXBairro write SetXBairro;
    property XBairroHasValue: Boolean read FXBairroHasValue write FXBairroHasValue;
    property CMun: Integer read FCMun write SetCMun;
    property CMunHasValue: Boolean read FCMunHasValue write FCMunHasValue;
    property XMun: string read FXMun write SetXMun;
    property XMunHasValue: Boolean read FXMunHasValue write FXMunHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
  end;
  
  TMdfeSefazEmit = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FXFant: string;
    FXFantHasValue: Boolean;
    FEnderEmit: TMdfeSefazEndeEmi;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetXFant(const Value: string);
    procedure SetEnderEmit(const Value: TMdfeSefazEndeEmi);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property XFant: string read FXFant write SetXFant;
    property XFantHasValue: Boolean read FXFantHasValue write FXFantHasValue;
    property EnderEmit: TMdfeSefazEndeEmi read FEnderEmit write SetEnderEmit;
  end;
  
  TMdfeSefazAereo = class
  private
    FNac: string;
    FNacHasValue: Boolean;
    FMatr: string;
    FMatrHasValue: Boolean;
    FNVoo: string;
    FNVooHasValue: Boolean;
    FCAerEmb: string;
    FCAerEmbHasValue: Boolean;
    FCAerDes: string;
    FCAerDesHasValue: Boolean;
    FDVoo: TDate;
    FDVooHasValue: Boolean;
    procedure SetNac(const Value: string);
    procedure SetMatr(const Value: string);
    procedure SetNVoo(const Value: string);
    procedure SetCAerEmb(const Value: string);
    procedure SetCAerDes(const Value: string);
    procedure SetDVoo(const Value: TDate);
  public
    property Nac: string read FNac write SetNac;
    property NacHasValue: Boolean read FNacHasValue write FNacHasValue;
    property Matr: string read FMatr write SetMatr;
    property MatrHasValue: Boolean read FMatrHasValue write FMatrHasValue;
    property NVoo: string read FNVoo write SetNVoo;
    property NVooHasValue: Boolean read FNVooHasValue write FNVooHasValue;
    property CAerEmb: string read FCAerEmb write SetCAerEmb;
    property CAerEmbHasValue: Boolean read FCAerEmbHasValue write FCAerEmbHasValue;
    property CAerDes: string read FCAerDes write SetCAerDes;
    property CAerDesHasValue: Boolean read FCAerDesHasValue write FCAerDesHasValue;
    property DVoo: TDate read FDVoo write SetDVoo;
    property DVooHasValue: Boolean read FDVooHasValue write FDVooHasValue;
  end;
  
  TMdfeSefazInfCIOT = class
  private
    FCIOT: string;
    FCIOTHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    procedure SetCIOT(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
  public
    property CIOT: string read FCIOT write SetCIOT;
    property CIOTHasValue: Boolean read FCIOTHasValue write FCIOTHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
  end;
  
  TMdfeSefazInfCIOTList = class(TObjectList<TMdfeSefazInfCIOT>)
  end;
  
  TMdfeSefazDisp = class
  private
    FCNPJForn: string;
    FCNPJFornHasValue: Boolean;
    FCNPJPg: string;
    FCNPJPgHasValue: Boolean;
    FCPFPg: string;
    FCPFPgHasValue: Boolean;
    FNCompra: string;
    FNCompraHasValue: Boolean;
    FVValePed: Double;
    FVValePedHasValue: Boolean;
    FTpValePed: string;
    FTpValePedHasValue: Boolean;
    procedure SetCNPJForn(const Value: string);
    procedure SetCNPJPg(const Value: string);
    procedure SetCPFPg(const Value: string);
    procedure SetNCompra(const Value: string);
    procedure SetVValePed(const Value: Double);
    procedure SetTpValePed(const Value: string);
  public
    property CNPJForn: string read FCNPJForn write SetCNPJForn;
    property CNPJFornHasValue: Boolean read FCNPJFornHasValue write FCNPJFornHasValue;
    property CNPJPg: string read FCNPJPg write SetCNPJPg;
    property CNPJPgHasValue: Boolean read FCNPJPgHasValue write FCNPJPgHasValue;
    property CPFPg: string read FCPFPg write SetCPFPg;
    property CPFPgHasValue: Boolean read FCPFPgHasValue write FCPFPgHasValue;
    property NCompra: string read FNCompra write SetNCompra;
    property NCompraHasValue: Boolean read FNCompraHasValue write FNCompraHasValue;
    property VValePed: Double read FVValePed write SetVValePed;
    property VValePedHasValue: Boolean read FVValePedHasValue write FVValePedHasValue;
    property TpValePed: string read FTpValePed write SetTpValePed;
    property TpValePedHasValue: Boolean read FTpValePedHasValue write FTpValePedHasValue;
  end;
  
  TMdfeSefazDispList = class(TObjectList<TMdfeSefazDisp>)
  end;
  
  TMdfeSefazValePed = class
  private
    FDisp: TMdfeSefazDispList;
    FCategCombVeic: string;
    FCategCombVeicHasValue: Boolean;
    procedure SetDisp(const Value: TMdfeSefazDispList);
    procedure SetCategCombVeic(const Value: string);
  public
    destructor Destroy; override;
    property Disp: TMdfeSefazDispList read FDisp write SetDisp;
    property CategCombVeic: string read FCategCombVeic write SetCategCombVeic;
    property CategCombVeicHasValue: Boolean read FCategCombVeicHasValue write FCategCombVeicHasValue;
  end;
  
  TMdfeSefazInfContratante = class
  private
    FXNome: string;
    FXNomeHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FIdEstrangeiro: string;
    FIdEstrangeiroHasValue: Boolean;
    procedure SetXNome(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetIdEstrangeiro(const Value: string);
  public
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property IdEstrangeiro: string read FIdEstrangeiro write SetIdEstrangeiro;
    property IdEstrangeiroHasValue: Boolean read FIdEstrangeiroHasValue write FIdEstrangeiroHasValue;
  end;
  
  TMdfeSefazInfContratanteList = class(TObjectList<TMdfeSefazInfContratante>)
  end;
  
  TMdfeSefazComp = class
  private
    FTpComp: string;
    FTpCompHasValue: Boolean;
    FVComp: Double;
    FVCompHasValue: Boolean;
    FXComp: string;
    FXCompHasValue: Boolean;
    procedure SetTpComp(const Value: string);
    procedure SetVComp(const Value: Double);
    procedure SetXComp(const Value: string);
  public
    property TpComp: string read FTpComp write SetTpComp;
    property TpCompHasValue: Boolean read FTpCompHasValue write FTpCompHasValue;
    property VComp: Double read FVComp write SetVComp;
    property VCompHasValue: Boolean read FVCompHasValue write FVCompHasValue;
    property XComp: string read FXComp write SetXComp;
    property XCompHasValue: Boolean read FXCompHasValue write FXCompHasValue;
  end;
  
  TMdfeSefazCompList = class(TObjectList<TMdfeSefazComp>)
  end;
  
  TMdfeSefazInfPrazo = class
  private
    FNParcela: Integer;
    FNParcelaHasValue: Boolean;
    FDVenc: TDate;
    FDVencHasValue: Boolean;
    FVParcela: Double;
    FVParcelaHasValue: Boolean;
    procedure SetNParcela(const Value: Integer);
    procedure SetDVenc(const Value: TDate);
    procedure SetVParcela(const Value: Double);
  public
    property NParcela: Integer read FNParcela write SetNParcela;
    property NParcelaHasValue: Boolean read FNParcelaHasValue write FNParcelaHasValue;
    property DVenc: TDate read FDVenc write SetDVenc;
    property DVencHasValue: Boolean read FDVencHasValue write FDVencHasValue;
    property VParcela: Double read FVParcela write SetVParcela;
    property VParcelaHasValue: Boolean read FVParcelaHasValue write FVParcelaHasValue;
  end;
  
  TMdfeSefazInfPrazoList = class(TObjectList<TMdfeSefazInfPrazo>)
  end;
  
  TMdfeSefazInfBanc = class
  private
    FCodBanco: string;
    FCodBancoHasValue: Boolean;
    FCodAgencia: string;
    FCodAgenciaHasValue: Boolean;
    FCNPJIPEF: string;
    FCNPJIPEFHasValue: Boolean;
    FPIX: string;
    FPIXHasValue: Boolean;
    procedure SetCodBanco(const Value: string);
    procedure SetCodAgencia(const Value: string);
    procedure SetCNPJIPEF(const Value: string);
    procedure SetPIX(const Value: string);
  public
    property CodBanco: string read FCodBanco write SetCodBanco;
    property CodBancoHasValue: Boolean read FCodBancoHasValue write FCodBancoHasValue;
    property CodAgencia: string read FCodAgencia write SetCodAgencia;
    property CodAgenciaHasValue: Boolean read FCodAgenciaHasValue write FCodAgenciaHasValue;
    property CNPJIPEF: string read FCNPJIPEF write SetCNPJIPEF;
    property CNPJIPEFHasValue: Boolean read FCNPJIPEFHasValue write FCNPJIPEFHasValue;
    property PIX: string read FPIX write SetPIX;
    property PIXHasValue: Boolean read FPIXHasValue write FPIXHasValue;
  end;
  
  TMdfeSefazInfPag = class
  private
    FXNome: string;
    FXNomeHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FIdEstrangeiro: string;
    FIdEstrangeiroHasValue: Boolean;
    FComp: TMdfeSefazCompList;
    FVContrato: Double;
    FVContratoHasValue: Boolean;
    FIndAltoDesemp: Integer;
    FIndAltoDesempHasValue: Boolean;
    FIndPag: Integer;
    FIndPagHasValue: Boolean;
    FVAdiant: Double;
    FVAdiantHasValue: Boolean;
    FInfPrazo: TMdfeSefazInfPrazoList;
    FInfBanc: TMdfeSefazInfBanc;
    procedure SetXNome(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetIdEstrangeiro(const Value: string);
    procedure SetComp(const Value: TMdfeSefazCompList);
    procedure SetVContrato(const Value: Double);
    procedure SetIndAltoDesemp(const Value: Integer);
    procedure SetIndPag(const Value: Integer);
    procedure SetVAdiant(const Value: Double);
    procedure SetInfPrazo(const Value: TMdfeSefazInfPrazoList);
    procedure SetInfBanc(const Value: TMdfeSefazInfBanc);
  public
    destructor Destroy; override;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property IdEstrangeiro: string read FIdEstrangeiro write SetIdEstrangeiro;
    property IdEstrangeiroHasValue: Boolean read FIdEstrangeiroHasValue write FIdEstrangeiroHasValue;
    property Comp: TMdfeSefazCompList read FComp write SetComp;
    property VContrato: Double read FVContrato write SetVContrato;
    property VContratoHasValue: Boolean read FVContratoHasValue write FVContratoHasValue;
    property IndAltoDesemp: Integer read FIndAltoDesemp write SetIndAltoDesemp;
    property IndAltoDesempHasValue: Boolean read FIndAltoDesempHasValue write FIndAltoDesempHasValue;
    property IndPag: Integer read FIndPag write SetIndPag;
    property IndPagHasValue: Boolean read FIndPagHasValue write FIndPagHasValue;
    property VAdiant: Double read FVAdiant write SetVAdiant;
    property VAdiantHasValue: Boolean read FVAdiantHasValue write FVAdiantHasValue;
    property InfPrazo: TMdfeSefazInfPrazoList read FInfPrazo write SetInfPrazo;
    property InfBanc: TMdfeSefazInfBanc read FInfBanc write SetInfBanc;
  end;
  
  TMdfeSefazInfPagList = class(TObjectList<TMdfeSefazInfPag>)
  end;
  
  TMdfeSefazInfANTT = class
  private
    FRNTRC: string;
    FRNTRCHasValue: Boolean;
    FInfCIOT: TMdfeSefazInfCIOTList;
    FValePed: TMdfeSefazValePed;
    FInfContratante: TMdfeSefazInfContratanteList;
    FInfPag: TMdfeSefazInfPagList;
    procedure SetRNTRC(const Value: string);
    procedure SetInfCIOT(const Value: TMdfeSefazInfCIOTList);
    procedure SetValePed(const Value: TMdfeSefazValePed);
    procedure SetInfContratante(const Value: TMdfeSefazInfContratanteList);
    procedure SetInfPag(const Value: TMdfeSefazInfPagList);
  public
    destructor Destroy; override;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRCHasValue: Boolean read FRNTRCHasValue write FRNTRCHasValue;
    property InfCIOT: TMdfeSefazInfCIOTList read FInfCIOT write SetInfCIOT;
    property ValePed: TMdfeSefazValePed read FValePed write SetValePed;
    property InfContratante: TMdfeSefazInfContratanteList read FInfContratante write SetInfContratante;
    property InfPag: TMdfeSefazInfPagList read FInfPag write SetInfPag;
  end;
  
  TMdfeSefazProp = class
  private
    FCPF: string;
    FCPFHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FRNTRC: string;
    FRNTRCHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FTpProp: Integer;
    FTpPropHasValue: Boolean;
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetRNTRC(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetTpProp(const Value: Integer);
  public
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRCHasValue: Boolean read FRNTRCHasValue write FRNTRCHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property TpProp: Integer read FTpProp write SetTpProp;
    property TpPropHasValue: Boolean read FTpPropHasValue write FTpPropHasValue;
  end;
  
  TMdfeSefazCondutor = class
  private
    FXNome: string;
    FXNomeHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    procedure SetXNome(const Value: string);
    procedure SetCPF(const Value: string);
  public
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
  end;
  
  TMdfeSefazCondutorList = class(TObjectList<TMdfeSefazCondutor>)
  end;
  
  TMdfeSefazVeicTracao = class
  private
    FCInt: string;
    FCIntHasValue: Boolean;
    FPlaca: string;
    FPlacaHasValue: Boolean;
    FRENAVAM: string;
    FRENAVAMHasValue: Boolean;
    FTara: Integer;
    FTaraHasValue: Boolean;
    FCapKG: Integer;
    FCapKGHasValue: Boolean;
    FCapM3: Integer;
    FCapM3HasValue: Boolean;
    FProp: TMdfeSefazProp;
    FCondutor: TMdfeSefazCondutorList;
    FTpRod: string;
    FTpRodHasValue: Boolean;
    FTpCar: string;
    FTpCarHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    procedure SetCInt(const Value: string);
    procedure SetPlaca(const Value: string);
    procedure SetRENAVAM(const Value: string);
    procedure SetTara(const Value: Integer);
    procedure SetCapKG(const Value: Integer);
    procedure SetCapM3(const Value: Integer);
    procedure SetProp(const Value: TMdfeSefazProp);
    procedure SetCondutor(const Value: TMdfeSefazCondutorList);
    procedure SetTpRod(const Value: string);
    procedure SetTpCar(const Value: string);
    procedure SetUF(const Value: string);
  public
    destructor Destroy; override;
    property CInt: string read FCInt write SetCInt;
    property CIntHasValue: Boolean read FCIntHasValue write FCIntHasValue;
    property Placa: string read FPlaca write SetPlaca;
    property PlacaHasValue: Boolean read FPlacaHasValue write FPlacaHasValue;
    property RENAVAM: string read FRENAVAM write SetRENAVAM;
    property RENAVAMHasValue: Boolean read FRENAVAMHasValue write FRENAVAMHasValue;
    property Tara: Integer read FTara write SetTara;
    property TaraHasValue: Boolean read FTaraHasValue write FTaraHasValue;
    property CapKG: Integer read FCapKG write SetCapKG;
    property CapKGHasValue: Boolean read FCapKGHasValue write FCapKGHasValue;
    property CapM3: Integer read FCapM3 write SetCapM3;
    property CapM3HasValue: Boolean read FCapM3HasValue write FCapM3HasValue;
    property Prop: TMdfeSefazProp read FProp write SetProp;
    property Condutor: TMdfeSefazCondutorList read FCondutor write SetCondutor;
    property TpRod: string read FTpRod write SetTpRod;
    property TpRodHasValue: Boolean read FTpRodHasValue write FTpRodHasValue;
    property TpCar: string read FTpCar write SetTpCar;
    property TpCarHasValue: Boolean read FTpCarHasValue write FTpCarHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
  end;
  
  TMdfeSefazVeicReboqueProp = class
  private
    FCPF: string;
    FCPFHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FRNTRC: string;
    FRNTRCHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FTpProp: Integer;
    FTpPropHasValue: Boolean;
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetRNTRC(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetTpProp(const Value: Integer);
  public
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRCHasValue: Boolean read FRNTRCHasValue write FRNTRCHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property TpProp: Integer read FTpProp write SetTpProp;
    property TpPropHasValue: Boolean read FTpPropHasValue write FTpPropHasValue;
  end;
  
  TMdfeSefazVeicReboque = class
  private
    FCInt: string;
    FCIntHasValue: Boolean;
    FPlaca: string;
    FPlacaHasValue: Boolean;
    FRENAVAM: string;
    FRENAVAMHasValue: Boolean;
    FTara: Integer;
    FTaraHasValue: Boolean;
    FCapKG: Integer;
    FCapKGHasValue: Boolean;
    FCapM3: Integer;
    FCapM3HasValue: Boolean;
    FProp: TMdfeSefazVeicReboqueProp;
    FTpCar: string;
    FTpCarHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    procedure SetCInt(const Value: string);
    procedure SetPlaca(const Value: string);
    procedure SetRENAVAM(const Value: string);
    procedure SetTara(const Value: Integer);
    procedure SetCapKG(const Value: Integer);
    procedure SetCapM3(const Value: Integer);
    procedure SetProp(const Value: TMdfeSefazVeicReboqueProp);
    procedure SetTpCar(const Value: string);
    procedure SetUF(const Value: string);
  public
    destructor Destroy; override;
    property CInt: string read FCInt write SetCInt;
    property CIntHasValue: Boolean read FCIntHasValue write FCIntHasValue;
    property Placa: string read FPlaca write SetPlaca;
    property PlacaHasValue: Boolean read FPlacaHasValue write FPlacaHasValue;
    property RENAVAM: string read FRENAVAM write SetRENAVAM;
    property RENAVAMHasValue: Boolean read FRENAVAMHasValue write FRENAVAMHasValue;
    property Tara: Integer read FTara write SetTara;
    property TaraHasValue: Boolean read FTaraHasValue write FTaraHasValue;
    property CapKG: Integer read FCapKG write SetCapKG;
    property CapKGHasValue: Boolean read FCapKGHasValue write FCapKGHasValue;
    property CapM3: Integer read FCapM3 write SetCapM3;
    property CapM3HasValue: Boolean read FCapM3HasValue write FCapM3HasValue;
    property Prop: TMdfeSefazVeicReboqueProp read FProp write SetProp;
    property TpCar: string read FTpCar write SetTpCar;
    property TpCarHasValue: Boolean read FTpCarHasValue write FTpCarHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
  end;
  
  TMdfeSefazVeicReboqueList = class(TObjectList<TMdfeSefazVeicReboque>)
  end;
  
  TMdfeSefazLacRodo = class
  private
    FNLacre: string;
    FNLacreHasValue: Boolean;
    procedure SetNLacre(const Value: string);
  public
    property NLacre: string read FNLacre write SetNLacre;
    property NLacreHasValue: Boolean read FNLacreHasValue write FNLacreHasValue;
  end;
  
  TMdfeSefazLacRodoList = class(TObjectList<TMdfeSefazLacRodo>)
  end;
  
  TMdfeSefazRodo = class
  private
    FInfANTT: TMdfeSefazInfANTT;
    FVeicTracao: TMdfeSefazVeicTracao;
    FVeicReboque: TMdfeSefazVeicReboqueList;
    FCodAgPorto: string;
    FCodAgPortoHasValue: Boolean;
    FLacRodo: TMdfeSefazLacRodoList;
    procedure SetInfANTT(const Value: TMdfeSefazInfANTT);
    procedure SetVeicTracao(const Value: TMdfeSefazVeicTracao);
    procedure SetVeicReboque(const Value: TMdfeSefazVeicReboqueList);
    procedure SetCodAgPorto(const Value: string);
    procedure SetLacRodo(const Value: TMdfeSefazLacRodoList);
  public
    destructor Destroy; override;
    property InfANTT: TMdfeSefazInfANTT read FInfANTT write SetInfANTT;
    property VeicTracao: TMdfeSefazVeicTracao read FVeicTracao write SetVeicTracao;
    property VeicReboque: TMdfeSefazVeicReboqueList read FVeicReboque write SetVeicReboque;
    property CodAgPorto: string read FCodAgPorto write SetCodAgPorto;
    property CodAgPortoHasValue: Boolean read FCodAgPortoHasValue write FCodAgPortoHasValue;
    property LacRodo: TMdfeSefazLacRodoList read FLacRodo write SetLacRodo;
  end;
  
  TMdfeSefazInfTermCarreg = class
  private
    FCTermCarreg: string;
    FCTermCarregHasValue: Boolean;
    FXTermCarreg: string;
    FXTermCarregHasValue: Boolean;
    procedure SetCTermCarreg(const Value: string);
    procedure SetXTermCarreg(const Value: string);
  public
    property CTermCarreg: string read FCTermCarreg write SetCTermCarreg;
    property CTermCarregHasValue: Boolean read FCTermCarregHasValue write FCTermCarregHasValue;
    property XTermCarreg: string read FXTermCarreg write SetXTermCarreg;
    property XTermCarregHasValue: Boolean read FXTermCarregHasValue write FXTermCarregHasValue;
  end;
  
  TMdfeSefazInfTermCarregList = class(TObjectList<TMdfeSefazInfTermCarreg>)
  end;
  
  TMdfeSefazInfTermDescarreg = class
  private
    FCTermDescarreg: string;
    FCTermDescarregHasValue: Boolean;
    FXTermDescarreg: string;
    FXTermDescarregHasValue: Boolean;
    procedure SetCTermDescarreg(const Value: string);
    procedure SetXTermDescarreg(const Value: string);
  public
    property CTermDescarreg: string read FCTermDescarreg write SetCTermDescarreg;
    property CTermDescarregHasValue: Boolean read FCTermDescarregHasValue write FCTermDescarregHasValue;
    property XTermDescarreg: string read FXTermDescarreg write SetXTermDescarreg;
    property XTermDescarregHasValue: Boolean read FXTermDescarregHasValue write FXTermDescarregHasValue;
  end;
  
  TMdfeSefazInfTermDescarregList = class(TObjectList<TMdfeSefazInfTermDescarreg>)
  end;
  
  TMdfeSefazInfEmbComb = class
  private
    FCEmbComb: string;
    FCEmbCombHasValue: Boolean;
    FXBalsa: string;
    FXBalsaHasValue: Boolean;
    procedure SetCEmbComb(const Value: string);
    procedure SetXBalsa(const Value: string);
  public
    property CEmbComb: string read FCEmbComb write SetCEmbComb;
    property CEmbCombHasValue: Boolean read FCEmbCombHasValue write FCEmbCombHasValue;
    property XBalsa: string read FXBalsa write SetXBalsa;
    property XBalsaHasValue: Boolean read FXBalsaHasValue write FXBalsaHasValue;
  end;
  
  TMdfeSefazInfEmbCombList = class(TObjectList<TMdfeSefazInfEmbComb>)
  end;
  
  TMdfeSefazInfUnidCargaVazia = class
  private
    FIdUnidCargaVazia: string;
    FIdUnidCargaVaziaHasValue: Boolean;
    FTpUnidCargaVazia: Integer;
    FTpUnidCargaVaziaHasValue: Boolean;
    procedure SetIdUnidCargaVazia(const Value: string);
    procedure SetTpUnidCargaVazia(const Value: Integer);
  public
    property IdUnidCargaVazia: string read FIdUnidCargaVazia write SetIdUnidCargaVazia;
    property IdUnidCargaVaziaHasValue: Boolean read FIdUnidCargaVaziaHasValue write FIdUnidCargaVaziaHasValue;
    property TpUnidCargaVazia: Integer read FTpUnidCargaVazia write SetTpUnidCargaVazia;
    property TpUnidCargaVaziaHasValue: Boolean read FTpUnidCargaVaziaHasValue write FTpUnidCargaVaziaHasValue;
  end;
  
  TMdfeSefazInfUnidCargaVaziaList = class(TObjectList<TMdfeSefazInfUnidCargaVazia>)
  end;
  
  TMdfeSefazInfUnidTranspVazia = class
  private
    FIdUnidTranspVazia: string;
    FIdUnidTranspVaziaHasValue: Boolean;
    FTpUnidTranspVazia: Integer;
    FTpUnidTranspVaziaHasValue: Boolean;
    procedure SetIdUnidTranspVazia(const Value: string);
    procedure SetTpUnidTranspVazia(const Value: Integer);
  public
    property IdUnidTranspVazia: string read FIdUnidTranspVazia write SetIdUnidTranspVazia;
    property IdUnidTranspVaziaHasValue: Boolean read FIdUnidTranspVaziaHasValue write FIdUnidTranspVaziaHasValue;
    property TpUnidTranspVazia: Integer read FTpUnidTranspVazia write SetTpUnidTranspVazia;
    property TpUnidTranspVaziaHasValue: Boolean read FTpUnidTranspVaziaHasValue write FTpUnidTranspVaziaHasValue;
  end;
  
  TMdfeSefazInfUnidTranspVaziaList = class(TObjectList<TMdfeSefazInfUnidTranspVazia>)
  end;
  
  TMdfeSefazAquav = class
  private
    FIrin: string;
    FIrinHasValue: Boolean;
    FTpEmb: string;
    FTpEmbHasValue: Boolean;
    FCEmbar: string;
    FCEmbarHasValue: Boolean;
    FXEmbar: string;
    FXEmbarHasValue: Boolean;
    FNViag: string;
    FNViagHasValue: Boolean;
    FCPrtEmb: string;
    FCPrtEmbHasValue: Boolean;
    FCPrtDest: string;
    FCPrtDestHasValue: Boolean;
    FPrtTrans: string;
    FPrtTransHasValue: Boolean;
    FTpNav: Integer;
    FTpNavHasValue: Boolean;
    FInfTermCarreg: TMdfeSefazInfTermCarregList;
    FInfTermDescarreg: TMdfeSefazInfTermDescarregList;
    FInfEmbComb: TMdfeSefazInfEmbCombList;
    FInfUnidCargaVazia: TMdfeSefazInfUnidCargaVaziaList;
    FInfUnidTranspVazia: TMdfeSefazInfUnidTranspVaziaList;
    procedure SetIrin(const Value: string);
    procedure SetTpEmb(const Value: string);
    procedure SetCEmbar(const Value: string);
    procedure SetXEmbar(const Value: string);
    procedure SetNViag(const Value: string);
    procedure SetCPrtEmb(const Value: string);
    procedure SetCPrtDest(const Value: string);
    procedure SetPrtTrans(const Value: string);
    procedure SetTpNav(const Value: Integer);
    procedure SetInfTermCarreg(const Value: TMdfeSefazInfTermCarregList);
    procedure SetInfTermDescarreg(const Value: TMdfeSefazInfTermDescarregList);
    procedure SetInfEmbComb(const Value: TMdfeSefazInfEmbCombList);
    procedure SetInfUnidCargaVazia(const Value: TMdfeSefazInfUnidCargaVaziaList);
    procedure SetInfUnidTranspVazia(const Value: TMdfeSefazInfUnidTranspVaziaList);
  public
    destructor Destroy; override;
    property Irin: string read FIrin write SetIrin;
    property IrinHasValue: Boolean read FIrinHasValue write FIrinHasValue;
    property TpEmb: string read FTpEmb write SetTpEmb;
    property TpEmbHasValue: Boolean read FTpEmbHasValue write FTpEmbHasValue;
    property CEmbar: string read FCEmbar write SetCEmbar;
    property CEmbarHasValue: Boolean read FCEmbarHasValue write FCEmbarHasValue;
    property XEmbar: string read FXEmbar write SetXEmbar;
    property XEmbarHasValue: Boolean read FXEmbarHasValue write FXEmbarHasValue;
    property NViag: string read FNViag write SetNViag;
    property NViagHasValue: Boolean read FNViagHasValue write FNViagHasValue;
    property CPrtEmb: string read FCPrtEmb write SetCPrtEmb;
    property CPrtEmbHasValue: Boolean read FCPrtEmbHasValue write FCPrtEmbHasValue;
    property CPrtDest: string read FCPrtDest write SetCPrtDest;
    property CPrtDestHasValue: Boolean read FCPrtDestHasValue write FCPrtDestHasValue;
    property PrtTrans: string read FPrtTrans write SetPrtTrans;
    property PrtTransHasValue: Boolean read FPrtTransHasValue write FPrtTransHasValue;
    property TpNav: Integer read FTpNav write SetTpNav;
    property TpNavHasValue: Boolean read FTpNavHasValue write FTpNavHasValue;
    property InfTermCarreg: TMdfeSefazInfTermCarregList read FInfTermCarreg write SetInfTermCarreg;
    property InfTermDescarreg: TMdfeSefazInfTermDescarregList read FInfTermDescarreg write SetInfTermDescarreg;
    property InfEmbComb: TMdfeSefazInfEmbCombList read FInfEmbComb write SetInfEmbComb;
    property InfUnidCargaVazia: TMdfeSefazInfUnidCargaVaziaList read FInfUnidCargaVazia write SetInfUnidCargaVazia;
    property InfUnidTranspVazia: TMdfeSefazInfUnidTranspVaziaList read FInfUnidTranspVazia write SetInfUnidTranspVazia;
  end;
  
  TMdfeSefazTrem = class
  private
    FXPref: string;
    FXPrefHasValue: Boolean;
    FDhTrem: TDateTime;
    FDhTremHasValue: Boolean;
    FXOri: string;
    FXOriHasValue: Boolean;
    FXDest: string;
    FXDestHasValue: Boolean;
    FQVag: Integer;
    FQVagHasValue: Boolean;
    procedure SetXPref(const Value: string);
    procedure SetDhTrem(const Value: TDateTime);
    procedure SetXOri(const Value: string);
    procedure SetXDest(const Value: string);
    procedure SetQVag(const Value: Integer);
  public
    property XPref: string read FXPref write SetXPref;
    property XPrefHasValue: Boolean read FXPrefHasValue write FXPrefHasValue;
    property DhTrem: TDateTime read FDhTrem write SetDhTrem;
    property DhTremHasValue: Boolean read FDhTremHasValue write FDhTremHasValue;
    property XOri: string read FXOri write SetXOri;
    property XOriHasValue: Boolean read FXOriHasValue write FXOriHasValue;
    property XDest: string read FXDest write SetXDest;
    property XDestHasValue: Boolean read FXDestHasValue write FXDestHasValue;
    property QVag: Integer read FQVag write SetQVag;
    property QVagHasValue: Boolean read FQVagHasValue write FQVagHasValue;
  end;
  
  TMdfeSefazVag = class
  private
    FPesoBC: Double;
    FPesoBCHasValue: Boolean;
    FPesoR: Double;
    FPesoRHasValue: Boolean;
    FTpVag: string;
    FTpVagHasValue: Boolean;
    FSerie: string;
    FSerieHasValue: Boolean;
    FNVag: Integer;
    FNVagHasValue: Boolean;
    FNSeq: Integer;
    FNSeqHasValue: Boolean;
    FTU: Double;
    FTUHasValue: Boolean;
    procedure SetPesoBC(const Value: Double);
    procedure SetPesoR(const Value: Double);
    procedure SetTpVag(const Value: string);
    procedure SetSerie(const Value: string);
    procedure SetNVag(const Value: Integer);
    procedure SetNSeq(const Value: Integer);
    procedure SetTU(const Value: Double);
  public
    property PesoBC: Double read FPesoBC write SetPesoBC;
    property PesoBCHasValue: Boolean read FPesoBCHasValue write FPesoBCHasValue;
    property PesoR: Double read FPesoR write SetPesoR;
    property PesoRHasValue: Boolean read FPesoRHasValue write FPesoRHasValue;
    property TpVag: string read FTpVag write SetTpVag;
    property TpVagHasValue: Boolean read FTpVagHasValue write FTpVagHasValue;
    property Serie: string read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property NVag: Integer read FNVag write SetNVag;
    property NVagHasValue: Boolean read FNVagHasValue write FNVagHasValue;
    property NSeq: Integer read FNSeq write SetNSeq;
    property NSeqHasValue: Boolean read FNSeqHasValue write FNSeqHasValue;
    property TU: Double read FTU write SetTU;
    property TUHasValue: Boolean read FTUHasValue write FTUHasValue;
  end;
  
  TMdfeSefazVagList = class(TObjectList<TMdfeSefazVag>)
  end;
  
  TMdfeSefazFerrov = class
  private
    FTrem: TMdfeSefazTrem;
    FVag: TMdfeSefazVagList;
    procedure SetTrem(const Value: TMdfeSefazTrem);
    procedure SetVag(const Value: TMdfeSefazVagList);
  public
    destructor Destroy; override;
    property Trem: TMdfeSefazTrem read FTrem write SetTrem;
    property Vag: TMdfeSefazVagList read FVag write SetVag;
  end;
  
  TMdfeSefazInfModal = class
  private
    FVersaoModal: string;
    FVersaoModalHasValue: Boolean;
    FAereo: TMdfeSefazAereo;
    FRodo: TMdfeSefazRodo;
    FAquav: TMdfeSefazAquav;
    FFerrov: TMdfeSefazFerrov;
    procedure SetVersaoModal(const Value: string);
    procedure SetAereo(const Value: TMdfeSefazAereo);
    procedure SetRodo(const Value: TMdfeSefazRodo);
    procedure SetAquav(const Value: TMdfeSefazAquav);
    procedure SetFerrov(const Value: TMdfeSefazFerrov);
  public
    destructor Destroy; override;
    property VersaoModal: string read FVersaoModal write SetVersaoModal;
    property VersaoModalHasValue: Boolean read FVersaoModalHasValue write FVersaoModalHasValue;
    property Aereo: TMdfeSefazAereo read FAereo write SetAereo;
    property Rodo: TMdfeSefazRodo read FRodo write SetRodo;
    property Aquav: TMdfeSefazAquav read FAquav write SetAquav;
    property Ferrov: TMdfeSefazFerrov read FFerrov write SetFerrov;
  end;
  
  TMdfeSefazLacUnidTransp = class
  private
    FNLacre: string;
    FNLacreHasValue: Boolean;
    procedure SetNLacre(const Value: string);
  public
    property NLacre: string read FNLacre write SetNLacre;
    property NLacreHasValue: Boolean read FNLacreHasValue write FNLacreHasValue;
  end;
  
  TMdfeSefazLacUnidTranspList = class(TObjectList<TMdfeSefazLacUnidTransp>)
  end;
  
  TMdfeSefazLacUnidCarga = class
  private
    FNLacre: string;
    FNLacreHasValue: Boolean;
    procedure SetNLacre(const Value: string);
  public
    property NLacre: string read FNLacre write SetNLacre;
    property NLacreHasValue: Boolean read FNLacreHasValue write FNLacreHasValue;
  end;
  
  TMdfeSefazLacUnidCargaList = class(TObjectList<TMdfeSefazLacUnidCarga>)
  end;
  
  TMdfeSefazUnidCarga = class
  private
    FTpUnidCarga: Integer;
    FTpUnidCargaHasValue: Boolean;
    FIdUnidCarga: string;
    FIdUnidCargaHasValue: Boolean;
    FLacUnidCarga: TMdfeSefazLacUnidCargaList;
    FQtdRat: Double;
    FQtdRatHasValue: Boolean;
    procedure SetTpUnidCarga(const Value: Integer);
    procedure SetIdUnidCarga(const Value: string);
    procedure SetLacUnidCarga(const Value: TMdfeSefazLacUnidCargaList);
    procedure SetQtdRat(const Value: Double);
  public
    destructor Destroy; override;
    property TpUnidCarga: Integer read FTpUnidCarga write SetTpUnidCarga;
    property TpUnidCargaHasValue: Boolean read FTpUnidCargaHasValue write FTpUnidCargaHasValue;
    property IdUnidCarga: string read FIdUnidCarga write SetIdUnidCarga;
    property IdUnidCargaHasValue: Boolean read FIdUnidCargaHasValue write FIdUnidCargaHasValue;
    property LacUnidCarga: TMdfeSefazLacUnidCargaList read FLacUnidCarga write SetLacUnidCarga;
    property QtdRat: Double read FQtdRat write SetQtdRat;
    property QtdRatHasValue: Boolean read FQtdRatHasValue write FQtdRatHasValue;
  end;
  
  TMdfeSefazUnidCargaList = class(TObjectList<TMdfeSefazUnidCarga>)
  end;
  
  TMdfeSefazUnidadeTransp = class
  private
    FTpUnidTransp: Integer;
    FTpUnidTranspHasValue: Boolean;
    FIdUnidTransp: string;
    FIdUnidTranspHasValue: Boolean;
    FLacUnidTransp: TMdfeSefazLacUnidTranspList;
    FInfUnidCarga: TMdfeSefazUnidCargaList;
    FQtdRat: Double;
    FQtdRatHasValue: Boolean;
    procedure SetTpUnidTransp(const Value: Integer);
    procedure SetIdUnidTransp(const Value: string);
    procedure SetLacUnidTransp(const Value: TMdfeSefazLacUnidTranspList);
    procedure SetInfUnidCarga(const Value: TMdfeSefazUnidCargaList);
    procedure SetQtdRat(const Value: Double);
  public
    destructor Destroy; override;
    property TpUnidTransp: Integer read FTpUnidTransp write SetTpUnidTransp;
    property TpUnidTranspHasValue: Boolean read FTpUnidTranspHasValue write FTpUnidTranspHasValue;
    property IdUnidTransp: string read FIdUnidTransp write SetIdUnidTransp;
    property IdUnidTranspHasValue: Boolean read FIdUnidTranspHasValue write FIdUnidTranspHasValue;
    property LacUnidTransp: TMdfeSefazLacUnidTranspList read FLacUnidTransp write SetLacUnidTransp;
    property InfUnidCarga: TMdfeSefazUnidCargaList read FInfUnidCarga write SetInfUnidCarga;
    property QtdRat: Double read FQtdRat write SetQtdRat;
    property QtdRatHasValue: Boolean read FQtdRatHasValue write FQtdRatHasValue;
  end;
  
  TMdfeSefazUnidadeTranspList = class(TObjectList<TMdfeSefazUnidadeTransp>)
  end;
  
  TMdfeSefazPeri = class
  private
    FNONU: string;
    FNONUHasValue: Boolean;
    FXNomeAE: string;
    FXNomeAEHasValue: Boolean;
    FXClaRisco: string;
    FXClaRiscoHasValue: Boolean;
    FGrEmb: string;
    FGrEmbHasValue: Boolean;
    FQTotProd: string;
    FQTotProdHasValue: Boolean;
    FQVolTipo: string;
    FQVolTipoHasValue: Boolean;
    procedure SetNONU(const Value: string);
    procedure SetXNomeAE(const Value: string);
    procedure SetXClaRisco(const Value: string);
    procedure SetGrEmb(const Value: string);
    procedure SetQTotProd(const Value: string);
    procedure SetQVolTipo(const Value: string);
  public
    property NONU: string read FNONU write SetNONU;
    property NONUHasValue: Boolean read FNONUHasValue write FNONUHasValue;
    property XNomeAE: string read FXNomeAE write SetXNomeAE;
    property XNomeAEHasValue: Boolean read FXNomeAEHasValue write FXNomeAEHasValue;
    property XClaRisco: string read FXClaRisco write SetXClaRisco;
    property XClaRiscoHasValue: Boolean read FXClaRiscoHasValue write FXClaRiscoHasValue;
    property GrEmb: string read FGrEmb write SetGrEmb;
    property GrEmbHasValue: Boolean read FGrEmbHasValue write FGrEmbHasValue;
    property QTotProd: string read FQTotProd write SetQTotProd;
    property QTotProdHasValue: Boolean read FQTotProdHasValue write FQTotProdHasValue;
    property QVolTipo: string read FQVolTipo write SetQVolTipo;
    property QVolTipoHasValue: Boolean read FQVolTipoHasValue write FQVolTipoHasValue;
  end;
  
  TMdfeSefazPeriList = class(TObjectList<TMdfeSefazPeri>)
  end;
  
  TMdfeSefazInfEntregaParcial = class
  private
    FQtdTotal: Double;
    FQtdTotalHasValue: Boolean;
    FQtdParcial: Double;
    FQtdParcialHasValue: Boolean;
    procedure SetQtdTotal(const Value: Double);
    procedure SetQtdParcial(const Value: Double);
  public
    property QtdTotal: Double read FQtdTotal write SetQtdTotal;
    property QtdTotalHasValue: Boolean read FQtdTotalHasValue write FQtdTotalHasValue;
    property QtdParcial: Double read FQtdParcial write SetQtdParcial;
    property QtdParcialHasValue: Boolean read FQtdParcialHasValue write FQtdParcialHasValue;
  end;
  
  TMdfeSefazInfCTe = class
  private
    FChCTe: string;
    FChCTeHasValue: Boolean;
    FSegCodBarra: string;
    FSegCodBarraHasValue: Boolean;
    FIndReentrega: Integer;
    FIndReentregaHasValue: Boolean;
    FInfUnidTransp: TMdfeSefazUnidadeTranspList;
    FPeri: TMdfeSefazPeriList;
    FInfEntregaParcial: TMdfeSefazInfEntregaParcial;
    procedure SetChCTe(const Value: string);
    procedure SetSegCodBarra(const Value: string);
    procedure SetIndReentrega(const Value: Integer);
    procedure SetInfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
    procedure SetPeri(const Value: TMdfeSefazPeriList);
    procedure SetInfEntregaParcial(const Value: TMdfeSefazInfEntregaParcial);
  public
    destructor Destroy; override;
    property ChCTe: string read FChCTe write SetChCTe;
    property ChCTeHasValue: Boolean read FChCTeHasValue write FChCTeHasValue;
    property SegCodBarra: string read FSegCodBarra write SetSegCodBarra;
    property SegCodBarraHasValue: Boolean read FSegCodBarraHasValue write FSegCodBarraHasValue;
    property IndReentrega: Integer read FIndReentrega write SetIndReentrega;
    property IndReentregaHasValue: Boolean read FIndReentregaHasValue write FIndReentregaHasValue;
    property InfUnidTransp: TMdfeSefazUnidadeTranspList read FInfUnidTransp write SetInfUnidTransp;
    property Peri: TMdfeSefazPeriList read FPeri write SetPeri;
    property InfEntregaParcial: TMdfeSefazInfEntregaParcial read FInfEntregaParcial write SetInfEntregaParcial;
  end;
  
  TMdfeSefazInfCTeList = class(TObjectList<TMdfeSefazInfCTe>)
  end;
  
  TMdfeSefazInfNFePeri = class
  private
    FNONU: string;
    FNONUHasValue: Boolean;
    FXNomeAE: string;
    FXNomeAEHasValue: Boolean;
    FXClaRisco: string;
    FXClaRiscoHasValue: Boolean;
    FGrEmb: string;
    FGrEmbHasValue: Boolean;
    FQTotProd: string;
    FQTotProdHasValue: Boolean;
    FQVolTipo: string;
    FQVolTipoHasValue: Boolean;
    procedure SetNONU(const Value: string);
    procedure SetXNomeAE(const Value: string);
    procedure SetXClaRisco(const Value: string);
    procedure SetGrEmb(const Value: string);
    procedure SetQTotProd(const Value: string);
    procedure SetQVolTipo(const Value: string);
  public
    property NONU: string read FNONU write SetNONU;
    property NONUHasValue: Boolean read FNONUHasValue write FNONUHasValue;
    property XNomeAE: string read FXNomeAE write SetXNomeAE;
    property XNomeAEHasValue: Boolean read FXNomeAEHasValue write FXNomeAEHasValue;
    property XClaRisco: string read FXClaRisco write SetXClaRisco;
    property XClaRiscoHasValue: Boolean read FXClaRiscoHasValue write FXClaRiscoHasValue;
    property GrEmb: string read FGrEmb write SetGrEmb;
    property GrEmbHasValue: Boolean read FGrEmbHasValue write FGrEmbHasValue;
    property QTotProd: string read FQTotProd write SetQTotProd;
    property QTotProdHasValue: Boolean read FQTotProdHasValue write FQTotProdHasValue;
    property QVolTipo: string read FQVolTipo write SetQVolTipo;
    property QVolTipoHasValue: Boolean read FQVolTipoHasValue write FQVolTipoHasValue;
  end;
  
  TMdfeSefazInfNFePeriList = class(TObjectList<TMdfeSefazInfNFePeri>)
  end;
  
  TMdfeSefazInfNFe = class
  private
    FChNFe: string;
    FChNFeHasValue: Boolean;
    FSegCodBarra: string;
    FSegCodBarraHasValue: Boolean;
    FIndReentrega: Integer;
    FIndReentregaHasValue: Boolean;
    FInfUnidTransp: TMdfeSefazUnidadeTranspList;
    FPeri: TMdfeSefazInfNFePeriList;
    procedure SetChNFe(const Value: string);
    procedure SetSegCodBarra(const Value: string);
    procedure SetIndReentrega(const Value: Integer);
    procedure SetInfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
    procedure SetPeri(const Value: TMdfeSefazInfNFePeriList);
  public
    destructor Destroy; override;
    property ChNFe: string read FChNFe write SetChNFe;
    property ChNFeHasValue: Boolean read FChNFeHasValue write FChNFeHasValue;
    property SegCodBarra: string read FSegCodBarra write SetSegCodBarra;
    property SegCodBarraHasValue: Boolean read FSegCodBarraHasValue write FSegCodBarraHasValue;
    property IndReentrega: Integer read FIndReentrega write SetIndReentrega;
    property IndReentregaHasValue: Boolean read FIndReentregaHasValue write FIndReentregaHasValue;
    property InfUnidTransp: TMdfeSefazUnidadeTranspList read FInfUnidTransp write SetInfUnidTransp;
    property Peri: TMdfeSefazInfNFePeriList read FPeri write SetPeri;
  end;
  
  TMdfeSefazInfNFeList = class(TObjectList<TMdfeSefazInfNFe>)
  end;
  
  TMdfeSefazInfMDFeTranspPeri = class
  private
    FNONU: string;
    FNONUHasValue: Boolean;
    FXNomeAE: string;
    FXNomeAEHasValue: Boolean;
    FXClaRisco: string;
    FXClaRiscoHasValue: Boolean;
    FGrEmb: string;
    FGrEmbHasValue: Boolean;
    FQTotProd: string;
    FQTotProdHasValue: Boolean;
    FQVolTipo: string;
    FQVolTipoHasValue: Boolean;
    procedure SetNONU(const Value: string);
    procedure SetXNomeAE(const Value: string);
    procedure SetXClaRisco(const Value: string);
    procedure SetGrEmb(const Value: string);
    procedure SetQTotProd(const Value: string);
    procedure SetQVolTipo(const Value: string);
  public
    property NONU: string read FNONU write SetNONU;
    property NONUHasValue: Boolean read FNONUHasValue write FNONUHasValue;
    property XNomeAE: string read FXNomeAE write SetXNomeAE;
    property XNomeAEHasValue: Boolean read FXNomeAEHasValue write FXNomeAEHasValue;
    property XClaRisco: string read FXClaRisco write SetXClaRisco;
    property XClaRiscoHasValue: Boolean read FXClaRiscoHasValue write FXClaRiscoHasValue;
    property GrEmb: string read FGrEmb write SetGrEmb;
    property GrEmbHasValue: Boolean read FGrEmbHasValue write FGrEmbHasValue;
    property QTotProd: string read FQTotProd write SetQTotProd;
    property QTotProdHasValue: Boolean read FQTotProdHasValue write FQTotProdHasValue;
    property QVolTipo: string read FQVolTipo write SetQVolTipo;
    property QVolTipoHasValue: Boolean read FQVolTipoHasValue write FQVolTipoHasValue;
  end;
  
  TMdfeSefazInfMDFeTranspPeriList = class(TObjectList<TMdfeSefazInfMDFeTranspPeri>)
  end;
  
  TMdfeSefazInfMDFeTransp = class
  private
    FChMDFe: string;
    FChMDFeHasValue: Boolean;
    FIndReentrega: Integer;
    FIndReentregaHasValue: Boolean;
    FInfUnidTransp: TMdfeSefazUnidadeTranspList;
    FPeri: TMdfeSefazInfMDFeTranspPeriList;
    procedure SetChMDFe(const Value: string);
    procedure SetIndReentrega(const Value: Integer);
    procedure SetInfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
    procedure SetPeri(const Value: TMdfeSefazInfMDFeTranspPeriList);
  public
    destructor Destroy; override;
    property ChMDFe: string read FChMDFe write SetChMDFe;
    property ChMDFeHasValue: Boolean read FChMDFeHasValue write FChMDFeHasValue;
    property IndReentrega: Integer read FIndReentrega write SetIndReentrega;
    property IndReentregaHasValue: Boolean read FIndReentregaHasValue write FIndReentregaHasValue;
    property InfUnidTransp: TMdfeSefazUnidadeTranspList read FInfUnidTransp write SetInfUnidTransp;
    property Peri: TMdfeSefazInfMDFeTranspPeriList read FPeri write SetPeri;
  end;
  
  TMdfeSefazInfMDFeTranspList = class(TObjectList<TMdfeSefazInfMDFeTransp>)
  end;
  
  TMdfeSefazInfMunDescarga = class
  private
    FCMunDescarga: Integer;
    FCMunDescargaHasValue: Boolean;
    FXMunDescarga: string;
    FXMunDescargaHasValue: Boolean;
    FInfCTe: TMdfeSefazInfCTeList;
    FInfNFe: TMdfeSefazInfNFeList;
    FInfMDFeTransp: TMdfeSefazInfMDFeTranspList;
    procedure SetCMunDescarga(const Value: Integer);
    procedure SetXMunDescarga(const Value: string);
    procedure SetInfCTe(const Value: TMdfeSefazInfCTeList);
    procedure SetInfNFe(const Value: TMdfeSefazInfNFeList);
    procedure SetInfMDFeTransp(const Value: TMdfeSefazInfMDFeTranspList);
  public
    destructor Destroy; override;
    property CMunDescarga: Integer read FCMunDescarga write SetCMunDescarga;
    property CMunDescargaHasValue: Boolean read FCMunDescargaHasValue write FCMunDescargaHasValue;
    property XMunDescarga: string read FXMunDescarga write SetXMunDescarga;
    property XMunDescargaHasValue: Boolean read FXMunDescargaHasValue write FXMunDescargaHasValue;
    property InfCTe: TMdfeSefazInfCTeList read FInfCTe write SetInfCTe;
    property InfNFe: TMdfeSefazInfNFeList read FInfNFe write SetInfNFe;
    property InfMDFeTransp: TMdfeSefazInfMDFeTranspList read FInfMDFeTransp write SetInfMDFeTransp;
  end;
  
  TMdfeSefazInfMunDescargaList = class(TObjectList<TMdfeSefazInfMunDescarga>)
  end;
  
  TMdfeSefazInfDoc = class
  private
    FInfMunDescarga: TMdfeSefazInfMunDescargaList;
    procedure SetInfMunDescarga(const Value: TMdfeSefazInfMunDescargaList);
  public
    destructor Destroy; override;
    property InfMunDescarga: TMdfeSefazInfMunDescargaList read FInfMunDescarga write SetInfMunDescarga;
  end;
  
  TMdfeSefazInfResp = class
  private
    FRespSeg: Integer;
    FRespSegHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    procedure SetRespSeg(const Value: Integer);
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
  public
    property RespSeg: Integer read FRespSeg write SetRespSeg;
    property RespSegHasValue: Boolean read FRespSegHasValue write FRespSegHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
  end;
  
  TMdfeSefazInfSeg = class
  private
    FXSeg: string;
    FXSegHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    procedure SetXSeg(const Value: string);
    procedure SetCNPJ(const Value: string);
  public
    property XSeg: string read FXSeg write SetXSeg;
    property XSegHasValue: Boolean read FXSegHasValue write FXSegHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
  end;
  
  TMdfeSefazSeg = class
  private
    FInfResp: TMdfeSefazInfResp;
    FInfSeg: TMdfeSefazInfSeg;
    FNApol: string;
    FNApolHasValue: Boolean;
    FNAver: stringList;
    procedure SetInfResp(const Value: TMdfeSefazInfResp);
    procedure SetInfSeg(const Value: TMdfeSefazInfSeg);
    procedure SetNApol(const Value: string);
    procedure SetNAver(const Value: stringList);
  public
    destructor Destroy; override;
    property InfResp: TMdfeSefazInfResp read FInfResp write SetInfResp;
    property InfSeg: TMdfeSefazInfSeg read FInfSeg write SetInfSeg;
    property NApol: string read FNApol write SetNApol;
    property NApolHasValue: Boolean read FNApolHasValue write FNApolHasValue;
    property NAver: stringList read FNAver write SetNAver;
  end;
  
  TMdfeSefazSegList = class(TObjectList<TMdfeSefazSeg>)
  end;
  
  TMdfeSefazInfLocalCarrega = class
  private
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FLatitude: Double;
    FLatitudeHasValue: Boolean;
    FLongitude: Double;
    FLongitudeHasValue: Boolean;
    procedure SetCEP(const Value: Integer);
    procedure SetLatitude(const Value: Double);
    procedure SetLongitude(const Value: Double);
  public
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property Latitude: Double read FLatitude write SetLatitude;
    property LatitudeHasValue: Boolean read FLatitudeHasValue write FLatitudeHasValue;
    property Longitude: Double read FLongitude write SetLongitude;
    property LongitudeHasValue: Boolean read FLongitudeHasValue write FLongitudeHasValue;
  end;
  
  TMdfeSefazInfLocalDescarrega = class
  private
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FLatitude: Double;
    FLatitudeHasValue: Boolean;
    FLongitude: Double;
    FLongitudeHasValue: Boolean;
    procedure SetCEP(const Value: Integer);
    procedure SetLatitude(const Value: Double);
    procedure SetLongitude(const Value: Double);
  public
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property Latitude: Double read FLatitude write SetLatitude;
    property LatitudeHasValue: Boolean read FLatitudeHasValue write FLatitudeHasValue;
    property Longitude: Double read FLongitude write SetLongitude;
    property LongitudeHasValue: Boolean read FLongitudeHasValue write FLongitudeHasValue;
  end;
  
  TMdfeSefazInfLotacao = class
  private
    FInfLocalCarrega: TMdfeSefazInfLocalCarrega;
    FInfLocalDescarrega: TMdfeSefazInfLocalDescarrega;
    procedure SetInfLocalCarrega(const Value: TMdfeSefazInfLocalCarrega);
    procedure SetInfLocalDescarrega(const Value: TMdfeSefazInfLocalDescarrega);
  public
    destructor Destroy; override;
    property InfLocalCarrega: TMdfeSefazInfLocalCarrega read FInfLocalCarrega write SetInfLocalCarrega;
    property InfLocalDescarrega: TMdfeSefazInfLocalDescarrega read FInfLocalDescarrega write SetInfLocalDescarrega;
  end;
  
  TMdfeSefazProdPred = class
  private
    FTpCarga: string;
    FTpCargaHasValue: Boolean;
    FXProd: string;
    FXProdHasValue: Boolean;
    FCEAN: string;
    FCEANHasValue: Boolean;
    FNCM: string;
    FNCMHasValue: Boolean;
    FInfLotacao: TMdfeSefazInfLotacao;
    procedure SetTpCarga(const Value: string);
    procedure SetXProd(const Value: string);
    procedure SetCEAN(const Value: string);
    procedure SetNCM(const Value: string);
    procedure SetInfLotacao(const Value: TMdfeSefazInfLotacao);
  public
    destructor Destroy; override;
    property TpCarga: string read FTpCarga write SetTpCarga;
    property TpCargaHasValue: Boolean read FTpCargaHasValue write FTpCargaHasValue;
    property XProd: string read FXProd write SetXProd;
    property XProdHasValue: Boolean read FXProdHasValue write FXProdHasValue;
    property CEAN: string read FCEAN write SetCEAN;
    property CEANHasValue: Boolean read FCEANHasValue write FCEANHasValue;
    property NCM: string read FNCM write SetNCM;
    property NCMHasValue: Boolean read FNCMHasValue write FNCMHasValue;
    property InfLotacao: TMdfeSefazInfLotacao read FInfLotacao write SetInfLotacao;
  end;
  
  TMdfeSefazTot = class
  private
    FQCTe: Integer;
    FQCTeHasValue: Boolean;
    FQNFe: Integer;
    FQNFeHasValue: Boolean;
    FQMDFe: Integer;
    FQMDFeHasValue: Boolean;
    FVCarga: Double;
    FVCargaHasValue: Boolean;
    FCUnid: string;
    FCUnidHasValue: Boolean;
    FQCarga: Double;
    FQCargaHasValue: Boolean;
    procedure SetQCTe(const Value: Integer);
    procedure SetQNFe(const Value: Integer);
    procedure SetQMDFe(const Value: Integer);
    procedure SetVCarga(const Value: Double);
    procedure SetCUnid(const Value: string);
    procedure SetQCarga(const Value: Double);
  public
    property QCTe: Integer read FQCTe write SetQCTe;
    property QCTeHasValue: Boolean read FQCTeHasValue write FQCTeHasValue;
    property QNFe: Integer read FQNFe write SetQNFe;
    property QNFeHasValue: Boolean read FQNFeHasValue write FQNFeHasValue;
    property QMDFe: Integer read FQMDFe write SetQMDFe;
    property QMDFeHasValue: Boolean read FQMDFeHasValue write FQMDFeHasValue;
    property VCarga: Double read FVCarga write SetVCarga;
    property VCargaHasValue: Boolean read FVCargaHasValue write FVCargaHasValue;
    property CUnid: string read FCUnid write SetCUnid;
    property CUnidHasValue: Boolean read FCUnidHasValue write FCUnidHasValue;
    property QCarga: Double read FQCarga write SetQCarga;
    property QCargaHasValue: Boolean read FQCargaHasValue write FQCargaHasValue;
  end;
  
  TMdfeSefazLacres = class
  private
    FNLacre: string;
    FNLacreHasValue: Boolean;
    procedure SetNLacre(const Value: string);
  public
    property NLacre: string read FNLacre write SetNLacre;
    property NLacreHasValue: Boolean read FNLacreHasValue write FNLacreHasValue;
  end;
  
  TMdfeSefazLacresList = class(TObjectList<TMdfeSefazLacres>)
  end;
  
  TMdfeSefazAutXML = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
  end;
  
  TMdfeSefazAutXMLList = class(TObjectList<TMdfeSefazAutXML>)
  end;
  
  TMdfeSefazInfAdic = class
  private
    FInfAdFisco: string;
    FInfAdFiscoHasValue: Boolean;
    FInfCpl: string;
    FInfCplHasValue: Boolean;
    procedure SetInfAdFisco(const Value: string);
    procedure SetInfCpl(const Value: string);
  public
    property InfAdFisco: string read FInfAdFisco write SetInfAdFisco;
    property InfAdFiscoHasValue: Boolean read FInfAdFiscoHasValue write FInfAdFiscoHasValue;
    property InfCpl: string read FInfCpl write SetInfCpl;
    property InfCplHasValue: Boolean read FInfCplHasValue write FInfCplHasValue;
  end;
  
  TMdfeSefazRespTec = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FXContato: string;
    FXContatoHasValue: Boolean;
    FEmail: string;
    FEmailHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FIdCSRT: Integer;
    FIdCSRTHasValue: Boolean;
    FHashCSRT: string;
    FHashCSRTHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetXContato(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetIdCSRT(const Value: Integer);
    procedure SetHashCSRT(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property XContato: string read FXContato write SetXContato;
    property XContatoHasValue: Boolean read FXContatoHasValue write FXContatoHasValue;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property IdCSRT: Integer read FIdCSRT write SetIdCSRT;
    property IdCSRTHasValue: Boolean read FIdCSRTHasValue write FIdCSRTHasValue;
    property HashCSRT: string read FHashCSRT write SetHashCSRT;
    property HashCSRTHasValue: Boolean read FHashCSRTHasValue write FHashCSRTHasValue;
  end;
  
  TMdfeSefazInfSolicNFF = class
  private
    FXSolic: string;
    FXSolicHasValue: Boolean;
    procedure SetXSolic(const Value: string);
  public
    property XSolic: string read FXSolic write SetXSolic;
    property XSolicHasValue: Boolean read FXSolicHasValue write FXSolicHasValue;
  end;
  
  TMdfeSefazInfMDFe = class
  private
    FVersao: string;
    FVersaoHasValue: Boolean;
    FId: string;
    FIdHasValue: Boolean;
    FIde: TMdfeSefazIde;
    FEmit: TMdfeSefazEmit;
    FInfModal: TMdfeSefazInfModal;
    FInfDoc: TMdfeSefazInfDoc;
    FSeg: TMdfeSefazSegList;
    FProdPred: TMdfeSefazProdPred;
    FTot: TMdfeSefazTot;
    FLacres: TMdfeSefazLacresList;
    FAutXML: TMdfeSefazAutXMLList;
    FInfAdic: TMdfeSefazInfAdic;
    FInfRespTec: TMdfeSefazRespTec;
    FInfSolicNFF: TMdfeSefazInfSolicNFF;
    procedure SetVersao(const Value: string);
    procedure SetId(const Value: string);
    procedure SetIde(const Value: TMdfeSefazIde);
    procedure SetEmit(const Value: TMdfeSefazEmit);
    procedure SetInfModal(const Value: TMdfeSefazInfModal);
    procedure SetInfDoc(const Value: TMdfeSefazInfDoc);
    procedure SetSeg(const Value: TMdfeSefazSegList);
    procedure SetProdPred(const Value: TMdfeSefazProdPred);
    procedure SetTot(const Value: TMdfeSefazTot);
    procedure SetLacres(const Value: TMdfeSefazLacresList);
    procedure SetAutXML(const Value: TMdfeSefazAutXMLList);
    procedure SetInfAdic(const Value: TMdfeSefazInfAdic);
    procedure SetInfRespTec(const Value: TMdfeSefazRespTec);
    procedure SetInfSolicNFF(const Value: TMdfeSefazInfSolicNFF);
  public
    destructor Destroy; override;
    property Versao: string read FVersao write SetVersao;
    property VersaoHasValue: Boolean read FVersaoHasValue write FVersaoHasValue;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ide: TMdfeSefazIde read FIde write SetIde;
    property Emit: TMdfeSefazEmit read FEmit write SetEmit;
    property InfModal: TMdfeSefazInfModal read FInfModal write SetInfModal;
    property InfDoc: TMdfeSefazInfDoc read FInfDoc write SetInfDoc;
    property Seg: TMdfeSefazSegList read FSeg write SetSeg;
    property ProdPred: TMdfeSefazProdPred read FProdPred write SetProdPred;
    property Tot: TMdfeSefazTot read FTot write SetTot;
    property Lacres: TMdfeSefazLacresList read FLacres write SetLacres;
    property AutXML: TMdfeSefazAutXMLList read FAutXML write SetAutXML;
    property InfAdic: TMdfeSefazInfAdic read FInfAdic write SetInfAdic;
    property InfRespTec: TMdfeSefazRespTec read FInfRespTec write SetInfRespTec;
    property InfSolicNFF: TMdfeSefazInfSolicNFF read FInfSolicNFF write SetInfSolicNFF;
  end;
  
  TMdfeSefazInfMDFeSupl = class
  private
    FQrCodMDFe: string;
    FQrCodMDFeHasValue: Boolean;
    procedure SetQrCodMDFe(const Value: string);
  public
    property QrCodMDFe: string read FQrCodMDFe write SetQrCodMDFe;
    property QrCodMDFeHasValue: Boolean read FQrCodMDFeHasValue write FQrCodMDFeHasValue;
  end;
  
  TMdfePedidoEmissao = class
  private
    FInfMDFe: TMdfeSefazInfMDFe;
    FInfMDFeSupl: TMdfeSefazInfMDFeSupl;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FReferencia: string;
    FReferenciaHasValue: Boolean;
    procedure SetInfMDFe(const Value: TMdfeSefazInfMDFe);
    procedure SetInfMDFeSupl(const Value: TMdfeSefazInfMDFeSupl);
    procedure SetAmbiente(const Value: string);
    procedure SetReferencia(const Value: string);
  public
    destructor Destroy; override;
    property InfMDFe: TMdfeSefazInfMDFe read FInfMDFe write SetInfMDFe;
    property InfMDFeSupl: TMdfeSefazInfMDFeSupl read FInfMDFeSupl write SetInfMDFeSupl;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Referencia: string read FReferencia write SetReferencia;
    property ReferenciaHasValue: Boolean read FReferenciaHasValue write FReferenciaHasValue;
  end;
  
  TMdfePedidoEmissaoList = class(TObjectList<TMdfePedidoEmissao>)
  end;
  
  TMdfePedidoEmissaoLote = class
  private
    FDocumentos: TMdfePedidoEmissaoList;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FReferencia: string;
    FReferenciaHasValue: Boolean;
    FIdLote: string;
    FIdLoteHasValue: Boolean;
    procedure SetDocumentos(const Value: TMdfePedidoEmissaoList);
    procedure SetAmbiente(const Value: string);
    procedure SetReferencia(const Value: string);
    procedure SetIdLote(const Value: string);
  public
    destructor Destroy; override;
    property Documentos: TMdfePedidoEmissaoList read FDocumentos write SetDocumentos;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Referencia: string read FReferencia write SetReferencia;
    property ReferenciaHasValue: Boolean read FReferenciaHasValue write FReferenciaHasValue;
    property IdLote: string read FIdLote write SetIdLote;
    property IdLoteHasValue: Boolean read FIdLoteHasValue write FIdLoteHasValue;
  end;
  
  TMdfePedidoCancelamento = class
  private
    FJustificativa: string;
    FJustificativaHasValue: Boolean;
    procedure SetJustificativa(const Value: string);
  public
    property Justificativa: string read FJustificativa write SetJustificativa;
    property JustificativaHasValue: Boolean read FJustificativaHasValue write FJustificativaHasValue;
  end;
  
  TMdfePedidoEncerramento = class
  private
    FDataEncerramento: TDate;
    FDataEncerramentoHasValue: Boolean;
    FUf: string;
    FUfHasValue: Boolean;
    FCodigoMunicipio: Integer;
    FCodigoMunicipioHasValue: Boolean;
    procedure SetDataEncerramento(const Value: TDate);
    procedure SetUf(const Value: string);
    procedure SetCodigoMunicipio(const Value: Integer);
  public
    property DataEncerramento: TDate read FDataEncerramento write SetDataEncerramento;
    property DataEncerramentoHasValue: Boolean read FDataEncerramentoHasValue write FDataEncerramentoHasValue;
    property Uf: string read FUf write SetUf;
    property UfHasValue: Boolean read FUfHasValue write FUfHasValue;
    property CodigoMunicipio: Integer read FCodigoMunicipio write SetCodigoMunicipio;
    property CodigoMunicipioHasValue: Boolean read FCodigoMunicipioHasValue write FCodigoMunicipioHasValue;
  end;
  
  TMdfeEncerramento = class
  private
    FDataEncerramento: TDate;
    FDataEncerramentoHasValue: Boolean;
    FUf: string;
    FUfHasValue: Boolean;
    FCodigoMunicipio: Integer;
    FCodigoMunicipioHasValue: Boolean;
    FId: string;
    FIdHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FAutor: TDfeAutorEvento;
    FChaveAcesso: string;
    FChaveAcessoHasValue: Boolean;
    FDataEvento: TDateTime;
    FDataEventoHasValue: Boolean;
    FNumeroSequencial: Integer;
    FNumeroSequencialHasValue: Boolean;
    FDataRecebimento: TDateTime;
    FDataRecebimentoHasValue: Boolean;
    FCodigoStatus: Integer;
    FCodigoStatusHasValue: Boolean;
    FMotivoStatus: string;
    FMotivoStatusHasValue: Boolean;
    FNumeroProtocolo: string;
    FNumeroProtocoloHasValue: Boolean;
    FCodigoMensagem: Integer;
    FCodigoMensagemHasValue: Boolean;
    FMensagem: string;
    FMensagemHasValue: Boolean;
    FTipoEvento: string;
    FTipoEventoHasValue: Boolean;
    procedure SetDataEncerramento(const Value: TDate);
    procedure SetUf(const Value: string);
    procedure SetCodigoMunicipio(const Value: Integer);
    procedure SetId(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetStatus(const Value: string);
    procedure SetAutor(const Value: TDfeAutorEvento);
    procedure SetChaveAcesso(const Value: string);
    procedure SetDataEvento(const Value: TDateTime);
    procedure SetNumeroSequencial(const Value: Integer);
    procedure SetDataRecebimento(const Value: TDateTime);
    procedure SetCodigoStatus(const Value: Integer);
    procedure SetMotivoStatus(const Value: string);
    procedure SetNumeroProtocolo(const Value: string);
    procedure SetCodigoMensagem(const Value: Integer);
    procedure SetMensagem(const Value: string);
    procedure SetTipoEvento(const Value: string);
  public
    destructor Destroy; override;
    property DataEncerramento: TDate read FDataEncerramento write SetDataEncerramento;
    property DataEncerramentoHasValue: Boolean read FDataEncerramentoHasValue write FDataEncerramentoHasValue;
    property Uf: string read FUf write SetUf;
    property UfHasValue: Boolean read FUfHasValue write FUfHasValue;
    property CodigoMunicipio: Integer read FCodigoMunicipio write SetCodigoMunicipio;
    property CodigoMunicipioHasValue: Boolean read FCodigoMunicipioHasValue write FCodigoMunicipioHasValue;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Autor: TDfeAutorEvento read FAutor write SetAutor;
    property ChaveAcesso: string read FChaveAcesso write SetChaveAcesso;
    property ChaveAcessoHasValue: Boolean read FChaveAcessoHasValue write FChaveAcessoHasValue;
    property DataEvento: TDateTime read FDataEvento write SetDataEvento;
    property DataEventoHasValue: Boolean read FDataEventoHasValue write FDataEventoHasValue;
    property NumeroSequencial: Integer read FNumeroSequencial write SetNumeroSequencial;
    property NumeroSequencialHasValue: Boolean read FNumeroSequencialHasValue write FNumeroSequencialHasValue;
    property DataRecebimento: TDateTime read FDataRecebimento write SetDataRecebimento;
    property DataRecebimentoHasValue: Boolean read FDataRecebimentoHasValue write FDataRecebimentoHasValue;
    property CodigoStatus: Integer read FCodigoStatus write SetCodigoStatus;
    property CodigoStatusHasValue: Boolean read FCodigoStatusHasValue write FCodigoStatusHasValue;
    property MotivoStatus: string read FMotivoStatus write SetMotivoStatus;
    property MotivoStatusHasValue: Boolean read FMotivoStatusHasValue write FMotivoStatusHasValue;
    property NumeroProtocolo: string read FNumeroProtocolo write SetNumeroProtocolo;
    property NumeroProtocoloHasValue: Boolean read FNumeroProtocoloHasValue write FNumeroProtocoloHasValue;
    property CodigoMensagem: Integer read FCodigoMensagem write SetCodigoMensagem;
    property CodigoMensagemHasValue: Boolean read FCodigoMensagemHasValue write FCodigoMensagemHasValue;
    property Mensagem: string read FMensagem write SetMensagem;
    property MensagemHasValue: Boolean read FMensagemHasValue write FMensagemHasValue;
    property TipoEvento: string read FTipoEvento write SetTipoEvento;
    property TipoEventoHasValue: Boolean read FTipoEventoHasValue write FTipoEventoHasValue;
  end;
  
  TMdfePedidoInclusaoCondutor = class
  private
    FNomeCondutor: string;
    FNomeCondutorHasValue: Boolean;
    FCpfCondutor: string;
    FCpfCondutorHasValue: Boolean;
    procedure SetNomeCondutor(const Value: string);
    procedure SetCpfCondutor(const Value: string);
  public
    property NomeCondutor: string read FNomeCondutor write SetNomeCondutor;
    property NomeCondutorHasValue: Boolean read FNomeCondutorHasValue write FNomeCondutorHasValue;
    property CpfCondutor: string read FCpfCondutor write SetCpfCondutor;
    property CpfCondutorHasValue: Boolean read FCpfCondutorHasValue write FCpfCondutorHasValue;
  end;
  
  TMdfeInclusaoCondutor = class
  private
    FNomeCondutor: string;
    FNomeCondutorHasValue: Boolean;
    FCpfCondutor: string;
    FCpfCondutorHasValue: Boolean;
    FId: string;
    FIdHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FAutor: TDfeAutorEvento;
    FChaveAcesso: string;
    FChaveAcessoHasValue: Boolean;
    FDataEvento: TDateTime;
    FDataEventoHasValue: Boolean;
    FNumeroSequencial: Integer;
    FNumeroSequencialHasValue: Boolean;
    FDataRecebimento: TDateTime;
    FDataRecebimentoHasValue: Boolean;
    FCodigoStatus: Integer;
    FCodigoStatusHasValue: Boolean;
    FMotivoStatus: string;
    FMotivoStatusHasValue: Boolean;
    FNumeroProtocolo: string;
    FNumeroProtocoloHasValue: Boolean;
    FCodigoMensagem: Integer;
    FCodigoMensagemHasValue: Boolean;
    FMensagem: string;
    FMensagemHasValue: Boolean;
    FTipoEvento: string;
    FTipoEventoHasValue: Boolean;
    procedure SetNomeCondutor(const Value: string);
    procedure SetCpfCondutor(const Value: string);
    procedure SetId(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetStatus(const Value: string);
    procedure SetAutor(const Value: TDfeAutorEvento);
    procedure SetChaveAcesso(const Value: string);
    procedure SetDataEvento(const Value: TDateTime);
    procedure SetNumeroSequencial(const Value: Integer);
    procedure SetDataRecebimento(const Value: TDateTime);
    procedure SetCodigoStatus(const Value: Integer);
    procedure SetMotivoStatus(const Value: string);
    procedure SetNumeroProtocolo(const Value: string);
    procedure SetCodigoMensagem(const Value: Integer);
    procedure SetMensagem(const Value: string);
    procedure SetTipoEvento(const Value: string);
  public
    destructor Destroy; override;
    property NomeCondutor: string read FNomeCondutor write SetNomeCondutor;
    property NomeCondutorHasValue: Boolean read FNomeCondutorHasValue write FNomeCondutorHasValue;
    property CpfCondutor: string read FCpfCondutor write SetCpfCondutor;
    property CpfCondutorHasValue: Boolean read FCpfCondutorHasValue write FCpfCondutorHasValue;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Autor: TDfeAutorEvento read FAutor write SetAutor;
    property ChaveAcesso: string read FChaveAcesso write SetChaveAcesso;
    property ChaveAcessoHasValue: Boolean read FChaveAcessoHasValue write FChaveAcessoHasValue;
    property DataEvento: TDateTime read FDataEvento write SetDataEvento;
    property DataEventoHasValue: Boolean read FDataEventoHasValue write FDataEventoHasValue;
    property NumeroSequencial: Integer read FNumeroSequencial write SetNumeroSequencial;
    property NumeroSequencialHasValue: Boolean read FNumeroSequencialHasValue write FNumeroSequencialHasValue;
    property DataRecebimento: TDateTime read FDataRecebimento write SetDataRecebimento;
    property DataRecebimentoHasValue: Boolean read FDataRecebimentoHasValue write FDataRecebimentoHasValue;
    property CodigoStatus: Integer read FCodigoStatus write SetCodigoStatus;
    property CodigoStatusHasValue: Boolean read FCodigoStatusHasValue write FCodigoStatusHasValue;
    property MotivoStatus: string read FMotivoStatus write SetMotivoStatus;
    property MotivoStatusHasValue: Boolean read FMotivoStatusHasValue write FMotivoStatusHasValue;
    property NumeroProtocolo: string read FNumeroProtocolo write SetNumeroProtocolo;
    property NumeroProtocoloHasValue: Boolean read FNumeroProtocoloHasValue write FNumeroProtocoloHasValue;
    property CodigoMensagem: Integer read FCodigoMensagem write SetCodigoMensagem;
    property CodigoMensagemHasValue: Boolean read FCodigoMensagemHasValue write FCodigoMensagemHasValue;
    property Mensagem: string read FMensagem write SetMensagem;
    property MensagemHasValue: Boolean read FMensagemHasValue write FMensagemHasValue;
    property TipoEvento: string read FTipoEvento write SetTipoEvento;
    property TipoEventoHasValue: Boolean read FTipoEventoHasValue write FTipoEventoHasValue;
  end;
  
  TMdfeDocumentoVinculado = class
  private
    FCodigoMunicipioDescarga: Integer;
    FCodigoMunicipioDescargaHasValue: Boolean;
    FMunicipioDescarga: string;
    FMunicipioDescargaHasValue: Boolean;
    FChaveAcessoNfe: string;
    FChaveAcessoNfeHasValue: Boolean;
    procedure SetCodigoMunicipioDescarga(const Value: Integer);
    procedure SetMunicipioDescarga(const Value: string);
    procedure SetChaveAcessoNfe(const Value: string);
  public
    property CodigoMunicipioDescarga: Integer read FCodigoMunicipioDescarga write SetCodigoMunicipioDescarga;
    property CodigoMunicipioDescargaHasValue: Boolean read FCodigoMunicipioDescargaHasValue write FCodigoMunicipioDescargaHasValue;
    property MunicipioDescarga: string read FMunicipioDescarga write SetMunicipioDescarga;
    property MunicipioDescargaHasValue: Boolean read FMunicipioDescargaHasValue write FMunicipioDescargaHasValue;
    property ChaveAcessoNfe: string read FChaveAcessoNfe write SetChaveAcessoNfe;
    property ChaveAcessoNfeHasValue: Boolean read FChaveAcessoNfeHasValue write FChaveAcessoNfeHasValue;
  end;
  
  TMdfeDocumentoVinculadoList = class(TObjectList<TMdfeDocumentoVinculado>)
  end;
  
  TMdfePedidoInclusaoDfe = class
  private
    FCodigoMunicipioCarrega: Integer;
    FCodigoMunicipioCarregaHasValue: Boolean;
    FMunicipioCarrega: string;
    FMunicipioCarregaHasValue: Boolean;
    FDocumentos: TMdfeDocumentoVinculadoList;
    FProtocoloAutorizacao: string;
    FProtocoloAutorizacaoHasValue: Boolean;
    procedure SetCodigoMunicipioCarrega(const Value: Integer);
    procedure SetMunicipioCarrega(const Value: string);
    procedure SetDocumentos(const Value: TMdfeDocumentoVinculadoList);
    procedure SetProtocoloAutorizacao(const Value: string);
  public
    destructor Destroy; override;
    property CodigoMunicipioCarrega: Integer read FCodigoMunicipioCarrega write SetCodigoMunicipioCarrega;
    property CodigoMunicipioCarregaHasValue: Boolean read FCodigoMunicipioCarregaHasValue write FCodigoMunicipioCarregaHasValue;
    property MunicipioCarrega: string read FMunicipioCarrega write SetMunicipioCarrega;
    property MunicipioCarregaHasValue: Boolean read FMunicipioCarregaHasValue write FMunicipioCarregaHasValue;
    property Documentos: TMdfeDocumentoVinculadoList read FDocumentos write SetDocumentos;
    property ProtocoloAutorizacao: string read FProtocoloAutorizacao write SetProtocoloAutorizacao;
    property ProtocoloAutorizacaoHasValue: Boolean read FProtocoloAutorizacaoHasValue write FProtocoloAutorizacaoHasValue;
  end;
  
  TMdfeInclusaoDfe = class
  private
    FCodigoMunicipioCarrega: Integer;
    FCodigoMunicipioCarregaHasValue: Boolean;
    FMunicipioCarrega: string;
    FMunicipioCarregaHasValue: Boolean;
    FDocumentos: TMdfeDocumentoVinculadoList;
    FId: string;
    FIdHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FAutor: TDfeAutorEvento;
    FChaveAcesso: string;
    FChaveAcessoHasValue: Boolean;
    FDataEvento: TDateTime;
    FDataEventoHasValue: Boolean;
    FNumeroSequencial: Integer;
    FNumeroSequencialHasValue: Boolean;
    FDataRecebimento: TDateTime;
    FDataRecebimentoHasValue: Boolean;
    FCodigoStatus: Integer;
    FCodigoStatusHasValue: Boolean;
    FMotivoStatus: string;
    FMotivoStatusHasValue: Boolean;
    FNumeroProtocolo: string;
    FNumeroProtocoloHasValue: Boolean;
    FCodigoMensagem: Integer;
    FCodigoMensagemHasValue: Boolean;
    FMensagem: string;
    FMensagemHasValue: Boolean;
    FTipoEvento: string;
    FTipoEventoHasValue: Boolean;
    procedure SetCodigoMunicipioCarrega(const Value: Integer);
    procedure SetMunicipioCarrega(const Value: string);
    procedure SetDocumentos(const Value: TMdfeDocumentoVinculadoList);
    procedure SetId(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetStatus(const Value: string);
    procedure SetAutor(const Value: TDfeAutorEvento);
    procedure SetChaveAcesso(const Value: string);
    procedure SetDataEvento(const Value: TDateTime);
    procedure SetNumeroSequencial(const Value: Integer);
    procedure SetDataRecebimento(const Value: TDateTime);
    procedure SetCodigoStatus(const Value: Integer);
    procedure SetMotivoStatus(const Value: string);
    procedure SetNumeroProtocolo(const Value: string);
    procedure SetCodigoMensagem(const Value: Integer);
    procedure SetMensagem(const Value: string);
    procedure SetTipoEvento(const Value: string);
  public
    destructor Destroy; override;
    property CodigoMunicipioCarrega: Integer read FCodigoMunicipioCarrega write SetCodigoMunicipioCarrega;
    property CodigoMunicipioCarregaHasValue: Boolean read FCodigoMunicipioCarregaHasValue write FCodigoMunicipioCarregaHasValue;
    property MunicipioCarrega: string read FMunicipioCarrega write SetMunicipioCarrega;
    property MunicipioCarregaHasValue: Boolean read FMunicipioCarregaHasValue write FMunicipioCarregaHasValue;
    property Documentos: TMdfeDocumentoVinculadoList read FDocumentos write SetDocumentos;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Autor: TDfeAutorEvento read FAutor write SetAutor;
    property ChaveAcesso: string read FChaveAcesso write SetChaveAcesso;
    property ChaveAcessoHasValue: Boolean read FChaveAcessoHasValue write FChaveAcessoHasValue;
    property DataEvento: TDateTime read FDataEvento write SetDataEvento;
    property DataEventoHasValue: Boolean read FDataEventoHasValue write FDataEventoHasValue;
    property NumeroSequencial: Integer read FNumeroSequencial write SetNumeroSequencial;
    property NumeroSequencialHasValue: Boolean read FNumeroSequencialHasValue write FNumeroSequencialHasValue;
    property DataRecebimento: TDateTime read FDataRecebimento write SetDataRecebimento;
    property DataRecebimentoHasValue: Boolean read FDataRecebimentoHasValue write FDataRecebimentoHasValue;
    property CodigoStatus: Integer read FCodigoStatus write SetCodigoStatus;
    property CodigoStatusHasValue: Boolean read FCodigoStatusHasValue write FCodigoStatusHasValue;
    property MotivoStatus: string read FMotivoStatus write SetMotivoStatus;
    property MotivoStatusHasValue: Boolean read FMotivoStatusHasValue write FMotivoStatusHasValue;
    property NumeroProtocolo: string read FNumeroProtocolo write SetNumeroProtocolo;
    property NumeroProtocoloHasValue: Boolean read FNumeroProtocoloHasValue write FNumeroProtocoloHasValue;
    property CodigoMensagem: Integer read FCodigoMensagem write SetCodigoMensagem;
    property CodigoMensagemHasValue: Boolean read FCodigoMensagemHasValue write FCodigoMensagemHasValue;
    property Mensagem: string read FMensagem write SetMensagem;
    property MensagemHasValue: Boolean read FMensagemHasValue write FMensagemHasValue;
    property TipoEvento: string read FTipoEvento write SetTipoEvento;
    property TipoEventoHasValue: Boolean read FTipoEventoHasValue write FTipoEventoHasValue;
  end;
  
  TNfeSefazRefNF = class
  private
    FCUF: Integer;
    FCUFHasValue: Boolean;
    FAAMM: string;
    FAAMMHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FMod: string;
    FModHasValue: Boolean;
    FSerie: Integer;
    FSerieHasValue: Boolean;
    FNNF: Integer;
    FNNFHasValue: Boolean;
    procedure SetCUF(const Value: Integer);
    procedure SetAAMM(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetMod(const Value: string);
    procedure SetSerie(const Value: Integer);
    procedure SetNNF(const Value: Integer);
  public
    property CUF: Integer read FCUF write SetCUF;
    property CUFHasValue: Boolean read FCUFHasValue write FCUFHasValue;
    property AAMM: string read FAAMM write SetAAMM;
    property AAMMHasValue: Boolean read FAAMMHasValue write FAAMMHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property &Mod: string read FMod write SetMod;
    property &ModHasValue: Boolean read FModHasValue write FModHasValue;
    property Serie: Integer read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property NNF: Integer read FNNF write SetNNF;
    property NNFHasValue: Boolean read FNNFHasValue write FNNFHasValue;
  end;
  
  TNfeSefazRefNFP = class
  private
    FCUF: Integer;
    FCUFHasValue: Boolean;
    FAAMM: string;
    FAAMMHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FMod: string;
    FModHasValue: Boolean;
    FSerie: Integer;
    FSerieHasValue: Boolean;
    FNNF: Integer;
    FNNFHasValue: Boolean;
    procedure SetCUF(const Value: Integer);
    procedure SetAAMM(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetMod(const Value: string);
    procedure SetSerie(const Value: Integer);
    procedure SetNNF(const Value: Integer);
  public
    property CUF: Integer read FCUF write SetCUF;
    property CUFHasValue: Boolean read FCUFHasValue write FCUFHasValue;
    property AAMM: string read FAAMM write SetAAMM;
    property AAMMHasValue: Boolean read FAAMMHasValue write FAAMMHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property &Mod: string read FMod write SetMod;
    property &ModHasValue: Boolean read FModHasValue write FModHasValue;
    property Serie: Integer read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property NNF: Integer read FNNF write SetNNF;
    property NNFHasValue: Boolean read FNNFHasValue write FNNFHasValue;
  end;
  
  TNfeSefazRefECF = class
  private
    FMod: string;
    FModHasValue: Boolean;
    FNECF: Integer;
    FNECFHasValue: Boolean;
    FNCOO: Integer;
    FNCOOHasValue: Boolean;
    procedure SetMod(const Value: string);
    procedure SetNECF(const Value: Integer);
    procedure SetNCOO(const Value: Integer);
  public
    property &Mod: string read FMod write SetMod;
    property &ModHasValue: Boolean read FModHasValue write FModHasValue;
    property NECF: Integer read FNECF write SetNECF;
    property NECFHasValue: Boolean read FNECFHasValue write FNECFHasValue;
    property NCOO: Integer read FNCOO write SetNCOO;
    property NCOOHasValue: Boolean read FNCOOHasValue write FNCOOHasValue;
  end;
  
  TNfeSefazNFref = class
  private
    FRefNFe: string;
    FRefNFeHasValue: Boolean;
    FRefNF: TNfeSefazRefNF;
    FRefNFP: TNfeSefazRefNFP;
    FRefCTe: string;
    FRefCTeHasValue: Boolean;
    FRefECF: TNfeSefazRefECF;
    procedure SetRefNFe(const Value: string);
    procedure SetRefNF(const Value: TNfeSefazRefNF);
    procedure SetRefNFP(const Value: TNfeSefazRefNFP);
    procedure SetRefCTe(const Value: string);
    procedure SetRefECF(const Value: TNfeSefazRefECF);
  public
    destructor Destroy; override;
    property RefNFe: string read FRefNFe write SetRefNFe;
    property RefNFeHasValue: Boolean read FRefNFeHasValue write FRefNFeHasValue;
    property RefNF: TNfeSefazRefNF read FRefNF write SetRefNF;
    property RefNFP: TNfeSefazRefNFP read FRefNFP write SetRefNFP;
    property RefCTe: string read FRefCTe write SetRefCTe;
    property RefCTeHasValue: Boolean read FRefCTeHasValue write FRefCTeHasValue;
    property RefECF: TNfeSefazRefECF read FRefECF write SetRefECF;
  end;
  
  TNfeSefazNFrefList = class(TObjectList<TNfeSefazNFref>)
  end;
  
  TNfeSefazIde = class
  private
    FCUF: Integer;
    FCUFHasValue: Boolean;
    FCNF: Integer;
    FCNFHasValue: Boolean;
    FNatOp: string;
    FNatOpHasValue: Boolean;
    FMod: Integer;
    FModHasValue: Boolean;
    FSerie: Integer;
    FSerieHasValue: Boolean;
    FNNF: Integer;
    FNNFHasValue: Boolean;
    FDhEmi: TDateTime;
    FDhEmiHasValue: Boolean;
    FDhSaiEnt: TDateTime;
    FDhSaiEntHasValue: Boolean;
    FTpNF: Integer;
    FTpNFHasValue: Boolean;
    FIdDest: Integer;
    FIdDestHasValue: Boolean;
    FCMunFG: Integer;
    FCMunFGHasValue: Boolean;
    FTpImp: Integer;
    FTpImpHasValue: Boolean;
    FTpEmis: Integer;
    FTpEmisHasValue: Boolean;
    FCDV: Integer;
    FCDVHasValue: Boolean;
    FTpAmb: Integer;
    FTpAmbHasValue: Boolean;
    FFinNFe: Integer;
    FFinNFeHasValue: Boolean;
    FIndFinal: Integer;
    FIndFinalHasValue: Boolean;
    FIndPres: Integer;
    FIndPresHasValue: Boolean;
    FIndIntermed: Integer;
    FIndIntermedHasValue: Boolean;
    FProcEmi: Integer;
    FProcEmiHasValue: Boolean;
    FVerProc: string;
    FVerProcHasValue: Boolean;
    FDhCont: TDateTime;
    FDhContHasValue: Boolean;
    FXJust: string;
    FXJustHasValue: Boolean;
    FNFref: TNfeSefazNFrefList;
    procedure SetCUF(const Value: Integer);
    procedure SetCNF(const Value: Integer);
    procedure SetNatOp(const Value: string);
    procedure SetMod(const Value: Integer);
    procedure SetSerie(const Value: Integer);
    procedure SetNNF(const Value: Integer);
    procedure SetDhEmi(const Value: TDateTime);
    procedure SetDhSaiEnt(const Value: TDateTime);
    procedure SetTpNF(const Value: Integer);
    procedure SetIdDest(const Value: Integer);
    procedure SetCMunFG(const Value: Integer);
    procedure SetTpImp(const Value: Integer);
    procedure SetTpEmis(const Value: Integer);
    procedure SetCDV(const Value: Integer);
    procedure SetTpAmb(const Value: Integer);
    procedure SetFinNFe(const Value: Integer);
    procedure SetIndFinal(const Value: Integer);
    procedure SetIndPres(const Value: Integer);
    procedure SetIndIntermed(const Value: Integer);
    procedure SetProcEmi(const Value: Integer);
    procedure SetVerProc(const Value: string);
    procedure SetDhCont(const Value: TDateTime);
    procedure SetXJust(const Value: string);
    procedure SetNFref(const Value: TNfeSefazNFrefList);
  public
    destructor Destroy; override;
    property CUF: Integer read FCUF write SetCUF;
    property CUFHasValue: Boolean read FCUFHasValue write FCUFHasValue;
    property CNF: Integer read FCNF write SetCNF;
    property CNFHasValue: Boolean read FCNFHasValue write FCNFHasValue;
    property NatOp: string read FNatOp write SetNatOp;
    property NatOpHasValue: Boolean read FNatOpHasValue write FNatOpHasValue;
    property &Mod: Integer read FMod write SetMod;
    property &ModHasValue: Boolean read FModHasValue write FModHasValue;
    property Serie: Integer read FSerie write SetSerie;
    property SerieHasValue: Boolean read FSerieHasValue write FSerieHasValue;
    property NNF: Integer read FNNF write SetNNF;
    property NNFHasValue: Boolean read FNNFHasValue write FNNFHasValue;
    property DhEmi: TDateTime read FDhEmi write SetDhEmi;
    property DhEmiHasValue: Boolean read FDhEmiHasValue write FDhEmiHasValue;
    property DhSaiEnt: TDateTime read FDhSaiEnt write SetDhSaiEnt;
    property DhSaiEntHasValue: Boolean read FDhSaiEntHasValue write FDhSaiEntHasValue;
    property TpNF: Integer read FTpNF write SetTpNF;
    property TpNFHasValue: Boolean read FTpNFHasValue write FTpNFHasValue;
    property IdDest: Integer read FIdDest write SetIdDest;
    property IdDestHasValue: Boolean read FIdDestHasValue write FIdDestHasValue;
    property CMunFG: Integer read FCMunFG write SetCMunFG;
    property CMunFGHasValue: Boolean read FCMunFGHasValue write FCMunFGHasValue;
    property TpImp: Integer read FTpImp write SetTpImp;
    property TpImpHasValue: Boolean read FTpImpHasValue write FTpImpHasValue;
    property TpEmis: Integer read FTpEmis write SetTpEmis;
    property TpEmisHasValue: Boolean read FTpEmisHasValue write FTpEmisHasValue;
    property CDV: Integer read FCDV write SetCDV;
    property CDVHasValue: Boolean read FCDVHasValue write FCDVHasValue;
    property TpAmb: Integer read FTpAmb write SetTpAmb;
    property TpAmbHasValue: Boolean read FTpAmbHasValue write FTpAmbHasValue;
    property FinNFe: Integer read FFinNFe write SetFinNFe;
    property FinNFeHasValue: Boolean read FFinNFeHasValue write FFinNFeHasValue;
    property IndFinal: Integer read FIndFinal write SetIndFinal;
    property IndFinalHasValue: Boolean read FIndFinalHasValue write FIndFinalHasValue;
    property IndPres: Integer read FIndPres write SetIndPres;
    property IndPresHasValue: Boolean read FIndPresHasValue write FIndPresHasValue;
    property IndIntermed: Integer read FIndIntermed write SetIndIntermed;
    property IndIntermedHasValue: Boolean read FIndIntermedHasValue write FIndIntermedHasValue;
    property ProcEmi: Integer read FProcEmi write SetProcEmi;
    property ProcEmiHasValue: Boolean read FProcEmiHasValue write FProcEmiHasValue;
    property VerProc: string read FVerProc write SetVerProc;
    property VerProcHasValue: Boolean read FVerProcHasValue write FVerProcHasValue;
    property DhCont: TDateTime read FDhCont write SetDhCont;
    property DhContHasValue: Boolean read FDhContHasValue write FDhContHasValue;
    property XJust: string read FXJust write SetXJust;
    property XJustHasValue: Boolean read FXJustHasValue write FXJustHasValue;
    property NFref: TNfeSefazNFrefList read FNFref write SetNFref;
  end;
  
  TNfeSefazEnderEmi = class
  private
    FXLgr: string;
    FXLgrHasValue: Boolean;
    FNro: string;
    FNroHasValue: Boolean;
    FXCpl: string;
    FXCplHasValue: Boolean;
    FXBairro: string;
    FXBairroHasValue: Boolean;
    FCMun: Integer;
    FCMunHasValue: Boolean;
    FXMun: string;
    FXMunHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FCPais: Integer;
    FCPaisHasValue: Boolean;
    FXPais: string;
    FXPaisHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    procedure SetXLgr(const Value: string);
    procedure SetNro(const Value: string);
    procedure SetXCpl(const Value: string);
    procedure SetXBairro(const Value: string);
    procedure SetCMun(const Value: Integer);
    procedure SetXMun(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetCPais(const Value: Integer);
    procedure SetXPais(const Value: string);
    procedure SetFone(const Value: string);
  public
    property XLgr: string read FXLgr write SetXLgr;
    property XLgrHasValue: Boolean read FXLgrHasValue write FXLgrHasValue;
    property Nro: string read FNro write SetNro;
    property NroHasValue: Boolean read FNroHasValue write FNroHasValue;
    property XCpl: string read FXCpl write SetXCpl;
    property XCplHasValue: Boolean read FXCplHasValue write FXCplHasValue;
    property XBairro: string read FXBairro write SetXBairro;
    property XBairroHasValue: Boolean read FXBairroHasValue write FXBairroHasValue;
    property CMun: Integer read FCMun write SetCMun;
    property CMunHasValue: Boolean read FCMunHasValue write FCMunHasValue;
    property XMun: string read FXMun write SetXMun;
    property XMunHasValue: Boolean read FXMunHasValue write FXMunHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property CPais: Integer read FCPais write SetCPais;
    property CPaisHasValue: Boolean read FCPaisHasValue write FCPaisHasValue;
    property XPais: string read FXPais write SetXPais;
    property XPaisHasValue: Boolean read FXPaisHasValue write FXPaisHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
  end;
  
  TNfeSefazEmit = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FXFant: string;
    FXFantHasValue: Boolean;
    FEnderEmit: TNfeSefazEnderEmi;
    FIE: string;
    FIEHasValue: Boolean;
    FIEST: string;
    FIESTHasValue: Boolean;
    FIM: string;
    FIMHasValue: Boolean;
    FCNAE: string;
    FCNAEHasValue: Boolean;
    FCRT: Integer;
    FCRTHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetXFant(const Value: string);
    procedure SetEnderEmit(const Value: TNfeSefazEnderEmi);
    procedure SetIE(const Value: string);
    procedure SetIEST(const Value: string);
    procedure SetIM(const Value: string);
    procedure SetCNAE(const Value: string);
    procedure SetCRT(const Value: Integer);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property XFant: string read FXFant write SetXFant;
    property XFantHasValue: Boolean read FXFantHasValue write FXFantHasValue;
    property EnderEmit: TNfeSefazEnderEmi read FEnderEmit write SetEnderEmit;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property IEST: string read FIEST write SetIEST;
    property IESTHasValue: Boolean read FIESTHasValue write FIESTHasValue;
    property IM: string read FIM write SetIM;
    property IMHasValue: Boolean read FIMHasValue write FIMHasValue;
    property CNAE: string read FCNAE write SetCNAE;
    property CNAEHasValue: Boolean read FCNAEHasValue write FCNAEHasValue;
    property CRT: Integer read FCRT write SetCRT;
    property CRTHasValue: Boolean read FCRTHasValue write FCRTHasValue;
  end;
  
  TNfeSefazAvulsa = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FXOrgao: string;
    FXOrgaoHasValue: Boolean;
    FMatr: string;
    FMatrHasValue: Boolean;
    FXAgente: string;
    FXAgenteHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FNDAR: string;
    FNDARHasValue: Boolean;
    FDEmi: TDate;
    FDEmiHasValue: Boolean;
    FVDAR: Double;
    FVDARHasValue: Boolean;
    FRepEmi: string;
    FRepEmiHasValue: Boolean;
    FDPag: TDate;
    FDPagHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetXOrgao(const Value: string);
    procedure SetMatr(const Value: string);
    procedure SetXAgente(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetNDAR(const Value: string);
    procedure SetDEmi(const Value: TDate);
    procedure SetVDAR(const Value: Double);
    procedure SetRepEmi(const Value: string);
    procedure SetDPag(const Value: TDate);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property XOrgao: string read FXOrgao write SetXOrgao;
    property XOrgaoHasValue: Boolean read FXOrgaoHasValue write FXOrgaoHasValue;
    property Matr: string read FMatr write SetMatr;
    property MatrHasValue: Boolean read FMatrHasValue write FMatrHasValue;
    property XAgente: string read FXAgente write SetXAgente;
    property XAgenteHasValue: Boolean read FXAgenteHasValue write FXAgenteHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property NDAR: string read FNDAR write SetNDAR;
    property NDARHasValue: Boolean read FNDARHasValue write FNDARHasValue;
    property DEmi: TDate read FDEmi write SetDEmi;
    property DEmiHasValue: Boolean read FDEmiHasValue write FDEmiHasValue;
    property VDAR: Double read FVDAR write SetVDAR;
    property VDARHasValue: Boolean read FVDARHasValue write FVDARHasValue;
    property RepEmi: string read FRepEmi write SetRepEmi;
    property RepEmiHasValue: Boolean read FRepEmiHasValue write FRepEmiHasValue;
    property DPag: TDate read FDPag write SetDPag;
    property DPagHasValue: Boolean read FDPagHasValue write FDPagHasValue;
  end;
  
  TNfeSefazEndereco = class
  private
    FXLgr: string;
    FXLgrHasValue: Boolean;
    FNro: string;
    FNroHasValue: Boolean;
    FXCpl: string;
    FXCplHasValue: Boolean;
    FXBairro: string;
    FXBairroHasValue: Boolean;
    FCMun: Integer;
    FCMunHasValue: Boolean;
    FXMun: string;
    FXMunHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FCPais: Integer;
    FCPaisHasValue: Boolean;
    FXPais: string;
    FXPaisHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    procedure SetXLgr(const Value: string);
    procedure SetNro(const Value: string);
    procedure SetXCpl(const Value: string);
    procedure SetXBairro(const Value: string);
    procedure SetCMun(const Value: Integer);
    procedure SetXMun(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetCPais(const Value: Integer);
    procedure SetXPais(const Value: string);
    procedure SetFone(const Value: string);
  public
    property XLgr: string read FXLgr write SetXLgr;
    property XLgrHasValue: Boolean read FXLgrHasValue write FXLgrHasValue;
    property Nro: string read FNro write SetNro;
    property NroHasValue: Boolean read FNroHasValue write FNroHasValue;
    property XCpl: string read FXCpl write SetXCpl;
    property XCplHasValue: Boolean read FXCplHasValue write FXCplHasValue;
    property XBairro: string read FXBairro write SetXBairro;
    property XBairroHasValue: Boolean read FXBairroHasValue write FXBairroHasValue;
    property CMun: Integer read FCMun write SetCMun;
    property CMunHasValue: Boolean read FCMunHasValue write FCMunHasValue;
    property XMun: string read FXMun write SetXMun;
    property XMunHasValue: Boolean read FXMunHasValue write FXMunHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property CPais: Integer read FCPais write SetCPais;
    property CPaisHasValue: Boolean read FCPaisHasValue write FCPaisHasValue;
    property XPais: string read FXPais write SetXPais;
    property XPaisHasValue: Boolean read FXPaisHasValue write FXPaisHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
  end;
  
  TNfeSefazDest = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIdEstrangeiro: string;
    FIdEstrangeiroHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FEnderDest: TNfeSefazEndereco;
    FIndIEDest: Integer;
    FIndIEDestHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FISUF: string;
    FISUFHasValue: Boolean;
    FIM: string;
    FIMHasValue: Boolean;
    FEmail: string;
    FEmailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIdEstrangeiro(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetEnderDest(const Value: TNfeSefazEndereco);
    procedure SetIndIEDest(const Value: Integer);
    procedure SetIE(const Value: string);
    procedure SetISUF(const Value: string);
    procedure SetIM(const Value: string);
    procedure SetEmail(const Value: string);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IdEstrangeiro: string read FIdEstrangeiro write SetIdEstrangeiro;
    property IdEstrangeiroHasValue: Boolean read FIdEstrangeiroHasValue write FIdEstrangeiroHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property EnderDest: TNfeSefazEndereco read FEnderDest write SetEnderDest;
    property IndIEDest: Integer read FIndIEDest write SetIndIEDest;
    property IndIEDestHasValue: Boolean read FIndIEDestHasValue write FIndIEDestHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property ISUF: string read FISUF write SetISUF;
    property ISUFHasValue: Boolean read FISUFHasValue write FISUFHasValue;
    property IM: string read FIM write SetIM;
    property IMHasValue: Boolean read FIMHasValue write FIMHasValue;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
  end;
  
  TNfeSefazLocal = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FXLgr: string;
    FXLgrHasValue: Boolean;
    FNro: string;
    FNroHasValue: Boolean;
    FXCpl: string;
    FXCplHasValue: Boolean;
    FXBairro: string;
    FXBairroHasValue: Boolean;
    FCMun: Integer;
    FCMunHasValue: Boolean;
    FXMun: string;
    FXMunHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FCPais: Integer;
    FCPaisHasValue: Boolean;
    FXPais: string;
    FXPaisHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FEmail: string;
    FEmailHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetXLgr(const Value: string);
    procedure SetNro(const Value: string);
    procedure SetXCpl(const Value: string);
    procedure SetXBairro(const Value: string);
    procedure SetCMun(const Value: Integer);
    procedure SetXMun(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetCPais(const Value: Integer);
    procedure SetXPais(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetIE(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property XLgr: string read FXLgr write SetXLgr;
    property XLgrHasValue: Boolean read FXLgrHasValue write FXLgrHasValue;
    property Nro: string read FNro write SetNro;
    property NroHasValue: Boolean read FNroHasValue write FNroHasValue;
    property XCpl: string read FXCpl write SetXCpl;
    property XCplHasValue: Boolean read FXCplHasValue write FXCplHasValue;
    property XBairro: string read FXBairro write SetXBairro;
    property XBairroHasValue: Boolean read FXBairroHasValue write FXBairroHasValue;
    property CMun: Integer read FCMun write SetCMun;
    property CMunHasValue: Boolean read FCMunHasValue write FCMunHasValue;
    property XMun: string read FXMun write SetXMun;
    property XMunHasValue: Boolean read FXMunHasValue write FXMunHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property CPais: Integer read FCPais write SetCPais;
    property CPaisHasValue: Boolean read FCPaisHasValue write FCPaisHasValue;
    property XPais: string read FXPais write SetXPais;
    property XPaisHasValue: Boolean read FXPaisHasValue write FXPaisHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
  end;
  
  TNfeSefazAutXML = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
  end;
  
  TNfeSefazAutXMLList = class(TObjectList<TNfeSefazAutXML>)
  end;
  
  TNfeSefazAdi = class
  private
    FNAdicao: Integer;
    FNAdicaoHasValue: Boolean;
    FNSeqAdic: Integer;
    FNSeqAdicHasValue: Boolean;
    FCFabricante: string;
    FCFabricanteHasValue: Boolean;
    FVDescDI: Double;
    FVDescDIHasValue: Boolean;
    FNDraw: string;
    FNDrawHasValue: Boolean;
    procedure SetNAdicao(const Value: Integer);
    procedure SetNSeqAdic(const Value: Integer);
    procedure SetCFabricante(const Value: string);
    procedure SetVDescDI(const Value: Double);
    procedure SetNDraw(const Value: string);
  public
    property NAdicao: Integer read FNAdicao write SetNAdicao;
    property NAdicaoHasValue: Boolean read FNAdicaoHasValue write FNAdicaoHasValue;
    property NSeqAdic: Integer read FNSeqAdic write SetNSeqAdic;
    property NSeqAdicHasValue: Boolean read FNSeqAdicHasValue write FNSeqAdicHasValue;
    property CFabricante: string read FCFabricante write SetCFabricante;
    property CFabricanteHasValue: Boolean read FCFabricanteHasValue write FCFabricanteHasValue;
    property VDescDI: Double read FVDescDI write SetVDescDI;
    property VDescDIHasValue: Boolean read FVDescDIHasValue write FVDescDIHasValue;
    property NDraw: string read FNDraw write SetNDraw;
    property NDrawHasValue: Boolean read FNDrawHasValue write FNDrawHasValue;
  end;
  
  TNfeSefazAdiList = class(TObjectList<TNfeSefazAdi>)
  end;
  
  TNfeSefazDI = class
  private
    FNDI: string;
    FNDIHasValue: Boolean;
    FDDI: TDate;
    FDDIHasValue: Boolean;
    FXLocDesemb: string;
    FXLocDesembHasValue: Boolean;
    FUFDesemb: string;
    FUFDesembHasValue: Boolean;
    FDDesemb: TDate;
    FDDesembHasValue: Boolean;
    FTpViaTransp: Integer;
    FTpViaTranspHasValue: Boolean;
    FVAFRMM: Double;
    FVAFRMMHasValue: Boolean;
    FTpIntermedio: Integer;
    FTpIntermedioHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FUFTerceiro: string;
    FUFTerceiroHasValue: Boolean;
    FCExportador: string;
    FCExportadorHasValue: Boolean;
    FAdi: TNfeSefazAdiList;
    procedure SetNDI(const Value: string);
    procedure SetDDI(const Value: TDate);
    procedure SetXLocDesemb(const Value: string);
    procedure SetUFDesemb(const Value: string);
    procedure SetDDesemb(const Value: TDate);
    procedure SetTpViaTransp(const Value: Integer);
    procedure SetVAFRMM(const Value: Double);
    procedure SetTpIntermedio(const Value: Integer);
    procedure SetCNPJ(const Value: string);
    procedure SetUFTerceiro(const Value: string);
    procedure SetCExportador(const Value: string);
    procedure SetAdi(const Value: TNfeSefazAdiList);
  public
    destructor Destroy; override;
    property NDI: string read FNDI write SetNDI;
    property NDIHasValue: Boolean read FNDIHasValue write FNDIHasValue;
    property DDI: TDate read FDDI write SetDDI;
    property DDIHasValue: Boolean read FDDIHasValue write FDDIHasValue;
    property XLocDesemb: string read FXLocDesemb write SetXLocDesemb;
    property XLocDesembHasValue: Boolean read FXLocDesembHasValue write FXLocDesembHasValue;
    property UFDesemb: string read FUFDesemb write SetUFDesemb;
    property UFDesembHasValue: Boolean read FUFDesembHasValue write FUFDesembHasValue;
    property DDesemb: TDate read FDDesemb write SetDDesemb;
    property DDesembHasValue: Boolean read FDDesembHasValue write FDDesembHasValue;
    property TpViaTransp: Integer read FTpViaTransp write SetTpViaTransp;
    property TpViaTranspHasValue: Boolean read FTpViaTranspHasValue write FTpViaTranspHasValue;
    property VAFRMM: Double read FVAFRMM write SetVAFRMM;
    property VAFRMMHasValue: Boolean read FVAFRMMHasValue write FVAFRMMHasValue;
    property TpIntermedio: Integer read FTpIntermedio write SetTpIntermedio;
    property TpIntermedioHasValue: Boolean read FTpIntermedioHasValue write FTpIntermedioHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property UFTerceiro: string read FUFTerceiro write SetUFTerceiro;
    property UFTerceiroHasValue: Boolean read FUFTerceiroHasValue write FUFTerceiroHasValue;
    property CExportador: string read FCExportador write SetCExportador;
    property CExportadorHasValue: Boolean read FCExportadorHasValue write FCExportadorHasValue;
    property Adi: TNfeSefazAdiList read FAdi write SetAdi;
  end;
  
  TNfeSefazDIList = class(TObjectList<TNfeSefazDI>)
  end;
  
  TNfeSefazExportInd = class
  private
    FNRE: string;
    FNREHasValue: Boolean;
    FChNFe: string;
    FChNFeHasValue: Boolean;
    FQExport: Double;
    FQExportHasValue: Boolean;
    procedure SetNRE(const Value: string);
    procedure SetChNFe(const Value: string);
    procedure SetQExport(const Value: Double);
  public
    property NRE: string read FNRE write SetNRE;
    property NREHasValue: Boolean read FNREHasValue write FNREHasValue;
    property ChNFe: string read FChNFe write SetChNFe;
    property ChNFeHasValue: Boolean read FChNFeHasValue write FChNFeHasValue;
    property QExport: Double read FQExport write SetQExport;
    property QExportHasValue: Boolean read FQExportHasValue write FQExportHasValue;
  end;
  
  TNfeSefazDetExport = class
  private
    FNDraw: string;
    FNDrawHasValue: Boolean;
    FExportInd: TNfeSefazExportInd;
    procedure SetNDraw(const Value: string);
    procedure SetExportInd(const Value: TNfeSefazExportInd);
  public
    destructor Destroy; override;
    property NDraw: string read FNDraw write SetNDraw;
    property NDrawHasValue: Boolean read FNDrawHasValue write FNDrawHasValue;
    property ExportInd: TNfeSefazExportInd read FExportInd write SetExportInd;
  end;
  
  TNfeSefazDetExportList = class(TObjectList<TNfeSefazDetExport>)
  end;
  
  TNfeSefazRastro = class
  private
    FNLote: string;
    FNLoteHasValue: Boolean;
    FQLote: Double;
    FQLoteHasValue: Boolean;
    FDFab: TDate;
    FDFabHasValue: Boolean;
    FDVal: TDate;
    FDValHasValue: Boolean;
    FCAgreg: string;
    FCAgregHasValue: Boolean;
    procedure SetNLote(const Value: string);
    procedure SetQLote(const Value: Double);
    procedure SetDFab(const Value: TDate);
    procedure SetDVal(const Value: TDate);
    procedure SetCAgreg(const Value: string);
  public
    property NLote: string read FNLote write SetNLote;
    property NLoteHasValue: Boolean read FNLoteHasValue write FNLoteHasValue;
    property QLote: Double read FQLote write SetQLote;
    property QLoteHasValue: Boolean read FQLoteHasValue write FQLoteHasValue;
    property DFab: TDate read FDFab write SetDFab;
    property DFabHasValue: Boolean read FDFabHasValue write FDFabHasValue;
    property DVal: TDate read FDVal write SetDVal;
    property DValHasValue: Boolean read FDValHasValue write FDValHasValue;
    property CAgreg: string read FCAgreg write SetCAgreg;
    property CAgregHasValue: Boolean read FCAgregHasValue write FCAgregHasValue;
  end;
  
  TNfeSefazRastroList = class(TObjectList<TNfeSefazRastro>)
  end;
  
  TNfeSefazInfProdNFF = class
  private
    FCProdFisco: string;
    FCProdFiscoHasValue: Boolean;
    FCOperNFF: string;
    FCOperNFFHasValue: Boolean;
    procedure SetCProdFisco(const Value: string);
    procedure SetCOperNFF(const Value: string);
  public
    property CProdFisco: string read FCProdFisco write SetCProdFisco;
    property CProdFiscoHasValue: Boolean read FCProdFiscoHasValue write FCProdFiscoHasValue;
    property COperNFF: string read FCOperNFF write SetCOperNFF;
    property COperNFFHasValue: Boolean read FCOperNFFHasValue write FCOperNFFHasValue;
  end;
  
  TNfeSefazInfProdEmb = class
  private
    FXEmb: string;
    FXEmbHasValue: Boolean;
    FQVolEmb: Double;
    FQVolEmbHasValue: Boolean;
    FUEmb: string;
    FUEmbHasValue: Boolean;
    procedure SetXEmb(const Value: string);
    procedure SetQVolEmb(const Value: Double);
    procedure SetUEmb(const Value: string);
  public
    property XEmb: string read FXEmb write SetXEmb;
    property XEmbHasValue: Boolean read FXEmbHasValue write FXEmbHasValue;
    property QVolEmb: Double read FQVolEmb write SetQVolEmb;
    property QVolEmbHasValue: Boolean read FQVolEmbHasValue write FQVolEmbHasValue;
    property UEmb: string read FUEmb write SetUEmb;
    property UEmbHasValue: Boolean read FUEmbHasValue write FUEmbHasValue;
  end;
  
  TNfeSefazVeicProd = class
  private
    FTpOp: Integer;
    FTpOpHasValue: Boolean;
    FChassi: string;
    FChassiHasValue: Boolean;
    FCCor: string;
    FCCorHasValue: Boolean;
    FXCor: string;
    FXCorHasValue: Boolean;
    FPot: string;
    FPotHasValue: Boolean;
    FCilin: string;
    FCilinHasValue: Boolean;
    FPesoL: string;
    FPesoLHasValue: Boolean;
    FPesoB: string;
    FPesoBHasValue: Boolean;
    FNSerie: string;
    FNSerieHasValue: Boolean;
    FTpComb: string;
    FTpCombHasValue: Boolean;
    FNMotor: string;
    FNMotorHasValue: Boolean;
    FCMT: string;
    FCMTHasValue: Boolean;
    FDist: string;
    FDistHasValue: Boolean;
    FAnoMod: Integer;
    FAnoModHasValue: Boolean;
    FAnoFab: Integer;
    FAnoFabHasValue: Boolean;
    FTpPint: string;
    FTpPintHasValue: Boolean;
    FTpVeic: Integer;
    FTpVeicHasValue: Boolean;
    FEspVeic: Integer;
    FEspVeicHasValue: Boolean;
    FVIN: string;
    FVINHasValue: Boolean;
    FCondVeic: Integer;
    FCondVeicHasValue: Boolean;
    FCMod: string;
    FCModHasValue: Boolean;
    FCCorDENATRAN: string;
    FCCorDENATRANHasValue: Boolean;
    FLota: Integer;
    FLotaHasValue: Boolean;
    FTpRest: Integer;
    FTpRestHasValue: Boolean;
    procedure SetTpOp(const Value: Integer);
    procedure SetChassi(const Value: string);
    procedure SetCCor(const Value: string);
    procedure SetXCor(const Value: string);
    procedure SetPot(const Value: string);
    procedure SetCilin(const Value: string);
    procedure SetPesoL(const Value: string);
    procedure SetPesoB(const Value: string);
    procedure SetNSerie(const Value: string);
    procedure SetTpComb(const Value: string);
    procedure SetNMotor(const Value: string);
    procedure SetCMT(const Value: string);
    procedure SetDist(const Value: string);
    procedure SetAnoMod(const Value: Integer);
    procedure SetAnoFab(const Value: Integer);
    procedure SetTpPint(const Value: string);
    procedure SetTpVeic(const Value: Integer);
    procedure SetEspVeic(const Value: Integer);
    procedure SetVIN(const Value: string);
    procedure SetCondVeic(const Value: Integer);
    procedure SetCMod(const Value: string);
    procedure SetCCorDENATRAN(const Value: string);
    procedure SetLota(const Value: Integer);
    procedure SetTpRest(const Value: Integer);
  public
    property TpOp: Integer read FTpOp write SetTpOp;
    property TpOpHasValue: Boolean read FTpOpHasValue write FTpOpHasValue;
    property Chassi: string read FChassi write SetChassi;
    property ChassiHasValue: Boolean read FChassiHasValue write FChassiHasValue;
    property CCor: string read FCCor write SetCCor;
    property CCorHasValue: Boolean read FCCorHasValue write FCCorHasValue;
    property XCor: string read FXCor write SetXCor;
    property XCorHasValue: Boolean read FXCorHasValue write FXCorHasValue;
    property Pot: string read FPot write SetPot;
    property PotHasValue: Boolean read FPotHasValue write FPotHasValue;
    property Cilin: string read FCilin write SetCilin;
    property CilinHasValue: Boolean read FCilinHasValue write FCilinHasValue;
    property PesoL: string read FPesoL write SetPesoL;
    property PesoLHasValue: Boolean read FPesoLHasValue write FPesoLHasValue;
    property PesoB: string read FPesoB write SetPesoB;
    property PesoBHasValue: Boolean read FPesoBHasValue write FPesoBHasValue;
    property NSerie: string read FNSerie write SetNSerie;
    property NSerieHasValue: Boolean read FNSerieHasValue write FNSerieHasValue;
    property TpComb: string read FTpComb write SetTpComb;
    property TpCombHasValue: Boolean read FTpCombHasValue write FTpCombHasValue;
    property NMotor: string read FNMotor write SetNMotor;
    property NMotorHasValue: Boolean read FNMotorHasValue write FNMotorHasValue;
    property CMT: string read FCMT write SetCMT;
    property CMTHasValue: Boolean read FCMTHasValue write FCMTHasValue;
    property Dist: string read FDist write SetDist;
    property DistHasValue: Boolean read FDistHasValue write FDistHasValue;
    property AnoMod: Integer read FAnoMod write SetAnoMod;
    property AnoModHasValue: Boolean read FAnoModHasValue write FAnoModHasValue;
    property AnoFab: Integer read FAnoFab write SetAnoFab;
    property AnoFabHasValue: Boolean read FAnoFabHasValue write FAnoFabHasValue;
    property TpPint: string read FTpPint write SetTpPint;
    property TpPintHasValue: Boolean read FTpPintHasValue write FTpPintHasValue;
    property TpVeic: Integer read FTpVeic write SetTpVeic;
    property TpVeicHasValue: Boolean read FTpVeicHasValue write FTpVeicHasValue;
    property EspVeic: Integer read FEspVeic write SetEspVeic;
    property EspVeicHasValue: Boolean read FEspVeicHasValue write FEspVeicHasValue;
    property VIN: string read FVIN write SetVIN;
    property VINHasValue: Boolean read FVINHasValue write FVINHasValue;
    property CondVeic: Integer read FCondVeic write SetCondVeic;
    property CondVeicHasValue: Boolean read FCondVeicHasValue write FCondVeicHasValue;
    property CMod: string read FCMod write SetCMod;
    property CModHasValue: Boolean read FCModHasValue write FCModHasValue;
    property CCorDENATRAN: string read FCCorDENATRAN write SetCCorDENATRAN;
    property CCorDENATRANHasValue: Boolean read FCCorDENATRANHasValue write FCCorDENATRANHasValue;
    property Lota: Integer read FLota write SetLota;
    property LotaHasValue: Boolean read FLotaHasValue write FLotaHasValue;
    property TpRest: Integer read FTpRest write SetTpRest;
    property TpRestHasValue: Boolean read FTpRestHasValue write FTpRestHasValue;
  end;
  
  TNfeSefazMed = class
  private
    FCProdANVISA: string;
    FCProdANVISAHasValue: Boolean;
    FXMotivoIsencao: string;
    FXMotivoIsencaoHasValue: Boolean;
    FVPMC: Double;
    FVPMCHasValue: Boolean;
    procedure SetCProdANVISA(const Value: string);
    procedure SetXMotivoIsencao(const Value: string);
    procedure SetVPMC(const Value: Double);
  public
    property CProdANVISA: string read FCProdANVISA write SetCProdANVISA;
    property CProdANVISAHasValue: Boolean read FCProdANVISAHasValue write FCProdANVISAHasValue;
    property XMotivoIsencao: string read FXMotivoIsencao write SetXMotivoIsencao;
    property XMotivoIsencaoHasValue: Boolean read FXMotivoIsencaoHasValue write FXMotivoIsencaoHasValue;
    property VPMC: Double read FVPMC write SetVPMC;
    property VPMCHasValue: Boolean read FVPMCHasValue write FVPMCHasValue;
  end;
  
  TNfeSefazArma = class
  private
    FTpArma: Integer;
    FTpArmaHasValue: Boolean;
    FNSerie: string;
    FNSerieHasValue: Boolean;
    FNCano: string;
    FNCanoHasValue: Boolean;
    FDescr: string;
    FDescrHasValue: Boolean;
    procedure SetTpArma(const Value: Integer);
    procedure SetNSerie(const Value: string);
    procedure SetNCano(const Value: string);
    procedure SetDescr(const Value: string);
  public
    property TpArma: Integer read FTpArma write SetTpArma;
    property TpArmaHasValue: Boolean read FTpArmaHasValue write FTpArmaHasValue;
    property NSerie: string read FNSerie write SetNSerie;
    property NSerieHasValue: Boolean read FNSerieHasValue write FNSerieHasValue;
    property NCano: string read FNCano write SetNCano;
    property NCanoHasValue: Boolean read FNCanoHasValue write FNCanoHasValue;
    property Descr: string read FDescr write SetDescr;
    property DescrHasValue: Boolean read FDescrHasValue write FDescrHasValue;
  end;
  
  TNfeSefazArmaList = class(TObjectList<TNfeSefazArma>)
  end;
  
  TNfeSefazCIDE = class
  private
    FQBCProd: Double;
    FQBCProdHasValue: Boolean;
    FVAliqProd: Double;
    FVAliqProdHasValue: Boolean;
    FVCIDE: Double;
    FVCIDEHasValue: Boolean;
    procedure SetQBCProd(const Value: Double);
    procedure SetVAliqProd(const Value: Double);
    procedure SetVCIDE(const Value: Double);
  public
    property QBCProd: Double read FQBCProd write SetQBCProd;
    property QBCProdHasValue: Boolean read FQBCProdHasValue write FQBCProdHasValue;
    property VAliqProd: Double read FVAliqProd write SetVAliqProd;
    property VAliqProdHasValue: Boolean read FVAliqProdHasValue write FVAliqProdHasValue;
    property VCIDE: Double read FVCIDE write SetVCIDE;
    property VCIDEHasValue: Boolean read FVCIDEHasValue write FVCIDEHasValue;
  end;
  
  TNfeSefazEncerrante = class
  private
    FNBico: Integer;
    FNBicoHasValue: Boolean;
    FNBomba: Integer;
    FNBombaHasValue: Boolean;
    FNTanque: Integer;
    FNTanqueHasValue: Boolean;
    FVEncIni: Double;
    FVEncIniHasValue: Boolean;
    FVEncFin: Double;
    FVEncFinHasValue: Boolean;
    procedure SetNBico(const Value: Integer);
    procedure SetNBomba(const Value: Integer);
    procedure SetNTanque(const Value: Integer);
    procedure SetVEncIni(const Value: Double);
    procedure SetVEncFin(const Value: Double);
  public
    property NBico: Integer read FNBico write SetNBico;
    property NBicoHasValue: Boolean read FNBicoHasValue write FNBicoHasValue;
    property NBomba: Integer read FNBomba write SetNBomba;
    property NBombaHasValue: Boolean read FNBombaHasValue write FNBombaHasValue;
    property NTanque: Integer read FNTanque write SetNTanque;
    property NTanqueHasValue: Boolean read FNTanqueHasValue write FNTanqueHasValue;
    property VEncIni: Double read FVEncIni write SetVEncIni;
    property VEncIniHasValue: Boolean read FVEncIniHasValue write FVEncIniHasValue;
    property VEncFin: Double read FVEncFin write SetVEncFin;
    property VEncFinHasValue: Boolean read FVEncFinHasValue write FVEncFinHasValue;
  end;
  
  TNfeSefazComb = class
  private
    FCProdANP: Integer;
    FCProdANPHasValue: Boolean;
    FDescANP: string;
    FDescANPHasValue: Boolean;
    FPGLP: Double;
    FPGLPHasValue: Boolean;
    FPGNn: Double;
    FPGNnHasValue: Boolean;
    FPGNi: Double;
    FPGNiHasValue: Boolean;
    FVPart: Double;
    FVPartHasValue: Boolean;
    FCODIF: string;
    FCODIFHasValue: Boolean;
    FQTemp: Double;
    FQTempHasValue: Boolean;
    FUFCons: string;
    FUFConsHasValue: Boolean;
    FCIDE: TNfeSefazCIDE;
    FEncerrante: TNfeSefazEncerrante;
    procedure SetCProdANP(const Value: Integer);
    procedure SetDescANP(const Value: string);
    procedure SetPGLP(const Value: Double);
    procedure SetPGNn(const Value: Double);
    procedure SetPGNi(const Value: Double);
    procedure SetVPart(const Value: Double);
    procedure SetCODIF(const Value: string);
    procedure SetQTemp(const Value: Double);
    procedure SetUFCons(const Value: string);
    procedure SetCIDE(const Value: TNfeSefazCIDE);
    procedure SetEncerrante(const Value: TNfeSefazEncerrante);
  public
    destructor Destroy; override;
    property CProdANP: Integer read FCProdANP write SetCProdANP;
    property CProdANPHasValue: Boolean read FCProdANPHasValue write FCProdANPHasValue;
    property DescANP: string read FDescANP write SetDescANP;
    property DescANPHasValue: Boolean read FDescANPHasValue write FDescANPHasValue;
    property PGLP: Double read FPGLP write SetPGLP;
    property PGLPHasValue: Boolean read FPGLPHasValue write FPGLPHasValue;
    property PGNn: Double read FPGNn write SetPGNn;
    property PGNnHasValue: Boolean read FPGNnHasValue write FPGNnHasValue;
    property PGNi: Double read FPGNi write SetPGNi;
    property PGNiHasValue: Boolean read FPGNiHasValue write FPGNiHasValue;
    property VPart: Double read FVPart write SetVPart;
    property VPartHasValue: Boolean read FVPartHasValue write FVPartHasValue;
    property CODIF: string read FCODIF write SetCODIF;
    property CODIFHasValue: Boolean read FCODIFHasValue write FCODIFHasValue;
    property QTemp: Double read FQTemp write SetQTemp;
    property QTempHasValue: Boolean read FQTempHasValue write FQTempHasValue;
    property UFCons: string read FUFCons write SetUFCons;
    property UFConsHasValue: Boolean read FUFConsHasValue write FUFConsHasValue;
    property CIDE: TNfeSefazCIDE read FCIDE write SetCIDE;
    property Encerrante: TNfeSefazEncerrante read FEncerrante write SetEncerrante;
  end;
  
  TNfeSefazProd = class
  private
    FCProd: string;
    FCProdHasValue: Boolean;
    FCEAN: string;
    FCEANHasValue: Boolean;
    FCBarra: string;
    FCBarraHasValue: Boolean;
    FXProd: string;
    FXProdHasValue: Boolean;
    FNCM: string;
    FNCMHasValue: Boolean;
    FNVE: stringList;
    FCEST: string;
    FCESTHasValue: Boolean;
    FIndEscala: string;
    FIndEscalaHasValue: Boolean;
    FCNPJFab: string;
    FCNPJFabHasValue: Boolean;
    FCBenef: string;
    FCBenefHasValue: Boolean;
    FEXTIPI: string;
    FEXTIPIHasValue: Boolean;
    FCFOP: Integer;
    FCFOPHasValue: Boolean;
    FUCom: string;
    FUComHasValue: Boolean;
    FQCom: Double;
    FQComHasValue: Boolean;
    FVUnCom: Double;
    FVUnComHasValue: Boolean;
    FVProd: Double;
    FVProdHasValue: Boolean;
    FCEANTrib: string;
    FCEANTribHasValue: Boolean;
    FCBarraTrib: string;
    FCBarraTribHasValue: Boolean;
    FUTrib: string;
    FUTribHasValue: Boolean;
    FQTrib: Double;
    FQTribHasValue: Boolean;
    FVUnTrib: Double;
    FVUnTribHasValue: Boolean;
    FVFrete: Double;
    FVFreteHasValue: Boolean;
    FVSeg: Double;
    FVSegHasValue: Boolean;
    FVDesc: Double;
    FVDescHasValue: Boolean;
    FVOutro: Double;
    FVOutroHasValue: Boolean;
    FIndTot: Integer;
    FIndTotHasValue: Boolean;
    FDI: TNfeSefazDIList;
    FDetExport: TNfeSefazDetExportList;
    FXPed: string;
    FXPedHasValue: Boolean;
    FNItemPed: Integer;
    FNItemPedHasValue: Boolean;
    FNFCI: string;
    FNFCIHasValue: Boolean;
    FRastro: TNfeSefazRastroList;
    FInfProdNFF: TNfeSefazInfProdNFF;
    FInfProdEmb: TNfeSefazInfProdEmb;
    FVeicProd: TNfeSefazVeicProd;
    FMed: TNfeSefazMed;
    FArma: TNfeSefazArmaList;
    FComb: TNfeSefazComb;
    FNRECOPI: string;
    FNRECOPIHasValue: Boolean;
    procedure SetCProd(const Value: string);
    procedure SetCEAN(const Value: string);
    procedure SetCBarra(const Value: string);
    procedure SetXProd(const Value: string);
    procedure SetNCM(const Value: string);
    procedure SetNVE(const Value: stringList);
    procedure SetCEST(const Value: string);
    procedure SetIndEscala(const Value: string);
    procedure SetCNPJFab(const Value: string);
    procedure SetCBenef(const Value: string);
    procedure SetEXTIPI(const Value: string);
    procedure SetCFOP(const Value: Integer);
    procedure SetUCom(const Value: string);
    procedure SetQCom(const Value: Double);
    procedure SetVUnCom(const Value: Double);
    procedure SetVProd(const Value: Double);
    procedure SetCEANTrib(const Value: string);
    procedure SetCBarraTrib(const Value: string);
    procedure SetUTrib(const Value: string);
    procedure SetQTrib(const Value: Double);
    procedure SetVUnTrib(const Value: Double);
    procedure SetVFrete(const Value: Double);
    procedure SetVSeg(const Value: Double);
    procedure SetVDesc(const Value: Double);
    procedure SetVOutro(const Value: Double);
    procedure SetIndTot(const Value: Integer);
    procedure SetDI(const Value: TNfeSefazDIList);
    procedure SetDetExport(const Value: TNfeSefazDetExportList);
    procedure SetXPed(const Value: string);
    procedure SetNItemPed(const Value: Integer);
    procedure SetNFCI(const Value: string);
    procedure SetRastro(const Value: TNfeSefazRastroList);
    procedure SetInfProdNFF(const Value: TNfeSefazInfProdNFF);
    procedure SetInfProdEmb(const Value: TNfeSefazInfProdEmb);
    procedure SetVeicProd(const Value: TNfeSefazVeicProd);
    procedure SetMed(const Value: TNfeSefazMed);
    procedure SetArma(const Value: TNfeSefazArmaList);
    procedure SetComb(const Value: TNfeSefazComb);
    procedure SetNRECOPI(const Value: string);
  public
    destructor Destroy; override;
    property CProd: string read FCProd write SetCProd;
    property CProdHasValue: Boolean read FCProdHasValue write FCProdHasValue;
    property CEAN: string read FCEAN write SetCEAN;
    property CEANHasValue: Boolean read FCEANHasValue write FCEANHasValue;
    property CBarra: string read FCBarra write SetCBarra;
    property CBarraHasValue: Boolean read FCBarraHasValue write FCBarraHasValue;
    property XProd: string read FXProd write SetXProd;
    property XProdHasValue: Boolean read FXProdHasValue write FXProdHasValue;
    property NCM: string read FNCM write SetNCM;
    property NCMHasValue: Boolean read FNCMHasValue write FNCMHasValue;
    property NVE: stringList read FNVE write SetNVE;
    property CEST: string read FCEST write SetCEST;
    property CESTHasValue: Boolean read FCESTHasValue write FCESTHasValue;
    property IndEscala: string read FIndEscala write SetIndEscala;
    property IndEscalaHasValue: Boolean read FIndEscalaHasValue write FIndEscalaHasValue;
    property CNPJFab: string read FCNPJFab write SetCNPJFab;
    property CNPJFabHasValue: Boolean read FCNPJFabHasValue write FCNPJFabHasValue;
    property CBenef: string read FCBenef write SetCBenef;
    property CBenefHasValue: Boolean read FCBenefHasValue write FCBenefHasValue;
    property EXTIPI: string read FEXTIPI write SetEXTIPI;
    property EXTIPIHasValue: Boolean read FEXTIPIHasValue write FEXTIPIHasValue;
    property CFOP: Integer read FCFOP write SetCFOP;
    property CFOPHasValue: Boolean read FCFOPHasValue write FCFOPHasValue;
    property UCom: string read FUCom write SetUCom;
    property UComHasValue: Boolean read FUComHasValue write FUComHasValue;
    property QCom: Double read FQCom write SetQCom;
    property QComHasValue: Boolean read FQComHasValue write FQComHasValue;
    property VUnCom: Double read FVUnCom write SetVUnCom;
    property VUnComHasValue: Boolean read FVUnComHasValue write FVUnComHasValue;
    property VProd: Double read FVProd write SetVProd;
    property VProdHasValue: Boolean read FVProdHasValue write FVProdHasValue;
    property CEANTrib: string read FCEANTrib write SetCEANTrib;
    property CEANTribHasValue: Boolean read FCEANTribHasValue write FCEANTribHasValue;
    property CBarraTrib: string read FCBarraTrib write SetCBarraTrib;
    property CBarraTribHasValue: Boolean read FCBarraTribHasValue write FCBarraTribHasValue;
    property UTrib: string read FUTrib write SetUTrib;
    property UTribHasValue: Boolean read FUTribHasValue write FUTribHasValue;
    property QTrib: Double read FQTrib write SetQTrib;
    property QTribHasValue: Boolean read FQTribHasValue write FQTribHasValue;
    property VUnTrib: Double read FVUnTrib write SetVUnTrib;
    property VUnTribHasValue: Boolean read FVUnTribHasValue write FVUnTribHasValue;
    property VFrete: Double read FVFrete write SetVFrete;
    property VFreteHasValue: Boolean read FVFreteHasValue write FVFreteHasValue;
    property VSeg: Double read FVSeg write SetVSeg;
    property VSegHasValue: Boolean read FVSegHasValue write FVSegHasValue;
    property VDesc: Double read FVDesc write SetVDesc;
    property VDescHasValue: Boolean read FVDescHasValue write FVDescHasValue;
    property VOutro: Double read FVOutro write SetVOutro;
    property VOutroHasValue: Boolean read FVOutroHasValue write FVOutroHasValue;
    property IndTot: Integer read FIndTot write SetIndTot;
    property IndTotHasValue: Boolean read FIndTotHasValue write FIndTotHasValue;
    property DI: TNfeSefazDIList read FDI write SetDI;
    property DetExport: TNfeSefazDetExportList read FDetExport write SetDetExport;
    property XPed: string read FXPed write SetXPed;
    property XPedHasValue: Boolean read FXPedHasValue write FXPedHasValue;
    property NItemPed: Integer read FNItemPed write SetNItemPed;
    property NItemPedHasValue: Boolean read FNItemPedHasValue write FNItemPedHasValue;
    property NFCI: string read FNFCI write SetNFCI;
    property NFCIHasValue: Boolean read FNFCIHasValue write FNFCIHasValue;
    property Rastro: TNfeSefazRastroList read FRastro write SetRastro;
    property InfProdNFF: TNfeSefazInfProdNFF read FInfProdNFF write SetInfProdNFF;
    property InfProdEmb: TNfeSefazInfProdEmb read FInfProdEmb write SetInfProdEmb;
    property VeicProd: TNfeSefazVeicProd read FVeicProd write SetVeicProd;
    property Med: TNfeSefazMed read FMed write SetMed;
    property Arma: TNfeSefazArmaList read FArma write SetArma;
    property Comb: TNfeSefazComb read FComb write SetComb;
    property NRECOPI: string read FNRECOPI write SetNRECOPI;
    property NRECOPIHasValue: Boolean read FNRECOPIHasValue write FNRECOPIHasValue;
  end;
  
  TNfeSefazICMS00 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FModBC: Integer;
    FModBCHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPICMS: Double;
    FPICMSHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    FPFCP: Double;
    FPFCPHasValue: Boolean;
    FVFCP: Double;
    FVFCPHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetModBC(const Value: Integer);
    procedure SetVBC(const Value: Double);
    procedure SetPICMS(const Value: Double);
    procedure SetVICMS(const Value: Double);
    procedure SetPFCP(const Value: Double);
    procedure SetVFCP(const Value: Double);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property ModBC: Integer read FModBC write SetModBC;
    property ModBCHasValue: Boolean read FModBCHasValue write FModBCHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PICMS: Double read FPICMS write SetPICMS;
    property PICMSHasValue: Boolean read FPICMSHasValue write FPICMSHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
    property PFCP: Double read FPFCP write SetPFCP;
    property PFCPHasValue: Boolean read FPFCPHasValue write FPFCPHasValue;
    property VFCP: Double read FVFCP write SetVFCP;
    property VFCPHasValue: Boolean read FVFCPHasValue write FVFCPHasValue;
  end;
  
  TNfeSefazICMS10 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FModBC: Integer;
    FModBCHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPICMS: Double;
    FPICMSHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    FVBCFCP: Double;
    FVBCFCPHasValue: Boolean;
    FPFCP: Double;
    FPFCPHasValue: Boolean;
    FVFCP: Double;
    FVFCPHasValue: Boolean;
    FModBCST: Integer;
    FModBCSTHasValue: Boolean;
    FPMVAST: Double;
    FPMVASTHasValue: Boolean;
    FPRedBCST: Double;
    FPRedBCSTHasValue: Boolean;
    FVBCST: Double;
    FVBCSTHasValue: Boolean;
    FPICMSST: Double;
    FPICMSSTHasValue: Boolean;
    FVICMSST: Double;
    FVICMSSTHasValue: Boolean;
    FVBCFCPST: Double;
    FVBCFCPSTHasValue: Boolean;
    FPFCPST: Double;
    FPFCPSTHasValue: Boolean;
    FVFCPST: Double;
    FVFCPSTHasValue: Boolean;
    FVICMSSTDeson: Double;
    FVICMSSTDesonHasValue: Boolean;
    FMotDesICMSST: Integer;
    FMotDesICMSSTHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetModBC(const Value: Integer);
    procedure SetVBC(const Value: Double);
    procedure SetPICMS(const Value: Double);
    procedure SetVICMS(const Value: Double);
    procedure SetVBCFCP(const Value: Double);
    procedure SetPFCP(const Value: Double);
    procedure SetVFCP(const Value: Double);
    procedure SetModBCST(const Value: Integer);
    procedure SetPMVAST(const Value: Double);
    procedure SetPRedBCST(const Value: Double);
    procedure SetVBCST(const Value: Double);
    procedure SetPICMSST(const Value: Double);
    procedure SetVICMSST(const Value: Double);
    procedure SetVBCFCPST(const Value: Double);
    procedure SetPFCPST(const Value: Double);
    procedure SetVFCPST(const Value: Double);
    procedure SetVICMSSTDeson(const Value: Double);
    procedure SetMotDesICMSST(const Value: Integer);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property ModBC: Integer read FModBC write SetModBC;
    property ModBCHasValue: Boolean read FModBCHasValue write FModBCHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PICMS: Double read FPICMS write SetPICMS;
    property PICMSHasValue: Boolean read FPICMSHasValue write FPICMSHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
    property VBCFCP: Double read FVBCFCP write SetVBCFCP;
    property VBCFCPHasValue: Boolean read FVBCFCPHasValue write FVBCFCPHasValue;
    property PFCP: Double read FPFCP write SetPFCP;
    property PFCPHasValue: Boolean read FPFCPHasValue write FPFCPHasValue;
    property VFCP: Double read FVFCP write SetVFCP;
    property VFCPHasValue: Boolean read FVFCPHasValue write FVFCPHasValue;
    property ModBCST: Integer read FModBCST write SetModBCST;
    property ModBCSTHasValue: Boolean read FModBCSTHasValue write FModBCSTHasValue;
    property PMVAST: Double read FPMVAST write SetPMVAST;
    property PMVASTHasValue: Boolean read FPMVASTHasValue write FPMVASTHasValue;
    property PRedBCST: Double read FPRedBCST write SetPRedBCST;
    property PRedBCSTHasValue: Boolean read FPRedBCSTHasValue write FPRedBCSTHasValue;
    property VBCST: Double read FVBCST write SetVBCST;
    property VBCSTHasValue: Boolean read FVBCSTHasValue write FVBCSTHasValue;
    property PICMSST: Double read FPICMSST write SetPICMSST;
    property PICMSSTHasValue: Boolean read FPICMSSTHasValue write FPICMSSTHasValue;
    property VICMSST: Double read FVICMSST write SetVICMSST;
    property VICMSSTHasValue: Boolean read FVICMSSTHasValue write FVICMSSTHasValue;
    property VBCFCPST: Double read FVBCFCPST write SetVBCFCPST;
    property VBCFCPSTHasValue: Boolean read FVBCFCPSTHasValue write FVBCFCPSTHasValue;
    property PFCPST: Double read FPFCPST write SetPFCPST;
    property PFCPSTHasValue: Boolean read FPFCPSTHasValue write FPFCPSTHasValue;
    property VFCPST: Double read FVFCPST write SetVFCPST;
    property VFCPSTHasValue: Boolean read FVFCPSTHasValue write FVFCPSTHasValue;
    property VICMSSTDeson: Double read FVICMSSTDeson write SetVICMSSTDeson;
    property VICMSSTDesonHasValue: Boolean read FVICMSSTDesonHasValue write FVICMSSTDesonHasValue;
    property MotDesICMSST: Integer read FMotDesICMSST write SetMotDesICMSST;
    property MotDesICMSSTHasValue: Boolean read FMotDesICMSSTHasValue write FMotDesICMSSTHasValue;
  end;
  
  TNfeSefazICMS20 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FModBC: Integer;
    FModBCHasValue: Boolean;
    FPRedBC: Double;
    FPRedBCHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPICMS: Double;
    FPICMSHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    FVBCFCP: Double;
    FVBCFCPHasValue: Boolean;
    FPFCP: Double;
    FPFCPHasValue: Boolean;
    FVFCP: Double;
    FVFCPHasValue: Boolean;
    FVICMSDeson: Double;
    FVICMSDesonHasValue: Boolean;
    FMotDesICMS: Integer;
    FMotDesICMSHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetModBC(const Value: Integer);
    procedure SetPRedBC(const Value: Double);
    procedure SetVBC(const Value: Double);
    procedure SetPICMS(const Value: Double);
    procedure SetVICMS(const Value: Double);
    procedure SetVBCFCP(const Value: Double);
    procedure SetPFCP(const Value: Double);
    procedure SetVFCP(const Value: Double);
    procedure SetVICMSDeson(const Value: Double);
    procedure SetMotDesICMS(const Value: Integer);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property ModBC: Integer read FModBC write SetModBC;
    property ModBCHasValue: Boolean read FModBCHasValue write FModBCHasValue;
    property PRedBC: Double read FPRedBC write SetPRedBC;
    property PRedBCHasValue: Boolean read FPRedBCHasValue write FPRedBCHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PICMS: Double read FPICMS write SetPICMS;
    property PICMSHasValue: Boolean read FPICMSHasValue write FPICMSHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
    property VBCFCP: Double read FVBCFCP write SetVBCFCP;
    property VBCFCPHasValue: Boolean read FVBCFCPHasValue write FVBCFCPHasValue;
    property PFCP: Double read FPFCP write SetPFCP;
    property PFCPHasValue: Boolean read FPFCPHasValue write FPFCPHasValue;
    property VFCP: Double read FVFCP write SetVFCP;
    property VFCPHasValue: Boolean read FVFCPHasValue write FVFCPHasValue;
    property VICMSDeson: Double read FVICMSDeson write SetVICMSDeson;
    property VICMSDesonHasValue: Boolean read FVICMSDesonHasValue write FVICMSDesonHasValue;
    property MotDesICMS: Integer read FMotDesICMS write SetMotDesICMS;
    property MotDesICMSHasValue: Boolean read FMotDesICMSHasValue write FMotDesICMSHasValue;
  end;
  
  TNfeSefazICMS30 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FModBCST: Integer;
    FModBCSTHasValue: Boolean;
    FPMVAST: Double;
    FPMVASTHasValue: Boolean;
    FPRedBCST: Double;
    FPRedBCSTHasValue: Boolean;
    FVBCST: Double;
    FVBCSTHasValue: Boolean;
    FPICMSST: Double;
    FPICMSSTHasValue: Boolean;
    FVICMSST: Double;
    FVICMSSTHasValue: Boolean;
    FVBCFCPST: Double;
    FVBCFCPSTHasValue: Boolean;
    FPFCPST: Double;
    FPFCPSTHasValue: Boolean;
    FVFCPST: Double;
    FVFCPSTHasValue: Boolean;
    FVICMSDeson: Double;
    FVICMSDesonHasValue: Boolean;
    FMotDesICMS: Integer;
    FMotDesICMSHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetModBCST(const Value: Integer);
    procedure SetPMVAST(const Value: Double);
    procedure SetPRedBCST(const Value: Double);
    procedure SetVBCST(const Value: Double);
    procedure SetPICMSST(const Value: Double);
    procedure SetVICMSST(const Value: Double);
    procedure SetVBCFCPST(const Value: Double);
    procedure SetPFCPST(const Value: Double);
    procedure SetVFCPST(const Value: Double);
    procedure SetVICMSDeson(const Value: Double);
    procedure SetMotDesICMS(const Value: Integer);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property ModBCST: Integer read FModBCST write SetModBCST;
    property ModBCSTHasValue: Boolean read FModBCSTHasValue write FModBCSTHasValue;
    property PMVAST: Double read FPMVAST write SetPMVAST;
    property PMVASTHasValue: Boolean read FPMVASTHasValue write FPMVASTHasValue;
    property PRedBCST: Double read FPRedBCST write SetPRedBCST;
    property PRedBCSTHasValue: Boolean read FPRedBCSTHasValue write FPRedBCSTHasValue;
    property VBCST: Double read FVBCST write SetVBCST;
    property VBCSTHasValue: Boolean read FVBCSTHasValue write FVBCSTHasValue;
    property PICMSST: Double read FPICMSST write SetPICMSST;
    property PICMSSTHasValue: Boolean read FPICMSSTHasValue write FPICMSSTHasValue;
    property VICMSST: Double read FVICMSST write SetVICMSST;
    property VICMSSTHasValue: Boolean read FVICMSSTHasValue write FVICMSSTHasValue;
    property VBCFCPST: Double read FVBCFCPST write SetVBCFCPST;
    property VBCFCPSTHasValue: Boolean read FVBCFCPSTHasValue write FVBCFCPSTHasValue;
    property PFCPST: Double read FPFCPST write SetPFCPST;
    property PFCPSTHasValue: Boolean read FPFCPSTHasValue write FPFCPSTHasValue;
    property VFCPST: Double read FVFCPST write SetVFCPST;
    property VFCPSTHasValue: Boolean read FVFCPSTHasValue write FVFCPSTHasValue;
    property VICMSDeson: Double read FVICMSDeson write SetVICMSDeson;
    property VICMSDesonHasValue: Boolean read FVICMSDesonHasValue write FVICMSDesonHasValue;
    property MotDesICMS: Integer read FMotDesICMS write SetMotDesICMS;
    property MotDesICMSHasValue: Boolean read FMotDesICMSHasValue write FMotDesICMSHasValue;
  end;
  
  TNfeSefazICMS40 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FVICMSDeson: Double;
    FVICMSDesonHasValue: Boolean;
    FMotDesICMS: Integer;
    FMotDesICMSHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetVICMSDeson(const Value: Double);
    procedure SetMotDesICMS(const Value: Integer);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property VICMSDeson: Double read FVICMSDeson write SetVICMSDeson;
    property VICMSDesonHasValue: Boolean read FVICMSDesonHasValue write FVICMSDesonHasValue;
    property MotDesICMS: Integer read FMotDesICMS write SetMotDesICMS;
    property MotDesICMSHasValue: Boolean read FMotDesICMSHasValue write FMotDesICMSHasValue;
  end;
  
  TNfeSefazICMS51 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FModBC: Integer;
    FModBCHasValue: Boolean;
    FPRedBC: Double;
    FPRedBCHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPICMS: Double;
    FPICMSHasValue: Boolean;
    FVICMSOp: Double;
    FVICMSOpHasValue: Boolean;
    FPDif: Double;
    FPDifHasValue: Boolean;
    FVICMSDif: Double;
    FVICMSDifHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    FVBCFCP: Double;
    FVBCFCPHasValue: Boolean;
    FPFCP: Double;
    FPFCPHasValue: Boolean;
    FVFCP: Double;
    FVFCPHasValue: Boolean;
    FPFCPDif: Double;
    FPFCPDifHasValue: Boolean;
    FVFCPDif: Double;
    FVFCPDifHasValue: Boolean;
    FVFCPEfet: Double;
    FVFCPEfetHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetModBC(const Value: Integer);
    procedure SetPRedBC(const Value: Double);
    procedure SetVBC(const Value: Double);
    procedure SetPICMS(const Value: Double);
    procedure SetVICMSOp(const Value: Double);
    procedure SetPDif(const Value: Double);
    procedure SetVICMSDif(const Value: Double);
    procedure SetVICMS(const Value: Double);
    procedure SetVBCFCP(const Value: Double);
    procedure SetPFCP(const Value: Double);
    procedure SetVFCP(const Value: Double);
    procedure SetPFCPDif(const Value: Double);
    procedure SetVFCPDif(const Value: Double);
    procedure SetVFCPEfet(const Value: Double);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property ModBC: Integer read FModBC write SetModBC;
    property ModBCHasValue: Boolean read FModBCHasValue write FModBCHasValue;
    property PRedBC: Double read FPRedBC write SetPRedBC;
    property PRedBCHasValue: Boolean read FPRedBCHasValue write FPRedBCHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PICMS: Double read FPICMS write SetPICMS;
    property PICMSHasValue: Boolean read FPICMSHasValue write FPICMSHasValue;
    property VICMSOp: Double read FVICMSOp write SetVICMSOp;
    property VICMSOpHasValue: Boolean read FVICMSOpHasValue write FVICMSOpHasValue;
    property PDif: Double read FPDif write SetPDif;
    property PDifHasValue: Boolean read FPDifHasValue write FPDifHasValue;
    property VICMSDif: Double read FVICMSDif write SetVICMSDif;
    property VICMSDifHasValue: Boolean read FVICMSDifHasValue write FVICMSDifHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
    property VBCFCP: Double read FVBCFCP write SetVBCFCP;
    property VBCFCPHasValue: Boolean read FVBCFCPHasValue write FVBCFCPHasValue;
    property PFCP: Double read FPFCP write SetPFCP;
    property PFCPHasValue: Boolean read FPFCPHasValue write FPFCPHasValue;
    property VFCP: Double read FVFCP write SetVFCP;
    property VFCPHasValue: Boolean read FVFCPHasValue write FVFCPHasValue;
    property PFCPDif: Double read FPFCPDif write SetPFCPDif;
    property PFCPDifHasValue: Boolean read FPFCPDifHasValue write FPFCPDifHasValue;
    property VFCPDif: Double read FVFCPDif write SetVFCPDif;
    property VFCPDifHasValue: Boolean read FVFCPDifHasValue write FVFCPDifHasValue;
    property VFCPEfet: Double read FVFCPEfet write SetVFCPEfet;
    property VFCPEfetHasValue: Boolean read FVFCPEfetHasValue write FVFCPEfetHasValue;
  end;
  
  TNfeSefazICMS60 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FVBCSTRet: Double;
    FVBCSTRetHasValue: Boolean;
    FPST: Double;
    FPSTHasValue: Boolean;
    FVICMSSubstituto: Double;
    FVICMSSubstitutoHasValue: Boolean;
    FVICMSSTRet: Double;
    FVICMSSTRetHasValue: Boolean;
    FVBCFCPSTRet: Double;
    FVBCFCPSTRetHasValue: Boolean;
    FPFCPSTRet: Double;
    FPFCPSTRetHasValue: Boolean;
    FVFCPSTRet: Double;
    FVFCPSTRetHasValue: Boolean;
    FPRedBCEfet: Double;
    FPRedBCEfetHasValue: Boolean;
    FVBCEfet: Double;
    FVBCEfetHasValue: Boolean;
    FPICMSEfet: Double;
    FPICMSEfetHasValue: Boolean;
    FVICMSEfet: Double;
    FVICMSEfetHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetVBCSTRet(const Value: Double);
    procedure SetPST(const Value: Double);
    procedure SetVICMSSubstituto(const Value: Double);
    procedure SetVICMSSTRet(const Value: Double);
    procedure SetVBCFCPSTRet(const Value: Double);
    procedure SetPFCPSTRet(const Value: Double);
    procedure SetVFCPSTRet(const Value: Double);
    procedure SetPRedBCEfet(const Value: Double);
    procedure SetVBCEfet(const Value: Double);
    procedure SetPICMSEfet(const Value: Double);
    procedure SetVICMSEfet(const Value: Double);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property VBCSTRet: Double read FVBCSTRet write SetVBCSTRet;
    property VBCSTRetHasValue: Boolean read FVBCSTRetHasValue write FVBCSTRetHasValue;
    property PST: Double read FPST write SetPST;
    property PSTHasValue: Boolean read FPSTHasValue write FPSTHasValue;
    property VICMSSubstituto: Double read FVICMSSubstituto write SetVICMSSubstituto;
    property VICMSSubstitutoHasValue: Boolean read FVICMSSubstitutoHasValue write FVICMSSubstitutoHasValue;
    property VICMSSTRet: Double read FVICMSSTRet write SetVICMSSTRet;
    property VICMSSTRetHasValue: Boolean read FVICMSSTRetHasValue write FVICMSSTRetHasValue;
    property VBCFCPSTRet: Double read FVBCFCPSTRet write SetVBCFCPSTRet;
    property VBCFCPSTRetHasValue: Boolean read FVBCFCPSTRetHasValue write FVBCFCPSTRetHasValue;
    property PFCPSTRet: Double read FPFCPSTRet write SetPFCPSTRet;
    property PFCPSTRetHasValue: Boolean read FPFCPSTRetHasValue write FPFCPSTRetHasValue;
    property VFCPSTRet: Double read FVFCPSTRet write SetVFCPSTRet;
    property VFCPSTRetHasValue: Boolean read FVFCPSTRetHasValue write FVFCPSTRetHasValue;
    property PRedBCEfet: Double read FPRedBCEfet write SetPRedBCEfet;
    property PRedBCEfetHasValue: Boolean read FPRedBCEfetHasValue write FPRedBCEfetHasValue;
    property VBCEfet: Double read FVBCEfet write SetVBCEfet;
    property VBCEfetHasValue: Boolean read FVBCEfetHasValue write FVBCEfetHasValue;
    property PICMSEfet: Double read FPICMSEfet write SetPICMSEfet;
    property PICMSEfetHasValue: Boolean read FPICMSEfetHasValue write FPICMSEfetHasValue;
    property VICMSEfet: Double read FVICMSEfet write SetVICMSEfet;
    property VICMSEfetHasValue: Boolean read FVICMSEfetHasValue write FVICMSEfetHasValue;
  end;
  
  TNfeSefazICMS70 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FModBC: Integer;
    FModBCHasValue: Boolean;
    FPRedBC: Double;
    FPRedBCHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPICMS: Double;
    FPICMSHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    FVBCFCP: Double;
    FVBCFCPHasValue: Boolean;
    FPFCP: Double;
    FPFCPHasValue: Boolean;
    FVFCP: Double;
    FVFCPHasValue: Boolean;
    FModBCST: Integer;
    FModBCSTHasValue: Boolean;
    FPMVAST: Double;
    FPMVASTHasValue: Boolean;
    FPRedBCST: Double;
    FPRedBCSTHasValue: Boolean;
    FVBCST: Double;
    FVBCSTHasValue: Boolean;
    FPICMSST: Double;
    FPICMSSTHasValue: Boolean;
    FVICMSST: Double;
    FVICMSSTHasValue: Boolean;
    FVBCFCPST: Double;
    FVBCFCPSTHasValue: Boolean;
    FPFCPST: Double;
    FPFCPSTHasValue: Boolean;
    FVFCPST: Double;
    FVFCPSTHasValue: Boolean;
    FVICMSDeson: Double;
    FVICMSDesonHasValue: Boolean;
    FMotDesICMS: Integer;
    FMotDesICMSHasValue: Boolean;
    FVICMSSTDeson: Double;
    FVICMSSTDesonHasValue: Boolean;
    FMotDesICMSST: Integer;
    FMotDesICMSSTHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetModBC(const Value: Integer);
    procedure SetPRedBC(const Value: Double);
    procedure SetVBC(const Value: Double);
    procedure SetPICMS(const Value: Double);
    procedure SetVICMS(const Value: Double);
    procedure SetVBCFCP(const Value: Double);
    procedure SetPFCP(const Value: Double);
    procedure SetVFCP(const Value: Double);
    procedure SetModBCST(const Value: Integer);
    procedure SetPMVAST(const Value: Double);
    procedure SetPRedBCST(const Value: Double);
    procedure SetVBCST(const Value: Double);
    procedure SetPICMSST(const Value: Double);
    procedure SetVICMSST(const Value: Double);
    procedure SetVBCFCPST(const Value: Double);
    procedure SetPFCPST(const Value: Double);
    procedure SetVFCPST(const Value: Double);
    procedure SetVICMSDeson(const Value: Double);
    procedure SetMotDesICMS(const Value: Integer);
    procedure SetVICMSSTDeson(const Value: Double);
    procedure SetMotDesICMSST(const Value: Integer);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property ModBC: Integer read FModBC write SetModBC;
    property ModBCHasValue: Boolean read FModBCHasValue write FModBCHasValue;
    property PRedBC: Double read FPRedBC write SetPRedBC;
    property PRedBCHasValue: Boolean read FPRedBCHasValue write FPRedBCHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PICMS: Double read FPICMS write SetPICMS;
    property PICMSHasValue: Boolean read FPICMSHasValue write FPICMSHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
    property VBCFCP: Double read FVBCFCP write SetVBCFCP;
    property VBCFCPHasValue: Boolean read FVBCFCPHasValue write FVBCFCPHasValue;
    property PFCP: Double read FPFCP write SetPFCP;
    property PFCPHasValue: Boolean read FPFCPHasValue write FPFCPHasValue;
    property VFCP: Double read FVFCP write SetVFCP;
    property VFCPHasValue: Boolean read FVFCPHasValue write FVFCPHasValue;
    property ModBCST: Integer read FModBCST write SetModBCST;
    property ModBCSTHasValue: Boolean read FModBCSTHasValue write FModBCSTHasValue;
    property PMVAST: Double read FPMVAST write SetPMVAST;
    property PMVASTHasValue: Boolean read FPMVASTHasValue write FPMVASTHasValue;
    property PRedBCST: Double read FPRedBCST write SetPRedBCST;
    property PRedBCSTHasValue: Boolean read FPRedBCSTHasValue write FPRedBCSTHasValue;
    property VBCST: Double read FVBCST write SetVBCST;
    property VBCSTHasValue: Boolean read FVBCSTHasValue write FVBCSTHasValue;
    property PICMSST: Double read FPICMSST write SetPICMSST;
    property PICMSSTHasValue: Boolean read FPICMSSTHasValue write FPICMSSTHasValue;
    property VICMSST: Double read FVICMSST write SetVICMSST;
    property VICMSSTHasValue: Boolean read FVICMSSTHasValue write FVICMSSTHasValue;
    property VBCFCPST: Double read FVBCFCPST write SetVBCFCPST;
    property VBCFCPSTHasValue: Boolean read FVBCFCPSTHasValue write FVBCFCPSTHasValue;
    property PFCPST: Double read FPFCPST write SetPFCPST;
    property PFCPSTHasValue: Boolean read FPFCPSTHasValue write FPFCPSTHasValue;
    property VFCPST: Double read FVFCPST write SetVFCPST;
    property VFCPSTHasValue: Boolean read FVFCPSTHasValue write FVFCPSTHasValue;
    property VICMSDeson: Double read FVICMSDeson write SetVICMSDeson;
    property VICMSDesonHasValue: Boolean read FVICMSDesonHasValue write FVICMSDesonHasValue;
    property MotDesICMS: Integer read FMotDesICMS write SetMotDesICMS;
    property MotDesICMSHasValue: Boolean read FMotDesICMSHasValue write FMotDesICMSHasValue;
    property VICMSSTDeson: Double read FVICMSSTDeson write SetVICMSSTDeson;
    property VICMSSTDesonHasValue: Boolean read FVICMSSTDesonHasValue write FVICMSSTDesonHasValue;
    property MotDesICMSST: Integer read FMotDesICMSST write SetMotDesICMSST;
    property MotDesICMSSTHasValue: Boolean read FMotDesICMSSTHasValue write FMotDesICMSSTHasValue;
  end;
  
  TNfeSefazICMS90 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FModBC: Integer;
    FModBCHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPRedBC: Double;
    FPRedBCHasValue: Boolean;
    FPICMS: Double;
    FPICMSHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    FVBCFCP: Double;
    FVBCFCPHasValue: Boolean;
    FPFCP: Double;
    FPFCPHasValue: Boolean;
    FVFCP: Double;
    FVFCPHasValue: Boolean;
    FModBCST: Integer;
    FModBCSTHasValue: Boolean;
    FPMVAST: Double;
    FPMVASTHasValue: Boolean;
    FPRedBCST: Double;
    FPRedBCSTHasValue: Boolean;
    FVBCST: Double;
    FVBCSTHasValue: Boolean;
    FPICMSST: Double;
    FPICMSSTHasValue: Boolean;
    FVICMSST: Double;
    FVICMSSTHasValue: Boolean;
    FVBCFCPST: Double;
    FVBCFCPSTHasValue: Boolean;
    FPFCPST: Double;
    FPFCPSTHasValue: Boolean;
    FVFCPST: Double;
    FVFCPSTHasValue: Boolean;
    FVICMSDeson: Double;
    FVICMSDesonHasValue: Boolean;
    FMotDesICMS: Integer;
    FMotDesICMSHasValue: Boolean;
    FVICMSSTDeson: Double;
    FVICMSSTDesonHasValue: Boolean;
    FMotDesICMSST: Integer;
    FMotDesICMSSTHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetModBC(const Value: Integer);
    procedure SetVBC(const Value: Double);
    procedure SetPRedBC(const Value: Double);
    procedure SetPICMS(const Value: Double);
    procedure SetVICMS(const Value: Double);
    procedure SetVBCFCP(const Value: Double);
    procedure SetPFCP(const Value: Double);
    procedure SetVFCP(const Value: Double);
    procedure SetModBCST(const Value: Integer);
    procedure SetPMVAST(const Value: Double);
    procedure SetPRedBCST(const Value: Double);
    procedure SetVBCST(const Value: Double);
    procedure SetPICMSST(const Value: Double);
    procedure SetVICMSST(const Value: Double);
    procedure SetVBCFCPST(const Value: Double);
    procedure SetPFCPST(const Value: Double);
    procedure SetVFCPST(const Value: Double);
    procedure SetVICMSDeson(const Value: Double);
    procedure SetMotDesICMS(const Value: Integer);
    procedure SetVICMSSTDeson(const Value: Double);
    procedure SetMotDesICMSST(const Value: Integer);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property ModBC: Integer read FModBC write SetModBC;
    property ModBCHasValue: Boolean read FModBCHasValue write FModBCHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PRedBC: Double read FPRedBC write SetPRedBC;
    property PRedBCHasValue: Boolean read FPRedBCHasValue write FPRedBCHasValue;
    property PICMS: Double read FPICMS write SetPICMS;
    property PICMSHasValue: Boolean read FPICMSHasValue write FPICMSHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
    property VBCFCP: Double read FVBCFCP write SetVBCFCP;
    property VBCFCPHasValue: Boolean read FVBCFCPHasValue write FVBCFCPHasValue;
    property PFCP: Double read FPFCP write SetPFCP;
    property PFCPHasValue: Boolean read FPFCPHasValue write FPFCPHasValue;
    property VFCP: Double read FVFCP write SetVFCP;
    property VFCPHasValue: Boolean read FVFCPHasValue write FVFCPHasValue;
    property ModBCST: Integer read FModBCST write SetModBCST;
    property ModBCSTHasValue: Boolean read FModBCSTHasValue write FModBCSTHasValue;
    property PMVAST: Double read FPMVAST write SetPMVAST;
    property PMVASTHasValue: Boolean read FPMVASTHasValue write FPMVASTHasValue;
    property PRedBCST: Double read FPRedBCST write SetPRedBCST;
    property PRedBCSTHasValue: Boolean read FPRedBCSTHasValue write FPRedBCSTHasValue;
    property VBCST: Double read FVBCST write SetVBCST;
    property VBCSTHasValue: Boolean read FVBCSTHasValue write FVBCSTHasValue;
    property PICMSST: Double read FPICMSST write SetPICMSST;
    property PICMSSTHasValue: Boolean read FPICMSSTHasValue write FPICMSSTHasValue;
    property VICMSST: Double read FVICMSST write SetVICMSST;
    property VICMSSTHasValue: Boolean read FVICMSSTHasValue write FVICMSSTHasValue;
    property VBCFCPST: Double read FVBCFCPST write SetVBCFCPST;
    property VBCFCPSTHasValue: Boolean read FVBCFCPSTHasValue write FVBCFCPSTHasValue;
    property PFCPST: Double read FPFCPST write SetPFCPST;
    property PFCPSTHasValue: Boolean read FPFCPSTHasValue write FPFCPSTHasValue;
    property VFCPST: Double read FVFCPST write SetVFCPST;
    property VFCPSTHasValue: Boolean read FVFCPSTHasValue write FVFCPSTHasValue;
    property VICMSDeson: Double read FVICMSDeson write SetVICMSDeson;
    property VICMSDesonHasValue: Boolean read FVICMSDesonHasValue write FVICMSDesonHasValue;
    property MotDesICMS: Integer read FMotDesICMS write SetMotDesICMS;
    property MotDesICMSHasValue: Boolean read FMotDesICMSHasValue write FMotDesICMSHasValue;
    property VICMSSTDeson: Double read FVICMSSTDeson write SetVICMSSTDeson;
    property VICMSSTDesonHasValue: Boolean read FVICMSSTDesonHasValue write FVICMSSTDesonHasValue;
    property MotDesICMSST: Integer read FMotDesICMSST write SetMotDesICMSST;
    property MotDesICMSSTHasValue: Boolean read FMotDesICMSSTHasValue write FMotDesICMSSTHasValue;
  end;
  
  TNfeSefazICMSPart = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FModBC: Integer;
    FModBCHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPRedBC: Double;
    FPRedBCHasValue: Boolean;
    FPICMS: Double;
    FPICMSHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    FModBCST: Integer;
    FModBCSTHasValue: Boolean;
    FPMVAST: Double;
    FPMVASTHasValue: Boolean;
    FPRedBCST: Double;
    FPRedBCSTHasValue: Boolean;
    FVBCST: Double;
    FVBCSTHasValue: Boolean;
    FPICMSST: Double;
    FPICMSSTHasValue: Boolean;
    FVICMSST: Double;
    FVICMSSTHasValue: Boolean;
    FPBCOp: Double;
    FPBCOpHasValue: Boolean;
    FUFST: string;
    FUFSTHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetModBC(const Value: Integer);
    procedure SetVBC(const Value: Double);
    procedure SetPRedBC(const Value: Double);
    procedure SetPICMS(const Value: Double);
    procedure SetVICMS(const Value: Double);
    procedure SetModBCST(const Value: Integer);
    procedure SetPMVAST(const Value: Double);
    procedure SetPRedBCST(const Value: Double);
    procedure SetVBCST(const Value: Double);
    procedure SetPICMSST(const Value: Double);
    procedure SetVICMSST(const Value: Double);
    procedure SetPBCOp(const Value: Double);
    procedure SetUFST(const Value: string);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property ModBC: Integer read FModBC write SetModBC;
    property ModBCHasValue: Boolean read FModBCHasValue write FModBCHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PRedBC: Double read FPRedBC write SetPRedBC;
    property PRedBCHasValue: Boolean read FPRedBCHasValue write FPRedBCHasValue;
    property PICMS: Double read FPICMS write SetPICMS;
    property PICMSHasValue: Boolean read FPICMSHasValue write FPICMSHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
    property ModBCST: Integer read FModBCST write SetModBCST;
    property ModBCSTHasValue: Boolean read FModBCSTHasValue write FModBCSTHasValue;
    property PMVAST: Double read FPMVAST write SetPMVAST;
    property PMVASTHasValue: Boolean read FPMVASTHasValue write FPMVASTHasValue;
    property PRedBCST: Double read FPRedBCST write SetPRedBCST;
    property PRedBCSTHasValue: Boolean read FPRedBCSTHasValue write FPRedBCSTHasValue;
    property VBCST: Double read FVBCST write SetVBCST;
    property VBCSTHasValue: Boolean read FVBCSTHasValue write FVBCSTHasValue;
    property PICMSST: Double read FPICMSST write SetPICMSST;
    property PICMSSTHasValue: Boolean read FPICMSSTHasValue write FPICMSSTHasValue;
    property VICMSST: Double read FVICMSST write SetVICMSST;
    property VICMSSTHasValue: Boolean read FVICMSSTHasValue write FVICMSSTHasValue;
    property PBCOp: Double read FPBCOp write SetPBCOp;
    property PBCOpHasValue: Boolean read FPBCOpHasValue write FPBCOpHasValue;
    property UFST: string read FUFST write SetUFST;
    property UFSTHasValue: Boolean read FUFSTHasValue write FUFSTHasValue;
  end;
  
  TNfeSefazICMSST = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FVBCSTRet: Double;
    FVBCSTRetHasValue: Boolean;
    FPST: Double;
    FPSTHasValue: Boolean;
    FVICMSSubstituto: Double;
    FVICMSSubstitutoHasValue: Boolean;
    FVICMSSTRet: Double;
    FVICMSSTRetHasValue: Boolean;
    FVBCFCPSTRet: Double;
    FVBCFCPSTRetHasValue: Boolean;
    FPFCPSTRet: Double;
    FPFCPSTRetHasValue: Boolean;
    FVFCPSTRet: Double;
    FVFCPSTRetHasValue: Boolean;
    FVBCSTDest: Double;
    FVBCSTDestHasValue: Boolean;
    FVICMSSTDest: Double;
    FVICMSSTDestHasValue: Boolean;
    FPRedBCEfet: Double;
    FPRedBCEfetHasValue: Boolean;
    FVBCEfet: Double;
    FVBCEfetHasValue: Boolean;
    FPICMSEfet: Double;
    FPICMSEfetHasValue: Boolean;
    FVICMSEfet: Double;
    FVICMSEfetHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetVBCSTRet(const Value: Double);
    procedure SetPST(const Value: Double);
    procedure SetVICMSSubstituto(const Value: Double);
    procedure SetVICMSSTRet(const Value: Double);
    procedure SetVBCFCPSTRet(const Value: Double);
    procedure SetPFCPSTRet(const Value: Double);
    procedure SetVFCPSTRet(const Value: Double);
    procedure SetVBCSTDest(const Value: Double);
    procedure SetVICMSSTDest(const Value: Double);
    procedure SetPRedBCEfet(const Value: Double);
    procedure SetVBCEfet(const Value: Double);
    procedure SetPICMSEfet(const Value: Double);
    procedure SetVICMSEfet(const Value: Double);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property VBCSTRet: Double read FVBCSTRet write SetVBCSTRet;
    property VBCSTRetHasValue: Boolean read FVBCSTRetHasValue write FVBCSTRetHasValue;
    property PST: Double read FPST write SetPST;
    property PSTHasValue: Boolean read FPSTHasValue write FPSTHasValue;
    property VICMSSubstituto: Double read FVICMSSubstituto write SetVICMSSubstituto;
    property VICMSSubstitutoHasValue: Boolean read FVICMSSubstitutoHasValue write FVICMSSubstitutoHasValue;
    property VICMSSTRet: Double read FVICMSSTRet write SetVICMSSTRet;
    property VICMSSTRetHasValue: Boolean read FVICMSSTRetHasValue write FVICMSSTRetHasValue;
    property VBCFCPSTRet: Double read FVBCFCPSTRet write SetVBCFCPSTRet;
    property VBCFCPSTRetHasValue: Boolean read FVBCFCPSTRetHasValue write FVBCFCPSTRetHasValue;
    property PFCPSTRet: Double read FPFCPSTRet write SetPFCPSTRet;
    property PFCPSTRetHasValue: Boolean read FPFCPSTRetHasValue write FPFCPSTRetHasValue;
    property VFCPSTRet: Double read FVFCPSTRet write SetVFCPSTRet;
    property VFCPSTRetHasValue: Boolean read FVFCPSTRetHasValue write FVFCPSTRetHasValue;
    property VBCSTDest: Double read FVBCSTDest write SetVBCSTDest;
    property VBCSTDestHasValue: Boolean read FVBCSTDestHasValue write FVBCSTDestHasValue;
    property VICMSSTDest: Double read FVICMSSTDest write SetVICMSSTDest;
    property VICMSSTDestHasValue: Boolean read FVICMSSTDestHasValue write FVICMSSTDestHasValue;
    property PRedBCEfet: Double read FPRedBCEfet write SetPRedBCEfet;
    property PRedBCEfetHasValue: Boolean read FPRedBCEfetHasValue write FPRedBCEfetHasValue;
    property VBCEfet: Double read FVBCEfet write SetVBCEfet;
    property VBCEfetHasValue: Boolean read FVBCEfetHasValue write FVBCEfetHasValue;
    property PICMSEfet: Double read FPICMSEfet write SetPICMSEfet;
    property PICMSEfetHasValue: Boolean read FPICMSEfetHasValue write FPICMSEfetHasValue;
    property VICMSEfet: Double read FVICMSEfet write SetVICMSEfet;
    property VICMSEfetHasValue: Boolean read FVICMSEfetHasValue write FVICMSEfetHasValue;
  end;
  
  TNfeSefazICMSSN101 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCSOSN: Integer;
    FCSOSNHasValue: Boolean;
    FPCredSN: Double;
    FPCredSNHasValue: Boolean;
    FVCredICMSSN: Double;
    FVCredICMSSNHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCSOSN(const Value: Integer);
    procedure SetPCredSN(const Value: Double);
    procedure SetVCredICMSSN(const Value: Double);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CSOSN: Integer read FCSOSN write SetCSOSN;
    property CSOSNHasValue: Boolean read FCSOSNHasValue write FCSOSNHasValue;
    property PCredSN: Double read FPCredSN write SetPCredSN;
    property PCredSNHasValue: Boolean read FPCredSNHasValue write FPCredSNHasValue;
    property VCredICMSSN: Double read FVCredICMSSN write SetVCredICMSSN;
    property VCredICMSSNHasValue: Boolean read FVCredICMSSNHasValue write FVCredICMSSNHasValue;
  end;
  
  TNfeSefazICMSSN102 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCSOSN: Integer;
    FCSOSNHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCSOSN(const Value: Integer);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CSOSN: Integer read FCSOSN write SetCSOSN;
    property CSOSNHasValue: Boolean read FCSOSNHasValue write FCSOSNHasValue;
  end;
  
  TNfeSefazICMSSN201 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCSOSN: Integer;
    FCSOSNHasValue: Boolean;
    FModBCST: Integer;
    FModBCSTHasValue: Boolean;
    FPMVAST: Double;
    FPMVASTHasValue: Boolean;
    FPRedBCST: Double;
    FPRedBCSTHasValue: Boolean;
    FVBCST: Double;
    FVBCSTHasValue: Boolean;
    FPICMSST: Double;
    FPICMSSTHasValue: Boolean;
    FVICMSST: Double;
    FVICMSSTHasValue: Boolean;
    FVBCFCPST: Double;
    FVBCFCPSTHasValue: Boolean;
    FPFCPST: Double;
    FPFCPSTHasValue: Boolean;
    FVFCPST: Double;
    FVFCPSTHasValue: Boolean;
    FPCredSN: Double;
    FPCredSNHasValue: Boolean;
    FVCredICMSSN: Double;
    FVCredICMSSNHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCSOSN(const Value: Integer);
    procedure SetModBCST(const Value: Integer);
    procedure SetPMVAST(const Value: Double);
    procedure SetPRedBCST(const Value: Double);
    procedure SetVBCST(const Value: Double);
    procedure SetPICMSST(const Value: Double);
    procedure SetVICMSST(const Value: Double);
    procedure SetVBCFCPST(const Value: Double);
    procedure SetPFCPST(const Value: Double);
    procedure SetVFCPST(const Value: Double);
    procedure SetPCredSN(const Value: Double);
    procedure SetVCredICMSSN(const Value: Double);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CSOSN: Integer read FCSOSN write SetCSOSN;
    property CSOSNHasValue: Boolean read FCSOSNHasValue write FCSOSNHasValue;
    property ModBCST: Integer read FModBCST write SetModBCST;
    property ModBCSTHasValue: Boolean read FModBCSTHasValue write FModBCSTHasValue;
    property PMVAST: Double read FPMVAST write SetPMVAST;
    property PMVASTHasValue: Boolean read FPMVASTHasValue write FPMVASTHasValue;
    property PRedBCST: Double read FPRedBCST write SetPRedBCST;
    property PRedBCSTHasValue: Boolean read FPRedBCSTHasValue write FPRedBCSTHasValue;
    property VBCST: Double read FVBCST write SetVBCST;
    property VBCSTHasValue: Boolean read FVBCSTHasValue write FVBCSTHasValue;
    property PICMSST: Double read FPICMSST write SetPICMSST;
    property PICMSSTHasValue: Boolean read FPICMSSTHasValue write FPICMSSTHasValue;
    property VICMSST: Double read FVICMSST write SetVICMSST;
    property VICMSSTHasValue: Boolean read FVICMSSTHasValue write FVICMSSTHasValue;
    property VBCFCPST: Double read FVBCFCPST write SetVBCFCPST;
    property VBCFCPSTHasValue: Boolean read FVBCFCPSTHasValue write FVBCFCPSTHasValue;
    property PFCPST: Double read FPFCPST write SetPFCPST;
    property PFCPSTHasValue: Boolean read FPFCPSTHasValue write FPFCPSTHasValue;
    property VFCPST: Double read FVFCPST write SetVFCPST;
    property VFCPSTHasValue: Boolean read FVFCPSTHasValue write FVFCPSTHasValue;
    property PCredSN: Double read FPCredSN write SetPCredSN;
    property PCredSNHasValue: Boolean read FPCredSNHasValue write FPCredSNHasValue;
    property VCredICMSSN: Double read FVCredICMSSN write SetVCredICMSSN;
    property VCredICMSSNHasValue: Boolean read FVCredICMSSNHasValue write FVCredICMSSNHasValue;
  end;
  
  TNfeSefazICMSSN202 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCSOSN: Integer;
    FCSOSNHasValue: Boolean;
    FModBCST: Integer;
    FModBCSTHasValue: Boolean;
    FPMVAST: Double;
    FPMVASTHasValue: Boolean;
    FPRedBCST: Double;
    FPRedBCSTHasValue: Boolean;
    FVBCST: Double;
    FVBCSTHasValue: Boolean;
    FPICMSST: Double;
    FPICMSSTHasValue: Boolean;
    FVICMSST: Double;
    FVICMSSTHasValue: Boolean;
    FVBCFCPST: Double;
    FVBCFCPSTHasValue: Boolean;
    FPFCPST: Double;
    FPFCPSTHasValue: Boolean;
    FVFCPST: Double;
    FVFCPSTHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCSOSN(const Value: Integer);
    procedure SetModBCST(const Value: Integer);
    procedure SetPMVAST(const Value: Double);
    procedure SetPRedBCST(const Value: Double);
    procedure SetVBCST(const Value: Double);
    procedure SetPICMSST(const Value: Double);
    procedure SetVICMSST(const Value: Double);
    procedure SetVBCFCPST(const Value: Double);
    procedure SetPFCPST(const Value: Double);
    procedure SetVFCPST(const Value: Double);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CSOSN: Integer read FCSOSN write SetCSOSN;
    property CSOSNHasValue: Boolean read FCSOSNHasValue write FCSOSNHasValue;
    property ModBCST: Integer read FModBCST write SetModBCST;
    property ModBCSTHasValue: Boolean read FModBCSTHasValue write FModBCSTHasValue;
    property PMVAST: Double read FPMVAST write SetPMVAST;
    property PMVASTHasValue: Boolean read FPMVASTHasValue write FPMVASTHasValue;
    property PRedBCST: Double read FPRedBCST write SetPRedBCST;
    property PRedBCSTHasValue: Boolean read FPRedBCSTHasValue write FPRedBCSTHasValue;
    property VBCST: Double read FVBCST write SetVBCST;
    property VBCSTHasValue: Boolean read FVBCSTHasValue write FVBCSTHasValue;
    property PICMSST: Double read FPICMSST write SetPICMSST;
    property PICMSSTHasValue: Boolean read FPICMSSTHasValue write FPICMSSTHasValue;
    property VICMSST: Double read FVICMSST write SetVICMSST;
    property VICMSSTHasValue: Boolean read FVICMSSTHasValue write FVICMSSTHasValue;
    property VBCFCPST: Double read FVBCFCPST write SetVBCFCPST;
    property VBCFCPSTHasValue: Boolean read FVBCFCPSTHasValue write FVBCFCPSTHasValue;
    property PFCPST: Double read FPFCPST write SetPFCPST;
    property PFCPSTHasValue: Boolean read FPFCPSTHasValue write FPFCPSTHasValue;
    property VFCPST: Double read FVFCPST write SetVFCPST;
    property VFCPSTHasValue: Boolean read FVFCPSTHasValue write FVFCPSTHasValue;
  end;
  
  TNfeSefazICMSSN500 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCSOSN: Integer;
    FCSOSNHasValue: Boolean;
    FVBCSTRet: Double;
    FVBCSTRetHasValue: Boolean;
    FPST: Double;
    FPSTHasValue: Boolean;
    FVICMSSubstituto: Double;
    FVICMSSubstitutoHasValue: Boolean;
    FVICMSSTRet: Double;
    FVICMSSTRetHasValue: Boolean;
    FVBCFCPSTRet: Double;
    FVBCFCPSTRetHasValue: Boolean;
    FPFCPSTRet: Double;
    FPFCPSTRetHasValue: Boolean;
    FVFCPSTRet: Double;
    FVFCPSTRetHasValue: Boolean;
    FPRedBCEfet: Double;
    FPRedBCEfetHasValue: Boolean;
    FVBCEfet: Double;
    FVBCEfetHasValue: Boolean;
    FPICMSEfet: Double;
    FPICMSEfetHasValue: Boolean;
    FVICMSEfet: Double;
    FVICMSEfetHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCSOSN(const Value: Integer);
    procedure SetVBCSTRet(const Value: Double);
    procedure SetPST(const Value: Double);
    procedure SetVICMSSubstituto(const Value: Double);
    procedure SetVICMSSTRet(const Value: Double);
    procedure SetVBCFCPSTRet(const Value: Double);
    procedure SetPFCPSTRet(const Value: Double);
    procedure SetVFCPSTRet(const Value: Double);
    procedure SetPRedBCEfet(const Value: Double);
    procedure SetVBCEfet(const Value: Double);
    procedure SetPICMSEfet(const Value: Double);
    procedure SetVICMSEfet(const Value: Double);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CSOSN: Integer read FCSOSN write SetCSOSN;
    property CSOSNHasValue: Boolean read FCSOSNHasValue write FCSOSNHasValue;
    property VBCSTRet: Double read FVBCSTRet write SetVBCSTRet;
    property VBCSTRetHasValue: Boolean read FVBCSTRetHasValue write FVBCSTRetHasValue;
    property PST: Double read FPST write SetPST;
    property PSTHasValue: Boolean read FPSTHasValue write FPSTHasValue;
    property VICMSSubstituto: Double read FVICMSSubstituto write SetVICMSSubstituto;
    property VICMSSubstitutoHasValue: Boolean read FVICMSSubstitutoHasValue write FVICMSSubstitutoHasValue;
    property VICMSSTRet: Double read FVICMSSTRet write SetVICMSSTRet;
    property VICMSSTRetHasValue: Boolean read FVICMSSTRetHasValue write FVICMSSTRetHasValue;
    property VBCFCPSTRet: Double read FVBCFCPSTRet write SetVBCFCPSTRet;
    property VBCFCPSTRetHasValue: Boolean read FVBCFCPSTRetHasValue write FVBCFCPSTRetHasValue;
    property PFCPSTRet: Double read FPFCPSTRet write SetPFCPSTRet;
    property PFCPSTRetHasValue: Boolean read FPFCPSTRetHasValue write FPFCPSTRetHasValue;
    property VFCPSTRet: Double read FVFCPSTRet write SetVFCPSTRet;
    property VFCPSTRetHasValue: Boolean read FVFCPSTRetHasValue write FVFCPSTRetHasValue;
    property PRedBCEfet: Double read FPRedBCEfet write SetPRedBCEfet;
    property PRedBCEfetHasValue: Boolean read FPRedBCEfetHasValue write FPRedBCEfetHasValue;
    property VBCEfet: Double read FVBCEfet write SetVBCEfet;
    property VBCEfetHasValue: Boolean read FVBCEfetHasValue write FVBCEfetHasValue;
    property PICMSEfet: Double read FPICMSEfet write SetPICMSEfet;
    property PICMSEfetHasValue: Boolean read FPICMSEfetHasValue write FPICMSEfetHasValue;
    property VICMSEfet: Double read FVICMSEfet write SetVICMSEfet;
    property VICMSEfetHasValue: Boolean read FVICMSEfetHasValue write FVICMSEfetHasValue;
  end;
  
  TNfeSefazICMSSN900 = class
  private
    FOrig: Integer;
    FOrigHasValue: Boolean;
    FCSOSN: Integer;
    FCSOSNHasValue: Boolean;
    FModBC: Integer;
    FModBCHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPRedBC: Double;
    FPRedBCHasValue: Boolean;
    FPICMS: Double;
    FPICMSHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    FModBCST: Integer;
    FModBCSTHasValue: Boolean;
    FPMVAST: Double;
    FPMVASTHasValue: Boolean;
    FPRedBCST: Double;
    FPRedBCSTHasValue: Boolean;
    FVBCST: Double;
    FVBCSTHasValue: Boolean;
    FPICMSST: Double;
    FPICMSSTHasValue: Boolean;
    FVICMSST: Double;
    FVICMSSTHasValue: Boolean;
    FVBCFCPST: Double;
    FVBCFCPSTHasValue: Boolean;
    FPFCPST: Double;
    FPFCPSTHasValue: Boolean;
    FVFCPST: Double;
    FVFCPSTHasValue: Boolean;
    FPCredSN: Double;
    FPCredSNHasValue: Boolean;
    FVCredICMSSN: Double;
    FVCredICMSSNHasValue: Boolean;
    procedure SetOrig(const Value: Integer);
    procedure SetCSOSN(const Value: Integer);
    procedure SetModBC(const Value: Integer);
    procedure SetVBC(const Value: Double);
    procedure SetPRedBC(const Value: Double);
    procedure SetPICMS(const Value: Double);
    procedure SetVICMS(const Value: Double);
    procedure SetModBCST(const Value: Integer);
    procedure SetPMVAST(const Value: Double);
    procedure SetPRedBCST(const Value: Double);
    procedure SetVBCST(const Value: Double);
    procedure SetPICMSST(const Value: Double);
    procedure SetVICMSST(const Value: Double);
    procedure SetVBCFCPST(const Value: Double);
    procedure SetPFCPST(const Value: Double);
    procedure SetVFCPST(const Value: Double);
    procedure SetPCredSN(const Value: Double);
    procedure SetVCredICMSSN(const Value: Double);
  public
    property Orig: Integer read FOrig write SetOrig;
    property OrigHasValue: Boolean read FOrigHasValue write FOrigHasValue;
    property CSOSN: Integer read FCSOSN write SetCSOSN;
    property CSOSNHasValue: Boolean read FCSOSNHasValue write FCSOSNHasValue;
    property ModBC: Integer read FModBC write SetModBC;
    property ModBCHasValue: Boolean read FModBCHasValue write FModBCHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PRedBC: Double read FPRedBC write SetPRedBC;
    property PRedBCHasValue: Boolean read FPRedBCHasValue write FPRedBCHasValue;
    property PICMS: Double read FPICMS write SetPICMS;
    property PICMSHasValue: Boolean read FPICMSHasValue write FPICMSHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
    property ModBCST: Integer read FModBCST write SetModBCST;
    property ModBCSTHasValue: Boolean read FModBCSTHasValue write FModBCSTHasValue;
    property PMVAST: Double read FPMVAST write SetPMVAST;
    property PMVASTHasValue: Boolean read FPMVASTHasValue write FPMVASTHasValue;
    property PRedBCST: Double read FPRedBCST write SetPRedBCST;
    property PRedBCSTHasValue: Boolean read FPRedBCSTHasValue write FPRedBCSTHasValue;
    property VBCST: Double read FVBCST write SetVBCST;
    property VBCSTHasValue: Boolean read FVBCSTHasValue write FVBCSTHasValue;
    property PICMSST: Double read FPICMSST write SetPICMSST;
    property PICMSSTHasValue: Boolean read FPICMSSTHasValue write FPICMSSTHasValue;
    property VICMSST: Double read FVICMSST write SetVICMSST;
    property VICMSSTHasValue: Boolean read FVICMSSTHasValue write FVICMSSTHasValue;
    property VBCFCPST: Double read FVBCFCPST write SetVBCFCPST;
    property VBCFCPSTHasValue: Boolean read FVBCFCPSTHasValue write FVBCFCPSTHasValue;
    property PFCPST: Double read FPFCPST write SetPFCPST;
    property PFCPSTHasValue: Boolean read FPFCPSTHasValue write FPFCPSTHasValue;
    property VFCPST: Double read FVFCPST write SetVFCPST;
    property VFCPSTHasValue: Boolean read FVFCPSTHasValue write FVFCPSTHasValue;
    property PCredSN: Double read FPCredSN write SetPCredSN;
    property PCredSNHasValue: Boolean read FPCredSNHasValue write FPCredSNHasValue;
    property VCredICMSSN: Double read FVCredICMSSN write SetVCredICMSSN;
    property VCredICMSSNHasValue: Boolean read FVCredICMSSNHasValue write FVCredICMSSNHasValue;
  end;
  
  TNfeSefazICMS = class
  private
    FICMS00: TNfeSefazICMS00;
    FICMS10: TNfeSefazICMS10;
    FICMS20: TNfeSefazICMS20;
    FICMS30: TNfeSefazICMS30;
    FICMS40: TNfeSefazICMS40;
    FICMS51: TNfeSefazICMS51;
    FICMS60: TNfeSefazICMS60;
    FICMS70: TNfeSefazICMS70;
    FICMS90: TNfeSefazICMS90;
    FICMSPart: TNfeSefazICMSPart;
    FICMSST: TNfeSefazICMSST;
    FICMSSN101: TNfeSefazICMSSN101;
    FICMSSN102: TNfeSefazICMSSN102;
    FICMSSN201: TNfeSefazICMSSN201;
    FICMSSN202: TNfeSefazICMSSN202;
    FICMSSN500: TNfeSefazICMSSN500;
    FICMSSN900: TNfeSefazICMSSN900;
    procedure SetICMS00(const Value: TNfeSefazICMS00);
    procedure SetICMS10(const Value: TNfeSefazICMS10);
    procedure SetICMS20(const Value: TNfeSefazICMS20);
    procedure SetICMS30(const Value: TNfeSefazICMS30);
    procedure SetICMS40(const Value: TNfeSefazICMS40);
    procedure SetICMS51(const Value: TNfeSefazICMS51);
    procedure SetICMS60(const Value: TNfeSefazICMS60);
    procedure SetICMS70(const Value: TNfeSefazICMS70);
    procedure SetICMS90(const Value: TNfeSefazICMS90);
    procedure SetICMSPart(const Value: TNfeSefazICMSPart);
    procedure SetICMSST(const Value: TNfeSefazICMSST);
    procedure SetICMSSN101(const Value: TNfeSefazICMSSN101);
    procedure SetICMSSN102(const Value: TNfeSefazICMSSN102);
    procedure SetICMSSN201(const Value: TNfeSefazICMSSN201);
    procedure SetICMSSN202(const Value: TNfeSefazICMSSN202);
    procedure SetICMSSN500(const Value: TNfeSefazICMSSN500);
    procedure SetICMSSN900(const Value: TNfeSefazICMSSN900);
  public
    destructor Destroy; override;
    property ICMS00: TNfeSefazICMS00 read FICMS00 write SetICMS00;
    property ICMS10: TNfeSefazICMS10 read FICMS10 write SetICMS10;
    property ICMS20: TNfeSefazICMS20 read FICMS20 write SetICMS20;
    property ICMS30: TNfeSefazICMS30 read FICMS30 write SetICMS30;
    property ICMS40: TNfeSefazICMS40 read FICMS40 write SetICMS40;
    property ICMS51: TNfeSefazICMS51 read FICMS51 write SetICMS51;
    property ICMS60: TNfeSefazICMS60 read FICMS60 write SetICMS60;
    property ICMS70: TNfeSefazICMS70 read FICMS70 write SetICMS70;
    property ICMS90: TNfeSefazICMS90 read FICMS90 write SetICMS90;
    property ICMSPart: TNfeSefazICMSPart read FICMSPart write SetICMSPart;
    property ICMSST: TNfeSefazICMSST read FICMSST write SetICMSST;
    property ICMSSN101: TNfeSefazICMSSN101 read FICMSSN101 write SetICMSSN101;
    property ICMSSN102: TNfeSefazICMSSN102 read FICMSSN102 write SetICMSSN102;
    property ICMSSN201: TNfeSefazICMSSN201 read FICMSSN201 write SetICMSSN201;
    property ICMSSN202: TNfeSefazICMSSN202 read FICMSSN202 write SetICMSSN202;
    property ICMSSN500: TNfeSefazICMSSN500 read FICMSSN500 write SetICMSSN500;
    property ICMSSN900: TNfeSefazICMSSN900 read FICMSSN900 write SetICMSSN900;
  end;
  
  TNfeSefazIPITrib = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPIPI: Double;
    FPIPIHasValue: Boolean;
    FQUnid: Double;
    FQUnidHasValue: Boolean;
    FVUnid: Double;
    FVUnidHasValue: Boolean;
    FVIPI: Double;
    FVIPIHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetVBC(const Value: Double);
    procedure SetPIPI(const Value: Double);
    procedure SetQUnid(const Value: Double);
    procedure SetVUnid(const Value: Double);
    procedure SetVIPI(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PIPI: Double read FPIPI write SetPIPI;
    property PIPIHasValue: Boolean read FPIPIHasValue write FPIPIHasValue;
    property QUnid: Double read FQUnid write SetQUnid;
    property QUnidHasValue: Boolean read FQUnidHasValue write FQUnidHasValue;
    property VUnid: Double read FVUnid write SetVUnid;
    property VUnidHasValue: Boolean read FVUnidHasValue write FVUnidHasValue;
    property VIPI: Double read FVIPI write SetVIPI;
    property VIPIHasValue: Boolean read FVIPIHasValue write FVIPIHasValue;
  end;
  
  TNfeSefazIPINT = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    procedure SetCST(const Value: string);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
  end;
  
  TNfeSefazIpi = class
  private
    FCNPJProd: string;
    FCNPJProdHasValue: Boolean;
    FCSelo: string;
    FCSeloHasValue: Boolean;
    FQSelo: Integer;
    FQSeloHasValue: Boolean;
    FCEnq: string;
    FCEnqHasValue: Boolean;
    FIPITrib: TNfeSefazIPITrib;
    FIPINT: TNfeSefazIPINT;
    procedure SetCNPJProd(const Value: string);
    procedure SetCSelo(const Value: string);
    procedure SetQSelo(const Value: Integer);
    procedure SetCEnq(const Value: string);
    procedure SetIPITrib(const Value: TNfeSefazIPITrib);
    procedure SetIPINT(const Value: TNfeSefazIPINT);
  public
    destructor Destroy; override;
    property CNPJProd: string read FCNPJProd write SetCNPJProd;
    property CNPJProdHasValue: Boolean read FCNPJProdHasValue write FCNPJProdHasValue;
    property CSelo: string read FCSelo write SetCSelo;
    property CSeloHasValue: Boolean read FCSeloHasValue write FCSeloHasValue;
    property QSelo: Integer read FQSelo write SetQSelo;
    property QSeloHasValue: Boolean read FQSeloHasValue write FQSeloHasValue;
    property CEnq: string read FCEnq write SetCEnq;
    property CEnqHasValue: Boolean read FCEnqHasValue write FCEnqHasValue;
    property IPITrib: TNfeSefazIPITrib read FIPITrib write SetIPITrib;
    property IPINT: TNfeSefazIPINT read FIPINT write SetIPINT;
  end;
  
  TNfeSefazII = class
  private
    FVBC: Double;
    FVBCHasValue: Boolean;
    FVDespAdu: Double;
    FVDespAduHasValue: Boolean;
    FVII: Double;
    FVIIHasValue: Boolean;
    FVIOF: Double;
    FVIOFHasValue: Boolean;
    procedure SetVBC(const Value: Double);
    procedure SetVDespAdu(const Value: Double);
    procedure SetVII(const Value: Double);
    procedure SetVIOF(const Value: Double);
  public
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property VDespAdu: Double read FVDespAdu write SetVDespAdu;
    property VDespAduHasValue: Boolean read FVDespAduHasValue write FVDespAduHasValue;
    property VII: Double read FVII write SetVII;
    property VIIHasValue: Boolean read FVIIHasValue write FVIIHasValue;
    property VIOF: Double read FVIOF write SetVIOF;
    property VIOFHasValue: Boolean read FVIOFHasValue write FVIOFHasValue;
  end;
  
  TNfeSefazISSQN = class
  private
    FVBC: Double;
    FVBCHasValue: Boolean;
    FVAliq: Double;
    FVAliqHasValue: Boolean;
    FVISSQN: Double;
    FVISSQNHasValue: Boolean;
    FCMunFG: Integer;
    FCMunFGHasValue: Boolean;
    FCListServ: string;
    FCListServHasValue: Boolean;
    FVDeducao: Double;
    FVDeducaoHasValue: Boolean;
    FVOutro: Double;
    FVOutroHasValue: Boolean;
    FVDescIncond: Double;
    FVDescIncondHasValue: Boolean;
    FVDescCond: Double;
    FVDescCondHasValue: Boolean;
    FVISSRet: Double;
    FVISSRetHasValue: Boolean;
    FIndISS: Integer;
    FIndISSHasValue: Boolean;
    FCServico: string;
    FCServicoHasValue: Boolean;
    FCMun: Integer;
    FCMunHasValue: Boolean;
    FCPais: Integer;
    FCPaisHasValue: Boolean;
    FNProcesso: string;
    FNProcessoHasValue: Boolean;
    FIndIncentivo: Integer;
    FIndIncentivoHasValue: Boolean;
    procedure SetVBC(const Value: Double);
    procedure SetVAliq(const Value: Double);
    procedure SetVISSQN(const Value: Double);
    procedure SetCMunFG(const Value: Integer);
    procedure SetCListServ(const Value: string);
    procedure SetVDeducao(const Value: Double);
    procedure SetVOutro(const Value: Double);
    procedure SetVDescIncond(const Value: Double);
    procedure SetVDescCond(const Value: Double);
    procedure SetVISSRet(const Value: Double);
    procedure SetIndISS(const Value: Integer);
    procedure SetCServico(const Value: string);
    procedure SetCMun(const Value: Integer);
    procedure SetCPais(const Value: Integer);
    procedure SetNProcesso(const Value: string);
    procedure SetIndIncentivo(const Value: Integer);
  public
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property VAliq: Double read FVAliq write SetVAliq;
    property VAliqHasValue: Boolean read FVAliqHasValue write FVAliqHasValue;
    property VISSQN: Double read FVISSQN write SetVISSQN;
    property VISSQNHasValue: Boolean read FVISSQNHasValue write FVISSQNHasValue;
    property CMunFG: Integer read FCMunFG write SetCMunFG;
    property CMunFGHasValue: Boolean read FCMunFGHasValue write FCMunFGHasValue;
    property CListServ: string read FCListServ write SetCListServ;
    property CListServHasValue: Boolean read FCListServHasValue write FCListServHasValue;
    property VDeducao: Double read FVDeducao write SetVDeducao;
    property VDeducaoHasValue: Boolean read FVDeducaoHasValue write FVDeducaoHasValue;
    property VOutro: Double read FVOutro write SetVOutro;
    property VOutroHasValue: Boolean read FVOutroHasValue write FVOutroHasValue;
    property VDescIncond: Double read FVDescIncond write SetVDescIncond;
    property VDescIncondHasValue: Boolean read FVDescIncondHasValue write FVDescIncondHasValue;
    property VDescCond: Double read FVDescCond write SetVDescCond;
    property VDescCondHasValue: Boolean read FVDescCondHasValue write FVDescCondHasValue;
    property VISSRet: Double read FVISSRet write SetVISSRet;
    property VISSRetHasValue: Boolean read FVISSRetHasValue write FVISSRetHasValue;
    property IndISS: Integer read FIndISS write SetIndISS;
    property IndISSHasValue: Boolean read FIndISSHasValue write FIndISSHasValue;
    property CServico: string read FCServico write SetCServico;
    property CServicoHasValue: Boolean read FCServicoHasValue write FCServicoHasValue;
    property CMun: Integer read FCMun write SetCMun;
    property CMunHasValue: Boolean read FCMunHasValue write FCMunHasValue;
    property CPais: Integer read FCPais write SetCPais;
    property CPaisHasValue: Boolean read FCPaisHasValue write FCPaisHasValue;
    property NProcesso: string read FNProcesso write SetNProcesso;
    property NProcessoHasValue: Boolean read FNProcessoHasValue write FNProcessoHasValue;
    property IndIncentivo: Integer read FIndIncentivo write SetIndIncentivo;
    property IndIncentivoHasValue: Boolean read FIndIncentivoHasValue write FIndIncentivoHasValue;
  end;
  
  TNfeSefazPISAliq = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPPIS: Double;
    FPPISHasValue: Boolean;
    FVPIS: Double;
    FVPISHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetVBC(const Value: Double);
    procedure SetPPIS(const Value: Double);
    procedure SetVPIS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PPIS: Double read FPPIS write SetPPIS;
    property PPISHasValue: Boolean read FPPISHasValue write FPPISHasValue;
    property VPIS: Double read FVPIS write SetVPIS;
    property VPISHasValue: Boolean read FVPISHasValue write FVPISHasValue;
  end;
  
  TNfeSefazPISQtde = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FQBCProd: Double;
    FQBCProdHasValue: Boolean;
    FVAliqProd: Double;
    FVAliqProdHasValue: Boolean;
    FVPIS: Double;
    FVPISHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetQBCProd(const Value: Double);
    procedure SetVAliqProd(const Value: Double);
    procedure SetVPIS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property QBCProd: Double read FQBCProd write SetQBCProd;
    property QBCProdHasValue: Boolean read FQBCProdHasValue write FQBCProdHasValue;
    property VAliqProd: Double read FVAliqProd write SetVAliqProd;
    property VAliqProdHasValue: Boolean read FVAliqProdHasValue write FVAliqProdHasValue;
    property VPIS: Double read FVPIS write SetVPIS;
    property VPISHasValue: Boolean read FVPISHasValue write FVPISHasValue;
  end;
  
  TNfeSefazPISNT = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    procedure SetCST(const Value: string);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
  end;
  
  TNfeSefazPISOutr = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPPIS: Double;
    FPPISHasValue: Boolean;
    FQBCProd: Double;
    FQBCProdHasValue: Boolean;
    FVAliqProd: Double;
    FVAliqProdHasValue: Boolean;
    FVPIS: Double;
    FVPISHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetVBC(const Value: Double);
    procedure SetPPIS(const Value: Double);
    procedure SetQBCProd(const Value: Double);
    procedure SetVAliqProd(const Value: Double);
    procedure SetVPIS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PPIS: Double read FPPIS write SetPPIS;
    property PPISHasValue: Boolean read FPPISHasValue write FPPISHasValue;
    property QBCProd: Double read FQBCProd write SetQBCProd;
    property QBCProdHasValue: Boolean read FQBCProdHasValue write FQBCProdHasValue;
    property VAliqProd: Double read FVAliqProd write SetVAliqProd;
    property VAliqProdHasValue: Boolean read FVAliqProdHasValue write FVAliqProdHasValue;
    property VPIS: Double read FVPIS write SetVPIS;
    property VPISHasValue: Boolean read FVPISHasValue write FVPISHasValue;
  end;
  
  TNfeSefazPIS = class
  private
    FPISAliq: TNfeSefazPISAliq;
    FPISQtde: TNfeSefazPISQtde;
    FPISNT: TNfeSefazPISNT;
    FPISOutr: TNfeSefazPISOutr;
    procedure SetPISAliq(const Value: TNfeSefazPISAliq);
    procedure SetPISQtde(const Value: TNfeSefazPISQtde);
    procedure SetPISNT(const Value: TNfeSefazPISNT);
    procedure SetPISOutr(const Value: TNfeSefazPISOutr);
  public
    destructor Destroy; override;
    property PISAliq: TNfeSefazPISAliq read FPISAliq write SetPISAliq;
    property PISQtde: TNfeSefazPISQtde read FPISQtde write SetPISQtde;
    property PISNT: TNfeSefazPISNT read FPISNT write SetPISNT;
    property PISOutr: TNfeSefazPISOutr read FPISOutr write SetPISOutr;
  end;
  
  TNfeSefazPISST = class
  private
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPPIS: Double;
    FPPISHasValue: Boolean;
    FQBCProd: Double;
    FQBCProdHasValue: Boolean;
    FVAliqProd: Double;
    FVAliqProdHasValue: Boolean;
    FVPIS: Double;
    FVPISHasValue: Boolean;
    FIndSomaPISST: Integer;
    FIndSomaPISSTHasValue: Boolean;
    procedure SetVBC(const Value: Double);
    procedure SetPPIS(const Value: Double);
    procedure SetQBCProd(const Value: Double);
    procedure SetVAliqProd(const Value: Double);
    procedure SetVPIS(const Value: Double);
    procedure SetIndSomaPISST(const Value: Integer);
  public
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PPIS: Double read FPPIS write SetPPIS;
    property PPISHasValue: Boolean read FPPISHasValue write FPPISHasValue;
    property QBCProd: Double read FQBCProd write SetQBCProd;
    property QBCProdHasValue: Boolean read FQBCProdHasValue write FQBCProdHasValue;
    property VAliqProd: Double read FVAliqProd write SetVAliqProd;
    property VAliqProdHasValue: Boolean read FVAliqProdHasValue write FVAliqProdHasValue;
    property VPIS: Double read FVPIS write SetVPIS;
    property VPISHasValue: Boolean read FVPISHasValue write FVPISHasValue;
    property IndSomaPISST: Integer read FIndSomaPISST write SetIndSomaPISST;
    property IndSomaPISSTHasValue: Boolean read FIndSomaPISSTHasValue write FIndSomaPISSTHasValue;
  end;
  
  TNfeSefazCOFINSAliq = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPCOFINS: Double;
    FPCOFINSHasValue: Boolean;
    FVCOFINS: Double;
    FVCOFINSHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetVBC(const Value: Double);
    procedure SetPCOFINS(const Value: Double);
    procedure SetVCOFINS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PCOFINS: Double read FPCOFINS write SetPCOFINS;
    property PCOFINSHasValue: Boolean read FPCOFINSHasValue write FPCOFINSHasValue;
    property VCOFINS: Double read FVCOFINS write SetVCOFINS;
    property VCOFINSHasValue: Boolean read FVCOFINSHasValue write FVCOFINSHasValue;
  end;
  
  TNfeSefazCOFINSQtde = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FQBCProd: Double;
    FQBCProdHasValue: Boolean;
    FVAliqProd: Double;
    FVAliqProdHasValue: Boolean;
    FVCOFINS: Double;
    FVCOFINSHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetQBCProd(const Value: Double);
    procedure SetVAliqProd(const Value: Double);
    procedure SetVCOFINS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property QBCProd: Double read FQBCProd write SetQBCProd;
    property QBCProdHasValue: Boolean read FQBCProdHasValue write FQBCProdHasValue;
    property VAliqProd: Double read FVAliqProd write SetVAliqProd;
    property VAliqProdHasValue: Boolean read FVAliqProdHasValue write FVAliqProdHasValue;
    property VCOFINS: Double read FVCOFINS write SetVCOFINS;
    property VCOFINSHasValue: Boolean read FVCOFINSHasValue write FVCOFINSHasValue;
  end;
  
  TNfeSefazCOFINSNT = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    procedure SetCST(const Value: string);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
  end;
  
  TNfeSefazCOFINSOutr = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPCOFINS: Double;
    FPCOFINSHasValue: Boolean;
    FQBCProd: Double;
    FQBCProdHasValue: Boolean;
    FVAliqProd: Double;
    FVAliqProdHasValue: Boolean;
    FVCOFINS: Double;
    FVCOFINSHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetVBC(const Value: Double);
    procedure SetPCOFINS(const Value: Double);
    procedure SetQBCProd(const Value: Double);
    procedure SetVAliqProd(const Value: Double);
    procedure SetVCOFINS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PCOFINS: Double read FPCOFINS write SetPCOFINS;
    property PCOFINSHasValue: Boolean read FPCOFINSHasValue write FPCOFINSHasValue;
    property QBCProd: Double read FQBCProd write SetQBCProd;
    property QBCProdHasValue: Boolean read FQBCProdHasValue write FQBCProdHasValue;
    property VAliqProd: Double read FVAliqProd write SetVAliqProd;
    property VAliqProdHasValue: Boolean read FVAliqProdHasValue write FVAliqProdHasValue;
    property VCOFINS: Double read FVCOFINS write SetVCOFINS;
    property VCOFINSHasValue: Boolean read FVCOFINSHasValue write FVCOFINSHasValue;
  end;
  
  TNfeSefazCOFINS = class
  private
    FCOFINSAliq: TNfeSefazCOFINSAliq;
    FCOFINSQtde: TNfeSefazCOFINSQtde;
    FCOFINSNT: TNfeSefazCOFINSNT;
    FCOFINSOutr: TNfeSefazCOFINSOutr;
    procedure SetCOFINSAliq(const Value: TNfeSefazCOFINSAliq);
    procedure SetCOFINSQtde(const Value: TNfeSefazCOFINSQtde);
    procedure SetCOFINSNT(const Value: TNfeSefazCOFINSNT);
    procedure SetCOFINSOutr(const Value: TNfeSefazCOFINSOutr);
  public
    destructor Destroy; override;
    property COFINSAliq: TNfeSefazCOFINSAliq read FCOFINSAliq write SetCOFINSAliq;
    property COFINSQtde: TNfeSefazCOFINSQtde read FCOFINSQtde write SetCOFINSQtde;
    property COFINSNT: TNfeSefazCOFINSNT read FCOFINSNT write SetCOFINSNT;
    property COFINSOutr: TNfeSefazCOFINSOutr read FCOFINSOutr write SetCOFINSOutr;
  end;
  
  TNfeSefazCOFINSST = class
  private
    FVBC: Double;
    FVBCHasValue: Boolean;
    FPCOFINS: Double;
    FPCOFINSHasValue: Boolean;
    FQBCProd: Double;
    FQBCProdHasValue: Boolean;
    FVAliqProd: Double;
    FVAliqProdHasValue: Boolean;
    FVCOFINS: Double;
    FVCOFINSHasValue: Boolean;
    FIndSomaCOFINSST: Integer;
    FIndSomaCOFINSSTHasValue: Boolean;
    procedure SetVBC(const Value: Double);
    procedure SetPCOFINS(const Value: Double);
    procedure SetQBCProd(const Value: Double);
    procedure SetVAliqProd(const Value: Double);
    procedure SetVCOFINS(const Value: Double);
    procedure SetIndSomaCOFINSST(const Value: Integer);
  public
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property PCOFINS: Double read FPCOFINS write SetPCOFINS;
    property PCOFINSHasValue: Boolean read FPCOFINSHasValue write FPCOFINSHasValue;
    property QBCProd: Double read FQBCProd write SetQBCProd;
    property QBCProdHasValue: Boolean read FQBCProdHasValue write FQBCProdHasValue;
    property VAliqProd: Double read FVAliqProd write SetVAliqProd;
    property VAliqProdHasValue: Boolean read FVAliqProdHasValue write FVAliqProdHasValue;
    property VCOFINS: Double read FVCOFINS write SetVCOFINS;
    property VCOFINSHasValue: Boolean read FVCOFINSHasValue write FVCOFINSHasValue;
    property IndSomaCOFINSST: Integer read FIndSomaCOFINSST write SetIndSomaCOFINSST;
    property IndSomaCOFINSSTHasValue: Boolean read FIndSomaCOFINSSTHasValue write FIndSomaCOFINSSTHasValue;
  end;
  
  TNfeSefazICMSUFDest = class
  private
    FVBCUFDest: Double;
    FVBCUFDestHasValue: Boolean;
    FVBCFCPUFDest: Double;
    FVBCFCPUFDestHasValue: Boolean;
    FPFCPUFDest: Double;
    FPFCPUFDestHasValue: Boolean;
    FPICMSUFDest: Double;
    FPICMSUFDestHasValue: Boolean;
    FPICMSInter: Double;
    FPICMSInterHasValue: Boolean;
    FPICMSInterPart: Double;
    FPICMSInterPartHasValue: Boolean;
    FVFCPUFDest: Double;
    FVFCPUFDestHasValue: Boolean;
    FVICMSUFDest: Double;
    FVICMSUFDestHasValue: Boolean;
    FVICMSUFRemet: Double;
    FVICMSUFRemetHasValue: Boolean;
    procedure SetVBCUFDest(const Value: Double);
    procedure SetVBCFCPUFDest(const Value: Double);
    procedure SetPFCPUFDest(const Value: Double);
    procedure SetPICMSUFDest(const Value: Double);
    procedure SetPICMSInter(const Value: Double);
    procedure SetPICMSInterPart(const Value: Double);
    procedure SetVFCPUFDest(const Value: Double);
    procedure SetVICMSUFDest(const Value: Double);
    procedure SetVICMSUFRemet(const Value: Double);
  public
    property VBCUFDest: Double read FVBCUFDest write SetVBCUFDest;
    property VBCUFDestHasValue: Boolean read FVBCUFDestHasValue write FVBCUFDestHasValue;
    property VBCFCPUFDest: Double read FVBCFCPUFDest write SetVBCFCPUFDest;
    property VBCFCPUFDestHasValue: Boolean read FVBCFCPUFDestHasValue write FVBCFCPUFDestHasValue;
    property PFCPUFDest: Double read FPFCPUFDest write SetPFCPUFDest;
    property PFCPUFDestHasValue: Boolean read FPFCPUFDestHasValue write FPFCPUFDestHasValue;
    property PICMSUFDest: Double read FPICMSUFDest write SetPICMSUFDest;
    property PICMSUFDestHasValue: Boolean read FPICMSUFDestHasValue write FPICMSUFDestHasValue;
    property PICMSInter: Double read FPICMSInter write SetPICMSInter;
    property PICMSInterHasValue: Boolean read FPICMSInterHasValue write FPICMSInterHasValue;
    property PICMSInterPart: Double read FPICMSInterPart write SetPICMSInterPart;
    property PICMSInterPartHasValue: Boolean read FPICMSInterPartHasValue write FPICMSInterPartHasValue;
    property VFCPUFDest: Double read FVFCPUFDest write SetVFCPUFDest;
    property VFCPUFDestHasValue: Boolean read FVFCPUFDestHasValue write FVFCPUFDestHasValue;
    property VICMSUFDest: Double read FVICMSUFDest write SetVICMSUFDest;
    property VICMSUFDestHasValue: Boolean read FVICMSUFDestHasValue write FVICMSUFDestHasValue;
    property VICMSUFRemet: Double read FVICMSUFRemet write SetVICMSUFRemet;
    property VICMSUFRemetHasValue: Boolean read FVICMSUFRemetHasValue write FVICMSUFRemetHasValue;
  end;
  
  TNfeSefazImposto = class
  private
    FVTotTrib: Double;
    FVTotTribHasValue: Boolean;
    FICMS: TNfeSefazICMS;
    FIPI: TNfeSefazIpi;
    FII: TNfeSefazII;
    FISSQN: TNfeSefazISSQN;
    FPIS: TNfeSefazPIS;
    FPISST: TNfeSefazPISST;
    FCOFINS: TNfeSefazCOFINS;
    FCOFINSST: TNfeSefazCOFINSST;
    FICMSUFDest: TNfeSefazICMSUFDest;
    procedure SetVTotTrib(const Value: Double);
    procedure SetICMS(const Value: TNfeSefazICMS);
    procedure SetIPI(const Value: TNfeSefazIpi);
    procedure SetII(const Value: TNfeSefazII);
    procedure SetISSQN(const Value: TNfeSefazISSQN);
    procedure SetPIS(const Value: TNfeSefazPIS);
    procedure SetPISST(const Value: TNfeSefazPISST);
    procedure SetCOFINS(const Value: TNfeSefazCOFINS);
    procedure SetCOFINSST(const Value: TNfeSefazCOFINSST);
    procedure SetICMSUFDest(const Value: TNfeSefazICMSUFDest);
  public
    destructor Destroy; override;
    property VTotTrib: Double read FVTotTrib write SetVTotTrib;
    property VTotTribHasValue: Boolean read FVTotTribHasValue write FVTotTribHasValue;
    property ICMS: TNfeSefazICMS read FICMS write SetICMS;
    property IPI: TNfeSefazIpi read FIPI write SetIPI;
    property II: TNfeSefazII read FII write SetII;
    property ISSQN: TNfeSefazISSQN read FISSQN write SetISSQN;
    property PIS: TNfeSefazPIS read FPIS write SetPIS;
    property PISST: TNfeSefazPISST read FPISST write SetPISST;
    property COFINS: TNfeSefazCOFINS read FCOFINS write SetCOFINS;
    property COFINSST: TNfeSefazCOFINSST read FCOFINSST write SetCOFINSST;
    property ICMSUFDest: TNfeSefazICMSUFDest read FICMSUFDest write SetICMSUFDest;
  end;
  
  TNfeSefazImpostoDevolIPI = class
  private
    FVIPIDevol: Double;
    FVIPIDevolHasValue: Boolean;
    procedure SetVIPIDevol(const Value: Double);
  public
    property VIPIDevol: Double read FVIPIDevol write SetVIPIDevol;
    property VIPIDevolHasValue: Boolean read FVIPIDevolHasValue write FVIPIDevolHasValue;
  end;
  
  TNfeSefazImpostoDevol = class
  private
    FPDevol: Double;
    FPDevolHasValue: Boolean;
    FIPI: TNfeSefazImpostoDevolIPI;
    procedure SetPDevol(const Value: Double);
    procedure SetIPI(const Value: TNfeSefazImpostoDevolIPI);
  public
    destructor Destroy; override;
    property PDevol: Double read FPDevol write SetPDevol;
    property PDevolHasValue: Boolean read FPDevolHasValue write FPDevolHasValue;
    property IPI: TNfeSefazImpostoDevolIPI read FIPI write SetIPI;
  end;
  
  TNfeSefazDet = class
  private
    FNItem: Integer;
    FNItemHasValue: Boolean;
    FProd: TNfeSefazProd;
    FImposto: TNfeSefazImposto;
    FImpostoDevol: TNfeSefazImpostoDevol;
    FInfAdProd: string;
    FInfAdProdHasValue: Boolean;
    procedure SetNItem(const Value: Integer);
    procedure SetProd(const Value: TNfeSefazProd);
    procedure SetImposto(const Value: TNfeSefazImposto);
    procedure SetImpostoDevol(const Value: TNfeSefazImpostoDevol);
    procedure SetInfAdProd(const Value: string);
  public
    destructor Destroy; override;
    property NItem: Integer read FNItem write SetNItem;
    property NItemHasValue: Boolean read FNItemHasValue write FNItemHasValue;
    property Prod: TNfeSefazProd read FProd write SetProd;
    property Imposto: TNfeSefazImposto read FImposto write SetImposto;
    property ImpostoDevol: TNfeSefazImpostoDevol read FImpostoDevol write SetImpostoDevol;
    property InfAdProd: string read FInfAdProd write SetInfAdProd;
    property InfAdProdHasValue: Boolean read FInfAdProdHasValue write FInfAdProdHasValue;
  end;
  
  TNfeSefazDetList = class(TObjectList<TNfeSefazDet>)
  end;
  
  TNfeSefazICMSTot = class
  private
    FVBC: Double;
    FVBCHasValue: Boolean;
    FVICMS: Double;
    FVICMSHasValue: Boolean;
    FVICMSDeson: Double;
    FVICMSDesonHasValue: Boolean;
    FVFCPUFDest: Double;
    FVFCPUFDestHasValue: Boolean;
    FVICMSUFDest: Double;
    FVICMSUFDestHasValue: Boolean;
    FVICMSUFRemet: Double;
    FVICMSUFRemetHasValue: Boolean;
    FVFCP: Double;
    FVFCPHasValue: Boolean;
    FVBCST: Double;
    FVBCSTHasValue: Boolean;
    FVST: Double;
    FVSTHasValue: Boolean;
    FVFCPST: Double;
    FVFCPSTHasValue: Boolean;
    FVFCPSTRet: Double;
    FVFCPSTRetHasValue: Boolean;
    FVProd: Double;
    FVProdHasValue: Boolean;
    FVFrete: Double;
    FVFreteHasValue: Boolean;
    FVSeg: Double;
    FVSegHasValue: Boolean;
    FVDesc: Double;
    FVDescHasValue: Boolean;
    FVII: Double;
    FVIIHasValue: Boolean;
    FVIPI: Double;
    FVIPIHasValue: Boolean;
    FVIPIDevol: Double;
    FVIPIDevolHasValue: Boolean;
    FVPIS: Double;
    FVPISHasValue: Boolean;
    FVCOFINS: Double;
    FVCOFINSHasValue: Boolean;
    FVOutro: Double;
    FVOutroHasValue: Boolean;
    FVNF: Double;
    FVNFHasValue: Boolean;
    FVTotTrib: Double;
    FVTotTribHasValue: Boolean;
    procedure SetVBC(const Value: Double);
    procedure SetVICMS(const Value: Double);
    procedure SetVICMSDeson(const Value: Double);
    procedure SetVFCPUFDest(const Value: Double);
    procedure SetVICMSUFDest(const Value: Double);
    procedure SetVICMSUFRemet(const Value: Double);
    procedure SetVFCP(const Value: Double);
    procedure SetVBCST(const Value: Double);
    procedure SetVST(const Value: Double);
    procedure SetVFCPST(const Value: Double);
    procedure SetVFCPSTRet(const Value: Double);
    procedure SetVProd(const Value: Double);
    procedure SetVFrete(const Value: Double);
    procedure SetVSeg(const Value: Double);
    procedure SetVDesc(const Value: Double);
    procedure SetVII(const Value: Double);
    procedure SetVIPI(const Value: Double);
    procedure SetVIPIDevol(const Value: Double);
    procedure SetVPIS(const Value: Double);
    procedure SetVCOFINS(const Value: Double);
    procedure SetVOutro(const Value: Double);
    procedure SetVNF(const Value: Double);
    procedure SetVTotTrib(const Value: Double);
  public
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property VICMS: Double read FVICMS write SetVICMS;
    property VICMSHasValue: Boolean read FVICMSHasValue write FVICMSHasValue;
    property VICMSDeson: Double read FVICMSDeson write SetVICMSDeson;
    property VICMSDesonHasValue: Boolean read FVICMSDesonHasValue write FVICMSDesonHasValue;
    property VFCPUFDest: Double read FVFCPUFDest write SetVFCPUFDest;
    property VFCPUFDestHasValue: Boolean read FVFCPUFDestHasValue write FVFCPUFDestHasValue;
    property VICMSUFDest: Double read FVICMSUFDest write SetVICMSUFDest;
    property VICMSUFDestHasValue: Boolean read FVICMSUFDestHasValue write FVICMSUFDestHasValue;
    property VICMSUFRemet: Double read FVICMSUFRemet write SetVICMSUFRemet;
    property VICMSUFRemetHasValue: Boolean read FVICMSUFRemetHasValue write FVICMSUFRemetHasValue;
    property VFCP: Double read FVFCP write SetVFCP;
    property VFCPHasValue: Boolean read FVFCPHasValue write FVFCPHasValue;
    property VBCST: Double read FVBCST write SetVBCST;
    property VBCSTHasValue: Boolean read FVBCSTHasValue write FVBCSTHasValue;
    property VST: Double read FVST write SetVST;
    property VSTHasValue: Boolean read FVSTHasValue write FVSTHasValue;
    property VFCPST: Double read FVFCPST write SetVFCPST;
    property VFCPSTHasValue: Boolean read FVFCPSTHasValue write FVFCPSTHasValue;
    property VFCPSTRet: Double read FVFCPSTRet write SetVFCPSTRet;
    property VFCPSTRetHasValue: Boolean read FVFCPSTRetHasValue write FVFCPSTRetHasValue;
    property VProd: Double read FVProd write SetVProd;
    property VProdHasValue: Boolean read FVProdHasValue write FVProdHasValue;
    property VFrete: Double read FVFrete write SetVFrete;
    property VFreteHasValue: Boolean read FVFreteHasValue write FVFreteHasValue;
    property VSeg: Double read FVSeg write SetVSeg;
    property VSegHasValue: Boolean read FVSegHasValue write FVSegHasValue;
    property VDesc: Double read FVDesc write SetVDesc;
    property VDescHasValue: Boolean read FVDescHasValue write FVDescHasValue;
    property VII: Double read FVII write SetVII;
    property VIIHasValue: Boolean read FVIIHasValue write FVIIHasValue;
    property VIPI: Double read FVIPI write SetVIPI;
    property VIPIHasValue: Boolean read FVIPIHasValue write FVIPIHasValue;
    property VIPIDevol: Double read FVIPIDevol write SetVIPIDevol;
    property VIPIDevolHasValue: Boolean read FVIPIDevolHasValue write FVIPIDevolHasValue;
    property VPIS: Double read FVPIS write SetVPIS;
    property VPISHasValue: Boolean read FVPISHasValue write FVPISHasValue;
    property VCOFINS: Double read FVCOFINS write SetVCOFINS;
    property VCOFINSHasValue: Boolean read FVCOFINSHasValue write FVCOFINSHasValue;
    property VOutro: Double read FVOutro write SetVOutro;
    property VOutroHasValue: Boolean read FVOutroHasValue write FVOutroHasValue;
    property VNF: Double read FVNF write SetVNF;
    property VNFHasValue: Boolean read FVNFHasValue write FVNFHasValue;
    property VTotTrib: Double read FVTotTrib write SetVTotTrib;
    property VTotTribHasValue: Boolean read FVTotTribHasValue write FVTotTribHasValue;
  end;
  
  TNfeSefazISSQNtot = class
  private
    FVServ: Double;
    FVServHasValue: Boolean;
    FVBC: Double;
    FVBCHasValue: Boolean;
    FVISS: Double;
    FVISSHasValue: Boolean;
    FVPIS: Double;
    FVPISHasValue: Boolean;
    FVCOFINS: Double;
    FVCOFINSHasValue: Boolean;
    FDCompet: TDate;
    FDCompetHasValue: Boolean;
    FVDeducao: Double;
    FVDeducaoHasValue: Boolean;
    FVOutro: Double;
    FVOutroHasValue: Boolean;
    FVDescIncond: Double;
    FVDescIncondHasValue: Boolean;
    FVDescCond: Double;
    FVDescCondHasValue: Boolean;
    FVISSRet: Double;
    FVISSRetHasValue: Boolean;
    FCRegTrib: Integer;
    FCRegTribHasValue: Boolean;
    procedure SetVServ(const Value: Double);
    procedure SetVBC(const Value: Double);
    procedure SetVISS(const Value: Double);
    procedure SetVPIS(const Value: Double);
    procedure SetVCOFINS(const Value: Double);
    procedure SetDCompet(const Value: TDate);
    procedure SetVDeducao(const Value: Double);
    procedure SetVOutro(const Value: Double);
    procedure SetVDescIncond(const Value: Double);
    procedure SetVDescCond(const Value: Double);
    procedure SetVISSRet(const Value: Double);
    procedure SetCRegTrib(const Value: Integer);
  public
    property VServ: Double read FVServ write SetVServ;
    property VServHasValue: Boolean read FVServHasValue write FVServHasValue;
    property VBC: Double read FVBC write SetVBC;
    property VBCHasValue: Boolean read FVBCHasValue write FVBCHasValue;
    property VISS: Double read FVISS write SetVISS;
    property VISSHasValue: Boolean read FVISSHasValue write FVISSHasValue;
    property VPIS: Double read FVPIS write SetVPIS;
    property VPISHasValue: Boolean read FVPISHasValue write FVPISHasValue;
    property VCOFINS: Double read FVCOFINS write SetVCOFINS;
    property VCOFINSHasValue: Boolean read FVCOFINSHasValue write FVCOFINSHasValue;
    property DCompet: TDate read FDCompet write SetDCompet;
    property DCompetHasValue: Boolean read FDCompetHasValue write FDCompetHasValue;
    property VDeducao: Double read FVDeducao write SetVDeducao;
    property VDeducaoHasValue: Boolean read FVDeducaoHasValue write FVDeducaoHasValue;
    property VOutro: Double read FVOutro write SetVOutro;
    property VOutroHasValue: Boolean read FVOutroHasValue write FVOutroHasValue;
    property VDescIncond: Double read FVDescIncond write SetVDescIncond;
    property VDescIncondHasValue: Boolean read FVDescIncondHasValue write FVDescIncondHasValue;
    property VDescCond: Double read FVDescCond write SetVDescCond;
    property VDescCondHasValue: Boolean read FVDescCondHasValue write FVDescCondHasValue;
    property VISSRet: Double read FVISSRet write SetVISSRet;
    property VISSRetHasValue: Boolean read FVISSRetHasValue write FVISSRetHasValue;
    property CRegTrib: Integer read FCRegTrib write SetCRegTrib;
    property CRegTribHasValue: Boolean read FCRegTribHasValue write FCRegTribHasValue;
  end;
  
  TNfeSefazRetTrib = class
  private
    FVRetPIS: Double;
    FVRetPISHasValue: Boolean;
    FVRetCOFINS: Double;
    FVRetCOFINSHasValue: Boolean;
    FVRetCSLL: Double;
    FVRetCSLLHasValue: Boolean;
    FVBCIRRF: Double;
    FVBCIRRFHasValue: Boolean;
    FVIRRF: Double;
    FVIRRFHasValue: Boolean;
    FVBCRetPrev: Double;
    FVBCRetPrevHasValue: Boolean;
    FVRetPrev: Double;
    FVRetPrevHasValue: Boolean;
    procedure SetVRetPIS(const Value: Double);
    procedure SetVRetCOFINS(const Value: Double);
    procedure SetVRetCSLL(const Value: Double);
    procedure SetVBCIRRF(const Value: Double);
    procedure SetVIRRF(const Value: Double);
    procedure SetVBCRetPrev(const Value: Double);
    procedure SetVRetPrev(const Value: Double);
  public
    property VRetPIS: Double read FVRetPIS write SetVRetPIS;
    property VRetPISHasValue: Boolean read FVRetPISHasValue write FVRetPISHasValue;
    property VRetCOFINS: Double read FVRetCOFINS write SetVRetCOFINS;
    property VRetCOFINSHasValue: Boolean read FVRetCOFINSHasValue write FVRetCOFINSHasValue;
    property VRetCSLL: Double read FVRetCSLL write SetVRetCSLL;
    property VRetCSLLHasValue: Boolean read FVRetCSLLHasValue write FVRetCSLLHasValue;
    property VBCIRRF: Double read FVBCIRRF write SetVBCIRRF;
    property VBCIRRFHasValue: Boolean read FVBCIRRFHasValue write FVBCIRRFHasValue;
    property VIRRF: Double read FVIRRF write SetVIRRF;
    property VIRRFHasValue: Boolean read FVIRRFHasValue write FVIRRFHasValue;
    property VBCRetPrev: Double read FVBCRetPrev write SetVBCRetPrev;
    property VBCRetPrevHasValue: Boolean read FVBCRetPrevHasValue write FVBCRetPrevHasValue;
    property VRetPrev: Double read FVRetPrev write SetVRetPrev;
    property VRetPrevHasValue: Boolean read FVRetPrevHasValue write FVRetPrevHasValue;
  end;
  
  TNfeSefazTotal = class
  private
    FICMSTot: TNfeSefazICMSTot;
    FISSQNtot: TNfeSefazISSQNtot;
    FRetTrib: TNfeSefazRetTrib;
    procedure SetICMSTot(const Value: TNfeSefazICMSTot);
    procedure SetISSQNtot(const Value: TNfeSefazISSQNtot);
    procedure SetRetTrib(const Value: TNfeSefazRetTrib);
  public
    destructor Destroy; override;
    property ICMSTot: TNfeSefazICMSTot read FICMSTot write SetICMSTot;
    property ISSQNtot: TNfeSefazISSQNtot read FISSQNtot write SetISSQNtot;
    property RetTrib: TNfeSefazRetTrib read FRetTrib write SetRetTrib;
  end;
  
  TNfeSefazTransporta = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FXNome: string;
    FXNomeHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FXEnder: string;
    FXEnderHasValue: Boolean;
    FXMun: string;
    FXMunHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetXNome(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetXEnder(const Value: string);
    procedure SetXMun(const Value: string);
    procedure SetUF(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property XNome: string read FXNome write SetXNome;
    property XNomeHasValue: Boolean read FXNomeHasValue write FXNomeHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property XEnder: string read FXEnder write SetXEnder;
    property XEnderHasValue: Boolean read FXEnderHasValue write FXEnderHasValue;
    property XMun: string read FXMun write SetXMun;
    property XMunHasValue: Boolean read FXMunHasValue write FXMunHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
  end;
  
  TNfeSefazRetTransp = class
  private
    FVServ: Double;
    FVServHasValue: Boolean;
    FVBCRet: Double;
    FVBCRetHasValue: Boolean;
    FPICMSRet: Double;
    FPICMSRetHasValue: Boolean;
    FVICMSRet: Double;
    FVICMSRetHasValue: Boolean;
    FCFOP: Integer;
    FCFOPHasValue: Boolean;
    FCMunFG: Integer;
    FCMunFGHasValue: Boolean;
    procedure SetVServ(const Value: Double);
    procedure SetVBCRet(const Value: Double);
    procedure SetPICMSRet(const Value: Double);
    procedure SetVICMSRet(const Value: Double);
    procedure SetCFOP(const Value: Integer);
    procedure SetCMunFG(const Value: Integer);
  public
    property VServ: Double read FVServ write SetVServ;
    property VServHasValue: Boolean read FVServHasValue write FVServHasValue;
    property VBCRet: Double read FVBCRet write SetVBCRet;
    property VBCRetHasValue: Boolean read FVBCRetHasValue write FVBCRetHasValue;
    property PICMSRet: Double read FPICMSRet write SetPICMSRet;
    property PICMSRetHasValue: Boolean read FPICMSRetHasValue write FPICMSRetHasValue;
    property VICMSRet: Double read FVICMSRet write SetVICMSRet;
    property VICMSRetHasValue: Boolean read FVICMSRetHasValue write FVICMSRetHasValue;
    property CFOP: Integer read FCFOP write SetCFOP;
    property CFOPHasValue: Boolean read FCFOPHasValue write FCFOPHasValue;
    property CMunFG: Integer read FCMunFG write SetCMunFG;
    property CMunFGHasValue: Boolean read FCMunFGHasValue write FCMunFGHasValue;
  end;
  
  TNfeSefazVeiculo = class
  private
    FPlaca: string;
    FPlacaHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FRNTC: string;
    FRNTCHasValue: Boolean;
    procedure SetPlaca(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetRNTC(const Value: string);
  public
    property Placa: string read FPlaca write SetPlaca;
    property PlacaHasValue: Boolean read FPlacaHasValue write FPlacaHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property RNTC: string read FRNTC write SetRNTC;
    property RNTCHasValue: Boolean read FRNTCHasValue write FRNTCHasValue;
  end;
  
  TNfeSefazVeiculoList = class(TObjectList<TNfeSefazVeiculo>)
  end;
  
  TNfeSefazLacres = class
  private
    FNLacre: string;
    FNLacreHasValue: Boolean;
    procedure SetNLacre(const Value: string);
  public
    property NLacre: string read FNLacre write SetNLacre;
    property NLacreHasValue: Boolean read FNLacreHasValue write FNLacreHasValue;
  end;
  
  TNfeSefazLacresList = class(TObjectList<TNfeSefazLacres>)
  end;
  
  TNfeSefazVol = class
  private
    FQVol: Integer;
    FQVolHasValue: Boolean;
    FEsp: string;
    FEspHasValue: Boolean;
    FMarca: string;
    FMarcaHasValue: Boolean;
    FNVol: string;
    FNVolHasValue: Boolean;
    FPesoL: Double;
    FPesoLHasValue: Boolean;
    FPesoB: Double;
    FPesoBHasValue: Boolean;
    FLacres: TNfeSefazLacresList;
    procedure SetQVol(const Value: Integer);
    procedure SetEsp(const Value: string);
    procedure SetMarca(const Value: string);
    procedure SetNVol(const Value: string);
    procedure SetPesoL(const Value: Double);
    procedure SetPesoB(const Value: Double);
    procedure SetLacres(const Value: TNfeSefazLacresList);
  public
    destructor Destroy; override;
    property QVol: Integer read FQVol write SetQVol;
    property QVolHasValue: Boolean read FQVolHasValue write FQVolHasValue;
    property Esp: string read FEsp write SetEsp;
    property EspHasValue: Boolean read FEspHasValue write FEspHasValue;
    property Marca: string read FMarca write SetMarca;
    property MarcaHasValue: Boolean read FMarcaHasValue write FMarcaHasValue;
    property NVol: string read FNVol write SetNVol;
    property NVolHasValue: Boolean read FNVolHasValue write FNVolHasValue;
    property PesoL: Double read FPesoL write SetPesoL;
    property PesoLHasValue: Boolean read FPesoLHasValue write FPesoLHasValue;
    property PesoB: Double read FPesoB write SetPesoB;
    property PesoBHasValue: Boolean read FPesoBHasValue write FPesoBHasValue;
    property Lacres: TNfeSefazLacresList read FLacres write SetLacres;
  end;
  
  TNfeSefazVolList = class(TObjectList<TNfeSefazVol>)
  end;
  
  TNfeSefazTransp = class
  private
    FModFrete: Integer;
    FModFreteHasValue: Boolean;
    FTransporta: TNfeSefazTransporta;
    FRetTransp: TNfeSefazRetTransp;
    FVeicTransp: TNfeSefazVeiculo;
    FReboque: TNfeSefazVeiculoList;
    FVagao: string;
    FVagaoHasValue: Boolean;
    FBalsa: string;
    FBalsaHasValue: Boolean;
    FVol: TNfeSefazVolList;
    procedure SetModFrete(const Value: Integer);
    procedure SetTransporta(const Value: TNfeSefazTransporta);
    procedure SetRetTransp(const Value: TNfeSefazRetTransp);
    procedure SetVeicTransp(const Value: TNfeSefazVeiculo);
    procedure SetReboque(const Value: TNfeSefazVeiculoList);
    procedure SetVagao(const Value: string);
    procedure SetBalsa(const Value: string);
    procedure SetVol(const Value: TNfeSefazVolList);
  public
    destructor Destroy; override;
    property ModFrete: Integer read FModFrete write SetModFrete;
    property ModFreteHasValue: Boolean read FModFreteHasValue write FModFreteHasValue;
    property Transporta: TNfeSefazTransporta read FTransporta write SetTransporta;
    property RetTransp: TNfeSefazRetTransp read FRetTransp write SetRetTransp;
    property VeicTransp: TNfeSefazVeiculo read FVeicTransp write SetVeicTransp;
    property Reboque: TNfeSefazVeiculoList read FReboque write SetReboque;
    property Vagao: string read FVagao write SetVagao;
    property VagaoHasValue: Boolean read FVagaoHasValue write FVagaoHasValue;
    property Balsa: string read FBalsa write SetBalsa;
    property BalsaHasValue: Boolean read FBalsaHasValue write FBalsaHasValue;
    property Vol: TNfeSefazVolList read FVol write SetVol;
  end;
  
  TNfeSefazFat = class
  private
    FNFat: string;
    FNFatHasValue: Boolean;
    FVOrig: Double;
    FVOrigHasValue: Boolean;
    FVDesc: Double;
    FVDescHasValue: Boolean;
    FVLiq: Double;
    FVLiqHasValue: Boolean;
    procedure SetNFat(const Value: string);
    procedure SetVOrig(const Value: Double);
    procedure SetVDesc(const Value: Double);
    procedure SetVLiq(const Value: Double);
  public
    property NFat: string read FNFat write SetNFat;
    property NFatHasValue: Boolean read FNFatHasValue write FNFatHasValue;
    property VOrig: Double read FVOrig write SetVOrig;
    property VOrigHasValue: Boolean read FVOrigHasValue write FVOrigHasValue;
    property VDesc: Double read FVDesc write SetVDesc;
    property VDescHasValue: Boolean read FVDescHasValue write FVDescHasValue;
    property VLiq: Double read FVLiq write SetVLiq;
    property VLiqHasValue: Boolean read FVLiqHasValue write FVLiqHasValue;
  end;
  
  TNfeSefazDup = class
  private
    FNDup: string;
    FNDupHasValue: Boolean;
    FDVenc: TDate;
    FDVencHasValue: Boolean;
    FVDup: Double;
    FVDupHasValue: Boolean;
    procedure SetNDup(const Value: string);
    procedure SetDVenc(const Value: TDate);
    procedure SetVDup(const Value: Double);
  public
    property NDup: string read FNDup write SetNDup;
    property NDupHasValue: Boolean read FNDupHasValue write FNDupHasValue;
    property DVenc: TDate read FDVenc write SetDVenc;
    property DVencHasValue: Boolean read FDVencHasValue write FDVencHasValue;
    property VDup: Double read FVDup write SetVDup;
    property VDupHasValue: Boolean read FVDupHasValue write FVDupHasValue;
  end;
  
  TNfeSefazDupList = class(TObjectList<TNfeSefazDup>)
  end;
  
  TNfeSefazCobr = class
  private
    FFat: TNfeSefazFat;
    FDup: TNfeSefazDupList;
    procedure SetFat(const Value: TNfeSefazFat);
    procedure SetDup(const Value: TNfeSefazDupList);
  public
    destructor Destroy; override;
    property Fat: TNfeSefazFat read FFat write SetFat;
    property Dup: TNfeSefazDupList read FDup write SetDup;
  end;
  
  TNfeSefazCard = class
  private
    FTpIntegra: Integer;
    FTpIntegraHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FTBand: string;
    FTBandHasValue: Boolean;
    FCAut: string;
    FCAutHasValue: Boolean;
    procedure SetTpIntegra(const Value: Integer);
    procedure SetCNPJ(const Value: string);
    procedure SetTBand(const Value: string);
    procedure SetCAut(const Value: string);
  public
    property TpIntegra: Integer read FTpIntegra write SetTpIntegra;
    property TpIntegraHasValue: Boolean read FTpIntegraHasValue write FTpIntegraHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property TBand: string read FTBand write SetTBand;
    property TBandHasValue: Boolean read FTBandHasValue write FTBandHasValue;
    property CAut: string read FCAut write SetCAut;
    property CAutHasValue: Boolean read FCAutHasValue write FCAutHasValue;
  end;
  
  TNfeSefazDetPag = class
  private
    FIndPag: Integer;
    FIndPagHasValue: Boolean;
    FTPag: string;
    FTPagHasValue: Boolean;
    FXPag: string;
    FXPagHasValue: Boolean;
    FVPag: Double;
    FVPagHasValue: Boolean;
    FCard: TNfeSefazCard;
    procedure SetIndPag(const Value: Integer);
    procedure SetTPag(const Value: string);
    procedure SetXPag(const Value: string);
    procedure SetVPag(const Value: Double);
    procedure SetCard(const Value: TNfeSefazCard);
  public
    destructor Destroy; override;
    property IndPag: Integer read FIndPag write SetIndPag;
    property IndPagHasValue: Boolean read FIndPagHasValue write FIndPagHasValue;
    property TPag: string read FTPag write SetTPag;
    property TPagHasValue: Boolean read FTPagHasValue write FTPagHasValue;
    property XPag: string read FXPag write SetXPag;
    property XPagHasValue: Boolean read FXPagHasValue write FXPagHasValue;
    property VPag: Double read FVPag write SetVPag;
    property VPagHasValue: Boolean read FVPagHasValue write FVPagHasValue;
    property Card: TNfeSefazCard read FCard write SetCard;
  end;
  
  TNfeSefazDetPagList = class(TObjectList<TNfeSefazDetPag>)
  end;
  
  TNfeSefazPag = class
  private
    FDetPag: TNfeSefazDetPagList;
    FVTroco: Double;
    FVTrocoHasValue: Boolean;
    procedure SetDetPag(const Value: TNfeSefazDetPagList);
    procedure SetVTroco(const Value: Double);
  public
    destructor Destroy; override;
    property DetPag: TNfeSefazDetPagList read FDetPag write SetDetPag;
    property VTroco: Double read FVTroco write SetVTroco;
    property VTrocoHasValue: Boolean read FVTrocoHasValue write FVTrocoHasValue;
  end;
  
  TNfeSefazInfIntermed = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FIdCadIntTran: string;
    FIdCadIntTranHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetIdCadIntTran(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property IdCadIntTran: string read FIdCadIntTran write SetIdCadIntTran;
    property IdCadIntTranHasValue: Boolean read FIdCadIntTranHasValue write FIdCadIntTranHasValue;
  end;
  
  TNfeSefazObsCont = class
  private
    FXCampo: string;
    FXCampoHasValue: Boolean;
    FXTexto: string;
    FXTextoHasValue: Boolean;
    procedure SetXCampo(const Value: string);
    procedure SetXTexto(const Value: string);
  public
    property XCampo: string read FXCampo write SetXCampo;
    property XCampoHasValue: Boolean read FXCampoHasValue write FXCampoHasValue;
    property XTexto: string read FXTexto write SetXTexto;
    property XTextoHasValue: Boolean read FXTextoHasValue write FXTextoHasValue;
  end;
  
  TNfeSefazObsContList = class(TObjectList<TNfeSefazObsCont>)
  end;
  
  TNfeSefazObsFisco = class
  private
    FXCampo: string;
    FXCampoHasValue: Boolean;
    FXTexto: string;
    FXTextoHasValue: Boolean;
    procedure SetXCampo(const Value: string);
    procedure SetXTexto(const Value: string);
  public
    property XCampo: string read FXCampo write SetXCampo;
    property XCampoHasValue: Boolean read FXCampoHasValue write FXCampoHasValue;
    property XTexto: string read FXTexto write SetXTexto;
    property XTextoHasValue: Boolean read FXTextoHasValue write FXTextoHasValue;
  end;
  
  TNfeSefazObsFiscoList = class(TObjectList<TNfeSefazObsFisco>)
  end;
  
  TNfeSefazProcRef = class
  private
    FNProc: string;
    FNProcHasValue: Boolean;
    FIndProc: Integer;
    FIndProcHasValue: Boolean;
    procedure SetNProc(const Value: string);
    procedure SetIndProc(const Value: Integer);
  public
    property NProc: string read FNProc write SetNProc;
    property NProcHasValue: Boolean read FNProcHasValue write FNProcHasValue;
    property IndProc: Integer read FIndProc write SetIndProc;
    property IndProcHasValue: Boolean read FIndProcHasValue write FIndProcHasValue;
  end;
  
  TNfeSefazProcRefList = class(TObjectList<TNfeSefazProcRef>)
  end;
  
  TNfeSefazInfAdic = class
  private
    FInfAdFisco: string;
    FInfAdFiscoHasValue: Boolean;
    FInfCpl: string;
    FInfCplHasValue: Boolean;
    FObsCont: TNfeSefazObsContList;
    FObsFisco: TNfeSefazObsFiscoList;
    FProcRef: TNfeSefazProcRefList;
    procedure SetInfAdFisco(const Value: string);
    procedure SetInfCpl(const Value: string);
    procedure SetObsCont(const Value: TNfeSefazObsContList);
    procedure SetObsFisco(const Value: TNfeSefazObsFiscoList);
    procedure SetProcRef(const Value: TNfeSefazProcRefList);
  public
    destructor Destroy; override;
    property InfAdFisco: string read FInfAdFisco write SetInfAdFisco;
    property InfAdFiscoHasValue: Boolean read FInfAdFiscoHasValue write FInfAdFiscoHasValue;
    property InfCpl: string read FInfCpl write SetInfCpl;
    property InfCplHasValue: Boolean read FInfCplHasValue write FInfCplHasValue;
    property ObsCont: TNfeSefazObsContList read FObsCont write SetObsCont;
    property ObsFisco: TNfeSefazObsFiscoList read FObsFisco write SetObsFisco;
    property ProcRef: TNfeSefazProcRefList read FProcRef write SetProcRef;
  end;
  
  TNfeSefazExporta = class
  private
    FUFSaidaPais: string;
    FUFSaidaPaisHasValue: Boolean;
    FXLocExporta: string;
    FXLocExportaHasValue: Boolean;
    FXLocDespacho: string;
    FXLocDespachoHasValue: Boolean;
    procedure SetUFSaidaPais(const Value: string);
    procedure SetXLocExporta(const Value: string);
    procedure SetXLocDespacho(const Value: string);
  public
    property UFSaidaPais: string read FUFSaidaPais write SetUFSaidaPais;
    property UFSaidaPaisHasValue: Boolean read FUFSaidaPaisHasValue write FUFSaidaPaisHasValue;
    property XLocExporta: string read FXLocExporta write SetXLocExporta;
    property XLocExportaHasValue: Boolean read FXLocExportaHasValue write FXLocExportaHasValue;
    property XLocDespacho: string read FXLocDespacho write SetXLocDespacho;
    property XLocDespachoHasValue: Boolean read FXLocDespachoHasValue write FXLocDespachoHasValue;
  end;
  
  TNfeSefazCompra = class
  private
    FXNEmp: string;
    FXNEmpHasValue: Boolean;
    FXPed: string;
    FXPedHasValue: Boolean;
    FXCont: string;
    FXContHasValue: Boolean;
    procedure SetXNEmp(const Value: string);
    procedure SetXPed(const Value: string);
    procedure SetXCont(const Value: string);
  public
    property XNEmp: string read FXNEmp write SetXNEmp;
    property XNEmpHasValue: Boolean read FXNEmpHasValue write FXNEmpHasValue;
    property XPed: string read FXPed write SetXPed;
    property XPedHasValue: Boolean read FXPedHasValue write FXPedHasValue;
    property XCont: string read FXCont write SetXCont;
    property XContHasValue: Boolean read FXContHasValue write FXContHasValue;
  end;
  
  TNfeSefazForDia = class
  private
    FDia: Integer;
    FDiaHasValue: Boolean;
    FQtde: Double;
    FQtdeHasValue: Boolean;
    procedure SetDia(const Value: Integer);
    procedure SetQtde(const Value: Double);
  public
    property Dia: Integer read FDia write SetDia;
    property DiaHasValue: Boolean read FDiaHasValue write FDiaHasValue;
    property Qtde: Double read FQtde write SetQtde;
    property QtdeHasValue: Boolean read FQtdeHasValue write FQtdeHasValue;
  end;
  
  TNfeSefazForDiaList = class(TObjectList<TNfeSefazForDia>)
  end;
  
  TNfeSefazDeduc = class
  private
    FXDed: string;
    FXDedHasValue: Boolean;
    FVDed: Double;
    FVDedHasValue: Boolean;
    procedure SetXDed(const Value: string);
    procedure SetVDed(const Value: Double);
  public
    property XDed: string read FXDed write SetXDed;
    property XDedHasValue: Boolean read FXDedHasValue write FXDedHasValue;
    property VDed: Double read FVDed write SetVDed;
    property VDedHasValue: Boolean read FVDedHasValue write FVDedHasValue;
  end;
  
  TNfeSefazDeducList = class(TObjectList<TNfeSefazDeduc>)
  end;
  
  TNfeSefazCana = class
  private
    FSafra: string;
    FSafraHasValue: Boolean;
    FRef: string;
    FRefHasValue: Boolean;
    FForDia: TNfeSefazForDiaList;
    FQTotMes: Double;
    FQTotMesHasValue: Boolean;
    FQTotAnt: Double;
    FQTotAntHasValue: Boolean;
    FQTotGer: Double;
    FQTotGerHasValue: Boolean;
    FDeduc: TNfeSefazDeducList;
    FVFor: Double;
    FVForHasValue: Boolean;
    FVTotDed: Double;
    FVTotDedHasValue: Boolean;
    FVLiqFor: Double;
    FVLiqForHasValue: Boolean;
    procedure SetSafra(const Value: string);
    procedure SetRef(const Value: string);
    procedure SetForDia(const Value: TNfeSefazForDiaList);
    procedure SetQTotMes(const Value: Double);
    procedure SetQTotAnt(const Value: Double);
    procedure SetQTotGer(const Value: Double);
    procedure SetDeduc(const Value: TNfeSefazDeducList);
    procedure SetVFor(const Value: Double);
    procedure SetVTotDed(const Value: Double);
    procedure SetVLiqFor(const Value: Double);
  public
    destructor Destroy; override;
    property Safra: string read FSafra write SetSafra;
    property SafraHasValue: Boolean read FSafraHasValue write FSafraHasValue;
    property Ref: string read FRef write SetRef;
    property RefHasValue: Boolean read FRefHasValue write FRefHasValue;
    property ForDia: TNfeSefazForDiaList read FForDia write SetForDia;
    property QTotMes: Double read FQTotMes write SetQTotMes;
    property QTotMesHasValue: Boolean read FQTotMesHasValue write FQTotMesHasValue;
    property QTotAnt: Double read FQTotAnt write SetQTotAnt;
    property QTotAntHasValue: Boolean read FQTotAntHasValue write FQTotAntHasValue;
    property QTotGer: Double read FQTotGer write SetQTotGer;
    property QTotGerHasValue: Boolean read FQTotGerHasValue write FQTotGerHasValue;
    property Deduc: TNfeSefazDeducList read FDeduc write SetDeduc;
    property VFor: Double read FVFor write SetVFor;
    property VForHasValue: Boolean read FVForHasValue write FVForHasValue;
    property VTotDed: Double read FVTotDed write SetVTotDed;
    property VTotDedHasValue: Boolean read FVTotDedHasValue write FVTotDedHasValue;
    property VLiqFor: Double read FVLiqFor write SetVLiqFor;
    property VLiqForHasValue: Boolean read FVLiqForHasValue write FVLiqForHasValue;
  end;
  
  TNfeSefazInfRespTec = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FXContato: string;
    FXContatoHasValue: Boolean;
    FEmail: string;
    FEmailHasValue: Boolean;
    FFone: string;
    FFoneHasValue: Boolean;
    FIdCSRT: Integer;
    FIdCSRTHasValue: Boolean;
    FHashCSRT: string;
    FHashCSRTHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetXContato(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetFone(const Value: string);
    procedure SetIdCSRT(const Value: Integer);
    procedure SetHashCSRT(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property XContato: string read FXContato write SetXContato;
    property XContatoHasValue: Boolean read FXContatoHasValue write FXContatoHasValue;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
    property Fone: string read FFone write SetFone;
    property FoneHasValue: Boolean read FFoneHasValue write FFoneHasValue;
    property IdCSRT: Integer read FIdCSRT write SetIdCSRT;
    property IdCSRTHasValue: Boolean read FIdCSRTHasValue write FIdCSRTHasValue;
    property HashCSRT: string read FHashCSRT write SetHashCSRT;
    property HashCSRTHasValue: Boolean read FHashCSRTHasValue write FHashCSRTHasValue;
  end;
  
  TNfeSefazInfSolicNFF = class
  private
    FXSolic: string;
    FXSolicHasValue: Boolean;
    procedure SetXSolic(const Value: string);
  public
    property XSolic: string read FXSolic write SetXSolic;
    property XSolicHasValue: Boolean read FXSolicHasValue write FXSolicHasValue;
  end;
  
  TNfeSefazInfNFe = class
  private
    FVersao: string;
    FVersaoHasValue: Boolean;
    FId: string;
    FIdHasValue: Boolean;
    FIde: TNfeSefazIde;
    FEmit: TNfeSefazEmit;
    FAvulsa: TNfeSefazAvulsa;
    FDest: TNfeSefazDest;
    FRetirada: TNfeSefazLocal;
    FEntrega: TNfeSefazLocal;
    FAutXML: TNfeSefazAutXMLList;
    FDet: TNfeSefazDetList;
    FTotal: TNfeSefazTotal;
    FTransp: TNfeSefazTransp;
    FCobr: TNfeSefazCobr;
    FPag: TNfeSefazPag;
    FInfIntermed: TNfeSefazInfIntermed;
    FInfAdic: TNfeSefazInfAdic;
    FExporta: TNfeSefazExporta;
    FCompra: TNfeSefazCompra;
    FCana: TNfeSefazCana;
    FInfRespTec: TNfeSefazInfRespTec;
    FInfSolicNFF: TNfeSefazInfSolicNFF;
    procedure SetVersao(const Value: string);
    procedure SetId(const Value: string);
    procedure SetIde(const Value: TNfeSefazIde);
    procedure SetEmit(const Value: TNfeSefazEmit);
    procedure SetAvulsa(const Value: TNfeSefazAvulsa);
    procedure SetDest(const Value: TNfeSefazDest);
    procedure SetRetirada(const Value: TNfeSefazLocal);
    procedure SetEntrega(const Value: TNfeSefazLocal);
    procedure SetAutXML(const Value: TNfeSefazAutXMLList);
    procedure SetDet(const Value: TNfeSefazDetList);
    procedure SetTotal(const Value: TNfeSefazTotal);
    procedure SetTransp(const Value: TNfeSefazTransp);
    procedure SetCobr(const Value: TNfeSefazCobr);
    procedure SetPag(const Value: TNfeSefazPag);
    procedure SetInfIntermed(const Value: TNfeSefazInfIntermed);
    procedure SetInfAdic(const Value: TNfeSefazInfAdic);
    procedure SetExporta(const Value: TNfeSefazExporta);
    procedure SetCompra(const Value: TNfeSefazCompra);
    procedure SetCana(const Value: TNfeSefazCana);
    procedure SetInfRespTec(const Value: TNfeSefazInfRespTec);
    procedure SetInfSolicNFF(const Value: TNfeSefazInfSolicNFF);
  public
    destructor Destroy; override;
    property Versao: string read FVersao write SetVersao;
    property VersaoHasValue: Boolean read FVersaoHasValue write FVersaoHasValue;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ide: TNfeSefazIde read FIde write SetIde;
    property Emit: TNfeSefazEmit read FEmit write SetEmit;
    property Avulsa: TNfeSefazAvulsa read FAvulsa write SetAvulsa;
    property Dest: TNfeSefazDest read FDest write SetDest;
    property Retirada: TNfeSefazLocal read FRetirada write SetRetirada;
    property Entrega: TNfeSefazLocal read FEntrega write SetEntrega;
    property AutXML: TNfeSefazAutXMLList read FAutXML write SetAutXML;
    property Det: TNfeSefazDetList read FDet write SetDet;
    property Total: TNfeSefazTotal read FTotal write SetTotal;
    property Transp: TNfeSefazTransp read FTransp write SetTransp;
    property Cobr: TNfeSefazCobr read FCobr write SetCobr;
    property Pag: TNfeSefazPag read FPag write SetPag;
    property InfIntermed: TNfeSefazInfIntermed read FInfIntermed write SetInfIntermed;
    property InfAdic: TNfeSefazInfAdic read FInfAdic write SetInfAdic;
    property Exporta: TNfeSefazExporta read FExporta write SetExporta;
    property Compra: TNfeSefazCompra read FCompra write SetCompra;
    property Cana: TNfeSefazCana read FCana write SetCana;
    property InfRespTec: TNfeSefazInfRespTec read FInfRespTec write SetInfRespTec;
    property InfSolicNFF: TNfeSefazInfSolicNFF read FInfSolicNFF write SetInfSolicNFF;
  end;
  
  TNfeSefazInfNFeSupl = class
  private
    FQrCode: string;
    FQrCodeHasValue: Boolean;
    FUrlChave: string;
    FUrlChaveHasValue: Boolean;
    procedure SetQrCode(const Value: string);
    procedure SetUrlChave(const Value: string);
  public
    property QrCode: string read FQrCode write SetQrCode;
    property QrCodeHasValue: Boolean read FQrCodeHasValue write FQrCodeHasValue;
    property UrlChave: string read FUrlChave write SetUrlChave;
    property UrlChaveHasValue: Boolean read FUrlChaveHasValue write FUrlChaveHasValue;
  end;
  
  TNfePedidoEmissao = class
  private
    FInfNFe: TNfeSefazInfNFe;
    FInfNFeSupl: TNfeSefazInfNFeSupl;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FReferencia: string;
    FReferenciaHasValue: Boolean;
    procedure SetInfNFe(const Value: TNfeSefazInfNFe);
    procedure SetInfNFeSupl(const Value: TNfeSefazInfNFeSupl);
    procedure SetAmbiente(const Value: string);
    procedure SetReferencia(const Value: string);
  public
    destructor Destroy; override;
    property InfNFe: TNfeSefazInfNFe read FInfNFe write SetInfNFe;
    property InfNFeSupl: TNfeSefazInfNFeSupl read FInfNFeSupl write SetInfNFeSupl;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Referencia: string read FReferencia write SetReferencia;
    property ReferenciaHasValue: Boolean read FReferenciaHasValue write FReferenciaHasValue;
  end;
  
  TNfePedidoEmissaoList = class(TObjectList<TNfePedidoEmissao>)
  end;
  
  TNfePedidoEmissaoLote = class
  private
    FDocumentos: TNfePedidoEmissaoList;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FReferencia: string;
    FReferenciaHasValue: Boolean;
    FIdLote: string;
    FIdLoteHasValue: Boolean;
    procedure SetDocumentos(const Value: TNfePedidoEmissaoList);
    procedure SetAmbiente(const Value: string);
    procedure SetReferencia(const Value: string);
    procedure SetIdLote(const Value: string);
  public
    destructor Destroy; override;
    property Documentos: TNfePedidoEmissaoList read FDocumentos write SetDocumentos;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Referencia: string read FReferencia write SetReferencia;
    property ReferenciaHasValue: Boolean read FReferenciaHasValue write FReferenciaHasValue;
    property IdLote: string read FIdLote write SetIdLote;
    property IdLoteHasValue: Boolean read FIdLoteHasValue write FIdLoteHasValue;
  end;
  
  TNfePedidoCancelamento = class
  private
    FJustificativa: string;
    FJustificativaHasValue: Boolean;
    procedure SetJustificativa(const Value: string);
  public
    property Justificativa: string read FJustificativa write SetJustificativa;
    property JustificativaHasValue: Boolean read FJustificativaHasValue write FJustificativaHasValue;
  end;
  
  TNfePedidoCartaCorrecao = class
  private
    FCorrecao: string;
    FCorrecaoHasValue: Boolean;
    procedure SetCorrecao(const Value: string);
  public
    property Correcao: string read FCorrecao write SetCorrecao;
    property CorrecaoHasValue: Boolean read FCorrecaoHasValue write FCorrecaoHasValue;
  end;
  
  TDfeCartaCorrecao = class
  private
    FCorrecao: string;
    FCorrecaoHasValue: Boolean;
    FId: string;
    FIdHasValue: Boolean;
    FAmbiente: string;
    FAmbienteHasValue: Boolean;
    FStatus: string;
    FStatusHasValue: Boolean;
    FAutor: TDfeAutorEvento;
    FChaveAcesso: string;
    FChaveAcessoHasValue: Boolean;
    FDataEvento: TDateTime;
    FDataEventoHasValue: Boolean;
    FNumeroSequencial: Integer;
    FNumeroSequencialHasValue: Boolean;
    FDataRecebimento: TDateTime;
    FDataRecebimentoHasValue: Boolean;
    FCodigoStatus: Integer;
    FCodigoStatusHasValue: Boolean;
    FMotivoStatus: string;
    FMotivoStatusHasValue: Boolean;
    FNumeroProtocolo: string;
    FNumeroProtocoloHasValue: Boolean;
    FCodigoMensagem: Integer;
    FCodigoMensagemHasValue: Boolean;
    FMensagem: string;
    FMensagemHasValue: Boolean;
    FTipoEvento: string;
    FTipoEventoHasValue: Boolean;
    procedure SetCorrecao(const Value: string);
    procedure SetId(const Value: string);
    procedure SetAmbiente(const Value: string);
    procedure SetStatus(const Value: string);
    procedure SetAutor(const Value: TDfeAutorEvento);
    procedure SetChaveAcesso(const Value: string);
    procedure SetDataEvento(const Value: TDateTime);
    procedure SetNumeroSequencial(const Value: Integer);
    procedure SetDataRecebimento(const Value: TDateTime);
    procedure SetCodigoStatus(const Value: Integer);
    procedure SetMotivoStatus(const Value: string);
    procedure SetNumeroProtocolo(const Value: string);
    procedure SetCodigoMensagem(const Value: Integer);
    procedure SetMensagem(const Value: string);
    procedure SetTipoEvento(const Value: string);
  public
    destructor Destroy; override;
    property Correcao: string read FCorrecao write SetCorrecao;
    property CorrecaoHasValue: Boolean read FCorrecaoHasValue write FCorrecaoHasValue;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property Ambiente: string read FAmbiente write SetAmbiente;
    property AmbienteHasValue: Boolean read FAmbienteHasValue write FAmbienteHasValue;
    property Status: string read FStatus write SetStatus;
    property StatusHasValue: Boolean read FStatusHasValue write FStatusHasValue;
    property Autor: TDfeAutorEvento read FAutor write SetAutor;
    property ChaveAcesso: string read FChaveAcesso write SetChaveAcesso;
    property ChaveAcessoHasValue: Boolean read FChaveAcessoHasValue write FChaveAcessoHasValue;
    property DataEvento: TDateTime read FDataEvento write SetDataEvento;
    property DataEventoHasValue: Boolean read FDataEventoHasValue write FDataEventoHasValue;
    property NumeroSequencial: Integer read FNumeroSequencial write SetNumeroSequencial;
    property NumeroSequencialHasValue: Boolean read FNumeroSequencialHasValue write FNumeroSequencialHasValue;
    property DataRecebimento: TDateTime read FDataRecebimento write SetDataRecebimento;
    property DataRecebimentoHasValue: Boolean read FDataRecebimentoHasValue write FDataRecebimentoHasValue;
    property CodigoStatus: Integer read FCodigoStatus write SetCodigoStatus;
    property CodigoStatusHasValue: Boolean read FCodigoStatusHasValue write FCodigoStatusHasValue;
    property MotivoStatus: string read FMotivoStatus write SetMotivoStatus;
    property MotivoStatusHasValue: Boolean read FMotivoStatusHasValue write FMotivoStatusHasValue;
    property NumeroProtocolo: string read FNumeroProtocolo write SetNumeroProtocolo;
    property NumeroProtocoloHasValue: Boolean read FNumeroProtocoloHasValue write FNumeroProtocoloHasValue;
    property CodigoMensagem: Integer read FCodigoMensagem write SetCodigoMensagem;
    property CodigoMensagemHasValue: Boolean read FCodigoMensagemHasValue write FCodigoMensagemHasValue;
    property Mensagem: string read FMensagem write SetMensagem;
    property MensagemHasValue: Boolean read FMensagemHasValue write FMensagemHasValue;
    property TipoEvento: string read FTipoEvento write SetTipoEvento;
    property TipoEventoHasValue: Boolean read FTipoEventoHasValue write FTipoEventoHasValue;
  end;
  
  TCnpjNaturezaJuridica = class
  private
    FCodigo: string;
    FCodigoHasValue: Boolean;
    FDescricao: string;
    FDescricaoHasValue: Boolean;
    procedure SetCodigo(const Value: string);
    procedure SetDescricao(const Value: string);
  public
    property Codigo: string read FCodigo write SetCodigo;
    property CodigoHasValue: Boolean read FCodigoHasValue write FCodigoHasValue;
    property Descricao: string read FDescricao write SetDescricao;
    property DescricaoHasValue: Boolean read FDescricaoHasValue write FDescricaoHasValue;
  end;
  
  TCnpjPorteEmpresa = class
  private
    FCodigo: string;
    FCodigoHasValue: Boolean;
    FDescricao: string;
    FDescricaoHasValue: Boolean;
    procedure SetCodigo(const Value: string);
    procedure SetDescricao(const Value: string);
  public
    property Codigo: string read FCodigo write SetCodigo;
    property CodigoHasValue: Boolean read FCodigoHasValue write FCodigoHasValue;
    property Descricao: string read FDescricao write SetDescricao;
    property DescricaoHasValue: Boolean read FDescricaoHasValue write FDescricaoHasValue;
  end;
  
  TCnpjSituacaoCadastral = class
  private
    FData: TDate;
    FDataHasValue: Boolean;
    FCodigo: string;
    FCodigoHasValue: Boolean;
    FDescricao: string;
    FDescricaoHasValue: Boolean;
    procedure SetData(const Value: TDate);
    procedure SetCodigo(const Value: string);
    procedure SetDescricao(const Value: string);
  public
    property Data: TDate read FData write SetData;
    property DataHasValue: Boolean read FDataHasValue write FDataHasValue;
    property Codigo: string read FCodigo write SetCodigo;
    property CodigoHasValue: Boolean read FCodigoHasValue write FCodigoHasValue;
    property Descricao: string read FDescricao write SetDescricao;
    property DescricaoHasValue: Boolean read FDescricaoHasValue write FDescricaoHasValue;
  end;
  
  TCnpjPais = class
  private
    FCodigo: string;
    FCodigoHasValue: Boolean;
    FDescricao: string;
    FDescricaoHasValue: Boolean;
    procedure SetCodigo(const Value: string);
    procedure SetDescricao(const Value: string);
  public
    property Codigo: string read FCodigo write SetCodigo;
    property CodigoHasValue: Boolean read FCodigoHasValue write FCodigoHasValue;
    property Descricao: string read FDescricao write SetDescricao;
    property DescricaoHasValue: Boolean read FDescricaoHasValue write FDescricaoHasValue;
  end;
  
  TCnpjCnae = class
  private
    FCodigo: string;
    FCodigoHasValue: Boolean;
    FDescricao: string;
    FDescricaoHasValue: Boolean;
    procedure SetCodigo(const Value: string);
    procedure SetDescricao(const Value: string);
  public
    property Codigo: string read FCodigo write SetCodigo;
    property CodigoHasValue: Boolean read FCodigoHasValue write FCodigoHasValue;
    property Descricao: string read FDescricao write SetDescricao;
    property DescricaoHasValue: Boolean read FDescricaoHasValue write FDescricaoHasValue;
  end;
  
  TCnpjCnaeList = class(TObjectList<TCnpjCnae>)
  end;
  
  TCnpjMunicipio = class
  private
    FCodigoTom: string;
    FCodigoTomHasValue: Boolean;
    FCodigoIbge: string;
    FCodigoIbgeHasValue: Boolean;
    FDescricao: string;
    FDescricaoHasValue: Boolean;
    procedure SetCodigoTom(const Value: string);
    procedure SetCodigoIbge(const Value: string);
    procedure SetDescricao(const Value: string);
  public
    property CodigoTom: string read FCodigoTom write SetCodigoTom;
    property CodigoTomHasValue: Boolean read FCodigoTomHasValue write FCodigoTomHasValue;
    property CodigoIbge: string read FCodigoIbge write SetCodigoIbge;
    property CodigoIbgeHasValue: Boolean read FCodigoIbgeHasValue write FCodigoIbgeHasValue;
    property Descricao: string read FDescricao write SetDescricao;
    property DescricaoHasValue: Boolean read FDescricaoHasValue write FDescricaoHasValue;
  end;
  
  TCnpjEndereco = class
  private
    FTipoLogradouro: string;
    FTipoLogradouroHasValue: Boolean;
    FLogradouro: string;
    FLogradouroHasValue: Boolean;
    FNumero: string;
    FNumeroHasValue: Boolean;
    FComplemento: string;
    FComplementoHasValue: Boolean;
    FBairro: string;
    FBairroHasValue: Boolean;
    FCep: string;
    FCepHasValue: Boolean;
    FUf: string;
    FUfHasValue: Boolean;
    FMunicipio: TCnpjMunicipio;
    procedure SetTipoLogradouro(const Value: string);
    procedure SetLogradouro(const Value: string);
    procedure SetNumero(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetBairro(const Value: string);
    procedure SetCep(const Value: string);
    procedure SetUf(const Value: string);
    procedure SetMunicipio(const Value: TCnpjMunicipio);
  public
    destructor Destroy; override;
    property TipoLogradouro: string read FTipoLogradouro write SetTipoLogradouro;
    property TipoLogradouroHasValue: Boolean read FTipoLogradouroHasValue write FTipoLogradouroHasValue;
    property Logradouro: string read FLogradouro write SetLogradouro;
    property LogradouroHasValue: Boolean read FLogradouroHasValue write FLogradouroHasValue;
    property Numero: string read FNumero write SetNumero;
    property NumeroHasValue: Boolean read FNumeroHasValue write FNumeroHasValue;
    property Complemento: string read FComplemento write SetComplemento;
    property ComplementoHasValue: Boolean read FComplementoHasValue write FComplementoHasValue;
    property Bairro: string read FBairro write SetBairro;
    property BairroHasValue: Boolean read FBairroHasValue write FBairroHasValue;
    property Cep: string read FCep write SetCep;
    property CepHasValue: Boolean read FCepHasValue write FCepHasValue;
    property Uf: string read FUf write SetUf;
    property UfHasValue: Boolean read FUfHasValue write FUfHasValue;
    property Municipio: TCnpjMunicipio read FMunicipio write SetMunicipio;
  end;
  
  TCnpjTelefone = class
  private
    FDdd: string;
    FDddHasValue: Boolean;
    FNumero: string;
    FNumeroHasValue: Boolean;
    procedure SetDdd(const Value: string);
    procedure SetNumero(const Value: string);
  public
    property Ddd: string read FDdd write SetDdd;
    property DddHasValue: Boolean read FDddHasValue write FDddHasValue;
    property Numero: string read FNumero write SetNumero;
    property NumeroHasValue: Boolean read FNumeroHasValue write FNumeroHasValue;
  end;
  
  TCnpjTelefoneList = class(TObjectList<TCnpjTelefone>)
  end;
  
  TCnpjOpcaoSimples = class
  private
    FOptante: Boolean;
    FOptanteHasValue: Boolean;
    FDataOpcao: TDate;
    FDataOpcaoHasValue: Boolean;
    FDataExclusao: TDate;
    FDataExclusaoHasValue: Boolean;
    procedure SetOptante(const Value: Boolean);
    procedure SetDataOpcao(const Value: TDate);
    procedure SetDataExclusao(const Value: TDate);
  public
    property Optante: Boolean read FOptante write SetOptante;
    property OptanteHasValue: Boolean read FOptanteHasValue write FOptanteHasValue;
    property DataOpcao: TDate read FDataOpcao write SetDataOpcao;
    property DataOpcaoHasValue: Boolean read FDataOpcaoHasValue write FDataOpcaoHasValue;
    property DataExclusao: TDate read FDataExclusao write SetDataExclusao;
    property DataExclusaoHasValue: Boolean read FDataExclusaoHasValue write FDataExclusaoHasValue;
  end;
  
  TCnpjIdentificadorSocio = class
  private
    FCodigo: string;
    FCodigoHasValue: Boolean;
    FDescricao: string;
    FDescricaoHasValue: Boolean;
    procedure SetCodigo(const Value: string);
    procedure SetDescricao(const Value: string);
  public
    property Codigo: string read FCodigo write SetCodigo;
    property CodigoHasValue: Boolean read FCodigoHasValue write FCodigoHasValue;
    property Descricao: string read FDescricao write SetDescricao;
    property DescricaoHasValue: Boolean read FDescricaoHasValue write FDescricaoHasValue;
  end;
  
  TCnpjQualificacaoSocio = class
  private
    FCodigo: string;
    FCodigoHasValue: Boolean;
    FDescricao: string;
    FDescricaoHasValue: Boolean;
    procedure SetCodigo(const Value: string);
    procedure SetDescricao(const Value: string);
  public
    property Codigo: string read FCodigo write SetCodigo;
    property CodigoHasValue: Boolean read FCodigoHasValue write FCodigoHasValue;
    property Descricao: string read FDescricao write SetDescricao;
    property DescricaoHasValue: Boolean read FDescricaoHasValue write FDescricaoHasValue;
  end;
  
  TCnpjRepresentanteLegal = class
  private
    FCpf: string;
    FCpfHasValue: Boolean;
    FNome: string;
    FNomeHasValue: Boolean;
    FQualificacao: TCnpjQualificacaoSocio;
    procedure SetCpf(const Value: string);
    procedure SetNome(const Value: string);
    procedure SetQualificacao(const Value: TCnpjQualificacaoSocio);
  public
    destructor Destroy; override;
    property Cpf: string read FCpf write SetCpf;
    property CpfHasValue: Boolean read FCpfHasValue write FCpfHasValue;
    property Nome: string read FNome write SetNome;
    property NomeHasValue: Boolean read FNomeHasValue write FNomeHasValue;
    property Qualificacao: TCnpjQualificacaoSocio read FQualificacao write SetQualificacao;
  end;
  
  TCnpjFaixaEtaria = class
  private
    FCodigo: string;
    FCodigoHasValue: Boolean;
    FDescricao: string;
    FDescricaoHasValue: Boolean;
    procedure SetCodigo(const Value: string);
    procedure SetDescricao(const Value: string);
  public
    property Codigo: string read FCodigo write SetCodigo;
    property CodigoHasValue: Boolean read FCodigoHasValue write FCodigoHasValue;
    property Descricao: string read FDescricao write SetDescricao;
    property DescricaoHasValue: Boolean read FDescricaoHasValue write FDescricaoHasValue;
  end;
  
  TCnpjSocio = class
  private
    FIdentificadorSocio: TCnpjIdentificadorSocio;
    FNome: string;
    FNomeHasValue: Boolean;
    FCpfCnpj: string;
    FCpfCnpjHasValue: Boolean;
    FQualificacao: TCnpjQualificacaoSocio;
    FDataEntradaSociedade: TDate;
    FDataEntradaSociedadeHasValue: Boolean;
    FPais: TCnpjPais;
    FRepresentanteLegal: TCnpjRepresentanteLegal;
    FFaixaEtaria: TCnpjFaixaEtaria;
    procedure SetIdentificadorSocio(const Value: TCnpjIdentificadorSocio);
    procedure SetNome(const Value: string);
    procedure SetCpfCnpj(const Value: string);
    procedure SetQualificacao(const Value: TCnpjQualificacaoSocio);
    procedure SetDataEntradaSociedade(const Value: TDate);
    procedure SetPais(const Value: TCnpjPais);
    procedure SetRepresentanteLegal(const Value: TCnpjRepresentanteLegal);
    procedure SetFaixaEtaria(const Value: TCnpjFaixaEtaria);
  public
    destructor Destroy; override;
    property IdentificadorSocio: TCnpjIdentificadorSocio read FIdentificadorSocio write SetIdentificadorSocio;
    property Nome: string read FNome write SetNome;
    property NomeHasValue: Boolean read FNomeHasValue write FNomeHasValue;
    property CpfCnpj: string read FCpfCnpj write SetCpfCnpj;
    property CpfCnpjHasValue: Boolean read FCpfCnpjHasValue write FCpfCnpjHasValue;
    property Qualificacao: TCnpjQualificacaoSocio read FQualificacao write SetQualificacao;
    property DataEntradaSociedade: TDate read FDataEntradaSociedade write SetDataEntradaSociedade;
    property DataEntradaSociedadeHasValue: Boolean read FDataEntradaSociedadeHasValue write FDataEntradaSociedadeHasValue;
    property Pais: TCnpjPais read FPais write SetPais;
    property RepresentanteLegal: TCnpjRepresentanteLegal read FRepresentanteLegal write SetRepresentanteLegal;
    property FaixaEtaria: TCnpjFaixaEtaria read FFaixaEtaria write SetFaixaEtaria;
  end;
  
  TCnpjSocioList = class(TObjectList<TCnpjSocio>)
  end;
  
  TCnpjEmpresa = class
  private
    FCnpj: string;
    FCnpjHasValue: Boolean;
    FRazaoSocial: string;
    FRazaoSocialHasValue: Boolean;
    FNomeFantasia: string;
    FNomeFantasiaHasValue: Boolean;
    FDataInicioAtividade: TDate;
    FDataInicioAtividadeHasValue: Boolean;
    FMatriz: Boolean;
    FMatrizHasValue: Boolean;
    FNaturezaJuridica: TCnpjNaturezaJuridica;
    FCapitalSocial: Double;
    FCapitalSocialHasValue: Boolean;
    FPorte: TCnpjPorteEmpresa;
    FEnteFederativoResponsavel: string;
    FEnteFederativoResponsavelHasValue: Boolean;
    FSituacaoCadastral: TCnpjSituacaoCadastral;
    FMotivoSituacaoCadastral: TCnpjSituacaoCadastral;
    FNomeDaCidadeNoExterior: string;
    FNomeDaCidadeNoExteriorHasValue: Boolean;
    FPais: TCnpjPais;
    FAtividadePrincipal: TCnpjCnae;
    FAtividadesSecundarias: TCnpjCnaeList;
    FEndereco: TCnpjEndereco;
    FTelefones: TCnpjTelefoneList;
    FEmail: string;
    FEmailHasValue: Boolean;
    FSituacaoEspecial: TCnpjSituacaoCadastral;
    FSimples: TCnpjOpcaoSimples;
    FSimei: TCnpjOpcaoSimples;
    FSocios: TCnpjSocioList;
    procedure SetCnpj(const Value: string);
    procedure SetRazaoSocial(const Value: string);
    procedure SetNomeFantasia(const Value: string);
    procedure SetDataInicioAtividade(const Value: TDate);
    procedure SetMatriz(const Value: Boolean);
    procedure SetNaturezaJuridica(const Value: TCnpjNaturezaJuridica);
    procedure SetCapitalSocial(const Value: Double);
    procedure SetPorte(const Value: TCnpjPorteEmpresa);
    procedure SetEnteFederativoResponsavel(const Value: string);
    procedure SetSituacaoCadastral(const Value: TCnpjSituacaoCadastral);
    procedure SetMotivoSituacaoCadastral(const Value: TCnpjSituacaoCadastral);
    procedure SetNomeDaCidadeNoExterior(const Value: string);
    procedure SetPais(const Value: TCnpjPais);
    procedure SetAtividadePrincipal(const Value: TCnpjCnae);
    procedure SetAtividadesSecundarias(const Value: TCnpjCnaeList);
    procedure SetEndereco(const Value: TCnpjEndereco);
    procedure SetTelefones(const Value: TCnpjTelefoneList);
    procedure SetEmail(const Value: string);
    procedure SetSituacaoEspecial(const Value: TCnpjSituacaoCadastral);
    procedure SetSimples(const Value: TCnpjOpcaoSimples);
    procedure SetSimei(const Value: TCnpjOpcaoSimples);
    procedure SetSocios(const Value: TCnpjSocioList);
  public
    destructor Destroy; override;
    property Cnpj: string read FCnpj write SetCnpj;
    property CnpjHasValue: Boolean read FCnpjHasValue write FCnpjHasValue;
    property RazaoSocial: string read FRazaoSocial write SetRazaoSocial;
    property RazaoSocialHasValue: Boolean read FRazaoSocialHasValue write FRazaoSocialHasValue;
    property NomeFantasia: string read FNomeFantasia write SetNomeFantasia;
    property NomeFantasiaHasValue: Boolean read FNomeFantasiaHasValue write FNomeFantasiaHasValue;
    property DataInicioAtividade: TDate read FDataInicioAtividade write SetDataInicioAtividade;
    property DataInicioAtividadeHasValue: Boolean read FDataInicioAtividadeHasValue write FDataInicioAtividadeHasValue;
    property Matriz: Boolean read FMatriz write SetMatriz;
    property MatrizHasValue: Boolean read FMatrizHasValue write FMatrizHasValue;
    property NaturezaJuridica: TCnpjNaturezaJuridica read FNaturezaJuridica write SetNaturezaJuridica;
    property CapitalSocial: Double read FCapitalSocial write SetCapitalSocial;
    property CapitalSocialHasValue: Boolean read FCapitalSocialHasValue write FCapitalSocialHasValue;
    property Porte: TCnpjPorteEmpresa read FPorte write SetPorte;
    property EnteFederativoResponsavel: string read FEnteFederativoResponsavel write SetEnteFederativoResponsavel;
    property EnteFederativoResponsavelHasValue: Boolean read FEnteFederativoResponsavelHasValue write FEnteFederativoResponsavelHasValue;
    property SituacaoCadastral: TCnpjSituacaoCadastral read FSituacaoCadastral write SetSituacaoCadastral;
    property MotivoSituacaoCadastral: TCnpjSituacaoCadastral read FMotivoSituacaoCadastral write SetMotivoSituacaoCadastral;
    property NomeDaCidadeNoExterior: string read FNomeDaCidadeNoExterior write SetNomeDaCidadeNoExterior;
    property NomeDaCidadeNoExteriorHasValue: Boolean read FNomeDaCidadeNoExteriorHasValue write FNomeDaCidadeNoExteriorHasValue;
    property Pais: TCnpjPais read FPais write SetPais;
    property AtividadePrincipal: TCnpjCnae read FAtividadePrincipal write SetAtividadePrincipal;
    property AtividadesSecundarias: TCnpjCnaeList read FAtividadesSecundarias write SetAtividadesSecundarias;
    property Endereco: TCnpjEndereco read FEndereco write SetEndereco;
    property Telefones: TCnpjTelefoneList read FTelefones write SetTelefones;
    property Email: string read FEmail write SetEmail;
    property EmailHasValue: Boolean read FEmailHasValue write FEmailHasValue;
    property SituacaoEspecial: TCnpjSituacaoCadastral read FSituacaoEspecial write SetSituacaoEspecial;
    property Simples: TCnpjOpcaoSimples read FSimples write SetSimples;
    property Simei: TCnpjOpcaoSimples read FSimei write SetSimei;
    property Socios: TCnpjSocioList read FSocios write SetSocios;
  end;
  
  TCepEndereco = class
  private
    FBairro: string;
    FBairroHasValue: Boolean;
    FCep: string;
    FCepHasValue: Boolean;
    FCodigoIbge: string;
    FCodigoIbgeHasValue: Boolean;
    FComplemento: string;
    FComplementoHasValue: Boolean;
    FLogradouro: string;
    FLogradouroHasValue: Boolean;
    FMunicipio: string;
    FMunicipioHasValue: Boolean;
    FTipoLogradouro: string;
    FTipoLogradouroHasValue: Boolean;
    FUf: string;
    FUfHasValue: Boolean;
    procedure SetBairro(const Value: string);
    procedure SetCep(const Value: string);
    procedure SetCodigoIbge(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetLogradouro(const Value: string);
    procedure SetMunicipio(const Value: string);
    procedure SetTipoLogradouro(const Value: string);
    procedure SetUf(const Value: string);
  public
    property Bairro: string read FBairro write SetBairro;
    property BairroHasValue: Boolean read FBairroHasValue write FBairroHasValue;
    property Cep: string read FCep write SetCep;
    property CepHasValue: Boolean read FCepHasValue write FCepHasValue;
    property CodigoIbge: string read FCodigoIbge write SetCodigoIbge;
    property CodigoIbgeHasValue: Boolean read FCodigoIbgeHasValue write FCodigoIbgeHasValue;
    property Complemento: string read FComplemento write SetComplemento;
    property ComplementoHasValue: Boolean read FComplementoHasValue write FComplementoHasValue;
    property Logradouro: string read FLogradouro write SetLogradouro;
    property LogradouroHasValue: Boolean read FLogradouroHasValue write FLogradouroHasValue;
    property Municipio: string read FMunicipio write SetMunicipio;
    property MunicipioHasValue: Boolean read FMunicipioHasValue write FMunicipioHasValue;
    property TipoLogradouro: string read FTipoLogradouro write SetTipoLogradouro;
    property TipoLogradouroHasValue: Boolean read FTipoLogradouroHasValue write FTipoLogradouroHasValue;
    property Uf: string read FUf write SetUf;
    property UfHasValue: Boolean read FUfHasValue write FUfHasValue;
  end;
  
implementation

{ TEmpresaEndereco }

procedure TEmpresaEndereco.SetLogradouro(const Value: string);
begin
  FLogradouro := Value;
  FLogradouroHasValue := True;
end;

procedure TEmpresaEndereco.SetNumero(const Value: string);
begin
  FNumero := Value;
  FNumeroHasValue := True;
end;

procedure TEmpresaEndereco.SetComplemento(const Value: string);
begin
  FComplemento := Value;
  FComplementoHasValue := True;
end;

procedure TEmpresaEndereco.SetBairro(const Value: string);
begin
  FBairro := Value;
  FBairroHasValue := True;
end;

procedure TEmpresaEndereco.SetCodigoMunicipio(const Value: string);
begin
  FCodigoMunicipio := Value;
  FCodigoMunicipioHasValue := True;
end;

procedure TEmpresaEndereco.SetCidade(const Value: string);
begin
  FCidade := Value;
  FCidadeHasValue := True;
end;

procedure TEmpresaEndereco.SetUf(const Value: string);
begin
  FUf := Value;
  FUfHasValue := True;
end;

procedure TEmpresaEndereco.SetCodigoPais(const Value: string);
begin
  FCodigoPais := Value;
  FCodigoPaisHasValue := True;
end;

procedure TEmpresaEndereco.SetPais(const Value: string);
begin
  FPais := Value;
  FPaisHasValue := True;
end;

procedure TEmpresaEndereco.SetCep(const Value: string);
begin
  FCep := Value;
  FCepHasValue := True;
end;

{ TEmpresaConfigNfe }

procedure TEmpresaConfigNfe.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

{ TEmpresaConfigNfceSefaz }

procedure TEmpresaConfigNfceSefaz.SetIdCsc(const Value: Integer);
begin
  FIdCsc := Value;
  FIdCscHasValue := True;
end;

procedure TEmpresaConfigNfceSefaz.SetCsc(const Value: string);
begin
  FCsc := Value;
  FCscHasValue := True;
end;

{ TEmpresaConfigNfce }

destructor TEmpresaConfigNfce.Destroy;
begin
  FSefaz.Free;
  inherited;
end;

procedure TEmpresaConfigNfce.SetSefaz(const Value: TEmpresaConfigNfceSefaz);
begin
  if Value <> FSefaz then
  begin
    FSefaz.Free;
    FSefaz := Value;
  end;
end;

procedure TEmpresaConfigNfce.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

{ TEmpresaConfigMdfe }

procedure TEmpresaConfigMdfe.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

{ TEmpresaConfigCte }

procedure TEmpresaConfigCte.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

{ TEmpresaConfigCteOs }

procedure TEmpresaConfigCteOs.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

{ TEmpresaConfigRps }

procedure TEmpresaConfigRps.SetLote(const Value: Integer);
begin
  FLote := Value;
  FLoteHasValue := True;
end;

procedure TEmpresaConfigRps.SetSerie(const Value: string);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TEmpresaConfigRps.SetNumero(const Value: Integer);
begin
  FNumero := Value;
  FNumeroHasValue := True;
end;

{ TEmpresaConfigPrefeitura }

procedure TEmpresaConfigPrefeitura.SetLogin(const Value: string);
begin
  FLogin := Value;
  FLoginHasValue := True;
end;

procedure TEmpresaConfigPrefeitura.SetSenha(const Value: string);
begin
  FSenha := Value;
  FSenhaHasValue := True;
end;

procedure TEmpresaConfigPrefeitura.SetToken(const Value: string);
begin
  FToken := Value;
  FTokenHasValue := True;
end;

{ TEmpresaConfigNfse }

destructor TEmpresaConfigNfse.Destroy;
begin
  FPrefeitura.Free;
  FRps.Free;
  inherited;
end;

procedure TEmpresaConfigNfse.SetRps(const Value: TEmpresaConfigRps);
begin
  if Value <> FRps then
  begin
    FRps.Free;
    FRps := Value;
  end;
end;

procedure TEmpresaConfigNfse.SetPrefeitura(const Value: TEmpresaConfigPrefeitura);
begin
  if Value <> FPrefeitura then
  begin
    FPrefeitura.Free;
    FPrefeitura := Value;
  end;
end;

procedure TEmpresaConfigNfse.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

{ TEmpresa }

destructor TEmpresa.Destroy;
begin
  FNfse.Free;
  FCteOs.Free;
  FCte.Free;
  FMdfe.Free;
  FNfce.Free;
  FNfe.Free;
  FEndereco.Free;
  inherited;
end;

procedure TEmpresa.SetCpfCnpj(const Value: string);
begin
  FCpfCnpj := Value;
  FCpfCnpjHasValue := True;
end;

procedure TEmpresa.SetCreatedAt(const Value: TDateTime);
begin
  FCreatedAt := Value;
  FCreatedAtHasValue := True;
end;

procedure TEmpresa.SetUpdatedAt(const Value: TDateTime);
begin
  FUpdatedAt := Value;
  FUpdatedAtHasValue := True;
end;

procedure TEmpresa.SetInscricaoEstadual(const Value: string);
begin
  FInscricaoEstadual := Value;
  FInscricaoEstadualHasValue := True;
end;

procedure TEmpresa.SetInscricaoMunicipal(const Value: string);
begin
  FInscricaoMunicipal := Value;
  FInscricaoMunicipalHasValue := True;
end;

procedure TEmpresa.SetNomeRazaoSocial(const Value: string);
begin
  FNomeRazaoSocial := Value;
  FNomeRazaoSocialHasValue := True;
end;

procedure TEmpresa.SetNomeFantasia(const Value: string);
begin
  FNomeFantasia := Value;
  FNomeFantasiaHasValue := True;
end;

procedure TEmpresa.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TEmpresa.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

procedure TEmpresa.SetEndereco(const Value: TEmpresaEndereco);
begin
  if Value <> FEndereco then
  begin
    FEndereco.Free;
    FEndereco := Value;
  end;
end;

procedure TEmpresa.SetOptanteSimplesNacional(const Value: Boolean);
begin
  FOptanteSimplesNacional := Value;
  FOptanteSimplesNacionalHasValue := True;
end;

procedure TEmpresa.SetRegimeTributacao(const Value: Integer);
begin
  FRegimeTributacao := Value;
  FRegimeTributacaoHasValue := True;
end;

procedure TEmpresa.SetRegimeEspecialTributacao(const Value: Integer);
begin
  FRegimeEspecialTributacao := Value;
  FRegimeEspecialTributacaoHasValue := True;
end;

procedure TEmpresa.SetIncentivoFiscal(const Value: Boolean);
begin
  FIncentivoFiscal := Value;
  FIncentivoFiscalHasValue := True;
end;

procedure TEmpresa.SetIncentivadorCultural(const Value: Boolean);
begin
  FIncentivadorCultural := Value;
  FIncentivadorCulturalHasValue := True;
end;

procedure TEmpresa.SetNfe(const Value: TEmpresaConfigNfe);
begin
  if Value <> FNfe then
  begin
    FNfe.Free;
    FNfe := Value;
  end;
end;

procedure TEmpresa.SetNfce(const Value: TEmpresaConfigNfce);
begin
  if Value <> FNfce then
  begin
    FNfce.Free;
    FNfce := Value;
  end;
end;

procedure TEmpresa.SetMdfe(const Value: TEmpresaConfigMdfe);
begin
  if Value <> FMdfe then
  begin
    FMdfe.Free;
    FMdfe := Value;
  end;
end;

procedure TEmpresa.SetCte(const Value: TEmpresaConfigCte);
begin
  if Value <> FCte then
  begin
    FCte.Free;
    FCte := Value;
  end;
end;

procedure TEmpresa.SetCteOs(const Value: TEmpresaConfigCteOs);
begin
  if Value <> FCteOs then
  begin
    FCteOs.Free;
    FCteOs := Value;
  end;
end;

procedure TEmpresa.SetNfse(const Value: TEmpresaConfigNfse);
begin
  if Value <> FNfse then
  begin
    FNfse.Free;
    FNfse := Value;
  end;
end;

{ TEmpresaListagem }

destructor TEmpresaListagem.Destroy;
begin
  FData.Free;
  inherited;
end;

procedure TEmpresaListagem.SetCount(const Value: Integer);
begin
  FCount := Value;
  FCountHasValue := True;
end;

procedure TEmpresaListagem.SetData(const Value: TEmpresaList);
begin
  if Value <> FData then
  begin
    FData.Free;
    FData := Value;
  end;
end;

{ TEmpresaPedidoCadastroCertificado }

procedure TEmpresaPedidoCadastroCertificado.SetCertificado(const Value: TBytes);
begin
  FCertificado := Value;
  FCertificadoHasValue := True;
end;

procedure TEmpresaPedidoCadastroCertificado.SetPassword(const Value: string);
begin
  FPassword := Value;
  FPasswordHasValue := True;
end;

{ TEmpresaCertificado }

procedure TEmpresaCertificado.SetSerialNumber(const Value: string);
begin
  FSerialNumber := Value;
  FSerialNumberHasValue := True;
end;

procedure TEmpresaCertificado.SetIssuerName(const Value: string);
begin
  FIssuerName := Value;
  FIssuerNameHasValue := True;
end;

procedure TEmpresaCertificado.SetNotValidBefore(const Value: TDateTime);
begin
  FNotValidBefore := Value;
  FNotValidBeforeHasValue := True;
end;

procedure TEmpresaCertificado.SetNotValidAfter(const Value: TDateTime);
begin
  FNotValidAfter := Value;
  FNotValidAfterHasValue := True;
end;

procedure TEmpresaCertificado.SetThumbprint(const Value: string);
begin
  FThumbprint := Value;
  FThumbprintHasValue := True;
end;

procedure TEmpresaCertificado.SetSubjectName(const Value: string);
begin
  FSubjectName := Value;
  FSubjectNameHasValue := True;
end;

procedure TEmpresaCertificado.SetCpfCnpj(const Value: string);
begin
  FCpfCnpj := Value;
  FCpfCnpjHasValue := True;
end;

procedure TEmpresaCertificado.SetNomeRazaoSocial(const Value: string);
begin
  FNomeRazaoSocial := Value;
  FNomeRazaoSocialHasValue := True;
end;

{ TRpsIdentificacaoPrestador }

procedure TRpsIdentificacaoPrestador.SetCpfCnpj(const Value: string);
begin
  FCpfCnpj := Value;
  FCpfCnpjHasValue := True;
end;

{ TRpsDadosTomador }

destructor TRpsDadosTomador.Destroy;
begin
  FEndereco.Free;
  inherited;
end;

procedure TRpsDadosTomador.SetCpfCnpj(const Value: string);
begin
  FCpfCnpj := Value;
  FCpfCnpjHasValue := True;
end;

procedure TRpsDadosTomador.SetInscricaoMunicipal(const Value: string);
begin
  FInscricaoMunicipal := Value;
  FInscricaoMunicipalHasValue := True;
end;

procedure TRpsDadosTomador.SetNomeRazaoSocial(const Value: string);
begin
  FNomeRazaoSocial := Value;
  FNomeRazaoSocialHasValue := True;
end;

procedure TRpsDadosTomador.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TRpsDadosTomador.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

procedure TRpsDadosTomador.SetEndereco(const Value: TEmpresaEndereco);
begin
  if Value <> FEndereco then
  begin
    FEndereco.Free;
    FEndereco := Value;
  end;
end;

{ TRpsDadosIntermediario }

procedure TRpsDadosIntermediario.SetCpfCnpj(const Value: string);
begin
  FCpfCnpj := Value;
  FCpfCnpjHasValue := True;
end;

procedure TRpsDadosIntermediario.SetNomeRazaoSocial(const Value: string);
begin
  FNomeRazaoSocial := Value;
  FNomeRazaoSocialHasValue := True;
end;

procedure TRpsDadosIntermediario.SetInscricaoMunicipal(const Value: string);
begin
  FInscricaoMunicipal := Value;
  FInscricaoMunicipalHasValue := True;
end;

{ TRpsDadosConstrucaoCivil }

procedure TRpsDadosConstrucaoCivil.SetCodigoObra(const Value: string);
begin
  FCodigoObra := Value;
  FCodigoObraHasValue := True;
end;

procedure TRpsDadosConstrucaoCivil.SetArt(const Value: string);
begin
  FArt := Value;
  FArtHasValue := True;
end;

{ TRpsServicoValores }

procedure TRpsServicoValores.SetValorUnitario(const Value: Double);
begin
  FValorUnitario := Value;
  FValorUnitarioHasValue := True;
end;

procedure TRpsServicoValores.SetValorServicos(const Value: Double);
begin
  FValorServicos := Value;
  FValorServicosHasValue := True;
end;

procedure TRpsServicoValores.SetValorDeducoes(const Value: Double);
begin
  FValorDeducoes := Value;
  FValorDeducoesHasValue := True;
end;

procedure TRpsServicoValores.SetValorPis(const Value: Double);
begin
  FValorPis := Value;
  FValorPisHasValue := True;
end;

procedure TRpsServicoValores.SetValorCofins(const Value: Double);
begin
  FValorCofins := Value;
  FValorCofinsHasValue := True;
end;

procedure TRpsServicoValores.SetValorInss(const Value: Double);
begin
  FValorInss := Value;
  FValorInssHasValue := True;
end;

procedure TRpsServicoValores.SetValorIr(const Value: Double);
begin
  FValorIr := Value;
  FValorIrHasValue := True;
end;

procedure TRpsServicoValores.SetValorCsll(const Value: Double);
begin
  FValorCsll := Value;
  FValorCsllHasValue := True;
end;

procedure TRpsServicoValores.SetValorOutrasRetencoes(const Value: Double);
begin
  FValorOutrasRetencoes := Value;
  FValorOutrasRetencoesHasValue := True;
end;

procedure TRpsServicoValores.SetValorIss(const Value: Double);
begin
  FValorIss := Value;
  FValorIssHasValue := True;
end;

procedure TRpsServicoValores.SetValorIssRetido(const Value: Double);
begin
  FValorIssRetido := Value;
  FValorIssRetidoHasValue := True;
end;

procedure TRpsServicoValores.SetValorLiquido(const Value: Double);
begin
  FValorLiquido := Value;
  FValorLiquidoHasValue := True;
end;

procedure TRpsServicoValores.SetAliquotaIss(const Value: Double);
begin
  FAliquotaIss := Value;
  FAliquotaIssHasValue := True;
end;

procedure TRpsServicoValores.SetAliquotaPis(const Value: Double);
begin
  FAliquotaPis := Value;
  FAliquotaPisHasValue := True;
end;

procedure TRpsServicoValores.SetAliquotaCofins(const Value: Double);
begin
  FAliquotaCofins := Value;
  FAliquotaCofinsHasValue := True;
end;

procedure TRpsServicoValores.SetAliquotaInss(const Value: Double);
begin
  FAliquotaInss := Value;
  FAliquotaInssHasValue := True;
end;

procedure TRpsServicoValores.SetAliquotaIr(const Value: Double);
begin
  FAliquotaIr := Value;
  FAliquotaIrHasValue := True;
end;

procedure TRpsServicoValores.SetAliquotaCsll(const Value: Double);
begin
  FAliquotaCsll := Value;
  FAliquotaCsllHasValue := True;
end;

procedure TRpsServicoValores.SetDescontoIncondicionado(const Value: Double);
begin
  FDescontoIncondicionado := Value;
  FDescontoIncondicionadoHasValue := True;
end;

procedure TRpsServicoValores.SetDescontoCondicionado(const Value: Double);
begin
  FDescontoCondicionado := Value;
  FDescontoCondicionadoHasValue := True;
end;

{ TRpsDadosServico }

destructor TRpsDadosServico.Destroy;
begin
  FValores.Free;
  inherited;
end;

procedure TRpsDadosServico.SetIssRetido(const Value: Boolean);
begin
  FIssRetido := Value;
  FIssRetidoHasValue := True;
end;

procedure TRpsDadosServico.SetResponsavelRetencao(const Value: Integer);
begin
  FResponsavelRetencao := Value;
  FResponsavelRetencaoHasValue := True;
end;

procedure TRpsDadosServico.SetItemListaServico(const Value: string);
begin
  FItemListaServico := Value;
  FItemListaServicoHasValue := True;
end;

procedure TRpsDadosServico.SetCodigoCnae(const Value: string);
begin
  FCodigoCnae := Value;
  FCodigoCnaeHasValue := True;
end;

procedure TRpsDadosServico.SetCodigoTributacaoMunicipio(const Value: string);
begin
  FCodigoTributacaoMunicipio := Value;
  FCodigoTributacaoMunicipioHasValue := True;
end;

procedure TRpsDadosServico.SetDiscriminacao(const Value: string);
begin
  FDiscriminacao := Value;
  FDiscriminacaoHasValue := True;
end;

procedure TRpsDadosServico.SetCodigoMunicipio(const Value: string);
begin
  FCodigoMunicipio := Value;
  FCodigoMunicipioHasValue := True;
end;

procedure TRpsDadosServico.SetCodigoPais(const Value: string);
begin
  FCodigoPais := Value;
  FCodigoPaisHasValue := True;
end;

procedure TRpsDadosServico.SetTipoTributacao(const Value: Integer);
begin
  FTipoTributacao := Value;
  FTipoTributacaoHasValue := True;
end;

procedure TRpsDadosServico.SetExigibilidadeIss(const Value: Integer);
begin
  FExigibilidadeIss := Value;
  FExigibilidadeIssHasValue := True;
end;

procedure TRpsDadosServico.SetCodigoMunicipioIncidencia(const Value: string);
begin
  FCodigoMunicipioIncidencia := Value;
  FCodigoMunicipioIncidenciaHasValue := True;
end;

procedure TRpsDadosServico.SetNumeroProcesso(const Value: string);
begin
  FNumeroProcesso := Value;
  FNumeroProcessoHasValue := True;
end;

procedure TRpsDadosServico.SetUnidade(const Value: string);
begin
  FUnidade := Value;
  FUnidadeHasValue := True;
end;

procedure TRpsDadosServico.SetQuantidade(const Value: Double);
begin
  FQuantidade := Value;
  FQuantidadeHasValue := True;
end;

procedure TRpsDadosServico.SetValores(const Value: TRpsServicoValores);
begin
  if Value <> FValores then
  begin
    FValores.Free;
    FValores := Value;
  end;
end;

{ TRpsPedidoEmissao }

destructor TRpsPedidoEmissao.Destroy;
begin
  FServicos.Free;
  FConstrucaoCivil.Free;
  FIntermediario.Free;
  FTomador.Free;
  FPrestador.Free;
  inherited;
end;

procedure TRpsPedidoEmissao.SetReferencia(const Value: string);
begin
  FReferencia := Value;
  FReferenciaHasValue := True;
end;

procedure TRpsPedidoEmissao.SetDataEmissao(const Value: TDateTime);
begin
  FDataEmissao := Value;
  FDataEmissaoHasValue := True;
end;

procedure TRpsPedidoEmissao.SetCompetencia(const Value: TDate);
begin
  FCompetencia := Value;
  FCompetenciaHasValue := True;
end;

procedure TRpsPedidoEmissao.SetNaturezaTributacao(const Value: Integer);
begin
  FNaturezaTributacao := Value;
  FNaturezaTributacaoHasValue := True;
end;

procedure TRpsPedidoEmissao.SetPrestador(const Value: TRpsIdentificacaoPrestador);
begin
  if Value <> FPrestador then
  begin
    FPrestador.Free;
    FPrestador := Value;
  end;
end;

procedure TRpsPedidoEmissao.SetTomador(const Value: TRpsDadosTomador);
begin
  if Value <> FTomador then
  begin
    FTomador.Free;
    FTomador := Value;
  end;
end;

procedure TRpsPedidoEmissao.SetIntermediario(const Value: TRpsDadosIntermediario);
begin
  if Value <> FIntermediario then
  begin
    FIntermediario.Free;
    FIntermediario := Value;
  end;
end;

procedure TRpsPedidoEmissao.SetConstrucaoCivil(const Value: TRpsDadosConstrucaoCivil);
begin
  if Value <> FConstrucaoCivil then
  begin
    FConstrucaoCivil.Free;
    FConstrucaoCivil := Value;
  end;
end;

procedure TRpsPedidoEmissao.SetServicos(const Value: TRpsDadosServicoList);
begin
  if Value <> FServicos then
  begin
    FServicos.Free;
    FServicos := Value;
  end;
end;

{ TRpsPedidoEmissaoLote }

destructor TRpsPedidoEmissaoLote.Destroy;
begin
  FListaRps.Free;
  inherited;
end;

procedure TRpsPedidoEmissaoLote.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TRpsPedidoEmissaoLote.SetReferencia(const Value: string);
begin
  FReferencia := Value;
  FReferenciaHasValue := True;
end;

procedure TRpsPedidoEmissaoLote.SetListaRps(const Value: TRpsPedidoEmissaoList);
begin
  if Value <> FListaRps then
  begin
    FListaRps.Free;
    FListaRps := Value;
  end;
end;

{ TRpsIdentificacao }

procedure TRpsIdentificacao.SetNumero(const Value: string);
begin
  FNumero := Value;
  FNumeroHasValue := True;
end;

procedure TRpsIdentificacao.SetSerie(const Value: string);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TRpsIdentificacao.SetTipo(const Value: string);
begin
  FTipo := Value;
  FTipoHasValue := True;
end;

{ TRpsDados }

destructor TRpsDados.Destroy;
begin
  FIdentificacaoRps.Free;
  inherited;
end;

procedure TRpsDados.SetIdentificacaoRps(const Value: TRpsIdentificacao);
begin
  if Value <> FIdentificacaoRps then
  begin
    FIdentificacaoRps.Free;
    FIdentificacaoRps := Value;
  end;
end;

procedure TRpsDados.SetDataEmissao(const Value: TDateTime);
begin
  FDataEmissao := Value;
  FDataEmissaoHasValue := True;
end;

{ TRpsDadosPrestador }

destructor TRpsDadosPrestador.Destroy;
begin
  FEndereco.Free;
  inherited;
end;

procedure TRpsDadosPrestador.SetCpfCnpj(const Value: string);
begin
  FCpfCnpj := Value;
  FCpfCnpjHasValue := True;
end;

procedure TRpsDadosPrestador.SetInscricaoMunicipal(const Value: string);
begin
  FInscricaoMunicipal := Value;
  FInscricaoMunicipalHasValue := True;
end;

procedure TRpsDadosPrestador.SetNomeRazaoSocial(const Value: string);
begin
  FNomeRazaoSocial := Value;
  FNomeRazaoSocialHasValue := True;
end;

procedure TRpsDadosPrestador.SetNomeFantasia(const Value: string);
begin
  FNomeFantasia := Value;
  FNomeFantasiaHasValue := True;
end;

procedure TRpsDadosPrestador.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TRpsDadosPrestador.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

procedure TRpsDadosPrestador.SetEndereco(const Value: TEmpresaEndereco);
begin
  if Value <> FEndereco then
  begin
    FEndereco.Free;
    FEndereco := Value;
  end;
end;

procedure TRpsDadosPrestador.SetOptanteSimplesNacional(const Value: Boolean);
begin
  FOptanteSimplesNacional := Value;
  FOptanteSimplesNacionalHasValue := True;
end;

procedure TRpsDadosPrestador.SetRegimeTributacao(const Value: Integer);
begin
  FRegimeTributacao := Value;
  FRegimeTributacaoHasValue := True;
end;

procedure TRpsDadosPrestador.SetRegimeEspecialTributacao(const Value: Integer);
begin
  FRegimeEspecialTributacao := Value;
  FRegimeEspecialTributacaoHasValue := True;
end;

procedure TRpsDadosPrestador.SetIncentivoFiscal(const Value: Boolean);
begin
  FIncentivoFiscal := Value;
  FIncentivoFiscalHasValue := True;
end;

procedure TRpsDadosPrestador.SetIncentivadorCultural(const Value: Boolean);
begin
  FIncentivadorCultural := Value;
  FIncentivadorCulturalHasValue := True;
end;

{ TRps }

destructor TRps.Destroy;
begin
  FServicos.Free;
  FConstrucaoCivil.Free;
  FIntermediario.Free;
  FTomador.Free;
  FPrestador.Free;
  FRps.Free;
  inherited;
end;

procedure TRps.SetRps(const Value: TRpsDados);
begin
  if Value <> FRps then
  begin
    FRps.Free;
    FRps := Value;
  end;
end;

procedure TRps.SetCompetencia(const Value: TDate);
begin
  FCompetencia := Value;
  FCompetenciaHasValue := True;
end;

procedure TRps.SetNaturezaTributacao(const Value: Integer);
begin
  FNaturezaTributacao := Value;
  FNaturezaTributacaoHasValue := True;
end;

procedure TRps.SetPrestador(const Value: TRpsDadosPrestador);
begin
  if Value <> FPrestador then
  begin
    FPrestador.Free;
    FPrestador := Value;
  end;
end;

procedure TRps.SetTomador(const Value: TRpsDadosTomador);
begin
  if Value <> FTomador then
  begin
    FTomador.Free;
    FTomador := Value;
  end;
end;

procedure TRps.SetIntermediario(const Value: TRpsDadosIntermediario);
begin
  if Value <> FIntermediario then
  begin
    FIntermediario.Free;
    FIntermediario := Value;
  end;
end;

procedure TRps.SetConstrucaoCivil(const Value: TRpsDadosConstrucaoCivil);
begin
  if Value <> FConstrucaoCivil then
  begin
    FConstrucaoCivil.Free;
    FConstrucaoCivil := Value;
  end;
end;

procedure TRps.SetServicos(const Value: TRpsDadosServicoList);
begin
  if Value <> FServicos then
  begin
    FServicos.Free;
    FServicos := Value;
  end;
end;

{ TNfseMensagemRetorno }

procedure TNfseMensagemRetorno.SetCodigo(const Value: string);
begin
  FCodigo := Value;
  FCodigoHasValue := True;
end;

procedure TNfseMensagemRetorno.SetDescricao(const Value: string);
begin
  FDescricao := Value;
  FDescricaoHasValue := True;
end;

procedure TNfseMensagemRetorno.SetCorrecao(const Value: string);
begin
  FCorrecao := Value;
  FCorrecaoHasValue := True;
end;

{ TNfseCancelamento }

destructor TNfseCancelamento.Destroy;
begin
  FMensagens.Free;
  inherited;
end;

procedure TNfseCancelamento.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TNfseCancelamento.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TNfseCancelamento.SetDataHora(const Value: TDateTime);
begin
  FDataHora := Value;
  FDataHoraHasValue := True;
end;

procedure TNfseCancelamento.SetMensagens(const Value: TNfseMensagemRetornoList);
begin
  if Value <> FMensagens then
  begin
    FMensagens.Free;
    FMensagens := Value;
  end;
end;

{ TNfse }

destructor TNfse.Destroy;
begin
  FMensagens.Free;
  FCancelamento.Free;
  FDeclaracaoPrestacaoServico.Free;
  inherited;
end;

procedure TNfse.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TNfse.SetCreatedAt(const Value: TDateTime);
begin
  FCreatedAt := Value;
  FCreatedAtHasValue := True;
end;

procedure TNfse.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TNfse.SetNumero(const Value: string);
begin
  FNumero := Value;
  FNumeroHasValue := True;
end;

procedure TNfse.SetCodigoVerificacao(const Value: string);
begin
  FCodigoVerificacao := Value;
  FCodigoVerificacaoHasValue := True;
end;

procedure TNfse.SetLinkUrl(const Value: string);
begin
  FLinkUrl := Value;
  FLinkUrlHasValue := True;
end;

procedure TNfse.SetDataEmissao(const Value: TDateTime);
begin
  FDataEmissao := Value;
  FDataEmissaoHasValue := True;
end;

procedure TNfse.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TNfse.SetReferencia(const Value: string);
begin
  FReferencia := Value;
  FReferenciaHasValue := True;
end;

procedure TNfse.SetDeclaracaoPrestacaoServico(const Value: TRps);
begin
  if Value <> FDeclaracaoPrestacaoServico then
  begin
    FDeclaracaoPrestacaoServico.Free;
    FDeclaracaoPrestacaoServico := Value;
  end;
end;

procedure TNfse.SetCancelamento(const Value: TNfseCancelamento);
begin
  if Value <> FCancelamento then
  begin
    FCancelamento.Free;
    FCancelamento := Value;
  end;
end;

procedure TNfse.SetMensagens(const Value: TNfseMensagemRetornoList);
begin
  if Value <> FMensagens then
  begin
    FMensagens.Free;
    FMensagens := Value;
  end;
end;

{ TRpsLote }

destructor TRpsLote.Destroy;
begin
  FNotas.Free;
  inherited;
end;

procedure TRpsLote.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TRpsLote.SetCreatedAt(const Value: TDateTime);
begin
  FCreatedAt := Value;
  FCreatedAtHasValue := True;
end;

procedure TRpsLote.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TRpsLote.SetNumero(const Value: string);
begin
  FNumero := Value;
  FNumeroHasValue := True;
end;

procedure TRpsLote.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TRpsLote.SetReferencia(const Value: string);
begin
  FReferencia := Value;
  FReferenciaHasValue := True;
end;

procedure TRpsLote.SetNotas(const Value: TNfseList);
begin
  if Value <> FNotas then
  begin
    FNotas.Free;
    FNotas := Value;
  end;
end;

{ TRpsLoteListagem }

destructor TRpsLoteListagem.Destroy;
begin
  FData.Free;
  inherited;
end;

procedure TRpsLoteListagem.SetCount(const Value: Integer);
begin
  FCount := Value;
  FCountHasValue := True;
end;

procedure TRpsLoteListagem.SetData(const Value: TRpsLoteList);
begin
  if Value <> FData then
  begin
    FData.Free;
    FData := Value;
  end;
end;

{ TNfsePedidoEmissao }

destructor TNfsePedidoEmissao.Destroy;
begin
  FRps.Free;
  inherited;
end;

procedure TNfsePedidoEmissao.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TNfsePedidoEmissao.SetRps(const Value: TRpsPedidoEmissao);
begin
  if Value <> FRps then
  begin
    FRps.Free;
    FRps := Value;
  end;
end;

{ TNfseListagem }

destructor TNfseListagem.Destroy;
begin
  FData.Free;
  inherited;
end;

procedure TNfseListagem.SetCount(const Value: Integer);
begin
  FCount := Value;
  FCountHasValue := True;
end;

procedure TNfseListagem.SetData(const Value: TNfseList);
begin
  if Value <> FData then
  begin
    FData.Free;
    FData := Value;
  end;
end;

{ TDfeSefazStatus }

procedure TDfeSefazStatus.SetAutorizador(const Value: string);
begin
  FAutorizador := Value;
  FAutorizadorHasValue := True;
end;

procedure TDfeSefazStatus.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TDfeSefazStatus.SetDataHoraConsulta(const Value: TDateTime);
begin
  FDataHoraConsulta := Value;
  FDataHoraConsultaHasValue := True;
end;

procedure TDfeSefazStatus.SetCodigoStatus(const Value: Integer);
begin
  FCodigoStatus := Value;
  FCodigoStatusHasValue := True;
end;

procedure TDfeSefazStatus.SetMotivoStatus(const Value: string);
begin
  FMotivoStatus := Value;
  FMotivoStatusHasValue := True;
end;

procedure TDfeSefazStatus.SetTempoMedioResposta(const Value: Integer);
begin
  FTempoMedioResposta := Value;
  FTempoMedioRespostaHasValue := True;
end;

procedure TDfeSefazStatus.SetDataHoraRetorno(const Value: TDateTime);
begin
  FDataHoraRetorno := Value;
  FDataHoraRetornoHasValue := True;
end;

{ TDfeVisaoGeralSefazStatus }

destructor TDfeVisaoGeralSefazStatus.Destroy;
begin
  FTO.Free;
  FSE.Free;
  FSP.Free;
  FSC.Free;
  FRR.Free;
  FRO.Free;
  FRS.Free;
  FRN.Free;
  FRJ.Free;
  FPI.Free;
  FPE.Free;
  FPR.Free;
  FPB.Free;
  FPA.Free;
  FMG.Free;
  FMS.Free;
  FMT.Free;
  FMA.Free;
  FGO.Free;
  FES.Free;
  FDF.Free;
  FCE.Free;
  FBA.Free;
  FAM.Free;
  FAP.Free;
  FAL.Free;
  FAC.Free;
  inherited;
end;

procedure TDfeVisaoGeralSefazStatus.SetAC(const Value: TDfeSefazStatus);
begin
  if Value <> FAC then
  begin
    FAC.Free;
    FAC := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetAL(const Value: TDfeSefazStatus);
begin
  if Value <> FAL then
  begin
    FAL.Free;
    FAL := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetAP(const Value: TDfeSefazStatus);
begin
  if Value <> FAP then
  begin
    FAP.Free;
    FAP := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetAM(const Value: TDfeSefazStatus);
begin
  if Value <> FAM then
  begin
    FAM.Free;
    FAM := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetBA(const Value: TDfeSefazStatus);
begin
  if Value <> FBA then
  begin
    FBA.Free;
    FBA := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetCE(const Value: TDfeSefazStatus);
begin
  if Value <> FCE then
  begin
    FCE.Free;
    FCE := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetDF(const Value: TDfeSefazStatus);
begin
  if Value <> FDF then
  begin
    FDF.Free;
    FDF := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetES(const Value: TDfeSefazStatus);
begin
  if Value <> FES then
  begin
    FES.Free;
    FES := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetGO(const Value: TDfeSefazStatus);
begin
  if Value <> FGO then
  begin
    FGO.Free;
    FGO := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetMA(const Value: TDfeSefazStatus);
begin
  if Value <> FMA then
  begin
    FMA.Free;
    FMA := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetMT(const Value: TDfeSefazStatus);
begin
  if Value <> FMT then
  begin
    FMT.Free;
    FMT := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetMS(const Value: TDfeSefazStatus);
begin
  if Value <> FMS then
  begin
    FMS.Free;
    FMS := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetMG(const Value: TDfeSefazStatus);
begin
  if Value <> FMG then
  begin
    FMG.Free;
    FMG := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetPA(const Value: TDfeSefazStatus);
begin
  if Value <> FPA then
  begin
    FPA.Free;
    FPA := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetPB(const Value: TDfeSefazStatus);
begin
  if Value <> FPB then
  begin
    FPB.Free;
    FPB := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetPR(const Value: TDfeSefazStatus);
begin
  if Value <> FPR then
  begin
    FPR.Free;
    FPR := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetPE(const Value: TDfeSefazStatus);
begin
  if Value <> FPE then
  begin
    FPE.Free;
    FPE := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetPI(const Value: TDfeSefazStatus);
begin
  if Value <> FPI then
  begin
    FPI.Free;
    FPI := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetRJ(const Value: TDfeSefazStatus);
begin
  if Value <> FRJ then
  begin
    FRJ.Free;
    FRJ := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetRN(const Value: TDfeSefazStatus);
begin
  if Value <> FRN then
  begin
    FRN.Free;
    FRN := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetRS(const Value: TDfeSefazStatus);
begin
  if Value <> FRS then
  begin
    FRS.Free;
    FRS := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetRO(const Value: TDfeSefazStatus);
begin
  if Value <> FRO then
  begin
    FRO.Free;
    FRO := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetRR(const Value: TDfeSefazStatus);
begin
  if Value <> FRR then
  begin
    FRR.Free;
    FRR := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetSC(const Value: TDfeSefazStatus);
begin
  if Value <> FSC then
  begin
    FSC.Free;
    FSC := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetSP(const Value: TDfeSefazStatus);
begin
  if Value <> FSP then
  begin
    FSP.Free;
    FSP := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetSE(const Value: TDfeSefazStatus);
begin
  if Value <> FSE then
  begin
    FSE.Free;
    FSE := Value;
  end;
end;

procedure TDfeVisaoGeralSefazStatus.SetTO(const Value: TDfeSefazStatus);
begin
  if Value <> FTO then
  begin
    FTO.Free;
    FTO := Value;
  end;
end;

{ TCteSefazToma3 }

procedure TCteSefazToma3.SetToma(const Value: Integer);
begin
  FToma := Value;
  FTomaHasValue := True;
end;

{ TCteSefazEndereco }

procedure TCteSefazEndereco.SetXLgr(const Value: string);
begin
  FXLgr := Value;
  FXLgrHasValue := True;
end;

procedure TCteSefazEndereco.SetNro(const Value: string);
begin
  FNro := Value;
  FNroHasValue := True;
end;

procedure TCteSefazEndereco.SetXCpl(const Value: string);
begin
  FXCpl := Value;
  FXCplHasValue := True;
end;

procedure TCteSefazEndereco.SetXBairro(const Value: string);
begin
  FXBairro := Value;
  FXBairroHasValue := True;
end;

procedure TCteSefazEndereco.SetCMun(const Value: Integer);
begin
  FCMun := Value;
  FCMunHasValue := True;
end;

procedure TCteSefazEndereco.SetXMun(const Value: string);
begin
  FXMun := Value;
  FXMunHasValue := True;
end;

procedure TCteSefazEndereco.SetCEP(const Value: Integer);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TCteSefazEndereco.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TCteSefazEndereco.SetCPais(const Value: Integer);
begin
  FCPais := Value;
  FCPaisHasValue := True;
end;

procedure TCteSefazEndereco.SetXPais(const Value: string);
begin
  FXPais := Value;
  FXPaisHasValue := True;
end;

{ TCteSefazToma4 }

destructor TCteSefazToma4.Destroy;
begin
  FEnderToma.Free;
  inherited;
end;

procedure TCteSefazToma4.SetToma(const Value: Integer);
begin
  FToma := Value;
  FTomaHasValue := True;
end;

procedure TCteSefazToma4.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazToma4.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TCteSefazToma4.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TCteSefazToma4.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TCteSefazToma4.SetXFant(const Value: string);
begin
  FXFant := Value;
  FXFantHasValue := True;
end;

procedure TCteSefazToma4.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TCteSefazToma4.SetEnderToma(const Value: TCteSefazEndereco);
begin
  if Value <> FEnderToma then
  begin
    FEnderToma.Free;
    FEnderToma := Value;
  end;
end;

procedure TCteSefazToma4.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

{ TCteSefazIde }

destructor TCteSefazIde.Destroy;
begin
  FToma4.Free;
  FToma3.Free;
  inherited;
end;

procedure TCteSefazIde.SetCUF(const Value: Integer);
begin
  FCUF := Value;
  FCUFHasValue := True;
end;

procedure TCteSefazIde.SetCCT(const Value: Integer);
begin
  FCCT := Value;
  FCCTHasValue := True;
end;

procedure TCteSefazIde.SetCFOP(const Value: Integer);
begin
  FCFOP := Value;
  FCFOPHasValue := True;
end;

procedure TCteSefazIde.SetNatOp(const Value: string);
begin
  FNatOp := Value;
  FNatOpHasValue := True;
end;

procedure TCteSefazIde.SetMod(const Value: Integer);
begin
  FMod := Value;
  FModHasValue := True;
end;

procedure TCteSefazIde.SetSerie(const Value: Integer);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TCteSefazIde.SetNCT(const Value: Integer);
begin
  FNCT := Value;
  FNCTHasValue := True;
end;

procedure TCteSefazIde.SetDhEmi(const Value: TDateTime);
begin
  FDhEmi := Value;
  FDhEmiHasValue := True;
end;

procedure TCteSefazIde.SetTpImp(const Value: Integer);
begin
  FTpImp := Value;
  FTpImpHasValue := True;
end;

procedure TCteSefazIde.SetTpEmis(const Value: Integer);
begin
  FTpEmis := Value;
  FTpEmisHasValue := True;
end;

procedure TCteSefazIde.SetCDV(const Value: Integer);
begin
  FCDV := Value;
  FCDVHasValue := True;
end;

procedure TCteSefazIde.SetTpAmb(const Value: Integer);
begin
  FTpAmb := Value;
  FTpAmbHasValue := True;
end;

procedure TCteSefazIde.SetTpCTe(const Value: Integer);
begin
  FTpCTe := Value;
  FTpCTeHasValue := True;
end;

procedure TCteSefazIde.SetProcEmi(const Value: Integer);
begin
  FProcEmi := Value;
  FProcEmiHasValue := True;
end;

procedure TCteSefazIde.SetVerProc(const Value: string);
begin
  FVerProc := Value;
  FVerProcHasValue := True;
end;

procedure TCteSefazIde.SetIndGlobalizado(const Value: Integer);
begin
  FIndGlobalizado := Value;
  FIndGlobalizadoHasValue := True;
end;

procedure TCteSefazIde.SetCMunEnv(const Value: Integer);
begin
  FCMunEnv := Value;
  FCMunEnvHasValue := True;
end;

procedure TCteSefazIde.SetXMunEnv(const Value: string);
begin
  FXMunEnv := Value;
  FXMunEnvHasValue := True;
end;

procedure TCteSefazIde.SetUFEnv(const Value: string);
begin
  FUFEnv := Value;
  FUFEnvHasValue := True;
end;

procedure TCteSefazIde.SetModal(const Value: string);
begin
  FModal := Value;
  FModalHasValue := True;
end;

procedure TCteSefazIde.SetTpServ(const Value: Integer);
begin
  FTpServ := Value;
  FTpServHasValue := True;
end;

procedure TCteSefazIde.SetCMunIni(const Value: Integer);
begin
  FCMunIni := Value;
  FCMunIniHasValue := True;
end;

procedure TCteSefazIde.SetXMunIni(const Value: string);
begin
  FXMunIni := Value;
  FXMunIniHasValue := True;
end;

procedure TCteSefazIde.SetUFIni(const Value: string);
begin
  FUFIni := Value;
  FUFIniHasValue := True;
end;

procedure TCteSefazIde.SetCMunFim(const Value: Integer);
begin
  FCMunFim := Value;
  FCMunFimHasValue := True;
end;

procedure TCteSefazIde.SetXMunFim(const Value: string);
begin
  FXMunFim := Value;
  FXMunFimHasValue := True;
end;

procedure TCteSefazIde.SetUFFim(const Value: string);
begin
  FUFFim := Value;
  FUFFimHasValue := True;
end;

procedure TCteSefazIde.SetRetira(const Value: Integer);
begin
  FRetira := Value;
  FRetiraHasValue := True;
end;

procedure TCteSefazIde.SetXDetRetira(const Value: string);
begin
  FXDetRetira := Value;
  FXDetRetiraHasValue := True;
end;

procedure TCteSefazIde.SetIndIEToma(const Value: Integer);
begin
  FIndIEToma := Value;
  FIndIETomaHasValue := True;
end;

procedure TCteSefazIde.SetToma3(const Value: TCteSefazToma3);
begin
  if Value <> FToma3 then
  begin
    FToma3.Free;
    FToma3 := Value;
  end;
end;

procedure TCteSefazIde.SetToma4(const Value: TCteSefazToma4);
begin
  if Value <> FToma4 then
  begin
    FToma4.Free;
    FToma4 := Value;
  end;
end;

procedure TCteSefazIde.SetDhCont(const Value: TDateTime);
begin
  FDhCont := Value;
  FDhContHasValue := True;
end;

procedure TCteSefazIde.SetXJust(const Value: string);
begin
  FXJust := Value;
  FXJustHasValue := True;
end;

{ TCteSefazPass }

procedure TCteSefazPass.SetXPass(const Value: string);
begin
  FXPass := Value;
  FXPassHasValue := True;
end;

{ TCteSefazFluxo }

destructor TCteSefazFluxo.Destroy;
begin
  FPass.Free;
  inherited;
end;

procedure TCteSefazFluxo.SetXOrig(const Value: string);
begin
  FXOrig := Value;
  FXOrigHasValue := True;
end;

procedure TCteSefazFluxo.SetPass(const Value: TCteSefazPassList);
begin
  if Value <> FPass then
  begin
    FPass.Free;
    FPass := Value;
  end;
end;

procedure TCteSefazFluxo.SetXDest(const Value: string);
begin
  FXDest := Value;
  FXDestHasValue := True;
end;

procedure TCteSefazFluxo.SetXRota(const Value: string);
begin
  FXRota := Value;
  FXRotaHasValue := True;
end;

{ TCteSefazSemData }

procedure TCteSefazSemData.SetTpPer(const Value: Integer);
begin
  FTpPer := Value;
  FTpPerHasValue := True;
end;

{ TCteSefazComData }

procedure TCteSefazComData.SetTpPer(const Value: Integer);
begin
  FTpPer := Value;
  FTpPerHasValue := True;
end;

procedure TCteSefazComData.SetDProg(const Value: TDate);
begin
  FDProg := Value;
  FDProgHasValue := True;
end;

{ TCteSefazNoPeriodo }

procedure TCteSefazNoPeriodo.SetTpPer(const Value: Integer);
begin
  FTpPer := Value;
  FTpPerHasValue := True;
end;

procedure TCteSefazNoPeriodo.SetDIni(const Value: TDate);
begin
  FDIni := Value;
  FDIniHasValue := True;
end;

procedure TCteSefazNoPeriodo.SetDFim(const Value: TDate);
begin
  FDFim := Value;
  FDFimHasValue := True;
end;

{ TCteSefazSemHora }

procedure TCteSefazSemHora.SetTpHor(const Value: Integer);
begin
  FTpHor := Value;
  FTpHorHasValue := True;
end;

{ TCteSefazComHora }

procedure TCteSefazComHora.SetTpHor(const Value: Integer);
begin
  FTpHor := Value;
  FTpHorHasValue := True;
end;

procedure TCteSefazComHora.SetHProg(const Value: string);
begin
  FHProg := Value;
  FHProgHasValue := True;
end;

{ TCteSefazNoInter }

procedure TCteSefazNoInter.SetTpHor(const Value: Integer);
begin
  FTpHor := Value;
  FTpHorHasValue := True;
end;

procedure TCteSefazNoInter.SetHIni(const Value: string);
begin
  FHIni := Value;
  FHIniHasValue := True;
end;

procedure TCteSefazNoInter.SetHFim(const Value: string);
begin
  FHFim := Value;
  FHFimHasValue := True;
end;

{ TCteSefazEntrega }

destructor TCteSefazEntrega.Destroy;
begin
  FNoInter.Free;
  FComHora.Free;
  FSemHora.Free;
  FNoPeriodo.Free;
  FComData.Free;
  FSemData.Free;
  inherited;
end;

procedure TCteSefazEntrega.SetSemData(const Value: TCteSefazSemData);
begin
  if Value <> FSemData then
  begin
    FSemData.Free;
    FSemData := Value;
  end;
end;

procedure TCteSefazEntrega.SetComData(const Value: TCteSefazComData);
begin
  if Value <> FComData then
  begin
    FComData.Free;
    FComData := Value;
  end;
end;

procedure TCteSefazEntrega.SetNoPeriodo(const Value: TCteSefazNoPeriodo);
begin
  if Value <> FNoPeriodo then
  begin
    FNoPeriodo.Free;
    FNoPeriodo := Value;
  end;
end;

procedure TCteSefazEntrega.SetSemHora(const Value: TCteSefazSemHora);
begin
  if Value <> FSemHora then
  begin
    FSemHora.Free;
    FSemHora := Value;
  end;
end;

procedure TCteSefazEntrega.SetComHora(const Value: TCteSefazComHora);
begin
  if Value <> FComHora then
  begin
    FComHora.Free;
    FComHora := Value;
  end;
end;

procedure TCteSefazEntrega.SetNoInter(const Value: TCteSefazNoInter);
begin
  if Value <> FNoInter then
  begin
    FNoInter.Free;
    FNoInter := Value;
  end;
end;

{ TCteSefazObsCont }

procedure TCteSefazObsCont.SetXCampo(const Value: string);
begin
  FXCampo := Value;
  FXCampoHasValue := True;
end;

procedure TCteSefazObsCont.SetXTexto(const Value: string);
begin
  FXTexto := Value;
  FXTextoHasValue := True;
end;

{ TCteSefazObsFisco }

procedure TCteSefazObsFisco.SetXCampo(const Value: string);
begin
  FXCampo := Value;
  FXCampoHasValue := True;
end;

procedure TCteSefazObsFisco.SetXTexto(const Value: string);
begin
  FXTexto := Value;
  FXTextoHasValue := True;
end;

{ TCteSefazCompl }

destructor TCteSefazCompl.Destroy;
begin
  FObsFisco.Free;
  FObsCont.Free;
  FEntrega.Free;
  FFluxo.Free;
  inherited;
end;

procedure TCteSefazCompl.SetXCaracAd(const Value: string);
begin
  FXCaracAd := Value;
  FXCaracAdHasValue := True;
end;

procedure TCteSefazCompl.SetXCaracSer(const Value: string);
begin
  FXCaracSer := Value;
  FXCaracSerHasValue := True;
end;

procedure TCteSefazCompl.SetXEmi(const Value: string);
begin
  FXEmi := Value;
  FXEmiHasValue := True;
end;

procedure TCteSefazCompl.SetFluxo(const Value: TCteSefazFluxo);
begin
  if Value <> FFluxo then
  begin
    FFluxo.Free;
    FFluxo := Value;
  end;
end;

procedure TCteSefazCompl.SetEntrega(const Value: TCteSefazEntrega);
begin
  if Value <> FEntrega then
  begin
    FEntrega.Free;
    FEntrega := Value;
  end;
end;

procedure TCteSefazCompl.SetOrigCalc(const Value: string);
begin
  FOrigCalc := Value;
  FOrigCalcHasValue := True;
end;

procedure TCteSefazCompl.SetDestCalc(const Value: string);
begin
  FDestCalc := Value;
  FDestCalcHasValue := True;
end;

procedure TCteSefazCompl.SetXObs(const Value: string);
begin
  FXObs := Value;
  FXObsHasValue := True;
end;

procedure TCteSefazCompl.SetObsCont(const Value: TCteSefazObsContList);
begin
  if Value <> FObsCont then
  begin
    FObsCont.Free;
    FObsCont := Value;
  end;
end;

procedure TCteSefazCompl.SetObsFisco(const Value: TCteSefazObsFiscoList);
begin
  if Value <> FObsFisco then
  begin
    FObsFisco.Free;
    FObsFisco := Value;
  end;
end;

{ TCteSefazEndeEmi }

procedure TCteSefazEndeEmi.SetXLgr(const Value: string);
begin
  FXLgr := Value;
  FXLgrHasValue := True;
end;

procedure TCteSefazEndeEmi.SetNro(const Value: string);
begin
  FNro := Value;
  FNroHasValue := True;
end;

procedure TCteSefazEndeEmi.SetXCpl(const Value: string);
begin
  FXCpl := Value;
  FXCplHasValue := True;
end;

procedure TCteSefazEndeEmi.SetXBairro(const Value: string);
begin
  FXBairro := Value;
  FXBairroHasValue := True;
end;

procedure TCteSefazEndeEmi.SetCMun(const Value: Integer);
begin
  FCMun := Value;
  FCMunHasValue := True;
end;

procedure TCteSefazEndeEmi.SetXMun(const Value: string);
begin
  FXMun := Value;
  FXMunHasValue := True;
end;

procedure TCteSefazEndeEmi.SetCEP(const Value: Integer);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TCteSefazEndeEmi.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TCteSefazEndeEmi.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

{ TCteSefazEmit }

destructor TCteSefazEmit.Destroy;
begin
  FEnderEmit.Free;
  inherited;
end;

procedure TCteSefazEmit.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazEmit.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TCteSefazEmit.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TCteSefazEmit.SetIEST(const Value: string);
begin
  FIEST := Value;
  FIESTHasValue := True;
end;

procedure TCteSefazEmit.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TCteSefazEmit.SetXFant(const Value: string);
begin
  FXFant := Value;
  FXFantHasValue := True;
end;

procedure TCteSefazEmit.SetEnderEmit(const Value: TCteSefazEndeEmi);
begin
  if Value <> FEnderEmit then
  begin
    FEnderEmit.Free;
    FEnderEmit := Value;
  end;
end;

{ TCteSefazRem }

destructor TCteSefazRem.Destroy;
begin
  FEnderReme.Free;
  inherited;
end;

procedure TCteSefazRem.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazRem.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TCteSefazRem.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TCteSefazRem.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TCteSefazRem.SetXFant(const Value: string);
begin
  FXFant := Value;
  FXFantHasValue := True;
end;

procedure TCteSefazRem.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TCteSefazRem.SetEnderReme(const Value: TCteSefazEndereco);
begin
  if Value <> FEnderReme then
  begin
    FEnderReme.Free;
    FEnderReme := Value;
  end;
end;

procedure TCteSefazRem.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

{ TCteSefazExped }

destructor TCteSefazExped.Destroy;
begin
  FEnderExped.Free;
  inherited;
end;

procedure TCteSefazExped.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazExped.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TCteSefazExped.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TCteSefazExped.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TCteSefazExped.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TCteSefazExped.SetEnderExped(const Value: TCteSefazEndereco);
begin
  if Value <> FEnderExped then
  begin
    FEnderExped.Free;
    FEnderExped := Value;
  end;
end;

procedure TCteSefazExped.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

{ TCteSefazReceb }

destructor TCteSefazReceb.Destroy;
begin
  FEnderReceb.Free;
  inherited;
end;

procedure TCteSefazReceb.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazReceb.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TCteSefazReceb.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TCteSefazReceb.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TCteSefazReceb.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TCteSefazReceb.SetEnderReceb(const Value: TCteSefazEndereco);
begin
  if Value <> FEnderReceb then
  begin
    FEnderReceb.Free;
    FEnderReceb := Value;
  end;
end;

procedure TCteSefazReceb.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

{ TCteSefazDest }

destructor TCteSefazDest.Destroy;
begin
  FEnderDest.Free;
  inherited;
end;

procedure TCteSefazDest.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazDest.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TCteSefazDest.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TCteSefazDest.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TCteSefazDest.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TCteSefazDest.SetISUF(const Value: string);
begin
  FISUF := Value;
  FISUFHasValue := True;
end;

procedure TCteSefazDest.SetEnderDest(const Value: TCteSefazEndereco);
begin
  if Value <> FEnderDest then
  begin
    FEnderDest.Free;
    FEnderDest := Value;
  end;
end;

procedure TCteSefazDest.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

{ TCteSefazComp }

procedure TCteSefazComp.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TCteSefazComp.SetVComp(const Value: Double);
begin
  FVComp := Value;
  FVCompHasValue := True;
end;

{ TCteSefazVPrest }

destructor TCteSefazVPrest.Destroy;
begin
  FComp.Free;
  inherited;
end;

procedure TCteSefazVPrest.SetVTPrest(const Value: Double);
begin
  FVTPrest := Value;
  FVTPrestHasValue := True;
end;

procedure TCteSefazVPrest.SetVRec(const Value: Double);
begin
  FVRec := Value;
  FVRecHasValue := True;
end;

procedure TCteSefazVPrest.SetComp(const Value: TCteSefazCompList);
begin
  if Value <> FComp then
  begin
    FComp.Free;
    FComp := Value;
  end;
end;

{ TCteSefazICMS00 }

procedure TCteSefazICMS00.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TCteSefazICMS00.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TCteSefazICMS00.SetPICMS(const Value: Double);
begin
  FPICMS := Value;
  FPICMSHasValue := True;
end;

procedure TCteSefazICMS00.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

{ TCteSefazICMS20 }

procedure TCteSefazICMS20.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TCteSefazICMS20.SetPRedBC(const Value: Double);
begin
  FPRedBC := Value;
  FPRedBCHasValue := True;
end;

procedure TCteSefazICMS20.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TCteSefazICMS20.SetPICMS(const Value: Double);
begin
  FPICMS := Value;
  FPICMSHasValue := True;
end;

procedure TCteSefazICMS20.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

{ TCteSefazICMS45 }

procedure TCteSefazICMS45.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

{ TCteSefazICMS60 }

procedure TCteSefazICMS60.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TCteSefazICMS60.SetVBCSTRet(const Value: Double);
begin
  FVBCSTRet := Value;
  FVBCSTRetHasValue := True;
end;

procedure TCteSefazICMS60.SetVICMSSTRet(const Value: Double);
begin
  FVICMSSTRet := Value;
  FVICMSSTRetHasValue := True;
end;

procedure TCteSefazICMS60.SetPICMSSTRet(const Value: Double);
begin
  FPICMSSTRet := Value;
  FPICMSSTRetHasValue := True;
end;

procedure TCteSefazICMS60.SetVCred(const Value: Double);
begin
  FVCred := Value;
  FVCredHasValue := True;
end;

{ TCteSefazICMS90 }

procedure TCteSefazICMS90.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TCteSefazICMS90.SetPRedBC(const Value: Double);
begin
  FPRedBC := Value;
  FPRedBCHasValue := True;
end;

procedure TCteSefazICMS90.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TCteSefazICMS90.SetPICMS(const Value: Double);
begin
  FPICMS := Value;
  FPICMSHasValue := True;
end;

procedure TCteSefazICMS90.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

procedure TCteSefazICMS90.SetVCred(const Value: Double);
begin
  FVCred := Value;
  FVCredHasValue := True;
end;

{ TCteSefazICMSOutraUF }

procedure TCteSefazICMSOutraUF.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TCteSefazICMSOutraUF.SetPRedBCOutraUF(const Value: Double);
begin
  FPRedBCOutraUF := Value;
  FPRedBCOutraUFHasValue := True;
end;

procedure TCteSefazICMSOutraUF.SetVBCOutraUF(const Value: Double);
begin
  FVBCOutraUF := Value;
  FVBCOutraUFHasValue := True;
end;

procedure TCteSefazICMSOutraUF.SetPICMSOutraUF(const Value: Double);
begin
  FPICMSOutraUF := Value;
  FPICMSOutraUFHasValue := True;
end;

procedure TCteSefazICMSOutraUF.SetVICMSOutraUF(const Value: Double);
begin
  FVICMSOutraUF := Value;
  FVICMSOutraUFHasValue := True;
end;

{ TCteSefazICMSSN }

procedure TCteSefazICMSSN.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TCteSefazICMSSN.SetIndSN(const Value: Integer);
begin
  FIndSN := Value;
  FIndSNHasValue := True;
end;

{ TCteSefazImp }

destructor TCteSefazImp.Destroy;
begin
  FICMSSN.Free;
  FICMSOutraUF.Free;
  FICMS90.Free;
  FICMS60.Free;
  FICMS45.Free;
  FICMS20.Free;
  FICMS00.Free;
  inherited;
end;

procedure TCteSefazImp.SetICMS00(const Value: TCteSefazICMS00);
begin
  if Value <> FICMS00 then
  begin
    FICMS00.Free;
    FICMS00 := Value;
  end;
end;

procedure TCteSefazImp.SetICMS20(const Value: TCteSefazICMS20);
begin
  if Value <> FICMS20 then
  begin
    FICMS20.Free;
    FICMS20 := Value;
  end;
end;

procedure TCteSefazImp.SetICMS45(const Value: TCteSefazICMS45);
begin
  if Value <> FICMS45 then
  begin
    FICMS45.Free;
    FICMS45 := Value;
  end;
end;

procedure TCteSefazImp.SetICMS60(const Value: TCteSefazICMS60);
begin
  if Value <> FICMS60 then
  begin
    FICMS60.Free;
    FICMS60 := Value;
  end;
end;

procedure TCteSefazImp.SetICMS90(const Value: TCteSefazICMS90);
begin
  if Value <> FICMS90 then
  begin
    FICMS90.Free;
    FICMS90 := Value;
  end;
end;

procedure TCteSefazImp.SetICMSOutraUF(const Value: TCteSefazICMSOutraUF);
begin
  if Value <> FICMSOutraUF then
  begin
    FICMSOutraUF.Free;
    FICMSOutraUF := Value;
  end;
end;

procedure TCteSefazImp.SetICMSSN(const Value: TCteSefazICMSSN);
begin
  if Value <> FICMSSN then
  begin
    FICMSSN.Free;
    FICMSSN := Value;
  end;
end;

{ TCteSefazICMSUFFim }

procedure TCteSefazICMSUFFim.SetVBCUFFim(const Value: Double);
begin
  FVBCUFFim := Value;
  FVBCUFFimHasValue := True;
end;

procedure TCteSefazICMSUFFim.SetPFCPUFFim(const Value: Double);
begin
  FPFCPUFFim := Value;
  FPFCPUFFimHasValue := True;
end;

procedure TCteSefazICMSUFFim.SetPICMSUFFim(const Value: Double);
begin
  FPICMSUFFim := Value;
  FPICMSUFFimHasValue := True;
end;

procedure TCteSefazICMSUFFim.SetPICMSInter(const Value: Double);
begin
  FPICMSInter := Value;
  FPICMSInterHasValue := True;
end;

procedure TCteSefazICMSUFFim.SetVFCPUFFim(const Value: Double);
begin
  FVFCPUFFim := Value;
  FVFCPUFFimHasValue := True;
end;

procedure TCteSefazICMSUFFim.SetVICMSUFFim(const Value: Double);
begin
  FVICMSUFFim := Value;
  FVICMSUFFimHasValue := True;
end;

procedure TCteSefazICMSUFFim.SetVICMSUFIni(const Value: Double);
begin
  FVICMSUFIni := Value;
  FVICMSUFIniHasValue := True;
end;

{ TCteSefazInfCteImp }

destructor TCteSefazInfCteImp.Destroy;
begin
  FICMSUFFim.Free;
  FICMS.Free;
  inherited;
end;

procedure TCteSefazInfCteImp.SetICMS(const Value: TCteSefazImp);
begin
  if Value <> FICMS then
  begin
    FICMS.Free;
    FICMS := Value;
  end;
end;

procedure TCteSefazInfCteImp.SetVTotTrib(const Value: Double);
begin
  FVTotTrib := Value;
  FVTotTribHasValue := True;
end;

procedure TCteSefazInfCteImp.SetInfAdFisco(const Value: string);
begin
  FInfAdFisco := Value;
  FInfAdFiscoHasValue := True;
end;

procedure TCteSefazInfCteImp.SetICMSUFFim(const Value: TCteSefazICMSUFFim);
begin
  if Value <> FICMSUFFim then
  begin
    FICMSUFFim.Free;
    FICMSUFFim := Value;
  end;
end;

{ TCteSefazInfQ }

procedure TCteSefazInfQ.SetCUnid(const Value: string);
begin
  FCUnid := Value;
  FCUnidHasValue := True;
end;

procedure TCteSefazInfQ.SetTpMed(const Value: string);
begin
  FTpMed := Value;
  FTpMedHasValue := True;
end;

procedure TCteSefazInfQ.SetQCarga(const Value: Double);
begin
  FQCarga := Value;
  FQCargaHasValue := True;
end;

{ TCteSefazInfCarga }

destructor TCteSefazInfCarga.Destroy;
begin
  FInfQ.Free;
  inherited;
end;

procedure TCteSefazInfCarga.SetVCarga(const Value: Double);
begin
  FVCarga := Value;
  FVCargaHasValue := True;
end;

procedure TCteSefazInfCarga.SetProPred(const Value: string);
begin
  FProPred := Value;
  FProPredHasValue := True;
end;

procedure TCteSefazInfCarga.SetXOutCat(const Value: string);
begin
  FXOutCat := Value;
  FXOutCatHasValue := True;
end;

procedure TCteSefazInfCarga.SetInfQ(const Value: TCteSefazInfQList);
begin
  if Value <> FInfQ then
  begin
    FInfQ.Free;
    FInfQ := Value;
  end;
end;

procedure TCteSefazInfCarga.SetVCargaAverb(const Value: Double);
begin
  FVCargaAverb := Value;
  FVCargaAverbHasValue := True;
end;

{ TCteSefazLacUnidCarga }

procedure TCteSefazLacUnidCarga.SetNLacre(const Value: string);
begin
  FNLacre := Value;
  FNLacreHasValue := True;
end;

{ TCteSefazUnidCarga }

destructor TCteSefazUnidCarga.Destroy;
begin
  FLacUnidCarga.Free;
  inherited;
end;

procedure TCteSefazUnidCarga.SetTpUnidCarga(const Value: Integer);
begin
  FTpUnidCarga := Value;
  FTpUnidCargaHasValue := True;
end;

procedure TCteSefazUnidCarga.SetIdUnidCarga(const Value: string);
begin
  FIdUnidCarga := Value;
  FIdUnidCargaHasValue := True;
end;

procedure TCteSefazUnidCarga.SetLacUnidCarga(const Value: TCteSefazLacUnidCargaList);
begin
  if Value <> FLacUnidCarga then
  begin
    FLacUnidCarga.Free;
    FLacUnidCarga := Value;
  end;
end;

procedure TCteSefazUnidCarga.SetQtdRat(const Value: Double);
begin
  FQtdRat := Value;
  FQtdRatHasValue := True;
end;

{ TCteSefazLacUnidTransp }

procedure TCteSefazLacUnidTransp.SetNLacre(const Value: string);
begin
  FNLacre := Value;
  FNLacreHasValue := True;
end;

{ TCteSefazUnidadeTransp }

destructor TCteSefazUnidadeTransp.Destroy;
begin
  FInfUnidCarga.Free;
  FLacUnidTransp.Free;
  inherited;
end;

procedure TCteSefazUnidadeTransp.SetTpUnidTransp(const Value: Integer);
begin
  FTpUnidTransp := Value;
  FTpUnidTranspHasValue := True;
end;

procedure TCteSefazUnidadeTransp.SetIdUnidTransp(const Value: string);
begin
  FIdUnidTransp := Value;
  FIdUnidTranspHasValue := True;
end;

procedure TCteSefazUnidadeTransp.SetLacUnidTransp(const Value: TCteSefazLacUnidTranspList);
begin
  if Value <> FLacUnidTransp then
  begin
    FLacUnidTransp.Free;
    FLacUnidTransp := Value;
  end;
end;

procedure TCteSefazUnidadeTransp.SetInfUnidCarga(const Value: TCteSefazUnidCargaList);
begin
  if Value <> FInfUnidCarga then
  begin
    FInfUnidCarga.Free;
    FInfUnidCarga := Value;
  end;
end;

procedure TCteSefazUnidadeTransp.SetQtdRat(const Value: Double);
begin
  FQtdRat := Value;
  FQtdRatHasValue := True;
end;

{ TCteSefazInfNF }

destructor TCteSefazInfNF.Destroy;
begin
  FInfUnidTransp.Free;
  FInfUnidCarga.Free;
  inherited;
end;

procedure TCteSefazInfNF.SetNRoma(const Value: string);
begin
  FNRoma := Value;
  FNRomaHasValue := True;
end;

procedure TCteSefazInfNF.SetNPed(const Value: string);
begin
  FNPed := Value;
  FNPedHasValue := True;
end;

procedure TCteSefazInfNF.SetMod(const Value: string);
begin
  FMod := Value;
  FModHasValue := True;
end;

procedure TCteSefazInfNF.SetSerie(const Value: string);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TCteSefazInfNF.SetNDoc(const Value: string);
begin
  FNDoc := Value;
  FNDocHasValue := True;
end;

procedure TCteSefazInfNF.SetDEmi(const Value: TDate);
begin
  FDEmi := Value;
  FDEmiHasValue := True;
end;

procedure TCteSefazInfNF.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TCteSefazInfNF.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

procedure TCteSefazInfNF.SetVBCST(const Value: Double);
begin
  FVBCST := Value;
  FVBCSTHasValue := True;
end;

procedure TCteSefazInfNF.SetVST(const Value: Double);
begin
  FVST := Value;
  FVSTHasValue := True;
end;

procedure TCteSefazInfNF.SetVProd(const Value: Double);
begin
  FVProd := Value;
  FVProdHasValue := True;
end;

procedure TCteSefazInfNF.SetVNF(const Value: Double);
begin
  FVNF := Value;
  FVNFHasValue := True;
end;

procedure TCteSefazInfNF.SetNCFOP(const Value: Integer);
begin
  FNCFOP := Value;
  FNCFOPHasValue := True;
end;

procedure TCteSefazInfNF.SetNPeso(const Value: Double);
begin
  FNPeso := Value;
  FNPesoHasValue := True;
end;

procedure TCteSefazInfNF.SetPIN(const Value: string);
begin
  FPIN := Value;
  FPINHasValue := True;
end;

procedure TCteSefazInfNF.SetDPrev(const Value: TDate);
begin
  FDPrev := Value;
  FDPrevHasValue := True;
end;

procedure TCteSefazInfNF.SetInfUnidCarga(const Value: TCteSefazUnidCargaList);
begin
  if Value <> FInfUnidCarga then
  begin
    FInfUnidCarga.Free;
    FInfUnidCarga := Value;
  end;
end;

procedure TCteSefazInfNF.SetInfUnidTransp(const Value: TCteSefazUnidadeTranspList);
begin
  if Value <> FInfUnidTransp then
  begin
    FInfUnidTransp.Free;
    FInfUnidTransp := Value;
  end;
end;

{ TCteSefazInfNFe }

destructor TCteSefazInfNFe.Destroy;
begin
  FInfUnidTransp.Free;
  FInfUnidCarga.Free;
  inherited;
end;

procedure TCteSefazInfNFe.SetChave(const Value: string);
begin
  FChave := Value;
  FChaveHasValue := True;
end;

procedure TCteSefazInfNFe.SetPIN(const Value: string);
begin
  FPIN := Value;
  FPINHasValue := True;
end;

procedure TCteSefazInfNFe.SetDPrev(const Value: TDate);
begin
  FDPrev := Value;
  FDPrevHasValue := True;
end;

procedure TCteSefazInfNFe.SetInfUnidCarga(const Value: TCteSefazUnidCargaList);
begin
  if Value <> FInfUnidCarga then
  begin
    FInfUnidCarga.Free;
    FInfUnidCarga := Value;
  end;
end;

procedure TCteSefazInfNFe.SetInfUnidTransp(const Value: TCteSefazUnidadeTranspList);
begin
  if Value <> FInfUnidTransp then
  begin
    FInfUnidTransp.Free;
    FInfUnidTransp := Value;
  end;
end;

{ TCteSefazInfOutros }

destructor TCteSefazInfOutros.Destroy;
begin
  FInfUnidTransp.Free;
  FInfUnidCarga.Free;
  inherited;
end;

procedure TCteSefazInfOutros.SetTpDoc(const Value: string);
begin
  FTpDoc := Value;
  FTpDocHasValue := True;
end;

procedure TCteSefazInfOutros.SetDescOutros(const Value: string);
begin
  FDescOutros := Value;
  FDescOutrosHasValue := True;
end;

procedure TCteSefazInfOutros.SetNDoc(const Value: string);
begin
  FNDoc := Value;
  FNDocHasValue := True;
end;

procedure TCteSefazInfOutros.SetDEmi(const Value: TDate);
begin
  FDEmi := Value;
  FDEmiHasValue := True;
end;

procedure TCteSefazInfOutros.SetVDocFisc(const Value: Double);
begin
  FVDocFisc := Value;
  FVDocFiscHasValue := True;
end;

procedure TCteSefazInfOutros.SetDPrev(const Value: TDate);
begin
  FDPrev := Value;
  FDPrevHasValue := True;
end;

procedure TCteSefazInfOutros.SetInfUnidCarga(const Value: TCteSefazUnidCargaList);
begin
  if Value <> FInfUnidCarga then
  begin
    FInfUnidCarga.Free;
    FInfUnidCarga := Value;
  end;
end;

procedure TCteSefazInfOutros.SetInfUnidTransp(const Value: TCteSefazUnidadeTranspList);
begin
  if Value <> FInfUnidTransp then
  begin
    FInfUnidTransp.Free;
    FInfUnidTransp := Value;
  end;
end;

{ TCteSefazInfDoc }

destructor TCteSefazInfDoc.Destroy;
begin
  FInfOutros.Free;
  FInfNFe.Free;
  FInfNF.Free;
  inherited;
end;

procedure TCteSefazInfDoc.SetInfNF(const Value: TCteSefazInfNFList);
begin
  if Value <> FInfNF then
  begin
    FInfNF.Free;
    FInfNF := Value;
  end;
end;

procedure TCteSefazInfDoc.SetInfNFe(const Value: TCteSefazInfNFeList);
begin
  if Value <> FInfNFe then
  begin
    FInfNFe.Free;
    FInfNFe := Value;
  end;
end;

procedure TCteSefazInfDoc.SetInfOutros(const Value: TCteSefazInfOutrosList);
begin
  if Value <> FInfOutros then
  begin
    FInfOutros.Free;
    FInfOutros := Value;
  end;
end;

{ TCteSefazIdDocAntPap }

procedure TCteSefazIdDocAntPap.SetTpDoc(const Value: string);
begin
  FTpDoc := Value;
  FTpDocHasValue := True;
end;

procedure TCteSefazIdDocAntPap.SetSerie(const Value: string);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TCteSefazIdDocAntPap.SetSubser(const Value: string);
begin
  FSubser := Value;
  FSubserHasValue := True;
end;

procedure TCteSefazIdDocAntPap.SetNDoc(const Value: string);
begin
  FNDoc := Value;
  FNDocHasValue := True;
end;

procedure TCteSefazIdDocAntPap.SetDEmi(const Value: TDate);
begin
  FDEmi := Value;
  FDEmiHasValue := True;
end;

{ TCteSefazIdDocAntEle }

procedure TCteSefazIdDocAntEle.SetChCTe(const Value: string);
begin
  FChCTe := Value;
  FChCTeHasValue := True;
end;

{ TCteSefazIdDocAnt }

destructor TCteSefazIdDocAnt.Destroy;
begin
  FIdDocAntEle.Free;
  FIdDocAntPap.Free;
  inherited;
end;

procedure TCteSefazIdDocAnt.SetIdDocAntPap(const Value: TCteSefazIdDocAntPapList);
begin
  if Value <> FIdDocAntPap then
  begin
    FIdDocAntPap.Free;
    FIdDocAntPap := Value;
  end;
end;

procedure TCteSefazIdDocAnt.SetIdDocAntEle(const Value: TCteSefazIdDocAntEleList);
begin
  if Value <> FIdDocAntEle then
  begin
    FIdDocAntEle.Free;
    FIdDocAntEle := Value;
  end;
end;

{ TCteSefazEmiDocAnt }

destructor TCteSefazEmiDocAnt.Destroy;
begin
  FIdDocAnt.Free;
  inherited;
end;

procedure TCteSefazEmiDocAnt.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazEmiDocAnt.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TCteSefazEmiDocAnt.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TCteSefazEmiDocAnt.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TCteSefazEmiDocAnt.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TCteSefazEmiDocAnt.SetIdDocAnt(const Value: TCteSefazIdDocAntList);
begin
  if Value <> FIdDocAnt then
  begin
    FIdDocAnt.Free;
    FIdDocAnt := Value;
  end;
end;

{ TCteSefazDocAnt }

destructor TCteSefazDocAnt.Destroy;
begin
  FEmiDocAnt.Free;
  inherited;
end;

procedure TCteSefazDocAnt.SetEmiDocAnt(const Value: TCteSefazEmiDocAntList);
begin
  if Value <> FEmiDocAnt then
  begin
    FEmiDocAnt.Free;
    FEmiDocAnt := Value;
  end;
end;

{ TCteSefazEmiOcc }

procedure TCteSefazEmiOcc.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazEmiOcc.SetCInt(const Value: string);
begin
  FCInt := Value;
  FCIntHasValue := True;
end;

procedure TCteSefazEmiOcc.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TCteSefazEmiOcc.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TCteSefazEmiOcc.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

{ TCteSefazOcc }

destructor TCteSefazOcc.Destroy;
begin
  FEmiOcc.Free;
  inherited;
end;

procedure TCteSefazOcc.SetSerie(const Value: string);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TCteSefazOcc.SetNOcc(const Value: Integer);
begin
  FNOcc := Value;
  FNOccHasValue := True;
end;

procedure TCteSefazOcc.SetDEmi(const Value: TDate);
begin
  FDEmi := Value;
  FDEmiHasValue := True;
end;

procedure TCteSefazOcc.SetEmiOcc(const Value: TCteSefazEmiOcc);
begin
  if Value <> FEmiOcc then
  begin
    FEmiOcc.Free;
    FEmiOcc := Value;
  end;
end;

{ TCteSefazRodo }

destructor TCteSefazRodo.Destroy;
begin
  FOcc.Free;
  inherited;
end;

procedure TCteSefazRodo.SetRNTRC(const Value: string);
begin
  FRNTRC := Value;
  FRNTRCHasValue := True;
end;

procedure TCteSefazRodo.SetOcc(const Value: TCteSefazOccList);
begin
  if Value <> FOcc then
  begin
    FOcc.Free;
    FOcc := Value;
  end;
end;

{ TCteSefazNatCarga }

destructor TCteSefazNatCarga.Destroy;
begin
  FCInfManu.Free;
  inherited;
end;

procedure TCteSefazNatCarga.SetXDime(const Value: string);
begin
  FXDime := Value;
  FXDimeHasValue := True;
end;

procedure TCteSefazNatCarga.SetCInfManu(const Value: stringList);
begin
  if Value <> FCInfManu then
  begin
    FCInfManu.Free;
    FCInfManu := Value;
  end;
end;

{ TCteSefazTarifa }

procedure TCteSefazTarifa.SetCL(const Value: string);
begin
  FCL := Value;
  FCLHasValue := True;
end;

procedure TCteSefazTarifa.SetCTar(const Value: string);
begin
  FCTar := Value;
  FCTarHasValue := True;
end;

procedure TCteSefazTarifa.SetVTar(const Value: Double);
begin
  FVTar := Value;
  FVTarHasValue := True;
end;

{ TCteSefazInfTotAP }

procedure TCteSefazInfTotAP.SetQTotProd(const Value: Double);
begin
  FQTotProd := Value;
  FQTotProdHasValue := True;
end;

procedure TCteSefazInfTotAP.SetUniAP(const Value: Integer);
begin
  FUniAP := Value;
  FUniAPHasValue := True;
end;

{ TCteSefazPeri }

destructor TCteSefazPeri.Destroy;
begin
  FInfTotAP.Free;
  inherited;
end;

procedure TCteSefazPeri.SetNONU(const Value: string);
begin
  FNONU := Value;
  FNONUHasValue := True;
end;

procedure TCteSefazPeri.SetQTotEmb(const Value: string);
begin
  FQTotEmb := Value;
  FQTotEmbHasValue := True;
end;

procedure TCteSefazPeri.SetInfTotAP(const Value: TCteSefazInfTotAP);
begin
  if Value <> FInfTotAP then
  begin
    FInfTotAP.Free;
    FInfTotAP := Value;
  end;
end;

{ TCteSefazAereo }

destructor TCteSefazAereo.Destroy;
begin
  FPeri.Free;
  FTarifa.Free;
  FNatCarga.Free;
  inherited;
end;

procedure TCteSefazAereo.SetNMinu(const Value: Integer);
begin
  FNMinu := Value;
  FNMinuHasValue := True;
end;

procedure TCteSefazAereo.SetNOCA(const Value: string);
begin
  FNOCA := Value;
  FNOCAHasValue := True;
end;

procedure TCteSefazAereo.SetDPrevAereo(const Value: TDate);
begin
  FDPrevAereo := Value;
  FDPrevAereoHasValue := True;
end;

procedure TCteSefazAereo.SetNatCarga(const Value: TCteSefazNatCarga);
begin
  if Value <> FNatCarga then
  begin
    FNatCarga.Free;
    FNatCarga := Value;
  end;
end;

procedure TCteSefazAereo.SetTarifa(const Value: TCteSefazTarifa);
begin
  if Value <> FTarifa then
  begin
    FTarifa.Free;
    FTarifa := Value;
  end;
end;

procedure TCteSefazAereo.SetPeri(const Value: TCteSefazPeriList);
begin
  if Value <> FPeri then
  begin
    FPeri.Free;
    FPeri := Value;
  end;
end;

{ TCteSefazEnderFer }

procedure TCteSefazEnderFer.SetXLgr(const Value: string);
begin
  FXLgr := Value;
  FXLgrHasValue := True;
end;

procedure TCteSefazEnderFer.SetNro(const Value: string);
begin
  FNro := Value;
  FNroHasValue := True;
end;

procedure TCteSefazEnderFer.SetXCpl(const Value: string);
begin
  FXCpl := Value;
  FXCplHasValue := True;
end;

procedure TCteSefazEnderFer.SetXBairro(const Value: string);
begin
  FXBairro := Value;
  FXBairroHasValue := True;
end;

procedure TCteSefazEnderFer.SetCMun(const Value: Integer);
begin
  FCMun := Value;
  FCMunHasValue := True;
end;

procedure TCteSefazEnderFer.SetXMun(const Value: string);
begin
  FXMun := Value;
  FXMunHasValue := True;
end;

procedure TCteSefazEnderFer.SetCEP(const Value: Integer);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TCteSefazEnderFer.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

{ TCteSefazFerroEnv }

destructor TCteSefazFerroEnv.Destroy;
begin
  FEnderFerro.Free;
  inherited;
end;

procedure TCteSefazFerroEnv.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazFerroEnv.SetCInt(const Value: string);
begin
  FCInt := Value;
  FCIntHasValue := True;
end;

procedure TCteSefazFerroEnv.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TCteSefazFerroEnv.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TCteSefazFerroEnv.SetEnderFerro(const Value: TCteSefazEnderFer);
begin
  if Value <> FEnderFerro then
  begin
    FEnderFerro.Free;
    FEnderFerro := Value;
  end;
end;

{ TCteSefazTrafMut }

destructor TCteSefazTrafMut.Destroy;
begin
  FFerroEnv.Free;
  inherited;
end;

procedure TCteSefazTrafMut.SetRespFat(const Value: Integer);
begin
  FRespFat := Value;
  FRespFatHasValue := True;
end;

procedure TCteSefazTrafMut.SetFerrEmi(const Value: Integer);
begin
  FFerrEmi := Value;
  FFerrEmiHasValue := True;
end;

procedure TCteSefazTrafMut.SetVFrete(const Value: Double);
begin
  FVFrete := Value;
  FVFreteHasValue := True;
end;

procedure TCteSefazTrafMut.SetChCTeFerroOrigem(const Value: string);
begin
  FChCTeFerroOrigem := Value;
  FChCTeFerroOrigemHasValue := True;
end;

procedure TCteSefazTrafMut.SetFerroEnv(const Value: TCteSefazFerroEnvList);
begin
  if Value <> FFerroEnv then
  begin
    FFerroEnv.Free;
    FFerroEnv := Value;
  end;
end;

{ TCteSefazFerrov }

destructor TCteSefazFerrov.Destroy;
begin
  FTrafMut.Free;
  inherited;
end;

procedure TCteSefazFerrov.SetTpTraf(const Value: Integer);
begin
  FTpTraf := Value;
  FTpTrafHasValue := True;
end;

procedure TCteSefazFerrov.SetTrafMut(const Value: TCteSefazTrafMut);
begin
  if Value <> FTrafMut then
  begin
    FTrafMut.Free;
    FTrafMut := Value;
  end;
end;

procedure TCteSefazFerrov.SetFluxo(const Value: string);
begin
  FFluxo := Value;
  FFluxoHasValue := True;
end;

{ TCteSefazBalsa }

procedure TCteSefazBalsa.SetXBalsa(const Value: string);
begin
  FXBalsa := Value;
  FXBalsaHasValue := True;
end;

{ TCteSefazLacre }

procedure TCteSefazLacre.SetNLacre(const Value: string);
begin
  FNLacre := Value;
  FNLacreHasValue := True;
end;

{ TCteSefazDetContInfDocInfNF }

procedure TCteSefazDetContInfDocInfNF.SetSerie(const Value: string);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TCteSefazDetContInfDocInfNF.SetNDoc(const Value: string);
begin
  FNDoc := Value;
  FNDocHasValue := True;
end;

procedure TCteSefazDetContInfDocInfNF.SetUnidRat(const Value: Double);
begin
  FUnidRat := Value;
  FUnidRatHasValue := True;
end;

{ TCteSefazDetContInfDocInfNFe }

procedure TCteSefazDetContInfDocInfNFe.SetChave(const Value: string);
begin
  FChave := Value;
  FChaveHasValue := True;
end;

procedure TCteSefazDetContInfDocInfNFe.SetUnidRat(const Value: Double);
begin
  FUnidRat := Value;
  FUnidRatHasValue := True;
end;

{ TCteSefazDetContInfDoc }

destructor TCteSefazDetContInfDoc.Destroy;
begin
  FInfNFe.Free;
  FInfNF.Free;
  inherited;
end;

procedure TCteSefazDetContInfDoc.SetInfNF(const Value: TCteSefazDetContInfDocInfNFList);
begin
  if Value <> FInfNF then
  begin
    FInfNF.Free;
    FInfNF := Value;
  end;
end;

procedure TCteSefazDetContInfDoc.SetInfNFe(const Value: TCteSefazDetContInfDocInfNFeList);
begin
  if Value <> FInfNFe then
  begin
    FInfNFe.Free;
    FInfNFe := Value;
  end;
end;

{ TCteSefazDetCont }

destructor TCteSefazDetCont.Destroy;
begin
  FInfDoc.Free;
  FLacre.Free;
  inherited;
end;

procedure TCteSefazDetCont.SetNCont(const Value: string);
begin
  FNCont := Value;
  FNContHasValue := True;
end;

procedure TCteSefazDetCont.SetLacre(const Value: TCteSefazLacreList);
begin
  if Value <> FLacre then
  begin
    FLacre.Free;
    FLacre := Value;
  end;
end;

procedure TCteSefazDetCont.SetInfDoc(const Value: TCteSefazDetContInfDoc);
begin
  if Value <> FInfDoc then
  begin
    FInfDoc.Free;
    FInfDoc := Value;
  end;
end;

{ TCteSefazAquav }

destructor TCteSefazAquav.Destroy;
begin
  FDetCont.Free;
  FBalsa.Free;
  inherited;
end;

procedure TCteSefazAquav.SetVPrest(const Value: Double);
begin
  FVPrest := Value;
  FVPrestHasValue := True;
end;

procedure TCteSefazAquav.SetVAFRMM(const Value: Double);
begin
  FVAFRMM := Value;
  FVAFRMMHasValue := True;
end;

procedure TCteSefazAquav.SetXNavio(const Value: string);
begin
  FXNavio := Value;
  FXNavioHasValue := True;
end;

procedure TCteSefazAquav.SetBalsa(const Value: TCteSefazBalsaList);
begin
  if Value <> FBalsa then
  begin
    FBalsa.Free;
    FBalsa := Value;
  end;
end;

procedure TCteSefazAquav.SetNViag(const Value: string);
begin
  FNViag := Value;
  FNViagHasValue := True;
end;

procedure TCteSefazAquav.SetDirec(const Value: string);
begin
  FDirec := Value;
  FDirecHasValue := True;
end;

procedure TCteSefazAquav.SetIrin(const Value: string);
begin
  FIrin := Value;
  FIrinHasValue := True;
end;

procedure TCteSefazAquav.SetDetCont(const Value: TCteSefazDetContList);
begin
  if Value <> FDetCont then
  begin
    FDetCont.Free;
    FDetCont := Value;
  end;
end;

procedure TCteSefazAquav.SetTpNav(const Value: Integer);
begin
  FTpNav := Value;
  FTpNavHasValue := True;
end;

{ TCteSefazDuto }

procedure TCteSefazDuto.SetVTar(const Value: Double);
begin
  FVTar := Value;
  FVTarHasValue := True;
end;

procedure TCteSefazDuto.SetDIni(const Value: TDate);
begin
  FDIni := Value;
  FDIniHasValue := True;
end;

procedure TCteSefazDuto.SetDFim(const Value: TDate);
begin
  FDFim := Value;
  FDFimHasValue := True;
end;

{ TCteSefazInfSeg }

procedure TCteSefazInfSeg.SetXSeg(const Value: string);
begin
  FXSeg := Value;
  FXSegHasValue := True;
end;

procedure TCteSefazInfSeg.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

{ TCteSefazSeg }

destructor TCteSefazSeg.Destroy;
begin
  FInfSeg.Free;
  inherited;
end;

procedure TCteSefazSeg.SetInfSeg(const Value: TCteSefazInfSeg);
begin
  if Value <> FInfSeg then
  begin
    FInfSeg.Free;
    FInfSeg := Value;
  end;
end;

procedure TCteSefazSeg.SetNApol(const Value: string);
begin
  FNApol := Value;
  FNApolHasValue := True;
end;

procedure TCteSefazSeg.SetNAver(const Value: string);
begin
  FNAver := Value;
  FNAverHasValue := True;
end;

{ TCteSefazMultimodal }

destructor TCteSefazMultimodal.Destroy;
begin
  FSeg.Free;
  inherited;
end;

procedure TCteSefazMultimodal.SetCOTM(const Value: string);
begin
  FCOTM := Value;
  FCOTMHasValue := True;
end;

procedure TCteSefazMultimodal.SetIndNegociavel(const Value: Integer);
begin
  FIndNegociavel := Value;
  FIndNegociavelHasValue := True;
end;

procedure TCteSefazMultimodal.SetSeg(const Value: TCteSefazSeg);
begin
  if Value <> FSeg then
  begin
    FSeg.Free;
    FSeg := Value;
  end;
end;

{ TCteSefazInfModal }

destructor TCteSefazInfModal.Destroy;
begin
  FMultimodal.Free;
  FDuto.Free;
  FAquav.Free;
  FFerrov.Free;
  FAereo.Free;
  FRodo.Free;
  inherited;
end;

procedure TCteSefazInfModal.SetVersaoModal(const Value: string);
begin
  FVersaoModal := Value;
  FVersaoModalHasValue := True;
end;

procedure TCteSefazInfModal.SetRodo(const Value: TCteSefazRodo);
begin
  if Value <> FRodo then
  begin
    FRodo.Free;
    FRodo := Value;
  end;
end;

procedure TCteSefazInfModal.SetAereo(const Value: TCteSefazAereo);
begin
  if Value <> FAereo then
  begin
    FAereo.Free;
    FAereo := Value;
  end;
end;

procedure TCteSefazInfModal.SetFerrov(const Value: TCteSefazFerrov);
begin
  if Value <> FFerrov then
  begin
    FFerrov.Free;
    FFerrov := Value;
  end;
end;

procedure TCteSefazInfModal.SetAquav(const Value: TCteSefazAquav);
begin
  if Value <> FAquav then
  begin
    FAquav.Free;
    FAquav := Value;
  end;
end;

procedure TCteSefazInfModal.SetDuto(const Value: TCteSefazDuto);
begin
  if Value <> FDuto then
  begin
    FDuto.Free;
    FDuto := Value;
  end;
end;

procedure TCteSefazInfModal.SetMultimodal(const Value: TCteSefazMultimodal);
begin
  if Value <> FMultimodal then
  begin
    FMultimodal.Free;
    FMultimodal := Value;
  end;
end;

{ TCteSefazVeicNovos }

procedure TCteSefazVeicNovos.SetChassi(const Value: string);
begin
  FChassi := Value;
  FChassiHasValue := True;
end;

procedure TCteSefazVeicNovos.SetCCor(const Value: string);
begin
  FCCor := Value;
  FCCorHasValue := True;
end;

procedure TCteSefazVeicNovos.SetXCor(const Value: string);
begin
  FXCor := Value;
  FXCorHasValue := True;
end;

procedure TCteSefazVeicNovos.SetCMod(const Value: string);
begin
  FCMod := Value;
  FCModHasValue := True;
end;

procedure TCteSefazVeicNovos.SetVUnit(const Value: Double);
begin
  FVUnit := Value;
  FVUnitHasValue := True;
end;

procedure TCteSefazVeicNovos.SetVFrete(const Value: Double);
begin
  FVFrete := Value;
  FVFreteHasValue := True;
end;

{ TCteSefazFat }

procedure TCteSefazFat.SetNFat(const Value: string);
begin
  FNFat := Value;
  FNFatHasValue := True;
end;

procedure TCteSefazFat.SetVOrig(const Value: Double);
begin
  FVOrig := Value;
  FVOrigHasValue := True;
end;

procedure TCteSefazFat.SetVDesc(const Value: Double);
begin
  FVDesc := Value;
  FVDescHasValue := True;
end;

procedure TCteSefazFat.SetVLiq(const Value: Double);
begin
  FVLiq := Value;
  FVLiqHasValue := True;
end;

{ TCteSefazDup }

procedure TCteSefazDup.SetNDup(const Value: string);
begin
  FNDup := Value;
  FNDupHasValue := True;
end;

procedure TCteSefazDup.SetDVenc(const Value: TDate);
begin
  FDVenc := Value;
  FDVencHasValue := True;
end;

procedure TCteSefazDup.SetVDup(const Value: Double);
begin
  FVDup := Value;
  FVDupHasValue := True;
end;

{ TCteSefazCobr }

destructor TCteSefazCobr.Destroy;
begin
  FDup.Free;
  FFat.Free;
  inherited;
end;

procedure TCteSefazCobr.SetFat(const Value: TCteSefazFat);
begin
  if Value <> FFat then
  begin
    FFat.Free;
    FFat := Value;
  end;
end;

procedure TCteSefazCobr.SetDup(const Value: TCteSefazDupList);
begin
  if Value <> FDup then
  begin
    FDup.Free;
    FDup := Value;
  end;
end;

{ TCteSefazRefNF }

procedure TCteSefazRefNF.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazRefNF.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TCteSefazRefNF.SetMod(const Value: string);
begin
  FMod := Value;
  FModHasValue := True;
end;

procedure TCteSefazRefNF.SetSerie(const Value: Integer);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TCteSefazRefNF.SetSubserie(const Value: Integer);
begin
  FSubserie := Value;
  FSubserieHasValue := True;
end;

procedure TCteSefazRefNF.SetNro(const Value: Integer);
begin
  FNro := Value;
  FNroHasValue := True;
end;

procedure TCteSefazRefNF.SetValor(const Value: Double);
begin
  FValor := Value;
  FValorHasValue := True;
end;

procedure TCteSefazRefNF.SetDEmi(const Value: TDate);
begin
  FDEmi := Value;
  FDEmiHasValue := True;
end;

{ TCteSefazTomaICMS }

destructor TCteSefazTomaICMS.Destroy;
begin
  FRefNF.Free;
  inherited;
end;

procedure TCteSefazTomaICMS.SetRefNFe(const Value: string);
begin
  FRefNFe := Value;
  FRefNFeHasValue := True;
end;

procedure TCteSefazTomaICMS.SetRefNF(const Value: TCteSefazRefNF);
begin
  if Value <> FRefNF then
  begin
    FRefNF.Free;
    FRefNF := Value;
  end;
end;

procedure TCteSefazTomaICMS.SetRefCte(const Value: string);
begin
  FRefCte := Value;
  FRefCteHasValue := True;
end;

{ TCteSefazInfCteSub }

destructor TCteSefazInfCteSub.Destroy;
begin
  FTomaICMS.Free;
  inherited;
end;

procedure TCteSefazInfCteSub.SetChCte(const Value: string);
begin
  FChCte := Value;
  FChCteHasValue := True;
end;

procedure TCteSefazInfCteSub.SetRefCteAnu(const Value: string);
begin
  FRefCteAnu := Value;
  FRefCteAnuHasValue := True;
end;

procedure TCteSefazInfCteSub.SetTomaICMS(const Value: TCteSefazTomaICMS);
begin
  if Value <> FTomaICMS then
  begin
    FTomaICMS.Free;
    FTomaICMS := Value;
  end;
end;

procedure TCteSefazInfCteSub.SetIndAlteraToma(const Value: Integer);
begin
  FIndAlteraToma := Value;
  FIndAlteraTomaHasValue := True;
end;

{ TCteSefazInfGlobalizado }

procedure TCteSefazInfGlobalizado.SetXObs(const Value: string);
begin
  FXObs := Value;
  FXObsHasValue := True;
end;

{ TCteSefazInfCTeMultimodal }

procedure TCteSefazInfCTeMultimodal.SetChCTeMultimodal(const Value: string);
begin
  FChCTeMultimodal := Value;
  FChCTeMultimodalHasValue := True;
end;

{ TCteSefazInfServVinc }

destructor TCteSefazInfServVinc.Destroy;
begin
  FInfCTeMultimodal.Free;
  inherited;
end;

procedure TCteSefazInfServVinc.SetInfCTeMultimodal(const Value: TCteSefazInfCTeMultimodalList);
begin
  if Value <> FInfCTeMultimodal then
  begin
    FInfCTeMultimodal.Free;
    FInfCTeMultimodal := Value;
  end;
end;

{ TCteSefazInfCTeNorm }

destructor TCteSefazInfCTeNorm.Destroy;
begin
  FInfServVinc.Free;
  FInfGlobalizado.Free;
  FInfCteSub.Free;
  FCobr.Free;
  FVeicNovos.Free;
  FInfModal.Free;
  FDocAnt.Free;
  FInfDoc.Free;
  FInfCarga.Free;
  inherited;
end;

procedure TCteSefazInfCTeNorm.SetInfCarga(const Value: TCteSefazInfCarga);
begin
  if Value <> FInfCarga then
  begin
    FInfCarga.Free;
    FInfCarga := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetInfDoc(const Value: TCteSefazInfDoc);
begin
  if Value <> FInfDoc then
  begin
    FInfDoc.Free;
    FInfDoc := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetDocAnt(const Value: TCteSefazDocAnt);
begin
  if Value <> FDocAnt then
  begin
    FDocAnt.Free;
    FDocAnt := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetInfModal(const Value: TCteSefazInfModal);
begin
  if Value <> FInfModal then
  begin
    FInfModal.Free;
    FInfModal := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetVeicNovos(const Value: TCteSefazVeicNovosList);
begin
  if Value <> FVeicNovos then
  begin
    FVeicNovos.Free;
    FVeicNovos := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetCobr(const Value: TCteSefazCobr);
begin
  if Value <> FCobr then
  begin
    FCobr.Free;
    FCobr := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetInfCteSub(const Value: TCteSefazInfCteSub);
begin
  if Value <> FInfCteSub then
  begin
    FInfCteSub.Free;
    FInfCteSub := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetInfGlobalizado(const Value: TCteSefazInfGlobalizado);
begin
  if Value <> FInfGlobalizado then
  begin
    FInfGlobalizado.Free;
    FInfGlobalizado := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetInfServVinc(const Value: TCteSefazInfServVinc);
begin
  if Value <> FInfServVinc then
  begin
    FInfServVinc.Free;
    FInfServVinc := Value;
  end;
end;

{ TCteSefazInfCteComp }

procedure TCteSefazInfCteComp.SetChCTe(const Value: string);
begin
  FChCTe := Value;
  FChCTeHasValue := True;
end;

{ TCteSefazInfCteAnu }

procedure TCteSefazInfCteAnu.SetChCte(const Value: string);
begin
  FChCte := Value;
  FChCteHasValue := True;
end;

procedure TCteSefazInfCteAnu.SetDEmi(const Value: TDate);
begin
  FDEmi := Value;
  FDEmiHasValue := True;
end;

{ TCteSefazAutXML }

procedure TCteSefazAutXML.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazAutXML.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

{ TCteSefazRespTec }

procedure TCteSefazRespTec.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazRespTec.SetXContato(const Value: string);
begin
  FXContato := Value;
  FXContatoHasValue := True;
end;

procedure TCteSefazRespTec.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

procedure TCteSefazRespTec.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TCteSefazRespTec.SetIdCSRT(const Value: Integer);
begin
  FIdCSRT := Value;
  FIdCSRTHasValue := True;
end;

procedure TCteSefazRespTec.SetHashCSRT(const Value: string);
begin
  FHashCSRT := Value;
  FHashCSRTHasValue := True;
end;

{ TCteSefazInfSolicNFF }

procedure TCteSefazInfSolicNFF.SetXSolic(const Value: string);
begin
  FXSolic := Value;
  FXSolicHasValue := True;
end;

{ TCteSefazInfCte }

destructor TCteSefazInfCte.Destroy;
begin
  FInfSolicNFF.Free;
  FInfRespTec.Free;
  FAutXML.Free;
  FInfCteAnu.Free;
  FInfCteComp.Free;
  FInfCTeNorm.Free;
  FImp.Free;
  FVPrest.Free;
  FDest.Free;
  FReceb.Free;
  FExped.Free;
  FRem.Free;
  FEmit.Free;
  FCompl.Free;
  FIde.Free;
  inherited;
end;

procedure TCteSefazInfCte.SetVersao(const Value: string);
begin
  FVersao := Value;
  FVersaoHasValue := True;
end;

procedure TCteSefazInfCte.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TCteSefazInfCte.SetIde(const Value: TCteSefazIde);
begin
  if Value <> FIde then
  begin
    FIde.Free;
    FIde := Value;
  end;
end;

procedure TCteSefazInfCte.SetCompl(const Value: TCteSefazCompl);
begin
  if Value <> FCompl then
  begin
    FCompl.Free;
    FCompl := Value;
  end;
end;

procedure TCteSefazInfCte.SetEmit(const Value: TCteSefazEmit);
begin
  if Value <> FEmit then
  begin
    FEmit.Free;
    FEmit := Value;
  end;
end;

procedure TCteSefazInfCte.SetRem(const Value: TCteSefazRem);
begin
  if Value <> FRem then
  begin
    FRem.Free;
    FRem := Value;
  end;
end;

procedure TCteSefazInfCte.SetExped(const Value: TCteSefazExped);
begin
  if Value <> FExped then
  begin
    FExped.Free;
    FExped := Value;
  end;
end;

procedure TCteSefazInfCte.SetReceb(const Value: TCteSefazReceb);
begin
  if Value <> FReceb then
  begin
    FReceb.Free;
    FReceb := Value;
  end;
end;

procedure TCteSefazInfCte.SetDest(const Value: TCteSefazDest);
begin
  if Value <> FDest then
  begin
    FDest.Free;
    FDest := Value;
  end;
end;

procedure TCteSefazInfCte.SetVPrest(const Value: TCteSefazVPrest);
begin
  if Value <> FVPrest then
  begin
    FVPrest.Free;
    FVPrest := Value;
  end;
end;

procedure TCteSefazInfCte.SetImp(const Value: TCteSefazInfCteImp);
begin
  if Value <> FImp then
  begin
    FImp.Free;
    FImp := Value;
  end;
end;

procedure TCteSefazInfCte.SetInfCTeNorm(const Value: TCteSefazInfCTeNorm);
begin
  if Value <> FInfCTeNorm then
  begin
    FInfCTeNorm.Free;
    FInfCTeNorm := Value;
  end;
end;

procedure TCteSefazInfCte.SetInfCteComp(const Value: TCteSefazInfCteComp);
begin
  if Value <> FInfCteComp then
  begin
    FInfCteComp.Free;
    FInfCteComp := Value;
  end;
end;

procedure TCteSefazInfCte.SetInfCteAnu(const Value: TCteSefazInfCteAnu);
begin
  if Value <> FInfCteAnu then
  begin
    FInfCteAnu.Free;
    FInfCteAnu := Value;
  end;
end;

procedure TCteSefazInfCte.SetAutXML(const Value: TCteSefazAutXMLList);
begin
  if Value <> FAutXML then
  begin
    FAutXML.Free;
    FAutXML := Value;
  end;
end;

procedure TCteSefazInfCte.SetInfRespTec(const Value: TCteSefazRespTec);
begin
  if Value <> FInfRespTec then
  begin
    FInfRespTec.Free;
    FInfRespTec := Value;
  end;
end;

procedure TCteSefazInfCte.SetInfSolicNFF(const Value: TCteSefazInfSolicNFF);
begin
  if Value <> FInfSolicNFF then
  begin
    FInfSolicNFF.Free;
    FInfSolicNFF := Value;
  end;
end;

{ TCteSefazInfCTeSupl }

procedure TCteSefazInfCTeSupl.SetQrCodCTe(const Value: string);
begin
  FQrCodCTe := Value;
  FQrCodCTeHasValue := True;
end;

{ TCtePedidoEmissao }

destructor TCtePedidoEmissao.Destroy;
begin
  FInfCTeSupl.Free;
  FInfCte.Free;
  inherited;
end;

procedure TCtePedidoEmissao.SetInfCte(const Value: TCteSefazInfCte);
begin
  if Value <> FInfCte then
  begin
    FInfCte.Free;
    FInfCte := Value;
  end;
end;

procedure TCtePedidoEmissao.SetInfCTeSupl(const Value: TCteSefazInfCTeSupl);
begin
  if Value <> FInfCTeSupl then
  begin
    FInfCTeSupl.Free;
    FInfCTeSupl := Value;
  end;
end;

procedure TCtePedidoEmissao.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TCtePedidoEmissao.SetReferencia(const Value: string);
begin
  FReferencia := Value;
  FReferenciaHasValue := True;
end;

{ TCtePedidoEmissaoLote }

destructor TCtePedidoEmissaoLote.Destroy;
begin
  FDocumentos.Free;
  inherited;
end;

procedure TCtePedidoEmissaoLote.SetDocumentos(const Value: TCtePedidoEmissaoList);
begin
  if Value <> FDocumentos then
  begin
    FDocumentos.Free;
    FDocumentos := Value;
  end;
end;

procedure TCtePedidoEmissaoLote.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TCtePedidoEmissaoLote.SetReferencia(const Value: string);
begin
  FReferencia := Value;
  FReferenciaHasValue := True;
end;

procedure TCtePedidoEmissaoLote.SetIdLote(const Value: string);
begin
  FIdLote := Value;
  FIdLoteHasValue := True;
end;

{ TDfeRecibo }

procedure TDfeRecibo.SetNumero(const Value: string);
begin
  FNumero := Value;
  FNumeroHasValue := True;
end;

procedure TDfeRecibo.SetCodigoStatus(const Value: Integer);
begin
  FCodigoStatus := Value;
  FCodigoStatusHasValue := True;
end;

procedure TDfeRecibo.SetMotivoStatus(const Value: string);
begin
  FMotivoStatus := Value;
  FMotivoStatusHasValue := True;
end;

procedure TDfeRecibo.SetDataRecebimento(const Value: TDateTime);
begin
  FDataRecebimento := Value;
  FDataRecebimentoHasValue := True;
end;

procedure TDfeRecibo.SetCodigoMensagem(const Value: Integer);
begin
  FCodigoMensagem := Value;
  FCodigoMensagemHasValue := True;
end;

procedure TDfeRecibo.SetMensagem(const Value: string);
begin
  FMensagem := Value;
  FMensagemHasValue := True;
end;

{ TDfeAutorEvento }

procedure TDfeAutorEvento.SetCpfCnpj(const Value: string);
begin
  FCpfCnpj := Value;
  FCpfCnpjHasValue := True;
end;

{ TDfeAutorizacao }

destructor TDfeAutorizacao.Destroy;
begin
  FAutor.Free;
  inherited;
end;

procedure TDfeAutorizacao.SetDigestValue(const Value: string);
begin
  FDigestValue := Value;
  FDigestValueHasValue := True;
end;

procedure TDfeAutorizacao.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TDfeAutorizacao.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TDfeAutorizacao.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TDfeAutorizacao.SetAutor(const Value: TDfeAutorEvento);
begin
  if Value <> FAutor then
  begin
    FAutor.Free;
    FAutor := Value;
  end;
end;

procedure TDfeAutorizacao.SetChaveAcesso(const Value: string);
begin
  FChaveAcesso := Value;
  FChaveAcessoHasValue := True;
end;

procedure TDfeAutorizacao.SetDataEvento(const Value: TDateTime);
begin
  FDataEvento := Value;
  FDataEventoHasValue := True;
end;

procedure TDfeAutorizacao.SetNumeroSequencial(const Value: Integer);
begin
  FNumeroSequencial := Value;
  FNumeroSequencialHasValue := True;
end;

procedure TDfeAutorizacao.SetDataRecebimento(const Value: TDateTime);
begin
  FDataRecebimento := Value;
  FDataRecebimentoHasValue := True;
end;

procedure TDfeAutorizacao.SetCodigoStatus(const Value: Integer);
begin
  FCodigoStatus := Value;
  FCodigoStatusHasValue := True;
end;

procedure TDfeAutorizacao.SetMotivoStatus(const Value: string);
begin
  FMotivoStatus := Value;
  FMotivoStatusHasValue := True;
end;

procedure TDfeAutorizacao.SetNumeroProtocolo(const Value: string);
begin
  FNumeroProtocolo := Value;
  FNumeroProtocoloHasValue := True;
end;

procedure TDfeAutorizacao.SetCodigoMensagem(const Value: Integer);
begin
  FCodigoMensagem := Value;
  FCodigoMensagemHasValue := True;
end;

procedure TDfeAutorizacao.SetMensagem(const Value: string);
begin
  FMensagem := Value;
  FMensagemHasValue := True;
end;

procedure TDfeAutorizacao.SetTipoEvento(const Value: string);
begin
  FTipoEvento := Value;
  FTipoEventoHasValue := True;
end;

{ TDfe }

destructor TDfe.Destroy;
begin
  FAutorizacao.Free;
  inherited;
end;

procedure TDfe.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TDfe.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TDfe.SetCreatedAt(const Value: TDateTime);
begin
  FCreatedAt := Value;
  FCreatedAtHasValue := True;
end;

procedure TDfe.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TDfe.SetReferencia(const Value: string);
begin
  FReferencia := Value;
  FReferenciaHasValue := True;
end;

procedure TDfe.SetDataEmissao(const Value: TDateTime);
begin
  FDataEmissao := Value;
  FDataEmissaoHasValue := True;
end;

procedure TDfe.SetModelo(const Value: Integer);
begin
  FModelo := Value;
  FModeloHasValue := True;
end;

procedure TDfe.SetSerie(const Value: Integer);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TDfe.SetNumero(const Value: Integer);
begin
  FNumero := Value;
  FNumeroHasValue := True;
end;

procedure TDfe.SetValorTotal(const Value: Double);
begin
  FValorTotal := Value;
  FValorTotalHasValue := True;
end;

procedure TDfe.SetChave(const Value: string);
begin
  FChave := Value;
  FChaveHasValue := True;
end;

procedure TDfe.SetAutorizacao(const Value: TDfeAutorizacao);
begin
  if Value <> FAutorizacao then
  begin
    FAutorizacao.Free;
    FAutorizacao := Value;
  end;
end;

{ TDfeLote }

destructor TDfeLote.Destroy;
begin
  FDocumentos.Free;
  FRecibo.Free;
  inherited;
end;

procedure TDfeLote.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TDfeLote.SetCreatedAt(const Value: TDateTime);
begin
  FCreatedAt := Value;
  FCreatedAtHasValue := True;
end;

procedure TDfeLote.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TDfeLote.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TDfeLote.SetReferencia(const Value: string);
begin
  FReferencia := Value;
  FReferenciaHasValue := True;
end;

procedure TDfeLote.SetIdLote(const Value: string);
begin
  FIdLote := Value;
  FIdLoteHasValue := True;
end;

procedure TDfeLote.SetRecibo(const Value: TDfeRecibo);
begin
  if Value <> FRecibo then
  begin
    FRecibo.Free;
    FRecibo := Value;
  end;
end;

procedure TDfeLote.SetDocumentos(const Value: TDfeList);
begin
  if Value <> FDocumentos then
  begin
    FDocumentos.Free;
    FDocumentos := Value;
  end;
end;

{ TCtePedidoCancelamento }

procedure TCtePedidoCancelamento.SetJustificativa(const Value: string);
begin
  FJustificativa := Value;
  FJustificativaHasValue := True;
end;

{ TDfeCancelamento }

destructor TDfeCancelamento.Destroy;
begin
  FAutor.Free;
  inherited;
end;

procedure TDfeCancelamento.SetJustificativa(const Value: string);
begin
  FJustificativa := Value;
  FJustificativaHasValue := True;
end;

procedure TDfeCancelamento.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TDfeCancelamento.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TDfeCancelamento.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TDfeCancelamento.SetAutor(const Value: TDfeAutorEvento);
begin
  if Value <> FAutor then
  begin
    FAutor.Free;
    FAutor := Value;
  end;
end;

procedure TDfeCancelamento.SetChaveAcesso(const Value: string);
begin
  FChaveAcesso := Value;
  FChaveAcessoHasValue := True;
end;

procedure TDfeCancelamento.SetDataEvento(const Value: TDateTime);
begin
  FDataEvento := Value;
  FDataEventoHasValue := True;
end;

procedure TDfeCancelamento.SetNumeroSequencial(const Value: Integer);
begin
  FNumeroSequencial := Value;
  FNumeroSequencialHasValue := True;
end;

procedure TDfeCancelamento.SetDataRecebimento(const Value: TDateTime);
begin
  FDataRecebimento := Value;
  FDataRecebimentoHasValue := True;
end;

procedure TDfeCancelamento.SetCodigoStatus(const Value: Integer);
begin
  FCodigoStatus := Value;
  FCodigoStatusHasValue := True;
end;

procedure TDfeCancelamento.SetMotivoStatus(const Value: string);
begin
  FMotivoStatus := Value;
  FMotivoStatusHasValue := True;
end;

procedure TDfeCancelamento.SetNumeroProtocolo(const Value: string);
begin
  FNumeroProtocolo := Value;
  FNumeroProtocoloHasValue := True;
end;

procedure TDfeCancelamento.SetCodigoMensagem(const Value: Integer);
begin
  FCodigoMensagem := Value;
  FCodigoMensagemHasValue := True;
end;

procedure TDfeCancelamento.SetMensagem(const Value: string);
begin
  FMensagem := Value;
  FMensagemHasValue := True;
end;

procedure TDfeCancelamento.SetTipoEvento(const Value: string);
begin
  FTipoEvento := Value;
  FTipoEventoHasValue := True;
end;

{ TCteInfCorrecao }

procedure TCteInfCorrecao.SetGrupoAlterado(const Value: string);
begin
  FGrupoAlterado := Value;
  FGrupoAlteradoHasValue := True;
end;

procedure TCteInfCorrecao.SetCampoAlterado(const Value: string);
begin
  FCampoAlterado := Value;
  FCampoAlteradoHasValue := True;
end;

procedure TCteInfCorrecao.SetValorAlterado(const Value: string);
begin
  FValorAlterado := Value;
  FValorAlteradoHasValue := True;
end;

procedure TCteInfCorrecao.SetNumeroItemAlterado(const Value: Integer);
begin
  FNumeroItemAlterado := Value;
  FNumeroItemAlteradoHasValue := True;
end;

{ TCtePedidoCartaCorrecao }

destructor TCtePedidoCartaCorrecao.Destroy;
begin
  FCorrecoes.Free;
  inherited;
end;

procedure TCtePedidoCartaCorrecao.SetCorrecoes(const Value: TCteInfCorrecaoList);
begin
  if Value <> FCorrecoes then
  begin
    FCorrecoes.Free;
    FCorrecoes := Value;
  end;
end;

{ TCteCartaCorrecao }

destructor TCteCartaCorrecao.Destroy;
begin
  FAutor.Free;
  FCorrecoes.Free;
  inherited;
end;

procedure TCteCartaCorrecao.SetCorrecoes(const Value: TCteInfCorrecaoList);
begin
  if Value <> FCorrecoes then
  begin
    FCorrecoes.Free;
    FCorrecoes := Value;
  end;
end;

procedure TCteCartaCorrecao.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TCteCartaCorrecao.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TCteCartaCorrecao.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TCteCartaCorrecao.SetAutor(const Value: TDfeAutorEvento);
begin
  if Value <> FAutor then
  begin
    FAutor.Free;
    FAutor := Value;
  end;
end;

procedure TCteCartaCorrecao.SetChaveAcesso(const Value: string);
begin
  FChaveAcesso := Value;
  FChaveAcessoHasValue := True;
end;

procedure TCteCartaCorrecao.SetDataEvento(const Value: TDateTime);
begin
  FDataEvento := Value;
  FDataEventoHasValue := True;
end;

procedure TCteCartaCorrecao.SetNumeroSequencial(const Value: Integer);
begin
  FNumeroSequencial := Value;
  FNumeroSequencialHasValue := True;
end;

procedure TCteCartaCorrecao.SetDataRecebimento(const Value: TDateTime);
begin
  FDataRecebimento := Value;
  FDataRecebimentoHasValue := True;
end;

procedure TCteCartaCorrecao.SetCodigoStatus(const Value: Integer);
begin
  FCodigoStatus := Value;
  FCodigoStatusHasValue := True;
end;

procedure TCteCartaCorrecao.SetMotivoStatus(const Value: string);
begin
  FMotivoStatus := Value;
  FMotivoStatusHasValue := True;
end;

procedure TCteCartaCorrecao.SetNumeroProtocolo(const Value: string);
begin
  FNumeroProtocolo := Value;
  FNumeroProtocoloHasValue := True;
end;

procedure TCteCartaCorrecao.SetCodigoMensagem(const Value: Integer);
begin
  FCodigoMensagem := Value;
  FCodigoMensagemHasValue := True;
end;

procedure TCteCartaCorrecao.SetMensagem(const Value: string);
begin
  FMensagem := Value;
  FMensagemHasValue := True;
end;

procedure TCteCartaCorrecao.SetTipoEvento(const Value: string);
begin
  FTipoEvento := Value;
  FTipoEventoHasValue := True;
end;

{ TDfePedidoInutilizacao }

procedure TDfePedidoInutilizacao.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TDfePedidoInutilizacao.SetCnpj(const Value: string);
begin
  FCnpj := Value;
  FCnpjHasValue := True;
end;

procedure TDfePedidoInutilizacao.SetAno(const Value: Integer);
begin
  FAno := Value;
  FAnoHasValue := True;
end;

procedure TDfePedidoInutilizacao.SetSerie(const Value: Integer);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TDfePedidoInutilizacao.SetNumeroInicial(const Value: Integer);
begin
  FNumeroInicial := Value;
  FNumeroInicialHasValue := True;
end;

procedure TDfePedidoInutilizacao.SetNumeroFinal(const Value: Integer);
begin
  FNumeroFinal := Value;
  FNumeroFinalHasValue := True;
end;

procedure TDfePedidoInutilizacao.SetJustificativa(const Value: string);
begin
  FJustificativa := Value;
  FJustificativaHasValue := True;
end;

{ TDfeInutilizacao }

destructor TDfeInutilizacao.Destroy;
begin
  FAutor.Free;
  inherited;
end;

procedure TDfeInutilizacao.SetCnpj(const Value: string);
begin
  FCnpj := Value;
  FCnpjHasValue := True;
end;

procedure TDfeInutilizacao.SetAno(const Value: Integer);
begin
  FAno := Value;
  FAnoHasValue := True;
end;

procedure TDfeInutilizacao.SetModelo(const Value: Integer);
begin
  FModelo := Value;
  FModeloHasValue := True;
end;

procedure TDfeInutilizacao.SetSerie(const Value: Integer);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TDfeInutilizacao.SetNumeroInicial(const Value: Integer);
begin
  FNumeroInicial := Value;
  FNumeroInicialHasValue := True;
end;

procedure TDfeInutilizacao.SetNumeroFinal(const Value: Integer);
begin
  FNumeroFinal := Value;
  FNumeroFinalHasValue := True;
end;

procedure TDfeInutilizacao.SetJustificativa(const Value: string);
begin
  FJustificativa := Value;
  FJustificativaHasValue := True;
end;

procedure TDfeInutilizacao.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TDfeInutilizacao.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TDfeInutilizacao.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TDfeInutilizacao.SetAutor(const Value: TDfeAutorEvento);
begin
  if Value <> FAutor then
  begin
    FAutor.Free;
    FAutor := Value;
  end;
end;

procedure TDfeInutilizacao.SetChaveAcesso(const Value: string);
begin
  FChaveAcesso := Value;
  FChaveAcessoHasValue := True;
end;

procedure TDfeInutilizacao.SetDataEvento(const Value: TDateTime);
begin
  FDataEvento := Value;
  FDataEventoHasValue := True;
end;

procedure TDfeInutilizacao.SetNumeroSequencial(const Value: Integer);
begin
  FNumeroSequencial := Value;
  FNumeroSequencialHasValue := True;
end;

procedure TDfeInutilizacao.SetDataRecebimento(const Value: TDateTime);
begin
  FDataRecebimento := Value;
  FDataRecebimentoHasValue := True;
end;

procedure TDfeInutilizacao.SetCodigoStatus(const Value: Integer);
begin
  FCodigoStatus := Value;
  FCodigoStatusHasValue := True;
end;

procedure TDfeInutilizacao.SetMotivoStatus(const Value: string);
begin
  FMotivoStatus := Value;
  FMotivoStatusHasValue := True;
end;

procedure TDfeInutilizacao.SetNumeroProtocolo(const Value: string);
begin
  FNumeroProtocolo := Value;
  FNumeroProtocoloHasValue := True;
end;

procedure TDfeInutilizacao.SetCodigoMensagem(const Value: Integer);
begin
  FCodigoMensagem := Value;
  FCodigoMensagemHasValue := True;
end;

procedure TDfeInutilizacao.SetMensagem(const Value: string);
begin
  FMensagem := Value;
  FMensagemHasValue := True;
end;

procedure TDfeInutilizacao.SetTipoEvento(const Value: string);
begin
  FTipoEvento := Value;
  FTipoEventoHasValue := True;
end;

{ TDfeEvento }

destructor TDfeEvento.Destroy;
begin
  FAutor.Free;
  inherited;
end;

procedure TDfeEvento.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TDfeEvento.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TDfeEvento.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TDfeEvento.SetAutor(const Value: TDfeAutorEvento);
begin
  if Value <> FAutor then
  begin
    FAutor.Free;
    FAutor := Value;
  end;
end;

procedure TDfeEvento.SetChaveAcesso(const Value: string);
begin
  FChaveAcesso := Value;
  FChaveAcessoHasValue := True;
end;

procedure TDfeEvento.SetDataEvento(const Value: TDateTime);
begin
  FDataEvento := Value;
  FDataEventoHasValue := True;
end;

procedure TDfeEvento.SetNumeroSequencial(const Value: Integer);
begin
  FNumeroSequencial := Value;
  FNumeroSequencialHasValue := True;
end;

procedure TDfeEvento.SetDataRecebimento(const Value: TDateTime);
begin
  FDataRecebimento := Value;
  FDataRecebimentoHasValue := True;
end;

procedure TDfeEvento.SetCodigoStatus(const Value: Integer);
begin
  FCodigoStatus := Value;
  FCodigoStatusHasValue := True;
end;

procedure TDfeEvento.SetMotivoStatus(const Value: string);
begin
  FMotivoStatus := Value;
  FMotivoStatusHasValue := True;
end;

procedure TDfeEvento.SetNumeroProtocolo(const Value: string);
begin
  FNumeroProtocolo := Value;
  FNumeroProtocoloHasValue := True;
end;

procedure TDfeEvento.SetCodigoMensagem(const Value: Integer);
begin
  FCodigoMensagem := Value;
  FCodigoMensagemHasValue := True;
end;

procedure TDfeEvento.SetMensagem(const Value: string);
begin
  FMensagem := Value;
  FMensagemHasValue := True;
end;

procedure TDfeEvento.SetTipoEvento(const Value: string);
begin
  FTipoEvento := Value;
  FTipoEventoHasValue := True;
end;

{ TMdfeSefazInfMunCarrega }

procedure TMdfeSefazInfMunCarrega.SetCMunCarrega(const Value: Integer);
begin
  FCMunCarrega := Value;
  FCMunCarregaHasValue := True;
end;

procedure TMdfeSefazInfMunCarrega.SetXMunCarrega(const Value: string);
begin
  FXMunCarrega := Value;
  FXMunCarregaHasValue := True;
end;

{ TMdfeSefazInfPercurso }

procedure TMdfeSefazInfPercurso.SetUFPer(const Value: string);
begin
  FUFPer := Value;
  FUFPerHasValue := True;
end;

{ TMdfeSefazIde }

destructor TMdfeSefazIde.Destroy;
begin
  FInfPercurso.Free;
  FInfMunCarrega.Free;
  inherited;
end;

procedure TMdfeSefazIde.SetCUF(const Value: Integer);
begin
  FCUF := Value;
  FCUFHasValue := True;
end;

procedure TMdfeSefazIde.SetTpAmb(const Value: Integer);
begin
  FTpAmb := Value;
  FTpAmbHasValue := True;
end;

procedure TMdfeSefazIde.SetTpEmit(const Value: Integer);
begin
  FTpEmit := Value;
  FTpEmitHasValue := True;
end;

procedure TMdfeSefazIde.SetTpTransp(const Value: Integer);
begin
  FTpTransp := Value;
  FTpTranspHasValue := True;
end;

procedure TMdfeSefazIde.SetMod(const Value: Integer);
begin
  FMod := Value;
  FModHasValue := True;
end;

procedure TMdfeSefazIde.SetSerie(const Value: Integer);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TMdfeSefazIde.SetNMDF(const Value: Integer);
begin
  FNMDF := Value;
  FNMDFHasValue := True;
end;

procedure TMdfeSefazIde.SetCMDF(const Value: Integer);
begin
  FCMDF := Value;
  FCMDFHasValue := True;
end;

procedure TMdfeSefazIde.SetCDV(const Value: Integer);
begin
  FCDV := Value;
  FCDVHasValue := True;
end;

procedure TMdfeSefazIde.SetModal(const Value: Integer);
begin
  FModal := Value;
  FModalHasValue := True;
end;

procedure TMdfeSefazIde.SetDhEmi(const Value: TDateTime);
begin
  FDhEmi := Value;
  FDhEmiHasValue := True;
end;

procedure TMdfeSefazIde.SetTpEmis(const Value: Integer);
begin
  FTpEmis := Value;
  FTpEmisHasValue := True;
end;

procedure TMdfeSefazIde.SetProcEmi(const Value: string);
begin
  FProcEmi := Value;
  FProcEmiHasValue := True;
end;

procedure TMdfeSefazIde.SetVerProc(const Value: string);
begin
  FVerProc := Value;
  FVerProcHasValue := True;
end;

procedure TMdfeSefazIde.SetUFIni(const Value: string);
begin
  FUFIni := Value;
  FUFIniHasValue := True;
end;

procedure TMdfeSefazIde.SetUFFim(const Value: string);
begin
  FUFFim := Value;
  FUFFimHasValue := True;
end;

procedure TMdfeSefazIde.SetInfMunCarrega(const Value: TMdfeSefazInfMunCarregaList);
begin
  if Value <> FInfMunCarrega then
  begin
    FInfMunCarrega.Free;
    FInfMunCarrega := Value;
  end;
end;

procedure TMdfeSefazIde.SetInfPercurso(const Value: TMdfeSefazInfPercursoList);
begin
  if Value <> FInfPercurso then
  begin
    FInfPercurso.Free;
    FInfPercurso := Value;
  end;
end;

procedure TMdfeSefazIde.SetDhIniViagem(const Value: TDateTime);
begin
  FDhIniViagem := Value;
  FDhIniViagemHasValue := True;
end;

procedure TMdfeSefazIde.SetIndCanalVerde(const Value: Integer);
begin
  FIndCanalVerde := Value;
  FIndCanalVerdeHasValue := True;
end;

procedure TMdfeSefazIde.SetIndCarregaPosterior(const Value: Integer);
begin
  FIndCarregaPosterior := Value;
  FIndCarregaPosteriorHasValue := True;
end;

{ TMdfeSefazEndeEmi }

procedure TMdfeSefazEndeEmi.SetXLgr(const Value: string);
begin
  FXLgr := Value;
  FXLgrHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetNro(const Value: string);
begin
  FNro := Value;
  FNroHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetXCpl(const Value: string);
begin
  FXCpl := Value;
  FXCplHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetXBairro(const Value: string);
begin
  FXBairro := Value;
  FXBairroHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetCMun(const Value: Integer);
begin
  FCMun := Value;
  FCMunHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetXMun(const Value: string);
begin
  FXMun := Value;
  FXMunHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetCEP(const Value: Integer);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

{ TMdfeSefazEmit }

destructor TMdfeSefazEmit.Destroy;
begin
  FEnderEmit.Free;
  inherited;
end;

procedure TMdfeSefazEmit.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TMdfeSefazEmit.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TMdfeSefazEmit.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TMdfeSefazEmit.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TMdfeSefazEmit.SetXFant(const Value: string);
begin
  FXFant := Value;
  FXFantHasValue := True;
end;

procedure TMdfeSefazEmit.SetEnderEmit(const Value: TMdfeSefazEndeEmi);
begin
  if Value <> FEnderEmit then
  begin
    FEnderEmit.Free;
    FEnderEmit := Value;
  end;
end;

{ TMdfeSefazAereo }

procedure TMdfeSefazAereo.SetNac(const Value: string);
begin
  FNac := Value;
  FNacHasValue := True;
end;

procedure TMdfeSefazAereo.SetMatr(const Value: string);
begin
  FMatr := Value;
  FMatrHasValue := True;
end;

procedure TMdfeSefazAereo.SetNVoo(const Value: string);
begin
  FNVoo := Value;
  FNVooHasValue := True;
end;

procedure TMdfeSefazAereo.SetCAerEmb(const Value: string);
begin
  FCAerEmb := Value;
  FCAerEmbHasValue := True;
end;

procedure TMdfeSefazAereo.SetCAerDes(const Value: string);
begin
  FCAerDes := Value;
  FCAerDesHasValue := True;
end;

procedure TMdfeSefazAereo.SetDVoo(const Value: TDate);
begin
  FDVoo := Value;
  FDVooHasValue := True;
end;

{ TMdfeSefazInfCIOT }

procedure TMdfeSefazInfCIOT.SetCIOT(const Value: string);
begin
  FCIOT := Value;
  FCIOTHasValue := True;
end;

procedure TMdfeSefazInfCIOT.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TMdfeSefazInfCIOT.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

{ TMdfeSefazDisp }

procedure TMdfeSefazDisp.SetCNPJForn(const Value: string);
begin
  FCNPJForn := Value;
  FCNPJFornHasValue := True;
end;

procedure TMdfeSefazDisp.SetCNPJPg(const Value: string);
begin
  FCNPJPg := Value;
  FCNPJPgHasValue := True;
end;

procedure TMdfeSefazDisp.SetCPFPg(const Value: string);
begin
  FCPFPg := Value;
  FCPFPgHasValue := True;
end;

procedure TMdfeSefazDisp.SetNCompra(const Value: string);
begin
  FNCompra := Value;
  FNCompraHasValue := True;
end;

procedure TMdfeSefazDisp.SetVValePed(const Value: Double);
begin
  FVValePed := Value;
  FVValePedHasValue := True;
end;

procedure TMdfeSefazDisp.SetTpValePed(const Value: string);
begin
  FTpValePed := Value;
  FTpValePedHasValue := True;
end;

{ TMdfeSefazValePed }

destructor TMdfeSefazValePed.Destroy;
begin
  FDisp.Free;
  inherited;
end;

procedure TMdfeSefazValePed.SetDisp(const Value: TMdfeSefazDispList);
begin
  if Value <> FDisp then
  begin
    FDisp.Free;
    FDisp := Value;
  end;
end;

procedure TMdfeSefazValePed.SetCategCombVeic(const Value: string);
begin
  FCategCombVeic := Value;
  FCategCombVeicHasValue := True;
end;

{ TMdfeSefazInfContratante }

procedure TMdfeSefazInfContratante.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TMdfeSefazInfContratante.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TMdfeSefazInfContratante.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TMdfeSefazInfContratante.SetIdEstrangeiro(const Value: string);
begin
  FIdEstrangeiro := Value;
  FIdEstrangeiroHasValue := True;
end;

{ TMdfeSefazComp }

procedure TMdfeSefazComp.SetTpComp(const Value: string);
begin
  FTpComp := Value;
  FTpCompHasValue := True;
end;

procedure TMdfeSefazComp.SetVComp(const Value: Double);
begin
  FVComp := Value;
  FVCompHasValue := True;
end;

procedure TMdfeSefazComp.SetXComp(const Value: string);
begin
  FXComp := Value;
  FXCompHasValue := True;
end;

{ TMdfeSefazInfPrazo }

procedure TMdfeSefazInfPrazo.SetNParcela(const Value: Integer);
begin
  FNParcela := Value;
  FNParcelaHasValue := True;
end;

procedure TMdfeSefazInfPrazo.SetDVenc(const Value: TDate);
begin
  FDVenc := Value;
  FDVencHasValue := True;
end;

procedure TMdfeSefazInfPrazo.SetVParcela(const Value: Double);
begin
  FVParcela := Value;
  FVParcelaHasValue := True;
end;

{ TMdfeSefazInfBanc }

procedure TMdfeSefazInfBanc.SetCodBanco(const Value: string);
begin
  FCodBanco := Value;
  FCodBancoHasValue := True;
end;

procedure TMdfeSefazInfBanc.SetCodAgencia(const Value: string);
begin
  FCodAgencia := Value;
  FCodAgenciaHasValue := True;
end;

procedure TMdfeSefazInfBanc.SetCNPJIPEF(const Value: string);
begin
  FCNPJIPEF := Value;
  FCNPJIPEFHasValue := True;
end;

procedure TMdfeSefazInfBanc.SetPIX(const Value: string);
begin
  FPIX := Value;
  FPIXHasValue := True;
end;

{ TMdfeSefazInfPag }

destructor TMdfeSefazInfPag.Destroy;
begin
  FInfBanc.Free;
  FInfPrazo.Free;
  FComp.Free;
  inherited;
end;

procedure TMdfeSefazInfPag.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TMdfeSefazInfPag.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TMdfeSefazInfPag.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TMdfeSefazInfPag.SetIdEstrangeiro(const Value: string);
begin
  FIdEstrangeiro := Value;
  FIdEstrangeiroHasValue := True;
end;

procedure TMdfeSefazInfPag.SetComp(const Value: TMdfeSefazCompList);
begin
  if Value <> FComp then
  begin
    FComp.Free;
    FComp := Value;
  end;
end;

procedure TMdfeSefazInfPag.SetVContrato(const Value: Double);
begin
  FVContrato := Value;
  FVContratoHasValue := True;
end;

procedure TMdfeSefazInfPag.SetIndAltoDesemp(const Value: Integer);
begin
  FIndAltoDesemp := Value;
  FIndAltoDesempHasValue := True;
end;

procedure TMdfeSefazInfPag.SetIndPag(const Value: Integer);
begin
  FIndPag := Value;
  FIndPagHasValue := True;
end;

procedure TMdfeSefazInfPag.SetVAdiant(const Value: Double);
begin
  FVAdiant := Value;
  FVAdiantHasValue := True;
end;

procedure TMdfeSefazInfPag.SetInfPrazo(const Value: TMdfeSefazInfPrazoList);
begin
  if Value <> FInfPrazo then
  begin
    FInfPrazo.Free;
    FInfPrazo := Value;
  end;
end;

procedure TMdfeSefazInfPag.SetInfBanc(const Value: TMdfeSefazInfBanc);
begin
  if Value <> FInfBanc then
  begin
    FInfBanc.Free;
    FInfBanc := Value;
  end;
end;

{ TMdfeSefazInfANTT }

destructor TMdfeSefazInfANTT.Destroy;
begin
  FInfPag.Free;
  FInfContratante.Free;
  FValePed.Free;
  FInfCIOT.Free;
  inherited;
end;

procedure TMdfeSefazInfANTT.SetRNTRC(const Value: string);
begin
  FRNTRC := Value;
  FRNTRCHasValue := True;
end;

procedure TMdfeSefazInfANTT.SetInfCIOT(const Value: TMdfeSefazInfCIOTList);
begin
  if Value <> FInfCIOT then
  begin
    FInfCIOT.Free;
    FInfCIOT := Value;
  end;
end;

procedure TMdfeSefazInfANTT.SetValePed(const Value: TMdfeSefazValePed);
begin
  if Value <> FValePed then
  begin
    FValePed.Free;
    FValePed := Value;
  end;
end;

procedure TMdfeSefazInfANTT.SetInfContratante(const Value: TMdfeSefazInfContratanteList);
begin
  if Value <> FInfContratante then
  begin
    FInfContratante.Free;
    FInfContratante := Value;
  end;
end;

procedure TMdfeSefazInfANTT.SetInfPag(const Value: TMdfeSefazInfPagList);
begin
  if Value <> FInfPag then
  begin
    FInfPag.Free;
    FInfPag := Value;
  end;
end;

{ TMdfeSefazProp }

procedure TMdfeSefazProp.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TMdfeSefazProp.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TMdfeSefazProp.SetRNTRC(const Value: string);
begin
  FRNTRC := Value;
  FRNTRCHasValue := True;
end;

procedure TMdfeSefazProp.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TMdfeSefazProp.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TMdfeSefazProp.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TMdfeSefazProp.SetTpProp(const Value: Integer);
begin
  FTpProp := Value;
  FTpPropHasValue := True;
end;

{ TMdfeSefazCondutor }

procedure TMdfeSefazCondutor.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TMdfeSefazCondutor.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

{ TMdfeSefazVeicTracao }

destructor TMdfeSefazVeicTracao.Destroy;
begin
  FCondutor.Free;
  FProp.Free;
  inherited;
end;

procedure TMdfeSefazVeicTracao.SetCInt(const Value: string);
begin
  FCInt := Value;
  FCIntHasValue := True;
end;

procedure TMdfeSefazVeicTracao.SetPlaca(const Value: string);
begin
  FPlaca := Value;
  FPlacaHasValue := True;
end;

procedure TMdfeSefazVeicTracao.SetRENAVAM(const Value: string);
begin
  FRENAVAM := Value;
  FRENAVAMHasValue := True;
end;

procedure TMdfeSefazVeicTracao.SetTara(const Value: Integer);
begin
  FTara := Value;
  FTaraHasValue := True;
end;

procedure TMdfeSefazVeicTracao.SetCapKG(const Value: Integer);
begin
  FCapKG := Value;
  FCapKGHasValue := True;
end;

procedure TMdfeSefazVeicTracao.SetCapM3(const Value: Integer);
begin
  FCapM3 := Value;
  FCapM3HasValue := True;
end;

procedure TMdfeSefazVeicTracao.SetProp(const Value: TMdfeSefazProp);
begin
  if Value <> FProp then
  begin
    FProp.Free;
    FProp := Value;
  end;
end;

procedure TMdfeSefazVeicTracao.SetCondutor(const Value: TMdfeSefazCondutorList);
begin
  if Value <> FCondutor then
  begin
    FCondutor.Free;
    FCondutor := Value;
  end;
end;

procedure TMdfeSefazVeicTracao.SetTpRod(const Value: string);
begin
  FTpRod := Value;
  FTpRodHasValue := True;
end;

procedure TMdfeSefazVeicTracao.SetTpCar(const Value: string);
begin
  FTpCar := Value;
  FTpCarHasValue := True;
end;

procedure TMdfeSefazVeicTracao.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

{ TMdfeSefazVeicReboqueProp }

procedure TMdfeSefazVeicReboqueProp.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TMdfeSefazVeicReboqueProp.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TMdfeSefazVeicReboqueProp.SetRNTRC(const Value: string);
begin
  FRNTRC := Value;
  FRNTRCHasValue := True;
end;

procedure TMdfeSefazVeicReboqueProp.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TMdfeSefazVeicReboqueProp.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TMdfeSefazVeicReboqueProp.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TMdfeSefazVeicReboqueProp.SetTpProp(const Value: Integer);
begin
  FTpProp := Value;
  FTpPropHasValue := True;
end;

{ TMdfeSefazVeicReboque }

destructor TMdfeSefazVeicReboque.Destroy;
begin
  FProp.Free;
  inherited;
end;

procedure TMdfeSefazVeicReboque.SetCInt(const Value: string);
begin
  FCInt := Value;
  FCIntHasValue := True;
end;

procedure TMdfeSefazVeicReboque.SetPlaca(const Value: string);
begin
  FPlaca := Value;
  FPlacaHasValue := True;
end;

procedure TMdfeSefazVeicReboque.SetRENAVAM(const Value: string);
begin
  FRENAVAM := Value;
  FRENAVAMHasValue := True;
end;

procedure TMdfeSefazVeicReboque.SetTara(const Value: Integer);
begin
  FTara := Value;
  FTaraHasValue := True;
end;

procedure TMdfeSefazVeicReboque.SetCapKG(const Value: Integer);
begin
  FCapKG := Value;
  FCapKGHasValue := True;
end;

procedure TMdfeSefazVeicReboque.SetCapM3(const Value: Integer);
begin
  FCapM3 := Value;
  FCapM3HasValue := True;
end;

procedure TMdfeSefazVeicReboque.SetProp(const Value: TMdfeSefazVeicReboqueProp);
begin
  if Value <> FProp then
  begin
    FProp.Free;
    FProp := Value;
  end;
end;

procedure TMdfeSefazVeicReboque.SetTpCar(const Value: string);
begin
  FTpCar := Value;
  FTpCarHasValue := True;
end;

procedure TMdfeSefazVeicReboque.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

{ TMdfeSefazLacRodo }

procedure TMdfeSefazLacRodo.SetNLacre(const Value: string);
begin
  FNLacre := Value;
  FNLacreHasValue := True;
end;

{ TMdfeSefazRodo }

destructor TMdfeSefazRodo.Destroy;
begin
  FLacRodo.Free;
  FVeicReboque.Free;
  FVeicTracao.Free;
  FInfANTT.Free;
  inherited;
end;

procedure TMdfeSefazRodo.SetInfANTT(const Value: TMdfeSefazInfANTT);
begin
  if Value <> FInfANTT then
  begin
    FInfANTT.Free;
    FInfANTT := Value;
  end;
end;

procedure TMdfeSefazRodo.SetVeicTracao(const Value: TMdfeSefazVeicTracao);
begin
  if Value <> FVeicTracao then
  begin
    FVeicTracao.Free;
    FVeicTracao := Value;
  end;
end;

procedure TMdfeSefazRodo.SetVeicReboque(const Value: TMdfeSefazVeicReboqueList);
begin
  if Value <> FVeicReboque then
  begin
    FVeicReboque.Free;
    FVeicReboque := Value;
  end;
end;

procedure TMdfeSefazRodo.SetCodAgPorto(const Value: string);
begin
  FCodAgPorto := Value;
  FCodAgPortoHasValue := True;
end;

procedure TMdfeSefazRodo.SetLacRodo(const Value: TMdfeSefazLacRodoList);
begin
  if Value <> FLacRodo then
  begin
    FLacRodo.Free;
    FLacRodo := Value;
  end;
end;

{ TMdfeSefazInfTermCarreg }

procedure TMdfeSefazInfTermCarreg.SetCTermCarreg(const Value: string);
begin
  FCTermCarreg := Value;
  FCTermCarregHasValue := True;
end;

procedure TMdfeSefazInfTermCarreg.SetXTermCarreg(const Value: string);
begin
  FXTermCarreg := Value;
  FXTermCarregHasValue := True;
end;

{ TMdfeSefazInfTermDescarreg }

procedure TMdfeSefazInfTermDescarreg.SetCTermDescarreg(const Value: string);
begin
  FCTermDescarreg := Value;
  FCTermDescarregHasValue := True;
end;

procedure TMdfeSefazInfTermDescarreg.SetXTermDescarreg(const Value: string);
begin
  FXTermDescarreg := Value;
  FXTermDescarregHasValue := True;
end;

{ TMdfeSefazInfEmbComb }

procedure TMdfeSefazInfEmbComb.SetCEmbComb(const Value: string);
begin
  FCEmbComb := Value;
  FCEmbCombHasValue := True;
end;

procedure TMdfeSefazInfEmbComb.SetXBalsa(const Value: string);
begin
  FXBalsa := Value;
  FXBalsaHasValue := True;
end;

{ TMdfeSefazInfUnidCargaVazia }

procedure TMdfeSefazInfUnidCargaVazia.SetIdUnidCargaVazia(const Value: string);
begin
  FIdUnidCargaVazia := Value;
  FIdUnidCargaVaziaHasValue := True;
end;

procedure TMdfeSefazInfUnidCargaVazia.SetTpUnidCargaVazia(const Value: Integer);
begin
  FTpUnidCargaVazia := Value;
  FTpUnidCargaVaziaHasValue := True;
end;

{ TMdfeSefazInfUnidTranspVazia }

procedure TMdfeSefazInfUnidTranspVazia.SetIdUnidTranspVazia(const Value: string);
begin
  FIdUnidTranspVazia := Value;
  FIdUnidTranspVaziaHasValue := True;
end;

procedure TMdfeSefazInfUnidTranspVazia.SetTpUnidTranspVazia(const Value: Integer);
begin
  FTpUnidTranspVazia := Value;
  FTpUnidTranspVaziaHasValue := True;
end;

{ TMdfeSefazAquav }

destructor TMdfeSefazAquav.Destroy;
begin
  FInfUnidTranspVazia.Free;
  FInfUnidCargaVazia.Free;
  FInfEmbComb.Free;
  FInfTermDescarreg.Free;
  FInfTermCarreg.Free;
  inherited;
end;

procedure TMdfeSefazAquav.SetIrin(const Value: string);
begin
  FIrin := Value;
  FIrinHasValue := True;
end;

procedure TMdfeSefazAquav.SetTpEmb(const Value: string);
begin
  FTpEmb := Value;
  FTpEmbHasValue := True;
end;

procedure TMdfeSefazAquav.SetCEmbar(const Value: string);
begin
  FCEmbar := Value;
  FCEmbarHasValue := True;
end;

procedure TMdfeSefazAquav.SetXEmbar(const Value: string);
begin
  FXEmbar := Value;
  FXEmbarHasValue := True;
end;

procedure TMdfeSefazAquav.SetNViag(const Value: string);
begin
  FNViag := Value;
  FNViagHasValue := True;
end;

procedure TMdfeSefazAquav.SetCPrtEmb(const Value: string);
begin
  FCPrtEmb := Value;
  FCPrtEmbHasValue := True;
end;

procedure TMdfeSefazAquav.SetCPrtDest(const Value: string);
begin
  FCPrtDest := Value;
  FCPrtDestHasValue := True;
end;

procedure TMdfeSefazAquav.SetPrtTrans(const Value: string);
begin
  FPrtTrans := Value;
  FPrtTransHasValue := True;
end;

procedure TMdfeSefazAquav.SetTpNav(const Value: Integer);
begin
  FTpNav := Value;
  FTpNavHasValue := True;
end;

procedure TMdfeSefazAquav.SetInfTermCarreg(const Value: TMdfeSefazInfTermCarregList);
begin
  if Value <> FInfTermCarreg then
  begin
    FInfTermCarreg.Free;
    FInfTermCarreg := Value;
  end;
end;

procedure TMdfeSefazAquav.SetInfTermDescarreg(const Value: TMdfeSefazInfTermDescarregList);
begin
  if Value <> FInfTermDescarreg then
  begin
    FInfTermDescarreg.Free;
    FInfTermDescarreg := Value;
  end;
end;

procedure TMdfeSefazAquav.SetInfEmbComb(const Value: TMdfeSefazInfEmbCombList);
begin
  if Value <> FInfEmbComb then
  begin
    FInfEmbComb.Free;
    FInfEmbComb := Value;
  end;
end;

procedure TMdfeSefazAquav.SetInfUnidCargaVazia(const Value: TMdfeSefazInfUnidCargaVaziaList);
begin
  if Value <> FInfUnidCargaVazia then
  begin
    FInfUnidCargaVazia.Free;
    FInfUnidCargaVazia := Value;
  end;
end;

procedure TMdfeSefazAquav.SetInfUnidTranspVazia(const Value: TMdfeSefazInfUnidTranspVaziaList);
begin
  if Value <> FInfUnidTranspVazia then
  begin
    FInfUnidTranspVazia.Free;
    FInfUnidTranspVazia := Value;
  end;
end;

{ TMdfeSefazTrem }

procedure TMdfeSefazTrem.SetXPref(const Value: string);
begin
  FXPref := Value;
  FXPrefHasValue := True;
end;

procedure TMdfeSefazTrem.SetDhTrem(const Value: TDateTime);
begin
  FDhTrem := Value;
  FDhTremHasValue := True;
end;

procedure TMdfeSefazTrem.SetXOri(const Value: string);
begin
  FXOri := Value;
  FXOriHasValue := True;
end;

procedure TMdfeSefazTrem.SetXDest(const Value: string);
begin
  FXDest := Value;
  FXDestHasValue := True;
end;

procedure TMdfeSefazTrem.SetQVag(const Value: Integer);
begin
  FQVag := Value;
  FQVagHasValue := True;
end;

{ TMdfeSefazVag }

procedure TMdfeSefazVag.SetPesoBC(const Value: Double);
begin
  FPesoBC := Value;
  FPesoBCHasValue := True;
end;

procedure TMdfeSefazVag.SetPesoR(const Value: Double);
begin
  FPesoR := Value;
  FPesoRHasValue := True;
end;

procedure TMdfeSefazVag.SetTpVag(const Value: string);
begin
  FTpVag := Value;
  FTpVagHasValue := True;
end;

procedure TMdfeSefazVag.SetSerie(const Value: string);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TMdfeSefazVag.SetNVag(const Value: Integer);
begin
  FNVag := Value;
  FNVagHasValue := True;
end;

procedure TMdfeSefazVag.SetNSeq(const Value: Integer);
begin
  FNSeq := Value;
  FNSeqHasValue := True;
end;

procedure TMdfeSefazVag.SetTU(const Value: Double);
begin
  FTU := Value;
  FTUHasValue := True;
end;

{ TMdfeSefazFerrov }

destructor TMdfeSefazFerrov.Destroy;
begin
  FVag.Free;
  FTrem.Free;
  inherited;
end;

procedure TMdfeSefazFerrov.SetTrem(const Value: TMdfeSefazTrem);
begin
  if Value <> FTrem then
  begin
    FTrem.Free;
    FTrem := Value;
  end;
end;

procedure TMdfeSefazFerrov.SetVag(const Value: TMdfeSefazVagList);
begin
  if Value <> FVag then
  begin
    FVag.Free;
    FVag := Value;
  end;
end;

{ TMdfeSefazInfModal }

destructor TMdfeSefazInfModal.Destroy;
begin
  FFerrov.Free;
  FAquav.Free;
  FRodo.Free;
  FAereo.Free;
  inherited;
end;

procedure TMdfeSefazInfModal.SetVersaoModal(const Value: string);
begin
  FVersaoModal := Value;
  FVersaoModalHasValue := True;
end;

procedure TMdfeSefazInfModal.SetAereo(const Value: TMdfeSefazAereo);
begin
  if Value <> FAereo then
  begin
    FAereo.Free;
    FAereo := Value;
  end;
end;

procedure TMdfeSefazInfModal.SetRodo(const Value: TMdfeSefazRodo);
begin
  if Value <> FRodo then
  begin
    FRodo.Free;
    FRodo := Value;
  end;
end;

procedure TMdfeSefazInfModal.SetAquav(const Value: TMdfeSefazAquav);
begin
  if Value <> FAquav then
  begin
    FAquav.Free;
    FAquav := Value;
  end;
end;

procedure TMdfeSefazInfModal.SetFerrov(const Value: TMdfeSefazFerrov);
begin
  if Value <> FFerrov then
  begin
    FFerrov.Free;
    FFerrov := Value;
  end;
end;

{ TMdfeSefazLacUnidTransp }

procedure TMdfeSefazLacUnidTransp.SetNLacre(const Value: string);
begin
  FNLacre := Value;
  FNLacreHasValue := True;
end;

{ TMdfeSefazLacUnidCarga }

procedure TMdfeSefazLacUnidCarga.SetNLacre(const Value: string);
begin
  FNLacre := Value;
  FNLacreHasValue := True;
end;

{ TMdfeSefazUnidCarga }

destructor TMdfeSefazUnidCarga.Destroy;
begin
  FLacUnidCarga.Free;
  inherited;
end;

procedure TMdfeSefazUnidCarga.SetTpUnidCarga(const Value: Integer);
begin
  FTpUnidCarga := Value;
  FTpUnidCargaHasValue := True;
end;

procedure TMdfeSefazUnidCarga.SetIdUnidCarga(const Value: string);
begin
  FIdUnidCarga := Value;
  FIdUnidCargaHasValue := True;
end;

procedure TMdfeSefazUnidCarga.SetLacUnidCarga(const Value: TMdfeSefazLacUnidCargaList);
begin
  if Value <> FLacUnidCarga then
  begin
    FLacUnidCarga.Free;
    FLacUnidCarga := Value;
  end;
end;

procedure TMdfeSefazUnidCarga.SetQtdRat(const Value: Double);
begin
  FQtdRat := Value;
  FQtdRatHasValue := True;
end;

{ TMdfeSefazUnidadeTransp }

destructor TMdfeSefazUnidadeTransp.Destroy;
begin
  FInfUnidCarga.Free;
  FLacUnidTransp.Free;
  inherited;
end;

procedure TMdfeSefazUnidadeTransp.SetTpUnidTransp(const Value: Integer);
begin
  FTpUnidTransp := Value;
  FTpUnidTranspHasValue := True;
end;

procedure TMdfeSefazUnidadeTransp.SetIdUnidTransp(const Value: string);
begin
  FIdUnidTransp := Value;
  FIdUnidTranspHasValue := True;
end;

procedure TMdfeSefazUnidadeTransp.SetLacUnidTransp(const Value: TMdfeSefazLacUnidTranspList);
begin
  if Value <> FLacUnidTransp then
  begin
    FLacUnidTransp.Free;
    FLacUnidTransp := Value;
  end;
end;

procedure TMdfeSefazUnidadeTransp.SetInfUnidCarga(const Value: TMdfeSefazUnidCargaList);
begin
  if Value <> FInfUnidCarga then
  begin
    FInfUnidCarga.Free;
    FInfUnidCarga := Value;
  end;
end;

procedure TMdfeSefazUnidadeTransp.SetQtdRat(const Value: Double);
begin
  FQtdRat := Value;
  FQtdRatHasValue := True;
end;

{ TMdfeSefazPeri }

procedure TMdfeSefazPeri.SetNONU(const Value: string);
begin
  FNONU := Value;
  FNONUHasValue := True;
end;

procedure TMdfeSefazPeri.SetXNomeAE(const Value: string);
begin
  FXNomeAE := Value;
  FXNomeAEHasValue := True;
end;

procedure TMdfeSefazPeri.SetXClaRisco(const Value: string);
begin
  FXClaRisco := Value;
  FXClaRiscoHasValue := True;
end;

procedure TMdfeSefazPeri.SetGrEmb(const Value: string);
begin
  FGrEmb := Value;
  FGrEmbHasValue := True;
end;

procedure TMdfeSefazPeri.SetQTotProd(const Value: string);
begin
  FQTotProd := Value;
  FQTotProdHasValue := True;
end;

procedure TMdfeSefazPeri.SetQVolTipo(const Value: string);
begin
  FQVolTipo := Value;
  FQVolTipoHasValue := True;
end;

{ TMdfeSefazInfEntregaParcial }

procedure TMdfeSefazInfEntregaParcial.SetQtdTotal(const Value: Double);
begin
  FQtdTotal := Value;
  FQtdTotalHasValue := True;
end;

procedure TMdfeSefazInfEntregaParcial.SetQtdParcial(const Value: Double);
begin
  FQtdParcial := Value;
  FQtdParcialHasValue := True;
end;

{ TMdfeSefazInfCTe }

destructor TMdfeSefazInfCTe.Destroy;
begin
  FInfEntregaParcial.Free;
  FPeri.Free;
  FInfUnidTransp.Free;
  inherited;
end;

procedure TMdfeSefazInfCTe.SetChCTe(const Value: string);
begin
  FChCTe := Value;
  FChCTeHasValue := True;
end;

procedure TMdfeSefazInfCTe.SetSegCodBarra(const Value: string);
begin
  FSegCodBarra := Value;
  FSegCodBarraHasValue := True;
end;

procedure TMdfeSefazInfCTe.SetIndReentrega(const Value: Integer);
begin
  FIndReentrega := Value;
  FIndReentregaHasValue := True;
end;

procedure TMdfeSefazInfCTe.SetInfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
begin
  if Value <> FInfUnidTransp then
  begin
    FInfUnidTransp.Free;
    FInfUnidTransp := Value;
  end;
end;

procedure TMdfeSefazInfCTe.SetPeri(const Value: TMdfeSefazPeriList);
begin
  if Value <> FPeri then
  begin
    FPeri.Free;
    FPeri := Value;
  end;
end;

procedure TMdfeSefazInfCTe.SetInfEntregaParcial(const Value: TMdfeSefazInfEntregaParcial);
begin
  if Value <> FInfEntregaParcial then
  begin
    FInfEntregaParcial.Free;
    FInfEntregaParcial := Value;
  end;
end;

{ TMdfeSefazInfNFePeri }

procedure TMdfeSefazInfNFePeri.SetNONU(const Value: string);
begin
  FNONU := Value;
  FNONUHasValue := True;
end;

procedure TMdfeSefazInfNFePeri.SetXNomeAE(const Value: string);
begin
  FXNomeAE := Value;
  FXNomeAEHasValue := True;
end;

procedure TMdfeSefazInfNFePeri.SetXClaRisco(const Value: string);
begin
  FXClaRisco := Value;
  FXClaRiscoHasValue := True;
end;

procedure TMdfeSefazInfNFePeri.SetGrEmb(const Value: string);
begin
  FGrEmb := Value;
  FGrEmbHasValue := True;
end;

procedure TMdfeSefazInfNFePeri.SetQTotProd(const Value: string);
begin
  FQTotProd := Value;
  FQTotProdHasValue := True;
end;

procedure TMdfeSefazInfNFePeri.SetQVolTipo(const Value: string);
begin
  FQVolTipo := Value;
  FQVolTipoHasValue := True;
end;

{ TMdfeSefazInfNFe }

destructor TMdfeSefazInfNFe.Destroy;
begin
  FPeri.Free;
  FInfUnidTransp.Free;
  inherited;
end;

procedure TMdfeSefazInfNFe.SetChNFe(const Value: string);
begin
  FChNFe := Value;
  FChNFeHasValue := True;
end;

procedure TMdfeSefazInfNFe.SetSegCodBarra(const Value: string);
begin
  FSegCodBarra := Value;
  FSegCodBarraHasValue := True;
end;

procedure TMdfeSefazInfNFe.SetIndReentrega(const Value: Integer);
begin
  FIndReentrega := Value;
  FIndReentregaHasValue := True;
end;

procedure TMdfeSefazInfNFe.SetInfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
begin
  if Value <> FInfUnidTransp then
  begin
    FInfUnidTransp.Free;
    FInfUnidTransp := Value;
  end;
end;

procedure TMdfeSefazInfNFe.SetPeri(const Value: TMdfeSefazInfNFePeriList);
begin
  if Value <> FPeri then
  begin
    FPeri.Free;
    FPeri := Value;
  end;
end;

{ TMdfeSefazInfMDFeTranspPeri }

procedure TMdfeSefazInfMDFeTranspPeri.SetNONU(const Value: string);
begin
  FNONU := Value;
  FNONUHasValue := True;
end;

procedure TMdfeSefazInfMDFeTranspPeri.SetXNomeAE(const Value: string);
begin
  FXNomeAE := Value;
  FXNomeAEHasValue := True;
end;

procedure TMdfeSefazInfMDFeTranspPeri.SetXClaRisco(const Value: string);
begin
  FXClaRisco := Value;
  FXClaRiscoHasValue := True;
end;

procedure TMdfeSefazInfMDFeTranspPeri.SetGrEmb(const Value: string);
begin
  FGrEmb := Value;
  FGrEmbHasValue := True;
end;

procedure TMdfeSefazInfMDFeTranspPeri.SetQTotProd(const Value: string);
begin
  FQTotProd := Value;
  FQTotProdHasValue := True;
end;

procedure TMdfeSefazInfMDFeTranspPeri.SetQVolTipo(const Value: string);
begin
  FQVolTipo := Value;
  FQVolTipoHasValue := True;
end;

{ TMdfeSefazInfMDFeTransp }

destructor TMdfeSefazInfMDFeTransp.Destroy;
begin
  FPeri.Free;
  FInfUnidTransp.Free;
  inherited;
end;

procedure TMdfeSefazInfMDFeTransp.SetChMDFe(const Value: string);
begin
  FChMDFe := Value;
  FChMDFeHasValue := True;
end;

procedure TMdfeSefazInfMDFeTransp.SetIndReentrega(const Value: Integer);
begin
  FIndReentrega := Value;
  FIndReentregaHasValue := True;
end;

procedure TMdfeSefazInfMDFeTransp.SetInfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
begin
  if Value <> FInfUnidTransp then
  begin
    FInfUnidTransp.Free;
    FInfUnidTransp := Value;
  end;
end;

procedure TMdfeSefazInfMDFeTransp.SetPeri(const Value: TMdfeSefazInfMDFeTranspPeriList);
begin
  if Value <> FPeri then
  begin
    FPeri.Free;
    FPeri := Value;
  end;
end;

{ TMdfeSefazInfMunDescarga }

destructor TMdfeSefazInfMunDescarga.Destroy;
begin
  FInfMDFeTransp.Free;
  FInfNFe.Free;
  FInfCTe.Free;
  inherited;
end;

procedure TMdfeSefazInfMunDescarga.SetCMunDescarga(const Value: Integer);
begin
  FCMunDescarga := Value;
  FCMunDescargaHasValue := True;
end;

procedure TMdfeSefazInfMunDescarga.SetXMunDescarga(const Value: string);
begin
  FXMunDescarga := Value;
  FXMunDescargaHasValue := True;
end;

procedure TMdfeSefazInfMunDescarga.SetInfCTe(const Value: TMdfeSefazInfCTeList);
begin
  if Value <> FInfCTe then
  begin
    FInfCTe.Free;
    FInfCTe := Value;
  end;
end;

procedure TMdfeSefazInfMunDescarga.SetInfNFe(const Value: TMdfeSefazInfNFeList);
begin
  if Value <> FInfNFe then
  begin
    FInfNFe.Free;
    FInfNFe := Value;
  end;
end;

procedure TMdfeSefazInfMunDescarga.SetInfMDFeTransp(const Value: TMdfeSefazInfMDFeTranspList);
begin
  if Value <> FInfMDFeTransp then
  begin
    FInfMDFeTransp.Free;
    FInfMDFeTransp := Value;
  end;
end;

{ TMdfeSefazInfDoc }

destructor TMdfeSefazInfDoc.Destroy;
begin
  FInfMunDescarga.Free;
  inherited;
end;

procedure TMdfeSefazInfDoc.SetInfMunDescarga(const Value: TMdfeSefazInfMunDescargaList);
begin
  if Value <> FInfMunDescarga then
  begin
    FInfMunDescarga.Free;
    FInfMunDescarga := Value;
  end;
end;

{ TMdfeSefazInfResp }

procedure TMdfeSefazInfResp.SetRespSeg(const Value: Integer);
begin
  FRespSeg := Value;
  FRespSegHasValue := True;
end;

procedure TMdfeSefazInfResp.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TMdfeSefazInfResp.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

{ TMdfeSefazInfSeg }

procedure TMdfeSefazInfSeg.SetXSeg(const Value: string);
begin
  FXSeg := Value;
  FXSegHasValue := True;
end;

procedure TMdfeSefazInfSeg.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

{ TMdfeSefazSeg }

destructor TMdfeSefazSeg.Destroy;
begin
  FNAver.Free;
  FInfSeg.Free;
  FInfResp.Free;
  inherited;
end;

procedure TMdfeSefazSeg.SetInfResp(const Value: TMdfeSefazInfResp);
begin
  if Value <> FInfResp then
  begin
    FInfResp.Free;
    FInfResp := Value;
  end;
end;

procedure TMdfeSefazSeg.SetInfSeg(const Value: TMdfeSefazInfSeg);
begin
  if Value <> FInfSeg then
  begin
    FInfSeg.Free;
    FInfSeg := Value;
  end;
end;

procedure TMdfeSefazSeg.SetNApol(const Value: string);
begin
  FNApol := Value;
  FNApolHasValue := True;
end;

procedure TMdfeSefazSeg.SetNAver(const Value: stringList);
begin
  if Value <> FNAver then
  begin
    FNAver.Free;
    FNAver := Value;
  end;
end;

{ TMdfeSefazInfLocalCarrega }

procedure TMdfeSefazInfLocalCarrega.SetCEP(const Value: Integer);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TMdfeSefazInfLocalCarrega.SetLatitude(const Value: Double);
begin
  FLatitude := Value;
  FLatitudeHasValue := True;
end;

procedure TMdfeSefazInfLocalCarrega.SetLongitude(const Value: Double);
begin
  FLongitude := Value;
  FLongitudeHasValue := True;
end;

{ TMdfeSefazInfLocalDescarrega }

procedure TMdfeSefazInfLocalDescarrega.SetCEP(const Value: Integer);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TMdfeSefazInfLocalDescarrega.SetLatitude(const Value: Double);
begin
  FLatitude := Value;
  FLatitudeHasValue := True;
end;

procedure TMdfeSefazInfLocalDescarrega.SetLongitude(const Value: Double);
begin
  FLongitude := Value;
  FLongitudeHasValue := True;
end;

{ TMdfeSefazInfLotacao }

destructor TMdfeSefazInfLotacao.Destroy;
begin
  FInfLocalDescarrega.Free;
  FInfLocalCarrega.Free;
  inherited;
end;

procedure TMdfeSefazInfLotacao.SetInfLocalCarrega(const Value: TMdfeSefazInfLocalCarrega);
begin
  if Value <> FInfLocalCarrega then
  begin
    FInfLocalCarrega.Free;
    FInfLocalCarrega := Value;
  end;
end;

procedure TMdfeSefazInfLotacao.SetInfLocalDescarrega(const Value: TMdfeSefazInfLocalDescarrega);
begin
  if Value <> FInfLocalDescarrega then
  begin
    FInfLocalDescarrega.Free;
    FInfLocalDescarrega := Value;
  end;
end;

{ TMdfeSefazProdPred }

destructor TMdfeSefazProdPred.Destroy;
begin
  FInfLotacao.Free;
  inherited;
end;

procedure TMdfeSefazProdPred.SetTpCarga(const Value: string);
begin
  FTpCarga := Value;
  FTpCargaHasValue := True;
end;

procedure TMdfeSefazProdPred.SetXProd(const Value: string);
begin
  FXProd := Value;
  FXProdHasValue := True;
end;

procedure TMdfeSefazProdPred.SetCEAN(const Value: string);
begin
  FCEAN := Value;
  FCEANHasValue := True;
end;

procedure TMdfeSefazProdPred.SetNCM(const Value: string);
begin
  FNCM := Value;
  FNCMHasValue := True;
end;

procedure TMdfeSefazProdPred.SetInfLotacao(const Value: TMdfeSefazInfLotacao);
begin
  if Value <> FInfLotacao then
  begin
    FInfLotacao.Free;
    FInfLotacao := Value;
  end;
end;

{ TMdfeSefazTot }

procedure TMdfeSefazTot.SetQCTe(const Value: Integer);
begin
  FQCTe := Value;
  FQCTeHasValue := True;
end;

procedure TMdfeSefazTot.SetQNFe(const Value: Integer);
begin
  FQNFe := Value;
  FQNFeHasValue := True;
end;

procedure TMdfeSefazTot.SetQMDFe(const Value: Integer);
begin
  FQMDFe := Value;
  FQMDFeHasValue := True;
end;

procedure TMdfeSefazTot.SetVCarga(const Value: Double);
begin
  FVCarga := Value;
  FVCargaHasValue := True;
end;

procedure TMdfeSefazTot.SetCUnid(const Value: string);
begin
  FCUnid := Value;
  FCUnidHasValue := True;
end;

procedure TMdfeSefazTot.SetQCarga(const Value: Double);
begin
  FQCarga := Value;
  FQCargaHasValue := True;
end;

{ TMdfeSefazLacres }

procedure TMdfeSefazLacres.SetNLacre(const Value: string);
begin
  FNLacre := Value;
  FNLacreHasValue := True;
end;

{ TMdfeSefazAutXML }

procedure TMdfeSefazAutXML.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TMdfeSefazAutXML.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

{ TMdfeSefazInfAdic }

procedure TMdfeSefazInfAdic.SetInfAdFisco(const Value: string);
begin
  FInfAdFisco := Value;
  FInfAdFiscoHasValue := True;
end;

procedure TMdfeSefazInfAdic.SetInfCpl(const Value: string);
begin
  FInfCpl := Value;
  FInfCplHasValue := True;
end;

{ TMdfeSefazRespTec }

procedure TMdfeSefazRespTec.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TMdfeSefazRespTec.SetXContato(const Value: string);
begin
  FXContato := Value;
  FXContatoHasValue := True;
end;

procedure TMdfeSefazRespTec.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

procedure TMdfeSefazRespTec.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TMdfeSefazRespTec.SetIdCSRT(const Value: Integer);
begin
  FIdCSRT := Value;
  FIdCSRTHasValue := True;
end;

procedure TMdfeSefazRespTec.SetHashCSRT(const Value: string);
begin
  FHashCSRT := Value;
  FHashCSRTHasValue := True;
end;

{ TMdfeSefazInfSolicNFF }

procedure TMdfeSefazInfSolicNFF.SetXSolic(const Value: string);
begin
  FXSolic := Value;
  FXSolicHasValue := True;
end;

{ TMdfeSefazInfMDFe }

destructor TMdfeSefazInfMDFe.Destroy;
begin
  FInfSolicNFF.Free;
  FInfRespTec.Free;
  FInfAdic.Free;
  FAutXML.Free;
  FLacres.Free;
  FTot.Free;
  FProdPred.Free;
  FSeg.Free;
  FInfDoc.Free;
  FInfModal.Free;
  FEmit.Free;
  FIde.Free;
  inherited;
end;

procedure TMdfeSefazInfMDFe.SetVersao(const Value: string);
begin
  FVersao := Value;
  FVersaoHasValue := True;
end;

procedure TMdfeSefazInfMDFe.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TMdfeSefazInfMDFe.SetIde(const Value: TMdfeSefazIde);
begin
  if Value <> FIde then
  begin
    FIde.Free;
    FIde := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetEmit(const Value: TMdfeSefazEmit);
begin
  if Value <> FEmit then
  begin
    FEmit.Free;
    FEmit := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetInfModal(const Value: TMdfeSefazInfModal);
begin
  if Value <> FInfModal then
  begin
    FInfModal.Free;
    FInfModal := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetInfDoc(const Value: TMdfeSefazInfDoc);
begin
  if Value <> FInfDoc then
  begin
    FInfDoc.Free;
    FInfDoc := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetSeg(const Value: TMdfeSefazSegList);
begin
  if Value <> FSeg then
  begin
    FSeg.Free;
    FSeg := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetProdPred(const Value: TMdfeSefazProdPred);
begin
  if Value <> FProdPred then
  begin
    FProdPred.Free;
    FProdPred := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetTot(const Value: TMdfeSefazTot);
begin
  if Value <> FTot then
  begin
    FTot.Free;
    FTot := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetLacres(const Value: TMdfeSefazLacresList);
begin
  if Value <> FLacres then
  begin
    FLacres.Free;
    FLacres := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetAutXML(const Value: TMdfeSefazAutXMLList);
begin
  if Value <> FAutXML then
  begin
    FAutXML.Free;
    FAutXML := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetInfAdic(const Value: TMdfeSefazInfAdic);
begin
  if Value <> FInfAdic then
  begin
    FInfAdic.Free;
    FInfAdic := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetInfRespTec(const Value: TMdfeSefazRespTec);
begin
  if Value <> FInfRespTec then
  begin
    FInfRespTec.Free;
    FInfRespTec := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetInfSolicNFF(const Value: TMdfeSefazInfSolicNFF);
begin
  if Value <> FInfSolicNFF then
  begin
    FInfSolicNFF.Free;
    FInfSolicNFF := Value;
  end;
end;

{ TMdfeSefazInfMDFeSupl }

procedure TMdfeSefazInfMDFeSupl.SetQrCodMDFe(const Value: string);
begin
  FQrCodMDFe := Value;
  FQrCodMDFeHasValue := True;
end;

{ TMdfePedidoEmissao }

destructor TMdfePedidoEmissao.Destroy;
begin
  FInfMDFeSupl.Free;
  FInfMDFe.Free;
  inherited;
end;

procedure TMdfePedidoEmissao.SetInfMDFe(const Value: TMdfeSefazInfMDFe);
begin
  if Value <> FInfMDFe then
  begin
    FInfMDFe.Free;
    FInfMDFe := Value;
  end;
end;

procedure TMdfePedidoEmissao.SetInfMDFeSupl(const Value: TMdfeSefazInfMDFeSupl);
begin
  if Value <> FInfMDFeSupl then
  begin
    FInfMDFeSupl.Free;
    FInfMDFeSupl := Value;
  end;
end;

procedure TMdfePedidoEmissao.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TMdfePedidoEmissao.SetReferencia(const Value: string);
begin
  FReferencia := Value;
  FReferenciaHasValue := True;
end;

{ TMdfePedidoEmissaoLote }

destructor TMdfePedidoEmissaoLote.Destroy;
begin
  FDocumentos.Free;
  inherited;
end;

procedure TMdfePedidoEmissaoLote.SetDocumentos(const Value: TMdfePedidoEmissaoList);
begin
  if Value <> FDocumentos then
  begin
    FDocumentos.Free;
    FDocumentos := Value;
  end;
end;

procedure TMdfePedidoEmissaoLote.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TMdfePedidoEmissaoLote.SetReferencia(const Value: string);
begin
  FReferencia := Value;
  FReferenciaHasValue := True;
end;

procedure TMdfePedidoEmissaoLote.SetIdLote(const Value: string);
begin
  FIdLote := Value;
  FIdLoteHasValue := True;
end;

{ TMdfePedidoCancelamento }

procedure TMdfePedidoCancelamento.SetJustificativa(const Value: string);
begin
  FJustificativa := Value;
  FJustificativaHasValue := True;
end;

{ TMdfePedidoEncerramento }

procedure TMdfePedidoEncerramento.SetDataEncerramento(const Value: TDate);
begin
  FDataEncerramento := Value;
  FDataEncerramentoHasValue := True;
end;

procedure TMdfePedidoEncerramento.SetUf(const Value: string);
begin
  FUf := Value;
  FUfHasValue := True;
end;

procedure TMdfePedidoEncerramento.SetCodigoMunicipio(const Value: Integer);
begin
  FCodigoMunicipio := Value;
  FCodigoMunicipioHasValue := True;
end;

{ TMdfeEncerramento }

destructor TMdfeEncerramento.Destroy;
begin
  FAutor.Free;
  inherited;
end;

procedure TMdfeEncerramento.SetDataEncerramento(const Value: TDate);
begin
  FDataEncerramento := Value;
  FDataEncerramentoHasValue := True;
end;

procedure TMdfeEncerramento.SetUf(const Value: string);
begin
  FUf := Value;
  FUfHasValue := True;
end;

procedure TMdfeEncerramento.SetCodigoMunicipio(const Value: Integer);
begin
  FCodigoMunicipio := Value;
  FCodigoMunicipioHasValue := True;
end;

procedure TMdfeEncerramento.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TMdfeEncerramento.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TMdfeEncerramento.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TMdfeEncerramento.SetAutor(const Value: TDfeAutorEvento);
begin
  if Value <> FAutor then
  begin
    FAutor.Free;
    FAutor := Value;
  end;
end;

procedure TMdfeEncerramento.SetChaveAcesso(const Value: string);
begin
  FChaveAcesso := Value;
  FChaveAcessoHasValue := True;
end;

procedure TMdfeEncerramento.SetDataEvento(const Value: TDateTime);
begin
  FDataEvento := Value;
  FDataEventoHasValue := True;
end;

procedure TMdfeEncerramento.SetNumeroSequencial(const Value: Integer);
begin
  FNumeroSequencial := Value;
  FNumeroSequencialHasValue := True;
end;

procedure TMdfeEncerramento.SetDataRecebimento(const Value: TDateTime);
begin
  FDataRecebimento := Value;
  FDataRecebimentoHasValue := True;
end;

procedure TMdfeEncerramento.SetCodigoStatus(const Value: Integer);
begin
  FCodigoStatus := Value;
  FCodigoStatusHasValue := True;
end;

procedure TMdfeEncerramento.SetMotivoStatus(const Value: string);
begin
  FMotivoStatus := Value;
  FMotivoStatusHasValue := True;
end;

procedure TMdfeEncerramento.SetNumeroProtocolo(const Value: string);
begin
  FNumeroProtocolo := Value;
  FNumeroProtocoloHasValue := True;
end;

procedure TMdfeEncerramento.SetCodigoMensagem(const Value: Integer);
begin
  FCodigoMensagem := Value;
  FCodigoMensagemHasValue := True;
end;

procedure TMdfeEncerramento.SetMensagem(const Value: string);
begin
  FMensagem := Value;
  FMensagemHasValue := True;
end;

procedure TMdfeEncerramento.SetTipoEvento(const Value: string);
begin
  FTipoEvento := Value;
  FTipoEventoHasValue := True;
end;

{ TMdfePedidoInclusaoCondutor }

procedure TMdfePedidoInclusaoCondutor.SetNomeCondutor(const Value: string);
begin
  FNomeCondutor := Value;
  FNomeCondutorHasValue := True;
end;

procedure TMdfePedidoInclusaoCondutor.SetCpfCondutor(const Value: string);
begin
  FCpfCondutor := Value;
  FCpfCondutorHasValue := True;
end;

{ TMdfeInclusaoCondutor }

destructor TMdfeInclusaoCondutor.Destroy;
begin
  FAutor.Free;
  inherited;
end;

procedure TMdfeInclusaoCondutor.SetNomeCondutor(const Value: string);
begin
  FNomeCondutor := Value;
  FNomeCondutorHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetCpfCondutor(const Value: string);
begin
  FCpfCondutor := Value;
  FCpfCondutorHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetAutor(const Value: TDfeAutorEvento);
begin
  if Value <> FAutor then
  begin
    FAutor.Free;
    FAutor := Value;
  end;
end;

procedure TMdfeInclusaoCondutor.SetChaveAcesso(const Value: string);
begin
  FChaveAcesso := Value;
  FChaveAcessoHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetDataEvento(const Value: TDateTime);
begin
  FDataEvento := Value;
  FDataEventoHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetNumeroSequencial(const Value: Integer);
begin
  FNumeroSequencial := Value;
  FNumeroSequencialHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetDataRecebimento(const Value: TDateTime);
begin
  FDataRecebimento := Value;
  FDataRecebimentoHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetCodigoStatus(const Value: Integer);
begin
  FCodigoStatus := Value;
  FCodigoStatusHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetMotivoStatus(const Value: string);
begin
  FMotivoStatus := Value;
  FMotivoStatusHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetNumeroProtocolo(const Value: string);
begin
  FNumeroProtocolo := Value;
  FNumeroProtocoloHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetCodigoMensagem(const Value: Integer);
begin
  FCodigoMensagem := Value;
  FCodigoMensagemHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetMensagem(const Value: string);
begin
  FMensagem := Value;
  FMensagemHasValue := True;
end;

procedure TMdfeInclusaoCondutor.SetTipoEvento(const Value: string);
begin
  FTipoEvento := Value;
  FTipoEventoHasValue := True;
end;

{ TMdfeDocumentoVinculado }

procedure TMdfeDocumentoVinculado.SetCodigoMunicipioDescarga(const Value: Integer);
begin
  FCodigoMunicipioDescarga := Value;
  FCodigoMunicipioDescargaHasValue := True;
end;

procedure TMdfeDocumentoVinculado.SetMunicipioDescarga(const Value: string);
begin
  FMunicipioDescarga := Value;
  FMunicipioDescargaHasValue := True;
end;

procedure TMdfeDocumentoVinculado.SetChaveAcessoNfe(const Value: string);
begin
  FChaveAcessoNfe := Value;
  FChaveAcessoNfeHasValue := True;
end;

{ TMdfePedidoInclusaoDfe }

destructor TMdfePedidoInclusaoDfe.Destroy;
begin
  FDocumentos.Free;
  inherited;
end;

procedure TMdfePedidoInclusaoDfe.SetCodigoMunicipioCarrega(const Value: Integer);
begin
  FCodigoMunicipioCarrega := Value;
  FCodigoMunicipioCarregaHasValue := True;
end;

procedure TMdfePedidoInclusaoDfe.SetMunicipioCarrega(const Value: string);
begin
  FMunicipioCarrega := Value;
  FMunicipioCarregaHasValue := True;
end;

procedure TMdfePedidoInclusaoDfe.SetDocumentos(const Value: TMdfeDocumentoVinculadoList);
begin
  if Value <> FDocumentos then
  begin
    FDocumentos.Free;
    FDocumentos := Value;
  end;
end;

procedure TMdfePedidoInclusaoDfe.SetProtocoloAutorizacao(const Value: string);
begin
  FProtocoloAutorizacao := Value;
  FProtocoloAutorizacaoHasValue := True;
end;

{ TMdfeInclusaoDfe }

destructor TMdfeInclusaoDfe.Destroy;
begin
  FAutor.Free;
  FDocumentos.Free;
  inherited;
end;

procedure TMdfeInclusaoDfe.SetCodigoMunicipioCarrega(const Value: Integer);
begin
  FCodigoMunicipioCarrega := Value;
  FCodigoMunicipioCarregaHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetMunicipioCarrega(const Value: string);
begin
  FMunicipioCarrega := Value;
  FMunicipioCarregaHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetDocumentos(const Value: TMdfeDocumentoVinculadoList);
begin
  if Value <> FDocumentos then
  begin
    FDocumentos.Free;
    FDocumentos := Value;
  end;
end;

procedure TMdfeInclusaoDfe.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetAutor(const Value: TDfeAutorEvento);
begin
  if Value <> FAutor then
  begin
    FAutor.Free;
    FAutor := Value;
  end;
end;

procedure TMdfeInclusaoDfe.SetChaveAcesso(const Value: string);
begin
  FChaveAcesso := Value;
  FChaveAcessoHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetDataEvento(const Value: TDateTime);
begin
  FDataEvento := Value;
  FDataEventoHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetNumeroSequencial(const Value: Integer);
begin
  FNumeroSequencial := Value;
  FNumeroSequencialHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetDataRecebimento(const Value: TDateTime);
begin
  FDataRecebimento := Value;
  FDataRecebimentoHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetCodigoStatus(const Value: Integer);
begin
  FCodigoStatus := Value;
  FCodigoStatusHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetMotivoStatus(const Value: string);
begin
  FMotivoStatus := Value;
  FMotivoStatusHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetNumeroProtocolo(const Value: string);
begin
  FNumeroProtocolo := Value;
  FNumeroProtocoloHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetCodigoMensagem(const Value: Integer);
begin
  FCodigoMensagem := Value;
  FCodigoMensagemHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetMensagem(const Value: string);
begin
  FMensagem := Value;
  FMensagemHasValue := True;
end;

procedure TMdfeInclusaoDfe.SetTipoEvento(const Value: string);
begin
  FTipoEvento := Value;
  FTipoEventoHasValue := True;
end;

{ TNfeSefazRefNF }

procedure TNfeSefazRefNF.SetCUF(const Value: Integer);
begin
  FCUF := Value;
  FCUFHasValue := True;
end;

procedure TNfeSefazRefNF.SetAAMM(const Value: string);
begin
  FAAMM := Value;
  FAAMMHasValue := True;
end;

procedure TNfeSefazRefNF.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazRefNF.SetMod(const Value: string);
begin
  FMod := Value;
  FModHasValue := True;
end;

procedure TNfeSefazRefNF.SetSerie(const Value: Integer);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TNfeSefazRefNF.SetNNF(const Value: Integer);
begin
  FNNF := Value;
  FNNFHasValue := True;
end;

{ TNfeSefazRefNFP }

procedure TNfeSefazRefNFP.SetCUF(const Value: Integer);
begin
  FCUF := Value;
  FCUFHasValue := True;
end;

procedure TNfeSefazRefNFP.SetAAMM(const Value: string);
begin
  FAAMM := Value;
  FAAMMHasValue := True;
end;

procedure TNfeSefazRefNFP.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazRefNFP.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TNfeSefazRefNFP.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TNfeSefazRefNFP.SetMod(const Value: string);
begin
  FMod := Value;
  FModHasValue := True;
end;

procedure TNfeSefazRefNFP.SetSerie(const Value: Integer);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TNfeSefazRefNFP.SetNNF(const Value: Integer);
begin
  FNNF := Value;
  FNNFHasValue := True;
end;

{ TNfeSefazRefECF }

procedure TNfeSefazRefECF.SetMod(const Value: string);
begin
  FMod := Value;
  FModHasValue := True;
end;

procedure TNfeSefazRefECF.SetNECF(const Value: Integer);
begin
  FNECF := Value;
  FNECFHasValue := True;
end;

procedure TNfeSefazRefECF.SetNCOO(const Value: Integer);
begin
  FNCOO := Value;
  FNCOOHasValue := True;
end;

{ TNfeSefazNFref }

destructor TNfeSefazNFref.Destroy;
begin
  FRefECF.Free;
  FRefNFP.Free;
  FRefNF.Free;
  inherited;
end;

procedure TNfeSefazNFref.SetRefNFe(const Value: string);
begin
  FRefNFe := Value;
  FRefNFeHasValue := True;
end;

procedure TNfeSefazNFref.SetRefNF(const Value: TNfeSefazRefNF);
begin
  if Value <> FRefNF then
  begin
    FRefNF.Free;
    FRefNF := Value;
  end;
end;

procedure TNfeSefazNFref.SetRefNFP(const Value: TNfeSefazRefNFP);
begin
  if Value <> FRefNFP then
  begin
    FRefNFP.Free;
    FRefNFP := Value;
  end;
end;

procedure TNfeSefazNFref.SetRefCTe(const Value: string);
begin
  FRefCTe := Value;
  FRefCTeHasValue := True;
end;

procedure TNfeSefazNFref.SetRefECF(const Value: TNfeSefazRefECF);
begin
  if Value <> FRefECF then
  begin
    FRefECF.Free;
    FRefECF := Value;
  end;
end;

{ TNfeSefazIde }

destructor TNfeSefazIde.Destroy;
begin
  FNFref.Free;
  inherited;
end;

procedure TNfeSefazIde.SetCUF(const Value: Integer);
begin
  FCUF := Value;
  FCUFHasValue := True;
end;

procedure TNfeSefazIde.SetCNF(const Value: Integer);
begin
  FCNF := Value;
  FCNFHasValue := True;
end;

procedure TNfeSefazIde.SetNatOp(const Value: string);
begin
  FNatOp := Value;
  FNatOpHasValue := True;
end;

procedure TNfeSefazIde.SetMod(const Value: Integer);
begin
  FMod := Value;
  FModHasValue := True;
end;

procedure TNfeSefazIde.SetSerie(const Value: Integer);
begin
  FSerie := Value;
  FSerieHasValue := True;
end;

procedure TNfeSefazIde.SetNNF(const Value: Integer);
begin
  FNNF := Value;
  FNNFHasValue := True;
end;

procedure TNfeSefazIde.SetDhEmi(const Value: TDateTime);
begin
  FDhEmi := Value;
  FDhEmiHasValue := True;
end;

procedure TNfeSefazIde.SetDhSaiEnt(const Value: TDateTime);
begin
  FDhSaiEnt := Value;
  FDhSaiEntHasValue := True;
end;

procedure TNfeSefazIde.SetTpNF(const Value: Integer);
begin
  FTpNF := Value;
  FTpNFHasValue := True;
end;

procedure TNfeSefazIde.SetIdDest(const Value: Integer);
begin
  FIdDest := Value;
  FIdDestHasValue := True;
end;

procedure TNfeSefazIde.SetCMunFG(const Value: Integer);
begin
  FCMunFG := Value;
  FCMunFGHasValue := True;
end;

procedure TNfeSefazIde.SetTpImp(const Value: Integer);
begin
  FTpImp := Value;
  FTpImpHasValue := True;
end;

procedure TNfeSefazIde.SetTpEmis(const Value: Integer);
begin
  FTpEmis := Value;
  FTpEmisHasValue := True;
end;

procedure TNfeSefazIde.SetCDV(const Value: Integer);
begin
  FCDV := Value;
  FCDVHasValue := True;
end;

procedure TNfeSefazIde.SetTpAmb(const Value: Integer);
begin
  FTpAmb := Value;
  FTpAmbHasValue := True;
end;

procedure TNfeSefazIde.SetFinNFe(const Value: Integer);
begin
  FFinNFe := Value;
  FFinNFeHasValue := True;
end;

procedure TNfeSefazIde.SetIndFinal(const Value: Integer);
begin
  FIndFinal := Value;
  FIndFinalHasValue := True;
end;

procedure TNfeSefazIde.SetIndPres(const Value: Integer);
begin
  FIndPres := Value;
  FIndPresHasValue := True;
end;

procedure TNfeSefazIde.SetIndIntermed(const Value: Integer);
begin
  FIndIntermed := Value;
  FIndIntermedHasValue := True;
end;

procedure TNfeSefazIde.SetProcEmi(const Value: Integer);
begin
  FProcEmi := Value;
  FProcEmiHasValue := True;
end;

procedure TNfeSefazIde.SetVerProc(const Value: string);
begin
  FVerProc := Value;
  FVerProcHasValue := True;
end;

procedure TNfeSefazIde.SetDhCont(const Value: TDateTime);
begin
  FDhCont := Value;
  FDhContHasValue := True;
end;

procedure TNfeSefazIde.SetXJust(const Value: string);
begin
  FXJust := Value;
  FXJustHasValue := True;
end;

procedure TNfeSefazIde.SetNFref(const Value: TNfeSefazNFrefList);
begin
  if Value <> FNFref then
  begin
    FNFref.Free;
    FNFref := Value;
  end;
end;

{ TNfeSefazEnderEmi }

procedure TNfeSefazEnderEmi.SetXLgr(const Value: string);
begin
  FXLgr := Value;
  FXLgrHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetNro(const Value: string);
begin
  FNro := Value;
  FNroHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetXCpl(const Value: string);
begin
  FXCpl := Value;
  FXCplHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetXBairro(const Value: string);
begin
  FXBairro := Value;
  FXBairroHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetCMun(const Value: Integer);
begin
  FCMun := Value;
  FCMunHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetXMun(const Value: string);
begin
  FXMun := Value;
  FXMunHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetCEP(const Value: Integer);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetCPais(const Value: Integer);
begin
  FCPais := Value;
  FCPaisHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetXPais(const Value: string);
begin
  FXPais := Value;
  FXPaisHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

{ TNfeSefazEmit }

destructor TNfeSefazEmit.Destroy;
begin
  FEnderEmit.Free;
  inherited;
end;

procedure TNfeSefazEmit.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazEmit.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TNfeSefazEmit.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TNfeSefazEmit.SetXFant(const Value: string);
begin
  FXFant := Value;
  FXFantHasValue := True;
end;

procedure TNfeSefazEmit.SetEnderEmit(const Value: TNfeSefazEnderEmi);
begin
  if Value <> FEnderEmit then
  begin
    FEnderEmit.Free;
    FEnderEmit := Value;
  end;
end;

procedure TNfeSefazEmit.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TNfeSefazEmit.SetIEST(const Value: string);
begin
  FIEST := Value;
  FIESTHasValue := True;
end;

procedure TNfeSefazEmit.SetIM(const Value: string);
begin
  FIM := Value;
  FIMHasValue := True;
end;

procedure TNfeSefazEmit.SetCNAE(const Value: string);
begin
  FCNAE := Value;
  FCNAEHasValue := True;
end;

procedure TNfeSefazEmit.SetCRT(const Value: Integer);
begin
  FCRT := Value;
  FCRTHasValue := True;
end;

{ TNfeSefazAvulsa }

procedure TNfeSefazAvulsa.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazAvulsa.SetXOrgao(const Value: string);
begin
  FXOrgao := Value;
  FXOrgaoHasValue := True;
end;

procedure TNfeSefazAvulsa.SetMatr(const Value: string);
begin
  FMatr := Value;
  FMatrHasValue := True;
end;

procedure TNfeSefazAvulsa.SetXAgente(const Value: string);
begin
  FXAgente := Value;
  FXAgenteHasValue := True;
end;

procedure TNfeSefazAvulsa.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TNfeSefazAvulsa.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TNfeSefazAvulsa.SetNDAR(const Value: string);
begin
  FNDAR := Value;
  FNDARHasValue := True;
end;

procedure TNfeSefazAvulsa.SetDEmi(const Value: TDate);
begin
  FDEmi := Value;
  FDEmiHasValue := True;
end;

procedure TNfeSefazAvulsa.SetVDAR(const Value: Double);
begin
  FVDAR := Value;
  FVDARHasValue := True;
end;

procedure TNfeSefazAvulsa.SetRepEmi(const Value: string);
begin
  FRepEmi := Value;
  FRepEmiHasValue := True;
end;

procedure TNfeSefazAvulsa.SetDPag(const Value: TDate);
begin
  FDPag := Value;
  FDPagHasValue := True;
end;

{ TNfeSefazEndereco }

procedure TNfeSefazEndereco.SetXLgr(const Value: string);
begin
  FXLgr := Value;
  FXLgrHasValue := True;
end;

procedure TNfeSefazEndereco.SetNro(const Value: string);
begin
  FNro := Value;
  FNroHasValue := True;
end;

procedure TNfeSefazEndereco.SetXCpl(const Value: string);
begin
  FXCpl := Value;
  FXCplHasValue := True;
end;

procedure TNfeSefazEndereco.SetXBairro(const Value: string);
begin
  FXBairro := Value;
  FXBairroHasValue := True;
end;

procedure TNfeSefazEndereco.SetCMun(const Value: Integer);
begin
  FCMun := Value;
  FCMunHasValue := True;
end;

procedure TNfeSefazEndereco.SetXMun(const Value: string);
begin
  FXMun := Value;
  FXMunHasValue := True;
end;

procedure TNfeSefazEndereco.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TNfeSefazEndereco.SetCEP(const Value: Integer);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TNfeSefazEndereco.SetCPais(const Value: Integer);
begin
  FCPais := Value;
  FCPaisHasValue := True;
end;

procedure TNfeSefazEndereco.SetXPais(const Value: string);
begin
  FXPais := Value;
  FXPaisHasValue := True;
end;

procedure TNfeSefazEndereco.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

{ TNfeSefazDest }

destructor TNfeSefazDest.Destroy;
begin
  FEnderDest.Free;
  inherited;
end;

procedure TNfeSefazDest.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazDest.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TNfeSefazDest.SetIdEstrangeiro(const Value: string);
begin
  FIdEstrangeiro := Value;
  FIdEstrangeiroHasValue := True;
end;

procedure TNfeSefazDest.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TNfeSefazDest.SetEnderDest(const Value: TNfeSefazEndereco);
begin
  if Value <> FEnderDest then
  begin
    FEnderDest.Free;
    FEnderDest := Value;
  end;
end;

procedure TNfeSefazDest.SetIndIEDest(const Value: Integer);
begin
  FIndIEDest := Value;
  FIndIEDestHasValue := True;
end;

procedure TNfeSefazDest.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TNfeSefazDest.SetISUF(const Value: string);
begin
  FISUF := Value;
  FISUFHasValue := True;
end;

procedure TNfeSefazDest.SetIM(const Value: string);
begin
  FIM := Value;
  FIMHasValue := True;
end;

procedure TNfeSefazDest.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

{ TNfeSefazLocal }

procedure TNfeSefazLocal.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazLocal.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TNfeSefazLocal.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TNfeSefazLocal.SetXLgr(const Value: string);
begin
  FXLgr := Value;
  FXLgrHasValue := True;
end;

procedure TNfeSefazLocal.SetNro(const Value: string);
begin
  FNro := Value;
  FNroHasValue := True;
end;

procedure TNfeSefazLocal.SetXCpl(const Value: string);
begin
  FXCpl := Value;
  FXCplHasValue := True;
end;

procedure TNfeSefazLocal.SetXBairro(const Value: string);
begin
  FXBairro := Value;
  FXBairroHasValue := True;
end;

procedure TNfeSefazLocal.SetCMun(const Value: Integer);
begin
  FCMun := Value;
  FCMunHasValue := True;
end;

procedure TNfeSefazLocal.SetXMun(const Value: string);
begin
  FXMun := Value;
  FXMunHasValue := True;
end;

procedure TNfeSefazLocal.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TNfeSefazLocal.SetCEP(const Value: Integer);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TNfeSefazLocal.SetCPais(const Value: Integer);
begin
  FCPais := Value;
  FCPaisHasValue := True;
end;

procedure TNfeSefazLocal.SetXPais(const Value: string);
begin
  FXPais := Value;
  FXPaisHasValue := True;
end;

procedure TNfeSefazLocal.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TNfeSefazLocal.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

procedure TNfeSefazLocal.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

{ TNfeSefazAutXML }

procedure TNfeSefazAutXML.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazAutXML.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

{ TNfeSefazAdi }

procedure TNfeSefazAdi.SetNAdicao(const Value: Integer);
begin
  FNAdicao := Value;
  FNAdicaoHasValue := True;
end;

procedure TNfeSefazAdi.SetNSeqAdic(const Value: Integer);
begin
  FNSeqAdic := Value;
  FNSeqAdicHasValue := True;
end;

procedure TNfeSefazAdi.SetCFabricante(const Value: string);
begin
  FCFabricante := Value;
  FCFabricanteHasValue := True;
end;

procedure TNfeSefazAdi.SetVDescDI(const Value: Double);
begin
  FVDescDI := Value;
  FVDescDIHasValue := True;
end;

procedure TNfeSefazAdi.SetNDraw(const Value: string);
begin
  FNDraw := Value;
  FNDrawHasValue := True;
end;

{ TNfeSefazDI }

destructor TNfeSefazDI.Destroy;
begin
  FAdi.Free;
  inherited;
end;

procedure TNfeSefazDI.SetNDI(const Value: string);
begin
  FNDI := Value;
  FNDIHasValue := True;
end;

procedure TNfeSefazDI.SetDDI(const Value: TDate);
begin
  FDDI := Value;
  FDDIHasValue := True;
end;

procedure TNfeSefazDI.SetXLocDesemb(const Value: string);
begin
  FXLocDesemb := Value;
  FXLocDesembHasValue := True;
end;

procedure TNfeSefazDI.SetUFDesemb(const Value: string);
begin
  FUFDesemb := Value;
  FUFDesembHasValue := True;
end;

procedure TNfeSefazDI.SetDDesemb(const Value: TDate);
begin
  FDDesemb := Value;
  FDDesembHasValue := True;
end;

procedure TNfeSefazDI.SetTpViaTransp(const Value: Integer);
begin
  FTpViaTransp := Value;
  FTpViaTranspHasValue := True;
end;

procedure TNfeSefazDI.SetVAFRMM(const Value: Double);
begin
  FVAFRMM := Value;
  FVAFRMMHasValue := True;
end;

procedure TNfeSefazDI.SetTpIntermedio(const Value: Integer);
begin
  FTpIntermedio := Value;
  FTpIntermedioHasValue := True;
end;

procedure TNfeSefazDI.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazDI.SetUFTerceiro(const Value: string);
begin
  FUFTerceiro := Value;
  FUFTerceiroHasValue := True;
end;

procedure TNfeSefazDI.SetCExportador(const Value: string);
begin
  FCExportador := Value;
  FCExportadorHasValue := True;
end;

procedure TNfeSefazDI.SetAdi(const Value: TNfeSefazAdiList);
begin
  if Value <> FAdi then
  begin
    FAdi.Free;
    FAdi := Value;
  end;
end;

{ TNfeSefazExportInd }

procedure TNfeSefazExportInd.SetNRE(const Value: string);
begin
  FNRE := Value;
  FNREHasValue := True;
end;

procedure TNfeSefazExportInd.SetChNFe(const Value: string);
begin
  FChNFe := Value;
  FChNFeHasValue := True;
end;

procedure TNfeSefazExportInd.SetQExport(const Value: Double);
begin
  FQExport := Value;
  FQExportHasValue := True;
end;

{ TNfeSefazDetExport }

destructor TNfeSefazDetExport.Destroy;
begin
  FExportInd.Free;
  inherited;
end;

procedure TNfeSefazDetExport.SetNDraw(const Value: string);
begin
  FNDraw := Value;
  FNDrawHasValue := True;
end;

procedure TNfeSefazDetExport.SetExportInd(const Value: TNfeSefazExportInd);
begin
  if Value <> FExportInd then
  begin
    FExportInd.Free;
    FExportInd := Value;
  end;
end;

{ TNfeSefazRastro }

procedure TNfeSefazRastro.SetNLote(const Value: string);
begin
  FNLote := Value;
  FNLoteHasValue := True;
end;

procedure TNfeSefazRastro.SetQLote(const Value: Double);
begin
  FQLote := Value;
  FQLoteHasValue := True;
end;

procedure TNfeSefazRastro.SetDFab(const Value: TDate);
begin
  FDFab := Value;
  FDFabHasValue := True;
end;

procedure TNfeSefazRastro.SetDVal(const Value: TDate);
begin
  FDVal := Value;
  FDValHasValue := True;
end;

procedure TNfeSefazRastro.SetCAgreg(const Value: string);
begin
  FCAgreg := Value;
  FCAgregHasValue := True;
end;

{ TNfeSefazInfProdNFF }

procedure TNfeSefazInfProdNFF.SetCProdFisco(const Value: string);
begin
  FCProdFisco := Value;
  FCProdFiscoHasValue := True;
end;

procedure TNfeSefazInfProdNFF.SetCOperNFF(const Value: string);
begin
  FCOperNFF := Value;
  FCOperNFFHasValue := True;
end;

{ TNfeSefazInfProdEmb }

procedure TNfeSefazInfProdEmb.SetXEmb(const Value: string);
begin
  FXEmb := Value;
  FXEmbHasValue := True;
end;

procedure TNfeSefazInfProdEmb.SetQVolEmb(const Value: Double);
begin
  FQVolEmb := Value;
  FQVolEmbHasValue := True;
end;

procedure TNfeSefazInfProdEmb.SetUEmb(const Value: string);
begin
  FUEmb := Value;
  FUEmbHasValue := True;
end;

{ TNfeSefazVeicProd }

procedure TNfeSefazVeicProd.SetTpOp(const Value: Integer);
begin
  FTpOp := Value;
  FTpOpHasValue := True;
end;

procedure TNfeSefazVeicProd.SetChassi(const Value: string);
begin
  FChassi := Value;
  FChassiHasValue := True;
end;

procedure TNfeSefazVeicProd.SetCCor(const Value: string);
begin
  FCCor := Value;
  FCCorHasValue := True;
end;

procedure TNfeSefazVeicProd.SetXCor(const Value: string);
begin
  FXCor := Value;
  FXCorHasValue := True;
end;

procedure TNfeSefazVeicProd.SetPot(const Value: string);
begin
  FPot := Value;
  FPotHasValue := True;
end;

procedure TNfeSefazVeicProd.SetCilin(const Value: string);
begin
  FCilin := Value;
  FCilinHasValue := True;
end;

procedure TNfeSefazVeicProd.SetPesoL(const Value: string);
begin
  FPesoL := Value;
  FPesoLHasValue := True;
end;

procedure TNfeSefazVeicProd.SetPesoB(const Value: string);
begin
  FPesoB := Value;
  FPesoBHasValue := True;
end;

procedure TNfeSefazVeicProd.SetNSerie(const Value: string);
begin
  FNSerie := Value;
  FNSerieHasValue := True;
end;

procedure TNfeSefazVeicProd.SetTpComb(const Value: string);
begin
  FTpComb := Value;
  FTpCombHasValue := True;
end;

procedure TNfeSefazVeicProd.SetNMotor(const Value: string);
begin
  FNMotor := Value;
  FNMotorHasValue := True;
end;

procedure TNfeSefazVeicProd.SetCMT(const Value: string);
begin
  FCMT := Value;
  FCMTHasValue := True;
end;

procedure TNfeSefazVeicProd.SetDist(const Value: string);
begin
  FDist := Value;
  FDistHasValue := True;
end;

procedure TNfeSefazVeicProd.SetAnoMod(const Value: Integer);
begin
  FAnoMod := Value;
  FAnoModHasValue := True;
end;

procedure TNfeSefazVeicProd.SetAnoFab(const Value: Integer);
begin
  FAnoFab := Value;
  FAnoFabHasValue := True;
end;

procedure TNfeSefazVeicProd.SetTpPint(const Value: string);
begin
  FTpPint := Value;
  FTpPintHasValue := True;
end;

procedure TNfeSefazVeicProd.SetTpVeic(const Value: Integer);
begin
  FTpVeic := Value;
  FTpVeicHasValue := True;
end;

procedure TNfeSefazVeicProd.SetEspVeic(const Value: Integer);
begin
  FEspVeic := Value;
  FEspVeicHasValue := True;
end;

procedure TNfeSefazVeicProd.SetVIN(const Value: string);
begin
  FVIN := Value;
  FVINHasValue := True;
end;

procedure TNfeSefazVeicProd.SetCondVeic(const Value: Integer);
begin
  FCondVeic := Value;
  FCondVeicHasValue := True;
end;

procedure TNfeSefazVeicProd.SetCMod(const Value: string);
begin
  FCMod := Value;
  FCModHasValue := True;
end;

procedure TNfeSefazVeicProd.SetCCorDENATRAN(const Value: string);
begin
  FCCorDENATRAN := Value;
  FCCorDENATRANHasValue := True;
end;

procedure TNfeSefazVeicProd.SetLota(const Value: Integer);
begin
  FLota := Value;
  FLotaHasValue := True;
end;

procedure TNfeSefazVeicProd.SetTpRest(const Value: Integer);
begin
  FTpRest := Value;
  FTpRestHasValue := True;
end;

{ TNfeSefazMed }

procedure TNfeSefazMed.SetCProdANVISA(const Value: string);
begin
  FCProdANVISA := Value;
  FCProdANVISAHasValue := True;
end;

procedure TNfeSefazMed.SetXMotivoIsencao(const Value: string);
begin
  FXMotivoIsencao := Value;
  FXMotivoIsencaoHasValue := True;
end;

procedure TNfeSefazMed.SetVPMC(const Value: Double);
begin
  FVPMC := Value;
  FVPMCHasValue := True;
end;

{ TNfeSefazArma }

procedure TNfeSefazArma.SetTpArma(const Value: Integer);
begin
  FTpArma := Value;
  FTpArmaHasValue := True;
end;

procedure TNfeSefazArma.SetNSerie(const Value: string);
begin
  FNSerie := Value;
  FNSerieHasValue := True;
end;

procedure TNfeSefazArma.SetNCano(const Value: string);
begin
  FNCano := Value;
  FNCanoHasValue := True;
end;

procedure TNfeSefazArma.SetDescr(const Value: string);
begin
  FDescr := Value;
  FDescrHasValue := True;
end;

{ TNfeSefazCIDE }

procedure TNfeSefazCIDE.SetQBCProd(const Value: Double);
begin
  FQBCProd := Value;
  FQBCProdHasValue := True;
end;

procedure TNfeSefazCIDE.SetVAliqProd(const Value: Double);
begin
  FVAliqProd := Value;
  FVAliqProdHasValue := True;
end;

procedure TNfeSefazCIDE.SetVCIDE(const Value: Double);
begin
  FVCIDE := Value;
  FVCIDEHasValue := True;
end;

{ TNfeSefazEncerrante }

procedure TNfeSefazEncerrante.SetNBico(const Value: Integer);
begin
  FNBico := Value;
  FNBicoHasValue := True;
end;

procedure TNfeSefazEncerrante.SetNBomba(const Value: Integer);
begin
  FNBomba := Value;
  FNBombaHasValue := True;
end;

procedure TNfeSefazEncerrante.SetNTanque(const Value: Integer);
begin
  FNTanque := Value;
  FNTanqueHasValue := True;
end;

procedure TNfeSefazEncerrante.SetVEncIni(const Value: Double);
begin
  FVEncIni := Value;
  FVEncIniHasValue := True;
end;

procedure TNfeSefazEncerrante.SetVEncFin(const Value: Double);
begin
  FVEncFin := Value;
  FVEncFinHasValue := True;
end;

{ TNfeSefazComb }

destructor TNfeSefazComb.Destroy;
begin
  FEncerrante.Free;
  FCIDE.Free;
  inherited;
end;

procedure TNfeSefazComb.SetCProdANP(const Value: Integer);
begin
  FCProdANP := Value;
  FCProdANPHasValue := True;
end;

procedure TNfeSefazComb.SetDescANP(const Value: string);
begin
  FDescANP := Value;
  FDescANPHasValue := True;
end;

procedure TNfeSefazComb.SetPGLP(const Value: Double);
begin
  FPGLP := Value;
  FPGLPHasValue := True;
end;

procedure TNfeSefazComb.SetPGNn(const Value: Double);
begin
  FPGNn := Value;
  FPGNnHasValue := True;
end;

procedure TNfeSefazComb.SetPGNi(const Value: Double);
begin
  FPGNi := Value;
  FPGNiHasValue := True;
end;

procedure TNfeSefazComb.SetVPart(const Value: Double);
begin
  FVPart := Value;
  FVPartHasValue := True;
end;

procedure TNfeSefazComb.SetCODIF(const Value: string);
begin
  FCODIF := Value;
  FCODIFHasValue := True;
end;

procedure TNfeSefazComb.SetQTemp(const Value: Double);
begin
  FQTemp := Value;
  FQTempHasValue := True;
end;

procedure TNfeSefazComb.SetUFCons(const Value: string);
begin
  FUFCons := Value;
  FUFConsHasValue := True;
end;

procedure TNfeSefazComb.SetCIDE(const Value: TNfeSefazCIDE);
begin
  if Value <> FCIDE then
  begin
    FCIDE.Free;
    FCIDE := Value;
  end;
end;

procedure TNfeSefazComb.SetEncerrante(const Value: TNfeSefazEncerrante);
begin
  if Value <> FEncerrante then
  begin
    FEncerrante.Free;
    FEncerrante := Value;
  end;
end;

{ TNfeSefazProd }

destructor TNfeSefazProd.Destroy;
begin
  FComb.Free;
  FArma.Free;
  FMed.Free;
  FVeicProd.Free;
  FInfProdEmb.Free;
  FInfProdNFF.Free;
  FRastro.Free;
  FDetExport.Free;
  FDI.Free;
  FNVE.Free;
  inherited;
end;

procedure TNfeSefazProd.SetCProd(const Value: string);
begin
  FCProd := Value;
  FCProdHasValue := True;
end;

procedure TNfeSefazProd.SetCEAN(const Value: string);
begin
  FCEAN := Value;
  FCEANHasValue := True;
end;

procedure TNfeSefazProd.SetCBarra(const Value: string);
begin
  FCBarra := Value;
  FCBarraHasValue := True;
end;

procedure TNfeSefazProd.SetXProd(const Value: string);
begin
  FXProd := Value;
  FXProdHasValue := True;
end;

procedure TNfeSefazProd.SetNCM(const Value: string);
begin
  FNCM := Value;
  FNCMHasValue := True;
end;

procedure TNfeSefazProd.SetNVE(const Value: stringList);
begin
  if Value <> FNVE then
  begin
    FNVE.Free;
    FNVE := Value;
  end;
end;

procedure TNfeSefazProd.SetCEST(const Value: string);
begin
  FCEST := Value;
  FCESTHasValue := True;
end;

procedure TNfeSefazProd.SetIndEscala(const Value: string);
begin
  FIndEscala := Value;
  FIndEscalaHasValue := True;
end;

procedure TNfeSefazProd.SetCNPJFab(const Value: string);
begin
  FCNPJFab := Value;
  FCNPJFabHasValue := True;
end;

procedure TNfeSefazProd.SetCBenef(const Value: string);
begin
  FCBenef := Value;
  FCBenefHasValue := True;
end;

procedure TNfeSefazProd.SetEXTIPI(const Value: string);
begin
  FEXTIPI := Value;
  FEXTIPIHasValue := True;
end;

procedure TNfeSefazProd.SetCFOP(const Value: Integer);
begin
  FCFOP := Value;
  FCFOPHasValue := True;
end;

procedure TNfeSefazProd.SetUCom(const Value: string);
begin
  FUCom := Value;
  FUComHasValue := True;
end;

procedure TNfeSefazProd.SetQCom(const Value: Double);
begin
  FQCom := Value;
  FQComHasValue := True;
end;

procedure TNfeSefazProd.SetVUnCom(const Value: Double);
begin
  FVUnCom := Value;
  FVUnComHasValue := True;
end;

procedure TNfeSefazProd.SetVProd(const Value: Double);
begin
  FVProd := Value;
  FVProdHasValue := True;
end;

procedure TNfeSefazProd.SetCEANTrib(const Value: string);
begin
  FCEANTrib := Value;
  FCEANTribHasValue := True;
end;

procedure TNfeSefazProd.SetCBarraTrib(const Value: string);
begin
  FCBarraTrib := Value;
  FCBarraTribHasValue := True;
end;

procedure TNfeSefazProd.SetUTrib(const Value: string);
begin
  FUTrib := Value;
  FUTribHasValue := True;
end;

procedure TNfeSefazProd.SetQTrib(const Value: Double);
begin
  FQTrib := Value;
  FQTribHasValue := True;
end;

procedure TNfeSefazProd.SetVUnTrib(const Value: Double);
begin
  FVUnTrib := Value;
  FVUnTribHasValue := True;
end;

procedure TNfeSefazProd.SetVFrete(const Value: Double);
begin
  FVFrete := Value;
  FVFreteHasValue := True;
end;

procedure TNfeSefazProd.SetVSeg(const Value: Double);
begin
  FVSeg := Value;
  FVSegHasValue := True;
end;

procedure TNfeSefazProd.SetVDesc(const Value: Double);
begin
  FVDesc := Value;
  FVDescHasValue := True;
end;

procedure TNfeSefazProd.SetVOutro(const Value: Double);
begin
  FVOutro := Value;
  FVOutroHasValue := True;
end;

procedure TNfeSefazProd.SetIndTot(const Value: Integer);
begin
  FIndTot := Value;
  FIndTotHasValue := True;
end;

procedure TNfeSefazProd.SetDI(const Value: TNfeSefazDIList);
begin
  if Value <> FDI then
  begin
    FDI.Free;
    FDI := Value;
  end;
end;

procedure TNfeSefazProd.SetDetExport(const Value: TNfeSefazDetExportList);
begin
  if Value <> FDetExport then
  begin
    FDetExport.Free;
    FDetExport := Value;
  end;
end;

procedure TNfeSefazProd.SetXPed(const Value: string);
begin
  FXPed := Value;
  FXPedHasValue := True;
end;

procedure TNfeSefazProd.SetNItemPed(const Value: Integer);
begin
  FNItemPed := Value;
  FNItemPedHasValue := True;
end;

procedure TNfeSefazProd.SetNFCI(const Value: string);
begin
  FNFCI := Value;
  FNFCIHasValue := True;
end;

procedure TNfeSefazProd.SetRastro(const Value: TNfeSefazRastroList);
begin
  if Value <> FRastro then
  begin
    FRastro.Free;
    FRastro := Value;
  end;
end;

procedure TNfeSefazProd.SetInfProdNFF(const Value: TNfeSefazInfProdNFF);
begin
  if Value <> FInfProdNFF then
  begin
    FInfProdNFF.Free;
    FInfProdNFF := Value;
  end;
end;

procedure TNfeSefazProd.SetInfProdEmb(const Value: TNfeSefazInfProdEmb);
begin
  if Value <> FInfProdEmb then
  begin
    FInfProdEmb.Free;
    FInfProdEmb := Value;
  end;
end;

procedure TNfeSefazProd.SetVeicProd(const Value: TNfeSefazVeicProd);
begin
  if Value <> FVeicProd then
  begin
    FVeicProd.Free;
    FVeicProd := Value;
  end;
end;

procedure TNfeSefazProd.SetMed(const Value: TNfeSefazMed);
begin
  if Value <> FMed then
  begin
    FMed.Free;
    FMed := Value;
  end;
end;

procedure TNfeSefazProd.SetArma(const Value: TNfeSefazArmaList);
begin
  if Value <> FArma then
  begin
    FArma.Free;
    FArma := Value;
  end;
end;

procedure TNfeSefazProd.SetComb(const Value: TNfeSefazComb);
begin
  if Value <> FComb then
  begin
    FComb.Free;
    FComb := Value;
  end;
end;

procedure TNfeSefazProd.SetNRECOPI(const Value: string);
begin
  FNRECOPI := Value;
  FNRECOPIHasValue := True;
end;

{ TNfeSefazICMS00 }

procedure TNfeSefazICMS00.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMS00.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS00.SetModBC(const Value: Integer);
begin
  FModBC := Value;
  FModBCHasValue := True;
end;

procedure TNfeSefazICMS00.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazICMS00.SetPICMS(const Value: Double);
begin
  FPICMS := Value;
  FPICMSHasValue := True;
end;

procedure TNfeSefazICMS00.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

procedure TNfeSefazICMS00.SetPFCP(const Value: Double);
begin
  FPFCP := Value;
  FPFCPHasValue := True;
end;

procedure TNfeSefazICMS00.SetVFCP(const Value: Double);
begin
  FVFCP := Value;
  FVFCPHasValue := True;
end;

{ TNfeSefazICMS10 }

procedure TNfeSefazICMS10.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMS10.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetModBC(const Value: Integer);
begin
  FModBC := Value;
  FModBCHasValue := True;
end;

procedure TNfeSefazICMS10.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazICMS10.SetPICMS(const Value: Double);
begin
  FPICMS := Value;
  FPICMSHasValue := True;
end;

procedure TNfeSefazICMS10.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

procedure TNfeSefazICMS10.SetVBCFCP(const Value: Double);
begin
  FVBCFCP := Value;
  FVBCFCPHasValue := True;
end;

procedure TNfeSefazICMS10.SetPFCP(const Value: Double);
begin
  FPFCP := Value;
  FPFCPHasValue := True;
end;

procedure TNfeSefazICMS10.SetVFCP(const Value: Double);
begin
  FVFCP := Value;
  FVFCPHasValue := True;
end;

procedure TNfeSefazICMS10.SetModBCST(const Value: Integer);
begin
  FModBCST := Value;
  FModBCSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetPMVAST(const Value: Double);
begin
  FPMVAST := Value;
  FPMVASTHasValue := True;
end;

procedure TNfeSefazICMS10.SetPRedBCST(const Value: Double);
begin
  FPRedBCST := Value;
  FPRedBCSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetVBCST(const Value: Double);
begin
  FVBCST := Value;
  FVBCSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetPICMSST(const Value: Double);
begin
  FPICMSST := Value;
  FPICMSSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetVICMSST(const Value: Double);
begin
  FVICMSST := Value;
  FVICMSSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetVBCFCPST(const Value: Double);
begin
  FVBCFCPST := Value;
  FVBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetPFCPST(const Value: Double);
begin
  FPFCPST := Value;
  FPFCPSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetVFCPST(const Value: Double);
begin
  FVFCPST := Value;
  FVFCPSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetVICMSSTDeson(const Value: Double);
begin
  FVICMSSTDeson := Value;
  FVICMSSTDesonHasValue := True;
end;

procedure TNfeSefazICMS10.SetMotDesICMSST(const Value: Integer);
begin
  FMotDesICMSST := Value;
  FMotDesICMSSTHasValue := True;
end;

{ TNfeSefazICMS20 }

procedure TNfeSefazICMS20.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMS20.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS20.SetModBC(const Value: Integer);
begin
  FModBC := Value;
  FModBCHasValue := True;
end;

procedure TNfeSefazICMS20.SetPRedBC(const Value: Double);
begin
  FPRedBC := Value;
  FPRedBCHasValue := True;
end;

procedure TNfeSefazICMS20.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazICMS20.SetPICMS(const Value: Double);
begin
  FPICMS := Value;
  FPICMSHasValue := True;
end;

procedure TNfeSefazICMS20.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

procedure TNfeSefazICMS20.SetVBCFCP(const Value: Double);
begin
  FVBCFCP := Value;
  FVBCFCPHasValue := True;
end;

procedure TNfeSefazICMS20.SetPFCP(const Value: Double);
begin
  FPFCP := Value;
  FPFCPHasValue := True;
end;

procedure TNfeSefazICMS20.SetVFCP(const Value: Double);
begin
  FVFCP := Value;
  FVFCPHasValue := True;
end;

procedure TNfeSefazICMS20.SetVICMSDeson(const Value: Double);
begin
  FVICMSDeson := Value;
  FVICMSDesonHasValue := True;
end;

procedure TNfeSefazICMS20.SetMotDesICMS(const Value: Integer);
begin
  FMotDesICMS := Value;
  FMotDesICMSHasValue := True;
end;

{ TNfeSefazICMS30 }

procedure TNfeSefazICMS30.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMS30.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetModBCST(const Value: Integer);
begin
  FModBCST := Value;
  FModBCSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetPMVAST(const Value: Double);
begin
  FPMVAST := Value;
  FPMVASTHasValue := True;
end;

procedure TNfeSefazICMS30.SetPRedBCST(const Value: Double);
begin
  FPRedBCST := Value;
  FPRedBCSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetVBCST(const Value: Double);
begin
  FVBCST := Value;
  FVBCSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetPICMSST(const Value: Double);
begin
  FPICMSST := Value;
  FPICMSSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetVICMSST(const Value: Double);
begin
  FVICMSST := Value;
  FVICMSSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetVBCFCPST(const Value: Double);
begin
  FVBCFCPST := Value;
  FVBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetPFCPST(const Value: Double);
begin
  FPFCPST := Value;
  FPFCPSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetVFCPST(const Value: Double);
begin
  FVFCPST := Value;
  FVFCPSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetVICMSDeson(const Value: Double);
begin
  FVICMSDeson := Value;
  FVICMSDesonHasValue := True;
end;

procedure TNfeSefazICMS30.SetMotDesICMS(const Value: Integer);
begin
  FMotDesICMS := Value;
  FMotDesICMSHasValue := True;
end;

{ TNfeSefazICMS40 }

procedure TNfeSefazICMS40.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMS40.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS40.SetVICMSDeson(const Value: Double);
begin
  FVICMSDeson := Value;
  FVICMSDesonHasValue := True;
end;

procedure TNfeSefazICMS40.SetMotDesICMS(const Value: Integer);
begin
  FMotDesICMS := Value;
  FMotDesICMSHasValue := True;
end;

{ TNfeSefazICMS51 }

procedure TNfeSefazICMS51.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMS51.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS51.SetModBC(const Value: Integer);
begin
  FModBC := Value;
  FModBCHasValue := True;
end;

procedure TNfeSefazICMS51.SetPRedBC(const Value: Double);
begin
  FPRedBC := Value;
  FPRedBCHasValue := True;
end;

procedure TNfeSefazICMS51.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazICMS51.SetPICMS(const Value: Double);
begin
  FPICMS := Value;
  FPICMSHasValue := True;
end;

procedure TNfeSefazICMS51.SetVICMSOp(const Value: Double);
begin
  FVICMSOp := Value;
  FVICMSOpHasValue := True;
end;

procedure TNfeSefazICMS51.SetPDif(const Value: Double);
begin
  FPDif := Value;
  FPDifHasValue := True;
end;

procedure TNfeSefazICMS51.SetVICMSDif(const Value: Double);
begin
  FVICMSDif := Value;
  FVICMSDifHasValue := True;
end;

procedure TNfeSefazICMS51.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

procedure TNfeSefazICMS51.SetVBCFCP(const Value: Double);
begin
  FVBCFCP := Value;
  FVBCFCPHasValue := True;
end;

procedure TNfeSefazICMS51.SetPFCP(const Value: Double);
begin
  FPFCP := Value;
  FPFCPHasValue := True;
end;

procedure TNfeSefazICMS51.SetVFCP(const Value: Double);
begin
  FVFCP := Value;
  FVFCPHasValue := True;
end;

procedure TNfeSefazICMS51.SetPFCPDif(const Value: Double);
begin
  FPFCPDif := Value;
  FPFCPDifHasValue := True;
end;

procedure TNfeSefazICMS51.SetVFCPDif(const Value: Double);
begin
  FVFCPDif := Value;
  FVFCPDifHasValue := True;
end;

procedure TNfeSefazICMS51.SetVFCPEfet(const Value: Double);
begin
  FVFCPEfet := Value;
  FVFCPEfetHasValue := True;
end;

{ TNfeSefazICMS60 }

procedure TNfeSefazICMS60.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMS60.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS60.SetVBCSTRet(const Value: Double);
begin
  FVBCSTRet := Value;
  FVBCSTRetHasValue := True;
end;

procedure TNfeSefazICMS60.SetPST(const Value: Double);
begin
  FPST := Value;
  FPSTHasValue := True;
end;

procedure TNfeSefazICMS60.SetVICMSSubstituto(const Value: Double);
begin
  FVICMSSubstituto := Value;
  FVICMSSubstitutoHasValue := True;
end;

procedure TNfeSefazICMS60.SetVICMSSTRet(const Value: Double);
begin
  FVICMSSTRet := Value;
  FVICMSSTRetHasValue := True;
end;

procedure TNfeSefazICMS60.SetVBCFCPSTRet(const Value: Double);
begin
  FVBCFCPSTRet := Value;
  FVBCFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMS60.SetPFCPSTRet(const Value: Double);
begin
  FPFCPSTRet := Value;
  FPFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMS60.SetVFCPSTRet(const Value: Double);
begin
  FVFCPSTRet := Value;
  FVFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMS60.SetPRedBCEfet(const Value: Double);
begin
  FPRedBCEfet := Value;
  FPRedBCEfetHasValue := True;
end;

procedure TNfeSefazICMS60.SetVBCEfet(const Value: Double);
begin
  FVBCEfet := Value;
  FVBCEfetHasValue := True;
end;

procedure TNfeSefazICMS60.SetPICMSEfet(const Value: Double);
begin
  FPICMSEfet := Value;
  FPICMSEfetHasValue := True;
end;

procedure TNfeSefazICMS60.SetVICMSEfet(const Value: Double);
begin
  FVICMSEfet := Value;
  FVICMSEfetHasValue := True;
end;

{ TNfeSefazICMS70 }

procedure TNfeSefazICMS70.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMS70.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetModBC(const Value: Integer);
begin
  FModBC := Value;
  FModBCHasValue := True;
end;

procedure TNfeSefazICMS70.SetPRedBC(const Value: Double);
begin
  FPRedBC := Value;
  FPRedBCHasValue := True;
end;

procedure TNfeSefazICMS70.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazICMS70.SetPICMS(const Value: Double);
begin
  FPICMS := Value;
  FPICMSHasValue := True;
end;

procedure TNfeSefazICMS70.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

procedure TNfeSefazICMS70.SetVBCFCP(const Value: Double);
begin
  FVBCFCP := Value;
  FVBCFCPHasValue := True;
end;

procedure TNfeSefazICMS70.SetPFCP(const Value: Double);
begin
  FPFCP := Value;
  FPFCPHasValue := True;
end;

procedure TNfeSefazICMS70.SetVFCP(const Value: Double);
begin
  FVFCP := Value;
  FVFCPHasValue := True;
end;

procedure TNfeSefazICMS70.SetModBCST(const Value: Integer);
begin
  FModBCST := Value;
  FModBCSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetPMVAST(const Value: Double);
begin
  FPMVAST := Value;
  FPMVASTHasValue := True;
end;

procedure TNfeSefazICMS70.SetPRedBCST(const Value: Double);
begin
  FPRedBCST := Value;
  FPRedBCSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetVBCST(const Value: Double);
begin
  FVBCST := Value;
  FVBCSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetPICMSST(const Value: Double);
begin
  FPICMSST := Value;
  FPICMSSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetVICMSST(const Value: Double);
begin
  FVICMSST := Value;
  FVICMSSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetVBCFCPST(const Value: Double);
begin
  FVBCFCPST := Value;
  FVBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetPFCPST(const Value: Double);
begin
  FPFCPST := Value;
  FPFCPSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetVFCPST(const Value: Double);
begin
  FVFCPST := Value;
  FVFCPSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetVICMSDeson(const Value: Double);
begin
  FVICMSDeson := Value;
  FVICMSDesonHasValue := True;
end;

procedure TNfeSefazICMS70.SetMotDesICMS(const Value: Integer);
begin
  FMotDesICMS := Value;
  FMotDesICMSHasValue := True;
end;

procedure TNfeSefazICMS70.SetVICMSSTDeson(const Value: Double);
begin
  FVICMSSTDeson := Value;
  FVICMSSTDesonHasValue := True;
end;

procedure TNfeSefazICMS70.SetMotDesICMSST(const Value: Integer);
begin
  FMotDesICMSST := Value;
  FMotDesICMSSTHasValue := True;
end;

{ TNfeSefazICMS90 }

procedure TNfeSefazICMS90.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMS90.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetModBC(const Value: Integer);
begin
  FModBC := Value;
  FModBCHasValue := True;
end;

procedure TNfeSefazICMS90.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazICMS90.SetPRedBC(const Value: Double);
begin
  FPRedBC := Value;
  FPRedBCHasValue := True;
end;

procedure TNfeSefazICMS90.SetPICMS(const Value: Double);
begin
  FPICMS := Value;
  FPICMSHasValue := True;
end;

procedure TNfeSefazICMS90.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

procedure TNfeSefazICMS90.SetVBCFCP(const Value: Double);
begin
  FVBCFCP := Value;
  FVBCFCPHasValue := True;
end;

procedure TNfeSefazICMS90.SetPFCP(const Value: Double);
begin
  FPFCP := Value;
  FPFCPHasValue := True;
end;

procedure TNfeSefazICMS90.SetVFCP(const Value: Double);
begin
  FVFCP := Value;
  FVFCPHasValue := True;
end;

procedure TNfeSefazICMS90.SetModBCST(const Value: Integer);
begin
  FModBCST := Value;
  FModBCSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetPMVAST(const Value: Double);
begin
  FPMVAST := Value;
  FPMVASTHasValue := True;
end;

procedure TNfeSefazICMS90.SetPRedBCST(const Value: Double);
begin
  FPRedBCST := Value;
  FPRedBCSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetVBCST(const Value: Double);
begin
  FVBCST := Value;
  FVBCSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetPICMSST(const Value: Double);
begin
  FPICMSST := Value;
  FPICMSSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetVICMSST(const Value: Double);
begin
  FVICMSST := Value;
  FVICMSSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetVBCFCPST(const Value: Double);
begin
  FVBCFCPST := Value;
  FVBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetPFCPST(const Value: Double);
begin
  FPFCPST := Value;
  FPFCPSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetVFCPST(const Value: Double);
begin
  FVFCPST := Value;
  FVFCPSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetVICMSDeson(const Value: Double);
begin
  FVICMSDeson := Value;
  FVICMSDesonHasValue := True;
end;

procedure TNfeSefazICMS90.SetMotDesICMS(const Value: Integer);
begin
  FMotDesICMS := Value;
  FMotDesICMSHasValue := True;
end;

procedure TNfeSefazICMS90.SetVICMSSTDeson(const Value: Double);
begin
  FVICMSSTDeson := Value;
  FVICMSSTDesonHasValue := True;
end;

procedure TNfeSefazICMS90.SetMotDesICMSST(const Value: Integer);
begin
  FMotDesICMSST := Value;
  FMotDesICMSSTHasValue := True;
end;

{ TNfeSefazICMSPart }

procedure TNfeSefazICMSPart.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMSPart.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetModBC(const Value: Integer);
begin
  FModBC := Value;
  FModBCHasValue := True;
end;

procedure TNfeSefazICMSPart.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazICMSPart.SetPRedBC(const Value: Double);
begin
  FPRedBC := Value;
  FPRedBCHasValue := True;
end;

procedure TNfeSefazICMSPart.SetPICMS(const Value: Double);
begin
  FPICMS := Value;
  FPICMSHasValue := True;
end;

procedure TNfeSefazICMSPart.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

procedure TNfeSefazICMSPart.SetModBCST(const Value: Integer);
begin
  FModBCST := Value;
  FModBCSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetPMVAST(const Value: Double);
begin
  FPMVAST := Value;
  FPMVASTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetPRedBCST(const Value: Double);
begin
  FPRedBCST := Value;
  FPRedBCSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetVBCST(const Value: Double);
begin
  FVBCST := Value;
  FVBCSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetPICMSST(const Value: Double);
begin
  FPICMSST := Value;
  FPICMSSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetVICMSST(const Value: Double);
begin
  FVICMSST := Value;
  FVICMSSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetPBCOp(const Value: Double);
begin
  FPBCOp := Value;
  FPBCOpHasValue := True;
end;

procedure TNfeSefazICMSPart.SetUFST(const Value: string);
begin
  FUFST := Value;
  FUFSTHasValue := True;
end;

{ TNfeSefazICMSST }

procedure TNfeSefazICMSST.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMSST.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMSST.SetVBCSTRet(const Value: Double);
begin
  FVBCSTRet := Value;
  FVBCSTRetHasValue := True;
end;

procedure TNfeSefazICMSST.SetPST(const Value: Double);
begin
  FPST := Value;
  FPSTHasValue := True;
end;

procedure TNfeSefazICMSST.SetVICMSSubstituto(const Value: Double);
begin
  FVICMSSubstituto := Value;
  FVICMSSubstitutoHasValue := True;
end;

procedure TNfeSefazICMSST.SetVICMSSTRet(const Value: Double);
begin
  FVICMSSTRet := Value;
  FVICMSSTRetHasValue := True;
end;

procedure TNfeSefazICMSST.SetVBCFCPSTRet(const Value: Double);
begin
  FVBCFCPSTRet := Value;
  FVBCFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSST.SetPFCPSTRet(const Value: Double);
begin
  FPFCPSTRet := Value;
  FPFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSST.SetVFCPSTRet(const Value: Double);
begin
  FVFCPSTRet := Value;
  FVFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSST.SetVBCSTDest(const Value: Double);
begin
  FVBCSTDest := Value;
  FVBCSTDestHasValue := True;
end;

procedure TNfeSefazICMSST.SetVICMSSTDest(const Value: Double);
begin
  FVICMSSTDest := Value;
  FVICMSSTDestHasValue := True;
end;

procedure TNfeSefazICMSST.SetPRedBCEfet(const Value: Double);
begin
  FPRedBCEfet := Value;
  FPRedBCEfetHasValue := True;
end;

procedure TNfeSefazICMSST.SetVBCEfet(const Value: Double);
begin
  FVBCEfet := Value;
  FVBCEfetHasValue := True;
end;

procedure TNfeSefazICMSST.SetPICMSEfet(const Value: Double);
begin
  FPICMSEfet := Value;
  FPICMSEfetHasValue := True;
end;

procedure TNfeSefazICMSST.SetVICMSEfet(const Value: Double);
begin
  FVICMSEfet := Value;
  FVICMSEfetHasValue := True;
end;

{ TNfeSefazICMSSN101 }

procedure TNfeSefazICMSSN101.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMSSN101.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
  FCSOSNHasValue := True;
end;

procedure TNfeSefazICMSSN101.SetPCredSN(const Value: Double);
begin
  FPCredSN := Value;
  FPCredSNHasValue := True;
end;

procedure TNfeSefazICMSSN101.SetVCredICMSSN(const Value: Double);
begin
  FVCredICMSSN := Value;
  FVCredICMSSNHasValue := True;
end;

{ TNfeSefazICMSSN102 }

procedure TNfeSefazICMSSN102.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMSSN102.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
  FCSOSNHasValue := True;
end;

{ TNfeSefazICMSSN201 }

procedure TNfeSefazICMSSN201.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
  FCSOSNHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetModBCST(const Value: Integer);
begin
  FModBCST := Value;
  FModBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetPMVAST(const Value: Double);
begin
  FPMVAST := Value;
  FPMVASTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetPRedBCST(const Value: Double);
begin
  FPRedBCST := Value;
  FPRedBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetVBCST(const Value: Double);
begin
  FVBCST := Value;
  FVBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetPICMSST(const Value: Double);
begin
  FPICMSST := Value;
  FPICMSSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetVICMSST(const Value: Double);
begin
  FVICMSST := Value;
  FVICMSSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetVBCFCPST(const Value: Double);
begin
  FVBCFCPST := Value;
  FVBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetPFCPST(const Value: Double);
begin
  FPFCPST := Value;
  FPFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetVFCPST(const Value: Double);
begin
  FVFCPST := Value;
  FVFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetPCredSN(const Value: Double);
begin
  FPCredSN := Value;
  FPCredSNHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetVCredICMSSN(const Value: Double);
begin
  FVCredICMSSN := Value;
  FVCredICMSSNHasValue := True;
end;

{ TNfeSefazICMSSN202 }

procedure TNfeSefazICMSSN202.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
  FCSOSNHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetModBCST(const Value: Integer);
begin
  FModBCST := Value;
  FModBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetPMVAST(const Value: Double);
begin
  FPMVAST := Value;
  FPMVASTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetPRedBCST(const Value: Double);
begin
  FPRedBCST := Value;
  FPRedBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetVBCST(const Value: Double);
begin
  FVBCST := Value;
  FVBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetPICMSST(const Value: Double);
begin
  FPICMSST := Value;
  FPICMSSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetVICMSST(const Value: Double);
begin
  FVICMSST := Value;
  FVICMSSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetVBCFCPST(const Value: Double);
begin
  FVBCFCPST := Value;
  FVBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetPFCPST(const Value: Double);
begin
  FPFCPST := Value;
  FPFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetVFCPST(const Value: Double);
begin
  FVFCPST := Value;
  FVFCPSTHasValue := True;
end;

{ TNfeSefazICMSSN500 }

procedure TNfeSefazICMSSN500.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
  FCSOSNHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetVBCSTRet(const Value: Double);
begin
  FVBCSTRet := Value;
  FVBCSTRetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetPST(const Value: Double);
begin
  FPST := Value;
  FPSTHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetVICMSSubstituto(const Value: Double);
begin
  FVICMSSubstituto := Value;
  FVICMSSubstitutoHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetVICMSSTRet(const Value: Double);
begin
  FVICMSSTRet := Value;
  FVICMSSTRetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetVBCFCPSTRet(const Value: Double);
begin
  FVBCFCPSTRet := Value;
  FVBCFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetPFCPSTRet(const Value: Double);
begin
  FPFCPSTRet := Value;
  FPFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetVFCPSTRet(const Value: Double);
begin
  FVFCPSTRet := Value;
  FVFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetPRedBCEfet(const Value: Double);
begin
  FPRedBCEfet := Value;
  FPRedBCEfetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetVBCEfet(const Value: Double);
begin
  FVBCEfet := Value;
  FVBCEfetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetPICMSEfet(const Value: Double);
begin
  FPICMSEfet := Value;
  FPICMSEfetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetVICMSEfet(const Value: Double);
begin
  FVICMSEfet := Value;
  FVICMSEfetHasValue := True;
end;

{ TNfeSefazICMSSN900 }

procedure TNfeSefazICMSSN900.SetOrig(const Value: Integer);
begin
  FOrig := Value;
  FOrigHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
  FCSOSNHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetModBC(const Value: Integer);
begin
  FModBC := Value;
  FModBCHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetPRedBC(const Value: Double);
begin
  FPRedBC := Value;
  FPRedBCHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetPICMS(const Value: Double);
begin
  FPICMS := Value;
  FPICMSHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetModBCST(const Value: Integer);
begin
  FModBCST := Value;
  FModBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetPMVAST(const Value: Double);
begin
  FPMVAST := Value;
  FPMVASTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetPRedBCST(const Value: Double);
begin
  FPRedBCST := Value;
  FPRedBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetVBCST(const Value: Double);
begin
  FVBCST := Value;
  FVBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetPICMSST(const Value: Double);
begin
  FPICMSST := Value;
  FPICMSSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetVICMSST(const Value: Double);
begin
  FVICMSST := Value;
  FVICMSSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetVBCFCPST(const Value: Double);
begin
  FVBCFCPST := Value;
  FVBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetPFCPST(const Value: Double);
begin
  FPFCPST := Value;
  FPFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetVFCPST(const Value: Double);
begin
  FVFCPST := Value;
  FVFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetPCredSN(const Value: Double);
begin
  FPCredSN := Value;
  FPCredSNHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetVCredICMSSN(const Value: Double);
begin
  FVCredICMSSN := Value;
  FVCredICMSSNHasValue := True;
end;

{ TNfeSefazICMS }

destructor TNfeSefazICMS.Destroy;
begin
  FICMSSN900.Free;
  FICMSSN500.Free;
  FICMSSN202.Free;
  FICMSSN201.Free;
  FICMSSN102.Free;
  FICMSSN101.Free;
  FICMSST.Free;
  FICMSPart.Free;
  FICMS90.Free;
  FICMS70.Free;
  FICMS60.Free;
  FICMS51.Free;
  FICMS40.Free;
  FICMS30.Free;
  FICMS20.Free;
  FICMS10.Free;
  FICMS00.Free;
  inherited;
end;

procedure TNfeSefazICMS.SetICMS00(const Value: TNfeSefazICMS00);
begin
  if Value <> FICMS00 then
  begin
    FICMS00.Free;
    FICMS00 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMS10(const Value: TNfeSefazICMS10);
begin
  if Value <> FICMS10 then
  begin
    FICMS10.Free;
    FICMS10 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMS20(const Value: TNfeSefazICMS20);
begin
  if Value <> FICMS20 then
  begin
    FICMS20.Free;
    FICMS20 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMS30(const Value: TNfeSefazICMS30);
begin
  if Value <> FICMS30 then
  begin
    FICMS30.Free;
    FICMS30 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMS40(const Value: TNfeSefazICMS40);
begin
  if Value <> FICMS40 then
  begin
    FICMS40.Free;
    FICMS40 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMS51(const Value: TNfeSefazICMS51);
begin
  if Value <> FICMS51 then
  begin
    FICMS51.Free;
    FICMS51 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMS60(const Value: TNfeSefazICMS60);
begin
  if Value <> FICMS60 then
  begin
    FICMS60.Free;
    FICMS60 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMS70(const Value: TNfeSefazICMS70);
begin
  if Value <> FICMS70 then
  begin
    FICMS70.Free;
    FICMS70 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMS90(const Value: TNfeSefazICMS90);
begin
  if Value <> FICMS90 then
  begin
    FICMS90.Free;
    FICMS90 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMSPart(const Value: TNfeSefazICMSPart);
begin
  if Value <> FICMSPart then
  begin
    FICMSPart.Free;
    FICMSPart := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMSST(const Value: TNfeSefazICMSST);
begin
  if Value <> FICMSST then
  begin
    FICMSST.Free;
    FICMSST := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMSSN101(const Value: TNfeSefazICMSSN101);
begin
  if Value <> FICMSSN101 then
  begin
    FICMSSN101.Free;
    FICMSSN101 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMSSN102(const Value: TNfeSefazICMSSN102);
begin
  if Value <> FICMSSN102 then
  begin
    FICMSSN102.Free;
    FICMSSN102 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMSSN201(const Value: TNfeSefazICMSSN201);
begin
  if Value <> FICMSSN201 then
  begin
    FICMSSN201.Free;
    FICMSSN201 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMSSN202(const Value: TNfeSefazICMSSN202);
begin
  if Value <> FICMSSN202 then
  begin
    FICMSSN202.Free;
    FICMSSN202 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMSSN500(const Value: TNfeSefazICMSSN500);
begin
  if Value <> FICMSSN500 then
  begin
    FICMSSN500.Free;
    FICMSSN500 := Value;
  end;
end;

procedure TNfeSefazICMS.SetICMSSN900(const Value: TNfeSefazICMSSN900);
begin
  if Value <> FICMSSN900 then
  begin
    FICMSSN900.Free;
    FICMSSN900 := Value;
  end;
end;

{ TNfeSefazIPITrib }

procedure TNfeSefazIPITrib.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazIPITrib.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazIPITrib.SetPIPI(const Value: Double);
begin
  FPIPI := Value;
  FPIPIHasValue := True;
end;

procedure TNfeSefazIPITrib.SetQUnid(const Value: Double);
begin
  FQUnid := Value;
  FQUnidHasValue := True;
end;

procedure TNfeSefazIPITrib.SetVUnid(const Value: Double);
begin
  FVUnid := Value;
  FVUnidHasValue := True;
end;

procedure TNfeSefazIPITrib.SetVIPI(const Value: Double);
begin
  FVIPI := Value;
  FVIPIHasValue := True;
end;

{ TNfeSefazIPINT }

procedure TNfeSefazIPINT.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

{ TNfeSefazIpi }

destructor TNfeSefazIpi.Destroy;
begin
  FIPINT.Free;
  FIPITrib.Free;
  inherited;
end;

procedure TNfeSefazIpi.SetCNPJProd(const Value: string);
begin
  FCNPJProd := Value;
  FCNPJProdHasValue := True;
end;

procedure TNfeSefazIpi.SetCSelo(const Value: string);
begin
  FCSelo := Value;
  FCSeloHasValue := True;
end;

procedure TNfeSefazIpi.SetQSelo(const Value: Integer);
begin
  FQSelo := Value;
  FQSeloHasValue := True;
end;

procedure TNfeSefazIpi.SetCEnq(const Value: string);
begin
  FCEnq := Value;
  FCEnqHasValue := True;
end;

procedure TNfeSefazIpi.SetIPITrib(const Value: TNfeSefazIPITrib);
begin
  if Value <> FIPITrib then
  begin
    FIPITrib.Free;
    FIPITrib := Value;
  end;
end;

procedure TNfeSefazIpi.SetIPINT(const Value: TNfeSefazIPINT);
begin
  if Value <> FIPINT then
  begin
    FIPINT.Free;
    FIPINT := Value;
  end;
end;

{ TNfeSefazII }

procedure TNfeSefazII.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazII.SetVDespAdu(const Value: Double);
begin
  FVDespAdu := Value;
  FVDespAduHasValue := True;
end;

procedure TNfeSefazII.SetVII(const Value: Double);
begin
  FVII := Value;
  FVIIHasValue := True;
end;

procedure TNfeSefazII.SetVIOF(const Value: Double);
begin
  FVIOF := Value;
  FVIOFHasValue := True;
end;

{ TNfeSefazISSQN }

procedure TNfeSefazISSQN.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazISSQN.SetVAliq(const Value: Double);
begin
  FVAliq := Value;
  FVAliqHasValue := True;
end;

procedure TNfeSefazISSQN.SetVISSQN(const Value: Double);
begin
  FVISSQN := Value;
  FVISSQNHasValue := True;
end;

procedure TNfeSefazISSQN.SetCMunFG(const Value: Integer);
begin
  FCMunFG := Value;
  FCMunFGHasValue := True;
end;

procedure TNfeSefazISSQN.SetCListServ(const Value: string);
begin
  FCListServ := Value;
  FCListServHasValue := True;
end;

procedure TNfeSefazISSQN.SetVDeducao(const Value: Double);
begin
  FVDeducao := Value;
  FVDeducaoHasValue := True;
end;

procedure TNfeSefazISSQN.SetVOutro(const Value: Double);
begin
  FVOutro := Value;
  FVOutroHasValue := True;
end;

procedure TNfeSefazISSQN.SetVDescIncond(const Value: Double);
begin
  FVDescIncond := Value;
  FVDescIncondHasValue := True;
end;

procedure TNfeSefazISSQN.SetVDescCond(const Value: Double);
begin
  FVDescCond := Value;
  FVDescCondHasValue := True;
end;

procedure TNfeSefazISSQN.SetVISSRet(const Value: Double);
begin
  FVISSRet := Value;
  FVISSRetHasValue := True;
end;

procedure TNfeSefazISSQN.SetIndISS(const Value: Integer);
begin
  FIndISS := Value;
  FIndISSHasValue := True;
end;

procedure TNfeSefazISSQN.SetCServico(const Value: string);
begin
  FCServico := Value;
  FCServicoHasValue := True;
end;

procedure TNfeSefazISSQN.SetCMun(const Value: Integer);
begin
  FCMun := Value;
  FCMunHasValue := True;
end;

procedure TNfeSefazISSQN.SetCPais(const Value: Integer);
begin
  FCPais := Value;
  FCPaisHasValue := True;
end;

procedure TNfeSefazISSQN.SetNProcesso(const Value: string);
begin
  FNProcesso := Value;
  FNProcessoHasValue := True;
end;

procedure TNfeSefazISSQN.SetIndIncentivo(const Value: Integer);
begin
  FIndIncentivo := Value;
  FIndIncentivoHasValue := True;
end;

{ TNfeSefazPISAliq }

procedure TNfeSefazPISAliq.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazPISAliq.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazPISAliq.SetPPIS(const Value: Double);
begin
  FPPIS := Value;
  FPPISHasValue := True;
end;

procedure TNfeSefazPISAliq.SetVPIS(const Value: Double);
begin
  FVPIS := Value;
  FVPISHasValue := True;
end;

{ TNfeSefazPISQtde }

procedure TNfeSefazPISQtde.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazPISQtde.SetQBCProd(const Value: Double);
begin
  FQBCProd := Value;
  FQBCProdHasValue := True;
end;

procedure TNfeSefazPISQtde.SetVAliqProd(const Value: Double);
begin
  FVAliqProd := Value;
  FVAliqProdHasValue := True;
end;

procedure TNfeSefazPISQtde.SetVPIS(const Value: Double);
begin
  FVPIS := Value;
  FVPISHasValue := True;
end;

{ TNfeSefazPISNT }

procedure TNfeSefazPISNT.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

{ TNfeSefazPISOutr }

procedure TNfeSefazPISOutr.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazPISOutr.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazPISOutr.SetPPIS(const Value: Double);
begin
  FPPIS := Value;
  FPPISHasValue := True;
end;

procedure TNfeSefazPISOutr.SetQBCProd(const Value: Double);
begin
  FQBCProd := Value;
  FQBCProdHasValue := True;
end;

procedure TNfeSefazPISOutr.SetVAliqProd(const Value: Double);
begin
  FVAliqProd := Value;
  FVAliqProdHasValue := True;
end;

procedure TNfeSefazPISOutr.SetVPIS(const Value: Double);
begin
  FVPIS := Value;
  FVPISHasValue := True;
end;

{ TNfeSefazPIS }

destructor TNfeSefazPIS.Destroy;
begin
  FPISOutr.Free;
  FPISNT.Free;
  FPISQtde.Free;
  FPISAliq.Free;
  inherited;
end;

procedure TNfeSefazPIS.SetPISAliq(const Value: TNfeSefazPISAliq);
begin
  if Value <> FPISAliq then
  begin
    FPISAliq.Free;
    FPISAliq := Value;
  end;
end;

procedure TNfeSefazPIS.SetPISQtde(const Value: TNfeSefazPISQtde);
begin
  if Value <> FPISQtde then
  begin
    FPISQtde.Free;
    FPISQtde := Value;
  end;
end;

procedure TNfeSefazPIS.SetPISNT(const Value: TNfeSefazPISNT);
begin
  if Value <> FPISNT then
  begin
    FPISNT.Free;
    FPISNT := Value;
  end;
end;

procedure TNfeSefazPIS.SetPISOutr(const Value: TNfeSefazPISOutr);
begin
  if Value <> FPISOutr then
  begin
    FPISOutr.Free;
    FPISOutr := Value;
  end;
end;

{ TNfeSefazPISST }

procedure TNfeSefazPISST.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazPISST.SetPPIS(const Value: Double);
begin
  FPPIS := Value;
  FPPISHasValue := True;
end;

procedure TNfeSefazPISST.SetQBCProd(const Value: Double);
begin
  FQBCProd := Value;
  FQBCProdHasValue := True;
end;

procedure TNfeSefazPISST.SetVAliqProd(const Value: Double);
begin
  FVAliqProd := Value;
  FVAliqProdHasValue := True;
end;

procedure TNfeSefazPISST.SetVPIS(const Value: Double);
begin
  FVPIS := Value;
  FVPISHasValue := True;
end;

procedure TNfeSefazPISST.SetIndSomaPISST(const Value: Integer);
begin
  FIndSomaPISST := Value;
  FIndSomaPISSTHasValue := True;
end;

{ TNfeSefazCOFINSAliq }

procedure TNfeSefazCOFINSAliq.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazCOFINSAliq.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazCOFINSAliq.SetPCOFINS(const Value: Double);
begin
  FPCOFINS := Value;
  FPCOFINSHasValue := True;
end;

procedure TNfeSefazCOFINSAliq.SetVCOFINS(const Value: Double);
begin
  FVCOFINS := Value;
  FVCOFINSHasValue := True;
end;

{ TNfeSefazCOFINSQtde }

procedure TNfeSefazCOFINSQtde.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazCOFINSQtde.SetQBCProd(const Value: Double);
begin
  FQBCProd := Value;
  FQBCProdHasValue := True;
end;

procedure TNfeSefazCOFINSQtde.SetVAliqProd(const Value: Double);
begin
  FVAliqProd := Value;
  FVAliqProdHasValue := True;
end;

procedure TNfeSefazCOFINSQtde.SetVCOFINS(const Value: Double);
begin
  FVCOFINS := Value;
  FVCOFINSHasValue := True;
end;

{ TNfeSefazCOFINSNT }

procedure TNfeSefazCOFINSNT.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

{ TNfeSefazCOFINSOutr }

procedure TNfeSefazCOFINSOutr.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazCOFINSOutr.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazCOFINSOutr.SetPCOFINS(const Value: Double);
begin
  FPCOFINS := Value;
  FPCOFINSHasValue := True;
end;

procedure TNfeSefazCOFINSOutr.SetQBCProd(const Value: Double);
begin
  FQBCProd := Value;
  FQBCProdHasValue := True;
end;

procedure TNfeSefazCOFINSOutr.SetVAliqProd(const Value: Double);
begin
  FVAliqProd := Value;
  FVAliqProdHasValue := True;
end;

procedure TNfeSefazCOFINSOutr.SetVCOFINS(const Value: Double);
begin
  FVCOFINS := Value;
  FVCOFINSHasValue := True;
end;

{ TNfeSefazCOFINS }

destructor TNfeSefazCOFINS.Destroy;
begin
  FCOFINSOutr.Free;
  FCOFINSNT.Free;
  FCOFINSQtde.Free;
  FCOFINSAliq.Free;
  inherited;
end;

procedure TNfeSefazCOFINS.SetCOFINSAliq(const Value: TNfeSefazCOFINSAliq);
begin
  if Value <> FCOFINSAliq then
  begin
    FCOFINSAliq.Free;
    FCOFINSAliq := Value;
  end;
end;

procedure TNfeSefazCOFINS.SetCOFINSQtde(const Value: TNfeSefazCOFINSQtde);
begin
  if Value <> FCOFINSQtde then
  begin
    FCOFINSQtde.Free;
    FCOFINSQtde := Value;
  end;
end;

procedure TNfeSefazCOFINS.SetCOFINSNT(const Value: TNfeSefazCOFINSNT);
begin
  if Value <> FCOFINSNT then
  begin
    FCOFINSNT.Free;
    FCOFINSNT := Value;
  end;
end;

procedure TNfeSefazCOFINS.SetCOFINSOutr(const Value: TNfeSefazCOFINSOutr);
begin
  if Value <> FCOFINSOutr then
  begin
    FCOFINSOutr.Free;
    FCOFINSOutr := Value;
  end;
end;

{ TNfeSefazCOFINSST }

procedure TNfeSefazCOFINSST.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazCOFINSST.SetPCOFINS(const Value: Double);
begin
  FPCOFINS := Value;
  FPCOFINSHasValue := True;
end;

procedure TNfeSefazCOFINSST.SetQBCProd(const Value: Double);
begin
  FQBCProd := Value;
  FQBCProdHasValue := True;
end;

procedure TNfeSefazCOFINSST.SetVAliqProd(const Value: Double);
begin
  FVAliqProd := Value;
  FVAliqProdHasValue := True;
end;

procedure TNfeSefazCOFINSST.SetVCOFINS(const Value: Double);
begin
  FVCOFINS := Value;
  FVCOFINSHasValue := True;
end;

procedure TNfeSefazCOFINSST.SetIndSomaCOFINSST(const Value: Integer);
begin
  FIndSomaCOFINSST := Value;
  FIndSomaCOFINSSTHasValue := True;
end;

{ TNfeSefazICMSUFDest }

procedure TNfeSefazICMSUFDest.SetVBCUFDest(const Value: Double);
begin
  FVBCUFDest := Value;
  FVBCUFDestHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetVBCFCPUFDest(const Value: Double);
begin
  FVBCFCPUFDest := Value;
  FVBCFCPUFDestHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetPFCPUFDest(const Value: Double);
begin
  FPFCPUFDest := Value;
  FPFCPUFDestHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetPICMSUFDest(const Value: Double);
begin
  FPICMSUFDest := Value;
  FPICMSUFDestHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetPICMSInter(const Value: Double);
begin
  FPICMSInter := Value;
  FPICMSInterHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetPICMSInterPart(const Value: Double);
begin
  FPICMSInterPart := Value;
  FPICMSInterPartHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetVFCPUFDest(const Value: Double);
begin
  FVFCPUFDest := Value;
  FVFCPUFDestHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetVICMSUFDest(const Value: Double);
begin
  FVICMSUFDest := Value;
  FVICMSUFDestHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetVICMSUFRemet(const Value: Double);
begin
  FVICMSUFRemet := Value;
  FVICMSUFRemetHasValue := True;
end;

{ TNfeSefazImposto }

destructor TNfeSefazImposto.Destroy;
begin
  FICMSUFDest.Free;
  FCOFINSST.Free;
  FCOFINS.Free;
  FPISST.Free;
  FPIS.Free;
  FISSQN.Free;
  FII.Free;
  FIPI.Free;
  FICMS.Free;
  inherited;
end;

procedure TNfeSefazImposto.SetVTotTrib(const Value: Double);
begin
  FVTotTrib := Value;
  FVTotTribHasValue := True;
end;

procedure TNfeSefazImposto.SetICMS(const Value: TNfeSefazICMS);
begin
  if Value <> FICMS then
  begin
    FICMS.Free;
    FICMS := Value;
  end;
end;

procedure TNfeSefazImposto.SetIPI(const Value: TNfeSefazIpi);
begin
  if Value <> FIPI then
  begin
    FIPI.Free;
    FIPI := Value;
  end;
end;

procedure TNfeSefazImposto.SetII(const Value: TNfeSefazII);
begin
  if Value <> FII then
  begin
    FII.Free;
    FII := Value;
  end;
end;

procedure TNfeSefazImposto.SetISSQN(const Value: TNfeSefazISSQN);
begin
  if Value <> FISSQN then
  begin
    FISSQN.Free;
    FISSQN := Value;
  end;
end;

procedure TNfeSefazImposto.SetPIS(const Value: TNfeSefazPIS);
begin
  if Value <> FPIS then
  begin
    FPIS.Free;
    FPIS := Value;
  end;
end;

procedure TNfeSefazImposto.SetPISST(const Value: TNfeSefazPISST);
begin
  if Value <> FPISST then
  begin
    FPISST.Free;
    FPISST := Value;
  end;
end;

procedure TNfeSefazImposto.SetCOFINS(const Value: TNfeSefazCOFINS);
begin
  if Value <> FCOFINS then
  begin
    FCOFINS.Free;
    FCOFINS := Value;
  end;
end;

procedure TNfeSefazImposto.SetCOFINSST(const Value: TNfeSefazCOFINSST);
begin
  if Value <> FCOFINSST then
  begin
    FCOFINSST.Free;
    FCOFINSST := Value;
  end;
end;

procedure TNfeSefazImposto.SetICMSUFDest(const Value: TNfeSefazICMSUFDest);
begin
  if Value <> FICMSUFDest then
  begin
    FICMSUFDest.Free;
    FICMSUFDest := Value;
  end;
end;

{ TNfeSefazImpostoDevolIPI }

procedure TNfeSefazImpostoDevolIPI.SetVIPIDevol(const Value: Double);
begin
  FVIPIDevol := Value;
  FVIPIDevolHasValue := True;
end;

{ TNfeSefazImpostoDevol }

destructor TNfeSefazImpostoDevol.Destroy;
begin
  FIPI.Free;
  inherited;
end;

procedure TNfeSefazImpostoDevol.SetPDevol(const Value: Double);
begin
  FPDevol := Value;
  FPDevolHasValue := True;
end;

procedure TNfeSefazImpostoDevol.SetIPI(const Value: TNfeSefazImpostoDevolIPI);
begin
  if Value <> FIPI then
  begin
    FIPI.Free;
    FIPI := Value;
  end;
end;

{ TNfeSefazDet }

destructor TNfeSefazDet.Destroy;
begin
  FImpostoDevol.Free;
  FImposto.Free;
  FProd.Free;
  inherited;
end;

procedure TNfeSefazDet.SetNItem(const Value: Integer);
begin
  FNItem := Value;
  FNItemHasValue := True;
end;

procedure TNfeSefazDet.SetProd(const Value: TNfeSefazProd);
begin
  if Value <> FProd then
  begin
    FProd.Free;
    FProd := Value;
  end;
end;

procedure TNfeSefazDet.SetImposto(const Value: TNfeSefazImposto);
begin
  if Value <> FImposto then
  begin
    FImposto.Free;
    FImposto := Value;
  end;
end;

procedure TNfeSefazDet.SetImpostoDevol(const Value: TNfeSefazImpostoDevol);
begin
  if Value <> FImpostoDevol then
  begin
    FImpostoDevol.Free;
    FImpostoDevol := Value;
  end;
end;

procedure TNfeSefazDet.SetInfAdProd(const Value: string);
begin
  FInfAdProd := Value;
  FInfAdProdHasValue := True;
end;

{ TNfeSefazICMSTot }

procedure TNfeSefazICMSTot.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVICMS(const Value: Double);
begin
  FVICMS := Value;
  FVICMSHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVICMSDeson(const Value: Double);
begin
  FVICMSDeson := Value;
  FVICMSDesonHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVFCPUFDest(const Value: Double);
begin
  FVFCPUFDest := Value;
  FVFCPUFDestHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVICMSUFDest(const Value: Double);
begin
  FVICMSUFDest := Value;
  FVICMSUFDestHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVICMSUFRemet(const Value: Double);
begin
  FVICMSUFRemet := Value;
  FVICMSUFRemetHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVFCP(const Value: Double);
begin
  FVFCP := Value;
  FVFCPHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVBCST(const Value: Double);
begin
  FVBCST := Value;
  FVBCSTHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVST(const Value: Double);
begin
  FVST := Value;
  FVSTHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVFCPST(const Value: Double);
begin
  FVFCPST := Value;
  FVFCPSTHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVFCPSTRet(const Value: Double);
begin
  FVFCPSTRet := Value;
  FVFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVProd(const Value: Double);
begin
  FVProd := Value;
  FVProdHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVFrete(const Value: Double);
begin
  FVFrete := Value;
  FVFreteHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVSeg(const Value: Double);
begin
  FVSeg := Value;
  FVSegHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVDesc(const Value: Double);
begin
  FVDesc := Value;
  FVDescHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVII(const Value: Double);
begin
  FVII := Value;
  FVIIHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVIPI(const Value: Double);
begin
  FVIPI := Value;
  FVIPIHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVIPIDevol(const Value: Double);
begin
  FVIPIDevol := Value;
  FVIPIDevolHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVPIS(const Value: Double);
begin
  FVPIS := Value;
  FVPISHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVCOFINS(const Value: Double);
begin
  FVCOFINS := Value;
  FVCOFINSHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVOutro(const Value: Double);
begin
  FVOutro := Value;
  FVOutroHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVNF(const Value: Double);
begin
  FVNF := Value;
  FVNFHasValue := True;
end;

procedure TNfeSefazICMSTot.SetVTotTrib(const Value: Double);
begin
  FVTotTrib := Value;
  FVTotTribHasValue := True;
end;

{ TNfeSefazISSQNtot }

procedure TNfeSefazISSQNtot.SetVServ(const Value: Double);
begin
  FVServ := Value;
  FVServHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetVBC(const Value: Double);
begin
  FVBC := Value;
  FVBCHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetVISS(const Value: Double);
begin
  FVISS := Value;
  FVISSHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetVPIS(const Value: Double);
begin
  FVPIS := Value;
  FVPISHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetVCOFINS(const Value: Double);
begin
  FVCOFINS := Value;
  FVCOFINSHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetDCompet(const Value: TDate);
begin
  FDCompet := Value;
  FDCompetHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetVDeducao(const Value: Double);
begin
  FVDeducao := Value;
  FVDeducaoHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetVOutro(const Value: Double);
begin
  FVOutro := Value;
  FVOutroHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetVDescIncond(const Value: Double);
begin
  FVDescIncond := Value;
  FVDescIncondHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetVDescCond(const Value: Double);
begin
  FVDescCond := Value;
  FVDescCondHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetVISSRet(const Value: Double);
begin
  FVISSRet := Value;
  FVISSRetHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetCRegTrib(const Value: Integer);
begin
  FCRegTrib := Value;
  FCRegTribHasValue := True;
end;

{ TNfeSefazRetTrib }

procedure TNfeSefazRetTrib.SetVRetPIS(const Value: Double);
begin
  FVRetPIS := Value;
  FVRetPISHasValue := True;
end;

procedure TNfeSefazRetTrib.SetVRetCOFINS(const Value: Double);
begin
  FVRetCOFINS := Value;
  FVRetCOFINSHasValue := True;
end;

procedure TNfeSefazRetTrib.SetVRetCSLL(const Value: Double);
begin
  FVRetCSLL := Value;
  FVRetCSLLHasValue := True;
end;

procedure TNfeSefazRetTrib.SetVBCIRRF(const Value: Double);
begin
  FVBCIRRF := Value;
  FVBCIRRFHasValue := True;
end;

procedure TNfeSefazRetTrib.SetVIRRF(const Value: Double);
begin
  FVIRRF := Value;
  FVIRRFHasValue := True;
end;

procedure TNfeSefazRetTrib.SetVBCRetPrev(const Value: Double);
begin
  FVBCRetPrev := Value;
  FVBCRetPrevHasValue := True;
end;

procedure TNfeSefazRetTrib.SetVRetPrev(const Value: Double);
begin
  FVRetPrev := Value;
  FVRetPrevHasValue := True;
end;

{ TNfeSefazTotal }

destructor TNfeSefazTotal.Destroy;
begin
  FRetTrib.Free;
  FISSQNtot.Free;
  FICMSTot.Free;
  inherited;
end;

procedure TNfeSefazTotal.SetICMSTot(const Value: TNfeSefazICMSTot);
begin
  if Value <> FICMSTot then
  begin
    FICMSTot.Free;
    FICMSTot := Value;
  end;
end;

procedure TNfeSefazTotal.SetISSQNtot(const Value: TNfeSefazISSQNtot);
begin
  if Value <> FISSQNtot then
  begin
    FISSQNtot.Free;
    FISSQNtot := Value;
  end;
end;

procedure TNfeSefazTotal.SetRetTrib(const Value: TNfeSefazRetTrib);
begin
  if Value <> FRetTrib then
  begin
    FRetTrib.Free;
    FRetTrib := Value;
  end;
end;

{ TNfeSefazTransporta }

procedure TNfeSefazTransporta.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazTransporta.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

procedure TNfeSefazTransporta.SetXNome(const Value: string);
begin
  FXNome := Value;
  FXNomeHasValue := True;
end;

procedure TNfeSefazTransporta.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TNfeSefazTransporta.SetXEnder(const Value: string);
begin
  FXEnder := Value;
  FXEnderHasValue := True;
end;

procedure TNfeSefazTransporta.SetXMun(const Value: string);
begin
  FXMun := Value;
  FXMunHasValue := True;
end;

procedure TNfeSefazTransporta.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

{ TNfeSefazRetTransp }

procedure TNfeSefazRetTransp.SetVServ(const Value: Double);
begin
  FVServ := Value;
  FVServHasValue := True;
end;

procedure TNfeSefazRetTransp.SetVBCRet(const Value: Double);
begin
  FVBCRet := Value;
  FVBCRetHasValue := True;
end;

procedure TNfeSefazRetTransp.SetPICMSRet(const Value: Double);
begin
  FPICMSRet := Value;
  FPICMSRetHasValue := True;
end;

procedure TNfeSefazRetTransp.SetVICMSRet(const Value: Double);
begin
  FVICMSRet := Value;
  FVICMSRetHasValue := True;
end;

procedure TNfeSefazRetTransp.SetCFOP(const Value: Integer);
begin
  FCFOP := Value;
  FCFOPHasValue := True;
end;

procedure TNfeSefazRetTransp.SetCMunFG(const Value: Integer);
begin
  FCMunFG := Value;
  FCMunFGHasValue := True;
end;

{ TNfeSefazVeiculo }

procedure TNfeSefazVeiculo.SetPlaca(const Value: string);
begin
  FPlaca := Value;
  FPlacaHasValue := True;
end;

procedure TNfeSefazVeiculo.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TNfeSefazVeiculo.SetRNTC(const Value: string);
begin
  FRNTC := Value;
  FRNTCHasValue := True;
end;

{ TNfeSefazLacres }

procedure TNfeSefazLacres.SetNLacre(const Value: string);
begin
  FNLacre := Value;
  FNLacreHasValue := True;
end;

{ TNfeSefazVol }

destructor TNfeSefazVol.Destroy;
begin
  FLacres.Free;
  inherited;
end;

procedure TNfeSefazVol.SetQVol(const Value: Integer);
begin
  FQVol := Value;
  FQVolHasValue := True;
end;

procedure TNfeSefazVol.SetEsp(const Value: string);
begin
  FEsp := Value;
  FEspHasValue := True;
end;

procedure TNfeSefazVol.SetMarca(const Value: string);
begin
  FMarca := Value;
  FMarcaHasValue := True;
end;

procedure TNfeSefazVol.SetNVol(const Value: string);
begin
  FNVol := Value;
  FNVolHasValue := True;
end;

procedure TNfeSefazVol.SetPesoL(const Value: Double);
begin
  FPesoL := Value;
  FPesoLHasValue := True;
end;

procedure TNfeSefazVol.SetPesoB(const Value: Double);
begin
  FPesoB := Value;
  FPesoBHasValue := True;
end;

procedure TNfeSefazVol.SetLacres(const Value: TNfeSefazLacresList);
begin
  if Value <> FLacres then
  begin
    FLacres.Free;
    FLacres := Value;
  end;
end;

{ TNfeSefazTransp }

destructor TNfeSefazTransp.Destroy;
begin
  FVol.Free;
  FReboque.Free;
  FVeicTransp.Free;
  FRetTransp.Free;
  FTransporta.Free;
  inherited;
end;

procedure TNfeSefazTransp.SetModFrete(const Value: Integer);
begin
  FModFrete := Value;
  FModFreteHasValue := True;
end;

procedure TNfeSefazTransp.SetTransporta(const Value: TNfeSefazTransporta);
begin
  if Value <> FTransporta then
  begin
    FTransporta.Free;
    FTransporta := Value;
  end;
end;

procedure TNfeSefazTransp.SetRetTransp(const Value: TNfeSefazRetTransp);
begin
  if Value <> FRetTransp then
  begin
    FRetTransp.Free;
    FRetTransp := Value;
  end;
end;

procedure TNfeSefazTransp.SetVeicTransp(const Value: TNfeSefazVeiculo);
begin
  if Value <> FVeicTransp then
  begin
    FVeicTransp.Free;
    FVeicTransp := Value;
  end;
end;

procedure TNfeSefazTransp.SetReboque(const Value: TNfeSefazVeiculoList);
begin
  if Value <> FReboque then
  begin
    FReboque.Free;
    FReboque := Value;
  end;
end;

procedure TNfeSefazTransp.SetVagao(const Value: string);
begin
  FVagao := Value;
  FVagaoHasValue := True;
end;

procedure TNfeSefazTransp.SetBalsa(const Value: string);
begin
  FBalsa := Value;
  FBalsaHasValue := True;
end;

procedure TNfeSefazTransp.SetVol(const Value: TNfeSefazVolList);
begin
  if Value <> FVol then
  begin
    FVol.Free;
    FVol := Value;
  end;
end;

{ TNfeSefazFat }

procedure TNfeSefazFat.SetNFat(const Value: string);
begin
  FNFat := Value;
  FNFatHasValue := True;
end;

procedure TNfeSefazFat.SetVOrig(const Value: Double);
begin
  FVOrig := Value;
  FVOrigHasValue := True;
end;

procedure TNfeSefazFat.SetVDesc(const Value: Double);
begin
  FVDesc := Value;
  FVDescHasValue := True;
end;

procedure TNfeSefazFat.SetVLiq(const Value: Double);
begin
  FVLiq := Value;
  FVLiqHasValue := True;
end;

{ TNfeSefazDup }

procedure TNfeSefazDup.SetNDup(const Value: string);
begin
  FNDup := Value;
  FNDupHasValue := True;
end;

procedure TNfeSefazDup.SetDVenc(const Value: TDate);
begin
  FDVenc := Value;
  FDVencHasValue := True;
end;

procedure TNfeSefazDup.SetVDup(const Value: Double);
begin
  FVDup := Value;
  FVDupHasValue := True;
end;

{ TNfeSefazCobr }

destructor TNfeSefazCobr.Destroy;
begin
  FDup.Free;
  FFat.Free;
  inherited;
end;

procedure TNfeSefazCobr.SetFat(const Value: TNfeSefazFat);
begin
  if Value <> FFat then
  begin
    FFat.Free;
    FFat := Value;
  end;
end;

procedure TNfeSefazCobr.SetDup(const Value: TNfeSefazDupList);
begin
  if Value <> FDup then
  begin
    FDup.Free;
    FDup := Value;
  end;
end;

{ TNfeSefazCard }

procedure TNfeSefazCard.SetTpIntegra(const Value: Integer);
begin
  FTpIntegra := Value;
  FTpIntegraHasValue := True;
end;

procedure TNfeSefazCard.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazCard.SetTBand(const Value: string);
begin
  FTBand := Value;
  FTBandHasValue := True;
end;

procedure TNfeSefazCard.SetCAut(const Value: string);
begin
  FCAut := Value;
  FCAutHasValue := True;
end;

{ TNfeSefazDetPag }

destructor TNfeSefazDetPag.Destroy;
begin
  FCard.Free;
  inherited;
end;

procedure TNfeSefazDetPag.SetIndPag(const Value: Integer);
begin
  FIndPag := Value;
  FIndPagHasValue := True;
end;

procedure TNfeSefazDetPag.SetTPag(const Value: string);
begin
  FTPag := Value;
  FTPagHasValue := True;
end;

procedure TNfeSefazDetPag.SetXPag(const Value: string);
begin
  FXPag := Value;
  FXPagHasValue := True;
end;

procedure TNfeSefazDetPag.SetVPag(const Value: Double);
begin
  FVPag := Value;
  FVPagHasValue := True;
end;

procedure TNfeSefazDetPag.SetCard(const Value: TNfeSefazCard);
begin
  if Value <> FCard then
  begin
    FCard.Free;
    FCard := Value;
  end;
end;

{ TNfeSefazPag }

destructor TNfeSefazPag.Destroy;
begin
  FDetPag.Free;
  inherited;
end;

procedure TNfeSefazPag.SetDetPag(const Value: TNfeSefazDetPagList);
begin
  if Value <> FDetPag then
  begin
    FDetPag.Free;
    FDetPag := Value;
  end;
end;

procedure TNfeSefazPag.SetVTroco(const Value: Double);
begin
  FVTroco := Value;
  FVTrocoHasValue := True;
end;

{ TNfeSefazInfIntermed }

procedure TNfeSefazInfIntermed.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazInfIntermed.SetIdCadIntTran(const Value: string);
begin
  FIdCadIntTran := Value;
  FIdCadIntTranHasValue := True;
end;

{ TNfeSefazObsCont }

procedure TNfeSefazObsCont.SetXCampo(const Value: string);
begin
  FXCampo := Value;
  FXCampoHasValue := True;
end;

procedure TNfeSefazObsCont.SetXTexto(const Value: string);
begin
  FXTexto := Value;
  FXTextoHasValue := True;
end;

{ TNfeSefazObsFisco }

procedure TNfeSefazObsFisco.SetXCampo(const Value: string);
begin
  FXCampo := Value;
  FXCampoHasValue := True;
end;

procedure TNfeSefazObsFisco.SetXTexto(const Value: string);
begin
  FXTexto := Value;
  FXTextoHasValue := True;
end;

{ TNfeSefazProcRef }

procedure TNfeSefazProcRef.SetNProc(const Value: string);
begin
  FNProc := Value;
  FNProcHasValue := True;
end;

procedure TNfeSefazProcRef.SetIndProc(const Value: Integer);
begin
  FIndProc := Value;
  FIndProcHasValue := True;
end;

{ TNfeSefazInfAdic }

destructor TNfeSefazInfAdic.Destroy;
begin
  FProcRef.Free;
  FObsFisco.Free;
  FObsCont.Free;
  inherited;
end;

procedure TNfeSefazInfAdic.SetInfAdFisco(const Value: string);
begin
  FInfAdFisco := Value;
  FInfAdFiscoHasValue := True;
end;

procedure TNfeSefazInfAdic.SetInfCpl(const Value: string);
begin
  FInfCpl := Value;
  FInfCplHasValue := True;
end;

procedure TNfeSefazInfAdic.SetObsCont(const Value: TNfeSefazObsContList);
begin
  if Value <> FObsCont then
  begin
    FObsCont.Free;
    FObsCont := Value;
  end;
end;

procedure TNfeSefazInfAdic.SetObsFisco(const Value: TNfeSefazObsFiscoList);
begin
  if Value <> FObsFisco then
  begin
    FObsFisco.Free;
    FObsFisco := Value;
  end;
end;

procedure TNfeSefazInfAdic.SetProcRef(const Value: TNfeSefazProcRefList);
begin
  if Value <> FProcRef then
  begin
    FProcRef.Free;
    FProcRef := Value;
  end;
end;

{ TNfeSefazExporta }

procedure TNfeSefazExporta.SetUFSaidaPais(const Value: string);
begin
  FUFSaidaPais := Value;
  FUFSaidaPaisHasValue := True;
end;

procedure TNfeSefazExporta.SetXLocExporta(const Value: string);
begin
  FXLocExporta := Value;
  FXLocExportaHasValue := True;
end;

procedure TNfeSefazExporta.SetXLocDespacho(const Value: string);
begin
  FXLocDespacho := Value;
  FXLocDespachoHasValue := True;
end;

{ TNfeSefazCompra }

procedure TNfeSefazCompra.SetXNEmp(const Value: string);
begin
  FXNEmp := Value;
  FXNEmpHasValue := True;
end;

procedure TNfeSefazCompra.SetXPed(const Value: string);
begin
  FXPed := Value;
  FXPedHasValue := True;
end;

procedure TNfeSefazCompra.SetXCont(const Value: string);
begin
  FXCont := Value;
  FXContHasValue := True;
end;

{ TNfeSefazForDia }

procedure TNfeSefazForDia.SetDia(const Value: Integer);
begin
  FDia := Value;
  FDiaHasValue := True;
end;

procedure TNfeSefazForDia.SetQtde(const Value: Double);
begin
  FQtde := Value;
  FQtdeHasValue := True;
end;

{ TNfeSefazDeduc }

procedure TNfeSefazDeduc.SetXDed(const Value: string);
begin
  FXDed := Value;
  FXDedHasValue := True;
end;

procedure TNfeSefazDeduc.SetVDed(const Value: Double);
begin
  FVDed := Value;
  FVDedHasValue := True;
end;

{ TNfeSefazCana }

destructor TNfeSefazCana.Destroy;
begin
  FDeduc.Free;
  FForDia.Free;
  inherited;
end;

procedure TNfeSefazCana.SetSafra(const Value: string);
begin
  FSafra := Value;
  FSafraHasValue := True;
end;

procedure TNfeSefazCana.SetRef(const Value: string);
begin
  FRef := Value;
  FRefHasValue := True;
end;

procedure TNfeSefazCana.SetForDia(const Value: TNfeSefazForDiaList);
begin
  if Value <> FForDia then
  begin
    FForDia.Free;
    FForDia := Value;
  end;
end;

procedure TNfeSefazCana.SetQTotMes(const Value: Double);
begin
  FQTotMes := Value;
  FQTotMesHasValue := True;
end;

procedure TNfeSefazCana.SetQTotAnt(const Value: Double);
begin
  FQTotAnt := Value;
  FQTotAntHasValue := True;
end;

procedure TNfeSefazCana.SetQTotGer(const Value: Double);
begin
  FQTotGer := Value;
  FQTotGerHasValue := True;
end;

procedure TNfeSefazCana.SetDeduc(const Value: TNfeSefazDeducList);
begin
  if Value <> FDeduc then
  begin
    FDeduc.Free;
    FDeduc := Value;
  end;
end;

procedure TNfeSefazCana.SetVFor(const Value: Double);
begin
  FVFor := Value;
  FVForHasValue := True;
end;

procedure TNfeSefazCana.SetVTotDed(const Value: Double);
begin
  FVTotDed := Value;
  FVTotDedHasValue := True;
end;

procedure TNfeSefazCana.SetVLiqFor(const Value: Double);
begin
  FVLiqFor := Value;
  FVLiqForHasValue := True;
end;

{ TNfeSefazInfRespTec }

procedure TNfeSefazInfRespTec.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazInfRespTec.SetXContato(const Value: string);
begin
  FXContato := Value;
  FXContatoHasValue := True;
end;

procedure TNfeSefazInfRespTec.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

procedure TNfeSefazInfRespTec.SetFone(const Value: string);
begin
  FFone := Value;
  FFoneHasValue := True;
end;

procedure TNfeSefazInfRespTec.SetIdCSRT(const Value: Integer);
begin
  FIdCSRT := Value;
  FIdCSRTHasValue := True;
end;

procedure TNfeSefazInfRespTec.SetHashCSRT(const Value: string);
begin
  FHashCSRT := Value;
  FHashCSRTHasValue := True;
end;

{ TNfeSefazInfSolicNFF }

procedure TNfeSefazInfSolicNFF.SetXSolic(const Value: string);
begin
  FXSolic := Value;
  FXSolicHasValue := True;
end;

{ TNfeSefazInfNFe }

destructor TNfeSefazInfNFe.Destroy;
begin
  FInfSolicNFF.Free;
  FInfRespTec.Free;
  FCana.Free;
  FCompra.Free;
  FExporta.Free;
  FInfAdic.Free;
  FInfIntermed.Free;
  FPag.Free;
  FCobr.Free;
  FTransp.Free;
  FTotal.Free;
  FDet.Free;
  FAutXML.Free;
  FEntrega.Free;
  FRetirada.Free;
  FDest.Free;
  FAvulsa.Free;
  FEmit.Free;
  FIde.Free;
  inherited;
end;

procedure TNfeSefazInfNFe.SetVersao(const Value: string);
begin
  FVersao := Value;
  FVersaoHasValue := True;
end;

procedure TNfeSefazInfNFe.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TNfeSefazInfNFe.SetIde(const Value: TNfeSefazIde);
begin
  if Value <> FIde then
  begin
    FIde.Free;
    FIde := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetEmit(const Value: TNfeSefazEmit);
begin
  if Value <> FEmit then
  begin
    FEmit.Free;
    FEmit := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetAvulsa(const Value: TNfeSefazAvulsa);
begin
  if Value <> FAvulsa then
  begin
    FAvulsa.Free;
    FAvulsa := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetDest(const Value: TNfeSefazDest);
begin
  if Value <> FDest then
  begin
    FDest.Free;
    FDest := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetRetirada(const Value: TNfeSefazLocal);
begin
  if Value <> FRetirada then
  begin
    FRetirada.Free;
    FRetirada := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetEntrega(const Value: TNfeSefazLocal);
begin
  if Value <> FEntrega then
  begin
    FEntrega.Free;
    FEntrega := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetAutXML(const Value: TNfeSefazAutXMLList);
begin
  if Value <> FAutXML then
  begin
    FAutXML.Free;
    FAutXML := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetDet(const Value: TNfeSefazDetList);
begin
  if Value <> FDet then
  begin
    FDet.Free;
    FDet := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetTotal(const Value: TNfeSefazTotal);
begin
  if Value <> FTotal then
  begin
    FTotal.Free;
    FTotal := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetTransp(const Value: TNfeSefazTransp);
begin
  if Value <> FTransp then
  begin
    FTransp.Free;
    FTransp := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetCobr(const Value: TNfeSefazCobr);
begin
  if Value <> FCobr then
  begin
    FCobr.Free;
    FCobr := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetPag(const Value: TNfeSefazPag);
begin
  if Value <> FPag then
  begin
    FPag.Free;
    FPag := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetInfIntermed(const Value: TNfeSefazInfIntermed);
begin
  if Value <> FInfIntermed then
  begin
    FInfIntermed.Free;
    FInfIntermed := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetInfAdic(const Value: TNfeSefazInfAdic);
begin
  if Value <> FInfAdic then
  begin
    FInfAdic.Free;
    FInfAdic := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetExporta(const Value: TNfeSefazExporta);
begin
  if Value <> FExporta then
  begin
    FExporta.Free;
    FExporta := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetCompra(const Value: TNfeSefazCompra);
begin
  if Value <> FCompra then
  begin
    FCompra.Free;
    FCompra := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetCana(const Value: TNfeSefazCana);
begin
  if Value <> FCana then
  begin
    FCana.Free;
    FCana := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetInfRespTec(const Value: TNfeSefazInfRespTec);
begin
  if Value <> FInfRespTec then
  begin
    FInfRespTec.Free;
    FInfRespTec := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetInfSolicNFF(const Value: TNfeSefazInfSolicNFF);
begin
  if Value <> FInfSolicNFF then
  begin
    FInfSolicNFF.Free;
    FInfSolicNFF := Value;
  end;
end;

{ TNfeSefazInfNFeSupl }

procedure TNfeSefazInfNFeSupl.SetQrCode(const Value: string);
begin
  FQrCode := Value;
  FQrCodeHasValue := True;
end;

procedure TNfeSefazInfNFeSupl.SetUrlChave(const Value: string);
begin
  FUrlChave := Value;
  FUrlChaveHasValue := True;
end;

{ TNfePedidoEmissao }

destructor TNfePedidoEmissao.Destroy;
begin
  FInfNFeSupl.Free;
  FInfNFe.Free;
  inherited;
end;

procedure TNfePedidoEmissao.SetInfNFe(const Value: TNfeSefazInfNFe);
begin
  if Value <> FInfNFe then
  begin
    FInfNFe.Free;
    FInfNFe := Value;
  end;
end;

procedure TNfePedidoEmissao.SetInfNFeSupl(const Value: TNfeSefazInfNFeSupl);
begin
  if Value <> FInfNFeSupl then
  begin
    FInfNFeSupl.Free;
    FInfNFeSupl := Value;
  end;
end;

procedure TNfePedidoEmissao.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TNfePedidoEmissao.SetReferencia(const Value: string);
begin
  FReferencia := Value;
  FReferenciaHasValue := True;
end;

{ TNfePedidoEmissaoLote }

destructor TNfePedidoEmissaoLote.Destroy;
begin
  FDocumentos.Free;
  inherited;
end;

procedure TNfePedidoEmissaoLote.SetDocumentos(const Value: TNfePedidoEmissaoList);
begin
  if Value <> FDocumentos then
  begin
    FDocumentos.Free;
    FDocumentos := Value;
  end;
end;

procedure TNfePedidoEmissaoLote.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TNfePedidoEmissaoLote.SetReferencia(const Value: string);
begin
  FReferencia := Value;
  FReferenciaHasValue := True;
end;

procedure TNfePedidoEmissaoLote.SetIdLote(const Value: string);
begin
  FIdLote := Value;
  FIdLoteHasValue := True;
end;

{ TNfePedidoCancelamento }

procedure TNfePedidoCancelamento.SetJustificativa(const Value: string);
begin
  FJustificativa := Value;
  FJustificativaHasValue := True;
end;

{ TNfePedidoCartaCorrecao }

procedure TNfePedidoCartaCorrecao.SetCorrecao(const Value: string);
begin
  FCorrecao := Value;
  FCorrecaoHasValue := True;
end;

{ TDfeCartaCorrecao }

destructor TDfeCartaCorrecao.Destroy;
begin
  FAutor.Free;
  inherited;
end;

procedure TDfeCartaCorrecao.SetCorrecao(const Value: string);
begin
  FCorrecao := Value;
  FCorrecaoHasValue := True;
end;

procedure TDfeCartaCorrecao.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TDfeCartaCorrecao.SetAmbiente(const Value: string);
begin
  FAmbiente := Value;
  FAmbienteHasValue := True;
end;

procedure TDfeCartaCorrecao.SetStatus(const Value: string);
begin
  FStatus := Value;
  FStatusHasValue := True;
end;

procedure TDfeCartaCorrecao.SetAutor(const Value: TDfeAutorEvento);
begin
  if Value <> FAutor then
  begin
    FAutor.Free;
    FAutor := Value;
  end;
end;

procedure TDfeCartaCorrecao.SetChaveAcesso(const Value: string);
begin
  FChaveAcesso := Value;
  FChaveAcessoHasValue := True;
end;

procedure TDfeCartaCorrecao.SetDataEvento(const Value: TDateTime);
begin
  FDataEvento := Value;
  FDataEventoHasValue := True;
end;

procedure TDfeCartaCorrecao.SetNumeroSequencial(const Value: Integer);
begin
  FNumeroSequencial := Value;
  FNumeroSequencialHasValue := True;
end;

procedure TDfeCartaCorrecao.SetDataRecebimento(const Value: TDateTime);
begin
  FDataRecebimento := Value;
  FDataRecebimentoHasValue := True;
end;

procedure TDfeCartaCorrecao.SetCodigoStatus(const Value: Integer);
begin
  FCodigoStatus := Value;
  FCodigoStatusHasValue := True;
end;

procedure TDfeCartaCorrecao.SetMotivoStatus(const Value: string);
begin
  FMotivoStatus := Value;
  FMotivoStatusHasValue := True;
end;

procedure TDfeCartaCorrecao.SetNumeroProtocolo(const Value: string);
begin
  FNumeroProtocolo := Value;
  FNumeroProtocoloHasValue := True;
end;

procedure TDfeCartaCorrecao.SetCodigoMensagem(const Value: Integer);
begin
  FCodigoMensagem := Value;
  FCodigoMensagemHasValue := True;
end;

procedure TDfeCartaCorrecao.SetMensagem(const Value: string);
begin
  FMensagem := Value;
  FMensagemHasValue := True;
end;

procedure TDfeCartaCorrecao.SetTipoEvento(const Value: string);
begin
  FTipoEvento := Value;
  FTipoEventoHasValue := True;
end;

{ TCnpjNaturezaJuridica }

procedure TCnpjNaturezaJuridica.SetCodigo(const Value: string);
begin
  FCodigo := Value;
  FCodigoHasValue := True;
end;

procedure TCnpjNaturezaJuridica.SetDescricao(const Value: string);
begin
  FDescricao := Value;
  FDescricaoHasValue := True;
end;

{ TCnpjPorteEmpresa }

procedure TCnpjPorteEmpresa.SetCodigo(const Value: string);
begin
  FCodigo := Value;
  FCodigoHasValue := True;
end;

procedure TCnpjPorteEmpresa.SetDescricao(const Value: string);
begin
  FDescricao := Value;
  FDescricaoHasValue := True;
end;

{ TCnpjSituacaoCadastral }

procedure TCnpjSituacaoCadastral.SetData(const Value: TDate);
begin
  FData := Value;
  FDataHasValue := True;
end;

procedure TCnpjSituacaoCadastral.SetCodigo(const Value: string);
begin
  FCodigo := Value;
  FCodigoHasValue := True;
end;

procedure TCnpjSituacaoCadastral.SetDescricao(const Value: string);
begin
  FDescricao := Value;
  FDescricaoHasValue := True;
end;

{ TCnpjPais }

procedure TCnpjPais.SetCodigo(const Value: string);
begin
  FCodigo := Value;
  FCodigoHasValue := True;
end;

procedure TCnpjPais.SetDescricao(const Value: string);
begin
  FDescricao := Value;
  FDescricaoHasValue := True;
end;

{ TCnpjCnae }

procedure TCnpjCnae.SetCodigo(const Value: string);
begin
  FCodigo := Value;
  FCodigoHasValue := True;
end;

procedure TCnpjCnae.SetDescricao(const Value: string);
begin
  FDescricao := Value;
  FDescricaoHasValue := True;
end;

{ TCnpjMunicipio }

procedure TCnpjMunicipio.SetCodigoTom(const Value: string);
begin
  FCodigoTom := Value;
  FCodigoTomHasValue := True;
end;

procedure TCnpjMunicipio.SetCodigoIbge(const Value: string);
begin
  FCodigoIbge := Value;
  FCodigoIbgeHasValue := True;
end;

procedure TCnpjMunicipio.SetDescricao(const Value: string);
begin
  FDescricao := Value;
  FDescricaoHasValue := True;
end;

{ TCnpjEndereco }

destructor TCnpjEndereco.Destroy;
begin
  FMunicipio.Free;
  inherited;
end;

procedure TCnpjEndereco.SetTipoLogradouro(const Value: string);
begin
  FTipoLogradouro := Value;
  FTipoLogradouroHasValue := True;
end;

procedure TCnpjEndereco.SetLogradouro(const Value: string);
begin
  FLogradouro := Value;
  FLogradouroHasValue := True;
end;

procedure TCnpjEndereco.SetNumero(const Value: string);
begin
  FNumero := Value;
  FNumeroHasValue := True;
end;

procedure TCnpjEndereco.SetComplemento(const Value: string);
begin
  FComplemento := Value;
  FComplementoHasValue := True;
end;

procedure TCnpjEndereco.SetBairro(const Value: string);
begin
  FBairro := Value;
  FBairroHasValue := True;
end;

procedure TCnpjEndereco.SetCep(const Value: string);
begin
  FCep := Value;
  FCepHasValue := True;
end;

procedure TCnpjEndereco.SetUf(const Value: string);
begin
  FUf := Value;
  FUfHasValue := True;
end;

procedure TCnpjEndereco.SetMunicipio(const Value: TCnpjMunicipio);
begin
  if Value <> FMunicipio then
  begin
    FMunicipio.Free;
    FMunicipio := Value;
  end;
end;

{ TCnpjTelefone }

procedure TCnpjTelefone.SetDdd(const Value: string);
begin
  FDdd := Value;
  FDddHasValue := True;
end;

procedure TCnpjTelefone.SetNumero(const Value: string);
begin
  FNumero := Value;
  FNumeroHasValue := True;
end;

{ TCnpjOpcaoSimples }

procedure TCnpjOpcaoSimples.SetOptante(const Value: Boolean);
begin
  FOptante := Value;
  FOptanteHasValue := True;
end;

procedure TCnpjOpcaoSimples.SetDataOpcao(const Value: TDate);
begin
  FDataOpcao := Value;
  FDataOpcaoHasValue := True;
end;

procedure TCnpjOpcaoSimples.SetDataExclusao(const Value: TDate);
begin
  FDataExclusao := Value;
  FDataExclusaoHasValue := True;
end;

{ TCnpjIdentificadorSocio }

procedure TCnpjIdentificadorSocio.SetCodigo(const Value: string);
begin
  FCodigo := Value;
  FCodigoHasValue := True;
end;

procedure TCnpjIdentificadorSocio.SetDescricao(const Value: string);
begin
  FDescricao := Value;
  FDescricaoHasValue := True;
end;

{ TCnpjQualificacaoSocio }

procedure TCnpjQualificacaoSocio.SetCodigo(const Value: string);
begin
  FCodigo := Value;
  FCodigoHasValue := True;
end;

procedure TCnpjQualificacaoSocio.SetDescricao(const Value: string);
begin
  FDescricao := Value;
  FDescricaoHasValue := True;
end;

{ TCnpjRepresentanteLegal }

destructor TCnpjRepresentanteLegal.Destroy;
begin
  FQualificacao.Free;
  inherited;
end;

procedure TCnpjRepresentanteLegal.SetCpf(const Value: string);
begin
  FCpf := Value;
  FCpfHasValue := True;
end;

procedure TCnpjRepresentanteLegal.SetNome(const Value: string);
begin
  FNome := Value;
  FNomeHasValue := True;
end;

procedure TCnpjRepresentanteLegal.SetQualificacao(const Value: TCnpjQualificacaoSocio);
begin
  if Value <> FQualificacao then
  begin
    FQualificacao.Free;
    FQualificacao := Value;
  end;
end;

{ TCnpjFaixaEtaria }

procedure TCnpjFaixaEtaria.SetCodigo(const Value: string);
begin
  FCodigo := Value;
  FCodigoHasValue := True;
end;

procedure TCnpjFaixaEtaria.SetDescricao(const Value: string);
begin
  FDescricao := Value;
  FDescricaoHasValue := True;
end;

{ TCnpjSocio }

destructor TCnpjSocio.Destroy;
begin
  FFaixaEtaria.Free;
  FRepresentanteLegal.Free;
  FPais.Free;
  FQualificacao.Free;
  FIdentificadorSocio.Free;
  inherited;
end;

procedure TCnpjSocio.SetIdentificadorSocio(const Value: TCnpjIdentificadorSocio);
begin
  if Value <> FIdentificadorSocio then
  begin
    FIdentificadorSocio.Free;
    FIdentificadorSocio := Value;
  end;
end;

procedure TCnpjSocio.SetNome(const Value: string);
begin
  FNome := Value;
  FNomeHasValue := True;
end;

procedure TCnpjSocio.SetCpfCnpj(const Value: string);
begin
  FCpfCnpj := Value;
  FCpfCnpjHasValue := True;
end;

procedure TCnpjSocio.SetQualificacao(const Value: TCnpjQualificacaoSocio);
begin
  if Value <> FQualificacao then
  begin
    FQualificacao.Free;
    FQualificacao := Value;
  end;
end;

procedure TCnpjSocio.SetDataEntradaSociedade(const Value: TDate);
begin
  FDataEntradaSociedade := Value;
  FDataEntradaSociedadeHasValue := True;
end;

procedure TCnpjSocio.SetPais(const Value: TCnpjPais);
begin
  if Value <> FPais then
  begin
    FPais.Free;
    FPais := Value;
  end;
end;

procedure TCnpjSocio.SetRepresentanteLegal(const Value: TCnpjRepresentanteLegal);
begin
  if Value <> FRepresentanteLegal then
  begin
    FRepresentanteLegal.Free;
    FRepresentanteLegal := Value;
  end;
end;

procedure TCnpjSocio.SetFaixaEtaria(const Value: TCnpjFaixaEtaria);
begin
  if Value <> FFaixaEtaria then
  begin
    FFaixaEtaria.Free;
    FFaixaEtaria := Value;
  end;
end;

{ TCnpjEmpresa }

destructor TCnpjEmpresa.Destroy;
begin
  FSocios.Free;
  FSimei.Free;
  FSimples.Free;
  FSituacaoEspecial.Free;
  FTelefones.Free;
  FEndereco.Free;
  FAtividadesSecundarias.Free;
  FAtividadePrincipal.Free;
  FPais.Free;
  FMotivoSituacaoCadastral.Free;
  FSituacaoCadastral.Free;
  FPorte.Free;
  FNaturezaJuridica.Free;
  inherited;
end;

procedure TCnpjEmpresa.SetCnpj(const Value: string);
begin
  FCnpj := Value;
  FCnpjHasValue := True;
end;

procedure TCnpjEmpresa.SetRazaoSocial(const Value: string);
begin
  FRazaoSocial := Value;
  FRazaoSocialHasValue := True;
end;

procedure TCnpjEmpresa.SetNomeFantasia(const Value: string);
begin
  FNomeFantasia := Value;
  FNomeFantasiaHasValue := True;
end;

procedure TCnpjEmpresa.SetDataInicioAtividade(const Value: TDate);
begin
  FDataInicioAtividade := Value;
  FDataInicioAtividadeHasValue := True;
end;

procedure TCnpjEmpresa.SetMatriz(const Value: Boolean);
begin
  FMatriz := Value;
  FMatrizHasValue := True;
end;

procedure TCnpjEmpresa.SetNaturezaJuridica(const Value: TCnpjNaturezaJuridica);
begin
  if Value <> FNaturezaJuridica then
  begin
    FNaturezaJuridica.Free;
    FNaturezaJuridica := Value;
  end;
end;

procedure TCnpjEmpresa.SetCapitalSocial(const Value: Double);
begin
  FCapitalSocial := Value;
  FCapitalSocialHasValue := True;
end;

procedure TCnpjEmpresa.SetPorte(const Value: TCnpjPorteEmpresa);
begin
  if Value <> FPorte then
  begin
    FPorte.Free;
    FPorte := Value;
  end;
end;

procedure TCnpjEmpresa.SetEnteFederativoResponsavel(const Value: string);
begin
  FEnteFederativoResponsavel := Value;
  FEnteFederativoResponsavelHasValue := True;
end;

procedure TCnpjEmpresa.SetSituacaoCadastral(const Value: TCnpjSituacaoCadastral);
begin
  if Value <> FSituacaoCadastral then
  begin
    FSituacaoCadastral.Free;
    FSituacaoCadastral := Value;
  end;
end;

procedure TCnpjEmpresa.SetMotivoSituacaoCadastral(const Value: TCnpjSituacaoCadastral);
begin
  if Value <> FMotivoSituacaoCadastral then
  begin
    FMotivoSituacaoCadastral.Free;
    FMotivoSituacaoCadastral := Value;
  end;
end;

procedure TCnpjEmpresa.SetNomeDaCidadeNoExterior(const Value: string);
begin
  FNomeDaCidadeNoExterior := Value;
  FNomeDaCidadeNoExteriorHasValue := True;
end;

procedure TCnpjEmpresa.SetPais(const Value: TCnpjPais);
begin
  if Value <> FPais then
  begin
    FPais.Free;
    FPais := Value;
  end;
end;

procedure TCnpjEmpresa.SetAtividadePrincipal(const Value: TCnpjCnae);
begin
  if Value <> FAtividadePrincipal then
  begin
    FAtividadePrincipal.Free;
    FAtividadePrincipal := Value;
  end;
end;

procedure TCnpjEmpresa.SetAtividadesSecundarias(const Value: TCnpjCnaeList);
begin
  if Value <> FAtividadesSecundarias then
  begin
    FAtividadesSecundarias.Free;
    FAtividadesSecundarias := Value;
  end;
end;

procedure TCnpjEmpresa.SetEndereco(const Value: TCnpjEndereco);
begin
  if Value <> FEndereco then
  begin
    FEndereco.Free;
    FEndereco := Value;
  end;
end;

procedure TCnpjEmpresa.SetTelefones(const Value: TCnpjTelefoneList);
begin
  if Value <> FTelefones then
  begin
    FTelefones.Free;
    FTelefones := Value;
  end;
end;

procedure TCnpjEmpresa.SetEmail(const Value: string);
begin
  FEmail := Value;
  FEmailHasValue := True;
end;

procedure TCnpjEmpresa.SetSituacaoEspecial(const Value: TCnpjSituacaoCadastral);
begin
  if Value <> FSituacaoEspecial then
  begin
    FSituacaoEspecial.Free;
    FSituacaoEspecial := Value;
  end;
end;

procedure TCnpjEmpresa.SetSimples(const Value: TCnpjOpcaoSimples);
begin
  if Value <> FSimples then
  begin
    FSimples.Free;
    FSimples := Value;
  end;
end;

procedure TCnpjEmpresa.SetSimei(const Value: TCnpjOpcaoSimples);
begin
  if Value <> FSimei then
  begin
    FSimei.Free;
    FSimei := Value;
  end;
end;

procedure TCnpjEmpresa.SetSocios(const Value: TCnpjSocioList);
begin
  if Value <> FSocios then
  begin
    FSocios.Free;
    FSocios := Value;
  end;
end;

{ TCepEndereco }

procedure TCepEndereco.SetBairro(const Value: string);
begin
  FBairro := Value;
  FBairroHasValue := True;
end;

procedure TCepEndereco.SetCep(const Value: string);
begin
  FCep := Value;
  FCepHasValue := True;
end;

procedure TCepEndereco.SetCodigoIbge(const Value: string);
begin
  FCodigoIbge := Value;
  FCodigoIbgeHasValue := True;
end;

procedure TCepEndereco.SetComplemento(const Value: string);
begin
  FComplemento := Value;
  FComplementoHasValue := True;
end;

procedure TCepEndereco.SetLogradouro(const Value: string);
begin
  FLogradouro := Value;
  FLogradouroHasValue := True;
end;

procedure TCepEndereco.SetMunicipio(const Value: string);
begin
  FMunicipio := Value;
  FMunicipioHasValue := True;
end;

procedure TCepEndereco.SetTipoLogradouro(const Value: string);
begin
  FTipoLogradouro := Value;
  FTipoLogradouroHasValue := True;
end;

procedure TCepEndereco.SetUf(const Value: string);
begin
  FUf := Value;
  FUfHasValue := True;
end;

end.
